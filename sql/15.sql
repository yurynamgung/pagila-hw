/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select category.name, count(film.film_id) as sum
from category
join film_category using (category_id)
join film using (film_id)
join language using (language_id)
where language.name = 'English'
group by category.category_id
order by category.name;
