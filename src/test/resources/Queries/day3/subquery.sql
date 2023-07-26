select *
from EMPLOYEES;

--display all information who is making max salary
--max salary
select max(SALARY)
from EMPLOYEES;
--24000

--if we know max salary can we find who is getting it?
select *
from EMPLOYEES
where SALARY = 24000;

--if the Steven King changes we cant find person who is getting max salary with the query above

--dynamic result
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--Task: Give me all information who is getting min salary
select *
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

--Task: display all information who is getting second highest salary?
--find max salary
select  max(SALARY) from EMPLOYEES;--24000

--second max salary
select max(SALARY)from EMPLOYEES
where SALARY<24000;

--who is making 17000
select * from EMPLOYEES
where SALARY=17000;

--make it dynamic
select *from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES where SALARY<(select  max(SALARY) from EMPLOYEES));

--Task:display all information who is getting more than average

--avg salary
select round(avg(SALARY)) from EMPLOYEES;

select * from EMPLOYEES
where SALARY>(select avg(SALARY) from EMPLOYEES);


