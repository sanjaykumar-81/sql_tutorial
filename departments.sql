-- DAY 9: CREATE DEPARTMENTS TABLE

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'IT', 'Bangalore'),
(2, 'HR', 'Hyderabad'),
(3, 'Finance', 'Chennai');
