-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2026 at 03:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fudbalski_klubovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzava`
--

CREATE TABLE `drzava` (
  `DrzavaID` int(11) NOT NULL,
  `Naziv` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drzava`
--

INSERT INTO `drzava` (`DrzavaID`, `Naziv`) VALUES
(1, 'Spain'),
(2, 'Italy'),
(3, 'Germany'),
(4, 'England'),
(5, 'France'),
(6, 'Portugal'),
(7, 'Netherlands');

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `GradID` int(11) NOT NULL,
  `Grad` varchar(100) DEFAULT NULL,
  `DrzavaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`GradID`, `Grad`, `DrzavaID`) VALUES
(1, 'Madrid', 1),
(2, 'Barcelona', 1),
(3, 'Seville', 1),
(4, 'Rome', 2),
(5, 'Milan', 2),
(6, 'Turin', 2),
(7, 'Berlin', 3),
(8, 'Munich', 3),
(9, 'Dortmund', 3),
(10, 'London', 4),
(11, 'Manchester', 4),
(12, 'Liverpool', 4),
(13, 'Paris', 5),
(14, 'Lyon', 5),
(15, 'Lisbon', 6),
(16, 'Porto', 6),
(17, 'Amsterdam', 7),
(18, 'Rotterdam', 7);

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `KlubID` int(11) NOT NULL,
  `NazivKluba` varchar(100) DEFAULT NULL,
  `StadionID` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Sajt` varchar(100) DEFAULT NULL,
  `Amblem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`KlubID`, `NazivKluba`, `StadionID`, `Email`, `Sajt`, `Amblem`) VALUES
(1, 'Real Madrid', 1, 'rm@gmail.com', 'realmadrid.com', 'real.png'),
(2, 'Barcelona', 2, 'barca@gmail.com', 'fcbarcelona.com', 'barca.png'),
(3, 'Sevilla FC', 3, 'sevilla@gmail.com', 'sevilla.com', 'sevilla.png'),
(4, 'AS Roma', 4, 'roma@gmail.com', 'asroma.com', 'roma.png'),
(5, 'AC Milan', 5, 'milan@gmail.com', 'acmilan.com', 'milan.png'),
(6, 'Juventus', 6, 'juve@gmail.com', 'juventus.com', 'juve.png'),
(7, 'Hertha Berlin', 7, 'hertha@gmail.com', 'hertha.com', 'hertha.png'),
(8, 'Bayern Munich', 8, 'bayern@gmail.com', 'fcbayern.com', 'bayern.png'),
(9, 'Borussia Dortmund', 9, 'bvb@gmail.com', 'bvb.de', 'dortmund.png'),
(10, 'Chelsea', 10, 'chelsea@gmail.com', 'chelsea.com', 'chelsea.png'),
(11, 'Manchester United', 11, 'united@gmail.com', 'manutd.com', 'united.png'),
(12, 'Liverpool', 12, 'liverpool@gmail.com', 'liverpoolfc.com', 'liverpool.png'),
(13, 'PSG', 13, 'psg@gmail.com', 'psg.fr', 'psg.png'),
(14, 'Lyon', 14, 'lyon@gmail.com', 'ol.fr', 'lyon.png'),
(15, 'Benfica', 15, 'benfica@gmail.com', 'slbenfica.pt', 'benfica.png'),
(16, 'Porto', 16, 'porto@gmail.com', 'fcporto.pt', 'porto.png'),
(17, 'Ajax', 17, 'ajax@gmail.com', 'ajax.nl', 'ajax.png'),
(18, 'Feyenoord', 18, 'feyenoord@gmail.com', 'feyenoord.nl', 'feyenoord.png'),
(19, 'Atletico Madrid', 19, NULL, 'https://www.atleticodemadrid.com', 'atletico.png'),
(20, 'Rayo Vallecano', 20, NULL, 'https://www.rayovallecano.es', 'rayo.png');

-- --------------------------------------------------------

--
-- Table structure for table `stadion`
--

CREATE TABLE `stadion` (
  `StadionID` int(11) NOT NULL,
  `Naziv` varchar(100) DEFAULT NULL,
  `Adresa` varchar(100) DEFAULT NULL,
  `Kapacitet` int(11) DEFAULT NULL,
  `GradID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stadion`
--

INSERT INTO `stadion` (`StadionID`, `Naziv`, `Adresa`, `Kapacitet`, `GradID`) VALUES
(1, 'Santiago Bernabeu', 'Madrid', 81000, 1),
(2, 'Camp Nou', 'Barcelona', 99000, 2),
(3, 'Ramon Sanchez Pizjuan', 'Seville', 43000, 3),
(4, 'Olimpico', 'Rome', 70000, 4),
(5, 'San Siro', 'Milan', 80000, 5),
(6, 'Allianz Stadium', 'Turin', 41000, 6),
(7, 'Olympiastadion', 'Berlin', 74000, 7),
(8, 'Allianz Arena', 'Munich', 75000, 8),
(9, 'Signal Iduna Park', 'Dortmund', 81000, 9),
(10, 'Wembley', 'London', 90000, 10),
(11, 'Old Trafford', 'Manchester', 74000, 11),
(12, 'Anfield', 'Liverpool', 54000, 12),
(13, 'Parc des Princes', 'Paris', 47000, 13),
(14, 'Groupama Stadium', 'Lyon', 59000, 14),
(15, 'Estadio da Luz', 'Lisbon', 65000, 15),
(16, 'Estadio do Dragao', 'Porto', 50000, 16),
(17, 'Johan Cruyff Arena', 'Amsterdam', 55000, 17),
(18, 'De Kuip', 'Rotterdam', 51000, 18),
(19, 'Civitas Metropolitano', 'Madrid', NULL, 1),
(20, 'Estadio de Vallecas', 'Madrid', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `takmicenje`
--

CREATE TABLE `takmicenje` (
  `TakmicenjeID` int(11) NOT NULL,
  `NazivTakmicenja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `takmicenje`
--

INSERT INTO `takmicenje` (`TakmicenjeID`, `NazivTakmicenja`) VALUES
(1, 'La Liga'),
(2, 'Premier League'),
(3, 'Ligue 1'),
(4, 'Serie A'),
(5, 'Bundesliga');

-- --------------------------------------------------------

--
-- Table structure for table `utakmica`
--

CREATE TABLE `utakmica` (
  `UtakmicaID` int(11) NOT NULL,
  `DomacinID` int(11) NOT NULL,
  `GostID` int(11) NOT NULL,
  `TakmicenjeID` int(11) NOT NULL,
  `Rezultat` varchar(10) DEFAULT NULL,
  `Datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utakmica`
--

INSERT INTO `utakmica` (`UtakmicaID`, `DomacinID`, `GostID`, `TakmicenjeID`, `Rezultat`, `Datum`) VALUES
(1, 1, 2, 1, '3:1', '2025-05-01'),
(2, 2, 3, 1, '2:0', '2025-05-02'),
(3, 1, 3, 1, '1:1', '2025-05-03'),
(4, 4, 5, 2, '2:1', '2025-05-04'),
(5, 5, 6, 2, '0:0', '2025-05-05'),
(6, 6, 4, 2, '3:2', '2025-05-06'),
(7, 8, 9, 3, '4:1', '2025-05-07'),
(8, 7, 8, 3, '1:2', '2025-05-08'),
(9, 9, 7, 3, '2:2', '2025-05-09'),
(10, 10, 11, 4, '1:0', '2025-05-10'),
(11, 11, 12, 4, '2:2', '2025-05-11'),
(12, 12, 10, 4, '3:1', '2025-05-12'),
(13, 13, 14, 5, '2:0', '2025-05-13'),
(14, 14, 13, 5, '1:3', '2025-05-14'),
(15, 15, 16, 5, '1:1', '2025-05-15'),
(16, 17, 18, 5, '2:1', '2025-05-16'),
(17, 1, 2, 1, '2:1', '2021-03-15'),
(18, 3, 1, 1, '1:1', '2021-04-10'),
(19, 2, 3, 1, '0:2', '2021-05-22'),
(20, 4, 5, 2, '3:0', '2021-06-18'),
(21, 6, 4, 2, '2:2', '2021-07-09'),
(22, 5, 6, 2, '1:0', '2021-08-30'),
(23, 7, 8, 3, '1:3', '2021-09-12'),
(24, 9, 7, 3, '2:1', '2021-10-25'),
(25, 8, 9, 3, '0:0', '2021-11-14'),
(26, 10, 11, 4, '2:0', '2021-12-05'),
(27, 12, 10, 4, '1:2', '2022-01-16'),
(28, 11, 12, 4, '3:3', '2022-02-20'),
(29, 13, 14, 5, '1:0', '2022-03-11'),
(30, 15, 13, 5, '2:2', '2022-04-19'),
(31, 14, 15, 5, '0:1', '2022-05-27'),
(32, 16, 17, 5, '2:1', '2022-06-08'),
(33, 18, 16, 5, '1:1', '2022-07-15'),
(34, 17, 18, 5, '4:2', '2022-08-29'),
(35, 1, 3, 1, '3:2', '2023-01-10'),
(36, 2, 1, 1, '1:0', '2023-02-17'),
(37, 3, 2, 1, '2:2', '2023-03-24'),
(38, 4, 6, 2, '0:0', '2023-04-06'),
(39, 5, 4, 2, '2:1', '2023-05-14'),
(40, 6, 5, 2, '1:3', '2023-06-21'),
(41, 7, 9, 3, '2:0', '2023-07-03'),
(42, 8, 7, 3, '1:1', '2023-08-12'),
(43, 9, 8, 3, '0:2', '2023-09-25'),
(44, 10, 12, 4, '3:1', '2023-10-07'),
(45, 11, 10, 4, '2:0', '2023-11-19'),
(46, 12, 11, 4, '1:1', '2023-12-28'),
(47, 13, 15, 5, '0:1', '2024-01-13'),
(48, 14, 13, 5, '2:0', '2024-02-22'),
(49, 15, 14, 5, '3:2', '2024-03-08'),
(50, 16, 18, 5, '1:1', '2024-04-16'),
(51, 17, 16, 5, '2:3', '2024-05-29'),
(52, 18, 17, 5, '0:0', '2024-06-11'),
(53, 1, 2, 1, '4:1', '2024-07-05'),
(54, 3, 1, 1, '2:0', '2024-08-18'),
(55, 2, 3, 1, '1:1', '2024-09-30'),
(56, 4, 5, 2, '2:2', '2024-10-09'),
(57, 6, 4, 2, '0:1', '2024-11-17'),
(58, 5, 6, 2, '3:1', '2024-12-22'),
(59, 1, 3, 1, '1:0', '2020-01-15'),
(60, 2, 1, 1, '2:2', '2020-02-20'),
(61, 3, 2, 1, '3:1', '2020-03-18'),
(62, 4, 6, 2, '0:1', '2020-04-22'),
(63, 5, 4, 2, '2:0', '2020-05-17'),
(64, 6, 5, 2, '1:1', '2020-06-30'),
(65, 7, 9, 3, '4:2', '2020-07-11'),
(66, 8, 7, 3, '0:0', '2020-08-24'),
(67, 9, 8, 3, '2:3', '2020-09-09'),
(68, 10, 12, 4, '1:0', '2020-10-18'),
(69, 11, 10, 4, '2:1', '2020-11-27'),
(70, 12, 11, 4, '3:2', '2020-12-13'),
(71, 13, 14, 5, '2:0', '2019-01-19'),
(72, 15, 13, 5, '1:1', '2019-02-28'),
(73, 14, 15, 5, '0:2', '2019-03-21'),
(74, 16, 17, 5, '3:1', '2019-04-16'),
(75, 18, 16, 5, '2:2', '2019-05-30'),
(76, 17, 18, 5, '1:0', '2019-06-12'),
(77, 1, 2, 1, '5:1', '2018-07-14'),
(78, 2, 3, 1, '0:1', '2018-08-22'),
(79, 3, 1, 1, '2:2', '2018-09-05'),
(80, 4, 5, 2, '1:3', '2018-10-11'),
(81, 5, 6, 2, '2:1', '2018-11-25'),
(82, 6, 4, 2, '0:0', '2018-12-09'),
(83, 7, 8, 3, '3:0', '2017-03-15'),
(84, 8, 9, 3, '1:2', '2017-04-19'),
(85, 9, 7, 3, '4:1', '2017-05-27'),
(86, 10, 11, 4, '2:0', '2017-06-10'),
(87, 11, 12, 4, '1:1', '2017-07-23'),
(88, 12, 10, 4, '0:3', '2017-08-31'),
(89, 3, 2, 1, '2:2', '2025-05-01'),
(90, 1, 2, 1, '1:0', '2025-05-02'),
(91, 2, 1, 1, '3:2', '2025-05-03'),
(92, 6, 5, 2, '1:1', '2025-05-04'),
(93, 4, 6, 2, '2:0', '2025-05-05'),
(94, 5, 4, 2, '0:1', '2025-05-06'),
(95, 9, 7, 3, '3:1', '2025-05-07'),
(96, 8, 9, 3, '2:2', '2025-05-08'),
(97, 7, 8, 3, '1:0', '2025-05-09'),
(98, 12, 10, 4, '2:1', '2025-05-10'),
(99, 10, 11, 4, '0:0', '2025-05-11'),
(100, 11, 12, 4, '4:2', '2025-05-12'),
(101, 15, 13, 5, '1:1', '2025-05-13'),
(102, 13, 15, 5, '3:0', '2025-05-14'),
(103, 14, 15, 5, '2:1', '2025-05-15'),
(104, 18, 16, 5, '2:0', '2025-05-16'),
(105, 1, 2, 1, '2:1', '2026-01-01'),
(106, 3, 1, 1, '1:1', '2026-01-01'),
(107, 4, 5, 2, '3:0', '2026-01-02'),
(108, 6, 4, 2, '2:2', '2026-01-02'),
(109, 7, 8, 3, '1:0', '2026-01-03'),
(110, 9, 7, 3, '2:1', '2026-01-03'),
(111, 10, 11, 4, '2:0', '2026-01-04'),
(112, 12, 10, 4, '1:2', '2026-01-04'),
(113, 13, 14, 5, '1:1', '2026-01-05'),
(114, 15, 13, 5, '2:0', '2026-01-05'),
(115, 16, 17, 5, '3:1', '2026-01-06'),
(116, 18, 16, 5, '0:0', '2026-01-06'),
(117, 1, 3, 1, '4:2', '2026-01-07'),
(118, 2, 1, 1, '1:0', '2026-01-07'),
(119, 4, 6, 2, '2:1', '2026-01-08'),
(120, 5, 4, 2, '1:1', '2026-01-08'),
(121, 7, 9, 3, '3:0', '2026-01-09'),
(122, 8, 7, 3, '2:2', '2026-01-09'),
(123, 10, 12, 4, '1:0', '2026-01-10'),
(124, 11, 10, 4, '2:1', '2026-01-10'),
(125, 13, 15, 5, '0:1', '2026-01-11'),
(126, 14, 13, 5, '2:0', '2026-01-11'),
(127, 16, 18, 5, '1:1', '2026-01-12'),
(128, 17, 16, 5, '3:2', '2026-01-12'),
(129, 1, 2, 1, '5:1', '2026-01-13'),
(130, 3, 2, 1, '0:0', '2026-01-13'),
(131, 4, 5, 2, '2:3', '2026-01-14'),
(132, 6, 5, 2, '1:0', '2026-01-14'),
(133, 7, 8, 3, '2:1', '2026-01-15'),
(134, 9, 8, 3, '4:2', '2026-01-15'),
(135, 10, 11, 4, '2:1', '2026-01-16'),
(136, 12, 10, 4, '1:1', '2026-01-17'),
(137, 13, 14, 5, '3:0', '2026-01-18'),
(138, 15, 13, 5, '2:2', '2026-01-19'),
(139, 16, 17, 5, '1:0', '2026-01-20'),
(140, 18, 16, 5, '4:1', '2026-01-21'),
(141, 1, 3, 1, '2:0', '2026-01-22'),
(142, 2, 1, 1, '1:3', '2026-01-23'),
(143, 4, 5, 2, '0:0', '2026-01-24'),
(144, 6, 4, 2, '2:1', '2026-01-25'),
(145, 7, 8, 3, '3:2', '2026-01-26'),
(146, 9, 7, 3, '1:1', '2026-01-27'),
(147, 10, 12, 4, '2:0', '2026-01-28'),
(148, 11, 10, 4, '0:1', '2026-01-29'),
(149, 13, 15, 5, '4:2', '2026-01-30'),
(150, 14, 13, 5, '2:1', '2026-01-31'),
(151, 10, 11, 4, '2:1', '2026-01-16'),
(152, 12, 10, 4, '1:1', '2026-01-17'),
(153, 13, 14, 5, '3:0', '2026-01-18'),
(154, 15, 13, 5, '2:2', '2026-01-19'),
(155, 16, 17, 5, '1:0', '2026-01-20'),
(156, 18, 16, 5, '4:1', '2026-01-21'),
(157, 1, 3, 1, '2:0', '2026-01-22'),
(158, 2, 1, 1, '1:3', '2026-01-23'),
(159, 4, 5, 2, '0:0', '2026-01-24'),
(160, 6, 4, 2, '2:1', '2026-01-25'),
(161, 7, 8, 3, '3:2', '2026-01-26'),
(162, 9, 7, 3, '1:1', '2026-01-27'),
(163, 10, 12, 4, '2:0', '2026-01-28'),
(164, 11, 10, 4, '0:1', '2026-01-29'),
(165, 13, 15, 5, '4:2', '2026-01-30'),
(166, 14, 13, 5, '2:1', '2026-01-31'),
(167, 1, 3, 1, '2:1', '2026-03-01'),
(168, 2, 1, 1, '1:0', '2026-03-02'),
(169, 4, 5, 2, '3:0', '2026-03-03'),
(170, 6, 4, 2, '2:2', '2026-03-04'),
(171, 7, 8, 3, '1:0', '2026-03-05'),
(172, 9, 7, 3, '2:1', '2026-03-06'),
(173, 10, 11, 4, '2:0', '2026-03-07'),
(174, 12, 10, 4, '1:2', '2026-03-08'),
(175, 13, 14, 5, '1:1', '2026-03-09'),
(176, 15, 13, 5, '2:0', '2026-03-10'),
(177, 16, 17, 5, '3:1', '2026-03-11'),
(178, 18, 16, 5, '0:0', '2026-03-12'),
(179, 1, 2, 1, '4:1', '2026-03-13'),
(180, 3, 2, 1, '2:2', '2026-03-14'),
(181, 4, 6, 2, '1:0', '2026-03-15'),
(182, 5, 4, 2, '2:1', '2026-03-16'),
(183, 7, 9, 3, '3:0', '2026-03-17'),
(184, 8, 7, 3, '1:1', '2026-03-18'),
(185, 10, 12, 4, '2:0', '2026-03-19'),
(186, 11, 10, 4, '0:1', '2026-03-20'),
(187, 13, 15, 5, '4:2', '2026-03-21'),
(188, 14, 13, 5, '2:1', '2026-03-22'),
(189, 16, 18, 5, '1:1', '2026-03-23'),
(190, 17, 16, 5, '3:2', '2026-03-24'),
(191, 1, 3, 1, '2:0', '2026-03-25'),
(192, 2, 1, 1, '1:2', '2026-03-26'),
(193, 4, 5, 2, '0:0', '2026-03-27'),
(194, 6, 4, 2, '2:1', '2026-03-28'),
(195, 7, 8, 3, '3:1', '2026-03-29'),
(196, 9, 7, 3, '1:0', '2026-03-30'),
(197, 10, 11, 4, '2:2', '2026-03-31'),
(198, 1, 2, 1, '2:1', '2026-06-01'),
(199, 3, 1, 1, '1:0', '2026-06-02'),
(200, 4, 5, 2, '3:2', '2026-06-03'),
(201, 6, 4, 2, '0:0', '2026-06-04'),
(202, 7, 8, 3, '2:1', '2026-06-05'),
(203, 9, 7, 3, '1:2', '2026-06-06'),
(204, 10, 11, 4, '2:0', '2026-06-07'),
(205, 12, 10, 4, '1:1', '2026-06-08'),
(206, 13, 14, 5, '3:0', '2026-06-09'),
(207, 15, 13, 5, '2:2', '2026-06-10'),
(208, 16, 17, 5, '1:0', '2026-06-11'),
(209, 18, 16, 5, '0:1', '2026-06-12'),
(210, 1, 3, 1, '4:2', '2026-06-13'),
(211, 2, 1, 1, '1:1', '2026-06-14'),
(212, 4, 6, 2, '2:0', '2026-06-15'),
(213, 5, 4, 2, '1:3', '2026-06-16'),
(214, 7, 9, 3, '3:1', '2026-06-17'),
(215, 8, 7, 3, '2:2', '2026-06-18'),
(216, 10, 12, 4, '1:0', '2026-06-19'),
(217, 11, 10, 4, '2:1', '2026-06-20'),
(218, 13, 15, 5, '0:0', '2026-06-21'),
(219, 14, 13, 5, '2:1', '2026-06-22'),
(220, 16, 18, 5, '3:2', '2026-06-23'),
(221, 17, 16, 5, '1:1', '2026-06-24'),
(222, 1, 2, 1, '2:0', '2026-06-25'),
(223, 3, 2, 1, '1:2', '2026-06-26'),
(224, 4, 5, 2, '3:1', '2026-06-27'),
(225, 6, 5, 2, '0:1', '2026-06-28'),
(226, 7, 8, 3, '2:1', '2026-06-29'),
(227, 9, 8, 3, '1:0', '2026-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzava`
--
ALTER TABLE `drzava`
  ADD PRIMARY KEY (`DrzavaID`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`GradID`),
  ADD KEY `DrzavaID` (`DrzavaID`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`KlubID`),
  ADD KEY `StadionID` (`StadionID`);

--
-- Indexes for table `stadion`
--
ALTER TABLE `stadion`
  ADD PRIMARY KEY (`StadionID`),
  ADD KEY `GradID` (`GradID`);

--
-- Indexes for table `takmicenje`
--
ALTER TABLE `takmicenje`
  ADD PRIMARY KEY (`TakmicenjeID`);

--
-- Indexes for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD PRIMARY KEY (`UtakmicaID`),
  ADD KEY `DomacinID` (`DomacinID`),
  ADD KEY `GostID` (`GostID`),
  ADD KEY `TakmicenjeID` (`TakmicenjeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzava`
--
ALTER TABLE `drzava`
  MODIFY `DrzavaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `GradID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `KlubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stadion`
--
ALTER TABLE `stadion`
  MODIFY `StadionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `takmicenje`
--
ALTER TABLE `takmicenje`
  MODIFY `TakmicenjeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utakmica`
--
ALTER TABLE `utakmica`
  MODIFY `UtakmicaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grad`
--
ALTER TABLE `grad`
  ADD CONSTRAINT `grad_ibfk_1` FOREIGN KEY (`DrzavaID`) REFERENCES `drzava` (`DrzavaID`);

--
-- Constraints for table `klub`
--
ALTER TABLE `klub`
  ADD CONSTRAINT `klub_ibfk_1` FOREIGN KEY (`StadionID`) REFERENCES `stadion` (`StadionID`);

--
-- Constraints for table `stadion`
--
ALTER TABLE `stadion`
  ADD CONSTRAINT `stadion_ibfk_1` FOREIGN KEY (`GradID`) REFERENCES `grad` (`GradID`);

--
-- Constraints for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD CONSTRAINT `utakmica_ibfk_1` FOREIGN KEY (`DomacinID`) REFERENCES `klub` (`KlubID`),
  ADD CONSTRAINT `utakmica_ibfk_2` FOREIGN KEY (`GostID`) REFERENCES `klub` (`KlubID`),
  ADD CONSTRAINT `utakmica_ibfk_3` FOREIGN KEY (`TakmicenjeID`) REFERENCES `takmicenje` (`TakmicenjeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
