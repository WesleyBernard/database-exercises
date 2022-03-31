use wesley;

select distinct title
from titles;

select *
from employees
where  left(last_name, 1) = 'E'
  and right(last_name, 1) = 'e'
group by last_name;

select *
from employees
where  left(last_name, 1) = 'E'
  and right(last_name, 1) = 'e'
group by last_name, first_name;

select count(*), last_name
from employees
where  last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

select count(*), gender
from employees
where (first_name = 'Irena'
    or first_name = 'Vidya'
    or first_name = 'Maya')
group by gender;