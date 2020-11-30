## Ejercicios Sesión 1

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado y conectado al servidor del curso (Sin embargo hice uso de `JetBrains DataGrip` por comodidad).

### 3. Desarrollo :rocket:

**En esta serie de ejercicios aplicarás los conceptos adquiridos durante la sesión:**

- Descripción de tablas  
- Consulta de los campos de una tabla  
- Cláusula WHERE  
- Operadores relacionales  
- Operadores lógicos  
- Cláusula ORDER BY  
- Cláusula LIMIT  

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`. Recuerda que para hacer consultas a una tabla debes conocer primero su estructura.

**Deberás entregar el archivo [`.sql`](https://github.com/begeistert/Bedu/blob/main/Sesion-01/Ejercicios.sql) correspondiente**

1. Dentro del mismo servidor de bases de datos, conéctate al esquema `classicmodels`.

```sql
#1
USE classicmodels;                
```

2. Dentro de la tabla `employees`, obtén el apellido de todos los empleados.

```sql
#2
SELECT lastName 
FROM employees;              
```

<details><summary>Resultado (Tabla)</summary>
<p>
	
|#  |lastName                     |
|---|-----------------------------|
|1  |Murphy                       |
|2  |Patterson                    |
|3  |Firrelli                     |
|4  |Patterson                    |
|5  |Bondur                       |
|6  |Bow                          |
|7  |Jennings                     |
|8  |Thompson                     |
|9  |Firrelli                     |
|10 |Patterson                    |
|11 |Tseng                        |
|12 |Vanauf                       |
|13 |Bondur                       |
|14 |Hernandez                    |
|15 |Castillo                     |
|16 |Bott                         |
|17 |Jones                        |
|18 |Fixter                       |
|19 |Marsh                        |
|20 |King                         |
|21 |Nishi                        |
|22 |Kato                         |
|23 |Gerard                       |

</p>
</details>

3. Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados.

```sql
#3
SELECT lastName,firstName,jobTitle 
FROM employees;                
```


<details><summary>Resultado (Tabla)</summary>
<p>
	
|#  |lastName |firstName|jobTitle            |
|---|---------|---------|--------------------|
|1  |Murphy   |Diane    |President           |
|2  |Patterson|Mary     |VP Sales            |
|3  |Firrelli |Jeff     |VP Marketing        |
|4  |Patterson|William  |Sales Manager (APAC)|
|5  |Bondur   |Gerard   |Sale Manager (EMEA) |
|6  |Bow      |Anthony  |Sales Manager (NA)  |
|7  |Jennings |Leslie   |Sales Rep           |
|8  |Thompson |Leslie   |Sales Rep           |
|9  |Firrelli |Julie    |Sales Rep           |
|10 |Patterson|Steve    |Sales Rep           |
|11 |Tseng    |Foon Yue |Sales Rep           |
|12 |Vanauf   |George   |Sales Rep           |
|13 |Bondur   |Loui     |Sales Rep           |
|14 |Hernandez|Gerard   |Sales Rep           |
|15 |Castillo |Pamela   |Sales Rep           |
|16 |Bott     |Larry    |Sales Rep           |
|17 |Jones    |Barry    |Sales Rep           |
|18 |Fixter   |Andy     |Sales Rep           |
|19 |Marsh    |Peter    |Sales Rep           |
|20 |King     |Tom      |Sales Rep           |
|21 |Nishi    |Mami     |Sales Rep           |
|22 |Kato     |Yoshimi  |Sales Rep           |
|23 |Gerard   |Martin   |Sales Rep           |

</p>
</details>

4. Dentro de la tabla `employees`, obtén todos los datos de cada empleado.

```sql
#4
SELECT * 
FROM employees;                
```

5. Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto `Sales Rep`.

```sql
#5
SELECT lastName,firstName,jobTitle 
FROM employees 
WHERE jobTitle = 'Sales Rep';              
```

6. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` y código de oficina `1`.

```sql
#6 
SELECT lastName,firstName,jobTitle, officeCode
FROM employees 
WHERE jobTitle = 'Sales Rep'
  AND officeCode = 1;              
```

7. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` o código de oficina `1`.

```sql
#7 
SELECT lastName,firstName,jobTitle, officeCode
FROM employees 
WHERE jobTitle = 'Sales Rep'
   OR officeCode = 1;               
```

8. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina `1`, `2` o `3`.

```sql
#8 
SELECT lastName,firstName, officeCode
FROM employees 
WHERE officeCode in(1,2,3);              
```

9. Dentro de la tabla `employees`, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a `Sales Rep`.

```sql
#9
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle != 'Sales Rep';               
```

10. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a `5`.

```sql
#10
SELECT lastname, firstName,officeCode
FROM employees
WHERE officeCode > 5;              
```

11. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual `4`.

```sql
#11
SELECT lastName,firstName, officeCode
FROM employees 
WHERE officeCode <= 4;              
```

12. Dentro de la tabla `customers`, obtén el nombre, país y estado de todos los clientes cuyo país sea `USA` y cuyo estado sea `CA`.

```sql
#12
SELECT customerName,country,state 
FROM customers 
WHERE country = 'USA' AND state = 'CA';             
```

13. Dentro de la tabla `customers`, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, `USA`, cuyo estado sea `CA` y cuyo límite de crédito sea mayor a `100000`.

```sql
#13
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA' 
  AND state = 'CA' 
  AND creditLimit > 100000;               
```

14. Dentro de la tabla `customers`, obtén el nombre y país de todos los clientes cuyo país sea `USA` o `France`.

```sql
#14
SELECT customerName, country 
FROM customers 
WHERE country IN ('USA', 'France');               
```

15. Dentro de la tabla `customers`, obtén el nombre, pas y límite de crédito de todos los clientes cuyo país sea `USA` o `France` y cuyo límite de crédito sea mayor a `100000`. Para este ejercicio ten cuidado con los paréntesis.

```sql
#15
SELECT customerName, country, creditLimit
FROM customers
WHERE (country IN ('USA', 'France'))
	AND (creditLimit > 100000);               
```

16. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en `USA` o `France`.

```sql
#16
SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ('USA', 'France');                
```

17. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que *no* se encuentren en `USA` o `France`.

```sql
#17
SELECT officeCode, city, phone, country
FROM offices
WHERE country NOT IN('USA', 'France');            
```

18. Dentro de la tabla `orders`, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número `10165`, `10287` o `10310`.

```sql
#18
SELECT orderNumber, customerNumber, status, shippedDate
FROM orders 
WHERE orderNumber IN (10165,10287,10310);               
```

19. Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.

```sql
#19
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastname;           
```

20. Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma descendente.

```sql
#20
SELECT contactLastName,customerName
FROM customers
ORDER BY contactLastName DESC;              
```

21. Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.

```sql
#21
SELECT customerNumber, contactFirstName
FROM customers
ORDER BY contactLastName DESC, contactFirstName;               
```

22. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).

```sql
#22
SELECT  customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;                
```

23. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo diferente de 0.

```sql
#23
SELECT  customerNumber, customerName, creditLimit
FROM customers
WHERE creditLimit <> 0
ORDER BY creditLimit
LIMIT 5;               
```

</div>

###### [Iván Montiel Cardona](https://github.com/begeistert)
