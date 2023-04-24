-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 08:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skola_stranih_jezika`
--

-- --------------------------------------------------------

--
-- Table structure for table `kurs`
--

CREATE TABLE `kurs` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `opis` varchar(250) NOT NULL,
  `cena` int(11) NOT NULL,
  `predavac` int(11) NOT NULL,
  `slika` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kurs`
--

INSERT INTO `kurs` (`id`, `naziv`, `opis`, `cena`, `predavac`, `slika`) VALUES
(1, 'Engleski A1.1', 'Standardni kurs engleskog jezika je namenjen svima koji žele razviti sve jezičke veštine – govor, čitanje, pisanje i slušanje na engleskom jeziku.', 150, 1, 'eng.png'),
(2, 'Engeski A1.2', 'Standardni kurs engleskog jezika je namenjen svima koji žele razviti sve jezičke veštine – govor, čitanje, pisanje i slušanje na engleskom jeziku.', 160, 1, 'eng.png'),
(3, 'Engleski A2.1', 'Standardni kurs engleskog jezika je namenjen svima koji žele razviti sve jezičke veštine – govor, čitanje, pisanje i slušanje na engleskom jeziku.', 165, 2, 'eng.png'),
(4, 'Engeski A2.2', 'Standardni kurs engleskog jezika je namenjen svima koji žele razviti sve jezičke veštine – govor, čitanje, pisanje i slušanje na engleskom jeziku.', 175, 2, 'eng.png');

-- --------------------------------------------------------

--
-- Table structure for table `predavac`
--

CREATE TABLE `predavac` (
  `id_predavac` int(11) NOT NULL,
  `imePrezime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predavac`
--

INSERT INTO `predavac` (`id_predavac`, `imePrezime`) VALUES
(1, 'Pera Peric'),
(2, 'Zika Zikic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kurs`
--
ALTER TABLE `kurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `predavac` (`predavac`);

--
-- Indexes for table `predavac`
--
ALTER TABLE `predavac`
  ADD PRIMARY KEY (`id_predavac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kurs`
--
ALTER TABLE `kurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `predavac`
--
ALTER TABLE `predavac`
  MODIFY `id_predavac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kurs`
--
ALTER TABLE `kurs`
  ADD CONSTRAINT `kurs_ibfk_1` FOREIGN KEY (`predavac`) REFERENCES `predavac` (`id_predavac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
