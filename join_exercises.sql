use wesley;

select dept_name, concat(e.last_name, ', ', e.first_name) as Department_manager
from departments

join dept_manager dm on departments.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no
where to_date > now();

select dept_name, concat(e.last_name, ', ', e.first_name) as Department_manager, e.gender
from departments

join dept_manager dm on departments.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no where e.gender = 'F'
and to_date > now();

select t.title, count(*)
from departments

join dept_emp de on departments.dept_no = de.dept_no
join employees e on de.emp_no = e.emp_no
join titles t on e.emp_no = t.emp_no
where dept_name = 'Customer Service'
and t.to_date > curdate()
and de.to_date > curdate()
group by title;

select dept_name, concat(e.last_name, ', ', e.first_name) as name, salary
from departments

join dept_manager dm on departments.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no
join salaries s on dm.emp_no = s.emp_no
where dm.to_date > now()
and s.to_date > now();

SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee',
       d.dept_name                              AS 'Department Name',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON d.dept_no = dm.dept_no AND dm.to_date > CURDATE()
         JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
ORDER BY d.dept_name;
