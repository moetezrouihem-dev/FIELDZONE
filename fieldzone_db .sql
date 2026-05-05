-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 mai 2026 à 16:38
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fieldzone_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `stade` varchar(50) DEFAULT NULL,
  `date_reservation` date DEFAULT NULL,
  `heure_reservation` varchar(50) DEFAULT NULL,
  `qte_maillot` int(11) DEFAULT 0,
  `qte_hoodie_f` int(11) DEFAULT 0,
  `qte_hoodie_h` int(11) DEFAULT 0,
  `qte_dumbbell` int(11) DEFAULT 0,
  `qte_station` int(11) DEFAULT 0,
  `abonnement_club` varchar(50) DEFAULT NULL,
  `total_prix` decimal(10,2) NOT NULL,
  `date_commande` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `nom_complet`, `telephone`, `stade`, `date_reservation`, `heure_reservation`, `qte_maillot`, `qte_hoodie_f`, `qte_hoodie_h`, `qte_dumbbell`, `qte_station`, `abonnement_club`, `total_prix`, `date_commande`) VALUES
(1, 'moetez rouihem', '21506222', 'stade2', '2026-05-06', '18:45', 3, 0, 0, 6, 0, '1an', 952.00, '2026-05-04 00:34:38'),
(2, 'moetez rouihem', '21506222', 'stade1', '2026-05-05', '17:00', 0, 0, 0, 0, 0, 'aucun', 80.00, '2026-05-04 13:27:38'),
(3, 'ahmed ben saleh', '45210548', 'stade1', '2026-05-05', '', 0, 0, 0, 0, 0, 'aucun', 80.00, '2026-05-04 13:30:10'),
(4, 'ahmed ben saleh', '45210548', 'aucun', '2026-05-05', '', 0, 0, 0, 0, 3, 'aucun', 1110.00, '2026-05-04 13:58:17'),
(5, 'ahmed ben saleh', '45210548', 'stade3', '2026-05-05', '18:45', 0, 0, 0, 0, 0, 'aucun', 120.00, '2026-05-04 14:09:07'),
(6, 'moetez rouihem', '21506222', 'aucun', '2026-05-05', '', 3, 0, 0, 0, 0, 'aucun', 135.00, '2026-05-04 14:25:59');

-- --------------------------------------------------------

--
-- Structure de la table `messages_contact`
--

CREATE TABLE `messages_contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `date_envoi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages_contact`
--

INSERT INTO `messages_contact` (`id`, `nom`, `email`, `sujet`, `message`, `date_envoi`) VALUES
(1, 'ahmed nn', 'motaz@gmail.com', 'Réservation de terrain', 'IUHIUHNI', '2026-05-04 14:21:31');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
