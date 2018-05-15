-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2018 a las 17:34:33
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tercerapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulariogeneral`
--

CREATE TABLE `formulariogeneral` (
  `id` int(11) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `escolaridad` varchar(50) NOT NULL,
  `estadoCivil` varchar(50) NOT NULL,
  `afiliacion` varchar(50) NOT NULL,
  `padecimientos` varchar(50) NOT NULL,
  `cohabitacion` tinyint(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amai` varchar(50) DEFAULT NULL,
  `kartz` varchar(50) DEFAULT NULL,
  `mental` varchar(50) DEFAULT NULL,
  `barthel` varchar(50) DEFAULT NULL,
  `lawtonBrody` varchar(50) DEFAULT NULL,
  `escalaDepresion` varchar(50) DEFAULT NULL,
  `nutricional` varchar(50) DEFAULT NULL,
  `perdidaPeso` varchar(50) DEFAULT NULL,
  `resistencia` varchar(50) DEFAULT NULL,
  `velocidad` varchar(50) DEFAULT NULL,
  `debilitamiento` varchar(50) DEFAULT NULL,
  `actividad` varchar(50) DEFAULT NULL,
  `diagnostico` varchar(50) DEFAULT NULL,
  `paciente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulariomovilidad`
--

CREATE TABLE `formulariomovilidad` (
  `id` int(11) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularionutricion`
--

CREATE TABLE `formularionutricion` (
  `id` int(11) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` double NOT NULL,
  `electrolitos` double DEFAULT NULL,
  `albumina` double DEFAULT NULL,
  `IMC` double DEFAULT NULL,
  `diametroBrazo` double DEFAULT NULL,
  `diametroPierna` double DEFAULT NULL,
  `diametroAbdomen` double DEFAULT NULL,
  `presion` double DEFAULT NULL,
  `BH` double DEFAULT NULL,
  `glucosa` double DEFAULT NULL,
  `lipidos` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularioss`
--

CREATE TABLE `formularioss` (
  `id` int(11) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `dispositivos` varchar(50) DEFAULT NULL,
  `dispMayorUso` varchar(50) DEFAULT NULL,
  `frecuencia` varchar(50) DEFAULT NULL,
  `actividadesUso` varchar(50) DEFAULT NULL,
  `usosFavorecer` varchar(50) DEFAULT NULL,
  `diagnosis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficas`
--

CREATE TABLE `graficas` (
  `id` int(11) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `imgData` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `creacion` date DEFAULT NULL,
  `LastUpdated` date DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `edad` varchar(50) DEFAULT NULL,
  `cohabitacion` tinyint(1) DEFAULT NULL,
  `escolaridad` varchar(75) DEFAULT NULL,
  `afiliacion` varchar(50) DEFAULT NULL,
  `estadoCivil` varchar(50) DEFAULT NULL,
  `escalaAMAI` varchar(50) DEFAULT NULL,
  `autopadecimiento` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `id_formularioMovilidad` int(11) DEFAULT NULL,
  `id_formularioGeneral` int(11) DEFAULT NULL,
  `id_formularioSS` int(11) DEFAULT NULL,
  `id_formularioNutricion` int(11) DEFAULT NULL,
  `id_Fitbit` int(11) DEFAULT NULL,
  `id_grafica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `creacion`, `LastUpdated`, `telefono`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `email`, `direccion`, `edad`, `cohabitacion`, `escolaridad`, `afiliacion`, `estadoCivil`, `escalaAMAI`, `autopadecimiento`, `activo`, `id_formularioMovilidad`, `id_formularioGeneral`, `id_formularioSS`, `id_formularioNutricion`, `id_Fitbit`, `id_grafica`) VALUES
(2, NULL, '2018-05-11', '00001', 'ad', 'a', 'a', 'a@gmail', 'aaa', '54', 1, 'a', 'a', 'Casado', 'A-', 'a', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, 'Juan', 'Lopez', 'Gonzalez', 'juan@mail.com', NULL, NULL, NULL, 'Preparatoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, 'Juan', 'Perez', 'Martinez', 'pepe@mail.com', NULL, NULL, NULL, 'Preparatoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, 'Enrique', 'Navarro', 'Torres', 'e.navarro@mail.com', NULL, '85', 1, 'Posgrado', NULL, 'Casado', 'B+', 'Hipertension', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-05-11', '2018-05-11', '01234567', 'Alberto', 'Juarez', 'Lopez', 'alberto@mail.com', 'Casa de Beto', '56', 0, 'Preparatoria', NULL, 'Divorciado', 'C-', 'VIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-05-11', '2018-05-11', '0000000', 'Adrian', 'Lopez', 'Tsuru', 'adrian@mail.com', 'Casa Mike', '75', 1, 'Licenciatura', 'ISSTE', 'Casado', 'A+', 'Hipertension', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `creacion` date DEFAULT NULL,
  `lastUpdated` date DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `tipo` varchar(50) NOT NULL DEFAULT 'normal',
  `nombre` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `estadoCivil` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `edad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `creacion`, `lastUpdated`, `activo`, `tipo`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `domicilio`, `pass`, `telefono`, `estadoCivil`, `email`, `edad`) VALUES
(1, '2018-05-01', '2018-05-10', 1, 'Administrador', 'Ken', '', '', 'Calle', '1234', '55672438', 'casado', 'hola@gmail.com', '19'),
(2, NULL, '2018-05-10', 0, 'user', 'Adrian', 'Juarez', 'Sevilla', 'Fuego', 'AlfredoSevillaJuarez', NULL, NULL, 'Alfredo.JuarezS@email.com', NULL),
(3, '2018-05-04', '2018-05-10', 1, 'user', 'Pepe', 'Baltazar', 'Ramses', 'Calle del puente', 'JuanitoRamsesBaltazar', NULL, NULL, 'Juanito.BaltazarR@email.com', NULL),
(7, '2018-05-09', '2018-05-09', 1, 'user', 'Juan', 'De la Barrera', 'Gonzalez', NULL, 'JuanGonzalezDe la Barrera', NULL, NULL, 'Juan.De la BarreraG@email.com', NULL),
(8, '2018-05-09', '2018-05-09', 1, 'Usuario', 'Usuario', 'a', 'modificar', NULL, 'Usuariomodificara', NULL, NULL, 'Usuario.am@email.com', NULL),
(9, '2018-05-10', '2018-05-10', 1, 'Usuario', 'Pepe', 'Rojas', 'Bu', 'Casa 1', 'Diogo.RojasB@email.com', NULL, NULL, 'Diogo.RojasB@email.com', NULL),
(10, '2018-05-10', '2018-05-11', 1, 'Usuario', 'Francisco', 'Moran', 'De la Vega', 'Casa 2', '', '76543210', NULL, '', '65');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulariogeneral`
--
ALTER TABLE `formulariogeneral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulariomovilidad`
--
ALTER TABLE `formulariomovilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formularionutricion`
--
ALTER TABLE `formularionutricion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formularioss`
--
ALTER TABLE `formularioss`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `graficas`
--
ALTER TABLE `graficas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_grafica` (`id_grafica`),
  ADD KEY `id_formularioMovilidad` (`id_formularioMovilidad`),
  ADD KEY `id_formularioGeneral` (`id_formularioGeneral`),
  ADD KEY `id_formularioSS` (`id_formularioSS`),
  ADD KEY `id_formularioNutricion` (`id_formularioNutricion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulariogeneral`
--
ALTER TABLE `formulariogeneral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formulariomovilidad`
--
ALTER TABLE `formulariomovilidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formularionutricion`
--
ALTER TABLE `formularionutricion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formularioss`
--
ALTER TABLE `formularioss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `graficas`
--
ALTER TABLE `graficas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_grafica`) REFERENCES `graficas` (`id`),
  ADD CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`id_formularioMovilidad`) REFERENCES `formulariomovilidad` (`id`),
  ADD CONSTRAINT `pacientes_ibfk_3` FOREIGN KEY (`id_formularioGeneral`) REFERENCES `formulariogeneral` (`id`),
  ADD CONSTRAINT `pacientes_ibfk_4` FOREIGN KEY (`id_formularioSS`) REFERENCES `formularioss` (`id`),
  ADD CONSTRAINT `pacientes_ibfk_5` FOREIGN KEY (`id_formularioNutricion`) REFERENCES `formularionutricion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
