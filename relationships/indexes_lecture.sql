# Lecture: Indexes
# Explain: Why do we need them?

-- Optimization! A query can be optimized to run in a fraction of the time # (500% faster or MORE!)
-- Ensure Uniqueness
-- Adding indexes allows the sql server to know that a specific record is unique and it speeds up the way it handles
-- its sorting algorithms.


CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

CREATE TABLE IF NOT EXISTS todos
(
    id         INT UNSIGNED,
    title      VARCHAR(50) NOT NULL,
    owner      VARCHAR(50),
    created_at DATETIME    NOT NULL
);


DESCRIBE todos;

SHOW INDEX from todos;

# Example: PRIMARY KEYS

# TODO: Add a primary key
# A primary key is the main key we will use for sorting this data and must be unique
ALTER TABLE todos
    MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

SHOW INDEX FROM todos;



# TODO: Drop Primary KEY
# We must drop auto_increment first

ALTER TABLE todos
    MODIFY id INT;

DESCRIBE todos;

SHOW INDEX FROM todos;

ALTER TABLE todos
    DROP PRIMARY KEY;


# TODO: Add primary key on table creations
DROP TABLE IF EXISTS todos;

CREATE TABLE todos
(
    id         INT UNSIGNED AUTO_INCREMENT,
    title      VARCHAR(50) NOT NULL,
    owner      VARCHAR(50),
    created_at DATETIME    NOT NULL,
    PRIMARY KEY (id)
);

DESCRIBE todos;

# Example: UNIQUE INDEXES
DROP TABLE IF EXISTS todos;

CREATE TABLE todos
(
    id         INT UNSIGNED AUTO_INCREMENT,
    title      VARCHAR(50) NOT NULL,
    owner      VARCHAR(50),
    created_at DATETIME    NOT NULL,
    PRIMARY KEY (id),
    UNIQUE unique_title_owner (title, owner)
);

SHOW INDEX FROM todos;


INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Milk', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Eggs', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Bread', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Cheese', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Milk', 'John', NOW());


SELECT *
FROM todos;


# TODO: Remove UNIQUE Key from the title of the todos table
ALTER TABLE todos
    DROP INDEX unique_title_owner;

SHOW INDEX FROM todos;


# TODO: INSERT a duplicate title record into the todos table
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Milk', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Milk', 'John', NOW());
INSERT INTO todos (title, owner, created_at)
VALUES ('Buy Milk', 'John', NOW());

select *
from todos;


# Explain: CONSTRAINTS
# Constraints are used to ensure that the data is valid and that it is not invalid.
# Examples:
# Must be a valid email address,
# must be a valid phone number,
# must be a valid date, etc.

-- Not Null
-- Unique
-- Primary Key (must be unique, not null)
-- Foreign Key
-- Default


# Example: FOREIGN KEYS

# TODO: Create a table of owner records with the following columns: id, name, address
CREATE TABLE IF NOT EXISTS owners
(
    id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(50) NOT NULL,
    address    VARCHAR(255),
    created_at TIMESTAMP   NOT NULL DEFAULT NOW()
);

DROP TABLE IF EXISTS todos;
# TODO: Create table todos with foreign key of owners id
CREATE TABLE IF NOT EXISTS todos
(
    id         INT UNSIGNED AUTO_INCREMENT,
    title      VARCHAR(50)  NOT NULL,
    owner_id   INT UNSIGNED NOT NULL,
    created_at DATETIME     NOT NULL DEFAULT NOW(),
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);


DESCRIBE todos;
SHOW INDEX FROM todos;

# TODO: Add new owners to the owners table
INSERT INTO owners (name, address) VALUES ('John', '123 Main St');
INSERT INTO owners (name, address) VALUES ('Jane', '456 Main St');
INSERT INTO owners (name, address) VALUES ('Joe', '789 Main St');

select * from owners;

# TODO: Add a new todo to the todos table with the owner_id of a random owner in the owners table
INSERT INTO todos (title, owner_id) VALUES ('Learn to Code', 1);
INSERT INTO todos (title, owner_id) VALUES ('Learn to Sleep', 1);

select * from todos;


