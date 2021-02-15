/*
 * Find the id, first name, and last name of an actor, of whom you know only the first name of "Joe".
 */

SELECT
  actor_id
  ,first_name
  ,last_name
FROM actor
WHERE first_name ILIKE 'joe'
;
