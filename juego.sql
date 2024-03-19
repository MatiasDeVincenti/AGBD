SELECT * FROM village
SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE job = 'butcher'
SELECT * FROM INHABITANT state
SELECT * FROM inhabitant WHERE state = "friendly"
SELECT * FROM inhabitant WHERE job = "weaponsmith"
SELECT * FROM inhabitant WHERE job = "weaponsmith" and state = "friendly"
SELECT * FROM inhabitant WHERE job = "smith" and state = "friendly"
SELECT * FROM inhabitant WHERE job LIKE "%smith" and state = "friendly"
INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES ('Stranger', 1, '?', '?', 0, '?')