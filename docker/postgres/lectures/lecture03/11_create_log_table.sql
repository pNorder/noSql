CREATE TABLE logs (
  event_id   integer,
  old_title  varchar(255),
  old_starts timestamp,
  old_ends   timestamp,
  logged_at  timestamp DEFAULT current_timestamp
);
