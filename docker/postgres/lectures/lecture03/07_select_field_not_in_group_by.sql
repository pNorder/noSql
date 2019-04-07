SELECT
  title,
  venue_id,
  count(*)
FROM events
GROUP BY venue_id;
