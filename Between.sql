--El operador BETWEEN se utiliza para filtrar los registros que están dentro de un rango de valores especificados. 
--Este operador es inclusivo, lo que significa que los valores de los extremos se incluyen en el rango.

/*
El operador LIKE se utiliza en una cláusula WHERE para buscar un patrón específico en una columna de texto. Se utiliza comúnmente con los comodines % y _.

% representa cero, uno o más caracteres.
_ representa un solo carácter.
*/



--Ejercicio 1:Selecciona todos los empleados cuyos nombres comiencen con la letra 'A'. Ordena los resultados por el nombre de pila en orden ascendente.

select  *
from Employees
where FirstName like  "A%"
ORDER BY BirthDate ASC

--Selecciona todos los productos cuyo precio esté entre 20 y 50 (inclusive). Ordena los resultados por precio en orden ascendente.

select *
from products
where price BETWEEN 20 AND 51 
ORDER BY PRICE ASC

--Selecciona todos los clientes que están en ciudades cuyos nombres contienen 'York'. Ordena los resultados por nombre de cliente en orden ascendente.

Select *
from customers
where City like "%on"
ORDER BY ContactName ASC 

--Selecciona todos los pedidos realizados en el año 1996 -97. Ordena los resultados por fecha de pedido en orden ascendente.


select *
from Orders
where OrderDate BETWEEN '1996-12-31' AND '1998-12-31'
ORDER BY OrderDate asc

--Selecciona todos los proveedores cuyo nombre contenga la palabra 'Inc'. Ordena los resultados por nombre de proveedor en orden ascendente.

Select * 
from Suppliers
where suppliername like "%lt"
order by suppliername asc