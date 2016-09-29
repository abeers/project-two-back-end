#!/bin/bash

curl --include --request PATCH http://localhost:3000/recipes/1 \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "Taco Thing",
      "time": 20
    }
  }'
