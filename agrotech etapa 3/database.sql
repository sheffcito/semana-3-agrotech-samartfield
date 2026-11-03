CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(150) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  rol VARCHAR(30) NOT NULL
);

CREATE TABLE lecturas_ambientales (
  id INT PRIMARY KEY,
  sensor_id INT NOT NULL,
  temperatura DECIMAL(5,2) NOT NULL,
  humedad DECIMAL(5,2) NOT NULL,
  fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE calendario_riego (
  id INT PRIMARY KEY,
  dias VARCHAR(100) NOT NULL,
  hora_programada TIME NOT NULL,
  estado VARCHAR(30) NOT NULL,
  activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE notificaciones (
  id INT PRIMARY KEY,
  tipo VARCHAR(50) NOT NULL,
  mensaje TEXT NOT NULL,
  fecha_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  leido BOOLEAN NOT NULL DEFAULT FALSE
);
