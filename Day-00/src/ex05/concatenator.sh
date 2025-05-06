#!/bin/bash

echo '"id","created_at","name","has_test","alternate_url"' > "merged_hh.csv"

for file in ????-??-??.csv; do
    tail -n +2 "$file" >> "merged_hh.csv"
done

rm -f ????-??-??.csv