-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 07. Jun 2013 um 19:58
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
CREATE DATABASE `btester` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `btester`;

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
  `browser` varchar(255) NOT NULL,
  `orientation` varchar(255) NOT NULL,
  `pratio` varchar(255) NOT NULL DEFAULT '0',
  `pdepth` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Daten für Tabelle `beta`
--

INSERT INTO `beta` (`id`, `timestamp`, `ua`, `vp`, `ires`, `ores`, `ares`, `sres`, `bat`, `con`, `hw`, `charging`, `browser`, `orientation`, `pratio`, `pdepth`) VALUES
(1, '2013-06-06 17:33:25', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; de-de) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148a Safari/6533.18.5', 'initial-scale=1.0, user-scalable=no', '320x356', '320x381', '320x460', '320x480', 'not supported', 'not supported', 'iPhone 3GS', 0, 'safari', 'portrait', '1', 32),
(2, '2013-06-06 17:34:00', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; de-de) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148a Safari/6533.18.5', 'initial-scale=1.0, user-scalable=no', '320x139', '720x572', '320x460', '320x480', 'not supported', 'not supported', 'iPhone 3GS', 0, 'safari', 'landscape', '1', 32),
(3, '2013-06-06 17:41:09', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; HTC; Windows Phone 8S by HTC)', 'initial-scale=1.0, user-scalable=no', '320x485', '320x485', '480x800', '480x800', 'not supported', 'not supported', 'HTC WP 8S', 0, 'ie', 'portrait', '0', 24),
(4, '2013-06-06 17:41:48', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; HTC; Windows Phone 8S by HTC)', 'initial-scale=1.0, user-scalable=no', '320x163', '320x163', '480x800', '480x800', 'not supported', 'not supported', 'HTC WP 8S', 0, 'ie', 'landscape', '0', 24),
(5, '2013-06-06 17:43:26', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; Galaxy Nexus Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30', 'initial-scale=1.0, user-scalable=no', '360x515', '720x1134', '720x1280', '720x1280', 'not supported', 'not supported', 'galaxy nexus', 0, 'android', 'portrait', '2', 32),
(6, '2013-06-06 17:44:00', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; Galaxy Nexus Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30', 'initial-scale=1.0, user-scalable=no', '598x283', '1196x670', '720x1280', '720x1280', 'not supported', 'not supported', 'galaxy nexus', 0, 'android', 'landscape', '2', 32),
(7, '2013-06-06 17:45:16', 'Mozilla/5.0 (Linux; Android 4.2.2; Galaxy Nexus Build/JDQ39) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.169 Mobile Safari/537.22', 'initial-scale=1.0, user-scalable=no', '360x519', '360x519', '360x592', '360x592', 'not supported', 'not supported', 'galaxy nexus', 0, 'chrome', 'portrait', '2', 32),
(8, '2013-06-06 17:45:45', 'Mozilla/5.0 (Linux; Android 4.2.2; Galaxy Nexus Build/JDQ39) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.169 Mobile Safari/537.22', 'initial-scale=1.0, user-scalable=no', '598x287', '598x287', '598x360', '598x360', 'not supported', 'not supported', 'galaxy nexus', 0, 'chrome', 'landscape', '2', 32),
(9, '2013-06-06 17:47:05', 'Mozilla/5.0 (Android; Mobile; rv:21.0) Gecko/21.0 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '360x519', '720x1038', '720x1184', '720x1184', 'true - 0.84', '20', 'galaxy nexus', 0, 'firefox', 'portrait', '1', 16),
(10, '2013-06-06 17:47:39', 'Mozilla/5.0 (Android; Mobile; rv:21.0) Gecko/21.0 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '598x295', '1196x590', '1196x720', '1196x720', 'true - 0.84', '20', 'galaxy nexus', 0, 'firefox', 'landscape', '1', 16),
(11, '2013-06-06 17:49:18', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.58 Safari/537.31 OPR/14.0.1074.58201', 'initial-scale=1.0, user-scalable=no', '360x567', '360x567', '360x592', '360x592', 'not supported', 'not supported', 'galaxy nexus', 0, 'opera', 'portrait', '2', 32),
(12, '2013-06-06 17:49:39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.58 Safari/537.31 OPR/14.0.1074.58201', 'initial-scale=1.0, user-scalable=no', '598x335', '598x335', '598x360', '598x360', 'not supported', 'not supported', 'galaxy nexus', 0, 'opera', 'landscape', '2', 32),
(14, '2013-06-06 17:53:01', 'Mozilla/5.0 (Linux; Android 4.2.2; Nexus 7 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.90 Safari/537.36', 'initial-scale=1.0, user-scalable=no', '601x794', '601x794', '601x906', '601x906', 'not supported', 'not supported', 'nexus 7', 0, 'chrome', 'portrait', '1.3312500715255737', 32),
(15, '2013-06-06 17:53:54', 'Mozilla/5.0 (Linux; Android 4.2.2; Nexus 7 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.90 Safari/537.36', 'initial-scale=1.0, user-scalable=no', '962x442', '962x442', '962x553', '962x553', 'not supported', 'not supported', 'nexus7', 0, 'chrome', 'landscape', '1.3312500715255737', 32),
(16, '2013-06-06 17:54:27', 'Mozilla/5.0 (Linux; Android 4.2.2; Nexus 7 Build/JDQ39) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.58 Safari/537.31 OPR/14.0.1074.58201', 'initial-scale=1.0, user-scalable=no', '962x529', '962x529', '962x553', '962x553', 'not supported', 'not supported', 'nexus 7', 0, 'opera', 'landscape', '1.3312500715255737', 32),
(17, '2013-06-06 17:54:55', 'Mozilla/5.0 (Linux; Android 4.2.2; Nexus 7 Build/JDQ39) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.58 Safari/537.31 OPR/14.0.1074.58201', 'initial-scale=1.0, user-scalable=no', '601x881', '601x881', '601x906', '601x906', 'not supported', 'not supported', 'nexus 7', 0, 'opera', 'portrait', '1.3312500715255737', 32),
(18, '2013-06-06 17:55:26', 'Mozilla/5.0 (Android; Tablet; rv:21.0) Gecko/21.0 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '533x732', '800x1098', '800x1205', '800x1205', 'false - 0.46', '20', 'nexus 7', 0, 'firefox', 'portrait', '1', 16),
(19, '2013-06-06 17:55:53', 'Mozilla/5.0 (Android; Tablet; rv:21.0) Gecko/21.0 Firefox/21.0', 'initial-scale=1.0, user-scalable=no', '853x419', '1280x629', '1280x736', '1280x736', 'false - 0.46', '20', 'nexus 7', 0, 'firefox', 'landscape', '1', 16),
(20, '2013-06-06 18:01:16', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch)', 'initial-scale=1.0, user-scalable=no', '768x1064', '784x1342', '768x1326', '768x1366', 'not supported', 'not supported', 'surface', 0, 'ie', 'portrait', '', 24),
(21, '2013-06-06 18:01:42', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch)', 'initial-scale=1.0, user-scalable=no', '1366x466', '1382x744', '1366x728', '1366x768', 'not supported', 'not supported', 'surface', 0, 'ie', 'landscape', '', 24),
(22, '2013-06-06 18:02:39', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch; .NET4.0E; .NET4.0C; Tablet PC 2.0)', 'initial-scale=1.0, user-scalable=no', '1366x768', '1366x768', '1366x728', '1366x768', 'not supported', 'not supported', 'surface (winRT)', 0, 'ie', 'landscape', '', 24),
(23, '2013-06-06 18:03:05', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; ARM; Trident/6.0; Touch; .NET4.0E; .NET4.0C; Tablet PC 2.0)', 'initial-scale=1.0, user-scalable=no', '1024x1821', '768x1366', '768x1326', '768x1366', 'not supported', 'not supported', 'surface (winRT)', 0, 'ie', 'portrait', '', 24),
(24, '2013-06-06 18:08:02', 'Mozilla/5.0 (iPad; CPU OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 'initial-scale=1.0, user-scalable=no', '768x928', '768x928', '768x1004', '768x1024', 'not supported', 'not supported', 'iPad 3', 0, 'safari', 'portrait', '2', 32),
(25, '2013-06-06 18:08:30', 'Mozilla/5.0 (iPad; CPU OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 'initial-scale=1.0, user-scalable=no', '1024x672', '1024x672', '768x1004', '768x1024', 'not supported', 'not supported', 'iPad 3', 0, 'safari', 'landscape', '2', 32),
(26, '2013-06-06 18:10:36', 'Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A403 Safari/8536.25', 'initial-scale=1.0, user-scalable=no', '768x928', '768x928', '768x1004', '768x1024', 'not supported', 'not supported', 'iPad 2', 0, 'safari', 'portrait', '1', 32),
(27, '2013-06-06 18:11:04', 'Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A403 Safari/8536.25', 'initial-scale=1.0, user-scalable=no', '1024x672', '1024x672', '768x1004', '768x1024', 'not supported', 'not supported', 'iPad 2', 0, 'safari', 'landscape', '1', 32);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `ua` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ratio` varchar(255) NOT NULL,
  `pixeldepth` varchar(255) NOT NULL,
  `colordepth` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `clients`
--

INSERT INTO `clients` (`id`, `manufacturer`, `model`, `ua`, `browser`, `ratio`, `pixeldepth`, `colordepth`) VALUES
(1, 'samsung', 'galaxy nexus', 'Mozilla/5.0 (Linux; U; Android 4.2.2; en-us; Galaxy Nexus Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30', 'android', '2', '32', '32'),
(2, 'samsung', 'galaxy nexus', 'Mozilla/5.0 (Linux; Android 4.2.2; Galaxy Nexus Build/JDQ39) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.169 Mobile Safari/537.22', 'chrome', '2', '32', '32'),
(3, 'samsung', 'galaxy nexus', 'Mozilla/5.0 (Android; Mobile; rv:21.0) Gecko/21.0 Firefox/21.0', 'firefox', '1', '16', '16'),
(4, 'samsung', 'galaxy nexus', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.58 Safari/537.31 OPR/14.0.1074.58201', 'opera', '2', '32', '32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `resolutions`
--

CREATE TABLE IF NOT EXISTS `resolutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `o` tinyint(1) NOT NULL COMMENT '0=portrait;1=landscape',
  `iw` int(11) NOT NULL,
  `ih` int(11) NOT NULL,
  `ow` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `aw` int(11) NOT NULL,
  `ah` int(11) NOT NULL,
  `sw` int(11) NOT NULL,
  `sh` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `resolutions`
--

INSERT INTO `resolutions` (`id`, `tid`, `time`, `o`, `iw`, `ih`, `ow`, `oh`, `aw`, `ah`, `sw`, `sh`) VALUES
(1, 1, '2013-06-07 17:54:45', 0, 360, 515, 720, 1134, 720, 1280, 720, 1280),
(2, 1, '2013-06-07 17:54:53', 1, 598, 330, 1196, 670, 720, 1280, 720, 1280),
(3, 2, '2013-06-07 17:55:36', 0, 360, 519, 360, 519, 360, 592, 360, 592),
(4, 2, '2013-06-07 17:55:42', 1, 598, 287, 598, 287, 598, 360, 598, 360),
(5, 3, '2013-06-07 17:56:35', 0, 360, 519, 720, 1038, 720, 1184, 720, 1184),
(6, 3, '2013-06-07 17:56:42', 1, 598, 295, 1196, 590, 1196, 720, 1196, 720),
(7, 4, '2013-06-07 17:57:33', 0, 360, 567, 360, 567, 360, 592, 360, 592),
(8, 4, '2013-06-07 17:57:40', 1, 598, 335, 598, 335, 598, 360, 598, 360);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
