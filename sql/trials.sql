-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: rdbms.strato.de:3306
-- Erstellungszeit: 19. Nov 2020 um 13:14
-- Server-Version: 5.6.42-log
-- PHP-Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `DB3347334`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trials`
--

CREATE TABLE `trials` (
  `ID` int(11) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `method` varchar(2000) COLLATE latin1_german1_ci NOT NULL,
  `timeStamp` bigint(20) NOT NULL,
  `duration` bigint(20) NOT NULL,
  `withinGroup` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  `conditionID` bigint(20) NOT NULL,
  `conditionName` varchar(100) COLLATE latin1_german1_ci DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `values` varchar(30000) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `trials`
--
ALTER TABLE `trials`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `trials`
--
ALTER TABLE `trials`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
