#!/usr/bin/env bash

set -euo pipefail

echo "Getting client admin token"
uaac token client get admin

echo "Creating user"
uaac user add $1 --emails $2
