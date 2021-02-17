/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT
  country
  ,sum(payment.amount) AS profit
FROM country
INNER JOIN city ON city.country_id = country.country_id
INNER JOIN address ON address.city_id = city.city_id
INNER JOIN customer ON customer.address_id = address.address_id
INNER JOIN rental ON rental.customer_id = customer.customer_id
INNER JOIN payment ON payment.rental_id = rental.rental_id
GROUP BY country
ORDER BY country;


