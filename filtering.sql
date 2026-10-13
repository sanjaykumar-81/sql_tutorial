-- DAY 5: AND, OR, NOT

-- 1. IT employees earning more than 60000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000;


-- 2. Employees from IT or HR
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';


-- 3. Employees NOT in HR
SELECT *
FROM employees
WHERE NOT department = 'HR';


-- 4. IT employees earning between 60000 and 70000
SELECT *
FROM employees
WHERE department = 'IT'
AND salary >= 60000
AND salary <= 70000;


-- 5. IT employees earning more than 60000
-- OR Finance employees earning more than 50000
SELECT *
FROM employees
WHERE (department = 'IT' AND salary > 60000)
   OR (department = 'Finance' AND salary > 50000);
