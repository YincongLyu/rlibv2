#!/usr/bin/env bash
# this script will sync the project to the remote server

# user="yincong"
# target=("val08" "val09")
# target=("219.228.147.130")
user="cong"
target=("49.52.27.29")
password="cong"

for machine in ${target[*]}
do
      rsync -i -rtuv -e 'ssh -o PasswordAuthentication=yes'\
            $PWD/../core $PWD/../tests $PWD/../examples $PWD/../benchs $PWD/../CMakeLists.txt \
            ${user}@${machine}:/data/${user}/rlib
done
