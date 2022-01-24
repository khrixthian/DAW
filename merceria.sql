-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2022 a las 12:26:22
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `merceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) VALUES
(1, 'Hombrera de cristal azul y brillantes .', 'Complemento para hombreras de cristal azul y brillantes con un diseño exclusivo.', 6, 100, 'Imagenes/Productos/adorno1.jpg'),
(2, 'Complemento romboidal de cristal de diferentes ton', 'Complemento con forma de rombo de cristal de diferentes colores y brillantes con un diseño exclusivo.', 7, 100, 'Imagenes/Productos/adorno2.jpg'),
(3, 'Tiras con diferentes diseños de cuentas.', 'Tiras con diferentes diseños de cuentas con diseños exlusivos.', 8, 100, 'Imagenes/Productos/adorno3.jpg'),
(4, 'Set de agujas de costura.', 'Set de agujas de costura.', 9, 100, 'Imagenes/Productos/agujas.jpg'),
(5, 'Set de dedales de costura de diferentes tamaños.', 'Set de dedales de costura de diferentes tamaños.', 10, 100, 'Imagenes/Productos/dedales.jpg'),
(6, 'Botones clásicos.', 'Botones clásicos.', 1, 1000, 'Imagenes/Productos/botones.jpg'),
(7, 'Botones con forma de flor.', 'Botones con forma de flor.', 1, 1000, 'Imagenes/Productos/botones1.jpg'),
(8, 'Botones nacarados de diferentes colores.', 'Botones nacarados de diferentes colores.', 2, 1000, 'Imagenes/Productos/botones2.jpg'),
(9, 'Botones lilas con diseño moderno.', 'Botones lilas con diseño moderno.', 3, 1000, 'Imagenes/Productos/botones3.jpg'),
(10, 'Ovillos de lana Katia.', 'Ovillos de lana Katia de diferentes colores.', 11, 100, 'Imagenes/Productos/lanas1.jpg'),
(11, 'Lanas Cisne.', 'Lanas Cisne de diferentes colores.', 11, 100, 'Imagenes/Productos/lanas2.jpg'),
(12, 'Lanas Katia modelo A123.', 'Lanas Katia modelo A123.', 11, 100, 'Imagenes/Productos/lanas3.jpg'),
(13, 'Conjunto de lenceria blanco.', 'Conjunto de lenceria blanco.', 25, 100, 'Imagenes/Productos/lenceria1.jpg'),
(14, 'Conjunto de lenceria rosa.', 'Conjunto de lenceria (sujetador y braga) color rosa.', 26, 100, 'Imagenes/Productos/lenceria2.jpg'),
(15, 'Calzoncillo Abanderado.', 'Calzoncillo Abanderado de pata larga.', 27, 100, 'Imagenes/Productos/lenceria3.jpg'),
(16, 'Tela morada.', 'Tela morada.', 3, 1000, 'Imagenes/Productos/merceria.jpg'),
(17, 'Telas con diferentes diseños.', 'Telas con diferentes diseños.', 4, 1000, 'Imagenes/Productos/telas1.jpg'),
(18, 'Telas con diseños florales.', 'Telas con diseños florales.', 5, 1000, 'Imagenes/Productos/telas2.jpg'),
(19, 'Telas don motivos abstractos.', 'Telas don motivos abstractos.', 6, 1000, 'Imagenes/Productos/telas3.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
