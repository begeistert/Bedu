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
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

2. Obten el número de orden, estado y costo total de cada orden.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

3. Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

4. Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

*Para estas consultas usa LEFT JOIN*

5. Obtén el número de cliente, nombre de cliente, número de orden y estado de cada orden hecha por cada cliente. ¿De qué nos sirve hacer `LEFT JOIN` en lugar de `JOIN`?


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

6. Obtén los clientes que no tienen una orden asociada.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

7. Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

*Para estas consultas usa RIGHT JOIN*

8. Repite los ejercicios 5 a 7 usando *RIGHT JOIN*. ¿Representan lo mismo? Explica las diferencias en un comentario. Para poner comentarios usa `--`.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>

---

9. Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.


```sql
# Respuesta
SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;              
```
<details><summary>Resultado (Tabla)</summary>
<p>
  
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-01/Captura-01.png">
  </a>
</p>
</details>



</p>
</details>


###### [Iván Montiel Cardona](https://github.com/begeistert)
