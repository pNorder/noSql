SELECT levenshtein('bat', 'fads');

SELECT
  levenshtein('bat', 'fad') fad,
  levenshtein('bat', 'fat') fat,
  levenshtein('bat', 'bat') bat;

SELECT
  movie_id,
  title
FROM movies
WHERE levenshtein(lower(title), lower('a hard day nght')) <= 3;
