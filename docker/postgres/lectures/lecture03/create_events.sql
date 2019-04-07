create table events
(
  event_id serial not null
    constraint events_pkey
    primary key,
  title text,
  starts timestamp,
  ends timestamp,
  venue_id integer
    references venues
);
