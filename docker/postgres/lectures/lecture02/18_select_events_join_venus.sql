SELECT
  e.title,
  v.name
FROM events e
  JOIN venues v
    ON e.venue_id = v.venue_id;
