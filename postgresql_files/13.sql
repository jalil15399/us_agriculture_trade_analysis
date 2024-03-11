SELECT 
round 
(
	(exports_1990_2023 - imports_1990_2023)::numeric / imports_1990_2023 * 100, 2
) AS percent_change
FROM agriculture_1990_2023;
