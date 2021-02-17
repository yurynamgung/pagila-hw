/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT
  film.title
FROM category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN film ON film.film_id = film_category.film_id
WHERE category.name='Family'
ORDER BY title;
