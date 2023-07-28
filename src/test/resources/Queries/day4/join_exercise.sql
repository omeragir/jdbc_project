select * from EMPLOYEES;

--1.display all first_name and related department_name
select * from DEPARTMENTS;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--order the list based on first name asc
select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME asc;

--2.display all first_name and department_name including the employee without department
select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E left join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select FIRST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME
from DEPARTMENTS D right join EMPLOYEES E
on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--3.Display all first name and department name including the department without employee

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E right join DEPARTMENTS D
 on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--4.How many employee we have for each department name
select  DEPARTMENT_NAME,count(*)
from EMPLOYEES E join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
group by DEPARTMENT_NAME;

--5.Display first name departments name including the department without employees
--and also employees  with out the departments
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E full join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--6.Display all cities and related country name
select * from COUNTRIES;
select *from LOCATIONS;

select CITY,COUNTRY_NAME
from LOCATIONS L join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID;

--7.Display all cities and related country names including with countries without cities
select CITY,COUNTRY_NAME
from LOCATIONS L right join COUNTRIES C
 on L.COUNTRY_ID = C.COUNTRY_ID;

--8.Display all department name and related street address
select DEPARTMENT_NAME,STREET_ADDRESS
from LOCATIONS  join DEPARTMENTS
on LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID;

--9.Display first name,last name and department name ,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;

--10.Display first name,last name and department name ,city,country name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
join COUNTRIES C2 on LOCATIONS.COUNTRY_ID = C2.COUNTRY_ID;

--11.Display first name,last name and department name ,city,country name,region name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
join COUNTRIES C2 on LOCATIONS.COUNTRY_ID = C2.COUNTRY_ID
join REGIONS on C2.REGION_ID = REGIONS.REGION_ID;

--how many employees working for each country name
select COUNTRY_NAME,count(*)
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
join COUNTRIES C2 on LOCATIONS.COUNTRY_ID = C2.COUNTRY_ID
group by COUNTRY_NAME ;

select COUNTRY_NAME,count(*)
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
join COUNTRIES C2 on LOCATIONS.COUNTRY_ID = C2.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>10 ;

--left join with where
select  *
from CUSTOMER C left join ADDRESS A
on A.ADDRESS_ID = C.ADDRESS_ID
where A.ADDRESS_ID is null ;

--full join with where
select  *
from CUSTOMER C full join ADDRESS A
on A.ADDRESS_ID = C.ADDRESS_ID
where A.ADDRESS_ID is null or C.ADDRESS_ID is null ;
