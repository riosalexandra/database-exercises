# Sub-Queries:
-- A query that is inside of another query (think inception with queries)

-- Example:
/**
  	SELECT column_a, column_b, column_c
	FROM table_a
	WHERE column_a IN (
	    SELECT column_a
	    FROM table_b
	    WHERE column_b = true
	);
 */

# Joins: often used when data is needed from two or more tables
-- returns only rows of data
-- tend to be faster than sub-queries
-- syntax can be more comple

# Sub-queries: often used when the data of one table needs to be filtered by additional tables
-- may return...
-- rows of data (another table)
-- a single row
-- a column of values
-- a single value (scaler)
-- tend to be more readable than joins
-- must be a nested SELECT (can't nest an Insert, for example)
-- sub-queries may be nested infinitely (avoid double nested queries, if possible)


# Example: Simple Exercises

# TODO: find the information for the departments where the department name is 'Customer Service'


# TODO: department manager employee number of Sales department

# TODO: concatenate the first two employee's highest salaries

    -- Can achieve same results as an inner join


# TODO: get the names of employees with the ten highest salaries


# Getting information from multiple tables

# name and hire_date of earliest-hired department employees

