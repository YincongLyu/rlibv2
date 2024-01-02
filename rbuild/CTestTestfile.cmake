# CMake generated Testfile for 
# Source directory: /home/yincong/github_proj/rdma_learning/rlibv2
# Build directory: /home/yincong/github_proj/rdma_learning/rlibv2/rbuild
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test "/home/yincong/github_proj/rdma_learning/rlibv2/rbuild/coretest")
subdirs(tests/googletest)
subdirs(examples/gflags)
