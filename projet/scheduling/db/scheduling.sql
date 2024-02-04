-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 17 jan. 2024 à 20:45
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `scheduling`
--

-- --------------------------------------------------------

--
-- Structure de la table `cys`
--

DROP TABLE IF EXISTS `cys`;
CREATE TABLE IF NOT EXISTS `cys` (
  `cys_id` int NOT NULL AUTO_INCREMENT,
  `cys` varchar(20) NOT NULL,
  PRIMARY KEY (`cys_id`),
  UNIQUE KEY `cys` (`cys`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(4, 'TMW23-24'),
(5, 'CLE23-24');

-- --------------------------------------------------------

--
-- Structure de la table `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`) VALUES
(9, 'INFO', 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `exam_sched`
--

DROP TABLE IF EXISTS `exam_sched`;
CREATE TABLE IF NOT EXISTS `exam_sched` (
  `sched_id` int NOT NULL AUTO_INCREMENT,
  `time_id` int NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int NOT NULL,
  PRIMARY KEY (`sched_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_salut`, `dept_code`, `program_code`, `username`, `password`, `status`) VALUES
(27, 'Mohamed', 'Rahmouni', 'Prof', 'INFO', '', 'rahmouni', 'admin', 'admin'),
(178, 'Ali', 'Mounadi', 'Prof', 'INFO', '', 'mounadiinfo', 'ali', 'admin'),
(179, 'Fouad', 'Kharroubi', 'Prof', 'INFO', '', 'kharroubiinfo', 'fouad', 'admin'),
(180, 'Abderrahim', 'Ghassoub', 'Prof', 'INFO', '', 'ghassoubinfo', 'abderrahim', 'admin'),
(181, 'Hassan', 'Barkia', 'Prof', 'INFO', '', 'barkiainfo', 'hassan', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `program`
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE IF NOT EXISTS `program` (
  `prog_id` int NOT NULL AUTO_INCREMENT,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL,
  PRIMARY KEY (`prog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(15, 'CLE I', 'Cycle de licence - Informatique '),
(16, 'LPTMW', 'Licence pro technologies de web et multimédia ');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room` varchar(15) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
(1, 'INFO 3'),
(2, 'INFO 1'),
(3, 'INFO 2');

-- --------------------------------------------------------

--
-- Structure de la table `salut`
--

DROP TABLE IF EXISTS `salut`;
CREATE TABLE IF NOT EXISTS `salut` (
  `salut_id` int NOT NULL AUTO_INCREMENT,
  `salut` varchar(10) NOT NULL,
  PRIMARY KEY (`salut_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr');

-- --------------------------------------------------------

--
-- Structure de la table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `sched_id` int NOT NULL AUTO_INCREMENT,
  `time_id` int NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int NOT NULL,
  `encoded_by` varchar(10) NOT NULL,
  PRIMARY KEY (`sched_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(1, 37, 'm', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(2, 4, 'w', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(3, 4, 'f', 177, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(4, 7, 'm', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(5, 7, 'w', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(6, 7, 'f', 177, 'ALG', 'BEED 1B', '101', '', 12, '27'),
(7, 19, 't', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(8, 19, 'th', 177, 'ALG', 'BSED 1A', '101', '', 12, '27'),
(9, 10, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(10, 5, 'f', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(11, 9, 'f', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(12, 18, 't', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(13, 21, 'th', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(14, 25, 'th', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(15, 6, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(16, 8, 'm', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(17, 6, 'f', 27, 'ALG', 'BEED 1A', '101', '', 12, '27'),
(18, 19, 't', 27, 'BD', 'TMW23-24', 'INFO 3', 'Chapitre 4', 14, '27'),
(19, 20, 't', 27, 'BD', 'TMW23-24', 'INFO 3', 'Chapitre 4', 14, '27'),
(20, 11, 'f', 177, 'SSD', 'TMW23-24', 'INFO 1', 'Chapitre 5\r\n', 14, '27'),
(21, 12, 'f', 177, 'SSD', 'TMW23-24', 'INFO 3', 'Chapitre 5\r\n', 14, '27'),
(22, 13, 'f', 177, 'SSD', 'TMW23-24', 'INFO 3', 'Chapitre 5\r\n', 14, '27'),
(23, 14, 'f', 177, 'SSD', 'TMW23-24', 'INFO 3', 'Chapitre 5\r\n', 14, '27'),
(24, 62, 'm', 181, 'Développement Web', 'TMW23-24', 'INFO 3', '', 14, '27'),
(25, 65, 'm', 179, 'Didactique générale', 'TMW23-24', 'INFO 3', '', 14, '27'),
(26, 65, 'f', 178, 'Structure de donneés', 'TMW23-24', 'INFO 3', '', 14, '27'),
(27, 73, 't', 27, 'Base de données', 'TMW23-24', 'INFO 3', '', 14, '27'),
(28, 74, 'th', 180, 'Didactique générale', 'TMW23-24', 'INFO 3', '', 14, '27'),
(29, 62, 'w', 178, 'Structure de donneés', 'TMW23-24', 'INFO 2', 'ch 5 arbre', 14, '178');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int NOT NULL AUTO_INCREMENT,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(14, '', '1st', '2023-2024', 'active');

-- --------------------------------------------------------

--
-- Structure de la table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`) VALUES
(1, 'DG', 'Didactique générale', 27),
(2, 'SSD', 'Structure de donneés', 27),
(3, 'DS', 'Didactique spéciale', 27),
(4, 'BD', 'Base de données', 27),
(5, 'DW', 'Développement Web', 27),
(6, 'TM', 'Technologies des Multimédia', 27);

-- --------------------------------------------------------

--
-- Structure de la table `sy`
--

DROP TABLE IF EXISTS `sy`;
CREATE TABLE IF NOT EXISTS `sy` (
  `sy_id` int NOT NULL AUTO_INCREMENT,
  `sy` varchar(10) NOT NULL,
  PRIMARY KEY (`sy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(7, '2023-2024');

-- --------------------------------------------------------

--
-- Structure de la table `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE IF NOT EXISTS `time` (
  `time_id` int NOT NULL AUTO_INCREMENT,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(62, '09:00:00', '12:00:00', 'mwf'),
(74, '14:00:00', '17:00:00', 'tth'),
(64, '09:00:00', '12:00:00', 'fst'),
(65, '14:00:00', '17:00:00', 'mwf'),
(73, '09:00:00', '12:00:00', 'tth'),
(75, '14:00:00', '17:00:00', 'fst');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'active', 'all');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
