#!/usr/bin/env bash
WITNESS=/Users/matt/Projects/github/witness/bin/witness
# WITNESS=witness

./clean.sh

$WITNESS run --attestor-product-exclude-glob "out/**" --step build -o test-att.json -- bash build.sh

cat test-att.json | jq -r .payload | base64 -d | jq