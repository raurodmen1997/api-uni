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


INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Programación', '1', '2050001', '12', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Administración de Empresas', '1', '2060002', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Cálculo Infinitesimal y Numérico', '1', '2060003', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Álgebra Lineal y Numérica', '1', '2060006', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística', '1', '2060007', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Circuitos Electrónicos Digitales', '1', '2060004', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estructura de Computadores', '1', '2060008', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Matemática Discreta', '1', '2060005', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos Físicos de la Informática', '1', '2060009', '6', '0');

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2', '2050010', '12', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño de Sistemas Digitales', '2', '2040012', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Computadores', '2', '2050015', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información I', '2', '2050046', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información II', '2', '2050047', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Operativos', '2', '2050014', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Discreta', '2', '2050017', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Tecnologías de Computadores', '2', '2040014', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Redes de Computadores', '2', '2040017', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura e Integración de Sistemas Software', '2', '2050016', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Lógica Informática', '2', '2050012', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Redes', '2', '	2060016', '6', '2')

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño y Pruebas I', '3', '2050048', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño y Pruebas II', '3', '2050049', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ingeniería de Requisitos', '3', '2050020', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Servicios de Redes', '3', '2050023', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Inteligencia Artificial', '3', '2050024', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Modelado y Simulación Númerica', '3', '2050021', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesamiento de Señales y Multimedia', '3', '2050022', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Modelado y Visualización Gráfica', '3', '2050025', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Proceso Software y Gestión I', '3', '2050050', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Proceso Software y Gestión II', '3', '2050051', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Tecnologías de Redes I', '3', '2040049', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Tecnologías de Redes II', '3', '2040050', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Desarrollo de Aplicaciones Distribuidas', '3', '2040023', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Geometria Computacional', '3', '2040024', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Paralelos y Distribuidos', '3', '2040021', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Software de Sistemas', '3', '2040026', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Periféricos e Interfaces', '3', '2040020', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Teoría de Grafos', '3', '2040022', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Empotrados y de Tiempo Real I', '3', '2040025', '6', '1')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ampliación de Inteligencia Artificial', '3', '2060025', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Configuración, Implementación y Mantenimiento de Sistemas Informáticos', '3', '2060018', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Aplicada a Sistemas de Información', '3', '2060027', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas de Información Empresiales', '3', '2060028', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesadores de Lenguajes', '3', '2060022', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Programación Declarativa', '3', '2060023', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Inteligentes', '3', '2060029', '6', '2')
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Tecnologías Avanzadas de la Información', '3', '2060024', '6', '2')

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Acceso Inteligente a la Información', '4', '2050027', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ampliación de Administración de Empresas', '4', '2050028', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Aplicaciones de Soft Computing', '4', '2050029', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Complementos de Bases de Datos', '4', '2050037', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Criptografía', '4', '2050030', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Derecho en la Informática', '4', '2050031', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística Computacional', '4', '2050038', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Evolución y Gestión de la Configuración', '4', '2050032', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Gestión de la Producción', '4', '2050033', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ingeniería del Software y Práctica Profesional', '4', '2050039', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Métodos Cuantitativos de Gestión', '4', '2050034', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Optimización de Sistemas', '4', '2050041', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Planificación y Gestión de Proyectos Informáticos', '4', '2050035', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Prácticas Externas', '4', '2050026', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesamiento de Imágenes Digitales', '4', '2050042', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Seguridad en Sistemas Informáticos y en Internet', '4', '2050043', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Tecnología, Informática y Sociedad', '4', '2050036', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Teledetección', '4', '2050044', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Trabajo Fin de Grado', '4', '2050045', '12', '3');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Laboratorio de Desarrollo de Hardware', '4', '2040032', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Plataformas Hardware de Aplicación Específica', '4', '2040041', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesamiento de Imágenes Digitales', '4', '2040042', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesamiento Digital de Señales', '4', '2040034', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Robótica y Automatización', '4', '2040043', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas de Adquisición y Control', '4', '2040044', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Empotrados y de Tiempo Real II', '4', '2040036', '6', '1');


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

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('49', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('50', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('51', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('52', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('53', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('54', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('55', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('56', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('57', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('58', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('59', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('60', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('61', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('62', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('63', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('64', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('65', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('66', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('67', '1');



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

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('49', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('51', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('53', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('55', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('68', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('61', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('69', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('62', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('70', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('71', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('72', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('64', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('73', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('74', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('65', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('66', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('67', '2');



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