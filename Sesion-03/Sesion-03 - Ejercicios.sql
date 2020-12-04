#Ejercicios Finales. Sesión 03
USE classicmodels;

											#Ejercicio 01
SELECT o.orderNumber, SUM(od.quantityOrdered) TotalProductos
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY o.orderNumber, o.status
ORDER BY o.orderNumber;
    
											#Ejercicio 02
SELECT od.orderNumber, o.status, SUM(od.quantityOrdered*od.priceEach) CostoTotal
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY od.orderNumber, o.status
ORDER BY od.orderNumber;


											#Ejercicio 03
SELECT o.orderNumber, o.orderDate, od.orderLineNumber, p.productName, od.quantityOrdered, od.priceEach
FROM products p
JOIN orderdetails od
	ON p.productCode = od.productCode
JOIN orders o
	ON od.orderNumber = o.orderNumber
ORDER BY o.orderNumber;


											#Ejercicio 04
SELECT od.orderNumber, p.productName, p.MSRP PrecioSugerido, od.priceEach
FROM orderdetails od
JOIN products p
	ON od.productCode = p.productCode;
    
    
											#Ejercicio 05
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers c #izquierda
LEFT JOIN orders o #derecha
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;
#Se ocupa el LEFT JOIN para poder acceder a los datos de todos los clientes, incluso aquellos que no han realizado ninguna orden


											#Ejercicio 06
SELECT c.customerNumber, c.customerName
FROM customers c
LEFT JOIN orders o
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;


											#Ejercicio 07
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM employees e
LEFT JOIN customers c
	ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments p
	ON c.customerNumber = p.customerNumber
ORDER BY Empleado;


											#Ejercicio 08
				#Ejercicio 05
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;

				#Ejercicio 06
SELECT c.customerNumber, c.customerName
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;

				#Ejercicio 07
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM payments p
RIGHT JOIN customers c
	ON p.customerNumber = c.customerNumber
RIGHT JOIN employees e
	ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY Empleado;

#A nivel de utilidad, las consultas tienen la misma función, es decir, nos dan el mismo resultado.
#Sin embargo, la sintaxis de la consulta cambia, pues el "anidamiento" de los joins se debe de realizar de manera inversa.


											#Ejercicio 09
		#Primer vista y consulta
CREATE VIEW ClientesOrdenes_262 AS
(SELECT c.customerNumber NumeroCliente, c.customerName NombreCliente, o.orderNumber NumeroOrden, o.status EstadoOrden
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber);
SELECT NumeroCliente, NombreCliente
FROM ClientesOrdenes_262
WHERE NumeroOrden IS NULL;

		#Segunda vista y consulta
CREATE VIEW CostoOrden_262 AS
(SELECT od.orderNumber NumeroOrden, o.status EstadoOrden, SUM(od.quantityOrdered*od.priceEach) CostoTotal
FROM orderdetails od
RIGHT JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY od.orderNumber, o.status
ORDER BY od.orderNumber);
SELECT NumeroOrden, CostoTotal
FROM CostoOrden_262
WHERE CostoTotal > 25000
ORDER BY CostoTotal;

		#Tercer vista y consulta
CREATE VIEW PreciosProductos_262 AS
(SELECT od.orderNumber NumeroOrden, p.productName NombreProducto, p.MSRP PrecioSugerido, od.priceEach PrecioPorPieza
FROM orderdetails od
RIGHT JOIN products p
	ON od.productCode = p.productCode);
Select NombreProducto, PrecioSugerido
FROM PreciosProductos_262
ORDER BY PrecioSugerido;