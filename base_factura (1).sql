-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2020 a las 23:33:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_factura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL COMMENT 'Clave primaria',
  `cedula` int(50) NOT NULL COMMENT 'cedula cliente',
  `nombre` varchar(100) NOT NULL COMMENT 'nombre cliente',
  `apellidos` varchar(100) NOT NULL COMMENT 'Apellidos cliente',
  `direccion` varchar(100) NOT NULL COMMENT 'direccion',
  `telefono` int(50) NOT NULL COMMENT 'móvil',
  `email` varchar(50) DEFAULT NULL,
  `id_empresa` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `cedula`, `nombre`, `apellidos`, `direccion`, `telefono`, `email`, `id_empresa`) VALUES
(3, 940445133, 'Adrián ', 'Limones ', 'asas', 997909837, 'pits19932018@gmail.com', 1),
(4, 2147483647, 'andres', 'limones', 'Guasmo norte ', 997909837, 'masao@gmail.com', 1),
(5, 2147483647, 'Adrián ', 'limones', 'asas', 997909837, 'masao@gmail.com', 1),
(6, 2147483647, 'andres', 'Limones', 'Guasmo norte ', 997909837, 'adrian@prueba.com', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuraciones`
--

CREATE TABLE `configuraciones` (
  `id_config` int(50) NOT NULL,
  `establecimiento` int(50) NOT NULL,
  `ptoemision` int(50) NOT NULL,
  `sec_factura` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuraciones`
--

INSERT INTO `configuraciones` (`id_config`, `establecimiento`, `ptoemision`, `sec_factura`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL COMMENT 'Clave primaria',
  `ruc` int(15) NOT NULL COMMENT 'ruc',
  `razon_social` varchar(100) NOT NULL COMMENT 'razon social',
  `direccion` varchar(100) NOT NULL COMMENT 'direccion',
  `telefono` int(20) NOT NULL COMMENT 'convencional',
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `ruc`, `razon_social`, `direccion`, `telefono`, `email`) VALUES
(1, 940445133, 'telconet', 'mz  45', 9979837, 'adrian@gmail.com'),
(17, 2147483647, 'cacherito sa', 'guasmo', 980510721, 'cacherito@gmail.com'),
(18, 2147483647, 'ariana sa', 'guasmo', 997909837, 'arianalamasbonita@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL COMMENT 'Clave primaria',
  `nombre` varchar(100) NOT NULL COMMENT 'nombre productos',
  `precio` int(100) NOT NULL COMMENT 'precio',
  `cantidad` int(50) NOT NULL COMMENT 'cantidad',
  `detalle` varchar(50) NOT NULL COMMENT 'detalle productos',
  `id_empresa` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `precio`, `cantidad`, `detalle`, `id_empresa`) VALUES
(1, 'baterias xiamo de 4p', 45, 7, 'baterias para celulares ', 0),
(2, 'motherboards asus', 100, 25, 'placas madres asus', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `password`) VALUES
(1, 'Adrián ', 'Limones ', 'alimones', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'adriana', 'montero', 'amontero', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(9, 'k', 'k', 'k', '13fbd79c3d390e5d6585a21e11ff5ec1970cff0c'),
(11, 'Adrián ', 'Limones ', 'echico', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(12, 'andres david', 'Limones ', 'dlimones', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(13, 'sofia', 'villamar', 'svillamar', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(14, 'leslie', 'Limones ', 'llimon', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(15, 'leslie', 'limones', 'elimones', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(16, 'pits', 'leon', 'pits1993', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(17, 'krystel', 'villamar', 'kvillamar', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(18, 'giancarlos', 'limones', 'glimones', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(19, 'Adrián ', 'Limones ', 'grlimones', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD PRIMARY KEY (`id_config`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuraciones`
--
ALTER TABLE `configuraciones`
  MODIFY `id_config` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
