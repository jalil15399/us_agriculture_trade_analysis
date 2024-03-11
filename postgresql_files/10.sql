SELECT im.country, im.imports_1990_2023, ex.exports_1990_2023
FROM imports_1990_2023 im INNER JOIN exports_1990_2023 ex
ON ex.country = im.country
WHERE imports_1990_2023 > 30_000_000_000
ORDER BY imports_1990_2023 DESC;