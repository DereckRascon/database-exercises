USE employees;


SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

# Another way to solve the problem above
# SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%';

# Another way to solve the problem above
# SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY hire_date DESC;

# Another way to solve the problem above
# SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25 ORDER BY hire_date DESC;


SELECT CONCAT(first_name,' ', last_name), DATEDIFF(CURDATE(),hire_date) FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%' ORDER BY hire_date DESC;

