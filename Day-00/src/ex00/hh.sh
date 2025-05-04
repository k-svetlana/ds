#!/bin/sh

ENCODED_QUERY=$(echo "$1" | jq @uri -R -r)
curl -s "https://api.hh.ru/vacancies?text=$ENCODED_QUERY&per_page=20&page=0" | jq '.' > hh.json