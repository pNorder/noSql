SELECT
  min(starts),
  max(ends)
FROM events
  INNER JOIN venues
    ON events.venue_id = venues.venue_id
WHERE venues.name = 'Crystal Ballroom';
