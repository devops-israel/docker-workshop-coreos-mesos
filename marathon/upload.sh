#!/bin/sh

curl -s -i -H 'Content-Type: application/json' -d @busyloop.json 172.17.8.101:8080/v2/apps; echo

## chronos
# curl -s -L -H 'Content-Type: application/json' -X POST -d @busyloop.json 172.17.8.101:4400/scheduler/iso8601; echo
