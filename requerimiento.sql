-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2020 a las 22:05:54
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `requerimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `asignacionesid` int(50) NOT NULL,
  `asignacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`asignacionesid`, `asignacion`) VALUES
(1, 'abastecimiento'),
(2, 'TIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `departamentosid` int(50) NOT NULL,
  `gerenciasid` int(50) NOT NULL,
  `departamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`departamentosid`, `gerenciasid`, `departamento`) VALUES
(1, 1, 'depto. 1'),
(2, 1, 'depto. 2'),
(3, 1, 'depto. 3'),
(4, 2, 'depto. 4'),
(5, 2, 'depto. 5'),
(6, 2, 'depto. 6'),
(7, 2, 'depto. 7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
--

CREATE TABLE `encargados` (
  `encargadosid` int(50) NOT NULL,
  `asignacionesid` int(50) NOT NULL,
  `encargado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encargados`
--

INSERT INTO `encargados` (`encargadosid`, `asignacionesid`, `encargado`) VALUES
(1, 1, 'Matias Gonzalez'),
(2, 1, 'Juan Perez'),
(3, 1, 'Roberto Marin'),
(4, 1, 'Martin Perez'),
(5, 1, 'Josue Sepulveda'),
(6, 2, 'Jose Sandoval'),
(7, 2, 'David Campos'),
(8, 2, 'Jaime Oporto'),
(9, 2, 'Sebastian Marquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerencias`
--

CREATE TABLE `gerencias` (
  `gerenciasid` int(50) NOT NULL,
  `gerencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gerencias`
--

INSERT INTO `gerencias` (`gerenciasid`, `gerencia`) VALUES
(1, 'clientes'),
(2, 'ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos`
--

CREATE TABLE `requerimientos` (
  `requerimientoid` int(50) NOT NULL,
  `gerencia` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `asignacion` varchar(50) NOT NULL,
  `encargado` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `requerimientos`
--

INSERT INTO `requerimientos` (`requerimientoid`, `gerencia`, `departamento`, `asignacion`, `encargado`, `descripcion`, `estado`) VALUES
(1, 'clientes', 'depto. 5', 'abastecimiento', 'Martin Perez', 'busca la cura del virus', 'Cerrado'),
(2, 'clientes', 'depto. 2', 'TIC', 'Roberto Marin', 'juega a la pelota en el barca', 'Abierto'),
(3, 'clientes', 'depto. 5', 'abastecimiento', 'Matias Gonzalez', 'juega basquet profesional', 'Cerrado'),
(4, 'ventas', 'depto. 5', 'TIC', 'Sebastian Marquez', 'vende telefonos iphone', 'Abierto'),
(5, 'ventas', 'depto. 2', 'TIC', 'Jaime Oporto', 'repara computadores daÃ±ados de pantalla', 'Abierto'),
(6, 'clientes', 'depto. 1', 'abastecimiento', 'David Campos', 'juega juegos', 'Cerrado'),
(7, 'clientes', 'depto. 1', 'abastecimiento', 'Jose Sandoval', 'escucha musica mientras trabaja', 'Cerrado'),
(8, 'clientes', 'depto. 1', 'abastecimiento', 'Jose Sandoval', 'ayuda a los clientes a comprar', 'Cerrado'),
(9, 'clientes', 'depto. 1', 'abastecimiento', 'Martin Perez', 'arregla pantallas de television', 'Cerrado'),
(10, 'ventas', 'depto. 7', 'TIC', 'Matias Gonzalez', 'arregla maquinas ', 'Cerrado'),
(11, 'clientes', 'depto. 1', 'abastecimiento', 'Matias Gonzalez', 'arregla teclado mecanicos', 'Cerrado'),
(12, 'clientes', 'depto. 1', 'abastecimiento', 'Matias Gonzalez', 'juega minecraft mientras trabaja', 'Cerrado'),
(13, 'ventas', 'depto. 3', 'abastecimiento', 'Roberto Marin', '', 'Abierto'),
(14, 'clientes', 'depto. 1', 'abastecimiento', 'Matias Gonzalez', 'hola', 'Cerrado'),
(15, 'clientes', 'depto. 1', 'abastecimiento', 'Matias Gonzalez', 'trabaja para el area51', 'Abierto'),
(16, 'clientes', 'depto. 1', 'abastecimiento', 'Matias Gonzalez', 'arregla codigos de netbeans', 'Cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuarioid` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuarioid`, `nombre`, `apellido`, `password`) VALUES
(1, 'carlos', 'gonzalez', 'hola'),
(2, 'david', 'campos', 'hola');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`asignacionesid`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`departamentosid`),
  ADD KEY `gerenciasid` (`gerenciasid`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`encargadosid`),
  ADD KEY `asignacionesid` (`asignacionesid`);

--
-- Indices de la tabla `gerencias`
--
ALTER TABLE `gerencias`
  ADD PRIMARY KEY (`gerenciasid`);

--
-- Indices de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD PRIMARY KEY (`requerimientoid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuarioid`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`gerenciasid`) REFERENCES `gerencias` (`gerenciasid`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD CONSTRAINT `encargados_ibfk_1` FOREIGN KEY (`asignacionesid`) REFERENCES `asignaciones` (`asignacionesid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
