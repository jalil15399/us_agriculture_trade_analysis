ALTER TABLE exports_1990_2023 ADD CONSTRAINT exports_key PRIMARY KEY (country);

ALTER TABLE imports_1990_2023 ADD CONSTRAINT imports_key PRIMARY KEY (country);

SELECT im.country, im.imports_1990_2023, ex.country, ex.exports_1990_2023
FROM imports_1990_2023 im FULL OUTER JOIN exports_1990_2023 ex
ON ex.country = im.country;
