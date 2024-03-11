CREATE TABLE agriculture_1990_2023 AS
(
SELECT im.country, im.imports_1990_2023, ex.exports_1990_2023
FROM imports_1990_2023 im INNER JOIN exports_1990_2023 ex
ON ex.country = im.country
);
