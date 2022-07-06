-- Aliases = used to temporarily control output for column / table names
use employees;


-- Alias column names
SELECT CONCAT('Hi!', ' You are my friend!') as greeting;

SELECT CONCAT('Teacing people to code ',
              UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
    ' seconds'
    ) as codeup_age,
    UNIX_TIMESTAMP() as timeStamp,
    UNIX_TIMESTAMP('2014-02-04') as secondTimeStamp

-- multiple aliases
-- multiple columns of data for a single aliases
SELECT CONCAT(first_name, ' ', last_name) as full_name FROM employees

-- alias as tables (useful later in joins)
SELECT * FROM employees as e;

SELECT e.emp_no FROM employees as e
