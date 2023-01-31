USE employees;
# DROP DATABASE join_test_db;
# CREATE DATABASE join_test_db;
# USE join_test_db;
#
#
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('bob', 'bob@example.com', 1),
#                                              ('joe', 'joe@example.com', 2),
#                                              ('sally', 'sally@example.com', 3),
#                                              ('adam', 'adam@example.com', 3),
#                                              ('jane', 'jane@example.com', null),
#                                              ('mike', 'mike@example.com', null);
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('adam', 'adam@example.com', 2),
#                                              ('mary', 'mary@example.com', 2),
#                                              ('lou', 'lou@example.com', 2),
#                                              ('karen', 'karen@example.com', null);
#
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
# LEFT JOIN roles on users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
# RIGHT JOIN roles on users.role_id = roles.id;
#
#
# SELECT roles.name, COUNT(*)
# FROM roles
# RIGHT JOIN users ON roles.id = users.role_id
# GROUP BY name;

# SELECT * FROM dept_manager;

SELECT d.dept_name AS Department,
CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date > NOW()
ORDER BY d.dept_name;


SELECT d.dept_name AS Department,
       CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON dm.dept_no = d.dept_no
WHERE e.gender = 'F' AND dm.to_date > NOW()
ORDER BY d.dept_name;


SELECT title, COUNT(*) AS Total
FROM employees JOIN titles ON employees.emp_no = titles.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
WHERE dept_no = 'd009' AND titles.to_date > NOW() AND dept_emp.to_date > NOW()
GROUP BY title
ORDER BY title;

SELECT dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salary AS 'Salary'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY dept_name;




# Need to fix the below code//

# SELECT * FROM dept_manager;
#
# SELECT CONCAT(e.first_name, ' ', e.last_name) as 'Employee', d.dept_name as 'Department',
#        CONCAT(e.first_name, ' ', e.last_name) AS 'Manager'
# FROM employees AS e
# JOIN dept_emp AS de ON e.emp_no = de.emp_no
# JOIN departments as d ON de.dept_no = d.dept_no
# JOIN dept_manager AS dm on d.dept_no = dm.dept_no
# WHERE dm.to_date > NOW()
# ORDER BY 'Manager';