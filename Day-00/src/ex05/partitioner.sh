#!/bin/bash

tail -n +2 ../ex03/hh_positions.csv | while read -r line; do
    # считываем файл построчно
    # берем 2-ю колонку и из нее берем 10 символов даты
    # задаем переменную с именем файла равным дате
    created_at=$(echo "$line" | awk -F',' '{ print $2 }')
    date=${created_at:1:10}
    output="${date}.csv"

    # если файла с таким именем еще нет, пишем 1-ю строку
    if [ ! -f "$output" ]; then
        echo '"id","created_at","name","has_test","alternate_url"' > "$output"
    fi

    # дописываем строку в существующий файл
    echo "$line" >> "$output"
done