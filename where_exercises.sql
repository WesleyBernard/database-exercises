select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select *
from employees
where  left(last_name, 1) = 'E';

select *
from employees
where  last_name like '%q%';