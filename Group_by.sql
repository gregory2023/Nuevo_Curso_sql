/*
Qué es GROUP BY?
El GROUP BY es una cláusula en SQL que se utiliza para agrupar filas que tienen valores iguales en 
columnas específicas. Esto permite realizar cálculos agregados (como contar, sumar, promediar, etc.)
 sobre cada grupo de datos.

¿Cómo funciona?
Imagina que tienes una caja de juguetes de diferentes colores y quieres contar cuántos juguetes 
tienes de cada color. Primero, agruparías los juguetes por color, y luego contarías los juguetes 
en cada grupo. Esto es lo que GROUP BY hace en SQL.


SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name


La cláusula HAVING se usa para filtrar los grupos de datos después de que se haya realizado la agrupación. 
Se utiliza junto con la cláusula GROUP BY.

*/

--Ejercicio 1:
--Encuentra los productos cuyo precio sea mayor a 20 y agrúpalos por la categoría. Muestra solo las categorías 
--que tienen más de 3 productos, e incluye la suma total de los precios y el precio promedio de los productos 
--en cada categoría.

select 
    CategoryID,
    price,
    sum(price) AS suma_precios , 
    avg(price) AS precio_promedio
from 
    products
where price> 20
GROUP BY CategoryID 
HAVING CategoryID > 3

--Ejercicio 2:Selecciona los empleados que nacieron después del 1 de enero de 1950 y agrúpalos por el año 
--Muestra solo los que nacieron en 1950 e incluye la cantidad de empleados 
--la más antigua en cada grupo.
 
select 
BirthDate,
EmployeeID , 
count(EmployeeID) AS cantidad_empleados
from 
Employees
where BirthDate > '1950 -01-01' 
GROUP by BirthDate 
HAVING BirthDate BETWEEN '1950-01-01' and '1955-12-01' 

--Calcula la cantidad total de productos vendidos por mes y el importe total de ventas por mes.

select count(Quantity) AS TOTAL_PRODUCTOS_VENDIDOS
from Orders
where  


