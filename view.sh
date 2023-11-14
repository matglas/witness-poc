#!/usr/bin/env bash

cat test-att.json | jq -r .payload | base64 -d | jq