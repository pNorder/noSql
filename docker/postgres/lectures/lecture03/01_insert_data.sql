INSERT INTO cities (name, postal_code, country_code)
VALUES ('Denver', '80208', 'us');

INSERT INTO venues (name, street_address, type, postal_code, country_code, active)
VALUES ('My Place', '2199 S University Blvd', 'private', '80208', 'us', true);

INSERT INTO events (title, starts, ends, venue_id)
VALUES ('Moby', '2018-02-06 21:00', '2018-02-06 23:00', (
  SELECT venue_id
  FROM venues
  WHERE name = 'Crystal Ballroom'
)
);

INSERT INTO events (title, starts, ends, venue_id)
VALUES ('Wedding', '2018-02-26 21:00:00', '2018-02-26 23:00:00', (
  SELECT venue_id
  FROM venues
  WHERE name = 'Voodoo Doughnut'
)
);

INSERT INTO events (title, starts, ends, venue_id)
VALUES ('Dinner with Mom', '2018-02-26 18:00:00', '2018-02-26 20:30:00', (
  SELECT venue_id
  FROM venues
  WHERE name = 'My Place'
)
);

INSERT INTO events (title, starts, ends)
VALUES ('Valentine''s Day', '2018-02-14 00:00:00', '2018-02-14 23:59:00');
