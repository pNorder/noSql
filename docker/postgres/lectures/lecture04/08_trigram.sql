SELECT show_trgm('Avatar');


CREATE INDEX movies_title_trigram
  ON movies
  USING gist (title gist_trgm_ops);

SELECT title
FROM movies
WHERE title % 'Avatre';
