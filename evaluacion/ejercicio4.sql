SELECT name AS Nombre, address_street_name AS Calle, address_number AS Num
FROM person 
WHERE address_street_name == "Franklin Ave" 
ORDER BY address_number DESC 
LIMIT 1
OFFSET 1