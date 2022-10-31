--Deliverable 1

SELECT emp.emp_no, emp.first_name, emp.last_name, tle.title, tle.from_date, tle.to_date, emp.birth_date
INTO retirement_infos
FROM employees as emp
Inner Join titles as tle
On (emp.emp_no = tle.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by emp.emp_no;

Select *
From retirement_infos;



SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_infos
Where to_date = '9999-01-01'
ORDER BY emp_no ASC,
to_date desc;

Select *
From unique_titles

SELECT COUNT(u_t.emp_no),
u_t.title
INTO retiring_titles
FROM unique_titles as u_t
GROUP BY title 
ORDER BY COUNT(title) DESC;

Select *
From retiring_titles

--Deliverable 2
SELECT DISTINCT ON(emp.emp_no) emp.emp_no, 
    emp.first_name, 
    emp.last_name, 
    emp.birth_date,
    dep.from_date,
    dep.to_date,
    tle.title
INTO mentorship_eligibilty
FROM employees as emp
Join dept_emp as dep
ON (emp.emp_no = dep.emp_no)
Join titles as tle
ON (emp.emp_no = tle.emp_no)
WHERE (dep.to_date = '9999-01-01') AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no asc;

Select *
From mentorship_eligibilty

-- Extra Queries for Analysis

SELECT emp.emp_no, emp.first_name, emp.last_name, emp.birth_date, sal.salary
--INTO retirement_infos
FROM employees as emp
Inner Join salary as sal
On (emp.emp_no = sal.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by emp.emp_no;

SELECT COUNT(sal.emp_no),
sal.salary
FROM salary as sal
GROUP BY salary
ORDER BY COUNT(salary) DESC;



