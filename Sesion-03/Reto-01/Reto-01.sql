USE tienda;

DESCRIBE venta;

DESCRIBE empleado;

#1

SELECT v.id_empleado, clave, nombre, apellido_paterno
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
ORDER BY clave;

DESCRIBE articulo;

DESCRIBE venta;



SELECT DISTINCT a.nombre
FROM venta v
JOIN articulo a
  ON a.id_articulo = v.id_articulo;

# 3

SELECT clave, round(sum(precio), 2) precio
FROM venta v
JOIN articulo a
  ON a.id_articulo = v.id_articulo
GROUP BY clave
ORDER BY clave;


