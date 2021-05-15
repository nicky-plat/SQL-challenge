-- Create table for employee data
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(225) NOT NULL,
	last_name VARCHAR(225) NOT NULL,
	gender VARCHAR(225) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no,emp_title_id)
);

SELECT * FROM employees;

-- Create table for department data
DROP TABLE departments;

CREATE TABLE departments (
	dept_no CHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Create table for department manager data
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM dept_manager;

-- Create table for department/employee data
DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no CHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

-- Create table for title data
DROP TABLE titles;

CREATE TABLE titles (
	emp_title_id VARCHAR(50) NOT NULL,
	title_name CHAR(225) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES employees (emp_title_id),
	PRIMARY KEY (emp_title_id)
);

SELECT * FROM titles;

-- Create table for salary data
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary_num INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

SELECT * FROM salaries;

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM titles;
SELECT * FROM salaries;
