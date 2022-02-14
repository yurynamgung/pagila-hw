/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

select film.film_id, film.title, language.language_id, language.name
from film
join language using (language_id)
where language.name = 'English' 
    and (film.title like 'K%' or film.title like 'Q%')
order by film.title;
