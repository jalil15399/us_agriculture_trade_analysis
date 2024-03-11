UPDATE agriculture_1990_2023
SET trade_balance = 
(
	exports_1990_2023 - imports_1990_2023
);

UPDATE agriculture_1990_2023
SET percent_change = 
(
	round 
	(
		(exports_1990_2023 - imports_1990_2023)::numeric / imports_1990_2023 * 100, 2
	)
);

COPY (
	SELECT * FROM agriculture_1990_2023
	) TO
'C:\Users\Jalil Ahamd\Desktop\project\agri_1990_2023.csv'
WITH (FORMAT CSV, HEADER)
;

COPY (
	SELECT * FROM imports_exports_yearly
	) TO
'C:\Users\Jalil Ahamd\Desktop\project\agriculture_yearly_all_data.csv'
WITH (FORMAT CSV, HEADER)
;
