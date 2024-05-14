SELECT  membership_status AS Categoria, count(id) AS cantXCat FROM get_fit_now_member
GROUP BY membership_status
ORDER BY cantXCat DESC