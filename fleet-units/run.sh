#!/bin/bash

for x in zookeeper@{1..3} mesos-master@{1..3} mesos-slave marathon chronos; do
    fleetctl start $x
    sleep 1
done
