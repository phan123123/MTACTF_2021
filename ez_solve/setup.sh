#!/bin/sh
#

sudo docker build -t "solve" . && sudo docker run -d -p "0.0.0.0:1336:1336" --cap-add=SYS_PTRACE --security-opt seccomp=unconfined solve
