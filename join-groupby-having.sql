-- DAY 17: JOIN + GROUP BY + HAVING

-- 1. Employee count by department

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- 2. Total salary by department

SELECT
    d.department_name,
    SUM(e.salary) AS total_salary
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- 3. Average salary by department

SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- 4. Department salary statistics

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    SUM(e.salary) AS total_salary,
    AVG(e.salary) AS average_salary,
    MAX(e.salary) AS highest_salary,
    MIN(e.salary) AS lowest_salary
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name;


-- 5. Departments with more than 2 employees

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 2;


-- 6. Departments with average salary above 55000

SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 55000;


-- 7. Highest total salary department

SELECT
    d.department_name,
    SUM(e.salary) AS total_salary
FROM employees_day17 e
INNER JOIN departments_day17 d
    ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_salary DESC
LIMIT 1;
