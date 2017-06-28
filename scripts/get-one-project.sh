#!/bin/bash

INTEGER=18 TOKEN="BAhJIiVjOTdmNmM4OTUzMDI3MDliZDg0NzVjOGQyYWQ3MDg3NAY6BkVG--ef46007e0c46ab36861dda5960d4c67b2663a373"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "project": {
      "id": "'"${INTEGER}"'"
    }
  }'

echo
