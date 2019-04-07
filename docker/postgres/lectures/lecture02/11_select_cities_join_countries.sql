SELECT
  cities.*,
  country_name
FROM cities
  INNER JOIN countries
  /* or just FROM cities JOIN countries */
    ON cities.country_code = countries.country_code;
