-- DAY 7: AGGREGATE FUNCTIONS

-- 1. Count total employees
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Calculate total salary
SELECT SUM(salary) AS total_salary
FROM employees;


-- 3. Calculate average salary
SELECT AVG(salary) AS average_salary
FROM employees;


-- 4. Find the highest salary
SELECT MAX(salary) AS highest_salary
FROM employees;


-- 5. Find the lowest salary
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- 6. Get all important salary statistics together
SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees;
