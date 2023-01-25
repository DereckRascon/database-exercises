USE employees;

# order by first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# order by first name and last name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

# order by last name and first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

# order by employee number
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC, last_name DESC;

