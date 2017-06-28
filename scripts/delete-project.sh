#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \


echo
