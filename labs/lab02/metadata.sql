SELECT * 
FROM pg_class P
WHERE P.relname = 'cities' OR 
P.relname = 'countries' OR 
P.relname = 'events' OR 
P.relname = 'venues';