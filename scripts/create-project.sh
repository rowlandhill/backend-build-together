#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "project": {
      "title": "'"${STRING}"'",
      "body": "'"${TEXT}"'"
    }
  }'

echo
