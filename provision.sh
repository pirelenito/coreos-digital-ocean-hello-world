#!/bin/bash

REGION=nyc1
SIZE=512mb

curl --request POST "https://api.digitalocean.com/v2/droplets" \
     --header "Content-Type: application/json" \
     --header "Authorization: Bearer $TOKEN" \
     --data '{"region":"'"${REGION}"'",
        "image":"coreos-stable",
        "size":"'"$SIZE"'",
        "user_data": "'"$(cat cloud-config.yaml | sed 's/"/\\"/g')"'",
        "ssh_keys":["'"$SSH_KEY_ID"'"],
        "name":"coreos-hello-world"}'

