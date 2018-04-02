-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2018 a las 02:42:34
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `springbootCRUD`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spring_tbl`
--

CREATE TABLE `spring_tbl` (
  `id` int(11) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `Purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `spring_tbl`
--

INSERT INTO `spring_tbl` (`id`, `book_name`, `author`, `Purchase_date`) VALUES
(1, 'Java', 'Oracle Java', '2017-01-01'),
(2, 'PHP con Laravel', 'Codigofacilito', '2018-01-03'),
(9, 'Libro', 'Autor', '2017-01-05'),
(10, 'Libro', 'Autor', '2017-01-05'),
(11, 'Libro', 'Autor', '2017-01-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `spring_tbl`
--
ALTER TABLE `spring_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `spring_tbl`
--
ALTER TABLE `spring_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
