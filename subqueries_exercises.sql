USE employees;

# 1:
SELECT CONCAT(first_name, ' ', last_name) AS full_name, hire_date FROM employees
WHERE hire_date = '1990-10-22';
# or
SELECT hire_date FROM employees WHERE emp_no = 101010;
SELECT * FROM employees
    WHERE hire_date IN (
        SELECT hire_date
        FROM employees
        WHERE emp_no = 101010
        );

# 2:
SELECT title FROM titles WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);
# or
SELECT title, COUNT(title) FROM titles WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
    GROUP BY title;

# 3:
SELECT first_name, last_name FROM employees
    WHERE gender = 'F'
        AND
        emp_no IN (
        SELECT emp_no FROM dept_manager
        WHERE to_date LIKE '9%'
        );

# bonus 1:
SELECT dept_name FROM departments
    WHERE dept_no IN (
        SELECT dept_no FROM dept_manager
                       WHERE to_date LIKE '9%'
                       AND emp_no IN (
                           SELECT emp_no
                           FROM employees
                           WHERE gender = 'F'
                           )
        );
# bonus 2:
SELECT first_name, last_name FROM employees
    WHERE emp_no IN (
        SELECT emp_no FROM salaries
                      WHERE salary = (SELECT MAX(salary) FROM salaries)
        );
