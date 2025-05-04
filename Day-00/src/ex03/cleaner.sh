#!/bin/sh

head -n 1 ../ex02/hh_sorted.csv > hh_positions.csv
tail -n +2 ../ex02/hh_sorted.csv | awk -F',' '
{
    name = $3
    $3 = ""
    if (name ~ /Junior/) $3 = "Junior"
    if (name ~ /Middle/) $3 = ($3 ? $3"/" : "") "Middle"
    if (name ~ /Senior/) $3 = ($3 ? $3"/" : "") "Senior"
    if ($3 == "") $3 = "-"
    
    print $1","$2",\""$3"\","$4","$5
}' >> hh_positions.csv
