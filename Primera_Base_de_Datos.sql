

sqlite3 ejemplo.db

CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL,
  apodo VARCHAR(30) NOT NULL
);


INSERT INTO usuarios
 (nombre, apellido, email, fecha_nacimiento, genero, apodo)
 VALUES
 ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino', 'loko');

INSERT INTO usuarios
 (nombre, apellido, email, fecha_nacimiento, genero, apodo)
 VALUES
 ('Ivan', 'Gonzalez', 'rigonzalezvazquez@gmail.com', '1989-02-03', 'masculino', 'difasel');


SELECT * FROM usuarios;


UPDATE usuarios SET apodo='loko' WHERE nombre='Carlos';