-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2019 at 01:08 AM
-- Server version: 5.6.41
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atori_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `names` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='not used';

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentId` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `date`, `ip`, `commentId`, `firstname`, `organization`, `email`, `phone`, `comment`, `lang`, `read`, `status`) VALUES
(16, 1544257842, '94.240.245.46', 1, 'tesr', 'nope', 'test@tesr.ge', '599565656', 'uuhkjjnkjnjk', 'ge', 0, 0),
(15, 1544182396, '94.240.245.46', 1, 'dask', 'nope', 'asd@SD.ge', '592626265', 'sdkmaskdlasmd', 'ge', 1, 0),
(13, 1538924870, '94.240.245.46', 1, 'test', 'nope', 'test@gmail.com', '599626565', 'test kasndjkasnd kjas', 'en', 1, 0),
(14, 1541507199, '185.23.48.211', 1, 'nini j', 'nope', 'nini_jgamadze@yahoo.com', '', 'hi', 'ge', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `idx`, `name`, `lang`) VALUES
(1, 1, 'Afghanistan', 'en'),
(2, 1, 'Афганистан', 'ru'),
(3, 1, 'Afghanistan', 'fr'),
(4, 2, 'Albania', 'en'),
(5, 2, 'Албания', 'ru'),
(6, 2, 'Albanie', 'fr'),
(7, 3, 'Algeria', 'en'),
(8, 3, 'Алжир', 'ru'),
(9, 3, 'Algérie', 'fr'),
(10, 4, 'American Samoa', 'en'),
(11, 4, 'Американское Самоа', 'ru'),
(12, 4, 'Samoa américaines', 'fr'),
(13, 5, 'Andorra', 'en'),
(14, 5, 'Андорра', 'ru'),
(15, 5, 'l\'Andorre', 'fr'),
(16, 6, 'Angola', 'en'),
(17, 6, 'Ангола', 'ru'),
(18, 6, 'l\'Angola', 'fr'),
(19, 7, 'Anguilla', 'en'),
(20, 7, 'Ангилья', 'ru'),
(21, 7, 'Anguilla', 'fr'),
(22, 8, 'Antarctica', 'en'),
(23, 8, 'Антарктида', 'ru'),
(24, 8, 'Antarctique', 'fr'),
(25, 9, 'Antigua and Barbuda', 'en'),
(26, 9, 'Антигуа и Барбуда', 'ru'),
(27, 9, 'l\'Antigua-et-Barbuda', 'fr'),
(28, 10, 'Argentina', 'en'),
(29, 10, 'Аргентина', 'ru'),
(30, 10, 'l\'Argentine', 'fr'),
(31, 11, 'Armenia', 'en'),
(32, 11, 'Армения', 'ru'),
(33, 11, 'l\'Arménie', 'fr'),
(34, 12, 'Aruba', 'en'),
(35, 12, 'Аруба', 'ru'),
(36, 12, 'Aruba', 'fr'),
(37, 13, 'Australia', 'en'),
(38, 13, 'Австралия', 'ru'),
(39, 13, 'l\'Australie', 'fr'),
(40, 14, 'Austria', 'en'),
(41, 14, 'Австрия', 'ru'),
(42, 14, 'l\'Autriche', 'fr'),
(43, 15, 'Azerbaijan', 'en'),
(44, 15, 'Азербайджан', 'ru'),
(45, 15, 'l\'Azerbaïdjan', 'fr'),
(46, 16, 'Bahamas', 'en'),
(47, 16, 'Багамы', 'ru'),
(48, 16, 'les Bahamas', 'fr'),
(49, 17, 'Bahrain', 'en'),
(50, 17, 'Бахрейн', 'ru'),
(51, 17, 'le Bahreïn', 'fr'),
(52, 18, 'Bangladesh', 'en'),
(53, 18, 'Бангладеш', 'ru'),
(54, 18, 'le Bangladesh', 'fr'),
(55, 19, 'Barbados', 'en'),
(56, 19, 'Барбадос', 'ru'),
(57, 19, 'la Barbade', 'fr'),
(58, 20, 'Belarus', 'en'),
(59, 20, 'Белоруссия', 'ru'),
(60, 20, 'la Biélorussie', 'fr'),
(61, 21, 'Belgium', 'en'),
(62, 21, 'Бельгия', 'ru'),
(63, 21, 'la Belgique', 'fr'),
(64, 22, 'Belize', 'en'),
(65, 22, 'Белиз', 'ru'),
(66, 22, 'le Belize', 'fr'),
(67, 23, 'Benin', 'en'),
(68, 23, 'Бенин', 'ru'),
(69, 23, 'le Bénin', 'fr'),
(70, 24, 'Bermuda', 'en'),
(71, 24, 'Бермуды', 'ru'),
(72, 24, 'Bermudes', 'fr'),
(73, 25, 'Bhutan', 'en'),
(74, 25, 'Бутан', 'ru'),
(75, 25, 'le Bhoutan', 'fr'),
(76, 26, 'Bolivia', 'en'),
(77, 26, 'Боливия', 'ru'),
(78, 26, 'la Bolivie', 'fr'),
(79, 27, 'Bosnia and Herzegovina', 'en'),
(80, 27, 'Босния и Герцеговина', 'ru'),
(81, 27, 'Bosnie Herzégovine', 'fr'),
(82, 28, 'Botswana', 'en'),
(83, 28, 'Ботсвана', 'ru'),
(84, 28, 'le Botswana', 'fr'),
(85, 29, 'Brazil', 'en'),
(86, 29, 'Бразилия', 'ru'),
(87, 29, 'le Brésil', 'fr'),
(88, 30, 'Brunei Darussalam', 'en'),
(89, 30, 'Бруней', 'ru'),
(90, 30, 'Brunei Darussalam', 'fr'),
(91, 31, 'Bulgaria', 'en'),
(92, 31, 'Болгария', 'ru'),
(93, 31, 'la Bulgarie', 'fr'),
(94, 32, 'Burkina Faso', 'en'),
(95, 32, 'Буркина-Фасо', 'ru'),
(96, 32, 'Burkina Faso', 'fr'),
(97, 33, 'Burundi', 'en'),
(98, 33, 'Бурунди', 'ru'),
(99, 33, 'le Burundi', 'fr'),
(100, 34, 'Cambodia', 'en'),
(101, 34, 'Камбоджа', 'ru'),
(102, 34, 'le Cambodge', 'fr'),
(103, 35, 'Cameroon', 'en'),
(104, 35, 'Камерун', 'ru'),
(105, 35, 'le Cameroun', 'fr'),
(106, 36, 'Canada', 'en'),
(107, 36, 'Канада', 'ru'),
(108, 36, 'le Canada', 'fr'),
(109, 37, 'Cape Verde', 'en'),
(110, 37, 'Кабо-Верде', 'ru'),
(111, 37, 'Cap-Vert', 'fr'),
(112, 38, 'Cayman Islands', 'en'),
(113, 38, 'Каймановы Острова', 'ru'),
(114, 38, 'Îles Caïmans', 'fr'),
(115, 39, 'Central African Republic', 'en'),
(116, 39, 'Центрально-Африканская Республика', 'ru'),
(117, 39, 'la République centrafricaine', 'fr'),
(118, 40, 'Chad', 'en'),
(119, 40, 'Чад', 'ru'),
(120, 40, 'le Tchad', 'fr'),
(121, 41, 'Chile', 'en'),
(122, 41, 'Чили', 'ru'),
(123, 41, 'le Chili', 'fr'),
(124, 42, 'China', 'en'),
(125, 42, 'Китай', 'ru'),
(126, 42, 'la Chine', 'fr'),
(127, 43, 'Colombia', 'en'),
(128, 43, 'Колумбия', 'ru'),
(129, 43, 'la Colombie', 'fr'),
(130, 44, 'Comoros', 'en'),
(131, 44, 'Коморские острова', 'ru'),
(132, 44, 'Comores', 'fr'),
(133, 45, 'Democratic Republic of the Congo (Kinshasa)', 'en'),
(134, 45, 'Демократическая Республика Конго', 'ru'),
(135, 45, 'République Démocratique du Congo', 'fr'),
(136, 46, 'Congo, Republic of (Brazzaville)', 'en'),
(137, 46, 'Республика Конго', 'ru'),
(138, 46, 'Congo, République de (Brazzaville)', 'fr'),
(139, 47, 'Cook Islands', 'en'),
(140, 47, 'Острова Кука', 'ru'),
(141, 47, 'les Îles Cook', 'fr'),
(142, 48, 'Costa Rica', 'en'),
(143, 48, 'Коста-Рика', 'ru'),
(144, 48, 'le Costa Rica', 'fr'),
(145, 49, 'Cote d\'Ivoire', 'en'),
(146, 49, 'Кот-д\'Ивуар', 'ru'),
(147, 49, 'la Côte d\'Ivoire', 'fr'),
(148, 50, 'Croatia', 'en'),
(149, 50, 'Хорватия', 'ru'),
(150, 50, 'la Croatie', 'fr'),
(151, 51, 'Cuba', 'en'),
(152, 51, 'Куба', 'ru'),
(153, 51, 'Cuba', 'fr'),
(154, 52, 'Cyprus', 'en'),
(155, 52, 'Кипр', 'ru'),
(156, 52, 'Chypre', 'fr'),
(157, 53, 'Czech Republic', 'en'),
(158, 53, 'Чехия', 'ru'),
(159, 53, 'la République tchèque', 'fr'),
(160, 54, 'Denmark', 'en'),
(161, 54, 'Дания', 'ru'),
(162, 54, 'le Danemark', 'fr'),
(163, 55, 'Djibouti', 'en'),
(164, 55, 'Джибути', 'ru'),
(165, 55, 'le Djibouti', 'fr'),
(166, 56, 'Dominica', 'en'),
(167, 56, 'Доминика', 'ru'),
(168, 56, 'la Dominique', 'fr'),
(169, 57, 'Dominican Republic', 'en'),
(170, 57, 'Доминиканская Республика', 'ru'),
(171, 57, 'la République dominicaine', 'fr'),
(172, 58, 'East Timor Timor-Leste', 'en'),
(173, 58, 'Восточный Тимор', 'ru'),
(174, 58, 'Timor oriental Timor-Leste', 'fr'),
(175, 59, 'Ecuador', 'en'),
(176, 59, 'Эквадор', 'ru'),
(177, 59, 'l\'Équateur', 'fr'),
(178, 60, 'Egypt', 'en'),
(179, 60, 'Египет', 'ru'),
(180, 60, 'l\'Égypte', 'fr'),
(181, 61, 'El Salvador', 'en'),
(182, 61, 'Эль-Сальвадор', 'ru'),
(183, 61, 'le Salvador', 'fr'),
(184, 62, 'Equatorial Guinea', 'en'),
(185, 62, 'Экваториальная Гвинея', 'ru'),
(186, 62, 'la Guinée équatoriale', 'fr'),
(187, 63, 'Eritrea', 'en'),
(188, 63, 'Эритрея', 'ru'),
(189, 63, 'l\'Érythrée', 'fr'),
(190, 64, 'Estonia', 'en'),
(191, 64, 'Эстония', 'ru'),
(192, 64, 'l\'Estonie', 'fr'),
(193, 65, 'Ethiopia', 'en'),
(194, 65, 'Эфиопия', 'ru'),
(195, 65, 'l\'Éthiopie', 'fr'),
(196, 66, 'Falkland Islands', 'en'),
(197, 66, 'Фолклендские острова', 'ru'),
(198, 66, 'les îles Falkland', 'fr'),
(199, 67, 'Faroe Islands', 'en'),
(200, 67, 'Фарерские острова', 'ru'),
(201, 67, 'Îles Féroé', 'fr'),
(202, 68, 'Fiji', 'en'),
(203, 68, 'Фиджи', 'ru'),
(204, 68, 'les Fidji', 'fr'),
(205, 69, 'Finland', 'en'),
(206, 69, 'Финляндия', 'ru'),
(207, 69, 'la Finlande', 'fr'),
(208, 70, 'France', 'en'),
(209, 70, 'Франция', 'ru'),
(210, 70, 'la France', 'fr'),
(211, 71, 'French Guiana', 'en'),
(212, 71, 'Французская Гвиана', 'ru'),
(213, 71, 'Guinée Française', 'fr'),
(214, 72, 'French Polynesia', 'en'),
(215, 72, 'Французская Полинезия', 'ru'),
(216, 72, 'la Polynésie française', 'fr'),
(217, 73, 'Gabon', 'en'),
(218, 73, 'Габон', 'ru'),
(219, 73, 'le Gabon', 'fr'),
(220, 74, 'Gambia', 'en'),
(221, 74, 'Гамбия', 'ru'),
(222, 74, 'la Gambie', 'fr'),
(223, 75, 'Georgia', 'en'),
(224, 75, 'Грузия', 'ru'),
(225, 75, 'la Géorgie', 'fr'),
(226, 76, 'Germany', 'en'),
(227, 76, 'Германия', 'ru'),
(228, 76, 'l\'Allemagne', 'fr'),
(229, 77, 'Ghana', 'en'),
(230, 77, 'Гана', 'ru'),
(231, 77, 'le Ghana', 'fr'),
(232, 78, 'Gibraltar', 'en'),
(233, 78, 'Гибралтар', 'ru'),
(234, 78, 'Gibraltar', 'fr'),
(235, 79, 'Greece', 'en'),
(236, 79, 'Греция', 'ru'),
(237, 79, 'la Grèce', 'fr'),
(238, 80, 'Greenland', 'en'),
(239, 80, 'Гренландия', 'ru'),
(240, 80, 'Groenland', 'fr'),
(241, 81, 'Grenada', 'en'),
(242, 81, 'Гренада', 'ru'),
(243, 81, 'la Grenade', 'fr'),
(244, 82, 'Guadeloupe', 'en'),
(245, 82, 'Гваделупа', 'ru'),
(246, 82, 'Guadeloupe', 'fr'),
(247, 83, 'Guam', 'en'),
(248, 83, 'Гуам', 'ru'),
(249, 83, 'Guam', 'fr'),
(250, 84, 'Guatemala', 'en'),
(251, 84, 'Гватемала', 'ru'),
(252, 84, 'le Guatemala', 'fr'),
(253, 85, 'Guinea', 'en'),
(254, 85, 'Гвинея', 'ru'),
(255, 85, 'la Guinée', 'fr'),
(256, 86, 'Guinea-Bissau', 'en'),
(257, 86, 'Гвинея-Бисау', 'ru'),
(258, 86, 'Guinée-Bissau', 'fr'),
(259, 87, 'Guyana', 'en'),
(260, 87, 'Гайана', 'ru'),
(261, 87, 'la Guyana', 'fr'),
(262, 88, 'Haiti', 'en'),
(263, 88, 'Гаити', 'ru'),
(264, 88, 'Haïti', 'fr'),
(265, 89, 'Honduras', 'en'),
(266, 89, 'Гондурас', 'ru'),
(267, 89, 'le Honduras', 'fr'),
(268, 90, 'Hong Kong', 'en'),
(269, 90, 'Гонконг', 'ru'),
(270, 90, 'Hong Kong', 'fr'),
(271, 91, 'Hungary', 'en'),
(272, 91, 'Венгрия', 'ru'),
(273, 91, 'la Hongrie', 'fr'),
(274, 92, 'Iceland', 'en'),
(275, 92, 'Исландия', 'ru'),
(276, 92, 'l\'Islande', 'fr'),
(277, 93, 'India', 'en'),
(278, 93, 'Индия', 'ru'),
(279, 93, 'l\'Inde', 'fr'),
(280, 94, 'Indonesia', 'en'),
(281, 94, 'Индонезия', 'ru'),
(282, 94, 'l\'Indonésie', 'fr'),
(283, 95, 'Iran', 'en'),
(284, 95, 'Иран', 'ru'),
(285, 95, 'l\'Iran', 'fr'),
(286, 96, 'Iraq', 'en'),
(287, 96, 'Ирак', 'ru'),
(288, 96, 'l\'Irak', 'fr'),
(289, 97, 'Ireland', 'en'),
(290, 97, 'Ирландия', 'ru'),
(291, 97, 'l\'Irlande', 'fr'),
(292, 98, 'Israel', 'en'),
(293, 98, 'Израиль', 'ru'),
(294, 98, 'Israël', 'fr'),
(295, 99, 'Italy', 'en'),
(296, 99, 'Италия', 'ru'),
(297, 99, 'l\'Italie', 'fr'),
(298, 100, 'Jamaica', 'en'),
(299, 100, 'Ямайка', 'ru'),
(300, 100, 'la Jamaïque', 'fr'),
(301, 101, 'Japan', 'en'),
(302, 101, 'Япония', 'ru'),
(303, 101, 'le Japon', 'fr'),
(304, 102, 'Jordan', 'en'),
(305, 102, 'Иордания', 'ru'),
(306, 102, 'la Jordanie', 'fr'),
(307, 103, 'Kazakhstan', 'en'),
(308, 103, 'Казахстан', 'ru'),
(309, 103, 'le Kazakhstan', 'fr'),
(310, 104, 'Kenya', 'en'),
(311, 104, 'Кения', 'ru'),
(312, 104, 'le Kenya', 'fr'),
(313, 105, 'Kiribati', 'en'),
(314, 105, 'Кирибати', 'ru'),
(315, 105, 'Kiribati', 'fr'),
(316, 106, 'Korea, (North Korea)', 'en'),
(317, 106, 'Корея, северная', 'ru'),
(318, 106, 'Corée (Corée du Nord)', 'fr'),
(319, 107, 'Korea, (South Korea)', 'en'),
(320, 107, 'Корея, южная', 'ru'),
(321, 107, 'Corée (Corée du Sud)', 'fr'),
(322, 108, 'Kuwait', 'en'),
(323, 108, 'Кувейт', 'ru'),
(324, 108, 'le Koweït', 'fr'),
(325, 109, 'Kyrgyzstan', 'en'),
(326, 109, 'Киргизия', 'ru'),
(327, 109, 'le Kirghizstan', 'fr'),
(328, 110, 'Lao, People\'s Democratic Republic', 'en'),
(329, 110, 'Лаос', 'ru'),
(330, 110, 'République démocratique populaire lao', 'fr'),
(331, 111, 'Latvia', 'en'),
(332, 111, 'Латвия', 'ru'),
(333, 111, 'la Lettonie', 'fr'),
(334, 112, 'Lebanon', 'en'),
(335, 112, 'Ливан', 'ru'),
(336, 112, 'le Liban', 'fr'),
(337, 113, 'Lesotho', 'en'),
(338, 113, 'Лесото', 'ru'),
(339, 113, 'le Lesotho', 'fr'),
(340, 114, 'Liberia', 'en'),
(341, 114, 'Либерия', 'ru'),
(342, 114, 'le Libéria', 'fr'),
(343, 115, 'Libya', 'en'),
(344, 115, 'Ливия', 'ru'),
(345, 115, 'la Libye', 'fr'),
(346, 116, 'Liechtenstein', 'en'),
(347, 116, 'Лихтенштейн', 'ru'),
(348, 116, 'le Liechtenstein', 'fr'),
(349, 117, 'Lithuania', 'en'),
(350, 117, 'Литва', 'ru'),
(351, 117, 'la Lituanie', 'fr'),
(352, 118, 'Luxembourg', 'en'),
(353, 118, 'Люксембург', 'ru'),
(354, 118, 'le Luxembourg', 'fr'),
(355, 119, 'Macao', 'en'),
(356, 119, 'Макао', 'ru'),
(357, 119, 'Macao', 'fr'),
(358, 120, 'Macedonia', 'en'),
(359, 120, 'Македония', 'ru'),
(360, 120, 'Macédoine', 'fr'),
(361, 121, 'Madagascar', 'en'),
(362, 121, 'Мадагаскар', 'ru'),
(363, 121, 'Madagascar', 'fr'),
(364, 122, 'Malawi', 'en'),
(365, 122, 'Малави', 'ru'),
(366, 122, 'le Malawi', 'fr'),
(367, 123, 'Malaysia', 'en'),
(368, 123, 'Малайзия', 'ru'),
(369, 123, 'la Malaisie', 'fr'),
(370, 124, 'Maldives', 'en'),
(371, 124, 'Мальдивы', 'ru'),
(372, 124, 'les Maldives', 'fr'),
(373, 125, 'Mali', 'en'),
(374, 125, 'Мали', 'ru'),
(375, 125, 'le Mali', 'fr'),
(376, 126, 'Malta', 'en'),
(377, 126, 'Мальта', 'ru'),
(378, 126, 'Malte', 'fr'),
(379, 127, 'Marshall Islands', 'en'),
(380, 127, 'Маршалловы Острова', 'ru'),
(381, 127, 'les Îles Marshall', 'fr'),
(382, 128, 'Martinique', 'en'),
(383, 128, 'Мартиника', 'ru'),
(384, 128, 'Martinique', 'fr'),
(385, 129, 'Mauritania', 'en'),
(386, 129, 'Мавритания', 'ru'),
(387, 129, 'la Mauritanie', 'fr'),
(388, 130, 'Mauritius', 'en'),
(389, 130, 'Маврикий', 'ru'),
(390, 130, 'Île Maurice', 'fr'),
(391, 131, 'Mexico', 'en'),
(392, 131, 'Мексика', 'ru'),
(393, 131, 'le Mexique', 'fr'),
(394, 132, 'Micronesia, Federal States of', 'en'),
(395, 132, 'Микронезии, Федеративные Штаты', 'ru'),
(396, 132, 'Micronésie, États fédéraux de', 'fr'),
(397, 133, 'Moldova', 'en'),
(398, 133, 'Молдавия', 'ru'),
(399, 133, 'Moldavie', 'fr'),
(400, 134, 'Monaco', 'en'),
(401, 134, 'Монако', 'ru'),
(402, 134, 'Monaco', 'fr'),
(403, 135, 'Mongolia', 'en'),
(404, 135, 'Монголия', 'ru'),
(405, 135, 'la Mongolie', 'fr'),
(406, 136, 'Montenegro', 'en'),
(407, 136, 'Черногория', 'ru'),
(408, 136, 'le Monténégro', 'fr'),
(409, 137, 'Montserrat', 'en'),
(410, 137, 'Монтсерат', 'ru'),
(411, 137, 'Montserrat', 'fr'),
(412, 138, 'Morocco', 'en'),
(413, 138, 'Марокко', 'ru'),
(414, 138, 'le Maroc', 'fr'),
(415, 139, 'Mozambique', 'en'),
(416, 139, 'Мозамбик', 'ru'),
(417, 139, 'le Mozambique', 'fr'),
(418, 140, 'Myanmar, Burma', 'en'),
(419, 140, 'Мьянма', 'ru'),
(420, 140, 'Myanmar, Birmanie', 'fr'),
(421, 141, 'Namibia', 'en'),
(422, 141, 'Намибия', 'ru'),
(423, 141, 'la Namibie', 'fr'),
(424, 142, 'Nauru', 'en'),
(425, 142, 'Науру', 'ru'),
(426, 142, 'la Nauru', 'fr'),
(427, 143, 'Nepal', 'en'),
(428, 143, 'Непал', 'ru'),
(429, 143, 'le Népal', 'fr'),
(430, 144, 'Netherlands', 'en'),
(431, 144, 'Нидерланды', 'ru'),
(432, 144, 'les Pays-Bas', 'fr'),
(433, 145, 'Netherlands Antilles', 'en'),
(434, 145, 'Нидерландские Антильские острова', 'ru'),
(435, 145, 'Antilles néerlandaises', 'fr'),
(436, 146, 'New Caledonia', 'en'),
(437, 146, 'Новая Каледония', 'ru'),
(438, 146, 'Nouvelle Calédonie', 'fr'),
(439, 147, 'New Zealand', 'en'),
(440, 147, 'Новая Зеландия', 'ru'),
(441, 147, 'la Nouvelle-Zélande', 'fr'),
(442, 148, 'Nicaragua', 'en'),
(443, 148, 'Никарагуа', 'ru'),
(444, 148, 'le Nicaragua', 'fr'),
(445, 149, 'Niger', 'en'),
(446, 149, 'Нигер', 'ru'),
(447, 149, 'le Niger', 'fr'),
(448, 150, 'Nigeria', 'en'),
(449, 150, 'Нигерия', 'ru'),
(450, 150, 'le Nigéria', 'fr'),
(451, 151, 'Niue', 'en'),
(452, 151, 'Ниуэ', 'ru'),
(453, 151, 'Niue', 'fr'),
(454, 152, 'Northern Mariana Islands', 'en'),
(455, 152, 'Северные Марианские острова', 'ru'),
(456, 152, 'Îles Mariannes du Nord', 'fr'),
(457, 153, 'Norway', 'en'),
(458, 153, 'Норвегия', 'ru'),
(459, 153, 'la Norvège', 'fr'),
(460, 154, 'Oman', 'en'),
(461, 154, 'Оман', 'ru'),
(462, 154, 'l\'Oman', 'fr'),
(463, 155, 'Pakistan', 'en'),
(464, 155, 'Пакистан', 'ru'),
(465, 155, 'le Pakistan', 'fr'),
(466, 156, 'Palau', 'en'),
(467, 156, 'Палау', 'ru'),
(468, 156, 'Palau', 'fr'),
(469, 157, 'Palestinian territory', 'en'),
(470, 157, 'палестинской территории', 'ru'),
(471, 157, 'Territoire Palestinien', 'fr'),
(472, 158, 'Panama', 'en'),
(473, 158, 'Панама', 'ru'),
(474, 158, 'le Panama', 'fr'),
(475, 159, 'Papua New Guinea', 'en'),
(476, 159, 'Папуа — Новая Гвинея', 'ru'),
(477, 159, 'la Papouasie-Nouvelle-Guinée', 'fr'),
(478, 160, 'Paraguay', 'en'),
(479, 160, 'Парагвай', 'ru'),
(480, 160, 'le Paraguay', 'fr'),
(481, 161, 'Peru', 'en'),
(482, 161, 'Перу', 'ru'),
(483, 161, 'le Pérou', 'fr'),
(484, 162, 'Philippines', 'en'),
(485, 162, 'Филиппины', 'ru'),
(486, 162, 'les Philippines', 'fr'),
(487, 163, 'Poland', 'en'),
(488, 163, 'Польша', 'ru'),
(489, 163, 'la Pologne', 'fr'),
(490, 164, 'Portugal', 'en'),
(491, 164, 'Португалия', 'ru'),
(492, 164, 'le Portugal', 'fr'),
(493, 165, 'Puerto Rico', 'en'),
(494, 165, 'Пуэрто-Рико', 'ru'),
(495, 165, 'Porto Rico', 'fr'),
(496, 166, 'Qatar', 'en'),
(497, 166, 'Катар', 'ru'),
(498, 166, 'le Qatar', 'fr'),
(499, 167, 'Reunion Island', 'en'),
(500, 167, 'Реюньон', 'ru'),
(501, 167, 'Ile de la Réunion', 'fr'),
(502, 168, 'Romania', 'en'),
(503, 168, 'Румыния', 'ru'),
(504, 168, 'la Roumanie', 'fr'),
(505, 169, 'Russian Federation', 'en'),
(506, 169, 'Россия', 'ru'),
(507, 169, 'Fédération Russe', 'fr'),
(508, 170, 'Rwanda', 'en'),
(509, 170, 'Руанда', 'ru'),
(510, 170, 'le Rwanda', 'fr'),
(511, 171, 'Saint Kitts and Nevis', 'en'),
(512, 171, 'Сент-Китс и Невис', 'ru'),
(513, 171, 'Saint-Christophe-et-Niévès', 'fr'),
(514, 172, 'Saint Lucia', 'en'),
(515, 172, 'Сент-Люсия', 'ru'),
(516, 172, 'Sainte-Lucie', 'fr'),
(517, 173, 'Saint Vincent and the Grenadines', 'en'),
(518, 173, 'Сент-Винсент и Гренадины', 'ru'),
(519, 173, 'Saint-Vincent-et-les-Grenadines', 'fr'),
(520, 174, 'Samoa', 'en'),
(521, 174, 'Самоа', 'ru'),
(522, 174, 'Samoa', 'fr'),
(523, 175, 'San Marino', 'en'),
(524, 175, 'Сан-Марино', 'ru'),
(525, 175, 'Saint-Marin', 'fr'),
(526, 176, 'Sao Tome and Príncipe', 'en'),
(527, 176, 'Сан-Томе и Принсипи', 'ru'),
(528, 176, 'Sao Tomé et Principe', 'fr'),
(529, 177, 'Saudi Arabia', 'en'),
(530, 177, 'Саудовская Аравия', 'ru'),
(531, 177, 'l\'Arabie saoudite', 'fr'),
(532, 178, 'Senegal', 'en'),
(533, 178, 'Сенегал', 'ru'),
(534, 178, 'le Sénégal', 'fr'),
(535, 179, 'Serbia', 'en'),
(536, 179, 'Сербия', 'ru'),
(537, 179, 'la Serbie', 'fr'),
(538, 180, 'Seychelles', 'en'),
(539, 180, 'Сейшельские острова', 'ru'),
(540, 180, 'les Seychelles', 'fr'),
(541, 181, 'Sierra Leone', 'en'),
(542, 181, 'Сьерра-Леоне', 'ru'),
(543, 181, 'la Sierra Leone', 'fr'),
(544, 182, 'Singapore', 'en'),
(545, 182, 'Сингапур', 'ru'),
(546, 182, 'Singapour', 'fr'),
(547, 183, 'Slovakia', 'en'),
(548, 183, 'Словакия', 'ru'),
(549, 183, 'la Slovaquie', 'fr'),
(550, 184, 'Slovenia', 'en'),
(551, 184, 'Словения', 'ru'),
(552, 184, 'la Slovénie', 'fr'),
(553, 185, 'Solomon Islands', 'en'),
(554, 185, 'Соломоновы Острова', 'ru'),
(555, 185, 'Les îles Salomon', 'fr'),
(556, 186, 'Somalia', 'en'),
(557, 186, 'Сомали', 'ru'),
(558, 186, 'la Somalie', 'fr'),
(559, 187, 'South Africa', 'en'),
(560, 187, 'Южно-Африканская Республика (ЮАР)', 'ru'),
(561, 187, 'l\'Afrique du Sud', 'fr'),
(562, 188, 'Spain', 'en'),
(563, 188, 'Испания', 'ru'),
(564, 188, 'l\'Espagne', 'fr'),
(565, 189, 'Sri Lanka', 'en'),
(566, 189, 'Шри-Ланка', 'ru'),
(567, 189, 'le Sri Lanka', 'fr'),
(568, 190, 'Sudan', 'en'),
(569, 190, 'Судан', 'ru'),
(570, 190, 'le Soudan', 'fr'),
(571, 191, 'Suriname', 'en'),
(572, 191, 'Суринам', 'ru'),
(573, 191, 'Suriname', 'fr'),
(574, 192, 'Swaziland', 'en'),
(575, 192, 'Свазиленд', 'ru'),
(576, 192, 'le Swaziland', 'fr'),
(577, 193, 'Sweden', 'en'),
(578, 193, 'Швеция', 'ru'),
(579, 193, 'la Suède', 'fr'),
(580, 194, 'Switzerland', 'en'),
(581, 194, 'Швейцария', 'ru'),
(582, 194, 'la Suisse', 'fr'),
(583, 195, 'Syria', 'en'),
(584, 195, 'Сирия', 'ru'),
(585, 195, 'la Syrie', 'fr'),
(586, 196, 'Taiwan', 'en'),
(587, 196, 'Тайвань', 'ru'),
(588, 196, 'Taïwan', 'fr'),
(589, 197, 'Tajikistan', 'en'),
(590, 197, 'Таджикистан', 'ru'),
(591, 197, 'le Tadjikistan', 'fr'),
(592, 198, 'Tanzania', 'en'),
(593, 198, 'Танзания', 'ru'),
(594, 198, 'la Tanzanie', 'fr'),
(595, 199, 'Thailand', 'en'),
(596, 199, 'Таиланд', 'ru'),
(597, 199, 'la Thaïlande', 'fr'),
(598, 200, 'Tibet', 'en'),
(599, 200, 'Тибет', 'ru'),
(600, 200, 'Tibet', 'fr'),
(601, 201, 'Timor-Leste (East Timor)', 'en'),
(602, 201, 'Восточный Тимор', 'ru'),
(603, 201, 'Timor-Leste (Timor oriental)', 'fr'),
(604, 202, 'Togo', 'en'),
(605, 202, 'Того', 'ru'),
(606, 202, 'le Togo', 'fr'),
(607, 203, 'Tokelau', 'en'),
(608, 203, 'Токелау', 'ru'),
(609, 203, 'Tokelau', 'fr'),
(610, 204, 'Tonga', 'en'),
(611, 204, 'Тонга', 'ru'),
(612, 204, 'les Tonga', 'fr'),
(613, 205, 'Trinidad and Tobago', 'en'),
(614, 205, 'Тринидад и Тобаго', 'ru'),
(615, 205, 'la Trinité-et-Tobago', 'fr'),
(616, 206, 'Tunisia', 'en'),
(617, 206, 'Тунис', 'ru'),
(618, 206, 'la Tunisie', 'fr'),
(619, 207, 'Turkey', 'en'),
(620, 207, 'Турция', 'ru'),
(621, 207, 'la Turquie', 'fr'),
(622, 208, 'Turkmenistan', 'en'),
(623, 208, 'Туркменистан', 'ru'),
(624, 208, 'le Turkménistan', 'fr'),
(625, 209, 'Tuvalu', 'en'),
(626, 209, 'Тувалу', 'ru'),
(627, 209, 'le Tuvalu', 'fr'),
(628, 210, 'Uganda', 'en'),
(629, 210, 'Уганда', 'ru'),
(630, 210, 'l\'Ouganda', 'fr'),
(631, 211, 'Ukraine', 'en'),
(632, 211, 'Украина', 'ru'),
(633, 211, 'l\'Ukraine', 'fr'),
(634, 212, 'United Arab Emirates', 'en'),
(635, 212, 'Объединённые Арабские Эмираты (ОАЭ)', 'ru'),
(636, 212, 'les Émirats arabes unis', 'fr'),
(637, 213, 'United Kingdom of Great Britain and Northern Ireland', 'en'),
(638, 213, 'Соединённое Королевство Великобритании и Северной Ирландии', 'ru'),
(639, 213, 'Royaume-Uni de Grande-Bretagne et d\'Irlande du Nord', 'fr'),
(640, 214, 'United States', 'en'),
(641, 214, 'Соединённые Штаты Америки', 'ru'),
(642, 214, 'les États-Unis', 'fr'),
(643, 215, 'Uruguay', 'en'),
(644, 215, 'Уругвай', 'ru'),
(645, 215, 'l\'Uruguay', 'fr'),
(646, 216, 'Uzbekistan', 'en'),
(647, 216, 'Узбекистан', 'ru'),
(648, 216, 'l\'Ouzbékistan', 'fr'),
(649, 217, 'Vanuatu', 'en'),
(650, 217, 'Вануату', 'ru'),
(651, 217, 'le Vanuatu', 'fr'),
(652, 218, 'Vatican City State', 'en'),
(653, 218, 'Ватикан', 'ru'),
(654, 218, 'Etat de la Cité du Vatican', 'fr'),
(655, 219, 'Venezuela', 'en'),
(656, 219, 'Венесуэла', 'ru'),
(657, 219, 'le Venezuela', 'fr'),
(658, 220, 'Vietnam', 'en'),
(659, 220, 'Вьетнам', 'ru'),
(660, 220, 'le Viêt-Nam', 'fr'),
(661, 221, 'Virgin Islands (British)', 'en'),
(662, 221, 'Британские Виргинские острова', 'ru'),
(663, 221, 'Îles Vierges (britanniques)', 'fr'),
(664, 222, 'Virgin Islands (U.S.)', 'en'),
(665, 222, 'Американские Виргинские острова', 'ru'),
(666, 222, 'Îles Vierges (États-Unis)', 'fr'),
(667, 223, 'Wallis and Futuna Islands', 'en'),
(668, 223, 'Острова Уоллис и Футуна', 'ru'),
(669, 223, 'Îles Wallis et Futuna', 'fr'),
(670, 224, 'Western Sahara', 'en'),
(671, 224, 'Западная Сахара', 'ru'),
(672, 224, 'Sahara occidental', 'fr'),
(673, 225, 'Yemen', 'en'),
(674, 225, 'Йемен', 'ru'),
(675, 225, 'le Yémen', 'fr'),
(676, 226, 'Zambia', 'en'),
(677, 226, 'Замбия', 'ru'),
(678, 226, 'la Zambie', 'fr'),
(679, 227, 'Zimbabwe', 'en'),
(680, 227, 'Зимбабве', 'ru'),
(681, 227, 'le Zimbabwe', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user`, `tour_id`) VALUES
(12, 'giorgi.jajvani@laposte.net', 7);

-- --------------------------------------------------------

--
-- Table structure for table `file_system`
--

CREATE TABLE `file_system` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `random` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `file_system`
--

INSERT INTO `file_system` (`id`, `date`, `idx`, `cid`, `random`, `page_id`, `file_path`, `file_size`, `type`, `lang`, `position`) VALUES
(5, 1510737754, 1, 0, 'JX5hmNN4a74ZoKh551I3S61rM', 0, 'filemanager/1.jpg', 253687, 'module', '', 0),
(7, 1510737790, 2, 0, 'JX5hmNN4a74ZoKh551I3S61rM', 0, 'filemanager/20731_292132622250_8253899_n.jpg', 81725, 'module', '', 0),
(9, 1538245242, 3, 0, '7K8V8k5JOyHq1VBspky6x8jsR', 0, 'filemanager/tripplanner_testing_part4_V1.pdf', 1798633, 'page', '', 0),
(50, 1550005061, 4, 0, '', 123, 'filemanager/tripplannertestingpart4V1.pdf', 0, 'page', 'ge', 1),
(13, 1538297300, 4, 0, '594uctVyOzdWCyMrHgeArfYGZ', 0, 'filemanager/tripplannertestingpart4V1.pdf', 1798633, 'page', '', 0),
(28, 1538918762, 8, 0, 'OOkyNFBoHDBC0Vgladk1bb9vK', 0, 'filemanager/File1-mari-1-ilovepdf-compressed.pdf', 164049, 'page', '', 0),
(22, 1538865047, 7, 0, 'eWVaxxCVXcSksFO45bSQeLVbo', 0, 'filemanager/tripplannertestingpart4V1.pdf', 1798633, 'module', '', 0),
(53, 1550052676, 8, 0, '', 123, 'filemanager/File1-mari-1-ilovepdf-compressed.pdf', 0, 'page', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `georgia`
--

CREATE TABLE `georgia` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `georgia`
--

INSERT INTO `georgia` (`id`, `idx`, `cid`, `name`, `lang`, `status`) VALUES
(1, 1, 0, 'აფხაზეთი', 'ge', 0),
(2, 1, 0, 'Apkhazeti', 'en', 0),
(3, 1, 0, 'Apkhazeti', 'ru', 0),
(4, 2, 0, 'სამეგრელო ზემო სვანეთი', 'ge', 0),
(5, 2, 0, 'Samegrelo zemo svaneti', 'en', 0),
(6, 2, 0, 'Samegrelo zemo svaneti', 'ru', 0),
(7, 3, 0, 'რაჭა ლეჩხუმი კვემო სვანეთი', 'ge', 0),
(8, 3, 0, 'Racha lechkhumi kvemo svaneti', 'en', 0),
(9, 3, 0, 'Racha lechkhumi kvemo svaneti', 'ru', 0),
(10, 4, 0, 'იმერეთი', 'ge', 0),
(11, 4, 0, 'Imereti', 'en', 0),
(12, 4, 0, 'Imereti', 'ru', 0),
(13, 5, 0, 'გურია', 'ge', 0),
(14, 5, 0, 'Guria', 'en', 0),
(15, 5, 0, 'Guria', 'ru', 0),
(16, 6, 0, 'აჭარა', 'ge', 0),
(17, 6, 0, 'adjara', 'en', 0),
(18, 6, 0, 'adjara', 'ru', 0),
(19, 7, 0, 'შიდა ქართლი', 'ge', 0),
(20, 7, 0, 'Shida qartli', 'en', 0),
(21, 7, 0, 'Shida qartli', 'ru', 0),
(22, 8, 0, 'სამცხე ჯავახეთი', 'ge', 0),
(23, 8, 0, 'Samckhe javahketi', 'en', 0),
(24, 8, 0, 'Samckhe javahketi', 'ru', 0),
(25, 9, 0, 'ქვემო ქართლი', 'ge', 0),
(26, 9, 0, 'kvemo qartli', 'en', 0),
(27, 9, 0, 'kvemo qartli', 'ru', 0),
(206, 69, 11, 'Mleta', 'en', 0),
(205, 69, 11, 'მლეთა', 'ge', 0),
(31, 11, 0, 'მცხეთა მთიანეთი', 'ge', 0),
(32, 11, 0, 'Mtshketa mtianeti', 'en', 0),
(33, 11, 0, 'Mtshketa mtianeti', 'ru', 0),
(34, 12, 0, 'კახეთი', 'ge', 0),
(35, 12, 0, 'kakheti', 'en', 0),
(36, 12, 0, 'kakheti', 'ru', 0),
(37, 13, 1, 'გაგრა', 'ge', 0),
(38, 13, 1, 'Gagra', 'en', 0),
(39, 13, 1, 'Gagra', 'ru', 0),
(40, 14, 1, 'ფსხუ', 'ge', 0),
(41, 14, 1, 'Pskhu', 'en', 0),
(42, 14, 1, 'Pskhu', 'ru', 0),
(43, 15, 1, 'ბიჭვინთა', 'ge', 0),
(44, 15, 1, 'Pitsunda', 'en', 0),
(45, 15, 1, 'Pitsunda', 'ru', 0),
(46, 16, 1, 'გუდაუთა', 'ge', 0),
(47, 16, 1, 'Gudauta', 'en', 0),
(48, 16, 1, 'Gudauta', 'ru', 0),
(49, 17, 1, 'სოხუმი', 'ge', 0),
(50, 17, 1, 'Sukhumi', 'en', 0),
(51, 17, 1, 'Sukhumi', 'ru', 0),
(52, 18, 1, 'ლათა', 'ge', 0),
(53, 18, 1, 'Lata', 'en', 0),
(54, 18, 1, 'Lata', 'ru', 0),
(55, 19, 1, 'ოტაფი', 'ge', 0),
(56, 19, 1, 'Otap', 'en', 0),
(57, 19, 1, 'Otap', 'ru', 0),
(58, 20, 1, 'ომარიშარა', 'ge', 0),
(59, 20, 1, 'Omarishara', 'en', 0),
(60, 20, 1, 'Omarishara', 'ru', 0),
(61, 21, 1, 'ტყვარჩელი', 'ge', 0),
(62, 21, 1, 'Tkvarcheli', 'en', 0),
(63, 21, 1, 'Tkvarcheli', 'ru', 0),
(64, 22, 1, 'ოჩამჩირე', 'ge', 0),
(65, 22, 1, 'Ochamchire', 'en', 0),
(66, 22, 1, 'Ochamchire', 'ru', 0),
(67, 23, 1, 'გალი', 'ge', 0),
(68, 23, 1, 'Gali', 'en', 0),
(69, 23, 1, 'Gali', 'ru', 0),
(70, 24, 2, 'მესტია', 'ge', 0),
(71, 24, 2, 'Mestia', 'en', 0),
(72, 24, 2, 'Mestia', 'ru', 0),
(73, 25, 2, 'ხაიში', 'ge', 0),
(74, 25, 2, 'Khaishi', 'en', 0),
(75, 25, 2, 'Khaishi', 'ru', 0),
(76, 26, 2, 'ჯვარი', 'ge', 0),
(77, 26, 2, 'Jvari', 'en', 0),
(78, 26, 2, 'Jvari', 'ru', 0),
(79, 27, 2, 'წალენჯიხა', 'ge', 0),
(80, 27, 2, 'Tsalenjikha', 'en', 0),
(81, 27, 2, 'Tsalenjikha', 'ru', 0),
(82, 28, 2, 'ზუგდიდი', 'ge', 0),
(83, 28, 2, 'Zugdidi', 'en', 0),
(84, 28, 2, 'Zugdidi', 'ru', 0),
(85, 29, 2, 'ანაკლია', 'ge', 0),
(86, 29, 2, 'Anaklia', 'en', 0),
(87, 29, 2, 'Anaklia', 'ru', 0),
(88, 30, 2, 'ხობი', 'ge', 0),
(89, 30, 2, 'Xobi', 'en', 0),
(90, 30, 2, 'Xobi', 'ru', 0),
(91, 31, 2, 'სენაკი', 'ge', 0),
(92, 31, 2, 'Senaki', 'en', 0),
(93, 31, 2, 'Senaki', 'ru', 0),
(94, 32, 2, 'ფოთი', 'ge', 0),
(95, 32, 2, 'Poti', 'en', 0),
(96, 32, 2, 'Poti', 'ru', 0),
(97, 33, 3, 'ლენტეხი', 'ge', 0),
(98, 33, 3, 'Lentekhi', 'en', 0),
(99, 33, 3, 'Lentekhi', 'ru', 0),
(100, 34, 3, 'ხვანჭკარა', 'ge', 0),
(101, 34, 3, 'Khvanchkara', 'en', 0),
(102, 34, 3, 'Khvanchkara', 'ru', 0),
(103, 35, 3, 'ამბროლაური', 'ge', 0),
(104, 35, 3, 'Ambrolauri', 'en', 0),
(105, 35, 3, 'Ambrolauri', 'ru', 0),
(106, 36, 3, 'კვაისი', 'ge', 0),
(107, 36, 3, 'Kvaisi', 'en', 0),
(108, 36, 3, 'Kvaisi', 'ru', 0),
(109, 37, 4, 'ტყიბული', 'ge', 0),
(110, 37, 4, 'Tkibuli', 'en', 0),
(111, 37, 4, 'Tkibuli', 'ru', 0),
(112, 38, 4, 'წყალტუბო', 'ge', 0),
(113, 38, 4, 'Tskhaltubo', 'en', 0),
(114, 38, 4, 'Tskhaltubo', 'ru', 0),
(115, 39, 4, 'ქუთაისი', 'ge', 0),
(116, 39, 4, 'Kutaisi', 'en', 0),
(117, 39, 4, 'Kutaisi', 'ru', 0),
(118, 40, 4, 'ჭიათურა', 'ge', 0),
(119, 40, 4, 'Chiatura', 'en', 0),
(120, 40, 4, 'Chiatura', 'ru', 0),
(121, 41, 4, 'სამტრედია', 'ge', 0),
(122, 41, 4, 'Samtredia', 'en', 0),
(123, 41, 4, 'Samtredia', 'ru', 0),
(124, 42, 4, 'ზესტაფონი', 'ge', 0),
(125, 42, 4, 'Zestaponi', 'en', 0),
(126, 42, 4, 'Zestaponi', 'ru', 0),
(127, 43, 4, 'ბაღდადი', 'ge', 0),
(128, 43, 4, 'Bagdadi', 'en', 0),
(129, 43, 4, 'Bagdadi', 'ru', 0),
(130, 44, 5, 'ლანჩხუთი', 'ge', 0),
(131, 44, 5, 'Lanchkhuti', 'en', 0),
(132, 44, 5, 'Lanchkhuti', 'ru', 0),
(133, 45, 5, 'ჩოხატაური', 'ge', 0),
(134, 45, 5, 'Chokhatauri', 'en', 0),
(135, 45, 5, 'Chokhatauri', 'ru', 0),
(136, 46, 5, 'ოზურგეთი', 'ge', 0),
(137, 46, 5, 'Ozurgeti', 'en', 0),
(138, 46, 5, 'Ozurgeti', 'ru', 0),
(139, 47, 5, 'ბახმარო', 'ge', 0),
(140, 47, 5, 'Bakhmaro', 'en', 0),
(141, 47, 5, 'Bakhmaro', 'ru', 0),
(142, 48, 6, 'ქობულეთი', 'ge', 0),
(143, 48, 6, 'Kobuleti', 'en', 0),
(144, 48, 6, 'Kobuleti', 'ru', 0),
(145, 49, 6, 'ბათუმი', 'ge', 0),
(146, 49, 6, 'Batumi', 'en', 0),
(147, 49, 6, 'Batumi', 'ru', 0),
(148, 50, 6, 'ქედა', 'ge', 0),
(149, 50, 6, 'Qeda', 'en', 0),
(150, 50, 6, 'Qeda', 'ru', 0),
(151, 51, 6, 'ხულო', 'ge', 0),
(152, 51, 6, 'Khulo', 'en', 0),
(153, 51, 6, 'Khulo', 'ru', 0),
(154, 52, 7, 'ქურთა', 'ge', 0),
(155, 52, 7, 'Kurta', 'en', 0),
(156, 52, 7, 'Kurta', 'ru', 0),
(157, 53, 7, 'ახალგორი', 'ge', 0),
(158, 53, 7, 'Akhalgori', 'en', 0),
(159, 53, 7, 'Akhalgori', 'ru', 0),
(160, 54, 7, 'ცხინვალი', 'ge', 0),
(161, 54, 7, 'Tskhinvali', 'en', 0),
(162, 54, 7, 'Tskhinvali', 'ru', 0),
(163, 55, 7, 'ხაშური', 'ge', 0),
(164, 55, 7, 'Khashuri', 'en', 0),
(165, 55, 7, 'Khashuri', 'ru', 0),
(166, 56, 7, 'გორი', 'ge', 0),
(167, 56, 7, 'Gori', 'en', 0),
(168, 56, 7, 'Gori', 'ru', 0),
(169, 57, 8, 'ბორჯომი', 'ge', 0),
(170, 57, 8, 'Borjomi', 'en', 0),
(171, 57, 8, 'Borjomi', 'ru', 0),
(172, 58, 8, 'ბაკურიანი', 'ge', 0),
(173, 58, 8, 'Bakuriani', 'en', 0),
(174, 58, 8, 'Bakuriani', 'ru', 0),
(175, 59, 8, 'აწყური', 'ge', 0),
(176, 59, 8, 'Atskuri', 'en', 0),
(177, 59, 8, 'Atskuri', 'ru', 0),
(178, 60, 8, 'აბასთუმანი', 'ge', 0),
(179, 60, 8, 'Abastumani', 'en', 0),
(180, 60, 8, 'Abastumani', 'ru', 0),
(181, 61, 8, 'ახალციხე', 'ge', 0),
(182, 61, 8, 'Akhaltsikhe', 'en', 0),
(183, 61, 8, 'Akhaltsikhe', 'ru', 0),
(184, 62, 8, 'ახალქალაქი', 'ge', 0),
(185, 62, 8, 'Akhalkalaki', 'en', 0),
(186, 62, 8, 'Akhalkalaki', 'ru', 0),
(187, 63, 8, 'ნინოწმინდა', 'ge', 0),
(188, 63, 8, 'Ninotsminda', 'en', 0),
(189, 63, 8, 'Ninotsminda', 'ru', 0),
(190, 64, 9, 'ბოლნისი', 'ge', 0),
(191, 64, 9, 'Bolnisi', 'en', 0),
(192, 64, 9, 'Bolnisi', 'ru', 0),
(193, 65, 9, 'მარნეული', 'ge', 0),
(194, 65, 9, 'Marneuli', 'en', 0),
(195, 65, 9, 'Marneuli', 'ru', 0),
(196, 66, 9, 'კაზრეთი', 'ge', 0),
(197, 66, 9, 'Kazreti', 'en', 0),
(198, 66, 9, 'Kazreti', 'ru', 0),
(199, 67, 9, 'რუსთავი', 'ge', 0),
(200, 67, 9, 'Rustavi', 'en', 0),
(201, 67, 9, 'Rustavi', 'ru', 0),
(202, 68, 9, 'თბილისი', 'ge', 0),
(203, 68, 9, 'Tbilisi', 'en', 0),
(204, 68, 9, 'Tbilisi', 'ru', 0),
(207, 69, 11, 'Mleta', 'ru', 0),
(208, 70, 11, 'ფასანაური', 'ge', 0),
(209, 70, 11, 'Pasanauri', 'en', 0),
(210, 70, 11, 'Pasanauri', 'ru', 0),
(211, 71, 11, 'დუშეთი', 'ge', 0),
(212, 71, 11, 'Dusheti', 'en', 0),
(213, 71, 11, 'Dusheti', 'ru', 0),
(214, 72, 11, 'მცხეთა', 'ge', 0),
(215, 72, 11, 'Mtskheta', 'en', 0),
(216, 72, 11, 'Mtskheta', 'ru', 0),
(217, 73, 12, 'არჭილო', 'ge', 0),
(218, 73, 12, 'Archilo', 'en', 0),
(219, 73, 12, 'Archilo', 'ru', 0),
(220, 74, 12, 'ახმეტა', 'ge', 0),
(221, 74, 12, 'Akhmeta', 'en', 0),
(222, 74, 12, 'Akhmeta', 'ru', 0),
(223, 75, 12, 'ყვარელი', 'ge', 0),
(224, 75, 12, 'Kvareli', 'en', 0),
(225, 75, 12, 'Kvareli', 'ru', 0),
(226, 76, 12, 'თელავი', 'ge', 0),
(227, 76, 12, 'Telavi', 'en', 0),
(228, 76, 12, 'Telavi', 'ru', 0),
(229, 77, 12, 'ლაგოდეხი', 'ge', 0),
(230, 77, 12, 'Lagodekhi', 'en', 0),
(231, 77, 12, 'Lagodekhi', 'ru', 0),
(232, 78, 12, 'გურჯაანი', 'ge', 0),
(233, 78, 12, 'Gurjaani', 'en', 0),
(234, 78, 12, 'Gurjaani', 'ru', 0),
(235, 79, 12, 'წნორი', 'ge', 0),
(236, 79, 12, 'Tsnori', 'en', 0),
(237, 79, 12, 'Tsnori', 'ru', 0),
(238, 80, 12, 'დედოფლის წყარო', 'ge', 0),
(239, 80, 12, 'Dedoflis tskaro', 'en', 0),
(240, 80, 12, 'Dedoflis tskaro', 'ru', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `update_date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personal_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faddress` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monthly_income` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactPerson` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contactPersonNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `demended_loan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `demended_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `recover` text COLLATE utf8_unicode_ci NOT NULL,
  `agree` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `loan_status` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `loan_finished` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `date`, `update_date`, `ip`, `name`, `surname`, `personal_number`, `dob`, `faddress`, `city`, `mobile`, `email`, `jobTitle`, `monthly_income`, `position`, `jobphone`, `contactPerson`, `contactPersonNumber`, `demended_loan`, `demended_month`, `password`, `recover`, `agree`, `read`, `loan_status`, `loan_finished`, `status`) VALUES
(10, 1479655796, 1479765287, '94.240.219.15', 'გიო', 'გვაზავა', '01027034324', '26/07/1987', 'ვარკეთილი 3', '1', '599623555', 'giorgigvazava87@gmail.com', 'შპს სტუდია 404', '1000', 'ვებ დეველოპერი', '2477022', 'ქეთევან გვაზავა', '558530144', '1000', '12', '123', '', 1, 1, '2', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `name`, `pic`) VALUES
(2, 'en', 'English', '/public/img/en.jpg'),
(3, 'ge', 'Georgian', '/public/img/ge.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `myaccount_nav`
--

CREATE TABLE `myaccount_nav` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `myaccount_nav`
--

INSERT INTO `myaccount_nav` (`id`, `title`, `icon`, `slug`, `lang`, `position`) VALUES
(1, 'Purchases', 'fa fa-ticket', 'purchases', 'en', 1),
(2, 'Achats', 'fa fa-ticket', 'purchases', 'fr', 1),
(3, 'Покупки', 'fa fa-ticket', 'purchases', 'ru', 1),
(4, 'Favourites', 'fa fa-heart', 'favourites', 'en', 2),
(5, 'Favoris', 'fa fa-heart', 'favourites', 'fr', 2),
(6, 'Избранные', 'fa fa-heart', 'favourites', 'ru', 2),
(7, 'Profile', 'fa fa-user', 'profile', 'en', 3),
(8, 'Profil', 'fa fa-user', 'profile', 'fr', 3),
(9, 'Профиль', 'fa fa-user', 'profile', 'ru', 3),
(10, 'Change Password', 'fa fa-lock', 'changepassword', 'en', 4),
(11, 'Changer le mot de passe', 'fa fa-lock', 'changepassword', 'fr', 4),
(12, 'Изменить пароль', 'fa fa-lock', 'changepassword', 'ru', 4);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `nav_type` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aditional1` text COLLATE utf8_unicode_ci,
  `aditional2` text COLLATE utf8_unicode_ci,
  `aditional3` text COLLATE utf8_unicode_ci,
  `aditional4` text COLLATE utf8_unicode_ci,
  `aditional5` text COLLATE utf8_unicode_ci,
  `aditional6` text COLLATE utf8_unicode_ci,
  `aditionaljson` text COLLATE utf8_unicode_ci,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `usefull_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `cssclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `terms`, `map`, `aditional1`, `aditional2`, `aditional3`, `aditional4`, `aditional5`, `aditional6`, `aditionaljson`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(2, 1, 0, 1504340572, 0, 'plugin', 'Home', '', '<p>Home Page</p>', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'home', 'slider', '', '', 'en', 1, 0, 0),
(3, 1, 0, 1504340572, 0, 'plugin', 'მთავარი', '<p>შპს \"VIP Intellect Group\" გამორჩეული მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, ჩვენი&nbsp;გუნდი უკვე 17 წელია ატარებს ტრენინგებს სხვადასხვა მიმართულებით. უკვე ასობით ადგილობრივი თუ საერთაშორისო კომპანიის კადრები არიან ჩვენი კურსდამთავრებულები</p>', '<p>მთავარი გვერდი</p>', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'home', 'slider', '', '', 'ge', 1, 0, 0),
(324, 138, 136, 1538831994, 0, 'text', 'სართული 9', '<p>Floor 9</p>', '<p>Floor 9</p>', '<p>Floor 9</p>', '41.694618163949855,44.80085620117188', '42, 327, 252, 239, 284, 233, 314, 236, 345, 223, 579, 324, 578, 268, 336, 159, 312, 168, 279, 169, 41, 276', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '{\"aditional1\":\"\\u10d9\\u10dd\\u10e0\\u10d3\\u10d8\\u10dc\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\",\"aditional2\":\"NULL\",\"aditional3\":\"NULL\",\"aditional4\":\"NULL\",\"aditional5\":\"NULL\",\"aditional6\":\"NULL\"}', 'floor9', 'floor9', '', '', 'ge', 1, 0, 1),
(323, 138, 136, 1538831994, 0, 'text', 'Floor 9', '<p>Floor 9</p>', '<p>Floor 9</p>', '<p>Floor 9</p>', '41.694618163949855,44.80085620117188', '42, 327, 252, 239, 284, 233, 314, 236, 345, 223, 579, 324, 578, 268, 336, 159, 312, 168, 279, 169, 41, 276', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '{\"aditional1\":\"\\u10d9\\u10dd\\u10e0\\u10d3\\u10d8\\u10dc\\u10d0\\u10e2\\u10d4\\u10d1\\u10d8\",\"aditional2\":\"NULL\",\"aditional3\":\"NULL\",\"aditional4\":\"NULL\",\"aditional5\":\"NULL\",\"aditional6\":\"NULL\"}', 'floor9', 'floor9', '', '', 'en', 1, 0, 1),
(117, 36, 35, 1523523185, 0, 'text', 'test training', '<p>test training</p>', '<p>test training</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test-training', 'false', '', '', 'en', 1, 0, 0),
(118, 36, 35, 1523523185, 0, 'text', 'test training', '<p>test training</p>', '<p>&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა</p>\n<p>&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=2mJFAOcwd38]</p>\n<p>&nbsp;</p>\n<p>&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, <a href=\"http://myvideo.ge\">გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო</a>, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა</p>\n<p>&nbsp;</p>\n<ul>\n<li>akklasd</li>\n<li>asdasda</li>\n<li>assdasda</li>\n<li>asdasd</li>\n</ul>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test-training', 'false', '', '', 'ge', 1, 0, 0),
(119, 37, 35, 1523523229, 0, 'text', 'klalkadad', '<p>kalsdlkaklsd</p>', '<p>aklsdklad</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'klalkadad', 'false', '', '', 'en', 2, 0, 0),
(120, 37, 35, 1523523229, 0, 'text', 'klalkadad', '<p>kalsdlkaklsd</p>', '<p>aklsdklad</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'klalkadad', 'false', '', '', 'ge', 2, 0, 0),
(289, 122, 0, 1537279129, 0, 'plugin', 'Projects', '', '<p>projects</p>', '', '41.694618163949855, 44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'projects', 'false', '', 'http://atori.ge/en/on-going', 'en', 2, 0, 0),
(290, 122, 0, 1537279129, 0, 'plugin', 'პროექტები', '', '<p>projects</p>', '', '41.694618163949855, 44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'projects', '', '', 'http://atori.ge/ge/on-going', 'ge', 2, 0, 0),
(291, 123, 0, 1537279181, 0, 'text', 'About ', '', '<p>Investment-Development Company ATORI, was founded in 2012. We are one of the leading companies providing services within the Georgian real estate market. Historically, ATORI has been focused on the construction of premium residential houses and apartments in Tbilisi&rsquo;s central districts for other firms. We have now begun to build our own elite multifunctional construction, starting with our ATORI Tower that will crown our company\'s many achievements.</p>\n<p><strong>Awards:</strong></p>\n<ul>\n<li>In 2018, Investment Development Company ATORI, According to the results of 2016-2017 by ATORI National business union Ratings, following ratings were given:\n<ul>\n<li>Gold in Georgian-Owned Enterprises in Overall Financial-Economic Activity.</li>\n<li>Gold in All Enterprises in Overall Financial-Economic Activity.</li>\n</ul>\n</li>\n<li>In 2017, EBRD Investment Development Company named ATORI one of the best companies in high quality and energy efficient</li>\n</ul>\n<p>&nbsp;ATORI&rsquo;s success rests upon our three key values:</p>\n<ul>\n<li><strong>Client Satisfaction.</strong></li>\n<li><strong>Quality of Construction.</strong></li>\n<li><strong>Speedy Results</strong></li>\n</ul>\n<p><strong>C</strong><strong>lient </strong><strong>S</strong><strong>atisfaction</strong><strong>: </strong>This is our primary value. ATORI considers our clients as partners in creating our shared neighborhoods. To that end, ATORI offers clients customized planning, beautiful exterior and interior designs, their choice of options between black and white framework, and finished repairs.</p>\n<p><strong>Quality of Construction: </strong>Buildings built by ATORI are distinguished by their high standard construction materials and energy efficiency.</p>\n<p><strong>Speedy Results</strong><strong>: </strong>All projects are completed within our clients&rsquo; designated deadlines, ensuring that our clients have made the right decision in trusting us with their construction needs.</p>\n<p>ATORI uses world-famous, branded products in all their building materials. Among them are Betekeoboboks, which is distinguished as the best thermal insulation in the Georgian market. Its use has been known to reduce energy costs by 30%.</p>\n<p>Additionally, ATORI uses world famous Iron which is distinguished in its firmness, density, and resistance to rust.</p>\n<p>Also we use the highest quality wood, Siberian Cylinder Larix, in forming our door-windows. We utilize an energy efficient glass-pack which can reduce a third of our clients&rsquo; energy costs and incoming noise.</p>\n<p>Our quality is also further guaranteed by Heidelberg&rsquo;s highest mark quality cement.</p>\n<p>&nbsp;</p>', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'about-us', '', '', '', 'en', 3, 0, 0),
(292, 123, 0, 1537279181, 0, 'text', 'ჩვენ შესახებ', '', '<p>&nbsp;</p>\n<h1>ჩვენ შესახებ</h1>\n<p>საინვესტიციო დეველოპერული კომპანია ათორი დაარსდა 2012 წელს.კომპანიას საქართველოს უძრავი ქონების ბაზარზე ერთ-ერთი წამყვანი პოზიცია უკავია. ისტორიულად ათორი ორიენტირებულია ცენტრალურ უბნებში პრეიუმ კლასის საცხოვრებელი სახლების მშენებლობაზე , თუმცა იწყებს ბიზნესისთვის განკუთვნილ უძრავი ქონების ბაზარზე შესვლას და ელიტარული,მრავალფუნქციური - ათორი თაუერის მშენებლობას,რომელიც&nbsp; იქნება კომპანიის არსებული მიღწევების დაგვირგვინება.</p>\n<h2>ჩვენი მიდგომა</h2>\n<p>კომპანია ათორის წარმატების საიდულმო სამ ღირებულებას ეყრდნობა. ეს ღირებულებებია:</p>\n<ul>\n<li>კლიენტის კმაყოფილება;</li>\n<li>მშენებლობის ხარისხი;</li>\n<li>მშენებლობის სისწრაფე.</li>\n</ul>\n<p>მთავარი ღირებულება <strong>კლიენტის კმაყოფილებაა.</strong> ათორი კლიენტს განიხილავს როგორც პარტნიორს, რომელსაც კომპანიის მიერ შექმნილ სამეზობლოს განვითარებაში თავისი წვლილი შეაქვს.</p>\n<p>ათორი კლიენტებს სთავაზობს მათ საჭიროებებზე მორგებულ&nbsp; დაგეგმარებას,&nbsp; ექსტერიერისა და ინტერიერის ლამაზ დიზაინს და მათი სურვილის მიხედვით არჩევანს : შავ და თეთრ კარკასსა და დასრულებულ რემონტს შორის.</p>\n<p><strong>მშენებლობის ხარისხი.</strong> ათორის მიერ აშენებული კორპუსები გამოირჩევა კონსტრუქციის მედეგობით და ენერგოეფექტურობით,რაც გამოწვეულია მაღალი სტანდარტის სამშენებლო მასალის გამოყენებით.</p>\n<p>სამშენებლო მასალად ათორი იყენებს მსოფლიოში აღიარებული ბრენდების პროდუქციას.მათ შორის : - ქართულ ბაზარზე საუკეთესო თბოსაიზოლაციო თვისებებით გამორჩეულ ბედეგის იზობლოკს. მისი გამოყენება დაახლოებით 30% -ით ამცირებს სახლის ენერგო-დანახარჯებს.</p>\n<p>ამას გარდა, ათორი მშენებლობებში იყენებს მსოფლიოში ცნობილი ბრენდის ArcelorMittal -ის არმატურას,რომელიც გამოირჩევა სიმტკიცით,სიმკვრივით და ჟანგის მიმართ მდგრადობით.</p>\n<p>ასევე - უმაღლესი ხარისხის ხის -ციმბირული &bdquo;ლარიქსის&ldquo; - კარ-ფანჯარა,ენერგოეფექტური მინა-პაკეტით. მისი გამოყენება სახლის ენერგო-დანახარჯებს დაახლოებით 30% -ით ამცირებს. ასევე ეფექტურია შემომავალი ხმაურის შესამცირებლად.</p>\n<p>მშენებლობების ხარისხის გარანტიაა ასევე - ჰაიდელბერგის 400-იანი მარკის ცემენტი.</p>\n<p><strong>მშენებლობის სისწრაფე :</strong> ყველა პროექტი დასრულდა წინასწარ გამოცხადებულ ვადებში,ეს კიდევ ერთი მიზეზია, რისთვისაც ათორი კლენტების ნდობას იმსახურებს.</p>\n<h2>ჯილდოები</h2>\n<p>2018 წელს - საინვესტიციო დეველოპერული კომპანია ათორს ნაციონალური ბიზნეს - რეიტინგების კავშირის მიერ&nbsp; , 2016-2017 წლების შედეგების მიხედვით მიენიჭა შემდეგი რეიტინგი:</p>\n<ul>\n<li>რეიტინგი ოქრო საქართველოს საწარმოებს შორის ფინანსურ-სამეურნეო საქმიანობის მიხედვით \"ჯამური ადგილი\";</li>\n<li>რეიტინგიოქროთბილისისსაწარმოებსშორისფინანსურ-სამეურნეოსაქმიანობისმიხედვით \"ჯამურიადგილი\".</li>\n</ul>\n<p>2017 წელს EBRD-ის მიერ საინვესტიციო დეველოპერულ კომპანია ათორი დასახელდა ერთ-ერთ საუკეთესო კომპანიად მშენებლობის მაღალი ხარისხისა და ენერგოეფექტურობის მიხედვით.</p>\n<p>&nbsp;</p>', '', '41.694618163949855, 44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'about-us', '', '', '', 'ge', 3, 0, 0),
(293, 124, 0, 1537279207, 0, 'plugin', 'Contact Us', '', '<p>+995 555 85 22 88&nbsp;</p>\n<p>+995 577 59 99 88&nbsp;</p>', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'contact-us', 'contactdata', '', '', 'en', 4, 0, 0),
(294, 124, 0, 1537279207, 0, 'plugin', 'კონტაქტი', '', '<p>+995 555 85 22 88</p>\n<p>+995 577 59 99 88</p>', '', '41.694618163949855, 44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'contact-us', 'contactdata', '', '', 'ge', 4, 0, 0),
(309, 132, 122, 1538485035, 0, 'plugin', 'Ongoing projects', '', '', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '{\"aditional1\":\"Address\",\"aditional2\":\"Deadline date\",\"aditional3\":\"Stories\",\"aditional4\":\"Recreation\",\"aditional5\":\"Parking\",\"aditional6\":\"NULL\"}', 'on-going', 'false', '', '', 'en', 1, 0, 0),
(310, 132, 122, 1538485035, 0, 'plugin', 'მიმდინარე პროექტები', '<p>მიმდინარე პროექტები</p>', '<p>მიმდინარე პროექტები</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"aditional1\":\"\\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8\",\"aditional2\":\"\\u10e9\\u10d0\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10d8\\u10e6\\u10d8\",\"aditional3\":\"\\u10e1\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\",\"aditional4\":\"\\u10e0\\u10d4\\u10d9\\u10e0\\u10d8\\u10d0\\u10ea\\u10d8\\u10e3\\u10da\\u10d8 \\u10d6\\u10dd\\u10dc\\u10d0\",\"aditional5\":\"\\u10de\\u10d0\\u10e0\\u10d9\\u10d8\\u10dc\\u10d2\\u10d8\",\"aditional6\":\"NULL\"}', 'on-going', 'false', '', '', 'ge', 1, 0, 0),
(317, 136, 132, 1538564680, 0, 'catalog', 'Atori tower', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia.</p>', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>&nbsp;</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '41.7232271,44.7604646', 'Modern, elegant hous ebuilidng in vake, Abashidze street 55', 'Finishes in June 2019', '35', '3', '345', 'NULL', NULL, 'atori-tower', 'languagedata', '', '', 'en', 1, 0, 1),
(318, 136, 132, 1538564680, 0, 'catalog', 'ათორი ცათამჯენი', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia.</p>', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>&nbsp;</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '41.7232271,44.7604646', 'Modern, elegant hous ebuilidng in vake, Abashidze street 55.', 'Finishes in June 2019', '35', '3', '365', 'NULL', NULL, 'atori-tower', 'false', '', '', 'ge', 1, 0, 1),
(322, 137, 122, 1538744070, 0, 'text', 'დასრულებული პროექტები', '', '<p>Completed projects</p>', '', '41.694618163949855,44.80085620117188', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '{\"aditional1\":\"\\u10e1\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\",\"aditional2\":\"\\u10e0\\u10d4\\u10d9\\u10e0\\u10d4\\u10d0\\u10ea\\u10d8\\u10e3\\u10da\\u10d8 \\u10d6\\u10dd\\u10dc\\u10d0\",\"aditional3\":\"\\u10de\\u10d0\\u10e0\\u10d9\\u10d8\\u10dc\\u10d2\\u10d8\",\"aditional4\":\"NULL\",\"aditional5\":\"NULL\",\"aditional6\":\"NULL\"}', 'completed-projects', 'false', '', '', 'ge', 2, 0, 0),
(321, 137, 122, 1538744070, 0, 'plugin', 'Completed projects', '<p>Completed projects</p>', '<p>Completed projects</p>', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '{\"aditional1\":\"\\u10e1\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d4\\u10d1\\u10d8\",\"aditional2\":\"\\u10e0\\u10d4\\u10d9\\u10e0\\u10d4\\u10d0\\u10ea\\u10d8\\u10e3\\u10da\\u10d8 \\u10d6\\u10dd\\u10dc\\u10d0\",\"aditional3\":\"\\u10de\\u10d0\\u10e0\\u10d9\\u10d8\\u10dc\\u10d2\\u10d8\",\"aditional4\":\"NULL\",\"aditional5\":\"NULL\",\"aditional6\":\"NULL\"}', 'completed-projects', 'false', '', '', 'en', 2, 0, 0),
(325, 139, 137, 1538901073, 0, 'text', 'Burdzgla 46', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '', '41.694618163949855,44.80085620117188', '11', '2', '120', 'NULL', 'NULL', 'NULL', NULL, 'Burdzgla-46', 'false', '', '', 'en', 1, 0, 1),
(326, 139, 137, 1538901073, 0, 'text', 'ბურძგლა 46', '', '<p>ქართული ტექსტი ვრცელი აღწერაქართული ტექსტი ვრცელი აღწერაქართული ტექსტი ვრცელი აღწერაქართული ტექსტი ვრცელი აღწერა</p>', '', '41.694618163949855,44.80085620117188', '11', '2', '120', 'NULL', 'NULL', 'NULL', NULL, 'Burdzgla-46', '', '', '', 'ge', 1, 0, 1),
(339, 146, 0, 1539074814, 0, 'text', 'test', '', '<p>askjdnasjkdn jkasnd kjasdnjkasd</p>', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'test1539074814', '', '', 'en', 5, 0, 1),
(340, 146, 0, 1539074814, 0, 'text', 'test', '', '<p>askjdnasjkdn jkasnd kjasdnjkasd</p>', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'test1539074814', '', '', 'ge', 5, 0, 1),
(327, 140, 132, 1538926513, 0, 'catalog', 'Abashidze 55', '<p>Abashidze 55jasd jkasdnk</p>', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>', '41.694618163949855,44.80085620117188', '', '', '', '', '', 'NULL', NULL, 'abashidze-55', '', '', '', 'en', 2, 0, 1),
(328, 140, 132, 1538926513, 0, 'catalog', 'Abashidze 55', '<p>Abashidze 55jasd jkasdnk</p>', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abashidze-55', '', '', '', 'ge', 2, 0, 1),
(329, 141, 132, 1538927856, 0, 'catalog', 'Abashidze 55 - HIDDEN', '', '<p>Premium Class Residential</p>', '<p>Premium Class Residential</p>', '41.708500125424514,44.7584451122284', 'Premium Class Residential', '', '12', '', '55', 'NULL', '{\"aditional1\":\"\\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8\",\"aditional2\":\"\\u10de\\u10e0\\u10dd\\u10d4\\u10e5\\u10e2\\u10d8\\u10e1 \\u10e9\\u10d0\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10d8\\u10e6\\u10d8\",\"aditional3\":\"\\u10e1\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8\",\"aditional4\":\"\\u10e0\\u10d4\\u10d9\\u10e0\\u10d4\\u10d0\\u10ea\\u10d8\\u10e3\\u10da\\u10d8 \\u10d6\\u10dd\\u10dc\\u10d0\",\"aditional5\":\"\\u10de\\u10d0\\u10e0\\u10d9\\u10d8\\u10dc\\u10d2\\u10d8\",\"aditional6\":\"NULL\"}', 'abashidze-34', 'languagedata', '', '', 'en', 2, 1, 0),
(330, 141, 132, 1538927856, 0, 'catalog', 'აბაშიძე 55 - HIDDEN', '', '<ul>\n<li>შეიძინეთ ბინები თბილისის ცენტრში ყველაზე პრესტიჟულ და წყნარ გარემოში აბაშიძის N55&nbsp;</li>\n<li>500 მეტრში ვაკის პარკიდან</li>\n<li>სუფთა ჰაერი და გამწვანებული გარემო</li>\n<li>ქვით მოპირკეთებული ფასადი</li>\n<li>ალუმინის კარ-ფანჯარა</li>\n<li>ინდივიდუალური აივანი ყველა ბინას</li>\n<li>ოპტიმალური და პრაქტიკული ბინების დაგეგმარება</li>\n<li>ფართები 50 მ2 დან</li>\n<li>დახურული პარკირების ზონა</li>\n<li>ჩაბარების პირობები:&nbsp;თეთრი კარკასი ,&nbsp;მწვანე კარკასი , სრული რემონტი</li>\n<li>დიზაინერთან კონსულტაცია</li>\n<li>სარემონტო მასალების შერჩევა ინდივიდუალურად&nbsp;</li>\n</ul>', '<ul>\n<li>შეიძინეთ ბინები თბილისის ცენტრში ყველაზე პრესტიჟულ და წყნარ გარემოში აბაშიძის N55&nbsp;</li>\n<li>500 მეტრში ვაკის პარკიდან</li>\n<li>სუფთა ჰაერი და გამწვანებული გარემო</li>\n<li>ქვით მოპირკეთებული ფასადი</li>\n<li>ალუმინის კარ-ფანჯარა</li>\n<li>ინდივიდუალური აივანი ყველა ბინას</li>\n<li>ოპტიმალური და პრაქტიკული ბინების დაგეგმარება</li>\n<li>ფართები 50 მ2 დან</li>\n<li>დახურული პარკირების ზონა</li>\n<li>ჩაბარების პირობები:&nbsp;თეთრი კარკასი ,&nbsp;მწვანე კარკასი , სრული რემონტი</li>\n<li>დიზაინერთან კონსულტაცია</li>\n<li>სარემონტო მასალების შერჩევა ინდივიდუალურად&nbsp;</li>\n</ul>', '41.70850413017421,44.75842901897431', 'პრემიუმ კლასის საცხოვრებელი სახლი', '', '12', '', '55', 'NULL', '{\"aditional1\":\"\\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8\",\"aditional2\":\"\\u10de\\u10e0\\u10dd\\u10d4\\u10e5\\u10e2\\u10d8\\u10e1 \\u10e9\\u10d0\\u10d1\\u10d0\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10d8\\u10e6\\u10d8\",\"aditional3\":\"\\u10e1\\u10d0\\u10e0\\u10d7\\u10e3\\u10da\\u10d8\",\"aditional4\":\"\\u10e0\\u10d4\\u10d9\\u10e0\\u10d4\\u10d0\\u10ea\\u10d8\\u10e3\\u10da\\u10d8 \\u10d6\\u10dd\\u10dc\\u10d0\",\"aditional5\":\"\\u10de\\u10d0\\u10e0\\u10d9\\u10d8\\u10dc\\u10d2\\u10d8\",\"aditional6\":\"NULL\"}', 'abashidze-34', 'languagedata', '', '', 'ge', 2, 1, 0),
(331, 142, 141, 1538929984, 0, 'text', 'Floor 1', '<p>floor</p>', '<p>flasasd</p>', '<p>asdaDS</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'floor1', '', '', '', 'en', 1, 0, 1),
(332, 142, 141, 1538929984, 0, 'text', 'Floor 1', '<p>floor</p>', '<p>flasasd</p>', '<p>asdaDS</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'floor1', '', '', '', 'ge', 1, 0, 1),
(333, 143, 141, 1538930103, 0, 'text', 'floor 1', '<p>floor1</p>', '<p>floor1</p>', '<p>floor1</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'floor1', '', '', '', 'en', 1, 0, 1),
(334, 143, 141, 1538930103, 0, 'text', 'floor 1', '<p>floor1</p>', '<p>floor1</p>', '<p>floor1</p>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'floor1', '', '', '', 'ge', 1, 0, 1),
(335, 144, 141, 1538930309, 0, 'text', 'Floor 1', '<p>floor1</p>', '<p>floor1</p>', '<p>floor1</p>', '41.694618163949855,44.80085620117188', '117,576,558,578,563,679,115,674', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'floor1', 'floor1', '', '', 'en', 1, 0, 1),
(336, 144, 141, 1538930309, 0, 'text', 'სართული 1', '<p>floor1</p>', '<p>floor1</p>', '<p>floor1</p>', '41.694618163949855,44.80085620117188', '', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'floor1', 'floor1', '', '', 'ge', 1, 0, 1),
(337, 145, 141, 1538991181, 0, 'catalog', 'Floor 1', '', '', '', '41.694618163949855,44.80085620117188', '34, 758, 285, 766, 311, 766, 348, 766, 694, 765, 694, 715, 347, 697, 310, 699, 284, 699, 34, 707', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'abashidze34-floor-1', 'abashidze34-floor-11538991181', '', '', 'en', 1, 0, 1),
(338, 145, 141, 1538991181, 0, 'catalog', 'სართული 1', '<p>Floor 1</p>', '<p>floor 1</p>', '', '41.694618163949855,44.80085620117188', '35,765,35,703,346,694,693,715,694,767,350,769,195,769,86,765,281,771,144,766', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'abashidze34-floor-1', 'abashidze34-floor-11538991181', '', '', 'ge', 1, 0, 1),
(345, 149, 141, 1539088766, 0, 'text', 'Floor 2', '', '', '', '', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539088754', 'slug15390887541539088766', '', '', 'en', 2, 0, 1),
(341, 147, 141, 1539075479, 0, 'text', 'Floor 2', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slug1539075456', 'slug15390754561539075479', '', '', 'en', 2, 0, 1),
(342, 147, 141, 1539075479, 0, 'text', 'Floor 2', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slug1539075456', 'slug15390754561539075479', '', '', 'ge', 2, 0, 1),
(343, 148, 141, 1539086357, 0, 'text', 'Floor 2', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slug1539086190', 'slug15390861901539086357', '', '', 'en', 2, 0, 1),
(344, 148, 141, 1539086357, 0, 'text', 'Floor 2', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slug1539086190', 'slug15390861901539086357', '', '', 'ge', 2, 0, 1),
(346, 149, 141, 1539088766, 0, 'text', 'Floor 2', '', '', '', '', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539088754', 'slug15390887541539088766', '', '', 'ge', 2, 0, 1),
(347, 150, 141, 1539088916, 0, 'text', 'Floor 2', '', '', '', '', '35,694,35,706,345,699,694,717,694,664,343,632,280,634,33,652,27,661,26,693', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539088903', 'slug15390889031539088916', '', '', 'en', 2, 0, 1),
(348, 150, 141, 1539088916, 0, 'text', 'სართული 2', '', '', '', '41.694618163949855, 44.80085620117188', '35,694,35,706,345,699,694,717,694,664,343,632,280,634,33,652,27,661,26,693', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539088903', 'slug15390889031539088916', '', '', 'ge', 2, 0, 1),
(349, 151, 141, 1539090214, 0, 'text', 'Floor 2', '', '', '', '', '35,694,35,706,345,699,694,717,694,664,343,632,280,634,33,652,27,661,26,693', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539090156', 'slug15390901561539090214', '', '', 'en', 2, 0, 1),
(350, 151, 141, 1539090214, 0, 'text', 'Floor 2', '', '', '', '', '35,694,35,706,345,699,694,717,694,664,343,632,280,634,33,652,27,661,26,693', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539090156', 'slug15390901561539090214', '', '', 'ge', 2, 0, 1),
(351, 152, 141, 1539250171, 0, 'text', 'Floor 0', '', '', '', '41.694618163949855, 44.80085620117188', '33, 811, 345, 842, 695, 828, 694, 765, 348, 766, 311, 765, 285, 765, 33, 757', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539250051', 'slug15392500511539250171', '', '', 'en', 1, 0, 1),
(352, 152, 141, 1539250171, 0, 'text', 'Floor 1', '', '', '', '41.694618163949855, 44.80085620117188', '33, 811, 345, 842, 695, 828, 694, 765, 348, 766, 311, 765, 285, 765, 33, 757', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539250051', 'slug15392500511539250171', '', '', 'ge', 1, 0, 1),
(353, 153, 141, 1539251215, 0, 'text', 'Floor 3', '', '', '', '41.694618163949855, 44.80085620117188', '34, 707, 283, 699, 310, 698, 347, 696, 694, 715, 694, 666, 345, 628, 311, 630, 276, 631, 33, 651, 33, 662, 26, 662, 26, 691, 34, 691', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251210', 'slug15392512101539251215', '', '', 'en', 1, 0, 1),
(354, 153, 141, 1539251215, 0, 'text', 'Floor 3', '', '', '', '', '33, 704, 282, 696, 310, 696, 347, 694, 694, 714, 694, 666, 345, 628, 311, 630, 276, 631, 33, 651, 33, 662, 26, 661, 26, 691, 34, 691', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251210', 'slug15392512101539251215', '', '', 'ge', 1, 0, 1),
(355, 154, 141, 1539251500, 0, 'text', 'Floor 4', '', '', '', '', '32, 650, 276, 631, 311, 630, 345, 628, 694, 666, 693, 618, 349, 560, 311, 564, 276, 562, 32, 597', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251494', 'slug15392514941539251500', '', '', 'en', 1, 0, 1),
(356, 154, 141, 1539251500, 0, 'text', 'Floor 4', '', '', '', '', '32, 650, 276, 631, 311, 630, 345, 628, 694, 666, 693, 618, 349, 560, 311, 564, 276, 562, 32, 597', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251494', 'slug15392514941539251500', '', '', 'ge', 1, 0, 1),
(357, 155, 141, 1539251623, 0, 'text', 'Floor 5', '', '', '', '', '31, 597, 276, 562, 312, 564, 348, 559, 693, 618, 692, 569, 347, 492, 312, 498, 282, 494, 34, 543, 34, 551, 26, 551, 26, 593', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251618', 'slug15392516181539251623', '', '', 'en', 2, 0, 1),
(358, 155, 141, 1539251623, 0, 'text', 'Floor 5', '', '', '', '', '31, 597, 276, 562, 312, 564, 348, 559, 693, 618, 692, 569, 347, 492, 312, 498, 282, 494, 34, 543, 34, 551, 26, 551, 26, 593', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251618', 'slug15392516181539251623', '', '', 'ge', 2, 0, 1),
(359, 156, 141, 1539251963, 0, 'text', 'Floor 6', '', '', '', '', '33, 543, 281, 494, 312, 498, 345, 492, 692, 568, 692, 519, 348, 424, 312, 432, 280, 424, 35, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251958', 'slug15392519581539251963', '', '', 'en', 1, 0, 1),
(360, 156, 141, 1539251963, 0, 'text', 'Floor 6', '', '', '', '', '33, 543, 281, 494, 312, 498, 345, 492, 692, 568, 692, 519, 348, 424, 312, 432, 280, 424, 35, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539251958', 'slug15392519581539251963', '', '', 'ge', 1, 0, 1),
(361, 157, 141, 1539254691, 0, 'text', 'Floor 7', '', '', '', '', '34, 489, 280, 424, 311, 432, 348, 424, 692, 519, 692, 470, 575, 433, 344, 356, 312, 366, 281, 361, 36, 436, 37, 445, 28, 445, 28, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254686', 'slug15392546861539254691', '', '', 'en', 1, 0, 1),
(362, 157, 141, 1539254691, 0, 'text', 'Floor 7', '', '', '', '', '34, 489, 280, 424, 311, 432, 348, 424, 692, 519, 692, 470, 575, 433, 344, 356, 312, 366, 281, 361, 36, 436, 37, 445, 28, 445, 28, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254686', 'slug15392546861539254691', '', '', 'ge', 1, 0, 1),
(363, 158, 141, 1539254785, 0, 'text', 'Floor 8', '', '', '', '41.694618163949855, 44.80085620117188', '36, 435, 280, 361, 311, 367, 344, 357, 580, 434, 579, 379, 345, 290, 314, 301, 280, 294, 37, 383', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254779', 'slug15392547791539254785', '', '', 'en', 2, 0, 1),
(364, 158, 141, 1539254785, 0, 'text', 'Floor 8', '', '', '', '41.694618163949855, 44.80085620117188', '36, 435, 280, 361, 311, 367, 344, 357, 580, 434, 579, 379, 345, 290, 314, 301, 280, 294, 37, 383', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254779', 'slug15392547791539254785', '', '', 'ge', 2, 0, 1),
(365, 159, 141, 1539254942, 0, 'text', 'Floor 9', '', '', '', '', '36, 383, 279, 294, 312, 301, 343, 290, 579, 379, 579, 325, 344, 224, 312, 237, 281, 230, 37, 330', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254936', 'slug15392549361539254942', '', '', 'en', 1, 0, 1),
(366, 159, 141, 1539254942, 0, 'text', 'Floor 9', '', '', '', '', '36, 383, 279, 294, 312, 301, 343, 290, 579, 379, 579, 325, 344, 224, 312, 237, 281, 230, 37, 330', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539254936', 'slug15392549361539254942', '', '', 'ge', 1, 0, 1),
(367, 160, 141, 1539255024, 0, 'text', 'Floor 10', '', '', '', '', '37, 330, 280, 229, 312, 237, 343, 224, 579, 325, 579, 273, 343, 158, 313, 172, 279, 165, 39, 279', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255019', 'slug15392550191539255024', '', '', 'en', 1, 0, 1),
(368, 160, 141, 1539255024, 0, 'text', 'Floor 10', '', '', '', '', '37, 330, 280, 229, 312, 237, 343, 224, 579, 325, 579, 273, 343, 158, 313, 172, 279, 165, 39, 279', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255019', 'slug15392550191539255024', '', '', 'ge', 1, 0, 1),
(369, 161, 141, 1539255130, 0, 'text', 'Floor 11', '', '', '', '', '39, 279, 279, 165, 312, 172, 343, 157, 579, 272, 578, 219, 347, 90, 313, 108, 280, 93, 39, 219, 39, 232, 32, 231, 31, 271', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255125', 'slug15392551251539255130', '', '', 'en', 1, 0, 1),
(370, 161, 141, 1539255130, 0, 'text', 'Floor 11', '', '', '', '', '39, 279, 279, 165, 312, 172, 343, 157, 579, 272, 578, 219, 347, 90, 313, 108, 280, 93, 39, 219, 39, 232, 32, 231, 31, 271', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255125', 'slug15392551251539255130', '', '', 'ge', 1, 0, 1),
(371, 162, 141, 1539255189, 0, 'text', 'Floor 12', '', '', '', '', '38, 219, 280, 93, 313, 108, 347, 90, 578, 218, 577, 144, 385, 21, 292, 71, 282, 70, 39, 207', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255185', 'slug15392551851539255189', '', '', 'en', 1, 0, 1),
(372, 162, 141, 1539255189, 0, 'text', 'Floor 12', '', '', '', '', '38, 219, 280, 93, 313, 108, 347, 90, 578, 218, 577, 144, 385, 21, 292, 71, 282, 70, 39, 207', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1539255185', 'slug15392551851539255189', '', '', 'ge', 1, 0, 1),
(373, 163, 141, 1540907976, 0, 'text', 'Floor 2', '', '', '', '41.694618163949855, 44.80085620117188', '34, 758, 285, 766, 311, 766, 348, 766, 694, 765, 694, 715, 347, 697, 310, 699, 284, 699, 34, 707', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540907941', 'slug15409079411540907976', '', '', 'en', 2, 1, 0),
(374, 163, 141, 1540907976, 0, 'text', 'სართული 2', '', '', '', '41.694618163949855, 44.80085620117188', '34, 758, 285, 766, 311, 766, 348, 766, 694, 765, 694, 715, 347, 697, 310, 699, 284, 699, 34, 707', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540907941', 'slug15409079411540907976', '', '', 'ge', 2, 1, 0),
(375, 164, 141, 1540910065, 0, 'text', 'Floor 3', '', '', '', '41.694618163949855, 44.80085620117188', '34, 707, 283, 699, 310, 698, 347, 696, 694, 715, 694, 666, 345, 628, 311, 630, 276, 631, 33, 651, 33, 662, 26, 662, 26, 691, 34, 691', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910061', 'slug15409100611540910065', '', '', 'en', 3, 1, 0),
(376, 164, 141, 1540910065, 0, 'text', 'სართული 3', '', '', '', '41.694618163949855, 44.80085620117188', '34, 707, 283, 699, 310, 698, 347, 696, 694, 715, 694, 666, 345, 628, 311, 630, 276, 631, 33, 651, 33, 662, 26, 662, 26, 691, 34, 691', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910061', 'slug15409100611540910065', '', '', 'ge', 3, 1, 0),
(377, 165, 141, 1540910180, 0, 'text', 'Floor 4', '', '', '', '41.694618163949855, 44.80085620117188', '32, 650, 276, 631, 311, 630, 345, 628, 694, 666, 693, 618, 349, 560, 311, 564, 276, 562, 32, 597', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910159', 'slug15409101591540910180', '', '', 'en', 4, 1, 0),
(378, 165, 141, 1540910180, 0, 'text', 'სართული 4', '', '', '', '41.694618163949855, 44.80085620117188', '32, 650, 276, 631, 311, 630, 345, 628, 694, 666, 693, 618, 349, 560, 311, 564, 276, 562, 32, 597', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910159', 'slug15409101591540910180', '', '', 'ge', 4, 1, 0),
(379, 166, 141, 1540910229, 0, 'text', 'Floor 5', '', '', '', '41.694618163949855, 44.80085620117188', '31, 597, 276, 562, 312, 564, 348, 559, 693, 618, 692, 569, 347, 492, 312, 498, 282, 494, 34, 543, 34, 551, 26, 551, 26, 593', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910207', 'slug15409102071540910228', '', '', 'en', 5, 1, 0),
(380, 166, 141, 1540910229, 0, 'text', 'სართული 5', '', '', '', '41.694618163949855, 44.80085620117188', '31, 597, 276, 562, 312, 564, 348, 559, 693, 618, 692, 569, 347, 492, 312, 498, 282, 494, 34, 543, 34, 551, 26, 551, 26, 593', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910207', 'slug15409102071540910228', '', '', 'ge', 5, 1, 0),
(381, 167, 141, 1540910255, 0, 'text', 'Floor 6', '', '', '', '41.694618163949855, 44.80085620117188', '33, 543, 281, 494, 312, 498, 345, 492, 692, 568, 692, 519, 348, 424, 312, 432, 280, 424, 35, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910235', 'slug15409102351540910255', '', '', 'en', 6, 1, 0),
(382, 167, 141, 1540910255, 0, 'text', 'სართული 6', '', '', '', '41.694618163949855, 44.80085620117188', '33, 543, 281, 494, 312, 498, 345, 492, 692, 568, 692, 519, 348, 424, 312, 432, 280, 424, 35, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910235', 'slug15409102351540910255', '', '', 'ge', 6, 1, 0),
(383, 168, 141, 1540910308, 0, 'text', 'Floor 9', '', '', '', '41.694618163949855, 44.80085620117188', '36, 383, 279, 294, 312, 301, 343, 290, 579, 379, 579, 325, 344, 224, 312, 237, 281, 230, 37, 330', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910287', 'slug15409102871540910308', '', '', 'en', 9, 1, 0),
(384, 168, 141, 1540910308, 0, 'text', 'სართული 9', '', '', '', '41.694618163949855, 44.80085620117188', '36, 383, 279, 294, 312, 301, 343, 290, 579, 379, 579, 325, 344, 224, 312, 237, 281, 230, 37, 330', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910287', 'slug15409102871540910308', '', '', 'ge', 9, 1, 0),
(385, 169, 141, 1540910353, 0, 'text', 'Floor 8', '', '', '', '41.694618163949855, 44.80085620117188', '36, 435, 280, 361, 311, 367, 344, 357, 580, 434, 579, 379, 345, 290, 314, 301, 280, 294, 37, 383', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910316', 'slug15409103161540910353', '', '', 'en', 8, 1, 0),
(386, 169, 141, 1540910353, 0, 'text', 'სართული 8', '', '', '', '41.694618163949855, 44.80085620117188', '36, 435, 280, 361, 311, 367, 344, 357, 580, 434, 579, 379, 345, 290, 314, 301, 280, 294, 37, 383', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540910316', 'slug15409103161540910353', '', '', 'ge', 8, 1, 0),
(387, 170, 141, 1540912667, 0, 'text', 'Floor 7', '', '', '', '41.694618163949855, 44.80085620117188', '34, 489, 280, 424, 311, 432, 348, 424, 692, 519, 692, 470, 575, 433, 344, 356, 312, 366, 281, 361, 36, 436, 37, 445, 28, 445, 28, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540912465', 'slug15409124651540912667', '', '', 'en', 7, 1, 0),
(388, 170, 141, 1540912667, 0, 'text', 'სართული 7', '', '', '', '41.694618163949855, 44.80085620117188', '34, 489, 280, 424, 311, 432, 348, 424, 692, 519, 692, 470, 575, 433, 344, 356, 312, 366, 281, 361, 36, 436, 37, 445, 28, 445, 28, 490', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540912465', 'slug15409124651540912667', '', '', 'ge', 7, 1, 0),
(389, 171, 141, 1540913716, 0, 'text', 'Floor 10', '', '', '', '41.694618163949855, 44.80085620117188', '37, 330, 280, 229, 312, 237, 343, 224, 579, 325, 579, 273, 343, 158, 313, 172, 279, 165, 39, 279', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540913613', 'slug15409136131540913716', '', '', 'en', 10, 1, 0),
(390, 171, 141, 1540913716, 0, 'text', 'სართული 10', '', '', '', '41.694618163949855, 44.80085620117188', '37, 330, 280, 229, 312, 237, 343, 224, 579, 325, 579, 273, 343, 158, 313, 172, 279, 165, 39, 279', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540913613', 'slug15409136131540913716', '', '', 'ge', 10, 1, 0),
(391, 172, 141, 1540918367, 0, 'text', 'Floor 11', '', '', '', '41.694618163949855, 44.80085620117188', '578,274,580,218,347,90,316,101,286,86,40,215,42,234,30,232,29,272,238,173,282,158,312,167,346,156', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540918322', 'slug15409183221540918367', '', '', 'en', 11, 1, 0),
(392, 172, 141, 1540918367, 0, 'text', 'სართული 11', '', '', '', '41.694618163949855, 44.80085620117188', '578,274,580,218,347,90,316,101,286,86,40,215,42,234,30,232,29,272,238,173,282,158,312,167,346,156', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540918322', 'slug15409183221540918367', '', '', 'ge', 11, 1, 0),
(393, 173, 141, 1540918464, 0, 'text', 'Floor 12', '', '', '', '41.694618163949855, 44.80085620117188', '576,144,578,217,347,91,314,98,39,226,38,207,285,69,383,20,478,81', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540918453', 'slug15409184531540918464', '', '', 'en', 12, 1, 0),
(394, 173, 141, 1540918464, 0, 'text', 'სართული 12', '', '', '', '41.694618163949855, 44.80085620117188', '576,144,578,217,347,91,314,98,39,226,38,207,285,69,383,20,478,81', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540918453', 'slug15409184531540918464', '', '', 'ge', 12, 1, 0),
(395, 174, 141, 1540983413, 0, 'text', 'Floor 1', '', '', '', '41.694618163949855, 44.80085620117188', '33, 811, 345, 842, 695, 828, 694, 765, 348, 766, 311, 765, 285, 765, 33, 757', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540983256', 'slug15409832561540983413', '', '', 'en', 1, 1, 0),
(396, 174, 141, 1540983413, 0, 'text', 'სართული 1', '', '', '', '41.694618163949855, 44.80085620117188', '33, 811, 345, 842, 695, 828, 694, 765, 348, 766, 311, 765, 285, 765, 33, 757', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1540983256', 'slug15409832561540983413', '', '', 'ge', 1, 1, 0),
(397, 175, 132, 1540991016, 0, 'text', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'slug1540990474', 'slug15409904741540991016', '', '', 'en', 2, 0, 1),
(398, 175, 132, 1540991016, 0, 'text', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'slug1540990474', 'slug15409904741540991016', '', '', 'ge', 2, 0, 1),
(399, 176, 132, 1540991341, 0, 'plugin', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'slug1540991285', 'slug15409912851540991341', '', '', 'en', 2, 0, 1),
(400, 176, 132, 1540991341, 0, 'plugin', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'slug1540991285', 'slug15409912851540991341', '', '', 'ge', 2, 0, 1),
(401, 177, 132, 1540991674, 0, 'plugin', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '41.694618163949855,44.80085620117188', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'atori-tower', 'atori-tower1540991674', '', '', 'en', 2, 0, 1),
(402, 177, 132, 1540991674, 0, 'plugin', 'Atori Tower', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 'First Class Multifunctional Skycrapper in Tbilisi, Georgia.', 'Acomplishment in July 2021.', '35', '3', '345', 'NULL', NULL, 'atori-tower', 'atori-tower1540991674', '', '', 'ge', 2, 0, 1),
(403, 178, 132, 1540992051, 0, 'catalog', 'Atori Tower', '', '<ul>\n<li>\n<p>Highest building in Tbilisi &ndash; 163 meters</p>\n</li>\n<li>\n<p>Right next to Subway (12 meters from metro entrance)</p>\n</li>\n<li>\n<p>Number of Floors : 35 Floors (Commercial - 6 meters high, living - 3.7 meters high)</p>\n</li>\n<li>\n<p>3 Recreation Zones (9 meters high)</p>\n</li>\n<li>\n<p>Commercial Area &ndash; 1-5 Floors</p>\n</li>\n<li>\n<p>Office Area &ndash; 6-10 Floors&nbsp;</p>\n</li>\n<li>\n<p>Residential apartment 11-32 Floors</p>\n</li>\n<li>\n<p>Bar and Restaurant &ndash; 33-35 Floors&nbsp;</p>\n</li>\n<li>\n<p>Balconies for each office and residential unit</p>\n</li>\n<li>\n<p>Spa, swimming pool&nbsp;</p>\n</li>\n<li>\n<p>Children\'s entertainment center, kindergarten&nbsp;</p>\n</li>\n<li>\n<p>More than 4000 m2 Yard and greenery&nbsp;</p>\n</li>\n<li>\n<p>Helicopter Landing Area</p>\n</li>\n<li>Football stadium on top of the building</li>\n</ul>', '<p>ATORI Tower is a special concept which will offer commercial, office, and residential spaces. The Tower will be divided into four different function zones, each one allocated with a nine-meter high ceiling. Recreational Zones where you can relax and enjoy the view of Tbilisi that as seen from our tower. All houses and office spaces will have individual balconies.&nbsp;</p>\n<p>ATORI Tower cares about the safety and comfort of its residents and will provide a 24 hour security service, ensure a clean main entrance, elevators, and provide green and sports focused recreational zones.</p>\n<p><strong>C</strong><strong>ommercial </strong><strong>S</strong><strong>pace</strong><strong>s </strong>will have a greater variation and will be provided with receptionists. The spaces will be located on the 1st - 5th floors and have a ceiling height of six meters allowing tenants to use the space to its fullest extent. Office space will be available on the 6th - 10th floors.</p>\n<p><strong>A</strong><strong>partment and</strong><strong> Hotel Space </strong>will be on the 11th &ndash; 32nd floors. Each apartment will feature a ceiling height of 3.7 meters. We will offer additional services to apartment owners who may choose to rent out their space.</p>\n<p>On the 33th &ndash; 35th floors, there will be areas for recreation and entertainment. Bars and restaurants may choose to have their establishments feature an elevator-only entrance.</p>\n<p>A mini football court will be available on the top floor and will be open to the ATORI Tower&rsquo;s residents and all fans of football.</p>\n<p>There will also be a helicopter landing pad made available upon request.</p>\n<p>ATORI Tower cares about the health of everyone who lives and works in its facilities. Therefore, we will provide a pool, spa, and exercise hall exclusively for them.</p>\n<p>Caring for children and giving them a sense of freedom is important for ATORI Tower. A 1,500 m2 kindergarten and children\'s entertainment center will made available for all of ATORI Tower&rsquo;s residents and office workers.</p>\n<p>Since parking is so difficult to find in Tbilisi, ATORI Tower will offer 15,000 m2 of underground parking.</p>\n<p>Also, the courtyard will have more than 4,100 sq/m of greenery.</p>', '41.7227794772378,44.71621641349793', 'The highest multifunctional , First-class skyscraper in Tbilisi', '', '35', '3', '250', 'NULL', NULL, 'atori-tower', 'atori-tower1540992051', '', '', 'en', 3, 0, 0);
INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `terms`, `map`, `aditional1`, `aditional2`, `aditional3`, `aditional4`, `aditional5`, `aditional6`, `aditionaljson`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(404, 178, 132, 1540992051, 0, 'catalog', 'ათორი თაუერი', '', '<ul>\n<li>ყველაზე მაღალი შენობა თბილისი &ndash; 163 მეტრი</li>\n<li>მეტროდან 12 მეტრში</li>\n<li>სართულების რაოდენობა : 35 სართული (კომერციული - 6 მეტრი სიმაღლის, საცხოვრებელი - 3.7 მეტრი სიმაღლის)</li>\n<li>3 სარეკრეაციო ზონა (9 მეტრი სიმაღლის)</li>\n<li>კომერციული ფართი &ndash; 1-5 სართული</li>\n<li>საოფისე ფართი &ndash; 6-10 სართული</li>\n<li>საცხოვრებელი ფართი - 11-32 სართული</li>\n<li>ბარი და რესტორანი &ndash; 33-35 სართული</li>\n<li>ყველა ბინას ინდივიდუალური აივნები</li>\n<li>სპა, სავარჯიშო დარბაზი და საცურაო აუზი</li>\n<li>ბავშვთა გასართობი ცენტრი</li>\n<li>ეზო და გამწვანება 4000 კვ.მ.-ზე მეტი</li>\n<li>ვერტმფრენის დასაჯდომი</li>\n<li><strong><u>ფეხბურთის მოედანი შენობის ბოლო სართულზე&nbsp;</u><u><br /></u></strong></li>\n</ul>', '<p>პირველი კლასის,ყველაზე მაღალი , <strong>მულტიფუნქციური ცათამბჯენი</strong> თბილისში - <strong>ათორი თაუერი! </strong></p>\n<p>განსაკუთრებული კონცეპციით შექმნილი <strong>ათორი თაუერი</strong> გთავაზობთ კომერციულ, საოფისე და საცხოვრებელ ფართებს. თაუერი დაყოფილია 4 სხვადასხვა ფუნქციის მქონე ზონად. თითოეული მათგანი ერთამენთისგან 9 მეტრი სიმაღლის <strong>რეკრეაციული ზონით</strong> გამოიყოფა, სადაც შეგიძლიათ დაისვენოთ და დატკბეთ თბილისის ხედით, რომელიც თაუერიდან იშლება.&nbsp; საყურადღებოა,რომთითოეულ საცხოვრებელ სახლსა და საოფისე ფართს <strong>ინდივიდუალური აივანი</strong> ექნება.</p>\n<p>მულტიფუნქციური ცათამბჯენი ათორი თაუერი ზრუნავს თავისი ბინადრების&nbsp; უსაფრთხოებასა და კომფორტზე და უზრუნველყოფს&nbsp; 24 საათიანი დაცვას,ასევე -&nbsp; დალიფტებისა და სადარბაზოს დასუფთავებას, სპორტულ-გამაჯანსაღებელი და მწვანე რეკრეაციული ზონების მოწყობას.</p>\n<p>1-დან მე-5 სართულის ჩათვლით <strong>კომერციულ ფართზე</strong> სხვადასხვა ობიექტები განთავსდება; კომერციული ფართის ჭერის სიმაღლე 6 მეტრია, რაც აქ განთავსებულ ობიექტებს დაეხმარება ფართის არა მხოლოდ ფუნქციური თვალსაზრისით ოპტიმალურად გამოყენებაში,არამედ - სივრცის მოხდენილად ათვისებაში.</p>\n<p>მე-6 სართულიდან მე-10-ის ჩათვლით <strong>საოფისე ფართებისთვის</strong> არის გამიზნული. კომერციულ და საოფისე ფართებზე განთავსებულ ორგანიზაციებს მოემსახურებათ რეგიტრატურა.</p>\n<p>მე-11 დან 32-ის ჩათვლით განთავსდება <strong>საცხოვრებელი ბინები და აპარტ ოტელები.</strong> აპარტ ოტელების მფლობელებს ვთავაზობთ დამატებით მომსახურებას უძრავი ქონების გაქირავების კუთხით.აღსანიშნავია,რომ ბინების ჭერის სიმაღლე 3,7 მეტრია, რაც ბინას კიდევ უფრო შთამბეჭდავს ხდის.</p>\n<p>33-35 სართულებზე მოეწყობა <strong>დასასვენებელი და გასართობი ზონა . </strong>&nbsp;ბარსა და რესტორანს&nbsp;&nbsp; მხოლოდ მათთვის განკუთვნილი ლიფტი მოემსახურება.</p>\n<p>ბოლო სართულზე მოეწყობა <strong>მინი ფეხბურთის სტადიონი,</strong> როგორც თაუერის ბინადართათვის ასევე ფეხბურთის ყველა მოყვარულისთვის.</p>\n<p>განსაკუთრებულად დაკავებული ადამიანებისთვის იქნება <strong>ვერტმფრენის დასაჯდომი ადგილი.</strong></p>\n<p>ათორი თაუერი ზრუნავს თავისი ბინადრების/საოფისე ფართების თანამშრომლების ჯანმრთელობაზე და ამიტომ მხოლოდ მათთვის- ბოლო სართულზე მოეწყობა : <strong>აუზი,სპა და სავარჯიშო დარბაზი .</strong></p>\n<p>ბავშვებზე ზრუნვა და მათთვის სილაღის შეგრძნების მინიჭება ათორი თაუერისთვის მნიშვნელოვანია,ამიტომ პირველ სართულზე ათორი თაუერის ბინადრების და საოფისე ფართების თანამშრომელთა შვილებისთვის <strong>საბავშო ბაღი და&nbsp; ბავშვთა გასართობი ცენტრი &nbsp;მოწყობა 1500 კვ.მ.-ზე.</strong></p>\n<p>როცა თბილისში ასე რთულად მოიძებნება მანქანის პარკირების ადგილი,ათორი თაუერი გთავაზობთ <strong>მიწისქვეშა პარკინგს - 15&nbsp;000 კვ.მ.-ზე.</strong></p>\n<p>ასევე მოეწყობა <strong>4000 კვ.მ. -ზე მეტი ეზო და გამწვანება</strong>.</p>\n<p>&nbsp;</p>', '41.722867562102245,44.71604475212098', 'პირველი კლასის , ყველაზე მაღალი მულტიფუნქციური ცათამბჯენი თბილისში ', '', '35', '3', '250', 'NULL', NULL, 'atori-tower', 'atori-tower1540992051', '', '', 'ge', 3, 0, 0),
(405, 179, 137, 1540992902, 0, 'text', 'Tsagareli 13', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '', '', '35', '3', '345', 'NULL', 'NULL', 'NULL', NULL, 'slug1540992780', 'slug15409927801540992902', '', '', 'en', 2, 0, 1),
(406, 179, 137, 1540992902, 0, 'text', 'Tsagareli 13', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '', '', '35', '3', '345', 'NULL', 'NULL', 'NULL', NULL, 'slug1540992780', 'slug15409927801540992902', '', '', 'ge', 2, 0, 1),
(407, 180, 137, 1540993113, 0, 'text', 'Mukhadze 12', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '', '', '11', '5', '223', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993045', 'slug15409930451540993113', '', '', 'en', 3, 0, 1),
(408, 180, 137, 1540993113, 0, 'text', 'Mukhadze 12', '', '<p>First Class Multifunctional Skycrapper in in Tbilisi, Georgia. Acomplishment in July 2021. The builtng compromises of 12 floors, and 47 flats. 2 floors of underground parking, 24 hour guard and etc.</p>\n<p>The acomplishment date is unknown.</p>', '', '', '11', '5', '223', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993045', 'slug15409930451540993113', '', '', 'ge', 3, 0, 1),
(409, 181, 137, 1540993246, 0, 'text', 'test 1', '', '<p>test 1</p>', '', '', '12', '12', '12', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993229', 'slug15409932291540993246', '', '', 'en', 4, 0, 1),
(410, 181, 137, 1540993246, 0, 'text', 'test 1', '', '<p>test 1</p>', '', '', '12', '12', '12', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993229', 'slug15409932291540993246', '', '', 'ge', 4, 0, 1),
(411, 182, 137, 1540993269, 0, 'text', 'test 2', '', '<p>test 2</p>', '', '', '2', '21', '2', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993253', 'slug15409932531540993269', '', '', 'en', 5, 0, 1),
(412, 182, 137, 1540993269, 0, 'text', 'test 2', '', '<p>test 2</p>', '', '', '2', '21', '2', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993253', 'slug15409932531540993269', '', '', 'ge', 5, 0, 1),
(413, 183, 137, 1540993291, 0, 'text', 'test 3', '', '<p>test 3</p>', '', '', '12', '12', '12', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993275', 'slug15409932751540993291', '', '', 'en', 6, 0, 1),
(414, 183, 137, 1540993291, 0, 'text', 'test 3', '', '<p>test 3</p>', '', '', '12', '12', '12', 'NULL', 'NULL', 'NULL', NULL, 'slug1540993275', 'slug15409932751540993291', '', '', 'ge', 6, 0, 1),
(415, 184, 178, 1541098734, 0, 'text', 'All Floors', '', '', '', '41.694618163949855, 44.80085620117188', '172, 66, 191, 47, 219, 53, 235, 33, 243, 0, 320, 19, 349, 32, 387, 16, 426, 14, 465, 20, 497, 38, 518, 64, 526, 83, 528, 156, 517, 181, 508, 190, 502, 198, 513, 207, 527, 218, 532, 532, 522, 552, 536, 567, 522, 585, 507, 589, 526, 602, 524, 953, 513, 955, 513, 1038, 589, 1039, 586, 1064, 576, 1078, 567, 1092, 594, 1100, 595, 1224, 559, 1233, 573, 1242, 605, 1259, 87, 1261, 87, 1164, 67, 1156, 64, 1145, 90, 1140, 90, 1060, 66, 1055, 67, 1009, 117, 990, 175, 987, 176, 955, 151, 957, 150, 944, 157, 937, 154, 805, 153, 786, 155, 616, 166, 600, 160, 573, 160, 552, 160, 512', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1541098378', 'slug15410983781541098734', '', '', 'en', 1, 0, 0),
(416, 184, 178, 1541098734, 0, 'text', 'All Floors', '', '', '', '41.694618163949855, 44.80085620117188', '172, 66, 191, 47, 219, 53, 235, 33, 243, 0, 320, 19, 349, 32, 387, 16, 426, 14, 465, 20, 497, 38, 518, 64, 526, 83, 528, 156, 517, 181, 508, 190, 502, 198, 513, 207, 527, 218, 532, 532, 522, 552, 536, 567, 522, 585, 507, 589, 526, 602, 524, 953, 513, 955, 513, 1038, 589, 1039, 586, 1064, 576, 1078, 567, 1092, 594, 1100, 595, 1224, 559, 1233, 573, 1242, 605, 1259, 87, 1261, 87, 1164, 67, 1156, 64, 1145, 90, 1140, 90, 1060, 66, 1055, 67, 1009, 117, 990, 175, 987, 176, 955, 151, 957, 150, 944, 157, 937, 154, 805, 153, 786, 155, 616, 166, 600, 160, 573, 160, 552, 160, 512', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1541098378', 'slug15410983781541098734', '', '', 'ge', 1, 0, 0),
(417, 185, 137, 1541264085, 0, 'text', 'Project Title', '', '<p>project descriptionproject descriptionproject descriptionproject descriptionproject descriptionproject description</p>', '', '', '12', '', '200', 'NULL', 'NULL', 'NULL', NULL, 'slug1541263966', 'slug15412639661541264085', '', '', 'en', 7, 0, 1),
(418, 185, 137, 1541264085, 0, 'text', 'პროექტი', '', '<p>პროექტის აღწერა</p>', '', '41.694618163949855,44.80085620117188', '12', '', '200', 'NULL', 'NULL', 'NULL', NULL, 'slug1541263966', 'slug15412639661541264085', '', '', 'ge', 7, 0, 1),
(419, 186, 137, 1541333568, 0, 'text', 'Saburtalo , Tsagareli  68', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541333269', 'slug15413332691541333568', '', '', 'en', 5, 0, 0),
(420, 186, 137, 1541333568, 0, 'text', 'საბურთალო , ცაგარელის 68', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541333269', 'slug15413332691541333568', '', '', 'ge', 5, 0, 0),
(421, 187, 137, 1541333872, 0, 'text', 'Saburtalo , Tsagareli 64', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541333783', 'slug15413337831541333872', '', '', 'en', 6, 0, 0),
(422, 187, 137, 1541333872, 0, 'text', 'საბურთალო , ცაგარელის 64', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541333783', 'slug15413337831541333872', '', '', 'ge', 6, 0, 0),
(423, 188, 137, 1541334182, 0, 'text', 'Saburtalo , Burdzgla 12', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '11', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334075', 'slug15413340751541334182', '', '', 'en', 4, 0, 0),
(424, 188, 137, 1541334182, 0, 'text', 'საბურთალო , ბურძგლას 12', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '11', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334075', 'slug15413340751541334182', '', '', 'ge', 4, 0, 0),
(425, 189, 137, 1541334182, 0, 'text', 'საბურთალო,ბურძგლას 12', '', '', '', '', '11', '', '150', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334075', 'slug15413340751541334182', '', '', 'en', 1, 0, 1),
(426, 189, 137, 1541334182, 0, 'text', 'საბურთალო,ბურძგლას 12', '', '', '', '', '11', '', '150', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334075', 'slug15413340751541334182', '', '', 'ge', 1, 0, 1),
(427, 190, 137, 1541334698, 0, 'text', 'Saburtalo , Burdzgla 46', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334596', 'slug15413345961541334698', '', '', 'en', 7, 0, 0),
(428, 190, 137, 1541334698, 0, 'text', 'საბურთალო 30, ბურძგლას 46', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334596', 'slug15413345961541334698', '', '', 'ge', 7, 0, 0),
(429, 191, 137, 1541334940, 0, 'text', 'Saburtalo , sairme  35', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9 projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '9', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334740', 'slug15413347401541334940', '', '', 'en', 1, 0, 0),
(430, 191, 137, 1541334940, 0, 'text', 'საბურთალო , საირმის35', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '9', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541334740', 'slug15413347401541334940', '', '', 'ge', 1, 0, 0),
(431, 192, 137, 1541335246, 0, 'text', 'Saburtalo , Tsagareli 58', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541335024', 'slug15413350241541335246', '', '', 'en', 2, 0, 0),
(432, 192, 137, 1541335246, 0, 'text', 'საბურთალო , ცაგარელის 58', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541335024', 'slug15413350241541335246', '', '', 'ge', 2, 0, 0),
(433, 193, 137, 1541335649, 0, 'text', 'Saburtalo , Tsagareli 82', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541335340', 'slug15413353401541335649', '', '', 'en', 3, 0, 0),
(434, 193, 137, 1541335649, 0, 'text', 'საბურთალო , ცაგარელის 82', '', '', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1541335340', 'slug15413353401541335649', '', '', 'ge', 3, 0, 0),
(435, 194, 141, 1541420995, 0, 'text', 'Floor 12', '', '', '', '', '39,206,38,162,397,0,577,112,578,146,383,21', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1541420848', 'slug15414208481541420995', '', '', 'en', 13, 0, 1),
(436, 194, 141, 1541420995, 0, 'text', 'Floor 12', '', '', '', '', '39,206,38,162,397,0,577,112,578,146,383,21', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1541420848', 'slug15414208481541420995', '', '', 'ge', 13, 0, 1),
(437, 195, 137, 1550005189, 0, 'text', 'Saburtalo , Sairmis  37', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005108', 'slug15500051081550005189', '', '', 'en', 8, 0, 0),
(438, 195, 137, 1550005189, 0, 'text', 'საბურთალო , საირმის 37', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ, კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005108', 'slug15500051081550005189', '', '', 'ge', 8, 0, 0),
(439, 196, 137, 1550005190, 0, 'text', 'საბურთალო , საირმის 37', '', '', '', '', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005108', 'slug15500051081550005190', '', '', 'en', 9, 0, 1),
(440, 196, 137, 1550005190, 0, 'text', 'საბურთალო , საირმის 37', '', '', '', '', '10', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005108', 'slug15500051081550005190', '', '', 'ge', 9, 0, 1),
(441, 197, 137, 1550005337, 0, 'text', 'Vake , Muxadze 4', '', '<p>Atori&nbsp; is proud of the fact that many families have been given the pleasure of living in a comfortable, warm and warm apartment.</p>\n<p>Atori&nbsp; is&nbsp; one of the fastest growing company in Georgia, which has completed&nbsp;9&nbsp;projects in 6 years and has 3 current projects.</p>', '', '41.694618163949855,44.80085620117188', '9', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005268', 'slug15500052681550005337', '', '', 'en', 9, 0, 0),
(442, 197, 137, 1550005337, 0, 'text', 'ვაკე , მუხაძის 4', '', '<p>ათორი ამაყობს იმით , რომ უკვე მრავალ ოჯახს მიანიჭა&nbsp; მათ მოთხოვნებზე მორგებულ , კომფორტულ და თბილ ბინაში ცხოვრების სიხარული.</p>', '', '41.694618163949855,44.80085620117188', '9', '', '30', 'NULL', 'NULL', 'NULL', NULL, 'slug1550005268', 'slug15500052681550005337', '', '', 'ge', 9, 0, 0),
(443, 198, 132, 1550007517, 0, 'text', 'Politkovskaia  40A', '', '', '', '41.694618163949855,44.80085620117188', '', '', '11', '1', '60', 'NULL', NULL, 'slug1550007387', 'slug15500073871550007517', '', '', 'en', 3, 0, 1),
(444, 198, 132, 1550007517, 0, 'text', 'პოლიტკოვსკაიას 40 ა', '', '', '', '41.694618163949855,44.80085620117188', '', '', '11', '1', '60', 'NULL', NULL, 'slug1550007387', 'slug15500073871550007517', '', '', 'ge', 3, 0, 1),
(445, 199, 132, 1550054262, 0, 'catalog', 'Politovskaia 40 a', '', '<p>პოლიტკოვსკაიას 40 ა</p>', '<p>პოლიტკოვსკაიას 40 ა 2</p>', '41.694618163949855,44.80085620117188', 'პოლიტკოვსკაიას 40 ა', '2030', '11', '1', '60', 'NULL', NULL, 'politovskaia40', 'slug15500541011550054262', '', '', 'en', 4, 0, 0),
(446, 199, 132, 1550054262, 0, 'catalog', 'პოლიტკოვსკაიას 40 ა', '', '<p>პოლიტკოვსკაიას 40 ა</p>', '<p>პოლიტკოვსკაიას 40 ა 2</p>', '41.694618163949855,44.80085620117188', 'პოლიტკოვსკაიას 40 ა', '2030', '11', '1', '60', 'NULL', NULL, 'politovskaia40', 'slug15500541011550054262', '', '', 'ge', 4, 0, 0),
(447, 200, 132, 1550059814, 0, 'catalog', 'Abashidze 55', '', '<p>Premium Class Residential</p>', '<p>Premium Class Residential</p>', '41.694618163949855,44.80085620117188', 'Premium Class Residential', '', '12', '', '55', 'NULL', NULL, 'abashidze55-under', 'slug15500593861550059814', '', '', 'en', 1, 0, 0),
(449, 201, 200, 1550060618, 0, 'text', 'All Floors', '', '', '', '41.694618163949855, 44.80085620117188', '40,205,285,67,293,71,385,20,577,144,582,444,671,475,693,485,695,614,697,714,699,853,251,854,2,816,35,810,34,699,25,692,24,663,34,661,33,597,24,594,24,552,35,552,33,497,26,494,26,446,38,445,38,278,30,271,30,234,41,237', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1550060611', 'slug15500606111550060618', '', '', 'en', 1, 0, 0),
(450, 201, 200, 1550060618, 0, 'text', 'All Floors', '', '', '', '41.694618163949855, 44.80085620117188', '40,205,285,67,293,71,385,20,577,144,582,444,671,475,693,485,695,614,697,714,699,853,251,854,2,816,35,810,34,699,25,692,24,663,34,661,33,597,24,594,24,552,35,552,33,497,26,494,26,446,38,445,38,278,30,271,30,234,41,237', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1550060611', 'slug15500606111550060618', '', '', 'ge', 1, 0, 0),
(451, 202, 199, 1550066558, 0, 'text', 'All floors', '', '', '', '41.694618163949855, 44.80085620117188', '27,1048,1299,1049,1300,276,1174,206,1092,242,1022,203,909,256,845,236,805,254,803,295,761,313,755,328,706,314,694,322,654,302,562,270,560,228,509,211,469,236,448,233,335,198,279,240,142,194,70,262,68,300,28,329,28,359,60,370,27,394,28,421,62,434,25,460,31,487,67,498,27,524,30,553,68,559,68,573,56,571,26,586,30,615,64,622,65,637,28,648,32,681,67,685,68,705,57,702,28,713,30,746,72,748,73,771,57,768,30,776,31,807,68,809,68,838,30,842,30,869,67,873,68,901,28,898,28,937,67,935,67,977,26,977,26,979,27,979,26,978,27,979,26,979', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1550066549', 'slug15500665491550066558', '', '', 'en', 1, 0, 0),
(452, 202, 199, 1550066558, 0, 'text', 'All floors', '', '', '', '41.694618163949855, 44.80085620117188', '27,1048,1299,1049,1300,276,1174,206,1092,242,1022,203,909,256,845,236,805,254,803,295,761,313,755,328,706,314,694,322,654,302,562,270,560,228,509,211,469,236,448,233,335,198,279,240,142,194,70,262,68,300,28,329,28,359,60,370,27,394,28,421,62,434,25,460,31,487,67,498,27,524,30,553,68,559,68,573,56,571,26,586,30,615,64,622,65,637,28,648,32,681,67,685,68,705,57,702,28,713,30,746,72,748,73,771,57,768,30,776,31,807,68,809,68,838,30,842,30,869,67,873,68,901,28,898,28,937,67,935,67,977,26,977,26,979,27,979,26,978,27,979,26,979', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, 'slug1550066549', 'slug15500665491550066558', '', '', 'ge', 1, 0, 0),
(448, 200, 132, 1550059814, 0, 'catalog', 'აბაშიძე 55', '', '<ul>\n<li>შეიძინეთ ბინები თბილისის ცენტრში ყველაზე პრესტიჟულ და წყნარ გარემოში აბაშიძის N55&nbsp;</li>\n<li>500 მეტრში ვაკის პარკიდან</li>\n<li>სუფთა ჰაერი და გამწვანებული გარემო</li>\n<li>ქვით მოპირკეთებული ფასადი</li>\n<li>ალუმინის კარ-ფანჯარა</li>\n<li>ინდივიდუალური აივანი ყველა ბინას</li>\n<li>ოპტიმალური და პრაქტიკული ბინების დაგეგმარება</li>\n<li>ფართები 50 მ2 დან</li>\n<li>დახურული პარკირების ზონა</li>\n<li>ჩაბარების პირობები:&nbsp;თეთრი კარკასი ,&nbsp;მწვანე კარკასი , სრული რემონტი</li>\n<li>დიზაინერთან კონსულტაცია</li>\n<li>სარემონტო მასალების შერჩევა ინდივიდუალურად&nbsp;</li>\n</ul>', '<ul>\n<li>შეიძინეთ ბინები თბილისის ცენტრში ყველაზე პრესტიჟულ და წყნარ გარემოში აბაშიძის N55&nbsp;</li>\n<li>500 მეტრში ვაკის პარკიდან</li>\n<li>სუფთა ჰაერი და გამწვანებული გარემო</li>\n<li>ქვით მოპირკეთებული ფასადი</li>\n<li>ალუმინის კარ-ფანჯარა</li>\n<li>ინდივიდუალური აივანი ყველა ბინას</li>\n<li>ოპტიმალური და პრაქტიკული ბინების დაგეგმარება</li>\n<li>ფართები 50 მ2 დან</li>\n<li>დახურული პარკირების ზონა</li>\n<li>ჩაბარების პირობები:&nbsp;თეთრი კარკასი ,&nbsp;მწვანე კარკასი , სრული რემონტი</li>\n<li>დიზაინერთან კონსულტაცია</li>\n<li>სარემონტო მასალების შერჩევა ინდივიდუალურად&nbsp;</li>\n</ul>', '41.694618163949855,44.80085620117188', 'პრემიუმ კლასის საცხოვრებელი სახლი', '', '12', '', '55', 'NULL', NULL, 'abashidze55-under', 'slug15500593861550059814', '', '', 'ge', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `ip`, `email`) VALUES
(1, '94.240.219.60', 'giorgigvazava87@gmail.com'),
(2, '94.240.245.46', 'sample@email.tst');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `os` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tbc_trans_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tour_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `checkin_checkout` text NOT NULL,
  `tour_services` text CHARACTER SET utf8 NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `children_ages` text CHARACTER SET utf8 NOT NULL,
  `total_price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `return_result_text` text NOT NULL,
  `payment_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments_close`
--

CREATE TABLE `payments_close` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `parent`, `path`, `type`, `lang`, `status`) VALUES
(1, 1, '/public/filemanager/kakheti.jpg', 'contactdetails', 'en', 0),
(2, 1, '/public/filemanager/kakheti.jpg', 'contactdetails', 'ge', 0),
(248, 75, '/public/filemanager/slider/Koala.jpg', 'slider', 'ge', 1),
(294, 6, '/public/filemanager/profilis foto.png', 'slider', 'ge', 1),
(514, 8, '/public/filemanager/18359404_828453450636680_8420246105410845211_o.jpg', 'staff', 'ge', 1),
(203, 65, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'en', 1),
(490, 9, '/public/filemanager/tbclogo-cr-721x405.jpg', 'partners', 'ge', 1),
(489, 9, '/public/filemanager/tbclogo-cr-721x405.jpg', 'partners', 'en', 1),
(312, 16, '/public/filemanager/profilis foto.png', 'slider', 'ge', 1),
(311, 16, '/public/filemanager/profilis foto.png', 'slider', 'en', 1),
(263, 41, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'staff', 'en', 1),
(267, 77, '/public/filemanager/11188497_10204300159769044_4476653372014215508_n.jpg', 'staff', 'en', 1),
(39, 34, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'en', 1),
(40, 34, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'ge', 1),
(136, 35, '/public/filemanager/kakheti.jpg', 'news', 'ge', 1),
(135, 35, '/public/filemanager/kakheti.jpg', 'news', 'en', 1),
(141, 31, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'en', 1),
(142, 31, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'ge', 1),
(91, 50, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'en', 1),
(92, 50, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'ge', 1),
(97, 53, '/public/filemanager/Desert.jpg', 'test', 'en', 1),
(98, 53, '/public/filemanager/Desert.jpg', 'test', 'ge', 1),
(124, 58, '/public/filemanager/kakheti.jpg', 'ongoing', 'ge', 1),
(123, 58, '/public/filemanager/kakheti.jpg', 'ongoing', 'en', 1),
(132, 36, '/public/filemanager/kakheti.jpg', 'text', 'ge', 0),
(131, 36, '/public/filemanager/kakheti.jpg', 'text', 'en', 0),
(133, 63, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'en', 1),
(134, 63, '/public/filemanager/news/irakli-petriashvili/petriashvili_2018-04-05_h6b5b9jtMt[1].jpg', 'news', 'ge', 1),
(518, 64, '/public/filemanager/pic_19_8_b.jpg', 'news', 'ge', 1),
(482, 18, '/public/filemanager/11171949_884642661595443_281946515_o.jpg', 'text', 'ge', 0),
(204, 65, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'ge', 1),
(205, 66, '/public/filemanager/slider/profile.jpg', 'gallery', 'en', 1),
(206, 66, '/public/filemanager/slider/profile.jpg', 'gallery', 'ge', 1),
(207, 67, '/public/filemanager/Desert.jpg', 'ongoing', 'en', 1),
(208, 67, '/public/filemanager/Desert.jpg', 'ongoing', 'ge', 1),
(493, 119, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'en', 1),
(492, 7, '/public/filemanager/1111.jpg', 'text', 'ge', 0),
(256, 68, '/public/filemanager/Hydrangeas.jpg', 'vacancies', 'ge', 1),
(255, 68, '/public/filemanager/Hydrangeas.jpg', 'vacancies', 'en', 1),
(234, 70, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'ge', 1),
(233, 70, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'en', 1),
(235, 73, '/public/filemanager/slider/Desert.jpg', 'slider', 'en', 1),
(236, 73, '/public/filemanager/slider/Desert.jpg', 'slider', 'ge', 1),
(517, 64, '/public/filemanager/pic_19_8_b.jpg', 'news', 'en', 1),
(440, 74, '/public/filemanager/1.jpg', 'gallery', 'ge', 1),
(439, 74, '/public/filemanager/1.jpg', 'gallery', 'en', 1),
(247, 75, '/public/filemanager/slider/Koala.jpg', 'slider', 'en', 1),
(253, 76, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'en', 1),
(254, 76, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'ge', 1),
(262, 82, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'text', 'ge', 0),
(261, 82, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'text', 'en', 0),
(264, 41, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'staff', 'ge', 1),
(268, 77, '/public/filemanager/11188497_10204300159769044_4476653372014215508_n.jpg', 'staff', 'ge', 1),
(272, 81, '/public/filemanager/19221616_848240541991304_9090221476517615912_o.jpg', 'staff', 'ge', 1),
(271, 81, '/public/filemanager/19221616_848240541991304_9090221476517615912_o.jpg', 'staff', 'en', 1),
(566, 78, '/public/filemanager/18527468_832890613526297_1929063127880407976_o.jpg', 'staff', 'ge', 1),
(565, 78, '/public/filemanager/18527468_832890613526297_1929063127880407976_o.jpg', 'staff', 'en', 1),
(513, 8, '/public/filemanager/18359404_828453450636680_8420246105410845211_o.jpg', 'staff', 'en', 1),
(568, 94, '/public/filemanager/19146262_846858775462814_6551429477230869815_n.jpg', 'staff', 'ge', 1),
(567, 94, '/public/filemanager/19146262_846858775462814_6551429477230869815_n.jpg', 'staff', 'en', 1),
(293, 6, '/public/filemanager/profilis foto.png', 'slider', 'en', 1),
(316, 95, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'ge', 1),
(315, 95, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'en', 1),
(299, 96, '/public/filemanager/managmenti finansebi.png', 'slider', 'en', 1),
(300, 96, '/public/filemanager/managmenti finansebi.png', 'slider', 'ge', 1),
(318, 97, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'slider', 'ge', 1),
(317, 97, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'slider', 'en', 1),
(376, 96, '/public/filemanager/esri-head.png', 'text', 'ge', 0),
(348, 8, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'text', 'ge', 0),
(422, 99, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'ge', 1),
(421, 99, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'en', 1),
(368, 100, '/public/filemanager/profilis foto.png', 'slider', 'ge', 1),
(367, 100, '/public/filemanager/profilis foto.png', 'slider', 'en', 1),
(328, 9, '/public/filemanager/3.jpg', 'text', 'ge', 0),
(327, 9, '/public/filemanager/3.jpg', 'text', 'en', 0),
(329, 39, '/public/filemanager/inglisuri rusuli.png', 'text', 'en', 0),
(330, 39, '/public/filemanager/inglisuri rusuli.png', 'text', 'ge', 0),
(331, 41, '/public/filemanager/7.jpg', 'text', 'en', 0),
(332, 41, '/public/filemanager/7.jpg', 'text', 'ge', 0),
(372, 50, '/public/filemanager/featGH.jpg', 'text', 'ge', 0),
(377, 84, '/public/filemanager/1377393_4774046728256_2133101185_n.jpg', 'staff', 'en', 1),
(371, 50, '/public/filemanager/featGH.jpg', 'text', 'en', 0),
(339, 72, '/public/filemanager/managmenti finansebi.png', 'text', 'en', 0),
(340, 72, '/public/filemanager/managmenti finansebi.png', 'text', 'ge', 0),
(347, 8, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'text', 'en', 0),
(375, 96, '/public/filemanager/esri-head.png', 'text', 'en', 0),
(378, 84, '/public/filemanager/1377393_4774046728256_2133101185_n.jpg', 'staff', 'ge', 1),
(379, 101, '/public/filemanager/12164937_981069075287174_1108915828_o.jpg', 'staff', 'en', 1),
(380, 101, '/public/filemanager/12164937_981069075287174_1108915828_o.jpg', 'staff', 'ge', 1),
(381, 83, '/public/filemanager/12196358_966228063437904_3576434557539162600_n.jpg', 'staff', 'en', 1),
(382, 83, '/public/filemanager/12196358_966228063437904_3576434557539162600_n.jpg', 'staff', 'ge', 1),
(383, 82, '/public/filemanager/13901366_10205429692221759_1544414577075304099_n.jpg', 'staff', 'en', 1),
(384, 82, '/public/filemanager/13901366_10205429692221759_1544414577075304099_n.jpg', 'staff', 'ge', 1),
(385, 85, '/public/filemanager/11870799_862971910404950_1840413236988047045_n.jpg', 'staff', 'en', 1),
(386, 85, '/public/filemanager/11870799_862971910404950_1840413236988047045_n.jpg', 'staff', 'ge', 1),
(387, 86, '/public/filemanager/17800306_1885501021739064_4892206640904572823_n.jpg', 'staff', 'en', 1),
(388, 86, '/public/filemanager/17800306_1885501021739064_4892206640904572823_n.jpg', 'staff', 'ge', 1),
(570, 80, '/public/filemanager/16640535_1797589367231510_6525758461789530825_n.jpg', 'staff', 'ge', 1),
(400, 79, '/public/filemanager/bandicam 2018-04-16 16-38-25-754.jpg', 'staff', 'ge', 1),
(399, 79, '/public/filemanager/bandicam 2018-04-16 16-38-25-754.jpg', 'staff', 'en', 1),
(393, 91, '/public/filemanager/12373432_10205158494911067_3246514637602806548_n.jpg', 'staff', 'en', 1),
(394, 91, '/public/filemanager/12373432_10205158494911067_3246514637602806548_n.jpg', 'staff', 'ge', 1),
(395, 90, '/public/filemanager/18738703_1727116917303434_2242938732098223341_o.jpg', 'staff', 'en', 1),
(396, 90, '/public/filemanager/18738703_1727116917303434_2242938732098223341_o.jpg', 'staff', 'ge', 1),
(397, 89, '/public/filemanager/16730492_1420564574662582_7106513673582169652_n.jpg', 'staff', 'en', 1),
(398, 89, '/public/filemanager/16730492_1420564574662582_7106513673582169652_n.jpg', 'staff', 'ge', 1),
(401, 87, '/public/filemanager/10845694_1032517593443703_4636784827525185504_o.jpg', 'staff', 'en', 1),
(402, 87, '/public/filemanager/10845694_1032517593443703_4636784827525185504_o.jpg', 'staff', 'ge', 1),
(403, 88, '/public/filemanager/11329792_994862303871688_20089553617910455_n.jpg', 'staff', 'en', 1),
(404, 88, '/public/filemanager/11329792_994862303871688_20089553617910455_n.jpg', 'staff', 'ge', 1),
(405, 92, '/public/filemanager/17883498_10211255162526579_8265638243434087314_n.jpg', 'staff', 'en', 1),
(406, 92, '/public/filemanager/17883498_10211255162526579_8265638243434087314_n.jpg', 'staff', 'ge', 1),
(407, 93, '/public/filemanager/12795449_1229870497040725_6146309267461117831_n.jpg', 'staff', 'en', 1),
(408, 93, '/public/filemanager/12795449_1229870497040725_6146309267461117831_n.jpg', 'staff', 'ge', 1),
(569, 80, '/public/filemanager/16640535_1797589367231510_6525758461789530825_n.jpg', 'staff', 'en', 1),
(444, 102, '/public/filemanager/8.jpg', 'news', 'ge', 1),
(443, 102, '/public/filemanager/8.jpg', 'news', 'en', 1),
(419, 103, '/public/filemanager/8.jpg', 'news', 'en', 1),
(420, 103, '/public/filemanager/8.jpg', 'news', 'ge', 1),
(484, 104, '/public/filemanager/logorom.gif', 'partners', 'ge', 1),
(483, 104, '/public/filemanager/logorom.gif', 'partners', 'en', 1),
(486, 105, '/public/filemanager/logo.png', 'partners', 'ge', 1),
(485, 105, '/public/filemanager/logo.png', 'partners', 'en', 1),
(488, 106, '/public/filemanager/download.png', 'partners', 'ge', 1),
(487, 106, '/public/filemanager/download.png', 'partners', 'en', 1),
(555, 107, '/public/filemanager/marinas bug.jpg', 'gallery', 'en', 1),
(441, 108, '/public/filemanager/20151004_110957.jpg', 'gallery', 'en', 1),
(442, 108, '/public/filemanager/20151004_110957.jpg', 'gallery', 'ge', 1),
(481, 18, '/public/filemanager/11171949_884642661595443_281946515_o.jpg', 'text', 'en', 0),
(449, 84, '/public/filemanager/astoria01.jpg', 'text', 'en', 0),
(450, 84, '/public/filemanager/astoria01.jpg', 'text', 'ge', 0),
(454, 109, '/public/filemanager/menejmentissur.jpg', 'finished', 'ge', 0),
(453, 109, '/public/filemanager/menejmentissur.jpg', 'finished', 'en', 0),
(491, 7, '/public/filemanager/1111.jpg', 'text', 'en', 0),
(463, 110, '/public/filemanager/finance10.jpg', 'news', 'en', 1),
(464, 110, '/public/filemanager/finance10.jpg', 'news', 'ge', 1),
(465, 111, '/public/filemanager/medical-office.jpg', 'news', 'en', 1),
(466, 111, '/public/filemanager/medical-office.jpg', 'news', 'ge', 1),
(467, 112, '/public/filemanager/excel 2016.png', 'news', 'en', 1),
(468, 112, '/public/filemanager/excel 2016.png', 'news', 'ge', 1),
(469, 113, '/public/filemanager/rs.jpg', 'news', 'en', 1),
(470, 113, '/public/filemanager/rs.jpg', 'news', 'ge', 1),
(471, 114, '/public/filemanager/111.jpg', 'gallery', 'en', 1),
(472, 114, '/public/filemanager/111.jpg', 'gallery', 'ge', 1),
(473, 115, '/public/filemanager/20171214_140018.jpg', 'gallery', 'en', 1),
(474, 115, '/public/filemanager/20171214_140018.jpg', 'gallery', 'ge', 1),
(475, 116, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'en', 1),
(476, 116, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'ge', 1),
(477, 117, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'en', 1),
(478, 117, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'ge', 1),
(494, 119, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'ge', 1),
(495, 120, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'en', 1),
(496, 120, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'ge', 1),
(499, 10, '/public/filemanager/^E070141F31ACCC154E0D601BE1FB0D9B59B2828C3B8598A542^pimgpsh_fullsize_distr.jpg', 'text', 'en', 0),
(500, 10, '/public/filemanager/^E070141F31ACCC154E0D601BE1FB0D9B59B2828C3B8598A542^pimgpsh_fullsize_distr.jpg', 'text', 'ge', 0),
(506, 130, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'slider', 'ge', 1),
(505, 130, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'slider', 'en', 1),
(519, 131, '/public/filemanager/8424swiscapital.jpg', 'partners', 'en', 1),
(520, 131, '/public/filemanager/8424swiscapital.jpg', 'partners', 'ge', 1),
(521, 132, '/public/filemanager/download.jpg', 'partners', 'en', 1),
(522, 132, '/public/filemanager/download.jpg', 'partners', 'ge', 1),
(523, 133, '/public/filemanager/embawood.jpg', 'partners', 'en', 1),
(524, 133, '/public/filemanager/embawood.jpg', 'partners', 'ge', 1),
(532, 134, '/public/filemanager/963.jpg', 'gallery', 'ge', 1),
(531, 134, '/public/filemanager/963.jpg', 'gallery', 'en', 1),
(527, 135, '/public/filemanager/2332.jpg', 'gallery', 'en', 1),
(528, 135, '/public/filemanager/2332.jpg', 'gallery', 'ge', 1),
(533, 136, '/public/filemanager/2015-07-10 10.25.31.jpg', 'gallery', 'en', 1),
(534, 136, '/public/filemanager/2015-07-10 10.25.31.jpg', 'gallery', 'ge', 1),
(535, 137, '/public/filemanager/20170626_131546.jpg', 'gallery', 'en', 1),
(536, 137, '/public/filemanager/20170626_131546.jpg', 'gallery', 'ge', 1),
(537, 138, '/public/filemanager/20150310_192927.jpg', 'gallery', 'en', 1),
(538, 138, '/public/filemanager/20150310_192927.jpg', 'gallery', 'ge', 1),
(539, 139, '/public/filemanager/9233.jpg', 'gallery', 'en', 1),
(540, 139, '/public/filemanager/9233.jpg', 'gallery', 'ge', 1),
(541, 140, '/public/filemanager/17390797_799343103547715_7449022862767986193_o.jpg', 'gallery', 'en', 1),
(542, 140, '/public/filemanager/17390797_799343103547715_7449022862767986193_o.jpg', 'gallery', 'ge', 1),
(543, 141, '/public/filemanager/33.jpg', 'gallery', 'en', 1),
(544, 141, '/public/filemanager/33.jpg', 'gallery', 'ge', 1),
(545, 142, '/public/filemanager/20161110_185451.jpg', 'gallery', 'en', 1),
(546, 142, '/public/filemanager/20161110_185451.jpg', 'gallery', 'ge', 1),
(550, 143, '/public/filemanager/0202.jpg', 'gallery', 'ge', 1),
(549, 143, '/public/filemanager/0202.jpg', 'gallery', 'en', 1),
(551, 144, '/public/filemanager/gvinis lab.jpg', 'gallery', 'en', 1),
(552, 144, '/public/filemanager/gvinis lab.jpg', 'gallery', 'ge', 1),
(553, 145, '/public/filemanager/ingas kursi.jpg', 'gallery', 'en', 1),
(554, 145, '/public/filemanager/ingas kursi.jpg', 'gallery', 'ge', 1),
(556, 107, '/public/filemanager/marinas bug.jpg', 'gallery', 'ge', 1),
(557, 146, '/public/filemanager/tamos korp.jpg', 'gallery', 'en', 1),
(558, 146, '/public/filemanager/tamos korp.jpg', 'gallery', 'ge', 1),
(559, 147, '/public/filemanager/xatuna reg.jpg', 'gallery', 'en', 1),
(560, 147, '/public/filemanager/xatuna reg.jpg', 'gallery', 'ge', 1),
(561, 148, '/public/filemanager/menejmentissur zv.jpg', 'gallery', 'en', 1),
(562, 148, '/public/filemanager/menejmentissur zv.jpg', 'gallery', 'ge', 1),
(563, 149, '/public/filemanager/sistema da qs.jpg', 'gallery', 'en', 1),
(564, 149, '/public/filemanager/sistema da qs.jpg', 'gallery', 'ge', 1),
(571, 104, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'text', 'en', 0),
(572, 104, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'text', 'ge', 0),
(614, 106, '/public/filemanager/history/Desert.jpg', 'text', 'ge', 0),
(613, 106, '/public/filemanager/history/Desert.jpg', 'text', 'en', 0),
(586, 160, '/public/filemanager/slider/slide1[1].jpg', 'slider', 'ge', 0),
(585, 160, '/public/filemanager/slider/slide1[1].jpg', 'slider', 'en', 0),
(588, 161, '/public/filemanager/slider/slide2.jpg', 'slider', 'ge', 0),
(587, 161, '/public/filemanager/slider/slide2.jpg', 'slider', 'en', 0),
(589, 162, '/public/filemanager/news/gallery3[1].jpg', 'news', 'en', 0),
(590, 162, '/public/filemanager/news/gallery3[1].jpg', 'news', 'ge', 0),
(591, 163, '/public/filemanager/news/gallery3[1].jpg', 'news', 'en', 0),
(592, 163, '/public/filemanager/news/gallery3[1].jpg', 'news', 'ge', 0),
(593, 165, '/public/filemanager/news/natelashvili-cr-721x405.jpg', 'news', 'en', 0),
(594, 165, '/public/filemanager/news/natelashvili-cr-721x405.jpg', 'news', 'ge', 0),
(610, 166, '/public/filemanager/team/pexels-photo-220453.jpeg', 'staff', 'ge', 0),
(609, 166, '/public/filemanager/team/pexels-photo-220453.jpeg', 'staff', 'en', 0),
(597, 167, '/public/filemanager/team/profilephotos-960x640.jpg', 'staff', 'en', 1),
(598, 167, '/public/filemanager/team/profilephotos-960x640.jpg', 'staff', 'ge', 1),
(599, 168, '/public/filemanager/team/pexels-photo-220453.jpeg', 'staff', 'en', 1),
(600, 168, '/public/filemanager/team/pexels-photo-220453.jpeg', 'staff', 'ge', 1),
(601, 169, '/public/filemanager/team/profilephotos-960x640.jpg', 'staff', 'en', 1),
(602, 169, '/public/filemanager/team/profilephotos-960x640.jpg', 'staff', 'ge', 1),
(632, 189, '/public/filemanager/slide1.jpg', 'slider', 'ge', 1),
(3292, 123, '/public/filemanager/about/about.jpg', 'text', 'ge', 0),
(3291, 123, '/public/filemanager/about/about.jpg', 'text', 'en', 0),
(631, 189, '/public/filemanager/slide1.jpg', 'slider', 'en', 1),
(636, 190, '/public/filemanager/slide2.jpg', 'slider', 'ge', 1),
(635, 190, '/public/filemanager/slide2.jpg', 'slider', 'en', 1),
(639, 135, '/public/filemanager/project_1[1].jpg', 'text', 'en', 0),
(640, 135, '/public/filemanager/project_1[1].jpg', 'text', 'ge', 0),
(752, 136, '/public/filemanager/img11[1].jpg', 'catalog', 'ge', 0),
(751, 136, '/public/filemanager/mapping/korpisi_1.png', 'catalog', 'ge', 0),
(750, 136, '/public/filemanager/project_1[1].jpg', 'catalog', 'ge', 0),
(674, 136, '/public/filemanager/img11[1].jpg', 'text', 'ge', 0),
(670, 136, '/public/filemanager/mapping/korpisi_1.png', 'text', 'en', 0),
(671, 136, '/public/filemanager/img11[1].jpg', 'text', 'en', 0),
(672, 136, '/public/filemanager/project_1[1].jpg', 'text', 'ge', 0),
(673, 136, '/public/filemanager/mapping/korpisi_1.png', 'text', 'ge', 0),
(669, 136, '/public/filemanager/project_1[1].jpg', 'text', 'en', 0),
(749, 136, '/public/filemanager/img11[1].jpg', 'catalog', 'en', 0),
(747, 136, '/public/filemanager/project_1[1].jpg', 'catalog', 'en', 0),
(748, 136, '/public/filemanager/mapping/korpisi_1.png', 'catalog', 'en', 0),
(720, 138, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'ge', 0),
(719, 138, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'en', 0),
(746, 197, '/public/filemanager/apart_img/apart_1.png', 'floor9', 'ge', 1),
(745, 197, '/public/filemanager/apart_img/apart_1.png', 'floor9', 'en', 1),
(979, 147, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(1332, 180, '/public/filemanager/finished/mukhadze/project_5.jpg', 'text', 'ge', 0),
(1331, 180, '/public/filemanager/finished/mukhadze/project_5.jpg', 'text', 'en', 0),
(1544, 139, '/public/filemanager/slider/slide1.jpg', 'text', 'en', 0),
(989, 148, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(787, 140, '/public/filemanager/mapping/korpisi_1.png', 'catalog', 'ge', 0),
(786, 140, '/public/filemanager/project_1[1].jpg', 'catalog', 'ge', 0),
(785, 140, '/public/filemanager/slide2.jpg', 'catalog', 'en', 0),
(783, 140, '/public/filemanager/slide1.jpg', 'catalog', 'en', 0),
(784, 140, '/public/filemanager/project_3.jpg', 'catalog', 'en', 0),
(782, 140, '/public/filemanager/mapping/korpisi_1.png', 'catalog', 'en', 0),
(781, 140, '/public/filemanager/project_1[1].jpg', 'catalog', 'en', 0),
(788, 140, '/public/filemanager/slide1.jpg', 'catalog', 'ge', 0),
(789, 140, '/public/filemanager/project_3.jpg', 'catalog', 'ge', 0),
(790, 140, '/public/filemanager/slide2.jpg', 'catalog', 'ge', 0),
(1042, 145, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'catalog', 'ge', 0),
(990, 148, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(3169, 195, '/public/filemanager/thumbnail (6).jpg', 'text', 'ge', 0),
(821, 142, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'en', 0),
(822, 142, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'ge', 0),
(823, 143, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'en', 0),
(824, 143, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'ge', 0),
(832, 144, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'ge', 0),
(831, 144, '/public/filemanager/mapping/floors1/floor_1.png', 'text', 'en', 0),
(856, 207, '/public/filemanager/apart_img/apart_1.png', 'floor1', 'ge', 1),
(855, 207, '/public/filemanager/apart_img/apart_1.png', 'floor1', 'en', 1),
(1041, 145, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'catalog', 'en', 0),
(1006, 208, '/public/filemanager/projects/abashidze55/apart1.png', 'abashidze34-floor-11538991181', 'ge', 0),
(1005, 208, '/public/filemanager/projects/abashidze55/apart1.png', 'abashidze34-floor-11538991181', 'en', 0),
(920, 209, '/public/filemanager/projects/abashidze55/apart2.png', 'abashidze34-floor-11538991181', 'ge', 0),
(919, 209, '/public/filemanager/projects/abashidze55/apart2.png', 'abashidze34-floor-11538991181', 'en', 0),
(918, 210, '/public/filemanager/projects/abashidze55/apart3.png', 'abashidze34-floor-11538991181', 'ge', 0),
(917, 210, '/public/filemanager/projects/abashidze55/apart3.png', 'abashidze34-floor-11538991181', 'en', 0),
(932, 211, '/public/filemanager/projects/abashidze55/apart4.png', 'abashidze34-floor-11538991181', 'ge', 0),
(931, 211, '/public/filemanager/projects/abashidze55/apart4.png', 'abashidze34-floor-11538991181', 'en', 0),
(946, 212, '/public/filemanager/projects/abashidze55/apart5.png', 'abashidze34-floor-11538991181', 'ge', 0),
(945, 212, '/public/filemanager/projects/abashidze55/apart5.png', 'abashidze34-floor-11538991181', 'en', 0),
(952, 213, '/public/filemanager/projects/abashidze55/apart6.png', 'abashidze34-floor-11538991181', 'ge', 0),
(951, 213, '/public/filemanager/projects/abashidze55/apart6.png', 'abashidze34-floor-11538991181', 'en', 0),
(953, 214, '/public/filemanager/projects/abashidze55/apart7.png', 'abashidze34-floor-11538991181', 'en', 0),
(954, 214, '/public/filemanager/projects/abashidze55/apart7.png', 'abashidze34-floor-11538991181', 'ge', 0),
(960, 215, '/public/filemanager/projects/abashidze55/apart8.png', 'abashidze34-floor-11538991181', 'ge', 0),
(959, 215, '/public/filemanager/projects/abashidze55/apart8.png', 'abashidze34-floor-11538991181', 'en', 0),
(1543, 139, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'en', 0),
(980, 147, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(991, 149, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(992, 149, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(996, 150, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(995, 150, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(997, 151, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(998, 151, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(999, 217, '/public/filemanager/projects/abashidze55/apart2.png', 'slug15390901561539090214', 'en', 1),
(1000, 217, '/public/filemanager/projects/abashidze55/apart2.png', 'slug15390901561539090214', 'ge', 1),
(3170, 195, '/public/filemanager/thumbnail.jpg', 'text', 'ge', 0),
(3319, 141, '/public/filemanager/black charcho.jpg', 'catalog', 'ge', 0),
(1036, 152, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(1035, 152, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2735, 288, '/public/filemanager/projects/abashidze55/7/sartuli7.png', 'slug15409124651540912667', 'en', 0),
(2144, 163, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(2143, 163, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2587, 307, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409124651540912667', 'en', 0),
(1736, 185, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'ge', 0),
(2448, 217, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409079411540907976', 'ge', 0),
(2447, 217, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409079411540907976', 'en', 0),
(1707, 300, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409184531540918464', 'en', 1),
(1708, 300, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409184531540918464', 'ge', 1),
(3350, 204, '/public/filemanager/slider/saboloo versia ! final render.jpg', 'slider', 'ge', 0),
(2450, 218, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409079411540907976', 'ge', 0),
(2449, 218, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409079411540907976', 'en', 0),
(1735, 185, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'ge', 0),
(1733, 185, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'en', 0),
(1711, 301, '/public/filemanager/slider/about.jpg', 'slider', 'en', 1),
(1712, 301, '/public/filemanager/slider/about.jpg', 'slider', 'ge', 1),
(2612, 219, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409079411540907976', 'ge', 0),
(2611, 219, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409079411540907976', 'en', 0),
(1734, 185, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'en', 0),
(2276, 220, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409079411540907976', 'ge', 0),
(2275, 220, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409079411540907976', 'en', 0),
(2294, 221, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409079411540907976', 'ge', 0),
(2293, 221, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409079411540907976', 'en', 0),
(1546, 139, '/public/filemanager/slider/slide1.jpg', 'text', 'ge', 0),
(1545, 139, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'ge', 0),
(2288, 222, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409079411540907976', 'ge', 0),
(2287, 222, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409079411540907976', 'en', 0),
(3273, 291, '/public/filemanager/projects/atori/slide2.jpg', 'slider', 'ge', 0),
(3274, 291, '/public/filemanager/slider/1.jpg', 'slider', 'ge', 0),
(2788, 287, '/public/filemanager/projects/abashidze55/8/56.png', 'slug15409124651540912667', 'ge', 0),
(2298, 223, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409079411540907976', 'ge', 0),
(2297, 223, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409079411540907976', 'en', 0),
(2787, 287, '/public/filemanager/projects/abashidze55/8/56.png', 'slug15409124651540912667', 'en', 0),
(2300, 224, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409079411540907976', 'ge', 0),
(2299, 224, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409079411540907976', 'en', 0),
(2146, 164, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(2145, 164, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2148, 165, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(2147, 165, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2150, 166, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(2149, 166, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2152, 167, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'ge', 0),
(2151, 167, '/public/filemanager/projects/abashidze55/1-7/floor.png', 'text', 'en', 0),
(2454, 168, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'ge', 0),
(2453, 168, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'en', 0),
(2697, 169, '/public/filemanager/projects/abashidze55/8/new/plan-8.png', 'text', 'en', 0),
(2698, 169, '/public/filemanager/projects/abashidze55/8/new/plan-8.png', 'text', 'ge', 0),
(2540, 170, '/public/filemanager/projects/abashidze55/7/7 plan.png', 'text', 'ge', 0),
(2539, 170, '/public/filemanager/projects/abashidze55/7/7 plan.png', 'text', 'en', 0),
(1123, 225, '/public/filemanager/projects/abashidze55/8/1 )  140.kv.png', 'slug15409124651540912667', 'en', 0),
(1124, 225, '/public/filemanager/projects/abashidze55/8/1 )  140.kv.png', 'slug15409124651540912667', 'ge', 0),
(1125, 226, '/public/filemanager/projects/abashidze55/8/2) 52 kv.png', 'slug15409124651540912667', 'en', 0),
(1126, 226, '/public/filemanager/projects/abashidze55/8/2) 52 kv.png', 'slug15409124651540912667', 'ge', 0),
(1127, 228, '/public/filemanager/projects/abashidze55/8/4) 236 kv.png', 'slug15409124651540912667', 'en', 0),
(1128, 228, '/public/filemanager/projects/abashidze55/8/4) 236 kv.png', 'slug15409124651540912667', 'ge', 0),
(2160, 171, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'ge', 0),
(2159, 171, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'en', 0),
(1133, 245, '/public/filemanager/projects/abashidze55/9-11/1 )  140.kv.png', 'slug15409136131540913716', 'en', 0),
(1134, 245, '/public/filemanager/projects/abashidze55/9-11/1 )  140.kv.png', 'slug15409136131540913716', 'ge', 0),
(1135, 270, '/public/filemanager/projects/abashidze55/9-11/2) 52 kv.png', 'slug15409136131540913716', 'en', 0),
(1136, 270, '/public/filemanager/projects/abashidze55/9-11/2) 52 kv.png', 'slug15409136131540913716', 'ge', 0),
(1137, 279, '/public/filemanager/projects/abashidze55/9-11/3 ) 56 kn.png', 'slug15409136131540913716', 'en', 0),
(1138, 279, '/public/filemanager/projects/abashidze55/9-11/3 ) 56 kn.png', 'slug15409136131540913716', 'ge', 0),
(1139, 280, '/public/filemanager/projects/abashidze55/9-11/4 ) 280 kv.png', 'slug15409136131540913716', 'en', 0),
(1140, 280, '/public/filemanager/projects/abashidze55/9-11/4 ) 280 kv.png', 'slug15409136131540913716', 'ge', 0),
(2424, 225, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409100611540910065', 'ge', 0),
(2423, 225, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409100611540910065', 'en', 0),
(2416, 226, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409100611540910065', 'ge', 0),
(2415, 226, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409100611540910065', 'en', 0),
(2408, 227, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409100611540910065', 'ge', 0),
(2407, 227, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409100611540910065', 'en', 0),
(2400, 228, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409100611540910065', 'ge', 0),
(2399, 228, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409100611540910065', 'en', 0),
(2392, 229, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409100611540910065', 'ge', 0),
(2391, 229, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409100611540910065', 'en', 0),
(2614, 230, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409100611540910065', 'ge', 0),
(2613, 230, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409100611540910065', 'en', 0),
(2368, 231, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409100611540910065', 'ge', 0),
(2367, 231, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409100611540910065', 'en', 0),
(2376, 232, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409100611540910065', 'ge', 0),
(2375, 232, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409100611540910065', 'en', 0),
(2426, 233, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409101591540910180', 'ge', 0),
(2425, 233, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409101591540910180', 'en', 0),
(2418, 234, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409101591540910180', 'ge', 0),
(2417, 234, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409101591540910180', 'en', 0),
(2410, 235, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409101591540910180', 'ge', 0),
(2409, 235, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409101591540910180', 'en', 0),
(2402, 236, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409101591540910180', 'ge', 0),
(2401, 236, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409101591540910180', 'en', 0),
(2394, 237, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409101591540910180', 'ge', 0),
(2393, 237, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409101591540910180', 'en', 0),
(2616, 238, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409101591540910180', 'ge', 0),
(2615, 238, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409101591540910180', 'en', 0),
(2370, 239, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409101591540910180', 'ge', 0),
(2369, 239, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409101591540910180', 'en', 0),
(2378, 240, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409101591540910180', 'ge', 0),
(2377, 240, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409101591540910180', 'en', 0),
(2428, 241, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102071540910228', 'ge', 0),
(2427, 241, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102071540910228', 'en', 0),
(2420, 242, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102071540910228', 'ge', 0),
(2419, 242, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102071540910228', 'en', 0),
(2412, 243, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102071540910228', 'ge', 0),
(2411, 243, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102071540910228', 'en', 0),
(2404, 244, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102071540910228', 'ge', 0),
(2403, 244, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102071540910228', 'en', 0),
(2396, 245, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409102071540910228', 'ge', 0),
(2395, 245, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409102071540910228', 'en', 0),
(2618, 246, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409102071540910228', 'ge', 0),
(2617, 246, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409102071540910228', 'en', 0),
(2372, 247, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409102071540910228', 'ge', 0),
(2371, 247, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409102071540910228', 'en', 0),
(2380, 248, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409102071540910228', 'ge', 0),
(2379, 248, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409102071540910228', 'en', 0),
(2430, 249, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102351540910255', 'ge', 0),
(2429, 249, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102351540910255', 'en', 0),
(2422, 250, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102351540910255', 'ge', 0),
(2421, 250, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102351540910255', 'en', 0),
(2414, 251, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102351540910255', 'ge', 0),
(2413, 251, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102351540910255', 'en', 0),
(2406, 252, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102351540910255', 'ge', 0),
(2405, 252, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102351540910255', 'en', 0),
(2398, 253, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409102351540910255', 'ge', 0),
(2397, 253, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409102351540910255', 'en', 0),
(2620, 254, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409102351540910255', 'ge', 0),
(2619, 254, '/public/filemanager/projects/abashidze55/1-7/60.png', 'slug15409102351540910255', 'en', 0),
(2374, 255, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409102351540910255', 'ge', 0),
(2373, 255, '/public/filemanager/projects/abashidze55/1-7/140.png', 'slug15409102351540910255', 'en', 0),
(2382, 256, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409102351540910255', 'ge', 0),
(2381, 256, '/public/filemanager/projects/abashidze55/1-7/52.png', 'slug15409102351540910255', 'en', 0),
(1486, 257, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102871540910308', 'ge', 1),
(1485, 257, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409102871540910308', 'en', 1),
(1484, 258, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102871540910308', 'ge', 1),
(1483, 258, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409102871540910308', 'en', 1),
(1482, 259, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102871540910308', 'ge', 1),
(1481, 259, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409102871540910308', 'en', 1),
(1480, 260, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102871540910308', 'ge', 1),
(1479, 260, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409102871540910308', 'en', 1),
(2688, 261, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409102871540910308', 'ge', 0),
(2687, 261, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409102871540910308', 'en', 0),
(2694, 262, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409102871540910308', 'ge', 0),
(2693, 262, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409102871540910308', 'en', 0),
(2770, 263, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409102871540910308', 'ge', 0),
(2769, 263, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409102871540910308', 'en', 0),
(2670, 264, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409102871540910308', 'ge', 0),
(2669, 264, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409102871540910308', 'en', 0),
(1502, 265, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409103161540910353', 'ge', 1),
(1501, 265, '/public/filemanager/projects/abashidze55/1-7/84.png', 'slug15409103161540910353', 'en', 1),
(1500, 266, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409103161540910353', 'ge', 1),
(1499, 266, '/public/filemanager/projects/abashidze55/1-7/137.png', 'slug15409103161540910353', 'en', 1),
(1498, 267, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409103161540910353', 'ge', 1),
(1497, 267, '/public/filemanager/projects/abashidze55/1-7/56.png', 'slug15409103161540910353', 'en', 1),
(1496, 268, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409103161540910353', 'ge', 1),
(1495, 268, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409103161540910353', 'en', 1),
(2510, 269, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409103161540910353', 'ge', 1),
(2509, 269, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409103161540910353', 'en', 1),
(2508, 270, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409103161540910353', 'ge', 1),
(2507, 270, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409103161540910353', 'en', 1),
(2488, 271, '/public/filemanager/projects/abashidze55/9-11/140.png', 'slug15409103161540910353', 'ge', 1),
(2487, 271, '/public/filemanager/projects/abashidze55/9-11/140.png', 'slug15409103161540910353', 'en', 1),
(2492, 272, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409103161540910353', 'ge', 1),
(2491, 272, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409103161540910353', 'en', 1),
(2776, 273, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409136131540913716', 'ge', 0),
(2775, 273, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409136131540913716', 'en', 0),
(2778, 274, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409136131540913716', 'ge', 0),
(2777, 274, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409136131540913716', 'en', 0),
(2780, 275, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409136131540913716', 'ge', 0),
(2779, 275, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409136131540913716', 'en', 0),
(2782, 276, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409136131540913716', 'ge', 0),
(2781, 276, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409136131540913716', 'en', 0),
(2162, 172, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'ge', 0),
(2161, 172, '/public/filemanager/projects/abashidze55/9-11/mecxre.png', 'text', 'en', 0),
(2524, 173, '/public/filemanager/projects/abashidze55/12/12.png', 'text', 'ge', 0),
(2523, 173, '/public/filemanager/projects/abashidze55/12/12.png', 'text', 'en', 0),
(2774, 277, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409183221540918367', 'ge', 0),
(2773, 277, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409183221540918367', 'en', 0),
(2674, 278, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409183221540918367', 'ge', 0),
(2673, 278, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409183221540918367', 'en', 0),
(2682, 279, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409183221540918367', 'ge', 0),
(2681, 279, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409183221540918367', 'en', 0),
(2692, 280, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409183221540918367', 'ge', 0),
(2691, 280, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409183221540918367', 'en', 0),
(2654, 281, '/public/filemanager/projects/abashidze55/12/apart111.png', 'slug15409184531540918464', 'ge', 0),
(2653, 281, '/public/filemanager/projects/abashidze55/12/apart111.png', 'slug15409184531540918464', 'en', 0),
(1530, 282, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409184531540918464', 'ge', 1),
(1529, 282, '/public/filemanager/projects/abashidze55/9-11/52.png', 'slug15409184531540918464', 'en', 1),
(1912, 283, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409184531540918464', 'ge', 1),
(1911, 283, '/public/filemanager/projects/abashidze55/9-11/56.png', 'slug15409184531540918464', 'en', 1),
(1534, 284, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409184531540918464', 'ge', 1),
(1533, 284, '/public/filemanager/projects/abashidze55/9-11/280.png', 'slug15409184531540918464', 'en', 1),
(2578, 285, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409124651540912667', 'ge', 0),
(2577, 285, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409124651540912667', 'en', 0),
(2590, 286, '/public/filemanager/projects/abashidze55/8/52.png', 'slug15409124651540912667', 'ge', 0),
(2589, 286, '/public/filemanager/projects/abashidze55/8/52.png', 'slug15409124651540912667', 'en', 0),
(2736, 288, '/public/filemanager/projects/abashidze55/7/sartuli7.png', 'slug15409124651540912667', 'ge', 0),
(2166, 174, '/public/filemanager/projects/abashidze55/komerciuli.png', 'text', 'ge', 0),
(2165, 174, '/public/filemanager/projects/abashidze55/komerciuli.png', 'text', 'en', 0),
(1293, 175, '/public/filemanager/projects/atori/project_2[1].jpg', 'text', 'en', 0),
(1294, 175, '/public/filemanager/projects/atori/project_2[1].jpg', 'text', 'ge', 0),
(1295, 176, '/public/filemanager/projects/atori/project_2[1].jpg', 'plugin', 'en', 0),
(1296, 176, '/public/filemanager/projects/atori/project_2[1].jpg', 'plugin', 'ge', 0),
(1300, 177, '/public/filemanager/projects/atori/img11.jpg', 'plugin', 'en', 0),
(1299, 177, '/public/filemanager/projects/atori/project_2[1].jpg', 'plugin', 'en', 0),
(1301, 177, '/public/filemanager/projects/atori/slide2.jpg', 'plugin', 'en', 0),
(1302, 177, '/public/filemanager/projects/atori/project_2[1].jpg', 'plugin', 'ge', 0),
(1303, 177, '/public/filemanager/projects/atori/img11.jpg', 'plugin', 'ge', 0),
(1304, 177, '/public/filemanager/projects/atori/slide2.jpg', 'plugin', 'ge', 0),
(3290, 178, '/public/filemanager/Image 35.png', 'catalog', 'ge', 0),
(3289, 178, '/public/filemanager/Image 33.png', 'catalog', 'ge', 0),
(3288, 178, '/public/filemanager/Image 21_002.png', 'catalog', 'ge', 0),
(3287, 178, '/public/filemanager/Image 21_000.png', 'catalog', 'ge', 0),
(3284, 178, '/public/filemanager/1.jpg', 'catalog', 'ge', 0),
(3285, 178, '/public/filemanager/Image 30_000.png', 'catalog', 'ge', 0),
(1325, 179, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'en', 0),
(1326, 179, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'ge', 0),
(1333, 181, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'en', 0),
(1334, 181, '/public/filemanager/finished/burdzgla/project_3.jpg', 'text', 'ge', 0),
(1335, 182, '/public/filemanager/finished/mukhadze/project_5.jpg', 'text', 'en', 0),
(1336, 182, '/public/filemanager/finished/mukhadze/project_5.jpg', 'text', 'ge', 0),
(1337, 183, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'en', 0),
(1338, 183, '/public/filemanager/finished/tsagareli/project_4.jpg', 'text', 'ge', 0),
(3286, 178, '/public/filemanager/Image 20.png', 'catalog', 'ge', 0),
(3178, 187, '/public/filemanager/23.jpg', 'text', 'ge', 0),
(3177, 187, '/public/filemanager/3.jpg', 'text', 'ge', 0),
(3176, 187, '/public/filemanager/23.jpg', 'text', 'en', 0),
(3175, 187, '/public/filemanager/3.jpg', 'text', 'en', 0),
(2588, 307, '/public/filemanager/projects/abashidze55/1-7/96.png', 'slug15409124651540912667', 'ge', 0),
(3182, 186, '/public/filemanager/finished/tsagareli/25.jpg', 'text', 'ge', 0),
(3181, 186, '/public/filemanager/finished/tsagareli/12.jpg', 'text', 'ge', 0),
(3180, 186, '/public/filemanager/finished/tsagareli/25.jpg', 'text', 'en', 0),
(3179, 186, '/public/filemanager/finished/tsagareli/12.jpg', 'text', 'en', 0),
(3186, 188, '/public/filemanager/27.jpg', 'text', 'ge', 0),
(3185, 188, '/public/filemanager/13.jpg', 'text', 'ge', 0),
(3184, 188, '/public/filemanager/27.jpg', 'text', 'en', 0),
(3183, 188, '/public/filemanager/13.jpg', 'text', 'en', 0),
(1759, 189, '/public/filemanager/13.jpg', 'text', 'en', 0),
(1760, 189, '/public/filemanager/14.jpg', 'text', 'en', 0),
(1761, 189, '/public/filemanager/27.jpg', 'text', 'en', 0),
(1762, 189, '/public/filemanager/13.jpg', 'text', 'ge', 0),
(1763, 189, '/public/filemanager/14.jpg', 'text', 'ge', 0),
(1764, 189, '/public/filemanager/27.jpg', 'text', 'ge', 0),
(2597, 306, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409124651540912667', 'en', 0),
(2598, 306, '/public/filemanager/projects/abashidze55/1-7/172.png', 'slug15409124651540912667', 'ge', 0),
(3349, 204, '/public/filemanager/slider/saboloo versia ! final render.jpg', 'slider', 'en', 0),
(3174, 190, '/public/filemanager/21.jpg', 'text', 'ge', 0),
(3173, 190, '/public/filemanager/15.jpg', 'text', 'ge', 0),
(3172, 190, '/public/filemanager/21.jpg', 'text', 'en', 0),
(3171, 190, '/public/filemanager/15.jpg', 'text', 'en', 0),
(3194, 191, '/public/filemanager/საირმე 35 (3).jpg', 'text', 'ge', 0),
(3193, 191, '/public/filemanager/საირმე 35 (1).jpg', 'text', 'ge', 0),
(3192, 191, '/public/filemanager/საირმე 35 (3).jpg', 'text', 'en', 0),
(3191, 191, '/public/filemanager/საირმე 35 (1).jpg', 'text', 'en', 0),
(2786, 309, '/public/filemanager/projects/abashidze55/8/new/56.png', 'slug15409103161540910353', 'ge', 0),
(2784, 308, '/public/filemanager/projects/abashidze55/8/new/52.png', 'slug15409103161540910353', 'ge', 0),
(3198, 192, '/public/filemanager/ცაგარელი 58 (3).jpg', 'text', 'ge', 0),
(3197, 192, '/public/filemanager/ცაგარელი 58 (2).jpg', 'text', 'ge', 0),
(3196, 192, '/public/filemanager/ცაგარელი 58 (3).jpg', 'text', 'en', 0),
(3195, 192, '/public/filemanager/ცაგარელი 58 (2).jpg', 'text', 'en', 0),
(2783, 308, '/public/filemanager/projects/abashidze55/8/new/52.png', 'slug15409103161540910353', 'en', 0),
(3262, 193, '/public/filemanager/20.jpg', 'text', 'ge', 0),
(3261, 193, '/public/filemanager/20.jpg', 'text', 'en', 0),
(1799, 194, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'en', 0),
(1800, 194, '/public/filemanager/projects/abashidze55/floor.png', 'text', 'ge', 0),
(1804, 302, '/public/filemanager/projects/abashidze55/apart5.png', 'slug15414208481541420995', 'ge', 1),
(1803, 302, '/public/filemanager/projects/abashidze55/apart5.png', 'slug15414208481541420995', 'en', 1),
(2785, 309, '/public/filemanager/projects/abashidze55/8/new/56.png', 'slug15409103161540910353', 'en', 0),
(2768, 310, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409103161540910353', 'ge', 0),
(2767, 310, '/public/filemanager/projects/abashidze55/8/140.png', 'slug15409103161540910353', 'en', 0),
(2758, 311, '/public/filemanager/projects/abashidze55/8/new/236.png', 'slug15409103161540910353', 'ge', 0),
(2757, 311, '/public/filemanager/projects/abashidze55/8/new/236.png', 'slug15409103161540910353', 'en', 0),
(3283, 178, '/public/filemanager/projects/atori/project_2[1].jpg', 'catalog', 'ge', 0),
(3282, 178, '/public/filemanager/Image 35.png', 'catalog', 'en', 0),
(3281, 178, '/public/filemanager/Image 33.png', 'catalog', 'en', 0),
(3280, 178, '/public/filemanager/Image 21_002.png', 'catalog', 'en', 0),
(3279, 178, '/public/filemanager/Image 21_000.png', 'catalog', 'en', 0),
(3320, 141, '/public/filemanager/96 kv (2).jpg', 'catalog', 'ge', 0),
(3318, 141, '/public/filemanager/140 kv (1).jpg', 'catalog', 'ge', 0),
(3317, 141, '/public/filemanager/Exterior.jpg', 'catalog', 'ge', 0);
INSERT INTO `photos` (`id`, `parent`, `path`, `type`, `lang`, `status`) VALUES
(3316, 141, '/public/filemanager/96 kv (2).jpg', 'catalog', 'en', 0),
(3315, 141, '/public/filemanager/black charcho.jpg', 'catalog', 'en', 0),
(3314, 141, '/public/filemanager/140 kv (1).jpg', 'catalog', 'en', 0),
(3313, 141, '/public/filemanager/Exterior.jpg', 'catalog', 'en', 0),
(3167, 195, '/public/filemanager/thumbnail (6).jpg', 'text', 'en', 0),
(3168, 195, '/public/filemanager/thumbnail.jpg', 'text', 'en', 0),
(2943, 196, '/public/filemanager/thumbnail (6).jpg', 'text', 'en', 0),
(2944, 196, '/public/filemanager/thumbnail.jpg', 'text', 'en', 0),
(2945, 196, '/public/filemanager/thumbnail (6).jpg', 'text', 'ge', 0),
(2946, 196, '/public/filemanager/thumbnail.jpg', 'text', 'ge', 0),
(3166, 197, '/public/filemanager/22.jpg', 'text', 'ge', 0),
(3164, 197, '/public/filemanager/22.jpg', 'text', 'en', 0),
(3278, 178, '/public/filemanager/Image 20.png', 'catalog', 'en', 0),
(3165, 197, '/public/filemanager/psss.jpg', 'text', 'ge', 0),
(3163, 197, '/public/filemanager/psss.jpg', 'text', 'en', 0),
(3152, 198, '/public/filemanager/back.jpg', 'text', 'ge', 0),
(3151, 198, '/public/filemanager/frnt.jpg', 'text', 'ge', 0),
(3150, 198, '/public/filemanager/dima.jpg', 'text', 'en', 0),
(3354, 312, '/public/filemanager/slider/slider123.jpg', 'slider', 'ge', 0),
(3376, 199, '/public/filemanager/projects/politovskaia/back.jpg', 'catalog', 'en', 0),
(3137, 313, '/public/filemanager/slider/frnt.jpg', 'slider', 'en', 1),
(3138, 313, '/public/filemanager/slider/frnt.jpg', 'slider', 'ge', 1),
(3153, 198, '/public/filemanager/Render 1.jpg', 'text', 'ge', 0),
(3149, 198, '/public/filemanager/Render 1.jpg', 'text', 'en', 0),
(3148, 198, '/public/filemanager/back.jpg', 'text', 'en', 0),
(3147, 198, '/public/filemanager/frnt.jpg', 'text', 'en', 0),
(3154, 198, '/public/filemanager/dima.jpg', 'text', 'ge', 0),
(3272, 291, '/public/filemanager/slider/1.jpg', 'slider', 'en', 0),
(3271, 291, '/public/filemanager/projects/atori/slide2.jpg', 'slider', 'en', 0),
(3277, 178, '/public/filemanager/Image 30_000.png', 'catalog', 'en', 0),
(3275, 178, '/public/filemanager/projects/atori/project_2[1].jpg', 'catalog', 'en', 0),
(3276, 178, '/public/filemanager/1.jpg', 'catalog', 'en', 0),
(3381, 199, '/public/filemanager/projects/politovskaia/dima.jpg', 'catalog', 'ge', 0),
(3382, 199, '/public/filemanager/projects/politovskaia/Render 1.jpg', 'catalog', 'ge', 0),
(3380, 199, '/public/filemanager/projects/politovskaia/back.jpg', 'catalog', 'ge', 0),
(3379, 199, '/public/filemanager/projects/politovskaia/frnt.jpg', 'catalog', 'ge', 0),
(3378, 199, '/public/filemanager/projects/politovskaia/Render 1.jpg', 'catalog', 'en', 0),
(3377, 199, '/public/filemanager/projects/politovskaia/dima.jpg', 'catalog', 'en', 0),
(3345, 200, '/public/filemanager/black charcho.jpg', 'catalog', 'ge', 0),
(3344, 200, '/public/filemanager/140 kv (1).jpg', 'catalog', 'ge', 0),
(3343, 200, '/public/filemanager/Exterior.jpg', 'catalog', 'ge', 0),
(3342, 200, '/public/filemanager/96 kv (2).jpg', 'catalog', 'en', 0),
(3341, 200, '/public/filemanager/black charcho.jpg', 'catalog', 'en', 0),
(3340, 200, '/public/filemanager/140 kv (1).jpg', 'catalog', 'en', 0),
(3339, 200, '/public/filemanager/Exterior.jpg', 'catalog', 'en', 0),
(3346, 200, '/public/filemanager/96 kv (2).jpg', 'catalog', 'ge', 0),
(3353, 312, '/public/filemanager/slider/slider123.jpg', 'slider', 'en', 0),
(3375, 199, '/public/filemanager/projects/politovskaia/frnt.jpg', 'catalog', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `coverphoto` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `advanture_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` text COLLATE utf8_unicode_ci NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `days_nights` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tourist_points` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dynamic',
  `guests` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `special_offer` int(11) NOT NULL,
  `services` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `showwebsite` int(11) NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_dates`
--

CREATE TABLE `products_dates` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `checkin` int(11) NOT NULL,
  `checkout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `names` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ge'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subservices`
--

CREATE TABLE `subservices` (
  `id` int(11) NOT NULL,
  `product_idx` int(11) NOT NULL,
  `service_idx` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subservices`
--

INSERT INTO `subservices` (`id`, `product_idx`, `service_idx`, `title`, `price`, `lang`) VALUES
(976, 2, 169, 'Repas', '0', 'fr'),
(975, 2, 102, 'Transport', '0', 'fr'),
(974, 2, 101, 'Guide', '0', 'fr'),
(933, 11, 169, 'Repas', '0', 'fr'),
(971, 7, 102, 'Transport', '0', 'fr'),
(972, 7, 169, 'Repas', '0', 'fr'),
(973, 2, 100, 'Hébergement', '0', 'fr'),
(969, 7, 100, 'Hébergement', '0', 'fr'),
(932, 11, 102, 'Transport', '0', 'fr'),
(931, 11, 101, 'Guide gratuit', '0', 'fr'),
(930, 11, 100, 'Hotel', '957', 'fr'),
(929, 11, 100, 'Maison d hote', '455', 'fr'),
(956, 10, 169, 'Repas', '0', 'fr'),
(955, 10, 102, 'Transport', '0', 'fr'),
(954, 10, 101, 'Guide', '0', 'fr'),
(953, 10, 100, 'Hôtel', '670', 'fr'),
(952, 10, 100, 'Maison d\'hôte', '445', 'fr'),
(970, 7, 101, 'Guide', '0', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trainingid` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starttime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `howfind` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usefull`
--

CREATE TABLE `usefull` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `date_format` date NOT NULL COMMENT 'day / month / year',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_coordinates` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull`
--

INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `additional1`, `additional2`, `additional3`, `additional4`, `additional5`, `map_coordinates`, `lang`, `visibility`, `status`) VALUES
(65, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>Usefull Links</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(27, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>Call us</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(28, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>დაგვიკავშირდით</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(29, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>Search</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(30, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>ძიება</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(33, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>Sign up for training</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(35, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>Firstname Lastname</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(34, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>დარეგისტრირდი ტრენინგზე</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(36, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>სახელი გვარი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(37, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>Email</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(38, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>ელ-ფოსტა</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(39, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>Contact number</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(40, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>საკონტაქტო ნომერი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(41, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>Age</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(42, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>ასაკი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(43, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>Admission Clock</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(45, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>who told you about us?</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(44, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>გაკვეთილის დაწყების მისაღები საათი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(46, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>საიდან შეიტყვეთ ჩვენს შესახებ?</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(57, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>Choose trainig</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(58, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>აირჩიეთ ტრენინგი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(59, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>Sign up</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(60, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>რეგისტრაცია</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(63, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>Trainings</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(64, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>ტრენინგები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(66, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>სასარგებლო ბმულები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(71, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>Archive</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(72, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>არქივი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(73, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>All news</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(74, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>ყველა სიახლე</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(75, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>News</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(76, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>სიახლეები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(77, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>Last news</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(78, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>ბოლო სიახლეები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(79, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>View profile</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(80, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>პროფილის ნახვა</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(83, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>Contact information</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(84, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>საკონტაქტო ინფორმაცია</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(85, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>More</p>', '_blank', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(86, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>გაიგე მეტი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(89, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>All vacancies</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(90, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>ყველა ვაკანსია</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(91, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>Send us message</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(92, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>მოგვწერეთ</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(93, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>Message</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(94, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>შეტყობინება</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(95, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>Send</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(96, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>გაგზავნა</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(103, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>Gallery</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(104, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>გალერეა</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(107, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>Main</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(108, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>მთავარი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(109, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>vacancies</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(110, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>ვაკანსიები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(111, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>Our team</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(112, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>ჩვენი გუნდი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(117, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>All fields are required !</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(118, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>ყველა ველი სავალდებულოა!</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(119, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>Email format error !</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(120, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>ელ-ფოსტა არასწორია !</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(121, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>Operation done successfully !</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(123, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>Error !</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(122, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>ოპერაცია წარმატებით შესრულდა !</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(124, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>მოხდა შეცდომა !</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(724, 288, 0, 1542830400, '2018-11-22', 'slug15409124651540912667', 'Apart 6', '<ul>\n<li>შემოსასვლელი ოთახი <strong>44.4მ2</strong></li>\n<li>სამზარეულო&nbsp;<strong>26.5მ2</strong></li>\n<li>აივანი&nbsp;<strong>6.9მ2</strong></li>\n<li>საძინებელი <strong>16.2მ2</strong></li>\n<li>სველი წერტილი <strong>5.0მ2</strong></li>\n<li>საძინებელი<strong> 16.7მ2</strong></li>\n<li>საძინებელი <strong>11.3მ2</strong></li>\n<li>აივანი<strong> 6.4მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.5მ2</strong></li>\n<li>საძინებელი<strong> 32.5მ2</strong></li>\n<li>საგარდერობე ოთახი<strong> 5.0მ2</strong></li>\n<li>მისაღები ოთახი <strong>40.6მ2</strong></li>\n<li>ტერასა <strong>83.2მ2</strong></li>\n</ul>', '236', 'empty', '1', '1', '302, 414, 304, 3, 895, 2, 896, 355, 650, 355, 650, 414', 'empty', 'empty', '', 'ge', 0, 0),
(759, 306, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.7 Sqm</strong></li>\n<li>Bedroom&nbsp;&nbsp;<strong>14.9 Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>16.6 Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>15.9 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;8.5 Sqm</strong></li>\n<li>Studio&nbsp;<strong>38.4 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.2 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', 'empty', '1', '474, 611, 537, 611, 538, 527, 599, 526, 600, 625, 895, 625, 897, 841, 802, 841, 802, 885, 718, 886, 718, 908, 628, 909, 628, 886, 538, 886, 537, 669, 474, 669', 'empty', 'empty', '', 'en', 0, 0),
(689, 271, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 1', '', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'en', 0, 1),
(723, 288, 0, 1542830400, '2018-11-22', 'slug15409124651540912667', 'Apart 6', '<ul>\n<li>Entrance room<strong> 44.4 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;26.5 Sqm</strong></li>\n<li>Balcony <strong>6.9 Sqm</strong></li>\n<li>Bedroom <strong>16.2 Sqm</strong></li>\n<li>Bathroom <strong>5.0 Sqm</strong></li>\n<li>Bedroom <strong>16.7 Sqm</strong></li>\n<li>Bedroom <strong>11.3Sqm</strong></li>\n<li>Balcony <strong>6.4&nbsp;Sqm</strong></li>\n<li>Bathroom <strong>4.5 Sqm</strong></li>\n<li>Bedroom <strong>32.5 Sqm</strong></li>\n<li>Dressing room <strong>5.0 Sqm</strong></li>\n<li>Living room <strong>40.6 Sqm</strong></li>\n<li>Terrace&nbsp;&nbsp;<strong>83.2 Sqm</strong></li>\n</ul>', '236', 'empty', '1', '1', '302, 414, 304, 3, 895, 2, 896, 355, 650, 355, 650, 414', 'empty', 'empty', '', 'en', 0, 0),
(722, 287, 0, 1543003200, '2018-11-24', 'slug15409124651540912667', 'Apart 3', '<ul>\n<li>სტუდიო<strong>&nbsp;26.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;4.2მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.6მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;13.1მ2</strong></li>\n</ul>', '56', 'empty', '1', '1', '363, 609, 363, 884, 451, 884, 451, 907, 542, 907, 540, 669, 474, 669, 474, 609', 'empty', 'empty', '', 'ge', 0, 0),
(721, 287, 0, 1543003200, '2018-11-24', 'slug15409124651540912667', 'Apart 3', '<p>&nbsp;</p>\n<ul>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '56', 'empty', '1', '1', '363, 609, 363, 884, 451, 884, 451, 907, 542, 907, 540, 669, 474, 669, 474, 609', 'empty', 'empty', '', 'en', 0, 0),
(720, 286, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '301, 648, 301, 680, 188, 680, 189, 885, 275, 884, 275, 910, 364, 910, 362, 648', 'empty', 'empty', '', 'ge', 0, 0),
(719, 286, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 2', '<ul>\n<li>Bathroom&nbsp;<strong>4.3Sqm</strong></li>\n<li>Entrance room<strong>&nbsp;6.6Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>13.0Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '301, 648, 301, 680, 188, 680, 189, 885, 275, 884, 275, 910, 364, 910, 362, 648', 'empty', 'empty', '', 'en', 0, 0),
(717, 285, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 1', '<ul>\n<li>Bedroom&nbsp;<strong>17.4Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>6.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>2.2 Sqm</strong></li>\n</ul>', '140', 'empty', '1', '1', '2, 489, 96, 489, 96, 467, 299, 467, 301, 681, 187, 681, 188, 908, 99, 908, 98, 886, 4, 886', 'empty', 'empty', '', 'en', 0, 0),
(718, 285, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 1', '<ul>\n<li>საძინებელი<strong>&nbsp;17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong>&nbsp;21.7მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სამზარეულო<strong>&nbsp;16.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;6.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;2.2მ2</strong></li>\n</ul>', '140', 'empty', '1', '1', '2, 489, 96, 489, 96, 467, 299, 467, 301, 681, 187, 681, 188, 908, 99, 908, 98, 886, 4, 886', 'empty', 'empty', '', 'ge', 0, 0),
(716, 284, 0, 1540929600, '2018-10-31', 'slug15409184531540918464', 'Apart 4', '', '280', '', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 1),
(714, 283, 0, 1541361600, '2018-11-05', 'slug15409184531540918464', 'Apart 3', '', '56', '', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'ge', 0, 1),
(715, 284, 0, 1540929600, '2018-10-31', 'slug15409184531540918464', 'Apart 4', '', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 1),
(713, 283, 0, 1541361600, '2018-11-05', 'slug15409184531540918464', 'Apart 3', '', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'en', 0, 1),
(711, 282, 0, 1540929600, '2018-10-31', 'slug15409184531540918464', 'Apart 2', '', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'en', 0, 1),
(712, 282, 0, 1540929600, '2018-10-31', 'slug15409184531540918464', 'Apart 2', '', '52', '', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'ge', 0, 1),
(710, 281, 0, 1542225600, '2018-11-15', 'slug15409184531540918464', 'Apart 1', '<ul>\n<li>აივანი <strong>8.1მ2</strong></li>\n<li>კაბინეტი<strong>13.2მ2</strong></li>\n<li>საძინებელი<strong>14.4მ2</strong></li>\n<li>საძინებელი<strong>19.7მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>17.4მ2</strong></li>\n<li>სველი წერტილი <strong>6.0მ2</strong></li>\n<li>სველი წერტილი <strong>4.0მ2</strong></li>\n<li>საძინებელი<strong>26.8მ2</strong></li>\n<li>სველი წერტილი<strong>4.6მ2</strong></li>\n<li>აივანი<strong>7.3მ2</strong></li>\n<li>მისაღები ოთახი <strong>46.7მ2</strong></li>\n<li>სამზარეულო<strong>28.4მ2</strong></li>\n<li>საძინებელი<strong>25.5მ2</strong></li>\n<li>ტერასა <strong>102.7მ2</strong></li>\n</ul>', '315.4', 'empty', '1', '1', '25,178,133,178,133,58,1148,60,1148,982,989,982,989,1069,126,1069,124,412,27,412', 'empty', 'empty', '', 'ge', 0, 0),
(709, 281, 0, 1542225600, '2018-11-15', 'slug15409184531540918464', 'Apart 1', '<ul>\n<li>Balcony <strong>8.1 Sqm</strong></li>\n<li>Cabinet<strong> 13.2&nbsp;Sqm</strong></li>\n<li>Bedroom <strong>14.4Sqm</strong></li>\n<li>Bedroom <strong>19.7 Sqm</strong></li>\n<li>Entrance room <strong>17.4 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom<strong> 4.0 Sqm</strong></li>\n<li>Bedroom <strong>26.8 Sqm</strong></li>\n<li>Bathroom <strong>4.6 Sqm</strong></li>\n<li>Balcony <strong>7.3 Sqm</strong></li>\n<li>Living room <strong>46.7 Sqm</strong></li>\n<li>Kitchen <strong>28.4 Sqm</strong></li>\n<li>Bedroom <strong>25.5 Sqm</strong></li>\n<li>Terrace <strong>102.7 Sqm</strong></li>\n</ul>', '315.4', 'empty', '1', '1', '25,178,133,178,133,58,1148,60,1148,982,989,982,989,1069,126,1069,124,412,27,412', 'empty', 'empty', '', 'en', 0, 0),
(708, 280, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 4', '<ul>\n<li>აივანი&nbsp;<strong>8.1მ2&nbsp;</strong></li>\n<li>მისაღები ოთახი&nbsp;<strong>53.5მ2</strong></li>\n<li>სამზარეულო<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>33.7მ2</strong></li>\n<li>აივანი<strong>7.3მ2</strong></li>\n<li>საძინებელი<strong>15.92</strong></li>\n<li>საძინებელი<strong>34.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>32.8მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>5.4მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>5.4მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>31.5მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.5მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.5მ2</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 0),
(707, 280, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 4', '<ul>\n<li>Balcony&nbsp;<strong>8.1&nbsp;Sqm</strong></li>\n<li>Living room&nbsp;<strong>53.5&nbsp;Sqm</strong></li>\n<li>Kitchen&nbsp;<strong>21.0&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>33.7Sqm</strong></li>\n<li>Balcony&nbsp;<strong>7.3&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>15.9Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>34.6&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.6&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.6&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>32.8&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>5.4&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>5.4&nbsp;Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>31.5&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.5&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.5&nbsp;Sqm</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 0),
(706, 279, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 3', '<ul>\n<li>სველი წერტილი&nbsp;<strong>4.1მ2</strong></li>\n<li>სტუდიო&nbsp;<strong>27.2მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძენებელი<strong>16.6 მ2</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'ge', 0, 0),
(705, 279, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 3', '<ul>\n<li>Bathroom&nbsp;<strong>4.1&nbsp;Sqm</strong></li>\n<li>Studio&nbsp; &nbsp;&nbsp;<strong>27.2&nbsp;Sqm&nbsp;</strong></li>\n<li>Balcony&nbsp; &nbsp;<strong>8.6&nbsp;&nbsp;Sqm</strong></li>\n<li>Bedroom<strong>16.6&nbsp;&nbsp;Sqm</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'en', 0, 0),
(691, 272, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 2', '', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 1),
(692, 272, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 2', '', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'ge', 0, 1),
(693, 273, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 1', '<ul>\n<li>Bedroom&nbsp;<strong>17.4Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>6.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>2.2 Sqm</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'en', 0, 0),
(694, 273, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 1', '<ul>\n<li>საძინებელი<strong>&nbsp;17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong>&nbsp;21.7მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სამზარეულო<strong>&nbsp;16.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;6.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;2.2მ2</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'ge', 0, 0),
(695, 274, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 2', '<ul>\n<li>Bathroom&nbsp;<strong>4.3&nbsp;Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>7.0&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>12.4&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5&nbsp;Sqm</strong></li>\n<li>Living room&nbsp;<strong>18.7&nbsp;Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'en', 0, 0),
(696, 274, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>7.0მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;12.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>18.7მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'ge', 0, 0),
(697, 275, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 3', '<ul>\n<li>Bathroom&nbsp;<strong>4.1&nbsp;Sqm</strong></li>\n<li>Studio&nbsp; &nbsp;&nbsp;<strong>27.2&nbsp;Sqm&nbsp;</strong></li>\n<li>Balcony&nbsp; &nbsp;<strong>8.6&nbsp;&nbsp;Sqm</strong></li>\n<li>Bedroom<strong>16.6&nbsp;&nbsp;Sqm</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'en', 0, 0),
(698, 275, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 3', '<ul>\n<li>სველი წერტილი&nbsp;<strong>4.1მ2</strong></li>\n<li>სტუდიო&nbsp;<strong>27.2მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძენებელი<strong>16.6 მ2</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'ge', 0, 0),
(699, 276, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 4', '<ul>\n<li>Balcony&nbsp;<strong>8.1&nbsp;Sqm</strong></li>\n<li>Living room&nbsp;<strong>53.5&nbsp;Sqm</strong></li>\n<li>Kitchen&nbsp;<strong>21.0&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>33.7Sqm</strong></li>\n<li>Balcony&nbsp;<strong>7.3&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>15.9Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>34.6&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.6&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.6&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>32.8&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>5.4&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>5.4&nbsp;Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>31.5&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.5&nbsp;Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.5&nbsp;Sqm</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 0),
(700, 276, 0, 1542916800, '2018-11-23', 'slug15409136131540913716', 'Apart 4', '<ul>\n<li>აივანი&nbsp;<strong>8.1მ2&nbsp;</strong></li>\n<li>მისაღები ოთახი&nbsp;<strong>53.5მ2</strong></li>\n<li>სამზარეულო<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>33.7მ2</strong></li>\n<li>აივანი<strong>7.3მ2</strong></li>\n<li>საძინებელი<strong>15.92</strong></li>\n<li>საძინებელი<strong>34.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>32.8მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>5.4მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>5.4მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>31.5მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.5მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.5მ2</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 0),
(701, 277, 0, 1542916800, '2018-11-23', 'slug15409183221540918367', 'Apart 1', '<ul>\n<li>Bedroom&nbsp;<strong>17.4Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>6.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>2.2 Sqm</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'en', 0, 0),
(702, 277, 0, 1542916800, '2018-11-23', 'slug15409183221540918367', 'Apart 1', '<ul>\n<li>საძინებელი<strong>&nbsp;17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong>&nbsp;21.7მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სამზარეულო<strong>&nbsp;16.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;6.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;2.2მ2</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'ge', 0, 0),
(703, 278, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 2', '<ul>\n<li>Bathroom&nbsp;<strong>4.3&nbsp;Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>7.0&nbsp;Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>12.4&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5&nbsp;Sqm</strong></li>\n<li>Living room&nbsp;<strong>18.7&nbsp;Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'en', 0, 0),
(704, 278, 0, 1542225600, '2018-11-15', 'slug15409183221540918367', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>7.0მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;12.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>18.7მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'ge', 0, 0),
(690, 271, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 1', '', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'ge', 0, 1),
(688, 270, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 3', '', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'ge', 0, 1),
(687, 270, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 3', '', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'en', 0, 1),
(760, 306, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', 'empty', '1', '474, 611, 537, 611, 538, 527, 599, 526, 600, 625, 895, 625, 897, 841, 802, 841, 802, 885, 718, 886, 718, 908, 628, 909, 628, 886, 538, 886, 537, 669, 474, 669', 'empty', 'empty', '', 'ge', 0, 0),
(686, 269, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 4', '', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 1),
(685, 269, 0, 1541880000, '2018-11-11', 'slug15409103161540910353', 'Apart 4', '', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 1),
(683, 268, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 5', '', '96', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 1),
(684, 268, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 5', '', '96', '', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 1),
(682, 267, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 6', '', '56', '', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 1),
(677, 265, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 8', '', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 1),
(678, 265, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 8', '', '84', '', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 1),
(679, 266, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 7', '', '137', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 1),
(680, 266, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 7', '', '137', '', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 1),
(681, 267, 0, 1540929600, '2018-10-31', 'slug15409103161540910353', 'Apart 6', '', '56', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 1),
(675, 264, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3&nbsp;Sqm</strong></li>\n<li>Entrance room <strong>7.0&nbsp;Sqm</strong></li>\n<li>Bedroom <strong>12.4&nbsp;Sqm</strong></li>\n<li>Balcony <strong>8.5&nbsp;Sqm</strong></li>\n<li>Living room <strong>18.7&nbsp;Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'en', 0, 0),
(676, 264, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>7.0მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;12.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>18.7მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '267, 256, 267, 452, 201, 452, 201, 434, 139, 434, 138, 277, 223, 277, 223, 256', 'empty', 'empty', '', 'ge', 0, 0),
(674, 263, 0, 1542916800, '2018-11-23', 'slug15409102871540910308', 'Apart 1', '<ul>\n<li>საძინებელი<strong>&nbsp;17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong>&nbsp;21.7მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სამზარეულო<strong>&nbsp;16.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;6.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;2.2მ2</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'ge', 0, 0),
(673, 263, 0, 1542916800, '2018-11-23', 'slug15409102871540910308', 'Apart 1', '<ul>\n<li>Bedroom&nbsp;<strong>17.4Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>6.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>2.2 Sqm</strong></li>\n</ul>', '140', 'empty', '1', '1', '221, 129, 222, 277, 139, 278, 139, 451, 72, 451, 72, 435, 2, 435, 1, 138, 70, 137, 70, 119, 138, 118, 137, 129', 'empty', 'empty', '', 'en', 0, 0),
(672, 262, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 3', '<ul>\n<li>სველი წერტილი <strong>4.1მ2</strong></li>\n<li>სტუდიო <strong>27.2მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძენებელი<strong>16.6 მ2</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'ge', 0, 0),
(671, 262, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 3', '<ul>\n<li>Bathroom&nbsp;<strong>4.1&nbsp;Sqm</strong></li>\n<li>Studio&nbsp; &nbsp;&nbsp;<strong>27.2&nbsp;Sqm&nbsp;</strong></li>\n<li>Balcony&nbsp; &nbsp;<strong>8.6&nbsp;&nbsp;Sqm</strong></li>\n<li>Bedroom<strong>16.6&nbsp;&nbsp;Sqm</strong></li>\n</ul>', '56', 'empty', '1', '1', '397, 261, 398, 449, 330, 450, 330, 432, 268, 432, 268, 261', 'empty', 'empty', '', 'en', 0, 0),
(670, 261, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 4', '<ul>\n<li>აივანი <strong>8.1მ2&nbsp;</strong></li>\n<li>მისაღები ოთახი <strong>53.5მ2</strong></li>\n<li>სამზარეულო<strong>21.0მ2</strong></li>\n<li>საძინებელი <strong>33.7მ2</strong></li>\n<li>აივანი<strong>7.3მ2</strong></li>\n<li>საძინებელი<strong>15.92</strong></li>\n<li>საძინებელი<strong>34.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>აივანი<strong>8.6მ2</strong></li>\n<li>საძინებელი <strong>32.8მ2</strong></li>\n<li>სველი წერტილი <strong>5.4მ2</strong></li>\n<li>სველი წერტილი <strong>5.4მ2</strong></li>\n<li>შემოსასვლელი ოთახი <strong>31.5მ2</strong></li>\n<li>სველი წერტილი <strong>4.5მ2</strong></li>\n<li>სველი წერტილი <strong>4.5მ2</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 0),
(299, 150, 0, 1542312000, '2018-11-16', 'contactdata', 'Contact Number 1', '<p>+995 32 2 59 00 00</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(300, 150, 0, 1542312000, '2018-11-16', 'contactdata', 'საკონტაქტო ნომერი 1', '<p><a href=\"tel:+995322590000\">+995 32 2 59 00 00</a></p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'ge', 0, 0),
(301, 151, 0, 1542312000, '2018-11-16', 'contactdata', 'Email', '<p>info@atori.ge</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(302, 151, 0, 1542312000, '2018-11-16', 'contactdata', 'ელ-ფოსტა', '<p>info@atori.ge</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(612, 232, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong> 13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'ge', 0, 0),
(611, 232, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3Sqm</strong></li>\n<li>Entrance room<strong> 6.6Sqm</strong></li>\n<li>Bedroom <strong>13.0Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 0),
(305, 153, 0, 1542312000, '2018-11-16', 'contactdata', 'Address', '<p>Burdzgla, str. 46</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(306, 153, 0, 1542312000, '2018-11-16', 'contactdata', 'მისამართი', '<p>ბურძგლა, ქ.46</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.72315784091554,44.76213851404191', 'ge', 0, 0),
(669, 261, 0, 1542225600, '2018-11-15', 'slug15409102871540910308', 'Apart 4', '<ul>\n<li>Balcony <strong>8.1&nbsp;Sqm</strong></li>\n<li>Living room <strong>53.5 Sqm</strong></li>\n<li>Kitchen <strong>21.0 Sqm</strong></li>\n<li>Bedroom <strong>33.7Sqm</strong></li>\n<li>Balcony <strong>7.3 Sqm</strong></li>\n<li>Bedroom <strong>15.9Sqm</strong></li>\n<li>Bedroom <strong>34.6 Sqm</strong></li>\n<li>Balcony <strong>8.6 Sqm</strong></li>\n<li>Balcony <strong>8.6 Sqm</strong></li>\n<li>Bedroom <strong>32.8 Sqm</strong></li>\n<li>Bathroom <strong>5.4 Sqm</strong></li>\n<li>Bathroom <strong>5.4 Sqm</strong></li>\n<li>Entrance room <strong>31.5 Sqm</strong></li>\n<li>Bathroom <strong>4.5 Sqm</strong></li>\n<li>Bathroom <strong>4.5 Sqm</strong></li>\n</ul>', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 0),
(667, 260, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 5', '', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 1),
(668, 260, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 5', '', '96.6', '', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 1),
(311, 156, 0, 1526932800, '2018-05-22', 'languagedata', 'haveaquestio', '<p>Have a question&nbsp;?&nbsp;Call us</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(313, 157, 0, 1526932800, '2018-05-22', 'languagedata', 'apointment', '<p>Make an appointment</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(312, 156, 0, 1526932800, '2018-05-22', 'languagedata', 'haveaquestio', '<p>გაქვთ კითხვები ? დაგვიკავშირდით</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(314, 157, 0, 1526932800, '2018-05-22', 'languagedata', 'apointment', '<p>შეხვედრის დანიშვნა</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(315, 158, 0, 1526932800, '2018-05-22', 'languagedata', 'workinghours', '<p>Working Hours</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(316, 158, 0, 1526932800, '2018-05-22', 'languagedata', 'workinghours', '<p>სამუშაო საათები</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(317, 159, 0, 1526932800, '2018-05-22', 'languagedata', 'address', '<p>Address</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(318, 159, 0, 1526932800, '2018-05-22', 'languagedata', 'address', '<p>მისამართი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(664, 258, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 7', '', '136', '', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 1),
(665, 259, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 6', '', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 1),
(666, 259, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 6', '', '53.7', '', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 1),
(661, 257, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 8', '', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 1),
(662, 257, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 8', '', '84', '', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 1),
(663, 258, 0, 1540929600, '2018-10-31', 'slug15409102871540910308', 'Apart 7', '', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 1),
(637, 245, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom <strong>4.7 Sqm</strong></li>\n<li>Bedroom is <strong>14.9 Sqm</strong></li>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bedroom <strong>15.9 Sqm</strong></li>\n<li>Balcony<strong> 8.5 Sqm</strong></li>\n<li>Studio <strong>38.4 Sqm</strong></li>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Entrance room <strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'en', 0, 0),
(660, 256, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong> 13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'ge', 0, 0),
(645, 249, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 8', '<ul>\n<li>Studio <strong>41.4Sqm</strong></li>\n<li>Balcony <strong>6.9Sqm</strong></li>\n<li>Bedroom <strong>23.3Sqm</strong></li>\n<li>Bathroom <strong>6.0Sqm</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 0),
(646, 249, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 8', '<ul>\n<li>სტუდიო<strong> 41.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 6.9მ2</strong></li>\n<li>საძინებელი<strong> 23.3მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 0),
(647, 250, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 7', '<ul>\n<li>Entrance room <strong>16.3Sqm</strong></li>\n<li>Bathroom <strong>4.9Sqm</strong></li>\n<li>Bedroom <strong>23.4Sqm</strong></li>\n<li>Balcony <strong>6.4Sqm</strong></li>\n<li>Bedroom <strong>20.6Sqm</strong></li>\n<li>Bathroom <strong>5.0 m Sqm</strong></li>\n<li>Living room <strong>24.3Sqm</strong></li>\n<li>Balcony <strong>7.0Sqm</strong></li>\n<li>Kitchen <strong>18.9Sqm</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 0),
(648, 250, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 7', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 16.3მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.9მ2</strong></li>\n<li>საძინებელი<strong> 23.4მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>6.4მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>20.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.0მ2</strong></li>\n<li>მისაღები ოთახი<strong> 24.3მ2</strong></li>\n<li>აივანი<strong> 7.0მ2</strong></li>\n<li>სამზარეულო<strong> 18.9მ2</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 0),
(649, 251, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 6', '<ul>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Studio <strong>28.0 m2 Sqm</strong></li>\n<li>Balcony <strong>6.9 m2 Sqm</strong></li>\n<li>Bedroom <strong>12.6 m2 Sqm</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 0),
(650, 251, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 6', '<ul>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>სტუდიო<strong> 28.0მ2</strong></li>\n<li>აივანი<strong> 6.9მ2&nbsp;</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>12.6მ2</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 0),
(651, 252, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room <strong>10.7Sqm</strong></li>\n<li>Bathroom <strong>5.6Sqm</strong></li>\n<li>Bedroom<strong> 21.0Sqm</strong></li>\n<li>Bedroom <strong>19.7Sqm</strong></li>\n<li>Balcony <strong>7.6Sqm</strong></li>\n<li>Studio <strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 0),
(652, 252, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 0),
(653, 253, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom <strong>4.7 Sqm</strong></li>\n<li>Bedroom is <strong>14.9 Sqm</strong></li>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bedroom <strong>15.9 Sqm</strong></li>\n<li>Balcony<strong> 8.5 Sqm</strong></li>\n<li>Studio <strong>38.4 Sqm</strong></li>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Entrance room <strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'en', 0, 0);
INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `additional1`, `additional2`, `additional3`, `additional4`, `additional5`, `map_coordinates`, `lang`, `visibility`, `status`) VALUES
(654, 253, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong> 4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'ge', 0, 0),
(643, 248, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3Sqm</strong></li>\n<li>Entrance room<strong> 6.6Sqm</strong></li>\n<li>Bedroom <strong>13.0Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 0),
(644, 248, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong> 13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'ge', 0, 0),
(659, 256, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3Sqm</strong></li>\n<li>Entrance room<strong> 6.6Sqm</strong></li>\n<li>Bedroom <strong>13.0Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 0),
(658, 255, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 1', '<ul>\n<li>საძინებელი<strong> 17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong> 1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong> 21.7მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სამზარეულო<strong> 16.0მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n<li>სველი წერტილი<strong> 2.2მ2</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'ge', 0, 0),
(657, 255, 0, 1541880000, '2018-11-11', 'slug15409102351540910255', 'Apart 1', '<ul>\n<li>Bedroom <strong>17.4Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room <strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom <strong>2.2 Sqm</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'en', 0, 0),
(656, 254, 0, 1542225600, '2018-11-15', 'slug15409102351540910255', 'Apart 3', '<ul>\n<li>სტუდიო<strong> 26.0მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი<strong> 13.1მ2</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'ge', 0, 0),
(655, 254, 0, 1542225600, '2018-11-15', 'slug15409102351540910255', 'Apart 3', '<ul>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'en', 0, 0),
(629, 241, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 8', '<ul>\n<li>Studio <strong>41.4Sqm</strong></li>\n<li>Balcony <strong>6.9Sqm</strong></li>\n<li>Bedroom <strong>23.3Sqm</strong></li>\n<li>Bathroom <strong>6.0Sqm</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 0),
(630, 241, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 8', '<ul>\n<li>სტუდიო<strong> 41.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 6.9მ2</strong></li>\n<li>საძინებელი<strong> 23.3მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 0),
(631, 242, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 7', '<ul>\n<li>Entrance room <strong>16.3Sqm</strong></li>\n<li>Bathroom <strong>4.9Sqm</strong></li>\n<li>Bedroom <strong>23.4Sqm</strong></li>\n<li>Balcony <strong>6.4Sqm</strong></li>\n<li>Bedroom <strong>20.6Sqm</strong></li>\n<li>Bathroom <strong>5.0 m Sqm</strong></li>\n<li>Living room <strong>24.3Sqm</strong></li>\n<li>Balcony <strong>7.0Sqm</strong></li>\n<li>Kitchen <strong>18.9Sqm</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 0),
(632, 242, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 7', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 16.3მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.9მ2</strong></li>\n<li>საძინებელი<strong> 23.4მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>6.4მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>20.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.0მ2</strong></li>\n<li>მისაღები ოთახი<strong> 24.3მ2</strong></li>\n<li>აივანი<strong> 7.0მ2</strong></li>\n<li>სამზარეულო<strong> 18.9მ2</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 0),
(633, 243, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 6', '<ul>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Studio <strong>28.0 m2 Sqm</strong></li>\n<li>Balcony <strong>6.9 m2 Sqm</strong></li>\n<li>Bedroom <strong>12.6 m2 Sqm</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 0),
(634, 243, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 6', '<ul>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>სტუდიო<strong> 28.0მ2</strong></li>\n<li>აივანი<strong> 6.9მ2&nbsp;</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>12.6მ2</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 0),
(635, 244, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room <strong>10.7Sqm</strong></li>\n<li>Bathroom <strong>5.6Sqm</strong></li>\n<li>Bedroom<strong> 21.0Sqm</strong></li>\n<li>Bedroom <strong>19.7Sqm</strong></li>\n<li>Balcony <strong>7.6Sqm</strong></li>\n<li>Studio <strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 0),
(636, 244, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 0),
(327, 164, 0, 1527192000, '2018-05-25', 'languagedata', 'date', '<p>Date</p>', '', 'empty', '', '', '', '', '', '', 'en', 0, 0),
(328, 164, 0, 1527192000, '2018-05-25', 'languagedata', 'date', '<p>თარიღი</p>', '', 'empty', '', '', '', '', '', '', 'ge', 0, 0),
(613, 233, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 8', '<ul>\n<li>Studio <strong>41.4Sqm</strong></li>\n<li>Balcony <strong>6.9Sqm</strong></li>\n<li>Bedroom <strong>23.3Sqm</strong></li>\n<li>Bathroom <strong>6.0Sqm</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 0),
(614, 233, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 8', '<ul>\n<li>სტუდიო<strong> 41.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 6.9მ2</strong></li>\n<li>საძინებელი<strong> 23.3მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 0),
(615, 234, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 7', '<ul>\n<li>Entrance room <strong>16.3Sqm</strong></li>\n<li>Bathroom <strong>4.9Sqm</strong></li>\n<li>Bedroom <strong>23.4Sqm</strong></li>\n<li>Balcony <strong>6.4Sqm</strong></li>\n<li>Bedroom <strong>20.6Sqm</strong></li>\n<li>Bathroom <strong>5.0 m Sqm</strong></li>\n<li>Living room <strong>24.3Sqm</strong></li>\n<li>Balcony <strong>7.0Sqm</strong></li>\n<li>Kitchen <strong>18.9Sqm</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 0),
(616, 234, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 7', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 16.3მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.9მ2</strong></li>\n<li>საძინებელი<strong> 23.4მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>6.4მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>20.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.0მ2</strong></li>\n<li>მისაღები ოთახი<strong> 24.3მ2</strong></li>\n<li>აივანი<strong> 7.0მ2</strong></li>\n<li>სამზარეულო<strong> 18.9მ2</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 0),
(617, 235, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 6', '<ul>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Studio <strong>28.0 m2 Sqm</strong></li>\n<li>Balcony <strong>6.9 m2 Sqm</strong></li>\n<li>Bedroom <strong>12.6 m2 Sqm</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 0),
(618, 235, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 6', '<ul>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>სტუდიო<strong> 28.0მ2</strong></li>\n<li>აივანი<strong> 6.9მ2&nbsp;</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>12.6მ2</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 0),
(619, 236, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room <strong>10.7Sqm</strong></li>\n<li>Bathroom <strong>5.6Sqm</strong></li>\n<li>Bedroom<strong> 21.0Sqm</strong></li>\n<li>Bedroom <strong>19.7Sqm</strong></li>\n<li>Balcony <strong>7.6Sqm</strong></li>\n<li>Studio <strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 0),
(620, 236, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 0),
(621, 237, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom <strong>4.7 Sqm</strong></li>\n<li>Bedroom is <strong>14.9 Sqm</strong></li>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bedroom <strong>15.9 Sqm</strong></li>\n<li>Balcony<strong> 8.5 Sqm</strong></li>\n<li>Studio <strong>38.4 Sqm</strong></li>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Entrance room <strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'en', 0, 0),
(622, 237, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong> 4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'ge', 0, 0),
(623, 238, 0, 1542225600, '2018-11-15', 'slug15409101591540910180', 'Apart 3', '<ul>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'en', 0, 0),
(624, 238, 0, 1542225600, '2018-11-15', 'slug15409101591540910180', 'Apart 3', '<ul>\n<li>სტუდიო<strong> 26.0მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი<strong> 13.1მ2</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'ge', 0, 0),
(625, 239, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 1', '<ul>\n<li>Bedroom <strong>17.4Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room <strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom <strong>2.2 Sqm</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'en', 0, 0),
(626, 239, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 1', '<ul>\n<li>საძინებელი<strong> 17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong> 1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong> 21.7მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სამზარეულო<strong> 16.0მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n<li>სველი წერტილი<strong> 2.2მ2</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'ge', 0, 0),
(627, 240, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3Sqm</strong></li>\n<li>Entrance room<strong> 6.6Sqm</strong></li>\n<li>Bedroom <strong>13.0Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 0),
(610, 231, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 1', '<ul>\n<li>საძინებელი<strong> 17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong> 1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong> 21.7მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სამზარეულო<strong> 16.0მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n<li>სველი წერტილი<strong> 2.2მ2</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'ge', 0, 0),
(609, 231, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 1', '<ul>\n<li>Bedroom <strong>17.4Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room <strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom <strong>2.2 Sqm</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'en', 0, 0),
(607, 230, 0, 1542225600, '2018-11-15', 'slug15409100611540910065', 'Apart 3', '<ul>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'en', 0, 0),
(608, 230, 0, 1542225600, '2018-11-15', 'slug15409100611540910065', 'Apart 3', '<ul>\n<li>სტუდიო<strong> 26.0მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი<strong> 13.1მ2</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'ge', 0, 0),
(606, 229, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong> 4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'ge', 0, 0),
(605, 229, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom <strong>4.7 Sqm</strong></li>\n<li>Bedroom is <strong>14.9 Sqm</strong></li>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bedroom <strong>15.9 Sqm</strong></li>\n<li>Balcony<strong> 8.5 Sqm</strong></li>\n<li>Studio <strong>38.4 Sqm</strong></li>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Entrance room <strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'en', 0, 0),
(603, 228, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room <strong>10.7Sqm</strong></li>\n<li>Bathroom <strong>5.6Sqm</strong></li>\n<li>Bedroom<strong> 21.0Sqm</strong></li>\n<li>Bedroom <strong>19.7Sqm</strong></li>\n<li>Balcony <strong>7.6Sqm</strong></li>\n<li>Studio <strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 0),
(604, 228, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 0),
(601, 227, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 6', '<ul>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Studio <strong>28.0 m2 Sqm</strong></li>\n<li>Balcony <strong>6.9 m2 Sqm</strong></li>\n<li>Bedroom <strong>12.6 m2 Sqm</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 0),
(602, 227, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 6', '<ul>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>სტუდიო<strong> 28.0მ2</strong></li>\n<li>აივანი<strong> 6.9მ2&nbsp;</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>12.6მ2</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 0),
(599, 226, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 7', '<ul>\n<li>Entrance room <strong>16.3Sqm</strong></li>\n<li>Bathroom <strong>4.9Sqm</strong></li>\n<li>Bedroom <strong>23.4Sqm</strong></li>\n<li>Balcony <strong>6.4Sqm</strong></li>\n<li>Bedroom <strong>20.6Sqm</strong></li>\n<li>Bathroom <strong>5.0 m Sqm</strong></li>\n<li>Living room <strong>24.3Sqm</strong></li>\n<li>Balcony <strong>7.0Sqm</strong></li>\n<li>Kitchen <strong>18.9Sqm</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 0),
(600, 226, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 7', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 16.3მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.9მ2</strong></li>\n<li>საძინებელი<strong> 23.4მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>6.4მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>20.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.0მ2</strong></li>\n<li>მისაღები ოთახი<strong> 24.3მ2</strong></li>\n<li>აივანი<strong> 7.0მ2</strong></li>\n<li>სამზარეულო<strong> 18.9მ2</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 0),
(597, 225, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 8', '<ul>\n<li>Studio <strong>41.4Sqm</strong></li>\n<li>Balcony <strong>6.9Sqm</strong></li>\n<li>Bedroom <strong>23.3Sqm</strong></li>\n<li>Bathroom <strong>6.0Sqm</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 0),
(598, 225, 0, 1541880000, '2018-11-11', 'slug15409100611540910065', 'Apart 8', '<ul>\n<li>სტუდიო<strong> 41.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 6.9მ2</strong></li>\n<li>საძინებელი<strong> 23.3მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 0),
(347, 174, 0, 1527883200, '2018-06-02', 'languagedata', 'readmore', '<p>Read More</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(348, 174, 0, 1527883200, '2018-06-02', 'languagedata', 'readmore', '<p>სრულად</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(349, 175, 0, 1530993600, '2018-07-08', 'languagedata', 'getintouch', '<p>Get in touch</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(350, 175, 0, 1530993600, '2018-07-08', 'languagedata', 'getintouch', '<p>დაგვიკავშირდი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(351, 176, 0, 1530993600, '2018-07-08', 'languagedata', 'follow', '<p>Follow us</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(352, 176, 0, 1530993600, '2018-07-08', 'languagedata', 'follow', '<p>მოგვყევი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(353, 177, 0, 1530993600, '2018-07-08', 'languagedata', 'fillformbellow', '<p>Please fill the form below to contact us</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(354, 177, 0, 1530993600, '2018-07-08', 'languagedata', 'fillformbellow', '<p>გთხოვთ შეავსოთ საკონტაქტო ფორმა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(355, 178, 0, 1530993600, '2018-07-08', 'languagedata', 'subject', '<p>Subject</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(356, 178, 0, 1530993600, '2018-07-08', 'languagedata', 'subject', '<p>თემა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(642, 247, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 1', '<ul>\n<li>საძინებელი<strong> 17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong> 1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong> 21.7მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სამზარეულო<strong> 16.0მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n<li>სველი წერტილი<strong> 2.2მ2</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'ge', 0, 0),
(641, 247, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 1', '<ul>\n<li>Bedroom <strong>17.4Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room <strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom <strong>2.2 Sqm</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'en', 0, 0),
(640, 246, 0, 1542225600, '2018-11-15', 'slug15409102071540910228', 'Apart 3', '<ul>\n<li>სტუდიო<strong> 26.0მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი<strong> 13.1მ2</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'ge', 0, 0),
(363, 182, 0, 1534190400, '2018-08-14', 'languagedata', 'map', '<p>Map</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(364, 182, 0, 1534190400, '2018-08-14', 'languagedata', 'map', '<p>რუკა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(638, 245, 0, 1541880000, '2018-11-11', 'slug15409102071540910228', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong> 4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'ge', 0, 0),
(628, 240, 0, 1541880000, '2018-11-11', 'slug15409101591540910180', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong> 13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'ge', 0, 0),
(450, 224, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 8', '<ul>\n<li>სტუდიო<strong> 41.4მ2</strong></li>\n<li>აივანი<strong>&nbsp; 6.9მ2</strong></li>\n<li>საძინებელი<strong> 23.3მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'ge', 0, 0),
(448, 223, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 7', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 16.3მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.9მ2</strong></li>\n<li>საძინებელი<strong> 23.4მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>6.4მ2</strong></li>\n<li>საძინებელი&nbsp;<strong>20.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.0მ2</strong></li>\n<li>მისაღები ოთახი<strong> 24.3მ2</strong></li>\n<li>აივანი<strong> 7.0მ2</strong></li>\n<li>სამზარეულო<strong> 18.9მ2</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'ge', 0, 0),
(369, 185, 0, 1538251200, '2018-09-30', 'languagedata', 'corporatebrochure', '<p>Corporate brochure</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(370, 185, 0, 1538251200, '2018-09-30', 'languagedata', 'corporatebrochure', '<p>კორპორატიული ბროშურა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(371, 186, 0, 1538251200, '2018-09-30', 'languagedata', 'phone', '<p>Phone Number</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(372, 186, 0, 1538251200, '2018-09-30', 'languagedata', 'phone', '<p>ტელ. ნომერი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(373, 187, 0, 1538251200, '2018-09-30', 'languagedata', 'enquiry', '<p>Enquiry</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(374, 187, 0, 1538251200, '2018-09-30', 'languagedata', 'enquiry', '<p>შეტყობინება</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(375, 188, 0, 1542312000, '2018-11-16', 'contactdata', 'facebook', '<p>https://www.facebook.com/ათორი-Atori-2105957493004256/?modal=admin_todo_tour</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(376, 188, 0, 1542312000, '2018-11-16', 'contactdata', 'facebook', '<p>https://www.facebook.com/ათორი-Atori-2105957493004256/?modal=admin_todo_tour</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'ge', 0, 0),
(446, 222, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 6', '<ul>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>სტუდიო<strong> 28.0მ2</strong></li>\n<li>აივანი<strong> 6.9მ2&nbsp;</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>12.6მ2</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'ge', 0, 0),
(447, 223, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 7', '<ul>\n<li>Entrance room <strong>16.3Sqm</strong></li>\n<li>Bathroom <strong>4.9Sqm</strong></li>\n<li>Bedroom <strong>23.4Sqm</strong></li>\n<li>Balcony <strong>6.4Sqm</strong></li>\n<li>Bedroom <strong>20.6Sqm</strong></li>\n<li>Bathroom <strong>5.0 m Sqm</strong></li>\n<li>Living room <strong>24.3Sqm</strong></li>\n<li>Balcony <strong>7.0Sqm</strong></li>\n<li>Kitchen <strong>18.9Sqm</strong></li>\n</ul>', '136', 'empty', '1', '1', '796, 163, 796, 7, 284, 7, 285, 162', 'empty', 'empty', '', 'en', 0, 0),
(443, 221, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room <strong>10.7Sqm</strong></li>\n<li>Bathroom <strong>5.6Sqm</strong></li>\n<li>Bedroom<strong> 21.0Sqm</strong></li>\n<li>Bedroom <strong>19.7Sqm</strong></li>\n<li>Balcony <strong>7.6Sqm</strong></li>\n<li>Studio <strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'en', 0, 0),
(444, 221, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong> 10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', '1', '1', '532, 413, 580, 413, 580, 316, 796, 317, 796, 555, 533, 557', 'empty', 'empty', '', 'ge', 0, 0),
(445, 222, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 6', '<ul>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Studio <strong>28.0 m2 Sqm</strong></li>\n<li>Balcony <strong>6.9 m2 Sqm</strong></li>\n<li>Bedroom <strong>12.6 m2 Sqm</strong></li>\n</ul>', '53.7', 'empty', '1', '1', '580, 315, 580, 164, 798, 164, 797, 316', 'empty', 'empty', '', 'en', 0, 0),
(441, 220, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 4', '<ul>\n<li>Storeroom&nbsp;&nbsp;<strong>3.1Sqm</strong></li>\n<li>Bathroom <strong>4.7 Sqm</strong></li>\n<li>Bedroom is <strong>14.9 Sqm</strong></li>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bedroom <strong>15.9 Sqm</strong></li>\n<li>Balcony<strong> 8.5 Sqm</strong></li>\n<li>Studio <strong>38.4 Sqm</strong></li>\n<li>Bathroom <strong>4.2 Sqm</strong></li>\n<li>Entrance room <strong>23.4 Sqm</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'en', 0, 0),
(442, 220, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 4', '<ul>\n<li>სათავსო&nbsp;&nbsp;<strong>3.1მ2</strong></li>\n<li>სველი წერტილი<strong> 4.7მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;&nbsp;14.9მ2</strong></li>\n<li>საძინებელი<strong>16.6მ2</strong></li>\n<li>საძინებელი<strong>15.9მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>38.4მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 23.4მ2</strong></li>\n</ul>', '140.4', 'empty', '1', '1', '533, 467, 533, 557, 794, 557, 796, 707, 792, 707, 792, 734, 785, 735, 784, 743, 774, 743, 774, 747, 712, 747, 711, 787, 641, 788, 641, 809, 558, 808, 557, 787, 480, 787, 480, 595, 421, 595, 421, 540, 478, 540, 478, 467', 'empty', 'empty', '', 'ge', 0, 0),
(381, 191, 0, 1538683200, '2018-10-05', 'languagedata', 'features', '<p>Features</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(382, 191, 0, 1538683200, '2018-10-05', 'languagedata', 'features', '<p>მონაცემები</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(383, 192, 0, 1538683200, '2018-10-05', 'languagedata', 'stories', '<p>Stories</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(384, 192, 0, 1538683200, '2018-10-05', 'languagedata', 'stories', '<p>სართულები</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(385, 193, 0, 1538683200, '2018-10-05', 'languagedata', 'recreation', '<p>Recreation</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(386, 193, 0, 1538683200, '2018-10-05', 'languagedata', 'recreation', '<p>რეკრიაცია</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(387, 194, 0, 1538683200, '2018-10-05', 'languagedata', 'parking', '<p>Parking</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(388, 194, 0, 1538683200, '2018-10-05', 'languagedata', 'parking', '<p>პარკინგი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(389, 195, 0, 1538683200, '2018-10-05', 'languagedata', 'location', '<p>Location</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(390, 195, 0, 1538683200, '2018-10-05', 'languagedata', 'location', '<p>მდებარეობა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(391, 196, 0, 1538683200, '2018-10-05', 'languagedata', 'terms', '<p>Details</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(392, 196, 0, 1538683200, '2018-10-05', 'languagedata', 'terms', '<p>დეტალურად</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(449, 224, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 8', '<ul>\n<li>Studio <strong>41.4Sqm</strong></li>\n<li>Balcony <strong>6.9Sqm</strong></li>\n<li>Bedroom <strong>23.3Sqm</strong></li>\n<li>Bathroom <strong>6.0Sqm</strong></li>\n</ul>', '84', 'empty', '1', '1', '286, 163, 532, 163, 532, 369, 287, 369', 'empty', 'empty', '', 'en', 0, 0),
(440, 219, 0, 1542225600, '2018-11-15', 'slug15409079411540907976', 'Apart 3', '<ul>\n<li>სტუდიო<strong> 26.0მ2</strong></li>\n<li>სველი წერტილი<strong> 4.2მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი<strong> 13.1მ2</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'ge', 0, 0),
(439, 219, 0, 1542225600, '2018-11-15', 'slug15409079411540907976', 'Apart 3', '<ul>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'en', 0, 0),
(395, 198, 0, 1538856000, '2018-10-07', 'languagedata', 'propertyleft', '<p>properties left</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(396, 198, 0, 1538856000, '2018-10-07', 'languagedata', 'propertyleft', '<p>ხელმისაწვდომი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(397, 199, 0, 1538856000, '2018-10-07', 'languagedata', 'sold', '<p>Sold</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(398, 199, 0, 1538856000, '2018-10-07', 'languagedata', 'sold', '<p>გაიყიდა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(399, 200, 0, 1538856000, '2018-10-07', 'languagedata', 'totalprice', '<p>Total Price</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(400, 200, 0, 1538856000, '2018-10-07', 'languagedata', 'totalprice', '<p>სრული ფასი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(401, 201, 0, 1538856000, '2018-10-07', 'languagedata', 'pricepersqr', '<p>Price per sqm</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(402, 201, 0, 1538856000, '2018-10-07', 'languagedata', 'pricepersqr', '<p>კვ.მ. ფასი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(403, 202, 0, 1538856000, '2018-10-07', 'languagedata', 'downloadpdffloorplan', '<p>Download PDF floor plan</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(404, 202, 0, 1538856000, '2018-10-07', 'languagedata', 'downloadpdffloorplan', '<p>სართულის გეგმა</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(405, 203, 0, 1538856000, '2018-10-07', 'languagedata', 'choosefloor', '<p>Choose floor</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(406, 203, 0, 1538856000, '2018-10-07', 'languagedata', 'choosefloor', '<p>აირჩიეთ სართული</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(407, 204, 0, 1550001600, '2019-02-13', 'slider', 'Abashidze 55', '<p>Premium Class Residential&nbsp;</p>', 'Hidden Field', 'http://atori.ge/en/abashidze55-under', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(409, 205, 0, 1542312000, '2018-11-16', 'contactdata', 'facebook messenger', '<p>https://www.messenger.com/t/100015100206876</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(408, 204, 0, 1550001600, '2019-02-13', 'slider', 'აბაშიძე 55', '<p>პრემიუმ კლასის საცხოვრებელი სახლი&nbsp;</p>', 'Hidden Field', 'http://atori.ge/ge/abashidze55-under', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(410, 205, 0, 1542312000, '2018-11-16', 'contactdata', 'facebook messenger', '<p>https://www.messenger.com/t/100015100206876</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(411, 206, 0, 1538856000, '2018-10-07', 'languagedata', 'messageus', '<p>Message us</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(412, 206, 0, 1538856000, '2018-10-07', 'languagedata', 'messageus', '<p>მოგვწერეთ</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(436, 217, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 1', '<ul>\n<li>საძინებელი<strong> 17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong> 1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong> 21.7მ2</strong></li>\n<li>აივანი<strong> 8.5მ2</strong></li>\n<li>სამზარეულო<strong> 16.0მ2</strong></li>\n<li>სველი წერტილი<strong> 6.0მ2</strong></li>\n<li>სველი წერტილი<strong> 2.2მ2</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'ge', 0, 0),
(415, 208, 0, 1539201600, '2018-10-11', 'abashidze34-floor-11538991181', 'Apartment #1', '<ul>\n<li>Living room <strong>35sqv</strong></li>\n<li>Bathroom <strong>25sqv</strong></li>\n</ul>', '137 sqv', 'empty', '100000', '1', '4,2,156,4,153,512,3,512', 'empty', 'empty', '', 'en', 0, 0),
(416, 208, 0, 1539201600, '2018-10-11', 'abashidze34-floor-11538991181', 'ბინა #1', '<ul>\n<li>საძინებელი<strong> 35კვ.მ.</strong></li>\n<li>სააბაზანო<strong> 25კვ.მ.</strong></li>\n</ul>', '137 კვ.მ.', 'empty', '100000', '1', '4,2,156,4,153,512,3,512', 'empty', 'empty', '', 'ge', 0, 0),
(417, 209, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Aparment #2', '<ul>\n<li>Living room <strong>35sqv</strong></li>\n<li>Bathroom <strong>25sqv</strong></li>\n</ul>', '56 sqr', 'empty', '100000', '1', '158,3,312,3,309,218,156,218', 'empty', 'empty', '', 'en', 0, 0),
(418, 209, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #2', '<ul>\n<li>საძინებელი<strong> 35კვ.მ.</strong></li>\n<li>სააბაზანო<strong> 25კვ.მ.</strong></li>\n</ul>', '56 კვ.მ.', 'empty', '100000', '1', '158,3,312,3,309,218,156,218', 'empty', 'empty', '', 'ge', 0, 0),
(419, 210, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #3', '<ul>\n<li>Living room <strong>35sqv</strong></li>\n<li>Bathroom <strong>25sqv</strong></li>\n</ul>', '96 sqr', 'empty', '100000', '1', '310,2,548,1,548,268,405,269,404,220,311,221', 'empty', 'empty', '', 'en', 0, 0),
(420, 210, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #3', '<ul>\n<li>საძინებელი <strong>35კვ.მ.</strong></li>\n<li>სააბაზანო <strong>25კვ.მ.</strong></li>\n</ul>', '96 კბ.მ.', 'empty', '100000', '1', '310,2,548,1,548,268,405,269,404,220,311,221', 'empty', 'empty', '', 'ge', 0, 0),
(421, 211, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #4', '<ul>\n<li>Living room <strong>35sqv</strong></li>\n<li>Bathroom <strong>25sqv</strong></li>\n</ul>', '173 sqr', 'empty', '100000', '1', '549,2,737,0,739,86,777,87,777,159,798,160,798,242,777,242,779,322,460,322,461,263,548,263', 'empty', 'empty', '', 'en', 0, 0),
(422, 211, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #4', '<ul>\n<li>საძინებელი <strong>35კვ.მ.</strong></li>\n<li>სააბაზანო <strong>25კვ.მ.</strong></li>\n</ul>', '173 კვ.მ.', 'empty', '100000', '1', '549,2,737,0,739,86,777,87,777,159,798,160,798,242,777,242,779,322,460,322,461,263,548,263', 'empty', 'empty', '', 'ge', 0, 0),
(423, 212, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #5', '<ul>\n<li>Livingroom&nbsp;<strong>55sqr</strong></li>\n<li>Bathroom&nbsp;<strong>55sqr</strong></li>\n</ul>', '60 sqr', 'empty', '100000', '1', '587,317,798,316,798,401,779,401,777,477,533,477,533,324,587,324', 'empty', 'empty', '', 'en', 0, 0),
(424, 212, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #5', '<ul>\n<li>საძინებელი <strong>55კვ.მ.</strong></li>\n<li>აბაზანა <strong>55კვ.მ.</strong></li>\n</ul>', '60 კვ.მ.', 'empty', '100000', '1', '587,317,798,316,798,401,779,401,777,477,533,477,533,324,587,324', 'empty', 'empty', '', 'ge', 0, 0),
(425, 213, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #6', '<ul>\n<li>Livingroom&nbsp;<strong>55sqr</strong></li>\n<li>Bathroom&nbsp;<strong>55sqr</strong></li>\n</ul>', '52 sqr', 'empty', '100000', '1', '570,473,797,475,797,557,777,557,776,631,596,631,594,531,567,530', 'empty', 'empty', '', 'en', 0, 0),
(426, 213, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #6', '<ul>\n<li>საძინებელი <strong>55კვ.მ.</strong></li>\n<li>აბაზანა <strong>55კვ.მ.</strong></li>\n</ul>', '52 კვ.მ.', 'empty', '100000', '1', '570,473,797,475,797,557,777,557,776,631,596,631,594,531,567,530', 'empty', 'empty', '', 'ge', 0, 0),
(427, 214, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #7', '<ul>\n<li>Livingroom&nbsp;<strong>55sqr</strong></li>\n<li>Bathroom&nbsp;<strong>55sqr</strong></li>\n</ul>', '140 sqr', 'empty', '100000', '1', '409,530,409,712,429,712,428,789,777,791,780,711,798,709,797,630,597,633,595,529', 'empty', 'empty', '', 'en', 0, 0),
(428, 214, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #7', '<ul>\n<li>საძინებელი <strong>55კვ.მ.</strong></li>\n<li>აბაზანა <strong>55კვ.მ.</strong></li>\n</ul>', '140 კვ.მ.', 'empty', '100000', '1', '409,530,409,712,429,712,428,789,777,791,780,711,798,709,797,630,597,633,595,529', 'empty', 'empty', '', 'ge', 0, 0),
(429, 215, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'Apartment #8', '<ul>\n<li>Livingroom&nbsp;<strong>55sqr</strong></li>\n<li>Bathroom&nbsp;<strong>55sqr</strong></li>\n</ul>', '84 sqr', 'empty', '100000', '1', '156,267,364,267,365,514,156,512', 'empty', 'empty', '', 'en', 0, 0);
INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `additional1`, `additional2`, `additional3`, `additional4`, `additional5`, `map_coordinates`, `lang`, `visibility`, `status`) VALUES
(430, 215, 0, 1538942400, '2018-10-08', 'abashidze34-floor-11538991181', 'ბინა #8', '<ul>\n<li>საძინებელი <strong>55კვ.მ.</strong></li>\n<li>აბაზანა <strong>55კვ.მ.</strong></li>\n</ul>', '84 კვ.მ.', 'empty', '100000', '1', '156,267,364,267,365,514,156,512', 'empty', 'empty', '', 'ge', 0, 0),
(431, 216, 0, 1542312000, '2018-11-16', 'contactdata', 'Map', '<p>Mikheil Burdzglas St.46</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.72318186393133,44.762082187652595', 'en', 0, 0),
(432, 216, 0, 1542312000, '2018-11-16', 'contactdata', 'რუკა', '<p>მიხეილ ბურძგლას 46</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.72315333659882,44.76207548213006', 'ge', 0, 0),
(639, 246, 0, 1542225600, '2018-11-15', 'slug15409102071540910228', 'Apart 3', '<ul>\n<li>&nbsp;Studio&nbsp;&nbsp;<strong>26.0Sqm</strong></li>\n<li>&nbsp;Bathroom&nbsp;<strong>4.2Sqm</strong></li>\n<li>&nbsp;Balcony<strong>8.6Sqm</strong></li>\n<li>&nbsp;Bedroom&nbsp;&nbsp;<strong>13.1Sqm</strong></li>\n</ul>', '60.4', 'empty', '1', '1', '325, 805, 325, 541, 421, 541, 421, 595, 478, 595, 478, 788, 482, 788, 482, 807, 400, 807, 400, 786, 392, 786, 392, 791, 346, 791, 346, 785, 326, 785', 'empty', 'empty', '', 'en', 0, 0),
(437, 218, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 2', '<ul>\n<li>Bathroom <strong>4.3Sqm</strong></li>\n<li>Entrance room<strong> 6.6Sqm</strong></li>\n<li>Bedroom <strong>13.0Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Living room&nbsp;<strong>19.0Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'en', 0, 0),
(438, 218, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 2', '<ul>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი&nbsp;<strong>6.6მ2</strong></li>\n<li>საძინებელი<strong> 13.0მ2</strong></li>\n<li>აივანი<strong>&nbsp; 8.5მ2</strong></li>\n<li>მისაღები ოთახი<strong>19.0მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '269, 576, 324, 576, 325, 806, 244, 808, 245, 786, 239, 786, 239, 791, 191, 791, 191, 785, 168, 785, 167, 604, 269, 605', 'empty', 'empty', '', 'ge', 0, 0),
(435, 217, 0, 1541880000, '2018-11-11', 'slug15409079411540907976', 'Apart 1', '<ul>\n<li>Bedroom <strong>17.4Sqm</strong></li>\n<li>Balcony <strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room <strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom <strong>6.0 Sqm</strong></li>\n<li>Bathroom <strong>2.2 Sqm</strong></li>\n</ul>', '140.5', 'empty', '1', '1', '85, 429, 85, 417, 268, 417, 269, 604, 165, 604, 164, 744, 168, 744, 169, 807, 91, 807, 91, 786, 75, 786, 75, 790, 34, 790, 34, 784, 17, 783, 17, 777, 7, 778, 7, 748, 4, 434, 86, 435', 'empty', 'empty', '', 'en', 0, 0),
(725, 289, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '1', '', '', 'empty', '1', '2', '34, 340, 328, 338, 330, 597, 325, 601, 325, 636, 35, 637', 'empty', 'empty', '', 'en', 0, 1),
(726, 289, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '0', '', 'SOLD', 'empty', '1', '2', '298, 33, 780, 33, 780, 600, 707, 601, 706, 641, 33, 641, 30, 339, 299, 337', 'empty', 'empty', '', 'ge', 0, 1),
(727, 290, 0, 1540929600, '2018-10-31', 'languagedata', 'sqm', '<p>sqm</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(728, 290, 0, 1540929600, '2018-10-31', 'languagedata', 'sqm', '<p>კვ.მ.</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(729, 291, 0, 1550001600, '2019-02-13', 'slider', 'Atori Tower', '<p><strong>The highest multifunctional , first-class skyscraper in Tbilisi</strong></p>', 'Hidden Field', 'http://atori.ge/en/atori-tower', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(730, 291, 0, 1550001600, '2019-02-13', 'slider', 'ათორი თაუერი', '<p><strong><u>პირველი კლასის&nbsp;</u></strong><strong><u>, </u></strong><strong><u>ყველაზე მაღალი მულტიფუნქციური ცათამბრჯენი თბილისში </u></strong></p>', 'Hidden Field', 'http://atori.ge/ge/atori-tower', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(731, 292, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '1', '', '', 'empty', 'empty', '2', '301, 33, 477, 34, 478, 250, 302, 250', 'empty', 'empty', '', 'en', 0, 1),
(732, 292, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '1', '', '', 'empty', 'empty', '2', '301, 33, 477, 34, 478, 250, 302, 250', 'empty', 'empty', '', 'ge', 0, 1),
(733, 293, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '2', '', '', 'empty', 'empty', '2', '480, 33, 778, 34, 778, 192, 481, 193', 'empty', 'empty', '', 'en', 0, 1),
(734, 293, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '2', '', '', 'empty', 'empty', '2', '480, 33, 778, 34, 778, 192, 481, 193', 'empty', 'empty', '', 'ge', 0, 1),
(735, 294, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '1', '', '', 'empty', 'empty', '2', '35, 340, 329, 338, 331, 597, 326, 601, 326, 638, 36, 639', 'empty', 'empty', '', 'en', 0, 0),
(736, 294, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '1', '', '', 'empty', 'empty', '2', '35, 340, 329, 338, 331, 597, 326, 601, 326, 638, 36, 639', 'empty', 'empty', '', 'ge', 0, 0),
(737, 295, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '2', '', '', 'empty', 'empty', '2', '378, 406, 379, 599, 389, 599, 389, 637, 475, 637, 475, 407', 'empty', 'empty', '', 'en', 0, 0),
(738, 295, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '2', '', '', 'empty', 'empty', '2', '378, 406, 379, 599, 389, 599, 389, 637, 475, 637, 475, 407', 'empty', 'empty', '', 'ge', 0, 0),
(739, 296, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '3', '', '', 'empty', 'empty', '2', '301, 33, 477, 34, 478, 250, 302, 250', 'empty', 'empty', '', 'en', 0, 0),
(740, 296, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '3', '', '', 'empty', 'empty', '2', '301, 33, 477, 34, 478, 250, 302, 250', 'empty', 'empty', '', 'ge', 0, 0),
(741, 297, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '4', '', '', 'empty', 'empty', '2', '480, 33, 778, 34, 778, 192, 481, 193', 'empty', 'empty', '', 'en', 0, 0),
(742, 297, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '4', '', '', 'empty', 'empty', '2', '480, 33, 778, 34, 778, 192, 481, 193', 'empty', 'empty', '', 'ge', 0, 0),
(743, 298, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '5', '', '', 'empty', 'empty', '2', '479, 193, 778, 193, 780, 600, 706, 600, 706, 638, 476, 637', 'empty', 'empty', '', 'en', 0, 0),
(744, 298, 0, 1541016000, '2018-11-01', 'slug15409832561540983413', '5', '', '', 'empty', 'empty', '2', '479, 193, 778, 193, 780, 600, 706, 600, 706, 638, 476, 637', 'empty', 'empty', '', 'ge', 0, 0),
(745, 299, 0, 1541102400, '2018-11-02', 'languagedata', 'leftproperty', '<p>properties left</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(746, 299, 0, 1541102400, '2018-11-02', 'languagedata', 'leftproperty', '<p>ხელმისაწვდომი</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(747, 300, 0, 1541188800, '2018-11-03', 'slug15409184531540918464', 'Apart 4', '', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'en', 0, 1),
(748, 300, 0, 1541188800, '2018-11-03', 'slug15409184531540918464', 'Apart 4', '', '280', 'empty', '1', '1', '223, 41, 645, 41, 647, 401, 584, 401, 583, 433, 524, 433, 524, 447, 461, 449, 461, 432, 398, 431, 393, 93, 224, 93', 'empty', 'empty', '', 'ge', 0, 1),
(749, 301, 0, 1541188800, '2018-11-03', 'slider', 'test slider 2', '<p>asjkdn kjasnd askjd jkasn dkjasnd kjasdkj amsdnkasjd xxxx</p>', 'Hidden Field', 'http://google.com', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 1),
(750, 301, 0, 1541188800, '2018-11-03', 'slider', 'test slider', '<p>asjkdn kjasnd askjd jkasn dkjasnd kjasdkj amsdnkasjd</p>', 'Hidden Field', 'http://test.ge', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 1),
(751, 302, 0, 1541361600, '2018-11-05', 'slug15414208481541420995', 'Room 122', '<ul>\n<li>Living room <strong>25sqm</strong></li>\n<li>Bathroom <strong>12sqm</strong></li>\n</ul>', '56', 'empty', '250000', '1', '156,7,309,4,308,217,156,220', 'empty', 'empty', '', 'en', 0, 1),
(752, 302, 0, 1541361600, '2018-11-05', 'slug15414208481541420995', 'Room 122', '<p>test test</p>', '56', 'empty', '250000', '1', '156,7,309,4,308,217,156,220', 'empty', 'empty', '', 'ge', 0, 1),
(753, 303, 0, 1542312000, '2018-11-16', 'contactdata', 'Contact number 2', '<p>+995 555 83 22 88</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(754, 303, 0, 1542312000, '2018-11-16', 'contactdata', 'საკონტაქტო ნომერი 2', '<p><a href=\"tel:+995 555 83 22 88\">+995 555 83 22 88</a></p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'ge', 0, 0),
(755, 304, 0, 1542312000, '2018-11-16', 'contactdata', 'Contact number 3', '<p>+995 577 59 99 88</p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'en', 0, 0),
(756, 304, 0, 1542312000, '2018-11-16', 'contactdata', 'საკონტაქტო ნომერი 3', '<p><a href=\"tel:+995 577 59 99 88%C2%A0\">+995 577 59 99 88&nbsp;</a></p>', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '41.694618163949855,44.80085620117188', 'ge', 0, 0),
(757, 305, 0, 1541880000, '2018-11-11', 'languagedata', 'footertext', '<p>2018&nbsp;Investment Development Company Atori</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(758, 305, 0, 1541880000, '2018-11-11', 'languagedata', 'footertext', '<p>2018 საინვეტიციო-დეველიპერული კომპანია</p>', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(761, 307, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 5', '<ul>\n<li>Entrance&nbsp;Room&nbsp;<strong>10.7Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>5.6Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;21.0Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>19.7Sqm</strong></li>\n<li>Balcony&nbsp;<strong>7.6Sqm</strong></li>\n<li>Studio&nbsp;<strong>29.4Sqm</strong></li>\n</ul>', '96.6', 'empty', 'empty', '1', '597, 465, 652, 465, 651, 353, 895, 353, 896, 626, 598, 627', 'empty', 'empty', '', 'en', 0, 0),
(762, 307, 0, 1542225600, '2018-11-15', 'slug15409124651540912667', 'Apart 5', '<ul>\n<li>შემოსასვლელი ოთახი<strong>&nbsp;10.7მ2</strong></li>\n<li>სველი წერტილი&nbsp;&nbsp;<strong>5.6მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>21.0მ2</strong></li>\n<li>საძინებელი&nbsp;&nbsp;<strong>19.7მ2</strong></li>\n<li>აივანი&nbsp;&nbsp;<strong>7.6მ2</strong></li>\n<li>სტუდიო&nbsp;&nbsp;<strong>29.4მ2</strong></li>\n</ul>', '96.6', 'empty', 'empty', '1', '597, 465, 652, 465, 651, 353, 895, 353, 896, 626, 598, 627', 'empty', 'empty', '', 'ge', 0, 0),
(763, 308, 0, 1543003200, '2018-11-24', 'slug15409103161540910353', 'Apart 1', '<ul>\n<li>Living room&nbsp;<strong>18.7 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>4.3 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>7.0 Sqm</strong></li>\n<li>Bedroom&nbsp;<strong>12.4&nbsp;Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5 Sqm</strong></li>\n</ul>', '52', 'empty', '1', '1', '170,344,248,345,249,323,297,324,296,511,231,512,231,495,169,495', 'empty', 'empty', '', 'en', 0, 0),
(764, 308, 0, 1543003200, '2018-11-24', 'slug15409103161540910353', 'Apart 1', '<ul>\n<li>მისაღები ოთახი <strong>18.7მ2</strong></li>\n<li>სველი წერტილი <strong>4.3მ2</strong></li>\n<li>შემოსასვლელი ოთახი <strong>7.0მ2</strong></li>\n<li>საძინებელი <strong>12.4მ2</strong></li>\n<li>აივანი <strong>8.5მ2</strong></li>\n</ul>', '52', 'empty', '1', '1', '170,344,248,345,249,323,297,324,296,511,231,512,231,495,169,495', 'empty', 'empty', '', 'ge', 0, 0),
(765, 309, 0, 1543003200, '2018-11-24', 'slug15409103161540910353', 'Apart 2', '<ul>\n<li>Bedroom <strong>16.6 Sqm</strong></li>\n<li>Bathroom<strong> 4.6 &nbsp;Sqm</strong></li>\n<li>Studio <strong>27.2 &nbsp;Sqm</strong></li>\n<li>Balcony <strong>8.6&nbsp;Sqm</strong></li>\n</ul>', '56', 'empty', '1', '1', '294,330,417,330,422,513,358,513,357,494,295,493', 'empty', 'empty', '', 'en', 0, 0),
(766, 309, 0, 1543003200, '2018-11-24', 'slug15409103161540910353', 'Apart 2', '<ul>\n<li>საძინებელი&nbsp;&nbsp;<strong>16.6მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>4.6მ2</strong></li>\n<li>სტუდიო&nbsp;<strong>27.2მ2</strong></li>\n<li>აივანი&nbsp;<strong>8.6მ2</strong></li>\n</ul>', '56', 'empty', '1', '1', '294,330,417,330,422,513,358,513,357,494,295,493', 'empty', 'empty', '', 'ge', 0, 0),
(767, 310, 0, 1542916800, '2018-11-23', 'slug15409103161540910353', 'Apart 3', '<ul>\n<li>Bedroom&nbsp;<strong>17.4Sqm</strong></li>\n<li>Balcony&nbsp;<strong>8.5Sqm</strong></li>\n<li>Bedroom<strong>&nbsp;</strong><strong>1.6 Sqm</strong></li>\n<li>Bedroom<strong>19.6 Sqm</strong></li>\n<li>Entrance room&nbsp;<strong>18.8 Sqm</strong></li>\n<li>Living room<strong>21.7 Sqm</strong></li>\n<li>Balcony<strong>&nbsp;</strong><strong>8.5 Sqm</strong></li>\n<li>Kitchen<strong>&nbsp;</strong><strong>16.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>6.0 Sqm</strong></li>\n<li>Bathroom&nbsp;<strong>2.2 Sqm</strong></li>\n</ul>', '140', 'empty', '1', '1', '40,211,104,210,104,191,172,191,170,201,249,201,250,344,172,344,169,512,104,511,103,494,39,495', 'empty', 'empty', '', 'en', 0, 0),
(768, 310, 0, 1542916800, '2018-11-23', 'slug15409103161540910353', 'Apart 3', '<ul>\n<li>საძინებელი<strong>&nbsp;17.4მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>საძინებელი<strong>&nbsp;1.6მ2</strong></li>\n<li>საძიენებლი<strong>&nbsp;19.6მ2</strong></li>\n<li>შემოსასვლელი ოთახი<strong>&nbsp; 18.8მ2</strong></li>\n<li>მისაღები ოთახი<strong>&nbsp;21.7მ2</strong></li>\n<li>აივანი<strong>&nbsp;8.5მ2</strong></li>\n<li>სამზარეულო<strong>&nbsp;16.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;6.0მ2</strong></li>\n<li>სველი წერტილი<strong>&nbsp;2.2მ2</strong></li>\n</ul>', '140', 'empty', '1', '1', '40,211,104,210,104,191,172,191,170,201,249,201,250,344,172,344,169,512,104,511,103,494,39,495', 'empty', 'empty', '', 'ge', 0, 0),
(769, 311, 0, 1542830400, '2018-11-22', 'slug15409103161540910353', 'Apart 4', '<ul>\n<li>Kitchen <strong>21.0&nbsp;Sqm</strong></li>\n<li>Bedroom <strong>33.7 Sqm</strong></li>\n<li>Balcony <strong>7.3 Sqm</strong></li>\n<li>Bedroom <strong>15.9Sqm</strong></li>\n<li>Bedroom <strong>34.6 Sqm</strong></li>\n<li>Balcony <strong>8.6&nbsp;Sqm</strong></li>\n<li>Bedroom <strong>32.8 Sqm</strong></li>\n<li>Bathroom <strong>5.4 Sqm</strong></li>\n<li>Bathroom <strong>5.4 Sqm</strong></li>\n<li>Entrance room <strong>31.5 Sqm</strong></li>\n<li>Bathroom <strong>4.5 Sqm</strong></li>\n<li>Bathroom<strong> 4.5 Sqm</strong></li>\n<li>Living room <strong>45.2 Sqm</strong></li>\n<li>Terrace <strong>39.9 Sqm</strong></li>\n</ul>', '236', 'empty', '1', '1', '416,21,540,19,538,134,658,136,658,460,600,463,598,493,543,494,543,512,482,510,481,494,420,494', 'empty', 'empty', '', 'en', 0, 0),
(770, 311, 0, 1542830400, '2018-11-22', 'slug15409103161540910353', 'Apart 4', '<ul>\n<li>სამზარეულო<strong> 21.0მ2</strong></li>\n<li>საძინებელი <strong>33.7მ2</strong></li>\n<li>აივანი <strong>7.3მ2</strong></li>\n<li>საძინებელი <strong>15.92</strong></li>\n<li>საძინებელი <strong>34.6მ2</strong></li>\n<li>აივანი<strong> 8.6მ2</strong></li>\n<li>საძინებელი <strong>32.8მ2</strong></li>\n<li>სველი წერტილი <strong>5.4მ2</strong></li>\n<li>სველი წერტილი&nbsp;<strong>5.4მ2</strong></li>\n<li>შემოსასვლელი ოთახი <strong>31.5მ2</strong></li>\n<li>სველი წერტილი<strong>4.5მ2</strong></li>\n<li>სველი წერტილი<strong>4.5მ2</strong></li>\n<li>მისაღები ოთახი&nbsp; <strong>45.2მ2</strong></li>\n<li>ტერასა<strong> 39.9მ2</strong></li>\n</ul>', '236', 'empty', '1', '1', '416,21,540,19,538,134,658,136,658,460,600,463,598,493,543,494,543,512,482,510,481,494,420,494', 'empty', 'empty', '', 'ge', 0, 0),
(771, 312, 0, 1550001600, '2019-02-13', 'slider', 'Politkovaskaia  40A', '', 'Hidden Field', 'http://atori.ge/en/politovskaia40', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 0),
(772, 312, 0, 1550001600, '2019-02-13', 'slider', 'პოლიტკოვსკაიას 40 ა', '', 'Hidden Field', 'http://atori.ge/ge/politovskaia40', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 0),
(773, 313, 0, 1550001600, '2019-02-13', 'slider', 'პოლიტკოვსკაიას 40 ა', '', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'en', 0, 1),
(774, 313, 0, 1550001600, '2019-02-13', 'slider', 'პოლიტკოვსკაიას 40 ა', '', 'Hidden Field', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '', 'ge', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usefull_modules`
--

CREATE TABLE `usefull_modules` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull_modules`
--

INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(1, 1, 'contactdetails', 'Contact details', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"false\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(2, 1, 'contactdetails', 'საკონტაქტო ინფორმაცია', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"false\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(3, 2, 'contactdetails', 'Contact information', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(4, 2, 'contactdetails', 'საკონტაქტო ინფორმაცია', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(7, 4, 'slogan', 'Slogan', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"false\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"სლოგანი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(5, 3, 'slider', 'Slider', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(6, 3, 'slider', 'სლაიდერი', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(8, 4, 'slogan', 'სლოგანი', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"false\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"სლოგანი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(9, 5, 'staff', 'Team', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სახელი გვარი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"პროფესია\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"საკონტაქტო ინფორმაცია (სოც. ქსელების ბმულები)\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(10, 5, 'staff', 'ჩვენი გუნდი', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სახელი გვარი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"პროფესია\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"საკონტაქტო ინფორმაცია (სოც. ქსელების ბმულები)\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(11, 6, 'partners', 'Partners', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"პარტნიორის დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(12, 6, 'partners', 'დასრულებული პროექტები ლოგოები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"პარტნიორის დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(13, 7, 'socialnetworks', 'Social networks', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სოციალური ქსელი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"font aswome-ის კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(14, 7, 'socialnetworks', 'სოციალური ქსელები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სოციალური ქსელი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"font aswome-ის კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(15, 8, 'usefulllinks', 'Usefull links', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"გადასვლა ( blank | self )\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(57, 29, 'ongoingprojects', 'On going projects', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(56, 28, 'map', 'რუკა', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"false\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"false\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"true\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 1),
(16, 8, 'usefulllinks', 'სასარგებლო ბმულები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"გადასვლა ( blank | self )\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(17, 9, 'languagedata', 'Language data', '{\n  \"date\": {\n      \"visibility\":\"true\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"აღწერა\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"true\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"true\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n\"additional1\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional2\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional3\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional4\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional5\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n\"map_coordinates\":{\n    \"visibility\":\"false\",\n    \"title\":\"რუკა\",\n    \"defaultValue\":\"\"\n}\n}', 'en', 0),
(18, 9, 'languagedata', 'თარგმნა', '{\n  \"date\": {\n      \"visibility\":\"true\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"აღწერა\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"true\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"true\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n\"additional1\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional2\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional3\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional4\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n \"additional5\":{\n    \"visibility\":\"false\",\n    \"title\":\"დამატებითი ველი\",\n    \"defaultValue\":\"\"\n },\n\"map_coordinates\":{\n    \"visibility\":\"false\",\n    \"title\":\"რუკა\",\n    \"defaultValue\":\"\"\n}\n}', 'ge', 0),
(19, 10, 'howfindus', 'How find us?', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"როგორ შეიტყვეთ ჩვენს შესახებ?\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(21, 11, 'news', 'News', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(20, 10, 'howfindus', 'საიდან შეიტყვეთ ჩვენს შესახებ?', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"როგორ შეიტყვეთ ჩვენს შესახებ?\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(22, 11, 'news', 'სიახლეები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(23, 12, 'vacancies', 'Vacancies', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"პროფესია\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(24, 12, 'vacancies', 'ვაკანსიები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"პროფესია\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(25, 13, 'gallery', 'Gallery', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"Youtube ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(26, 13, 'gallery', 'გალერეა', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"Youtube ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(27, 14, 'test', 'ტესტ სიახლეები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(28, 14, 'test', 'ტესტ სიახლეები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(29, 15, 'ongoing', 'On going projects', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(30, 15, 'ongoing', 'მიმდინარე პროექტები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(31, 16, 'finished', 'Finished projects', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(32, 16, 'finished', 'დასრულებული პროექტები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(33, 17, 'future', 'Future projects', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(34, 17, 'future', 'სამომავლო პროექტები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(35, 18, 'moretest', 'სატესტო', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(36, 18, 'moretest', 'სატესტო', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(37, 19, 'testmode', 'სატესტო მოდული', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(38, 19, 'testmode', 'სატესტო მოდული', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"true\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(39, 20, 'contactdata', 'Contact info', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"true\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 0),
(41, 21, 'socialnetworks', 'Social Networks', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"Font-awsome კლასი ( https:\\/\\/fontawesome.com\\/v4.7.0\\/cheatsheet\\/ )\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(40, 20, 'contactdata', 'საკონტაქტო ინფორმაცია', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"true\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 0),
(42, 21, 'socialnetworks', 'სოციალური ქსელები', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დასახელება\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"Font-Awsome კლასი ( https:\\/\\/fontawesome.com\\/v4.7.0\\/cheatsheet\\/ )\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(54, 27, 'რუკა', 'რუკა', '{\n			\"date\": {\n			  \"visibility\":\"true\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"true\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"true\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 1),
(43, 22, 'staff', 'Our Team', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სახელი გვარი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"სპეციალობა\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"საკონტაქტო ინფორმაცია\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"true\",\"title\":\"Facebook ბმული\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"true\",\"title\":\"Twitter ბმული\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"true\",\"title\":\"Linkedin ბმული\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტო\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(55, 28, 'map', 'Map', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"false\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"false\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"true\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 1),
(44, 22, 'staff', 'ჩვენი გუნდი', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სახელი გვარი\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"სპეციალობა\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"საკონტაქტო ინფორმაცია\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"true\",\"title\":\"Facebook ბმული\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"true\",\"title\":\"Twitter ბმული\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"true\",\"title\":\"Linkedin ბმული\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტო\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(45, 23, 'news', 'News', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(47, 24, 'slider', 'slider', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"მოკლე ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"ტაბი\",\"defaultValue\":\"_blank\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(46, 23, 'news', 'სიახლეები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(48, 24, 'slider', 'სლაიდერი', '{\"date\":{\"visibility\":\"false\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"true\",\"title\":\"მოკლე ტექსტი\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"ტაბი\",\"defaultValue\":\"_blank\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"true\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1);
INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(49, 25, 'usefulllink', 'Usefull Links', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(51, 26, 'workinghours', 'Working Hours', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დღე\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"სამუშაო საათი (დან-მდე)\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'en', 1),
(50, 25, 'usefulllink', 'სასარგებლო ბმულები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"სათაური\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"false\",\"title\":\"კლასი\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"true\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(52, 26, 'workinghours', 'სამუშაო საათები', '{\"date\":{\"visibility\":\"true\",\"title\":\"თარიღი\",\"defaultValue\":\"\"},\"title\":{\"visibility\":\"true\",\"title\":\"დღე\",\"defaultValue\":\"\"},\"pageText\":{\"visibility\":\"false\",\"title\":\"აღწერა\",\"defaultValue\":\"\"},\"classname\":{\"visibility\":\"true\",\"title\":\"სამუშაო საათი (დან-მდე)\",\"defaultValue\":\"\"},\"link\":{\"visibility\":\"false\",\"title\":\"ბმული\",\"defaultValue\":\"\"},\"additional1\":{\"visibility\":\"false\",\"title\":\"Additional 1\",\"defaultValue\":\"\"},\"additional2\":{\"visibility\":\"false\",\"title\":\"Additional 2\",\"defaultValue\":\"\"},\"additional3\":{\"visibility\":\"false\",\"title\":\"Additional 3\",\"defaultValue\":\"\"},\"additional4\":{\"visibility\":\"false\",\"title\":\"Additional 4\",\"defaultValue\":\"\"},\"additional5\":{\"visibility\":\"false\",\"title\":\"Additional 5\",\"defaultValue\":\"\"},\"photoUploaderBox\":{\"visibility\":\"false\",\"title\":\"ფოტოს მიმაგრება\",\"defaultValue\":\"\"},\"file_attach\":{\"visibility\":\"false\",\"title\":\"ფაილის მიმაგრება\",\"defaultValue\":\"\"},\"map_coordinates\":{\"visibility\":\"false\",\"title\":\"რუკის კორდინატები\",\"defaultValue\":\"\"}}', 'ge', 1),
(53, 27, 'რუკა', 'map', '{\n			\"date\": {\n			  \"visibility\":\"true\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"true\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"true\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 1),
(58, 29, 'ongoingprojects', 'On going projects', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(59, 30, 'project1', 'Project 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(60, 30, 'project1', 'Project 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(61, 31, 'project1floor1', 'Project 1 Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(62, 31, 'project1floor1', 'Project 1 Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 1\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 2\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 3\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(63, 32, 'slider', 'Slider', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"false\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"true\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 0),
(64, 32, 'slider', 'სლაიდერი', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"false\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"true\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 1\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 2\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 3\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"false\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 0),
(65, 33, 'floor9', 'Floor 9', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 0),
(66, 33, 'floor9', 'სართული 9', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 0),
(67, 34, 'floor1', 'Floor 1', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 1),
(68, 34, 'floor1', 'სართული 1', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 1),
(69, 35, 'abashidze34-floor-11538991181', 'Floor 1', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'en', 0),
(70, 35, 'abashidze34-floor-11538991181', 'Floor 1', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"სრული კვ.მ.\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"false\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"additional1\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფასი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional2\":{\n				\"visibility\":\"true\",\n				\"title\":\"სტატუსი\",\n				\"defaultValue\":\"\"\n			},\n			\"additional3\":{\n				\"visibility\":\"true\",\n				\"title\":\"კორდინატები\",\n				\"defaultValue\":\"\"\n			},\n			\"additional4\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 4\",\n				\"defaultValue\":\"\"\n			},\n			\"additional5\":{\n				\"visibility\":\"false\",\n				\"title\":\"Additional 5\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტო\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"map_coordinates\":{\n				\"visibility\":\"false\",\n				\"title\":\"რუკის კორდინატები\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 0),
(71, 36, 'test1539074814', 'test', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(72, 36, 'test1539074814', 'test', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(73, 37, 'slug15390754561539075479', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(74, 37, 'slug15390754561539075479', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(75, 38, 'slug15390861901539086357', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(76, 38, 'slug15390861901539086357', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(77, 39, 'slug15390887541539088766', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(78, 39, 'slug15390887541539088766', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(79, 40, 'slug15390889031539088916', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(80, 40, 'slug15390889031539088916', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(81, 41, 'slug15390901561539090214', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(82, 41, 'slug15390901561539090214', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1);
INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(83, 42, 'slug15392500511539250171', 'Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(84, 42, 'slug15392500511539250171', 'Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(85, 43, 'slug15392512101539251215', 'Floor 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(86, 43, 'slug15392512101539251215', 'Floor 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(87, 44, 'slug15392514941539251500', 'Floor 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(88, 44, 'slug15392514941539251500', 'Floor 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(89, 45, 'slug15392516181539251623', 'Floor 5', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(90, 45, 'slug15392516181539251623', 'Floor 5', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(91, 46, 'slug15392519581539251963', 'Floor 6', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(92, 46, 'slug15392519581539251963', 'Floor 6', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(93, 47, 'slug15392546861539254691', 'Floor 7', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(94, 47, 'slug15392546861539254691', 'Floor 7', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(95, 48, 'slug15392547791539254785', 'Floor 8', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(96, 48, 'slug15392547791539254785', 'Floor 8', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(97, 49, 'slug15392549361539254942', 'Floor 9', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(98, 49, 'slug15392549361539254942', 'Floor 9', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(99, 50, 'slug15392550191539255024', 'Floor 10', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(100, 50, 'slug15392550191539255024', 'Floor 10', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(101, 51, 'slug15392551251539255130', 'Floor 11', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(102, 51, 'slug15392551251539255130', 'Floor 11', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(103, 52, 'slug15392551851539255189', 'Floor 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(104, 52, 'slug15392551851539255189', 'Floor 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(105, 53, 'slug15409079411540907976', 'Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(106, 53, 'slug15409079411540907976', 'Floor 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(107, 54, 'slug15409100611540910065', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(108, 54, 'slug15409100611540910065', 'Floor 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(109, 55, 'slug15409101591540910180', 'Floor 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(110, 55, 'slug15409101591540910180', 'Floor 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0);
INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(111, 56, 'slug15409102071540910228', 'Floor 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(112, 56, 'slug15409102071540910228', 'Floor 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(113, 57, 'slug15409102351540910255', 'Floor 5', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(114, 57, 'slug15409102351540910255', 'Floor 5', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(115, 58, 'slug15409102871540910308', 'Floor 6', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(116, 58, 'slug15409102871540910308', 'Floor 6', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(117, 59, 'slug15409103161540910353', 'Floor 7', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(118, 59, 'slug15409103161540910353', 'Floor 7', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(119, 60, 'slug15409124651540912667', 'Floor 8', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(120, 60, 'slug15409124651540912667', 'Floor 8', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(121, 61, 'slug15409136131540913716', 'Floor 9', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(122, 61, 'slug15409136131540913716', 'Floor 9', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(123, 62, 'slug15409183221540918367', 'Floor 10', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(124, 62, 'slug15409183221540918367', 'Floor 10', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(125, 63, 'slug15409184531540918464', 'Floor 11', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(126, 63, 'slug15409184531540918464', 'Floor 11', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(127, 64, 'slug15409832561540983413', 'Floor 0', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(128, 64, 'slug15409832561540983413', 'Floor 0', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(129, 65, 'slug15409904741540991016', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(130, 65, 'slug15409904741540991016', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(131, 66, 'slug15409912851540991341', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(132, 66, 'slug15409912851540991341', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(133, 67, 'atori-tower1540991674', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(134, 67, 'atori-tower1540991674', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(135, 68, 'atori-tower1540992051', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(136, 68, 'atori-tower1540992051', 'Atori Tower', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(137, 69, 'slug15409927801540992902', 'Tsagareli 13', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(138, 69, 'slug15409927801540992902', 'Tsagareli 13', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0);
INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(139, 70, 'slug15409930451540993113', 'Mukhadze 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(140, 70, 'slug15409930451540993113', 'Mukhadze 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(141, 71, 'slug15409932291540993246', 'test 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(142, 71, 'slug15409932291540993246', 'test 1', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(143, 72, 'slug15409932531540993269', 'test 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(144, 72, 'slug15409932531540993269', 'test 2', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(145, 73, 'slug15409932751540993291', 'test 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(146, 73, 'slug15409932751540993291', 'test 3', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(147, 74, 'slug15410983781541098734', 'All Floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(148, 74, 'slug15410983781541098734', 'All Floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(149, 75, 'slug15412639661541264085', 'Project Title', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(150, 75, 'slug15412639661541264085', 'Project Title', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(151, 76, 'slug15413332691541333568', 'საბურთალო, ცაგარელის 68', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(152, 76, 'slug15413332691541333568', 'საბურთალო, ცაგარელის 68', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(153, 77, 'slug15413337831541333872', 'საბურთალო,ცაგარელის 64', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(154, 77, 'slug15413337831541333872', 'საბურთალო,ცაგარელის 64', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(155, 78, 'slug15413340751541334182', 'საბურთალო,ბურძგლას 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(156, 78, 'slug15413340751541334182', 'საბურთალო,ბურძგლას 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(157, 79, 'slug15413340751541334182', 'საბურთალო,ბურძგლას 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(158, 79, 'slug15413340751541334182', 'საბურთალო,ბურძგლას 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(159, 80, 'slug15413345961541334698', 'საბურთალო,ბურძგლას 46', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(160, 80, 'slug15413345961541334698', 'საბურთალო,ბურძგლას 46', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(161, 81, 'slug15413347401541334940', 'საბურთალო,საირმის35', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(162, 81, 'slug15413347401541334940', 'საბურთალო,საირმის35', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(163, 82, 'slug15413350241541335246', 'საბურთალო, ცაგარელის 58', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(164, 82, 'slug15413350241541335246', 'საბურთალო, ცაგარელის 58', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(165, 83, 'slug15413353401541335649', 'საბურთალო ,ცაგარელის 82', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(166, 83, 'slug15413353401541335649', 'საბურთალო ,ცაგარელის 82', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0);
INSERT INTO `usefull_modules` (`id`, `idx`, `type`, `title`, `fields`, `lang`, `status`) VALUES
(167, 84, 'slug15414208481541420995', 'Floor 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(168, 84, 'slug15414208481541420995', 'Floor 12', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(169, 85, 'slug15500051081550005189', 'საბურთალო , საირმის 37', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(170, 85, 'slug15500051081550005189', 'საბურთალო , საირმის 37', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(171, 86, 'slug15500051081550005190', 'საბურთალო , საირმის 37', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(172, 86, 'slug15500051081550005190', 'საბურთალო , საირმის 37', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(173, 87, 'slug15500052681550005337', 'ვაკე , მუხაძის 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(174, 87, 'slug15500052681550005337', 'ვაკე , მუხაძის 4', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(175, 88, 'slug15500073871550007517', 'პოლიტკოვსკაიას 40 ა', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(176, 88, 'slug15500073871550007517', 'პოლიტკოვსკაიას 40 ა', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(177, 89, 'slug15500541011550054262', 'პოლიტკოვსკაიას 40 ა', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(178, 89, 'slug15500541011550054262', 'პოლიტკოვსკაიას 40 ა', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(179, 90, 'slug15500593861550059814', 'აბაშიძე 55', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(180, 90, 'slug15500593861550059814', 'აბაშიძე 55', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(181, 91, 'slug15500606111550060618', 'All Floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(182, 91, 'slug15500606111550060618', 'All Floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0),
(183, 92, 'slug15500665491550066558', 'All floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 0),
(184, 92, 'slug15500665491550066558', 'All floors', '{\r\n			\"date\": {\r\n			  \"visibility\":\"false\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სრული კვ.მ.\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional1\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional2\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სტატუსი ( იყიდება / გაყიდული 1/2 )\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional3\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional4\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 4\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"additional5\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"Additional 5\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტო\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"map_coordinates\":{\r\n				\"visibility\":\"false\",\r\n				\"title\":\"რუკის კორდინატები\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 0),
(2, 'root', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_website`
--

CREATE TABLE `users_website` (
  `id` int(11) NOT NULL,
  `register_date` int(11) NOT NULL,
  `register_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trainingid` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `starttime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `howfind` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_website`
--

INSERT INTO `users_website` (`id`, `register_date`, `register_ip`, `trainingid`, `email`, `firstname`, `phone`, `age`, `starttime`, `howfind`, `status`) VALUES
(6, 1504825139, '94.240.219.60', 22, 'lasha@gmail.com', 'lasha', '599623555', '22', 'დილის 12 სთ', 24, 1),
(13, 1523517633, '94.240.245.46', 26, 'giorgigvazava87@gmail.com', 'ყიდვა გაყიდვა', '45', '30', '12:00', 54, 1),
(12, 1523517377, '94.240.245.46', 22, 'giorgigvazava87@gmail.com', 'გიორგი გვაზავა', 'de653be8dbf2b5d72e160b928fd91413c889aa2f', '30', '12:00', 52, 1),
(14, 1523518130, '94.240.245.46', 9, 'giorgigvazava87@gmail.com', 'test test', '5', '30', '12:00', 28, 1),
(15, 1523518201, '94.240.245.46', 9, 'giorgigvazava87@gmail.com', 'vaime', '654565165', '25', '12', 28, 1),
(16, 1523519296, '94.240.245.46', 0, 'giorgigvazava87@gmail.com', 'ყიდვა გაყიდვა', '', '', '', 0, 1),
(17, 1523519319, '94.240.245.46', 0, 'eka.tarkhnishvili@gmail.com', 'გიორგი გვაზავა', '', '', '', 0, 1),
(18, 1523519419, '94.240.245.46', 22, 'giorgigvazava87@gmail.com', 'ყიდვა გაყიდვა', '215', '5556', '12:00', 25, 1),
(19, 1523543703, '94.240.245.46', 26, 'ggg.gigauri@gmail.com', 'სახელი გვარი', '599989898', '32', '12:00', 26, 1),
(20, 1524031788, '94.240.245.46', 56, 'giorgigvazava87@gmail.com', 'test test', '599623555', '30', '12:00', 25, 1),
(21, 1524036607, '92.54.209.29', 78, 'lika.katashvili@mail.ru', 'lika', '568121212', '20', '08:00', 27, 1),
(22, 1524036687, '92.54.209.29', 78, 'lika.katashvili@mail.ru', 'lika', '151515151', '29', '1212', 24, 1),
(23, 1524039672, '91.184.107.23', 74, 'l.dzneladze97@gmail.com', 'dzneladze lela', '597888159', '20', 'shetanxmebit', 26, 1),
(24, 1524040133, '188.129.160.41', 66, 'guga@iaa.ge', 'Guram', '995599335733', '33', 'All', 26, 1),
(25, 1524207113, '92.54.209.29', 58, 'ninovipicg@gmail.com', 'nino', '593618212', '50', '18', 26, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_system`
--
ALTER TABLE `file_system`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `file_system` ADD FULLTEXT KEY `file_path` (`file_path`);

--
-- Indexes for table `georgia`
--
ALTER TABLE `georgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaccount_nav`
--
ALTER TABLE `myaccount_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `navigation` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `navigation` ADD FULLTEXT KEY `text` (`text`);
ALTER TABLE `navigation` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_close`
--
ALTER TABLE `payments_close`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_dates`
--
ALTER TABLE `products_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subservices`
--
ALTER TABLE `subservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usefull`
--
ALTER TABLE `usefull`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `usefull` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `usefull` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `usefull_modules`
--
ALTER TABLE `usefull_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_website`
--
ALTER TABLE `users_website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `file_system`
--
ALTER TABLE `file_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `georgia`
--
ALTER TABLE `georgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myaccount_nav`
--
ALTER TABLE `myaccount_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_close`
--
ALTER TABLE `payments_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3383;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_dates`
--
ALTER TABLE `products_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subservices`
--
ALTER TABLE `subservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usefull`
--
ALTER TABLE `usefull`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `usefull_modules`
--
ALTER TABLE `usefull_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_website`
--
ALTER TABLE `users_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
