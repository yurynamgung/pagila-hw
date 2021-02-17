/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
  category.name,
  sum(1)
FROM category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN film ON film.film_id = film_category.film_id
INNER JOIN language ON film.language_id = language.language_id
WHERE language.name='English'
GROUP BY category.name
ORDER BY category.name;

