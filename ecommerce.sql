-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 25 sep. 2020 à 00:30
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant de la catégorie',
  `cat_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'Nom de la catégorie',
  `cat_description` text CHARACTER SET utf8 NOT NULL COMMENT 'Description de la catégorie',
  `cat_icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`cat_ID`),
  UNIQUE KEY `cat_name` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_ID`, `cat_name`, `cat_description`, `cat_icon`) VALUES
(1, 'Téléphones et Tablettes', 'Tout ce qui concerne les téléphones et les Tablette', 'mobile'),
(3, 'Ordinateurs', 'Tout ce qui concerne les ordinateurs bureau ou portable', 'laptop'),
(4, 'Vêtements et Chaussures', 'Tout ce qui concerne les vêtements et les chaussures', 'user-tie'),
(5, 'Télévisions', 'Tout ce qui concerne les télévisions', 'tv'),
(6, 'Jeux vidéo et Consoles', 'Tout ce qui concerne les jeux vidéo et les consoles', 'gamepad'),
(7, 'Accessoires Mode', 'Lunettes, casquettes, montres...', 'diamond');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id_panier` int(11) NOT NULL AUTO_INCREMENT,
  `img_pr` varchar(255) DEFAULT NULL,
  `nom_pr` varchar(255) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `id_pr` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  PRIMARY KEY (`id_panier`),
  KEY `id_pr` (`id_pr`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id_panier`, `img_pr`, `nom_pr`, `prix`, `id_pr`, `id_us`) VALUES
(29, 'admin/upload/img_produits/824_1.jpg', 'Logitech Wireless Gaming', 349, 25, 0),
(33, 'admin/upload/img_produits/225_1.jpg', 'Huawei Nova 7i 6.4', 2699, 36, 0),
(37, 'admin/upload/img_produits/712_1.jpg', 'Apple MacBook Pro', 29900, 28, 47);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `prod_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'L''identifiant du produit',
  `prod_name` varchar(255) NOT NULL COMMENT 'Nom du produit',
  `prod_description` text NOT NULL COMMENT 'Description dproduit',
  `prod_price` double NOT NULL COMMENT 'Prix du produit',
  `prod_marque` varchar(255) NOT NULL COMMENT 'La marque du produit',
  `id_cat_et` int(11) NOT NULL,
  `prod_date` date NOT NULL COMMENT 'Date d''ajout de produit',
  `main_image` varchar(255) NOT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`prod_ID`),
  KEY `cat_1` (`id_cat_et`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`prod_ID`, `prod_name`, `prod_description`, `prod_price`, `prod_marque`, `id_cat_et`, `prod_date`, `main_image`, `img1`, `img2`, `id_user`) VALUES
(15, 'Samsung Galaxy M11', '6.4\" (32Go, 3Go) Android 13MP+2MP+5MP/8MP - Violet', 1549, 'SAMSUNG', 1, '2020-08-29', '524_1.jpg', '768_2.jpg', '929_3.jpg', 0),
(16, ' Revolution LED 32\"', 'FrameLess Design avec récepteur intégré et TNT - Garantie 1 an', 1179, 'Revolution', 5, '2020-08-29', '416_1.jpg', '289_2.jpg', '541_3.jpg', 0),
(17, 'Visio TV LED 32″', 'HD 720p Framless Design Recepteur integré - Garantie 1 an', 1199, 'Visio', 5, '2020-08-29', '543_1.jpg', '731_2.jpg', '220_3.jpg', 0),
(18, 'Samsung TV LED', 'TV LED 43 Pouces SMART Full HD Avec Recepteur 43N5300 - Garantie', 3379, 'SAMSUNG', 5, '2020-08-29', '133_1.jpg', '615_2.jpg', '336_3.jpg', 0),
(19, 'Hisense 32″', 'FHD SMART TV 32B6200HW + Récepteur intégré +Service 12 Mois', 1599, 'Hisense', 5, '2020-08-29', '968_1.jpg', '303_2.jpg', '144_3.jpg', 0),
(20, 'Samsung 32N5300', 'FULL HD SMART TV - Noir', 1899, 'SAMSUNG', 5, '2020-08-29', '625_1.jpg', '716_2.jpg', '222_3.jpg', 0),
(21, 'PS4', 'PlayStation CONSOLE Sony Playstation 4 Slim Jet Black PS4 Slim 500GB', 4190, 'Sony', 6, '2020-08-29', '458_1.jpg', '322_2.jpg', '176_3.jpg', 0),
(22, 'Ea FIFA 20', 'Ea FIFA 20 PS4', 770, 'EA', 6, '2020-08-29', '496_1.jpg', '403_2.jpg', '53_3.jpg', 0),
(23, 'Call of Duty Black Ops 4 ', 'Call of Duty Black Ops 4 - jeux PS4', 440, 'COD', 6, '2020-08-29', '931_1.jpg', '244_2.jpg', '987_3.jpg', 0),
(24, 'Manette sans fil PS3', 'Sony PlayStation Playstation 3 Dualshock Manette sans fil - Noir', 189, 'Sony', 6, '2020-08-29', '252_1.jpg', '550_2.jpg', '407_3.jpg', 0),
(25, 'Logitech Wireless Gaming', 'Logitech Wireless Gaming Handle Logitech F710 Double Vibration 2.4G Wireless', 349, 'Logitch', 6, '2020-08-29', '824_1.jpg', '82_2.jpg', '608_3.jpg', 0),
(26, 'Hp Elitebook 830 G6', 'Hp Elitebook 830 G6 -13.3p -i5 8365u -RAM 8 GB DDR4-256GB SSD - Wind 10 Pro -Silver', 9900, 'HP', 3, '2020-08-29', '732_1.jpg', '443_2.jpg', '840_3.jpg', 0),
(27, 'Asus X540UA i3-7020U', 'Asus X540UA i3-7020U - 15,6 Tactile 4GO 1TO Win 10 BLACK', 4100, 'ASUS', 3, '2020-08-29', '899_1.jpg', '697_2.jpg', '423_3.jpg', 0),
(28, 'Apple MacBook Pro', 'Apple MacBook Pro 16 inch-A2141-Core i7-2.6Ghz-RAM 16Go-512Go SSD-Space Gray', 29900, 'Apple', 3, '2020-08-29', '712_1.jpg', '872_2.jpg', '332_3.jpg', 0),
(29, 'Apple iPhone X ', 'Apple iPhone X - Reconditionné Premium - 5.8\", 3Go - 64Go - space grey', 6599, 'Apple', 1, '2020-08-29', '404_1.jpg', '358_2.jpg', '312_3.jpg', 0),
(30, 'Apple iPhone 11 Pro', 'Apple iPhone 11 Pro, 5.8\", 4Go, 64Go - Gold - Garantie 1 an', 13500, 'Apple', 1, '2020-08-29', '390_1.jpg', '923_2.jpg', '305_3.jpg', 0),
(31, 'Casquette', 'Casquette - unisexe', 99, '-', 7, '2020-08-29', '442_1.jpg', '139_1.jpg', '521_1.jpg', 0),
(32, 'Fashion Mens', 'Fashion Mens Adjustable Retro Crimping Brimless Skull Caps Autumn Winter Cap Slouchy Hip Hop Bonnet', 75, 'Fashion', 7, '2020-08-29', '756_1.jpg', '643_2.jpg', '485_3.jpg', 0),
(33, 'Women\'s Warm Chunky', 'Women\'s Warm Chunky Thick Stretchy Knit Skull Cap Winter Knitting Hat', 60, '-', 7, '2020-08-29', '177_1.jpg', '594_2.jpg', '964_3.jpg', 0),
(34, 'Casquette Bleu Marine', 'Casquette Bleu Marine Unisexe', 49, '-', 7, '2020-08-29', '920_1.jpg', '763_2 (2).jpg', '727_1.jpg', 0),
(35, 'Huawei Y9 Prime 2019', 'Huawei Y9 Prime 2019 - 6,59’’ - 128 Go + 4Go - Batterie 4000mAh - Vert + Band+Écouteur', 2499, 'Huawei', 1, '2020-08-29', '783_1.jpg', '880_2.jpg', '15_3.jpg', 0),
(36, 'Huawei Nova 7i 6.4\"', 'Huawei Nova 7i 6.4\" (128Go, 8Go) 48MP+ 8MP+ 2MP+ 2MP/16MP Android - Rose Sakura + Mini Speaker', 2699, 'Huawei', 1, '2020-08-29', '225_1.jpg', '281_2.jpg', '510_3.jpg', 0),
(37, 'Oem Men\'s casual fashion', 'Oem Men\'s casual fashion tether elastic sports pants-khaKi', 249, 'Oem', 4, '2020-08-29', '385_1.jpg', '813_2.jpg', '740_3.jpg', 0),
(38, 'Sweat pour Hommes', 'Sweat pour Hommes - Bordeaux - Noir - Bleu', 129, '-', 4, '2020-08-29', '495_11.jpg', '784_2.jpg', '651_1.jpg', 0),
(39, 'Fashion men\'s casual', 'Fashion men\'s casual sneakers-black', 150, 'Fashion', 4, '2020-08-29', '782_1.jpg', '93_2.jpg', '686_3.jpg', 0),
(40, 'Fashion Men Trendy', 'Fashion Men Trendy Sneakers Summer New Casual Shoes-black And White', 300, 'Fashion', 4, '2020-08-29', '145_1.jpg', '675_2.jpg', '53_3.jpg', 0),
(41, 'Fashion Polo pour Hommes', 'Fashion Polo pour Hommes -rouge', 149, 'Fashion', 4, '2020-08-29', '174_1.jpg', '612_2.jpg', '130_3.jpg', 0),
(42, 'Men\'s Long Sleeve', 'Men\'s Long Sleeve Thin Cardigan-Brown\r\n', 201, '-', 4, '2020-08-29', '118_1.jpg', '393_2.jpg', '326_3.jpg', 0),
(43, 'Montre Pour Hommes', 'Lige Montre Pour Hommes', 339, 'Lige', 7, '2020-08-29', '197_1.jpg', '422_2.jpg', '103_3.jpg', 0),
(44, 'Montre pour Hommes', 'Lige Montre pour Hommes 9852\r\n', 287, 'Lige', 7, '2020-08-29', '125_3.jpg', '736_2.jpg', '196_1.jpg', 0),
(45, 'AORON Lunettes de soleil', 'AORON Lunettes de soleil polarisées pour homme pilote marque Luxueuse Protection', 249, 'ARON', 7, '2020-08-29', '176_1.jpg', '805_2.jpg', '64_3.jpg', 0),
(46, 'Magic Vision Lunettes', 'Magic Vision Lunettes a Clip magnétique 6 en 1 Polarisées ultra-léger pour Vue ou Soleil ou night vision', 199, 'Magic Vision', 7, '2020-08-29', '786_1.jpg', '739_2.jpg', '158_3.jpg', 0),
(47, 'Mode 2Pcs Colliers', 'Mode 2Pcs Colliers Femmes Bijoux Mode\r\n', 46, 'Mode', 7, '2020-08-29', '5016_1.jpg', '9443_2.jpg', '7929_3.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Prenom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Adresse` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ville` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Telephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `grpID` int(11) NOT NULL DEFAULT 0,
  `datecreation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`userID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`id_pr`) REFERENCES `produits` (`prod_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `cat_1` FOREIGN KEY (`id_cat_et`) REFERENCES `categories` (`cat_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
