## Reto 4: Subconsultas

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $10,000?

```sql
# Respuesta
SELECT nombre
FROM empleado
WHERE id_puesto = 4;                  
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

- ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

```sql
# Respuesta
SELECT nombre
FROM empleado
WHERE id_puesto = 4;                  
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

---

- ¿Cuál es el nombre del puesto de cada empleado?

```sql
# Respuesta
SELECT nombre
FROM empleado
WHERE id_puesto = 4;                  
```
<details><summary>Resultado (Tabla)</summary>
<p>



</p>
</details>

<br/>

###### [Iván Montiel Cardona](https://github.com/begeistert)
