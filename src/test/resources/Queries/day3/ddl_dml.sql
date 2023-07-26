select *
from EMPLOYEES;
/*
 create table syntax :
    create table TableName(
        colName1 DataType constrains
        colName2 DataType constrains(optional)
        colName3 DataType constrains
 ...
 );
 */

 ---Create Table---
--varchar=string
create table scrumteam(
    emp_id INTEGER primary key,
    first_name varchar(30) not null,
    last_name varchar(20) not null ,
    job_title varchar(20) ,
    salary INTEGER
);

select *from scrumteam;
/*
 INSERT INTO tableName (column1, column2,…)
 VALUES (value1, value2 … );
 */

INSERT INTO scrumteam(emp_id, first_name, last_name, job_title, salary)
VALUES (1,'Ömer','Agirbas','Tester',130000);

INSERT INTO scrumteam(emp_id, first_name, last_name, job_title, salary)
VALUES (2,'Emily','Holmes','Tester',110000);

INSERT INTO scrumteam(emp_id, first_name, last_name, job_title, salary)
VALUES (3,'John','John','Developer',140000);

INSERT INTO scrumteam(emp_id, first_name, last_name, job_title, salary)
VALUES (4,'Calvin','Klein','QA',100000);

select * from scrumteam
order by salary desc ;


--save changes so that other people ,connections can get the updates
commit ;

/*
 UPDATE table_name
SET column1 = value1,
      column2 = value2 , …
WHERE condition;

 */
 select *from scrumteam;

 update scrumteam
set salary=110000
where emp_id=3;

commit work;

/*
 DELETE FROM table_name
   WHERE condition;

 */

 DELETE from scrumteam
where emp_id=1;

commit ;

--CRUD
--CREAT(Insert)
--READ(Select)
--Update(Update)
--Delete(Delete)


--ALTER
--ADD new colimn
ALTER TABLE SCRUMTEAM ADD GENDER varchar(10);

select *from scrumteam;
update scrumteam
set gender='Female'
where emp_id=2;

update scrumteam
set gender='Male'
where emp_id=3;

update scrumteam
set gender='Male'
where emp_id=4;

commit ;

--Rename column
ALTER TABLE scrumteam rename column salary to annual_salary;

--Drop column
ALTER TABLE SCRUMTEAM DROP COLUMN GENDER;

--Rename
ALTER TABLE SCRUMTEAM RENAME to agileteam;
select *from agileteam;

--TRUNCATE
TRUNCATE TABLE agileteam ;

--DROP TABLE
DROP TABLE agileteam;

commit ;

/*
 IQ-->what is the different between TRUNCATE and DROP
    TRUNCATE--it will delete table content,but keep the table
    DROP--it will delete all content and table itself
 */
