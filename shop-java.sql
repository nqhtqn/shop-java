-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 23 Janvier 2023 à 11:54
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `shop-java`
--
CREATE DATABASE IF NOT EXISTS `shop-java` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop-java`;

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `idC` int(10) NOT NULL,
  `idU` int(10) NOT NULL,
  `idP` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  PRIMARY KEY (`idC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `idP` int(3) NOT NULL AUTO_INCREMENT,
  `nameP` varchar(50) NOT NULL,
  `typeP` varchar(30) NOT NULL,
  `priceP` float(10,2) NOT NULL,
  `storageP` int(100) NOT NULL,
  `picP` varchar(50) NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`idP`, `nameP`, `typeP`, `priceP`, `storageP`, `picP`) VALUES
(1, 'T-Shirt', 'T-Shirt', 13.90, 10, 'pictures/tshirt.png'),
(2, 'T-Shirt Striped', 'T-Shirt', 14.90, 5, 'pictures/tshirt-a-rayures.png'),
(3, 'T-Shirt Collar V', 'T-Shirt', 19.90, 7, 'pictures/tshirt-col-v.png'),
(4, 'T-Shirt Longs Sleeves', 'T-Shirt', 19.90, 13, 'pictures/tshirt-manches-longues.png'),
(5, 'T-Shirt Oversize', 'T-Shirt', 14.90, 2, 'pictures/tshirt-oversize.png'),
(6, 'Polo With Collar', 'Polo', 24.90, 1, 'pictures/polo.png'),
(7, 'Polo Striped', 'Polo', 24.90, 4, 'pictures/polo-a-rayures.png'),
(8, 'Polo Longs Sleeves', 'Polo', 39.90, 7, 'pictures/polo-longues.png'),
(9, 'Polo DRY', 'Polo', 24.90, 17, 'pictures/polo-dry.png'),
(10, 'Polo Button-down', 'Polo', 24.90, 18, 'pictures/polo-bouton.png'),
(11, 'Shirt Jean', 'Chemise', 29.90, 4, 'pictures/chemise-en-jean.png'),
(12, 'Shirt Longs Sleeves', 'Chemise', 29.90, 7, 'pictures/chemise-longues.png'),
(13, 'Shirt Linen', 'Chemise', 39.90, 9, 'pictures/chemise-en-lin.png'),
(14, 'Shirt Checked', 'Chemise', 29.90, 2, 'pictures/chemise-a-carreaux.png'),
(15, 'Shirt Short Sleeve', 'Chemise', 24.90, 14, 'pictures/chemise-courtes.png'),
(16, 'Trousers Wide-Leg Denim', 'Pantalon', 39.90, 5, 'pictures/pantalon-jean-large.png'),
(17, 'Trousers skinny', 'Pantalon', 39.90, 6, 'pictures/pantalon-skinny.png'),
(18, 'Jogging stretch', 'Pantalon', 34.90, 9, 'pictures/Jogging stretch.png'),
(19, 'Trousers Checked', 'Pantalon', 39.90, 13, 'pictures/pantalon-a-carreaux.png'),
(20, 'Trousers Linen', 'Pantalon', 39.90, 16, 'pictures/pantalon-lin.png'),
(21, 'Short Slim', 'Short', 24.90, 5, 'pictures/short-slip.png'),
(22, 'Short Checked', 'Short', 34.90, 3, 'pictures/short-a-carreaux.png'),
(23, 'Short Striped', 'Short', 19.90, 8, 'pictures/short-a-rayures.png'),
(24, 'Short Patterned', 'Short', 24.90, 15, 'pictures/short-a-motifs.png'),
(25, 'Short Airism', 'Short', 19.90, 21, 'pictures/short-airism.png'),
(26, 'Veste Denim', 'Veste', 39.90, 15, 'pictures/veste-denim.png'),
(27, 'Lightweight Down Jacket', 'Veste', 69.90, 12, 'pictures/doudoune.png'),
(28, 'Lightweight jacket', 'Veste', 79.90, 2, 'pictures/veste-legere.png'),
(29, 'Hooded Coat\n', 'Veste', 109.90, 6, 'pictures/manteau-a-capuche.png'),
(30, 'Parka', 'Veste', 69.90, 5, 'pictures/parka.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idu` int(10) NOT NULL AUTO_INCREMENT,
  `nameU` varchar(60) NOT NULL,
  `surnameU` varchar(60) NOT NULL,
  `mailU` varchar(60) NOT NULL,
  `pwU` varchar(60) NOT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`idu`, `nameU`, `surnameU`, `mailU`, `pwU`) VALUES
(107, 'ram', 'test', 'test2', 'test3'),
(108, 'ram', 'test', 'test2', 'test3'),
(109, 'ram', 'test', 'test2', 'test3'),
(110, 'ram', 'test', 'test2', 'test3'),
(111, 'ram', 'test', 'test2', 'test3'),
(112, 'ram', 'test', 'test2', 'test3'),
(113, 'ram', 'test', 'test2', 'test3'),
(114, 'ram', 'test', 'test2', 'test3'),
(115, 'ram', 'test', 'test2', 'test3'),
(116, 'ram', 'test', 'test2', 'test3'),
(117, 'ram', 'test', 'test2', 'test3'),
(118, 'ram', 'test', 'test2', 'test3'),
(119, 'ram', 'test', 'test2', 'test3'),
(120, 'ram', 'test', 'test2', 'test3'),
(121, 'ram', 'test', 'test2', 'test3'),
(122, 'ram', 'test', 'test2', 'test3'),
(123, 'ram', 'test', 'test2', 'test3'),
(124, 'ram', 'test', 'test2', 'test3'),
(125, 'ram', 'test', 'test2', 'test3'),
(126, 'ram', 'test', 'test2', 'test3'),
(127, 'ram', 'test', 'test2', 'test3'),
(128, 'ram', 'test', 'test2', 'test3'),
(129, 'ram', 'test', 'test2', 'test3'),
(130, 'ram', 'test', 'test2', 'test3'),
(131, 'ram', 'test', 'test2', 'test3'),
(132, 'ram', 'test', 'test2', 'test3'),
(133, 'ram', 'test', 'test2', 'test3'),
(134, 'ram', 'test', 'test2', 'test3'),
(135, 'ram', 'test', 'test2', 'test3'),
(136, 'ram', 'test', 'test2', 'test3'),
(137, 'ram', 'test', 'test2', 'test3'),
(138, 'ram', 'test', 'test2', 'test3'),
(139, 'ram', 'test', 'test2', 'test3'),
(140, 'ram', 'test', 'test2', 'test3'),
(141, 'ram', 'test', 'test2', 'test3'),
(142, 'ram', 'test', 'test2', 'test3'),
(143, 'ram', 'test', 'test2', 'test3'),
(144, 'ram', 'test', 'test2', 'test3'),
(145, 'ram', 'test', 'test2', 'test3'),
(146, 'ram', 'test', 'test2', 'test3'),
(147, 'ram', 'test', 'test2', 'test3'),
(148, 'ram', 'test', 'test2', 'test3'),
(149, 'ram', 'test', 'test2', 'test3'),
(150, 'ram', 'test', 'test2', 'test3'),
(151, 'ram', 'test', 'test2', 'test3'),
(152, 'ram', 'test', 'test2', 'test3'),
(153, 'ram', 'test', 'test2', 'test3'),
(154, '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
