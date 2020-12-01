## Reto 1: Agrupamientos y subconsultas

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Qué artículos incluyen la palabra `Pasta` en su nombre?


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

- ¿Qué artículos incluyen la palabra `Cannelloni` en su nombre?


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

- ¿Qué nombres están separados por un guión (`-`) por ejemplo `Puree - Kiwi`?


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
