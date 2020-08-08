#include <gflags/gflags.h>

#include <vector>

#include "../../core/lib.hh"
#include "../../tests/random.hh"
#include "../reporter.hh"
#include "../thread.hh"

using namespace rdmaio;
using namespace rdmaio::qp;
using namespace rdmaio::rmem;

using Thread_t = bench::Thread<usize>;

DEFINE_string(addr, "val09:8888", "Server address to connect to.");
DEFINE_int64(threads, 1, "#Threads used.");
DEFINE_string(client_name, "localhost", "Unique name to identify machine.");
DEFINE_int64(use_nic_idx, 0, "Which NIC to create QP");
DEFINE_int64(or_factor, 10, "one reply among <num> requests");
DEFINE_int64(reg_nic_name, 73, "The name to register an opened NIC at rctrl.");
DEFINE_int64(reg_mem_name, 73, "The name to register an MR at rctrl.");

usize worker_fn(const usize &worker_id, Statics *s);

bool volatile running = true;

/**
 * Implement outstanding request
 **/
int main(int argc, char **argv) {
  gflags::ParseCommandLineFlags(&argc, &argv, true);

  std::vector<Thread_t *> workers;
  std::vector<Statics> worker_statics(FLAGS_threads);

  for (uint i = 0; i < FLAGS_threads; ++i) {
    workers.push_back(
        new Thread_t(std::bind(worker_fn, i, &(worker_statics[i]))));
  }

  // start the workers
  for (auto w : workers) {
    w->start();
  }

  Reporter::report_thpt(worker_statics, 10);  // report for 10 seconds
  running = false;                            // stop workers

  // wait for workers to join
  for (auto w : workers) {
    w->join();
  }

  RDMA_LOG(4) << "done";
}

usize worker_fn(const usize &worker_id, Statics *s) {
  Statics &ss = *s;
  ::test::FastRandom rand(0xdeadbeaf + worker_id);

  // 1. create a local QP to use
  auto nic =
      RNic::create(RNicInfo::query_dev_names().at(FLAGS_use_nic_idx)).value();
  auto qp = RC::create(nic, QPConfig()).value();

  // 2. create the pair QP at server using CM
  ConnectManager cm(FLAGS_addr);
  if (cm.wait_ready(1000000, 2) ==
      IOCode::Timeout)  // wait 1 second for server to ready, retry 2 times
    RDMA_ASSERT(false) << "cm connect to server timeout";

  auto qp_res =
      cm.cc_rc(FLAGS_client_name + " thread-qp" + std::to_string(worker_id), qp,
               FLAGS_reg_nic_name, QPConfig());
  RDMA_ASSERT(qp_res == IOCode::Ok) << std::get<0>(qp_res.desc);

  auto key = std::get<1>(qp_res.desc);
  // RDMA_LOG(4) << "t-" << worker_id << " fetch QP authentical key: " << key;

  auto local_mem = Arc<RMem>(new RMem(1024 * 1024 * 20));  // 20M
  auto local_mr = RegHandler::create(local_mem, nic).value();

  auto fetch_res = cm.fetch_remote_mr(FLAGS_reg_mem_name);
  RDMA_ASSERT(fetch_res == IOCode::Ok) << std::get<0>(fetch_res.desc);
  rmem::RegAttr remote_attr = std::get<1>(fetch_res.desc);

  qp->bind_remote_mr(remote_attr);
  qp->bind_local_mr(local_mr->get_reg_attr().value());

  RDMA_LOG(4) << "t-" << worker_id << " started";
  u64 *test_buf = (u64 *)(qp->local_mr.value().buf);
  *test_buf = 0;
  u64 *remote_buf = (u64 *)remote_attr.buf;

  const int db_factor = 10;
  
  Op<> ops[db_factor];
  for (int i = 0; i < db_factor; ++i) {
    ops[i].set_payload(test_buf, sizeof(u64), qp->local_mr.value().key);
    ops[i].set_imm(0).set_wrid(i).set_read();
    if (i != 0) {
      ops[i - 1].set_next(&(ops[i]));
    }
  }

  while (running) {
    for (int i = 0; i < FLAGS_or_factor; ++i) {
      compile_fence();
      // access remote data randomly
      for (int j = 0; j < db_factor; ++j) {
        int index = rand.next() % 10000;
        ops[j].set_rdma_rbuf(remote_buf + index, remote_attr.key);
      }

      int flags = 0;
      if (i == 0) {
        flags = IBV_SEND_SIGNALED;
      }
      ops[db_factor - 1].set_flags(flags);

      auto res_s = ops[0].execute_batch(qp);
      RDMA_ASSERT(res_s == IOCode::Ok);
      ss.increment(db_factor);  // finish one request
    }
    auto res_p = qp->wait_one_comp();
    RDMA_ASSERT(res_p == IOCode::Ok);
  }
  RDMA_LOG(4) << "t-" << worker_id << " stoped";

  cm.delete_remote_rc(
      FLAGS_client_name + " thread-qp" + std::to_string(worker_id), key);
  return 0;
}