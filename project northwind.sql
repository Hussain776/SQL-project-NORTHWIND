USE northwind;
SELECT * FROM products;

-- PROJECT NORTHWIND-- 

# 1. Write a query to get Product name and quantity/unit
SELECT productName , quantityperunit FROM products;

# 2. Write a query to get current Product list (Product ID and name)
SELECT ProductID, productName FROM products WHERE discontinued = 0 ORDER BY productname;

# 3. Write a query to get discontinued Product list (Product ID and name)
SELECT ProductID, productName FROM products WHERE discontinued = 1 ORDER BY productname;

# 4. Write a query to get most expense and least expensive Product list (name and unit price) 
SELECT productname , unitprice FROM products ORDER BY unitprice DESC;

# 5. Write a query to get Product list (id, name, unit price) where current products cost less than $20
SELECT productid , productname , unitprice FROM products WHERE (unitprice<20) AND (discontinued = 0) ;

# 6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25
SELECT productid , productname , unitprice FROM products WHERE unitprice BETWEEN 15 AND 25;

# 7. Write a query to get Product list (name, unit price) of above average price
SELECT productname , unitprice FROM products WHERE unitprice > (SELECT AVG(unitprice )FROM products) ORDER BY unitprice;

# 8. Write a query to get Product list (name, unit price) of ten most expensive products
SELECT productname , unitprice FROM products ORDER BY unitprice DESC LIMIT 10;

# 9. Write a query to count current and discontinued products
SELECT discontinued , COUNT(*) 'COUNT' FROM products GROUP BY discontinued;

# 10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order
SELECT productname,  unitsonorder , unitsinstock FROM products WHERE (((discontinued)=0) AND ((unitsinstock)<unitsonorder));