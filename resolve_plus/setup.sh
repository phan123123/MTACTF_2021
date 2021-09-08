#!/bin/sh
#

sudo docker build -t "resolve_plus" . && sudo docker run -d -p "0.0.0.0:1338:1338" --cap-add=SYS_PTRACE --security-opt seccomp=unconfined resolve_plus
