#!/bin/sh

# сохраняем во временный файл
csvformat ../ex02/hh_sorted.csv > temp_unquoted.csv

# --no-inference нужен, чтобы утилита считала время, айди и тесты строками
# иначе она конвертирует их во флоаты, приписывая .0,
# а true-false меняет на 0 и 1
csvsql --no-inference --query "
SELECT 
    id,
    created_at,
    CASE
        WHEN
            NOT (name LIKE '%Junior%' OR name LIKE '%Middle%' OR name LIKE '%Senior%')
        THEN '-'
        ELSE
            RTRIM(
                (CASE WHEN name LIKE '%Junior%' THEN 'Junior/' ELSE '' END) ||
                (CASE WHEN name LIKE '%Middle%' THEN 'Middle/' ELSE '' END) ||
                (CASE WHEN name LIKE '%Senior%' THEN 'Senior/' ELSE '' END),
            '/')
    END AS name,
    has_test,
    alternate_url
FROM temp_unquoted
" temp_unquoted.csv | csvformat -U 1 > hh_positions.csv

rm temp_unquoted.csv
