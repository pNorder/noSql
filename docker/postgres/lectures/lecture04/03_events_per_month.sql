SELECT
  extract(year from starts)  as year,
  extract(month from starts) as month,
  count(*)
FROM events
GROUP BY year, month
ORDER BY year, month;
