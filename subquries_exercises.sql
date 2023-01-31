USE employees;

SELECT * FROM employees AS e
WHERE e.hire_date = (
    SELECT e.hire_date FROM employees AS e WHERE e.emp_no = 101010
    );


SELECT DISTINCT title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
        )  AND to_date > NOW()
    )