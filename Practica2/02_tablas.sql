USE `santamaria-sanchez`;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    rut_dni VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(100) NOT NULL
);

CREATE TABLE veterinarios (
    id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    rut_dni VARCHAR(20) NOT NULL UNIQUE,
    nombre_completo VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono_directo VARCHAR(20) NOT NULL
);

CREATE TABLE medicamentos (
    codigo_medicamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre_comercial VARCHAR(100) NOT NULL,
    laboratorio VARCHAR(100) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE mascotas (
    id_mascota INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_cliente INT NOT NULL
);

CREATE TABLE atenciones_medicas (
    id_atencion INT PRIMARY KEY AUTO_INCREMENT,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    diagnostico TEXT NOT NULL,
    costo_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE prescripciones_medicas (
    id_prescripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_atencion INT NOT NULL,
    codigo_medicamento INT NOT NULL,
    cantidad INT NOT NULL,
    indicaciones TEXT NOT NULL
);