-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 13 nov. 2023 à 14:53
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jpublankproject`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `mapByCode`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mapByCode` (IN `p_code` VARCHAR(2))  READS SQL DATA SQL SECURITY INVOKER SELECT * FROM jpublankproject.maps where `code`=p_code$$

DROP PROCEDURE IF EXISTS `mapById`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mapById` (IN `p_id` INT)  READS SQL DATA SQL SECURITY INVOKER SELECT * FROM maps WHERE id = p_id$$

DROP PROCEDURE IF EXISTS `set_timezone`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_timezone` ()   BEGIN
    SET TIME_ZONE = '+00:00';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `maps`
--

DROP TABLE IF EXISTS `maps`;
CREATE TABLE IF NOT EXISTS `maps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `layout` varchar(8000) NOT NULL,
  `mapheight` int NOT NULL,
  `mapwidth` int NOT NULL,
  `objective` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maps`
--

INSERT INTO `maps` (`id`, `code`, `layout`, `mapheight`, `mapwidth`, `objective`) VALUES
(1, 'L1', '=================================\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^=DDDDDDDDDDDDDBDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDBDDDDD^=\r\n=^DDDDDBDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDBDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDBDDDDDDPDDDDDDBDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDBDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDBDDDDDDDDDDDDDDDDPDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DBDDDDDDDDDDDBDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDBDDDDDDDDDDDDDDBDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^PDDDDDDDDDDDDDDDDDDBDDDDDDDDD^=\r\n=^DDDDDDBDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDPDDDDDDBDDDDDDDDDDDDBDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDBDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDBDDDDDDDBDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDBDDDDBDDDBDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDPDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDBDDDDD^=\r\n=^DDDDDBDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDBDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=================================', 33, 33, 5),
(2, 'L2', '=================================\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^=DDDDDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDBDDDDDDDDDDDDDDDDDDDPDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^DD^=\r\n=^DDDDDDDDDDDD^DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDD^DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDBDDDDD^DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDD^DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDD^DDDDDDDDDPDDDDDD^=\r\n=^DDDDDDDDDDDD=DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDDD=DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDBDDDD^DDDDDDDDDDDBDDDD^=\r\n=^DDDDDDDDDDDD^DDDDDDDDDDDDDDDD^=\r\n=^DDDDDDDDDDD^^DDD^^DDDDDDDDDDD^=\r\n=^PDDDDDDDDDD^DDDDD^DDDDDDDDDDD^=\r\n=^DDDBDDDDDDD^D===D^DDDDDDDDDDD^=\r\n=^DDDDDPDDDDD^D=2=D^DDDDDDDDDDD^=\r\n=^DDDDDBDDDDD^D===D^DDDDDDDDDDD^=\r\n=^DDDDDDDDDDD^DDDDD^DDDDDBDDDDD^=\r\n=^DDDDDDDDDDD^DBDDD^DDDDBDDDDDD^=\r\n=^DDDDDDDDDDP^DDPDD^PDDDDDDDDDD^=\r\n=^D^^^^^^^^^^^^^^^^^^^^^^^^^^^D^=\r\n=^=============^===============^=\r\n=^=B===========^=============B=^=\r\n=^=D===========^=============D=^=\r\n=^=============^===============^=\r\n=^^D^^^D^^DDDDD^DDDDDDD^^D^^^D^^=\r\n=^===^===^DDDDDDDBDDDDD^===^===^=\r\n=^=1=^=2=^DDDDDDDDDDDDD^=3=^=1=^=\r\n=^===^===^PDDDDDDDDDDDP^===^===^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=================================', 33, 33, 9),
(3, 'L3', '=================================\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^=DDDDDDDPDDDDDBDDDDDDDDDDDDDD^=\r\n=^DDDDDDDBDDDPDDDDDDDPDDDBDDDDD^=\r\n=^DDDDDBDDDDDDPDDDDDDDDDPDDDDDD^=\r\n=^DDDDDPDDDDDBDDDDDDDDDDDBDDDDD^=\r\n=^DDD^DBDDDDDDPDDD^DDBDDDDPDDDD^=\r\n=^^D^^DDDDDDDDDBDD^DDDDDDDBDDDD^=\r\n=^DDB^DDDDDDBDDDDD^DDDDDDDDDDDD^=\r\n=^DDD^DBDDDDDDDDDD^DDDDDPDDDDDD^=\r\n=^^^D^DDDDDDDDDDDB^DDDDDDDDDDDD^=\r\n=^DDD^DDDDDDDDDDDP^PDDDDDDDDDDD^=\r\n=^D^^^DD^^^^^^^^^^^^^^^^^^^^^DD^=\r\n=^DDD^DDDDBDDDDDDP^PDDDDDBDDDDD^=\r\n=^DDD^DDDDDDDDDDDD^DDDDDDDDDDDD^=\r\n=^^^=^DDDDDBDDDDDD^DDBDDDDDDDDD^=\r\n=^===^DDBDDDDDDDDD^DDDDBDDDDDDD^=\r\n=^===^DPDD=1=DBDDD^DDDDDDDDBDDD^=\r\n=^===^DDDD===DDDDD^DDDDDDDDDDDD^=\r\n=^===^BDDDDDDDDDDDDDDDDDDDDDPDD^=\r\n=^D^=^^^^^^^^^^^^^D^^^^^^^^^^^^^=\r\n=^DD^^======================4==^=\r\n=^DDD^=========================^=\r\n=^DPD^=1=============2=========^=\r\n=^DDD^=========================^=\r\n=^DDD^========3=============5==^=\r\n=^DDD^P=======================P^=\r\n=^^=^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^===^=========P===========^===^=\r\n=^===^=====================^===^=\r\n=^========1==1===P======2==3==3^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=================================', 33, 33, 15),
(4, 'L4', '=================================\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^=DD^DDDDPDDDDDBDDDDDDDDDDDDDD^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDDBDDDDD^=\r\n=^DDD^DBDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^^^D^DDD^^^^^^^^^^^^^^^^^^^DDD^=\r\n=^BBD^DBD^DDDDPDDDDDDBDDDDD^DDD^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDDDBDDDD^=\r\n=^D^^^DDD^DDDDDDDDDDDDDDDDD^DDD^=\r\n=^DDD^DBD^^^^^^^^^^^^^^^^^^^DDD^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDBDDDDDD^=\r\n=^^D^^DDDDDDDDBDDDDDDDDD=DDDDDD^=\r\n=^DDD^D^^^^B^^^^^^^^^^^^=^^^^^^^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^PDD^DDDDDDDDDDDPDDDBDDDDDDDDD^=\r\n=^DDD^DDBDDDD2DDDDDDDDDDDDDDDDD^=\r\n=^DDD^^^^^^^^D^^^^^^^^D^^^^^^^D^=\r\n=^DDD^DDDDDDDDDDDDDDDDDDDDDDDDD^=\r\n=^DDD^BDDDDBDDDDDDDD1DDDDDDDDDD^=\r\n=^DDD^DDDDDDDD1DDDDDDDDDDDDDDDD^=\r\n=^DDD^^D^^^^^B^^^^^D^^^^^^^^^^^^=\r\n=^DDD^DDP^DDDDDDDDDDDDDDDDDDDDD^=\r\n=^DBD^DDD^DDBDDDDBDDDBDDDDDDBDD^=\r\n=^=P=^DDD^DDDDDDDDDDDDDDDDDDDDD^=\r\n=^=^=^DBD^DDDBDDDDDDDDPDDDDDBDD^=\r\n=^===^DDD^DDDDDDDDBDDDDDDBDDDDD^=\r\n=^===^^D^^^^DDDDDDDDDDDDDDDDDDD^=\r\n=^^=^^===^DDDDBDDDDDDDDDDBDDDDD^=\r\n=^D=DD=1=^BDDDPDDDDBDDDDDDDDDDD^=\r\n=^DB=^===^DDBDDDDDDDDDDDDDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=================================', 33, 33, 8),
(5, 'L5', '=================================\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^=DDDBDDDDDDDD^^DBDDDBDDBDDDBD^=\r\n=^=B=DDDD^^DDDDD^^DD BDDDDDDBDD^=\r\n=^DDDDDDB=^^DDPDD^^DDPDDDBDDDDD^=\r\n=^==DDDBDDD^^DDDDDD^^DDDDDDDDDD^=\r\n=^D=BDDDDB==^^===DDDDDDDDDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^====^^=\r\n=^DDDDDDDDBDDDBDBBDBBDDDDDDDDDD^=\r\n=^DDDDDDBDDB=DDDDPBDDDDBDDDDDDD^=\r\n=^DBDDDDDDDDDDBDDDDDBDD==2==DDD^=\r\n=^DBDDDDDB=DDDDBDPDDDDD======DD^=\r\n=^DPDDDDBDDDDDDBDBDDBDDDDBDDDDD^=\r\n=^^=====^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=^DDDDPDDDDDDBDDBDDDDDDDDBDDBDD^=\r\n=^D=DBDDBDDDDDDDD=DDBD======DDD^=\r\n=^DDBDDDDDDDBDDPDPDDDD===1==DDD^=\r\n=^DDD==3==BBDDDDDDBDDD======DBD^=\r\n=^DDP=====DBDDDDBDDDDPDDDDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^====^^=\r\n=^DDDDPDDDDDDBDDBDDBDPBDDDDDDDD^=\r\n=^D=DBDDBDDDDDDDBDDDBDBDDDPBDDD^=\r\n=^DDBDDDDDDDBDDPBDDDDDDPD====DD^=\r\n=^DDDDPDDDDBD=DDDDDBDDDDD==2=BD^=\r\n=^DDPDDDBDDBDDDDBDDDDPDPDDDDDDD^=\r\n=^^^======^^^^^^^^^^^^^^^^^^^^^^=\r\n=^DDDDPDDDDDDBDDBDDDDDDDDDDDDDD^=\r\n=^DBDBDDBDDDDDDD===1====1=DDDDD^=\r\n=^DDBDDDDDDDBDDP==3=======DDDDD^=\r\n=^DDDDDDDDDBDDDD=2===2====DDDBD^=\r\n=^DDPDDDDDDDDDDDDDDDDPDDDDDDDDD^=\r\n=^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=\r\n=================================', 33, 33, 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
