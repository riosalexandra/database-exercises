-- ORDER BY EXERCISE SOLUTIONS
use employees;


# Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.


# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
# Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;


# Update your queries for employees with 'e' in their last name to sort the results
# by their employee number. Make sure the employee numbers are in the correct order.
# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;



SELECT * FROM employees WHERE first_name IN  ('Irena', 'Vidya', 'Maya');




# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name =  'Vidya' OR first_name = 'Maya';

#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya') and gender = 'M';


#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%E' OR last_name LIKE 'E%';

#     Duplicate the previous query and update it to find all employees whose last name
#     starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%';

#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


















-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees
WHERE last_name LIKE 'E%';













-- Find all employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date LIKE '199%';


SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';










-- Find all employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE birth_date LIKE '%12-25';
















-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees
WHERE last_name LIKE '%q%';














-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';







-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';










-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';







-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';




-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25';





-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';