#!/bin/sh

failed=false

for problem in problems/*; do
    printf "$problem "
    output=$(docker-compose exec -T --user=postgres pg psql < $problem)
    result=$(echo "$output" | diff answers/$(basename $problem) -)
    if [ -z "$result" ]; then
        echo pass
    else
        echo fail
        failed=true
    fi
done

if [ "$failed" = "true" ]; then
    exit 2
fi

