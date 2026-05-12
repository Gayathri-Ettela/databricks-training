-- 36
SELECT e.name AS employee_name, d.name AS department_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id;

-- 37
SELECT p.name AS project_name, d.name AS department_name
FROM project p
INNER JOIN department d
ON p.project_id = d.department_id;

-- 38
SELECT e.name AS employee_name, p.name AS project_name
FROM employee e
INNER JOIN project p
ON e.department_id = p.project_id;

-- 39
SELECT e.name AS employee_name, d.name AS department_name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id;

-- 40
SELECT e.name AS employee_name, d.name AS department_name
FROM department d
LEFT JOIN employee e
ON e.department_id = d.department_id;

-- 41
SELECT e.name AS employee_name, p.name AS project_name
FROM employee e
INNER JOIN project p
ON e.department_id = p.project_id
where e.emp_id=null;

-- 42
select d.name as department_name,count(project_id)
from department d
left join project p on d.department_id=p.project_id
group by d.name,d.department_id;

-- 43
select d.name as department_name,e.name as employee_name
from department d
left join employee e on d.department_id=e.department_id
where e.department_id=null;

-- 44
SELECT e.name
FROM employee e
WHERE e.department_id = (
    SELECT department_id
    FROM employee
    WHERE name = 'John Doe'
);

-- 45
select d.name as department_name,avg(e.salary) as aevarage_salary
from department d
left join employee e on e.department_id=d.department_id
group by d.name,d.department_id;

-- 46
select max(salary) from employee;

-- 47
SELECT AVG(salary) AS average_salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- 48
SELECT MAX(salary) AS second_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);

-- 49
SELECT d.name AS department_name,
       COUNT(e.emp_id) AS employee_count
FROM department d
INNER JOIN employee e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.name
ORDER BY employee_count DESC
LIMIT 1;

-- 50
select name,salary,employee.department_id
from employee
where salary > (
  select avg(salary) from employee 
  WHERE department_id = employee.department_id
);
  
 -- 51
 SELECT salary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employee
) t
WHERE rnk = 3;

-- 52
select name, age from employee
where age >(
  select max(age) from employee
  where department_id= (
    select department_id from department
    where name='HR')
  );
  
  -- 53
  SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- 54
SELECT *
FROM employee
WHERE department_id IN
(
    SELECT department_id
    FROM project
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);

-- 55
SELECT *
FROM employee
WHERE hire_date =
(
    SELECT hire_date
    FROM employee
    WHERE name = 'Jane Smith'
);




-- 56
SELECT SUM(salary) AS total_salary
FROM employee
WHERE extract(YEAR from hire_date) = 2020;

-- 57 
SELECT department_id,
       AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
ORDER BY avg_salary DESC;

-- 58
select department_id,avg(salary),count(name) from employee
group by department_id
having avg(salary) >55000 and count(name) >1;

-- 59
SELECT *
FROM employee
WHERE hire_date >= CURRENT_DATE - INTERVAL '2 years'
ORDER BY hire_date;

-- 60
select department_id, avg(salary) ,count(*) from employee
group by department_id
having count(*) >2;

-- 61
select name, salary from employee
where salary >(
  select avg(salary) from employee);
  
-- 62
  select name from employee
  where hire_date =(
    select min(hire_date) from employee);
    
-- 63
 SELECT d.name AS department_name,
       COUNT(p.project_id) AS total_projects
FROM department d
LEFT JOIN project p
ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects DESC;

-- 64
select max(salary), department_id from employee
group by department_id;

-- 65
select name,salary,age from employee
where age >(
  select avg(age) from employee);
