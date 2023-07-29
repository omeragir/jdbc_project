select * from EMPLOYEES;

--1. Display full addresses from locations table in a single column
select  STREET_ADDRESS||' '|| CITY||' '||STATE_PROVINCE||' '|| POSTAL_CODE as full_adress from LOCATIONS;

--2. Display all information's of the employee who has the minimum salary in employees table
select SALARY from EMPLOYEES
order by  SALARY asc;
select * from EMPLOYEES
where SALARY=(select min(SALARY) from EMPLOYEES);

--3. Display the second minimum salary from the employees
select min(salary) from employees
where salary > ( select min(salary) from employees );

select min(salary) from employees
where salary > ( select min(salary) from employees );

--4. Display all information`s of the employee who has the second minimum salary
select * from employees
where salary = ( select min(salary) from employees
                 where salary > (select min(salary) from employees) );

select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
               where rownum<3);

--5. List all the employees who are making above the average salary;

select * from EMPLOYEES
where SALARY>(select avg(SALARY)from EMPLOYEES);

--6. List all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY<(select avg(SALARY)from EMPLOYEES);

--7. Display manager name of 'Neena'
select first_name,last_name from employees
where employee_id in ( select manager_id from employees
                       where first_name = 'Neena') ;
--8. Find the 3rd maximum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY =(select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc)
               where rownum<4);

--9. Find the 5th maximum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY =(select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc)
               where rownum<6);

--10. Find the 7th maximum salary from the employees table (do not include(duplicates)

select *
from EMPLOYEES
where SALARY =(select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc)
               where rownum<8);

--11. Find the 10th maximum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY =(select min(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY desc)
               where rownum<11);

--12. Find the 3rd minimum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
               where rownum<4);

--13. Find the 5th minimum salary from the employees table (do not include duplicates)
select *
from EMPLOYEES
where SALARY =(select max(SALARY)from(select distinct SALARY from EMPLOYEES order by SALARY asc)
               where rownum<6);