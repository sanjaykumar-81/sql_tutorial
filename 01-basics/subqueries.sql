-- DAY 12: SUBQUERIES

-- 1. Find employees earning more than the average salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 2. Find the employee with the highest salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- 3. Find employees earning less than the average salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);


-- 4. Find employees earning the minimum salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- 5. Find employees working in the IT department

SELECT
    name,
    salary
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
    WHERE department_name = 'IT'
);


-- 6. Find employees whose salary is greater than
-- the average salary of IT employees

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'IT'
);


-- 7. Find the second-highest salary

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);


-- 8. Find employees who earn the second-highest salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);
