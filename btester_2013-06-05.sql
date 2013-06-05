-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 05. Jun 2013 um 20:11
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `btester`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beta`
--

CREATE TABLE IF NOT EXISTS `beta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ua` varchar(255) NOT NULL,
  `vp` varchar(255) NOT NULL,
  `ires` varchar(255) NOT NULL,
  `ores` varchar(255) NOT NULL,
  `ares` varchar(255) NOT NULL,
  `sres` varchar(255) NOT NULL,
  `bat` varchar(255) NOT NULL,
  `con` varchar(255) NOT NULL,
  `hw` varchar(255) NOT NULL,
  `charging` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `beta`
--

INSERT INTO `beta` (`id`, `timestamp`, `ua`, `vp`, `ires`, `ores`, `ares`, `sres`, `bat`, `con`, `hw`, `charging`) VALUES
(1, '0000-00-00 00:00:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '719x712', '727x802', '1920x1080', '1920x1080', 'true - 1', 'Infinity', 'laptop', 0),
(2, '0000-00-00 00:00:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '719x712', '727x802', '1920x1080', '1920x1080', 'true - 1', 'Infinity', '', 0),
(3, '2013-06-04 14:58:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '719x712', '727x802', '1920x1080', '1920x1080', 'true - 1', 'Infinity', '', 0),
(4, '2013-06-04 14:58:49', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '719x712', '727x802', '1920x1080', '1920x1080', 'true - 1', 'Infinity', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
