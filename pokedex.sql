-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 05:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Username` varchar(100) NOT NULL,
  `PasswordHash` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `PokedexEntry` int(10) UNSIGNED NOT NULL,
  `PokemonName` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Ability` varchar(100) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Type2` varchar(100) DEFAULT NULL,
  `Height` varchar(100) NOT NULL,
  `Weight` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`PokedexEntry`, `PokemonName`, `Category`, `Ability`, `Type`, `Type2`, `Height`, `Weight`) VALUES
(1, 'Bulbasaur', 'Seed', 'Overgrow', 'Grass', 'Poison', '2 feet 4 inches', '15.2 lbs'),
(2, 'Ivysaur', 'Seed', 'Overgrow', 'Grass', 'Poison', '3 feet 3 inches', '28.7 lbs'),
(3, 'Venusaur', 'Seed', 'Overgrow', 'Grass', 'Poison', '6 feet 7 inches', '220.5 lbs'),
(4, 'Charmander', 'Lizard', 'Blaze', 'Fire', NULL, '2 feet', '18.7 lbs'),
(5, 'Charmeleon', 'Lizard', 'Blaze', 'Fire', NULL, '3 feet 7 inches', '41.9 lbs'),
(6, 'Charizard', 'Lizard', 'Blaze', 'Fire', 'Flying', '5 feet 7 inches', '199.5 lbs');

-- --------------------------------------------------------

--
-- Table structure for table `typeimmune`
--

CREATE TABLE `typeimmune` (
  `Type` varchar(100) NOT NULL,
  `DoesNotEffect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typeimmune`
--

INSERT INTO `typeimmune` (`Type`, `DoesNotEffect`) VALUES
('Bug', NULL),
('Dark', NULL),
('Dragon', 'Fairy'),
('Electric', 'Ground'),
('Fairy', NULL),
('Fighting', 'Ghost'),
('Fire', NULL),
('Flying', NULL),
('Ghost', 'Normal'),
('Grass', NULL),
('Ground', 'Flying'),
('Ice', NULL),
('Normal', 'Ghost'),
('Poison', 'Steel'),
('Psychic', 'Dark'),
('Rock', NULL),
('Steel', NULL),
('Water', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `typestrength`
--

CREATE TABLE `typestrength` (
  `Type` varchar(100) NOT NULL,
  `StrongAgainst` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typestrength`
--

INSERT INTO `typestrength` (`Type`, `StrongAgainst`) VALUES
('Bug', 'Grass, Psychic, Dark'),
('Dark', 'Ghost, Psychic'),
('Dragon', 'Dragon'),
('Electric', 'Flying, Water'),
('Fairy', 'Fighting, Dragon, Dark'),
('Fighting', 'Normal, Rock, Steel, Ice, Dark'),
('Fire', 'Bug, Steel, Grass, Ice'),
('Flying', 'Fighting, Bug, Grass'),
('Ghost', 'Ghost, Psychic'),
('Grass', 'Ground, Rock, Water'),
('Ground', 'Poison, Rock, Steel, Fire, Electric'),
('Ice', 'Flying, Ground, Grass, Dragon'),
('Normal', NULL),
('Poison', 'Grass, Fairy'),
('Psychic', 'Fighting, Poison'),
('Rock', 'Flying, Bug, Fire, Ice'),
('Steel', 'Rock, Ice, Fairy'),
('Water', 'Ground, Rock, Fire');

-- --------------------------------------------------------

--
-- Table structure for table `typeweakness`
--

CREATE TABLE `typeweakness` (
  `Type` varchar(100) NOT NULL,
  `WeakAgainst` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typeweakness`
--

INSERT INTO `typeweakness` (`Type`, `WeakAgainst`) VALUES
('Bug', 'Fighting, Flying, Poison, Ghost, Steel, Fire, Fairy'),
('Dark', 'Fighting, Dark, Fairy'),
('Dragon', 'Steel'),
('Electric', 'Grass, Electric, Dragon'),
('Fairy', 'Poison, Steel, Fire'),
('Fighting', 'Flying, Poison, Bug, Psychic, Fairy'),
('Fire', 'Rock, Fire, Water, Dragon'),
('Flying', 'Rock, Steel, Electric'),
('Ghost', 'Dark'),
('Grass', 'Flying, Poison, Bug, Steel, Fire, Grass, Dragon'),
('Ground', 'Bug, Grass'),
('Ice', 'Steel, Fire, Water, Ice'),
('Normal', 'Rock, Steel'),
('Poison', 'Poison, Ground, Rock, Ghost'),
('Psychic', 'Steel, Psychic'),
('Rock', 'Fighting, Ground, Steel'),
('Steel', 'Steel, Fire, Water, Electric'),
('Water', 'Water, Grass, Dragon');

-- --------------------------------------------------------

--
-- Table structure for table `userpokemon`
--

CREATE TABLE `userpokemon` (
  `username` varchar(100) NOT NULL,
  `pokeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`PokedexEntry`),
  ADD KEY `typesChecking` (`Type`,`Type2`),
  ADD KEY `Type2` (`Type2`);

--
-- Indexes for table `typeimmune`
--
ALTER TABLE `typeimmune`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `typestrength`
--
ALTER TABLE `typestrength`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `typeweakness`
--
ALTER TABLE `typeweakness`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `userpokemon`
--
ALTER TABLE `userpokemon`
  ADD KEY `user_constraint` (`username`) USING BTREE,
  ADD KEY `fk_constraint` (`pokeID`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `typeimmune` (`Type`),
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`Type2`) REFERENCES `typeimmune` (`Type`);

--
-- Constraints for table `userpokemon`
--
ALTER TABLE `userpokemon`
  ADD CONSTRAINT `PokeExists` FOREIGN KEY (`pokeID`) REFERENCES `pokemon` (`PokedexEntry`),
  ADD CONSTRAINT `UserExists` FOREIGN KEY (`username`) REFERENCES `accounts` (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
