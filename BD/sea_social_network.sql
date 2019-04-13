-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2019 a las 14:43:56
-- Versión del servidor: 5.6.37
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sea_social_network`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `id` int(255) NOT NULL,
  `user` int(255) DEFAULT NULL,
  `followed` int(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `following`
--

INSERT INTO `following` (`id`, `user`, `followed`) VALUES
(31, 5, 2),
(37, 3, 2),
(54, 3, 5),
(65, 5, 1),
(67, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(255) NOT NULL,
  `user` int(255) DEFAULT NULL,
  `publication` int(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user`, `publication`) VALUES
(63, 3, 5),
(65, 5, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int(255) DEFAULT NULL,
  `readed` varchar(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `extra` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `type_id`, `readed`, `created_at`, `extra`) VALUES
(1, 3, 'like', 5, '1', '2019-04-11 13:32:22', '30'),
(2, 3, 'follow', 5, '1', '2019-04-11 13:35:11', NULL),
(3, 3, 'like', 3, '1', '2019-04-12 19:24:14', '29'),
(4, 3, 'like', 5, '1', '2019-04-12 19:43:40', '28'),
(5, 3, 'like', 5, '1', '2019-04-12 19:43:41', '29'),
(6, 5, 'like', 3, '1', '2019-04-12 19:58:55', '5'),
(7, 5, 'follow', 3, '1', '2019-04-13 01:25:12', NULL),
(8, 3, 'follow', 5, '1', '2019-04-13 02:34:20', NULL),
(9, 3, 'like', 5, '1', '2019-04-13 03:16:18', '28'),
(10, 3, 'like', 5, '1', '2019-04-13 03:29:02', '30'),
(11, 3, 'like', 5, '1', '2019-04-13 03:29:03', '29'),
(12, 1, 'follow', 3, '0', '2019-04-13 13:12:58', NULL),
(13, 2, 'follow', 3, '0', '2019-04-13 13:13:05', NULL),
(14, 5, 'follow', 3, '1', '2019-04-13 13:18:56', NULL),
(15, 5, 'follow', 3, '1', '2019-04-13 13:19:08', NULL),
(16, 5, 'follow', 3, '1', '2019-04-13 13:19:10', NULL),
(17, 5, 'follow', 3, '1', '2019-04-13 13:19:13', NULL),
(18, 5, 'follow', 3, '1', '2019-04-13 13:20:29', NULL),
(19, 5, 'follow', 3, '1', '2019-04-13 13:20:40', NULL),
(20, 5, 'follow', 3, '1', '2019-04-13 13:25:16', NULL),
(21, 5, 'follow', 3, '1', '2019-04-13 13:27:57', NULL),
(22, 5, 'follow', 3, '1', '2019-04-13 13:28:00', NULL),
(23, 5, 'follow', 3, '1', '2019-04-13 13:28:05', NULL),
(24, 3, 'like', 3, '1', '2019-04-13 13:30:21', '30'),
(25, 5, 'follow', 3, '1', '2019-04-13 13:33:04', NULL),
(26, 5, 'follow', 3, '1', '2019-04-13 13:33:47', NULL),
(27, 5, 'follow', 3, '1', '2019-04-13 13:33:51', NULL),
(28, 5, 'follow', 3, '1', '2019-04-13 13:35:34', NULL),
(29, 5, 'follow', 3, '1', '2019-04-13 13:36:40', NULL),
(30, 5, 'follow', 3, '1', '2019-04-13 13:36:53', NULL),
(31, 5, 'follow', 3, '1', '2019-04-13 13:37:45', NULL),
(32, 1, 'follow', 3, '0', '2019-04-13 13:37:53', NULL),
(33, 1, 'follow', 3, '0', '2019-04-13 13:37:57', NULL),
(34, 3, 'follow', 5, '0', '2019-04-13 13:40:51', NULL),
(35, 3, 'follow', 5, '0', '2019-04-13 13:40:53', NULL),
(36, 1, 'follow', 5, '0', '2019-04-13 14:01:59', NULL),
(37, 1, 'follow', 5, '0', '2019-04-13 14:02:01', NULL),
(38, 1, 'follow', 5, '0', '2019-04-13 14:02:05', NULL),
(39, 1, 'follow', 5, '0', '2019-04-13 14:02:08', NULL),
(40, 1, 'follow', 5, '0', '2019-04-13 14:02:42', NULL),
(41, 1, 'follow', 5, '0', '2019-04-13 14:02:46', NULL),
(42, 1, 'follow', 5, '0', '2019-04-13 14:02:51', NULL),
(43, 3, 'follow', 5, '0', '2019-04-13 14:03:09', NULL),
(44, 3, 'follow', 5, '0', '2019-04-13 14:03:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `private_messages`
--

CREATE TABLE IF NOT EXISTS `private_messages` (
  `id` int(255) NOT NULL,
  `message` longtext,
  `emitter` int(255) DEFAULT NULL,
  `receiver` int(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user` int(255) DEFAULT NULL,
  `followed` int(255) DEFAULT NULL,
  `readed` varchar(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `private_messages`
--

INSERT INTO `private_messages` (`id`, `message`, `emitter`, `receiver`, `file`, `image`, `user`, `followed`, `readed`, `created_at`) VALUES
(1, 'Hola como estas pepe?', 3, 5, NULL, NULL, NULL, NULL, '1', '2019-04-13 01:21:51'),
(2, 'Te envio un par de archivos', 3, 5, '31555118815.pdf', '31555118815.png', NULL, NULL, '1', '2019-04-13 01:26:55'),
(3, 'Te envio otros', 3, 5, '31555119571.pdf', '31555119571.png', NULL, NULL, '1', '2019-04-13 01:39:31'),
(4, 'Hola como estas?', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 02:34:32'),
(5, 'Es un mensaje privado para Soft3', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 02:40:57'),
(6, 'hola pepe', 3, 5, NULL, NULL, NULL, NULL, '1', '2019-04-13 02:42:24'),
(7, 'Mensaje de Pepe para Soft3', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 02:44:10'),
(8, 'Hola mensaje notificado', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:05:49'),
(9, 'Mensaje notificado 2', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:07:38'),
(10, 'Mensaje notificado 3', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:13:50'),
(11, 'Mensaje la pmqtrmp', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:18:39'),
(12, 'hasta aca llegue!', 5, 3, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:27:51'),
(13, 'prueba', 3, 5, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:31:42'),
(14, 'prueba', 3, 5, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:38:52'),
(15, 'prueba de mensaje 3', 3, 5, NULL, NULL, NULL, NULL, '1', '2019-04-13 03:48:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publications`
--

CREATE TABLE IF NOT EXISTS `publications` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `text` mediumtext,
  `document` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publications`
--

INSERT INTO `publications` (`id`, `user_id`, `text`, `document`, `image`, `created_at`) VALUES
(1, 3, 'Hola Mundo', NULL, NULL, '2019-04-09 08:09:45'),
(2, 3, 'Hola mundo con foto!', NULL, '31554797507.png', '2019-04-09 08:11:47'),
(5, 5, 'Hola, soy Pepe y me encanta esta red social', NULL, NULL, '2019-04-09 14:46:40'),
(6, 4, 'Soy leo y es mi primer post', NULL, NULL, '2019-04-09 14:47:51'),
(19, 3, 'Es un curso de desarrollo con Symfony3', NULL, NULL, '2019-04-10 21:53:50'),
(20, 3, 'Mensaje 1', NULL, NULL, '2019-04-10 22:11:33'),
(21, 3, 'Mensaje 2', NULL, NULL, '2019-04-10 22:11:39'),
(22, 3, 'Mensaje 3', NULL, NULL, '2019-04-10 22:11:46'),
(23, 3, 'Mensaje 4', NULL, NULL, '2019-04-10 22:11:51'),
(24, 3, 'Mensaje 5', NULL, NULL, '2019-04-10 22:13:28'),
(25, 3, 'Mensaje 6', NULL, NULL, '2019-04-10 22:13:34'),
(26, 3, 'Mensaje 7', NULL, NULL, '2019-04-10 22:13:40'),
(27, 3, 'Mensaje 8', NULL, NULL, '2019-04-10 22:22:47'),
(28, 3, 'Mensaje 9', NULL, NULL, '2019-04-10 22:22:59'),
(29, 3, 'Mensaje 10', NULL, NULL, '2019-04-10 22:23:05'),
(30, 3, 'Mensaje 11', NULL, NULL, '2019-04-11 06:33:39'),
(31, 5, 'prueba de ajax', NULL, NULL, '2019-04-13 03:28:46'),
(32, 5, 'Prueba de Pepe', NULL, NULL, '2019-04-13 13:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nick` varchar(50) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `name`, `surname`, `password`, `nick`, `bio`, `active`, `image`) VALUES
(1, 'ROLE_ADMIN', 'admin@binweb.net', 'Leonardo', 'Grabow', 'seanetwork', 'admin', NULL, '1', NULL),
(2, 'ROLE_USER', 'newsletter@binweb.net', 'Leonardo', 'Newsletter', '$2y$04$.06tZGzhcaQv27sl0gDj1ujUtu/51RZEUi7AV8VpmQaz3LcdWQmz.', 'Binweb', 'Test', NULL, '21554821405.png'),
(3, 'ROLE_USER', 'soft3@soft.com', 'Soft 3', 'Soft 3', '$2y$04$maR3EXAC4JbWJ.bJu11OQOMTnBTDy9NJSVP3B8/Er2TfuYcwtH9Fa', 'Soft', 'Soy el mejor', NULL, '31554730203.png'),
(4, 'ROLE_USER', 'info@binweb.net', 'Leo', 'Leo', '$2y$04$AM1/5gqYisSUUn.2nWP9uOkFNsfXa5Y/PnUwUVxOm6EM15M9qYHK6', 'Leo', NULL, NULL, NULL),
(5, 'ROLE_USER', 'pepe@pepe.com', 'pepe', 'pepe', '$2y$04$MYKzyLj4DJmqkD20CLC0G.awQYHwpBkYGBgHOgeNbDkostD//Lvi2', 'pepe', 'Soy pepe y soy de Argentina', NULL, '51554821233.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_following_users` (`user`),
  ADD KEY `fk_followed_users` (`followed`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_users` (`user`),
  ADD KEY `fk_likes_publication` (`publication`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_users` (`user_id`);

--
-- Indices de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_emmitter_privates` (`emitter`),
  ADD KEY `fk_receiver_privates` (`receiver`);

--
-- Indices de la tabla `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_publications_users` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uniques_fields` (`email`,`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `following`
--
ALTER TABLE `following`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `following`
--
ALTER TABLE `following`
  ADD CONSTRAINT `fk_followed_users` FOREIGN KEY (`followed`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_following_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_publication` FOREIGN KEY (`publication`) REFERENCES `publications` (`id`),
  ADD CONSTRAINT `fk_likes_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `private_messages`
--
ALTER TABLE `private_messages`
  ADD CONSTRAINT `fk_emmitter_privates` FOREIGN KEY (`emitter`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_receiver_privates` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `fk_publications_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
