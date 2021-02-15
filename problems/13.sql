/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT
  film.title,
  sum(payment.amount) AS profit
FROM /*category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN */film /*ON film.film_id = film_category.film_id*/
INNER JOIN inventory ON inventory.film_id = film.film_id
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
INNER JOIN payment ON payment.rental_id = rental.rental_id
GROUP BY film.title
ORDER BY profit DESC;

