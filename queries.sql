-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select productname, c.categoryname 
from product as p
join category as c on p.categoryid = c.id 

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select s.companyname, id, orderdate from [order]
join shipper as s on shipvia = s.id
where orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.productname, quantity from orderdetail as o 
join product as p on o.productid= p.id
where orderid = "10251"
order by p.productname;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select id as OrderId, c.CompanyName, e.LastName as employeeLastName from [order]
join customer as c on customerid = c.id
join employee as e on employeeid = e.id
