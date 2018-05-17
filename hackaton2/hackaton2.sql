-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 17 Mai 2018 à 15:04
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hackaton2`
--

-- --------------------------------------------------------

--
-- Structure de la table `combat`
--

CREATE TABLE `combat` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `resultat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipe1_id` int(11) NOT NULL,
  `equipe2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `combat`
--

INSERT INTO `combat` (`id`, `date`, `resultat`, `equipe1_id`, `equipe2_id`) VALUES
(1, '2018-05-18 15:00:00', 'Samurai', 2, 6),
(2, '2018-05-20 16:00:00', 'Famille Royale', 9, 16),
(3, '2018-05-26 10:00:00', 'Perses', 1, 7),
(4, '2018-05-23 14:00:00', 'Vikings', 2, 3),
(5, '2018-05-19 14:00:00', 'Maori', 8, 10),
(6, '2018-05-19 10:00:00', 'Templiers', 4, 5),
(7, '2018-05-22 17:00:00', 'Indian', 11, 12),
(8, '2018-05-27 15:00:00', 'Ottoman', 6, 15);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `drapeau` longtext COLLATE utf8_unicode_ci,
  `nomEquipe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id`, `drapeau`, `nomEquipe`) VALUES
(1, '/assets/images/drapeaux/westeros.jpg', 'Westeros'),
(2, '/assets/images/drapeaux/viking.jpg', 'Vikings'),
(3, '/assets/images/drapeaux/terre_milieu.jpg', 'Terre_du_Milieu'),
(4, '/assets/images/drapeaux/templier.jpg', 'Templiers'),
(5, '/assets/images/drapeaux/sparte.jpg', 'Spartiates'),
(6, '/assets/images/drapeaux/samurai.jpg', 'Samurai'),
(7, '/assets/images/drapeaux/perse.png', 'Perses'),
(8, '/assets/images/drapeaux/maori.jpg', 'Maori'),
(9, '/assets/images/drapeaux/famille_royale.png', 'Famille Royale'),
(10, '/assets/images/drapeaux/amazones.jpg', 'Amazones'),
(11, '/assets/images/drapeaux/indian.jpg', 'Indian'),
(12, '/assets/images/drapeaux/khilafah.png', 'Khilafa'),
(13, '/assets/images/drapeaux/fatimides.jpg', 'Fatimides'),
(14, '/assets/images/drapeaux/egyptiens.png', 'Egyptiens'),
(15, '/assets/images/drapeaux/ottoman.png', 'Ottoman'),
(16, '/assets/images/drapeaux/chevalier_bar.jpg', 'Chevalier de la table du bar');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` smallint(6) DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_equipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`id`, `nom`, `arme`, `age`, `photo`, `id_equipe_id`) VALUES
(1, 'Cersei_Lannister', 'Fléau d\'arme de poing ', NULL, '/assets/images/Westeros/Cersei_Lannister.jpg', 1),
(2, 'Daenerys', 'Lance de combat', NULL, '/assets/images/Westeros/Daenerys.jpg', 1),
(3, 'Jon-Snow', 'Masse de combat', NULL, '/assets/images/Westeros/Jon-snow.jpg', 1),
(4, 'Marcheur_Blanc', 'Hache de vicking', NULL, '/assets/images/Westeros/Marcheur_Blanc.jpg', 1),
(5, 'Ned_stark', 'Hache de vicking', NULL, '/assets/images/Westeros/Ned_stark.jpg', 1),
(6, 'Tyrion_Lannister', 'Epée des templiers', NULL, '/assets/images/Westeros/Tyrion_Lannister.jpg', 1),
(7, 'Bjorn', 'Epée vickings', NULL, '/assets/images/Vikings/bjorn.jpeg', 2),
(8, 'Floki', 'Hache de vicking', NULL, '/assets/images/Vikings/floki.jpeg', 2),
(9, 'Ivar', 'Hache de vicking', NULL, '/assets/images/Vikings/ivar.jpeg', 2),
(10, 'Ragnar', 'Fléau d\'arme de poing ', NULL, '/assets/images/Vikings/ragnar.jpeg', 2),
(11, 'Rollo', 'Epée des templiers', NULL, '/assets/images/Vikings/rollo.jpeg', 2),
(12, 'Techno', 'Lance de combat', NULL, '/assets/images/Vikings/techno.jpeg', 2),
(13, 'Aragorn', 'Masse de combat', NULL, '/assets/images/Terre_du_Milieu/Aragorn.jpg', 3),
(14, 'Eomer', 'Epée des templiers', NULL, '/assets/images/Terre_du_Milieu/Eomer.jpg', 3),
(15, 'Gimli', 'Hache de vicking', NULL, '/assets/images/Terre_du_Milieu/Gimli.jpg', 3),
(16, 'Sam', 'Hache de vicking', NULL, '/assets/images/Terre_du_Milieu/Sam.jpg', 3),
(17, 'Saroumane', 'Hache de vicking', NULL, '/assets/images/Terre_du_Milieu/Saroumane.jpg', 3),
(18, 'Thorin', 'Fléau d\'arme de poing ', NULL, '/assets/images/Terre_du_Milieu/Thorin.jpg', 3),
(19, 'Dame Ginette', 'Epée de combat', NULL, '/assets/images/Templiers/dame_ginette.jpg', 4),
(20, 'Godefroy', 'Hache de vicking', NULL, '/assets/images/Templiers/godefroy.jpg', 4),
(21, 'Jacquouille', 'Fléau d\'arme de poing ', NULL, '/assets/images/Templiers/jacquouille.jpg', 4),
(22, 'Mage Eusabius', 'Fléau d\'arme de poing ', NULL, '/assets/images/Templiers/mage_eusabius.jpg', 4),
(23, 'Sarrasin', 'Masse de combat', NULL, '/assets/images/Templiers/sarrasin.png', 4),
(24, 'Sorciere Malcombe', 'Epée des templiers', NULL, '/assets/images/Templiers/sorciere_malcombe.jpg', 4),
(25, 'Aesyklos', 'Hache de vicking', NULL, '/assets/images/Spartiates/aesyklos.jpg', 5),
(26, 'Dilios', 'Lance de combat', NULL, '/assets/images/Spartiates/dilios.jpg', 5),
(27, 'Gorgo', 'Hache de vicking', NULL, '/assets/images/Spartiates/gorgo.jpg', 5),
(28, 'Leonidas', 'Epée des templiers', NULL, '/assets/images/Spartiates/leonidas.jpg', 5),
(29, 'Stelios', 'Hache de vicking', NULL, '/assets/images/Spartiates/stelios.jpg', 5),
(30, 'Themistocle', 'Epée de croisé', NULL, '/assets/images/Spartiates/themistocle.jpg', 5),
(31, 'Hondacivic', 'Masse de combat', NULL, '/assets/images/Samurai/Hondacivic.jpeg', 6),
(32, 'Suzuki', 'Hache de vicking', NULL, '/assets/images/Samurai/Suzuki.jpg', 6),
(33, 'Teriyaki', 'Lance de combat', NULL, '/assets/images/Samurai/Teriyaki.jpg', 6),
(34, 'Toyota', 'Hache de vicking', NULL, '/assets/images/Samurai/Toyota.jpg', 6),
(35, 'Yamaha', 'Epée des templiers', NULL, '/assets/images/Samurai/Yamaha.png', 6),
(36, 'Yoshimitsu', 'Fléau d\'arme de poing ', NULL, '/assets/images/Samurai/yoshimitsu.jpg', 6),
(37, 'Artaxerxes', 'Epée des templiers', NULL, '/assets/images/Perses/artaxerxes.jpg', 7),
(38, 'Artemise', 'Hache de vicking', NULL, '/assets/images/Perses/artemise.jpg', 7),
(39, 'Darius', 'Fléau d\'arme de poing ', NULL, '/assets/images/Perses/darius.jpg', 7),
(40, 'Ephialtes', 'Hache de vicking', NULL, '/assets/images/Perses/ephialtes.jpg', 7),
(41, 'Stesias', 'Epée des templiers', NULL, '/assets/images/Perses/stesias.jpg', 7),
(42, 'Xerxes', 'Lance de combat', NULL, '/assets/images/Perses/xerxes.jpg', 7),
(43, 'Fessesdesign', 'Hache de vicking', NULL, '/assets/images/Maori/fessesdesign.jpg', 8),
(44, 'Hipster', 'Masse de combat', NULL, '/assets/images/Maori/hispter.jpg', 8),
(45, 'Lancien', 'Fléau d\'arme de poing ', NULL, '/assets/images/Maori/lancien.jpg', 8),
(46, 'Languexxl', 'Epée de combat a une main ', NULL, '/assets/images/Maori/languexxl.jpg', 8),
(47, 'Therock', 'Hache de vicking', NULL, '/assets/images/Maori/therock.jpg', 8),
(48, 'Yeuxbigleux', 'Fléau d\'arme de poing ', NULL, '/assets/images/Maori/yeuxbigleux.jpg', 8),
(49, 'Diana', 'Fléau d\'arme de poing ', NULL, '/assets/images/Famille Royale /diana.jpeg', 9),
(50, 'Duc', 'Epée des templiers', NULL, '/assets/images/Famille Royale /duc.jpeg', 9),
(51, 'Eliz', 'Hache de vicking', NULL, '/assets/images/Famille Royale /eliz.jpeg', 9),
(52, 'George', 'Hache de vicking', NULL, '/assets/images/Famille Royale /george.jpeg', 9),
(53, 'Harry', 'Masse de combat', NULL, '/assets/images/Famille Royale /harry.jpg', 9),
(54, 'Megean', 'Epée des templiers', NULL, '/assets/images/Famille Royale /megean.jpeg', 9),
(55, 'Kim', 'Epée des templiers', NULL, '/assets/images/Amazones/kim.jpg', 10),
(56, 'Niky', 'Hache de vicking', NULL, '/assets/images/Amazones/niky.jpeg', 10),
(57, 'Patricia', 'Fléau d\'arme de poing ', NULL, '/assets/images/Amazones/patricia.jpg', 10),
(58, 'Pwala', 'Hache de vicking', NULL, '/assets/images/Amazones/pwala.jpeg', 10),
(59, 'W-women', 'Hache de vicking', NULL, '/assets/images/Amazones/w-women.jpeg', 10),
(60, 'Xen', 'Fléau d\'arme de poing ', NULL, '/assets/images/Amazones/xen.jpg', 10),
(61, '2', 'Lance de combat', NULL, '/assets/images/equipe5/2.jpeg', 11),
(62, 'Anoda', 'Epée des templiers', NULL, '/assets/images/equipe5/anoda.jpg', 11),
(63, 'Doumba', 'Masse de combat', NULL, '/assets/images/equipe5/doumba.jpg', 11),
(64, 'Indian', 'Epée des templiers', NULL, '/assets/images/equipe5/indian.jpeg', 11),
(65, 'Moltanda', 'Hache de vicking', NULL, '/assets/images/equipe5/moltanda.jpg', 11),
(66, 'Parata', 'Epée des templiers', NULL, '/assets/images/equipe5/parata.jpg', 11),
(67, '1', 'Hache de vicking', NULL, '/assets/images/equipe4/1.jpeg', 12),
(68, 'Haroun', 'Epée des templiers', NULL, '/assets/images/equipe4/haroun.jpg', 12),
(69, 'Hasan', 'Hache de vicking', NULL, '/assets/images/equipe4/hasan.jpg', 12),
(70, 'Kab Malik', 'Epée des templiers', NULL, '/assets/images/equipe4/kab-malik.jpeg', 12),
(71, 'Khaled Walid', 'Masse de combat', NULL, '/assets/images/equipe4/khaled-walid.jpeg', 12),
(72, 'Omar', 'Epée des templiers', NULL, '/assets/images/equipe4/omar.jpg', 12),
(73, 'Abu Hudayfa', 'Lance de combat', NULL, '/assets/images/equipe3/abu-hudayfa.jpg', 13),
(74, 'Ali', 'Epée des templiers', NULL, '/assets/images/equipe3/ali.jpg', 13),
(75, 'El Motasim', 'Hache de vicking', NULL, '/assets/images/equipe3/el-motasim.jpg', 13),
(76, 'Imam', 'Epée des templiers', NULL, '/assets/images/equipe3/imam.jpeg', 13),
(77, 'Kamar', 'Masse de combat', NULL, '/assets/images/equipe3/kamar.jpg', 13),
(78, 'Omar Mokhtar', 'Hache de vicking', NULL, '/assets/images/equipe3/omar-mokhtarjpg.jpg', 13),
(79, 'Ahmès', 'Epée des templiers', NULL, '/assets/images/equipe2/Ahmès.jpg', 14),
(80, 'Akhénaton', 'Fléau d\'arme de poing ', NULL, '/assets/images/equipe2/Akhénaton.jpg', 14),
(81, 'Aâouserrê', 'Fléau d\'arme de poing ', NULL, '/assets/images/equipe2/Aâouserrê(1).jpg', 14),
(82, 'Cleopatre', 'Hache de vicking', NULL, '/assets/images/equipe2/cleopatre.jpg', 14),
(83, 'Aâouserrê1', 'Hache de vicking', NULL, '/assets/images/equipe2/Aâouserrê.JPG', 14),
(84, 'Âakhéperkarê', 'Hache de vicking', NULL, '/assets/images/equipe2/Âakhéperkarê.jpg', 14),
(85, 'Hatun', 'Masse de combat', NULL, '/assets/images/equipe1/hatun.png', 15),
(86, 'Mehmed-II', 'Fléau d\'arme de poing ', NULL, '/assets/images/equipe1/Mehmed-II.jpg', 15),
(87, 'Mehmet', 'Lance de combat', NULL, '/assets/images/equipe1/mehmet.jpg', 15),
(88, 'Moustapha', 'Epée des templiers', NULL, '/assets/images/equipe1/moustapha.jpg', 15),
(89, 'Solayman', 'Fléau d\'arme de poing ', NULL, '/assets/images/equipe1/solayman.png', 15),
(90, 'Sultan Osman', 'Masse de combat', NULL, '/assets/images/equipe1/Sultan-osman.jpg', 15),
(91, 'Arthur', 'Hache de vicking', NULL, '/assets/images/Chevaliers de la table du bar /Arthur.jpg', 16),
(92, 'Chevalier Noir', 'Hache de vicking', NULL, '/assets/images/Chevaliers de la table du bar /chevaliernoir.jpg', 16),
(93, 'Lancelot', 'Lance de combat', NULL, '/assets/images/Chevaliers de la table du bar /lancelot.jpg', 16),
(94, 'Lapin', 'Fléau d\'arme de poing ', NULL, '/assets/images/Chevaliers de la table du bar /lapin.jpg', 16),
(95, 'Pierre Derriere', 'Epée des templiers', NULL, '/assets/images/Chevaliers de la table du bar /pierrederriere.jpg', 16),
(96, 'Tank', 'Hache de vicking', NULL, '/assets/images/Chevaliers de la table du bar /tank.jpg', 16);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `combat`
--
ALTER TABLE `combat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D51E3984265900C` (`equipe1_id`),
  ADD KEY `IDX_8D51E39850D03FE2` (`equipe2_id`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FD71A9C5EDB3A7AE` (`id_equipe_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `combat`
--
ALTER TABLE `combat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `combat`
--
ALTER TABLE `combat`
  ADD CONSTRAINT `FK_8D51E3984265900C` FOREIGN KEY (`equipe1_id`) REFERENCES `equipe` (`id`),
  ADD CONSTRAINT `FK_8D51E39850D03FE2` FOREIGN KEY (`equipe2_id`) REFERENCES `equipe` (`id`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `FK_FD71A9C5EDB3A7AE` FOREIGN KEY (`id_equipe_id`) REFERENCES `equipe` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
