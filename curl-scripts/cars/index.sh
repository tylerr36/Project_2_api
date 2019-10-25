#!/bin/bash

curl "http://localhost:4741/cars" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
