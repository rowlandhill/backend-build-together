#!/bin/bash

STRING="test" TEXT="this is the text" BOOLEAN="false" INTEGER=8 TOKEN="BAhJIiUxZmY5MTVjYzcyYjYwMzM0NDIxMDBkYmJlMzY4OWJhZgY6BkVG--3aa35a303cf8410db5221df87c9661e9ed0d2914"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "task": {
      "name": "'"${STRING}"'",
      "description": "'"${TEXT}"'",
      "iscomplete": "'"${BOOLEAN}"'",
      "project_id": "'"${INTEGER}"'"
    }
  }'

echo
