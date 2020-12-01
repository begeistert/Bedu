## Reto 3: Agrupamientos

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuántos registros hay por cada uno de los puestos?

```sql
# Respuesta
SELECT nombre, count(*) cantidad
FROM puesto
GROUP BY nombre
ORDER BY cantidad DESC;                
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

- ¿Cuánto dinero se paga en total por puesto?

```sql
# Respuesta
SELECT nombre, sum(salario) total
FROM puesto
GROUP BY nombre
ORDER BY total DESC;                 
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

- ¿Cuál es el número total de ventas por vendedor?

```sql
# Respuesta
SELECT id_empleado, count(*) cantidad
FROM venta
GROUP BY id_empleado
ORDER BY cantidad DESC;                 
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

- ¿Cuál es el número total de ventas por artículo?

```sql
# Respuesta
SELECT id_articulo, count(*) cantidad
FROM venta
GROUP BY id_articulo
ORDER BY cantidad DESC;                
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>


<br/>


###### [Iván Montiel Cardona](https://github.com/begeistert)
