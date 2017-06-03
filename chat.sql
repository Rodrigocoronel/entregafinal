-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2017 a las 20:23:58
-- Versión del servidor: 5.7.18-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agregaramigo`
--

CREATE TABLE `agregaramigo` (
  `idAgregar` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `usuarioAgregar` int(11) NOT NULL,
  `fechaSolicitud` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigo`
--

CREATE TABLE `amigo` (
  `idAmigo` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `amigo` int(11) NOT NULL,
  `bloqueo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `amigo`
--

INSERT INTO `amigo` (`idAmigo`, `usuario`, `amigo`, `bloqueo`) VALUES
(2, 3, 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `idMensaje` int(11) NOT NULL,
  `usuarioEmisor` int(11) NOT NULL,
  `usuarioReceptor` int(11) NOT NULL,
  `mensaje` text COLLATE latin1_general_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`idMensaje`, `usuarioEmisor`, `usuarioReceptor`, `mensaje`, `fecha`) VALUES
(2, 3, 4, 'hola que pesh', '2017-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `email` text COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `email`, `password`) VALUES
(2, 'rodrigo', 'rodrigo@gmail.com', 'hola'),
(3, 'rodrigo', 'rodrigo@gmail.com', 'hola'),
(4, 'nepe', 'nepe@gmail.com', '4d186321c1a7f0f354b2'),
(5, 'rod', 'rodr@gmail.com', '4d186321c1a7f0f354b297e8914ab240'),
(6, 'rodrigo coronel', 'prueba1@gmail.com', '51575f39fe0df6eb26a72f9de1ebc04a'),
(8, '111 111', '111@web.com', '698d51a19d8a121ce581499d7b701668'),
(9, 'aaa aaa', 'aaa@web.com', 'e4acce14c4baf96fec3017c7409504ce'),
(10, 'placeholder apellidos', 'pako@uabc.edu.mx.d.e.r.fg.t.t.k', '5f4dcc3b5aa765d61d8327deb882cf99'),
(11, 'rodrigo coronel', '123@web.com', '202cb962ac59075b964b07152d234b70'),
(12, 'hugo ruiz', 'hugo@web.com', '202cb962ac59075b964b07152d234b70'),
(13, 'hugo ruiz', 'hugo@web.com', '202cb962ac59075b964b07152d234b70'),
(14, 'hugo ruiz', 'hugo@web.com', '202cb962ac59075b964b07152d234b70'),
(15, 'hugo ruiz', 'hugo@web.com', '202cb962ac59075b964b07152d234b70'),
(16, 'hugo ruiz', 'hugo@web.com', '202cb962ac59075b964b07152d234b70'),
(17, 'hugo ruiz', 'hug@web.com', '202cb962ac59075b964b07152d234b70'),
(18, 'rod', 'rod@web.com', '123'),
(19, 'rod', 'rod@web.com', '123'),
(20, 'rod', 'rod@web.com', '123'),
(21, 'rod', 'rod@web.com', '123'),
(22, 'rod', 'rodo@web.com', '123'),
(23, 'rod', 'rodo@web.com', '123'),
(24, 'rod', 'rodo1@web.com', '123'),
(25, 'rod', 'rod2fg@web.com', '123'),
(26, 'rod', 'rod2fg1@web.com', '123'),
(27, 'rod', 'rod2fg12@web.com', '123'),
(28, 'rod', 'rod2fg121@web.com', '123'),
(29, 'rod', 'rod2fg11@web.com', '123'),
(30, 'rod', 'rod2fg112@web.com', '123'),
(31, 'rod', 'rod2fg1122@web.com', '123'),
(32, ' ', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(33, 'rodrigo coronel', 'rod123@web.com', '202cb962ac59075b964b07152d234b70'),
(34, 'rodrigo coronel', '123@123.com', '202cb962ac59075b964b07152d234b70'),
(35, 'rodrigo  coronel', 'rod@123.com', '202cb962ac59075b964b07152d234b70'),
(36, ' ', 'pedro@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(37, ' ', 'pedro2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(38, 'rodrigo coronel', 'rodrigo.coronel.15@gmail.com', '123'),
(39, 'rodrigo kkk', 'rodrigo.coroel.15@gmail.com', '123'),
(40, ' ', 'rodrigo34@gmail.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agregaramigo`
--
ALTER TABLE `agregaramigo`
  ADD PRIMARY KEY (`idAgregar`);

--
-- Indices de la tabla `amigo`
--
ALTER TABLE `amigo`
  ADD PRIMARY KEY (`idAmigo`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`idMensaje`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agregaramigo`
--
ALTER TABLE `agregaramigo`
  MODIFY `idAgregar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `amigo`
--
ALTER TABLE `amigo`
  MODIFY `idAmigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `idMensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
