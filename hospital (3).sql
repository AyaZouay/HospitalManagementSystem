-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 16 Avril 2018 à 11:48
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES('Admin', '0');
INSERT INTO `admin` (`username`, `password`) VALUES('Admin', '0');
INSERT INTO `admin` (`username`, `password`) VALUES('admin', 'admin');
INSERT INTO `admin` (`username`, `password`) VALUES('admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(40) NOT NULL,
  `PatientName` varchar(40) NOT NULL,
  `DoctorName` varchar(40) NOT NULL,
  `Date` varchar(40) DEFAULT NULL,
  `Time` varchar(40) NOT NULL,
  KEY `Patient ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appointment`
--

INSERT INTO `appointment` (`id`, `PatientName`, `DoctorName`, `Date`, `Time`) VALUES(12, 'Nour Mathouthi', 'Shayma Zayed', '2018-28-04', '13');
INSERT INTO `appointment` (`id`, `PatientName`, `DoctorName`, `Date`, `Time`) VALUES(2, 'Aya Zouay', 'Mohamad Nebli', '0000-00-00', '16');

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `SecondName` varchar(40) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Gender` varchar(40) DEFAULT NULL,
  `BloodGroup` varchar(10) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `doctor`
--

INSERT INTO `doctor` (`id`, `Name`, `SecondName`, `Age`, `Specialization`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Phone`, `username`, `password`) VALUES(1, 'Salah', 'Ali', 30, 'Neurologiste', 'Male', 'O+', 'Tunis', 'Single', 52347890, 'Salah', 'Ali1');
INSERT INTO `doctor` (`id`, `Name`, `SecondName`, `Age`, `Specialization`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Phone`, `username`, `password`) VALUES(2, 'Salah', 'Ali', 30, 'Neurologiste', 'Male', 'O+', 'Tunis', 'Single', 52347890, 'Salah', 'Ali1');
INSERT INTO `doctor` (`id`, `Name`, `SecondName`, `Age`, `Specialization`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Phone`, `username`, `password`) VALUES(3, 'Hela', 'Kamoun', 36, 'Anatomist', 'Female', 'A+', 'Sfax', 'Divorced', 45678904, 'Hela', 'Kamoun');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `SecondName` varchar(20) NOT NULL,
  `Age` int(20) NOT NULL,
  `Deciese` varchar(20) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `BloodGroup` varchar(40) NOT NULL,
  `Adresse` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Room` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(1, 'Soumayaaaa', 'Atia', 29, 'Tuberculosis', 'Female', 'AB+', 'Bizerte', 'Single', 102);
INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(2, 'Souha', 'Bannour', 36, 'Flu', 'Male', 'AB-', 'Monastir Ksar Hlel', 'Married', 403);
INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(3, 'Ali', 'Mohamed', 44, 'CVA', 'Male', 'O-', 'Mahdia', 'Married', 399);
INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(10, 'aya', 'zouay', 20, 'Head', 'Female', 'A+', 'Monastir', 'Single', 309);
INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(11, 'James', 'King', 24, 'HeartDisease', 'Male', 'A+', 'Spain', 'Single', 555);
INSERT INTO `patient` (`id`, `Name`, `SecondName`, `Age`, `Deciese`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Room`) VALUES(12, 'Sarra', 'Mouradi', 15, 'Influenza', 'Male', 'AB+', 'Beja', 'Single', 341);

-- --------------------------------------------------------

--
-- Structure de la table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `id` int(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `SecondName` varchar(40) NOT NULL,
  `Age` int(40) NOT NULL,
  `Qualification` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `BloodGroup` varchar(40) NOT NULL,
  `Adresse` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `Phone` int(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `receptionist`
--

INSERT INTO `receptionist` (`id`, `Name`, `SecondName`, `Age`, `Qualification`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Phone`, `username`, `password`) VALUES(1, 'Saaida', 'Kacem', 25, 'Master', 'Female', 'B-', 'Sousse', 'Single', 5678654, 'Saaida', 'recep1');
INSERT INTO `receptionist` (`id`, `Name`, `SecondName`, `Age`, `Qualification`, `Gender`, `BloodGroup`, `Adresse`, `Status`, `Phone`, `username`, `password`) VALUES(2, 'adam', 'salah', 32, 'Master', 'Male', 'AB-', 'Mahdia', 'Married', 456785, 'adam', 'recep2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
