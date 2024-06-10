--selects mas basicos para manipular la BD Northwind de prueba 

--TABLAS EN LA BD 


--Products;
--categories;
--customers;
--Employees;
--Shippers;
--Suppliers;


-- SELECT* trae todo los registros de la tabla seleccionada
SELECT *
FROM Products

SELECT *
FROM categories

SELECT *
FROM Products

SELECT *
FROM customers

SELECT *
FROM Employees

SELECT *
FROM Shippers

SELECT *
FROM Suppliers


-- SELECT , Trae las columnas que nosotros le indiquemos

--columna ProductName de la tabla products
SELECT  ProductName
from Products

--columna price de la tabla products 
SELECT price
from Products

--columna addres de la tabla customers
SELECT Address
from Customers

-------------------------------------------------------------------------


--ORDEN BY , nos organiza los registros de forma ASC y DESC 

--de la tabla products nos trae los precios de mayor a menos y de menor a mayor 

        --por defecto en asc nos imprimen del menor valor y si es letas 
            -- NULL--> A,B,C,D,F

        -- EN EL CASO DE LOS NUMEROS ASC 
            -- NULL-> NUMEROS -->CARACTERES ESPECIALES --> LETRAS    

Select price
from products
Order by price -- por defecto viene el ASC

SELECT *
FROM Products 
ORDER BY Price DESC



--AS - PARA RENOMBRAR 

SELECT PRICE AS PRECIOS -- RENOMBRAMOS EL COLUMNA PARA LA IMPRESION , NO CAMBIA NADA MAS !!
FROM Products 
ORDER BY Price DESC


SELECT FirstName AS NOMBRE -- RENOMBRAMOS LA COLUMNA PARA LA IMPRESION , NO CAMBIA NADA MAS 
FROM Employees 
ORDER BY FirstName DESC

--Steven
--Robert
--Nancy
--Michael
--Margaret
--Laura
--Janet
--Anne
--Andrew
--Adam


SELECT ProductName
FROM Products
ORDER BY ProductName ASC

--NULL
--Alice Mutton
--Aniseed Syrup
--Boston Crab Meat
--Camembert Pierrot
--Carnarvon Tigers
--Chais
--Chang
--Chartreuse verte
--Chef Anton's Cajun Seasoning
--Chef Anton's Gumbo Mix
--Chocolade
--Côte de Blaye
--Escargots de Bourgogne



