#!/bin/bash

echo "\"name\",\"count\"" > hh_uniq_positions.csv

tail -n +2 ../ex03/hh_positions.csv | awk -F',' '{ print $3 }' | \
sort | uniq -c | sort -rn | awk '{print $2 "," $1}' >> hh_uniq_positions.csv
