#!/bin/sh

for problem in problems/*; do
    printf "$problem "
    output=$(docker-compose exec -T --user=postgres pg psql < $problem)
    echo "$output" > answers/$(basename $problem)
    echo done
done
