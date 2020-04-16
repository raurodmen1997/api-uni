INSERT INTO `cursos` (`nombre`) VALUES ('PRIMERO');
INSERT INTO `cursos` (`nombre`) VALUES ('SEGUNDO');
INSERT INTO `cursos` (`nombre`) VALUES ('TERCERO');
INSERT INTO `cursos` (`nombre`) VALUES ('CUARTO');
INSERT INTO `cursos` (`nombre`) VALUES ('QUINTO');
INSERT INTO `cursos` (`nombre`) VALUES ('SEXTO');

 
INSERT INTO `universidades` (`nombre`) VALUES ('Universidad de Sevilla');

INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Ingeniería Informática', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Arquitectura', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Escuela Técnica Superior de Edificación', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Física', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Matemáticas', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Química', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Farmacia', '1');
INSERT INTO `facultades` (`nombre`, `universidad_id`) VALUES ('Facultad de Biología', '1');


INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Grado en Ingeniería Informática-Ingeniería del Software', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Grado en Ingeniería Informática-Ingeniería de Computadores', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Grado en Ingeniería Informática-Tecnologías Informáticas', '1', '4');
INSERT INTO `grados` (`nombre`, `facultad_id`, `numerocursos`) VALUES ('Grado en Ingeniería de la Salud', '1', '4');


INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Fundamentos de Programación', '1', '2050001', '12');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Administración de Empresas', '1', '2060002', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Cálculo Infinitesimal y Numérico', '1', '2060003', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Álgebra Lineal y Numérica', '1', '2060006', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Estadística', '1', '2060007', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Circuitos Electrónicos Digitales', '1', '2060004', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Estructura de Computadores', '1', '2060008', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Introducción a la Matemática Discreta', '1', '2060005', '6');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Fundamentos Físicos de la Informática', '1', '2060009', '6')

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2', '2050010', '12')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Diseño de Sistemas Digitales', '2', '2040012', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura de Computadores', '2', '2050015', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información I', '2', '2050046', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información II', '2', '2050047', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas Operativos', '2', '2050014', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Matemática Discreta', '2', '2050017', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Tecnologías de Computadores', '2', '2040014', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Redes de Computadores', '2', '2040017', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura e Integración de Sistemas Software', '2', '2050016', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Lógica Informática', '2', '2050012', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura de Redes', '2', '	2060016', '6')

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Diseño y Pruebas I', '3', '2050048', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Diseño y Pruebas II', '3', '2050049', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Ingeniería de Requisitos', '3', '2050020', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura y Servicios de Redes', '3', '2050023', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Inteligencia Artifial', '3', '2050024', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Modelado y Simulación Númerica', '3', '2050021', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Procesamiento de Señales y Multimedia', '3', '2050022', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Modelado y Visualización Gráfica', '3', '2050025', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Proceso Software y Gestión I', '3', '2050050', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Proceso Software y Gestión II', '3', '2050051', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura y Tecnologías de Redes I', '3', '2040049', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Arquitectura y Tecnologías de Redes II', '3', '2040050', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Desarrollo de Aplicaciones Distribuidas', '3', '2040023', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Geometria Computacional', '3', '2040024', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas Paralelos y Distribuidos', '3', '2040021', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Software de Sistemas', '3', '2040026', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Periféricos e Interfaces', '3', '2040020', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Teoría de Grafos', '3', '2040022', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas Empotrados y de Tiempo Real I', '3', '2040025', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Ampliación de Inteligencia Artificial', '3', '2060025', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Configuración, Implementación y Mantenimiento de Sistemas Informáticos', '3', '2060018', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Matemática Aplicada a Sistemas de Información', '3', '2060027', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas de Información Empresiales', '3', '2060028', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Procesadores de Lenguajes', '3', '2060022', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Programación Declarativa', '3', '2060023', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas Inteligentes', '3', '2060029', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Tecnologías Avanzadas de la Información', '3', '2060024', '6')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`) VALUES ('Sistemas Empotrados y de Tiempo Real I', '3', '2040025', '6')



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '1');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('10', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('12', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('13', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('14', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('15', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('16', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('19', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('20', '1');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('22', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('23', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('24', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('25', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('27', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('28', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('29', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('30', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('31', '1');



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '2');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('10', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('11', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('12', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('13', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('14', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('15', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('16', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('17', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '2');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('32', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('33', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('34', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('35', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('36', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('37', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('38', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('39', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('40', '2');



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '3');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('10', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('12', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('13', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('14', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('15', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('16', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('20', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('21', '3');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('41', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('42', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('43', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('44', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('45', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('46', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('47', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('48', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('49', '3');