

--La cláusula WHERE en SQL se utiliza para filtrar registros en una consulta, de modo que sólo se devuelvan 
--las filas que cumplen con las condiciones especificadas. Es una de las cláusulas más fundamentales y poderosas
--en SQL, ya que permite seleccionar datos específicos basados en criterios definidos por el usuario.


--ejercicios practicos con el where 


-- Ejercicio 1: Selecciona todos los productos cuyo precio sea mayor a 20.

Select *
from products        
where Price > 20


--Ejercicio 2: Selecciona todos los pedidos realizados después del 1 de enero de 1997.

Select *
from Orders
where OrderDate > 01-01-1997 

--Ejercicio 3: Selecciona todos los empleados cuyo apellido sea "Nancy".

select * 
from Employees
where FirstName = "Nancy"

--Ejercicio 4: Selecciona todos los clientes que están en Alemania.

select *
from customers
where Country = "Germany"

--Ejercicio 5: Selecciona todos los productos que están en stock y cuyo precio es menor a 30.

select *
from products
where unit > 0 and price > 30

--Ejercicio 6: Selecciona todos los pedidos realizados por el cliente con el ID 10.

SELECT *
FROM Orders
WHERE CustomerID=10

--Ejercicio 7: Selecciona todos los empleados que fueron contratados después del 1 de enero de 1994.

SELECT *
FROM Employees
WHERE BirthDate > 01-01-1994


--Ejercicio 8: Selecciona todos los productos cuyo nombre comienza con 'C'.

SELECT*
FROM Products
WHERE ProductName like 'C%'

--Ejercicio 9: Selecciona todos los proveedores que no están en los Estados Unidos.

select *
from Shippers
where Country <> "USA"

--Ejercicio 10: Selecciona todos los detalles de pedidos para productos cuyo precio unitario sea mayor a 50.

SELECT*
from Products
where price > 50

