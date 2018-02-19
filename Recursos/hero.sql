-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2018 a las 16:32:20
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-02-19 15:02:15', '2018-02-19 15:02:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `photo` text,
  `estado` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `name`, `description`, `photo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Spider-Man', 'Es un personaje ficticio y un superhéroe que aparece en los libros e historietas publicados por Marvel Comics.', 'https://images-na.ssl-images-amazon.com/images/I/511KrMXsnqL._SY450_.jpg', -1, '2018-02-16 19:54:53', '2018-02-16 19:55:28'),
(2, 'Deadpool', 'Es un personaje ficticio, mercenario, supervillano y antihéroe, que aparece en los cómics publicados por Marvel Comics.', 'http://images.goodsmile.info/cgm/images/product/20160805/5858/40553/large/e7c4c06632bd896f68153db30c4aefe9.jpg', 1, '2018-02-16 19:57:20', '2018-02-16 19:57:20'),
(3, 'Capitán América', 'Es un superhéroe y justiciero ficticio que aparece en cómics estadounidenses publicados por Marvel Comics.', 'https://images-na.ssl-images-amazon.com/images/I/51ie2G0HeBL._SY450_.jpg', -1, '2018-02-16 19:58:46', '2018-02-19 15:30:48'),
(4, 'Thor', 'Es un superhéroe y príncipe-guerrero Asgardiano, el Semi-dios del Trueno, y un protector auto-proclamado de la Tierra. Thor, posteriormente, se volvió muy conocido por sus acciones en la Tierra.', 'http://images.goodsmile.info/cgm/images/product/20171213/6939/49248/large/5b042a6c5a91ac4a3fd3dc867111f986.jpg', 1, '2018-02-16 20:00:41', '2018-02-16 20:00:41'),
(5, 'Hulk', 'Es un superhéroe que aparece en los cómics estadounidenses publicados por la editorial Marvel Cómics.', 'https://images-na.ssl-images-amazon.com/images/I/516X0YLRV%2BL._SY550_.jpg', 1, '2018-02-16 20:02:24', '2018-02-16 20:02:24'),
(6, 'Daredevil', ' es un personaje ficticio de la editorial Marvel Comics, creado por Stan Lee y Bill Everett, el cual tuvo su primera aparición en el comic-book Daredevil #1, publicado en 1964.', 'https://images-na.ssl-images-amazon.com/images/I/417q3mVDaiL._SL500_AC_SS350_.jpg', -1, '2018-02-19 15:25:47', '2018-02-19 15:28:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180216202957');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
