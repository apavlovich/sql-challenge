--1. list employee number, last name, first name, sex, and salary
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex,
Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Employees.emp_no = Salaries.emp_no;

--2. List first name, last name, and hire date for emplyees hired in 1986
SELECT emp_no, first_name, last_name, hire_date from Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';

--3. List the manager of each department: dept number,
--dept name, manager's emp number, last name, first name
SELECT Department_Manager.dept_no, 
	   Departments.dept_name,
	   Department_Manager.emp_no,
	   Employees.last_name,
	   Employees.first_name
FROM Department_Manager
INNER JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON
Department_Manager.emp_no = Employees.emp_no;

--4. list the dept of each employee: emp number, last name
--first name, and dept name
SELECT Employees.emp_no, 
	   Employees.last_name, 
	   Employees.first_name,
	   Departments.dept_name
FROM Employees
INNER JOIN Department_Employees ON
Employees.emp_no = Department_Employees.emp_no
INNER JOIN Departments ON
Department_Employees.dept_no = Departments.dept_no;

--5. list first name, last name, sex for employees whose 
--first name is 'Hercules' and last name begins with 'B'
SELECT first_name,
		last_name,
		sex
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. list all employees in the sales department:
--employee number, last name, first name, dept name
SELECT	Employees.emp_no,
		Employees.first_name,
		Employees.last_name,
		Departments.dept_name
FROM Employees
INNER JOIN Department_Employees ON
Employees.emp_no = Department_Employees.emp_no
INNER JOIN Departments ON
Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

--7. list all employees in sales and dev depts:
--emp number, last name, first name, dept name
SELECT	Employees.emp_no,
		Employees.first_name,
		Employees.last_name,
		Departments.dept_name
FROM Employees
INNER JOIN Department_Employees ON
Employees.emp_no = Department_Employees.emp_no
INNER JOIN Departments ON
Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' OR
	dept_name = 'Development';
	
--8. in desc order, list frequency count of emp last names
-- how many emps share each last name?
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;
