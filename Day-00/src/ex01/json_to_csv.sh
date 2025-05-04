#!/bin/sh

echo '"id","created_at","name","has_test","alternate_url"' > hh.csv
jq -f -r filter.jq ../ex00/hh.json >> hh.csv