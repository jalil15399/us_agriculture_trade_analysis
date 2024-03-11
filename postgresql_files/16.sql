ALTER TABLE analysis_5yr ADD COLUMN percent_change numeric;

UPDATE analysis_5yr
SET percent_change = 
(
	round 
	(
		(total_exports - total_imports)::numeric / total_imports * 100, 2
	)
);

COPY 
(
	SELECT * FROM analysis_5yr
)
TO 'C:\Users\Jalil Ahamd\Desktop\project_4\detail_5yr.csv'
WITH (FORMAT CSV, HEADER);
