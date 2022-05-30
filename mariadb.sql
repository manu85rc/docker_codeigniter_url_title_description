-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mariadb:3306
-- Tiempo de generación: 30-05-2022 a las 15:35:55
-- Versión del servidor: 10.6.8-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webs`
--

CREATE TABLE `webs` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `titul` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `webs`
--

INSERT INTO `webs` (`id`, `url`, `titul`, `desc`) VALUES
(1, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(2, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(3, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(4, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(5, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(6, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(7, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(8, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(9, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(10, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(11, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(12, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(13, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(14, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(18, 'http://manueweb.duckdns.org/', 'Default Site', 'NULL'),
(20, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(21, 'https://www.lacapital.com.ar', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(22, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(23, 'https://www.lacapital.com.ar/', 'La Capital | Noticias, actualidad y toda la información de Rosario y la región', 'La Capital'),
(24, 'https://www.manue.website/', NULL, 'NULL'),
(25, 'https://www.manue.website/', NULL, 'NULL'),
(26, 'https://www.manue.website/', NULL, 'NULL'),
(27, 'https://www.manue.website/', NULL, 'NULL'),
(28, 'https://www.manue.website/', 'NULL', 'NULL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `webs`
--
ALTER TABLE `webs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
