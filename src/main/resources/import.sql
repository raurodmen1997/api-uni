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

INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Fundamentos de programación', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Cálculo Infinitesimal y Númerico', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Fundamentos Físicos de la Informática', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Circuitos Electrónicos Digitales', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Introducción a la Matemática Discreta', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Administración de Empresas', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Álgrebra Lineal y Númerica', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Estadística', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Estructura de Computadores', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Álgrebra Lineal', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Bioquímica Estructural', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Cálculo', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Física I', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Ampliación de Cálculo', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Física II', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Gestión de Empresas', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Programación Orientada a Objectos', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Introducción a la Ingeniería del Software y los sistemas de Información I', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Lógica Informática', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Redes de Computadores', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Sistemas Operativos', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Arquitectura de Computadores', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Arquitectura e Integración de Sistemas de Software', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Introducción a la Ingeniería del Software y los sistemas de Información II', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Matemática Discreta', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Diseño de Sistemas Digitales', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Tecnología de Computadores', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Arquitectura de Redes', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Ampliación de Matemáticas', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Biología Molecular y Química', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Circuitos y Máquinas Eléctricas', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Estructura de Datos y Algoritmos', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Electrónica', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Arquitectura de Computadores y Sistemas Operativos', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Anatomía y Fisiología', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Biología Celular y Genética', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Bases de Datos', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`) VALUES ('Control Automático', '2');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('10', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('11', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('12', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('13', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('14', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('15', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('16', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('17', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('19', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('19', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('19', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('20', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('20', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('21', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('21', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('21', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('22', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('22', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('22', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('23', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('23', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('23', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('24', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('25', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('25', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('25', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('27', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('28', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('29', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('30', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('31', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('32', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('33', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('34', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('35', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('36', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('37', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('38', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('39', '4');