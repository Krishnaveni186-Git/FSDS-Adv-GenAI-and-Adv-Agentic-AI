## CREATING ORDERS TABLE
CREATE TABLE ORDERS(ORDER_ID INT,ORDER_DATE DATE,CUST_ID INT, AMOUNT INT);

INSERT INTO ORDERS VALUES(102,'2009-10-08',3,3000),
(100,'2009-10-08',3,1500),
(102,'2019-11-20',2,1560),
(103,'2019-05-20',4,2060);

Select * from orders;

## jOIN: The SQL Joins clause is used to combine records from two or more tables in a database. A JOIN is a 
### means for combining fields from two tables by using values common to each. 

SELECT ID, NAME, AGE, AMOUNT 
FROM CUSTOMERS, ORDERS 
WHERE  CUSTOMERS.ID = ORDERS.CUSTOMER_ID; 

## SQL Join Types: There are different types of joins available in SQL: 

## INNER JOIN:  returns rows when there is a match in both tables.

SELECT ID, NAME, AMOUNT, ORDER_DATE
FROM CUSTOMERS
INNER JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

## LEFT JOIN: returns all rows from the left table, even if there are no matches in the right table. 

SELECT ID, NAME, AMOUNT, ORDER_DATE
FROM CUSTOMERS
LEFT join ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

## RIGHT JOIN: returns all rows from the right table, even if there are no matches in the left table. 

SELECT ID, NAME, AMOUNT, ORDER_DATE
FROM CUSTOMERS
RIGHT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

## FULL JOIN: returns rows when there is a match in one of the tables

SELECT ID, NAME, AMOUNT, ORDER_DATE
FROM CUSTOMERS
FULL JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

## If your Database does not support FULL JOIN like MySQL does not support FULL JOIN, then you can use UNION 
## ALL clause to combine two JOINS as follows: 

SELECT ID, NAME, AMOUNT, ORDER_DATE
FROM CUSTOMERS
LEFT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID
UNION ALL 
SELECT ID,NAME,AMOUNT,ORDER_DATE
FROM CUSTOMERS
RIGHT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

## SELF JOIN: is used to join a table to itself as if the table were two tables, temporarily renaming at least one 
## table in the SQL statement. 
## let us join this table using SELF JOIN as follows:

SELECT a.ID, b.NAME,a.SALARY
FROM CUSTOMERS a , CUSTOMERS b
WHERE a.SALARY < b.SALARY;


## CARTESIAN JOIN: returns the Cartesian product of the sets of records from the two or more joined tables.
## The CARTESIAN JOIN or CROSS JOIN returns the cartesian product of the sets of records from the two or more 
## joined tables. Thus, it equates to an inner join where the join-condition always evaluates to True or where the join
## condition is absent from the statement. 

SELECT ID,NAME,AMOUNT,ORDER_DATE
FROM CUSTOMERS,ORDERS;