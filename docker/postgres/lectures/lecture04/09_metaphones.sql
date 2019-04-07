SELECT *
FROM actors
WHERE name = 'Broos Wils';

SELECT *
FROM actors
WHERE name % 'Broos Wils';

SELECT title
FROM movies
  NATURAL JOIN movies_actors
  NATURAL JOIN actors
WHERE metaphone(name, 6) = metaphone('Broos Wils', 6);

SELECT
  name,
  dmetaphone(name),
  dmetaphone_alt(name),
  metaphone(name, 8),
  soundex(name)
FROM actors;
