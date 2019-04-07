UPDATE events
SET ends='2018-05-04 01:00:00'
WHERE title='House Party';

SELECT event_id, old_title, old_ends, logged_at
FROM logs;
