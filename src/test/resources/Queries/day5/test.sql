select *
from EMPLOYEES;

--------------- SELECT ,WHERE, LIKE -------------------

--TASK 1 - display department names  from departments table

select DEPARTMENT_NAME
from DEPARTMENTS;

--TASK 2 - display first_name, last_name, department_id, salary from employees

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY
from EMPLOYEES;

--TASK 3 - display first_name, last_name, department_id, salary from employees whose salary is higher than 9000
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY
from EMPLOYEES
where SALARY > 9000;

--TASK 4 - display first_name, last_name, department_id, salary from employees
--         whose salary equals or more than 9000 and salary equals or less than 15000
--         sort result based on salary asc

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY
from EMPLOYEES
where SALARY >= 9000
  and SALARY <= 15000
order by SALARY asc;

--TASK 5 -  display first_name, last_name, department_id, salary from employees
--          whose firstname is Peter and salary is bigger than 5000
--          sort result based on salary desc

select FIRST_NAME, LAST_NAME, DEPARTMENT_ID, SALARY
from EMPLOYEES
where FIRST_NAME = 'Peter'
  and SALARY > 5000
order by SALARY desc;

--TASK 6 - display country_id, country_name from countries table for region id 2 or 4
--         sort result based on region_id desc and country_name asc

select COUNTRY_ID, COUNTRY_NAME
from COUNTRIES
where REGION_ID in (2, 4)
order by REGION_ID desc, COUNTRY_NAME asc;

--TASK 7 -  display employee firstname and lastname as full name , salary as annual salary  , job_id
--          whose job ID starts with S
select FIRST_NAME || ' ' || LAST_NAME as fullname, SALARY * 12 as "annual salary", JOB_ID
from EMPLOYEES
where JOB_ID like 'S%';

-- whose job ID starts with S AND TOTAL 6 LETTER

select FIRST_NAME || ' ' || LAST_NAME as fullname, SALARY as "annual salary", JOB_ID
from EMPLOYEES
where JOB_ID like 'S_____';

-- TASK 8 - display country id and country name where country name ends with a
select COUNTRY_ID, COUNTRY_NAME
from COUNTRIES
where COUNTRY_NAME like '%a';

-- TASK 9 -  display country id and country name where country name ends with a and third letter is i
select COUNTRY_ID, COUNTRY_NAME
from COUNTRIES
where COUNTRY_NAME like '__i%a';


------ INTERVIEW QUESTION  -->
/*
    Write a query to print first_name and salary for all employees in the Employee table
    who earn a salary larger than 3000
    Sort your results in ascending order of the last 3 characters in the employees first_name
    if two or more employees have first_names ending with same 3 characters, then sort them by highest salary
*/
select FIRST_NAME, SALARY, substr(FIRST_NAME, -3)
from EMPLOYEES
where SALARY > 3000
order by lower(substr(FIRST_NAME, -3)) asc, SALARY desc;

--I.Q: get me employees where employees  IDs  are even number
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME
from EMPLOYEES
where mod(EMPLOYEE_ID, 2) = 0;



--------------- GROUP BY, HAVING  -------------------

-- TASK 10- 1 -  how many city we have in each country from locations table
SELECT *
FROM LOCATIONS;

SELECT COUNTRY_ID, COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID;


SELECT COUNTRY_ID, COUNT(CITY)
FROM LOCATIONS
GROUP BY COUNTRY_ID;


-- COUNT(*) VS COUNT(COLUMN NAME)
SELECT FIRST_NAME, DEPARTMENT_ID
FROM EMPLOYEES;

SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;
-- IT WILL IGNORE NULL VALUES --106

SELECT COUNT(*)
FROM EMPLOYEES;

-- TASK 10- 2  - order them based on city count in desc
SELECT COUNTRY_ID, COUNT(*) AS CITY_COUNT
FROM LOCATIONS
GROUP BY COUNTRY_ID
ORDER BY CITY_COUNT DESC;

-- TASK 10- 3 -  filter result where country id starts with C
SELECT COUNTRY_ID, CITY
FROM LOCATIONS;
-- WHERE
SELECT COUNTRY_ID, COUNT(*) AS CITY_COUNT
FROM LOCATIONS
WHERE COUNTRY_ID LIKE 'C%'
GROUP BY COUNTRY_ID
ORDER BY CITY_COUNT DESC;

-- HAVING - BAD PRACTICE
SELECT COUNTRY_ID, COUNT(*) AS CITY_COUNT
FROM LOCATIONS
GROUP BY COUNTRY_ID
HAVING COUNTRY_ID LIKE 'C%'
ORDER BY CITY_COUNT DESC;


-- TASK 10- 4 -  display country id if city count is bigger than 1
SELECT COUNTRY_ID, COUNT(*) AS CITY_COUNT
FROM LOCATIONS
GROUP BY COUNTRY_ID
having COUNT(*) > 1
ORDER BY CITY_COUNT DESC;


-- TASK 11 -1  How many employees is working for each department

select DEPARTMENT_ID, count(*) as Employees_Count
from EMPLOYEES
group by DEPARTMENT_ID;

-- TASK 11 -2  ignore null departments
select DEPARTMENT_ID, count(*) as Employees_Count
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

-- TASK 11 -3  display department id where employees count is less than 5
select DEPARTMENT_ID, count(*) as Employees_Count
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) < 5;

------- SUBQUERY -------

-- TASK 12 - Display those employees firstname,lastname and salary
--           who get higher salary than the employee whose employee_id is 104

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where EMPLOYEE_ID = 104;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY > (select SALARY
                from EMPLOYEES
                where EMPLOYEE_ID = 104);

-- TASK 13 -  Display Manager firstname,lastname of Peter,Vargas from employees table

select MANAGER_ID, FIRST_NAME, LAST_NAME
from EMPLOYEES
where FIRST_NAME = 'Peter'
  and LAST_NAME = 'Vargas';

select *
from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID
                     from EMPLOYEES
                     where FIRST_NAME = 'Peter'
                       and LAST_NAME = 'Vargas');

-- TASK 14 -  display all information who is getting 11th highest salary

select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where rownum < 12);

-- TASK 15 - Display employees first_name,last_name who is working in Marketing department
select *
from DEPARTMENTS
where DEPARTMENT_ID = 20;

select DEPARTMENT_ID
from DEPARTMENTS
where DEPARTMENT_ID = 20;

select FIRST_NAME, LAST_NAME
from EMPLOYEES
where DEPARTMENT_ID = (select DEPARTMENT_ID
                       from DEPARTMENTS
                       where DEPARTMENT_ID = 20);


--- DDL / DML ---

-- DQL --> DATA QUERY LANGUAGE  --> SELECT
-- DML --> DATA MANIPULATION LANGUAGE
-- DDL --> DATA DEFINITION LANGUAGE


----- JOINS ----

-- INNER JOIN RETURN ONLY THE DATA THAT MATCH FROM BOTH TABLE ACCORDING TO CONDITION
-- Display all first_name and  related department_name

select *
from EMPLOYEES;
select *
from DEPARTMENTS;

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
         inner join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

-- LEFT OUTER JOIN RETURN EVERYTHING THAT MATCH + UNIQUE FOR LEFT
-- Display all first_name and department_name including the  employee without department

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
         left join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--display employees who is working for department that start with S
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
         left join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
where DEPARTMENT_NAME like 'S%';

-- RIGHT OUTER JOIN RETURN EVERYTHING THAT MATCH + UNIQUE FOR RIGHT
-- Display all first_name and department_name including the department without employee

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
         right join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

-- FULL OUTER JOIN RETURNS EVERYTHING
-- Display all firstname and department name including the department without employees
-- and also employees without the department

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES
         full join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;



----- SELF JOIN ---
-- Display all managers and their managers information
SELECT WORKERS.EMPLOYEE_ID,
       WORKERS.FIRST_NAME,
       WORKERS.LAST_NAME,
       WORKERS.MANAGER_ID,
       MANAGERS.FIRST_NAME,
       MANAGERS.LAST_NAME,
       MANAGERS.EMPLOYEE_ID
FROM EMPLOYEES WORKERS
         JOIN EMPLOYEES MANAGERS
              ON WORKERS.MANAGER_ID = MANAGERS.EMPLOYEE_ID;


-- Given the Employee table, write a SQL query that finds out employees who earn more than their managers.

SELECT WORKERS.EMPLOYEE_ID,
       WORKERS.FIRST_NAME,
       WORKERS.LAST_NAME,
       WORKERS.MANAGER_ID,
       WORKERS.SALARY,
       MANAGERS.SALARY,
       MANAGERS.FIRST_NAME,
       MANAGERS.LAST_NAME,
       MANAGERS.EMPLOYEE_ID
FROM EMPLOYEES WORKERS
         JOIN EMPLOYEES MANAGERS
              ON WORKERS.MANAGER_ID = MANAGERS.EMPLOYEE_ID
WHERE WORKERS.SALARY > MANAGERS.SALARY;