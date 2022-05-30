SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO
	retirement_titles
FROM
	employees
LEFT JOIN
	titles
ON
	employees.emp_no = titles.emp_no
WHERE
	employees.birth_date BETWEEN '1952-1-1' AND '1955-12-31'
ORDER BY
	employees.emp_no;
	
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
	emp_no,
	first_name,
	last_name,
	title
INTO
	unique_titles
FROM
	retirement_titles
WHERE
	to_date = '9999-1-1'
ORDER BY
	emp_no, to_date DESC;
	
SELECT
	COUNT(title),
	title
INTO
	retiring_titles
FROM
	unique_titles
GROUP BY
	title
ORDER BY
	COUNT DESC;
	
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.birth_date,
	dept_emp.from_date,
	dept_emp.to_date,
	titles.title
INTO
	mentorship_eligibility
FROM
	employees
LEFT JOIN
	dept_emp
ON
	employees.emp_no = dept_emp.emp_no
LEFT JOIN
	titles
ON
	employees.emp_no = titles.emp_no
WHERE
	dept_emp.to_date = '9999-1-1' AND
	employees.birth_date BETWEEN '1965-1-1' AND '1965-12-31'
ORDER BY
	employees.emp_no, titles.from_date;
