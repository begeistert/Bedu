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

---

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

---

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

---

4. Dentro de la tabla `employees`, obtén todos los datos de cada empleado.

```sql
#4
SELECT * 
FROM employees;                
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |employeeNumber|lastName |firstName|extension|email                          |officeCode|reportsTo|jobTitle            |
|---|--------------|---------|---------|---------|-------------------------------|----------|---------|--------------------|
|1  |1002          |Murphy   |Diane    |x5800    |dmurphy@classicmodelcars.com   |1         |         |President           |
|2  |1056          |Patterson|Mary     |x4611    |mpatterso@classicmodelcars.com |1         |1002     |VP Sales            |
|3  |1076          |Firrelli |Jeff     |x9273    |jfirrelli@classicmodelcars.com |1         |1002     |VP Marketing        |
|4  |1088          |Patterson|William  |x4871    |wpatterson@classicmodelcars.com|6         |1056     |Sales Manager (APAC)|
|5  |1102          |Bondur   |Gerard   |x5408    |gbondur@classicmodelcars.com   |4         |1056     |Sale Manager (EMEA) |
|6  |1143          |Bow      |Anthony  |x5428    |abow@classicmodelcars.com      |1         |1056     |Sales Manager (NA)  |
|7  |1165          |Jennings |Leslie   |x3291    |ljennings@classicmodelcars.com |1         |1143     |Sales Rep           |
|8  |1166          |Thompson |Leslie   |x4065    |lthompson@classicmodelcars.com |1         |1143     |Sales Rep           |
|9  |1188          |Firrelli |Julie    |x2173    |jfirrelli@classicmodelcars.com |2         |1143     |Sales Rep           |
|10 |1216          |Patterson|Steve    |x4334    |spatterson@classicmodelcars.com|2         |1143     |Sales Rep           |
|11 |1286          |Tseng    |Foon Yue |x2248    |ftseng@classicmodelcars.com    |3         |1143     |Sales Rep           |
|12 |1323          |Vanauf   |George   |x4102    |gvanauf@classicmodelcars.com   |3         |1143     |Sales Rep           |
|13 |1337          |Bondur   |Loui     |x6493    |lbondur@classicmodelcars.com   |4         |1102     |Sales Rep           |
|14 |1370          |Hernandez|Gerard   |x2028    |ghernande@classicmodelcars.com |4         |1102     |Sales Rep           |
|15 |1401          |Castillo |Pamela   |x2759    |pcastillo@classicmodelcars.com |4         |1102     |Sales Rep           |
|16 |1501          |Bott     |Larry    |x2311    |lbott@classicmodelcars.com     |7         |1102     |Sales Rep           |
|17 |1504          |Jones    |Barry    |x102     |bjones@classicmodelcars.com    |7         |1102     |Sales Rep           |
|18 |1611          |Fixter   |Andy     |x101     |afixter@classicmodelcars.com   |6         |1088     |Sales Rep           |
|19 |1612          |Marsh    |Peter    |x102     |pmarsh@classicmodelcars.com    |6         |1088     |Sales Rep           |
|20 |1619          |King     |Tom      |x103     |tking@classicmodelcars.com     |6         |1088     |Sales Rep           |
|21 |1621          |Nishi    |Mami     |x101     |mnishi@classicmodelcars.com    |5         |1056     |Sales Rep           |
|22 |1625          |Kato     |Yoshimi  |x102     |ykato@classicmodelcars.com     |5         |1621     |Sales Rep           |
|23 |1702          |Gerard   |Martin   |x2312    |mgerard@classicmodelcars.com   |4         |1102     |Sales Rep           |


</p>
</details>

---

5. Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto `Sales Rep`.

```sql
#5
SELECT lastName,firstName,jobTitle 
FROM employees 
WHERE jobTitle = 'Sales Rep';              
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName|firstName|jobTitle|
|---|--------|---------|--------|
|1  |Jennings|Leslie   |Sales Rep|
|2  |Thompson|Leslie   |Sales Rep|
|3  |Firrelli|Julie    |Sales Rep|
|4  |Patterson|Steve    |Sales Rep|
|5  |Tseng   |Foon Yue |Sales Rep|
|6  |Vanauf  |George   |Sales Rep|
|7  |Bondur  |Loui     |Sales Rep|
|8  |Hernandez|Gerard   |Sales Rep|
|9  |Castillo|Pamela   |Sales Rep|
|10 |Bott    |Larry    |Sales Rep|
|11 |Jones   |Barry    |Sales Rep|
|12 |Fixter  |Andy     |Sales Rep|
|13 |Marsh   |Peter    |Sales Rep|
|14 |King    |Tom      |Sales Rep|
|15 |Nishi   |Mami     |Sales Rep|
|16 |Kato    |Yoshimi  |Sales Rep|
|17 |Gerard  |Martin   |Sales Rep|


</p>
</details>

---

6. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` y código de oficina `1`.

```sql
#6 
SELECT lastName,firstName,jobTitle, officeCode
FROM employees 
WHERE jobTitle = 'Sales Rep'
  AND officeCode = 1;              
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName|firstName|jobTitle |officeCode|
|---|--------|---------|---------|----------|
|1  |Jennings|Leslie   |Sales Rep|1         |
|2  |Thompson|Leslie   |Sales Rep|1         |

</p>
</details>

---

7. Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` o código de oficina `1`.

```sql
#7 
SELECT lastName,firstName,jobTitle, officeCode
FROM employees 
WHERE jobTitle = 'Sales Rep'
   OR officeCode = 1;               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName |firstName|jobTitle          |officeCode|
|---|---------|---------|------------------|----------|
|1  |Murphy   |Diane    |President         |1         |
|2  |Patterson|Mary     |VP Sales          |1         |
|3  |Firrelli |Jeff     |VP Marketing      |1         |
|4  |Bow      |Anthony  |Sales Manager (NA)|1         |
|5  |Jennings |Leslie   |Sales Rep         |1         |
|6  |Thompson |Leslie   |Sales Rep         |1         |
|7  |Firrelli |Julie    |Sales Rep         |2         |
|8  |Patterson|Steve    |Sales Rep         |2         |
|9  |Tseng    |Foon Yue |Sales Rep         |3         |
|10 |Vanauf   |George   |Sales Rep         |3         |
|11 |Bondur   |Loui     |Sales Rep         |4         |
|12 |Hernandez|Gerard   |Sales Rep         |4         |
|13 |Castillo |Pamela   |Sales Rep         |4         |
|14 |Bott     |Larry    |Sales Rep         |7         |
|15 |Jones    |Barry    |Sales Rep         |7         |
|16 |Fixter   |Andy     |Sales Rep         |6         |
|17 |Marsh    |Peter    |Sales Rep         |6         |
|18 |King     |Tom      |Sales Rep         |6         |
|19 |Nishi    |Mami     |Sales Rep         |5         |
|20 |Kato     |Yoshimi  |Sales Rep         |5         |
|21 |Gerard   |Martin   |Sales Rep         |4         |

</p>
</details>

---
8. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina `1`, `2` o `3`.

```sql
#8 
SELECT lastName,firstName, officeCode
FROM employees 
WHERE officeCode in(1,2,3);              
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName |firstName|officeCode|
|---|---------|---------|----------|
|1  |Murphy   |Diane    |1         |
|2  |Patterson|Mary     |1         |
|3  |Firrelli |Jeff     |1         |
|4  |Bow      |Anthony  |1         |
|5  |Jennings |Leslie   |1         |
|6  |Thompson |Leslie   |1         |
|7  |Firrelli |Julie    |2         |
|8  |Patterson|Steve    |2         |
|9  |Tseng    |Foon Yue |3         |
|10 |Vanauf   |George   |3         |

</p>
</details>

---
9. Dentro de la tabla `employees`, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a `Sales Rep`.

```sql
#9
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle != 'Sales Rep';               
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

</p>
</details>

---
10. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a `5`.

```sql
#10
SELECT lastname, firstName,officeCode
FROM employees
WHERE officeCode > 5;              
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastname |firstName|officeCode|
|---|---------|---------|----------|
|1  |Patterson|William  |6         |
|2  |Bott     |Larry    |7         |
|3  |Jones    |Barry    |7         |
|4  |Fixter   |Andy     |6         |
|5  |Marsh    |Peter    |6         |
|6  |King     |Tom      |6         |

</p>
</details>

---
11. Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual `4`.

```sql
#11
SELECT lastName,firstName, officeCode
FROM employees 
WHERE officeCode <= 4;              
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |lastName|firstName|officeCode|
|---|--------|---------|----------|
|1  |Murphy  |Diane    |1         |
|2  |Patterson|Mary     |1         |
|3  |Firrelli|Jeff     |1         |
|4  |Bondur  |Gerard   |4         |
|5  |Bow     |Anthony  |1         |
|6  |Jennings|Leslie   |1         |
|7  |Thompson|Leslie   |1         |
|8  |Firrelli|Julie    |2         |
|9  |Patterson|Steve    |2         |
|10 |Tseng   |Foon Yue |3         |
|11 |Vanauf  |George   |3         |
|12 |Bondur  |Loui     |4         |
|13 |Hernandez|Gerard   |4         |
|14 |Castillo|Pamela   |4         |
|15 |Gerard  |Martin   |4         |


</p>
</details>

---
12. Dentro de la tabla `customers`, obtén el nombre, país y estado de todos los clientes cuyo país sea `USA` y cuyo estado sea `CA`.

```sql
#12
SELECT customerName,country,state 
FROM customers 
WHERE country = 'USA' AND state = 'CA';             
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerName                |country|state|
|---|----------------------------|-------|-----|
|1  |Mini Gifts Distributors Ltd.|USA    |CA   |
|2  |Mini Wheels Co.             |USA    |CA   |
|3  |Technics Stores Inc.        |USA    |CA   |
|4  |Toys4GrownUps.com           |USA    |CA   |
|5  |Boards & Toys Co.           |USA    |CA   |
|6  |Collectable Mini Designs Co.|USA    |CA   |
|7  |Corporate Gift Ideas Co.    |USA    |CA   |
|8  |Men 'R' US Retailers, Ltd.  |USA    |CA   |
|9  |The Sharp Gifts Warehouse   |USA    |CA   |
|10 |West Coast Collectables Co. |USA    |CA   |

</p>
</details>

---
13. Dentro de la tabla `customers`, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, `USA`, cuyo estado sea `CA` y cuyo límite de crédito sea mayor a `100000`.

```sql
#13
SELECT customerName, country, state, creditLimit
FROM customers
WHERE country = 'USA' 
  AND state = 'CA' 
  AND creditLimit > 100000;               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerName                |country|state|creditLimit|
|---|----------------------------|-------|-----|-----------|
|1  |Mini Gifts Distributors Ltd.|USA    |CA   |210500.00  |
|2  |Collectable Mini Designs Co.|USA    |CA   |105000.00  |
|3  |Corporate Gift Ideas Co.    |USA    |CA   |105000.00  |

</p>
</details>

---
14. Dentro de la tabla `customers`, obtén el nombre y país de todos los clientes cuyo país sea `USA` o `France`.

```sql
#14
SELECT customerName, country 
FROM customers 
WHERE country IN ('USA', 'France');               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerName                |country|
|---|----------------------------|-------|
|1  |Atelier graphique           |France |
|2  |Signal Gift Stores          |USA    |
|3  |La Rochelle Gifts           |France |
|4  |Mini Gifts Distributors Ltd.|USA    |
|5  |Mini Wheels Co.             |USA    |
|6  |Land of Toys Inc.           |USA    |
|7  |Saveley & Henriot, Co.      |France |
|8  |Muscle Machine Inc          |USA    |
|9  |Diecast Classics Inc.       |USA    |
|10 |Technics Stores Inc.        |USA    |
|11 |American Souvenirs Inc      |USA    |
|12 |Daedalus Designs Imports    |France |
|13 |La Corne D'abondance, Co.   |France |
|14 |Cambridge Collectables Co.  |USA    |
|15 |Gift Depot Inc.             |USA    |
|16 |Vitachrome Inc.             |USA    |
|17 |Auto-Moto Classics Inc.     |USA    |
|18 |Online Mini Collectables    |USA    |
|19 |Toys4GrownUps.com           |USA    |
|20 |Mini Caravy                 |France |
|21 |Boards & Toys Co.           |USA    |
|22 |Collectable Mini Designs Co.|USA    |
|23 |Alpha Cognac                |France |
|24 |Lyon Souveniers             |France |
|25 |Auto Associés & Cie.        |France |
|26 |Marta's Replicas Co.        |USA    |
|27 |Mini Classics               |USA    |
|28 |Mini Creations Ltd.         |USA    |
|29 |Corporate Gift Ideas Co.    |USA    |
|30 |Tekni Collectables Inc.     |USA    |
|31 |Classic Gift Ideas, Inc     |USA    |
|32 |Men 'R' US Retailers, Ltd.  |USA    |
|33 |Marseille Mini Autos        |France |
|34 |Reims Collectables          |France |
|35 |Gifts4AllAges.com           |USA    |
|36 |Online Diecast Creations Co.|USA    |
|37 |Collectables For Less Inc.  |USA    |
|38 |Auto Canal+ Petit           |France |
|39 |Classic Legends Inc.        |USA    |
|40 |Gift Ideas Corp.            |USA    |
|41 |The Sharp Gifts Warehouse   |USA    |
|42 |Super Scale Inc.            |USA    |
|43 |Microscale Inc.             |USA    |
|44 |FunGiftIdeas.com            |USA    |
|45 |West Coast Collectables Co. |USA    |
|46 |Motor Mint Distributors Inc.|USA    |
|47 |Signal Collectibles Ltd.    |USA    |
|48 |Diecast Collectables        |USA    |


</p>
</details>

---
15. Dentro de la tabla `customers`, obtén el nombre, pas y límite de crédito de todos los clientes cuyo país sea `USA` o `France` y cuyo límite de crédito sea mayor a `100000`. Para este ejercicio ten cuidado con los paréntesis.

```sql
#15
SELECT customerName, country, creditLimit
FROM customers
WHERE (country IN ('USA', 'France'))
	AND (creditLimit > 100000);               
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |customerName                |country|creditLimit|
|---|----------------------------|-------|-----------|
|1  |La Rochelle Gifts           |France |118200.00  |
|2  |Mini Gifts Distributors Ltd.|USA    |210500.00  |
|3  |Land of Toys Inc.           |USA    |114900.00  |
|4  |Saveley & Henriot, Co.      |France |123900.00  |
|5  |Muscle Machine Inc          |USA    |138500.00  |
|6  |Diecast Classics Inc.       |USA    |100600.00  |
|7  |Collectable Mini Designs Co.|USA    |105000.00  |
|8  |Marta's Replicas Co.        |USA    |123700.00  |
|9  |Mini Classics               |USA    |102700.00  |
|10 |Corporate Gift Ideas Co.    |USA    |105000.00  |
|11 |Online Diecast Creations Co.|USA    |114200.00  |


</p>
</details>

---
16. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en `USA` o `France`.

```sql
#16
SELECT officeCode, city, phone, country
FROM offices
WHERE country IN ('USA', 'France');                
```

<details><summary>Resultado (Tabla)</summary>
<p>

|#  |officeCode|city         |phone          |country|
|---|----------|-------------|---------------|-------|
|1  |1         |San Francisco|+1 650 219 4782|USA    |
|2  |2         |Boston       |+1 215 837 0825|USA    |
|3  |3         |NYC          |+1 212 555 3000|USA    |
|4  |4         |Paris        |+33 14 723 4404|France |

</p>
</details>

---
17. Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que *no* se encuentren en `USA` o `France`.

```sql
#17
SELECT officeCode, city, phone, country
FROM offices
WHERE country NOT IN('USA', 'France');            
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
18. Dentro de la tabla `orders`, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número `10165`, `10287` o `10310`.

```sql
#18
SELECT orderNumber, customerNumber, status, shippedDate
FROM orders 
WHERE orderNumber IN (10165,10287,10310);               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
19. Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.

```sql
#19
SELECT contactLastName, customerName
FROM customers
ORDER BY contactLastname;           
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
20. Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma descendente.

```sql
#20
SELECT contactLastName,customerName
FROM customers
ORDER BY contactLastName DESC;              
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
21. Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.

```sql
#21
SELECT customerNumber, contactFirstName
FROM customers
ORDER BY contactLastName DESC, contactFirstName;               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
22. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).

```sql
#22
SELECT  customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;                
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---
23. Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo diferente de 0.

```sql
#23
SELECT  customerNumber, customerName, creditLimit
FROM customers
WHERE creditLimit <> 0
ORDER BY creditLimit
LIMIT 5;               
```

<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

</div>

###### [Iván Montiel Cardona](https://github.com/begeistert)
