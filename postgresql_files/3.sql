CREATE TABLE exports_1990_2023 (
	country text,
	exports_1990_2023 bigint
);

CREATE TABLE imports_1990_2023 (
	country text,
	imports_1990_2023 bigint
);

CREATE TABLE imports_exports_yearly (
	year smallint,
	total_imports bigint,
	total_exports bigint,
	trade_balance bigint
);

COPY exports_1990_2023 FROM
'C:\Users\Jalil Ahamd\Desktop\project\exports_1990_2023.csv'
WITH (FORMAT CSV, HEADER);

COPY imports_1990_2023 FROM
'C:\Users\Jalil Ahamd\Desktop\project\imports_1990_2023.csv'
WITH (FORMAT CSV, HEADER);

COPY imports_exports_yearly FROM
'C:\Users\Jalil Ahamd\Desktop\project\imports_exports_yearly.csv'
WITH (FORMAT CSV, HEADER);
