
--question #1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no

--question #2

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN to_date('1996-01-01','YYYY-MM-DD') AND to_date('1996-12-31','YYYY-MM-DD')

-- question #3 

SELECT D.dept_no, D.dept_name, DM.emp_no, E.first_name, E.last_name
FROM departments D
INNER JOIN department_manager DM ON D.dept_no = DM.dept_no
INNER JOIN employees E ON E.emp_no = DM.emp_no


--question #4

SELECT employees.emp_no, employees.last_name, employees.first_name, department_employees.dept_no
FROM employees
INNER JOIN department_employees on employees.emp_no = department_employees.emp_no

--question #5

SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--question #6


SELECT E.last_name, E.first_name, E.emp_no, D.dept_name
FROM departments D
INNER JOIN department_employees DE ON D.dept_no = DE.dept_no
INNER JOIN employees E ON E.emp_no = DE.emp_no
WHERE D.dept_name = 'Sales'


--question #7

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON employees.emp_no = department_employees.emp_no
INNER JOIN 	departments ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'


--question #8

SELECT last_name, COUNT (last_name) AS "count_of_last_name"
FROM employees
GROUP BY last_name
ORDER BY count_of_last_name DESC

























