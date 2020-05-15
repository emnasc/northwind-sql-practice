--Ex. 1
select * from shippers;

--Ex. 2
select CategoryName, Description from Categories;

--Ex. 3
select FirstName, LastName, HireDate from Employees where Title = 'Sales Representative';

--Ex. 4
select FirstName, LastName, HireDate from Employees where Title = 'Sales Representative' and Country = 'USA';

--Ex. 5
select OrderId, OrderDate from Orders where EmployeeID = 5;

--Ex. 6
select SupplierID, ContactName, ContactTitle from Suppliers where ContactTitle != 'Marketing Manager';

--Ex. 7
select ProductID, ProductName from Products where ProductName like '%queso%';

--Ex. 8
select OrderID, CustomerID, ShipCountry from Orders where ShipCountry in ('France', 'Belgium');

--Ex. 9
select OrderID, CustomerID, ShipCountry from Orders where ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

--Ex. 10
select FirstName, LastName, Title, BirthDate from Employees order by BirthDate