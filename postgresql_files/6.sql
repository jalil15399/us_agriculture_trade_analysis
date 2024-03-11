SELECT year, total_imports, total_exports, trade_balance,
round((total_exports - total_imports)::numeric / total_imports * 100,2) percent_change
FROM imports_exports_yearly
WHERE (total_exports - total_imports)::numeric / total_imports * 100 < 0
AND trade_balance < 0
;
