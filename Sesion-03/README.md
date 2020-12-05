## Ejercicios Sesión 3

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Todos los ejercicios debes hacerlos usando la base `classicmodels`.

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`.  **Recuerda añadir a todos los nombres te dus vistas el sufijo con tu identificador**.

*Para estas consultas usa INNER JOIN*

1. Obtén la cantidad de productos de cada orden.


```sql
# Respuesta
SELECT o.orderNumber, SUM(od.quantityOrdered) TotalProductos
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY o.orderNumber, o.status
ORDER BY o.orderNumber;            
```
---

2. Obten el número de orden, estado y costo total de cada orden.


```sql
# Respuesta
SELECT od.orderNumber, o.status, SUM(od.quantityOrdered*od.priceEach) CostoTotal
FROM orderdetails od
JOIN orders o
	ON od.orderNumber = o.orderNumber
GROUP BY od.orderNumber, o.status
ORDER BY od.orderNumber;             
```

---

3. Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza.


```sql
# Respuesta
SELECT o.orderNumber, o.orderDate, od.orderLineNumber, p.productName, od.quantityOrdered, od.priceEach
FROM products p
JOIN orderdetails od
	ON p.productCode = od.productCode
JOIN orders o
	ON od.orderNumber = o.orderNumber
ORDER BY o.orderNumber;         
```

---

4. Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.


```sql
# Respuesta
SELECT od.orderNumber, p.productName, p.MSRP PrecioSugerido, od.priceEach
FROM orderdetails od
JOIN products p
	ON od.productCode = p.productCode;            
```

---

*Para estas consultas usa LEFT JOIN*

5. Obtén el número de cliente, nombre de cliente, número de orden y estado de cada orden hecha por cada cliente. ¿De qué nos sirve hacer `LEFT JOIN` en lugar de `JOIN`?


```sql
# Respuesta
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers c #izquierda
LEFT JOIN orders o #derecha
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;
# Se ocupa el LEFT JOIN para poder acceder a los datos de todos los clientes, incluso aquellos que no han realizado ninguna orden            
```

---

6. Obtén los clientes que no tienen una orden asociada.


```sql
# Respuesta
SELECT c.customerNumber, c.customerName
FROM customers c
LEFT JOIN orders o
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;            
```

---

7. Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.


```sql
# Respuesta
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM employees e
LEFT JOIN customers c
	ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments p
	ON c.customerNumber = p.customerNumber
ORDER BY Empleado;             
```

*Para estas consultas usa RIGHT JOIN*

8. Repite los ejercicios 5 a 7 usando *RIGHT JOIN*. ¿Representan lo mismo? Explica las diferencias en un comentario. Para poner comentarios usa `--`.

<details><summary>Resultados</summary>
<p>

<details><summary>Ejercicio 5</summary>
<p>

```sql
# Respuesta
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber;         
```

</p>
</details>

<details><summary>Ejercicio 6</summary>
<p>

```sql
# Respuesta
SELECT c.customerNumber, c.customerName
FROM orders o
RIGHT JOIN customers c
	ON c.customerNumber = o.customerNumber
WHERE o.orderNumber IS NULL
ORDER BY c.customerNumber;           
```

</p>
</details>

<details><summary>Ejercicio 7</summary>
<p>

```sql
# Respuesta
SELECT concat(e.lastName,' ',e.firstName) Empleado, c.customerName, p.checkNumber, p.amount
FROM payments p
RIGHT JOIN customers c
	ON p.customerNumber = c.customerNumber
RIGHT JOIN employees e
	ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY Empleado;            
```

</p>
</details>

</p>
</details>

---

9. Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.

<details><summary>Resultados</summary>
<p>

<details><summary>Ejercicio 3</summary>
<p>

```sql
# Respuesta
CREATE VIEW PreciosProductos_773 AS
(SELECT o.orderNumber, o.orderDate, od.orderLineNumber, p.productName NombreProducto, od.quantityOrdered, od.priceEach PrecioPorPieza
FROM products p
JOIN orderdetails od
	ON p.productCode = od.productCode
JOIN orders o
	ON od.orderNumber = o.orderNumber
ORDER BY o.orderNumber;);

Select NombreProducto, PrecioPorPieza
FROM PreciosProductos_773
ORDER BY PrecioPorPieza;
```

</p>
</details>

<details><summary>Ejercicio 5</summary>
<p>


```sql
# Respuesta
CREATE VIEW EstadoOrden_773 AS
(SELECT c.customerNumber, c.customerName CustomerName, o.orderNumber OrderNumber, o.status Status
FROM customers c #izquierda
LEFT JOIN orders o #derecha
	ON c.customerNumber = o.customerNumber
ORDER BY c.customerNumber);

SELECT CustomerName, OrderNumber, Status
FROM EstadoOrden_773;
```

</p>
</details>

<details><summary>Ejercicio 7</summary>
<p>

```sql
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
```

</p>
</details>


</p>
</details>


###### [Iván Montiel Cardona](https://github.com/begeistert)
