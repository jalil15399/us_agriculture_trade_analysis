CREATE TABLE analysis_5yr (
	year smallint,
	total_exports bigint,
	total_imports bigint,
	trade_balance bigint
);

COPY analysis_5yr FROM
'C:\Users\Jalil Ahamd\Desktop\project_4\analysis_5yr.csv'
WITH (FORMAT CSV, HEADER)
;

SELECT * FROM analysis_5yr;