#!/bin/bash

curl "http://localhost:4741/apartments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "apartment": {
      "country": "'"${COUNTRY}"'",
      "city": "'"${CITY}"'",
      "price": "'"${PRICE}"'",
      "ski_distance": "'"${SKIDISTANCE}"'",
      "ocean_distance": "'"${OCEANDISTANCE}"'",
      "airport_distance": "'"${AIRPORTDISTANCE}"'"
    }
  }'

echo
