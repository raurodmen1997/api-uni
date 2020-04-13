INSERT INTO `universidades` (`nombre`) VALUES ('Universidad de Sevilla');

INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Ingeniería Informática', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Arquitectura', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Ingeniería de Edificación', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Matemática', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Biología', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Farmacia', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Física', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Química', '1');

INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Ingeniería del Software', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Ingeniería de Computadores', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Tecnología informática', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Ingeniería de la salud', '1', '4');

INSERT INTO `cursos` (`nombre`) VALUES ('PRIMERO');
INSERT INTO `cursos` (`nombre`) VALUES ('SEGUNDO');
INSERT INTO `cursos` (`nombre`) VALUES ('TERCERO');
INSERT INTO `cursos` (`nombre`) VALUES ('CUARTO');
INSERT INTO `cursos` (`nombre`) VALUES ('QUINTO');
INSERT INTO `cursos` (`nombre`) VALUES ('SEXTO');