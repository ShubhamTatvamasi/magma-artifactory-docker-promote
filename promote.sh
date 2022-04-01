#!/usr/bin/env bash

# set -ex

declare -A repositories=(
  [feg]="gateway_go gateway_python"
  [orc8r]="controller magmalte nginx"
  [agw]="agw_gateway_c agw_gateway_python ghz_gateway_c ghz_gateway_python"
  [cwf]="cwag_go gateway_go gateway_pipelined gateway_python gateway_sessiond operator"
)

for repo in ${!repositories[@]}; do
  for image in ${repositories[${repo}]}; do
    echo "docker push ${repo}/${image}"
  done
done
