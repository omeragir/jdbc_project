select *from EMPLOYEES;

--1. List all the employees first and last name with their salary in employees table
select FIRST_NAME||' '||LAST_NAME||' '||SALARY as employe_table from EMPLOYEES;

--2. How many employees have salary less than 5000?
select count(*) from EMPLOYEES
where SALARY<5000;

--3. How many employees have salary between 6000 and 7000?
select count(*) from EMPLOYEES
where SALARY between 6000 and 7000;

--4. List all the different region_ids in countries table
select distinct  REGION_ID as country_table from COUNTRIES;

--5. Display the salary of the employee Grant Douglas (lastName: Grant,firstName: Douglas)
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='Douglas' and LAST_NAME='Grant' ;

--6. Display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive

select * from DEPARTMENTS
where DEPARTMENT_NAME in ('IT','Public Relations','Sales','Executive');

--7. Display the maximum salary in employees table
select max(SALARY) as Employee from EMPLOYEES;

--8. Display the the minimum salary in employees table
select min(SALARY) as Employee from EMPLOYEES;

--9. Display the average salary of the employees;
select avg(SALARY) as Employee from EMPLOYEES;

--10. Count the total numbers of the departments in departs table
select count(*) from DEPARTMENTS;

--11. Sort the start_date in ascending order in job_history's table
select HIRE_DATE from EMPLOYEES
order by HIRE_DATE asc ;

select * from job_history order by start_date;
select * from job_history order by start_date asc;

--12. Sort the start_date in descending order in job_history's table
select HIRE_DATE from EMPLOYEES
order by HIRE_DATE desc ;

select * from job_history order by start_date desc;

--13. Display all records whose last name contains 2 lowercase 'a's
select * from  EMPLOYEES
where LAST_NAME like '%a%s%';

select * from employees where last_name like '%a%a%';

--14. Display all the employees whose first name starts with ‘A'
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A%';



--15. Display all the employees whose job_ID contains ‘IT'
select * from  EMPLOYEES
where JOB_ID like '%IT%';

--16. Display all unique job_id that end with CLERK in employee table
select * from  EMPLOYEES
where JOB_ID like '%CLERK';

select distinct job_id
from employees
where job_id like '%CLERK' ;

--17.Display all employees first name starts with A and have exactly 4 characters
select * from EMPLOYEES
where FIRST_NAME like 'A___';

--18. Display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in (50,80,100);

--19. Display all employees who does not work in any one of these department id —> 90, 60, 100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in (90,60,100,130,120);

--20. divide employees into groups by using their job id
-- 1 display the maximum salaries in each groups
-- 2 display the minimum salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgets of each groups

select JOB_ID,max(SALARY),min(SALARY),avg(SALARY) , count(*)from EMPLOYEES
group by JOB_ID;

select job_id, count(*) from employees
where salary >= 5000
group by job_id;

select job_id, sum(salary) from employees group by job_id ;

--21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID ,avg(SALARY) from EMPLOYEES
where  JOB_ID in ('IT_PROG','SA_REP', 'FI_ACCOUNT', 'AD_VP')
group by JOB_ID;


select job_id, avg(salary) as "average salary"
from employees
group by job_id
having job_id IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

--22.Display max salary for each department
select DEPARTMENT_ID,max(SALARY) from EMPLOYEES
group by DEPARTMENT_ID;

--23. Display total salary for each department except department_id 50, and where
select sum(SALARY) from EMPLOYEES
where DEPARTMENT_ID not in (50);

select department_id, sum(salary) from employees
group by department_id
having sum(salary) > 30000 and department_id != 50;





