/*
--Percent % -->for matching any sequence of characters.(0 or more)
--underscore _ --> for matching any single character
-startswith
-endswith
-contains
 */

 --display all employees where firstname startswith B
select * from  EMPLOYEES
where FIRST_NAME like 'B%';

--display all employees where firstname startswith B and length of it 5 letter
select *
from EMPLOYEES
where FIRST_NAME like 'B____';

--display 5 letter firstname from employees where middle char is z
select *
from EMPLOYEES
where FIRST_NAME like '__z__';

--display firstname endswith 'e'
select *from EMPLOYEES
where FIRST_NAME like '%e';

--display all employees where job_id contains IT
select * from  EMPLOYEES
where JOB_ID like '%IT%';

--display all info from employees where firstname startswith 'H' and endswith 'l'
select * from EMPLOYEES
where FIRST_NAME like 'H%l';