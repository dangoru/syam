-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-12-2020 a las 05:03:07
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `syam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `nro_orden` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subtotal` int(10) UNSIGNED NOT NULL,
  `iva` int(10) UNSIGNED NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`nro_orden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL,
  `existencia` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='tabla de productos';

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `precio`, `existencia`, `fecha`) VALUES
(1, 'Foam', 25000, 523, '2020-11-30 23:54:45'),
(2, 'CarbÃ³n Activado WIKI', 18000, 300, '2020-11-30 23:54:45'),
(3, 'DepilYA', 10000, 1000, '2020-11-30 23:54:45'),
(4, 'Mantequilla Corporal (durazno)', 25000, 1000, '2020-11-30 23:54:45'),
(5, 'Bronceador', 40000, 250, '2020-11-30 23:54:45'),
(6, 'AntiestrÃ­as', 35000, 300, '2020-11-30 23:54:45'),
(7, 'Despigmentante Intimo', 40000, 500, '2020-11-30 23:54:45'),
(8, 'Despigmentante Facial', 35000, 365, '2020-11-30 23:54:45'),
(9, 'DermatÃ³nico', 35000, 200, '2020-11-30 23:54:45'),
(10, 'Mantequilla Corporal (frutos rojos)', 25000, 2000, '2020-11-30 23:54:45'),
(11, 'Mantequilla Corporal (naranja)', 25000, 700, '2020-11-30 23:54:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
