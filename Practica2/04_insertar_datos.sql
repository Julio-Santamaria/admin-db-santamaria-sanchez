USE `santamaria-sanchez`;

INSERT INTO clientes (rut_dni, nombre_completo, telefono, correo) VALUES
('12345678-1', 'Juan Perez', '999111111', 'juan@gmail.com'),
('23456789-2', 'Maria Lopez', '999222222', 'maria@gmail.com'),
('34567890-3', 'Carlos Gonzalez', '999333333', 'carlos@gmail.com'),
('45678901-4', 'Ana Martinez', '999444444', 'ana@gmail.com'),
('56789012-5', 'Luis Rodriguez', '999555555', 'luis@gmail.com');

INSERT INTO veterinarios (rut_dni, nombre_completo, especialidad, telefono_directo) VALUES
('11111111-1', 'Dr. Roberto Sanchez', 'Cirugia', '888111111'),
('22222222-2', 'Dra. Laura Hernandez', 'Dermatologia', '888222222'),
('33333333-3', 'Dr. Miguel Torres', 'Medicina interna', '888333333'),
('44444444-4', 'Dra. Sofia Ramirez', 'Cardiologia', '888444444'),
('55555555-5', 'Dr. Diego Morales', 'Traumatologia', '888555555');

INSERT INTO medicamentos (nombre_comercial, laboratorio, precio_unitario) VALUES
('Amoxicilina', 'Bayer', 150.00),
('Meloxicam', 'Zoetis', 220.00),
('Prednisona', 'Pfizer', 180.00),
('Enrofloxacina', 'Boehringer', 250.00),
('Omeprazol', 'Genomma Lab', 120.00);

INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, id_cliente) VALUES
('Max', 'Perro', 'Labrador', '2020-05-10', 1),
('Luna', 'Gato', 'Siames', '2021-08-15', 2),
('Rocky', 'Perro', 'Bulldog', '2019-03-20', 3),
('Nala', 'Gato', 'Persa', '2022-01-12', 4),
('Coco', 'Perro', 'Chihuahua', '2020-11-05', 5);

INSERT INTO atenciones_medicas (id_mascota, id_veterinario, fecha_hora, diagnostico, costo_base) VALUES
(1, 1, '2026-09-01 10:30:00', 'Infeccion en la piel', 500.00),
(2, 2, '2026-09-02 11:00:00', 'Dermatitis', 450.00),
(3, 3, '2026-09-03 12:30:00', 'Problemas gastrointestinales', 550.00),
(4, 4, '2026-09-04 09:00:00', 'Revision cardiaca', 700.00),
(5, 5, '2026-09-05 16:00:00', 'Lesion en extremidad', 650.00);

INSERT INTO prescripciones_medicas (id_atencion, codigo_medicamento, cantidad, indicaciones) VALUES
(1, 1, 10, '1 tableta cada 8 horas por 5 dias'),
(2, 3, 7, '1 tableta cada 24 horas por 7 dias'),
(3, 5, 5, '1 capsula cada 12 horas por 5 dias'),
(4, 2, 10, '1 tableta cada 24 horas por 10 dias'),
(5, 4, 7, '1 tableta cada 24 horas por 7 dias');