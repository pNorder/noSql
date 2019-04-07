SELECT
  v.venue_id,
  v.name,
  c.name
FROM venues v INNER JOIN cities c
    ON v.postal_code = c.postal_code AND v.country_code = c.country_code;
