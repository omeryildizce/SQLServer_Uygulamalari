use Northwind
select * from Products

select * from Products where  CategoryID = 1

select * from Products where  CategoryID = 
(
	select CategoryID from Categories 
	where CategoryName = 'SeaFood'
	and UnitsInStock > 20
	and SupplierID = 
	(
		select SupplierID  from Suppliers 
		where City = 'Osaka'
	)
)

select * from Customers

select * from Orders where EmployeeID IN 
(
	select EmployeeID from Employees
	where City = 'London'
) 
and ShipVia = 3 
and ShipCountry = 'France'


create proc test1
as
select * from Orders where EmployeeID IN 
(
	select EmployeeID from Employees
	where City = 'London'
) 
and ShipVia = 3 
and ShipCountry = 'France'

execute test1

