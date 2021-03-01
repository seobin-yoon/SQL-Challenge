--CREATE TABLE for csv files 

--CREATE departments TABLE  
-- DROP TABLE departments;
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

--CREATE dept_emp TABLE  
-- DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

--CREATE dept_manager TABLE  
-- DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--CREATE employees TABLE  
-- DROP TABLE employees;
CREATE TABLE employees (
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_ID),
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

--CREATE salaries TABLE 
-- DROP TABLE salaries;
CREATE TABLE salaries (
    emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT NOT NULL
);

--CREATE titles TABLE
-- DROP TABLE titles;
CREATE TABLE titles (
    title_id VARCHAR NOT NULL PRIMARY KEY,
    title VARCHAR NOT NULL
);
