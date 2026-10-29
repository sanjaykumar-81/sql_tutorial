-- DAY 12: ADVANCED SUBQUERY PRACTICE


-- 1. Employees earning above the company average

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 2. Employees earning exactly the average salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT AVG(salary)
    FROM employees
);


-- 3. Employees earning the highest salary in IT

SELECT
    name,
    department,
    salary
FROM employees
WHERE department = 'IT'
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'IT'
);


-- 4. Employees earning more than
-- the highest HR salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'HR'
);


-- 5. Employees earning less than
-- the lowest IT salary

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary < (
    SELECT MIN(salary)
    FROM employees
    WHERE department = 'IT'
);


-- 6. Find the highest-paid employee
-- without using MAX() in the main query

SELECT
    name,
    department,
    salary
FROM employees
WHERE salary >= ALL (
    SELECT salary
    FROM employees
);


-- 7. Find employees who work in a department
-- that exists in the departments table

SELECT
    name,
    department,
    salary
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
);


-- 8. Find departments that have employees

SELECT
    department_name
FROM departments
WHERE department_name IN (
    SELECT department
    FROM employees
);


-- 9. Find the employee with the
-- second-highest salary

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
