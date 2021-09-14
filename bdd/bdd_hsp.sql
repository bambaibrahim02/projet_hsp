-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 sep. 2021 à 08:59
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
  `symptomes` longtext COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `niveau_urgence` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ut_diagnostic` (`id_utilisateurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_admission`
--

DROP TABLE IF EXISTS `dossier_admission`;
CREATE TABLE IF NOT EXISTS `dossier_admission` (
  `id` int(10) NOT NULL,
  `id_utilisateurs` int(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse_postale` varchar(40) COLLATE utf8_bin NOT NULL,
  `mutuelle` varchar(40) COLLATE utf8_bin NOT NULL,
  `numero_securite_social` int(40) NOT NULL,
  `option` varchar(40) COLLATE utf8_bin NOT NULL,
  `regime_specifique` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateurs` (`id_utilisateurs`)
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
  `salle` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ut` (`id_utilisateurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id` int(10) NOT NULL,
  `id_rendez-vous` int(10) NOT NULL,
  `libelle` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_rendez-vous` (`id_rendez-vous`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(20) NOT NULL,
  `nom` varchar(40) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(40) COLLATE utf8_bin NOT NULL,
  `mail` varchar(40) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(40) COLLATE utf8_bin NOT NULL,
  `role` varchar(10) COLLATE utf8_bin NOT NULL,
  `etat_compte` tinyint(1) NOT NULL,
  `derniere_connexion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `diagnostic`
--
ALTER TABLE `diagnostic`
  ADD CONSTRAINT `id_ut_diagnostic` FOREIGN KEY (`id_utilisateurs`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `dossier_admission`
--
ALTER TABLE `dossier_admission`
  ADD CONSTRAINT `id_utilisateurs` FOREIGN KEY (`id_utilisateurs`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `rendez-vous`
--
ALTER TABLE `rendez-vous`
  ADD CONSTRAINT `id_ut` FOREIGN KEY (`id_utilisateurs`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `id_rendez-vous` FOREIGN KEY (`id_rendez-vous`) REFERENCES `rendez-vous` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
