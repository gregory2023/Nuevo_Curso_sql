/*
El operador IN en SQL se utiliza para filtrar registros que coinciden con uno de los valores especificados en una lista.
 Es una forma concisa de escribir múltiples condiciones de igualdad en una cláusula WHERE.

 SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
 
 EJEMPLO 

 SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'Spain');

*/


--Ejercicio 1: Selecciona todos los empleados cuyo apellido esté en la lista ('Davolio', 'Fuller', 'Leverling'). 
--Ordena los resultados por el apellido en orden ascendente

select *
from Employees
where LastName in  ('Davolio', 'Fuller', 'Leverling')
ORDER BY LastName asc

-- con not 
select *
from Employees
where LastName not in  ('Davolio', 'Fuller', 'Leverling')
ORDER BY LastName asc

--Selecciona todos los productos cuyos precios estén en la lista (10, 20, 30). Ordena los resultados por precio en orden ascendente.

select *  
from products
where price in (10,20,30)
order by price desc

--Selecciona todos los clientes que no están en los países ('Germany', 'France', 'Spain'). Ordena los resultados por nombre de cliente en orden descentetne.

select *
from customers
where Country not in ('Germany', 'France', 'Spain')
order by Country desc

--Selecciona todos los pedidos que fueron realizados por los empleados con ID 1, 3, o 5. Ordena los resultados por fecha de pedido en orden ascendente.

select *
from Orders
where CustomerID IN (21,24,33,5)
ORDER BY OrderDate ASC

--Selecciona todos los proveedores que no están en los países ('USA', 'Canada', 'UK'). Ordena los resultados por nombre de proveedor en orden ascendente.

select *
from Suppliers
where Country not in ('USA', 'Canada', 'UK')
ORDER BY Country asc 

