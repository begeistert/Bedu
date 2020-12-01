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

|#  |officeCode|city  |phone           |country  |
|---|----------|------|----------------|---------|
|1  |5         |Tokyo |+81 33 224 5000 |Japan    |
|2  |6         |Sydney|+61 2 9264 2451 |Australia|
|3  |7         |London|+44 20 7877 2041|UK       |

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

|#  |orderNumber|customerNumber|status |shippedDate|
|---|-----------|--------------|-------|-----------|
|1  |10165      |148           |Shipped|2003-12-26 |
|2  |10287      |298           |Shipped|2004-09-01 |
|3  |10310      |259           |Shipped|2004-10-18 |

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

|#  |contactLastName|customerName                      |
|---|---------------|----------------------------------|
|1  |Accorti        |Amica Models & Co.                |
|2  |Altagar,G M    |Raanan Stores, Inc                |
|3  |Andersen       |Der Hund Imports                  |
|4  |Anton          |Anton Designs, Ltd.               |
|5  |Ashworth       |AV Stores, Co.                    |
|6  |Barajas        |Online Mini Collectables          |
|7  |Benitez        |FunGiftIdeas.com                  |
|8  |Bennett        |giftsbymail.co.uk                 |
|9  |Berglund       |Volvo Model Replicas, Co          |
|10 |Bergulfsen     |Baane Mini Imports                |
|11 |Bertrand       |La Corne D'abondance, Co.         |
|12 |Brown          |Corporate Gift Ideas Co.          |
|13 |Brown          |Stylish Desk Decors, Co.          |
|14 |Brown          |Tekni Collectables Inc.           |
|15 |Calaghan       |Australian Gift Network, Co       |
|16 |Camino         |ANG Resellers                     |
|17 |Cartrain       |Royale Belge                      |
|18 |Cassidy        |Clover Collections, Co.           |
|19 |Cervantes      |Classic Gift Ideas, Inc           |
|20 |Chandler       |Men 'R' US Retailers, Ltd.        |
|21 |Choi           |Microscale Inc.                   |
|22 |Citeaux        |Mini Caravy                       |
|23 |Clenahan       |Australian Collectables, Ltd      |
|24 |Cramer         |Cramer Spezialitäten, Ltd         |
|25 |Cruz           |Cruz & Sons Co.                   |
|26 |Da Silva       |Lyon Souveniers                   |
|27 |de Castro      |Porto Imports Co.                 |
|28 |Devon          |UK Collectables, Ltd.             |
|29 |Dewey          |Petit Auto                        |
|30 |Donnermeyer    |Bavarian Collectables Imports, Co.|
|31 |Ferguson       |Australian Collectors, Co.        |
|32 |Fernandez      |CAF Imports                       |
|33 |Feuer          |Feuer Online Stores, Inc          |
|34 |Franco         |American Souvenirs Inc            |
|35 |Franco         |Diecast Collectables              |
|36 |Franken        |Franken Gifts, Co                 |
|37 |Fresnière      |Québec Home Shopping Network      |
|38 |Freyre         |Euro+ Shopping Channel            |
|39 |Frick          |Vitachrome Inc.                   |
|40 |Frick          |Mini Classics                     |
|41 |Frick          |The Sharp Gifts Warehouse         |
|42 |Gao            |King Kong Collectables, Co.       |
|43 |Graham         |Down Under Souveniers, Inc        |
|44 |Harrison       |BG&E Collectables                 |
|45 |Hashimoto      |Technics Stores Inc.              |
|46 |Henriot        |Reims Collectables                |
|47 |Hernandez      |Marta's Replicas Co.              |
|48 |Hernandez      |Classic Legends Inc.              |
|49 |Holz           |Vida Sport, Ltd                   |
|50 |Huang          |Mini Creations Ltd.               |
|51 |Huxley         |Souveniers And Things Co.         |
|52 |Ibsen          |Heintze Collectables              |
|53 |Josephs        |Kommission Auto                   |
|54 |Karttunen      |Toys of Finland, Co.              |
|55 |Keitel         |Blauer See Auto, Co.              |
|56 |Kentary        |Osaka Souveniers Co.              |
|57 |King           |Signal Gift Stores                |
|58 |King           |Gift Depot Inc.                   |
|59 |Klaeboe        |Norway Gifts By Mail, Co.         |
|60 |Kloss          |Natürlich Autos                   |
|61 |Koskitalo      |Oulu Toy Supplies, Inc.           |
|62 |Kuger          |SAR Distributors, Co              |
|63 |Labrune        |La Rochelle Gifts                 |
|64 |Larsson        |Scandinavian Gift Ideas           |
|65 |Lebihan        |Marseille Mini Autos              |
|66 |Lee            |Land of Toys Inc.                 |
|67 |Leong          |Diecast Classics Inc.             |
|68 |Lewis          |Gift Ideas Corp.                  |
|69 |Lincoln        |Royal Canadian Collectables, Ltd. |
|70 |MacKinlay      |GiftsForHim.com                   |
|71 |McKenna        |Asian Treasures, Inc.             |
|72 |McRoy          |Extreme Desk Decorations, Ltd     |
|73 |Mendel         |Mini Auto Werke                   |
|74 |Messner        |Messner Shopping Network          |
|75 |Moos           |Mit Vergnügen & Co.               |
|76 |Moroni         |L'ordine Souveniers               |
|77 |Murphy         |Mini Wheels Co.                   |
|78 |Murphy         |Super Scale Inc.                  |
|79 |Müller         |Stuttgart Collectable Exchange    |
|80 |Natividad      |Dragon Souveniers, Ltd.           |
|81 |Nelson         |Mini Gifts Distributors Ltd.      |
|82 |Nelson         |Collectables For Less Inc.        |
|83 |O'Hara         |Anna's Decorations, Ltd           |
|84 |Oeztan         |Herkku Gifts                      |
|85 |Ottlieb        |Warburg Exchange                  |
|86 |Perrier        |Auto Canal+ Petit                 |
|87 |Petersen       |Danish Wholesale Imports          |
|88 |Pfalzheim      |Toms Spezialitäten, Ltd           |
|89 |Piestrzeniewicz|Havel & Zbyszek Co                |
|90 |Pipps          |Salzburg Collectables             |
|91 |Rancé          |Daedalus Designs Imports          |
|92 |Ricotti        |Frau da Collezione                |
|93 |Rodriguez      |Lisboa Souveniers, Inc            |
|94 |Roel           |Iberia Gift Imports, Corp.        |
|95 |Roulet         |Alpha Cognac                      |
|96 |Rovelli        |Rovelli Gifts                     |
|97 |Saavedra       |Enaco Distributors                |
|98 |Salazar        |Motor Mint Distributors Inc.      |
|99 |Saveley        |Saveley & Henriot, Co.            |
|100|Schmitt        |Atelier graphique                 |
|101|Schuyler       |Schuyler Imports                  |
|102|Semenov        |Kremlin Collectables, Co.         |
|103|Shimamura      |Tokyo Collectables, Ltd           |
|104|Smith          |Double Decker Gift Stores, Ltd    |
|105|Snowden        |Kelly's Gift Shop                 |
|106|Sommer         |Corrida Auto Replicas, Ltd        |
|107|Suominen       |Suominen Souveniers               |
|108|Tamuri         |Canadian Gift Exchange Network    |
|109|Taylor         |Auto-Moto Classics Inc.           |
|110|Taylor         |Signal Collectibles Ltd.          |
|111|Thompson       |Collectable Mini Designs Co.      |
|112|Thompson       |West Coast Collectables Co.       |
|113|Tonini         |Auto Associés & Cie.              |
|114|Tseng          |Cambridge Collectables Co.        |
|115|Urs            |Precious Collectables             |
|116|Victorino      |Handji Gifts& Co                  |
|117|Walker         |Asian Shopping Network, Co        |
|118|Yoshido        |Gifts4AllAges.com                 |
|119|Young          |Muscle Machine Inc                |
|120|Young          |Toys4GrownUps.com                 |
|121|Young          |Boards & Toys Co.                 |
|122|Young          |Online Diecast Creations Co.      |

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

|#  |contactLastName|customerName                      |
|---|---------------|----------------------------------|
|1  |Young          |Muscle Machine Inc                |
|2  |Young          |Toys4GrownUps.com                 |
|3  |Young          |Boards & Toys Co.                 |
|4  |Young          |Online Diecast Creations Co.      |
|5  |Yoshido        |Gifts4AllAges.com                 |
|6  |Walker         |Asian Shopping Network, Co        |
|7  |Victorino      |Handji Gifts& Co                  |
|8  |Urs            |Precious Collectables             |
|9  |Tseng          |Cambridge Collectables Co.        |
|10 |Tonini         |Auto Associés & Cie.              |
|11 |Thompson       |Collectable Mini Designs Co.      |
|12 |Thompson       |West Coast Collectables Co.       |
|13 |Taylor         |Auto-Moto Classics Inc.           |
|14 |Taylor         |Signal Collectibles Ltd.          |
|15 |Tamuri         |Canadian Gift Exchange Network    |
|16 |Suominen       |Suominen Souveniers               |
|17 |Sommer         |Corrida Auto Replicas, Ltd        |
|18 |Snowden        |Kelly's Gift Shop                 |
|19 |Smith          |Double Decker Gift Stores, Ltd    |
|20 |Shimamura      |Tokyo Collectables, Ltd           |
|21 |Semenov        |Kremlin Collectables, Co.         |
|22 |Schuyler       |Schuyler Imports                  |
|23 |Schmitt        |Atelier graphique                 |
|24 |Saveley        |Saveley & Henriot, Co.            |
|25 |Salazar        |Motor Mint Distributors Inc.      |
|26 |Saavedra       |Enaco Distributors                |
|27 |Rovelli        |Rovelli Gifts                     |
|28 |Roulet         |Alpha Cognac                      |
|29 |Roel           |Iberia Gift Imports, Corp.        |
|30 |Rodriguez      |Lisboa Souveniers, Inc            |
|31 |Ricotti        |Frau da Collezione                |
|32 |Rancé          |Daedalus Designs Imports          |
|33 |Pipps          |Salzburg Collectables             |
|34 |Piestrzeniewicz|Havel & Zbyszek Co                |
|35 |Pfalzheim      |Toms Spezialitäten, Ltd           |
|36 |Petersen       |Danish Wholesale Imports          |
|37 |Perrier        |Auto Canal+ Petit                 |
|38 |Ottlieb        |Warburg Exchange                  |
|39 |Oeztan         |Herkku Gifts                      |
|40 |O'Hara         |Anna's Decorations, Ltd           |
|41 |Nelson         |Mini Gifts Distributors Ltd.      |
|42 |Nelson         |Collectables For Less Inc.        |
|43 |Natividad      |Dragon Souveniers, Ltd.           |
|44 |Müller         |Stuttgart Collectable Exchange    |
|45 |Murphy         |Mini Wheels Co.                   |
|46 |Murphy         |Super Scale Inc.                  |
|47 |Moroni         |L'ordine Souveniers               |
|48 |Moos           |Mit Vergnügen & Co.               |
|49 |Messner        |Messner Shopping Network          |
|50 |Mendel         |Mini Auto Werke                   |
|51 |McRoy          |Extreme Desk Decorations, Ltd     |
|52 |McKenna        |Asian Treasures, Inc.             |
|53 |MacKinlay      |GiftsForHim.com                   |
|54 |Lincoln        |Royal Canadian Collectables, Ltd. |
|55 |Lewis          |Gift Ideas Corp.                  |
|56 |Leong          |Diecast Classics Inc.             |
|57 |Lee            |Land of Toys Inc.                 |
|58 |Lebihan        |Marseille Mini Autos              |
|59 |Larsson        |Scandinavian Gift Ideas           |
|60 |Labrune        |La Rochelle Gifts                 |
|61 |Kuger          |SAR Distributors, Co              |
|62 |Koskitalo      |Oulu Toy Supplies, Inc.           |
|63 |Kloss          |Natürlich Autos                   |
|64 |Klaeboe        |Norway Gifts By Mail, Co.         |
|65 |King           |Signal Gift Stores                |
|66 |King           |Gift Depot Inc.                   |
|67 |Kentary        |Osaka Souveniers Co.              |
|68 |Keitel         |Blauer See Auto, Co.              |
|69 |Karttunen      |Toys of Finland, Co.              |
|70 |Josephs        |Kommission Auto                   |
|71 |Ibsen          |Heintze Collectables              |
|72 |Huxley         |Souveniers And Things Co.         |
|73 |Huang          |Mini Creations Ltd.               |
|74 |Holz           |Vida Sport, Ltd                   |
|75 |Hernandez      |Marta's Replicas Co.              |
|76 |Hernandez      |Classic Legends Inc.              |
|77 |Henriot        |Reims Collectables                |
|78 |Hashimoto      |Technics Stores Inc.              |
|79 |Harrison       |BG&E Collectables                 |
|80 |Graham         |Down Under Souveniers, Inc        |
|81 |Gao            |King Kong Collectables, Co.       |
|82 |Frick          |Vitachrome Inc.                   |
|83 |Frick          |Mini Classics                     |
|84 |Frick          |The Sharp Gifts Warehouse         |
|85 |Freyre         |Euro+ Shopping Channel            |
|86 |Fresnière      |Québec Home Shopping Network      |
|87 |Franken        |Franken Gifts, Co                 |
|88 |Franco         |American Souvenirs Inc            |
|89 |Franco         |Diecast Collectables              |
|90 |Feuer          |Feuer Online Stores, Inc          |
|91 |Fernandez      |CAF Imports                       |
|92 |Ferguson       |Australian Collectors, Co.        |
|93 |Donnermeyer    |Bavarian Collectables Imports, Co.|
|94 |Dewey          |Petit Auto                        |
|95 |Devon          |UK Collectables, Ltd.             |
|96 |de Castro      |Porto Imports Co.                 |
|97 |Da Silva       |Lyon Souveniers                   |
|98 |Cruz           |Cruz & Sons Co.                   |
|99 |Cramer         |Cramer Spezialitäten, Ltd         |
|100|Clenahan       |Australian Collectables, Ltd      |
|101|Citeaux        |Mini Caravy                       |
|102|Choi           |Microscale Inc.                   |
|103|Chandler       |Men 'R' US Retailers, Ltd.        |
|104|Cervantes      |Classic Gift Ideas, Inc           |
|105|Cassidy        |Clover Collections, Co.           |
|106|Cartrain       |Royale Belge                      |
|107|Camino         |ANG Resellers                     |
|108|Calaghan       |Australian Gift Network, Co       |
|109|Brown          |Corporate Gift Ideas Co.          |
|110|Brown          |Stylish Desk Decors, Co.          |
|111|Brown          |Tekni Collectables Inc.           |
|112|Bertrand       |La Corne D'abondance, Co.         |
|113|Bergulfsen     |Baane Mini Imports                |
|114|Berglund       |Volvo Model Replicas, Co          |
|115|Bennett        |giftsbymail.co.uk                 |
|116|Benitez        |FunGiftIdeas.com                  |
|117|Barajas        |Online Mini Collectables          |
|118|Ashworth       |AV Stores, Co.                    |
|119|Anton          |Anton Designs, Ltd.               |
|120|Andersen       |Der Hund Imports                  |
|121|Altagar,G M    |Raanan Stores, Inc                |
|122|Accorti        |Amica Models & Co.                |

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

|#  |customerNumber|contactFirstName|
|---|--------------|----------------|
|1  |363           |Dorothy         |
|2  |151           |Jeff            |
|3  |205           |Julie           |
|4  |219           |Mary            |
|5  |362           |Juri            |
|6  |206           |Brydey          |
|7  |166           |Wendy           |
|8  |376           |Braun           |
|9  |173           |Jerry           |
|10 |256           |Daniel          |
|11 |475           |Steve           |
|12 |239           |Valarie         |
|13 |198           |Leslie          |
|14 |487           |Sue             |
|15 |202           |Yoshi           |
|16 |334           |Kalle           |
|17 |458           |Martín          |
|18 |496           |Tony            |
|19 |489           |Thomas          |
|20 |398           |Akiko           |
|21 |480           |Alexander       |
|22 |303           |Bradley         |
|23 |103           |Carine          |
|24 |146           |Mary            |
|25 |486           |Rosa            |
|26 |216           |Eduardo         |
|27 |278           |Giovanni        |
|28 |242           |Annette         |
|29 |484           |José Pedro      |
|30 |369           |Lino            |
|31 |473           |Franco          |
|32 |171           |Martine         |
|33 |382           |Georg           |
|34 |125           |Zbyszek         |
|35 |259           |Henriette       |
|36 |145           |Jytte           |
|37 |406           |Dominique       |
|38 |459           |Sven            |
|39 |167           |Veysel          |
|40 |276           |Anna            |
|41 |379           |Allen           |
|42 |124           |Susan           |
|43 |148           |Eric            |
|44 |409           |Rita            |
|45 |129           |Julie           |
|46 |455           |Leslie          |
|47 |386           |Maurizio        |
|48 |477           |Hanna           |
|49 |247           |Renate          |
|50 |452           |Roland          |
|51 |412           |Sarah           |
|52 |348           |Patricia        |
|53 |357           |Wales           |
|54 |260           |Elizabeth       |
|55 |447           |Dan             |
|56 |157           |Kelvin          |
|57 |131           |Kwai            |
|58 |350           |Laurence        |
|59 |448           |Martha          |
|60 |119           |Janine          |
|61 |356           |Armand          |
|62 |311           |Pirkko          |
|63 |223           |Horst           |
|64 |299           |Jan             |
|65 |112           |Jean            |
|66 |175           |Julie           |
|67 |177           |Mory            |
|68 |128           |Roland          |
|69 |186           |Matti           |
|70 |361           |Karin           |
|71 |227           |Palle           |
|72 |282           |Adrian          |
|73 |320           |Wing            |
|74 |298           |Mihael          |
|75 |424           |Maria           |
|76 |286           |Marta           |
|77 |353           |Paul            |
|78 |161           |Juri            |
|79 |293           |Ed              |
|80 |323           |Mike            |
|81 |211           |Mike            |
|82 |181           |Michael         |
|83 |319           |Steve           |
|84 |450           |Sue             |
|85 |141           |Diego           |
|86 |233           |Jean            |
|87 |273           |Peter           |
|88 |168           |Keith           |
|89 |495           |Valarie         |
|90 |443           |Alexander       |
|91 |344           |Jesus           |
|92 |114           |Peter           |
|93 |415           |Michael         |
|94 |314           |Catherine       |
|95 |201           |Elizabeth       |
|96 |169           |Isabel          |
|97 |250           |Daniel          |
|98 |385           |Arnold          |
|99 |335           |Philip          |
|100|471           |Sean            |
|101|209           |Frédérique      |
|102|456           |Yu              |
|103|347           |Brian           |
|104|339           |Francisca       |
|105|189           |Dean            |
|106|381           |Pascale         |
|107|237           |Alejandra       |
|108|333           |Ben             |
|109|324           |Ann             |
|110|321           |Julie           |
|111|328           |William         |
|112|172           |Marie           |
|113|121           |Jonas           |
|114|144           |Christina       |
|115|240           |Helen           |
|116|462           |Violeta         |
|117|204           |Miguel          |
|118|187           |Rachel          |
|119|465           |Carmen          |
|120|307           |Mel             |
|121|481           |Raanan          |
|122|249           |Paolo           |

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

|#  |customerNumber|customerName                |creditLimit|
|---|--------------|----------------------------|-----------|
|1  |141           |Euro+ Shopping Channel      |227600.00  |
|2  |124           |Mini Gifts Distributors Ltd.|210500.00  |
|3  |298           |Vida Sport, Ltd             |141300.00  |
|4  |151           |Muscle Machine Inc          |138500.00  |
|5  |187           |AV Stores, Co.              |136800.00  |

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

|#  |customerNumber|customerName           |creditLimit|
|---|--------------|-----------------------|-----------|
|1  |219           |Boards & Toys Co.      |11000.00   |
|2  |103           |Atelier graphique      |21000.00   |
|3  |198           |Auto-Moto Classics Inc.|23000.00   |
|4  |381           |Royale Belge           |23500.00   |
|5  |473           |Frau da Collezione     |34800.00   |

</p>
</details>

</div>

###### [Iván Montiel Cardona](https://github.com/begeistert)
