-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 14 oct. 2020 à 10:45
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
  `mails_envoyés` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `personnes_concernées` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_emploi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Emploi`
--

CREATE TABLE `Emploi` (
  `id_emploi` int NOT NULL,
  `Offre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_entreprise` int NOT NULL,
  `id_identification` int NOT NULL,
  `CV` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Emploi`
--

INSERT INTO `Emploi` (`id_emploi`, `Offre`, `id_entreprise`, `id_identification`, `CV`) VALUES
(1, 'Garagiste', 1, 1, NULL),
(2, 'Concessionnaire', 4, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int NOT NULL,
  `Nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Infos` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Employeur` varchar(40) NOT NULL,
  `Coordonnées` varchar(100) NOT NULL,
  `Localisation` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `Nom`, `Infos`, `Employeur`, `Coordonnées`, `Localisation`) VALUES
(1, 'peugeot', 'oui', 'Gerard', '1234567890', 'Vesoul'),
(4, 'renault', 'on vend des voitures askip', 'Jacques', '1324576890', 'Nice');

-- --------------------------------------------------------

--
-- Structure de la table `Identification`
--

CREATE TABLE `Identification` (
  `id_identification` int NOT NULL,
  `Identifiant` varchar(20) NOT NULL,
  `Pseudo` varchar(20) NOT NULL,
  `Mdp` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `CV` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Identification`
--

INSERT INTO `Identification` (`id_identification`, `Identifiant`, `Pseudo`, `Mdp`, `Mail`, `Telephone`, `CV`) VALUES
(1, 'Geoffrey', 'Geoff', '161098Jo', 'geoff.ducha@hotmail.com', '647279991', NULL),
(2, 'Raphaël', 'Raph', 'OuiVie', 'raph@mail.fr', '987654321', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Offre`
--

CREATE TABLE `Offre` (
  `id_offre` int NOT NULL,
  `Proposition` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Remuneration` int NOT NULL,
  `id_entreprise` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Offre`
--

INSERT INTO `Offre` (`id_offre`, `Proposition`, `Remuneration`, `id_entreprise`) VALUES
(1, 'Garagiste', 0, 1),
(2, 'Concessionnaire', 2500, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Correspondance`
--
ALTER TABLE `Correspondance`
  ADD PRIMARY KEY (`id_correspondance`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_emploi` (`id_emploi`);

--
-- Index pour la table `Emploi`
--
ALTER TABLE `Emploi`
  ADD PRIMARY KEY (`id_emploi`),
  ADD KEY `id_identification` (`id_identification`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `Identification`
--
ALTER TABLE `Identification`
  ADD PRIMARY KEY (`id_identification`);

--
-- Index pour la table `Offre`
--
ALTER TABLE `Offre`
  ADD PRIMARY KEY (`id_offre`),
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
  MODIFY `id_emploi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id_entreprise` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Identification`
--
ALTER TABLE `Identification`
  MODIFY `id_identification` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Offre`
--
ALTER TABLE `Offre`
  MODIFY `id_offre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Correspondance`
--
ALTER TABLE `Correspondance`
  ADD CONSTRAINT `Correspondance_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`),
  ADD CONSTRAINT `Correspondance_ibfk_2` FOREIGN KEY (`id_emploi`) REFERENCES `Emploi` (`id_emploi`);

--
-- Contraintes pour la table `Emploi`
--
ALTER TABLE `Emploi`
  ADD CONSTRAINT `Emploi_ibfk_2` FOREIGN KEY (`id_identification`) REFERENCES `Identification` (`id_identification`),
  ADD CONSTRAINT `Emploi_ibfk_3` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);

--
-- Contraintes pour la table `Offre`
--
ALTER TABLE `Offre`
  ADD CONSTRAINT `Offre_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
