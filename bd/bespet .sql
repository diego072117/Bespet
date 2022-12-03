-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 03:50:11
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bespet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_Administrador` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_Administrador`, `Nombre`, `apellido`, `Telefono`, `Direccion`, `Correo`, `id_Usuario`, `estado`) VALUES
(1, 'Diego ', 'Parra', '3206798022', 'CLL 122a N 32 ', 'daparra500@sena.co', 2, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignarservicio`
--

CREATE TABLE `asignarservicio` (
  `id_Asignar` int(11) NOT NULL,
  `id_Mascota` int(11) NOT NULL,
  `id_Servicios` int(11) NOT NULL,
  `id_Peluquero` int(11) NOT NULL,
  `nombrePeluquero` varchar(50) NOT NULL,
  `nombreMascota` varchar(50) NOT NULL,
  `nombreServicio` varchar(50) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `fechaTerminado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Estado` varchar(50) NOT NULL DEFAULT 'pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignarservicio`
--

INSERT INTO `asignarservicio` (`id_Asignar`, `id_Mascota`, `id_Servicios`, `id_Peluquero`, `nombrePeluquero`, `nombreMascota`, `nombreServicio`, `IdCliente`, `fechaTerminado`, `Estado`) VALUES
(5, 1, 2, 1, 'Anhy', 'Ship', 'Corte de pelo', 1, '2022-11-28 02:17:34', 'pendiente'),
(6, 2, 2, 1, 'Anhy', 'Manchas', 'Corte de pelo', 2, '2022-11-28 02:18:05', 'terminado'),
(7, 3, 3, 1, 'Anhy', 'Zeus', 'Limpeza de oidos', 1, '2022-11-28 02:17:34', 'pendiente'),
(8, 4, 3, 1, 'Anhy', 'Nila', 'Limpeza de oidos', 2, '2022-11-28 02:18:04', 'terminado'),
(9, 2, 3, 1, 'Anhy', 'Manchas', 'Limpeza de oidos', 2, '2022-11-28 02:20:13', 'pendiente'),
(10, 2, 2, 2, 'Daniel', 'Manchas', 'Corte de pelo', 2, '2022-11-29 15:33:28', 'terminado'),
(11, 4, 2, 1, 'Anhy', 'Nila', 'Corte de pelo', 2, '2022-11-30 02:53:13', 'pendiente'),
(12, 2, 3, 2, 'Daniel', 'Manchas', 'Limpeza de oidos', 2, '2022-11-30 20:20:35', 'pendiente'),
(13, 1, 2, 1, 'Anhy', 'Ship', 'Corte de pelo', 1, '2022-12-01 02:54:33', 'pendiente'),
(14, 2, 3, 1, 'Anhy', 'Manchas', 'Limpeza de oidos', 2, '2022-12-01 02:54:33', 'pendiente'),
(15, 4, 3, 2, 'Daniel', 'Nila', 'Limpeza de oidos', 2, '2022-12-01 02:58:04', 'pendiente'),
(16, 5, 2, 2, 'Daniel', 'Yasuo', 'Corte de pelo', 1, '2022-12-01 02:58:04', 'pendiente'),
(17, 5, 2, 1, 'Anhy', 'Yasuo', 'Corte de pelo', 1, '2022-12-02 02:28:01', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL DEFAULT 'activo',
  `id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `Nombres`, `Apellidos`, `Telefono`, `Correo`, `avatar`, `Estado`, `id_Usuario`) VALUES
(1, 'Nicolas', 'Garcia', '350679821', 'ngarcia@misena.edu.co', 'avatar2.jpg', 'activo', 3),
(2, 'Johan', 'Velasques', '87321622', 'Johan@gmail.com', 'avatar1.jpg', 'activo', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id_Mascota` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Edad` varchar(5) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Raza` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL DEFAULT 'activo',
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`id_Mascota`, `Nombre`, `Edad`, `Tipo`, `Raza`, `Estado`, `id_cliente`) VALUES
(1, 'Ship', '6', 'gato', 'criollo', 'activo', 1),
(2, 'Manchas', '5', 'gato', 'criollo', 'activo', 2),
(3, 'Zeus', '4', 'perro', 'pitbul', 'activo', 1),
(4, 'Nila', '1', 'perro', 'Boxer', 'activo', 2),
(5, 'Yasuo', '8', 'gato', 'criollo', 'activo', 1),
(6, 'Ares', '6', 'perro', 'pitbul', 'activo', 2),
(8, 'Nieves', '5', 'gato', 'Criollo', 'inactivo', 1),
(9, 'Gabriel', '2', 'gato', 'Criollo', 'activo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peluquero`
--

CREATE TABLE `peluquero` (
  `id_Peluquero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL DEFAULT 'activo',
  `id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peluquero`
--

INSERT INTO `peluquero` (`id_Peluquero`, `Nombre`, `apellido`, `Telefono`, `Direccion`, `Correo`, `Estado`, `id_Usuario`) VALUES
(1, 'Anhy', 'Pinilla', '360158762', 'CLL 142a N 128 a', 'appinilla92@misena.edu.co', 'activo', 1),
(2, 'Daniel', 'Sierra', '320549511', 'CLL 39 N15 32', 'dfsierra@misena.edu.co', 'activo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Productos` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Estado` varchar(50) NOT NULL DEFAULT 'activo',
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Productos`, `Nombre`, `Precio`, `Estado`, `img`) VALUES
(4, 'Shampoo', '14000', 'activo', 'product_01.jpg'),
(5, 'Peine', '5000', 'activo', 'product_02.jpg'),
(6, 'collar', '12000', 'activo', 'product_03.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(11) NOT NULL,
  `rolTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_Rol`, `rolTipo`) VALUES
(1, 'Administrador'),
(2, 'Peluquero'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_Servicios` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `img` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_Servicios`, `Nombre`, `Precio`, `img`, `Estado`) VALUES
(1, 'Baño', '10000', 'bañoperro2.jpg', 'activo'),
(2, 'Corte de pelo', '9000', 's1.jpg', 'activo'),
(3, 'Limpeza de oidos', '5000', 's3.jpeg', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` int(11) NOT NULL,
  `Estado` varchar(10) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `Usuario`, `Password`, `Estado`) VALUES
(1, 'appinilla92@misena.edu.co', 1010095946, 'activo'),
(2, 'parracalderond9@gmail.com', 1031643005, 'activo'),
(3, 'ngarcia@misena.edu.co', 908070, 'activo'),
(5, 'dfsierra@misena.edu.co', 302010, 'activo'),
(6, 'johann@gmail.com', 505050, 'activo'),
(7, 'Sofia@misena.edu.co', 102030, 'inactivo'),
(45, 'daparra500@misena.edu.co', 123456789, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_Rol` int(11) DEFAULT NULL,
  `id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_Rol`, `id_Usuario`) VALUES
(1, 2),
(2, 1),
(3, 3),
(3, 6),
(2, 5),
(1, 45);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_Administrador`),
  ADD UNIQUE KEY `id_Usuario` (`id_Usuario`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- Indices de la tabla `asignarservicio`
--
ALTER TABLE `asignarservicio`
  ADD PRIMARY KEY (`id_Asignar`),
  ADD KEY `id_Servicios` (`id_Servicios`),
  ADD KEY `id_Mascota` (`id_Mascota`),
  ADD KEY `id_Peluquero` (`id_Peluquero`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `id_Usuario` (`id_Usuario`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_Mascota`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `peluquero`
--
ALTER TABLE `peluquero`
  ADD PRIMARY KEY (`id_Peluquero`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `id_Usuario` (`id_Usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Productos`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_Servicios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD UNIQUE KEY `Usuario` (`Usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD KEY `id_Rol` (`id_Rol`),
  ADD KEY `id_Usuario` (`id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_Administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asignarservicio`
--
ALTER TABLE `asignarservicio`
  MODIFY `id_Asignar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id_Mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `peluquero`
--
ALTER TABLE `peluquero`
  MODIFY `id_Peluquero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_Servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `asignarservicio`
--
ALTER TABLE `asignarservicio`
  ADD CONSTRAINT `asignarservicio_ibfk_1` FOREIGN KEY (`id_Servicios`) REFERENCES `servicios` (`id_Servicios`),
  ADD CONSTRAINT `asignarservicio_ibfk_2` FOREIGN KEY (`id_Mascota`) REFERENCES `mascota` (`id_Mascota`),
  ADD CONSTRAINT `asignarservicio_ibfk_3` FOREIGN KEY (`id_Peluquero`) REFERENCES `peluquero` (`id_Peluquero`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `peluquero`
--
ALTER TABLE `peluquero`
  ADD CONSTRAINT `peluquero_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`id_Rol`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`id_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
