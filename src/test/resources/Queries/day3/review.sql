select * from EMPLOYEES;

--Task: How many locations we have for each country
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID;

--order them based country id asc
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID
order by 1 ;

--order them based country id desc
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID
order by 1 desc ;

--what if i want to see only,US,UK and CA
select COUNTRY_ID,count(*) from LOCATIONS
where COUNTRY_ID in('UK','US','CA')
group by COUNTRY_ID
order by 1 desc ;

--display where locations count is bigger than 2
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID
having count(*) >2
order by 1 ;

--Task:Display all employees salary in following format as columns name Employees_salary
--EX:Steven makes 24000
--EX:Neena makes 17000

select FIRST_NAME ||' makes '||SALARY as "EMployees_salary" from EMPLOYEES;


