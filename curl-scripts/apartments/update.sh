# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/apartments/${ID}" \
  --include \
  --request PATCH \
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
