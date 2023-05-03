USE employees;

#  Group By Exercises

# 2:
SELECT DISTINCT title FROM titles;

# 3:
SELECT last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' GROUP BY last_name;

# 4:
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' GROUP BY last_name, first_name;

# 5:
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;

# 6:
SELECT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;

# 7:
SELECT gender, COUNT(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;