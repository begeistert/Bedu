## Reto 3: Ordenamientos y Límites

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas mediante ordenamientos y límites.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado (Sin embargo hice uso de [`JetBrains DataGrip`](https://www.jetbrains.com/datagrip/) por comodidad).

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe una consulta que permita obtener el top 5 de puestos por salarios.

```sql
# Respuesta
SELECT *
FROM puesto
ORDER BY salario DESC
LIMIT 5;               
```

<br />

<details><summary>Resultado (Tabla)</summary>
<p>

<details><summary>Evidencia (Jetbrains DataGrip)</summary>
<p>
<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-03/Captura%201.png">
  </a>
</p>
</details>

|#  |id_puesto                    |nombre                              |salario |
|---|-----------------------------|------------------------------------|--------|
|1  |494                          |Sales Representative                |29996.58|
|2  |18                           |Speech Pathologist                  |29967.17|
|3  |487                          |Analog Circuit Design manager       |29923.95|
|4  |79                           |Junior Executive                    |29916.06|
|5  |893                          |Technical Writer                    |29912.53|

</p>
</details>

</div>

###### [Iván Montiel Cardona](https://github.com/begeistert)
