SELECT *
FROM actors
WHERE metaphone(name, 8) % metaphone('Robin Williams', 8)
ORDER BY levenshtein(lower('Robin Williams'), lower(name));


SELECT *
FROM actors
WHERE dmetaphone(name) % dmetaphone('Ron');
