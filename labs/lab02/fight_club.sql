SELECT Co.country_name
FROM events E, venues V, cities Ci, countries Co
WHERE E.title = 'Fight Club' AND 
    E.venue_id = V.venue_id AND 
    V.postal_code = Ci.postal_code AND
    V.country_code = Ci.country_code AND
    Ci.country_code = Co.country_code;