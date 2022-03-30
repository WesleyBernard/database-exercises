select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

select *
from employees
where  last_name like '%E%'
order by emp_no desc ;

select *
from employees
where  last_name like '%q%';

select *
from employees
where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
  and gender = 'M';

select concat(first_name, ' ', last_name) as full_name
from employees
where  left(last_name, 1) = 'E'
  and right(last_name, 1) = 'e';

select *
from employees
where  last_name like '%q%'
  and last_name not like '%qu%';

select * from employees
where right(birth_date, 5) = '12-25';

select *, datediff(curdate(), hire_date) as days_employed from employees
where right(birth_date, 5) = '12-25'
and left(hire_date,4) between 1990 and 1999
order by hire_date desc, birth_date;