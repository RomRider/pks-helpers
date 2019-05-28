#!/usr/bin/env bash

set -euo pipefail

export BOSH_username=$1
export BOSH_namespace=$2
export BOSH_rolename=$3

kubectl apply -f <(bosh int manifests/role.yml --vars-env=BOSH)
kubectl apply -f <(bosh int manifests/role-binding.yml --vars-env=BOSH)
kubectl apply -f <(bosh int manifests/role-default-ns.yml --vars-env=BOSH)
kubectl apply -f <(bosh int manifests/role-binding-default-ns.yml --vars-env=BOSH)
