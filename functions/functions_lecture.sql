# Functions  Lecture
use employees;

select * from salaries;
# Aggregate functions
# MAX() - returns the largest value in a set of values
select MAX(emp_no)  from employees;
# MIN() - returns the smallest value in a set of values
select MIN(emp_no) from  employees;
# SUM() - returns the sum of all values in a set of values
select SUM(salary) from salaries WHERE to_date = '9999-01-01';
# AVG() - returns the average value of all values in a set of values
select ROUND(AVG(salary),2) from salaries WHERE to_date = '9999-01-01';
# COUNT() - returns the number of values in a set of values


# Functions for date and time
# NOW() - returns the current date
SELECT NOW();
# DATETIME() - returns the current date and time
# DATE_ADD() - adds a specified number of days, months, or years to a date and time
# DATEDIFF() - returns the number of days, months, or years between two date and times
SELECT DATEDIFF(NOW(), NOW());
# DAY() - returns the day of the month for a date
SELECT DAY(NOW()), HOUR(NOW()), MINUTE(NOW());
# HOUR() - returns the hour for a date
# MINUTE() - returns the minute for a date


# Functions for strings
# CHAR() - returns the character at a specified position
# CONCAT() - concatenates two strings
select concat('first string + ','second string');
select concat(first_name, ' ',last_name) from employees;
# DIFFERENCE() - returns the difference between two strings
# LEFT() - returns the leftmost characters of a string
# LENGTH() - returns the length of a string
# LOWER() - returns the string in lowercase
# LTRIM() - removes whitespace from the beginning of a string
# NCHAR() - returns the number of characters in a string
# REPLACE() - replaces a part of a string with another string
# RIGHT() - returns the rightmost characters of a string
# RTRIM() - removes whitespace from the end of a string
# SUBSTR() - returns a part of a string
# TRIM() - removes whitespace from the beginning and end of a string
SELECT TRIM('    asdfasdf        asdf       ');
# INSTR() - returns the position of the first occurrence of a substring
# LEN() - returns the length of a string
# LOWER() - returns the string in lowercase
SELECT LOWER('HI!');
# UPPER() - returns the string in uppercase



# Functions for numbers
# ABS() - returns the absolute value of a number
select ABS(-10000000);
# CEILING() - returns the smallest integer not less than a number
# COS() - returns the cosine of a number
# COT() - returns the cotangent of a number
# DEGREES() - returns the specified number in degrees
# EXP() - returns e raised to the power of a number
# PI() - returns the value of pi
# POWER() - returns the result of raising a number to a power
# ROUND() - returns the rounded value of a number
# SIGN() - returns the sign of a number
# SQRT() - returns the square root of a number
# TRUNCATE() - returns the integer part of a number
# RAND() - returns a random number between 0 and 1
# ROUND() - returns the rounded value of a number
# FLOOR() - returns the largest integer not greater than a number




# Examples of functions

