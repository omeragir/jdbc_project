select * from EMPLOYEES;

--1.display all first_name and related department_name
select * from DEPARTMENTS;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--order the list based on first name asc
select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME asc;

--2.display all first_name and department_name including the employee without department
select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E left join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from DEPARTMENTS D right join EMPLOYEES E
on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--3.Display all first name and department name including the department without employee

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E right join DEPARTMENTS D
 on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--4.How many employee we have for each department name
select  DEPARTMENT_NAME,count(*)
from EMPLOYEES E join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
group by DEPARTMENT_NAME;

--5.Display first name departments name including the department without employees
--and also employees  with out the departments
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E full join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

