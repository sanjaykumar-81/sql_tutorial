-- DAY 15: SQL NULL VALUES


-- 1. Display all employees

SELECT *
FROM employees;


-- 2. Find employees with NULL department

SELECT *
FROM employees
WHERE department IS NULL;


-- 3. Find employees whose department is NOT NULL

SELECT *
FROM employees
WHERE department IS NOT NULL;


-- 4. Find employees with NULL salary

SELECT *
FROM employees
WHERE salary IS NULL;


-- 5. Replace NULL values using COALESCE()

SELECT
    name,
    COALESCE(department, 'Not Assigned') AS department
FROM employees;


-- 6. Replace NULL salary with zero

SELECT
    name,
    COALESCE(salary, 0) AS salary
FROM employees;


-- 7. Use IFNULL() to replace NULL values (MySQL)

SELECT
    name,
    IFNULL(department, 'Unknown') AS department
FROM employees;


-- 8. Count employees with missing departments

SELECT
    COUNT(*) AS missing_department_count
FROM employees
WHERE department IS NULL;


-- 9. Display employee details with default values

SELECT
    name,
    COALESCE(department, 'Not Assigned') AS department,
    COALESCE(salary, 0) AS salary
FROM employees;


-- 10. Find employees with missing salary or department

SELECT *
FROM employees
WHERE salary IS NULL
   OR department IS NULL;
