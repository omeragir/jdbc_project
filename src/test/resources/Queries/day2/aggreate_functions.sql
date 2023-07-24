select *
from EMPLOYEES;

/*

 aggregate functions -multi rows-group functions
 -count-->it will count rows
 -max -->it will max value
 -min-->it will min value
 sum-->it will give total value
 avg-->it will give average value

aggregate functions takes multi row and return one result
 all of them ignore null values


 */

 --display how many departments we have?
select *from DEPARTMENTS;
select count(*) from DEPARTMENTS;

--display how many locations we have?
select * from  LOCATIONS;
select count(*) from LOCATIONS;

--display how many department_id we have?
select count(DEPARTMENT_ID)from EMPLOYEES;

--Task
--how many different firstname we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

--how many employees working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

--max salary
select max(SALARY) from EMPLOYEES;

--min salary
select min(SALARY) from EMPLOYEES;

--avg
select avg(SALARY) from EMPLOYEES;


select round(avg(SALARY)) from EMPLOYEES;
select round(avg(SALARY),1) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),3) from EMPLOYEES;
select round(avg(SALARY),4) from EMPLOYEES;

--sum
select sum(SALARY)from EMPLOYEES;

