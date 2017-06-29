-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Host: *DATABASEHOST*
-- Czas generowania: 30 Cze 2016, 16:23
-- Wersja serwera: 5.6.25-73.0-log
-- Wersja PHP: 5.4.24-0+tld2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `*DATABASENAME*`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `companyID` int(11) NOT NULL,
  `Nazwa` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `Dzien` date DEFAULT NULL,
  `Godzina` time DEFAULT NULL,
  `Prowadzacy` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Miejsca` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL,
  `username` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'qwerty1234'),
(2, 'mati', 'hautameki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `priceID` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `dzien` date DEFAULT NULL,
  `godzina` time NOT NULL,
  `prowadzacy` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `prices`
--

INSERT INTO `prices` (`priceID`, `nazwa`, `dzien`, `godzina`, `prowadzacy`) VALUES
(10, 'asdasd', '0000-00-00', '00:00:00', 'asda'),
(11, 'dasd', '2016-12-12', '22:22:00', 'das');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stockID` int(11) NOT NULL,
  `imie` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `telefon` date NOT NULL,
  `konsultacje` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `stock`
--

INSERT INTO `stock` (`stockID`, `imie`, `nazwisko`, `mail`, `telefon`, `konsultacje`) VALUES
(1, 'dsdfsdf', 'sdfsdf', '0', '0000-00-00', '00:00:00'),
(2, 'Radek', 'Lewandowski', 'wadad@wp.pl', '0000-00-00', '00:00:00'),
(3, 'Mieteh', 'sfsdf', 'sdfdsfsdf@wp.pl', '0000-00-00', '00:00:00'),
(4, 'rtre', 'rterter', 'rter@wtdgdf', '0000-00-00', '00:00:00'),
(5, 'rewrf', 'er', 'werwer', '0000-00-00', '00:00:00'),
(6, 'zxczxc', 'zczxc', 'czxc', '0000-00-00', '00:00:00'),
(7, 'eeeeeeeeee', 'eeeeeeee', 'eeeeeee@rre', '0000-00-00', '00:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`priceID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `company`
--
ALTER TABLE `company`
  MODIFY `companyID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `prices`
--
ALTER TABLE `prices`
  MODIFY `priceID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `stock`
--
ALTER TABLE `stock`
  MODIFY `stockID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
