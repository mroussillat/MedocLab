-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 17 Mai 2017 à 08:08
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bmedoclab`
--

-- --------------------------------------------------------

--
-- Structure de la table `effet_indesirable`
--

CREATE TABLE `effet_indesirable` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `effet_indesirable`
--

INSERT INTO `effet_indesirable` (`identifiant`, `nom`) VALUES
(1, 'diarrhée'),
(2, 'nausée'),
(3, 'vomissement'),
(4, 'douleur au ventre'),
(5, 'rétention d urine'),
(6, 'coloration d urine'),
(7, 'rougeurs'),
(8, 'plaques'),
(9, 'acnée'),
(10, 'vision floue'),
(11, 'démangeaisons');

-- --------------------------------------------------------

--
-- Structure de la table `forme`
--

CREATE TABLE `forme` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `forme`
--

INSERT INTO `forme` (`identifiant`, `nom`) VALUES
(1, 'Comprimé'),
(2, 'Gélule'),
(3, 'Solution'),
(4, 'Poudre');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `dateBrevet` datetime DEFAULT NULL,
  `dateAMM` datetime DEFAULT NULL,
  `dateRetrait` datetime DEFAULT NULL,
  `idForme` int(11) NOT NULL,
  `idEffetIndesirable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`identifiant`, `nom`, `dateBrevet`, `dateAMM`, `dateRetrait`, `idForme`, `idEffetIndesirable`) VALUES
(1, 'RETROVIR', '1995-05-12 00:00:00', '1996-11-27 00:00:00', NULL, 2, 1),
(2, 'ALKERAN', '1997-02-16 00:00:00', '2001-11-21 00:00:00', NULL, 3, 2),
(3, 'EPIVIR', NULL, '2010-04-18 00:00:00', NULL, 3, 3),
(4, 'FLOLAN', NULL, '2003-01-16 00:00:00', NULL, 4, 4),
(5, 'HYCAMTIN', NULL, '2000-10-05 00:00:00', NULL, 4, 5),
(6, 'ESKAZOLE', '2002-02-07 00:00:00', '2008-10-04 00:00:00', NULL, 1, 6),
(7, 'VENTOLINE', NULL, '2013-02-05 00:00:00', NULL, 3, 7),
(8, 'ZIAGEN', '2001-03-03 00:00:00', '2009-10-15 00:00:00', NULL, 1, 8),
(9, 'ZEFFIX', NULL, '2004-02-11 00:00:00', NULL, 1, 9),
(10, 'TELZIR', '2009-03-15 00:00:00', NULL, NULL, 1, 11),
(11, 'ATRIANCE', '2003-05-14 00:00:00', '2009-11-25 00:00:00', NULL, 3, 10),
(12, 'VOLIBRIS', '2004-08-17 00:00:00', '2008-08-06 00:00:00', NULL, 1, 3),
(13, 'LAMIVUDINE', NULL, '2009-01-09 00:00:00', NULL, 1, 8),
(14, 'TAFINLAR', '2007-03-23 00:00:00', '2008-04-18 00:00:00', NULL, 2, 1),
(15, 'zefzef', NULL, NULL, NULL, 1, 3),
(16, 'ggggggg', '2006-10-20 00:00:00', NULL, NULL, 2, 9);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `effet_indesirable`
--
ALTER TABLE `effet_indesirable`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `forme`
--
ALTER TABLE `forme`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`identifiant`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `fk_medicament_forme` (`idForme`),
  ADD KEY `fk_medicament_effet_indesirable` (`idEffetIndesirable`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `effet_indesirable`
--
ALTER TABLE `effet_indesirable`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `forme`
--
ALTER TABLE `forme`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `fk_medicament_effet_indesirable` FOREIGN KEY (`idEffetIndesirable`) REFERENCES `effet_indesirable` (`identifiant`),
  ADD CONSTRAINT `fk_medicament_forme` FOREIGN KEY (`idForme`) REFERENCES `forme` (`identifiant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
