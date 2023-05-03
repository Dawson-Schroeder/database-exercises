USE employees;
# getting table for employees:
SELECT * FROM employees;

# Functions Exercises

SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no ;
# 2:
SELECT CONCAT(first_name, ' ', last_name) FROM employees
    WHERE last_name LIKE '%E%';
# 3:
SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date) FROM employees
    WHERE birth_date LIKE '%-12-25';
# 4:
SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date) FROM employees
    WHERE birth_date LIKE '%-12-25'
        AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';
# 4: in class
SELECT * FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND hire_date LIKE '199%';
# 5:
SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date, ' | ', hire_date) FROM employees
     WHERE birth_date LIKE '%-12-25'
        AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
     ORDER BY hire_date DESC, birth_date;
# 6:
SELECT DATEDIFF(NOW(), hire_date)/365 FROM employees
    WHERE birth_date LIKE '%-12-25'
      AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
    ORDER BY hire_date DESC, birth_date;
# 6: in class
SELECT DATEDIFF(NOW(), hire_date), employees.* FROM employees WHERE DAY(birth_date) = 25 AND
    MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%' ORDER BY DATEDIFF(hire_date, NOW())
    DESC;