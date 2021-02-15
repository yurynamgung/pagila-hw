/*
 * Find all actors whose last names contain the letters LI (case insensitive).
 * This time, order the rows by last name and first name, in that order.
 */

SELECT
  actor_id
  ,first_name
  ,last_name
FROM actor
WHERE last_name ILIKE '%li%'
ORDER BY last_name
,first_name
;
