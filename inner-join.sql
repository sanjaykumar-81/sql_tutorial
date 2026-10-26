-- DAY 9: INNER JOIN

-- Connect employees with their department information

SELECT
    employees.name,
    employees.department,
    departments.location
FROM employees
INNER JOIN departments
    ON employees.department = departments.department_name;


-- Show employee name, salary and department location

SELECT
    e.name,
    e.salary,
    e.department,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name;
