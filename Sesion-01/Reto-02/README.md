## Reto 2: Estructura básica de una consulta

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado.

### 3. Desarrollo :rocket:

Usando la tabla `empleados`, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el nombre de los empleados con el puesto 4?

```sql
# Respuesta
SELECT nombre
FROM empleado
WHERE id_puesto = 4;                  
```

<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%201.png">
  </a>
</p>

- ¿Qué puestos tienen un salario mayor a $10,000?

```sql
# Respuesta
SELECT *
FROM puesto
WHERE salario > 10000;                  
```

<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%202.png">
  </a>
</p>

- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?

```sql
# Respuesta
SELECT *
FROM articulo
WHERE precio > 1000
  AND iva > 100;                 
```

<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%203.png">
  </a>
</p>

- ¿Qué ventas incluyen los artículos 135 o 963 y fueron hechas por los empleados 835 o 369?

```sql
# Respuesta
SELECT *
FROM venta
WHERE id_articulo IN(135, 963)
  AND id_empleado IN(835, 369);               
```


<br />
<p align="center">
  <a>
    <img src="https://github.com/begeistert/Bedu/blob/main/Sesion-01/Reto-02/Captura%204.png">
  </a>
</p>

</div>

###### Iván Montiel Cardona
