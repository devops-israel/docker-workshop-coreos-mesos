#!/bin/bash

# default fleetctl op
op="start"
[ "x$1" == "x" ] || op="$1"

# boom!
fleetctl $op zookeeper@{1..3} mesos-master@{1..3} mesos-slave marathon chronos
