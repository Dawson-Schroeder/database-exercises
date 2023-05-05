USE employees;


# getting all current managers of each department
SELECT to_date, CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees e
         JOIN dept_manager dm
              ON dm.emp_no = e.emp_no
         JOIN departments d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;

# getting all current managers that are female from each department
SELECT to_date, CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, e.gender
FROM employees e
        JOIN dept_manager dm
            ON dm.emp_no = e.emp_no
        JOIN departments d
            ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender LIKE 'F'
ORDER BY dm.to_date;

# current titles of employees currently working in the customer service department.
SELECT t.title, COUNT(*) AS Total
FROM employees e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN titles t ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01'
    AND t.to_date = '9999-01-01'
    AND de.dept_no = 'd009'
GROUP BY t.title
ORDER BY Total DESC;



# current salary of all current managers
SELECT dm.to_date, CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, salary
FROM employees e
         JOIN dept_manager dm
              ON dm.emp_no = e.emp_no
         JOIN departments d
              ON d.dept_no = dm.dept_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01' ORDER BY salary DESC;


# BONUS
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       dept_name AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manger
FROM employees e JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on d.dept_no = de.dept_no
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE de.to_date LIKE '9%'
    AND dm.to_date LIKE '9%';



