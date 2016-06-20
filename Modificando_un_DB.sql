


INSERT INTO orders
 ( CustomerID, OrderDate, RequiredDate, ShippedDate)
 VALUES
 (1, '2013-10-13', '2013-11-03', '2013-10-2o');

INSERT INTO OrderDetails
 ( orderID, ProductID, UnitPrice, Quantity)
 VALUES
 (21, 3, 5.0, 20);


INSERT INTO Customers
 (CompanyName, ContactName, ContactTitle, Address, City, State)
 VALUES
 ('Ivans Company', 'Ivan Gonzalez', 'CEO', 'General Alvaro Obregon', 'CDMX', 'MX');

select c.companyname, count(*) from customers c, orders o where c.CustomerID = o.customerid and c.companyname =  'Floor Co.';
select c.companyname, o.* from customers c, orders o where c.CustomerID = o.customerid and c.companyname =  'Floor Co.';
select * from orders where CustomerID = 3 and orderdate >= '2013-01-01';

update orders set CustomerID = 6 where CustomerID = 3 and orderdate >= '2013-01-01';


select * from orders where CustomerID  = 5;
select *  from OrderDetails where orderID in (13, 17);
select * from customers where companyname = 'Slots Carpet';

delete from OrderDetails where orderID in (13, 17);
delete from orders where CustomerID  = 5;
delete from customers where companyname = 'Slots Carpet';


select * from orders;
select * from customers;
select *  from OrderDetails;


select count(*) from orders;
select count(*) from customers;
select count(*)  from OrderDetails;



CREATE TABLE Customers (
 CustomerID INTEGER PRIMARY KEY
,CompanyName VARCHAR(60)
,ContactName VARCHAR(40)
,ContactTitle VARCHAR(60)
,Address VARCHAR(60)
,City VARCHAR(60)
,State VARCHAR(2)
);
CREATE TABLE OrderDetails (
 OrderDetailID INTEGER PRIMARY KEY
,OrderID INTEGER
,ProductID INTEGER
,UnitPrice REAL
,Quantity INTEGER
);
CREATE TABLE Orders(
OrderID INTEGER PRIMARY KEY
,CustomerID INTEGER
,OrderDate VARCHAR(25)
,RequiredDate VARCHAR(25)
,ShippedDate VARCHAR(25)
);