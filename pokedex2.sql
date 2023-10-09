-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 01:50 AM
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
(6, 'Charizard', 'Lizard', 'Blaze', 'Fire', 'Flying', '5 feet 7 inches', '199.5 lbs'),
(7, 'Squirtle', 'Tiny Turtle', 'Torrent', 'Water', NULL, '1 foot 8 inches', '19.8 lbs'),
(8, 'Wartortle', 'Turtle', 'Torrent', 'Water', NULL, '3 feet 3  inches', '49.6 lbs'),
(9, 'Blastoise', 'Shellfish', 'Torrent', 'Water', NULL, '5 feet 3 inches', '188.5 lbs'),
(10, 'Caterpie', 'Worm', 'Sheild Dust', 'Bug', NULL, '1 foot', '6.4 lbs'),
(11, 'Metapod', 'Cocoon', 'Shed Skin', 'Bug', NULL, '2 feet 4 inches', '21.8 lbs'),
(12, 'Butterfree', 'Butterfly', 'Compound Eyes', 'Bug', 'Flying', '3 feet 7 inches', '70.5 lbs'),
(13, 'Weedle', 'Hairy Bug', 'Sheild Dust', 'Bug', 'Poison', '1 foot', '7.1 lbs'),
(14, 'Kakuna', 'Cocoon', 'Shed Skin', 'Bug', 'Poison', '2 feet', '22 lbs'),
(15, 'Beedrill', 'Poison Bee', 'Swarm', 'Bug', 'Poison', '3 feet 3 inches', '65 lbs'),
(16, 'Pidgey', 'Tiny Bird', 'Keen Eye', 'Normal', 'Flying', '1 foot', '4 lbs'),
(17, 'Pidgeotto', 'Bird', 'Keen Eye', 'Normal', 'Flying', '3 feet 7 inches', '66.1 lbs'),
(18, 'Pidgeot', 'Bird', 'Keen Eye', 'Normal', 'Flying', '4 feet 11 inches', '87.1 lbs'),
(19, 'Rattata', 'Mouse', 'Run Away', 'Normal', NULL, '1 foot', '7.7 lbs'),
(20, 'Raticate', 'Mouse', 'Guts', 'Normal', NULL, '2 feet 4 inches', '40.8 lbs'),
(21, 'Spearow', 'Tiny Bird', 'Keen Eye', 'Normal', 'Flying', '1 foot', '4.4 lbs'),
(22, 'Fearow', 'Beak', 'Keen Eye', 'Normal', 'Flying', '3 feet 11 inches', '83.8 lbs'),
(23, 'Ekans', 'Snake', 'Shed Skin', 'Poison', NULL, '6 feet 7 inches', '15.2 lbs'),
(24, 'Arbok', 'Cobra', 'Intimidate', 'Poison', NULL, '11 feet 6 inches', '143.3 lbs'),
(25, 'Pikachu', 'Mouse', 'Static', 'Electric', NULL, '1 foot 4 inches', '13.2 lbs'),
(26, 'Raichu', 'Mouse', 'Static', 'Electric', NULL, '2 feet 7 inches', '66.1 lbs'),
(27, 'Sandshrew', 'Mouse', 'Sand Veil', 'Ground', NULL, '2 feet', '26.5 lbs'),
(28, 'Sandslash', 'Mouse', 'Sand Veil', 'Ground', NULL, '3 feet 3 inches', '65 lbs'),
(29, 'Nidoran♀', 'Poison Pin', 'Poison Point', 'Poison', NULL, '1 foot 4 inches', '15.4 lbs'),
(30, 'Nidorina', 'Poison Pin', 'Poison Point', 'Poison', NULL, '2 feet 7 inches', '44.1 lbs'),
(31, 'Nidoqueen', 'Drill', 'Poison Point', 'Poison', 'Ground', '4 feet 3 inches', '132.3 lbs'),
(32, 'Nidoran ♂\r\n', 'Poison Pin', 'Poison Point', 'Poison', NULL, '1 foot 8 inches', '19.8 lbs'),
(33, 'Nidorino', 'Poison Pin', 'Poison Point', 'Poison', NULL, '2 feet 11 inches', '23 lbs'),
(34, 'Nidoking', 'Drill', 'Poison Point', 'Poison', 'Ground', '4 feet 7 inches', '136.7 lbs'),
(35, 'Clefairy', 'Fairy', 'Magic Guard', 'Fairy', NULL, '2 feet', '16.5 lbs'),
(36, 'Clefable', 'Fairy', 'Magic Gaurd', 'Fairy', NULL, '4 feet 3 inches', '88.2 lbs'),
(37, 'Vulpix', 'Fox', 'Flash Fire', 'Fire', NULL, '2 feet', '21.8 lbs'),
(38, 'Ninetales', 'Fox', 'Flash Fire', 'Fire', NULL, '3 feet 7 inches', '43.9 lbs'),
(39, 'Jigglypuff', 'Balloon', 'Cute Charm', 'Normal', 'Fairy', '1 foot 8 inches', '12.1 lbs'),
(40, 'Wigglytuff', 'Balloon', 'Competitive', 'Normal', 'Fairy', '3 feet 3 inches', '26.5 lbs'),
(41, 'Zubat', 'Bat', 'Inner Focus', 'Poison', 'Flying', '2 feet 7 inches', '16.5 lbs'),
(42, 'Golbat', 'Bat', 'Inner Focus', 'Poison', 'Flying', '5 feet 3 inches', '121.3 lbs'),
(43, 'Oddish', 'Weed', 'Chlorophyll', 'Grass', 'Poison', '1 foot 8 inches', '11.9 lbs'),
(44, 'Gloom', 'Weed', 'Chlorophyll', 'Grass', 'Poison', '2 feet 7 inches', '19 lbs'),
(45, 'Vileplume', 'Flower', 'Chlorophyll', 'Grass', 'Poison', '3 feet 11 inches', '41 lbs'),
(46, 'Paras', 'Mushroom', 'Effect Spore', 'Bug', 'Grass', '1 foot', '11.9 lbs'),
(47, 'Parasect', 'Mushroom', 'Effect Spore', 'Bug', 'Grass', '3 feet 3 inches', '65 lbs'),
(48, 'Venonat', 'Insect', 'Compound Eyes', 'Bug', 'Poison', '3 feet 3 inches', '66.1 lbs'),
(49, 'Venomoth', 'Poison Moth', 'Sheild Dust', 'Bug', 'Poison', '4 feet 11 inches', '27.6 lbs'),
(50, 'Diglett', 'Mole', 'Sand Veil', 'Ground', NULL, '8 inches', '1.8 lbs'),
(51, 'Dugtrio', 'Mole', 'Arena Trap', 'Ground', NULL, '2 feet 4 inches', '73.4 lbs'),
(52, 'Meowth', 'Scratch Cat', 'Pickup', 'Normal', NULL, '1 foot 4 inches', '9.3 lbs'),
(53, 'Persian', 'Classy Cat', 'Technician', 'Normal', NULL, '3 feet 3 inches', '70.5 lbs'),
(54, 'Psyduck', 'Duck', 'Damp', 'Water', NULL, '2 feet 7 inches', '43.2 lbs'),
(55, 'Golduck', 'Duck', 'Cloud Nine', 'Water', NULL, '5 feet 7 inches', '168.9 lbs'),
(56, 'Mankey', 'Pig Monkey', 'Vital Spirit', 'Fighting', NULL, '1 foot 8 inches', '61.7 lbs'),
(57, 'Primeape', 'Pig Monkey', 'Anger Point', 'Fighting', NULL, '3 feet 3 inches', '70.5 lbs'),
(58, 'Growlithe', 'Puppy', 'Intimidate', 'Fire', NULL, '2 feet 4 inches', '41.9 lbs'),
(59, 'Arcanine', 'Legendary', 'Flash Fire', 'Fire', NULL, '6 feet 3 inches', '341.7 lbs'),
(60, 'Poliwag', 'Tadpole', 'Water Absorb', 'Water', NULL, '2 feet', '27.3 lbs'),
(61, 'Poliwhirl', 'Tadpole', 'Damp', 'Water', NULL, '3 feet 3 inches', '44.1 lbs'),
(62, 'Poliwrath', 'Tadpole', 'Water Absorb', 'Water', 'Fighting', '4 feet 3 inches', '119 lbs'),
(63, 'Abra', 'Psi', 'Inner Focus', 'Psychic', NULL, '2 feet 11 inches', '43 lbs'),
(64, 'Kadabra', 'Psi', 'Inner Focus', 'Psychic', NULL, '4 feet 3 inches', '124.6 lbs'),
(65, 'Alakazam', 'Psi', 'Synchronize', 'Psychic', NULL, '4 feet 11 inches', '105.8 lbs'),
(66, 'Machop', 'Superpower', 'Guts', 'Fighting', NULL, '2 feet 7 inches', '43 lbs'),
(67, 'Machoke', 'Superpower', 'Guts', 'Fighting', NULL, '4 feet 11 inches', '155.4 lbs'),
(68, 'Machamp', 'Superpower', 'No Guard', 'Fighting', NULL, '5 feet 3 inches', '286.6 lbs'),
(69, 'Bellsprout', 'Flower', 'Chlorophyll', 'Grass', 'Poison', '2 feet 4 inches', '8.8 lbs'),
(70, 'Weepinbell', 'Flycatcher', 'Chlorophyll', 'Grass', 'Poison', '3 feet 3 inches', '14.1 lbs'),
(71, 'Victreebel', 'Flycatcher', 'Chlorophyll', 'Grass', 'Poison', '5 feet 7 inches', '34.2 lbs'),
(72, 'Tentacool', 'Jellyfish', 'Clear Body', 'Water', 'Poison', '2 feet 11 inches', '100.3 lbs'),
(73, 'Tentacruel', 'Jellyfish', 'Liquid Ooze', 'Water', 'Poison', '5 feet 3 inches', '121.3 lbs'),
(74, 'Geodude', 'Rock', 'Rock Head', 'Rock', 'Ground', '1 foot 4 inches', '44.1 lbs'),
(75, 'Graveler', 'Rock', 'Sturdy', 'Rock', 'Ground', '3 feet 3 inches', '231.5 lbs'),
(76, 'Golem', 'Megaton', 'Sturdy', 'Rock', 'Ground', '4 feet 7 inches', '661.4 lbs'),
(77, 'Ponyta', 'Fire Horse', 'Run Away', 'Fire', NULL, '3 feet 3 inches', '66.1 lbs'),
(78, 'Rapidash', 'Fire Horse', 'Flash Fire', 'Fire', NULL, '5 feet 7 inches', '209.4 lbs'),
(79, 'Slowpoke', 'Dopey', 'Oblivious', 'Water', 'Psychic', '3 feet 11 inches', '79.4 lbs'),
(80, 'Slowbro', 'Hermit Crab', 'Own Tempo', 'Water', 'Psychic', '5 feet 3 inches', '173.1 lbs'),
(81, 'Magnemite', 'Magnet', 'Sturdy', 'Electric', 'Steel', '1 foot', '13.2 lbs'),
(82, 'Magneton', 'Magnet', 'Magnet Pull', 'Electric', 'Steel', '3 feet 3 inches', '132.3 lbs'),
(83, 'Farfetch''d', 'Wild Duck', 'Keen Eye', 'Normal', 'Flying', '2 feet 7 inches', '33.1 lbs'),
(84, 'Doduo', 'Twin Bird', 'Run Away', 'Normal', 'Flying', '4 feet 7 inches', '86.4 lbs'),
(85, 'Dodrio', 'Triple Bird', 'Early Bird', 'Normal', 'Flying', '5 feet 11 inches', '187.8 lbs'),
(86, 'Seel', 'Sea Lion', 'Thick Fat', 'Water', NULL, '3 feet 7 inches', '198.4 lbs'),
(87, 'Dewgong', 'Sea Lion', 'Hydration', 'Water', 'Ice', '5 feet 7 inches', '264.6 lbs'),
(88, 'Grimer', 'Sludge', 'Stench', 'Poison', NULL, '2 feet 11 inches', '66.1 lbs'),
(89, 'Muk', 'Sludge', 'Sticky Hold', 'Poison', NULL, '3 feet 11 inches', '66.1 lbs'),
(90, 'Shellder', 'Bivalve', 'Shell Armor', 'Water', NULL, '1 foot', '8.8 lbs'),
(91, 'Cloyster', 'Bivalve', 'Skill Link', 'Water', 'Ice', '4 feet 11 inches', '292.1 lbs'),
(92, 'Ghastly', 'Gas', 'Levitate', 'Ghost', 'Poison', '4 feet 3 inches', '.2 lbs'),
(93, 'Haunter', 'Gas', 'Levitate', 'Ghost', 'Poison', '5 feet 3 inches', '.2 lbs'),
(94, 'Gengar', 'Shadow', 'Cursed Body', 'Ghost', 'Poison', '4 feet 11 inches', '89.3 lbs'),
(95, 'Onix', 'Rock Snake', 'Rock Head', 'Rock', 'Ground', '28 feet 10 inches', '463 lbs'),
(96, 'Drowzee', 'Hypnosis', 'Insomnia', 'Psychic', NULL, '3 feet 3 inches', '71.4 lbs'),
(97, 'Hypno', 'Hypnosis', 'Forewarn', 'Psychic', NULL, '5 feet 3 inches', '166.7 lbs'),
(98, 'Krabby', 'River Crab', 'Shell Armor', 'Water', NULL, '1 foot 4 inches', '14.3 lbs'),
(99, 'Kingler', 'Pincer', 'Hyper Cutter', 'Water', NULL, '4 feet 3 inches', '132.3 lbs'),
(100, 'Voltorb', 'Ball', 'Static', 'Electric', NULL, '1 foot 8 inches', '22.9 lbs'),
(101, 'Electrode', 'Ball', 'Soundproof', 'Electric', NULL, '3 feet 11 inches', '146.8 lbs'),
(102, 'Exeggcute', 'Egg', 'Chlorophyll', 'Grass', 'Psychic', '1 foot 4 inches', '5.5 lbs'),
(103, 'Exeggutor', 'Coconut', 'Chlorophyll', 'Grass', 'Psychic', '6 feet 7 inches', '264.6 lbs'),
(104, 'Cubone', 'Lonely', 'Rock Head', 'Ground', NULL, '1 foot 4 inches', '14.3 lbs'),
(105, 'Marowak', 'Bone Keeper', 'Lightning Rod', 'Ground', NULL, '3 feet 3 inches', '99.2 lbs'),
(106, 'Hitmonlee', 'Kicking', 'Limber', 'Fighting', NULL, '4 feet 11 inches', '109.8 lbs'),
(107, 'Hitmonchan', 'Punching', 'Iron Fist', 'Fighting', NULL, '4 feet 7 inches', '110.7 lbs'),
(108, 'Lickitung', 'Licking', 'Own Tempo', 'Normal', NULL, '3 feet 11 inches', '144.4 lbs'),
(109, 'Koffing', 'Poison Gas', 'Levitate', 'Poison', NULL, '2 feet', '2.2 lbs'),
(110, 'Weezing', 'Poison Gas', 'Neutralizing Gas', 'Poison', NULL, '3 feet 11 inches', '20.9 lbs'),
(111, 'Rhyhorn', 'Spikes', 'Rock Head', 'Ground', 'Rock', '3 feet 3 inches', '253.5 lbs'),
(112, 'Rhydon', 'Drill', 'Lightning Rod', 'Ground', 'Rock', '6 feet 3 inches', '264.6 lbs'),
(113, 'Chansey', 'Egg', 'Natural Cure', 'Normal', NULL, '3 feet 7 inches', '76.3 lbs'),
(114, 'Tangela', 'Vine', 'Chlorophyll', 'Grass', NULL, '3 feet 3 inches', '77.2 lbs'),
(115, 'Kangaskhan', 'Parent', 'Scrappy', 'Normal', NULL, '7 feet 3 inches', '176.4 lbs'),
(116, 'Horsea', 'Dragon', 'Swift Swim', 'Water', NULL, '1 foot 4 inches', '17.6 lbs'),
(117, 'Seadra', 'Dragon', 'Sniper', 'Water', NULL, '3 feet 11 inches', '55.1 lbs'),
(118, 'Goldeen', 'Goldfish', 'Water Veil', 'Water', NULL, '2 feet', '33.1 lbs'),
(119, 'Seaking', 'Goldfish', 'Swift Swim', 'Water', NULL, '4 feet 3 inches', '86 lbs'),
(120, 'Staryu', 'Star Shape', 'Natural Cure', 'Water', NULL, '2 feet 7 inches', '76.1 lbs'),
(121, 'Starmie', 'Mysterious', 'Illuminate', 'Water', 'Psychic', '3 feet 7 inches', '176.4 lbs'),
(122, 'Mr. Mime', 'Barrier', 'Filter', 'Psychic', 'Fairy', '4 feet 3 inches', '120.2 lbs'),
(123, 'Scyther', 'Mantis', 'Technician', 'Bug', 'Flying', '4 feet 11 inches', '123.5 lbs'),
(124, 'Jynx', 'Human Shape', 'Oblivious', 'Ice', 'Psychic', '4 feet 7 inches', '89.5 lbs'),
(125, 'Electrabuzz', 'Electric', 'Static', 'Electric', NULL, '3 feet 7 inches', '66.1 lbs'),
(126, 'Magmar', 'Spitfire', 'Flame Body', 'Fire', NULL, '4 feet 3 inches', '98.1 lbs'),
(127, 'Pinsir', 'Stag Beetle', 'Mold Breaker', 'Bug', NULL, '4 feet 11 inches', '121.3 lbs'),
(128, 'Tauros', 'Wild Bull', 'Anger Point', 'Normal', NULL, '4 feet 7 inches', '194.9 lbs'),
(129, 'Magikarp', 'Fish', 'Swift Swim', 'Water', NULL, '2 feet 11 inches', '22 lbs'),
(130, 'Gyarados', 'Atrocious', 'Intimidate', 'Water', 'Flying', '21 feet 4 inches', '518.1 lbs'),
(131, 'Lapras', 'Transport', 'Water Absorb', 'Water', 'Ice', '8 feet 2 inches', '485 lbs'),
(132, 'Ditto', 'Transform', 'Limber', 'Normal', NULL, '1 foot', '8.8 lbs'),
(133, 'Eevee', 'Evolution', 'Run Away', 'Normal', NULL, '1 foot', '14.3 lbs'),
(134, 'Vaporeon', 'Bubble Jet', 'Water Absorb', 'Water', NULL, '3 feet 3 inches', '63.9 lbs'),
(135, 'Jolteon', 'Lightning', 'Volt Absorb', 'Electric', NULL, '2 feet 7 inches', '54 lbs'),
(136, 'Flareon', 'Flame', 'Flash Fire', 'Fire', NULL, '2 feet 11 inches', '55.1 lbs'),
(137, 'Porygon', 'Virtual', 'Download', 'Normal', NULL, '2 feet 7 inches', '80.5 lbs'),
(138, 'Omanyte', 'Spiral', 'Shell Armor', 'Rock', 'Water', '1 foot 4 inches', '16.5 lbs'),
(139, 'Omastar', 'Spiral', 'Shell Armor', 'Rock', 'Water', '3 feet 3 inches', '77.2 lbs'),
(140, 'Kabuto', 'Shellfish', 'Battle Armor', 'Rock', 'Water', '1 foot 8 inches', '25.4 lbs'),
(141, 'Kabutops', 'Shellfish', 'Battle Armor', 'Rock', 'Water', '4 feet 3 inches', '89.3 lbs'),
(142, 'Aerodactyl', 'Fossil', 'Pressure', 'Rock', 'Flying', '5 feet 11 inches', '130.1 lbs'),
(143, 'Snaorlax', 'Sleeping', 'Immunity', 'Normal', NULL, '6 feet 11 inches', '1014.1 lbs'),
(144, 'Articuno', 'Freeze', 'Pressure', 'Ice', 'Flying', '5 feet 7 inches', '122.1 lbs'),
(145, 'Zapdos', 'Electric', 'Pressure', 'Electric', 'Flying', '5 feet 3 inches', '116 lbs'),
(146, 'Moltres', 'Flame', 'Pressure', 'Fire', 'Flying', '6 feet 7 inches', '132.3 lbs'),
(147, 'Dratini', 'Dragon', 'Shed Skin', 'Dragon', NULL, '5 feet 11 inches', '7.3 lbs'),
(148, 'Dragonair', 'Dragon', 'Shed Skin', 'Dragon', NULL, '13 feet 1 inch', '36.4 lbs'),
(149, 'Dragonite', 'Dragon', 'Inner Focus', 'Dragon', 'Flying', '7 feet 3 inches', '463 lbs'),
(150, 'Mewtwo', 'Genetic', 'Pressure', 'Psychic', NULL, '6 feet 7 inches', '269 lbs'),
(151, 'Mew', 'New Species', 'Synchronize', 'Psychic', NULL, '1 feet 4 inches','9.9 lbs');

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
  ADD PRIMARY KEY (`PokedexEntry`);

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
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `fk_constraint` (`pokeID`);

--
-- Constraints for dumped tables
--

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
