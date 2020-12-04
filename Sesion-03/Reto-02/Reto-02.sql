USE tienda;

# 1

CREATE VIEW GREAT_VIEW_1_773_0 AS
(SELECT concat(e.nombre, ' ', e.apellido_paterno) empleado, p.nombre
FROM empleado e
JOIN puesto p
  ON e.id_puesto = p.id_puesto);

SELECT *
FROM GREAT_VIEW_1_773_0
LIMIT 1;

# 2
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


# 3
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

