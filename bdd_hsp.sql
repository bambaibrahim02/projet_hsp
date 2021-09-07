-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 07 sep. 2021 à 09:53
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_hsp`
--

-- --------------------------------------------------------

--
-- Structure de la table `diagnostic`
--

DROP TABLE IF EXISTS `diagnostic`;
CREATE TABLE IF NOT EXISTS `diagnostic` (
  `id` int(10) NOT NULL,
  `id_utilisateurs` int(10) NOT NULL,
  `symptomes` varchar(30) COLLATE utf8_bin NOT NULL,
  `niveau d urgence` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_admission`
--

DROP TABLE IF EXISTS `dossier_admission`;
CREATE TABLE IF NOT EXISTS `dossier_admission` (
  `id` int(10) NOT NULL,
  `nom` varchar(40) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(40) COLLATE utf8_bin NOT NULL,
  `date de naissance` int(40) NOT NULL,
  `mail` varchar(40) COLLATE utf8_bin NOT NULL,
  `adresse postale` varchar(40) COLLATE utf8_bin NOT NULL,
  `mutuelle` varchar(40) COLLATE utf8_bin NOT NULL,
  `numero de securité social` int(40) NOT NULL,
  `option` varchar(40) COLLATE utf8_bin NOT NULL,
  `régime spécifique` varchar(40) COLLATE utf8_bin NOT NULL,
  `id_utilisateurs` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `rendez-vous`
--

DROP TABLE IF EXISTS `rendez-vous`;
CREATE TABLE IF NOT EXISTS `rendez-vous` (
  `id` int(10) NOT NULL,
  `id_utilisateurs` int(10) NOT NULL,
  `date` int(10) NOT NULL,
  `heure` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(20) NOT NULL,
  `Nom` varchar(40) COLLATE utf8_bin NOT NULL,
  `Prenom` varchar(40) COLLATE utf8_bin NOT NULL,
  `Mail` varchar(40) COLLATE utf8_bin NOT NULL,
  `Adresse postale` varchar(40) COLLATE utf8_bin NOT NULL,
  `Mutuelle` varchar(40) COLLATE utf8_bin NOT NULL,
  `Numéro de sécurité social` int(20) NOT NULL,
  `Option` varchar(40) COLLATE utf8_bin NOT NULL,
  `Régime spécifique` varchar(40) COLLATE utf8_bin NOT NULL,
  `derniere_connexion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
