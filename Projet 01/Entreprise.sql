-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 05 oct. 2020 à 16:17
-- Version du serveur :  8.0.21-0ubuntu0.20.04.4
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Entreprise`
--

-- --------------------------------------------------------

--
-- Structure de la table `Correspondance`
--

CREATE TABLE `Correspondance` (
  `id_correspondance` int NOT NULL,
  `id_entreprise` int NOT NULL,
  `mails envoyés` int NOT NULL,
  `personnes concernées` int NOT NULL,
  `id_emploi` int NOT NULL,
  `index_correspondance` int NOT NULL,
  `id_informations` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Emploi`
--

CREATE TABLE `Emploi` (
  `id_emploi` int NOT NULL,
  `Offre d'emploi` int NOT NULL,
  `id_entreprise` int NOT NULL,
  `id_identification` int NOT NULL,
  `Coordonnées` int NOT NULL,
  `Rémunération` int NOT NULL,
  `CV` longblob NOT NULL,
  `index_emploi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int NOT NULL,
  `Nom Entreprise` int NOT NULL,
  `id_emploi` int NOT NULL,
  `index_entreprise` int NOT NULL,
  `id_informations` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Identification`
--

CREATE TABLE `Identification` (
  `id_identification` int NOT NULL,
  `Identifiant` int NOT NULL,
  `Pseudo` int NOT NULL,
  `Mot de passe` int NOT NULL,
  `Adresse mail` int NOT NULL,
  `Telephone` int NOT NULL,
  `CV` longblob NOT NULL,
  `index_identification` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Informations`
--

CREATE TABLE `Informations` (
  `id_informations` int NOT NULL,
  `id_entreprise` int NOT NULL,
  `Infos entreprise` int NOT NULL,
  `Employeur` int NOT NULL,
  `Coordonnées` int NOT NULL,
  `Localisation` int NOT NULL,
  `index_informations` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Correspondance`
--
ALTER TABLE `Correspondance`
  ADD PRIMARY KEY (`id_correspondance`),
  ADD KEY `idtruc` (`index_correspondance`),
  ADD KEY `idtruc_2` (`index_correspondance`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_informations` (`id_informations`);

--
-- Index pour la table `Emploi`
--
ALTER TABLE `Emploi`
  ADD PRIMARY KEY (`id_emploi`),
  ADD KEY `index_emploi` (`index_emploi`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_identification` (`id_identification`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD KEY `index_entreprise` (`index_entreprise`),
  ADD KEY `id_emploi` (`id_emploi`),
  ADD KEY `id_informations` (`id_informations`);

--
-- Index pour la table `Identification`
--
ALTER TABLE `Identification`
  ADD PRIMARY KEY (`id_identification`),
  ADD KEY `index_identification` (`index_identification`);

--
-- Index pour la table `Informations`
--
ALTER TABLE `Informations`
  ADD PRIMARY KEY (`id_informations`),
  ADD KEY `index_informations` (`index_informations`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Correspondance`
--
ALTER TABLE `Correspondance`
  MODIFY `id_correspondance` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Emploi`
--
ALTER TABLE `Emploi`
  MODIFY `id_emploi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id_entreprise` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Identification`
--
ALTER TABLE `Identification`
  MODIFY `id_identification` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Informations`
--
ALTER TABLE `Informations`
  MODIFY `id_informations` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Correspondance`
--
ALTER TABLE `Correspondance`
  ADD CONSTRAINT `Correspondance_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`),
  ADD CONSTRAINT `Correspondance_ibfk_2` FOREIGN KEY (`id_informations`) REFERENCES `Informations` (`id_informations`),
  ADD CONSTRAINT `Correspondance_ibfk_3` FOREIGN KEY (`id_informations`) REFERENCES `Informations` (`id_informations`);

--
-- Contraintes pour la table `Emploi`
--
ALTER TABLE `Emploi`
  ADD CONSTRAINT `Emploi_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`),
  ADD CONSTRAINT `Emploi_ibfk_2` FOREIGN KEY (`id_identification`) REFERENCES `Identification` (`id_identification`);

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `entreprise_ibfk_1` FOREIGN KEY (`id_emploi`) REFERENCES `Emploi` (`id_emploi`),
  ADD CONSTRAINT `entreprise_ibfk_2` FOREIGN KEY (`id_informations`) REFERENCES `Informations` (`id_informations`);

--
-- Contraintes pour la table `Informations`
--
ALTER TABLE `Informations`
  ADD CONSTRAINT `Informations_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
