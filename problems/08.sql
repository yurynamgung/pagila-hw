/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 */

SELECT
film.film_id
  ,film.title
,COUNT(film.film_id)
FROM inventory
LEFT JOIN film ON inventory.film_id = film.film_id
WHERE film.title ILIKE 'h%'
GROUP BY
  film.film_id
  ,film.title
ORDER BY COUNT(film.film_id) DESC
;
