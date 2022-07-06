-- LIMIT Clause (limits list of results)
-- (Include as the last clause in a SQL query)
-- Used in creating pagination and get sample batches of potentially large result sets
USE employees;


SELECT * FROM employees LIMIT 10;


# LIMIT -> Maximum  number of rows to return
# OFFSET -> Starting row to return
# LIMIT 100 OFFSET 0 -> Return first 100 rows starting from the first row
# LIMIT 100 OFFSET 100 -> Return first 100 rows starting from the 101st row
# LIMIT 100 OFFSET 200 -> Return first 100 rows starting from the 201st row
# LIMIT 100 OFFSET 300 -> Return first 100 rows starting from the 301st row
# LIMIT 100 OFFSET 400 -> Return first 100 rows starting from the 401st row
# LIMIT 100 OFFSET 500 -> Return first 100 rows starting from the 501st row
# LIMIT 100 OFFSET 600 -> Return first 100 rows starting from the 601st row
# LIMIT 100 OFFSET 700 -> Return first 100 rows starting from the 701st row
# LIMIT 100 OFFSET 800 -> Return first 100 rows starting from the 801st row
# LIMIT 100 OFFSET 900 -> Return first 100 rows starting from the 901st row
# LIMIT 100 OFFSET 1000 -> Return first 100 rows starting from the 1001st row


SELECT * FROM employees LIMIT 30 OFFSET 0;
SELECT * FROM employees LIMIT 30 OFFSET 30;
SELECT * FROM employees LIMIT 30 OFFSET 60;




SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;


SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name, last_name;
