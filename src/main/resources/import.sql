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


INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Administración de Empresas', '1', '2050006', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Administración de Empresas', '1', '2040006', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Administración de Empresas', '1', '2060002', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Álgebra Lineal', '1', '2260001', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Álgebra Lineal y Numérica', '1', '2050007', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Álgebra Lineal y Numérica', '1', '2040002', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Álgebra Lineal y Numérica', '1', '2060006', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ampliación de Cálculo', '1', '2260002', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Bioquímica Estructural', '1', '2260003', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Cálculo', '1', '2260006', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Cálculo Infinitesimal y Numérico', '1', '2050002', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Cálculo Infinitesimal y Numérico', '1', '2040007', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Cálculo Infinitesimal y Numérico', '1', '2060003', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Circuitos Electrónicos Digitales', '1', '2050003', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Circuitos Electrónicos Digitales', '1', '2040003', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Circuitos Electrónicos Digitales', '1', '2060004', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística', '1', '2050008', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística', '1', '2040008', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística', '1', '2060007', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estadística', '1', '2260007', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estructura de Computadores', '1', '2050009', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estructura de Computadores', '1', '2040009', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estructura de Computadores', '1', '2060008', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Física I', '1', '2260004', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Física II', '1', '2260008', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Programación', '1', '2050001', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Programación', '1', '2040001', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Programación', '1', '2060001', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Programación', '1', '2260005', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos Físicos de la Informática', '1', '2050004', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos Físicos de la Informática', '1', '2040004', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos Físicos de la Informática', '1', '2060009', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Gestión de Empresas', '1', '2260009', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Matemática Discreta', '1', '2050005', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Matemática Discreta', '1', '2040005', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Matemática Discreta', '1', '2060005', '6', '0');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Programación Orientada a Objetos', '1', '2260010', '6', '0');

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ampliación de Matemáticas', '2', '2260011', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2', '2260011', '12', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2', '2040010', '12', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Análisis y Diseño de Datos y Algoritmos', '2', '2060010', '12', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Anatomía y Fisiología', '2', '2260016', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Computadores', '2', '2050015', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Computadores', '2', '2040015', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Computadores', '2', '2060015', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Computadores y Sistemas Operativos', '2', '2260017', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura e Integración de Sistemas Software', '2', '2050016', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Redes', '2', '2060016', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Bases de Datos', '2', '2260018', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biología Celular y Genética', '2', '2260019', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biología Molecular y Bioquímica', '2', '2260019', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Circuitos y Máquinas Eléctricas', '2', '2260013', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Control Automático', '2', '2260020', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño de Sistemas Digitales', '2', '2040012', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Electrónica', '2', '2260014', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Estructuras de Datos y Algoritmos', '2', '2260015', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información I', '2', '2050046', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información I', '2', '2040047', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información I', '2', '2060054', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información II', '2', '2050047', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información II', '2', '2040048', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Introducción a la Ingeniería del Software y los Sistemas de Información II', '2', '2060055', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Lógica Informática', '2', '2050012', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Lógica Informática', '2', '2060012', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Discreta', '2', '2050017', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Discreta', '2', '2040016', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Discreta', '2', '2060013', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Redes de Computadores', '2', '2050013', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Redes de Computadores', '2', '2040017', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Redes de Computadores', '2', '2060014', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Operativos', '2', '2050014', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Operativos', '2', '2040013', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Operativos', '2', '2060017', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Tecnología de Computadores', '2', '2040014', '6', '1');

INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ampliación de Inteligencia Artificial', '3', '2060025', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Análisis Avanzado de Datos Clínicos', '3', '2260026', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura de Sistemas Distribuidos', '3', '2060026', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Servicios de Redes', '3', '2050023', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Tecnología de Redes I', '3', '2040049', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Arquitectura y Tecnología de Redes II', '3', '2040050', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biomateriales', '3', '2260028', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biomecánica I: Sólidos', '3', '2260029', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biomecánica II: Fluidos', '3', '2260030', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Biotecnología', '3', '2260031', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ciencia y Resistencia de Materiales', '3', '2260032', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Codificación y Gestión de la Información Sanitaria', '3', '2260033', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Configuración, Implementación y Mantenimiento de Sistemas Informáticos', '3', '2060018', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Desarrollo de Aplicaciones Distribuidas', '3', '2040023', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño e Implementación de Sistemas de Información Clínica', '3', '2260034', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño y Pruebas I', '3', '2050048', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Diseño y Pruebas II', '3', '2050049', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Fundamentos de Informática Clínica', '3', '2260021', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Geometría Computacional', '3', '2040024', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Gestión de Sistemas de Información', '3', '2060019', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Gestión y Estrategia Empresarial', '3', '2060020', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ingeniería de Requisitos', '3', '2050020', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Imágenes Biomédicas', '3', '2260022', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Infraestructuras de Sistemas de Información', '3', '2260036', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Ingeniería del Software', '3', '2260023', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Instrumentación Biomédica', '3', '2260038', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Inteligencia Artificial', '3', '2050024', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Inteligencia Artificial', '3', '2040019', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Inteligencia Artificial', '3', '2060021', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Matemática Aplicada a Sistemas de Información', '3', '2060027', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Modelado y Simulación Numérica', '3', '2050021', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Modelado y Visualización Gráfica', '3', '2050025', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Periféricos e Interfaces', '3', '2040020', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesadores de Lenguajes', '3', '2060022', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Procesamiento de Señales Multimedia', '3', '2050022', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Proceso Software y Gestión I', '3', '2050050', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Proceso Software y Gestión II', '3', '2050051', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Programación Declarativa', '3', '2060023', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Redes y Sistemas Distribuidos', '3', '2260024', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Salud Pública y Organización Sanitaria', '3', '2260041', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Seguridad, Confidencialidad y Gestión de la Identidad', '3', '2260042', '4.5', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas de Información Empresiales', '3', '2060028', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Empotrados y de Tiempo Real I', '3', '2040025', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Inteligentes', '3', '2060029', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Inteligentes', '3', '2260025', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Orientados a Servicios', '3', '2060030', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Sistemas Paralelos y Distribuidos', '3', '2040021', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Software de Sistemas', '3', '2040026', '6', '1');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Tecnologías Avanzadas de la Información', '3', '2060024', '6', '2');
INSERT INTO `asignaturas` (`nombre`, `curso_id`, `codigo`, `creditos`, `tipo`) VALUES ('Teoría de Grafos', '3', '2040022', '6', '1');


INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('1', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('5', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('11', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('14', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('17', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('21', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('26', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('30', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('34', '1');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('39', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('43', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('47', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('57', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('60', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('63', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('65', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('68', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('71', '1');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('78', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('90', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('91', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('96', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('101', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('105', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('106', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('109', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('110', '1');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('111', '1');



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('2', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('6', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('12', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('15', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('18', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('22', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('27', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('31', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('35', '2');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('40', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('44', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('54', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('58', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('61', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('66', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('69', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('72', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('74', '2');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('79', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('80', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('88', '2');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('93', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('102', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('107', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('117', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('121', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('122', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('124', '3');



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('3', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('7', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('13', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('16', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('19', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('23', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('28', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('32', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('36', '3');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('41', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('45', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('48', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('59', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('62', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('64', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('67', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('70', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('73', '3');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('75', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('77', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('87', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('94', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('95', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('103', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('104', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('108', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('112', '3');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('116', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('118', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('120', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('123', '4');



INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('4', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('8', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('9', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('10', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('20', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('24', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('25', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('29', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('33', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('37', '4');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('38', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('42', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('46', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('49', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('50', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('51', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('52', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('53', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('55', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('56', '4');

INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('76', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('81', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('82', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('83', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('84', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('85', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('86', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('89', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('92', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('97', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('98', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('99', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('100', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('113', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('114', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('115', '4');
INSERT INTO `asignaturas_grados` (`asignaturas_id`, `grados_id`) VALUES ('119', '4');




