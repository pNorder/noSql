SELECT *
FROM venues V
WHERE V.street_address ILIKE '____ %'

--This qurery is based on the convention that 
--street addresses start with a 4 digit house number
--and are followed by a street name and street suffix