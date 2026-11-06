-- DAY 18: SQL SUBQUERIES

-- 1. Employees earning more than the average salary

SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 2. Employee with the highest salary

SELECT
    name,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- 3. Employees earning the lowest salary

SELECT
    name,
    salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- 4. Employees working in the IT department

SELECT
    name,
    department
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    WHERE department = 'IT'
);


-- 5. Employees earning more than Rahul

SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE name = 'Rahul'
);


-- 6. Count employees earning above average salary

SELECT COUNT(*) AS employee_count
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 7. Find employees whose salary is greater than
-- the average salary of the IT department

SELECT
    name,
    salary,
    department
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'IT'
);


-- 8. Find the second highest salary

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
