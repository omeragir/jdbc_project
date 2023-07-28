select  EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;


--Who is the Neena managers?
select  workers.EMPLOYEE_ID,workers.FIRST_NAME,workers.LAST_NAME,workers.MANAGER_ID,managers.EMPLOYEE_ID,managers.FIRST_NAME,managers.LAST_NAME
from  EMPLOYEES workers join EMPLOYEES managers
on workers.manager_id=managers.employee_id;

--how can i see all employees even if they dont have any manager?
select  workers.EMPLOYEE_ID,workers.FIRST_NAME,workers.LAST_NAME,workers.MANAGER_ID,managers.EMPLOYEE_ID,managers.FIRST_NAME,managers.LAST_NAME
from  EMPLOYEES workers left join EMPLOYEES managers
on workers.manager_id=managers.employee_id
order by 1 asc;