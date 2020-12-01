## Ejercicios Sesión 2

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de `JetBrains DataGrip` por comodidad).

### 3. Desarrollo :rocket:

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`. 

1. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con `A`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'A%';               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

2. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo apellido termina con `on`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE lastName LIKE '%on';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

3. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena `on`.

```sql
# Respuesta
SELECT employeeNumber,lastname,firstname 
FROM employees 
WHERE firstname LIKE '%on%';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

4. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen seis letras e inician con `G`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE firstName LIKE 'G_____';                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

5. Dentro de la tabla `employees`, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre *no* inicia con `B`.

```sql
# Respuesta
SELECT employeeNumber, lastName, firstName 
FROM employees
WHERE firstName NOT LIKE 'B%';                
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

6. Dentro de la tabla `products`, obten el código de producto y nombre de los productos cuyo código incluye la cadena `_20`.

```sql
# Respuesta
SELECT productCode, productName 
FROM products
WHERE productCode LIKE '%_20%';               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

7. Dentro de la tabla `orderdetails`, obten el total de cada orden.

```sql
# Respuesta
SELECT nombre
SELECT orderNumber, SUM(priceEach) 
FROM orderdetails
GROUP BY orderNumber;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

8. Dentro de la tabla `orders` obten el número de órdenes por año.

```sql
# Respuesta
SELECT YEAR(orderDate), count(*)
FROM orders
GROUP BY YEAR(orderDate);                
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

9. Obten el apellido y nombre de los empleados cuya oficina está ubicada en `USA`.

```sql
# Respuesta
SELECT lastName,firstName 
FROM employees 
WHERE officeCode IN (
		SELECT officeCode 
		FROM offices 
		WHERE country = 'USA');                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

10. Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.

```sql
# Respuesta
SELECT customerNumber, checkNumber, amount 
FROM payments 
ORDER BY amount DESC 
LIMIT 1;                  
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

11. Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.

```sql
# Respuesta
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (
    SELECT avg(amount)
    FROM payments
    )
GROUP BY customerNumber, checkNumber;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

12. Obten el nombre de aquellos clientes que no han hecho ninguna orden.

```sql
# Respuesta
SELECT customerName 
FROM customers
WHERE customerNumber NOT IN 
   (SELECT customerNumber
   FROM orders);               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

13. Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.

```sql
# Respuesta
SELECT max(quantityOrdered) AS max, min(quantityOrdered) AS min, avg(quantityOrdered) AS promedio
FROM orderdetails;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

14. Dentro de la tabla `orders`, obten el número de órdenes que hay por cada estado.

```sql
# Respuesta
SELECT (
	  SELECT state 
		FROM customers 
		WHERE customerNumber = o.customerNumber) AS state, count(*) AS num_orders 
FROM orders AS o
GROUP BY state;                 
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

<br/>
