-- create new database
CREATE DATABASE company; 

-- create structue table employees
CREATE TABLE employees (
    id serial PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    department VARCHAR NOT NULL
);

-- insert data into table employees
INSERT INTO employees 
    (first_name, last_name, email, departement) 
VALUES 
    ('Alice', 'Johnson', 'alice.johson@gmail.com', 'Engineering'),
    ('Bob', 'Smith', 'bob.smith@gmail.com', 'Marketing'),
    ('Cathrine', 'William', 'cathrine.willims@gmail.com', 'Finance'),
    ('Daniel', 'Brown', 'daniel.brown@email.com', 'Engineering'),
    ('Emily', 'Davis', 'emily.davis@email.com', 'HR') ; 

-- fetch all employees belonging to the "Engineering" department
SELECT * FROM employees 
WHERE departement = 'Engineering';

-- update the email of an employee whose id is 5
UPDATE employees
SET email = 'update.email@gmail.com'
WHERE id = 5 ;

-- delete an employee record whose id is 3
DELETE FROM employees 
WHERE id = 3;