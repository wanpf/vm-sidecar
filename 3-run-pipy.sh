#!/bin/bash

ip=$(hostname --all-ip-addresses | cut -d ' ' -f 1)

PIPY_REPO=${PIPY_REPO:-'http://vm-sidecar.controller.svc.cluster.local:6060/repo/fsm/'}

chmod 755 ./pipy

runuser -u pipy -- ./pipy --admin-port=6060 "$PIPY_REPO#?ip=$ip"

