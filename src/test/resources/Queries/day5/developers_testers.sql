select * from EMPLOYEES;

create table developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

create table testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);


insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from developers;

select * from testers;


/*
 UNION
    - will remove DUPLICATE ROWS
    - will sort data in asc order

 */

select * from developers
union
select * from testers;

select names from developers
union
select names from testers;


/*
 UNION ALL
    - will NOT remove DUPLICATE ROWS
    - will NOT sort data

 */

select names from developers
union all
select names from testers;

-- MINUS
-- Returns records from first query that is not present in second query.
-- Order of the queries are important

select names from developers
minus
select names from testers;

select names from testers
minus
select names from developers;

--INTERSECT
select names from testers
intersect
select names from developers;