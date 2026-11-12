USE LogisticaDB;
GO

-- 1. Insertar datos en Almacenes (mínimo 5 registros)
INSERT INTO Almacenes (NombreDeposito, UbicacionCiudad, CapacidadMetrosCubicos) VALUES
('Depósito Central Norte', 'Buenos Aires', 1500.00),
('Centro de Distribución Oeste', 'Moreno', 2500.50),
('Plataforma Sur', 'La Plata', 1800.00),
('Depósito Litoral', 'Rosario', 2200.00),
('Centro Cuyo', 'Mendoza', 1300.00);
GO

-- 2. Insertar datos en Transportistas (mínimo 5 registros)
INSERT INTO Transportistas (Nombre, Apellido, Licencia, Telefono) VALUES
('Carlos', 'Gómez', 'LIC-998822', '1155443322'),
('Mariela', 'Fernández', 'LIC-445566', NULL), -- Sin teléfono cargado (ideal para probar IS NULL)
('Esteban', 'Pérez', 'LIC-112233', '1199001122'),
('Lucía', 'Benítez', 'LIC-778899', '1144332211'),
('Marcos', 'Acosta', 'LIC-554433', NULL); -- Otro sin teléfono
GO

-- 3. Insertar datos en Envíos (mínimo 5 registros)
INSERT INTO Envios (AlmacenID, TransportistaID, DestinoDireccion, DestinoCiudad, PesoKg, EstadoEnvio, FechaDespacho, FechaEntregaEstimada) VALUES
(1, 1, 'Av. Rivadavia 1234', 'Morón', 350.50, 'En Tránsito', '2026-11-10', '2026-11-12'),
(2, 2, 'Ruta 7 km 35', 'General Rodríguez', 1200.00, 'Pendiente', '2026-11-11', '2026-11-14'),
(2, 3, 'Mitre 450', 'San Miguel', 80.20, 'Entregado', '2026-11-08', '2026-11-09'),
(3, 1, 'Calle 8 N° 500', 'La Plata', 540.00, 'En Tránsito', '2026-11-09', '2026-11-13'),
(1, 4, 'San Martín 990', 'Campana', 950.00, 'Pendiente', '2026-11-11', '2026-11-15');
GO

-- =====================================================
-- LAS 5 CONSULTAS OBLIGATORIAS DE VALIDACIÓN (SELECT)
-- =====================================================

-- Consulta 1: SELECT * para la tabla Almacenes
SELECT * FROM Almacenes;
GO

-- Consulta 2: SELECT * para la tabla Transportistas
SELECT * FROM Transportistas;
GO

-- Consulta 3: SELECT * para la tabla Envios
SELECT * FROM Envios;
GO

-- Consulta 4: Consulta con WHERE, operadores lógicos (AND / OR) y comparaciones (>, <>)
-- Busca envíos que pesen más de 300 kg Y cuyo estado sea distinto de 'Entregado'
SELECT EnvioID, DestinoCiudad, PesoKg, EstadoEnvio
FROM Envios
WHERE PesoKg > 300.00 AND EstadoEnvio <> 'Entregado';
GO

-- Consulta 5: Consulta usando IS NULL para detectar registros faltantes
-- Busca transportistas que no tienen teléfono registrado en la base de datos
SELECT TransportistaID, Nombre, Apellido, Licencia
FROM Transportistas
WHERE Telefono IS NULL;
GO