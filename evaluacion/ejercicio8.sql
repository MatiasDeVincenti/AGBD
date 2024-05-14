SELECT dl.car_make AS Marca, dl.car_model AS Modelo, count(dl.car_model) AS cantModel FROM drivers_license dl
JOIN person p ON dl.id = p.license_id
JOIN income i ON p.ssn = i.ssn
WHERE i.annual_income < 35000
GROUP BY dl.car_make
HAVING cantModel  > 4 
ORDER BY cantModel DESC 