#!/bin/sh
#

sudo docker build -t "other_over" . && sudo docker run -d -p "0.0.0.0:1337:1337" --cap-add=SYS_PTRACE --security-opt seccomp=unconfined other_over
