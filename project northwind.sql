USE northwind;
SELECT * FROM products;

-- PROJECT NORTHWIND-- 

-- QUERY 1-- 
SELECT productName , quantityperunit FROM products;
-- QUERY 2-- 
SELECT ProductID, productName FROM products WHERE discontinued = 0 ORDER BY productname;
-- QUERY 3-- 
SELECT ProductID, productName FROM products WHERE discontinued = 1 ORDER BY productname;
-- QUERY 4-- 
SELECT productname , unitprice FROM products ORDER BY unitprice DESC;
-- QUERY 5-- 
SELECT productid , productname , unitprice FROM products WHERE (unitprice<20) AND (discontinued = 0) ;
-- QUERY 6-- 
SELECT productid , productname , unitprice FROM products WHERE unitprice BETWEEN 15 AND 25;
-- QUERY 7-- 
SELECT productname , unitprice FROM products WHERE unitprice > (SELECT AVG(unitprice )FROM products) ORDER BY unitprice;
-- QUERY 8-- 
SELECT productname , unitprice FROM products ORDER BY unitprice DESC LIMIT 10;
-- QUERY 9-- 
SELECT discontinued , COUNT(*) 'COUNT' FROM products GROUP BY discontinued;
-- QUERY 10-- 
SELECT productname,  unitsonorder , unitsinstock FROM products WHERE (((discontinued)=0) AND ((unitsinstock)<unitsonorder));