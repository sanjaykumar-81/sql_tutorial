-- DAY 11: JOIN PRACTICE

-- 1. Employee name + department location
SELECT
    e.name,
    e.department,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name;


-- 2. Employees working in Bangalore
SELECT
    e.name,
    e.department,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name
WHERE d.location = 'Bangalore';


-- 3. Employees working outside Bangalore
SELECT
    e.name,
    e.department,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name
WHERE d.location <> 'Bangalore';


-- 4. Employee name and annual salary
SELECT
    e.name,
    e.salary,
    e.salary * 12 AS annual_salary,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name;


-- 5. Employees earning more than 60000
-- with their department location
SELECT
    e.name,
    e.salary,
    e.department,
    d.location
FROM employees AS e
INNER JOIN departments AS d
    ON e.department = d.department_name
WHERE e.salary > 60000;


-- 6. Highest-paid employee in each department
SELECT
    e.name,
    e.department,
    e.salary
FROM employees AS e
INNER JOIN (
    SELECT
        department,
        MAX(salary) AS highest_salary
    FROM employees
    GROUP BY department
) AS x
    ON e.department = x.department
   AND e.salary = x.highest_salary;


-- 7. Count employees in each department
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON d.department_name = e.department
GROUP BY d.department_name;


-- 8. Average salary by department
SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM departments AS d
INNER JOIN employees AS e
    ON d.department_name = e.department
GROUP BY d.department_name;
