#!/bin/sh
set -e
pushd $(dirname $0)
for image in java zookeeper mesos mesos-master mesos-slave chronos marathon; do
  ${image}/build.sh
done
