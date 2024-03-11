ALTER TABLE imports_exports_yearly ADD COLUMN percent_change numeric;

UPDATE imports_exports_yearly 
SET percent_change = 
(
	round((total_exports - total_imports)::numeric / total_imports * 100,2)
);

SELECT * FROM imports_exports_yearly 
ORDER BY percent_change DESC;
