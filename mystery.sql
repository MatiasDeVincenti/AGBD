SELECT *
FROM crime_scene_report
WHERE date = "20180115" AND city = "SQL City" AND type = "murder"

/* 20180115	murder	Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City */

/*2)*/
SELECT address_street_name, address_number, name 
FROM person
WHERE address_street_name LIKE "northwestern dr"
ORDER BY address_number DESC
/* Northwestern Dr	4919	Morty Schapiro */

SELECT address_street_name, address_number, name 
FROM person
WHERE address_street_name LIKE "franklin ave" AND name LIKE "Annabel%"

/* Franklin Ave	103	Annabel Miller */

SELECT p.name, i.transcript FROM person p
JOIN interview i ON p.id = i.person_id
WHERE p.name LIKE "annabel miller" 

/* I saw the murder happen, and I recognized the killer
from my gym when I was working out last week on January the 9th. */

SELECT p.name, i.transcript FROM person p
JOIN interview i ON p.id = i.person_id
WHERE p.name LIKE "morty schapiro" 

/* I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
 The membership number on the bag started with "48Z". Only gold members have those bags. 
 The man got into a car with a plate that included "H42W". */

 SELECT d.plate_number, p.name FROM drivers_license d 
JOIN person p ON p.license_id = d.id
WHERE d.plate_number LIKE "%H42W%"

4H42WR	Tushar Chandra
0H42W2	Jeremy Bowers
H42W0X	Maxine Whitely

INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
SELECT value FROM solution;