-- JOIN consulta vendedores sus ventas y los clientes.


SELECT 
    v.id_vendedor,
    v.nombre AS nombre_vendedor,
    v.apellido AS apellido_vendedor,
    c.nombre AS nombre_cliente,
    c.apellido AS apellido_cliente,
    pr.modelo AS producto,
	pr.precio,
    ve.fecha
FROM ventas ve
JOIN vendedores v ON ve.id_vendedor = v.id_vendedor
JOIN clientes c ON ve.id_cliente = c.id_cliente
JOIN productos pr ON ve.id_producto = pr.id_producto
ORDER BY v.id_vendedor, ve.fecha;
