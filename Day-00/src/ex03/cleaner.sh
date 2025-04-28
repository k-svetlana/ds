#!/bin/sh

head -n 1 ../ex02/hh_sorted.csv > hh_positions.csv
tail -n +2 ../ex02/hh_sorted.csv | awk -F',' '
# BEGIN {
#     FS="\",\""; OFS="\",\""
# }
{
    # gsub(/^\"/, "", $1)
    # gsub(/\"$/, "", $5)
    
    id = $1
    created_at = $2
    name = $3
    has_test = $4
    alternate_url = $5

    position = ""
    if (name ~ /Junior/) position = "Junior"
    if (name ~ /Middle/) position = (position ? position"/" : "") "Middle"
    if (name ~ /Senior/) position = (position ? position"/" : "") "Senior"
    if (position == "") position = "-"
    
    print $1","$2",""\""position"\""","$4","$5
}' >> hh_positions.csv
