--Ex. 1
SELECT *
  FROM shippers;

--Ex. 2
SELECT  CategoryName
       ,Description
  FROM Categories;

--Ex. 3
SELECT  FirstName
       ,LastName
       ,HireDate
  FROM Employees
 WHERE Title = 'Sales Representative';

--Ex. 4
SELECT  FirstName
       ,LastName
	   ,HireDate
  FROM Employees
 WHERE Title = 'Sales Representative'
   AND Country = 'USA';

--Ex. 5
SELECT  OrderId
       ,OrderDate
  FROM Orders
 WHERE EmployeeID = 5;

--Ex. 6
SELECT  SupplierID
       ,ContactName
	   ,ContactTitle
  FROM Suppliers
 WHERE ContactTitle != 'Marketing Manager';

--Ex. 7
SELECT  ProductID 
       ,ProductName
  FROM Products
 WHERE ProductName like '%queso%';

--Ex. 8
SELECT  OrderID
       ,CustomerID
	   ,ShipCountry
  FROM Orders
 WHERE ShipCountry IN ('France', 'Belgium');

--Ex. 9
SELECT  OrderID
       ,CustomerID
       ,ShipCountry
  FROM Orders
 WHERE ShipCountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

--Ex. 10
SELECT  FirstName
       ,LastName
       ,Title
       ,BirthDate
  FROM Employees
 ORDER BY BirthDate;

--Ex. 11
SELECT  FirstName
       ,LastName
	   ,Title
	   ,CONVERT(DATE, BirthDate, 23)
  FROM Employees
 ORDER BY BirthDate;

--Ex. 12
SELECT  FirstName
       ,LastName
	   ,CONCAT(FirstName, ' ', LastName) AS FullName
  FROM Employees;

--Ex. 13
SELECT  OrderId
       ,ProductID
	   ,UnitPrice
	   ,Quantity
	   ,(UnitPrice * Quantity) AS TotalPrice
  FROM OrderDetails;

--Ex. 14
SELECT COUNT(CustomerID) AS TotalCustomers
  FROM Customers;

--Ex. 15
SELECT TOP(1) OrderDate
  FROM Orders
 ORDER BY OrderDate ASC;