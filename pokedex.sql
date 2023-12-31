-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 05:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catch_rate`
--

CREATE TABLE `catch_rate` (
  `catch_id` int(10) UNSIGNED NOT NULL,
  `poke_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catch_rate`
--

INSERT INTO `catch_rate` (`catch_id`, `poke_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 6),
(17, 6),
(18, 6),
(19, 7),
(20, 7),
(21, 7),
(22, 8),
(23, 8),
(24, 8),
(25, 9),
(26, 9),
(27, 9),
(28, 10),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 10),
(38, 10),
(39, 11),
(40, 11),
(41, 11),
(42, 11),
(43, 11),
(44, 11),
(45, 12),
(46, 12),
(47, 12),
(48, 13),
(49, 13),
(50, 13),
(51, 13),
(52, 13),
(53, 13),
(54, 13),
(55, 13),
(56, 13),
(57, 13),
(58, 13),
(59, 14),
(60, 14),
(61, 14),
(62, 14),
(63, 14),
(64, 14),
(65, 15),
(66, 15),
(67, 15),
(68, 16),
(69, 16),
(70, 16),
(71, 16),
(72, 16),
(73, 16),
(74, 16),
(75, 16),
(76, 16),
(77, 16),
(78, 16),
(79, 17),
(80, 17),
(81, 17),
(82, 17),
(83, 17),
(84, 17),
(85, 18),
(86, 18),
(87, 18),
(88, 19),
(89, 19),
(90, 19),
(91, 19),
(92, 19),
(93, 19),
(94, 19),
(95, 19),
(96, 19),
(97, 19),
(98, 19),
(99, 20),
(100, 20),
(101, 20),
(102, 20),
(103, 20),
(104, 20),
(105, 20),
(106, 21),
(107, 21),
(108, 21),
(109, 21),
(110, 21),
(111, 21),
(112, 21),
(113, 21),
(114, 21),
(115, 21),
(116, 21),
(117, 22),
(118, 22),
(119, 22),
(120, 22),
(121, 22),
(122, 23),
(123, 23),
(124, 23),
(125, 23),
(126, 23),
(127, 23),
(128, 23),
(129, 23),
(130, 23),
(131, 23),
(132, 23),
(133, 24),
(134, 24),
(135, 24),
(136, 24),
(137, 24),
(138, 25),
(139, 25),
(140, 25),
(141, 25),
(142, 25),
(143, 25),
(144, 25),
(145, 25),
(146, 25),
(147, 26),
(148, 26),
(149, 26),
(150, 26),
(151, 26),
(152, 27),
(153, 27),
(154, 27),
(155, 27),
(156, 27),
(157, 27),
(158, 27),
(159, 27),
(160, 27),
(161, 27),
(162, 27),
(163, 28),
(164, 28),
(165, 28),
(166, 28),
(167, 28),
(168, 29),
(169, 29),
(170, 29),
(171, 29),
(172, 29),
(173, 29),
(174, 29),
(175, 29),
(176, 29),
(177, 29),
(178, 30),
(179, 30),
(180, 30),
(181, 30),
(182, 30),
(183, 30),
(184, 31),
(185, 31),
(186, 31),
(187, 32),
(188, 32),
(189, 32),
(190, 32),
(191, 32),
(192, 32),
(193, 32),
(194, 32),
(195, 32),
(196, 32),
(197, 33),
(198, 33),
(199, 33),
(200, 33),
(201, 33),
(202, 33),
(203, 34),
(204, 34),
(205, 34),
(206, 35),
(207, 35),
(208, 35),
(209, 35),
(210, 35),
(211, 35),
(212, 35),
(213, 36),
(214, 37),
(215, 37),
(216, 37),
(217, 37),
(218, 37),
(219, 37),
(220, 37),
(221, 37),
(222, 37),
(223, 38),
(224, 38),
(225, 38),
(226, 38),
(227, 38),
(228, 39),
(229, 39),
(230, 39),
(231, 39),
(232, 39),
(233, 39),
(234, 39),
(235, 39),
(236, 40),
(237, 40),
(238, 40),
(239, 41),
(240, 41),
(241, 41),
(242, 41),
(243, 41),
(244, 41),
(245, 41),
(246, 41),
(247, 41),
(248, 41),
(249, 41),
(250, 42),
(251, 42),
(252, 42),
(253, 42),
(254, 42),
(255, 43),
(256, 43),
(257, 43),
(258, 43),
(259, 43),
(260, 43),
(261, 43),
(262, 43),
(263, 43),
(264, 43),
(265, 43),
(266, 44),
(267, 44),
(268, 44),
(269, 44),
(270, 44),
(271, 44),
(272, 45),
(273, 45),
(274, 45),
(275, 46),
(276, 46),
(277, 46),
(278, 46),
(279, 46),
(280, 46),
(281, 46),
(282, 46),
(283, 46),
(284, 47),
(285, 47),
(286, 47),
(287, 47),
(288, 47),
(289, 48),
(290, 48),
(291, 48),
(292, 48),
(293, 48),
(294, 48),
(295, 48),
(296, 48),
(297, 48),
(298, 49),
(299, 49),
(300, 49),
(301, 49),
(302, 49),
(303, 50),
(304, 50),
(305, 50),
(306, 50),
(307, 50),
(308, 50),
(309, 50),
(310, 50),
(311, 50),
(312, 50),
(313, 50),
(314, 51),
(315, 51),
(316, 51),
(317, 52),
(318, 52),
(319, 52),
(320, 52),
(321, 52),
(322, 52),
(323, 52),
(324, 52),
(325, 52),
(326, 52),
(327, 52),
(328, 53),
(329, 53),
(330, 53),
(331, 53),
(332, 53),
(333, 54),
(334, 54),
(335, 54),
(336, 54),
(337, 54),
(338, 54),
(339, 54),
(340, 54),
(341, 54),
(342, 55),
(343, 55),
(344, 55),
(345, 55),
(346, 55),
(347, 56),
(348, 56),
(349, 56),
(350, 56),
(351, 56),
(352, 56),
(353, 56),
(354, 56),
(355, 56),
(356, 57),
(357, 57),
(358, 57),
(359, 57),
(360, 57),
(361, 58),
(362, 58),
(363, 58),
(364, 58),
(365, 58),
(366, 58),
(367, 58),
(368, 58),
(369, 58),
(370, 59),
(371, 59),
(372, 59),
(373, 59),
(374, 59),
(375, 60),
(376, 60),
(377, 60),
(378, 60),
(379, 60),
(380, 60),
(381, 60),
(382, 60),
(383, 60),
(384, 60),
(385, 60),
(386, 61),
(387, 61),
(388, 61),
(389, 61),
(390, 61),
(391, 61),
(392, 62),
(393, 62),
(394, 62),
(395, 63),
(396, 63),
(397, 63),
(398, 63),
(399, 63),
(400, 63),
(401, 63),
(402, 63),
(403, 63),
(404, 64),
(405, 64),
(406, 64),
(407, 64),
(408, 64),
(409, 64),
(410, 65),
(411, 65),
(412, 65),
(413, 66),
(414, 66),
(415, 66),
(416, 66),
(417, 66),
(418, 66),
(419, 66),
(420, 66),
(421, 67),
(422, 67),
(423, 67),
(424, 67),
(425, 67),
(426, 68),
(427, 68),
(428, 68),
(429, 69),
(430, 69),
(431, 69),
(432, 69),
(433, 69),
(434, 69),
(435, 69),
(436, 69),
(437, 69),
(438, 69),
(439, 69),
(440, 70),
(441, 70),
(442, 70),
(443, 70),
(444, 70),
(445, 70),
(446, 71),
(447, 71),
(448, 71),
(449, 72),
(450, 72),
(451, 72),
(452, 72),
(453, 72),
(454, 72),
(455, 72),
(456, 72),
(457, 72),
(458, 73),
(459, 73),
(460, 73),
(461, 73),
(462, 74),
(463, 74),
(464, 74),
(465, 74),
(466, 74),
(467, 74),
(468, 74),
(469, 74),
(470, 74),
(471, 74),
(472, 74),
(473, 75),
(474, 75),
(475, 75),
(476, 75),
(477, 75),
(478, 75),
(479, 76),
(480, 76),
(481, 76),
(482, 77),
(483, 77),
(484, 77),
(485, 77),
(486, 77),
(487, 77),
(488, 77),
(489, 77),
(490, 77),
(491, 78),
(492, 78),
(493, 78),
(494, 78),
(495, 79),
(496, 79),
(497, 79),
(498, 79),
(499, 79),
(500, 79),
(501, 79),
(502, 79),
(503, 79),
(504, 80),
(505, 80),
(506, 80),
(507, 80),
(508, 80),
(509, 81),
(510, 81),
(511, 81),
(512, 81),
(513, 81),
(514, 81),
(515, 81),
(516, 81),
(517, 81),
(518, 82),
(519, 82),
(520, 82),
(521, 82),
(522, 83),
(523, 83),
(524, 83),
(525, 84),
(526, 84),
(527, 84),
(528, 84),
(529, 84),
(530, 84),
(531, 84),
(532, 84),
(533, 84),
(534, 85),
(535, 85),
(536, 85),
(537, 86),
(538, 86),
(539, 86),
(540, 86),
(541, 86),
(542, 86),
(543, 86),
(544, 86),
(545, 86),
(546, 87),
(547, 87),
(548, 87),
(549, 87),
(550, 87),
(551, 88),
(552, 88),
(553, 88),
(554, 88),
(555, 88),
(556, 88),
(557, 88),
(558, 88),
(559, 88),
(560, 89),
(561, 89),
(562, 89),
(563, 89),
(564, 89),
(565, 90),
(566, 90),
(567, 90),
(568, 90),
(569, 90),
(570, 90),
(571, 90),
(572, 90),
(573, 90),
(574, 91),
(575, 91),
(576, 91),
(577, 91),
(578, 92),
(579, 92),
(580, 92),
(581, 92),
(582, 92),
(583, 92),
(584, 92),
(585, 92),
(586, 92),
(587, 93),
(588, 93),
(589, 93),
(590, 93),
(591, 93),
(592, 94),
(593, 94),
(594, 94),
(595, 95),
(596, 95),
(597, 95),
(598, 96),
(599, 96),
(600, 96),
(601, 96),
(602, 96),
(603, 96),
(604, 96),
(605, 96),
(606, 96),
(607, 97),
(608, 97),
(609, 97),
(610, 97),
(611, 97),
(612, 98),
(613, 98),
(614, 98),
(615, 98),
(616, 98),
(617, 98),
(618, 98),
(619, 98),
(620, 98),
(621, 98),
(622, 99),
(623, 99),
(624, 99),
(625, 99),
(626, 100),
(627, 100),
(628, 100),
(629, 100),
(630, 100),
(631, 100),
(632, 100),
(633, 100),
(634, 100),
(635, 101),
(636, 101),
(637, 101),
(638, 101),
(639, 102),
(640, 102),
(641, 102),
(642, 102),
(643, 102),
(644, 103),
(645, 103),
(646, 103),
(647, 104),
(648, 104),
(649, 104),
(650, 104),
(651, 104),
(652, 104),
(653, 104),
(654, 104),
(655, 104),
(656, 105),
(657, 105),
(658, 105),
(659, 105),
(660, 105),
(661, 106),
(662, 106),
(663, 106),
(664, 107),
(665, 107),
(666, 107),
(667, 108),
(668, 108),
(669, 108),
(670, 109),
(671, 109),
(672, 109),
(673, 109),
(674, 109),
(675, 109),
(676, 109),
(677, 109),
(678, 109),
(679, 110),
(680, 110),
(681, 110),
(682, 110),
(683, 111),
(684, 111),
(685, 111),
(686, 111),
(687, 111),
(688, 111),
(689, 112),
(690, 112),
(691, 112),
(692, 112),
(693, 113),
(694, 113),
(695, 114),
(696, 114),
(697, 114),
(698, 115),
(699, 115),
(700, 115),
(701, 116),
(702, 116),
(703, 116),
(704, 116),
(705, 116),
(706, 116),
(707, 116),
(708, 116),
(709, 116),
(710, 116),
(711, 117),
(712, 117),
(713, 117),
(714, 117),
(715, 117),
(716, 118),
(717, 118),
(718, 118),
(719, 118),
(720, 118),
(721, 118),
(722, 118),
(723, 118),
(724, 118),
(725, 118),
(726, 119),
(727, 119),
(728, 119),
(729, 119),
(730, 120),
(731, 120),
(732, 120),
(733, 120),
(734, 120),
(735, 120),
(736, 120),
(737, 120),
(738, 120),
(739, 120),
(740, 121),
(741, 121),
(742, 121),
(743, 121),
(744, 122),
(745, 122),
(746, 122),
(747, 123),
(748, 123),
(749, 123),
(750, 124),
(751, 124),
(752, 124),
(753, 125),
(754, 125),
(755, 125),
(756, 126),
(757, 126),
(758, 126),
(759, 127),
(760, 127),
(761, 127),
(762, 128),
(763, 128),
(764, 128),
(765, 129),
(766, 129),
(767, 129),
(768, 129),
(769, 129),
(770, 129),
(771, 129),
(772, 129),
(773, 129),
(774, 129),
(775, 129),
(776, 130),
(777, 130),
(778, 130),
(779, 131),
(780, 131),
(781, 131),
(782, 132),
(783, 132),
(784, 133),
(785, 133),
(786, 133),
(787, 134),
(788, 134),
(789, 134),
(790, 135),
(791, 135),
(792, 135),
(793, 136),
(794, 136),
(795, 136),
(796, 137),
(797, 137),
(798, 137),
(799, 138),
(800, 138),
(801, 138),
(802, 139),
(803, 139),
(804, 139),
(805, 140),
(806, 140),
(807, 140),
(808, 141),
(809, 141),
(810, 141),
(811, 142),
(812, 142),
(813, 142),
(814, 143),
(815, 144),
(816, 145),
(817, 146),
(818, 147),
(819, 147),
(820, 147),
(821, 148),
(822, 148),
(823, 148),
(824, 149),
(825, 149),
(826, 149),
(827, 150),
(828, 151),
(829, 151),
(830, 151);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `user` varchar(100) NOT NULL,
  `offeredID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `PokedexEntry` int(10) UNSIGNED NOT NULL,
  `PokemonName` varchar(100) NOT NULL,
  `Sprite` text NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Ability` varchar(100) NOT NULL,
  `Type1` int(10) NOT NULL,
  `Type2` int(10) NOT NULL,
  `Height` varchar(100) NOT NULL,
  `Weight` varchar(100) NOT NULL,
  `evolevel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`PokedexEntry`, `PokemonName`, `Sprite`, `Category`, `Ability`, `Type1`, `Type2`, `Height`, `Weight`, `evolevel`) VALUES
(1, 'Bulbasaur', '<img src=\"https://img.pokemondb.net/sprites/home/normal/bulbasaur.png\" alt=\"Bulbasaur\">', 'Seed', 'Overgrow', 10, 14, '2 feet 4 inches', '15.2 lbs', 16),
(2, 'Ivysaur', '<img src=\"https://img.pokemondb.net/sprites/home/normal/ivysaur.png\" alt=\"Ivysaur\">', 'Seed', 'Overgrow', 10, 14, '3 feet 3 inches', '28.7 lbs', 32),
(3, 'Venusaur', '<img src=\"https://img.pokemondb.net/sprites/home/normal/venusaur.png\" alt=\"Venusaur\">', 'Seed', 'Overgrow', 10, 14, '6 feet 7 inches', '220.5 lbs', 0),
(4, 'Charmander', '<img src=\"https://img.pokemondb.net/sprites/home/normal/charmander.png\" alt=\"Charmander\">', 'Lizard', 'Blaze', 7, 0, '2 feet', '18.7 lbs', 16),
(5, 'Charmeleon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/charmeleon.png\" alt=\"Charmeleon\">', 'Lizard', 'Blaze', 7, 0, '3 feet 7 inches', '41.9 lbs', 36),
(6, 'Charizard', '<img src=\"https://img.pokemondb.net/sprites/home/normal/charizard.png\" alt=\"Charizard\">', 'Lizard', 'Blaze', 7, 8, '5 feet 7 inches', '199.5 lbs', 0),
(7, 'Squirtle', '<img src=\"https://img.pokemondb.net/sprites/home/normal/squirtle.png\" alt=\"Squirtle\">', 'Tiny Turtle', 'Torrent', 18, 0, '1 foot 8 inches', '19.8 lbs', 16),
(8, 'Wartortle', '<img src=\"https://img.pokemondb.net/sprites/home/normal/wartortle.png\" alt=\"Wartortle\">', 'Turtle', 'Torrent', 18, 0, '3 feet 3  inches', '49.6 lbs', 36),
(9, 'Blastoise', '<img src=\"https://img.pokemondb.net/sprites/home/normal/blastoise.png\" alt=\"Blastoise\">', 'Shellfish', 'Torrent', 18, 0, '5 feet 3 inches', '188.5 lbs', 0),
(10, 'Caterpie', '<img src=\"https://img.pokemondb.net/sprites/home/normal/caterpie.png\" alt=\"Caterpie\">', 'Worm', 'Sheild Dust', 1, 0, '1 foot', '6.4 lbs', 7),
(11, 'Metapod', '<img src=\"https://img.pokemondb.net/sprites/home/normal/metapod.png\" alt=\"Metapod\">', 'Cocoon', 'Shed Skin', 1, 0, '2 feet 4 inches', '21.8 lbs', 10),
(12, 'Butterfree', '<img src=\"https://img.pokemondb.net/sprites/home/normal/butterfree.png\" alt=\"Butterfree\">', 'Butterfly', 'Compound Eyes', 1, 8, '3 feet 7 inches', '70.5 lbs', 0),
(13, 'Weedle', '<img src=\"https://img.pokemondb.net/sprites/home/normal/weedle.png\" alt=\"Weedle\">', 'Hairy Bug', 'Sheild Dust', 1, 14, '1 foot', '7.1 lbs', 7),
(14, 'Kakuna', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kakuna.png\" alt=\"Kakuna\">', 'Cocoon', 'Shed Skin', 1, 14, '2 feet', '22 lbs', 10),
(15, 'Beedrill', '<img src=\"https://img.pokemondb.net/sprites/home/normal/beedrill.png\" alt=\"Beedrill\">', 'Poison Bee', 'Swarm', 1, 14, '3 feet 3 inches', '65 lbs', 0),
(16, 'Pidgey', '<img src=\"https://img.pokemondb.net/sprites/home/normal/pidgey.png\" alt=\"Pidgey\">', 'Tiny Bird', 'Keen Eye', 13, 8, '1 foot', '4 lbs', 18),
(17, 'Pidgeotto', '<img src=\"https://img.pokemondb.net/sprites/home/normal/pidgeotto.png\" alt=\"Pidgeotto\">', 'Bird', 'Keen Eye', 13, 8, '3 feet 7 inches', '66.1 lbs', 36),
(18, 'Pidgeot', '<img src=\"https://img.pokemondb.net/sprites/home/normal/pidgeot.png\" alt=\"Pidgeot\">', 'Bird', 'Keen Eye', 13, 8, '4 feet 11 inches', '87.1 lbs', 0),
(19, 'Rattata', '<img src=\"https://img.pokemondb.net/sprites/home/normal/rattata.png\" alt=\"Rattata\">', 'Mouse', 'Run Away', 13, 0, '1 foot', '7.7 lbs', 20),
(20, 'Raticate', '<img src=\"https://img.pokemondb.net/sprites/home/normal/raticate.png\" alt=\"Raticate\">', 'Mouse', 'Guts', 13, 0, '2 feet 4 inches', '40.8 lbs', 0),
(21, 'Spearow', '<img src=\"https://img.pokemondb.net/sprites/home/normal/spearow.png\" alt=\"Spearow\">', 'Tiny Bird', 'Keen Eye', 13, 8, '1 foot', '4.4 lbs', 20),
(22, 'Fearow', '<img src=\"https://img.pokemondb.net/sprites/home/normal/fearow.png\" alt=\"Fearow\">', 'Beak', 'Keen Eye', 13, 8, '3 feet 11 inches', '83.8 lbs', 0),
(23, 'Ekans', '<img src=\"https://img.pokemondb.net/sprites/home/normal/ekans.png\" alt=\"Ekans\">', 'Snake', 'Shed Skin', 14, 0, '6 feet 7 inches', '15.2 lbs', 22),
(24, 'Arbok', '<img src=\"https://img.pokemondb.net/sprites/home/normal/arbok.png\" alt=\"Arbok\">', 'Cobra', 'Intimidate', 14, 0, '11 feet 6 inches', '143.3 lbs', 0),
(25, 'Pikachu', '<img src=\"https://img.pokemondb.net/sprites/home/normal/pikachu.png\" alt=\"Pikachu\">', 'Mouse', 'Static', 4, 0, '1 foot 4 inches', '13.2 lbs', 36),
(26, 'Raichu', '<img src=\"https://img.pokemondb.net/sprites/home/normal/raichu.png\" alt=\"Raichu\">', 'Mouse', 'Static', 4, 0, '2 feet 7 inches', '66.1 lbs', 0),
(27, 'Sandshrew', '<img src=\"https://img.pokemondb.net/sprites/home/normal/sandshrew.png\" alt=\"Sandshrew\">', 'Mouse', 'Sand Veil', 11, 0, '2 feet', '26.5 lbs', 22),
(28, 'Sandslash', '<img src=\"https://img.pokemondb.net/sprites/home/normal/sandslash.png\" alt=\"Sandslash\">', 'Mouse', 'Sand Veil', 11, 0, '3 feet 3 inches', '65 lbs', 0),
(29, 'Nidoran♀', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidoran-f.png\" alt=\"Nidoran♀\">', 'Poison Pin', 'Poison Point', 14, 0, '1 foot 4 inches', '15.4 lbs', 16),
(30, 'Nidorina', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidorina.png\" alt=\"Nidorina\">', 'Poison Pin', 'Poison Point', 14, 0, '2 feet 7 inches', '44.1 lbs', 36),
(31, 'Nidoqueen', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidoqueen.png\" alt=\"Nidoqueen\">', 'Drill', 'Poison Point', 14, 11, '4 feet 3 inches', '132.3 lbs', 0),
(32, 'Nidoran ♂', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidoran-m.png\" alt=\"Nidoran♂\">', 'Poison Pin', 'Poison Point', 14, 0, '1 foot 8 inches', '19.8 lbs', 16),
(33, 'Nidorino', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidorino.png\" alt=\"Nidorino\">', 'Poison Pin', 'Poison Point', 14, 0, '2 feet 11 inches', '23 lbs', 36),
(34, 'Nidoking', '<img src=\"https://img.pokemondb.net/sprites/home/normal/nidoking.png\" alt=\"Nidoking\">', 'Drill', 'Poison Point', 14, 11, '4 feet 7 inches', '136.7 lbs', 0),
(35, 'Clefairy', '<img src=\"https://img.pokemondb.net/sprites/home/normal/clefairy.png\" alt=\"Clefairy\">', 'Fairy', 'Magic Guard', 5, 0, '2 feet', '16.5 lbs', 36),
(36, 'Clefable', '<img src=\"https://img.pokemondb.net/sprites/home/normal/clefable.png\" alt=\"Clefable\">', 'Fairy', 'Magic Gaurd', 5, 0, '4 feet 3 inches', '88.2 lbs', 0),
(37, 'Vulpix', '<img src=\"https://img.pokemondb.net/sprites/home/normal/vulpix.png\" alt=\"Vulpix\">', 'Fox', 'Flash Fire', 7, 0, '2 feet', '21.8 lbs', 36),
(38, 'Ninetales', '<img src=\"https://img.pokemondb.net/sprites/home/normal/ninetales.png\" alt=\"Ninetales\">', 'Fox', 'Flash Fire', 7, 0, '3 feet 7 inches', '43.9 lbs', 0),
(39, 'Jigglypuff', '<img src=\"https://img.pokemondb.net/sprites/home/normal/jigglypuff.png\" alt=\"Jigglypuff\">', 'Balloon', 'Cute Charm', 13, 5, '1 foot 8 inches', '12.1 lbs', 36),
(40, 'Wigglytuff', '<img src=\"https://img.pokemondb.net/sprites/home/normal/wigglytuff.png\" alt=\"Wigglytuff\">', 'Balloon', 'Competitive', 13, 5, '3 feet 3 inches', '26.5 lbs', 0),
(41, 'Zubat', '<img src=\"https://img.pokemondb.net/sprites/home/normal/zubat.png\" alt=\"Zubat\">', 'Bat', 'Inner Focus', 14, 8, '2 feet 7 inches', '16.5 lbs', 22),
(42, 'Golbat', '<img src=\"https://img.pokemondb.net/sprites/home/normal/golbat.png\" alt=\"Golbat\">', 'Bat', 'Inner Focus', 14, 8, '5 feet 3 inches', '121.3 lbs', 0),
(43, 'Oddish', '<img src=\"https://img.pokemondb.net/sprites/home/normal/oddish.png\" alt=\"Oddish\">', 'Weed', 'Chlorophyll', 10, 14, '1 foot 8 inches', '11.9 lbs', 21),
(44, 'Gloom', '<img src=\"https://img.pokemondb.net/sprites/home/normal/gloom.png\" alt=\"Gloom\">', 'Weed', 'Chlorophyll', 10, 14, '2 feet 7 inches', '19 lbs', 47),
(45, 'Vileplume', '<img src=\"https://img.pokemondb.net/sprites/home/normal/vileplume.png\" alt=\"Vileplume\">', 'Flower', 'Chlorophyll', 10, 14, '3 feet 11 inches', '41 lbs', 0),
(46, 'Paras', '<img src=\"https://img.pokemondb.net/sprites/home/normal/paras.png\" alt=\"Paras\">', 'Mushroom', 'Effect Spore', 1, 10, '1 foot', '11.9 lbs', 24),
(47, 'Parasect', '<img src=\"https://img.pokemondb.net/sprites/home/normal/parasect.png\" alt=\"Parasect\">', 'Mushroom', 'Effect Spore', 1, 10, '3 feet 3 inches', '65 lbs', 0),
(48, 'Venonat', '<img src=\"https://img.pokemondb.net/sprites/home/normal/venonat.png\" alt=\"Venonat\">', 'Insect', 'Compound Eyes', 1, 14, '3 feet 3 inches', '66.1 lbs', 31),
(49, 'Venomoth', '<img src=\"https://img.pokemondb.net/sprites/home/normal/venomoth.png\" alt=\"Venomoth\">', 'Poison Moth', 'Sheild Dust', 1, 14, '4 feet 11 inches', '27.6 lbs', 0),
(50, 'Diglett', '<img src=\"https://img.pokemondb.net/sprites/home/normal/diglett.png\" alt=\"Diglett\">', 'Mole', 'Sand Veil', 11, 0, '8 inches', '1.8 lbs', 26),
(51, 'Dugtrio', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dugtrio.png\" alt=\"Dugtrio\">', 'Mole', 'Arena Trap', 11, 0, '2 feet 4 inches', '73.4 lbs', 0),
(52, 'Meowth', '<img src=\"https://img.pokemondb.net/sprites/home/normal/meowth.png\" alt=\"Meowth\">', 'Scratch Cat', 'Pickup', 13, 0, '1 foot 4 inches', '9.3 lbs', 28),
(53, 'Persian', '<img src=\"https://img.pokemondb.net/sprites/home/normal/persian.png\" alt=\"Persian\">', 'Classy Cat', 'Technician', 13, 0, '3 feet 3 inches', '70.5 lbs', 0),
(54, 'Psyduck', '<img src=\"https://img.pokemondb.net/sprites/home/normal/psyduck.png\" alt=\"Psyduck\">', 'Duck', 'Damp', 18, 0, '2 feet 7 inches', '43.2 lbs', 33),
(55, 'Golduck', '<img src=\"https://img.pokemondb.net/sprites/home/normal/golduck.png\" alt=\"Golduck\">', 'Duck', 'Cloud Nine', 18, 0, '5 feet 7 inches', '168.9 lbs', 0),
(56, 'Mankey', '<img src=\"https://img.pokemondb.net/sprites/home/normal/mankey.png\" alt=\"Mankey\">', 'Pig Monkey', 'Vital Spirit', 6, 0, '1 foot 8 inches', '61.7 lbs', 28),
(57, 'Primeape', '<img src=\"https://img.pokemondb.net/sprites/home/normal/primeape.png\" alt=\"Primeape\">', 'Pig Monkey', 'Anger Point', 6, 0, '3 feet 3 inches', '70.5 lbs', 0),
(58, 'Growlithe', '<img src=\"https://img.pokemondb.net/sprites/home/normal/growlithe.png\" alt=\"Growlithe\">', 'Puppy', 'Intimidate', 7, 0, '2 feet 4 inches', '41.9 lbs', 36),
(59, 'Arcanine', '<img src=\"https://img.pokemondb.net/sprites/home/normal/arcanine.png\" alt=\"Arcanine\">', 'Legendary', 'Flash Fire', 7, 0, '6 feet 3 inches', '341.7 lbs', 0),
(60, 'Poliwag', '<img src=\"https://img.pokemondb.net/sprites/home/normal/poliwag.png\" alt=\"Poliwag\">', 'Tadpole', 'Water Absorb', 18, 0, '2 feet', '27.3 lbs', 25),
(61, 'Poliwhirl', '<img src=\"https://img.pokemondb.net/sprites/home/normal/poliwhirl.png\" alt=\"Poliwhirl\">', 'Tadpole', 'Damp', 18, 0, '3 feet 3 inches', '44.1 lbs', 55),
(62, 'Poliwrath', '<img src=\"https://img.pokemondb.net/sprites/home/normal/poliwrath.png\" alt=\"Poliwrath\">', 'Tadpole', 'Water Absorb', 18, 6, '4 feet 3 inches', '119 lbs', 0),
(63, 'Abra', '<img src=\"https://img.pokemondb.net/sprites/home/normal/abra.png\" alt=\"Abra\">', 'Psi', 'Inner Focus', 15, 0, '2 feet 11 inches', '43 lbs', 16),
(64, 'Kadabra', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kadabra.png\" alt=\"Kadabra\">', 'Psi', 'Inner Focus', 15, 0, '4 feet 3 inches', '124.6 lbs', 36),
(65, 'Alakazam', '<img src=\"https://img.pokemondb.net/sprites/home/normal/alakazam.png\" alt=\"Alakazam\">', 'Psi', 'Synchronize', 15, 0, '4 feet 11 inches', '105.8 lbs', 0),
(66, 'Machop', '<img src=\"https://img.pokemondb.net/sprites/home/normal/machop.png\" alt=\"Machop\">', 'Superpower', 'Guts', 6, 0, '2 feet 7 inches', '43 lbs', 28),
(67, 'Machoke', '<img src=\"https://img.pokemondb.net/sprites/home/normal/machoke.png\" alt=\"Machoke\">', 'Superpower', 'Guts', 6, 0, '4 feet 11 inches', '155.4 lbs', 63),
(68, 'Machamp', '<img src=\"https://img.pokemondb.net/sprites/home/normal/machamp.png\" alt=\"Machamp\">', 'Superpower', 'No Guard', 6, 0, '5 feet 3 inches', '286.6 lbs', 0),
(69, 'Bellsprout', '<img src=\"https://img.pokemondb.net/sprites/home/normal/bellsprout.png\" alt=\"Bellsprout\">', 'Flower', 'Chlorophyll', 10, 14, '2 feet 4 inches', '8.8 lbs', 21),
(70, 'Weepinbell', '<img src=\"https://img.pokemondb.net/sprites/home/normal/weepinbell.png\" alt=\"Weepinbell\">', 'Flycatcher', 'Chlorophyll', 10, 14, '3 feet 3 inches', '14.1 lbs', 47),
(71, 'Victreebel', '<img src=\"https://img.pokemondb.net/sprites/home/normal/victreebel.png\" alt=\"Victreebel\">', 'Flycatcher', 'Chlorophyll', 10, 14, '5 feet 7 inches', '34.2 lbs', 0),
(72, 'Tentacool', '<img src=\"https://img.pokemondb.net/sprites/home/normal/tentacool.png\" alt=\"Tentacool\">', 'Jellyfish', 'Clear Body', 18, 14, '2 feet 11 inches', '100.3 lbs', 30),
(73, 'Tentacruel', '<img src=\"https://img.pokemondb.net/sprites/home/normal/tentacruel.png\" alt=\"Tentacruel\">', 'Jellyfish', 'Liquid Ooze', 18, 14, '5 feet 3 inches', '121.3 lbs', 0),
(74, 'Geodude', '<img src=\"https://img.pokemondb.net/sprites/home/normal/geodude.png\" alt=\"Geodude\">', 'Rock', 'Rock Head', 16, 11, '1 foot 4 inches', '44.1 lbs', 25),
(75, 'Graveler', '<img src=\"https://img.pokemondb.net/sprites/home/normal/graveler.png\" alt=\"Graveler\">', 'Rock', 'Sturdy', 16, 11, '3 feet 3 inches', '231.5 lbs', 55),
(76, 'Golem', '<img src=\"https://img.pokemondb.net/sprites/home/normal/golem.png\" alt=\"Golem\">', 'Megaton', 'Sturdy', 16, 11, '4 feet 7 inches', '661.4 lbs', 0),
(77, 'Ponyta', '<img src=\"https://img.pokemondb.net/sprites/home/normal/ponyta.png\" alt=\"Ponyta\">', 'Fire Horse', 'Run Away', 7, 0, '3 feet 3 inches', '66.1 lbs', 40),
(78, 'Rapidash', '<img src=\"https://img.pokemondb.net/sprites/home/normal/rapidash.png\" alt=\"Rapidash\">', 'Fire Horse', 'Flash Fire', 7, 0, '5 feet 7 inches', '209.4 lbs', 0),
(79, 'Slowpoke', '<img src=\"https://img.pokemondb.net/sprites/home/normal/slowpoke.png\" alt=\"Slowpoke\">', 'Dopey', 'Oblivious', 18, 15, '3 feet 11 inches', '79.4 lbs', 37),
(80, 'Slowbro', '<img src=\"https://img.pokemondb.net/sprites/home/normal/slowbro.png\" alt=\"Slowbro\">', 'Hermit Crab', 'Own Tempo', 18, 15, '5 feet 3 inches', '173.1 lbs', 0),
(81, 'Magnemite', '<img src=\"https://img.pokemondb.net/sprites/home/normal/magnemite.png\" alt=\"Magnemite\">', 'Magnet', 'Sturdy', 4, 17, '1 foot', '13.2 lbs', 30),
(82, 'Magneton', '<img src=\"https://img.pokemondb.net/sprites/home/normal/magneton.png\" alt=\"Magneton\">', 'Magnet', 'Magnet Pull', 4, 17, '3 feet 3 inches', '132.3 lbs', 0),
(83, 'Farfetch\'d', '<img src=\"https://img.pokemondb.net/sprites/home/normal/farfetchd.png\" alt=\"Farfetch\'\">', 'Wild Duck', 'Keen Eye', 13, 8, '2 feet 7 inches', '33.1 lbs', 0),
(84, 'Doduo', '<img src=\"https://img.pokemondb.net/sprites/home/normal/doduo.png\" alt=\"Doduo\">', 'Twin Bird', 'Run Away', 13, 8, '4 feet 7 inches', '86.4 lbs', 31),
(85, 'Dodrio', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dodrio.png\" alt=\"Dodrio\">', 'Triple Bird', 'Early Bird', 13, 8, '5 feet 11 inches', '187.8 lbs', 0),
(86, 'Seel', '<img src=\"https://img.pokemondb.net/sprites/home/normal/seel.png\" alt=\"Seel\">', 'Sea Lion', 'Thick Fat', 18, 0, '3 feet 7 inches', '198.4 lbs', 34),
(87, 'Dewgong', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dewgong.png\" alt=\"Dewgong\">', 'Sea Lion', 'Hydration', 18, 0, '5 feet 7 inches', '264.6 lbs', 0),
(88, 'Grimer', '<img src=\"https://img.pokemondb.net/sprites/home/normal/grimer.png\" alt=\"Grimer\">', 'Sludge', 'Stench', 14, 0, '2 feet 11 inches', '66.1 lbs', 38),
(89, 'Muk', '<img src=\"https://img.pokemondb.net/sprites/home/normal/muk.png\" alt=\"Muk\">', 'Sludge', 'Sticky Hold', 14, 0, '3 feet 11 inches', '66.1 lbs', 0),
(90, 'Shellder', '<img src=\"https://img.pokemondb.net/sprites/home/normal/shellder.png\" alt=\"Shellder\">', 'Bivalve', 'Shell Armor', 18, 0, '1 foot', '8.8 lbs', 36),
(91, 'Cloyster', '<img src=\"https://img.pokemondb.net/sprites/home/normal/cloyster.png\" alt=\"Cloyster\">', 'Bivalve', 'Skill Link', 18, 0, '4 feet 11 inches', '292.1 lbs', 0),
(92, 'Ghastly', '<img src=\"https://img.pokemondb.net/sprites/home/normal/gastly.png\" alt=\"Gastly\">', 'Gas', 'Levitate', 9, 14, '4 feet 3 inches', '.2 lbs', 25),
(93, 'Haunter', '<img src=\"https://img.pokemondb.net/sprites/home/normal/haunter.png\" alt=\"Haunter\">', 'Gas', 'Levitate', 9, 14, '5 feet 3 inches', '.2 lbs', 55),
(94, 'Gengar', '<img src=\"https://img.pokemondb.net/sprites/home/normal/gengar.png\" alt=\"Gengar\">', 'Shadow', 'Cursed Body', 9, 14, '4 feet 11 inches', '89.3 lbs', 0),
(95, 'Onix', '<img src=\"https://img.pokemondb.net/sprites/home/normal/onix.png\" alt=\"Onix\">', 'Rock Snake', 'Rock Head', 16, 11, '28 feet 10 inches', '463 lbs', 0),
(96, 'Drowzee', '<img src=\"https://img.pokemondb.net/sprites/home/normal/drowzee.png\" alt=\"Drowzee\">', 'Hypnosis', 'Insomnia', 15, 0, '3 feet 3 inches', '71.4 lbs', 26),
(97, 'Hypno', '<img src=\"https://img.pokemondb.net/sprites/home/normal/hypno.png\" alt=\"Hypno\">', 'Hypnosis', 'Forewarn', 15, 0, '5 feet 3 inches', '166.7 lbs', 0),
(98, 'Krabby', '<img src=\"https://img.pokemondb.net/sprites/home/normal/krabby.png\" alt=\"Krabby\">', 'River Crab', 'Shell Armor', 18, 0, '1 foot 4 inches', '14.3 lbs', 28),
(99, 'Kingler', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kingler.png\" alt=\"Kingler\">', 'Pincer', 'Hyper Cutter', 18, 0, '4 feet 3 inches', '132.3 lbs', 0),
(100, 'Voltorb', '<img src=\"https://img.pokemondb.net/sprites/home/normal/voltorb.png\" alt=\"Voltorb\">', 'Ball', 'Static', 4, 0, '1 foot 8 inches', '22.9 lbs', 30),
(101, 'Electrode', '<img src=\"https://img.pokemondb.net/sprites/home/normal/electrode.png\" alt=\"Electrode\">', 'Ball', 'Soundproof', 4, 0, '3 feet 11 inches', '146.8 lbs', 0),
(102, 'Exeggcute', '<img src=\"https://img.pokemondb.net/sprites/home/normal/exeggcute.png\" alt=\"Exeggcute\">', 'Egg', 'Chlorophyll', 10, 15, '1 foot 4 inches', '5.5 lbs', 36),
(103, 'Exeggutor', '<img src=\"https://img.pokemondb.net/sprites/home/normal/exeggutor.png\" alt=\"Exeggutor\">', 'Coconut', 'Chlorophyll', 10, 15, '6 feet 7 inches', '264.6 lbs', 0),
(104, 'Cubone', '<img src=\"https://img.pokemondb.net/sprites/home/normal/cubone.png\" alt=\"Cubone\">', 'Lonely', 'Rock Head', 11, 0, '1 foot 4 inches', '14.3 lbs', 28),
(105, 'Marowak', '<img src=\"https://img.pokemondb.net/sprites/home/normal/marowak.png\" alt=\"Marowak\">', 'Bone Keeper', 'Lightning Rod', 11, 0, '3 feet 3 inches', '99.2 lbs', 0),
(106, 'Hitmonlee', '<img src=\"https://img.pokemondb.net/sprites/home/normal/hitmonlee.png\" alt=\"Hitmonlee\">', 'Kicking', 'Limber', 6, 0, '4 feet 11 inches', '109.8 lbs', 0),
(107, 'Hitmonchan', '<img src=\"https://img.pokemondb.net/sprites/home/normal/hitmonchan.png\" alt=\"Hitmonchan\">', 'Punching', 'Iron Fist', 6, 0, '4 feet 7 inches', '110.7 lbs', 0),
(108, 'Lickitung', '<img src=\"https://img.pokemondb.net/sprites/home/normal/lickitung.png\" alt=\"Lickitung\">', 'Licking', 'Own Tempo', 13, 0, '3 feet 11 inches', '144.4 lbs', 0),
(109, 'Koffing', '<img src=\"https://img.pokemondb.net/sprites/home/normal/koffing.png\" alt=\"Koffing\">', 'Poison Gas', 'Levitate', 14, 0, '2 feet', '2.2 lbs', 35),
(110, 'Weezing', '<img src=\"https://img.pokemondb.net/sprites/home/normal/weezing.png\" alt=\"Weezing\">', 'Poison Gas', 'Neutralizing Gas', 14, 0, '3 feet 11 inches', '20.9 lbs', 0),
(111, 'Rhyhorn', '<img src=\"https://img.pokemondb.net/sprites/home/normal/rhyhorn.png\" alt=\"Rhyhorn\">', 'Spikes', 'Rock Head', 11, 16, '3 feet 3 inches', '253.5 lbs', 42),
(112, 'Rhydon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/rhydon.png\" alt=\"Rhydon\">', 'Drill', 'Lightning Rod', 11, 16, '6 feet 3 inches', '264.6 lbs', 0),
(113, 'Chansey', '<img src=\"https://img.pokemondb.net/sprites/home/normal/chansey.png\" alt=\"Chansey\">', 'Egg', 'Natural Cure', 13, 0, '3 feet 7 inches', '76.3 lbs', 0),
(114, 'Tangela', '<img src=\"https://img.pokemondb.net/sprites/home/normal/tangela.png\" alt=\"Tangela\">', 'Vine', 'Chlorophyll', 10, 0, '3 feet 3 inches', '77.2 lbs', 0),
(115, 'Kangaskhan', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kangaskhan.png\" alt=\"Kangaskhan\">', 'Parent', 'Scrappy', 13, 0, '7 feet 3 inches', '176.4 lbs', 0),
(116, 'Horsea', '<img src=\"https://img.pokemondb.net/sprites/home/normal/horsea.png\" alt=\"Horsea\">', 'Dragon', 'Swift Swim', 18, 0, '1 foot 4 inches', '17.6 lbs', 32),
(117, 'Seadra', '<img src=\"https://img.pokemondb.net/sprites/home/normal/seadra.png\" alt=\"Seadra\">', 'Dragon', 'Sniper', 18, 0, '3 feet 11 inches', '55.1 lbs', 0),
(118, 'Goldeen', '<img src=\"https://img.pokemondb.net/sprites/home/normal/goldeen.png\" alt=\"Goldeen\">', 'Goldfish', 'Water Veil', 18, 0, '2 feet', '33.1 lbs', 33),
(119, 'Seaking', '<img src=\"https://img.pokemondb.net/sprites/home/normal/seaking.png\" alt=\"Seaking\">', 'Goldfish', 'Swift Swim', 18, 0, '4 feet 3 inches', '86 lbs', 0),
(120, 'Staryu', '<img src=\"https://img.pokemondb.net/sprites/home/normal/staryu.png\" alt=\"Staryu\">', 'Star Shape', 'Natural Cure', 18, 0, '2 feet 7 inches', '76.1 lbs', 36),
(121, 'Starmie', '<img src=\"https://img.pokemondb.net/sprites/home/normal/starmie.png\" alt=\"Starmie\">', 'Mysterious', 'Illuminate', 18, 15, '3 feet 7 inches', '176.4 lbs', 0),
(122, 'Mr. Mime', '<img src=\"https://img.pokemondb.net/sprites/home/normal/mr-mime.png\" alt=\"Mr. Mime\">', 'Barrier', 'Filter', 15, 5, '4 feet 3 inches', '120.2 lbs', 0),
(123, 'Scyther', '<img src=\"https://img.pokemondb.net/sprites/home/normal/scyther.png\" alt=\"Scyther\">', 'Mantis', 'Technician', 1, 8, '4 feet 11 inches', '123.5 lbs', 0),
(124, 'Jynx', '<img src=\"https://img.pokemondb.net/sprites/home/normal/jynx.png\" alt=\"Jynx\">', 'Human Shape', 'Oblivious', 12, 15, '4 feet 7 inches', '89.5 lbs', 0),
(125, 'Electrabuzz', '<img src=\"https://img.pokemondb.net/sprites/home/normal/electabuzz.png\" alt=\"Electabuzz\">', 'Electric', 'Static', 4, 0, '3 feet 7 inches', '66.1 lbs', 0),
(126, 'Magmar', '<img src=\"https://img.pokemondb.net/sprites/home/normal/magmar.png\" alt=\"Magmar\">', 'Spitfire', 'Flame Body', 7, 0, '4 feet 3 inches', '98.1 lbs', 0),
(127, 'Pinsir', '<img src=\"https://img.pokemondb.net/sprites/home/normal/pinsir.png\" alt=\"Pinsir\">', 'Stag Beetle', 'Mold Breaker', 1, 0, '4 feet 11 inches', '121.3 lbs', 0),
(128, 'Tauros', '<img src=\"https://img.pokemondb.net/sprites/home/normal/tauros.png\" alt=\"Tauros\">', 'Wild Bull', 'Anger Point', 13, 0, '4 feet 7 inches', '194.9 lbs', 0),
(129, 'Magikarp', '<img src=\"https://img.pokemondb.net/sprites/home/normal/magikarp.png\" alt=\"Magikarp\">', 'Fish', 'Swift Swim', 18, 0, '2 feet 11 inches', '22 lbs', 20),
(130, 'Gyarados', '<img src=\"https://img.pokemondb.net/sprites/home/normal/gyarados.png\" alt=\"Gyarados\">', 'Atrocious', 'Intimidate', 18, 8, '21 feet 4 inches', '518.1 lbs', 0),
(131, 'Lapras', '<img src=\"https://img.pokemondb.net/sprites/home/normal/lapras.png\" alt=\"Lapras\">', 'Transport', 'Water Absorb', 18, 12, '8 feet 2 inches', '485 lbs', 0),
(132, 'Ditto', '<img src=\"https://img.pokemondb.net/sprites/home/normal/ditto.png\" alt=\"Ditto\">', 'Transform', 'Limber', 13, 0, '1 foot', '8.8 lbs', 0),
(133, 'Eevee', '<img src=\"https://img.pokemondb.net/sprites/home/normal/eevee.png\" alt=\"Eevee\">', 'Evolution', 'Run Away', 13, 0, '1 foot', '14.3 lbs', 36),
(134, 'Vaporeon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/vaporeon.png\" alt=\"Vaporeon\">', 'Bubble Jet', 'Water Absorb', 18, 0, '3 feet 3 inches', '63.9 lbs', 0),
(135, 'Jolteon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/jolteon.png\" alt=\"Jolteon\">', 'Lightning', 'Volt Absorb', 4, 0, '2 feet 7 inches', '54 lbs', 0),
(136, 'Flareon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/flareon.png\" alt=\"Flareon\">', 'Flame', 'Flash Fire', 7, 0, '2 feet 11 inches', '55.1 lbs', 0),
(137, 'Porygon', '<img src=\"https://img.pokemondb.net/sprites/home/normal/porygon.png\" alt=\"Porygon\">', 'Virtual', 'Download', 13, 0, '2 feet 7 inches', '80.5 lbs', 0),
(138, 'Omanyte', '<img src=\"https://img.pokemondb.net/sprites/home/normal/omanyte.png\" alt=\"Omanyte\">', 'Spiral', 'Shell Armor', 16, 18, '1 foot 4 inches', '16.5 lbs', 40),
(139, 'Omastar', '<img src=\"https://img.pokemondb.net/sprites/home/normal/omastar.png\" alt=\"Omastar\">', 'Spiral', 'Shell Armor', 16, 18, '3 feet 3 inches', '77.2 lbs', 0),
(140, 'Kabuto', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kabuto.png\" alt=\"Kabuto\">', 'Shellfish', 'Battle Armor', 16, 18, '1 foot 8 inches', '25.4 lbs', 40),
(141, 'Kabutops', '<img src=\"https://img.pokemondb.net/sprites/home/normal/kabutops.png\" alt=\"Kabutops\">', 'Shellfish', 'Battle Armor', 16, 18, '4 feet 3 inches', '89.3 lbs', 0),
(142, 'Aerodactyl', '<img src=\"https://img.pokemondb.net/sprites/home/normal/aerodactyl.png\" alt=\"Aerodactyl\">', 'Fossil', 'Pressure', 16, 8, '5 feet 11 inches', '130.1 lbs', 0),
(143, 'Snaorlax', '<img src=\"https://img.pokemondb.net/sprites/home/normal/snorlax.png\" alt=\"Snorlax\">', 'Sleeping', 'Immunity', 13, 0, '6 feet 11 inches', '1014.1 lbs', 0),
(144, 'Articuno', '<img src=\"https://img.pokemondb.net/sprites/home/normal/articuno.png\" alt=\"Articuno\">', 'Freeze', 'Pressure', 12, 8, '5 feet 7 inches', '122.1 lbs', 0),
(145, 'Zapdos', '<img src=\"https://img.pokemondb.net/sprites/home/normal/zapdos.png\" alt=\"Zapdos\">', 'Electric', 'Pressure', 4, 8, '5 feet 3 inches', '116 lbs', 0),
(146, 'Moltres', '<img src=\"https://img.pokemondb.net/sprites/home/normal/moltres.png\" alt=\"Moltres\">', 'Flame', 'Pressure', 7, 8, '6 feet 7 inches', '132.3 lbs', 0),
(147, 'Dratini', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dratini.png\" alt=\"Dratini\">', 'Dragon', 'Shed Skin', 3, 0, '5 feet 11 inches', '7.3 lbs', 30),
(148, 'Dragonair', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dragonair.png\" alt=\"Dragonair\">', 'Dragon', 'Shed Skin', 3, 0, '13 feet 1 inch', '36.4 lbs', 55),
(149, 'Dragonite', '<img src=\"https://img.pokemondb.net/sprites/home/normal/dragonite.png\" alt=\"Dragonite\">', 'Dragon', 'Inner Focus', 3, 8, '7 feet 3 inches', '463 lbs', 0),
(150, 'Mewtwo', '<img src=\"https://img.pokemondb.net/sprites/home/normal/mewtwo.png\" alt=\"Mewtwo\">', 'Genetic', 'Pressure', 15, 0, '6 feet 7 inches', '269 lbs', 0),
(151, 'Mew', '<img src=\"https://img.pokemondb.net/sprites/home/normal/mew.png\" alt=\"Mew\">', 'New Species', 'Synchronize', 15, 0, '1 feet 4 inches', '9.9 lbs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `user` varchar(100) NOT NULL,
  `requestedID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `user1` varchar(100) NOT NULL,
  `user1_offer` int(10) UNSIGNED NOT NULL,
  `user2` varchar(100) NOT NULL,
  `user2_offer` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typeimmune`
--

CREATE TABLE `typeimmune` (
  `Type` int(10) NOT NULL,
  `DoesNotAffect` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typeimmune`
--

INSERT INTO `typeimmune` (`Type`, `DoesNotAffect`) VALUES
(1, 0),
(2, 0),
(3, 5),
(4, 11),
(5, 0),
(6, 9),
(7, 0),
(8, 0),
(9, 13),
(10, 0),
(11, 8),
(12, 0),
(13, 9),
(14, 17),
(15, 2),
(16, 0),
(17, 0),
(18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `TypeID` int(10) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`TypeID`, `Type`) VALUES
(0, 'NULL'),
(1, 'Bug'),
(2, 'Dark'),
(3, 'Dragon'),
(4, 'Electric'),
(5, 'Fairy'),
(6, 'Fighting'),
(7, 'Fire'),
(8, 'Flying'),
(9, 'Ghost'),
(10, 'Grass'),
(11, 'Ground'),
(12, 'Ice'),
(13, 'Normal'),
(14, 'Poison'),
(15, 'Psychic'),
(16, 'Rock'),
(17, 'Steel'),
(18, 'Water');

-- --------------------------------------------------------

--
-- Table structure for table `typestrength`
--

CREATE TABLE `typestrength` (
  `Type` int(10) NOT NULL,
  `StrongAgainst` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typestrength`
--

INSERT INTO `typestrength` (`Type`, `StrongAgainst`) VALUES
(1, 2),
(1, 10),
(1, 15),
(2, 9),
(2, 15),
(3, 3),
(4, 8),
(4, 18),
(5, 2),
(5, 3),
(5, 6),
(6, 2),
(6, 12),
(6, 13),
(6, 16),
(6, 17),
(7, 1),
(7, 10),
(7, 12),
(7, 17),
(8, 1),
(8, 6),
(8, 10),
(9, 9),
(9, 15),
(10, 11),
(10, 16),
(10, 18),
(11, 4),
(11, 7),
(11, 14),
(11, 16),
(11, 17),
(12, 3),
(12, 8),
(12, 10),
(12, 11),
(13, 0),
(14, 5),
(14, 10),
(15, 6),
(15, 14),
(16, 1),
(16, 7),
(16, 8),
(16, 12),
(17, 5),
(17, 12),
(17, 16),
(18, 7),
(18, 11),
(18, 16);

-- --------------------------------------------------------

--
-- Table structure for table `typeweakness`
--

CREATE TABLE `typeweakness` (
  `Type` int(10) NOT NULL,
  `WeakAgainst` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typeweakness`
--

INSERT INTO `typeweakness` (`Type`, `WeakAgainst`) VALUES
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 14),
(1, 17),
(2, 2),
(2, 5),
(2, 6),
(3, 17),
(4, 3),
(4, 4),
(4, 10),
(5, 7),
(5, 14),
(5, 17),
(6, 1),
(6, 5),
(6, 8),
(6, 14),
(6, 15),
(7, 3),
(7, 7),
(7, 16),
(7, 18),
(8, 4),
(8, 16),
(8, 17),
(9, 2),
(10, 1),
(10, 3),
(10, 7),
(10, 8),
(10, 10),
(10, 14),
(10, 17),
(11, 1),
(11, 10),
(12, 7),
(12, 12),
(12, 17),
(12, 18),
(13, 16),
(13, 17),
(14, 9),
(14, 11),
(14, 14),
(14, 16),
(15, 15),
(15, 17),
(16, 6),
(16, 11),
(16, 17),
(17, 4),
(17, 7),
(17, 17),
(17, 18),
(18, 3),
(18, 10),
(18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `userpokemon`
--

CREATE TABLE `userpokemon` (
  `email` varchar(100) NOT NULL,
  `pokeID` int(10) UNSIGNED NOT NULL,
  `level` int(10) NOT NULL,
  `exp` int(10) NOT NULL,
  `tradeable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `Username` (`Username`) USING BTREE;

--
-- Indexes for table `catch_rate`
--
ALTER TABLE `catch_rate`
  ADD PRIMARY KEY (`catch_id`),
  ADD KEY `catch_pokemon` (`poke_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`user`,`offeredID`),
  ADD KEY `offers_ibfk_1` (`offeredID`,`user`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`PokedexEntry`),
  ADD KEY `type1` (`Type1`),
  ADD KEY `type2` (`Type2`) USING BTREE;

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`user`,`requestedID`),
  ADD KEY `user` (`user`) USING BTREE,
  ADD KEY `req` (`requestedID`) USING BTREE;

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`user1`,`user1_offer`,`user2`,`user2_offer`),
  ADD UNIQUE KEY `email_unique` (`user1`),
  ADD KEY `user1_offer` (`user1_offer`,`user1`),
  ADD KEY `user2_offer` (`user2_offer`,`user2`);

--
-- Indexes for table `typeimmune`
--
ALTER TABLE `typeimmune`
  ADD PRIMARY KEY (`Type`,`DoesNotAffect`),
  ADD KEY `DoesNotAffect` (`DoesNotAffect`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `typestrength`
--
ALTER TABLE `typestrength`
  ADD PRIMARY KEY (`Type`,`StrongAgainst`),
  ADD KEY `StrongAgainst` (`StrongAgainst`);

--
-- Indexes for table `typeweakness`
--
ALTER TABLE `typeweakness`
  ADD PRIMARY KEY (`Type`,`WeakAgainst`),
  ADD KEY `WeakAgainst` (`WeakAgainst`);

--
-- Indexes for table `userpokemon`
--
ALTER TABLE `userpokemon`
  ADD PRIMARY KEY (`email`,`pokeID`),
  ADD UNIQUE KEY `fk_constraint` (`pokeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catch_rate`
--
ALTER TABLE `catch_rate`
  MODIFY `catch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catch_rate`
--
ALTER TABLE `catch_rate`
  ADD CONSTRAINT `catch_pokemon` FOREIGN KEY (`poke_id`) REFERENCES `pokemon` (`PokedexEntry`);

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`offeredID`,`user`) REFERENCES `userpokemon` (`pokeID`, `email`);

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `type1` FOREIGN KEY (`Type1`) REFERENCES `types` (`TypeID`),
  ADD CONSTRAINT `type2` FOREIGN KEY (`Type2`) REFERENCES `types` (`TypeID`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `req` FOREIGN KEY (`requestedID`) REFERENCES `pokemon` (`PokedexEntry`),
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`user`) REFERENCES `userpokemon` (`email`);

--
-- Constraints for table `trades`
--
ALTER TABLE `trades`
  ADD CONSTRAINT `user1_offer` FOREIGN KEY (`user1_offer`,`user1`) REFERENCES `offers` (`offeredID`, `user`),
  ADD CONSTRAINT `user2_offer` FOREIGN KEY (`user2_offer`,`user2`) REFERENCES `offers` (`offeredID`, `user`);

--
-- Constraints for table `typeimmune`
--
ALTER TABLE `typeimmune`
  ADD CONSTRAINT `typeimmune_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `types` (`TypeID`),
  ADD CONSTRAINT `typeimmune_ibfk_2` FOREIGN KEY (`DoesNotAffect`) REFERENCES `types` (`TypeID`);

--
-- Constraints for table `typestrength`
--
ALTER TABLE `typestrength`
  ADD CONSTRAINT `typestrength_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `types` (`TypeID`),
  ADD CONSTRAINT `typestrength_ibfk_2` FOREIGN KEY (`StrongAgainst`) REFERENCES `types` (`TypeID`);

--
-- Constraints for table `typeweakness`
--
ALTER TABLE `typeweakness`
  ADD CONSTRAINT `typeweakness_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `types` (`TypeID`),
  ADD CONSTRAINT `typeweakness_ibfk_2` FOREIGN KEY (`WeakAgainst`) REFERENCES `types` (`TypeID`);

--
-- Constraints for table `userpokemon`
--
ALTER TABLE `userpokemon`
  ADD CONSTRAINT `PokeExists` FOREIGN KEY (`pokeID`) REFERENCES `pokemon` (`PokedexEntry`),
  ADD CONSTRAINT `UserExists` FOREIGN KEY (`email`) REFERENCES `accounts` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
