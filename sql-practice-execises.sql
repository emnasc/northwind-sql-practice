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

--Ex. 16
SELECT Country
  FROM Customers
 GROUP BY Country;

--Ex. 17
SELECT  ContactTitle
       ,COUNT(ContactTitle) AS TotalCountTitle
  FROM Customers
 GROUP BY ContactTitle
 ORDER BY TotalCountTitle DESC;

 --Ex. 18
SELECT  P.ProductID
       ,P.ProductName
       ,S.CompanyName
  FROM Products AS P
  JOIN Suppliers AS S
    ON S.SupplierID = P.SupplierID
 ORDER BY P.ProductID;

--Ex. 19
SELECT  O.OrderID
       ,Convert(Date, O.OrderDate, 23) AS OrderDate
	   ,S.CompanyName
  FROM Orders AS O
  Join Shippers AS S
    ON S.ShipperID = O.ShipVia
 WHERE O.OrderID < 10300
 ORDER BY O.OrderID;

--Ex. 20
SELECT  C.CategoryName
       ,COUNT(P.CategoryID) AS TotalProducts
  FROM Categories AS C
  JOIN Products AS P
    ON P.CategoryID = C.CategoryID
 GROUP BY C.CategoryName
 ORDER BY TotalProducts DESC;

--Ex. 21
SELECT  Country
       ,City
	   ,COUNT(CustomerID) AS TotalCustomers
  FROM Customers
 GROUP BY Country, City
 ORDER BY TotalCustomers DESC;

--Ex. 22
SELECT  ProductID
       ,ProductName
	   ,UnitsInStock
	   ,ReorderLevel
  FROM Products
 WHERE UnitsInStock < ReorderLevel
 ORDER BY ProductID;

--Ex. 23
SELECT  ProductID
       ,ProductName
	   ,UnitsInStock
	   ,UnitsOnOrder
	   ,ReorderLevel
	   ,Discontinued
  FROM Products
 WHERE (UnitsInStock + UnitsOnOrder) <= ReorderLevel
       AND Discontinued = 0
 ORDER BY ProductID;

--Ex. 24
SELECT  CustomerID
       ,CompanyName
	   ,Region
 FROM Customers
 ORDER BY CASE
			WHEN Region IS NULL THEN 1
			ELSE 0
		  END
          ,Region
		  ,CustomerID;

--Ex. 25
SELECT  TOP(3) ShipCountry
       ,AVG(Freight) AS AverageFreight
  FROM Orders
 GROUP BY ShipCountry
 ORDER BY AverageFreight DESC;

--Ex. 26
SELECT  TOP(3) ShipCountry
       ,AVG(Freight) AS AverageFreight
  FROM Orders
  WHERE YEAR(OrderDate) = '2015'
 GROUP BY ShipCountry
 ORDER BY AverageFreight DESC;

--Ex. 27
/*
The statement presented in the book uses the between clause, 
which assumes the time 00:00:00 on December 31 2015. Because 
of this, any freight registered later that day is not considered. 
Since my implementation only looks at the year of the freight, it 
doesn't have this problem.
*/ 