use codeup_test_db;

# Lecture: Joins
-- A join is a type of SQL query that combines two or more tables.
-- Use foreign keys to ensure that the data integrity is maintained.

#Inner Join: Only returns connected row on both tables;

#Left Join: Returns all connected rows on the left side, and all connected rows on the right, nulls will be
# inserted if the data is missing (nulls on right)

#Right Join Return all connected and unconnected rows on the right sides
# nulls on left

#FULL JOIN: Returns all connected rows and unconnected rows on both sides.


# Create Tables for the todos and the owners

DROP TABLE IF EXISTS owners;
CREATE TABLE IF NOT EXISTS owners
(
    id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(30) NOT NULL,
    address    VARCHAR(255),
    created_at TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS todos;
CREATE TABLE IF NOT EXISTS todos
(
    id          INTEGER PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(255) NOT NULL,
    description TEXT,
    owner_id    INT UNSIGNED,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owners (id)
);


# Insert data into the todos and owners tables
INSERT INTO owners (name, address)
VALUES ('John Doe', '123 Main St.');
INSERT INTO owners (name, address)
VALUES ('Jane Doe', '456 Main St.');
INSERT INTO owners (name, address)
VALUES ('Joe Doe', '789 Main St.');

select *
from owners;

INSERT INTO todos (title, description, owner_id)
VALUES ('Learn SQL', 'Learn how to write SQL queries', 1);
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn PHP', 'Learn how to write PHP code', 2);
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn MySQL', 'Learn how to write MySQL queries', 3);
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn Coding', 'Learn codee at Codeup', 4);

# Create more fake todos and add them to ID 1
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn to Cook', 'Learn how to  make food', 1);
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn to Code', 'Learn how to write code', 1);
INSERT INTO todos (title, description, owner_id)
VALUES ('Learn to Dance', 'Learn how to dance', 1);


select *
from todos;

# TODO: BASIC JOIN QUERY

select *
from owners as o
         JOIN todos t ON (o.id = t.owner_id);



#TODO: Basic Joins with aliases
# same as
Select t.*, o.*
from owners o
         INNER JOIN todos t on (o.id = t.owner_id);


-- Output string that says the name of the owner and the name of the todos

SELECT owners.name, todos.title
FROM owners
         JOIN todos ON owners.id = todos.owner_id;



SELECT owners.address, COUNT(todos.title)
FROM owners
         JOIN todos ON owners.id = todos.owner_id
GROUP BY owners.address;


-- list the average age of the the ttodos in our datasets
SELECT owners.name, AVG(todos.created_at)
FROM owners
         JOIN todos ON owners.id = todos.owner_id
GROUP BY owners.name;



-- List te number of pets at eac addresses


-- List the address with the fewest todos


-- List the address with the most todos
SELECT owners.address, COUNT(todos.id)
FROM owners
         JOIN todos ON todos.owner_id = owners.id
GROUP BY owners.address
ORDER BY COUNT(todos.id) ASC;



-- Find the average age of the todos for each address
-- list the average age of the the ttodos in our datasets
SELECT owners.name, AVG(todos.created_at)
FROM owners
         JOIN todos ON owners.id = todos.owner_id
GROUP BY owners.name;


# Practice Joins:

USE codeup_test_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

SELECT *
FROM roles;
SELECT *
FROM users;

# TODO: output user name and role for all records with a non-null user name and role name

SELECT users.name, roles.name
FROM users
         INNER JOIN roles ON roles.id = users.role_id;


# TODO: output user name and their role name for all matches and all users regardless of null roles (LEFT)

SELECT users.name, roles.name
FROM users
         LEFT JOIN roles ON roles.id = users.role_id;

# TODO: output user name and role for all non-null matches and all roles with null users (RIGHT)
SELECT users.name, roles.name
FROM users
         RIGHT JOIN roles ON roles.id = users.role_id;

use employees;
select *
from employees;
select *
from titles;


# TODO: output all current employee names and their current titles
SELECT CONCAT(e.first_name, ' ', e.last_name) as full_name,
       t.title,
       t.to_date                              as end_date
FROM employees e
         JOIN titles t ON t.emp_no = e.emp_no
WHERE t.to_date LIKE '9999%';

# or

SELECT CONCAT(e.first_name, ' ', e.last_name) as full_name,
       t.title,
       t.to_date                              as end_date
FROM employees e
         JOIN titles t ON t.emp_no = e.emp_no
WHERE t.to_date > NOW();

# using aliases


# TODO: output name and current department for employee number 10001

# name field -> employees (E) table
# dept_name -> departments (D) table
# dept_emp (DE) -> Match the emp_no on employees table and the
#               dept_no on the dept_name table


SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) as full_name, count(d.dept_name)
FROM employees e
         JOIN dept_emp de ON de.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = de.dept_no
GROUP BY e.emp_no;
WHERE e.emp_no = 10010;




SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) as full_name,
       d.dept_name
FROM employees e
         JOIN dept_emp de ON de.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = de.dept_no
WHERE e.emp_no = 10010 AND de.to_date > NOW();










