SELECT car_make, car_model FROM drivers_license d JOIN person p ON p.license_id = d.id
WHERE gender = "male"