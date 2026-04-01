-- First we query the murder reports in SQL City.
SELECT *
FROM 'crime_scene_report'
WHERE type = 'murder'
AND city = 'SQL City';

-- Looking for the first witness based on her name and street name:
SELECT *
FROM person
WHERE name LIKE 'Annabel%' 
AND address_street_name='Franklin Ave';

-- Looking for the other witness based on street name and the fact that it's the last house on the street:
SELECT *
FROM person
WHERE address_street_name='Northwestern Dr'
ORDER BY address_number
DESC;

-- Getting the testimonies.
SELECT *
FROM interview
WHERE person_id IN (16371,14887);

-- This query outputed 2 possible suspects of the murder,
-- based on the beginning of membership number and check in date.
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date=20180109
AND membership_id LIKE '48Z%';

-- Getting the murderers' names and personal id-s from their gym membership id-s.
SELECT *
FROM get_fit_now_member
WHERE id IN ('48Z7A','48Z55');

-- Finding suspects' personal information.
SELECT * 
FROM person
WHERE id IN (28819,67318);

-- Final solution.
SELECT plate_number, id
FROM drivers_license
WHERE id IN (173289,423327);




    
