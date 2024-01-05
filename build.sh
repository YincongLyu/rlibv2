#!/bin/bash

# 删除rbuild目录
if [ -d "rbuild" ]; then
  rm -rf rbuild
fi

# 创建rbuild目录
mkdir rbuild

# 进入rbuild目录
cd rbuild

# 执行cmake和make命令
cmake ..
make -j

# 执行make coretest命令
make coretest
