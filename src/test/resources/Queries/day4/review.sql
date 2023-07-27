select * from EMPLOYEES;

--display all information who is getting 3th lowest salary
select * from EMPLOYEES
order by SALARY asc;

select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
               where rownum<4);

--display all information who is getting 43th lowest salary

select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
               where rownum<44);