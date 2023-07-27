select * from CUSTOMER;

select * from ADDRESS;

select  FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;

--Table Aliases
--Customer --C
--Employee --E
--Address --A

--Q:what if, i want to see customer table address_id information too
select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

--Inner Join or Join is the same logic
select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

--left or left outer join is the same logic
--it will give matching part between two table + unique for left table
--the order of the table is important

select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;


--right or right outer join is the same logic
--it will give matching part between two table + unique for right table
--the order of the table is important

select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;


select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right outer join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

--full or full outer join is the same logic
select  FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C full outer join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

