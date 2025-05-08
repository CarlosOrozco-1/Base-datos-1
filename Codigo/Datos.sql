

-- Insertar clientes
INSERT INTO clientes (nombre, apellido, edad, sexo) VALUES
('Ana', 'Gómez', 28, 'Femenino'),
('Luis', 'Pérez', 35, 'Masculino'),
('Sofía', 'Martínez', 22, 'Femenino'),
('Carlos', 'Ramírez', 40, 'Masculino'),
('Laura', 'López', 31, 'Femenino');



-- Insertar sucursales
INSERT INTO sucursales (nombre, direccion) VALUES
('Sucursal Centro', 'Calle 1 #123'),
('Sucursal Norte', 'Avenida 45 #567');


-- Insertar vendedores
INSERT INTO vendedores (nombre, apellido, id_sucursal) VALUES
('Miguel', 'Santos', 1),
('Paola', 'Jiménez', 1),
('Ricardo', 'Hernández', 2),
('Camila', 'Navarro', 2);



-- Insertar proveedores
INSERT INTO proveedores (nombre, apellido, direccion) VALUES
('Tecno', 'Proveedor', 'Zona Industrial 45'),
('Electro', 'House', 'Carrera 88 #23'),
('Digital', 'World', 'Parque Empresarial 101');



-- Insertar productos
INSERT INTO productos (modelo, marca, precio, id_proveedor) VALUES
('Alpha100', 'Samsung', 500.00, 1),
('X200', 'LG', 450.00, 1),
('NoteX', 'Apple', 1200.00, 2),
('UltraTV', 'Sony', 800.00, 3),
('ProCam', 'Canon', 600.00, 2),
('SlimBook', 'HP', 750.00, 3);


-- Insertar ventas
INSERT INTO ventas (id_cliente, id_producto, id_vendedor, fecha) VALUES
(1, 1, 1, '2025-05-06'),
(2, 2, 2, '2025-05-07'),
(3, 3, 3, '2025-05-07'),
(4, 4, 4, '2025-05-08'),
(5, 5, 2, '2025-05-08'),
(1, 6, 1, '2025-05-09');

