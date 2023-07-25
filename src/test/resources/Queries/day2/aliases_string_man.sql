--display departments where their average salary is more than 6k
--the query below second column name is "round(avg(salary))" which is not nice
/*
 1. column aliases --> it is temporary name to show in display
 2. table aliases which we will learn later
 Employees -->E
 */

select DEPARTMENT_ID, round(avg(SALARY)) as "Average salary" from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having avg(SALARY)>6000
order by 2;

select DEPARTMENT_ID, round(avg(SALARY)) as Average_salary from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having avg(SALARY)>6000
order by 2;

--manager is asking display annual salary for all employees as annual_salary
select FIRST_NAME,SALARY*12 as "annual_salary"
from EMPLOYEES;

--Note--> we are just displaying and nothing will change it DB
-----------------------String Manipulation------------------------
/*
 CONCAT
 --Java --> fist_name+" "+last_name
 --SQL  --> first_name||' '||last_name
 */
select FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

--add @cydeo.com to all the emails in the employees table
select EMAIL ||'@cydeo.com'from EMPLOYEES;

select concat(EMAIL,'@cydeo.com') from  EMPLOYEES;

--lowercase
select lower(EMAIL ||'@cydeo.com')from EMPLOYEES;

--uppercase
select upper(EMAIL ||'@cydeo.com')from EMPLOYEES;

--INITCAP
--it makes first latter uppercase
select initcap(EMAIL ||'@cydeo.com')from EMPLOYEES;

--length
select EMAIL,length((EMAIL||'@cydeo.com')) as email_length from EMPLOYEES;

--display all employees where first_name length equals 6
select FIRST_NAME from EMPLOYEES
where length(FIRST_NAME)=6;

--another solution
select count(*) from EMPLOYEES
where FIRST_NAME like '______';

--display initial from firstname and lastname -->S.K.
--SUBSTR (columnName,beginningIndex,numberOfChar)
select * from  EMPLOYEES;
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials from EMPLOYEES;

select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-2,2) from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3) from EMPLOYEES;

/*
 -if beginning index is 0,it is treated as 1
 -if the beginning index negative,it will start from backwards
 -if we dont specify number of char it will work till the end
 */


