
--
-- Estructura de tabla para la tabla `departament`
--
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `did` int NOT NULL,
  `nombre` varchar(16) NOT NULL,
  PRIMARY KEY (`did`)
) ;


INSERT INTO `departamento` (`did`, `nombre`) VALUES
(1, 'Lima'),
(41, 'Amazonas'),
(42, 'San Mart&iacute;n'),
(43, 'Ancash'),
(44, 'La Libertad'),
(51, 'Puno'),
(52, 'Tacna'),
(53, 'Moquegua'),
(54, 'Arequipa'),
(56, 'Ica'),
(61, 'Ucayali'),
(62, 'Hu&aacute;nuco'),
(63, 'Pasco'),
(64, 'Jun&iacute;n'),
(65, 'Loreto'),
(66, 'Ayacucho'),
(67, 'Huancavelica'),
(72, 'Tumbes'),
(73, 'Piura'),
(74, 'Lambayeque'),
(76, 'Cajamarca'),
(82, 'Madre de Dios'),
(83, 'Apur&iacute;mac'),
(84, 'Cusco');

-- --------------------------------------------------------

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `pid` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `departamento` int NOT NULL,
  PRIMARY KEY (`pid`)
) ;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`pid`, `nombre`, `departamento`) VALUES
(1, 'Cusco', 84),
(2, 'Acomayo', 84),
(3, 'Anta', 84),
(4, 'Calca', 84),
(5, 'Canas', 84),
(6, 'Canchis', 84),
(7, 'Chumbivilcas', 84),
(8, 'Espinar', 84),
(9, 'La Convencion', 84),
(10, 'Paruro', 84),
(11, 'Paucartambo', 84),
(12, 'Quispicanchis', 84),
(13, 'Urubamba', 84);

--
-- Estructura de tabla para la tabla `distrito`
--
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE IF NOT EXISTS `distrito` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `provincia` smallint(6) NOT NULL,
  PRIMARY KEY (`did`)
);

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`did`, `nombre`, `provincia`) VALUES
(1, 'Cusco', 1),
(2, 'Ccorca', 1),
(3, 'Poroy', 1),
(4, 'San Jeronimo', 1),
(5, 'San Sebastian', 1),
(6, 'Santiago', 1),
(7, 'Saylla', 1),
(8, 'Wanchaq', 1),
(9, 'Acomayo', 2),
(10, 'Acopia', 2),
(11, 'Acos', 2),
(12, 'Mosoc Llacta', 2),
(13, 'Pomacanchi', 2),
(14, 'Rondocan', 2),
(15, 'Sangarara', 2),
(16, 'Anta', 3),
(17, 'Ancahuasi', 3),
(18, 'Cachimayo', 3),
(19, 'Chinchaypujio', 3),
(20, 'Huarocondo', 3),
(21, 'Limatambo', 3),
(22, 'Mollepata', 3),
(23, 'Pucyura', 3),
(24, 'Zurite', 3),
(25, 'Calca', 4),
(26, 'Coya', 4),
(27, 'Lamay', 4),
(28, 'Lares', 4),
(29, 'Pisac', 4),
(30, 'San Salvador', 4),
(31, 'Taray', 4),
(32, 'Yanatile', 4),
(33, 'Yanaoca', 5),
(34, 'Checca', 5),
(35, 'Kunturkanki', 5),
(36, 'Langui', 5),
(37, 'Layo', 5),
(38, 'Pampamarca', 5),
(39, 'Quehue', 5),
(40, 'Tupac Amaru', 5),
(41, 'Sicuani', 6),
(42, 'Checacupe', 6),
(43, 'Combapata', 6),
(44, 'Marangani', 6),
(45, 'Pitumarca', 6),
(46, 'San Pablo', 6),
(47, 'San Pedro', 6),
(48, 'Tinta', 6),
(49, 'Santo Tomas', 7),
(50, 'Capacmarca', 7),
(51, 'Chamaca', 7),
(52, 'Colquemarca', 7),
(53, 'Livitaca', 7),
(54, 'Llusco', 7),
(55, 'Quiñota', 7),
(56, 'Velille', 7),
(57, 'Espinar', 8),
(58, 'Condoroma', 8),
(59, 'Coporaque', 8),
(60, 'Ocoruro', 8),
(61, 'Pallpata', 8),
(62, 'Pichigua', 8),
(63, 'Suykutambo', 8),
(64, 'Alto Pichigua', 8),
(65, 'Santa Ana', 9),
(66, 'Echarate', 9),
(67, 'Huayopata', 9),
(68, 'Maranura', 9),
(69, 'Ocobamba', 9),
(70, 'Quellouno', 9),
(71, 'Quimbiri', 9),
(72, 'Santa Teresa', 9),
(73, 'Vilcabamba', 9),
(74, 'Pichari', 9),
(75, 'Paruro', 10),
(76, 'Accha', 10),
(77, 'Ccapi', 10),
(78, 'Colcha', 10),
(79, 'Huanoquite', 10),
(80, 'Omacha', 10),
(81, 'Paccaritambo', 10),
(82, 'Pillpinto', 10),
(83, 'Yaurisque', 10),
(84, 'Paucartambo', 11),
(85, 'Caicay', 11),
(86, 'Challabamba', 11),
(87, 'Colquepata', 11),
(88, 'Huancarani', 11),
(89, 'Kosñipata', 11),
(90, 'Urcos', 12),
(91, 'Andahuaylillas', 12),
(92, 'Camanti', 12),
(93, 'Ccarhuayo', 12),
(94, 'Ccatca', 12),
(95, 'Cusipata', 12),
(96, 'Huaro', 12),
(97, 'Lucre', 12),
(98, 'Marcapata', 12),
(99, 'Ocongate', 12),
(100, 'Oropesa', 12),
(101, 'Quiquijana', 12),
(102, 'Urubamba', 13),
(103, 'Chinchero', 13),
(104, 'Huayllabamba', 13),
(105, 'Machupicchu', 13),
(106, 'Maras', 13),
(107, 'Ollantaytambo', 13),
(108, 'Yucay', 13);

DROP TABLE IF EXISTS `node`;
CREATE TABLE IF NOT EXISTS `node` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `keywords` varchar(120) NOT NULL,
  `description` varchar(160) NOT NULL,
  `contenido` text NOT NULL,
  `url` varchar(150) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` varchar(13) NOT NULL,
  PRIMARY KEY (`nid`)
) ;

DROP TABLE IF EXISTS `servicio`;
CREATE TABLE IF NOT EXISTS `servicio` (
  `sid` smallint(6)  NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `css` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ;

INSERT INTO `servicio` (`sid`, `nombre`, `descripcion`, `css`) VALUES
(1, 'Internet', 'Internet en casa', 'internet'),
(2, 'Cable', 'Cable en casa', 'cable'),
(3, 'Baño Propio', 'Baño Propio en casa', 'bano-propio'),
(4, 'Amoblado', 'amoblado casa', 'amoblado'),
(5, 'Ascensor(es)', 'Ascensor(es) en casa', 'ascensor'),
(6, 'Recepsion', 'Recepsion en casa', 'Recepsion'),
(7, 'Sala de conferencia', 'conferencia en casa', 'sala-conferencia'),
(8, 'Carajes', 'Carajes en casa', 'Carajes'),
(9, 'Lavanderia', 'Lavanderia en casa', 'Lavanderia'),
(10, 'Entrega Inmediata', 'Entrega Inmediata', 'Entrega Inmediata');

DROP TABLE IF EXISTS `tipo_inmueble`;
CREATE TABLE IF NOT EXISTS `tipo_inmueble` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`tid`)
);

INSERT INTO `tipo_inmueble` (`tid`, `nombre`, `descripcion`) VALUES
(1, 'Casa', '<p>Lista de Casas en venta</p>'),
(2, 'Departamento', '<p>Lista de Departamentos en venta, alquiler, anticresis, etc</p>');

DROP TABLE IF EXISTS `tipo_transaccion`;
CREATE TABLE IF NOT EXISTS `tipo_transaccion` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`tid`)
);

INSERT INTO `tipo_transaccion` (`tid`, `nombre`, `descripcion`) VALUES
(1, 'Venta', '<p>cuando un determinado inmueble esta en venta (Se anuncia para venter el inmueble)</p>'),
(2, 'Alquiler', '<p>Cuando un determinado inmueble esta en alquiler (Se anuncia para alquilar el inmueble)</p>'),
(3, 'Anticresis', '<p>Cuando un determinado inmueble esta en anticresis</p>');

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `iid` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `nombre` varchar(200) NOT NULL
);

INSERT INTO `image` (`iid`, `url`, `nombre`) VALUES
(1, 'Habitacion_en_alquiler_Para_estudiantes.jpg', '6'),
(2, 'Departamento_en_alquiler_prueva.jpg', '4');

DROP TABLE IF EXISTS `inmueble`;
CREATE TABLE IF NOT EXISTS `inmueble` (
  `node` int(11) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `estado` varchar(128) NOT NULL,
  `area_total` int(6) NOT NULL,
  `area_construido` int(6) NOT NULL,
  `tipo_inmueble` smallint(6) NOT NULL,
  `tipo_transaccion` smallint(6) NOT NULL,
  `precio` int(6) NOT NULL,
  `servicio` varchar(250) NOT NULL,
  `mapa` varchar(50) NOT NULL,
  `material` varchar(50) NOT NULL,
  `distrito` int(4) NOT NULL,
  PRIMARY KEY (`node`)
);

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `direccion` varchar(64) NOT NULL,
  `telefono` varchar(64) NOT NULL,
  `celular` varchar(64) NOT NULL,
  `privilegio` int(4) NOT NULL,
  `estado` int(4) NOT NULL,
  PRIMARY KEY (`uid`)
);
