## Reto 2: Funciones de agrupamiento

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el promedio de salario de los puestos?

```sql
# Respuesta
SELECT avg(salario)
FROM puesto;                
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-02/Captura-01.png">
  </a>
</p>
</details>

|#  |avg(salario)      |
|---|------------------|
|1  |19595.051179999973|

</p>
</details>

---
- ¿Cuántos artículos incluyen la palabra `Pasta` en su nombre?

```sql
# Respuesta
SELECT count(*)
FROM articulo
WHERE nombre LIKE '%Pasta%';                
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-02/Captura-02.png">
  </a>
</p>
</details>

|#  |count(*)|
|---|--------|
|1  |17      |

</p>
</details>

---

- ¿Cuál es el salario mínimo y máximo?

```sql
# Respuesta
SELECT min(salario), max(salario)
FROM puesto;                  
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-02/Captura-03.png">
  </a>
</p>
</details>

|#  |min(salario)|max(salario)|
|---|------------|------------|
|1  |10013.44    |29996.58    |

</p>
</details>

---

- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?

```sql
# Respuesta
SELECT sum(salario)
FROM (
      SELECT *
      FROM puesto
      ORDER BY id_puesto DESC
      LIMIT 5
     ) as TOP5;                
```
<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-02/Reto-02/Captura-04.png">
  </a>
</p>
</details>

|#  |sum(salario)|
|---|------------|
|1  |79690.05    |

</p>
</details>

<br/>


###### [Iván Montiel Cardona](https://github.com/begeistert)
