## Reto 2: Definición de vistas

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Definir vistas sobre algunas consultas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, define las siguientes vistas que permitan obtener la siguiente información.

**AÑADE A TODOS LOS NOMBRES DE TUS VISTAS EL SUFIJO `_<tu identificador>`.** Por ejemplo `mi_vista_hermosa_123`.

- Obtener el puesto de un empleado.

```sql
# Respuesta
CREATE VIEW GREAT_VIEW_1_773_0 AS
(SELECT concat(e.nombre, ' ', e.apellido_paterno) empleado, p.nombre
FROM empleado e
JOIN puesto p
  ON e.id_puesto = p.id_puesto);

SELECT *
FROM GREAT_VIEW_1_773_0
LIMIT 1;             
```
<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-02/Captura-01.png">
  </a>
</p>
</details>

---

- Saber qué artículos ha vendido cada empleado.

```sql
# Respuesta
CREATE VIEW GREAT_VIEW_2_773 AS
(SELECT concat(e.nombre, ' ', e.apellido_paterno) empleado, a.nombre
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
JOIN articulo a
  ON v.id_articulo = a.id_articulo
ORDER BY e.nombre);

SELECT *
FROM GREAT_VIEW_2_773;            
```

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-02/Captura-02.png">
  </a>
</p>
</details>

---

- Saber qué puesto ha tenido más ventas.


```sql
# Respuesta
CREATE VIEW GREAT_VIEW_3_773_0 AS
(SELECT p.nombre puesto, count(v.clave) ventas
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
JOIN puesto p
  ON e.id_puesto = p.id_puesto
GROUP BY p.nombre
ORDER BY ventas DESC);

SELECT *
FROM GREAT_VIEW_3_773;           
```

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-03/Reto-02/Captura-03.png">
  </a>
</p>
</details>

###### [Iván Montiel Cardona](https://github.com/begeistert)
