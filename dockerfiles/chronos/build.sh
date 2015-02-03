#!/bin/sh
set -e
pushd $(dirname $0)
docker build -t 172.17.8.101:5000/dockertelaviv/chronos .
docker push 172.17.8.101:5000/dockertelaviv/chronos
