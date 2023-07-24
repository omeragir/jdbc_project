select *from EMPLOYEES;

--display all employees based on salary in asc order
select *from EMPLOYEES
order by SALARY ;
--same query
select *from EMPLOYEES
order by SALARY ASC;

--display all employees based on salary in desc order
select *from EMPLOYEES
order by SALARY DESC ;

---display all the employees based on their firstname desc
select * from EMPLOYEES
order by FIRST_NAME desc ;

--display all info where employees id is less than 120 and order them based on salary desc
select * from EMPLOYEES
where EMPLOYEE_ID<120
order by SALARY desc ;

--display all employees info and order them based on firstname asc and lastname desc
select * from EMPLOYEES
order by FIRST_NAME,LAST_NAME desc ;

