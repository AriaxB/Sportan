-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2023 a las 03:48:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sportan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id_catalogo` int(11) NOT NULL,
  `nombre_catalogo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`id_catalogo`, `nombre_catalogo`) VALUES
(1, 'futbol'),
(2, 'baloncesto'),
(3, 'tennis'),
(4, 'crossfit'),
(5, 'beisbol'),
(6, 'atletismo'),
(7, 'boxeo'),
(8, 'calistenia'),
(9, 'volleyball'),
(10, 'ciclismo'),
(11, 'golf'),
(12, 'hockey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `cod_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`cod_ciudad`, `nombre_ciudad`) VALUES
(1, 'bogota'),
(2, 'medellin'),
(3, 'cali'),
(4, 'cartagena'),
(5, 'pasto'),
(6, 'tunja'),
(7, 'manizales'),
(8, 'quindio'),
(9, 'pereira'),
(10, 'bucaramanga'),
(11, 'cucuta'),
(12, 'ibague'),
(13, 'neiva'),
(14, 'villavicencio'),
(15, 'leticia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_producto`
--

CREATE TABLE `estado_producto` (
  `id_estado_producto` int(11) NOT NULL,
  `nombre_estado_producto` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_producto`
--

CREATE TABLE `fotos_producto` (
  `id_producto` int(11) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `cod_genero` int(11) NOT NULL,
  `nombre_genero` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`cod_genero`, `nombre_genero`) VALUES
(1, 'masculino'),
(2, 'femenino'),
(3, 'no-binario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `cod_nacionalidad` int(11) NOT NULL,
  `nombre_nacionalidad` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`cod_nacionalidad`, `nombre_nacionalidad`) VALUES
(1, 'colombiano'),
(2, 'venezolano'),
(3, 'ecuatoriano'),
(4, 'boliviano'),
(5, 'argentino'),
(6, 'brasileño'),
(7, 'paraguayo'),
(8, 'uruguayo'),
(9, 'chileno'),
(10, 'peruano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_pedido`
--

CREATE TABLE `orden_pedido` (
  `id_orden` int(11) NOT NULL,
  `numero_orden` int(11) DEFAULT NULL,
  `precio_total` decimal(10,0) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `doc_vendedor` int(11) DEFAULT NULL,
  `doc_comprador` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_tipo_pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `tipo_pago` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `tipo_pago`) VALUES
(1, 'contra-entrega'),
(2, 'tarjeta'),
(3, 'efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(30) DEFAULT NULL,
  `descripcion_producto` varchar(140) DEFAULT NULL,
  `precio_unitario` decimal(10,0) DEFAULT NULL,
  `id_estado_producto` int(11) DEFAULT NULL,
  `doc_vendedor` int(11) DEFAULT NULL,
  `id_catalogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_solicitud`
--

CREATE TABLE `respuesta_solicitud` (
  `id_solicitud` int(11) DEFAULT NULL,
  `respuesta_solicitud` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'vendedor'),
(2, 'comprador'),
(3, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `numero_solicitud` int(11) NOT NULL,
  `nombre_persona` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `cod_tipo_user` int(11) DEFAULT NULL,
  `id_respuesta` int(11) DEFAULT NULL,
  `id_tipo_solicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_solicitud`
--

CREATE TABLE `tipo_solicitud` (
  `id_tipo_solicitud` int(11) NOT NULL,
  `nombre_solicitud` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `primer_nombre` varchar(30) DEFAULT NULL,
  `segundo_nombre` varchar(30) DEFAULT NULL,
  `primer_apellido` varchar(30) DEFAULT NULL,
  `segundo_apellido` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `num_telefono` varchar(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `contraseña` varchar(15) DEFAULT NULL,
  `cod_ciudad` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `cod_nacionalidad` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `correo`, `num_telefono`, `fecha_nacimiento`, `contraseña`, `cod_ciudad`, `cod_genero`, `cod_nacionalidad`, `id_rol`) VALUES
(1, 'juan', 'felipe', 'rodriguez', 'baez', 'juanfelipe@outlook.com', '3124568877', '2023-08-19', 'juanfelipe', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_solicitud`
--

CREATE TABLE `usuario_solicitud` (
  `cod_user_solicitud` int(11) NOT NULL,
  `nombre_usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id_catalogo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`cod_ciudad`);

--
-- Indices de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD PRIMARY KEY (`id_estado_producto`);

--
-- Indices de la tabla `fotos_producto`
--
ALTER TABLE `fotos_producto`
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_genero`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`cod_nacionalidad`);

--
-- Indices de la tabla `orden_pedido`
--
ALTER TABLE `orden_pedido`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_estado_producto` (`id_estado_producto`),
  ADD KEY `id_catalogo` (`id_catalogo`);

--
-- Indices de la tabla `respuesta_solicitud`
--
ALTER TABLE `respuesta_solicitud`
  ADD KEY `id_solicitud` (`id_solicitud`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`numero_solicitud`),
  ADD KEY `id_tipo_solicitud` (`id_tipo_solicitud`),
  ADD KEY `cod_tipo_user` (`cod_tipo_user`);

--
-- Indices de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  ADD PRIMARY KEY (`id_tipo_solicitud`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `cod_ciudad` (`cod_ciudad`),
  ADD KEY `cod_genero` (`cod_genero`),
  ADD KEY `cod_nacionalidad` (`cod_nacionalidad`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `usuario_solicitud`
--
ALTER TABLE `usuario_solicitud`
  ADD PRIMARY KEY (`cod_user_solicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `cod_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `id_estado_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `cod_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orden_pedido`
--
ALTER TABLE `orden_pedido`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `numero_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  MODIFY `id_tipo_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario_solicitud`
--
ALTER TABLE `usuario_solicitud`
  MODIFY `cod_user_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fotos_producto`
--
ALTER TABLE `fotos_producto`
  ADD CONSTRAINT `fotos_producto_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `orden_pedido`
--
ALTER TABLE `orden_pedido`
  ADD CONSTRAINT `orden_pedido_ibfk_1` FOREIGN KEY (`id_tipo_pago`) REFERENCES `pagos` (`id_pago`),
  ADD CONSTRAINT `orden_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_estado_producto`) REFERENCES `estado_producto` (`id_estado_producto`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo` (`id_catalogo`);

--
-- Filtros para la tabla `respuesta_solicitud`
--
ALTER TABLE `respuesta_solicitud`
  ADD CONSTRAINT `respuesta_solicitud_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitudes` (`numero_solicitud`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`id_tipo_solicitud`) REFERENCES `tipo_solicitud` (`id_tipo_solicitud`),
  ADD CONSTRAINT `solicitudes_ibfk_2` FOREIGN KEY (`cod_tipo_user`) REFERENCES `usuario_solicitud` (`cod_user_solicitud`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`cod_nacionalidad`) REFERENCES `nacionalidad` (`cod_nacionalidad`),
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
