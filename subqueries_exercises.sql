use wesley;

select last_name, first_name
from employees
where hire_date in (select hire_date from employees where emp_no = 101010);

select title
from titles
where emp_no in (select emp_no from employees where first_name = 'Aamod')
group by title;

select first_name, last_name
from employees
where emp_no in (select emp_no from dept_manager where to_date > now())
and gender = 'F';