select *
from EMPLOYEES;

--it limits rows based on provided number
select *
from EMPLOYEES
where rownum < 11;

--display all information from employees who is getting first 5 highest salary
--bad practice
--it is getting data before order them based on salary
--and cut the list from line 6 then it tries to order them between first 5 row
--that is why we are getting wrong list
select *
from EMPLOYEES
where rownum < 6
order by SALARY desc;

--correct answer
--using ordered by salary desc employees table as an input,after from keyword then cutting first 5 with rownum
--display all information from employees who is getting first 5 highest salary
select *
from EMPLOYEES
order by SALARY desc;

select *
from (select * from EMPLOYEES order by SALARY desc)
where rownum < 6;


--display all information who is getting 5th highest salary
select distinct SALARY
from EMPLOYEES
order by SALARY desc;

--first we need to find what is 5th highest salary
select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum < 6;

select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where rownum < 6);


--IQ:how do you find  who is making 37th highest salary
select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where rownum < 38);


--display all information who is getting 3th lowest salary
select * from EMPLOYEES
order by SALARY asc;

select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
where rownum<4);

