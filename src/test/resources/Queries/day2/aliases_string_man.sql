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