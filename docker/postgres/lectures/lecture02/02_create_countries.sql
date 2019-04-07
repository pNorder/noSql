CREATE TABLE countries (
  country_code TEXT NOT NULL,
  country_name TEXT NOT NULL,
  PRIMARY KEY (country_code),
  CONSTRAINT unique1 UNIQUE (country_name)
);
