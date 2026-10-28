-- DAY 11: RIGHT JOIN AND FULL OUTER JOIN

-- 1. RIGHT JOIN
-- Show all departments, even if they have no employees

SELECT
    e.name,
    e.department,
    d.department_name,
    d.location
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.department_name;


-- 2. Find departments without employees

SELECT
    d.department_name,
    d.location
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.department_name
WHERE e.employee_id IS NULL;


-- 3. FULL OUTER JOIN concept
-- MySQL can simulate FULL OUTER JOIN using UNION

SELECT
    e.name,
    e.department,
    d.department_name,
    d.location
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.department_name

UNION

SELECT
    e.name,
    e.department,
    d.department_name,
    d.location
FROM employees AS e
RIGHT JOIN departments AS d
    ON e.department = d.department_name;
