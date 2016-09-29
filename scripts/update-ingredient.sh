#!/bin/bash

curl --include --request PATCH http://localhost:3000/ingredients/1 \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "ground beef",
      "units": "lbs"
    }
  }'
