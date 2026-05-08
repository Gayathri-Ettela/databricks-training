-- 1
select * from employees;

-- 2
select emp_name , salary from employees;

-- 3
select emp_name,department from employees;

-- 4
select emp_name 
from employees
where department = 'IT';

-- 5
select emp_name , experience from employees;

-- 6
select emp_name 
from employees
where salary >70000;

-- 7
select emp_name 
from employees
where city='Hyderabad';

-- 8
select emp_name 
from employees
where experience < 4;

-- 9
select emp_name 
from employees
where department='Finance';

-- 10
select emp_name 
from employees 
where salary=52000;

-- 11
select department, sum(salary) from employees
group by department;

-- 12
select department ,avg(salary) from employees
group by department;

select city, count(emp_id) from employees
group by city;

-- 13
select max(salary), department from employees
group by department;

-- 14
select min(experience),department
from employees
group by department;

-- 15
select count(emp_id),department
from employees
group by department
having count(emp_id) > 3;

-- 16
select avg(salary),department
from employees
group by department
having avg(salary) >60000;

-- 17
select city, count(emp_id)
from employees 
group by city
having count(emp_id) >2;

-- 18
select department,sum(salary)
from employees
group by department
having sum(salary) >200000;

-- 19
select department,max(salary)
from employees
group by department
having max(salary) >90000;

-- 20
select *
from employees
order by salary desc
limit 5;

-- 21
select * from employees
order by experience desc
limit 3;

-- 22
select salary,department from employees
where department='Finance'
order by department desc
limit 2;

-- 23
select emp_name,city from employees 
where city='Hyderabad'
order by city
limit 4;

-- 24
select * from employees
order by salary desc
limit 1;

-- 25
select distinct department from employees;

-- 26
select distinct city from
employees;

-- 27
select distinct salary from
employees;

-- 28
select distinct department, city from
employees;

-- 29
select distinct experience from
employees;

-- 30
select * from employees
where salary >= 80000;

-- 31
select * from employees
where experience <= 3;

-- 32
select * from employees
where salary <> 45000;

-- 33
select * from employees
where salary < 50000;

-- 34
select * from employees
where experience > 5;

-- 35
select emp_name from employees
where department='IT' and salary >70000;

-- 36
select * from employees
where city='Hyderbad' or city='Bangalore';

-- 37
select emp_name from employees
where department='HR' and experience <3;

-- 38
select * from employees
where salary >60000 or experience >6;

-- 39 
select * from employees
where not department='sales';

-- 40
select * from employees
where city in ('Hyderbad','Mumbai');

-- 41
select * from employees
where department in ('IT','Finance');

-- 42
select * from employees
where city in ('Chennai','Pune');

-- 43 
select * from employees
where salary in (45000, 75000, 91000);

-- 44 
select * from employees
where department not in ('HR', 'Sales');

-- 45
select * from employees
where salary BETWEEN 50000 AND 80000;

-- 46
select * from employees
where experience between 3 and 6;

-- 47
select * from employees
where emp_id between 105 and 112;

-- 48
select * from employees
where salary not between 40000 and 60000;

-- 49
select * from employees
where experience between 2 and 4;

-- 50
select emp_name from employees
where emp_name like 'R%';

-- 51
select emp_name from employees
where emp_name like '%a';

-- 52
select emp_name from employees
where emp_name like '%v%';

-- 53
select city from employees
where city like 'B%';

-- 54
select department from employees
where department like '%s';
