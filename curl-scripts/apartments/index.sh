#!/bin/bash

curl "http://localhost:4741/apartments" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
