SELECT min(age) AS Minima, max(age) AS Maxima, avg(age) AS Promedio
FROM drivers_license 
WHERE gender == "female" AND id IS NOT NULL