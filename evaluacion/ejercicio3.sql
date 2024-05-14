SELECT p.name AS Name from person p
LEFT JOIN drivers_license dl ON p.license_id = dl.id
WHERE dl.id IS NULL