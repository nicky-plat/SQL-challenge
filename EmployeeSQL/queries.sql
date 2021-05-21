--List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT
e.emp_no,
e.last_name,
e.first_name,
e.gender,
s.salary_num
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986

SELECT
first_name,
last_name,
hire_date
FROM employees
WHERE extract(year from hire_date) = '1986';


--List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name.

SELECT
m.dept_no,
dept_name,
m.emp_no,
last_name,
first_name
FROM dept_manager m
LEFT JOIN departments on m.dept_no = departments.dept_no
LEFT JOIN employees on m.emp_no = employees.emp_no;


--List the department of each employee with the following information: employee number, last name, first name, 
--and department name

SELECT
e.emp_no,
last_name,
first_name,
dept_name
FROM employees e
LEFT JOIN dept_emp d
ON e.emp_no = d.emp_no
LEFT JOIN departments
ON d.dept_no = departments.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"

SELECT * FROM employees
WHERE(first_name LIKE 'Hercules' AND last_name LIKE '%B%');


--List all employees in the Sales department, including their employee number, last name, first name,
--and department name

SELECT
e.emp_no,
last_name,
first_name,
dept_name
FROM employees e
LEFT JOIN dept_emp d
ON e.emp_no = d.emp_no
LEFT JOIN departments
ON d.dept_no = departments.dept_no
WHERE departments.dept_name LIKE 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name,
--first name, and department name

SELECT
e.emp_no,
last_name,
first_name,
dept_name
FROM employees e
LEFT JOIN dept_emp d
ON e.emp_no = d.emp_no
LEFT JOIN departments
ON d.dept_no = departments.dept_no
WHERE departments.dept_name LIKE 'Sales'
OR departments.dept_name LIKE 'Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT
last_name,
COUNT(last_name) AS "name_count"
FROM employees
GROUP BY
last_name
ORDER BY name_count DESC;

