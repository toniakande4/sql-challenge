
1
select  emp_no, last_name, first_name, sex, salary 
from employee natural join salary;


2
select first_name, last_name, hire_date
from employee
where date_part('year', hire_date) = 1986;


3
select dept_no, dept_name, emp_no, last_name, first_name
from employee natural join department natural join department_manager; 


4
select dept_no, dept_name, emp_no, last_name, first_name
from employee natural join department; 


5
select first_name, last_name, sex 
from employee 
where first_name = 'Hercules'
and last_name like 'B%';



6
select emp_no, last_name, first_name
from employee natural join department 
where dept_no = 'd007';


7
select emp_no, last_name, first_name, dept_name
from employee natural join department 
where dept_no = 'd007' or dept_no = 'd005';


8
SELECT last_name, COUNT(*) AS frequency
FROM employee
GROUP BY last_name
