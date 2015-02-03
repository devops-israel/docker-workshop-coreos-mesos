#!/bin/bash

# default fleetctl op
op="start"
[ "x$1" == "x" ] || op="$1"

[ "$op" == "start" ] && {
  fleetctl start zookeeper@{1..3}
  echo "waiting for zookeeper ensemble..."; sleep 20
}
fleetctl $op zookeeper@{1..3} mesos-master@{1..3} marathon chronos
fleetctl $op mesos-slave
