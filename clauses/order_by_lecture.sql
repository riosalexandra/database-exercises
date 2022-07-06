-- ORDER BY LECTURE
-- ORDER BY Clause (orders results by a column)

use employees;

DESCRIBE employees;


# Select all the employees and order  them by their hire dates
Select * FROM employees ORDER BY hire_date;

# Get the last employees hired first
SELECT * FROM employees ORDER BY hire_date DESC;


# Get first  female employees hired
SELECT * FROM employees WHERE gender = 'F' ORDER BY hire_date DESC;

SELECT * FROM employees ORDER BY gender DESC, hire_date;


DESCRIBE salaries;

# Get salaries and order  them  by highest to lowest.
SELECT * FROM salaries ORDER BY to_date DESC, salary DESC;
SELECT * FROM employees WHERE emp_no = 43624;
