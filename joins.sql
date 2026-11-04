-- DAY 16: SQL JOINS


-- 1. Create employees table

CREATE TABLE employees_join (
    employee_id INT,
    name VARCHAR(50),
    department_id INT,
    salary INT
);


-- 2. Insert employees

INSERT INTO employees_join VALUES
(1, 'Sanjay', 101, 50000),
(2, 'Rahul', 102, 55000),
(3, 'Priya', 103, 60000),
(4, 'Anjali', 101, 65000),
(5, 'Vijay', 104, 45000),
(6, 'Kiran', NULL, 40000);


-- 3. Create departments table

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);


-- 4. Insert departments

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(105, 'Marketing');
