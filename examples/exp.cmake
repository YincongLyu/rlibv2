include_directories(./examples/gflags/include)

add_executable(pclient "${CMAKE_SOURCE_DIR}/examples/rc_pingpong/client.cc")
add_executable(pserver "${CMAKE_SOURCE_DIR}/examples/rc_pingpong/server.cc")

add_executable(wclient "${CMAKE_SOURCE_DIR}/examples/rc_write/client.cc")
add_executable(wserver "${CMAKE_SOURCE_DIR}/examples/rc_write/server.cc")

set(exps
pclient pserver
wserver wclient)

foreach(e ${exps})
 target_link_libraries(${e} pthread ibverbs gflags)
endforeach(e)
