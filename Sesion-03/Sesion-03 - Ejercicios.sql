#Ejercicios - Sesión 03
USE classicmodels;

# 1
SELECT o.orderNumber, SUM(od.quantityOrdered) TotalProductos
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY o.orderNumber, o.status
ORDER BY o.orderNumber;

#2
SELECT od.orderNumber, o.status, SUM(od.quantityOrdered*od.priceEach) CostoTotal
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY od.orderNumber, o.status
ORDER BY od.orderNumber;

# 3
SELECT o.orderNumber, o.orderDate, od.orderLineNumber, p.productName, od.quantityOrdered, od.priceEach
FROM products p
JOIN orderdetails od
	ON p.productCode = od.productCode
JOIN orders o
	ON od.orderNumber = o.orderNumber
ORDER BY o.orderNumber;

# 4
SELECT od.orderNumber, p.productName, p.MSRP PrecioSugerido, od.priceEach
FROM orderdetails od
JOIN products p
	ON od.productCode = p.productCode;
    
# 5
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers c #izquierda
LEFT JOIN orders o #derecha
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;
#Se ocupa el LEFT JOIN para poder acceder a los datos de todos los clientes, incluso aquellos que no han realizado ninguna orden

# 6
SELECT c.customerNumber, c.customerName
FROM customers c
LEFT JOIN orders o
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;

# 7
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM employees e
LEFT JOIN customers c
	ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments p
	ON c.customerNumber = p.customerNumber
ORDER BY Empleado;

# 8
  # Ejercicio 5
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;

 # Ejercicio 6
SELECT c.customerNumber, c.customerName
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;

  # Ejercicio 7
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM payments p
RIGHT JOIN customers c
	ON p.customerNumber = c.customerNumber
RIGHT JOIN employees e
	ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY Empleado;

#A nivel de utilidad, las consultas tienen la misma función, es decir, nos dan el mismo resultado.
#Sin embargo, la sintaxis de la consulta cambia, pues el "anidamiento" de los joins se debe de realizar de manera inversa.


# 9
  # Ejercicio 3
CREATE VIEW PreciosProductos_773 AS
(SELECT o.orderNumber, o.orderDate, od.orderLineNumber, p.productName NombreProducto, od.quantityOrdered, od.priceEach PrecioPorPieza
FROM products p
JOIN orderdetails od
	ON p.productCode = od.productCode
JOIN orders o
	ON od.orderNumber = o.orderNumber
ORDER BY o.orderNumber);

Select NombreProducto, PrecioPorPieza
FROM PreciosProductos_773
ORDER BY PrecioPorPieza;

  # Ejercicio 5
CREATE VIEW EstadoOrden_773 AS
(SELECT c.customerNumber, c.customerName CustomerName, o.orderNumber OrderNumber, o.status Status
FROM customers c #izquierda
LEFT JOIN orders o #derecha
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber);

SELECT CustomerName, OrderNumber, Status
FROM EstadoOrden_773;

  # Ejercicio 7
CREATE VIEW ClientesAsociados_773 AS
(SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName Customer, p.checkNumber CheckNumber, p.amount Amount
FROM employees e
LEFT JOIN customers c
	ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments p
	ON c.customerNumber = p.customerNumber
ORDER BY Empleado);

SELECT *
FROM ClientesAsociados_773
WHERE Amount > 5000;