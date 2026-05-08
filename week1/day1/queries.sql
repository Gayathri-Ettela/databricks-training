-- BASIC QUERIES

-- 1
SELECT * FROM employee;

-- 2
SELECT name, salary FROM employee;

-- 3
SELECT * FROM employee WHERE age > 30;

-- 4
SELECT name FROM department;

-- 5
SELECT * FROM employee WHERE department_id = 1;

-- STRING QUERIES

-- 6
SELECT * FROM employee WHERE name LIKE 'J%';

-- 7
SELECT * FROM employee WHERE name LIKE '%e';

-- 8
SELECT * FROM employee WHERE name LIKE '%a%';

-- 9
SELECT * FROM employee WHERE LENGTH(name) = 9;

-- 10
SELECT * FROM employee WHERE name LIKE '_o%';

-- DATE QUERIES

-- 11
SELECT * FROM employee WHERE YEAR(hire_date) = 2020;

-- 12
SELECT * FROM employee WHERE MONTH(hire_date) = 1;

-- 13
SELECT * FROM employee WHERE YEAR(hire_date) < 2019;

-- 14
SELECT * FROM employee WHERE hire_date >= '2021-03-31';

-- 15
SELECT * FROM employee WHERE YEAR(hire_date) >= YEAR(CURDATE()) -2;

-- AGGREGATE

-- 16
SELECT SUM(salary) FROM employee;

-- 17
SELECT MIN(salary) FROM employee;

-- 18
SELECT AVG(salary) FROM employee;

-- 19
SELECT COUNT(department_id) FROM employee;

-- 20
SELECT department_id,AVG(salary) FROM employee
GROUP BY department_id;

-- 21
SELECT department_id,SUM(salary) FROM employee
GROUP BY department_id;

-- 22
SELECT department_id,AVG(age) FROM employee
GROUP BY department_id;

-- 23
SELECT COUNT(emp_id) FROM employee 
WHERE hire_date <= CURDATE();

-- 24
SELECT MAX(salary) FROM employee;

-- 25
SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- 26
SELECT department_id,
       COUNT(emp_id) AS emp_count
FROM employee
GROUP BY department_id
HAVING COUNT(emp_id) > 2;
-- 
SELECT department_id,
       COUNT(emp_id) AS emp_count
FROM employee
GROUP BY department_id;

-- 27
SELECT department_id,
AVG(salary) as avg_salary
from employee
group by department_id
having AVG(salary) > 55000;

-- 28
select YEAR(hire_date), count(emp_id) as emp_count
from employee
group by YEAR(hire_date)
having count(emp_id) > 1;

-- 29
select department_id,SUM(salary) as total
from employee
group by department_id
having sum(salary) < 100000;

-- 30
select department_id,SUM(salary)
from employee
group by department_id
having sum(salary) > 75000;

-- 31
select * from employee
order by salary;

-- 32
select * from employee
order by age desc;

-- 33
select * from employee
order by hire_date asc;

-- 34
select * from employee
order by department_id,salary;

-- 35
select department_id,sum(salary) as total
from employee
group by department_id
order by sum(salary);
