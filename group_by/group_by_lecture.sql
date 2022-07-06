USE employees;

#Group by Lecture


# group by a single  column
select gender from employees;

SELECT DISTINCT gender from employees;



# Group by multiple columns
SELECT gender, first_name, count(first_name) from employees GROUP BY gender, first_name;

# Find the total number of employees
SELECT COUNT(emp_no) FROM employees;

SELECT DISTINCT first_name, COUNT(first_name) FROM employees GROUP BY first_name;

# find the numbe of employees that are male and that are female.
SELECT gender, COUNT(*) FROM employees
GROUP BY gender;

# Find the most common names



SELECT DISTINCT first_name from employees ORDER BY first_name;

# Find the most common  female and most common male names.
SELECT first_name, last_name, gender, count(*) FROM employees
GROUP BY first_name, last_name, gender
ORDER BY count(*) desc;

### Aggregate functions

# Find the total number of female and male emp.
SELECT gender, COUNT(*) FROM employees
GROUP BY gender;


# Select first and last hire date  for each first name.
SELECT first_name, MIN(hire_date), MAX(hire_date)
from employees GROUP BY first_name, last_name


# Fine the min, max, avg, and total number of salaries for each

SELECT emp_no, MIN(salary), max(salary), avg(salary), count(salary)
from salaries
GROUP BY emp_no
ORDER BY MIN(salary)

