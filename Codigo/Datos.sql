

-- Insertar clientes
INSERT INTO clientes (nombre, apellido, edad, sexo) VALUES
('Ana', 'Gómez', 28, 'Femenino'),
('Luis', 'Pérez', 35, 'Masculino'),
('Sofía', 'Martínez', 22, 'Femenino'),
('Carlos', 'Ramírez', 40, 'Masculino'),
('Laura', 'López', 31, 'Femenino'),
('María', 'Ríos', 26, 'Femenino'),
('Jorge', 'Nava', 30, 'Masculino'),
('Patricia', 'Mejía', 34, 'Femenino'),
('Iván', 'Mendoza', 45, 'Masculino'),
('Lucía', 'Delgado', 29, 'Femenino'),
('Marco', 'Rivas', 37, 'Masculino'),
('Diana', 'Ortega', 33, 'Femenino'),
('Hugo', 'Quintero', 38, 'Masculino'),
('Fernanda', 'Campos', 27, 'Femenino'),
('Pablo', 'Solís', 42, 'Masculino'),
('Andrea', 'Herrera', 24, 'Femenino'),
('Álvaro', 'Silva', 36, 'Masculino'),
('Mónica', 'Vega', 31, 'Femenino'),
('Esteban', 'Paredes', 39, 'Masculino'),
('Natalia', 'Morales', 25, 'Femenino');



-- Insertar sucursales
INSERT INTO sucursales (nombre, direccion) VALUES
('Sucursal Centro', 'Calle 1 #123'),
('Sucursal Norte', 'Avenida 45 #567');


-- Insertar vendedores
INSERT INTO vendedores (nombre, apellido, id_sucursal) VALUES
('Miguel', 'Santos', 1),
('Paola', 'Jiménez', 1),
('Ricardo', 'Hernández', 2),
('Camila', 'Navarro', 2),
('Manuel','Perez', 1),
('Maria','Linares',2);


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
('SlimBook', 'HP', 750.00, 3),
('TV LED 32"', 'Panasonic', 320.00, 4),
('TV UHD 55"', 'Philips', 600.00, 5),
('TV Curvo 65"', 'Samsung', 980.00, 6),
('TV Smart 43"', 'LG', 450.00, 7),
('Laptop IdeaPad', 'Lenovo', 680.00, 8),
('Laptop Pavilion', 'HP', 750.00, 9),
('Laptop VivoBook', 'Asus', 720.00, 10),
('Laptop Chromebook', 'Acer', 400.00, 11),
('Laptop Aspire', 'Acer', 500.00, 12),
('Laptop Envy', 'HP', 820.00, 13),
('Laptop XPS 13', 'Dell', 1400.00, 14),
('Smart TV 75"', 'Sony', 1700.00, 15),
('Smart TV 60"', 'Sharp', 990.00, 16),
('Laptop Surface', 'Microsoft', 1300.00, 17);


-- Insertar ventas
INSERT INTO ventas (id_cliente, id_producto, id_vendedor, fecha) VALUES
(1, 1, 1, '2025-05-06'),
(2, 2, 2, '2025-05-07'),
(3, 3, 3, '2025-05-07'),
(4, 4, 4, '2025-05-08'),
(5, 5, 2, '2025-05-08'),
(1, 6, 1, '2025-05-09'),
(6, 7, 5, '2025-05-10'),
(7, 8, 6, '2025-05-10'),
(8, 9, 7, '2025-05-11')

