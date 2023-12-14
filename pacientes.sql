-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 16:34:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `rutPaciente` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `historial_medico` text DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `rutPaciente`, `nombre`, `apellido`, `fecha_nacimiento`, `genero`, `direccion`, `ciudad`, `estado`, `codigo_postal`, `telefono`, `correo_electronico`, `historial_medico`, `fecha_registro`) VALUES
(1, '12456987-9', 'Juan', 'Gómez', '1990-05-15', 'Masculino', 'Calle 123', 'Ciudad A', 'Estado A', '12345', '123456789', 'juan@gmail.com', 'Historial médico de Juan', '2023-12-09 16:31:43'),
(2, '13456987-1', 'Juan', 'Gómez', '1990-05-15', 'Masculino', 'Calle 123', 'Ciudad A', 'Estado A', '12345', '123456789', 'juan@gmail.com', 'Historial médico de Juan', '2023-12-09 16:34:08'),
(3, '16548785-9', 'María', 'López', '1985-08-20', 'Femenino', 'Avenida 456', 'Ciudad B', 'Estado B', '67890', '987654321', 'maria@hotmail.com', 'Historial médico de María', '2023-12-09 16:34:08'),
(4, '20213546-8', 'Carlos', 'Pérez', '1978-12-10', 'Masculino', 'Calle Principal', 'Ciudad C', 'Estado C', '54321', '456789012', 'carlos@yahoo.com', 'Historial médico de Carlos', '2023-12-09 16:34:08'),
(5, '16697319-8', 'camilo', 'henriquez', '1988-01-01', 'Masculino', '', '', '', '', '1234564789', '', '', '2023-12-09 22:42:41'),
(6, '1656545798', 'camilo', 'henriquez naranjo', '1688-01-16', 'Masculino', 'pje cerro chicharras 01463, puente alto, RM', 'santiago region metropolitana', '', '', '1245465789', 'CAMILO.HENRIQUEZ88@GMAIL.COM', '', '2023-12-11 05:22:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
