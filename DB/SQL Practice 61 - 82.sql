## SQL Where Clause:
## The SQL WHERE clause is used to specify a condition while fetching the data from single table or joining with multiple tables.

## The WHERE clause is not only used in SELECT statement, but it is also used in UPDATE, DELETE statement, etc., 
## which we would examine in subsequent chapters.  

Select * from customers;

##SQL using comparison or logical operators like >, <, =, LIKE, NOT

select id,name, salary from customers where salary >2000;
select id,name,salary from customers where name = 'Hardik';

## SQL using AND and OR operators are used to combine multiple conditions to narrow data in an SQL 
## The AND Operator: 
## The AND operator allows the existence of multiple conditions in an SQL statement's WHERE clause. 

## The basic syntax of AND operator with WHERE clause is as follows: 
## SELECT column1, column2, columnN  
## FROM table_name 
## WHERE [condition1] AND [condition2]...AND [conditionN]; 

select id,name, age,salary
from customers 
where salary > 2000 and age < 25;

## Using OR Operator: The OR operator is used to combine multiple conditions in an SQL statement's WHERE clause.

select id,name, age,salary
from customers 
where salary > 2000 or age < 25;

## Using Update Query
## The SQL UPDATE Query is used to modify the existing records in a table. 
  You can use WHERE clause with UPDATE query to update selected rows, otherwise all the rows would be affected. 

# SET is used with UPDATE, not SELECT.

update customers
set address = 'pune'
where id = 6;

update customers
set address = 'pune' , salary = 1000; 

select * from customers;

## DELETE Query: The SQL DELETE Query is used to delete the existing records from a table. 
## You can use WHERE clause with DELETE query to delete selected rows, otherwise all the records would be deleted.

delete from customers
where id = 6;

## Using LIKE / WILDCARD (% , _) Operators
## The SQL LIKE clause is used to compare a value to similar values using wildcard operators. There are two 
## Wildcards used in conjunction with the LIKE operator: 
## The percent sign (%) 
## The underscore (_) 

create table customers(
                        ID int,
                        Name varchar(20),
                        Age int,
                        Address varchar(30),
                        Salary int);

Insert into customers values(1,'Ramesh',32,'Ahmedabad',2000.00),
                            (2,'Khlian',25,'Delhi',1500.00),
                            (3,'Chaitali', 25,'Mumbai',6500.00),
                            (4,'Kaushik',23,'Kota',2000.00),
                            (5,'Hardik',27,'Bhopal',8500.00),
                            (6,'Komal',22,'MP',4500.00),
                            (7,'Muffy',24,'Indore',10000.00);

select * from customers
where salary like '200%';

## SQL using TOP(Limit)Clause: The SQL TOP clause is used to fetch a TOP N number or X percent records from a table. 
## Note: All the databases do not support TOP clause. For example MySQL supports LIMIT clause to fetch limited 
## number of records and Oracle uses ROWNUM to fetch limited number of records. 

select * from customers
limit 3;

## Using SQL ORDER BY (Sort) Clause: The SQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or 
## more columns. Some database sorts query results in ascending order by default.

Select * from customers

select * from customers
order by name, salary;

select * from customers
order by name desc;

## SQL Using Group By : The SQL GROUP BY clause is used in collaboration with the SELECT statement to arrange identical data 
## into groups. 
## The GROUP BY clause follows the WHERE clause in a SELECT statement and precedes the ORDER BY clause. 


Select name, sum(salary) from customers
group by Name;


Select name, AVG(salary) from customers
group by Name;

## Using SQL Distinct Keyword: The SQL DISTINCT keyword is used in conjunction with SELECT statement to eliminate all the duplicate 
## records and fetching only unique records.

Select salary  from customers
order by salary;

select distinct salary from customers
order by salary;

## Using SQL SORTING Results: The SQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or 
## more columns. Some databases sort query results in ascending order by default. 

Select * from customers;

select * from customers
order by name, salary;

select * from customers
order by name desc;

## To fetch the rows with own preferred order, the SELECT query would be as follows: 

select * from customers
order by ( case address
when 'Delhi' then 1
when 'Bhopal' then 2
when 'Mumbai' then 3
when 'Indore' then 4
when 'MP' then 5
when 'Kota' then 6
else 100 end) ASC, address desc;
 





