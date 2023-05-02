USE employees;

# part 1
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT last_name FROM employees where last_name like '%Q%';

# part 2
SELECT first_name FROM employees WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
        AND gender = 'M';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
SELECT last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%';


