
CREATE TABLE `alumnos` (
  `alumno_id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`alumno_id`, `dni`, `nombre`, `apellido`, `empresa_id`) VALUES
(3, '12345678', 'James Jim', 'Luna Hernández', 2),
(4, '75380534', 'Deyvi Omar', 'Chavez Chavez', 2),
(5, '14785236', 'Diego Elias', 'Delgado', 4),
(6, '36985214', 'Diego Vera', 'Delgado', 4),
(8, '15963258', 'Katia', 'Deza Diaz', 4),
(9, '73145892', 'Juanito', 'Perez', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_cursos`
--

CREATE TABLE `categorias_cursos` (
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre de la categoría (ej: ISOS, SST)',
  `descripcion` text DEFAULT NULL COMMENT 'Descripción opcional de la categoría'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_cursos`
--

INSERT INTO `categorias_cursos` (`categoria_id`, `nombre`, `descripcion`) VALUES
(1, 'ISOS', NULL),
(2, 'SEGURIDAD Y SALUD EN EL TRABAJO-GESTIÓN', NULL),
(3, 'SST', NULL),
(4, 'SEGURIDAD Y SALUD EN EL TRABAJO-BRIGADAS', NULL),
(5, 'RIESGOS ESPECÍFICOS', NULL),
(6, 'CURSOS GENERALES', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `codigo_unico` varchar(6) NOT NULL,
  `qr_url` text NOT NULL,
  `qr_file` text NOT NULL,
  `pdf_url` text NOT NULL,
  `pdf_file` text NOT NULL,
  `preview_url` text NOT NULL,
  `preview_file` text NOT NULL,
  `certificado_url` int(11) NOT NULL,
  `fecha_emision` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `curso_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(550) DEFAULT NULL,
  `modalidad` varchar(50) DEFAULT NULL,
  `horas` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`curso_id`, `categoria_id`, `nombre`, `modalidad`, `horas`, `descripcion`) VALUES
(1, 1, 'INTRODUCCIÓN A LA NORMA ISO 9001:2015', 'MÓDULO (4 CURSOS)', 16, 'Curso de 16 horas académicas que explora los principios y requisitos fundamentales de la gestión de calidad, permitiendo comprender cómo implementar y mantener un sistema eficaz.'),
(2, 1, 'INTRODUCCIÓN A LA NORMA ISO 45001:2018', 'MÓDULO (4 CURSOS)', 16, 'Curso de 16 horas académicas que aborda los fundamentos de la gestión de seguridad y salud en el trabajo, preparando para identificar riesgos y establecer medidas preventivas efectivas.'),
(3, 1, 'INTRODUCCIÓN A LA NORMA ISO 14001:2015', 'MÓDULO (4 CURSOS)', 16, 'Curso de 16 horas académicas que introduce los principios de la gestión ambiental, enfocándose en cómo las organizaciones pueden reducir su impacto y cumplir con la normativa.'),
(4, 2, 'CONCEPTOS  BÁSICOS', '1 CURSO', 2, 'Curso de 02 horas académicas que aborda los fundamentos esenciales de la seguridad y salud en el trabajo para identificar, evaluar y controlar riesgos laborales.\r\n'),
(5, 2, 'SEGURIDAD Y SALUD EN OFICINAS', '1 CURSO', 2, 'Curso de 02 horas académicas que proporciona las claves para identificar y prevenir riesgos comunes en entornos de oficina, promoviendo un ambiente de trabajo seguro.'),
(6, 2, 'LEY 29783', '1 CURSO', 2, 'Curso de 02 horas académicas que detalla los aspectos fundamentales de la Ley de Seguridad y Salud en el Trabajo, explicando los derechos y deberes de empleadores y trabajadores.'),
(7, 2, 'IPERC - Identificación de peligros, evaluación y control de riesgos', '1 CURSO', 2, 'Curso de 02 horas académicas que enseña metodologías para identificar peligros, evaluar riesgos y establecer medidas de control efectivas para la prevención de accidentes.'),
(8, 2, 'COMITÉ DE SEGURIDAD Y SALUD EN EL TRABAJO', '1 CURSO', 2, 'Curso de 02 horas académicas que explica la conformación y el rol del Comité de SST, esencial para la participación activa en la prevención de riesgos laborales.'),
(9, 2, 'FUNCIONES Y RESPONSABILIDADES DE COMITÉ DE SST', '1 CURSO', 2, 'Curso de 02 horas académicas que detalla las funciones específicas y responsabilidades del Comité de SST, asegurando su operatividad y cumplimiento de la normativa.'),
(10, 2, 'DERECHOS Y OBLIGACIONES DE LOS TRABAJADORES Y EMPLEADOR', '1 CURSO', 2, 'Curso de 02 horas académicas que aclara los derechos y obligaciones en seguridad y salud, fomentando un entorno laboral que cumple con la normativa vigente.'),
(11, 2, 'INSPECCIONES DE SEGURIDAD', '1 CURSO', 2, 'Curso de 02 horas académicas que capacita en la realización de inspecciones de seguridad, identificando condiciones y actos subestándar para prevenir incidentes.'),
(12, 2, 'PREVENCIÓN Y SANCIÓN DEL HOSTIGAMIENTO SEXUAL LABORAL', '1 CURSO', 2, 'Curso de 02 horas académicas que aborda el hostigamiento sexual en el ámbito laboral, sensibilizando sobre su prevención, detección y manejo adecuado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `RUC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `nombre`, `RUC`) VALUES
(1, 'Encore Digital', NULL),
(2, 'Servicios TDS', NULL),
(3, 'Certiperu Consultores', NULL),
(4, 'ORKO INGENIEROS SAC', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`alumno_id`),
  ADD KEY `empresa_id_alumno` (`empresa_id`);

--
-- Indices de la tabla `categorias_cursos`
--
ALTER TABLE `categorias_cursos`
  ADD PRIMARY KEY (`categoria_id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_unico` (`codigo_unico`),
  ADD KEY `cursos_id_certificados` (`curso_id`),
  ADD KEY `alumno_id_alumno` (`alumno_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`curso_id`),
  ADD KEY `categoria_id_categoria` (`categoria_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`),
  ADD UNIQUE KEY `empresa_id` (`empresa_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `alumno_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias_cursos`
--
ALTER TABLE `categorias_cursos`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `empresa_id_alumno` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`);

--
-- Filtros para la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `alumno_id_alumno` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`alumno_id`),
  ADD CONSTRAINT `cursos_id_certificados` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`curso_id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `categoria_id_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias_cursos` (`categoria_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;






DELIMITER $$
--
-- Procedimientos
--
CREATE PROCEDURE `editar_alumno` (IN `p_id` INT, IN `p_dni` VARCHAR(8), IN `p_nombre` VARCHAR(100), IN `p_apellido` VARCHAR(100), IN `p_empresa_id` INT)   BEGIN
    UPDATE alumnos
    SET dni = p_dni,
        nombre = p_nombre,
        apellido = p_apellido,
        empresa_id = p_empresa_id
    WHERE alumno_id = p_id;
END$$

CREATE PROCEDURE `editar_curso` (IN `p_id` INT, IN `p_categoria_id` INT, IN `p_nombre` VARCHAR(550), IN `p_modalidad` VARCHAR(50), IN `p_horas` INT, IN `p_descripcion` TEXT)   BEGIN
    UPDATE cursos
    SET categoria_id = p_categoria_id,
        nombre = p_nombre,
        modalidad = p_modalidad,
        horas = p_horas,
        descripcion = p_descripcion
    WHERE curso_id = p_id;
END$$

CREATE  PROCEDURE `editar_empresa` (IN `p_id` INT, IN `p_nombre` VARCHAR(250), IN `p_ruc` VARCHAR(13))   BEGIN
    UPDATE empresa
    SET nombre = p_nombre, RUC = p_ruc
    WHERE empresa_id = p_id;
END$$

CREATE  PROCEDURE `eliminar_alumno` (IN `p_id` INT)   BEGIN
    DELETE FROM alumnos WHERE alumno_id = p_id;
END$$

CREATE  PROCEDURE `eliminar_curso` (IN `p_id` INT)   BEGIN
    DELETE FROM cursos WHERE curso_id = p_id;
END$$

CREATE  PROCEDURE `eliminar_empresa` (IN `p_id` INT)   BEGIN
    DELETE FROM empresa WHERE empresa_id = p_id;
END$$

CREATE  PROCEDURE `insertar_alumno` (IN `p_dni` VARCHAR(8), IN `p_nombre` VARCHAR(100), IN `p_apellido` VARCHAR(100), IN `p_empresa_id` INT)   BEGIN
    INSERT INTO alumnos (dni, nombre, apellido, empresa_id)
    VALUES (p_dni, p_nombre, p_apellido, p_empresa_id);
END$$

CREATE  PROCEDURE `insertar_curso` (IN `p_categoria_id` INT, IN `p_nombre` VARCHAR(550), IN `p_modalidad` VARCHAR(50), IN `p_horas` INT, IN `p_descripcion` TEXT)   BEGIN
    INSERT INTO cursos (categoria_id, nombre, modalidad, horas, descripcion)
    VALUES (p_categoria_id, p_nombre, p_modalidad, p_horas, p_descripcion);
END$$

CREATE  PROCEDURE `insertar_empresa` (IN `p_nombre` VARCHAR(250), IN `p_ruc` VARCHAR(13))   BEGIN
    INSERT INTO empresa (nombre, RUC) VALUES (p_nombre, p_ruc);
END$$

CREATE PROCEDURE `listar_alumnos` ()   BEGIN
    SELECT a.alumno_id, a.dni, a.nombre, a.apellido, e.nombre AS empresa
    FROM alumnos a
    INNER JOIN empresa e ON a.empresa_id = e.empresa_id
    ORDER BY a.alumno_id DESC;
END$$

CREATE  PROCEDURE `listar_cursos` ()   BEGIN
    SELECT c.curso_id, c.nombre, c.modalidad, c.horas, c.descripcion, cat.nombre AS categoria
    FROM cursos c
    INNER JOIN categorias_cursos cat ON c.categoria_id = cat.categoria_id
    ORDER BY c.curso_id DESC;
END$$

CREATE  PROCEDURE `listar_empresas` ()   BEGIN
    SELECT * FROM empresa ORDER BY empresa_id DESC;
END$$

CREATE  PROCEDURE `obtener_alumnos` ()   BEGIN
    SELECT a.alumno_id, a.dni, a.nombre, a.apellido, e.nombre AS empresa
    FROM alumnos a
    INNER JOIN empresa e ON a.empresa_id = e.empresa_id
    ORDER BY a.alumno_id DESC;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--
