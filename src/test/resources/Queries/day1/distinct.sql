--it returns 107
select *from EMPLOYEES;
--it removed duplicates and return 91 result
select FIRST_NAME from EMPLOYEES;
--it will check each row to filter different columns-->*-->all columns
select distinct FIRST_NAME from EMPLOYEES;
--since primary key cannot be duplicate it gives the same result
select distinct * from EMPLOYEES;



