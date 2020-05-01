CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY
	,dept_name VARCHAR(30)
	);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY
	,birth_date DATE
	,first_name VARCHAR(30)
	,last_name VARCHAR(30)
	,gender VARCHAR
	,hire_date DATE
	);

CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no)
	,dept_no VARCHAR(4) REFERENCES departments(dept_no)
	,from_date DATE
	,to_date DATE
	);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4)
	,emp_no INT
	,from_date DATE
	,to_date DATE
	);

CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no)
	,salary INT
	,from_date DATE
	,to_date DATE
	);

CREATE TABLE titles (
	emp_no INT REFERENCES employees(emp_no)
	,title VARCHAR
	,from_date DATE
	,to_date DATE
	);