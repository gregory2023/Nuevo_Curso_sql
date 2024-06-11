
/*
AND	Devuelve verdadero si ambas condiciones son verdaderas	SELECT * FROM Products WHERE UnitPrice > 20 AND UnitsInStock > 0;

OR	Devuelve verdadero si al menos una de las condiciones es verdadera	SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'France';

NOT	Niega una condición, devolviendo verdadero si la condición es falsa	SELECT * FROM Products WHERE NOT (UnitPrice > 50);

BETWEEN	Comprueba si un valor está dentro de un rango de valores	SELECT * FROM Orders WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

IN	Comprueba si un valor coincide con algún valor en una lista	SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'Spain');

LIKE	Busca un patrón en una cadena	SELECT * FROM Products WHERE ProductName LIKE 'C%';

IS NULL	Comprueba si un valor es NULL	SELECT * FROM Employees WHERE Region IS NULL;

IS NOT NULL	Comprueba si un valor no es NULL	SELECT * FROM Employees WHERE Region IS NOT NULL;

EXISTS	Devuelve verdadero si la subconsulta devuelve al menos una fila	SELECT * FROM Suppliers WHERE EXISTS (SELECT * FROM Products WHERE SupplierID = Suppliers.SupplierID);

*/

--ejercicios 

--ejercicio 1 . Consulta solo los registros de clientes con customerID mayor a 50 y que no sean ni de usa , francia ni brazil y maximos 5 registros

select *
from customers
where customerID > 50 
AND NOT Country  = "USA" 
AND NOT Country = "FRANCIA"
AND NOT Country =  "BRAZIL"
LIMIT 5

--EJERCICIO 2 consulta los proveedores 1,8,28 y tambien de la ciudades "paris" , "salerno" , muestrame 3 resultados aleatoreos 

select*
from Suppliers
where NOT SupplierName = "Exotic Liquid"
AND NOT SupplierName = "Specialty Biscuits, Ltd."
AND NOT  SupplierName = "Gai pâturage"
AND NOT City = "paris"
AND NOT City = "salerno"
ORDER BY random()
limit 3 

-- Ejercicio 3 consula un producto que valga menos de 30 de un proveedor que no sea ni el suppliername 1 ,30 y traeme por favor 10 opciones

select DISTINCT(SupplierName)
from products
where price < 30 AND
NOT SupplierID = 1 AND
NOT SupplierID = 30 
ORDER BY RANDOM ()
LIMIT 10



