-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2024 a las 00:18:46
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
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Cipla', 1, 1),
(2, 'Mankind', 1, 1),
(3, 'Sunpharma', 1, 1),
(4, 'MicroLabs', 1, 1),
(5, 'Pfizer', 1, 1),
(6, 'LaboratorioChile', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Pastillas', 1, 1),
(2, 'Jarabe', 1, 1),
(3, 'Inyecciones', 1, 1),
(4, 'Paliativos', 1, 1),
(5, 'Vacunas', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `uno` varchar(50) NOT NULL,
  `orderDate` date NOT NULL,
  `clientName` text NOT NULL,
  `projectName` varchar(30) NOT NULL,
  `clientContact` int(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `subTotal` int(100) NOT NULL,
  `totalAmount` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  `grandTotalValue` int(100) NOT NULL,
  `gstn` int(100) NOT NULL,
  `paid` int(100) NOT NULL,
  `dueValue` int(100) NOT NULL,
  `paymentType` int(15) NOT NULL,
  `paymentStatus` int(15) NOT NULL,
  `paymentPlace` int(5) NOT NULL,
  `delete_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `uno`, `orderDate`, `clientName`, `projectName`, `clientContact`, `address`, `subTotal`, `totalAmount`, `discount`, `grandTotalValue`, `gstn`, `paid`, `dueValue`, `paymentType`, `paymentStatus`, `paymentPlace`, `delete_status`) VALUES
(1, 'INV-0001', '2022-02-28', 'Lucho Florez', '', 2147483647, '', 100, 10, 108, 49, 0, 49, 49, 2, 1, 0, 0),
(2, 'INV-0002', '2022-03-24', 'Bernardo Galán', '', 2147483647, '', 300, 354, 354, 354, 18, 354, 354, 1, 1, 1, 0),
(3, 'INV-0003', '2022-04-15', 'Fredy Patricio', '', 2147483647, '', 860, 1015, 10, 1005, 155, 500, 505, 2, 2, 1, 0),
(4, 'INV-0004', '2022-04-15', 'Pedro Cliente', '', 2147483647, '', 60, 71, 0, 71, 11, 50, 21, 5, 2, 1, 0),
(5, 'INV-0005', '2022-05-01', 'Juan Cliente', '', 2147483647, '', 200, 236, 0, 236, 36, 300, -64, 2, 1, 1, 0),
(6, 'INV-0006', '2022-05-01', 'Julio Cliente', '', 2147483647, '', 250, 295, 0, 295, 45, 300, -5, 2, 1, 2, 0),
(7, 'INV-0007', '2022-05-03', 'Pedro García', '', 2147483647, '', 250, 295, 0, 295, 45, 300, -5, 2, 1, 1, 0),
(8, 'INV-0008', '2023-12-11', 'Andres peres', '', 2147483647, '', 250, 250, 45, 45, 0, 0, 0, 1, 2, 0, 0),
(9, 'INV-0009', '2023-12-13', 'Camilo ', '', 2147483647, '', 1800, 2124, 2124, 0, 324, 0, 0, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE `order_item` (
  `id` int(15) NOT NULL,
  `productName` int(100) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `lastid` int(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `order_item`
--

INSERT INTO `order_item` (`id`, `productName`, `quantity`, `rate`, `total`, `lastid`, `added_date`) VALUES
(5, 2, '1', '100', '100.00', 1, '0000-00-00'),
(7, 1, '2', '30', '60.00', 3, '2022-04-15'),
(8, 2, '4', '150', '600.00', 3, '2022-04-15'),
(9, 3, '1', '200', '200.00', 3, '2022-04-15'),
(10, 1, '2', '30', '60.00', 4, '2022-04-15'),
(13, 2, '2', '150', '300.00', 2, '2022-04-15'),
(14, 3, '1', '200', '200.00', 5, '2022-05-01'),
(15, 5, '1', '250', '250.00', 6, '2022-05-01'),
(16, 5, '1', '250', '250.00', 7, '2022-05-03'),
(20, 6, '4', '20', '20.00', 8, '0000-00-00'),
(21, 3, '1', '200', '200.00', 8, '0000-00-00'),
(22, 1, '7', '30', '30.00', 8, '0000-00-00'),
(23, 6, '20', '20', '400.00', 9, '2023-12-13'),
(24, 1, '40', '30', '1200.00', 9, '2023-12-13'),
(25, 3, '1', '200', '200.00', 9, '2023-12-13'),
(26, 0, '', '', '', 9, '2023-12-13');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `mrp` int(100) NOT NULL,
  `bno` varchar(50) NOT NULL,
  `expdate` date NOT NULL,
  `added_date` date NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `mrp`, `bno`, `expdate`, `added_date`, `active`, `status`) VALUES
(1, 'Acetaminofen 500', 'tab.jpg', 1, 1, '47', '30', 40, '307002', '2045-02-28', '2022-02-28', 1, 1),
(2, 'Fronta 23', 'tab1.jpg', 2, 1, '30', '150', 200, '307003', '2022-02-16', '2022-02-28', 1, 1),
(3, 'Rapazol 120', 'tab3.jpg', 3, 3, '73', '200', 300, '307004', '2024-03-13', '2022-02-28', 1, 1),
(4, 'Escripvo 450', 'tab4.jpg', 4, 1, '500', '25', 30, '307005', '2050-05-31', '2022-04-15', 1, 1),
(5, 'Vacuna 123', 'vacuna pfizer.webp', 5, 5, '2500', '250', 254, '171712', '2031-06-18', '2022-05-01', 1, 1),
(6, 'Paracetamol', 'paracetamol.PNG', 6, 1, '1000', '20', 54564956, '8454687974546', '2025-06-10', '2023-12-09', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'camilo', '81dc9bdb52d04dc20036dbd8313ed055', 'camilo@camilo.com'),
(3, 'configuroweb', '4b67deeb9aba04a5b54632ad19934f26', 'hola@configuroweb.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
