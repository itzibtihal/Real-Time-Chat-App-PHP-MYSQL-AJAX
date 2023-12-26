-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 26 déc. 2023 à 16:38
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `real_chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` text NOT NULL,
  `outgoing_msg_id` text NOT NULL,
  `text_message` text NOT NULL,
  `curr_date` text NOT NULL,
  `curr_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tbl_message`
--

INSERT INTO `tbl_message` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `text_message`, `curr_date`, `curr_time`) VALUES
(9, '993628918', '1476479542', 'hey again', 'December 26, 2023 ', '5:36 pm'),
(10, '993628918', '1476479542', 'kobe \n:)', 'December 26, 2023 ', '5:39 pm'),
(11, '993628918', '1476479542', 'khdam chat ', 'December 26, 2023 ', '5:39 pm'),
(12, '1476479542', '993628918', 'AWAAAAAAAAAAH', 'December 26, 2023 ', '5:42 pm'),
(13, '993628918', '1476479542', 'ulh\n', 'December 26, 2023 ', '5:42 pm'),
(14, '1476479542', '993628918', 'hhhhhhhhhhhhhhhhhhh', 'December 26, 2023 ', '5:43 pm'),
(15, '993628918', '1476479542', 'hey', 'December 26, 2023 ', '8:01 pm'),
(16, '1476479542', '993628918', 'yees ', 'December 26, 2023 ', '8:04 pm'),
(17, '993628918', '1476479542', 'no\n', 'December 26, 2023 ', '8:05 pm'),
(18, '993628918', '1476479542', 'hey\n', 'December 26, 2023 ', '3:13 pm'),
(19, '993628918', '1476479542', 'cc', 'December 26, 2023 ', '3:44 pm'),
(20, '1476479542', '993628918', 'cv', 'December 26, 2023 ', '3:44 pm'),
(21, '993628918', '1476479542', 'hbhcgbhchc', 'December 26, 2023 ', '3:52 pm'),
(22, '993628918', '1476479542', 'heyy ', 'December 26, 2023 ', '3:56 pm'),
(23, '1476479542', '993628918', 'cv\n', 'December 26, 2023 ', '3:56 pm'),
(24, '1476479542', '993628918', 'night', 'December 26, 2023 ', '3:56 pm');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `img` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `img`, `username`, `email`, `pass`, `status`) VALUES
(1, '993628918', 'uploads\\949-1697031390.jpg', 'ibtihal', 'ibtihal@gmail.com', '$2y$10$Un4e4OysRaXiUa9d/8x1LuuyuysChCrPnc6KVOMkGXKgj3KVVzG7O', 'Active'),
(2, '1476479542', 'uploads/875-1697011849.jpg', 'kobe', 'kobe@gmail.com', '$2y$10$5XM33B/CMUXrTV.niEjjnudzz/auaGkrp20IEZ2Qd4KiapG9J4re.', 'Offline');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
