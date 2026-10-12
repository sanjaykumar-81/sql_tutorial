-- Day 4: Selecting specific columns

-- 1. Show employee names and departments
SELECT name, department
FROM employees;

-- 2. Show employee name and salary with aliases
SELECT
    name AS employee_name,
    salary AS monthly_salary
FROM employees;

-- 3. Calculate annual salary
SELECT
    name,
    salary,
    salary * 12 AS annual_salary
FROM employees;

-- 4. Show employees earning more than 55000
SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > 55000;
