/*
COUNT():

Cuenta el número de filas en un conjunto de resultados.
Sintaxis: SELECT COUNT(column_name) FROM table_name;
Ejemplo: SELECT COUNT(*) FROM Orders;

SUM():

Suma los valores de una columna numérica.
Sintaxis: SELECT SUM(column_name) FROM table_name;
Ejemplo: SELECT SUM(Price) FROM Products;

AVG():

Calcula el promedio de los valores de una columna numérica.
Sintaxis: SELECT AVG(column_name) FROM table_name;
Ejemplo: SELECT AVG(Price) FROM Products;

MIN():

Devuelve el valor mínimo de una columna.
Sintaxis: SELECT MIN(column_name) FROM table_name;
Ejemplo: SELECT MIN(Price) FROM Products;

MAX():

Devuelve el valor máximo de una columna.
Sintaxis: SELECT MAX(column_name) FROM table_name;
Ejemplo: SELECT MAX(Price) FROM Products;
*/

--Encuentra el número total de productos en la tabla Products y calcula su precio promedio.

select 
    count(ProductID) as total_productos , 
    avg(Price) as promedio_valor 
from 
    products
where 
    ProductID is not null and Price is not null 


--Encuentra el número total de empleados en la tabla Employees y el año de nacimiento  mínimo y máximo.


SELECT 
    COUNT(EmployeeID) AS TOTAL_EMPLEADOS,
    MAX(BirthDate) AS EMPLEADO_MAS_JOVEN,
    MIN(BirthDate) AS EMPLEADO_MAS_VIEJO
FROM 
    Employees
WHERE 
    EmployeeID IS NOT NULL AND BirthDate IS NOT NULL;
    

--Calcula la suma total de las cantidades de los detalles del pedido en la tabla OrderDetails y encuentra la cantidad promedio.

select 
    SUM(Quantity) AS Cantidades_totales_pedidos , AVG(Quantity) AS PROMEDIO
from
    OrderDetails
where
    Quantity IS NOT NULL



 -- Encuentra el número total de pedidos en la tabla Orders y el promedio de los importes totales de los pedidos.

 Select 
        count(OrderID) AS cantidad_total_pedidos
 from 
        Orders
 where 
        OrderID IS NOT NULL

--Calcula la suma total de los precios de los productos en la tabla Products y encuentra el precio mínimo y máximo.

SELECT 
    SUM (ProductID) AS TOTAL_PRODUCTO , MIN(PRICE) AS PRECIO_MINIMO , MAX(PRICE) AS PRECIO_MAX
FROM 
    Products
WHERE 
    ProductID IS NOT NULL ∫