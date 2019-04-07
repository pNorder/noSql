CREATE TABLE events (
  event_id SERIAL PRIMARY KEY,
  title    TEXT,
  starts   TIMESTAMP,
  ends     TIMESTAMP,
  venue_id INTEGER,
  FOREIGN KEY (venue_id) REFERENCES venues
);
