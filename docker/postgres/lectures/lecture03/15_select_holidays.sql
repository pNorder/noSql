SELECT
  name,
  to_char(date, 'Month DD, YYYY') AS date
FROM holidays
WHERE date <= '2019-04-01';
