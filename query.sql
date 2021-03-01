-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees AS emp
INNER JOIN salaries AS sal 
ON (emp.emp_no = sal.emp_no)

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp.last_name, emp.first_name, emp.hire_date
FROM employees AS emp
WHERE emp.hire_date BETWEEN '1986-01-01' AND '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT emp.last_name, emp.first_name, dm.emp_no, dep.dept_no, dep.dept_name
FROM employees AS emp
INNER JOIN dept_manager AS dm 
ON (emp.emp_no = dm.emp_no)
INNER JOIN departments AS dep
ON (dm.dept_no = dep.dept_no)

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 	demp.emp_no, emp.first_name,emp.last_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS demp
ON (emp.emp_no = demp.emp_no)
INNER JOIN departments AS dep
ON (demp.dept_no = dep.dept_no)

-- 5. List first name, last name, and sex for employees whose first name is Hercules and last names begin with B.
SELECT 	emp.first_name, emp.last_name, emp.sex
FROM employees AS emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 	emp.first_name, emp.last_name, demp.emp_no, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS demp
ON (emp.emp_no = demp.emp_no)
JOIN departments AS dep
ON (demp.dept_no = dep.dept_no)
WHERE dep.dept_name = 'Sales'


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT demp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS demp
ON (emp.emp_no = demp.emp_no)
JOIN departments AS dep
ON (demp.dept_no = dep.dept_no)
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT emp.last_name, count(emp.last_name) AS fr_count
FROM employees AS emp
GROUP BY emp.last_name
ORDER BY fr_count DESC;
