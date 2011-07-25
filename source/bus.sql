-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2011 at 01:24 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `busid` int(11) NOT NULL AUTO_INCREMENT,
  `routeno` varchar(5) NOT NULL,
  `from_loc` varchar(20) NOT NULL,
  `to_loc` varchar(20) NOT NULL,
  PRIMARY KEY (`busid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busid`, `routeno`, `from_loc`, `to_loc`) VALUES
(1, '138', 'Pettah', 'Kottawa'),
(2, '138', 'Pettah', 'Homagama'),
(3, '138', 'Pettah', 'Maharagama'),
(4, '138/2', 'Pettah', 'Mattegoda'),
(5, '138/4', 'Pettah', 'Athurugiriya'),
(6, '138/3', 'Pettah', 'Rukmalgama'),
(7, '100', 'Pettah', 'Panadura'),
(8, '100', 'Pettah', 'Moratuwa'),
(9, '101', 'Pettah', 'Moratuwa'),
(10, '154', 'Kiribathgoda', 'Angulana'),
(11, '154', 'Kadawatha', 'Bambalapitiya'),
(12, '120', 'Pettah', 'Horana'),
(13, '120', 'Pettah', 'Kesbewa'),
(14, '120', 'Pettah', 'Piliyandala'),
(15, '141', 'Narahenpita', 'Wellawatte'),
(16, '135', 'Kohuwala', 'Kelaniya'),
(17, '122', 'Pettah', 'Avissawella'),
(18, '122', 'Pettah', 'Rathnapura'),
(19, '125', 'Pettah', 'Padukka'),
(20, '125', 'Pettah', 'Ingiriya'),
(21, '177', 'Kollupitiya', 'Kaduwela'),
(22, '155', 'Soysapura', 'Mattakkuliya'),
(23, '155', 'Mount Lavinia', 'Mattakkuliya'),
(24, '140', 'Kollupitiya', 'Wellampitiya'),
(25, '175', 'Kollupitiya', 'Kohilawatte'),
(26, '119', 'Dehiwala', 'Maharagama'),
(27, '174', 'Kottawa', 'Borella'),
(28, '163', 'Dehiwala', 'Battaramulla'),
(29, '176', 'Karagampitiya', 'Hettiyawatte'),
(30, '103', 'Narahenpita', 'Fort'),
(31, '187', 'Fort', 'Airport'),
(101, '138', 'Kottawa', 'Pettah'),
(102, '138', 'Homagama', 'Pettah'),
(103, '138', 'Maharagama', 'Pettah'),
(104, '138/2', 'Mattegoda', 'Pettah'),
(105, '138/4', 'Athurugiriya', 'Pettah'),
(106, '138/3', 'Rukmalgama', 'Pettah'),
(107, '100', 'Panadura', 'Pettah'),
(108, '100', 'Moratuwa', 'Pettah'),
(109, '101', 'Moratuwa', 'Pettah'),
(110, '154', 'Angulana', 'Kiribathgoda'),
(111, '154', 'Bambalapitiya', 'Kadawatha'),
(112, '120', 'Horana', 'Pettah'),
(113, '120', 'Kesbewa', 'Pettah'),
(114, '120', 'Piliyandala', 'Pettah'),
(115, '141', 'Wellawatte', 'Narahenpita'),
(116, '135', 'Kelaniya', 'Kohuwala'),
(117, '122', 'Avissawella', 'Pettah'),
(118, '122', 'Rathnapura', 'Pettah'),
(119, '125', 'Padukka', 'Pettah'),
(120, '125', 'Ingiriya', 'Pettah'),
(121, '177', 'Kaduwela', 'Kollupitiya'),
(122, '155', 'Mattakkuliya', 'Soysapura'),
(123, '155', 'Mattakkuliya', 'Mount Lavinia'),
(124, '140', 'Wellampitiya', 'Kollupitiya'),
(125, '175', 'Kohilawatte', 'Kollupitiya'),
(126, '119', 'Maharagama', 'Dehiwala'),
(127, '174', 'Borella', 'Kottawa'),
(128, '163', 'Battaramulla', 'Dehiwala'),
(129, '176', 'Hettiyawatte', 'Karagampitiya'),
(130, '103', 'Fort', 'Narahenpita'),
(131, '187', 'Airport', 'Fort');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `area` varchar(10) NOT NULL,
  `loc` varchar(64) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`pid`, `name`, `area`, `loc`, `description`) VALUES
(1, 'Pettah', 'Coast', '6.933211,79.855435', NULL),
(2, 'Fort Railway Station', 'Coast', '6.934085,79.850221', NULL),
(3, 'Lotus Road', 'Coast', '6.933978,79.846991', NULL),
(4, 'Galle Face Green', 'Coast', '6.921959,79.846085', NULL),
(5, 'Kollupitiya Junc.', 'Coast', '6.911159,79.849652|6.912016,79.850591|6.910398,79.852098', '100s (towards Colombo) stop on the left, 177s and 101s (towards Kaduwela and Colombo) stop at the centre, and 100s, 101s and 177s (towards Moratuwa and Kollupitiya) stop on the right.'),
(6, 'McDonalds, Kollupitiya', 'Coast', '6.903171,79.852297', NULL),
(7, 'Bambalapitiya Junc.', 'Coast', '6.893686,79.855456', NULL),
(8, 'Holy Family Convent, Bambalapitiya', 'Coast', '6.887812,79.857318', NULL),
(9, 'Savoy Cinema, Wellawatte', 'Coast', '6.88027,79.85956', NULL),
(10, 'Wellawatte Junc.', 'Coast', '6.875344,79.861014', NULL),
(16, 'Lake House', 'Central', '6.932609,79.847989', NULL),
(19, 'Gamini Hall Junc.', 'Central', '6.926533,79.861813', NULL),
(20, 'Darley Road/Excel World', 'Central', '6.921661,79.862167', NULL),
(21, 'Gangarama', 'Coast', '6.918109,79.854341', NULL),
(22, 'Bishop''s College', 'Coast', '6.914594,79.855928', NULL),
(23, 'Mahanama College', 'Coast', '6.905679,79.853579', NULL),
(24, 'British Council', 'Coast', '6.899832,79.855542', NULL),
(25, 'Regal Cinema', 'Central', '6.931283,79.846959', NULL),
(26, 'Slave Island', 'Central', '6.923296,79.851626|6.922444,79.853536|6.922135,79.852699', '101s and 138s (towards Colombo) stop on the right, 101s towards Moratuwa stop in the centre, and 138s (towards Kottawa) stop on the right'),
(27, 'Town Hall', 'Central', '6.916799,79.863364|6.916437,79.864812', '138s, 140s, 175s and 155s (towards Soysapura) stop on the left, 120s and 155s (towards Mattakuliya) stop on the right'),
(28, 'Public Library', 'Central', '6.912869,79.857945|6.91354,79.857581', '140s and 175s (towards Town Hall) stop in the top, 138s (towards Kottawa) and 177s (towards Kaduwela) stop in the bottom'),
(29, 'St. Bridget''s Convent', 'Central', '6.909652,79.863685|6.910504,79.863889', '138s (towards Kottawa) and 154s (towards Kiribathgoda) stop in the bottom, 177s (towards Kaduwela) and 155s (towards Mattakuliya) stop in the top'),
(30, 'Race Course Grounds', 'Central', '6.90618,79.863685', NULL),
(31, 'Campus (Arts Faculty)', 'Central', '6.90258,79.862237|6.899938,79.861121', 'Buses stop at both halts, though the one at the top is preferred.'),
(32, 'Campus (near Wycherley)', 'Central', '6.900023,79.859544', NULL),
(33, 'Thurstan College', 'Central', '6.905019,79.858342', NULL),
(34, 'Glass House', 'Central', '6.910941,79.858342|6.91175,79.858589', '138s stop at the halt in the bottom, and 177s stop at the halt in the top right'),
(35, 'Thunmulla', 'South', '6.896189,79.860263|6.896871,79.859029', '154s and 155s stop at the halt on the left, 138s and 125s stop at the one on the right'),
(36, 'Police Park', 'South', '6.892876,79.861979|6.894346,79.861658', '138s and 120s towards Colombo stop at the halt in the bottom, and the ones coming out of Colombo stop at the one in the top'),
(37, 'Thimbirigasyaya', 'South', '6.889979,79.863793|6.891119,79.863428', '138s and 120s towards Colombo stop at the halt in the bottom, and the ones coming out of Colombo stop at the one in the top'),
(38, 'BRC Grounds', 'South', '6.887529,79.864501', NULL),
(39, 'Redimola Junc.', 'South', '6.883631,79.868277|6.884259,79.867805', '138s and 120s towards Colombo stop at the halt in the bottom, and the ones coming out of Colombo stop at the one in the top'),
(40, 'Maya Ave.', 'South', '6.880766,79.870402', NULL),
(41, 'Kirulapone Junc.', 'South', '6.878582,79.874629|6.878667,79.87361', '138s towards Colombo stop at the halt on the right, and the ones coming out of Colombo stop at the one on the right'),
(42, 'Kirulapone South', 'South', '6.877719,79.878631', NULL),
(43, 'Balapokuna Road', 'South', '6.873842,79.881849', NULL),
(44, 'Anula Vidyalaya', 'South', '6.871946,79.884317', NULL),
(45, 'Nugegoda', 'Outside', '6.869315,79.889628|6.869464,79.88789', '138s stop on the halt on the right, 163s stop on the halt on the left'),
(46, 'Seventh Mile Post', 'Outside', '6.866855,79.893297', NULL),
(47, 'Gansabha Junc.', 'Outside', '6.865108,79.896559', NULL),
(48, 'Delkanda', 'Outside', '6.862818,79.901794', NULL),
(49, 'Wijerama', 'Outside', '6.857641,79.908607', NULL),
(50, 'Navinna', 'Outside', '6.855105,79.913392', NULL),
(51, 'Arpico M''gama', 'Outside', '6.852432,79.917018', NULL),
(52, 'Wattegedara Junc.', 'Outside', '6.851228,79.921106', NULL),
(53, 'Maharagama', 'Outside', '6.846083,79.928144|6.84554,79.926106|6.847947,79.92632', '138s and 125s stop at the two bus halts in the top, while 119s stop at the halt in the bottom'),
(74, 'Sugathadasa Stadium', 'North', '6.946662,79.869146', NULL),
(75, 'Armour Street', 'North', '6.943425,79.864254', NULL),
(76, 'Ananda College', 'Central', '6.924499,79.868031', NULL),
(77, 'Maradana', 'Central', '6.928237,79.864619|6.927045,79.865563', '140s stop at the halt on the bottom, 103s and 176s stop at the one at the top'),
(78, 'Castle Street Hospital', 'Central', '6.910973,79.88525', NULL),
(79, 'Devi Balika Vidyalaya', 'Central', '6.911015,79.882118', NULL),
(80, 'Alwis Place, Kollupitiya', 'Central', '6.912645,79.853911', NULL),
(81, 'Arts Fac. Horton Place', 'Central', '6.911548,79.868717', NULL),
(82, 'Green Path', 'Central', '6.911729,79.862012', NULL),
(83, 'Stratford Avenue', 'South', '6.877613,79.873019', NULL),
(84, 'Kirulapone Ave.', 'South', '6.882694,79.875573', NULL),
(85, 'Suwisuddharamaya', 'South', '6.880127,79.869554', NULL),
(86, 'Sapphire Halt', 'South', '6.876697,79.866421', NULL),
(87, 'Pamankada', 'South', '6.876984,79.869661', NULL),
(88, 'Vijaya Kumaratunge Mw.', 'South', '6.885527,79.876742', NULL),
(89, 'Apollo Hospital', 'South', '6.889223,79.876893', NULL),
(90, 'Narahenpita Junc.', 'South', '6.891886,79.877011', NULL),
(100, 'Borella', 'Central', '6.914743,79.877601', NULL),
(101, 'Horton Place - Baseline Junc.', 'Central', '6.91126,79.877472', NULL),
(102, 'Borella Cemetery Junc.', 'Central', '6.908587,79.877279', NULL),
(103, 'Sarana Road', 'Central', '6.905583,79.87347', NULL),
(104, 'Maitland Place', 'Central', '6.902899,79.870487', NULL),
(201, 'Delmon Hospital', 'Coast', '6.870711,79.86206', NULL),
(202, 'Ramakrishna Road', 'Coast', '6.865896,79.863047', NULL),
(203, 'William Grinding Mills', 'Outside', '6.862514,79.863766', NULL),
(204, 'Dehiwala Municipal Council', 'Outside', '6.861033,79.864125', NULL),
(205, 'St. Mary''s Church, Dehiwala', 'Outside', '6.859175,79.864522', NULL),
(206, 'Holy Family Convent, Dehiwala', 'Outside', '6.857172,79.865016', NULL),
(207, 'Dehiwala Junc.', 'Outside', '6.850823,79.865992|6.852416,79.865885|6.851313,79.865472', '100s and 101s stop at the halts on the right, while 119s stop at the halt on the left'),
(208, 'Dehiwala Cemetery', 'Outside', '6.844933,79.866217', NULL),
(209, 'Hotel Road, Mt. Lavinia', 'Outside', '6.841971,79.866904', NULL),
(210, 'S. Thomas'' College, Mt. Lavinia', 'Outside', '6.837753,79.86744', NULL),
(211, 'Mount Lavinia Junc.', 'Outside', '6.832959,79.867301', NULL),
(212, 'Maliban Junc.', 'Outside', '6.81943,79.873706', NULL),
(213, 'Belekkade Junc., Rathmalana', 'Outside', '6.814743,79.87877', NULL),
(214, 'Rathmalana Airport', 'Outside', '6.812442,79.881152', NULL),
(215, 'Soysapura', 'Outside', '6.804622,79.886688', NULL),
(216, 'Katubedda Junc.', 'Outside', '6.797325,79.888533', NULL),
(217, 'Rawatawatta', 'Outside', '6.788035,79.885111', NULL),
(218, 'Moratuwa', 'Outside', '6.774494,79.88245', NULL),
(219, 'Panadura', 'Outside', '6.711376,79.907609', NULL),
(220, 'Angulana', 'Outside', '6.798188,79.873009', NULL),
(230, 'Dutugemunu Street', 'Outside', '6.870593,79.877359', NULL),
(231, 'Kohuwala', 'Outside', '6.867068,79.884574|6.868612,79.882632', '135s start/end at the halt on the left. 120s, 163s and 176s stop near the halt on the right'),
(232, 'Woodlands', 'Outside', '6.862301,79.888394', NULL),
(233, 'Pepiliyana', 'Outside', '6.856661,79.890647', NULL),
(234, 'Raththanapitiya', 'Outside', '6.848336,79.897599', NULL),
(235, 'Boralesgamuwa', 'Outside', '6.841242,79.901612', NULL),
(236, 'Werahera', 'Outside', '6.829721,79.911391', NULL),
(237, 'Bokundara', 'Outside', '6.818621,79.917727', NULL),
(238, 'Piliyandala', 'Outside', '6.801219,79.923338', NULL),
(239, 'Kesbewa', 'Outside', '6.795519,79.940804', NULL),
(240, 'Polgasovita', 'Outside', '6.78698,79.964896', NULL),
(241, 'Kahathuduwa', 'Outside', '6.783465,79.983408', NULL),
(242, 'Horana', 'Outside', '6.716624,80.063826', NULL),
(244, 'Panagoda', 'Outside', '6.848267,80.018798', NULL),
(245, 'Godagama', 'Outside', '6.851478,80.031608', NULL),
(246, 'Migoda', 'Outside', '6.84423,80.046719', NULL),
(247, 'Padukka', 'Outside', '6.841465,80.090777', NULL),
(248, 'Handapangoda', 'Outside', '6.792339,80.142624', NULL),
(249, 'Ingiriya', 'Outside', '6.743991,80.176613', NULL),
(250, 'Teachers'' Training College', 'Outside', '6.844709,79.932704', NULL),
(251, 'Pannipitiya', 'Outside', '6.8462,79.949698|6.846712,79.949698', '174s stop at the top halt, and 138s stop at the bottom one'),
(252, 'Kottawa', 'Outside', '6.841673,79.963989', NULL),
(253, 'Makumbura', 'Outside', '6.838616,79.979954', NULL),
(254, 'Homagama', 'Outside', '6.84113,80.002012', NULL),
(255, 'Kottawa Railway Station', 'Outside', '6.844006,79.968152', NULL),
(256, 'Rukmalgama', 'Outside', '6.856916,79.985855', NULL),
(257, 'Walgama Junc., Athurugiriya', 'Outside', '6.864948,79.995832', NULL),
(258, 'Athurugiriya Junc.', 'Outside', '6.877453,79.989502', NULL),
(259, 'Pinhena Junc.', 'Outside', '6.832778,79.964654', NULL),
(260, 'Mattegoda', 'Outside', '6.811579,79.975083', NULL),
(271, 'Open University, Nawala', 'Outside', '6.883024,79.886795', NULL),
(272, 'Nawala Junc.', 'Outside', '6.887029,79.887203', NULL),
(273, 'Koswatte, Nawala', 'Outside', '6.900034,79.893994', NULL),
(274, 'Bellanthota Junc.', 'Outside', '6.848315,79.885433', NULL),
(275, 'Nandimala', 'Outside', '6.849859,79.879398', NULL),
(276, 'Karagampitiya', 'Outside', '6.850253,79.872022', NULL),
(277, 'Kalubowila Hospital', 'Outside', '6.866466,79.8773', NULL),
(278, 'Nugegoda Supermarket', 'Outside', '6.873469,79.891355', NULL),
(279, 'Pita Kotte', 'Outside', '6.883897,79.901891', NULL),
(280, 'Impala Cinema, Rajagiriya', 'Outside', '6.910973,79.890743', NULL),
(281, 'Rajagiriya Junc.', 'Outside', '6.910121,79.894434', NULL),
(282, 'Ethul Kotte Junc.', 'Outside', '6.905509,79.905217', NULL),
(283, 'Sethsiripaya', 'Outside', '6.902441,79.914347', NULL),
(284, 'Battaramulla', 'Outside', '6.90209,79.918059', NULL),
(285, 'Thalangama', 'Outside', '6.905967,79.926234', NULL),
(286, 'Thalahena', 'Outside', '6.908012,79.944999', NULL),
(287, 'Malabe', 'Outside', '6.904081,79.954408', NULL),
(288, 'Pittugala', 'Outside', '6.908693,79.969289', NULL),
(289, 'SLIIT, Malabe', 'Outside', '6.914711,79.972175', NULL),
(290, 'Kaduwela', 'Outside', '6.935703,79.984245', NULL),
(291, 'Thalawathugoda', 'Outside', '6.876281,79.935343', NULL),
(292, 'Pelawatta/Isurupaya', 'Outside', '6.890597,79.928927', NULL),
(295, 'Peliyagoda Junc.', 'Outside', '6.955758,79.883115', NULL),
(296, 'Nawaloka Junc.', 'Outside', '6.960678,79.880841', NULL),
(297, 'Wattala', 'Outside', '6.981253,79.888029', NULL),
(298, 'Handala', 'Outside', '6.990688,79.893136', NULL),
(299, 'Welisara', 'Outside', '7.021782,79.899552', NULL),
(300, 'Kandana', 'Outside', '7.047827,79.897041', NULL),
(301, 'Kapuwatta', 'Outside', '7.064012,79.893222', NULL),
(302, 'Ja-Ela', 'Outside', '7.078236,79.89054', NULL),
(303, 'Katunayake Airport', 'Outside', '7.16564,79.884059', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stop`
--

CREATE TABLE IF NOT EXISTS `stop` (
  `bid` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `stopNo` int(5) NOT NULL,
  PRIMARY KEY (`bid`,`pid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stop`
--

INSERT INTO `stop` (`bid`, `pid`, `stopNo`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 25, 3),
(1, 26, 4),
(1, 27, 5),
(1, 28, 6),
(1, 29, 7),
(1, 30, 8),
(1, 31, 9),
(1, 34, 6),
(1, 35, 10),
(1, 36, 11),
(1, 37, 12),
(1, 38, 13),
(1, 39, 14),
(1, 40, 15),
(1, 41, 16),
(1, 42, 17),
(1, 43, 18),
(1, 44, 19),
(1, 45, 20),
(1, 46, 21),
(1, 47, 22),
(1, 48, 23),
(1, 49, 24),
(1, 50, 25),
(1, 51, 26),
(1, 52, 27),
(1, 53, 28),
(1, 250, 29),
(1, 251, 30),
(1, 252, 31),
(2, 1, 1),
(2, 2, 2),
(2, 25, 3),
(2, 26, 4),
(2, 27, 5),
(2, 28, 6),
(2, 29, 7),
(2, 30, 8),
(2, 31, 9),
(2, 34, 6),
(2, 35, 10),
(2, 36, 11),
(2, 37, 12),
(2, 38, 13),
(2, 39, 14),
(2, 40, 15),
(2, 41, 16),
(2, 42, 17),
(2, 43, 18),
(2, 44, 19),
(2, 45, 20),
(2, 46, 21),
(2, 47, 22),
(2, 48, 23),
(2, 49, 24),
(2, 50, 25),
(2, 51, 26),
(2, 52, 27),
(2, 53, 28),
(2, 250, 29),
(2, 251, 30),
(2, 252, 31),
(2, 253, 32),
(2, 254, 33),
(3, 1, 1),
(3, 2, 2),
(3, 25, 3),
(3, 26, 4),
(3, 27, 5),
(3, 28, 6),
(3, 29, 7),
(3, 30, 8),
(3, 31, 9),
(3, 34, 6),
(3, 35, 10),
(3, 36, 11),
(3, 37, 12),
(3, 38, 13),
(3, 39, 14),
(3, 40, 15),
(3, 41, 16),
(3, 42, 17),
(3, 43, 18),
(3, 44, 19),
(3, 45, 20),
(3, 46, 21),
(3, 47, 22),
(3, 48, 23),
(3, 49, 24),
(3, 50, 25),
(3, 51, 26),
(3, 52, 27),
(3, 53, 28),
(4, 1, 1),
(4, 2, 2),
(4, 25, 3),
(4, 26, 4),
(4, 27, 5),
(4, 28, 6),
(4, 29, 7),
(4, 30, 8),
(4, 31, 9),
(4, 34, 6),
(4, 35, 10),
(4, 36, 11),
(4, 37, 12),
(4, 38, 13),
(4, 39, 14),
(4, 40, 15),
(4, 41, 16),
(4, 42, 17),
(4, 43, 18),
(4, 44, 19),
(4, 45, 20),
(4, 46, 21),
(4, 47, 22),
(4, 48, 23),
(4, 49, 24),
(4, 50, 25),
(4, 51, 26),
(4, 52, 27),
(4, 53, 28),
(4, 250, 29),
(4, 251, 30),
(4, 252, 31),
(4, 259, 32),
(4, 260, 33),
(5, 1, 1),
(5, 2, 2),
(5, 25, 3),
(5, 26, 4),
(5, 27, 5),
(5, 28, 6),
(5, 29, 7),
(5, 30, 8),
(5, 31, 9),
(5, 34, 6),
(5, 35, 10),
(5, 36, 11),
(5, 37, 12),
(5, 38, 13),
(5, 39, 14),
(5, 40, 15),
(5, 41, 16),
(5, 42, 17),
(5, 43, 18),
(5, 44, 19),
(5, 45, 20),
(5, 46, 21),
(5, 47, 22),
(5, 48, 23),
(5, 49, 24),
(5, 50, 25),
(5, 51, 26),
(5, 52, 27),
(5, 53, 28),
(5, 250, 29),
(5, 251, 30),
(5, 252, 31),
(5, 255, 32),
(5, 256, 33),
(5, 257, 34),
(5, 258, 35),
(6, 1, 1),
(6, 2, 2),
(6, 25, 3),
(6, 26, 4),
(6, 27, 5),
(6, 28, 6),
(6, 29, 7),
(6, 30, 8),
(6, 31, 9),
(6, 34, 6),
(6, 35, 10),
(6, 36, 11),
(6, 37, 12),
(6, 38, 13),
(6, 39, 14),
(6, 40, 15),
(6, 41, 16),
(6, 42, 17),
(6, 43, 18),
(6, 44, 19),
(6, 45, 20),
(6, 46, 21),
(6, 47, 22),
(6, 48, 23),
(6, 49, 24),
(6, 50, 25),
(6, 51, 26),
(6, 52, 27),
(6, 53, 28),
(6, 250, 29),
(6, 251, 30),
(6, 252, 31),
(6, 255, 32),
(6, 256, 33),
(7, 1, 1),
(7, 2, 2),
(7, 3, 3),
(7, 4, 4),
(7, 5, 5),
(7, 7, 8),
(7, 8, 9),
(7, 9, 10),
(7, 10, 11),
(7, 23, 6),
(7, 24, 7),
(7, 201, 12),
(7, 202, 13),
(7, 203, 14),
(7, 204, 15),
(7, 205, 16),
(7, 206, 17),
(7, 207, 18),
(7, 208, 19),
(7, 209, 20),
(7, 210, 21),
(7, 211, 22),
(7, 212, 23),
(7, 213, 24),
(7, 214, 25),
(7, 215, 26),
(7, 216, 27),
(7, 217, 28),
(7, 218, 29),
(7, 219, 30),
(8, 1, 1),
(8, 2, 2),
(8, 3, 3),
(8, 4, 4),
(8, 5, 5),
(8, 7, 8),
(8, 8, 9),
(8, 9, 10),
(8, 10, 11),
(8, 23, 6),
(8, 24, 7),
(8, 201, 12),
(8, 202, 13),
(8, 203, 14),
(8, 204, 15),
(8, 205, 16),
(8, 206, 17),
(8, 207, 18),
(8, 208, 19),
(8, 209, 20),
(8, 210, 21),
(8, 211, 22),
(8, 212, 23),
(8, 213, 24),
(8, 214, 25),
(8, 215, 26),
(8, 216, 27),
(8, 217, 28),
(8, 218, 29),
(9, 1, 1),
(9, 2, 2),
(9, 5, 7),
(9, 7, 10),
(9, 8, 11),
(9, 9, 12),
(9, 10, 13),
(9, 21, 5),
(9, 22, 6),
(9, 23, 8),
(9, 24, 9),
(9, 25, 3),
(9, 26, 4),
(9, 201, 14),
(9, 202, 15),
(9, 203, 16),
(9, 204, 17),
(9, 205, 18),
(9, 206, 19),
(9, 207, 20),
(9, 208, 21),
(9, 209, 22),
(9, 210, 23),
(9, 211, 24),
(9, 212, 25),
(9, 213, 26),
(9, 214, 27),
(9, 215, 28),
(9, 216, 29),
(9, 217, 30),
(9, 218, 31),
(10, 7, 57),
(10, 8, 58),
(10, 9, 59),
(10, 10, 60),
(10, 31, 55),
(10, 35, 56),
(10, 100, 50),
(10, 101, 51),
(10, 102, 52),
(10, 103, 53),
(10, 104, 54),
(10, 201, 61),
(10, 202, 62),
(10, 203, 63),
(10, 204, 64),
(10, 205, 65),
(10, 206, 66),
(10, 207, 67),
(10, 208, 68),
(10, 209, 69),
(10, 210, 70),
(10, 211, 71),
(10, 212, 72),
(10, 213, 73),
(10, 214, 74),
(10, 220, 75),
(11, 7, 57),
(11, 31, 55),
(11, 35, 56),
(11, 100, 50),
(11, 101, 51),
(11, 102, 52),
(11, 103, 53),
(11, 104, 54),
(12, 1, 0),
(12, 2, 1),
(12, 16, 2),
(12, 19, 3),
(12, 20, 4),
(12, 27, 5),
(12, 29, 6),
(12, 30, 7),
(12, 31, 8),
(12, 35, 9),
(12, 36, 10),
(12, 37, 11),
(12, 38, 12),
(12, 39, 13),
(12, 40, 14),
(12, 83, 15),
(12, 230, 16),
(12, 231, 17),
(12, 232, 18),
(12, 233, 19),
(12, 234, 20),
(12, 235, 21),
(12, 236, 22),
(12, 237, 23),
(12, 238, 24),
(12, 239, 25),
(12, 240, 29),
(12, 241, 32),
(12, 242, 43),
(13, 1, 0),
(13, 2, 1),
(13, 16, 2),
(13, 19, 3),
(13, 20, 4),
(13, 27, 5),
(13, 29, 6),
(13, 30, 7),
(13, 31, 8),
(13, 35, 9),
(13, 36, 10),
(13, 37, 11),
(13, 38, 12),
(13, 39, 13),
(13, 40, 14),
(13, 83, 15),
(13, 230, 16),
(13, 231, 17),
(13, 232, 18),
(13, 233, 19),
(13, 234, 20),
(13, 235, 21),
(13, 236, 22),
(13, 237, 23),
(13, 238, 24),
(13, 239, 25),
(14, 1, 0),
(14, 2, 1),
(14, 16, 2),
(14, 19, 3),
(14, 20, 4),
(14, 27, 5),
(14, 29, 6),
(14, 30, 7),
(14, 31, 8),
(14, 35, 9),
(14, 36, 10),
(14, 37, 11),
(14, 38, 12),
(14, 39, 13),
(14, 40, 14),
(14, 83, 15),
(14, 230, 16),
(14, 231, 17),
(14, 232, 18),
(14, 233, 19),
(14, 234, 20),
(14, 235, 21),
(14, 236, 22),
(14, 237, 23),
(14, 238, 24),
(15, 10, 7),
(15, 41, 4),
(15, 86, 6),
(15, 87, 5),
(15, 88, 3),
(15, 89, 2),
(15, 90, 1),
(16, 37, 9),
(16, 38, 8),
(16, 39, 7),
(16, 85, 6),
(16, 87, 5),
(16, 90, 12),
(16, 100, 18),
(16, 101, 17),
(16, 102, 16),
(16, 230, 2),
(16, 231, 1),
(19, 1, 0),
(19, 2, 1),
(19, 16, 2),
(19, 19, 3),
(19, 20, 4),
(19, 27, 5),
(19, 28, 6),
(19, 29, 7),
(19, 30, 8),
(19, 31, 9),
(19, 35, 10),
(19, 36, 11),
(19, 37, 12),
(19, 38, 13),
(19, 39, 14),
(19, 40, 15),
(19, 41, 16),
(19, 42, 17),
(19, 43, 18),
(19, 44, 19),
(19, 45, 20),
(19, 46, 21),
(19, 47, 22),
(19, 48, 23),
(19, 49, 24),
(19, 50, 25),
(19, 51, 26),
(19, 52, 27),
(19, 53, 28),
(19, 244, 33),
(19, 245, 34),
(19, 246, 35),
(19, 247, 36),
(19, 250, 29),
(19, 251, 30),
(19, 252, 31),
(19, 253, 32),
(19, 254, 33),
(20, 1, 0),
(20, 2, 1),
(20, 16, 2),
(20, 19, 3),
(20, 20, 4),
(20, 27, 5),
(20, 28, 6),
(20, 29, 7),
(20, 30, 8),
(20, 31, 9),
(20, 35, 10),
(20, 36, 11),
(20, 37, 12),
(20, 38, 13),
(20, 39, 14),
(20, 40, 15),
(20, 41, 16),
(20, 42, 17),
(20, 43, 18),
(20, 44, 19),
(20, 45, 20),
(20, 46, 21),
(20, 47, 22),
(20, 48, 23),
(20, 49, 24),
(20, 50, 25),
(20, 51, 26),
(20, 52, 27),
(20, 53, 28),
(20, 244, 33),
(20, 245, 34),
(20, 246, 35),
(20, 247, 36),
(20, 248, 37),
(20, 249, 38),
(20, 250, 29),
(20, 251, 30),
(20, 252, 31),
(20, 253, 32),
(20, 254, 33),
(21, 5, 1),
(21, 28, 3),
(21, 29, 5),
(21, 34, 4),
(21, 78, 11),
(21, 79, 10),
(21, 80, 2),
(21, 81, 7),
(21, 101, 9),
(21, 280, 13),
(21, 281, 14),
(21, 282, 16),
(21, 283, 18),
(21, 284, 19),
(21, 285, 21),
(21, 286, 23),
(21, 287, 27),
(21, 288, 30),
(21, 289, 31),
(21, 290, 34),
(22, 7, 33),
(22, 8, 32),
(22, 9, 31),
(22, 10, 30),
(22, 24, 34),
(22, 27, 38),
(22, 29, 37),
(22, 32, 36),
(22, 35, 35),
(22, 201, 29),
(22, 202, 28),
(22, 203, 27),
(22, 204, 26),
(22, 205, 25),
(22, 206, 24),
(22, 207, 23),
(22, 208, 22),
(22, 209, 21),
(22, 210, 20),
(22, 211, 19),
(22, 212, 18),
(22, 213, 17),
(22, 214, 16),
(22, 215, 15),
(23, 7, 33),
(23, 8, 32),
(23, 9, 31),
(23, 10, 30),
(23, 24, 34),
(23, 27, 38),
(23, 29, 37),
(23, 32, 36),
(23, 35, 35),
(23, 201, 29),
(23, 202, 28),
(23, 203, 27),
(23, 204, 26),
(23, 205, 25),
(23, 206, 24),
(23, 207, 23),
(23, 208, 22),
(23, 209, 21),
(23, 210, 20),
(23, 211, 19),
(24, 5, 1),
(24, 27, 4),
(24, 28, 3),
(24, 77, 7),
(24, 80, 2),
(25, 5, 1),
(25, 27, 4),
(25, 28, 3),
(25, 80, 2),
(25, 100, 7),
(26, 53, 17),
(26, 207, 1),
(26, 235, 11),
(26, 274, 7),
(26, 275, 5),
(26, 276, 3),
(27, 100, 29),
(27, 251, 5),
(27, 252, 1),
(27, 280, 26),
(27, 281, 25),
(27, 282, 24),
(27, 283, 22),
(27, 284, 20),
(27, 291, 12),
(27, 292, 16),
(28, 45, 12),
(28, 203, 5),
(28, 204, 4),
(28, 205, 3),
(28, 206, 2),
(28, 207, 1),
(28, 231, 11),
(28, 277, 8),
(28, 278, 13),
(28, 279, 20),
(28, 282, 26),
(28, 283, 28),
(28, 284, 30),
(29, 45, 10),
(29, 76, 28),
(29, 77, 29),
(29, 78, 22),
(29, 79, 23),
(29, 100, 25),
(29, 101, 24),
(29, 231, 9),
(29, 271, 14),
(29, 272, 15),
(29, 273, 18),
(29, 276, 1),
(29, 277, 7),
(29, 278, 11),
(29, 280, 21),
(29, 281, 20),
(30, 1, 14),
(30, 2, 15),
(30, 76, 10),
(30, 77, 11),
(30, 90, 1),
(30, 100, 7),
(30, 101, 6),
(30, 102, 5),
(31, 2, 1),
(31, 74, 6),
(31, 75, 5),
(31, 295, 8),
(31, 296, 9),
(31, 297, 12),
(31, 298, 15),
(31, 299, 22),
(31, 300, 28),
(31, 301, 30),
(31, 302, 32),
(31, 303, 42),
(101, 1, 67),
(101, 2, 66),
(101, 25, 65),
(101, 26, 64),
(101, 27, 63),
(101, 28, 62),
(101, 32, 59),
(101, 33, 60),
(101, 34, 61),
(101, 35, 58),
(101, 36, 57),
(101, 37, 56),
(101, 38, 55),
(101, 39, 54),
(101, 40, 53),
(101, 41, 52),
(101, 42, 51),
(101, 43, 50),
(101, 44, 49),
(101, 45, 48),
(101, 46, 47),
(101, 47, 46),
(101, 48, 45),
(101, 49, 44),
(101, 50, 43),
(101, 51, 42),
(101, 52, 41),
(101, 53, 40),
(101, 250, 39),
(101, 251, 38),
(101, 252, 37),
(102, 1, 67),
(102, 2, 66),
(102, 25, 65),
(102, 26, 64),
(102, 27, 63),
(102, 28, 62),
(102, 32, 59),
(102, 33, 60),
(102, 34, 61),
(102, 35, 58),
(102, 36, 57),
(102, 37, 56),
(102, 38, 55),
(102, 39, 54),
(102, 40, 53),
(102, 41, 52),
(102, 42, 51),
(102, 43, 50),
(102, 44, 49),
(102, 45, 48),
(102, 46, 47),
(102, 47, 46),
(102, 48, 45),
(102, 49, 44),
(102, 50, 43),
(102, 51, 42),
(102, 52, 41),
(102, 53, 40),
(102, 250, 39),
(102, 251, 38),
(102, 252, 37),
(102, 253, 36),
(102, 254, 35),
(103, 1, 67),
(103, 2, 66),
(103, 25, 65),
(103, 26, 64),
(103, 27, 63),
(103, 28, 62),
(103, 32, 59),
(103, 33, 60),
(103, 34, 61),
(103, 35, 58),
(103, 36, 57),
(103, 37, 56),
(103, 38, 55),
(103, 39, 54),
(103, 40, 53),
(103, 41, 52),
(103, 42, 51),
(103, 43, 50),
(103, 44, 49),
(103, 45, 48),
(103, 46, 47),
(103, 47, 46),
(103, 48, 45),
(103, 49, 44),
(103, 50, 43),
(103, 51, 42),
(103, 52, 41),
(103, 53, 40),
(104, 1, 67),
(104, 2, 66),
(104, 25, 65),
(104, 26, 64),
(104, 27, 63),
(104, 28, 62),
(104, 32, 59),
(104, 33, 60),
(104, 34, 61),
(104, 35, 58),
(104, 36, 57),
(104, 37, 56),
(104, 38, 55),
(104, 39, 54),
(104, 40, 53),
(104, 41, 52),
(104, 42, 51),
(104, 43, 50),
(104, 44, 49),
(104, 45, 48),
(104, 46, 47),
(104, 47, 46),
(104, 48, 45),
(104, 49, 44),
(104, 50, 43),
(104, 51, 42),
(104, 52, 41),
(104, 53, 40),
(104, 250, 39),
(104, 251, 38),
(104, 252, 37),
(104, 259, 36),
(104, 260, 35),
(105, 1, 67),
(105, 2, 66),
(105, 25, 65),
(105, 26, 64),
(105, 27, 63),
(105, 28, 62),
(105, 32, 59),
(105, 33, 60),
(105, 34, 61),
(105, 35, 58),
(105, 36, 57),
(105, 37, 56),
(105, 38, 55),
(105, 39, 54),
(105, 40, 53),
(105, 41, 52),
(105, 42, 51),
(105, 43, 50),
(105, 44, 49),
(105, 45, 48),
(105, 46, 47),
(105, 47, 46),
(105, 48, 45),
(105, 49, 44),
(105, 50, 43),
(105, 51, 42),
(105, 52, 41),
(105, 53, 40),
(105, 250, 39),
(105, 251, 38),
(105, 252, 37),
(105, 255, 36),
(105, 256, 35),
(105, 257, 34),
(105, 258, 33),
(106, 1, 67),
(106, 2, 66),
(106, 25, 65),
(106, 26, 64),
(106, 27, 63),
(106, 28, 62),
(106, 32, 59),
(106, 33, 60),
(106, 34, 61),
(106, 35, 58),
(106, 36, 57),
(106, 37, 56),
(106, 38, 55),
(106, 39, 54),
(106, 40, 53),
(106, 41, 52),
(106, 42, 51),
(106, 43, 50),
(106, 44, 49),
(106, 45, 48),
(106, 46, 47),
(106, 47, 46),
(106, 48, 45),
(106, 49, 44),
(106, 50, 43),
(106, 51, 42),
(106, 52, 41),
(106, 53, 40),
(106, 250, 39),
(106, 251, 38),
(106, 252, 37),
(106, 255, 36),
(106, 256, 35),
(107, 1, 39),
(107, 2, 38),
(107, 3, 37),
(107, 4, 36),
(107, 5, 35),
(107, 6, 34),
(107, 7, 33),
(107, 8, 32),
(107, 9, 31),
(107, 10, 30),
(107, 201, 29),
(107, 202, 28),
(107, 203, 27),
(107, 204, 26),
(107, 205, 25),
(107, 206, 24),
(107, 207, 23),
(107, 208, 22),
(107, 209, 21),
(107, 210, 20),
(107, 211, 19),
(107, 212, 18),
(107, 213, 17),
(107, 214, 16),
(107, 215, 15),
(107, 216, 14),
(107, 217, 13),
(107, 218, 12),
(107, 219, 11),
(108, 1, 39),
(108, 2, 38),
(108, 3, 37),
(108, 4, 36),
(108, 5, 35),
(108, 6, 34),
(108, 7, 33),
(108, 8, 32),
(108, 9, 31),
(108, 10, 30),
(108, 201, 29),
(108, 202, 28),
(108, 203, 27),
(108, 204, 26),
(108, 205, 25),
(108, 206, 24),
(108, 207, 23),
(108, 208, 22),
(108, 209, 21),
(108, 210, 20),
(108, 211, 19),
(108, 212, 18),
(108, 213, 17),
(108, 214, 16),
(108, 215, 15),
(108, 216, 14),
(108, 217, 13),
(108, 218, 12),
(109, 1, 41),
(109, 2, 40),
(109, 5, 35),
(109, 6, 34),
(109, 7, 33),
(109, 8, 32),
(109, 9, 31),
(109, 10, 30),
(109, 21, 37),
(109, 22, 36),
(109, 25, 39),
(109, 26, 38),
(109, 201, 29),
(109, 202, 28),
(109, 203, 27),
(109, 204, 26),
(109, 205, 25),
(109, 206, 24),
(109, 207, 23),
(109, 208, 22),
(109, 209, 21),
(109, 210, 20),
(109, 211, 19),
(109, 212, 18),
(109, 213, 17),
(109, 214, 16),
(109, 215, 15),
(109, 216, 14),
(109, 217, 13),
(109, 218, 12),
(110, 7, 31),
(110, 8, 30),
(110, 9, 29),
(110, 10, 28),
(110, 24, 32),
(110, 30, 36),
(110, 32, 34),
(110, 33, 35),
(110, 35, 33),
(110, 100, 41),
(110, 101, 40),
(110, 102, 39),
(110, 103, 38),
(110, 104, 37),
(110, 201, 27),
(110, 202, 26),
(110, 203, 25),
(110, 204, 24),
(110, 205, 23),
(110, 206, 22),
(110, 207, 21),
(110, 208, 20),
(110, 209, 19),
(110, 210, 18),
(110, 211, 17),
(110, 212, 16),
(110, 213, 15),
(110, 214, 14),
(110, 220, 13),
(111, 7, 1),
(111, 24, 2),
(111, 30, 6),
(111, 32, 4),
(111, 33, 5),
(111, 35, 3),
(111, 100, 11),
(111, 101, 10),
(111, 102, 9),
(111, 103, 8),
(111, 104, 7),
(112, 1, 46),
(112, 2, 45),
(112, 16, 44),
(112, 19, 43),
(112, 20, 42),
(112, 27, 41),
(112, 29, 40),
(112, 32, 38),
(112, 33, 39),
(112, 35, 37),
(112, 36, 36),
(112, 37, 35),
(112, 38, 34),
(112, 39, 33),
(112, 85, 32),
(112, 87, 31),
(112, 230, 30),
(112, 231, 29),
(112, 232, 28),
(112, 233, 27),
(112, 234, 26),
(112, 235, 25),
(112, 236, 24),
(112, 237, 23),
(112, 238, 22),
(112, 239, 21),
(112, 240, 18),
(112, 241, 15),
(112, 242, 3),
(113, 1, 46),
(113, 2, 45),
(113, 16, 44),
(113, 19, 43),
(113, 20, 42),
(113, 27, 41),
(113, 29, 40),
(113, 32, 38),
(113, 33, 39),
(113, 35, 37),
(113, 36, 36),
(113, 37, 35),
(113, 38, 34),
(113, 39, 33),
(113, 85, 32),
(113, 87, 31),
(113, 230, 30),
(113, 231, 29),
(113, 232, 28),
(113, 233, 27),
(113, 234, 26),
(113, 235, 25),
(113, 236, 24),
(113, 237, 23),
(113, 238, 22),
(113, 239, 21),
(114, 1, 46),
(114, 2, 45),
(114, 16, 44),
(114, 19, 43),
(114, 20, 42),
(114, 27, 41),
(114, 29, 40),
(114, 32, 38),
(114, 33, 39),
(114, 35, 37),
(114, 36, 36),
(114, 37, 35),
(114, 38, 34),
(114, 39, 33),
(114, 85, 32),
(114, 87, 31),
(114, 230, 30),
(114, 231, 29),
(114, 232, 28),
(114, 233, 27),
(114, 234, 26),
(114, 235, 25),
(114, 236, 24),
(114, 237, 23),
(114, 238, 22),
(115, 10, 1),
(115, 40, 5),
(115, 41, 6),
(115, 84, 7),
(115, 85, 4),
(115, 86, 2),
(115, 87, 3),
(115, 88, 8),
(115, 89, 9),
(115, 90, 10),
(116, 37, 39),
(116, 38, 40),
(116, 39, 41),
(116, 40, 42),
(116, 83, 43),
(116, 90, 36),
(116, 100, 30),
(116, 101, 31),
(116, 102, 32),
(116, 230, 45),
(116, 231, 46),
(119, 1, 67),
(119, 2, 66),
(119, 16, 65),
(119, 19, 64),
(119, 20, 63),
(119, 27, 62),
(119, 29, 61),
(119, 32, 59),
(119, 33, 60),
(119, 35, 58),
(119, 36, 57),
(119, 37, 56),
(119, 38, 55),
(119, 39, 54),
(119, 40, 53),
(119, 41, 52),
(119, 42, 51),
(119, 43, 50),
(119, 44, 49),
(119, 45, 48),
(119, 46, 47),
(119, 47, 46),
(119, 48, 45),
(119, 49, 44),
(119, 50, 43),
(119, 51, 42),
(119, 52, 41),
(119, 53, 40),
(119, 244, 35),
(119, 245, 34),
(119, 246, 33),
(119, 247, 32),
(119, 250, 39),
(119, 251, 38),
(119, 252, 37),
(119, 254, 36),
(120, 1, 67),
(120, 2, 66),
(120, 16, 65),
(120, 19, 64),
(120, 20, 63),
(120, 27, 62),
(120, 29, 61),
(120, 32, 59),
(120, 33, 60),
(120, 35, 58),
(120, 36, 57),
(120, 37, 56),
(120, 38, 55),
(120, 39, 54),
(120, 40, 53),
(120, 41, 52),
(120, 42, 51),
(120, 43, 50),
(120, 44, 49),
(120, 45, 48),
(120, 46, 47),
(120, 47, 46),
(120, 48, 45),
(120, 49, 44),
(120, 50, 43),
(120, 51, 42),
(120, 52, 41),
(120, 53, 40),
(120, 244, 35),
(120, 245, 34),
(120, 246, 33),
(120, 247, 32),
(120, 248, 31),
(120, 249, 30),
(120, 250, 39),
(120, 251, 38),
(120, 252, 37),
(120, 254, 36),
(121, 5, 38),
(121, 34, 37),
(121, 78, 30),
(121, 79, 31),
(121, 81, 34),
(121, 82, 36),
(121, 101, 32),
(121, 280, 28),
(121, 281, 27),
(121, 282, 26),
(121, 283, 24),
(121, 284, 23),
(121, 285, 22),
(121, 286, 20),
(121, 287, 18),
(121, 288, 16),
(121, 289, 13),
(121, 290, 9),
(122, 7, 35),
(122, 8, 36),
(122, 9, 37),
(122, 10, 38),
(122, 27, 30),
(122, 29, 31),
(122, 30, 32),
(122, 31, 33),
(122, 35, 34),
(122, 201, 39),
(122, 202, 40),
(122, 203, 41),
(122, 204, 42),
(122, 205, 43),
(122, 206, 44),
(122, 207, 45),
(122, 208, 46),
(122, 209, 47),
(122, 210, 48),
(122, 211, 49),
(122, 212, 50),
(122, 213, 51),
(122, 214, 52),
(122, 215, 53),
(123, 7, 35),
(123, 8, 36),
(123, 9, 37),
(123, 10, 38),
(123, 27, 30),
(123, 29, 31),
(123, 30, 32),
(123, 31, 33),
(123, 35, 34),
(123, 201, 39),
(123, 202, 40),
(123, 203, 41),
(123, 204, 42),
(123, 205, 43),
(123, 206, 44),
(123, 207, 45),
(123, 208, 46),
(123, 209, 47),
(123, 210, 48),
(123, 211, 49),
(124, 5, 35),
(124, 27, 33),
(124, 28, 34),
(124, 77, 30),
(125, 5, 35),
(125, 27, 33),
(125, 28, 34),
(125, 100, 30),
(126, 53, 1),
(126, 207, 17),
(126, 235, 7),
(126, 274, 11),
(126, 275, 13),
(126, 276, 15),
(127, 100, 1),
(127, 251, 25),
(127, 252, 29),
(127, 280, 4),
(127, 281, 5),
(127, 282, 6),
(127, 283, 8),
(127, 284, 10),
(127, 291, 18),
(127, 292, 14),
(128, 45, 19),
(128, 203, 26),
(128, 204, 27),
(128, 205, 28),
(128, 206, 29),
(128, 207, 30),
(128, 231, 20),
(128, 277, 23),
(128, 278, 18),
(128, 279, 11),
(128, 282, 5),
(128, 283, 3),
(128, 284, 1),
(129, 45, 34),
(129, 76, 16),
(129, 77, 15),
(129, 78, 22),
(129, 79, 21),
(129, 100, 19),
(129, 101, 20),
(129, 231, 35),
(129, 271, 30),
(129, 272, 29),
(129, 273, 26),
(129, 276, 43),
(129, 277, 37),
(129, 278, 33),
(129, 280, 23),
(129, 281, 24),
(130, 1, 2),
(130, 2, 1),
(130, 76, 6),
(130, 77, 5),
(130, 90, 15),
(130, 100, 9),
(130, 101, 10),
(130, 102, 11),
(131, 2, 42),
(131, 74, 37),
(131, 75, 38),
(131, 295, 35),
(131, 296, 34),
(131, 297, 31),
(131, 298, 28),
(131, 299, 21),
(131, 300, 15),
(131, 301, 13),
(131, 302, 11),
(131, 303, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stop`
--
ALTER TABLE `stop`
  ADD CONSTRAINT `stop_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bus` (`busid`),
  ADD CONSTRAINT `stop_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `place` (`pid`);
