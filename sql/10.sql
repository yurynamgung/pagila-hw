/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

select title, film_id, count(actor_id) as actor_count
from film
join film_actor using (film_id)
group by film_id
order by actor_count, title;
