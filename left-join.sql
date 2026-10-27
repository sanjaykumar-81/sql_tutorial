-- DAY 10: LEFT JOIN

-- 1. Show all employees with their department location
SELECT
    e.name,
    e.department,
    d.location
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.department_name;


-- 2. Find employees without matching department information
SELECT
    e.name,
    e.department
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department = d.department_name
WHERE d.department_name IS NULL;
