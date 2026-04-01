
-- The testimony of the killer: 
SELECT *
FROM interview
WHERE person_id=67318;

-- Looking for the woman, described by the killer:
SELECT *
FROM drivers_license
WHERE gender='female'
AND car_make='Tesla'
AND car_model='Model S'
AND height BETWEEN 65 AND 67;

-- Using license_id to find person_id:
SELECT * 
FROM person 
WHERE license_id IN (202298,291182,918773);

-- Final solution:
SELECT *
FROM facebook_event_checkin
WHERE event_name LIKE 'SQL Symphony concert%'
AND date <= 20180101
AND person_id IN (99716,90700,78881);


