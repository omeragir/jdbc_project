--your manager is asking all jobs and their average salary.

select distinct JOB_ID from EMPLOYEES;

--get me average salary it_prog
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--get me average salary ac_account
select avg(SALARY) from EMPLOYEES
where JOB_ID='AC_ACCOUNT';

select JOB_ID,avg(SALARY),count(*),sum(SALARY),min(SALARY),max(SALARY)
from EMPLOYEES
group by JOB_ID;

--display how many departments we have in each locations
select * from DEPARTMENTS;

select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID;

--order result based on number of departments in desc
select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID
order by  count(*) desc;

select LOCATION_ID,count(*) from DEPARTMENTS
group by LOCATION_ID
order by  1 desc;

--display how many countries we have in each regions
select * from COUNTRIES;

select REGION_ID,count(*)from COUNTRIES
group by REGION_ID;

--order them based on number of countries in desc
select REGION_ID,count(*)from COUNTRIES
group by REGION_ID
order by count(*) asc ;

select REGION_ID,count(*)from COUNTRIES
group by REGION_ID
order by 2 desc ;

--get me  total salary for each department from employees table.
select DEPARTMENT_ID,sum(SALARY),count(*) from EMPLOYEES
group by DEPARTMENT_ID;

select DEPARTMENT_ID,sum(SALARY),count(*) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;


--display job_id where their avg salary more than 5k
select * from JOBS;
select JOB_ID,avg(salary)from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;

--display departments where their average salary is more than 6k
select DEPARTMENT_ID, round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having avg(SALARY)>6000
order by 2;

--display duplicate(more than one) firstname from employees

select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by FIRST_NAME;

--display department id where employees count is bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by DEPARTMENT_ID;