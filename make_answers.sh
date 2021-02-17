#!/bin/bash

mkdir -p expected
for problem in sql/*; do
    printf "$problem "
    problem_id=$(basename ${problem%.sql})
    result="results/$problem_id.out"
    expected="expected/$problem_id.out"
    output=$(docker-compose exec -T --user=postgres pg psql < $problem)
    echo "$output" > $expected
    echo done
done
