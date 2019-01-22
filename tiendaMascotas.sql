-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2019 at 01:54 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Mascotas`
--

-- --------------------------------------------------------

--
-- Table structure for table `especies`
--

CREATE TABLE `especies` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `especies`
--

INSERT INTO `especies` (`id`, `nombre`) VALUES
(9, 'Gato'),
(10, 'Perro'),
(11, 'Perico'),
(12, 'Chimpance'),
(13, 'Hamster');

-- --------------------------------------------------------

--
-- Table structure for table `mascotas`
--

CREATE TABLE `mascotas` (
  `id` int(11) NOT NULL,
  `id_especie` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `nacimiento` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mascotas`
--

INSERT INTO `mascotas` (`id`, `id_especie`, `nombre`, `precio`, `nacimiento`, `foto`) VALUES
(1, 9, 'Misifu', 50000, '2019-01-09', ''),
(2, 9, 'Gato volador', 85000000, '2019-01-08', ''),
(3, 9, 'Pinshi gato loco', 654654, '2019-01-01', ''),
(4, 9, 'Mittens', 4848, '2019-01-09', ''),
(5, 11, 'Pablo Escobar', 8000000, '2019-01-09', ''),
(6, 11, 'El Ezequiel', 80000, '2019-01-02', ''),
(7, 13, 'Jijis', 1234, '2019-01-01', ''),
(8, 10, 'Lenny', 70000000, '2019-01-03', ''),
(9, 9, 'Misifu', 50000, '2019-01-09', ''),
(10, 9, 'Gato volador', 85000000, '2019-01-08', ''),
(11, 9, 'Pinshi gato loco', 654654, '2019-01-01', ''),
(12, 9, 'Mittens', 4848, '2019-01-09', ''),
(13, 11, 'Pablo Escobar', 8000000, '2019-01-09', ''),
(14, 11, 'El Ezequiel', 80000, '2019-01-02', ''),
(15, 13, 'Jijis', 1234, '2019-01-01', ''),
(16, 10, 'Lenny', 70000000, '2019-01-03', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_especie` (`id_especie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `especies`
--
ALTER TABLE `especies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id`);