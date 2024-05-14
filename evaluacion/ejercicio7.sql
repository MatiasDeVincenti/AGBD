SELECT p.name AS Nombre, p.ssn AS numSS, gci.membership_id AS IDmemb, gm.membership_status AS TipoMembresia FROM person p
JOIN get_fit_now_member gm on p.id = gm.person_id
JOIN get_fit_now_check_in gci on gm.id = gci.membership_id
WHERE gci.check_in_date LIKE "%2018%"
ORDER BY TipoMembresia, numSS