-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2017 a las 21:52:24
-- Versión del servidor: 5.5.55
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlescolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `numero_control` int(10) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `numero_control`, `edad`, `sexo`, `carrera_id`, `updated_at`, `created_at`) VALUES
(1, 'Juan Prez', 14151714, 22, 1, 1, '2017-06-25 07:45:28', '2017-06-25 07:45:12'),
(4, 'Itzel', 16181917, 23, 0, 4, '2017-06-25 07:47:48', '2017-06-25 07:47:48'),
(6, 'Jemael', 18171916, 23, 1, 5, '2017-06-25 07:49:31', '2017-06-25 07:49:31'),
(7, 'Hector', 14151417, 21, 1, 2, '2017-06-25 09:47:52', '2017-06-25 09:47:52'),
(8, 'Efrain', 17879865, 22, 1, 2, '2017-06-25 18:02:14', '2017-06-25 18:02:14'),
(9, 'Toño', 47588555, 25, 1, 1, '2017-06-27 01:08:55', '2017-06-25 18:07:27'),
(10, 'German', 87987846, 20, 1, 6, '2017-06-27 00:15:33', '2017-06-27 00:15:33'),
(11, 'asd', 7845, 18, 0, 2, '2017-06-27 00:18:45', '2017-06-27 00:18:45'),
(12, 'asdfg', 8989898, 18, 0, 2, '2017-06-27 00:20:58', '2017-06-27 00:20:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosxgrupos`
--

CREATE TABLE `alumnosxgrupos` (
  `id_alumno` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Sistemas Computacionales', '2017-06-24 06:00:00', '2017-06-25 01:41:48'),
(2, 'TICS', '2017-06-24 06:00:00', '2017-06-25 01:43:33'),
(3, 'Mecatronica', '2017-06-24 06:00:00', '2017-06-25 01:42:40'),
(4, 'Bioquimica', '2017-06-24 06:00:00', '2017-06-25 01:43:14'),
(5, 'Mecanica', '2017-06-24 06:00:00', '2017-06-25 01:44:05'),
(6, 'Electrica', '2017-06-24 06:00:00', '2017-06-25 01:44:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `aula` int(11) NOT NULL,
  `horario` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maestro_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `aula`, `horario`, `created_at`, `updated_at`, `maestro_id`, `materia_id`) VALUES
(11, 41, '10:00:00', '2017-06-27 01:39:47', '2017-06-27 01:51:02', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `numero_control` int(10) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `materia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `numero_control`, `edad`, `sexo`, `created_at`, `updated_at`, `materia_id`) VALUES
(1, 'hector', 56565656, 50, 1, '2017-06-25 12:20:16', '2017-06-27 01:09:27', 3),
(3, 'Kate', 78787878, 50, 0, '2017-06-25 12:37:13', '2017-06-25 13:21:59', 2),
(4, 'Marco', 87899865, 30, 1, '2017-06-25 18:09:48', '2017-06-25 18:10:01', 1),
(5, 'Gillermo', 72356841, 60, 1, '2017-06-27 00:23:11', '2017-06-27 00:23:11', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `clave_materia` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-06-24 06:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `clave_materia`, `created_at`, `updated_at`) VALUES
(1, 'Fundamentos de programacion', 889, '2017-06-24 06:00:00', '2017-06-25 03:38:31'),
(2, 'Programacion Orientada a Objetos', 890, '2017-06-24 06:00:00', '2017-06-25 03:39:22'),
(3, 'Calculo Integral', 891, '2017-06-24 06:00:00', '2017-06-25 03:40:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrera_id` (`carrera_id`);

--
-- Indices de la tabla `alumnosxgrupos`
--
ALTER TABLE `alumnosxgrupos`
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maestro_id` (`maestro_id`),
  ADD KEY `maestro_id_2` (`maestro_id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `FKcarreras` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumnosxgrupos`
--
ALTER TABLE `alumnosxgrupos`
  ADD CONSTRAINT `alumnosxgrupos_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumnosxgrupos_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id`);

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);

--
-- Filtros para la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD CONSTRAINT `maestros_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
