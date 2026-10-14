-- DAY 6: ORDER BY AND LIMIT

-- 1. Sort employees by salary from lowest to highest
SELECT *
FROM employees
ORDER BY salary ASC;


-- 2. Sort employees by salary from highest to lowest
SELECT *
FROM employees
ORDER BY salary DESC;


-- 3. Show the 3 highest-paid employees
SELECT name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- 4. Sort by department first, then salary
SELECT name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;


-- 5. Find the highest-paid employee
SELECT name, department, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
