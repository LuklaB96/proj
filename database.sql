-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sty 08, 2024 at 03:03 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_db`
--
CREATE DATABASE IF NOT EXISTS `app_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `app_db`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exampleentity`
--

CREATE TABLE `exampleentity` (
  `id` int(6) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `login` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `firstName`, `lastName`, `login`) VALUES
(1, 'FirstName1', 'LastName1', 'login1'),
(2, 'FirstName2', 'LastName2', 'login2'),
(3, 'FirstName3', 'LastName3', 'login3'),
(4, 'FirstName4', 'LastName4', 'login4'),
(5, 'FirstName5', 'LastName5', 'login5'),
(6, 'FirstName6', 'LastName6', 'login6'),
(7, 'FirstName7', 'LastName7', 'login7'),
(8, 'FirstName8', 'LastName8', 'login8'),
(9, 'FirstName9', 'LastName9', 'login9'),
(10, 'FirstName10', 'LastName10', 'login10'),
(11, 'FirstName11', 'LastName11', 'login11'),
(12, 'FirstName12', 'LastName12', 'login12'),
(13, 'FirstName13', 'LastName13', 'login13'),
(14, 'FirstName14', 'LastName14', 'login14'),
(15, 'FirstName15', 'LastName15', 'login15'),
(16, 'FirstName16', 'LastName16', 'login16'),
(17, 'FirstName17', 'LastName17', 'login17'),
(18, 'FirstName18', 'LastName18', 'login18'),
(19, 'FirstName19', 'LastName19', 'login19'),
(20, 'FirstName20', 'LastName20', 'login20'),
(21, 'FirstName21', 'LastName21', 'login21'),
(22, 'FirstName22', 'LastName22', 'login22'),
(23, 'FirstName23', 'LastName23', 'login23'),
(24, 'FirstName24', 'LastName24', 'login24'),
(25, 'FirstName25', 'LastName25', 'login25'),
(26, 'FirstName26', 'LastName26', 'login26'),
(27, 'FirstName27', 'LastName27', 'login27'),
(28, 'FirstName28', 'LastName28', 'login28'),
(29, 'FirstName29', 'LastName29', 'login29'),
(30, 'FirstName30', 'LastName30', 'login30'),
(31, 'FirstName31', 'LastName31', 'login31'),
(32, 'FirstName32', 'LastName32', 'login32'),
(33, 'FirstName33', 'LastName33', 'login33'),
(34, 'FirstName34', 'LastName34', 'login34'),
(35, 'FirstName35', 'LastName35', 'login35'),
(36, 'FirstName36', 'LastName36', 'login36'),
(37, 'FirstName37', 'LastName37', 'login37'),
(38, 'FirstName38', 'LastName38', 'login38'),
(39, 'FirstName39', 'LastName39', 'login39'),
(40, 'FirstName40', 'LastName40', 'login40'),
(41, 'FirstName41', 'LastName41', 'login41'),
(42, 'FirstName42', 'LastName42', 'login42'),
(43, 'FirstName43', 'LastName43', 'login43'),
(44, 'FirstName44', 'LastName44', 'login44'),
(45, 'FirstName45', 'LastName45', 'login45'),
(46, 'FirstName46', 'LastName46', 'login46'),
(47, 'FirstName47', 'LastName47', 'login47'),
(48, 'FirstName48', 'LastName48', 'login48'),
(49, 'FirstName49', 'LastName49', 'login49'),
(50, 'FirstName50', 'LastName50', 'login50'),
(51, 'FirstName51', 'LastName51', 'login51'),
(52, 'FirstName52', 'LastName52', 'login52'),
(53, 'FirstName53', 'LastName53', 'login53'),
(54, 'FirstName54', 'LastName54', 'login54'),
(55, 'FirstName55', 'LastName55', 'login55'),
(56, 'FirstName56', 'LastName56', 'login56'),
(57, 'FirstName57', 'LastName57', 'login57'),
(58, 'FirstName58', 'LastName58', 'login58'),
(59, 'FirstName59', 'LastName59', 'login59'),
(60, 'FirstName60', 'LastName60', 'login60'),
(61, 'FirstName61', 'LastName61', 'login61'),
(62, 'FirstName62', 'LastName62', 'login62'),
(63, 'FirstName63', 'LastName63', 'login63'),
(64, 'FirstName64', 'LastName64', 'login64'),
(65, 'FirstName65', 'LastName65', 'login65'),
(66, 'FirstName66', 'LastName66', 'login66'),
(67, 'FirstName67', 'LastName67', 'login67'),
(68, 'FirstName68', 'LastName68', 'login68'),
(69, 'FirstName69', 'LastName69', 'login69'),
(70, 'FirstName70', 'LastName70', 'login70'),
(71, 'FirstName71', 'LastName71', 'login71'),
(72, 'FirstName72', 'LastName72', 'login72'),
(73, 'FirstName73', 'LastName73', 'login73'),
(74, 'FirstName74', 'LastName74', 'login74'),
(75, 'FirstName75', 'LastName75', 'login75'),
(76, 'FirstName76', 'LastName76', 'login76'),
(77, 'FirstName77', 'LastName77', 'login77'),
(78, 'FirstName78', 'LastName78', 'login78'),
(79, 'FirstName79', 'LastName79', 'login79'),
(80, 'FirstName80', 'LastName80', 'login80'),
(81, 'FirstName81', 'LastName81', 'login81'),
(82, 'FirstName82', 'LastName82', 'login82'),
(83, 'FirstName83', 'LastName83', 'login83'),
(84, 'FirstName84', 'LastName84', 'login84'),
(85, 'FirstName85', 'LastName85', 'login85'),
(86, 'FirstName86', 'LastName86', 'login86'),
(87, 'FirstName87', 'LastName87', 'login87'),
(88, 'FirstName88', 'LastName88', 'login88'),
(89, 'FirstName89', 'LastName89', 'login89'),
(90, 'FirstName90', 'LastName90', 'login90'),
(91, 'FirstName91', 'LastName91', 'login91'),
(92, 'FirstName92', 'LastName92', 'login92'),
(93, 'FirstName93', 'LastName93', 'login93'),
(94, 'FirstName94', 'LastName94', 'login94'),
(95, 'FirstName95', 'LastName95', 'login95'),
(96, 'FirstName96', 'LastName96', 'login96'),
(97, 'FirstName97', 'LastName97', 'login97'),
(98, 'FirstName98', 'LastName98', 'login98'),
(99, 'FirstName99', 'LastName99', 'login99'),
(100, 'FirstName100', 'LastName100', 'login100'),
(101, 'FirstName1', 'LastName1', 'login1'),
(102, 'FirstName2', 'LastName2', 'login2'),
(103, 'FirstName3', 'LastName3', 'login3'),
(104, 'FirstName4', 'LastName4', 'login4'),
(105, 'FirstName5', 'LastName5', 'login5'),
(106, 'FirstName6', 'LastName6', 'login6'),
(107, 'FirstName7', 'LastName7', 'login7'),
(108, 'FirstName8', 'LastName8', 'login8'),
(109, 'FirstName9', 'LastName9', 'login9'),
(110, 'FirstName10', 'LastName10', 'login10'),
(111, 'FirstName11', 'LastName11', 'login11'),
(112, 'FirstName12', 'LastName12', 'login12'),
(113, 'FirstName13', 'LastName13', 'login13'),
(114, 'FirstName14', 'LastName14', 'login14'),
(115, 'FirstName15', 'LastName15', 'login15'),
(116, 'FirstName16', 'LastName16', 'login16'),
(117, 'FirstName17', 'LastName17', 'login17'),
(118, 'FirstName18', 'LastName18', 'login18'),
(119, 'FirstName19', 'LastName19', 'login19'),
(120, 'FirstName20', 'LastName20', 'login20'),
(121, 'FirstName21', 'LastName21', 'login21'),
(122, 'FirstName22', 'LastName22', 'login22'),
(123, 'FirstName23', 'LastName23', 'login23'),
(124, 'FirstName24', 'LastName24', 'login24'),
(125, 'FirstName25', 'LastName25', 'login25'),
(126, 'FirstName26', 'LastName26', 'login26'),
(127, 'FirstName27', 'LastName27', 'login27'),
(128, 'FirstName28', 'LastName28', 'login28'),
(129, 'FirstName29', 'LastName29', 'login29'),
(130, 'FirstName30', 'LastName30', 'login30'),
(131, 'FirstName31', 'LastName31', 'login31'),
(132, 'FirstName32', 'LastName32', 'login32'),
(133, 'FirstName33', 'LastName33', 'login33'),
(134, 'FirstName34', 'LastName34', 'login34'),
(135, 'FirstName35', 'LastName35', 'login35'),
(136, 'FirstName36', 'LastName36', 'login36'),
(137, 'FirstName37', 'LastName37', 'login37'),
(138, 'FirstName38', 'LastName38', 'login38'),
(139, 'FirstName39', 'LastName39', 'login39'),
(140, 'FirstName40', 'LastName40', 'login40'),
(141, 'FirstName41', 'LastName41', 'login41'),
(142, 'FirstName42', 'LastName42', 'login42'),
(143, 'FirstName43', 'LastName43', 'login43'),
(144, 'FirstName44', 'LastName44', 'login44'),
(145, 'FirstName45', 'LastName45', 'login45'),
(146, 'FirstName46', 'LastName46', 'login46'),
(147, 'FirstName47', 'LastName47', 'login47'),
(148, 'FirstName48', 'LastName48', 'login48'),
(149, 'FirstName49', 'LastName49', 'login49'),
(150, 'FirstName50', 'LastName50', 'login50'),
(151, 'FirstName51', 'LastName51', 'login51'),
(152, 'FirstName52', 'LastName52', 'login52'),
(153, 'FirstName53', 'LastName53', 'login53'),
(154, 'FirstName54', 'LastName54', 'login54'),
(155, 'FirstName55', 'LastName55', 'login55'),
(156, 'FirstName56', 'LastName56', 'login56'),
(157, 'FirstName57', 'LastName57', 'login57'),
(158, 'FirstName58', 'LastName58', 'login58'),
(159, 'FirstName59', 'LastName59', 'login59'),
(160, 'FirstName60', 'LastName60', 'login60'),
(161, 'FirstName61', 'LastName61', 'login61'),
(162, 'FirstName62', 'LastName62', 'login62'),
(163, 'FirstName63', 'LastName63', 'login63'),
(164, 'FirstName64', 'LastName64', 'login64'),
(165, 'FirstName65', 'LastName65', 'login65'),
(166, 'FirstName66', 'LastName66', 'login66'),
(167, 'FirstName67', 'LastName67', 'login67'),
(168, 'FirstName68', 'LastName68', 'login68'),
(169, 'FirstName69', 'LastName69', 'login69'),
(170, 'FirstName70', 'LastName70', 'login70'),
(171, 'FirstName71', 'LastName71', 'login71'),
(172, 'FirstName72', 'LastName72', 'login72'),
(173, 'FirstName73', 'LastName73', 'login73'),
(174, 'FirstName74', 'LastName74', 'login74'),
(175, 'FirstName75', 'LastName75', 'login75'),
(176, 'FirstName76', 'LastName76', 'login76'),
(177, 'FirstName77', 'LastName77', 'login77'),
(178, 'FirstName78', 'LastName78', 'login78'),
(179, 'FirstName79', 'LastName79', 'login79'),
(180, 'FirstName80', 'LastName80', 'login80'),
(181, 'FirstName81', 'LastName81', 'login81'),
(182, 'FirstName82', 'LastName82', 'login82'),
(183, 'FirstName83', 'LastName83', 'login83'),
(184, 'FirstName84', 'LastName84', 'login84'),
(185, 'FirstName85', 'LastName85', 'login85'),
(186, 'FirstName86', 'LastName86', 'login86'),
(187, 'FirstName87', 'LastName87', 'login87'),
(188, 'FirstName88', 'LastName88', 'login88'),
(189, 'FirstName89', 'LastName89', 'login89'),
(190, 'FirstName90', 'LastName90', 'login90'),
(191, 'FirstName91', 'LastName91', 'login91'),
(192, 'FirstName92', 'LastName92', 'login92'),
(193, 'FirstName93', 'LastName93', 'login93'),
(194, 'FirstName94', 'LastName94', 'login94'),
(195, 'FirstName95', 'LastName95', 'login95'),
(196, 'FirstName96', 'LastName96', 'login96'),
(197, 'FirstName97', 'LastName97', 'login97'),
(198, 'FirstName98', 'LastName98', 'login98'),
(199, 'FirstName99', 'LastName99', 'login99'),
(200, 'FirstName100', 'LastName100', 'login100'),
(201, 'FirstName1', 'LastName1', 'login1'),
(202, 'FirstName2', 'LastName2', 'login2'),
(203, 'FirstName3', 'LastName3', 'login3'),
(204, 'FirstName4', 'LastName4', 'login4'),
(205, 'FirstName5', 'LastName5', 'login5'),
(206, 'FirstName6', 'LastName6', 'login6'),
(207, 'FirstName7', 'LastName7', 'login7'),
(208, 'FirstName8', 'LastName8', 'login8'),
(209, 'FirstName9', 'LastName9', 'login9'),
(210, 'FirstName10', 'LastName10', 'login10'),
(211, 'FirstName11', 'LastName11', 'login11'),
(212, 'FirstName12', 'LastName12', 'login12'),
(213, 'FirstName13', 'LastName13', 'login13'),
(214, 'FirstName14', 'LastName14', 'login14'),
(215, 'FirstName15', 'LastName15', 'login15'),
(216, 'FirstName16', 'LastName16', 'login16'),
(217, 'FirstName17', 'LastName17', 'login17'),
(218, 'FirstName18', 'LastName18', 'login18'),
(219, 'FirstName19', 'LastName19', 'login19'),
(220, 'FirstName20', 'LastName20', 'login20'),
(221, 'FirstName21', 'LastName21', 'login21'),
(222, 'FirstName22', 'LastName22', 'login22'),
(223, 'FirstName23', 'LastName23', 'login23'),
(224, 'FirstName24', 'LastName24', 'login24'),
(225, 'FirstName25', 'LastName25', 'login25'),
(226, 'FirstName26', 'LastName26', 'login26'),
(227, 'FirstName27', 'LastName27', 'login27'),
(228, 'FirstName28', 'LastName28', 'login28'),
(229, 'FirstName29', 'LastName29', 'login29'),
(230, 'FirstName30', 'LastName30', 'login30'),
(231, 'FirstName31', 'LastName31', 'login31'),
(232, 'FirstName32', 'LastName32', 'login32'),
(233, 'FirstName33', 'LastName33', 'login33'),
(234, 'FirstName34', 'LastName34', 'login34'),
(235, 'FirstName35', 'LastName35', 'login35'),
(236, 'FirstName36', 'LastName36', 'login36'),
(237, 'FirstName37', 'LastName37', 'login37'),
(238, 'FirstName38', 'LastName38', 'login38'),
(239, 'FirstName39', 'LastName39', 'login39'),
(240, 'FirstName40', 'LastName40', 'login40'),
(241, 'FirstName41', 'LastName41', 'login41'),
(242, 'FirstName42', 'LastName42', 'login42'),
(243, 'FirstName43', 'LastName43', 'login43'),
(244, 'FirstName44', 'LastName44', 'login44'),
(245, 'FirstName45', 'LastName45', 'login45'),
(246, 'FirstName46', 'LastName46', 'login46'),
(247, 'FirstName47', 'LastName47', 'login47'),
(248, 'FirstName48', 'LastName48', 'login48'),
(249, 'FirstName49', 'LastName49', 'login49'),
(250, 'FirstName50', 'LastName50', 'login50'),
(251, 'FirstName51', 'LastName51', 'login51'),
(252, 'FirstName52', 'LastName52', 'login52'),
(253, 'FirstName53', 'LastName53', 'login53'),
(254, 'FirstName54', 'LastName54', 'login54'),
(255, 'FirstName55', 'LastName55', 'login55'),
(256, 'FirstName56', 'LastName56', 'login56'),
(257, 'FirstName57', 'LastName57', 'login57'),
(258, 'FirstName58', 'LastName58', 'login58'),
(259, 'FirstName59', 'LastName59', 'login59'),
(260, 'FirstName60', 'LastName60', 'login60'),
(261, 'FirstName61', 'LastName61', 'login61'),
(262, 'FirstName62', 'LastName62', 'login62'),
(263, 'FirstName63', 'LastName63', 'login63'),
(264, 'FirstName64', 'LastName64', 'login64'),
(265, 'FirstName65', 'LastName65', 'login65'),
(266, 'FirstName66', 'LastName66', 'login66'),
(267, 'FirstName67', 'LastName67', 'login67'),
(268, 'FirstName68', 'LastName68', 'login68'),
(269, 'FirstName69', 'LastName69', 'login69'),
(270, 'FirstName70', 'LastName70', 'login70'),
(271, 'FirstName71', 'LastName71', 'login71'),
(272, 'FirstName72', 'LastName72', 'login72'),
(273, 'FirstName73', 'LastName73', 'login73'),
(274, 'FirstName74', 'LastName74', 'login74'),
(275, 'FirstName75', 'LastName75', 'login75'),
(276, 'FirstName76', 'LastName76', 'login76'),
(277, 'FirstName77', 'LastName77', 'login77'),
(278, 'FirstName78', 'LastName78', 'login78'),
(279, 'FirstName79', 'LastName79', 'login79'),
(280, 'FirstName80', 'LastName80', 'login80'),
(281, 'FirstName81', 'LastName81', 'login81'),
(282, 'FirstName82', 'LastName82', 'login82'),
(283, 'FirstName83', 'LastName83', 'login83'),
(284, 'FirstName84', 'LastName84', 'login84'),
(285, 'FirstName85', 'LastName85', 'login85'),
(286, 'FirstName86', 'LastName86', 'login86'),
(287, 'FirstName87', 'LastName87', 'login87'),
(288, 'FirstName88', 'LastName88', 'login88'),
(289, 'FirstName89', 'LastName89', 'login89'),
(290, 'FirstName90', 'LastName90', 'login90'),
(291, 'FirstName91', 'LastName91', 'login91'),
(292, 'FirstName92', 'LastName92', 'login92'),
(293, 'FirstName93', 'LastName93', 'login93'),
(294, 'FirstName94', 'LastName94', 'login94'),
(295, 'FirstName95', 'LastName95', 'login95'),
(296, 'FirstName96', 'LastName96', 'login96'),
(297, 'FirstName97', 'LastName97', 'login97'),
(298, 'FirstName98', 'LastName98', 'login98'),
(299, 'FirstName99', 'LastName99', 'login99'),
(300, 'FirstName100', 'LastName100', 'login100');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `exampleentity`
--
ALTER TABLE `exampleentity`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exampleentity`
--
ALTER TABLE `exampleentity`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- Database: `app_db_test`
--
CREATE DATABASE IF NOT EXISTS `app_db_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `app_db_test`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exampleentity`
--

CREATE TABLE `exampleentity` (
  `id` int(6) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `login` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `exampleentity`
--
ALTER TABLE `exampleentity`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exampleentity`
--
ALTER TABLE `exampleentity`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
