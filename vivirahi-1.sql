-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2013 a las 22:29:03
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vivirahi`
--
CREATE DATABASE IF NOT EXISTS `vivirahi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vivirahi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `did` int(11) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`did`, `nombre`) VALUES
(1, 'Lima'),
(41, 'Amazonas'),
(42, 'San Mart&iacute;'),
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

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE IF NOT EXISTS `distrito` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(16) NOT NULL,
  `provincia` smallint(6) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

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
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `iid` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`iid`, `url`, `nombre`) VALUES
(1, 'Habitacion_en_alquiler_Para_estudiantes.jpg', '6'),
(2, 'Departamento_en_alquiler_prueva.jpg', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE IF NOT EXISTS `inmueble` (
  `node` int(11) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `estado` varchar(128) NOT NULL,
  `area_total` tinyint(4) NOT NULL,
  `area_construido` smallint(6) NOT NULL,
  `tipo_inmueble` smallint(6) NOT NULL,
  `precio` smallint(6) NOT NULL,
  `servicio` varchar(250) NOT NULL,
  `mapa` varchar(50) NOT NULL,
  `material` varchar(50) NOT NULL,
  `distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`node`, `direccion`, `estado`, `area_total`, `area_construido`, `tipo_inmueble`, `precio`, `servicio`, `mapa`, `material`, `distrito`) VALUES
(0, 'Direccion', '1', 0, 0, 0, 0, 'servicios', 'latitud', 'material', 0),
(0, 'Direccion', '1', 0, 0, 0, 0, 'servicios', 'latitud', 'material', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node`
--

CREATE TABLE IF NOT EXISTS `node` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `keywords` varchar(120) NOT NULL,
  `description` varchar(160) NOT NULL,
  `contenido` text NOT NULL,
  `url` varchar(150) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fecha` varchar(13) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `node`
--

INSERT INTO `node` (`pid`, `titulo`, `keywords`, `description`, `contenido`, `url`, `iduser`, `fecha`) VALUES
(1, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212'),
(2, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212'),
(3, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212'),
(4, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212'),
(5, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212'),
(6, 'titulo', 'keywords', 'descripcion', 'contenido', 'url', 0, '13000101212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `pid` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `departamento` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `sid` smallint(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `css` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio`
--

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
(10, 'Entrega Inmediata', 'Entrega Inmediata', 'Entrega Inmediata'),
(0, 'asda', 'asdasdasd', ''),
(0, 'asd', 'asd', 'asd'),
(0, 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_inmueble`
--

CREATE TABLE IF NOT EXISTS `tipo_inmueble` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_inmueble`
--

INSERT INTO `tipo_inmueble` (`tid`, `nombre`, `descripcion`) VALUES
(1, 'Casa', '<p>Lista de Casas en venta</p>'),
(2, 'Departamento', '<p>Lista de Departamentos en venta, alquiler, anticresis, etc</p>'),
(3, 'ad', 'sadasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE IF NOT EXISTS `tipo_transaccion` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_transaccion`
--

INSERT INTO `tipo_transaccion` (`tid`, `nombre`, `descripcion`) VALUES
(1, 'Venta', '<p>cuando un determinado inmueble esta en venta (Se anuncia para venter el inmueble)</p>'),
(2, 'Alquiler', '<p>Cuando un determinado inmueble esta en alquiler (Se anuncia para alquilar el inmueble)</p>'),
(3, 'Anticresis', '<p>Cuando un determinado inmueble esta en anticresis</p>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
