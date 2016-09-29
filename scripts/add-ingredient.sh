#!/bin/bash

curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "ground beef",
      "units": "oz"
    }
  }'
