#!/bin/sh
#

sudo docker build -t "resolve" . && sudo docker run -d -p "0.0.0.0:1337:1337" --cap-add=SYS_PTRACE --security-opt seccomp=unconfined resolve
