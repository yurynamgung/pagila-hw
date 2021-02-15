# pagila-hw
[![](https://github.com/mikeizbicki/pagila-hw/workflows/tests/badge.svg)](https://github.com/mikeizbicki/pagila-hw/actions?query=workflow%3Atests)

## Background

[Pagila](https://github.com/devrimgunduz/pagila) is a standard example database for postgresql.
The database implements a simple movie rental system like the company Blockbuster might have maintained (before Netflix killed them).
The following picture illustrates the database's structure:

<img src=dvd-rental-sample-database-diagram.png width=80% />

## Tasks

1. Fork this repo
1. Modify the `README.md` file so that the test case image points to your forked repo.
1. Solve the each of the problems in the `problems` folder.
    1. The folder contains 15 sql files, one for each problem.
       At the top of each file is a description of what the file is supposed to compute.
       For each file, write a single `SELECT` statement that computes the correct answer.
    1. The folder `answers` contains the expected outputs for each problem.
       You can verify your answer by checking that the output of your `SELECT` statement matches the output in the `answers` folder.
    1. The script `check_answer.sh` will perform these checks for you automatically using the `diff` command.
1. Upload a link to your forked github repo on sakai.
