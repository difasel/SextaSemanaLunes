select count(*) from Orders where customerid = 3;
/*
count(*)  
--------
6     
*/

select count(*) from customers c, orders o where c.CustomerID = o.customerid and c.ContactName =  'Jim Wood';
/*count(*)  
----------
6 
*/ 

select count(*) from customers c, orders o where c.CustomerID = o.customerid and c.companyname =  'Slots Carpet';
/*count(*)  
----------
2 */



select companyname, count(*) from customers c, orders o where c.CustomerID = o.customerid group by companyname order by count(*) desc;
/*CompanyName  count(*)  
-----------  ----------
Floor Co.    6         
Sagebrush C  5         
Main Tile a  4         
Deerfield T  3         
Slots Carpe  2    */


select companyname, count(*) from customers c, orders o where c.CustomerID = o.customerid group by companyname order by count(*) asc;
/*CompanyName   count(*)  
------------  ----------
Slots Carpet  2         
Deerfield Ti  3         
Main Tile an  4         
Sagebrush Ca  5         
Floor Co.     6  */


select companyname, count(*) from customers c, orders o where c.CustomerID = o.customerid group by companyname order by count(*) desc limit 1;
/*CompanyName  count(*)  
-----------  ----------
Floor Co.    6         */



select c.companyname, sum(quantity) from customers c, orders o, OrderDetails d where c.CustomerID = o.customerid and
 d.orderid = o.orderid group by c.companyname;  
/*CompanyName     sum(quantity)
--------------  -------------
Deerfield Tile  340          
Floor Co.       670          
Main Tile and   940          
Sagebrush Carp  740          
Slots Carpet    250  */

select o.orderid, (d.UnitPrice * d.Quantity) from customers c, orders o, OrderDetails d where c.CustomerID = o.customerid 
and o.orderid = 4  and d.orderid = o.orderid group by o.orderid; 
/*OrderID     (d.UnitPrice * d.Quantity)
----------  --------------------------
4           400.0    */


select o.orderid, sum(d.UnitPrice * d.Quantity) items from customers c, orders o, OrderDetails d where c.CustomerID = o.customerid 
 and d.orderid = o.orderid group by o.orderid; 
/*OrderID     sum(d.UnitPrice * d.Quantity)
----------  -----------------------------
1           48.0                         
2           1948.7                       
3           2395.9                       
4           400.0                        
5           3638.6                       
6           384.5                        
7           1321.5                       
8           1941.7                       
9           300.0                        
10          133.2                        
11          421.2                        
12          32.0                         
13          250.0                        
14          881.0                        
15          1344.1                       
16          207.5                        
17          1942.6                       
18          285.5                        
19          1626.5                       
20          166.0  */

select orderid, cost_total  from (select o.orderid, sum(d.UnitPrice * d.Quantity) cost_total from customers c, orders o, OrderDetails d where c.CustomerID = o.customerid 
and d.orderid = o.orderid  group by o.orderid ) a  where  cost_total > 1000;
/*orderid     cost_total
----------  ----------
2           1948.7    
3           2395.9    
5           3638.6    
7           1321.5    
8           1941.7    
15          1344.1    
17          1942.6    
19          1626.5   */


select o.orderid, sum(d.Quantity) from customers c, orders o, OrderDetails d where c.CustomerID = o.customerid 
 and d.orderid = o.orderid group by o.orderid; 
/*
OrderID     sum(d.Quantity)
----------  ---------------
1           90             
2           330            
3           240            
4           80             
5           380            
6           140            
7           210            
8           190            
9           60             
10          100            
11          180            
12          60             
13          50             
14          140            
15          110            
16          70             
17          200            
18          120            
19          130            
20          60 
*/


select * from orders;


select * from customers;


select *  from OrderDetails;












