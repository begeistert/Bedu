SELECT nombre
FROM empleado
WHERE id_puesto = 4;

select *
FROM puesto
WHERE salario > 10000;

select *
FROM articulo
WHERE precio > 1000
  AND iva > 100;

select *
From venta
WHERE id_articulo IN(135, 963)
  AND id_empleado IN(835, 369);



