#!/bin/bash

curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "Taco Thing",
      "time": 30
    }
  }'
