USE employees;

# Order By Exercises
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name DESC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no ;
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC ;


