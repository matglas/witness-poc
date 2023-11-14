#!/usr/bin/env bash

apt update -qq
apt install curl jq -qq -y

bash <(curl -s https://raw.githubusercontent.com/testifysec/witness/main/install-witness.sh)

openssl genpkey -algorithm ed25519 -outform PEM -out testkey.pem
openssl pkey -in testkey.pem -pubout > testpub.pem