#!/bin/sh

QUERY="data scientist"
ENCODED_QUERY=$(echo "$QUERY" | jq @uri -R -r)
content=$(curl -s "https://api.hh.ru/vacancies?text=$ENCODED_QUERY&per_page=20&page=0" | jq '.')
echo "$content" > hh.json