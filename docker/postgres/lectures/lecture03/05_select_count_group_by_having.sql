FROM events
GROUP BY venue_id
HAVING count (*) >= 2 AND venue_id IS NOT NULL;
