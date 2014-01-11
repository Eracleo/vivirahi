-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2013 a las 23:23:25
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `home`
--
CREATE DATABASE IF NOT EXISTS `home` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `home`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departament`
--

CREATE TABLE IF NOT EXISTS `departament` (
  `did` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departament`
--

INSERT INTO `departament` (`did`, `title`) VALUES
('01', 'Lima'),
('41', 'Amazonas'),
('42', 'San Mart&iacute;n'),
('43', 'Ancash'),
('44', 'La Libertad'),
('51', 'Puno'),
('52', 'Tacna'),
('53', 'Moquegua'),
('54', 'Arequipa'),
('56', 'Ica'),
('61', 'Ucayali'),
('62', 'Hu&aacute;nuco'),
('63', 'Pasco'),
('64', 'Jun&iacute;n'),
('65', 'Loreto'),
('66', 'Ayacucho'),
('67', 'Huancavelica'),
('72', 'Tumbes'),
('73', 'Piura'),
('74', 'Lambayeque'),
('76', 'Cajamarca'),
('82', 'Madre de Dios'),
('83', 'Apur&iacute;mac'),
('84', 'Cusco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE IF NOT EXISTS `distrito` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `idprovincia` smallint(6) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`did`, `title`, `idprovincia`) VALUES
(1, 'Cusco', 1),
(2, 'Ccorca', 1),
(3, 'Poroy', 1),
(4, 'San Jeronimo', 1),
(5, 'San Sebastian', 1),
(6, 'Santiago', 1),
(7, 'Saylla', 1),
(8, 'Wanchaq', 1),
(9, 'ACOMAYO', 2),
(10, 'ACOPIA', 2),
(11, 'ACOS', 2),
(12, 'MOSOC LLACTA', 2),
(13, 'POMACANCHI', 2),
(14, 'RONDOCAN', 2),
(15, 'SANGARARA', 2),
(16, 'ANTA', 3),
(17, 'ANCAHUASI', 3),
(18, 'CACHIMAYO', 3),
(19, 'CHINCHAYPUJIO', 3),
(20, 'HUAROCONDO', 3),
(21, 'LIMATAMBO', 3),
(22, 'MOLLEPATA', 3),
(23, 'PUCYURA', 3),
(24, 'ZURITE', 3),
(25, 'CALCA', 4),
(26, 'COYA', 4),
(27, 'LAMAY', 4),
(28, 'LARES', 4),
(29, 'PISAC', 4),
(30, 'SAN SALVADOR', 4),
(31, 'TARAY', 4),
(32, 'YANATILE', 4),
(33, 'YANAOCA', 5),
(34, 'CHECCA', 5),
(35, 'KUNTURKANKI', 5),
(36, 'LANGUI', 5),
(37, 'LAYO', 5),
(38, 'PAMPAMARCA', 5),
(39, 'QUEHUE', 5),
(40, 'TUPAC AMARU', 5),
(41, 'SICUANI', 6),
(42, 'CHECACUPE', 6),
(43, 'COMBAPATA', 6),
(44, 'MARANGANI', 6),
(45, 'PITUMARCA', 6),
(46, 'SAN PABLO', 6),
(47, 'SAN PEDRO', 6),
(48, 'TINTA', 6),
(49, 'SANTO TOMAS', 7),
(50, 'CAPACMARCA', 7),
(51, 'CHAMACA', 7),
(52, 'COLQUEMARCA', 7),
(53, 'LIVITACA', 7),
(54, 'LLUSCO', 7),
(55, 'QUIÑOTA', 7),
(56, 'VELILLE', 7),
(57, 'ESPINAR', 8),
(58, 'CONDOROMA', 8),
(59, 'COPORAQUE', 8),
(60, 'OCORURO', 8),
(61, 'PALLPATA', 8),
(62, 'PICHIGUA', 8),
(63, 'SUYCKUTAMBO', 8),
(64, 'ALTO PICHIGUA', 8),
(65, 'SANTA ANA', 9),
(66, 'ECHARATE', 9),
(67, 'HUAYOPATA', 9),
(68, 'MARANURA', 9),
(69, 'OCOBAMBA', 9),
(70, 'QUELLOUNO', 9),
(71, 'QUIMBIRI', 9),
(72, 'SANTA TERESA', 9),
(73, 'VILCABAMBA', 9),
(74, 'PICHARI', 9),
(75, 'PARURO', 10),
(76, 'ACCHA', 10),
(77, 'CCAPI', 10),
(78, 'COLCHA', 10),
(79, 'HUANOQUITE', 10),
(80, 'OMACHA', 10),
(81, 'PACCARITAMBO', 10),
(82, 'PILLPINTO', 10),
(83, 'YAURISQUE', 10),
(84, 'PAUCARTAMBO', 11),
(85, 'CAICAY', 11),
(86, 'CHALLABAMBA', 11),
(87, 'COLQUEPATA', 11),
(88, 'HUANCARANI', 11),
(89, 'KOSÑIPATA', 11),
(90, 'URCOS', 12),
(91, 'ANDAHUAYLILLAS', 12),
(92, 'CAMANTI', 12),
(93, 'CCARHUAYO', 12),
(94, 'CCATCA', 12),
(95, 'CUSIPATA', 12),
(96, 'HUARO', 12),
(97, 'LUCRE', 12),
(98, 'MARCAPATA', 12),
(99, 'OCONGATE', 12),
(100, 'OROPESA', 12),
(101, 'QUIQUIJANA', 12),
(102, 'URUBAMBA', 13),
(103, 'CHINCHERO', 13),
(104, 'HUAYLLABAMBA', 13),
(105, 'MACHUPICCHU', 13),
(106, 'MARAS', 13),
(107, 'OLLANTAYTAMBO', 13),
(108, 'YUCAY', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geocode_cache`
--

CREATE TABLE IF NOT EXISTS `geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `query` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `geocode_cache`
--

INSERT INTO `geocode_cache` (`id`, `lng`, `lat`, `query`) VALUES
(1, -71.9722222, -13.525, 'cusco, peru'),
(2, -71.9425777, -13.5278153, 'la cultura, cusco, peru'),
(3, -71.9425777, -13.5278153, 'la cultura 800, cusco, peru');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `iid` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`iid`, `url`, `title`) VALUES
(1, 'Habitacion_en_alquiler_Para_estudiantes.jpg', '6'),
(2, 'Departamento_en_alquiler_prueva.jpg', '4'),
(3, 'Lotes_en_San_Jeronimo.jpg', '1'),
(4, 'Lote_en_Cusco.jpg', '7'),
(0, 'casitas_en_venta.jpg', '1'),
(0, 'Venta_de_lote.jpg', '1'),
(0, 'Casa.png', '1'),
(0, 'Lotes_en_San_Jeronimo.png', '1'),
(0, 'Maderera.jpg', '1'),
(0, 'Cuscolandia_home.jpg', '1'),
(0, 'Alquiler_de_casa_en_chumbivilcas1.jpg', '1'),
(0, 'cussssssd.jpg', '1'),
(0, 'Dcumentos_Cusco.jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE IF NOT EXISTS `inmueble` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `keywords` varchar(120) NOT NULL DEFAULT 'camprar,cusco,alquilar',
  `description` varchar(250) NOT NULL DEFAULT 'casa en cusco, camprar casa en cusco',
  `address` varchar(128) NOT NULL,
  `estado` varchar(128) NOT NULL,
  `patrocinio` tinyint(4) NOT NULL,
  `avances` smallint(6) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `typeid` smallint(6) NOT NULL,
  `transaccionid` smallint(6) NOT NULL,
  `antiguedad` varchar(50) NOT NULL,
  `construidos` varchar(64) NOT NULL,
  `terreno` varchar(32) NOT NULL,
  `descripcion` text NOT NULL,
  `service` varchar(250) NOT NULL,
  `mapa` varchar(64) NOT NULL,
  `fecha` date NOT NULL,
  `url` varchar(250) NOT NULL,
  `count` int(11) NOT NULL,
  `ubication` varchar(16) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`iid`, `title`, `keywords`, `description`, `address`, `estado`, `patrocinio`, `avances`, `precio`, `typeid`, `transaccionid`, `antiguedad`, `construidos`, `terreno`, `descripcion`, `service`, `mapa`, `fecha`, `url`, `count`, `ubication`) VALUES
(1, 'Departamento en Venta en Wanchaq, Cusco', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Alameda Pachacutec A-3 (Frente al parque Urpicha, a 5 min del centro de la ciudad)', 'estado', 3, 3, '$100', 1, 1, '3 años', '250 m2', 'terreno', '<p>Venta de departamentos de estreno de 135 m2 en 4to nivel, ubicado en la alameda Pachacutec A-3 coovecfrif, tres dormitorios, dormitorio principal con cuarto de closet y baño independiente con bañera; sala comedor, cocina americana barra, lavanderia, tendal, Baño socia y estuduo. 1 Cupo en la playa de estacionamieno.</p>\r\n<p>\r\nAcavados de primera, sistema independiente de agua (caliente y Fria), Luz, Telefono y Cable.\r\n</p>', 'Internet,Cable,Baño Propio,Amoblado,Ascensor(es)', 'aun no disponible', '2013-06-03', 'path', 1, 'cusco,cusco,cusc'),
(2, 'Departamento en Venta en Wanchaq, Cusco', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Alameda Pachacutec A-3 (Frente al parque Urpicha, a 5 min del centro de la ciudad)', 'Publicado', 0, 0, '$10000', 0, 0, '5 a&ntildeos', '200 m2', '300 m2', '<p>Venta de departamentos de estreno de 135 m2 en 4to nivel, ubicado en la alameda Pachacutec A-3 coovecfrif, tres dormitorios, dormitorio principal con cuarto de closet y baño independiente con bañera; sala comedor, cocina americana barra, lavanderia, tendal, Baño socia y estuduo. 1 Cupo en la playa de estacionamieno.</p>\r\n<p>\r\nAcavados de primera, sistema independiente de agua (caliente y Fria), Luz, Telefono y Cable.\r\n</p>', 'Internet,Cable,Baño Propio,Amoblado,Ascensor(es)', 'A un no disponible', '2013-06-19', 'lote-en-venta-entrega-inmediata', 1, 'cuscowanchaqcusc'),
(3, 'Casa en venta en Cusco', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Alameda Pachacutec A-3 (Frente al parque Urpicha, a 5 min del centro de la ciudad)', 'Publicado', 0, 0, '12545454', 0, 0, '1 a', '250 m', '300m', '<p>Venta de departamentos de estreno de 135 m2 en 4to nivel, ubicado en la alameda Pachacutec A-3 coovecfrif, tres dormitorios, dormitorio principal con cuarto de closet y baño independiente con bañera; sala comedor, cocina americana barra, lavanderia, tendal, Baño socia y estuduo. 1 Cupo en la playa de estacionamieno.</p>\r\n<p>\r\nAcavados de primera, sistema independiente de agua (caliente y Fria), Luz, Telefono y Cable.\r\n</p>', 'Internet,Cable,Baño Propio,Amoblado,Ascensor(es)', 'a un no esta disponible', '2013-06-19', 'casa-en-venta', 1, 'cusco,cusco,cusc'),
(4, 'casitas en venta', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Alameda Pachacutec A-3 (Frente al parque Urpicha, a 5 min del centro de la ciudad)', 'Publicado', 0, 0, '', 1, 1, '', '', '', '<p>Venta de departamentos de estreno de 135 m2 en 4to nivel, ubicado en la alameda Pachacutec A-3 coovecfrif, tres dormitorios, dormitorio principal con cuarto de closet y baño independiente con bañera; sala comedor, cocina americana barra, lavanderia, tendal, Baño socia y estuduo. 1 Cupo en la playa de estacionamieno.</p>\r\n<p>\r\nAcavados de primera, sistema independiente de agua (caliente y Fria), Luz, Telefono y Cable.\r\n</p>', 'Internet,Cable', '0', '2013-06-30', 'casitas-en-venta', 1, '84,2,9'),
(5, 'Casa para estudiante', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Av Argentina', '', 0, 0, '0', 0, 1, '', '200 m2', '', '<p>un lugar muy hermoso</p>', 'Internet,Cable,Baño Propio,Amoblado,Ascensor(es)', '', '2013-07-16', 'casa-para-estudiante', 1, '0,1,0'),
(6, 'ssssssssssssss', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', '', '', 0, 0, '0', 0, 1, '', '', '', '0', 'Internet,Cable,Baño Propio,Amoblado', '', '2013-07-17', 'ssssssssssssss', 1, '0,1,0'),
(7, 'Hermoso hotel en Cusco Wanchaq', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Av. Cusco 201', '', 0, 0, '0', 0, 1, '5 años', '150 m2', '', 'Hermoso departamento especialmente para estudiante', 'Internet,Cable,Baño', '', '2013-07-28', 'hermoso-hotel-en-cusco-wanchaq', 1, '0,1,0'),
(8, 'Hermosa casa', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'Av. Santo Tomas', '', 0, 0, '0', 0, 1, '2 meces', 'Cusco', '', 'Hermosa casa para una familia muy unida', 'Internet,Cable,Baño Propio,Amoblado,Ascensor(es)', '', '2013-07-28', 'hermosa-casa', 1, '0,1,0'),
(9, 'Casa en venta en Cusco - Wanchaq', 'camprar,cusco,alquilar', 'casa en cusco, camprar casa en cusco', 'av Cusco', '', 0, 0, '0', 0, 1, '2 años', '200m2', '', '', 'Internet,Cable,Baño Propio,Ascensor(es),Recepsion,Sala de conferencia,Carajes,Lavanderia,Entrega Inmediata,', '', '2013-08-15', 'casa-en-venta-en-cusco-wanchaq', 1, '0,1,5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node`
--

CREATE TABLE IF NOT EXISTS `node` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `keywords` varchar(120) NOT NULL,
  `description` varchar(160) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(150) NOT NULL,
  `idtype` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `iddepartament` varchar(3) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`pid`, `title`, `iddepartament`) VALUES
(0, 'Todos', '0'),
(1, 'Cusco', '84'),
(2, 'Acomayo', '84'),
(3, 'Anta', '84'),
(4, 'Calca', '84'),
(5, 'Canas', '84'),
(6, 'Canchis', '84'),
(7, 'Chumbivilcas', '84'),
(8, 'Espinar', '84'),
(9, 'La Convencion', '84'),
(10, 'Paruro', '84'),
(11, 'Paucartambo', '84'),
(12, 'Quispicanchis', '84'),
(13, 'Urubamba', '84'),
(100, 'Callao', '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `uid` int(11) NOT NULL,
  `iid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `sid` smallint(6) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `css` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`sid`, `title`, `description`, `css`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_inmueble`
--

CREATE TABLE IF NOT EXISTS `type_inmueble` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `type_inmueble`
--

INSERT INTO `type_inmueble` (`tid`, `title`, `description`) VALUES
(1, 'Casa', '<p>Lista de Casas en venta</p>'),
(2, 'Departamento', '<p>Lista de Departamentos en venta, alquiler, anticresis, etc</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_node`
--

CREATE TABLE IF NOT EXISTS `type_node` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `type_node`
--

INSERT INTO `type_node` (`tid`, `title`, `description`) VALUES
(1, 'Page', '<p>Pagina Basica.</p>'),
(2, 'Blog', '<p>Entrada de blog.</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_transaction`
--

CREATE TABLE IF NOT EXISTS `type_transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `type_transaction`
--

INSERT INTO `type_transaction` (`tid`, `title`, `description`) VALUES
(1, 'Venta', '<p>cuando un determinado inmueble esta en venta (Se anuncia para venter el inmueble)</p>'),
(2, 'Alquiler', '<p>Cuando un determinado inmueble esta en alquiler (Se anuncia para alquilar el inmueble)</p>'),
(3, 'Anticresis', '<p>Cuando un determinado inmueble esta en anticresis</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nivel` smallint(6) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `source` varchar(80) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`uid`, `email`, `username`, `surname`, `address`, `password`, `nivel`, `estado`, `source`, `photo`, `date_create`) VALUES
(1, 'juan@escodigo.com', 'Juan', 'Huamani', '<p>Av. Cusco 301 - Cusco Wanchaq<p>', 'camino', 1, 1, '53681', 'anonimo.jpg', '2013-06-18 13:51:49'),
(2, 'jajijo16@hotmail.com', 'Juan Segundo', 'Huamani', '', '123456789', 1, 1, '94111', 'gty_steve_jobs2__dm_111006_wg.jpg', '2013-06-18 14:13:51'),
(3, 'juanmani@escodigo.com', 'Juan Tercero', 'Huamani', '', '12345678', 1, 1, '52315', 'Juan_Tercero.jpg', '2013-06-18 14:16:27'),
(4, 'juan2@gmail.com', 'Juan Cuarto', 'Huamani', '', '25f9e794323b453885f5181f1b624d0b', 1, 1, '22946', 'anonimo.jpg', '2013-06-19 07:12:52');
