-- DAY 8: GROUP BY AND HAVING


-- 1. Count employees in each department
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- 2. Calculate average salary for each department
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- 3. Find total salary for each department
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- 4. Find the highest salary in each department
SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


-- 5. Show only departments with more than 1 employee
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;


-- 6. Find departments whose average salary is greater than 55000
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;
