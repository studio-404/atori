-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 02:45 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vipintel_web`
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

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `names`, `lang`) VALUES
(1, 'თბილისი', 'ge'),
(2, 'ბათუმი', 'ge'),
(3, 'ქუთაისი', 'ge'),
(4, 'აბასთუმანი', 'ge'),
(5, 'აბაშა', 'ge'),
(6, 'აგარა', 'ge'),
(7, 'ადიგენი', 'ge'),
(8, 'ამბროლაური', 'ge'),
(9, 'ანაკლია', 'ge'),
(10, 'ანანური', 'ge'),
(11, 'ასპინძა', 'ge'),
(12, 'ახალგორი', 'ge'),
(13, 'ახალდაბა', 'ge'),
(14, 'ახალქალაქი', 'ge'),
(15, 'ახალციხე', 'ge'),
(16, 'ახმეტა', 'ge'),
(17, 'ბაზალეთი', 'ge'),
(18, 'ბაკურიანი', 'ge'),
(19, 'ბაღდათი', 'ge'),
(20, 'ბახმარო', 'ge'),
(21, 'ბოლნისი', 'ge'),
(22, 'ბორჯომი', 'ge'),
(23, 'ბულაჩაური', 'ge'),
(24, 'გაგრა', 'ge'),
(25, 'გალი', 'ge'),
(26, 'გარდაბანი', 'ge'),
(27, 'გონიო', 'ge'),
(28, 'გორი', 'ge'),
(29, 'გრიგოლეთი', 'ge'),
(30, 'გუდაუთა', 'ge'),
(31, 'გუდაური', 'ge'),
(32, 'გულრიფში', 'ge'),
(33, 'გურჯაანი', 'ge'),
(34, 'დედოფლისწყარო', 'ge'),
(35, 'დმანისი', 'ge'),
(36, 'დუშეთი', 'ge'),
(37, 'ვაზისუბანი', 'ge'),
(38, 'ვანი', 'ge'),
(39, 'ზედაზენი', 'ge'),
(40, 'ზესტაფონი', 'ge'),
(41, 'ზუგდიდი', 'ge'),
(42, 'თეთრიწყარო', 'ge'),
(43, 'თელავი', 'ge'),
(44, 'თერჯოლა', 'ge'),
(45, 'თიანეთი', 'ge'),
(46, 'იგოეთი', 'ge'),
(47, 'კარდენახი', 'ge'),
(48, 'კასპი', 'ge'),
(49, 'კვარიათი', 'ge'),
(50, 'კოდორი', 'ge'),
(51, 'ლაგოდეხი', 'ge'),
(52, 'ლანჩხუთი', 'ge'),
(53, 'ლენტეხი', 'ge'),
(54, 'ლიკანი', 'ge'),
(55, 'მანგლისი', 'ge'),
(56, 'მარნეული', 'ge'),
(57, 'მარტვილი', 'ge'),
(58, 'მარტყოფი', 'ge'),
(59, 'მახინჯაური', 'ge'),
(60, 'მესტია', 'ge'),
(61, 'მისაქციელი', 'ge'),
(62, 'მუხრანი', 'ge'),
(63, 'მცხეთა', 'ge'),
(64, 'ნატანები', 'ge'),
(65, 'ნატახტარი', 'ge'),
(66, 'ნინოწმინდა', 'ge'),
(67, 'ნუნისი', 'ge'),
(68, 'ოზურგეთი', 'ge'),
(69, 'ონი', 'ge'),
(70, 'ოჩამჩირე', 'ge'),
(71, 'პანკისი', 'ge'),
(72, 'ჟინვალი', 'ge'),
(73, 'რუსთავი', 'ge'),
(74, 'საგარეჯო', 'ge'),
(75, 'საგურამო', 'ge'),
(76, 'საირმე', 'ge'),
(77, 'სამტრედია', 'ge'),
(78, 'სართიჭალა', 'ge'),
(79, 'სარფი', 'ge'),
(80, 'საჩხერე', 'ge'),
(81, 'სენაკი', 'ge'),
(82, 'სიონი', 'ge'),
(83, 'სიღნაღი', 'ge'),
(84, 'სოხუმი', 'ge'),
(85, 'სურამი', 'ge'),
(86, 'სუფსა', 'ge'),
(87, 'ტყვარჩელი', 'ge'),
(88, 'ტყიბული', 'ge'),
(89, 'ურეკი', 'ge'),
(90, 'ფასანაური', 'ge'),
(91, 'ფოთი', 'ge'),
(92, 'ქარელი', 'ge'),
(93, 'ქედა', 'ge'),
(94, 'ქობულეთი', 'ge'),
(95, 'ქსანი', 'ge'),
(96, 'ყაზბეგი', 'ge'),
(97, 'ყვარელი', 'ge'),
(98, 'შატილი', 'ge'),
(99, 'შეკვეთილი', 'ge'),
(100, 'შიომღვიმე', 'ge'),
(101, 'შუახევი', 'ge'),
(102, 'ჩაქვი', 'ge'),
(103, 'ჩოხატაური', 'ge'),
(104, 'ჩხოროწყუ', 'ge'),
(105, 'ცაგერი', 'ge'),
(106, 'ცემი', 'ge'),
(107, 'ციხისძირი', 'ge'),
(108, 'ცხვარიჭამია', 'ge'),
(109, 'ცხინვალი', 'ge'),
(110, 'წალენჯიხა', 'ge'),
(111, 'წალკა', 'ge'),
(112, 'წაღვერი', 'ge'),
(113, 'წეროვანი', 'ge'),
(114, 'წილკანი', 'ge'),
(115, 'წინანდალი', 'ge'),
(116, 'წიწამური', 'ge'),
(117, 'წნორი', 'ge'),
(118, 'წოდორეთი', 'ge'),
(119, 'წყალტუბო', 'ge'),
(120, 'ჭიათურა', 'ge'),
(121, 'ხარაგაული', 'ge'),
(122, 'ხაშური', 'ge'),
(123, 'ხელვაჩაური', 'ge'),
(124, 'ხობი', 'ge'),
(125, 'ხონი', 'ge'),
(126, 'ხულო', 'ge'),
(127, 'ჯავა', 'ge'),
(128, 'bob', 'ge');

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
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `date`, `ip`, `commentId`, `firstname`, `organization`, `email`, `comment`, `lang`, `read`, `status`) VALUES
(1, 1482608813, '94.240.219.15', 24, 'jhjg', 'hjg', 'hjg', 'hjhjghjghj', 'ge', 1, 1),
(2, 1482774840, '94.240.219.15', 24, 'გიო', 'სტუდია 404', 'info@404.ge', 'gtxovt gadadoT kanoni', 'ge', 1, 1),
(3, 1523468579, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', '', 'kasdlkasdmasd', 'ge', 1, 1),
(4, 1523468604, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'kasdlkasdmasd', 'ge', 1, 1),
(5, 1523468934, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'dslksdkl klsamdlads', 'ge', 1, 1),
(6, 1523469033, '94.240.245.46', 1, 'ყიდვა გაყიდვა', 'nope', 'giorgigvazava87@gmail.com', 'klldksa kasmdklamsdjansdknamndasmndajksdahjsdb hjbdsfhjsdhjf b b bh jbsdhjf sdhj bfshjdf', 'ge', 1, 1),
(7, 1523543833, '94.240.245.46', 1, 'სახელი გვარი', 'nope', 'test@gmail.com', 'სდლკფსკლდ მკდსფ მკსდფლკსმდფკ ჯნსდკჯფ ნსდჯკფ ნსდკჯფ ', 'ge', 1, 1),
(8, 1524031751, '94.240.245.46', 1, 'test', 'nope', 'test@gmail.com', 'test', 'ge', 1, 1);

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
(7, 1510737790, 2, 0, 'JX5hmNN4a74ZoKh551I3S61rM', 0, 'filemanager/20731_292132622250_8253899_n.jpg', 81725, 'module', '', 0);

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

INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(49, 2, 1, 1523102602, 0, 'news', 'News', '<p>სიახლეები</p>', '<p>სიახლეები</p>', 'news', 'news', '', '', 'en', 1, 0, 0),
(2, 1, 0, 1504340572, 0, 'plugin', 'Home', '<p>Home Page</p>', '<p>Home Page</p>', 'home', 'false', '', '', 'en', 1, 0, 0),
(3, 1, 0, 1504340572, 0, 'plugin', 'მთავარი', '<p>შპს \"VIP Intellect Group\" გამორჩეული მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, ჩვენი&nbsp;გუნდი უკვე 17 წელია ატარებს ტრენინგებს სხვადასხვა მიმართულებით. უკვე ასობით ადგილობრივი თუ საერთაშორისო კომპანიის კადრები არიან ჩვენი კურსდამთავრებულები</p>', '<p>მთავარი გვერდი</p>', 'home', '', '', '', 'ge', 1, 0, 0),
(78, 16, 14, 1523108335, 0, 'text', 'ვებ გვერდების დამზადება', '<p>ვებ გვერდების დამზადება</p>', '<p>ვებ გვერდების დამზადება</p>', 'consult-develop-website', 'false', '', '', 'ge', 2, 0, 0),
(77, 16, 14, 1523108335, 0, 'text', 'ვებ გვერდების დამზადება', '<p>ვებ გვერდების დამზადება</p>', '<p>ვებ გვერდების დამზადება</p>', 'consult-develop-website', 'false', '', '', 'en', 2, 0, 0),
(76, 15, 14, 1523108053, 0, 'text', 'საბუღალტრო', '', '<p>საბუღალტრო მომსახურება</p>', 'consult-account', '', '', '', 'ge', 1, 0, 0),
(247, 101, 14, 1524030291, 0, 'text', 'ფინანსური მომსახურება', '', '<p>ფინანსური მომსახურება</p>', 'finansial-service', '', '', '', 'en', 3, 0, 0),
(248, 101, 14, 1524030291, 0, 'text', 'ფინანსური მომსახურება', '', '<p>ფინანსური მომსახურება</p>', 'finansial-service', '', '', '', 'ge', 3, 0, 0),
(249, 102, 0, 1524032155, 1, 'plugin', 'დასრულებული პროექტები ვრცლად', '<p>დასრულებული პროექტები ვრცლად</p>', '<p>დასრულებული პროექტები ვრცლად</p>', 'finish project view', 'false', '', '', 'en', 3, 0, 1),
(250, 102, 0, 1524032155, 1, 'plugin', 'დასრულებული პროექტები ვრცლად', '<p>დასრულებული პროექტები ვრცლად</p>', '<p>დასრულებული პროექტები ვრცლად</p>', 'finish project view', 'false', '', '', 'ge', 3, 0, 1),
(251, 103, 0, 1524061793, 1, 'plugin', 'საიტის რუკა', '', '<p>საიტის რუკა</p>', 'sitemap', 'false', '', '', 'en', 3, 0, 0),
(252, 103, 0, 1524061793, 1, 'plugin', 'საიტის რუკა', '', '<p>საიტის რუკა</p>', 'sitemap', 'false', '', '', 'ge', 3, 0, 0),
(75, 15, 14, 1523108053, 0, 'text', 'საბუღალტრო', '<p>საბუღალტრო</p>', '<p>საბუღალტრო</p>', 'consult-account', 'false', '', '', 'en', 1, 0, 0),
(99, 27, 10, 1523347012, 0, 'news', 'test siaxleebi', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'en', 4, 0, 1),
(74, 14, 0, 1523108012, 0, 'text', 'კონსალტინგი', '<p>კონსალტინგი</p>', '', 'consulting', 'false', '', '', 'ge', 4, 0, 0),
(73, 14, 0, 1523108012, 0, 'text', 'Consulting', '<p>კონსალტინგი</p>', '', 'consulting', 'false', '', '', 'en', 4, 0, 0),
(72, 13, 10, 1523106616, 0, 'plugin', 'სამომავლო', '<p>სამომავლო</p>', '<p>სამომავლო</p>', 'future', 'false', '', '', 'ge', 3, 0, 1),
(71, 13, 10, 1523106616, 0, 'plugin', 'სამომავლო', '<p>სამომავლო</p>', '<p>სამომავლო</p>', 'future', 'false', '', '', 'en', 3, 0, 1),
(70, 12, 10, 1523106588, 0, 'plugin', 'დასრულებული', '<p>დასრულებული</p>', '<p>დასრულებული</p>', 'finished', 'false', '', '', 'ge', 1, 0, 1),
(69, 12, 10, 1523106588, 0, 'plugin', 'დასრულებული', '<p>დასრულებული</p>', '<p>დასრულებული</p>', 'finished', 'false', '', '', 'en', 1, 0, 1),
(68, 11, 10, 1523106521, 0, 'plugin', 'მიმდინარე', '<p>მიმდინარე</p>', '<p>მიმდინარე</p>', 'ongoing', 'false', '', '', 'ge', 1, 0, 1),
(67, 11, 10, 1523106521, 0, 'plugin', 'მიმდინარე', '<p>მიმდინარე</p>', '<p>მიმდინარე</p>', 'ongoing', 'false', '', '', 'en', 1, 0, 1),
(157, 56, 9, 1523702520, 0, 'text', 'საბუღალტრო კომპიუტერული პროგრამები', '', '', 'accouncting-programs', '', '', '', 'en', 2, 0, 0),
(65, 10, 0, 1523105248, 0, 'text', 'Projects', '<p>პროექტები</p>', '', 'projects', 'false', '', '', 'en', 3, 0, 0),
(66, 10, 0, 1523105248, 0, 'text', 'პროექტები', '<p>პროექტები</p>', '', 'projects', '', '', '', 'ge', 3, 0, 0),
(100, 27, 10, 1523347012, 0, 'news', 'test siaxleebi', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'ge', 4, 0, 1),
(64, 9, 7, 1523103994, 0, 'text', 'ბუღალტერია, საგადასახადო', '', '', 'accounting', '', '', '', 'ge', 1, 0, 0),
(62, 8, 7, 1523103917, 0, 'text', 'კომპიუტერული პროგრამები', '', '', 'computer-programms', '', '', '', 'ge', 2, 0, 0),
(165, 60, 8, 1523702880, 0, 'text', 'საოფისე პროგრამები', '', '', 'Ms-Office', '', '', '', 'en', 1, 0, 0),
(166, 60, 8, 1523702880, 0, 'text', 'საოფისე პროგრამები', '', '<p>გთავაზობთ MS Office 2016; Microsoft Project Professional პროექტების მართვა; Microsoft Visio.</p>\n<p>გაითვალისწინეთ: პროგრამებს უძღვებიან სერტიფიცირებული ტრენერები!</p>\n<p><strong>საოფისე პროგამების საბაზო კურსი</strong></p>\n<p>საბაზო კურსი გათვალისწინებულია მათთვის, ვინსც უკვე იცის ზემოთ ჩამოთვლილი პროგრამებიდან ძირითადი მასალა, ან უნდათ შეისწავლოს მხოლოდ WS Word და WS Excel, ან შეავსონ თავიანთი საბაზო ცოდნა, იმ პროგრამებით რომ ერკვეოდნენ საოფისე პროგრამებში სრულად.</p>\n<p>სწავლის ხანგრძლივობა 15 - 1 საათიანი ლექცია <br />ღირებულება ერთი მსმენელისთვის ჯგუფში - 110 ლარი <br />ღირებულება ერთი მსმენელისთვის 2-3 კაციან ჯგუფში - 130 ლარი <br />ღირებულება ერთი მსმენელისთვის ინდივიდუალურად- 160 ლარი</p>\n<p><strong>საოფისე პროგრამების პროფესიონალური დონის კურსი!</strong></p>\n<p><br />Windows; MS Word; MS Excel; MS PowePoint; MS Publisher; Adobe Reader; WinRar; Nero; Ashampo; MS Outlook; Internet.</p>\n<p>კურსი განკუთვნილია: მათთვის, ვისაც სურს შეისწავლოს პროფესიონალურ დონეზე სრული საოფისე პროგრამები, რომელთაც უწევთ საქმის წარმოება, ნებისმიერი ტიპის დოკუმენტის შექმნა თანამედროვე სტანდარტებით. კურსი ითვალისწინებს კომპიუტერთან მუშაობისთვის აუცილებელ ელემენტების შესწავლა, რომლის დაუფლების შემდგომ მსმენელს შეუძლია გააგრძელოს პროფესიონალური კომპიუტერული პროგრამების შესწავლა სხვადასხვა მიმართულებით და სპეციალობით.</p>\n<p>გაითვალისწინეთ: მეცადინეობების მსვლელობისას, მსმენელი ახალ ახსნილი მასალის დამუშავებაზე თავად მუშაობს პრაქტიკული სავარჯიშოების დახმარებით, როგორც ადგილზე, ასევე ექნება დავალებების სახით სახლში შესასრულებელი სავარჯიშოები, რაც კურსს ხდის მეტად პრაქტიკულს.<br />სრული კურსის დასრულების შემდეგ შეძლებთ:</p>\n<p>** ოპერაციული სისტემის მოხმარებას, მისი ძირითადი პროგრამებით მუშაობას, ოპერაციული სისტემის ყველა ბრძანების გამოყენებას. ინფორმაციის ტიპების გარჩევას და მათ მარტივ ძებნას, როგორც კომპიუტერში ასევე ინტერნეტში. დამხმარე პროგრამების გამოყენებას ანტივირუსი, Adobe Reader, WinRar, Nero. ინფორმაციის გადასატან საშუალებებთან მუშაობას (მეხსიერების ბარათთან, ლაზერულ დისკთან), კომპიუტერის სხვადასხვა მომხმარებლის შექმნას და მათ დაცვას. <br />** Word-ტექსტურ რედაქტორთან მუშაობას, მომართვას, ყველა საჭირო ბრძანების გამოყენებას, დოკუმენტის პარამეტრების მართვა, ტექსტის ფორმატირებას, დოკუმენტის შენახვის ტიპები, ამობეჭდვა, ფიგურებთან, ცხრილებთან, დიაგრამებთან კოლონტიტულებთან მუშაობა, მაკროსების გამოყენებას.<br />** Excel-მომართვა ექსელის, არეალის დაფიქსირებას. რამდენიმე დოკუმენტთან ერთდროულად მუშაობას, დოკუმენტის პარამეტრების მართვა: ბეჭდვის ფუნქციის გამოყენება, ფაილის ფორმატებთან მუშაობა. ცხრილზე მუშაობა, შიტზე მოქმედებები, მონაცემების ტიპები, ავტო შევსება, სიები ფილტრაცია, სორტირება, დიაგრამების აგება, conditional formating, ფორმულების sum, average count max min if, if+if sumif countif today day 360 weekday.<br />** PowerPoint - სლაიდებთან მუშაობა, თემები გადასვლის ეფექტები და დროის მართვა, ფიგურები და მათზე მოქმედებები, Hyperlink, Action, პრეზენტაციის შენახვის სხვადასხვა ტიპების გამოყენება, ამობეჭდვა, გაფორმება მუსიკით და ვიდეო რგოლით, ფოტო ალბომის შექმნა.<br />** Publisher გამოყენება : საგამომცემლო სამუშაოების შექმნა<br />** ინტერნეტი: ინფომრაციის მოძიება გადმოწერა , სხვდასხვა ფასდაკლების ვებ გვერდზე რეგისტრაცია და მოხმარება , ელექტრონული ფოსტის რეგისტრაცია, კალენდრის გამოყენება Outlook Express-ის მოხმარება.</p>\n<p>დამხმარე მოწყობილობებთან მუშაობა, სკანერი, პრინტერი, ვიდეო თვალი, პროექტორი.</p>\n<p>სწავლის ხანგრძლივობა - 24 ლექცია<br />ღირებულება ერთი მსმენელისთვის ჯგუფში თვეში - 100 ლარი<br />ღირებულება ერთი მსმენელისთვის 2-3 კაციან ჯგუფში თვეში - 120 ლარი <br />ღირებულება ერთი მსმენელისთვის ინდივიდუალურად თვეში - 140 ლარი</p>\n<p><strong>Microsoft Project Professional 2016/2013. პროექტების მართვა:</strong></p>\n<p>** მოდული 1. პროექტების მართვის საწყისები, MS Project-ის ინტერფეისი<br />** მოდული 2. დაგეგმვა. პროექტის თვისებების ინიციალიზაცია, დავალებათა იერარქიული სტრუქტურის შექმნა<br />** მოდული 3. სამუშაო დროის მენეჯმენტი<br />** მოდული 4. დაგეგმვა. კრიტიკული გზის მეთოდი<br />** მოდული 5. დაგეგმვა, სხვა თვისებები<br />** მოდული 6. პროექტის რესურსების დაგეგმვა<br />** მოდული 7. პროექტის ოპტიმიზაცია<br />** მოდული 8. პროექტის მიმდინარეობის შემოწმება.<br />** მოდული 9. პარამეტრების შერჩევა, ვიზუალური თვისებები<br />** მოდული 10. სპეციალური პარამეტრები<br />** მოდული 11. მულტიპროექტი</p>\n<p>ჯგუფში 10 საათი: 250 ლარი ერთი მსმენელისთვის<br />ინდივიდუალურად - 8 საათი: 400 ლარი</p>\n<p>ლექციები ჩატარდება როგორც ქართულ, ასევე ინგლისურ ენაზე. გთავაზობთ კორპორატიულ ტრენინგებს!</p>\n<p><strong>Microsoft Visio 2013/2010. დიაგრამები და გრაფიკები:</strong></p>\n<p>** მოდული 1. Visio-ს შესაძლებლობები. დოკუმენტების შაბლონები და ფიგურები.<br />** მოდული 2. კომპლექსური დიაგრამების შექმნა, ფიგურების მონაცემებთან მუშაობა.<br />** მოდული 3. მრავალგვერდიანი დიაგრამები, პროექტები<br />** მოდული 4. დაკავშირება გარე ობიექტებთან, მონაცემთა ვიზუალიზაცია<br />** მოდული 5. დიაგრამების სხვადასხვა ტიპების გადახედვა</p>\n<p>ჯგუფში - 8 საათი: 220 ლარი ერთი მსმენელისთვის<br />ინდივიდუალურად - 6 საათი: 300 ლარი</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული მომხმარებლებისთვის მსმენელთა მომზადება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით, სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე, შეიქმნება სპეციალიზირებული პროგრამა.</p>\n<p>[registration]</p>', 'Ms-Office', '', '', '', 'ge', 1, 0, 0),
(63, 9, 7, 1523103994, 0, 'text', 'ბუღალტერია საგადასახადო', '<p>ბუღალტერია საგადასახადო</p>', '<p>ბუღალტერია საგადასახადო</p>', 'accounting', 'false', '', '', 'en', 1, 0, 0),
(61, 8, 7, 1523103917, 0, 'text', 'კომპიუტერული პროგრამები', '<p>კომპიუტერული პროგრამები</p>', '<p>კომპიუტერული პროგრამები</p>', 'computer-programms', 'false', '', '', 'en', 2, 0, 0),
(60, 7, 0, 1523103835, 0, 'text', 'ტრენინგები', '', '', 'trainings', '', '', '', 'ge', 2, 0, 0),
(59, 7, 0, 1523103835, 0, 'text', 'Trainings', '<p>Trainings</p>', '', 'trainings', 'false', '', '', 'en', 2, 0, 0),
(58, 6, 1, 1523103492, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'gallery', '', '', 'ge', 4, 0, 0),
(57, 6, 1, 1523103492, 0, 'plugin', 'Gallery', '<p>Gallery</p>', '<p>Gallery</p>', 'gallery', 'false', '', '', 'en', 4, 0, 0),
(56, 5, 0, 1523103462, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'false', '', '', 'ge', 2, 0, 1),
(55, 5, 0, 1523103462, 0, 'plugin', 'გალერეა', '<p>გალერეა</p>', '<p>გალერეა</p>', 'gallery', 'false', '', '', 'en', 2, 0, 1),
(54, 4, 1, 1523103395, 0, 'plugin', 'ჩვენი გუნდი', '<p>ჩვენი გუნდი</p>', '<p>ჩვენი გუნდი</p>', 'staff', 'staff', '', '', 'ge', 3, 0, 0),
(109, 32, 0, 1523436077, 1, 'plugin', 'დარეგისტრირდი ტრენინგზე', '<p>დარეგისტრირდი ტრენინგზე</p>', '<p>დარეგისტრირდი ტრენინგზე</p>', 'register', 'false', '', '', 'en', 2, 0, 0),
(53, 4, 1, 1523103395, 0, 'plugin', 'Team', '<p>Team</p>', '<p>Team</p>', 'staff', 'staff', '', '', 'en', 3, 0, 0),
(52, 3, 1, 1523102643, 0, 'text', 'ჩვენ შესახებ', '', '<p>შპს \"VIP Intellect Group\" გამორჩეული მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, ჩვენი&nbsp;გუნდი უკვე 17 წელია ატარებს ტრენინგებს სხვადასხვა მიმართულებით. უკვე ასობით ადგილობრივი თუ საერთაშორისო კომპანიის კადრები არიან ჩვენი კურსდამთავრებულები.</p>\n<p>პროფესიონალი ტრენერები, მოწვეული სხვადასხვა წარმატებული კომპანიიდან, პრაქტიკული და ინოვაციური ტრენინგები, მუდმივად განახლებული სასწავლო პროგრამები, მომხმარებელის მოთხოვნაზე მორგებული ლექციები, სასიამოვნო სასწავლო გარემო - ყველა პირობა ხარისხიანი ცოდნის მისაღებად!<br />ჩვენთან მიღებული ცოდნის შედეგად კურსდამთავრებულები აქტიურად აგრძელებენ წარმატებულ საქმანობას სხვადასხვა სფეროში.</p>\n<p>გაითვალისწინეთ! ჩვენ გაძლევთ ხარისხს, თქვენი წარმატებისთვის!</p>\n<p>შპს \"VIP Intellect Group\"-ში სხვადასხვა კურსი გავლის შემდეგ მსმენელები სტაჟირებას აგრძელებენ შესაბამისი სპეციალობით. ჩვენ ვთანამშრომლობთ აუდიტორულ და ბუღალტრულ კომპანიებთან, სასტუმროებთან, ტურისტულ კომპანიებთან, ფარმაცევტულ კომპანიებთან და ვებ სტუდიებთან, აქტიურად იგზავნებიან ჩვენი კურსდამთავრებულები სტაჟირებაზე, რისი დამთავრების შემდეგაც ჩვენგან და სტაჟიორი კომპანიისგან ეძლევათ რეკომენდაციები და დასაქმების რეალური შესაძლებლობა!</p>\n<p>,,VIP Intellect Group-ის\" პროფესიონალი პროგრამისტები, მარკეტოლოგები, ბიზნეს ექსპერტები, ფსიქოლოგები და ბუღალტრები კვალიფიციური ტრენინგებთან ერთად გთავაზობენ საკონსულტაციო მომსახურებას.</p>\n<p>ჩვენთან არსებული ვებ სტუდია, რომელშიც გაერთიანებულები არიან ახალგზარდა პროგრამისტები და დიზაინერები, გთავაზობენ თანამედროვე სტანდარტების შესაბამისად, პროფესიონალური დონის ვებ გვერდების შექმნას, ადმიისტრირებას და ოპტიმიზაციას.</p>\n<p>,,VIP Intellect Group\" პროფესიონალიზმს ადასტურებს ის ფაქტი, რომ ათეულობით კოლეჯთან გვაქვს გაფორმებული მემორანდუმი და კოლეჯის კურსდამთავრებულები ჩვენთან გადიან საწარმოო პრაქტიკებს.<br />ძნელად თუ მოიძებნება საქართველოში ისეთი დიდი ხნის სასწავლო ცენტრი როგორიც ჩვენია, რადგან ,,VIP Intellect Group&ldquo; ძირითად გუნდს უკვე 17 წლიანი ისტორია აქვს!</p>\n<p>თქვენ ნამდვილად გაქვთ საფუძველი, რომ ენდოთ ჩვენს 17 წლიან გამოცდილებას!</p>\n<p>გახსოვდეთ, ხარისხი არასოდეს გადადის მოდიდან!</p>\n<p>პატივისცემით:<strong> ნინო მღებრიშვილი!</strong><br /><strong>VIP Intellect Group</strong>-ის დირექტორი!</p>', 'about-us', '', '', '', 'ge', 2, 0, 0),
(51, 3, 1, 1523102643, 0, 'text', 'About us', '<p>ჩვენ შესახებ</p>', '<p>ჩვენ შესახებ</p>', 'about-us', 'false', '', '', 'en', 2, 0, 0),
(50, 2, 1, 1523102602, 0, 'news', 'სახლეები', '<p>სიახლეები</p>', '<p>სიახლეები</p>', 'news', 'news', '', '', 'ge', 1, 0, 0),
(79, 17, 0, 1523108415, 0, 'text', 'Internship', '<p>სტაჟირება</p>', '', 'Internship', 'false', '', '', 'en', 5, 0, 0),
(80, 17, 0, 1523108415, 0, 'text', 'სტაჟირება', '<p>სტაჟირება</p>', '', 'Internship', 'false', '', '', 'ge', 5, 0, 0),
(81, 18, 17, 1523108595, 0, 'text', 'ბუღალტრულ კომპანიაში', '<p>ბუღალტრულ კომპანიაში</p>', '<p>ბუღალტრულ კომპანიაში</p>', 'In-the-accounting-company', 'false', '', '', 'en', 1, 0, 0),
(82, 18, 17, 1523108595, 0, 'text', 'ბუღალტრულ კომპანიაში', '', '<p>\"VIP Intellect Group\"-ის საბუღალტრო აღრიცხვისა და პრაქტიკული ბუღალტერიის კურსდამთავრებულები სტაჟირებას გაივლიან შპს \"AMG\"-ის გამოცდილ და პროფესიონალ ბუღალტრებთან.</p>\n<p>სტაჟირების დასრულების შემდეგ მოგეცემათ რეკომენდაცია როგორც ჩვენი სასწავლო ცენტრისგან, ასევე კომპანია \"AMG\"-ისგან.</p>\n<p>ეს იქნება რეალური პრაქტიკა, რომ შემდგომაც კურსდამთავრებულმა უნდა შეძლოს დამოუკიდებლად აწარმოოს საბუღალტრო საქმიანობა სხვადასხვა სფეროში!</p>\n<p>სტაჟირებისას პრაქტიკანტს რეალურად ექნება შეხება:</p>\n<p>1. მოქმედი, სხვადასხვა ორგანიზაციების რეალური დოკუმენტების დამუშავებასთან<br />2. კომპიუტერული პროგრამა ორისის პრაქტიკულად გამოყენება - რეალურ საბუთებზე დაყრდნობით<br />3. http://www.rs.ge-სთან მუშაობა<br />4. ინტერნეტ ბანკინგით სარგებლობა<br />5. სრული საბუღალტრო დოკუმენტაციების დამუშავება ერთ საოპერაციო პერიოდში.</p>\n<p>პრაქტიკის ხანგრძლივობა: ერთად ერთი თვე<br />დღეში არანაკლებ 2 საათისა:<br />ღირებულება ინდივიდუალურად: 300 ლარი</p>\n<p>გაითვალისწინეთ: თქვენ პრაქტიკულ ბუღალტრულ საქმიანობას შეგასწავლიან ისეთი დონის ბუღალტრები, რომელთაც აქვთ დიდი ხნის მუშაობის გამოცდილება წარმოების, ვაჭრობის და მომსახურების სფეროს ყველანაირ ორგანიზაციაში!</p>\n<p>დამწყები ბუღალტრებისთვის გაგიწევთ საკონსულტაციო მომსახურებას, აგიწყობთ საბუღალტრო აღრიცხვიანობას პროგრამაში, დაგილაგებთ საბუღალტრო დოკუმენტაციას და მოგიწესრიგებთ პრობლემებს.</p>\n<p>&nbsp;</p>\n<p><a class=\"registrationButton\" href=\"http://vipintellect.ge/ge/register?r=accounting-stajior\">რეგისტრაცია</a></p>', 'In-the-accounting-company', '', '', '', 'ge', 1, 0, 0),
(83, 19, 0, 1523110201, 0, 'plugin', 'Vacancies', '<p>ვაკანსიები</p>', '<p>ვაკანსიები</p>', 'vacancies', 'false', '', '', 'en', 6, 0, 0),
(84, 19, 0, 1523110201, 0, 'plugin', 'ვაკანსიები', '<p>ვაკანსიები</p>', '<p>ვაკანსიები</p>', 'vacancies', 'vacancies', '', '', 'ge', 6, 0, 0),
(85, 20, 0, 1523110224, 0, 'plugin', 'Contact', '<p>კონტაქტი</p>', '<p>კონტაქტი</p>', 'contact', 'false', '', '', 'en', 7, 0, 0),
(86, 20, 0, 1523110224, 0, 'plugin', 'კონტაქტი', '<p>კონტაქტი</p>', '<p>კონტაქტი</p>', 'contact', 'false', '', '', 'ge', 7, 0, 0),
(87, 21, 8, 1523111910, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'en', 1, 0, 1),
(88, 21, 8, 1523111910, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'ge', 1, 0, 1),
(89, 22, 8, 1523112394, 0, 'text', 'IT ინჟინერია', '<p>IT ინჟინერია</p>', '<p>IT ინჟინერია</p>', 'internet-technologies', 'false', '', '', 'en', 2, 0, 1),
(90, 22, 8, 1523112394, 0, 'text', 'IT ინჟინერია', '<p>IT ინჟინერია</p>', '<p>IT ინჟინერია</p>', 'internet-technologies', 'false', '', '', 'ge', 2, 0, 1),
(91, 23, 0, 1523118501, 1, 'text', 'test', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'en', 1, 0, 1),
(92, 23, 0, 1523118501, 1, 'text', 'test', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'ge', 1, 0, 1),
(93, 24, 0, 1523118614, 0, 'text', 'test 2', '<p>asdas</p>', '<p>sakldaskld</p>', 'test2', 'false', '', '', 'en', 8, 0, 1),
(94, 24, 0, 1523118614, 0, 'text', 'test 2', '<p>asdas</p>', '<p>sakldaskld</p>', 'test2', 'false', '', '', 'ge', 8, 0, 1),
(95, 25, 0, 1523118640, 1, 'text', 'test 2', '<p>test</p>', '<p>test</p>', 'test-2', 'false', '', '', 'en', 1, 0, 1),
(96, 25, 0, 1523118640, 1, 'text', 'test 2', '<p>test</p>', '<p>test</p>', 'test-2', 'false', '', '', 'ge', 1, 0, 1),
(97, 26, 8, 1523119492, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'en', 1, 0, 1),
(98, 26, 8, 1523119492, 0, 'text', 'ვებ პროგრამირება', '<p>ვებ პროგრამირება</p>', '<p>ვებ პროგრამირება</p>', 'web-programming', 'false', '', '', 'ge', 1, 0, 1),
(215, 85, 17, 1523786519, 0, 'text', 'სტაჟირება ტურისტულ კომპანიაში', '', '', 'tourism-practica', '', '', '', 'en', 3, 0, 0),
(216, 85, 17, 1523786519, 0, 'text', 'სტაჟირება ტურისტულ კომპანიაში', '', '', 'tourism-practica', '', '', '', 'ge', 3, 0, 0),
(101, 28, 10, 1523348749, 0, 'news', 'მიმდინარე', '<p>მიმდონარე პროექტები</p>', '<p>მიმდინარე პროექტები</p>', 'ongoing', 'false', '', '', 'en', 1, 0, 0),
(102, 28, 10, 1523348749, 0, 'news', 'მიმდინარე', '<p>მიმდონარე პროექტები</p>', '<p>მიმდინარე პროექტები</p>', 'ongoing', 'ongoing', '', '', 'ge', 1, 0, 0),
(103, 29, 10, 1523348861, 0, 'text', 'დასრულებული', '<p>დასრულებული პროექტები</p>', '<p>დასრულებული პროექტები</p>', 'finished', 'false', '', '', 'en', 2, 0, 0),
(104, 29, 10, 1523348861, 0, 'text', 'დასრულებული', '', '<p>სს ,,თიბისი ბანკი\", ,,თიბისი პეი\", შპს ,,ღვინის ლაბორატორია\", სს ,,პაშა ბანკი\", შპს ,,პატიო-არტი\", დმანისის მუნიციპალიტეტი, შპს ,,კავკასუს ონლაინი\", შპს ,, რომპეტროლ ჯორჯია\", შპს ,,სოკარ ჯორჯია\", შპს ,,შავი ზღვის ტერმინალი\", შპს ,, ელ კომპანის\" ; შპს ,,არენა\", შპს ,,ველესი\", სურსათის ეროვნული სააგენტო; შპს ,,ჯეოსელი\", სს ,,გაერთიანებული საფინანსო კომპანია\", შპს ,,ლოჯისტიკა საქართველი\", შპს ,,გეო იმპექსი\", სს ,,ნოვა ტექნოლოგი\", შპს ,,ეიჩარ პარტნერსი\", შპს ,,აიდიემი\", შპს ,,რჩეული\", სს ,,ბერლინ ქიმიას წარმომადგენლობა საქართველოში\", სოფლის მეურნეობის სამინისტრო - &bdquo;სურსათის ეროვნული სააგენტო\", შპს &bdquo;ჯორჯიან უოთერ ენდ ფაუერი\"; შპს ,,ევო სერვისი\"; შპს ,,კასპი ჯეო\"; შპს ,,Georgian Oil &amp; Gas Limited-ის წარმომადგენლობა საქართველოში;რეგიონალური განვითარების დააგენტო;შპს ,,LMC\"; Grain Lohistics Company\"; შპს ,,ივერ მედი\", შპს ,,მასტერ ჯგუფი\",საქართველოს მცირე და საშუალო ბიზნესის ასოციაცია,შპს ,,ტრანს სერვის გრუპი\", შპს ,,პანაცეა\", შპს ,,Wine Products and Spirts\", შპს ,,Mercury Project\", სს ,,თიბისი ბანკი\" , შპს ,,ბადენი\", შპს ,,რუსთავგაზი\", შპს ,,მირ-ტრანსი\", შპს ,,ენ ჯი ემ გრუპი\", სს, ნიკორა ტრეიდი\", სს ,,თელასი\", შპს ,,ოცნება\", შპს ,,ვარკეთილაინი\", შპს ,,შვიდი ვარსკვლავი\" სს ,,ბანკი რესპუბლიკა, სს ,,ელიტელექტრონიქსი&rdquo;, ,,ჯორჯიან ავია სერვის ეიჯენსი\", თბილისის მერია, წყნეთის გამგეობა, მიგრაციის საერთაშორისო კომპანია, შპს ,,კასტელი საქართველი&rdquo; , შპს ,,გეოპლასტიკი&rdquo; შპს ,,ორიფლეიმ ჯორჯია&rdquo;, სს ,,ჯი-პი-სი&rdquo;, შპს ,,ავერსი-რაციონალი&rdquo;, სს ,,პარაზიტოლოგიის ინსტიტუტი&rdquo;, შპს,,ინდგეო\", შპს,,მიკრონეტი\", საქართველოს საავიაციო უნივერსიტეტი, განათლების განვითრების აკადემია, კვლევის ამერიკული ინსტიტუტი, სს ზაზა ფანასკერტელი, შპს ,,მიფასი&rdquo;, შპს ,,სთრაიდ ჯორჯია&rdquo;, შპს ,,დიოლერ ჯორჯია, შპს ,,გადაუდებელი ნევროლოგიის კლინიკა, შპს ,,მედულოთერაპიის და იმუნოთერაპიის ინსტიტუტი&rdquo;, ინდ. მეწ. დავით ნიკოლეიშვილი, შპს ,,ნიუ-ვეი&rdquo; შპს ,,ფაქტორ ელექტრონიქსი&rdquo;,შპს ,,ევრობუილდინგი&rdquo;, შპს ,,რუსმეტალი&rdquo; შპს ,,იფქლი&rdquo;, შპს ,,ნიკა-2000&rdquo;, შპს ,,თბილისი-95&rdquo;, შპს ,,ატლანტა&rdquo;, ,,საქპატენტი&rdquo;,შპს ,,ატლასი&rdquo;, შპს ,,რ.კ და კომპანია&rdquo;, შპს ,,ზოოლაიფი&rdquo;, შპს ,,გრო&rdquo;, შპს ,,პოპტნეტი&rdquo; შპს ,,აგრობიზნეს კონსალტინგი&rdquo;, შპს ,,ალგი და ჯგუფი&rdquo;,sos ახალგაზრდული სახლი- თბილისი 2, შპს ,,კრისტალი&rdquo;, შპს ,, ველი&rdquo; , შპს ,, 919&rdquo;, შპს ,,ფაილი&rdquo;, შპს ,,ალიზი&rdquo;, შპს ,,ლაბოტე&rdquo; შპს ,,უნიტრანსი&rdquo; შპს ,,პოპტნეტი&rdquo; შპს ,,ინვესტი-2&rdquo; შპს ,,სხივი-2&rdquo; , შპს ,,დემასი&ldquo;, შპს ,,დალამა ენერჯი&ldquo;, JSI Sustain Project, IREX-ის საერთაშორისო კვლევები და გაცვლები, ACF - საერთაშორისო ორგანიზაცია, შპს \"დიკა\", შპს ,,MPG&rdquo;,გაეროს წარმომადგენლობა საქართველოში, გლაქსო სმიტკლაინ ექსპორტ ლიმიტედის წარმომადგენლობა საქართველოში, შპს ,,საქართველოს რკინიგზა&rdquo;, შპს ,,ალბატროსი&rdquo;, შპს ,,აკა&rdquo;, შპს ,, გერმანული სახლი&rdquo;, გუდაურის სპორტული სკოლა, შპს \"სააგენტო სერვის ცენტრი ტ.გ.მ.&rdquo;, შპს \"უნიტრანსი\", შ.პ.ს. \"ავიაკომპანია თუშეთი\", საქართველოს საავიაციო უნივერსიტეტი, ქალთა ჯანმრთელობის ორგანიზაცია , ვისოლ პეტროლიუმ ჯორჯია , შპს \"ინფინიტი\" , შპს \"შირნ ხოფერი\", შპს \"ფერა ჯორჯია\",შპს ,,ენერგო არაგვი\", შპს ,,ევრო დექი\"შპს ,,ახალი ნათება\", შპს ,,ვესტა კაპიტალი\", შპს ,,თერმარსენალი\", შპს ,,ედრესი\", შპს ,,RIXOS\", შპს ,,შოპ ენ\", შპს ,,მაქსიმალი\" , საქართველოს სასაზღვრო პოლიცია, იბერია ბიზნეს ჯგუფი, შპს ,,სპეცჰიდრომშენი\", საქართველოს კინოს და თეატრის მუზეუმი, შპს ,,ელიზი ჯგუფი\", შპს ,,ღვინის ლაბორატორია\", შპს ,,ჰომბილდერი\", შპს ,,ვესტა\", შპს ,,ვეზირი\", შპს ,,სპექტრი\", შპს ,,გეოინჟინერინგი\", შპს ,,რეგალი\", შპს &bdquo;არქ ქრეატიონ\"! სსიპ&nbsp; ,,ლ. საყვარელიძის სახ. დაავადებათა კონტროლის და საზოგადაოებრივი ჯანმრთელობის ეროვნული ცენტრის\", შპს ,,კაპტო დიზაინის\", შპს ,,ფურშეტი,\" შპს ,,MS group\", შპს ,,ივერმედი\", შპს, ღვინის ლაბორატორია\", შპს ,,ჯორჯიან სერვის გრუპი\", მიგრაციის საერთაშორისო ორგანიზაცია, გერმანიის საერთაშორისო თანამშრომლობის საზოგადოება GIZ და სხვ.</p>', 'finished', 'false', '', '', 'ge', 2, 0, 0),
(105, 30, 10, 1523348910, 0, 'news', 'სამომავლო', '<p>სამომავლო პროექტები</p>', '<p>სამომავლო პროექტები</p>', 'future', 'false', '', '', 'en', 3, 0, 0),
(106, 30, 10, 1523348910, 0, 'news', 'სამომავლო', '<p>სამომავლო პროექტები</p>', '<p>სამომავლო პროექტები</p>', 'future', 'future', '', '', 'ge', 3, 0, 0),
(107, 31, 0, 1523371345, 1, 'plugin', 'ძიება', '<p>ძიება</p>', '<p>ძიება</p>', 'search', 'false', '', '', 'en', 1, 0, 0),
(108, 31, 0, 1523371345, 1, 'plugin', 'ძიება', '<p>ძიება</p>', '<p>ძიება</p>', 'search', 'false', '', '', 'ge', 1, 0, 0),
(110, 32, 0, 1523436077, 1, 'plugin', 'დარეგისტრირდი ტრენინგზე', '<p>დარეგისტრირდი ტრენინგზე</p>', '<p>დარეგისტრირდი ტრენინგზე</p>', 'register', 'false', '', '', 'ge', 2, 0, 0),
(111, 33, 1, 1523521364, 0, 'text', 'ტესტი', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'en', 5, 0, 1),
(112, 33, 1, 1523521364, 0, 'text', 'ტესტი', '<p>test</p>', '<p>test</p>', 'test', 'false', '', '', 'ge', 5, 0, 1),
(113, 34, 33, 1523521422, 0, 'text', 'hjasdgahj', '<p>skldalks</p>', '<p>asdas</p>', 'askjdaskj', 'false', '', '', 'en', 1, 0, 1),
(114, 34, 33, 1523521422, 0, 'text', 'hjasdgahj', '<p>skldalks</p>', '<p>asdas</p>', 'askjdaskj', 'false', '', '', 'ge', 1, 0, 1),
(115, 35, 7, 1523523136, 0, 'text', 'ტრენინტი ტესტ', '<p>asjkdansjkasdkja</p>', '<p>aksldklasd</p>', 'training-test', 'false', '', '', 'en', 3, 0, 1),
(116, 35, 7, 1523523136, 0, 'text', 'ტრენინტი ტესტ', '<p>asjkdansjkasdkja</p>', '', 'training-test', 'false', '', '', 'ge', 3, 0, 1),
(117, 36, 35, 1523523185, 0, 'text', 'test training', '<p>test training</p>', '<p>test training</p>', 'test-training', 'false', '', '', 'en', 1, 0, 0),
(118, 36, 35, 1523523185, 0, 'text', 'test training', '<p>test training</p>', '<p>&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა</p>\n<p>&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=2mJFAOcwd38]</p>\n<p>&nbsp;</p>\n<p>&nbsp;ბატონო, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, <a href=\"http://myvideo.ge\">გიჩივლებთ ეს კანონდარღვევაა&nbsp;ბატონო</a>, მე შევედი გუშინ ერთ-ერთ კაფეში თუ რაღაც სასაჭმელეში, რავიცი. ყველაფერი უცხო ენაზე ეწერა და მშვიდად გამოვუცხადე, რომ თუ ქართულად არ დააწერთ, გიჩივლებთ ეს კანონდარღვევაა</p>\n<p>&nbsp;</p>\n<ul>\n<li>akklasd</li>\n<li>asdasda</li>\n<li>assdasda</li>\n<li>asdasd</li>\n</ul>', 'test-training', 'false', '', '', 'ge', 1, 0, 0),
(119, 37, 35, 1523523229, 0, 'text', 'klalkadad', '<p>kalsdlkaklsd</p>', '<p>aklsdklad</p>', 'klalkadad', 'false', '', '', 'en', 2, 0, 0),
(120, 37, 35, 1523523229, 0, 'text', 'klalkadad', '<p>kalsdlkaklsd</p>', '<p>aklsdklad</p>', 'klalkadad', 'false', '', '', 'ge', 2, 0, 0),
(213, 84, 17, 1523786472, 0, 'text', 'სტაჟირება სასტუმროში', '', '', 'hotel-practica', '', '', '', 'en', 2, 0, 0),
(214, 84, 17, 1523786472, 0, 'text', 'სტაჟირება სასტუმროში', '', '<p>სტაჟირება მიმდინარეობს თბილისის პრესტიჟულ სასტუმროებში.</p>\n<p>სტაჟირების ღირებულება : 200 ლარი.</p>', 'hotel-practica', '', '', '', 'ge', 2, 0, 0),
(121, 38, 14, 1523542388, 0, 'text', 'სათაური', '<p>alsd</p>', '<p>alksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djka</p>', 'teashbdjhasdjhas', 'false', '', '', 'en', 3, 0, 1),
(122, 38, 14, 1523542388, 0, 'text', 'სათაური', '<p>alsd</p>', '<p>alksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djkaalksdmksla dmaskld askjdnakjsdn kjasdn jkasnd jkasnd kjasn djka</p>', 'teashbdjhasdjhas', 'false', '', '', 'ge', 3, 0, 1),
(123, 39, 7, 1523633462, 0, 'text', 'უცხო ენები', '<p>პლოპლო</p>', '<p>გთავაზობთ საკომუნიკაციო ბიზნეს სამედიცინო ტერმინოლოგიების შესწავლას</p>\n<p>აგრეთვე სასერთიფიკატო მოსამზადებელ კურსებს და ასე შემდეგ</p>', 'foreing-language', 'false', '', '', 'en', 3, 0, 0),
(124, 39, 7, 1523633462, 0, 'text', 'უცხო ენები', '', '', 'foreing-language', '', '', '', 'ge', 3, 0, 0),
(209, 82, 4, 1523784841, 0, 'text', 'ნინო მღებრიშვილი', '', '', 'nino-mghebrishvili', '', '', '', 'en', 1, 0, 1),
(210, 82, 4, 1523784841, 0, 'text', 'ნინო მღებრიშვილი', '', '<p>ვიაიპ ინტელექტ გრუპის დირექტორი, დამფუძნებელი</p>', 'nino-mghebrishvili', '', '', '', 'ge', 1, 0, 1),
(125, 40, 39, 1523633529, 0, 'text', 'ინგლისური ენა', '<p>აადად</p>', '<p>ადადადადდ</p>', 'english', 'false', '', '', 'en', 1, 0, 0),
(126, 40, 39, 1523633529, 0, 'text', 'ინგლისური ენა', '', '', 'english', '', '', '', 'ge', 1, 0, 0),
(127, 41, 7, 1523633654, 0, 'text', 'ტურიზმი', '<p>adada</p>', '<p>ადაჯდალდჯადლჯდ</p>', 'tourism', 'false', '', '', 'en', 4, 0, 0),
(128, 41, 7, 1523633654, 0, 'text', 'ტურიზმი, სასტუმრო, გიდი', '', '', 'tourism', '', '', '', 'ge', 4, 0, 0),
(129, 42, 41, 1523633695, 0, 'text', 'სასტუმროს მენეჯმენტი', '<p>afasf</p>', '<p>fasfsfas</p>', 'hotels', 'false', '', '', 'en', 1, 0, 0),
(130, 42, 41, 1523633695, 0, 'text', 'სასტუმროს მენეჯმენტი', '', '<p>პროგრამის მიზანი:</p>\n<p>ტურიზმი დღეისათვის ყველაზე პერსპექტიული და მოთხოვნადი მიმართულებაა განსაკუთრებით ჩვენს ქვეყანაში, ტურიზმის განვითარებასთან ერთად იზრდება მოთხოვნა სასტუმროს მენეჯმენტის კვალიფიციურ და პრაქტიკოს სპეციალისტებზე, სწორედ ამ მოთხოვნების შესაბამისად, მოქმედი სასტუმროს მენეჯმენტთან ერთად შეიქმნა სპეციალიზირებული პროგრამა, რომელიც ითვალისწინებს თანამედროვე ტურიზმის ყველა მოთხოვნას. თქვენ გეძლევათ რეალური შანსი, რომ მიიღოთ კვალიფიციური ცოდნა და შესაბამისად დასაქმდეთ პერსპექტიულ და განვითარებად სფეროში.</p>\n<p>პროგრამა განკუთვნილია: ყველა იმ დაინტერესებული პირისთვის, ვისი სურვილიცაა დაიმკვიდროს თავი სასტუმროს ბიზნესში წამყვან თანამდებობებზე ან ვისაც სურს საკუთარი სასტუმროს ბიზნეს იდეის განხორციელება.</p>\n<p>პროგრამა შედგება ორი ეტაპისგან:</p>\n<p>1. ინტერაქციული ლექციები.<br />2. სტაჟირება - პრესტიჟულ სასტუმროებში.</p>\n<p>სტუდენტი შეიძენს პრაქტიკულ და თეორიულ ცოდნას სასტუმროს ფუნქციონირებისა და წარმოქმნის შესახებ. შეძლებს პრაქტიკულად მიღებული ცოდნის დანერგვასა და თავის დამკვიდრებას არსებულ სფეროში. ზოგადად პროგრამა განაწილებულია შემდეგი პრინციპით 30%/70% , თეორია/პრაქტიკა.</p>\n<p>სალექციო კურსი მოიცავს:</p>\n<p>** სასტუმროს ორგანიზაციული სტრუქტურა და აღწერილობა<br />** სასტუმროს სერვისების შექმნა და მისი რეალიზაცია<br />** სასტუმროს ბიზნესში ინვესტიციის სახეები<br />** სასტუმროს მართვის პროგრამები</p>\n<p>პრაქტიკოსი სპეციალისტები დეტალურად შეგასწავლიან სასტუმროს სპეციფიკას. რეალურ მაგალითებზე დაყრდნობით შეიძენთ ცოდნას, რომელიც დაგეხმარებათ სასტუმროს მიმართულებით ბიზნეს აზროვნების ჩამოყალიბებასა და მართვის უნარ-ჩვევების შემუშავებაში. თქვენი ცოდნით დაძლევთ საქართველოს სასტუმროს ბაზარზე არსებულ მოთხოვნებს და წარმატებით გაართმევთ თავს, სასტუმროს ნებისმიერ დეპარტამენტში, ნებისმიერ თანამდებობას.</p>\n<p>სრული კურსის და სტაჟირების გავლის შემდეგ თქვენ შეძლებთ: სასტუმროს მართვას, ასევე გამოიმუშავებთ იმ უნარ-ჩვევებს რაც აუცილებელია სასტუმროს მენეჯერისთვის, მიეჩვევით გუნდური მუშაობის პრინციპებს.</p>\n<p>1. ინტერაქციული ლექციების ხანგრძლივობა: 12 ლექცია - 1სთ 30წთ.</p>\n<p>ლექციები მიმდინარეობს - კვირაში 3-ჯერ.<br />სალექციო კურსის ღირებულება ჯგუფში: 300 ლარი.</p>\n<p>კურსის ბოლოს ჩატარდება ტესტირება და ყველაზე მაღალი შეფასების მსმენელი სტაჟირებას გაივლის სრულიად უფასოდ!</p>\n<p>2. სტაჟირება მიმდინარეობს თბილისის პრესტიჟულ სასტუმროებში.</p>\n<p>სტაჟირების ღირებულება : 200 ლარი.</p>\n<p>სასწავლო პროგრამის და სტაჟირების წარმატებით დამთავრების შემთხვევაში გაიცემა \"VIP Intellect Group\"-ის სერტიფიკატი;</p>\n<p>[registration]</p>', 'hotels', '', '', '', 'ge', 1, 0, 0),
(131, 43, 41, 1523633766, 0, 'text', 'ტურიზმის მენეჯმენტი', '<p>adad</p>', '<p>dadad</p>', 'turism-management', 'false', '', '', 'en', 2, 0, 0),
(132, 43, 41, 1523633766, 0, 'text', 'ტურიზმის მენეჯმენტი', '', '<p>პროგრამის მიზანი: ტურიზმი დღეისათვის ყველაზე პერსპექტიული და მოთხოვნადი მიმართულებაა განსაკუთრებით ჩვენს ქვეყანაში, ტურიზმის განვითარებასთან ერთად იზრდება მოთხოვნა სასტუმროს მენეჯმენტის კვალიფიციურ და პრაქტიკოს სპეციალისტებზე, სწორედ ამ მოთხოვნების შესაბამისად, მოქმედი სასტუმროს მენეჯმენტთან ერთად შეიქმნა სპეციალიზირებული პროგრამა, რომელიც ითვალისწინებს თანამედროვე ტურიზმის ყველა მოთხოვნას. თქვენ გეძლევათ რეალური შანსი, რომ მიიღოთ კვალიფიციური ცოდნა და შესაბამისად დასაქმდეთ პერსპექტიულ და განვითარებად სფეროში.</p>\n<p>პროგრამა განკუთვნილია: ყველა იმ დაინტერესებული პირისთვის, ვისი სურვილიცაა დაიმკვიდროს თავი სასტუმროს ბიზნესში წამყვან თანამდებობებზე ან ვისაც სურს საკუთარი სასტუმროს ბიზნეს იდეის განხორციელება.</p>\n<p>პროგრამა შედგება ორი ეტაპისგან:</p>\n<p>1. ინტერაქციული ლექციები.<br />2. სტაჟირება - პრესტიჟულ სასტუმროებში.</p>\n<p>სტუდენტი შეიძენს პრაქტიკულ და თეორიულ ცოდნას სასტუმროს ფუნქციონირებისა და წარმოქმნის შესახებ. შეძლებს პრაქტიკულად მიღებული ცოდნის დანერგვასა და თავის დამკვიდრებას არსებულ სფეროში. ზოგადად პროგრამა განაწილებულია შემდეგი პრინციპით 30%/70% , თეორია/პრაქტიკა.</p>\n<p>სალექციო კურსი მოიცავს:</p>\n<p>** სასტუმროს ორგანიზაციული სტრუქტურა და აღწერილობა<br />** სასტუმროს სერვისების შექმნა და მისი რეალიზაცია<br />** სასტუმროს ბიზნესში ინვესტიციის სახეები<br />** სასტუმროს მართვის პროგრამები</p>\n<p>პრაქტიკოსი სპეციალისტები დეტალურად შეგასწავლიან სასტუმროს სპეციფიკას. რეალურ მაგალითებზე დაყრდნობით შეიძენთ ცოდნას, რომელიც დაგეხმარებათ სასტუმროს მიმართულებით ბიზნეს აზროვნების ჩამოყალიბებასა და მართვის უნარ-ჩვევების შემუშავებაში. თქვენი ცოდნით დაძლევთ საქართველოს სასტუმროს ბაზარზე არსებულ მოთხოვნებს და წარმატებით გაართმევთ თავს, სასტუმროს ნებისმიერ დეპარტამენტში, ნებისმიერ თანამდებობას.</p>\n<p>სრული კურსის და სტაჟირების გავლის შემდეგ თქვენ შეძლებთ: სასტუმროს მართვას, ასევე გამოიმუშავებთ იმ უნარ-ჩვევებს რაც აუცილებელია სასტუმროს მენეჯერისთვის, მიეჩვევით გუნდური მუშაობის პრინციპებს.</p>\n<p>1. ინტერაქციული ლექციების ხანგრძლივობა: 12 ლექცია - 1სთ 30წთ.</p>\n<p>ლექციები მიმდინარეობს - კვირაში 3-ჯერ.<br />სალექციო კურსის ღირებულება ჯგუფში: 300 ლარი.</p>\n<p>კურსის ბოლოს ჩატარდება ტესტირება და ყველაზე მაღალი შეფასების მსმენელი სტაჟირებას გაივლის სრულიად უფასოდ!</p>\n<p>2. სტაჟირება მიმდინარეობს თბილისის პრესტიჟულ სასტუმროებში.</p>\n<p>სტაჟირების ღირებულება : 200 ლარი.</p>\n<p>[registration]</p>', 'turism-management', '', '', '', 'ge', 2, 0, 0),
(133, 44, 41, 1523633823, 0, 'text', 'რუსულენოვანი ტურიზმის გიდი', '<p>ada</p>', '<p>adad</p>', 'guide-rus', 'false', '', '', 'en', 3, 0, 0),
(134, 44, 41, 1523633823, 0, 'text', 'რუსულენოვანი ტურიზმის გიდი', '', '<p>რუსულენოვანი გიდების მომზადება-გადამზადება (კურსი რუსულად)</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული ტრეინინგების ჩატარება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით. სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე შეიქმნება სპეციალიზებული პროგრამა.</p>\n<p><strong>კურსის პროგრამა:</strong></p>\n<p>** საქართველოს ისტორიის მიმოხილვა (ყველა რეგიონის გავლა)და ისტორიული ძეგლების შესწავლა;<br />** ქართული ტრადიციების მიმოხილვა; <br />** საქართველოს კულტურა, ხელოვნება;<br />** ტურის დაგეგმარება;<br />** სხვადასხვა ტურის შესწავლა: <br />** კულტურული ტური;<br />** მომლოცველთა ტური;<br />** ღვინის ტური;<br />** გასტრონომიული ტური;<br />** გიდის ზოგადი უნარ-ჩვევები; გიდის ეტიკეტი;<br />** ექსკურსიის ჩატარების მეთოდიკა;<br />** პრაქტიკული გასვლა ტურში და ადგილზე მუშაობის უნარების განვითარება;</p>\n<p>&nbsp;კურსის ხანგრძლივობა: 16 ლექცია:</p>\n<p>1 ლექციის ხანგრძლივობა: 2 ასტრონომიული საათი<br />ერთი ლექციის ხანგრძლივობა: 2 ასტრონომიული საათი<br />კურსის ღირებულება: 400 ლარი - მცირერიცხოვან ჯგუფებში</p>\n<p>კურსის მსვლელობისას მსმენელებს ჩაუტარდებათ ტურები ორ სხვადასხვა ტურისტულად აქტიურ ადგილას!</p>\n<p>კურსის ბოლოს ჩატარდება შესაბამისი ტესტირება!</p>\n<p>კურსის ბოლოს გაიცემა შესაბამისი სერთიფიკატი!</p>\n<p>კურსებს უძღვებიან: რუსული ენის კვალიფიციური სპეციალისტები, რომელიც ამავდროულად მუშაობენ ტურისტულ გიდებად არიან სერტიფიცირებული გიდები და გააჩნიათ რამდენიმე წლიანი პრაქტიკული გამოცდილება გიდად მუშაობის.</p>\n<p>[registration]</p>', 'guide-rus', '', '', '', 'ge', 3, 0, 0),
(135, 45, 41, 1523633861, 0, 'text', 'ინგლისურენოვანი ტურიზმის გიდი', '<p>adad</p>', '<p>adad</p>', 'guide-eng', 'false', '', '', 'en', 4, 0, 0),
(136, 45, 41, 1523633861, 0, 'text', 'ინგლისურენოვანი ტურიზმის გიდი', '', '<p>ინგლისურენოვანი გიდების გადამზადება (კურსი ინგლისურად)</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული ტრეინინგების ჩატარება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით. სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე შეიქმნება სპეციალიზებული პროგრამა.</p>\n<p>კურსის პროგრამა:</p>\n<p>** საქართველოს ისტორიის მიმოხილვა (ყველა რეგიონის გავლა)და ისტორიული ძეგლების შესწავლა;<br />** ქართული ტრადიციების მიმოხილვა; <br />** საქართველოს კულტურა, ხელოვნება;<br />** ტურის დაგეგმარება;<br />** სხვადასხვა ტურის შესწავლა: <br />** კულტურული ტური;<br />** მომლოცველთა ტური;<br />** ღვინის ტური;<br />** გასტრონომიული ტური;<br />** გიდის ზოგადი უნარ-ჩვევები; გიდის ეტიკეტი;<br />** ექსკურსიის ჩატარების მეთოდიკა;<br />** პრაქტიკული გასვლა ტურში და ადგილზე მუშაობის უნარების განვითარება;</p>\n<p>ინგლისურენოვანი კურსის ხანგრძლივობა: 1,5 თვე (12 ლექცია)</p>\n<p>კვირაში ჩატარდება: 2 ლექცია - 4 საათი</p>\n<p>კურსის ღირებულება: 300 ლარი - მცირერიცხოვან ჯგუფებში</p>\n<p>კურსის ბოლოს ჩატარდება შესაბამისი ტესტირება!</p>\n<p>კურსის ბოლოს გაიცემა შესაბამისი სერთიფიკატი!</p>\n<p>კურსებს უძღვებიან:ინგლისური ენის კვალიფიციური სპეციალისტები, რომელიც ამავდროულად მუშაობენ ტურისტულ გიდებად არიან სერტიფიცირებული გიდები და გააჩნიათ რამდენიმე წლიანი პრაქტიკული გამოცდილება გიდად მუშაობის.</p>\n<p>[registration]</p>', 'guide-eng', '', '', '', 'ge', 4, 0, 0),
(137, 46, 39, 1523696774, 0, 'text', 'რუსული ენა', '', '<p>ტესტიი</p>', 'russion', 'false', '', '', 'en', 2, 0, 0),
(138, 46, 39, 1523696774, 0, 'text', 'რუსული ენა', '', '<p>ტესტიი</p>', 'russion', 'false', '', '', 'ge', 2, 0, 0),
(139, 47, 39, 1523697018, 0, 'text', 'ფრანგული ენა', '', '<p>sl;da,sl; l;ads,dskfm kjdfnjksndfkj</p>', 'franch', 'false', '', '', 'en', 3, 0, 1),
(140, 47, 39, 1523697018, 0, 'text', 'ფრანგული ენა', '', '<p>sl;da,sl; l;ads,dskfm kjdfnjksndfkj</p>', 'franch', 'false', '', '', 'ge', 3, 0, 1),
(141, 48, 39, 1523698482, 0, 'text', 'მეგრული :)', '', '<p>მეგრული ენა</p>', 'megrelian', '', '', '', 'en', 3, 0, 1),
(142, 48, 39, 1523698482, 0, 'text', 'მეგრული :)', '', '<p>მეგრული ენა</p>', 'megrelian', '', '', '', 'ge', 3, 0, 1),
(143, 49, 40, 1523699102, 0, 'text', 'General English', '', '<p>klasdmaklm lkasdmakjsndakjsndjkasnd kjandlkas dkjansdkjanskjd nakjs dnaks</p>', 'general-english', '', '', '', 'en', 1, 0, 0),
(144, 49, 40, 1523699102, 0, 'text', 'სასაუბრო ინგლისური', '', '<p>ინგლისურის შემსწავლელთა რიცხვი სწრაფად იზრდება და ამის ერთ-ერთი მთავარი მიზეზი ისაა, რომ ბევრს აქვს სურვილი გააფართოვოს თავისი ბიზნესი და დაამყაროს უცხოელ ინვესტორებთან ურთიერთობა . ამ მიზნით VIP Intellect Group გთავაზობთ ბიზნეს ინგლისურის კურსს, რათა შესძლოთ ურთიერთობა დღესდღეობით არსებულ მრავალ საერთაშორისო კომპანიებთან.</p>\n<p>** New market leader - 5 დონე<br />** Elementary<br />** Pre-intermediate<br />** Intermediate<br />** Upper -intermediate<br />** Advanced</p>\n<p>სწავლის ხანგრძლივობა: 12 ლექცია თვეში &minus;კვირაში სამჯერ.<br />სწავლის საფასური: ინდივიდუალურად &minus; 300 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.</p>\n<p>სწავლის საფასური მცირერიცხოვან ჯგუფებში:</p>\n<p>Elementary - 160 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Pre-intermediate - 170 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Intermediate - 180 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Upper - intermediate - 190 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Advanced - 200 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.</p>\n<p>კურსის დასრულების შემდეგ თქვენ შესძლებთ ბიზნესთან დაკავშირებული მასალების წაკითხვას და პასუხის გაცემას ან ბიზნეს-პარტნიორთან ურთიერთობას, მოლაპარაკებას, შეთანხმებას; საქმიანი ბიზნეს მიმოწერის წარმოებას, ნახევრად ფორმალური მეილების (semi-formal business style) წერას. კურსის დასრულების შემდეგ გაიცემა სერტიფიკატი.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'general-english', '', '', '', 'ge', 1, 0, 0),
(145, 50, 7, 1523701856, 0, 'text', 'ჯანდაცვა და ფარმაკოლოგია', '', '<p>ჯანდაცვის მენეჯმენტი</p>', 'health', '', '', '', 'en', 5, 0, 0),
(146, 50, 7, 1523701856, 0, 'text', 'ჯანდაცვა და ფარმაკოლოგია', '', '', 'health', '', '', '', 'ge', 5, 0, 0),
(155, 55, 9, 1523702431, 0, 'text', 'საბუღალტრო აღრიცხვა ', '', '', 'accounting', '', '', '', 'en', 1, 0, 1),
(147, 51, 50, 1523701929, 0, 'text', 'ჯანდაცვიც მენეჯმენტი', '', '<p>ჯანდაცვის მენეჯმენტის სასერთიფიკატო კურსი</p>', 'healths', '', '', '', 'en', 1, 0, 0),
(148, 51, 50, 1523701929, 0, 'text', 'ჯანდაცვის მენეჯმენტის სასერთიფიკატო კურსი', '', '<p>კურსის მიზანია: კვალიფიციური ჯანდაცვის მენეჯერების მომზადება, რომლებიც ჯანდაცვის სფეროში მიმდინარე პროცესების ეფექტიან ადმინისტრირებას შეძლებენ.</p>\n<p>მიზნობრივი ჯგუფები: ჯანდაცვის და სადაზღვევო ორგანიზაციების პერსონალი, ზოგადი სამედიცინო მენეჯერები, სექტორში სწრაფი კარიერული წინსვლით დაინტერესებული პირები, სტუდენტები, ამ სფეროებში დასაქმების მსურველები, რომელთაც სურთ იმუშაონ სამედიცინო დაწესებულებში მთავარ ექიმად, სამედიცინო ექსპერტად, პროგრამის კოორდინატორად, მენეჯერად, მითერად, ხარისხის კონტროლში, დაზღვევაში, სამედიცინო სოციალურ ექსპერტიზაში, ადამიანური რესურსების მართვა, რესეფშენში, ქოლ ცენტრში.</p>\n<p>მოდულირებული პროგრამა მოიცავს: თეორიულ სალექციო კურსს, პრაქტიკულ სავარჯიშოებს, ამოცანებს, ქეისების აქტიურ ანალიზს, მომზადებას და ტესტებს.</p>\n<p>ტრენინგი დაფუძნებულია პრაქტიკაზე და მასში გათვალისწინებულია ჯანდაცვის სფეროში არსებული მოთხოვნები. მსმენელები სრულად არიან უზრუნველყოფილნი აუცილებელი სასწავლო და მეთოდური მასალებით.</p>\n<p>ლექციები მიმდინარეობს ქართულ ენაზე უახლესი ციფრული საპრეზენტაციო ტექნოლოგიების გამოყენებით. კურსის მსვლელობისას მსმენელები შეიძენენ მნიშვნელოვან უნარ-ჩვევებს.</p>\n<p>მოდულში გაერთიანებულია:</p>\n<p>** ჯანდაცვის მენეჯმენტი: ჯანდაცვის პოლიტიკა, სისტემის შეფასება, ჯანდაცვის ეკონომიკა, ორგანიზაციული მენეჯმენტი, ჯანდაცვის სფეროს მარკეტინგი, მართული ჯანდაცვა, ამბულატორიისა და საავადმყოფოს მართვა და სხვა საკითხები. <br />** სამედიცინო ხარისხი: საზოგადოებრივი ჯანდაცვა, ეპიდემიოლოგია, სამედიცინო სტატისტიკა, ავადმყოფობათა და ჯანმრთელობასთან დაკავშირებული პრობლემების საერთაშორისო სტატისტიკური კლასიფიკაცია,<br />** ჯანდაცვის სამართალი: ექიმის და პაციენტის უფლებები, სამედიცინო სოციალური ექსპერტიზა, სამედიცინო დოკუმენტაცია, ფორმა 100, საავადმყოფო ფურცელი<br />** სადაზღვევო საქმე: ჯანმრთელობის დაზღვევა, სადაზღვევო სამართალი და სახელმწიფო და რეგულირება. <br />** პროექტის მართვა: სამედიცინო პროცესის კასკადის და ჯანდაცვითი პროგრამების დაგეგმვა, პროექტის მისიის და მიზნების მნიშვნელობა, ჯანდაცვის სფეროს კვლევები.<br />** პროგრამა ასახავს ჯანდაცვის სისტემაში თანამედროვე შრომის ბაზრის სპეციფიურობას, მისი მართვის უახლეს ტექნოლოგიებს და თანამედროვე მეთოდებს.</p>\n<p>რატომ უნდა აირჩიოთ ჩვენი კურსი?</p>\n<p>პროგრამა მსმენელს სთავაზობს:</p>\n<p>** ინფორმაციას ჯანდაცვის სისტემაში თანამედროვე ტექნოლოგიების გამოყენების, კვლევის ძირითადი მეთოდების შესახებ, არსებული ინსტიტუციების მართვასა და ლიდერობაში, ფინანსირება-ბიუჯეტირებაში, ჯანდაცვის გლობალურ და ეროვნულ პოლიტიკაში;<br />** ტრენინგის სხვადასხვა საფეხურის კურსდამთავრებული შეიძენს მართვის ზოგად უნარ-ჩვევებს: სერვის პლუს, ძირითადი წინააღმდეგობების გადალახვა, მართვა კრიზის დროს, ეფექტური ურთიერთობა ორგანიზაციაში,<br />** სამედიცინო პერსონალის მოტივაცია და ორგანიზაცია, დროის მართვის თანამედროვე მეთოდები, ადამიანური რესურსების ეფექტური მართვის მიმართულებები და ფუნქციები, კადრების შერჩევა, თანამშრომლების მოვალეობები და სუბორდინაცია, საშტატო გადაადგილების ეფექტური მართვა, ზოგადი ფსიქოლოგია, კადრების განვითარება და შესრულებული სამუშაოს კონტროლი, საქმიანი კომუნიკაცია, მოლაპარაკების უნარ-ჩვევები, გუნდური მუშაობის ტაქტიკა და ტექნიკა;<br />** გაითვალისწინეთ: სრული კურსის გავლის შემდგომ ტესტირებაში უმაღლესი შეფასების მქონე მსმენელებზე გაიცემა სარეკომენდაციო წერილი და გაივლიან სასწავლო პრაქტიკას საქართველოს დარგის წამყვან დაწესებულებებში.</p>\n<p>საუკეთესოები პრაქტიკას გაივლიან სრულიად უფასოდ წამყვან სამედიცინო დაწესებულებაში!</p>\n<p>პროგრამის ხანგრძლივობა:</p>\n<p>** კურსი მოიცავს: 24 საათს. <br />** კვირაში ჩატარდება: 3 ლექცია. <br />** კურსის ღირებულება: 350 ლარი</p>\n<p>[registration]</p>', 'healths', '', '', '', 'ge', 1, 0, 0),
(149, 52, 50, 1523702159, 0, 'text', 'ფარმაკოლოგიის კურსი', '', '<p>ფარმაკოლოგია</p>', 'farmacy', '', '', '', 'en', 3, 0, 0),
(150, 52, 50, 1523702159, 0, 'text', 'ფარმაკოლოგიის კურსი', '', '<p><strong>ვისთვისაა კურსი გათვლილი?</strong><br /><br />ფარმაკოლოგიით დაინტერესებულ ნებისმიერი მსურველისთვის, რომელსაც აქვს საშუალო ან უმაღლესი განათლება ფარმაციის ან სამედიცინო სფეროში, ასევე შესაბამისი სპეციალობის სტუდენტებისთვის. აგრეთვე პარაფარმაციით დაინტერესებული პირები შესაძლებელია იყვნენ არასამედიცინო განათლების მქონე.<br /><br />ტრენინგ-კურსი მოიცავს თეორიულ და პრაქტიკულ ნაწილს და გათვალისწინებულია ისეთი მსმენელებისთვის, ვისაც სურს აფთიაქში მუშაობა ან მუშაობს ფარმაცევტად ან კონსულტანტად აფთიაქში და სურს პროფესიული დონის ამაღლება.<br /><br />კურსის მიზანია: კვალიფიკაციის ამაღლება და პრაქტიკული უნარ-ჩვევების გამომუშავება, რომელიც რეალურად შეწყობს ხელს კურსდამთავრებულს, რათა მიიღოს მეტი ცოდნა და დასაქმების შესაძლებლობა სხვადასხვა ფარმაცევტულ კომპანიებსა და აფთიაქებში.<br /><br />კურსი მოიცავს: თეორიული და პრაქტიკულ ნაწილს.<br /><br />თეორიული ნაწილში - მსმენელი გაეცნობა:<br /><br />** სამკურნალო საშუალებების კლასიფიკაციას ფარმაკოლოგიური ჯგუფების მიხედვით. <br />** მედიკამენტთა თითოეული ჯგუფის განხილვა იმ დაავადებათა კლინიკასთან ერთად, რომლის დროსაც ინიშნება ეს მედიკამენტები, ასევე გაეცნობა აფთიაქის სტრუქტურას. <br />** სამკურნალო საშუალებების კლასიფიკაციას, ფარმაკოლოგიურ ჯგუფებს, მოქმედების მექანიზმებს, ჩვენებებს, გვერდით მოვლენებსა და უკუჩვენებებს;<br />** ფარმაცევტის სამუშაო პროგრამას;<br />** სარეცეპტო და არასარეცეპტო მედიკამენტების გაცემის წესებს;<br />** ეფექტური მომსახურებისა და გაყიდვების ტექნიკებს.<br /><br />რამდენიმე ლექცია დაეთმობა პარაფარმაციას, ამ ტრეინინგის ქვეშ იგულისხმება: ბავშვთა კვება, ჰიგიენის და მოვლის საშუალებები, როგორც ბავშვებში ასევე ზრდასრულებში.<br /><br />ტრეინინგის მსმენელები უზრუნველყოფილი იქნებიან სასწავლო მასალით. ტრენინგის მსვლელობისას გამოიყენება როლური თამაშები (აფთიაქის სიტუაციის სიმულირება).<br /><br />ტესტირება ჩატარდება: ყოველ 3 სალექციო დღის განვლილ თეორიულ ნაწილზე.<br />ხოლო კურსის ბოლოს ჩატარდება შემაჯამებელი ტესტირება, ყველაზე საუკეთესო მაჩვენებლების მქონე 1-2 კურსდამთავრებული სტაჟირებას გაივლის სრულიად უფასოდ.<br /><br />პრაქტიკულ ნაწილში - სტაჟირების დროს გაეცნობა სააფთიაქო კომპიუტერულ პროგრამა - Apex-ს, აფთიაქში ყველა საჭირო დოკუმენტაციის წარმოების, ცვლის გადაბარების წესებს. შეისწავლის მომხმარებელთან ურთიერთობის უნარ-ჩვევებს, ეფექტურ მომსახურებას.<br /><br />სტაჟირება სად და რა ინტენსივობით ჩატარდება: <br /><br />კურსის დასრულების შემდეგ მსმენელები გაივლიან 1 თვიან უფასო ან ფასიან სტაჟირებას \"ნეო ფარმა\"-ს და \"36,6\"-ის პრესტიჟულ სხვადასხვა აფთიაქებში, კვირაში 6 დღე, შემდგომი დასაქმების პერსპექტივით, როგორც თბილისში ასევე საქართველოს ნებისმიერ რეგიონში.<br /><br />გაიცემა ორენოვანი სერტიფიკატი და სარეკომენდაციო წერილი. <br /><br />აფთიაქში სტაჟირების მსვლელობის პერიოდში ჩატარდება სემინარები და განიხილება აფთიაქში ხშირად შექმნილი სხვადასხვა სიტუაცია.<br /><br />თეორიული კურსი გრძელდება : 18 ლექცია<br />კვირაში 3-ჯერ ტარდება 2სთ -იანი ლექციები. <br />სრული კურსის ღირებულება: 300 ლარი.<br />სტაჟირება: 150 ლარი. (ჯგუფიდან საუკეთესო 1-2 კურსდამთავრებული სტაჟირებას გაივლის უფასოდ)</p>\n<p>[registration]</p>', 'farmacy', '', '', '', 'ge', 3, 0, 0),
(151, 53, 50, 1523702222, 0, 'text', 'სამედიცინო რეგისტრატორის მოსამზადებელი კურსი', '', '<p>რეგისტრატორი</p>', 'registratory', '', '', '', 'en', 2, 0, 0);
INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(152, 53, 50, 1523702222, 0, 'text', 'სამედიცინო რეგისტრატორის მოსამზადებელი კურსი', '', '<p>კურსის შესახებ:</p>\n<p>** კურსი ორიენტირებულია პრაქტიკული უნარ-ჩვევების გამომუშავებაზე. <br />** კურსდამთავრებულებს ექნებათ შესაბამისი თეორიული და პრაქტიკული ცოდნა იმისათვის, რომ კონკურენციის პირობებში მეტად მარტივად და კვალიფიციურად დასაქმდნენ სხვადასხვა წამყვან სამედიცინო ორგანიზაციაში, რეგისტრატორის პოზიციაზე.</p>\n<p>კურსის მიზანია:</p>\n<p>** მოლაპარაკების პრინციპების, ტექნიკისა და მართვის უნარების გამომუშავება. <br />** კურსის მსვლელობისას მსმენელები შეიძენენ მნიშვნელოვან უნარ-ჩვევებს. <br />** კურსი შედგება თეორიული და პრაქტიკული ნაწილისაგან, ასევე ქეისების აქტიური ანალიზი და მომზადება.</p>\n<p>კურსის თემატიკა:</p>\n<p>** ზოგადი თერაპიული უნარ-ჩვევები ავადმყოფობათა და ჯანმრთელობასთან დაკავშირებული პრობლემების საერთაშორისო სტატისტიკური კლასიფიკაცია <br />** ზოგადი ფსიქოლოგია ზოგადი თერაპია <br />** ზოგადი ქირურგია <br />** ზოგადი ფარმაკოლოგია <br />** ჯანმრთელობის დაზღვევა კორპორატიული დაზღვევა <br />** ჯანმრთელობის დაზღვევის სახელმწიფო პროგრამა საყოველთაო ჯანდაცვა დაზღვეული პაციენტის მომსახურება მოლაპარაკებების ძირითადი კომპონენტები <br />** მოლაპარაკების პროცესი გადაწყვეტილების მიღება <br />** მოლაპარკებების დროს სტრატეგიების სწორად გამოყენება <br />** მოლაპარაკების დროს ძირითადი წინააღმდეგობების გადალახვა სამედიცინო პროცესის კასკადის დაგეგმვა ინფორმაციის მიწოდება, რეგისტრაცია მონაცემების შეყვანა, როგორც სარეგისტრაციო ჟურნალში, ასევე, პროგრამაში ჯანდაცვის პორტალზე, e-mail-ის გაგზავნის ტექნიკა პაციენტის მომსახურების დაგეგმვა პაციენტის მოლოდინი პაციენტებთან ურთიერთობის ღირებულება პაციენტის კონსულტაცია გადამისამართება პრობლემების მართვა</p>\n<p>კურსი მოიცავს:</p>\n<p>** სრული კურსის ხანგრძლივობა: 24 საათი<br />** კვირაში ჩატარდება: 3 ლექცია <br />** ლექციის ხანგრძლივობა: 2 სთ <br />** კურსის ღირებულება: 250 ლარი</p>\n<p>[registration]</p>', 'registratory', '', '', '', 'ge', 2, 0, 0),
(153, 54, 50, 1523702279, 0, 'text', 'ხარისხის კონტროლი', '', '<p>ხარისხის კონტროლი</p>', 'control', '', '', '', 'en', 4, 0, 0),
(154, 54, 50, 1523702279, 0, 'text', 'ხარისხის კონტროლი', '', '<p>ხარისხის კონტროლი</p>\n<p>[registration]</p>', 'control', '', '', '', 'ge', 4, 0, 0),
(156, 55, 9, 1523702431, 0, 'text', 'საბუღალტრო აღრიცხვა ', '', '', 'accounting', '', '', '', 'ge', 1, 0, 1),
(158, 56, 9, 1523702520, 0, 'text', 'საბუღალტრო კომპიუტერული პროგრამები', '', '<p>** ორისი - 8 ლექცია-ინდივიდუალურად - 150 ლარი</p>\n<p>სუპერფინი - 8 ლექცია-ინდივიდუალურად - 150 ლარი</p>\n<p>ინფო - 6 ლექცია-ინდივიდუალურად - 150 ლარი</p>\n<p>1C -ბუღალტერია:</p>\n<p>** 2-3 კაციან ჯგუფში - 8 საათი - 200 ლარი<br />** ინდივიდუალურად - 6 საათი - 300 ლარი</p>\n<p>www.rs.ge- სთან მუშაობის შესწავლა ინდივიდუალურად: 1 ლექცია -30 ლარი.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'accouncting-programs', '', '', '', 'ge', 2, 0, 0),
(159, 57, 9, 1523702561, 0, 'text', 'სტაჟირება ბუღალტრებისთვის', '', '', 'accounting-stajior', '', '', '', 'en', 3, 0, 0),
(160, 57, 9, 1523702561, 0, 'text', 'სტაჟირება ბუღალტრებისთვის', '', '<p>\"VIP Intellect Group\"-ის საბუღალტრო აღრიცხვისა და პრაქტიკული ბუღალტერიის კურსდამთავრებულები სტაჟირებას გაივლიან შპს \"AMG\"-ის გამოცდილ და პროფესიონალ ბუღალტრებთან.</p>\n<p>სტაჟირების დასრულების შემდეგ მოგეცემათ რეკომენდაცია როგორც ჩვენი სასწავლო ცენტრისგან, ასევე კომპანია \"AMG\"-ისგან.</p>\n<p>ეს იქნება რეალური პრაქტიკა, რომ შემდგომაც კურსდამთავრებულმა უნდა შეძლოს დამოუკიდებლად აწარმოოს საბუღალტრო საქმიანობა სხვადასხვა სფეროში!</p>\n<p>სტაჟირებისას პრაქტიკანტს რეალურად ექნება შეხება:</p>\n<p>1. მოქმედი, სხვადასხვა ორგანიზაციების რეალური დოკუმენტების დამუშავებასთან<br />2. კომპიუტერული პროგრამა ორისის პრაქტიკულად გამოყენება - რეალურ საბუთებზე დაყრდნობით<br />3. http://www.rs.ge-სთან მუშაობა<br />4. ინტერნეტ ბანკინგით სარგებლობა<br />5. სრული საბუღალტრო დოკუმენტაციების დამუშავება ერთ საოპერაციო პერიოდში.</p>\n<p>პრაქტიკის ხანგრძლივობა: ერთად ერთი თვე<br />დღეში არანაკლებ 2 საათისა:<br />ღირებულება ინდივიდუალურად: 300 ლარი</p>\n<p>გაითვალისწინეთ: თქვენ პრაქტიკულ ბუღალტრულ საქმიანობას შეგასწავლიან ისეთი დონის ბუღალტრები, რომელთაც აქვთ დიდი ხნის მუშაობის გამოცდილება წარმოების, ვაჭრობის და მომსახურების სფეროს ყველანაირ ორგანიზაციაში!</p>\n<p>დამწყები ბუღალტრებისთვის გაგიწევთ საკონსულტაციო მომსახურებას, აგიწყობთ საბუღალტრო აღრიცხვიანობას პროგრამაში, დაგილაგებთ საბუღალტრო დოკუმენტაციას და მოგიწესრიგებთ პრობლემებს.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'accounting-stajior', '', '', '', 'ge', 3, 0, 0),
(161, 58, 9, 1523702594, 0, 'text', 'საგადასახადო კანონმდებლობის კურსი', '', '', 'tax', '', '', '', 'en', 4, 0, 0),
(162, 58, 9, 1523702594, 0, 'text', 'საგადასახადო კანონმდებლობა ', '', '<p>კურსის მიზანი: კურსის შესწავლის შემდეგ მსმენელები მიიღებენ ცოდნას საგადასახადო კანონმდებლობაში და შესძლებენ ამ ცოდნის პრაქტიკაში გამოყენებას.</p>\n<p>სამიზნე აუდიტორია: კურსი განკუთვნილია მოქმედი ბუღალტრებისათვის, ფინანსური მენეჯერებისათვის, საგადასახადო სპეციალისტებისათვის, აღნიშნული თემატიკით დაინტერესებული პირებისათვის.</p>\n<p>კურსის თემატიკა:</p>\n<p>** საქართველოს საგადასახადო სისტემა, ფიზიკური პირი, საწარმო, ორგანიზაცია; გადასახადის გადამხდელის სამართლებრივი დაცვა;<br />** საგადასახადო ვალდებულება, საგადასახადო ანგარიშგება;<br />** საშემოსავლო და მოგების გადასახადი;<br />** მოგების გადასახადის ესტონური მოდელი;<br />** მოგების გადასახადის ესტონური მოდელი; <br />** დამატებული ღირებულების გადასახადი;<br />** აქციზი;<br />** იმპორტის გადასახადი, ადგილობრივი გადასახადი;<br />** საგადასახადო სამართალდარღვევა და პასუხისმგებლობა;<br />** საგადასახადო დავა;<br />** საქართველოს ფინანსთა მინისტრის ბრძანება გადასახადების ადმინისტრირების შესახებ და სხვადასხვა მეთოდური მითითებები;<br />** პრაქტიკული ქეისების ანალიზი.</p>\n<p>კურსის მიმდინარეობისას გამოყენებული იქნება შემოსავლების სამსახურის სიტუაციური სახელმძღვანელოები, მეთოდური მითითებები, შემოსავლების სამსახურისა და ფინანსთა სამინისტროს დავების განხილვის საბჭოს გადაწყვეტილებები.</p>\n<p>კურსდამთავრებულის უპირატესობანი:</p>\n<p>ტრენინგის შემდეგ მონაწილეები შეძლებენ:</p>\n<p>** სააღრიცხვო სისტემის ახალ რეგულაციაზე მორგებას;<br />** ახალი საკანონმდებლო ნორმების სწორ ინტერპრეტაციას;<br />** ესტონური მოდელის შედეგად პოზიტიური ცვლილებების სწორად გამოყენებას;<br />** პოტენციურად სარისკო საკითხების იდენტიფიცირებას და შესაბამის რეაგირებას;</p>\n<p>კურსი მოიცავს: 12 ლექციას; <br />ჯგუფში მსმენელთა მაქსიმალური რაოდენობა: 5-6 მსმენელი<br />კურსის ღირებულება ჯგუფში შეადგენს: 400 ლარს</p>\n<p>სასწავლო კურსის ბოლოს ტარდება ტესტირება და გაიცემა ორენოვანი სერთიფიკატი (ინგლისურ ენაზე/ქართულ ენაზე).</p>\n<p>&nbsp;</p>\n<p>[registration]</p>\n<p>&nbsp;</p>', 'tax', '', '', '', 'ge', 4, 0, 0),
(163, 59, 9, 1523702693, 0, 'text', 'ბუღალტერია უცხოელებისთვის', '', '', 'accounting-eng', '', '', '', 'en', 5, 0, 0),
(164, 59, 9, 1523702693, 0, 'text', 'ბუღალტერია უცხოელებისთვის', '', '', 'accounting-eng', '', '', '', 'ge', 5, 0, 0),
(167, 61, 8, 1523702986, 0, 'text', 'გაძლიერებული ექსელის კურსები', '', '', 'advanced-excel', '', '', '', 'en', 2, 0, 0),
(168, 61, 8, 1523702986, 0, 'text', 'გაძლიერებული ექსელი', '', '<p>&nbsp;</p>\n<p><strong>Basic Level: </strong></p>\n<p>განკუთვნილია დამწყებთათვის, რომელთაც არ ჰქონიათ შეხება ექსელთან.</p>\n<p>** Start<br />** ექსელის მომართვა: <br />** დოკუმენტის პარამეტრების მართვა:<br />** დოკუმენტის ფორმატირება:<br />** მონაცემების ტიპები<br />** ფორმულები: sum, average, count, max, min, if, if+if, sumif, countif, today, day 360, weekday, conditional formating</p>\n<p>კურსის დასრულების შემდგომ:</p>\n<p>** გექნებათ ექსელის საბაზისო შესაძლებლობების კარგი ცოდნა. <br />** თავს იგრძნობთ უფრო კომფორტულად ექსელის სამუშაო გარემოში და შეძლებთ ცხრილების/გრაფიკების აგებას და კორექტირებას.<br />** გეცოდინებათ საბაზისო ფორმულები, რომელიც დაგეხმარებათ უფრო პროდუქტიული იყოს თქვენი სამუშაო ცხრილები/გრაფიკები რომელთაც თქვენ შექმნით იქნება უფრო ეფექტური და პრეზენტაბელური.</p>\n<p>პროგრამის ხანგრძლივობა შეადგენს: 5 საათს<br />ღირებულება ინდივიდუალურად: 100 ლარი ერთი მსმენელისთვის<br />2-3 კაციან ჯგუფში: 80 ლარი - ერთი მსმენელისთვის<br />4 კაციდან ჯგუფში: 65 ლარი - ერთი მსმენელისთვის</p>\n<p><strong>Intermediate Level:</strong></p>\n<p>განკუთვნილია მათთვის, ვინც უკვე იცის საბაზისო დონე და მუშაობს დიდი მონაცემთა ბაზებში.</p>\n<p>აღნიშნული კურსი დააინტერესებთ მათ, ვისაც უწევთ ფინანსური, სტატისტიკური ან სხვა საშედეგო ანალიზური ინფორმაციის დამუშავება-მომზადება Excel-ში, კურსის მიმდინარეობისას განვიხილავთ პრაქტიკულ ამოცანებს ფინანსური ანგარიშგებების, ფულადი ნაკადების და ხარჯთაღრიცხვის კუთხით, ასევე საწარმოო ბიუჯეტის დაგეგმარებას, ანალიზისა და საკონტროლო ცხრილების მექანიზმებს;</p>\n<p>გაითვალისწინეთ, რომ ამ კურსს ძირითადად ეუფლებიან სხვადასხვა წარმატებული ორგანიზაციების ფინანსური დირექტორები, მათ თანაშემწეები, ფინანსური და ბიზნეს ანალიტიკოსები, ასევე მენეჯერები, ბუღალტრები და საწყობის თანამშრომლები. ამიტომ პრაქტიკული ამოცანები ამ ორგანიზაციებში უკვე გადაჭრილი პრობლემების და მიმდინარე პროცესების მათემატიკური მოდელებია;</p>\n<p>დიდი მოცულობის სამუშაო გვერდზე მუშაობა:</p>\n<p>** ლოგიკურ ფუნქციებთან მუშაობა (If, Iferror, And, Or, True, False) Logical IF+IF; IF+AND+OR<br />** საძიებო ფორმულები: Vlookup, Hlookup, Lookup, index, indirect, match.<br />** სტატისტიკური ფორმულები: countif, averageif, countifs, averageifs, count A, count blank<br />** ტექსტური ფორმულები: left, right, mid, find, search, concatenate, rept, replace, proper, substitute, text;<br />** თარიღის და დროის ფუნქციები: Today, Now, Date, Day, Month , year, Hour, Minute, edate, eomonth, networkdays weeknum, workday<br />** Name Manager -თან მუშაობა (Name Box, Define Name, Create From Selection) ახალი სახელების შექმნა და მათი რედაქტირება;<br />** Data Validation: კრიტერიის დადგენა ტექსტის, თარიღის თუ რიცხვის შეზღუდვის დასაწესებლად, უჯრაში სიის შექმნა<br />** მათემატიკური ფუნქციები: Even, Odd\" Sumif , Sumifs , Subtotal; Sumproduct, Conditional Formulas and Formating<br />** გაფართოებული ფილტრი (Advanced Filter), ინფორმაციული ფუნქციები, ტექსტის დაშლა სვეტებად (Text To Column)<br />** ფორმულის შემოწმება და ხარვეზების პოვნა; სამუშაო წიგნის, სამუშაო გვერდის და არეალის დაცვა<br />** Table Format, Pivot table, Pivot chart , ფინანსური ფუნქციები: FV, pv ,pmt, ppmt, nper;</p>\n<p>კურსის დასრულების შემდგომ:</p>\n<p>** შეძლებთ სწრაფად დაამუშაოთ დიდი მონაცემთა ბაზები და განახორციელოთ მათზე მოქმედებები; <br />** შეძლეთ ვრცელი ცხრილების მარტივ და პრეზენტაბელურ რეპორტებად გარდაქმნას;<br />** ფორმულების და ფორმატირებების ცოდნა საშუალებას მოგცემთ აკონტროლოთ ვადები პროდუქციაზე, ასევე დებიტორთა თუ საკუთარი დავალიანებების გრაფიკი.<br />** შეძლებთ მონაცემთა ბაზების ერთმანეთთან დაკავშირებას ისე რომ ერთის განახლება იწვევდეს მეორის ავტომატურ განახლებას<br />** ფორმატინგის შეამცირებთ დიდ მონაცემებთან მუშაობისას ადამიანის მექანიკური შეცდომების მოხდენის ალბათობას <br />** შეძლებთ რთულ ფორმულებთან მუშაობას და თავად ჩაწერილი ფორმულის ანალიზს Error-ის შემთხვევებში; და ა.შ.</p>\n<p>პროგრამის ხანგრძლივობა შეადგენს: 8 საათს<br />ღირებულება ჯგუფში 4 კაცი და მეტი: 120 ლარი - ერთი მსმენელისთვის<br />ორ-სამ კაციან ჯგუფში: 150 ლარი<br />ინდივიდუალურად: 180 ლარი</p>\n<p><strong>Advanced Level:</strong></p>\n<p>** აღნიშნული კურსი განკუთვნილია მათთვის, ვინც კარგად ფლობს წინა დონეებს და სურს გაეცნოს ექსელის უფრო რთულ და საინტერსო ფუნქციებს და შესაძლებლობებს და იყოს მეტად პროგრესული მონაცემთა ანალიზში.<br />** ლოგიკური ფუნქციები &amp; Name Manager; საძიებო ფორმულები;<br />** List Management (Advanced); data Validation: კარტერის დადგენა ტექსტის, თარიღის თუ რიცხვის შეზღუდვის დასაწესებლად; უჯრაში სიის შექმნა; Database functions: Statistic functions: PivotTablec &amp; PivotCharts;<br />** Analytic Options; Text Functions (advanced); ფინანსური ფუნქციები; Protect and sharing;<br />** Macros; Macros-ის შექმნა; Macro Recorder-ის გამოყენება; მაკროსის რედაქტირება;</p>\n<p>კურსის გავლის შემდგომ: გექნებათ აბსოლუტურად სრული წარმოდგენა და ცოდნა ექსელის უმაღლესი დონის ფუნქციებზე. შეძლებთ გამოიყენოთ ყველა ის შესაძლებლობა, რასაც ექსელი გაძლევთ თავისი ფორმულებით და ფუნქციებით, ასევე მონაცემთა ბაზების/ცხრილების მანიპულაციას Pivot Tables დახმარებით და Advanced ანალიზის ჩატარებას. შეძლებთ მაკროსების ჩაწერას რეკორდერის დახმარებით, რაც დაზოგავს თქვენს ყოველდღიურ რუტინაზე დასახარჯ დროს.</p>\n<p>პროგრამის ხანგრძლივობა შეადგენს: 10 ლექციას<br />ღირებულება ჯგუფში 4 კაცი და მეტი: 220 ლარი - ერთი მსმენელისთვის<br />ორ-სამ კაციან ჯგუფში: 260 ლარი<br />ინდივიდუალურად: 300 ლარი</p>\n<p>გაითვალისწინეთ, რომ კურსი მოიცავს პრაქტიკულ სამუშაოს და ყოველი გაკვეთილის შემდგომ რამდენიმე დავალებას, რომელიც ელექტრონული ფორმით მოგეცემათ და აუცილებლად უნდა შეასრულოთ, ყოველი დავალება იქნება თქვენი ათვისებული ცოდნისა და უნარ-ჩვევის გარკვეული მონიტორინგი, ამიტომ დავალებებზე იქნება მკაცრი კონტროლი;</p>\n<p><strong>Visual Basic For Application (VBA):</strong></p>\n<p>პროგრამირების ენა Microsoft-ის პროდუქტებისთვის რომელიც საშუალებას გაძლევთ წეროთ ავტომატიზირებული პროცედურები, შექმნათ ფუნქციები და პროგრამები. VBA-ის შესწავლა ექსელში საკმარისია იმისთვის, რომ შეძლოთ მისი გამოყენება სხვა საოფისე აპლიკაციებისთვის.</p>\n<p>აღნიშნული კურსი განკუთვნილია მათთვის:</p>\n<p>ვინც ფლობს ექსელს მაღალ დონეზე და საერთოდ არ გააჩნია პროგრამირების ცოდნა ან აქვს ექსელში მაკროსებთან მუშაობის გარკვეული გამოცდილება. <br />კურსი აგებულია Microsoft ის ოფიციალური ტრეინინგ პროგრამის საფუძველზე და საშუალებას მოგცემთ შეისწავლოთ VBA-ის პროგრამირების ენა ნულიდან.</p>\n<p>პროგრამის დაუფლების შემდეგ:</p>\n<p>** გექნებათ კოდის ჩაწერის და რედაქტირების საფუძვლიანი ცოდნა;<br />** ფორმებით თქვენ შეძლებთ საკუთარი პროგრამების, ფუნქციების და ფორმების შექმნას; რეპორტინგის ავტომატიზაციას; <br />** საოფისე პროგრამებთან ერთად მუშაობას; <br />** ასევე სხვა ექსელის მრავალფეროვანი შესაძლებლობების გამოყენებას.</p>\n<p>კურსის განმავლობაში თქვენ გადმოგეცემათ მზა კოდების ნიმუშები, ასევე დავალებების სახით თავად შექმნით ტრენერის დახმარებით თქვენთვის სასურველ პროდუქტებს.</p>\n<p>პროგრამის ხანგრძლივობა შეადგენს: 12 საათნახევრიან ლექციას.</p>\n<p>ღირებულება:</p>\n<p>ჯგუფში 4 კაცი და მეტი: 350 ლარი - ერთი მსმენელისთვის<br />ორ-სამ კაციან ჯგუფში: 450 ლარი - ერთი მსმენელისთვის<br />ინდივიდუალურად: 560 ლარი.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>\n<p>&nbsp;</p>', 'advanced-excel', '', '', '', 'ge', 2, 0, 0),
(169, 62, 8, 1523703020, 0, 'text', 'მონაცემთა ბაზები', '', '', 'data-base', '', '', '', 'en', 6, 0, 0),
(170, 62, 8, 1523703020, 0, 'text', 'მონაცემთა ბაზები - Microsoft Access; SQL Server;  Oracle;', '', '<p><strong>1. Microsoft Access :</strong><br />მონაცემთა ბაზების მომსახურე პერსონალს უწევს ბაზაში ახალი ინფორმაციის დამატება, საჭირო მოთხოვნის შედგენა და მონაცემთა სწრაფი ძებნა, სხვა და სხვა ტიპის ფორმების აგება, შედეგების რაპორტირება, გადაგზავნა, იმპორტი და ექსპორტი ბაზაში; <br />&bull;<strong> მოდული 1</strong>: ცარელი მონაცემთა ბაზის შექმნა, შენახვა, გახსნა. მონაცემთა ბაზის შექმნა შაბლონის დახმარებით. ცხრილის შექმნა - ინფორმაციის შეყვანით; ველების განსაზღვრით, სხვა ცხრილზე დაყრდნობით; ველის ტიპები - ტექსტური, რიცხვითი, ლოგიკური . . . ; შესაბამისი ველის ტიპის შერჩევა.<br />&bull;<strong> მოდული 2</strong>: ცხრილებთან/ველებთან/მონაცემთა ჩანაწერებთან მუშაობა - პირველადი გასაღების შექმნა, პირველადი გასაღები მრავალი ცვლადით; მონაცემების შეყვანა, რედაქტირება, ძებნა, ჩანაცვლება, წაშლა, ნავიგაცია, ფილტრი, სორტირება. რელიაციური მოდელები: ერთი ერთთან, ერთი მრავალთან; პირველადი და გარე გასაღები. ცხრილებს შორის მიმართებების შეგმნა, შეცვლა, წაშლა, ბეჭდვა. ინფორმაციის შენახვის ოპტიმიზაცია Table Analyzer - ის გამოყენებით.<br />&bull;<strong> მოდული 3</strong>: მონაცემთა ვალიდაცია ველის და ცხრილის დონეზე; ინდექსები და მათი საჭიროების წარმოქმნა; პირველადი გასაღები, ინდექსები განმეორებადი და არაგანმეორებადი მონაცემებით; Lookup ველის შექმნა, რედაქტირება; Lookup ველის ხედი ერთი ან რამოდენიმე ველით. Lookup ველი რამოდენიმე ჩანაწერით.<br /><strong>&bull; მოდული 4</strong>: ფორმების შექმნა; ცარელი ფორმის შექმნა, ფორმის შექმნა ოსტატის დახმარებით. ფორმის კავშირი ცხრილთან. ფორმის სხვადასხვა ხედი. ფორმის რედაქტირება - ველების დაჯგუფება და ჯგუფების დაშლა. ფორმაში ფილტრი, სორტირება, ძებნა, ნავიგაცია. დაქვემდებარებული ფორმების შემნა - მთავარი და დაქვემდებარებული ფორმები. დაქვემდებარების წესის და ველების განსაწღვრა. ფორმის ავტო ფორმატი.<br /><strong>&bull; მოდული 5</strong>: ფორმების ფუნქციონალობის გაძლიერება სხვადასხვა ობიექტის დამატებით (Text, Lable, Button, Tab, ComboBox, ListBox . . .). აღნიშნული ობიექტების თვისებები (სიგრძე, სიგანე, ფერი, ფონტი, გვერდი სტილი) შეცვლა, მათი კავშირი ველთან, მასკა. რედაქტირების აკრძალვა ველიას ან ფორმის დონეზე.<br /><strong>&bull; მოდული 6</strong>: ანგარიშების (Reports) ფორმირება; მარტივი ანგარიში, ანგარიშების ფორმირება ოსტატის გამოყენებით, ანგარიშები მრავალ ცხრილზე დაყრდნობით; ავტოფორმატი ანგარიშებში; მონაცემების სორტირება და ფილტი ანგარიშებში; ანგარიშის გახსნა სხვადასხვა რეჟიმში. ანგარიშების რედაქტირება; ცურცლის პარამეტრები.<br /><strong>&bull; მოდული 7</strong>: მოთხოვნების შექმნა ერთ ცხრილზე დაყრდნობით, მრავალ ცხრილზე დაყრდნობით, მოთხოვნაზე დაყრდნობით;ჩამატების, რედაქტირების და წაშლის მოთხოვნების შექმნა.<br /><strong>&bull; მოდული 8</strong>: მონაცემების ფილტრი და სორტირება მოთხოვნაში. ფუნქციების გამოყენება მოთხოვნაში; დაჯგუფების მოთხოვნები; ფილტრის როგორც მოთხოვნის შენახვა; დათვლადი ველების შექმნა მოთხოვნებში;<br /><strong>&bull; მოდული 9</strong>: მარტივი მაკროსების შექმნა; პროცესების ავრომატიზაცია. ფორმის და ანგარიშის გახსნა, მონაცემების განახლება პროგრამულად; ძებნა და ფილტრი მაკროსით; გლობალური ობიექტის TempVars გამოყენება. ორი Combobox ის შეთანხმებული მუშაობა. მენიუს შექმნა პროგრამულად.<br /><strong>&bull; მოდული 10</strong>: მონაცემთა იმპორტი და ექსპორტი სხვადასხვა ფორმატში; სხვა მონაცემთა წყაროდან ცხრილების დაკავშირება; იმპორტის და ექსპორტის სპეციფიკაციების შენახვა.<br /><strong>&bull; მოდული 11</strong>: ბაზის კონკრეტული სტრუქტურები კონკრეტული შაბლონური ქეისების მაგალითზე: Contacts, NorthWind<br /><strong>&bull; მოდული 12</strong>: ბაზის კონკრეტული სტრუქტურები კონკრეტული ქეისების მაგალითზე: &bdquo;მომსახურება&ldquo;, &bdquo;წარმოება&ldquo;, &bdquo;დისტრიბუცია -რეალიზაცია&ldquo;, &ldquo;ადამიანური რესურსების მართვა&rdquo;</p>\n<p><strong>კურსის ხანგრძლივობა: 12 ლექცია 1სთ 30წთ-იანი.</strong><br /><strong>ღირებულება: ინდივიდუალურად - 450 ლარი.</strong><br /><strong>2/3 კაციან ჯგუფში 350 ლარი.</strong></p>\n<p>შეავსე სარეგისტრაციო ფორმა და დარეგისტრირდი ჯგუფში:</p>\n<p><br />[registration]</p>\n<p><br /><strong>2. SQL Server ადმინისტრირება, გამოყენება და მხარდაჭერა:</strong></p>\n<p>კურსი მსმენელებს საშუალებას აძლევს გამოიყენონ SQL Server&ndash;ის ახალი შესაძლებლობები და ამით შეძლონ SQL Server მონაცემთა ბაზებისა და სერვერების დაპროექტება, შემუშავება, ფუნქციონირება და განვითარება. გარდა ამისა, კურსი აძლევს მსმენელებს იმ ცოდნას, რაც საჭიროა SQL Server&ndash;ის აღნიშნული ახალი შესაძლებლობების სათანადოდ გამოყენებისათვის. <br />სასწავლო კურსის შესწავლის წინაპირობები:<br />მსმენელი უნდა ფლობდეს ცოდნას შემდეგი საკითხების შესახებ: ოპერაციული სისტემები (საფუძვლები), კომპიუტერის არქიტექტურა, პერიფერიული მოწყობილობები, პროგრამირების საფუძვლები.</p>\n<p><strong>კურსის შინაარსი:</strong><br />ლექცია 1: SQL Server 2014-ის ინსტალაცია და კონფიგურირება<br />ლექცია 2: მონაცემთა ბაზის კონფიგურირება და ექსპლოატაცია<br />ლექცია 3: SQL Server -ის უსაფრთხოების უზრუნველყოფა<br />ლექცია 4: მონაცემთა ბაზების სარეზერვო ასლების შექმნა და აღდგენა<br />ლექცია 5: SQL Server-ის ავტომატიზაცია<br />ლექცია 6: Microsoft SQL Server მონიტორინგი და წარმადობის ოპტიმიზაცია<br />ლექცია 7: DDL (Data Definition Language), მონაცემების დაჯგუფება<br />ლექცია 8: ლოგიკური ოპერაციები, ჩადგმული სიმრავლეები<br />ლექცია 9: ცხრილები, მონაცემთა ტიპები და მონაცემთა მთლიანობა<br />ლექცია 10: DML (Data Manipulation Language)<br />ლექცია 11: ცვლადების, ციკლების სტრუქტურების აღწერა (LOOP, WHILE, CASE, IF THEN, FOR)<br />ლექცია 12: ფუნქციების, პროცედურების და ტრიგერების აღწერა</p>\n<p><strong>კურსდამთავრებული შეძლებს:</strong> SQL Server-ი ერთერთი უძლიერესი მონაცემთა ბაზაა, რომელიც დღესდღეობით გამოიყენება როგორც სახელმწიფო სტრუქტურებში, საბანკო სექტორებში და მსხვილ კომპანიებში. ეს კურსი თქვენ მოგცემთ საშუალებას შეიქმნათ პერსპექტიული მომვალი და გაარღმავოთ ცოდნა, გაუწიოთ ადმინისტრირება კომპანიაში არსებული მონაცემთა ბაზების სისტემას, დაარეზერვოთ, იზრუნოთ მონაცემების უსაფრხოებაზე, მოახდინოთ ყველაფრის ავტომატიზირება და მონიტორინგი, რათა კომპანიაში არსებული თითოეული ინფორმაციის დეტალიც კი არ იქნეს დაკარგული.</p>\n<p><strong>ხანგრძლივობა: 12 ლექცია (კვირაში 2 ჯერ)</strong><br /><strong>ლექციის ხანგრძლივობა: 2 საათი</strong><br /><strong>სწავლის ღირებულება: </strong><br /><strong>ორ-სამ კაციან ჯგუფში - 700 ლარი ერთი მსმენელისთვის;</strong><br /><strong>4 კაციან ჯგუფში - 550 ლარი ერთი მსმენელისთვის;</strong></p>\n<p>შეავსე სარეგისტრაციო ფორმა და დარეგისტრირდი ჯგუფში:</p>\n<p><br />[registration]</p>\n<p><strong>3. Oracle 11g Fundamentals</strong></p>\n<p>კურსი მოიცავს ფუნდამენტალურ მასალას ორაკლის ენის SQL და PL/SQL-ის შესახებ. კურსი გათვლილია დამწყებთათვის.სასურველია გამოცდილება კომპიუტერულ მეცნიერებების მიმართულებით.<br />Oracle მონაცემთა ბაზა არის საფუძველი ბევრ კომპანიაში, მასზეა დამოკიდებული კომპანიის ინფორმაციის შენახვა, დამუშავება და დაცვა. იგი გამოიყენება დიდი რაოდენობის ინფორმაციასთან სამუშაოდ და ისეთ სიტუაციებში, სადაც მონაცემთა უსაფრთოება წარმოადგენს კომპანიის განმსაზღვრელ ფაქტორს.<br />უმეტესი ბანკები და ტელეკომ-ოპერატორები იყენებენ ამ პლატფორმას და ყოველთვის საჭიროებენ მის კვალიფიცირებულ სპეციალისტებს. მთავარი მოთხოვნა წარმოადგენს საიმედო პროგრამულ მხარდაჭერას, ასევე პროცედურების ცოდნას, რათა პრობლემის შემთხვევაში მოხდეს ინფორმაციის უდანაკარგო და სწრაფი აღდგენა.</p>\n<p>SQL კურსის გავლისას თქვენ გაეცნობით მონაცემთა ბაზების კონცეფციას, მიიღებთ SQL-ის საბაზო ცოდნას, რომელიც საშუალებას მოგცემთ დაამუშავოთ კომპანიის მოთხოვნები, შეგეძლებათ მოდიფიცირება გაუკეთოთ უკვე არსებულ ინფორმაციას, შექმნათ ახალი ან წაშალოთ არსებული მონაცემები. <br />PL/SQL კურსის გავლისას თქვენ გაეცნობით პროგრამირების ენას, რომელიც საშუალებას მოგცემთ, შექმნათ ბლოკები, რომლებიც შესაძლებელია გამოყენებული იქნეს სხვადასხვა აპლიკაციებში.<br />ასევე მსმენელები შეისწავლიან ფუნქციების, ტრიგერების, პროცედურების შექმნას და გამოყენებას, პარამეტრების გამოცხადებას და გამონაკლისების დამუშავებას.<br /> <br />კურსის ამ ნაწილის გავლით თქვენ შეძლებთ თავისუფლად მოამზადოთ რეპორტები თქვენი კომპანიისთვის.</p>\n<p><strong>კურსში განხილული საკითხები</strong><br /><strong>მოდული 1:</strong> ბაზიდან ინფორმაციის ამოღება SELECT-ის საშუალებით.ინფორმაციის გაფილტვრა და დალაგება.<br />მოდული 2: Single-row ფუნქციების გამოყენება და მიღებულის შედეგის მართვა<br />მოდული 3: კონვერტაციის ფუნქციების გამოყენება და მიღებულის შედეგის მართვა<br />მოდული 4: მონაცემების დაჯგუფება (GROUP functions)<br />მოდული 5: მონაცემების ამოღება JOIN-ის საშულებით<br />მოდული 6: Subquery-ს გამოყენება. Set ოპერატორის გამოყენება<br />მოდული 7: DML(Data Manipulation Language) insert,update,delete,merge <br />მოდული 8: DDL (Data Definition Language) create,drop,alter<br />მოდული 9: User Access კონტროლი. <br />მოდული 10: სქემა ობიექტების მართვა ( შექმნა, წაშლა, დამატება) მოდული 11: სისტემური Data Dictionary Views გაცნობა, შესწავლა. <br />მოდული 12: PL/SQL-ის შესავლები. PL/SQL ცვლადების აღწერა, ძირითადი სინტაქსი<br />მოდული 13: მონაცემთა ტიპები, ოპერატორები(არითმეტიკული, ლოგიკური,რელაციური) მოდული14: IF, IF THEN ELSE, .. LOOP, WHILE, FOR LOOP, CASE სტრუქტურების აღწერა <br />მოდული 15: String ფუნქციები, Exception-ების მართვა<br />მოდული 16: Function, Procedures, Triggers, Views შექმნა, აღწერა</p>\n<p>მსმენელებს თითქმის ყველა ლექციაზე ექნებათ პრაქტიკული სამუშაოები, რათა უფრო გაიღრმავონ ცოდნა.</p>\n<p>კურსში გამოყენებული სასწავლო მასალა და დამატებითი კომპონენტები</p>\n<p><strong>კურსის ხანგრძლივობა: 16 ლექცია</strong><br /><strong>ლექციები ჩატარდება (კვირაში 2 ჯერ)</strong><br /><strong>კურსის ღირებულება: ორ-სამ კაციან ჯგუფში: 700 ლარი; </strong><br /><strong>ჯგუფში 4 კაციდან - 550 ლარი;</strong></p>\n<p>თანხის გადახდა ხორციელდება ორ ეტაპად.</p>\n<p>შეავსე სარეგისტრაციო ფორმა და დარეგისტრირდი ჯგუფში:</p>\n<p><br />[registration]</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული მომხმარებლებისთვის მსემენელთა მომზადება, სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე, შეიქმნება სპეციალიზირებული პროგრამა, კორპორატიული მომხმარებლისთვის გამომდინარე მსმენელთა რაოდენობიდან შესაბამისად მოხდება ფასების რეგულირება.</p>\n<p>&nbsp;</p>', 'data-base', '', '', '', 'ge', 6, 0, 0),
(171, 63, 8, 1523703117, 0, 'text', 'სამშენებლო და საინჟნრო პროგრამები', '', '', 'bulding-programs', '', '', '', 'en', 10, 0, 0),
(172, 63, 8, 1523703117, 0, 'text', 'სამშენებლო და საინჟინრო', '', '<p>[registration]</p>', 'bulding-programs', '', '', '', 'ge', 10, 0, 0),
(173, 64, 8, 1523703237, 0, 'text', '2D  და 3D გრაფიკა და დიზაინი', '', '', 'grafical-and-disign', '', '', '', 'en', 7, 0, 0),
(174, 64, 8, 1523703237, 0, 'text', '2D  გრაფიკა და დიზაინი', '', '<p><strong>Adobe Photoshop - სასწავლო კურსი</strong></p>\n<p>** Photoshop - ში მუშაობის პრინციპები<br />** ინტერფეისის მართვა<br />** რასტრული რედაქტორის არსი<br />** ფოტოსთან მუშაობა<br />** სურათის დამუშავება<br />** ტიპოგრაფია-ტექსტთან მუშაობა<br />** სხვადასხვა ეფექტების გამოყენება<br />** ფენებთან მუშაობის პრინციპი<br />** ნიღბებთან მუშაობა და მათი გამოყენება სწორად<br />** ფილტრების დანიშნულება<br />** ინსტრუმენტთა პანელის დეტალური განხილვა და ყველა ინსტრუმენტის გამოყენება პრაქტიკაში<br />** მონიშვნებთან მუშაობა<br />** ფერთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** გამოსახულების რეტუშირება<br />** შავ-თეთრი სურათის გაფერადება<br />** 3D ობიექტებთან მუშაობა და მათი გამოყენება 2D გამოსახულებაში<br />** ნამუშევრის შენახვა საჭირო ფორმატში<br />** ნამუშევრის მომზადება დასაბეჭდად</p>\n<p>აღნიშნული კურსის გავლის: შემდეგ მსმენელს შეეძლება პროგრამასთან იმუშაოს უმაღლეს დონეზე, შეასრულოს ნებისმიერი სირთულის სამუშაო. შეეძლება დასაქმდეს სტამბებში, სარეკლამო კომპანიებში და სხვა კომპანიებში დიზაინერად.</p>\n<p>პრაქტიკული გაკვეთილების გარდა შეისწავლება თეორიული ნაწილი სადაც ახსნილი იქნება თუ როგორ ხდება ფერთან სწორი მუშაობა, რა არის პოლიგრაფია, რა სტანდარტები არსებობს პოლიგრაფიული ნაწარმის შექმნისას.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p><strong>CorelDraw:</strong></p>\n<p>** პროგრამის ზოგადი დახასიათება<br />** პროგრამის ინტერფეისის განხილვა<br />** მისალმების ფანჯარა<br />** ძირითად ინსტრუმენტთა პანელი<br />** დოკუმენტებთან მუშაობა<br />** გვერდებთან მუშაობა<br />** ვექტორებთან მუშაობა<br />** ვექტორების რედაქტირება<br />** ვექტორული გამოსახულებების შექმნა<br />** ობიექტების განხილვა და მათი რედაქტირება<br />** ლეიერებთან მუშაობა<br />** ტექსტთან მუშაობა<br />** ეფექტებთან მუშაობა<br />** რასტრულ გამოსახულებასთან მუშაობა<br />** რასტრული გამოსახულების გავექტორება<br />** ფერებთან მუშაობა<br />** პრაქტიკული სავარჯიშოების შესრულება</p>\n<p>კურსის გავლის შემდეგ: მსმენელი დამოუკიდებლად შეძლებს ვექტორებთან მუშაობას, სარეკლამო პროდუქტის შექმნას: სავიზიტო ბარათების, ბროშურების, ლოგოების, ფლაერების, პოსტერების და სხვა.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p><strong>Adobe Illustrator CS6 - სასწავლო კურსი:</strong></p>\n<p>** პროგრამის ინტერფეისი<br />** დოკუმენტის შექმნა/გახსნა<br />** ინსტრუმენტთა პანელის დეტალური განხილვა<br />** შეიპებთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** ხატვა<br />** ობიექტებთან მუშაობა<br />** Pathfinder-ობიექტებზე მანიპულაცია<br />** ობიექტების დამუშავება<br />** Type tool-ტექსტთან მუშაობა<br />** ვექტორული გამოსახულების მნიშვნელობა<br />** ეფექტებთან მუშაობა<br />** ფილტრებთან მუშაობა<br />** გრადიენტები<br />** დიაგრამები და გრაფიკები<br />** სამ განზომილებიან სივრცეში მუშაობა<br />** 3D ობიექტებთან მუშაობა<br />** სიმბოლოებთან მუშაობა<br />** დოკუმენტის დასაბეჭდად მომზადება</p>\n<p>კურსის გავლის შემდეგ მსმენელი დამოუკიდებლად შეძლებს პროგრამაში მუშაობას და პოლიგრაფიული მასალის შექმნას: ლოგოების, ბროშურების, სავიზიტო ბარათების, ბუკლეტების, ფლაერების, ბანერების და სხვა პოლიგრაფიის. შეგეძლებათ შექმნათ მაღალი ხარისხის ვექტორული ნაწარმი.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p><strong>Adobe InDesign CC - სასწავლო კურსი:</strong></p>\n<p>** პროგრამის ინტერფეისის გაცნობა და მისი მოწყობა; ახალი დოკუმენტის შექმნა<br />** ნავიგაცია; პანელებთან და პალიტრებთან მუშაობა<br />** ინსტრუმენტთა პანელი; ცხელი ღილაკები; მენიუთა განხილვა; ეფექტური მუშაობა პანელებთან<br />** მინდვრები და სვეტები; გვერდის ზომა, მიმმართველები; ბიბლიოთეკა და სნიპეტები<br />** გვერდების მართვა; გვერდების ნუმერაცია; მასტერ გვერდი; შაბლონები<br />** ტექსტთან მუშაობა; მარკირებული სიის შექმნა; ნუმერაციული ტექსტის შექმნა; გამოსახულებასთან მუშაობა<br />** სურათის იმპორტი; გამოსახულების რედაქტირება; ლეიერებთან მუშაობა; ობიექტებთან მუშაობა<br />** ეფექტებთან მუშაობა; ტრანსფორმაციის სახეობები; სტილებთან მუშაობა; ტექსტური სტილები<br />** აბზაცის სტილები; ობიექტის სტილები; სტილების იმპორტი; ფერთან მუშაობა<br />** სვოჩების პალიტრა; გრადაციები; ხელსაწყო ქულერი; ცხრილების შექმნა<br />** ცხრილების სტილები; დოკუმენტის დასაბეჭდად მომზადება<br />** PDF დოკუმენტის შექმნა; Package ის შექმნა; ინტერაქტიული დოკუმენტის შექმნა</p>\n<p>კურსის გავლის შემდეგ თქვენ გეცოდინებათ პროგრამა მაღალ დონეზე და გექნებათ შესაძლებლობა იმუშაოთ წიგნების, ჟურნალების და გაზეთების დაკაბადონებაზე. შეგეძლებათ შექმნათ პოლიგრაფიული ნაწარმი, როგორიცაა: სავიზიტო ბარათები, ფლაერები, კალენდრები, ბროშურები, პოსტერები და ა.შ.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'grafical-and-disign', '', '', '', 'ge', 7, 0, 0),
(175, 65, 8, 1523703405, 0, 'text', 'ვებ პროგრამირება', '', '', 'web-programing', '', '', '', 'en', 9, 0, 0),
(176, 65, 8, 1523703405, 0, 'text', 'ვებ პროგრამირება', '', '<p><strong>HTML / CSS</strong></p>\n<p><br />რა არის ვებ, რა არის ვებ გვერდი, პროგრამირება რას ნიშნავს და რა არის საჭირო ამისთვის (მარტივი ანიმაციებით საიტს გავაკეთებ რო ნახონ რა შეუძლიათ ამ კურსის დასრულებისას უკვე)<br />კოდირების გარემო, რა ხელსაწყოებია საჭირო, და პირველი კოდი, ე.წ. &bdquo;hello Word&rdquo;, ტექსტთან მუშოაბა.<br />ტაგები, მათი ტიპები, რამოდენიმე მაგალითი, Heading და Paragraph<br />პირველი მარტივი ჩონჩხის აწყობა<br />DIV,Tablets, სურათები და მათი გამოყენება.<br />ფორმები, ფორმის ელემენტები, ფორმის ახალი თაგები ლისტები და მათი გამოყენება პრაქტიკულ მაგალითებში.<br />ლინკები,ლინკების ატრიბუტები და თაგების ატრიბუტები და მათი გამოყენება<br />დიზაინი, კასკადური სტილის ფერები ანუ css მისი გამოყენების არიალი<br />ფერი, ფერების ტიპები,<br />ფონტები, მათი დაგენერირება ზომის, ტიპის, ფერის, ფონტის მართვა, მარტივი საიტის აწყობა<br />ელემენტების ტიპები და პოზიციები<br />პრაქტიკული დავალება მოცემული სურატის საიტად აწყობა<br />დაშორებები და ჩარჩოები (margin, padding, border)<br />Css 3-ის ელემეტები ჩრდილები, ჩარჩები გრადიანტები<br />პრაქტიკული დავალება საიტის აწყობა და ვებ დიზაინისთვის საჭირო ფოტოშოპის გამოყენება<br />საუკეთესო პრაქტიკები და ფოტოშოპის ფაილიდან რეალური საიტის აწყობა<br />კურსის წარმატებულად გავლის შემდეგ მსმენელი შეძლებს დამოუკიდებლად ააწყოს საიტი, შეძლოს თვით განვითარება და დასაქმდეს. ლექციების პერიოდში ექნებათ ყოველდღიური დავალებები და ვიდეო მასალა.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია<br />კურსის ღირებულება:<br />ინდივიდუალურად - 300 ლარი<br />ორ-სამ კაციან ჯგუფში - 250 ლარი<br />ჯგუფში - ერთი მსმენელისთვის - 200 ლარი<br /> <br /><strong>PHP + MYSQL</strong></p>\n<p><br />Php-ის მიმოხილვა, ლოკალური სერვერის შექმნა, კოდის წერის გარემოს შექმნა<br />სინტაქტსი და ცვლადები<br />ოპერატორები<br />Error კოდის შეფასება და შეცდომის მოძიება-აღმოფღვრა<br />მასები და მათი მოდიფიკაცია<br />ციკლები<br />ფუნქციები<br />ფაილებთან მუშაობა - შექმნა, შემოტანა, გადაკეთება, დამახსორება...<br />ფორმები<br />$_POST $_GET მეთოდი<br />პრაქტიკული სამუშაო რეგისტრაციის და ავტორიზაციის შექმნა<br />ტექსტურ ობიექტებთან მუშაობა<br />სესიები და cookie<br />მონაცემთა ბაზები MYSQL<br />Inserting, Selecting და Deleting ბრძანებები<br />ბაზების განახლება პრაქტიკული მაგალითები<br />ბაზების გაერთიანება join<br />თანამედროვე ძრავის PDO მიმოხილვა<br />CMS განხილვა<br />საკუთარი CMS შექმნა<br />რეალური საიტის შექმნა რომელსაც ვმართავთ<br />დინამიური გვერდების შექმნა<br />რეალური ბაზების შექმნა საიტისთვის<br />რეგისტრაციის მქონე საიტის შექმნა, საიტისთვის საკუთარი ადმინ პანელის შექმნა, ელ-ფოსტის გამართვა<br />36 საათი, მსენელი შეძლებს ისწავლოს რეალური დინამიური საიტის შექმნას, რელაზიურ მონაცემთა ბაზებთან მუშაობას, თვითგანვითარებას და დასაქმებას.<br /> <br />ინდივიდუალურად - თვეში 12 ლექცია - 300 ლარი<br />ორ-სამ კაციან ჯგუფში - თვეში 12 ლექცია - 250 ლარი<br />ჯგუფში - თვეში 12 ლექცია - 200 ლარი</p>\n<p><strong>Java Script</strong></p>\n<p><br />რა არის პროგრამირება, რა არის ჯავასკრიპტი, შესავალი ჯავასცკრიპტში<br />შესაძლებლობები, სინტაქტსი და კომენტარის გამოყენება<br />ინფორმაცია, ცვლადები და ელემენტები და მათი ტიპები<br />ფუნქცია, მისი არსი და გამოყენება<br />ლოგიკური ოპერატორები and, or, if, else.<br />დოკუმენტ ობიექტები მათი შექმნა, დაკავშირება<br />სტრინგები , რიცხვები და მათი მეთოდები<br />მასივები,ობიექტები და მათი მეთოდები<br />ლუპები for while switch case პრაქტიკული დავალებები<br />ფუნქციების რეალური გამოყენება და პრაქტიკული მაგალითები<br />მარტივი თამაშის შექმნა<br />ჯავასკრიპტის ბიბლიოთეკები (jQuery, jQuery ui, jQuery mobile)<br />DOM-თან, ელემენტებთანდაკავშირება<br />ივენთები (დაჭერა, მაუსის მიტანა, გადატარება, ფოკუსი...)<br />Bind, live, delegate, on, change... პრაქტიკული დავალებები<br />კონტენტის შექმნა, წაშლა, შეცვლა<br />ატრიბუტების გამოყენება DATA პრაქტიკული დავალებები<br />სლაიდერები და სტრუქტურები<br />დროითი პარამეტრები<br />ანიმაციების შექმნა პრაქტიკული დავალებები<br />ანიმაციის კონტროლისთვის საუკეთესო პრაქტიკების გავლა<br />ფუნქციების შექმნა jquery ის გამოყენებით და საუკეთესო პრაქტიკები კოდის გასამარტივებლად<br />DOM თან ურთიერობა დეტალურად ელემენტების მართვა, გადაადგილება, კონტენტის გაცვლა<br />ელემენტების სტილის შეცვლა CSS ის დამატება, წაშლა, ცვლილება. პრაქტიკული დავალებები<br />მემკვიდრეობა, შვილი და მშობელი ელემენტები, საერთო კლასის ელემენტები, &lsquo;მეზობელი&rsquo; ელემენტები<br />$.each ფუნქცია და მისი გამოყენება<br />Load, Get, Post ფუნქციები მათი გამოყენება<br />Ajax აღწერა გამოყენება და პრაქტიკული მაგალითები<br />Jquery-uiმარტივი მომხმარებლის ინტერფეისის შექმნა მიმოხილვა და მაგალითების გარჩევა<br />Jquery Mobile დიზაინის, ელემენტების, სლაიდერების აწყობა სმარტფონებისთვის, მიმოხულვა და მარტივი მაგალითები<br />ამ კურსის გავლის შემდეგ სტუდენტს ეცოდინება პროგრამირების ენა ჯავასკრიპტი და მისი ბიბლიოთეკა jquery, შეძლებს აპლიკაციების აწყობას და საიტს შესძენს უკეთეს ფუნქციებს. <br /> <br />24 ლექცია - javascript, OOP javascript, jQuery<br />ინდივიდუალურად თვეში - 350 ლარი<br />ორ-სამ კაციან ჯგუფში - 250 ლარი<br />ჯგუფში - ერთი მსმენელისთვის - 200 ლარი<br /> <br />გაითვალისწინეთ! პროგრამას უძღვება გამოცდილი, პრაქტიკოსი პროგრამისტი, რომელიც მუშაობს პრესტიჟულ ვებ-სტუდიაში.<br /> <br />საუკეთესოებს ექნებათ შეთავაზება სტუდიაში მუშაობის გაგრძელების.</p>\n<p>[registration]</p>', 'web-programing', '', '', '', 'ge', 9, 0, 0),
(177, 66, 8, 1523703446, 0, 'text', 'პროგრამირება', '', '', 'proggraming', '', '', '', 'en', 11, 0, 0),
(178, 66, 8, 1523703446, 0, 'text', 'C++ პროგრამირება', '', '<p>პროგრამას უძღვებიან: პრაქტიკოსი, გამოცდილი პროგრამისტები სპეციალური მოწვევით, რომელებიც მუშაობენ საერთაშორისო ევროპულ და ამერიკულ ბაზარზე, რომლებიც არიან მრავალი პროგრამული უზრუნველყოფის (სამაგიდო და ვებ აპლიკაციების) ავტორი რომლებიც დანერგილია და წარმატებით გამოიყენება პრაქტიკაში.<br /> <br /><strong>კურსის მიზანი და ამოცანები:</strong></p>\n<p>კურსის მიზანია ხელი შეუწყოს C++ ენის ბაზაზე, დაპროგრამების ძირითადი ტექნოლოგიების გაცნობას და სისტემების დაპროგრამების ვიზუალური საშუალებების ათვისებას.<br /> <br /><strong>კურსის მოსალოდნელი შედეგები:</strong><br />კურსის დასრულების შემდეგ მსმენელს ეცოდინება:<br />ალგორითმების შედგენა და პროგრამების დაწერა C++ ენაზე;<br />დაპროგრამების ძირითადი თანამედროვე ტექნოლოგიები;<br />ვიზუალური დაპროგრამების ძირითადი საშუალებები;</p>\n<p>კურსის მოცულობა: 48 საათი<br />ლექციები ტარდება: კვირაში 2-ჯერ<br />მეცადინეობათა ინტენსივობა: კვირაში ორჯერ, თითო გაკვეთილი 2 საათი<br /> <br />კურსის პროგრამაში ჩართვის წინაპირობა და სამიზნე ჯგუფი: მსმენელები უნდა ფლობდნენ კომპიუტერული ტექნოლოგიების გამოყენების ზოგად უნარებს.<br /> <br />კურსის ღირებულება 2-3 კაციან ჯგუფში: თვეში 350 ლარი <br />ინდივიდუალურად: 450 ლარი<br /> <br /><strong>კურსის პროგრამის შინაარსი:</strong> <br />რა არის პროგრამირება, პროგრამა, მოკლე მიმოხილვა, პროგრამის სტრუქტურა , ცვლადების ტიპები. უმარტივესი პროგრამის დაწერა. შეტანა-გამოტანის ოპერატორები <br />ოპერატორები; (პირობითი ოპერატორები, ცვლადებზე მოქმედებები, ლოგიკური ოპერატორები) - ციკლები. for და while;switch ოპერატორი<br />მასივები, მასივებთან მუშაობა, მასივის დალაგება<br />ვექტორები, მრავალგზანზომილებიანი ვექტორები<br />სტრიქონები<br />შემთხვევითი სიდიდეები<br />ფუნქციები. void ფუნქციები, რეკურსიული ფუნქციები, არგუმენტიანი ფუნქციები. ფუნქციების გადატვირთვა (overload)<br />ფაილებთან მუშაობა. წაკითხვა-ჩაწერა<br />მიმთითებლები (pointer)<br />დინამიური მეხსიერება<br />გამონაკლისი სიტუაციების დამუშავება<br />მომხმარებლის მიერ განსაზღვრული ტიპები - struct, union, enum<br />კლასები, კონსტრუქტორები და დესტრუქტორები<br />ოპერატორების გადატვირთვა (overload)<br />მეგობარი ფუნქციები და კლასები<br />კლასების შთამომავლობითობა<br />აბსტრაქტული კლასები და ვირტუალური წევრები<br />შაბლონები<br />Namespace -ები<br />შეტყობინებები <br />რთული მემკვიდრეობითობა<br />კრიპტოგრაფიული ალგორითმები<br />პროექტის აგება<br />გაითვალისწინეთ! ხორციელდება კორპორატიული მომხმარებლებისთვის მსემენელთა მომზადება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით, სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე, შეიქმნება სპეციალიზირებული პროგრამა, კორპორატიული მომხმარებლისთვის გამომდინარე მსმენელთა რაოდენობიდან შესაბამისად მოხდება ფასების რეგულირება.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'proggraming', '', '', '', 'ge', 11, 0, 0),
(179, 67, 8, 1523703577, 0, 'text', 'სტატისტიკა', '', '', 'statistic', '', '', '', 'en', 12, 0, 0),
(180, 67, 8, 1523703577, 0, 'text', ' SPSS-ი და სტატისტიკა', '', '<p><strong>კურსის მიზანი</strong></p>\n<p>კურსი განკუთვნილია მსმენელთათვის, ვისაც არ გააჩნია სტატისტიკურ პაკეტთან (SPSS) მუშაობის გამოცდილება და ასევე არ გააჩნია სტატისტიკური ანალიზის უნარჩვევები. კურსი მსმენელს შეასწავლის სტატისტიკური ანალიზის ძირითად მიდგომებს და პროცედურებს რაც დაეხმარება SPSS ში დამოუკიდებლად მუშაობის დაწყებაში. პრაქტიკულ გამოცდილებასთან ერთად მსმენელი აგრეთვე მიიღებს თეორიულ ცოდნასაც მსმენელისთვის გასაგებ, ნაკლებად ტექნიკური ტერმინებით.</p>\n<p><strong>კურსის დასრულების შემდგომ მსმენელს შეეძლება:</strong></p>\n<p><br />ორელაცია, ხი კვადრატი<br />წყვილური და მრავალი ცვლადის რეგრესიული ანალიზი<br />რეგრესიული მოდელების შეფასება დაSPSS ის სამუშაო გარემოს აღწერა<br />მონაცემების შეტანა და შენახვა<br />მონაცემების იმპორტი სხვადასხვა წყაროებიდან<br />მონაცემების მომზადება აღწერითი სტატისტიკისთვის: <br />ტრანსფორმაცია<br />ცხრილის სტრუქტურის შეცვლა<br />რეკოდი, ფილტრი, სორტირება<br />საშუალო, მედიანა, მოდა, დისპერსია, საშუალო კვადრატული გადახრა, პერცენტილისა და სხვა აღწერითი სტატისტიკის დათვლა<br />დიაგრამების აგება: სვეტოვანი, წრიული, ჰისტოგრამა, შეუღლების დიაგრამა და სხვა<br />სტატისტიკური ანალიზი, ჰიპოთეზის ტესტირება: <br />სანდოობის ინტერვალისა და სტატისტიკური მნიშვნელოვნების დათვლა ე.წ. p value ს დათვლა და ინტერპრეტაცია<br />საშუალო მნიშვნელობების შედარება: t ტესტი, ANOVA<br />კორელაციური ანალიზი: პირსონის კ შედარება<br />დროითი მწკრივების ანალიზი</p>\n<p><br />გაკვეთილი 1<br />სამუშაო გარემოს მიმოხილვა<br />ცხრილის შექმნა, სხვადასხვა ტიპის ველების შექმნა<br />ველებისთვისა და მონაცემებისთვის ჭდეების შექმნა<br />მონაცემების შეტანა, შენახვა</p>\n<p>გაკვეთილი 2<br />მოაცემების რეკოდი<br />მოაცემების ტრანსფორმაცია ფორმულის გამოყენებით<br />სიხშირული ცხრილის შექმნა და სიხშირული ანალიზი</p>\n<p>გაკვეთილი 3<br />მონაცემების იმპორტი გარე წყაროდან<br />ცხრილის გაფილტვრა, სორტირება<br />მონაცემების დაჯგუფება, ცხრილის გაყოფა<br />მონაცემების ანალიზი ჭრილებში</p>\n<p>გაკვეთილი 4<br />დიაგრამების აგება და ანალიზი<br />ჰისტოგრამა<br />წრიული დიაგრამა<br />სვეტოვანი დიაგრამა</p>\n<p>გაკვეთილი 5<br />კომპლექსური დიაგრამების აგება და ანალიზი<br />დიაგრამების აღჭურვა შესაბამისი ჭდეებით: დიაგრამისა და ღერძების დასათაურება<br />დიაგრამების ექსპორტი სხვადასხვა ფორმატში</p>\n<p>გაკვეთილი 6<br />t ტესტი<br />საშუალო მნიშვნელობების შედარება რიცხვთან<br />საშუალო მნიშვნელობების შედარება ორ დამოუკიდებელ ჯგუფს შორის<br />საშუალო მნიშვნელობების შედარება წყვილურ ჯგუფებს შორის</p>\n<p>გაკვეთილი 7<br />ANOVA<br />საშუალო მნიშვნელობების შედარება მრავალ ჯგუფს შორის<br />სანდოობის ინტერვალის განსაზღვრა ცვლადისა და მისი საშუალო მნიშვნელობისთვის</p>\n<p>გაკვეთილი 8<br />კორელაციური ანალიზი<br />კორელაციური ანალიზი უწყვეტი ცვლადისთვის<br />კორელაციური ანალიზი კატეგორიული ცვლადისთვის</p>\n<p>გაკვეთილი 9<br />წრფივი წყვილური რეგრესიული ანალიზი<br />რეგრესიული კოეფიციენტების ინტერპრეტაცია<br />R კვადრატი</p>\n<p>გაკვეთილი 10<br />მრავალი ცვლადის რეგრესია<br />არაწრფივი რეგრესიული მოდელის აგება<br />სხვადასხვა რეგრესიული მოდელის შედარება<br />დროითი მწკრივების ანალიზი</p>\n<p>კურსი მოიცავს: 10 ლექციას<br />ინდივიდუალურად: 500 ლარი<br />2-3 კაციან ჯგუფში-450 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>\n<p>&nbsp;</p>', 'statistic', '', '', '', 'ge', 12, 0, 0),
(181, 68, 8, 1523703640, 0, 'text', 'გეოინფორმაციული სისტემები', '', '', 'gis', '', '', '', 'en', 13, 0, 1),
(182, 68, 8, 1523703640, 0, 'text', 'გეოინფორმაციული სისტემები', '', '', 'gis', '', '', '', 'ge', 13, 0, 1),
(183, 69, 40, 1523703784, 0, 'text', 'ბიზნეს ინგლისური', '', '', 'bussines-', '', '', '', 'en', 2, 0, 0),
(184, 69, 40, 1523703784, 0, 'text', 'ბიზნეს ინგლისური', '', '<p>ინგლისურის შემსწავლელთა რიცხვი სწრაფად იზრდება და ამის ერთ-ერთი მთავარი მიზეზი ისაა, რომ ბევრს აქვს სურვილი გააფართოვოს თავისი ბიზნესი და დაამყაროს უცხოელ ინვესტორებთან ურთიერთობა . ამ მიზნით VIP Intellect Group გთავაზობთ ბიზნეს ინგლისურის კურსს, რათა შესძლოთ ურთიერთობა დღესდღეობით არსებულ მრავალ საერთაშორისო კომპანიებთან.</p>\n<p>** New market leader - 5 დონე<br />** Elementary<br />** Pre-intermediate<br />** Intermediate<br />** Upper -intermediate<br />** Advanced</p>\n<p>სწავლის ხანგრძლივობა: 12 ლექცია თვეში &minus;კვირაში სამჯერ.<br />სწავლის საფასური: ინდივიდუალურად &minus; 300 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.</p>\n<p>სწავლის საფასური მცირერიცხოვან ჯგუფებში:</p>\n<p>Elementary - 160 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Pre-intermediate - 170 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Intermediate - 180 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Upper - intermediate - 190 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.<br />Advanced - 200 ლარი, სწავლის ხანგრძლივობა 1სთ. 30წთ.</p>\n<p>კურსის დასრულების შემდეგ თქვენ შესძლებთ ბიზნესთან დაკავშირებული მასალების წაკითხვას და პასუხის გაცემას ან ბიზნეს-პარტნიორთან ურთიერთობას, მოლაპარაკებას, შეთანხმებას; საქმიანი ბიზნეს მიმოწერის წარმოებას, ნახევრად ფორმალური მეილების (semi-formal business style) წერას. კურსის დასრულების შემდეგ გაიცემა სერტიფიკატი.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'bussines-', '', '', '', 'ge', 2, 0, 0),
(185, 70, 40, 1523703813, 0, 'text', 'სამედიცინო ინგლისური', '', '', 'medical-eng', '', '', '', 'en', 3, 0, 0),
(186, 70, 40, 1523703813, 0, 'text', 'სამედიცინო ინგლისური', '', '<p>კურსი განკუთვნილია:</p>\n<p>ექიმებისთვის, სამედიცინო სასწავლებლების სტუდენტებისთვის, ექთნებისთვის, რომელთაც გააჩნიათ intermediate (B2) დონე ინგლისურ ენაში. <br />კურსი ითვალისწინებს შემდეგი თემების შესწავლას:</p>\n<p>** ისტორიის შევსება<br />** პაციენტის მიღება-გასინჯვა<br />** გამოკვლევები<br />** დიაგნოზის დასმა<br />** მკურნალობა</p>\n<p>კურსის ხანგრძლივობა:</p>\n<p>ჯამში ჩატარდება - 8 კვირა, 16 გაკვეთილი, კვირაში 2 გაკვეთილი (1.5 საათი).</p>\n<p>8 გაკვეთილის ღირებულება:</p>\n<p>ინდივიდუალურად - 200 ლარი <br />2-3 კაციან ჯგუფებში - 150 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'medical-eng', '', '', '', 'ge', 3, 0, 0),
(187, 71, 40, 1523703813, 0, 'text', 'სამედიცინო ინგლისური', '', '', 'medical-eng', '', '', '', 'en', 4, 0, 1),
(188, 71, 40, 1523703813, 0, 'text', 'სამედიცინო ინგლისური', '', '', 'medical-eng', '', '', '', 'ge', 4, 0, 1),
(189, 72, 7, 1523783955, 0, 'text', 'ბიზნესის ადმინისტრირება', '', '', 'bussines', '', '', '', 'en', 6, 0, 0),
(190, 72, 7, 1523783955, 0, 'text', 'ბიზნესის ადმინისტრირება', '', '', 'bussines', '', '', '', 'ge', 6, 0, 0),
(191, 73, 72, 1523784072, 0, 'text', 'ეფექტური მენეჯმენტის ტექნიკები', '', '', 'management', '', '', '', 'en', 1, 0, 0),
(192, 73, 72, 1523784072, 0, 'text', 'ეფექტური მენეჯმენტის ტექნიკები', '', '<p>პროგრამის დასახელება: \"ეფექტური მართვის ტექნიკები\" თანამედროვე მენეჯერებისთვის!</p>\n<p>ვისთვის არის აღნიშნული პროგრამა? მოქმედი და დამწყები მენეჯერებისთვის, ვისაც სურს თანამედროვე მართვის ტექნიკები გაიზიაროს და ეფექტური გახადოს მართვის მეთოდები.</p>\n<p>კურსის შედეგი:</p>\n<p>** ტრენინგის მონაწილეები ისწავლიან, თუ როგორ მიაღწიონ დასახულ მიზანს და შეინარჩუნოს გუნდის კეთილგანწყობა.<br />** პროგრამა დაფუძნებულია სწავლების ინტერაქტიულ პრინციპზე: ცოდნის შეძენა (სემინარი, მცირე ლექცია), უნარების განვითარება (სავარჯიშოები, თამაშები) და ცვლილება დამოკიდებულებებში (განხილვები, დისკუსია, დებატები).</p>\n<p>ტრეინინგის თემატიკა:</p>\n<p>** ფასეულობების განსაზღვრა - 2 საათი<br />** გუნდის მართვა - 10 საათი<br />** ბიზნეს კომუნიკაცია - 8 საათი<br />** დროის მართვა - 2 საათი<br />** ორგანიზაციული კულტურა და ერთგულება - 2 სთ</p>\n<p>ფასეულობათა განსაზღვრა:</p>\n<p>** რა არის მენეჯმენტი და რა ფასეულობებს ქმნიან მენეჯერები?<br />** დავჩექინდეთ, სად ვართ ამჟამად?<br />** ლიდერი VS მენეჯერი<br />** ქეისების განხილვა<br />** შეჯამება: ახალი რა გავიგე, რასაც პრაქტიკაში გამოვიყენებ?</p>\n<p>გუნდის მართვა:</p>\n<p>** რა გვჭირდება გუნდის სწორად მართვისათვის?<br />** რა ძირითად ფაქტორებზეა დამოკიდებული პერსონალის კმაყოფილება/უკმაყოფილება<br />** სავარჯიშო - \"მოიპოვე მარკერი\"<br />** ფსიქოლოგიური ფაქტორები მართვის პროცესში: სუბიექტური აღქმა და რეალობა.<br />** პრაქტიკული სავარჯიშოები და ქეისების განხილვა.<br />** ორგანიზაციული კონფლიქტები და მისი მართვის გზები<br />** ერიკ ბერნის ტრანზაქციული ანალიზი და პრაქტიკული სავარჯიშო<br />** ქცევითი სტრატეგიები და კილმანის ტესტი.<br />** მოტივაცია: შინაარსობრივი და პროცესუალური თეორიები.<br />** მოტივაციის სავარჯიშო: \"3 ქეისი\"<br />** აქტივობა: გუნდების მიერ სამოტივაციო პოლიტიკის ჩამოყალიბება<br />** შესრულებული სამუშაოს შეფასება/ მეთოდები<br />** ფუნქციების დელეგირება: job description-ის წერა<br />** კადრების შესარჩევად სწორი გასაუბრების პროცესის წარმართვა<br />** გასაუბრება: მოდელირებული სიტუაციები<br />** ბიზნეს პროცესების კვარტალური დაგეგმარება - მენეჯმენტი მიზნების მიხედვით<br />** შეჯამება: ახალი რა გავიგე, რასაც პრაქტიკაში გამოვიყენებ?</p>\n<p>ბიზნეს კომუნიკაცია:</p>\n<p>** ეფექტური კომუნიკაციის ტიპები<br />** ბიზნეს მოლაპარაკების ტექნიკები<br />** სავარჯიშო: \" ფორთოხალი\"<br />** ეფექტური უკუკავშირის განხორციელება თანამშრომლებთან;<br />** როგორ ვისწავლოთ თანამშრომლების მოსმენა?<br />** ინტელექტის ორი მიმართულება: IQ და EQ (ზოგადი და ემოციური ინტელექტი)<br />** სხეულის ენა;</p>\n<p>დროის მართვა:</p>\n<p>** დროის მხარჯველების განსაზღვრა;<br />** პრიორიტეტების განსაზღვრა - საიდან დავიწყოთ?<br />** დროის მართვის ეფექტური მოდელი</p>\n<p>ტრეინინგის შეჯამება:</p>\n<p>** რატომ ვარ უკეთესი ლიდერი?<br />** რატომ შემიძლია გუნდის უკეთესად მართვა?<br />** რატომ შემიძლია უკეთესი ბიზნეს კომუნიკაციის წარმოება?</p>\n<p>სრული პროგრამის ხანგრძლივობა: 24 საათი<br />კურსის ღირებულება: 400 ლარი</p>\n<p>ტრენერი: 9 წლიანი პრაქტიკული მენეჯერული გამოცდილება, ბიზნეს და არასამთავრობო სექტორში. 5 წელია წარმატებით ისწავლება მისი საავტორო პროგრამა მოქმედი და მომავალი მენეჯერებისთვის სხვადასხვა ორგანიზაციაში.</p>\n<p>[registration]</p>', 'management', '', '', '', 'ge', 1, 0, 0),
(193, 74, 72, 1523784118, 0, 'text', 'ფინანსური მენეჯმენტი', '', '', 'finansial-management', '', '', '', 'en', 2, 0, 0);
INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(194, 74, 72, 1523784118, 0, 'text', 'ფინანსური მენეჯმენტი', '', '<p>პროგრამა განკუთვნილია: ბიზნესის ფინანსური მართვის საკითხებით დაინტერესებული პირებისთვის, მოქმედი მენეჯერებისთვის, ბუღალტრებისთის, მთავარი ბუღალტრებისთვის და დამწყები და მოქმედი ფინანსისტებისთვის, ეკონომისტებისთვის.</p>\n<p>აგრეთვე გაგიწევთ კონსუტაციებს როგორც ფიზიკურ პირებს ასევე კომპანიის წარმომადგენლებს ნებისმიერ ფინანსური პრობლემის მოსაგვარებლად, როგორც ერთჯერადად ასევე პერიოდულად.</p>\n<p>კურსი მოიცავს:</p>\n<p>1. ფინანსური მენეჯმენტის ფუნქციები<br />2. კომპანიის ფინანსური ანგარიშგების მომზადება:</p>\n<p>** საბალანსო ანგარიშგება<br />** მოგება ზარალის ანგარიშგება<br />** კაპიტალის მოძრაობის ანგარიშგება<br />** ფინანსური ანგარიშგების შენიშვნები</p>\n<p>3. კონსოლიდირებული ფინანსური ანგარიშგებები მომზადება:</p>\n<p>** ჯგუფი და კონსოლიდაცია<br />** შვილობილი კომპანიები</p>\n<p>4. ფულადი სახსრების მოძრაობის ანგარიშგება<br />5. ბიუჯეტირება<br />6. ხარჯთაღრიცხვა (Standard Costing)<br />7. საერთაშორისო ფინანსური რეპორტინგის სტანდარტები</p>\n<p>ძირითადი საშუალებები:</p>\n<p>** არამატერიალური აქტივები<br />** ფინანსური რეპორტინგი<br />** ინვენტარი<br />** და ა.შ.</p>\n<p>8. ინვესტირების გადაწყვეტილება<br />9. ბიზნესის შეფასება (ღირებულების გაანგარიშება)<br />10. ფინანსური რისკები და კონტროლები.</p>\n<p>გაითვალისწინეთ: ლექციების მსვლელობისას განსაკუთრებული ყურადღება დაეთმობა პრაქტიკული მაგალითების და სიტუაციური ამოცანების განხილვას, როგორც მსოფლიო, ასევე ქართული კომპანიების დამახასიათებელ მნიშვნელოვან ნიუანსებს. მსმენელებს გადაეცემათ სასწავლო მასალები და პრაქტიკული სავარჯიშოები, გაიმართება დისკუსიები, თავად მსმენელებისთვის საინტერესო და პრობლემური სიტუაციური მაგალითების განხილვა და მისი თავიდან აცილების კვალიფიციური და სწორი მიდგომები.</p>\n<p>კურსდამთავრებულის უპირატესობანი: დამოუკიდებლად შეძლებენ ფინანსური მენეჯერის პოზიციაზე მუშაობას. ჩვენი კურსდამთავრებულები არიან საქართველოში არსებული წამყვანი კომპანიის მთავარი ბუღალტრები და ფინანსისტები, მენეჯერები, ბიზნესმენები.</p>\n<p>პროგრამის ხანგრძლივობა: 12 ლექცია.<br />პროგრამის საფასური: 500 ლარი - 4 კაცი და მეტი ჯგუფში.<br />ორი ან მეტი მსმსნელის ერთი ორგანიზაციიდან დაინტერესების შემთხვევაში გადაიხდით 450 ლარს ნაცვლად 500 ლარის.</p>\n<p>პროგრამას უძღვება მაღალკვალიფიციური პრაქტიკოსი ფინანსისტი: \"NexiaTA\" საერთაშორისო აუდიტორული კომპანიის ბუღალტრული აღრიცხვის და რეპორტინგის მენეჯერი.</p>\n<p>ჩვენს მიერ მომზადებულები არიან, როგორც ადგილობრივი, ასევე საერთაშორისო კომპანიის ბუღალტრები და ფინანსისტები, კომპანიის ხელმძღვანელები, მათ შორისაა: შპს \"ემბავუდ ჯორჯია\", შპს \"ფურშეტ ჯორჯია\", შპს \" გერმანიის საერთაშორისო თანამშრომლობის საზოგადოება\" და სხვა კომპანიების წარმომადგენლები.</p>\n<p>კორპორატიული ტრენინგის ჩატარების შემთხვევაში, ვითვალისწინებთ უშუალოდ თქვენს მოთხოვნებს და მხოლოდ თქვენი კადრებისთვის ჩატარდება სასწავლო კურსი!</p>\n<p>[registration]</p>', 'finansial-management', '', '', '', 'ge', 2, 0, 0),
(195, 75, 72, 1523784176, 0, 'text', 'HR ადამიანური რესურსების მართვის ტექნიკები ', '', '', 'hr', '', '', '', 'en', 3, 0, 0),
(196, 75, 72, 1523784176, 0, 'text', 'HR ადამიანური რესურსების მართვის ტექნიკები ', '', '<p>ტრენინგის მიზანი:</p>\n<p>** მმართველობითი საქმიანობების დაგეგმარების პრინციპების გაცნობა<br />** სამუშაოს შესრულების მართვის გაუმჯობესება, მოტივაციის სისტემების გამოყენების გზით<br />** შესრულებული სამუშაოს სისტემური შეფასება, ორგანიზაციულ მიზნებთან მიმართებაში<br />** კომპეტენციების მოდელების ფორმირება, კარიერული რუქების შესაქმნელად<br />** ხელმძღვანელობასა და დაქვემდებარებულ თანამშრომლებს შორის ეფექტური კავშირის უზრუნველყოფა;<br />** ეფექტური მენეჯმენტისა და თვითმენეჯმენტის უნარ-ჩვევების განვითარება;<br />** პერსონალის მოტივირების, მიზნისკენ მიმართვის, ეფექტური მართვის, ლიდერობის უნარების განვითარება.</p>\n<p>ტრენინგი განკუთვნილია:</p>\n<p>ადამიანური რესურსების მართვის საკითხებში პროფესიული ცოდნის მიღების მსურველებისთვის; შერჩევის, განვითარების და სხვ.მენეჯერებისთვის;</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>\n<p>[registration]</p>', 'hr', '', '', '', 'ge', 3, 0, 0),
(197, 76, 72, 1523784235, 0, 'text', 'მარკეტინგისი მენეჯმენტის ექსპრეს კურსი', '', '', 'marketing', '', '', '', 'en', 4, 0, 0),
(198, 76, 72, 1523784235, 0, 'text', 'მარკეტინგისი მენეჯმენტის ექსპრეს კურსი', '', '<p>[registration]</p>', 'marketing', '', '', '', 'ge', 4, 0, 0),
(199, 77, 72, 1523784285, 0, 'text', 'პრაქტიკული ლოგისტიკა', '', '', 'logistic-management', '', '', '', 'en', 5, 0, 0),
(200, 77, 72, 1523784285, 0, 'text', 'პრაქტიკული ლოგისტიკა', '', '<p>კურსი მსმენელს საშუალებას აძლევს მიიღოს და გაიღრმავოს ცოდნა ლოგისტიკის მიმართულებით, რათა წარმატებით შეძლონ აღნიშნულ სფეროში მოღვაწეობა. კურსის თეორიული და პრაქტიკული ნაწილი მსმენელს აძლევს საშუალებას კრეატიულად და ინოვაციურად მიუდგეს სხვადასხვა ლოგისტიკურ პრობლემებს და მონახოს მათი ეფექტურად გადაჭრის გზები.</p>\n<p>ჩვენს მიერ მომზადებულები არიან სხვადასხვა წამყვანი კომპანიის ლოგისტიკის განყოფილების კადრები, მათ შორისაა: სოკარ ჯორჯია, შავი ზღვის ტერმინალი, ივერმედი, ვესტინვესტი, ნიკორა ტრეიდი, თეგეტა მოტორსი, კავკასუს ონლაინი, დიო, ინსტა, ფარმაცევტული კომპანიები და სხვადასხვა სატრანსპორტო, გადამზიდავი კომპანიები და მრავალი სხვა.</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული ტრეინინგების ჩატარება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით. სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე შეიქმნება სპეციალიზირებული პროგრამა.</p>\n<p>კურსდამთავრებული უპირატესობანი:</p>\n<p>** Sales Forecasting-გაყიდვების პროგნოზირება<br />** Supply Chain-მოთხოვნა-მოწოდების ჯაჭვი<br />** Expedition-ტრანსპორტირების მართვა<br />** Warehouse Management -საწყობის მართვა<br />** Fleet Management - ავტოპარკი (ტრანსპორტირების მენეჯმენტი)<br />** Delivery- მიწოდება</p>\n<p>კურსის შინაარსი:</p>\n<p>კურსი მოიცავს ლოგისტიკის კომპანიებში ლოგისტიკის მნიშვნელობის დადგენას, ფუნქციონალურ და სტრუქტურულ ანალიზს, პასუხისმგებლობის დაზუსტებას და კომპეტენციების სრულყოფილ გადანაწილებას.</p>\n<p>პროგრამა მოიცავს:</p>\n<p>** ლოგისტიკური პროცესების პრაქტიკული და თეორიული მორგება კონკრეტულ მოცემულობაში.<br />** შესყიდვების ოპტიმალური დაგეგმვა, გაყიდვების სწორი პროგნოზების საფუძველზე ბაზარზე ცვალებადი პირობების გათვალისწინებით. <br />** უსაფრთხოების, გაყინული და საბრუნავი რაოდენობების (ნაშთების დადგენა) საწყობში ოპტიმალური ნაშთების უზრუნველყოფა (overstock-ების და outofstock-ების) გამორიცხვა, მინიმალური ნაშთების უზრუნველყოფა, საწყობის მოცემული სიმძლავრეების გათვალისწინებით.<br />** პროდუქტების პრიორიტეტების განსაზღვრა (ABC-ანალიზის საფუძველზე), პროგნოზირების მეთოდების შესწავლა და შესაბამისად სწორად მორგება (XYZ-ანალიზის საფუძველზე) სასაწყობო მეურნეობის მეთოდების გაცნობა და კონკრეტულ კომპანიაზე მორგება, პასუხისმგებლობების და კონტროლის მექანიზმებს განსაზღვრა და ამუშავება.<br />** საწყობიდან უშუალო კლიენტამდე საქონლის მიწოდება, მარშუტების ოპტიმალური განსაზღვრა, ობიექტების კატეგორიზაცია.<br />** ERP სისტემებში გამართული მუშაობისთვის კონკრეტული კომპანიებისთვის საჭირო მოთხოვნების ჩამოყალიბება სისტემებში გამართულად მუშაობისათვის. კონკრეტული (case-ების) გაკეთება, გაანალიზება და სიმულაციების განხორციელება.<br />** მოსალოდნელი პრობლემების წინასწარ დადგენა და დროულად გადაჭრა.<br />** ლოგისტიკის მუშაობის ეფექტურობის განსაზღვრა</p>\n<p>კურსდამთავრებული შეძლებს:</p>\n<p>ლოგისტიკის კურსის გავლის შემდეგ სპეციალისტი შეძლებს მართოს პროცესები: შესყიდვებს, დისტრიბუციას, საწყობის/მარაგების მართვას, ტრანსპორტირებას, მიწოდების ჯაჭვის მოწყობა/შეფასებას, ხარჯების მინიმიზაციას და სხვა. ლოგისტიკის სპეციალისტებს შეუძლიათ წარმატებით იმუშაონ, როგორც სახელმწიფო და სამხედრო სტრუქტურებში, ასევე საბანკო, საწარმო, სადისტრიბუციო, სატრანსპორტო და სხვა ტიპის კერძო კომპანიებში.</p>\n<p>კურსი მოიცავს: 16 საათს<br />სწავლის ღირებულება: ჯგუფში ერთი მონაწილისთვის - 350 ლარი</p>\n<p>ჩვენს მიერ მომზადებულები არიან სხვადასხვა წამყვანი კომპანიის ლოგისტიკის განყოფილების კადრები!</p>\n<p>ლექციებს უძღვება პროფესიონალი ტრენერი, სპეციალური მოწვევით!</p>\n<p>გაითვალისწინეთ! ხორციელდება კორპორატიული ტრეინინგების ჩატარება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით. სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე შეიქმნება სპეციალიზირებული პროგრამა.</p>\n<p>საკონსულტაციო მომსახურება:<br />ასევე, თუ სამუშაო პროცესში შეგექმნებათ რაიმე ტიპის ლოგისტიკური პრობლემა ჩვენი სპეციალისტები გაგიწევენ საკონსულტაციო მომსახურებას.</p>\n<p>[registration]</p>', 'logistic-management', '', '', '', 'ge', 5, 0, 0),
(201, 78, 9, 1523784420, 0, 'text', 'ბუღალტრეული აღრიცხვა დამწყებთათვის', '', '', 'accounting-course', '', '', '', 'en', 1, 0, 0),
(202, 78, 9, 1523784420, 0, 'text', 'ბუღალტრეული აღრიცხვა დამწყებთათვის', '', '<p>მიზნობრივი ჯგუფები: კომბინირებული ჯგუფები, როგორც დამწყები და მოქმედი ბუღალტრებისთვის, ასევე ნებისმიერი პროფესიის და განათლების მქონე პირთათვის.</p>\n<p>კურსის აღწერა: პროგრამა შექმნილია კვალიფიციური გამოცდილი ბუღალტრებისა და აუდიტების ჯგუფის მიერ და ითვალისწინებს ფინანასური აღრიცხვის, საგადასახადო კოდექსის და საბუღალტრო კომპიუტერული პროგრამების კომპლექსურ შესწავლას, რის საფუძველზეც შეძლებთ კომლექსური ამოცანების გადაჭრას, რაც გულისხმობს, როგორც ფინანასური უწყისების, ასევე საგადასახადო დეკლარაციების მომზადებას და წარდგენას, რთულ ფინანასურ სიტუაციებში რჩევების მიცემას და საგადასახადო კანონების მორგებას და ლავირებას კომპანიის სასიკეთოთ.</p>\n<p>სწავლების მეთოდი: ლექციები, ინტერაქტივი, დისკუსია, პრაქტიკული ქეისები და სამუშაოები, თემატური გამოკითხვა, შეფასების ტესტები, მათი განხილვა და ანალიზი, კურსის განმავლობაში ჩატარდება შუალედური, ხოლო დასრულებისას სასერთიფიკატო გამოცდა.</p>\n<p>შედეგი: პროგრამის სრულყოფილად დაუფლების შემდეგ თქვენ შეძლებთ დამოუკიდებლად აწარმოოთ ნებისმიერი ორგანიზაციული ფორმის საბუღალტრო საქმე და სრულყოფილად წარმართოთ საგადასახადო აღრიცხვიანობა, მოახდინოთ ანგარიშების ნაშთების კონტროლი და ყოველთვიური და ყოველწლიური დეკლარაციების დამოუკიდებლად მომზადება.</p>\n<p>კურსს უძღვებიან - გამოცდილი პროფესიონალი სერტიფიცირებული, პრაქტიკოსი მთავარი ბუღალტრები.<br />მსმენელებს უფასოდ გადაეცემათ სასწავლო ლიტერატურა, სხვადასხვა ქეისების მაგალითების დოკუმენტაციები.<br />კურსის დასრულების შემდეგ ჩატარდება ტესტირება და გაიცემა შესაბამისი ორენოვანი სერთიფიკატი.</p>\n<p>კურსის ხანგრძლივობა - 24 ლექცია<br />ლექციის ხანგრძლივობა - 1.30</p>\n<p>დილის და დღის საათებში კურსის ღირებულება ჯგუფში - 280 ლარი<br />საღამოს ჯგუფებში კურსის ღირებულება - ჯგუფში - 300 ლარი</p>\n<p>კურსის ღირებულება ორ კაციან ჯგუფში: 500 ლარი<br />ლექციის ხანგრძლივობა - 20 საათი</p>\n<p>მეცადინეობა ჩატარდება - დილის, დღის და საღამოს ჯგუფებში</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'accounting-course', '', '', '', 'ge', 1, 0, 0),
(203, 79, 46, 1523784530, 0, 'text', 'საკომუნიკაციო რუსული', '', '', 'russen', '', '', '', 'en', 1, 0, 0),
(204, 79, 46, 1523784530, 0, 'text', 'საკომუნიკაციო რუსული', '', '<p><strong>Элементарный уровень</strong><br />ელემენტარული დონე განკუთვნილია იმ მსმენელთათვის, ვინც იწყებს ენის შესწავლას თავიდან.ამ ეტაპის გადალახვის შემდეგმათ შეეძლებათ ურთიერთობა ენის მატარებლებთან ელემენტარულ-უბრალო საბაზისო სიტყვების გამოყენებით, საკომუნიკაციო სიტუაციაში. ელემენტარული კურსის გავლის შემდეგ მსმენელს შეუძლია დაეუფლოს საბაზო დონეს.<br /> <br />სახელმძღვანელოები: Станислав Чернышов, Поехали (начальный курс); Дорога в Россию. Учебник русского языка. - В. Е. Антонова, М. М. Нахабина, А. А. Толстых ; Видео-аудио записи<br /> <br />ელემენტარული დონე მოიცავს ერთვიან კურს (80-100 საათი)<br /> <br />სწავლობენ: Имя существительное: Род, число, падежные формы; Глагол: время; Личные местоимения. 400-480 слов<br /> <br />ლექციის რაოდენობა თვეში: კვირაში 2 ჯერ -1სთ. 30 წთ.<br />ღირებულება თვეში: 70 ლარი ჯგუფში 3-4 მოსწავლე.<br />ღირებულება თვეში: 90 ლარი ჯგუფში 2 მოსწავლე.<br />ინდივიდუალურად: 140 ლარი<br /> <br /><strong>Базовый уровень</strong><br />ამ დონეზე კომუნიკაცია დაკავშირებულია საყოფაცხოვრებო, სოციალურ , კულტურულ და სასწავლო სფეროსთან.<br />საბაზო კურსი გულისხმობს საკმარის და საჭირო დონეს რუსული ენის სწავლის გასაგრძელებლად.<br /> <br />სახელმძღვანელოები: Станислав Чернышов, Поехали (II курс); Станислав Чернышов, Алла Чернышова, Поехали (базовый курс); Дорога в Россию. Учебник русского языка. - В. Е. Антонова, М. М. Нахабина, А. А. Толстых - (Базовый уровень )Видео-аудио записи.<br /> <br />საბაზო დონე მოიცავს ორთვიან კურს ( იმ შემთხვევაში თუ, ელემნტარული კურსი შესწავლილია) 160-180 საათი<br />ისწავლება: Все части речи. 1500 слов.<br /> <br />ლექციის რაოდენობა თვეში: კვირაში 2 ჯერ -1სთ. 30 წთ.<br />ღირებულება თვეში: 70 ლარი ჯგუფში 3-4 მოსწავლე.<br />ღირებულება თვეში: 90 ლარი ჯგუფში 2 მოსწავლე.<br />ინდივიდუალურად: 140 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'russen', '', '', '', 'ge', 1, 0, 0),
(205, 80, 46, 1523784641, 0, 'text', 'ბიზნეს რუსული', '', '', 'bussines-russian', '', '', '', 'en', 2, 0, 0),
(206, 80, 46, 1523784641, 0, 'text', 'ბიზნეს რუსული', '', '<p>ბიზნეს რუსულის შესწავლა მოიცავს:</p>\n<p>გრამატიკას, ბიზნეს ლექსიკას, ბიზნეს თემების დამუშავებას, დისკუსიას თემების ირგვლივ, სტატიების გარჩევას,ვიდეო ჩანაწერების გამოყენებას.<br /> <br />ამ კურსის გავლის შემდეგ მსმენელს შეეძლება საქმიანი წერილების მომზადება, სატელეფონო ურთიერთობები ბიზნეს პარტნიორებთან და წარმატებით მოღვაწეობა.<br />ბიზნეს რუსული მოიცავას ორთვიან კურს.<br /> <br />ლექციის რაოდენობა თვეში: კვირაში 2 ჯერ -1სთ. 30 წთ.<br />ღირებულება თვეში: 120 ლარი ჯგუფში 2-4 მოსწავლე.<br />ინდივიდუალურად: 160 ლარი<br /> <br /><br /></p>\n<p>[registration]</p>', 'bussines-russian', '', '', '', 'ge', 2, 0, 0),
(207, 81, 46, 1523784680, 0, 'text', 'რუსული ენა უცხოელებისთვის', '', '', 'ruusian-for-eng', '', '', '', 'en', 3, 0, 0),
(208, 81, 46, 1523784680, 0, 'text', 'რუსული ენა უცხოელებისთვის', '', '<p>რუსული ენა ვასწავლოთ ინგლსურ ენოვან დაინტერესებულ პირებს!</p>\n<p><br />ლექციის რაოდენობა თვეში: კვირაში 2 ჯერ -1სთ. 30 წთ.<br />ღირებულება თვეში: 150 ლარი ჯგუფში 2-4 მოსწავლე.<br />ინდივიდუალურად: 180 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'ruusian-for-eng', '', '', '', 'ge', 3, 0, 0),
(211, 83, 4, 1523785209, 0, 'text', 'თამუნა თევზაძე', '', '', 'tamuna-tevzadze', '', '', '', 'en', 1, 0, 1),
(212, 83, 4, 1523785209, 0, 'text', 'თამუნა თევზაძე', '', '', 'tamuna-tevzadze', '', '', '', 'ge', 1, 0, 1),
(217, 86, 8, 1523793620, 0, 'text', '2D  გრაფიკა და დიზაინი', '', '<p><br />ყველა ტრენინგი ამ ორგანიზაციის ყველა განცხადება ამოსაბეჭდი ვერსია ბმულის გადაგზავნა გადაიტანე Facebook-ზე<br />დასახელება: Photoshop, CorelDraw, Illustrator, In Design, 3Ds Max -ის კურსები<br />მომწოდებელი: VIP Intellect Group<br />გამოქვეყნდა: 15 მარ / განახლდა: 17 მარ / ბოლო ვადა: 15 აპრ<br />\"VIP Intellect Group\" აცხადებს მსურველთა მიღებას კომპიუტერის 2D-3D გრაფიკული პროგრამების: Adobe Photoshop; CorelDRAW; Adobe Illustrator; In Design; Autodesk 3Ds Max -ის პროფესიონალურ შემსწავლელ კურსებზე!</p>\n<p>როგორც ინდივიდალურად და ორ-სამ კაციან ჯგუფში (ასევე მოქმედებს მცირერიცხოვანი ჯგუფები).</p>\n<p>Adobe Photoshop - სასწავლო კურსი</p>\n<p>** Photoshop - ში მუშაობის პრინციპები<br />** ინტერფეისის მართვა<br />** რასტრული რედაქტორის არსი<br />** ფოტოსთან მუშაობა<br />** სურათის დამუშავება<br />** ტიპოგრაფია-ტექსტთან მუშაობა<br />** სხვადასხვა ეფექტების გამოყენება<br />** ფენებთან მუშაობის პრინციპი<br />** ნიღბებთან მუშაობა და მათი გამოყენება სწორად<br />** ფილტრების დანიშნულება<br />** ინსტრუმენტთა პანელის დეტალური განხილვა და ყველა ინსტრუმენტის გამოყენება პრაქტიკაში<br />** მონიშვნებთან მუშაობა<br />** ფერთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** გამოსახულების რეტუშირება<br />** შავ-თეთრი სურათის გაფერადება<br />** 3D ობიექტებთან მუშაობა და მათი გამოყენება 2D გამოსახულებაში<br />** ნამუშევრის შენახვა საჭირო ფორმატში<br />** ნამუშევრის მომზადება დასაბეჭდად</p>\n<p>აღნიშნული კურსის გავლის: შემდეგ მსმენელს შეეძლება პროგრამასთან იმუშაოს უმაღლეს დონეზე, შეასრულოს ნებისმიერი სირთულის სამუშაო. შეეძლება დასაქმდეს სტამბებში, სარეკლამო კომპანიებში და სხვა კომპანიებში დიზაინერად.</p>\n<p>პრაქტიკული გაკვეთილების გარდა შეისწავლება თეორიული ნაწილი სადაც ახსნილი იქნება თუ როგორ ხდება ფერთან სწორი მუშაობა, რა არის პოლიგრაფია, რა სტანდარტები არსებობს პოლიგრაფიული ნაწარმის შექმნისას.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p>CorelDraw:</p>\n<p>** პროგრამის ზოგადი დახასიათება<br />** პროგრამის ინტერფეისის განხილვა<br />** მისალმების ფანჯარა<br />** ძირითად ინსტრუმენტთა პანელი<br />** დოკუმენტებთან მუშაობა<br />** გვერდებთან მუშაობა<br />** ვექტორებთან მუშაობა<br />** ვექტორების რედაქტირება<br />** ვექტორული გამოსახულებების შექმნა<br />** ობიექტების განხილვა და მათი რედაქტირება<br />** ლეიერებთან მუშაობა<br />** ტექსტთან მუშაობა<br />** ეფექტებთან მუშაობა<br />** რასტრულ გამოსახულებასთან მუშაობა<br />** რასტრული გამოსახულების გავექტორება<br />** ფერებთან მუშაობა<br />** პრაქტიკული სავარჯიშოების შესრულება</p>\n<p>კურსის გავლის შემდეგ: მსმენელი დამოუკიდებლად შეძლებს ვექტორებთან მუშაობას, სარეკლამო პროდუქტის შექმნას: სავიზიტო ბარათების, ბროშურების, ლოგოების, ფლაერების, პოსტერების და სხვა.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p>Adobe Illustrator CS6 - სასწავლო კურსი:</p>\n<p>** პროგრამის ინტერფეისი<br />** დოკუმენტის შექმნა/გახსნა<br />** ინსტრუმენტთა პანელის დეტალური განხილვა<br />** შეიპებთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** ხატვა<br />** ობიექტებთან მუშაობა<br />** Pathfinder-ობიექტებზე მანიპულაცია<br />** ობიექტების დამუშავება<br />** Type tool-ტექსტთან მუშაობა<br />** ვექტორული გამოსახულების მნიშვნელობა<br />** ეფექტებთან მუშაობა<br />** ფილტრებთან მუშაობა<br />** გრადიენტები<br />** დიაგრამები და გრაფიკები<br />** სამ განზომილებიან სივრცეში მუშაობა<br />** 3D ობიექტებთან მუშაობა<br />** სიმბოლოებთან მუშაობა<br />** დოკუმენტის დასაბეჭდად მომზადება</p>\n<p>კურსის გავლის შემდეგ მსმენელი დამოუკიდებლად შეძლებს პროგრამაში მუშაობას და პოლიგრაფიული მასალის შექმნას: ლოგოების, ბროშურების, სავიზიტო ბარათების, ბუკლეტების, ფლაერების, ბანერების და სხვა პოლიგრაფიის. შეგეძლებათ შექმნათ მაღალი ხარისხის ვექტორული ნაწარმი.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p>Adobe InDesign CC - სასწავლო კურსი:</p>\n<p>** პროგრამის ინტერფეისის გაცნობა და მისი მოწყობა; ახალი დოკუმენტის შექმნა<br />** ნავიგაცია; პანელებთან და პალიტრებთან მუშაობა<br />** ინსტრუმენტთა პანელი; ცხელი ღილაკები; მენიუთა განხილვა; ეფექტური მუშაობა პანელებთან<br />** მინდვრები და სვეტები; გვერდის ზომა, მიმმართველები; ბიბლიოთეკა და სნიპეტები<br />** გვერდების მართვა; გვერდების ნუმერაცია; მასტერ გვერდი; შაბლონები<br />** ტექსტთან მუშაობა; მარკირებული სიის შექმნა; ნუმერაციული ტექსტის შექმნა; გამოსახულებასთან მუშაობა<br />** სურათის იმპორტი; გამოსახულების რედაქტირება; ლეიერებთან მუშაობა; ობიექტებთან მუშაობა<br />** ეფექტებთან მუშაობა; ტრანსფორმაციის სახეობები; სტილებთან მუშაობა; ტექსტური სტილები<br />** აბზაცის სტილები; ობიექტის სტილები; სტილების იმპორტი; ფერთან მუშაობა<br />** სვოჩების პალიტრა; გრადაციები; ხელსაწყო ქულერი; ცხრილების შექმნა<br />** ცხრილების სტილები; დოკუმენტის დასაბეჭდად მომზადება<br />** PDF დოკუმენტის შექმნა; Package ის შექმნა; ინტერაქტიული დოკუმენტის შექმნა</p>\n<p>კურსის გავლის შემდეგ თქვენ გეცოდინებათ პროგრამა მაღალ დონეზე და გექნებათ შესაძლებლობა იმუშაოთ წიგნების, ჟურნალების და გაზეთების დაკაბადონებაზე. შეგეძლებათ შექმნათ პოლიგრაფიული ნაწარმი, როგორიცაა: სავიზიტო ბარათები, ფლაერები, კალენდრები, ბროშურები, პოსტერები და ა.შ.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p>&nbsp;</p>', '2D-grafic', '', '', '', 'en', 10, 0, 1),
(218, 86, 8, 1523793620, 0, 'text', '2D  გრაფიკა და დიზაინი', '', '<p><br />ყველა ტრენინგი ამ ორგანიზაციის ყველა განცხადება ამოსაბეჭდი ვერსია ბმულის გადაგზავნა გადაიტანე Facebook-ზე<br />დასახელება: Photoshop, CorelDraw, Illustrator, In Design, 3Ds Max -ის კურსები<br />მომწოდებელი: VIP Intellect Group<br />გამოქვეყნდა: 15 მარ / განახლდა: 17 მარ / ბოლო ვადა: 15 აპრ<br />\"VIP Intellect Group\" აცხადებს მსურველთა მიღებას კომპიუტერის 2D-3D გრაფიკული პროგრამების: Adobe Photoshop; CorelDRAW; Adobe Illustrator; In Design; Autodesk 3Ds Max -ის პროფესიონალურ შემსწავლელ კურსებზე!</p>\n<p>როგორც ინდივიდალურად და ორ-სამ კაციან ჯგუფში (ასევე მოქმედებს მცირერიცხოვანი ჯგუფები).</p>\n<p>Adobe Photoshop - სასწავლო კურსი</p>\n<p>** Photoshop - ში მუშაობის პრინციპები<br />** ინტერფეისის მართვა<br />** რასტრული რედაქტორის არსი<br />** ფოტოსთან მუშაობა<br />** სურათის დამუშავება<br />** ტიპოგრაფია-ტექსტთან მუშაობა<br />** სხვადასხვა ეფექტების გამოყენება<br />** ფენებთან მუშაობის პრინციპი<br />** ნიღბებთან მუშაობა და მათი გამოყენება სწორად<br />** ფილტრების დანიშნულება<br />** ინსტრუმენტთა პანელის დეტალური განხილვა და ყველა ინსტრუმენტის გამოყენება პრაქტიკაში<br />** მონიშვნებთან მუშაობა<br />** ფერთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** გამოსახულების რეტუშირება<br />** შავ-თეთრი სურათის გაფერადება<br />** 3D ობიექტებთან მუშაობა და მათი გამოყენება 2D გამოსახულებაში<br />** ნამუშევრის შენახვა საჭირო ფორმატში<br />** ნამუშევრის მომზადება დასაბეჭდად</p>\n<p>აღნიშნული კურსის გავლის: შემდეგ მსმენელს შეეძლება პროგრამასთან იმუშაოს უმაღლეს დონეზე, შეასრულოს ნებისმიერი სირთულის სამუშაო. შეეძლება დასაქმდეს სტამბებში, სარეკლამო კომპანიებში და სხვა კომპანიებში დიზაინერად.</p>\n<p>პრაქტიკული გაკვეთილების გარდა შეისწავლება თეორიული ნაწილი სადაც ახსნილი იქნება თუ როგორ ხდება ფერთან სწორი მუშაობა, რა არის პოლიგრაფია, რა სტანდარტები არსებობს პოლიგრაფიული ნაწარმის შექმნისას.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p>CorelDraw:</p>\n<p>** პროგრამის ზოგადი დახასიათება<br />** პროგრამის ინტერფეისის განხილვა<br />** მისალმების ფანჯარა<br />** ძირითად ინსტრუმენტთა პანელი<br />** დოკუმენტებთან მუშაობა<br />** გვერდებთან მუშაობა<br />** ვექტორებთან მუშაობა<br />** ვექტორების რედაქტირება<br />** ვექტორული გამოსახულებების შექმნა<br />** ობიექტების განხილვა და მათი რედაქტირება<br />** ლეიერებთან მუშაობა<br />** ტექსტთან მუშაობა<br />** ეფექტებთან მუშაობა<br />** რასტრულ გამოსახულებასთან მუშაობა<br />** რასტრული გამოსახულების გავექტორება<br />** ფერებთან მუშაობა<br />** პრაქტიკული სავარჯიშოების შესრულება</p>\n<p>კურსის გავლის შემდეგ: მსმენელი დამოუკიდებლად შეძლებს ვექტორებთან მუშაობას, სარეკლამო პროდუქტის შექმნას: სავიზიტო ბარათების, ბროშურების, ლოგოების, ფლაერების, პოსტერების და სხვა.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 250 ლარი<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 220 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 200 ლარი</p>\n<p>Adobe Illustrator CS6 - სასწავლო კურსი:</p>\n<p>** პროგრამის ინტერფეისი<br />** დოკუმენტის შექმნა/გახსნა<br />** ინსტრუმენტთა პანელის დეტალური განხილვა<br />** შეიპებთან მუშაობა<br />** ფუნჯებთან მუშაობა<br />** ხატვა<br />** ობიექტებთან მუშაობა<br />** Pathfinder-ობიექტებზე მანიპულაცია<br />** ობიექტების დამუშავება<br />** Type tool-ტექსტთან მუშაობა<br />** ვექტორული გამოსახულების მნიშვნელობა<br />** ეფექტებთან მუშაობა<br />** ფილტრებთან მუშაობა<br />** გრადიენტები<br />** დიაგრამები და გრაფიკები<br />** სამ განზომილებიან სივრცეში მუშაობა<br />** 3D ობიექტებთან მუშაობა<br />** სიმბოლოებთან მუშაობა<br />** დოკუმენტის დასაბეჭდად მომზადება</p>\n<p>კურსის გავლის შემდეგ მსმენელი დამოუკიდებლად შეძლებს პროგრამაში მუშაობას და პოლიგრაფიული მასალის შექმნას: ლოგოების, ბროშურების, სავიზიტო ბარათების, ბუკლეტების, ფლაერების, ბანერების და სხვა პოლიგრაფიის. შეგეძლებათ შექმნათ მაღალი ხარისხის ვექტორული ნაწარმი.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p>Adobe InDesign CC - სასწავლო კურსი:</p>\n<p>** პროგრამის ინტერფეისის გაცნობა და მისი მოწყობა; ახალი დოკუმენტის შექმნა<br />** ნავიგაცია; პანელებთან და პალიტრებთან მუშაობა<br />** ინსტრუმენტთა პანელი; ცხელი ღილაკები; მენიუთა განხილვა; ეფექტური მუშაობა პანელებთან<br />** მინდვრები და სვეტები; გვერდის ზომა, მიმმართველები; ბიბლიოთეკა და სნიპეტები<br />** გვერდების მართვა; გვერდების ნუმერაცია; მასტერ გვერდი; შაბლონები<br />** ტექსტთან მუშაობა; მარკირებული სიის შექმნა; ნუმერაციული ტექსტის შექმნა; გამოსახულებასთან მუშაობა<br />** სურათის იმპორტი; გამოსახულების რედაქტირება; ლეიერებთან მუშაობა; ობიექტებთან მუშაობა<br />** ეფექტებთან მუშაობა; ტრანსფორმაციის სახეობები; სტილებთან მუშაობა; ტექსტური სტილები<br />** აბზაცის სტილები; ობიექტის სტილები; სტილების იმპორტი; ფერთან მუშაობა<br />** სვოჩების პალიტრა; გრადაციები; ხელსაწყო ქულერი; ცხრილების შექმნა<br />** ცხრილების სტილები; დოკუმენტის დასაბეჭდად მომზადება<br />** PDF დოკუმენტის შექმნა; Package ის შექმნა; ინტერაქტიული დოკუმენტის შექმნა</p>\n<p>კურსის გავლის შემდეგ თქვენ გეცოდინებათ პროგრამა მაღალ დონეზე და გექნებათ შესაძლებლობა იმუშაოთ წიგნების, ჟურნალების და გაზეთების დაკაბადონებაზე. შეგეძლებათ შექმნათ პოლიგრაფიული ნაწარმი, როგორიცაა: სავიზიტო ბარათები, ფლაერები, კალენდრები, ბროშურები, პოსტერები და ა.შ.</p>\n<p>კურსის ხანგრძლივობა - 12 ლექცია <br />ინდივიდუალური მეცადინეობა - ღირებულება - 280 ლარი.<br />ორ-სამ კაციანი ჯგუფი - ღირებულება - 250 ლარი.<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 220 ლარი</p>\n<p>&nbsp;</p>', '2D-grafic', '', '', '', 'ge', 10, 0, 1),
(219, 87, 8, 1523793820, 0, 'text', '3D გრაფიკა და დიზაინი', '', '<p><strong>Autodesk 3Ds Max:</strong></p>\n<p><strong>I დონე - მოდელირება:</strong></p>\n<p>** პროგრამის ინტერფეისი, სტანდარტული ობიექტების შექმნა, საზომი ერთეულების დაყენება, ობიექტების გადაადგილება, მოტრიალება, მასშტაბირება, კოპირება, სარკისებრი ასახვა, მიბმა, გათანაბრება, დაჯგუფება, ობიექტის ცენტრის გადაადგილება.<br />** ხაზობრივი ობიექტების შექმნა, ფორმის დამუშავება, გასქელება, ინტერიერის გეგმის შექმნა.<br />** კომპლექსური ობიექტების შექმნა - ბრძანებები Boolean, ShapeMerge, Scatter<br />** მოდიფიკატორები: Extrude, Sweep (ობიექტის შექმნა ჭრილის ფორმის მითითებით), Lathe. (მობრუნების ზედაპირების შექმნა)<br />** ობიექტების მასივის შექმნა: ბრძანება Array; ობიექტების დალაგება მრუდზე: ბრძანება Spacing Tool<br />** სტანდარტული ობიექტის რედაქტირებად ობიექტად გადაქცევა. პოლიგონალური მოდელირება (Editable Poly). ობიექტის დეფორმირება - Soft Selection<br />** ობიექტის დაგლუვება - მოდიფიკატორები TurboSmooth, MeshSmooth<br />** მოდიფიკატორები FFDbox, FFDcyl<br />** მოდიფიკატორები Shell, Lattice, Slice<br />** დეფორმირების მოდიფიკატორები: Bend, Twist, Taper, Noise, Relax, Push, Stretch, Spherify, Squeeze, Affect Region, Ripple, Wave, Skew, Displace<br />** მოდიფიკატორი Hair and Fur (თმის, ბეწვის, ბალახის შექმნა)<br />** ფაილების იმპორტირება (obj, fbx, 3ds) და ექსპორტირება<br />** რენდერის ფონის შეცვლა - Environment<br />** პრაქტიკული სამუშაო: ინტერიერის და ექსტერიერის მოდელირება - ავეჯის, შენობების, არქიტექტურული ელემენტების და ა.შ.</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 300 ლარი<br />2-3 კაციან ჯგუფში: 270 ლარი <br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 230 ლარი</p>\n<p><strong>მე-2 დონე - რთული ტექსტურირება და ვიზუალიზაცია:</strong></p>\n<p>II დონე - მასალების შექმნა, განათების და კამერების დაყენება და ვიზუალიზაცია Vray რენდერის გამოყენებით:</p>\n<p>** მასალების რედაქტორი - Material Editor, <br />** მასალების ბიბლიოთეკის გამოყენება<br />** სტანდარტული მასალის (Standard) ძირითადი პარამეტრები, რელიეფის მიცემა (Bump), მინის და სარკის მასალის შექმნა (Raytrace), პროცედურული რუკები: Checker, Dent, Cellular, Splat, Stucco, Noise, Smoke, Swirl, Wood, Wave, Gradient, Gradient Ramp, Marble, Perlin Marble, Speckle, Tiles. <br />** კომპლექსური მასალა Multi/Sub-Object<br />** ტექსტურის გასწორება, ზომის შეცვლა, მოტრიალება, მასშტაბირება: მოდიფიკატორები UVW Map, UVW Xform <br />** კამერის დაყენება, კამერის პარამეტრების მართვა.<br />** განათების დაყენება, სტანდარტული და ფოტომეტრიული განათება. სინათლის წყაროების პარამეტრების მართვა.<br />** Vray რენდერის დაყენება, პარამეტრების მართვა: Irradiance map, Light Cache, Color mapping, Image sampler<br />** Vray-ის სტანდარტული მასალა VrayMtl<br />** Vray-ის მასალების შექმნა: მინა (სტანდარტული, დაბურული, ფერადი), სარკე, ლითონი, ხე, აგური, კერამიკა და ა. შ. <br />** Vray-ის თვითნათებადი მასალა VrayLightMtl<br />** Vray -ის განათება - Vray light (განათების სხვადასხვა ფორმები Plane, Sphere, Dome)<br />** Vray HDRI პროცედურული რუკა ( გარემოს არეკვლა)<br />** Vray Sky<br />** ინტერიერის და ექსტერიერის განათების მეთოდები.</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 350 ლარი<br />2-3 კაციან ჯგუფში: 220 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 280 ლარი</p>\n<p><strong>III დონე - რთული მოდელირება, ტექსტურირება. Vray:</strong></p>\n<p>** კარკასული მოდელირება - მოდიფიკატორები CrossSection, Surface.<br />** კომპლექსური ობიექტების შექმნა - Loft <br />** ნაჭრის შექმნა - მოდიფიკატორი Cloth<br />** ჩანართი Graphite Modeling Tools<br />** რთული ობიექტების მოდელირება (მანქანა, პერსონაჟი): ზედხედის და გვერდხედების ნახაზების გამოყენებით<br />** რთული ტექსტურირება: მოდიფიკატორი Unwrap UVW (ტექსტურის გაშლა). რთულ ობიექტზე ტექსტურის გადაკვრა.<br />** პროცედურული რუკები Mask, Mix - კომპლექსური ტექსტურის შექმნა.<br />** მოდიფიკატორი VertexPaint და პროცედურული რუკა VertexColor<br />** Vray - ის განათება: Vray IES, Vray Sun (მზე), Vray Light (Mesh)<br />** Vray-ის კამერა Vray Physical Camera<br />** Vray Proxy - ბევრ მრავალწახნაგოვან ობიექტებთან მუშაობის შესაძლებლობა<br />** Vray Fur - თმის, ბეწვის და ბალახის შექმნა <br />** მოდიფიკატორი VrayDisplacementMod (რელიეფური ფაქტურის შექმნა)<br />** VrayBlend Mtl - Vray-ის კომპლექსური მასალის შექმნა</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 350 ლარი<br />2-3 კაციან ჯგუფში: 320 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 280 ლარი</p>\n<p>შესაძლებელია გაიაროთ საათობრივი კონსულტაციები- ერთი კონსულტაცია ინდივიდუალურად 30 ლარი.</p>\n<p>გაითვალისწინეთ: კურსის გავლის შემდეგ მსმენელს ექნება საკუთარი პორტფოლიო - რომელშიც თავმოყრილი იქნება ჩვენთან სწავლის პერიოდში მიღებული ცოდნის შედეგად შექმნილი საკუთარი ნამუშევრები.</p>\n<p>ასევე, ჩვენი მსმენელების საუკეთესო ნამუშევრები განთავსებული იქნება ჩვენი Facebook-ის ოფიციალურ გვერდზე, რომელსაც ათასობით დამთვალიერებელი ჰყავს. ეს ზრდის შანსს, რომ საუკეთესო მსმენელებით დაინტერესდნენ დამსაქმებელი კომპანიები!</p>', '3D-grafic', '', '', '', 'en', 8, 0, 0),
(220, 87, 8, 1523793820, 0, 'text', '3D გრაფიკა და დიზაინი', '', '<p><strong>Autodesk 3Ds Max:</strong></p>\n<p><strong>I დონე - მოდელირება:</strong></p>\n<p>** პროგრამის ინტერფეისი, სტანდარტული ობიექტების შექმნა, საზომი ერთეულების დაყენება, ობიექტების გადაადგილება, მოტრიალება, მასშტაბირება, კოპირება, სარკისებრი ასახვა, მიბმა, გათანაბრება, დაჯგუფება, ობიექტის ცენტრის გადაადგილება.<br />** ხაზობრივი ობიექტების შექმნა, ფორმის დამუშავება, გასქელება, ინტერიერის გეგმის შექმნა.<br />** კომპლექსური ობიექტების შექმნა - ბრძანებები Boolean, ShapeMerge, Scatter<br />** მოდიფიკატორები: Extrude, Sweep (ობიექტის შექმნა ჭრილის ფორმის მითითებით), Lathe. (მობრუნების ზედაპირების შექმნა)<br />** ობიექტების მასივის შექმნა: ბრძანება Array; ობიექტების დალაგება მრუდზე: ბრძანება Spacing Tool<br />** სტანდარტული ობიექტის რედაქტირებად ობიექტად გადაქცევა. პოლიგონალური მოდელირება (Editable Poly). ობიექტის დეფორმირება - Soft Selection<br />** ობიექტის დაგლუვება - მოდიფიკატორები TurboSmooth, MeshSmooth<br />** მოდიფიკატორები FFDbox, FFDcyl<br />** მოდიფიკატორები Shell, Lattice, Slice<br />** დეფორმირების მოდიფიკატორები: Bend, Twist, Taper, Noise, Relax, Push, Stretch, Spherify, Squeeze, Affect Region, Ripple, Wave, Skew, Displace<br />** მოდიფიკატორი Hair and Fur (თმის, ბეწვის, ბალახის შექმნა)<br />** ფაილების იმპორტირება (obj, fbx, 3ds) და ექსპორტირება<br />** რენდერის ფონის შეცვლა - Environment<br />** პრაქტიკული სამუშაო: ინტერიერის და ექსტერიერის მოდელირება - ავეჯის, შენობების, არქიტექტურული ელემენტების და ა.შ.</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 300 ლარი<br />2-3 კაციან ჯგუფში: 270 ლარი <br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 230 ლარი</p>\n<p><strong>მე-2 დონე - რთული ტექსტურირება და ვიზუალიზაცია:</strong></p>\n<p>II დონე - მასალების შექმნა, განათების და კამერების დაყენება და ვიზუალიზაცია Vray რენდერის გამოყენებით:</p>\n<p>** მასალების რედაქტორი - Material Editor, <br />** მასალების ბიბლიოთეკის გამოყენება<br />** სტანდარტული მასალის (Standard) ძირითადი პარამეტრები, რელიეფის მიცემა (Bump), მინის და სარკის მასალის შექმნა (Raytrace), პროცედურული რუკები: Checker, Dent, Cellular, Splat, Stucco, Noise, Smoke, Swirl, Wood, Wave, Gradient, Gradient Ramp, Marble, Perlin Marble, Speckle, Tiles. <br />** კომპლექსური მასალა Multi/Sub-Object<br />** ტექსტურის გასწორება, ზომის შეცვლა, მოტრიალება, მასშტაბირება: მოდიფიკატორები UVW Map, UVW Xform <br />** კამერის დაყენება, კამერის პარამეტრების მართვა.<br />** განათების დაყენება, სტანდარტული და ფოტომეტრიული განათება. სინათლის წყაროების პარამეტრების მართვა.<br />** Vray რენდერის დაყენება, პარამეტრების მართვა: Irradiance map, Light Cache, Color mapping, Image sampler<br />** Vray-ის სტანდარტული მასალა VrayMtl<br />** Vray-ის მასალების შექმნა: მინა (სტანდარტული, დაბურული, ფერადი), სარკე, ლითონი, ხე, აგური, კერამიკა და ა. შ. <br />** Vray-ის თვითნათებადი მასალა VrayLightMtl<br />** Vray -ის განათება - Vray light (განათების სხვადასხვა ფორმები Plane, Sphere, Dome)<br />** Vray HDRI პროცედურული რუკა ( გარემოს არეკვლა)<br />** Vray Sky<br />** ინტერიერის და ექსტერიერის განათების მეთოდები.</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 350 ლარი<br />2-3 კაციან ჯგუფში: 220 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 280 ლარი</p>\n<p><strong>III დონე - რთული მოდელირება, ტექსტურირება. Vray:</strong></p>\n<p>** კარკასული მოდელირება - მოდიფიკატორები CrossSection, Surface.<br />** კომპლექსური ობიექტების შექმნა - Loft <br />** ნაჭრის შექმნა - მოდიფიკატორი Cloth<br />** ჩანართი Graphite Modeling Tools<br />** რთული ობიექტების მოდელირება (მანქანა, პერსონაჟი): ზედხედის და გვერდხედების ნახაზების გამოყენებით<br />** რთული ტექსტურირება: მოდიფიკატორი Unwrap UVW (ტექსტურის გაშლა). რთულ ობიექტზე ტექსტურის გადაკვრა.<br />** პროცედურული რუკები Mask, Mix - კომპლექსური ტექსტურის შექმნა.<br />** მოდიფიკატორი VertexPaint და პროცედურული რუკა VertexColor<br />** Vray - ის განათება: Vray IES, Vray Sun (მზე), Vray Light (Mesh)<br />** Vray-ის კამერა Vray Physical Camera<br />** Vray Proxy - ბევრ მრავალწახნაგოვან ობიექტებთან მუშაობის შესაძლებლობა<br />** Vray Fur - თმის, ბეწვის და ბალახის შექმნა <br />** მოდიფიკატორი VrayDisplacementMod (რელიეფური ფაქტურის შექმნა)<br />** VrayBlend Mtl - Vray-ის კომპლექსური მასალის შექმნა</p>\n<p>კურსის ხანგრძლივობა: 12 ლექცია<br />კურსის ღირებულება: <br />ინდივიდუალურად: 350 ლარი<br />2-3 კაციან ჯგუფში: 320 ლარი<br />კურსის ღირებულება: 4-5 კაციან ჯგუფში - 280 ლარი</p>\n<p>შესაძლებელია გაიაროთ საათობრივი კონსულტაციები- ერთი კონსულტაცია ინდივიდუალურად 30 ლარი.</p>\n<p>გაითვალისწინეთ: კურსის გავლის შემდეგ მსმენელს ექნება საკუთარი პორტფოლიო - რომელშიც თავმოყრილი იქნება ჩვენთან სწავლის პერიოდში მიღებული ცოდნის შედეგად შექმნილი საკუთარი ნამუშევრები.</p>\n<p>ასევე, ჩვენი მსმენელების საუკეთესო ნამუშევრები განთავსებული იქნება ჩვენი Facebook-ის ოფიციალურ გვერდზე, რომელსაც ათასობით დამთვალიერებელი ჰყავს. ეს ზრდის შანსს, რომ საუკეთესო მსმენელებით დაინტერესდნენ დამსაქმებელი კომპანიები!</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', '3D-grafic', '', '', '', 'ge', 8, 0, 0),
(221, 88, 40, 1523795162, 0, 'text', 'სასტუმროს პერსონალისთის', '', '<p>კურსის მსვლელობისას შეისწავლით:</p>\n<p>** ძირითად პროფესიულ ფრაზეოლოგიასა და ტერმინოლოგიას <br />** გრამატიკულად გამართული დიალოგების წარმოებას <br />** შეძლებთ დისკუსიაში ჩაბმას<br />** გაიმდიდრებთ ლექსიკას<br />** ჩამოგიყალიბდებათ კითხვა - პასუხის და მოსმენის უნარ-ჩვევები <br />** სასწავლო კურსი მოიცავს შემდეგ თემატიკას <br />** სტუმრის მისალმება, დახვედრა, რეგისტრაცია<br />** სასტუმროსა და ოთახების მომსახურება<br />** პრობლემები და მათი გადაწყვეტა<br />** ტელეფონით ჯავშნის მიღება, ფასების და პირობების გაცნობა<br />** სასტუმროს სარესტორნო მომსახურების გაცნობა და მენიუს ახსნა შეთავაზება<br />** ინფორმაციის მიწოდება ღირსშესანიშნაობების შესახებ<br />** დამატებითი მომსახურებების შეთავაზება<br />** კურსი გათვლილია elementary დონის მსმენელებისთვის</p>\n<p>კურსის ხანგრძლობა არის ინდივიდუალური და დამოკიდებულია მსმენელის მიერ ინლისური ენის ცოდნის დონეზე (2 ან 3 თვე). <br />ჩატარდება: კვირაში ორი ლექცია (1 საათი იდივიდუალურად, ჯგუფში-საათნახევარი). <br />ღირებულება 3-5 კაციან ჯგუფში: 80 ლარი;<br />ღირებულება წყვილში: 100 ლარი<br />ინდივიდუალურად: 180 ლარი.</p>', 'english-for-hotels-staf', '', '', '', 'en', 4, 0, 0),
(222, 88, 40, 1523795162, 0, 'text', 'სასტუმროს პერსონალისთის', '', '<p>კურსის მსვლელობისას შეისწავლით:</p>\n<p>** ძირითად პროფესიულ ფრაზეოლოგიასა და ტერმინოლოგიას <br />** გრამატიკულად გამართული დიალოგების წარმოებას <br />** შეძლებთ დისკუსიაში ჩაბმას<br />** გაიმდიდრებთ ლექსიკას<br />** ჩამოგიყალიბდებათ კითხვა - პასუხის და მოსმენის უნარ-ჩვევები <br />** სასწავლო კურსი მოიცავს შემდეგ თემატიკას <br />** სტუმრის მისალმება, დახვედრა, რეგისტრაცია<br />** სასტუმროსა და ოთახების მომსახურება<br />** პრობლემები და მათი გადაწყვეტა<br />** ტელეფონით ჯავშნის მიღება, ფასების და პირობების გაცნობა<br />** სასტუმროს სარესტორნო მომსახურების გაცნობა და მენიუს ახსნა შეთავაზება<br />** ინფორმაციის მიწოდება ღირსშესანიშნაობების შესახებ<br />** დამატებითი მომსახურებების შეთავაზება<br />** კურსი გათვლილია elementary დონის მსმენელებისთვის</p>\n<p>კურსის ხანგრძლობა არის ინდივიდუალური და დამოკიდებულია მსმენელის მიერ ინლისური ენის ცოდნის დონეზე (2 ან 3 თვე). <br />ჩატარდება: კვირაში ორი ლექცია (1 საათი იდივიდუალურად, ჯგუფში-საათნახევარი). <br />ღირებულება 3-5 კაციან ჯგუფში: 80 ლარი;<br />ღირებულება წყვილში: 100 ლარი<br />ინდივიდუალურად: 180 ლარი.</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'english-for-hotels-staf', '', '', '', 'ge', 4, 0, 0),
(225, 90, 72, 1523796031, 0, 'text', 'მომსახურების სტანდარტები-service+', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>', 'service+', '', '', '', 'en', 6, 0, 1),
(223, 89, 72, 1523795596, 0, 'text', 'მომსახურების სტანდარტები', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>', 'servic-+', '', '', '', 'en', 6, 0, 1),
(224, 89, 72, 1523795596, 0, 'text', 'მომსახურების სტანდარტები', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>', 'servic-+', '', '', '', 'ge', 6, 0, 1),
(226, 90, 72, 1523796031, 0, 'text', 'მომსახურების სტანდარტები-service+', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>', 'service+', '', '', '', 'ge', 6, 0, 1),
(229, 92, 8, 1523797413, 0, 'text', 'სისტემური და ქსელური ადმინისტრირება', '', '<p><strong>სისტემური და ქსელური ადმინისტირირება-პირველი საფეხური</strong><br /><strong>სისტემური და ქსელური ადმინისტირირება-მეორე საფეხური</strong><br /> <br /><strong>სისტემური და ქსელური ადმინისტირირება</strong><br /> <br /><strong>კურსი განკუთვნილია: </strong></p>\n<p>მათთვის, ვისაც სურს განათლება მიიღოს ქსელური და სისტემური ინფრასტრუქტურის განვითარებაში.<br />კომპიუტერები, კომპონენტები, ცალკეული დეტალები, ბიოსი და მისი ფუნქციები<br />ოპერაციული სისტემები (XP/WIN7/8.1/10 LINUX) მათი ინსტალაცია, ვირტუალური მანქანების გამართვა, პროგრამული უზრუნველყოფა<br />ოპერაციული სისტემების მიმოხილვა: Users &amp; Group, IP დამისამართება, ინფორმაციის და მოწყობილობების ქსელში გაზიარება და მათზე უფლებების მინიჭება ...<br />ვინჩესტერების დაყოფა, ბექაფ სისტემები, ინფორმაციის ბექაფირება (სისტემის &amp; უტილიტის გამოყენებით), დაკარგული ინფორმაციის აღდგენა<br />კლონირება<br />ქსელი, ქსელური ტოპოლოგიები, ქსელური მოწყობილობები &amp; მათი მუშაობის პრინციპები, osi &amp; tcp/ip მოდელები<br />IP მისამართები და მათი კლასიფიკაცია<br />IP საბნეტიზაცია<br />სერვერები მათი ტიპები, გამართვა (ინსტალაცია) SERVER 2008 -ის ბაზაზე<br />SERVER 2008 AD (დომეინ კონტროლერი) <br />DHCP, DNS <br />File server, USER &amp; GROUPS, ქსელში გაზიარებულ ფაილებზე ნებართვების და შეზღუდვების მინიჭება<br />როუტერების და ვაერლესის კონფიგურაცი</p>\n<p><strong>კურსდამთავრებული შეძლებს:</strong></p>\n<p><br />ა) გამართოს პერსონალური კომპიუტერი (ოპერაციული სისტემით, და სასურველი პროგრამებით)<br />ბ) მოაწყოს მცირე და სასშუალო ქსელები სხვადასხვა ქსელური აპარატურის გამოყენებით<br />გ) ჩართოს და მწყობრში მოიყვანოს ქსელში არსებული აპარატურა (პრინტერები, სკანერები, ...)<br />დ)დაგეგმაროს და გამართოს სხვადასხვა სახის სერვერები ( AD, DHCP, print server, file server, firwall,....) საჭიროების შეთხვევაში<br />ე) მონიტორინგის გაწევას<br /> <br />კურსის ხანგრძლივობაა: 12 ლექცია 2 საათიანი ლექცია<br />სწავლის ღირებულება: 350 ლარი - 3-4 მსმენელი ჯგუფში<br /> <br /><strong>მეორე დონე ადმინისტრირებაში</strong> <br /> <br />Windows Server 2008<br />ვირტუალური სერვერის შექმნა (ESXi 5.5) და მისი მიმოხილვა<br />Windows server 2008 Active Direqtory (AD)<br />Administration users, group, computers<br />AD ბექაფ სერვერის შექმნა<br />Group policy in windows server 2008<br />Creating a DHCP infrastructure<br />File servers (managing File security)<br />Backup and recovery<br />Configuring IP routing<br />Network<br />ქსელის დაგეგმვა (ქსელური მოწყობილობები) მონტაჟი<br />როუტერების კონფიგურაცია (ინტერფეისების IP დამისამართება &amp;DHCP-ს კონფიგი)<br />Configuring Static and Default Routes<br />ქსელური პროტოკოლები<br />სვიჩების კონფიგურაცია (VLAN, Trunks, Vtp)<br />Inter VLAN Routing<br />Standard Access Lists &ndash; ACL<br />ლექციებიზე პრაქტიკული სამუშაოები მიმდინარეობს CISCO pakettracer- ის და CISCO ROUTER- ების გამოყენებით კურს დამთავრებულები შეძლებენ: <br />გამართონ მცირე და საშვალო დონის ქსელები,<br />დააკონფიგურირონ ქსელისთვის განკუთნილი მოწყობილობები (როუტერები,სვიჩები),<br />ქსელი უზრუნველყონ რამოდენიმე ტიპის სერვერის მუშაობით ( AD, DHCP, FILE server)</p>\n<p>პროგრამის ხანგრძლივობა: 12/ 2 საათიანი ლექცია<br />სწავლის ღირებულება: 450 ლარი - 3-4 მსმენელი ჯგუფში</p>', 'systems-and-network', '', '', '', 'en', 5, 0, 0),
(227, 91, 72, 1523796669, 0, 'text', 'მომსახურების სტანდარტები ', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>', 'servic-eplius', '', '', '', 'en', 6, 0, 0),
(228, 91, 72, 1523796669, 0, 'text', 'მომსახურების სტანდარტები ', '', '<p>ტრეინინგები მიმდინარეობს ინტერაქტიული სწავლების სტილში \"casestudy\" ფორმატით, აერთიანებს თეორიული ინფორმაციის გადაცემას პრეზენტაციის ფორმით და პრაქტიკული უნარ-ჩვევების ჩამოყალიბება/განმტკიცებაზე ორიენტირებულ ინდივიდუალურ და გუნდურ სავარჯიშოებს, სტრატეგიულ ბიზნეს სიმულაციებს და საქმიან თამაშებს.</p>\n<p>ტრენინგის მიზანი:</p>\n<p>** წარმატებული კომუნიკაციის წარმოებისათვის აუცილებელი უნარების განვითარება<br />** საუბრის მართვის ფსიქოლოგიური ტექნიკების შესწავლა<br />** შრომითი მოტივაციის მაქსიმალიზაცია<br />** გუნდური მუშაობის უნარების განვითარება</p>\n<p>თემები:</p>\n<p>** მომსახურების ტექნიკები<br />** კლიენტის ქცევის მართვა<br />** საუბრის სტიმულირების მეთოდები<br />** გუნდი და გუნდური მუშაობის უნარები<br />** მიზნის დასახვის და მიღწევის სტრატეგიები<br />** გავლენის ფსიქოლოგია კომუნიკაციებში</p>\n<p>შედეგები:</p>\n<p>** მომსახურების სტანდარტების ამაღლება, <br />** წარმატებული კომუნიკაციისათვის სავალდებულო უნარ ჩვევების გამომუშავება.</p>\n<p>პროგრამის ხანგრძლივობა: 16 საათი<br />პროგრამის ღირებულება: 350 ლარი</p>\n<p>[registration]</p>', 'servic-eplius', '', '', '', 'ge', 6, 0, 0);
INSERT INTO `navigation` (`id`, `idx`, `cid`, `date`, `nav_type`, `type`, `title`, `description`, `text`, `slug`, `usefull_type`, `cssclass`, `redirect`, `lang`, `position`, `visibility`, `status`) VALUES
(230, 92, 8, 1523797413, 0, 'text', 'სისტემური და ქსელური ადმინისტრირება', '', '<p><strong>სისტემური და ქსელური ადმინისტირირება-პირველი საფეხური</strong><br /><strong>სისტემური და ქსელური ადმინისტირირება-მეორე საფეხური</strong><br /> <br /><strong>სისტემური და ქსელური ადმინისტირირება</strong><br /> <br /><strong>კურსი განკუთვნილია: </strong></p>\n<p>მათთვის, ვისაც სურს განათლება მიიღოს ქსელური და სისტემური ინფრასტრუქტურის განვითარებაში.<br />კომპიუტერები, კომპონენტები, ცალკეული დეტალები, ბიოსი და მისი ფუნქციები<br />ოპერაციული სისტემები (XP/WIN7/8.1/10 LINUX) მათი ინსტალაცია, ვირტუალური მანქანების გამართვა, პროგრამული უზრუნველყოფა<br />ოპერაციული სისტემების მიმოხილვა: Users &amp; Group, IP დამისამართება, ინფორმაციის და მოწყობილობების ქსელში გაზიარება და მათზე უფლებების მინიჭება ...<br />ვინჩესტერების დაყოფა, ბექაფ სისტემები, ინფორმაციის ბექაფირება (სისტემის &amp; უტილიტის გამოყენებით), დაკარგული ინფორმაციის აღდგენა<br />კლონირება<br />ქსელი, ქსელური ტოპოლოგიები, ქსელური მოწყობილობები &amp; მათი მუშაობის პრინციპები, osi &amp; tcp/ip მოდელები<br />IP მისამართები და მათი კლასიფიკაცია<br />IP საბნეტიზაცია<br />სერვერები მათი ტიპები, გამართვა (ინსტალაცია) SERVER 2008 -ის ბაზაზე<br />SERVER 2008 AD (დომეინ კონტროლერი) <br />DHCP, DNS <br />File server, USER &amp; GROUPS, ქსელში გაზიარებულ ფაილებზე ნებართვების და შეზღუდვების მინიჭება<br />როუტერების და ვაერლესის კონფიგურაცი</p>\n<p><strong>კურსდამთავრებული შეძლებს:</strong></p>\n<p><br />ა) გამართოს პერსონალური კომპიუტერი (ოპერაციული სისტემით, და სასურველი პროგრამებით)<br />ბ) მოაწყოს მცირე და სასშუალო ქსელები სხვადასხვა ქსელური აპარატურის გამოყენებით<br />გ) ჩართოს და მწყობრში მოიყვანოს ქსელში არსებული აპარატურა (პრინტერები, სკანერები, ...)<br />დ)დაგეგმაროს და გამართოს სხვადასხვა სახის სერვერები ( AD, DHCP, print server, file server, firwall,....) საჭიროების შეთხვევაში<br />ე) მონიტორინგის გაწევას<br /> <br />კურსის ხანგრძლივობაა: 12 ლექცია 2 საათიანი ლექცია<br />სწავლის ღირებულება: 350 ლარი - 3-4 მსმენელი ჯგუფში<br /> <br /><strong>მეორე დონე ადმინისტრირებაში</strong> <br /> <br />Windows Server 2008<br />ვირტუალური სერვერის შექმნა (ESXi 5.5) და მისი მიმოხილვა<br />Windows server 2008 Active Direqtory (AD)<br />Administration users, group, computers<br />AD ბექაფ სერვერის შექმნა<br />Group policy in windows server 2008<br />Creating a DHCP infrastructure<br />File servers (managing File security)<br />Backup and recovery<br />Configuring IP routing<br />Network<br />ქსელის დაგეგმვა (ქსელური მოწყობილობები) მონტაჟი<br />როუტერების კონფიგურაცია (ინტერფეისების IP დამისამართება &amp;DHCP-ს კონფიგი)<br />Configuring Static and Default Routes<br />ქსელური პროტოკოლები<br />სვიჩების კონფიგურაცია (VLAN, Trunks, Vtp)<br />Inter VLAN Routing<br />Standard Access Lists &ndash; ACL<br />ლექციებიზე პრაქტიკული სამუშაოები მიმდინარეობს CISCO pakettracer- ის და CISCO ROUTER- ების გამოყენებით კურს დამთავრებულები შეძლებენ: <br />გამართონ მცირე და საშვალო დონის ქსელები,<br />დააკონფიგურირონ ქსელისთვის განკუთნილი მოწყობილობები (როუტერები,სვიჩები),<br />ქსელი უზრუნველყონ რამოდენიმე ტიპის სერვერის მუშაობით ( AD, DHCP, FILE server)</p>\n<p>პროგრამის ხანგრძლივობა: 12/ 2 საათიანი ლექცია<br />სწავლის ღირებულება: 450 ლარი - 3-4 მსმენელი ჯგუფში</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'systems-and-network', '', '', '', 'ge', 5, 0, 0),
(231, 93, 8, 1523798497, 0, 'text', 'ბიზნეს მოდელირება და მონაცემთა ანალიზი ექსელში', '', '<p><strong>კურსის მიზანია: </strong></p>\n<p>ექსელთან მუშაობის გამოცდილების მქონე პიროვნებას ასწავლოს ბიზნესის პრაქტიკული ამოცანების მოდელირება და გადაწყვეტილებების მიღება; გაამარტივოს მომხმარებლისათვის დიდი ზომის მოანცემების დამუშავება და ანალიზი. რუტინული საქმის ავტომატიზაცია და მსმენელის სამუშაო ეფექტურობის ამაღლება.<br /> <br /><strong>კურსის გავლის შემდეგ შეძლებთ:</strong><br />გამოიყენონ ცხრილები პრაქტიკულ ცხოვრებაში;<br />მოახდინონ საინვესტიციო რისკების მოდელირება;<br />გაანალიზონ გაყიდვების გუნდის ეფექტურობა;<br />მოახდინონ სენსიტივობის ანალიზი;<br />საუკეთესო, ცუდი და სავარაუდო სცენარების ანალიზი;<br />შეადარონ ლიზინგისა და სესხის პირობები;<br />გაარკვიონ როგორ მოქმედებს ფასი, რეკლამა და სეზონურობა გაყიდვებზე;<br />მართონ საწყობი ოპტიმალურად;<br />შეაფასონ მომხმარებელთა ლოიალობა;<br />დაითვალონ უდანაკარგობის წერტილი;<br />მოახდინონ ეფექტური დაგეგმარება.</p>\n<p><strong>თემატიკა:</strong> <br />არეს დასათაურება Range Names<br />Lookup ფუნქცია<br />Index ფუნქცია<br />Match ფუნქცია<br />Text ფუნქციები<br />თარიღის ფუნქციებ<br />ფინანსური ფუნქციები<br />ინვესტიციების შეფასება<br />უკუგების შინაგანი ნორმა IRR<br />წრიული მიმართება<br />IFფუნქცია<br />დროითი ფუნქციები<br />სპეციალური ჩასმის ბრძანება paste special <br />სამ განზომილებიანი ფორმულები<br />ფორმულის აუდიტის ხელსაწყო<br />სინსიტივობის ანალიზი მოანცემთა ცხრილებით data tables<br />განტოლებების ამოხსნა Goal Seek ბრძანებით<br />სინსიტივობის ანალიზი სცენარების მენეჯერის დახმარებით<br />Count ფუნქცია<br />პირობითი ჯამისა და საშუალოს დათვლის ფუნქციები<br />OFFSET ფუნქცია<br />INDIRECT ფუნქცია<br />პირობითი ფორმატირება<br />სორტირება<br />ცხრილების ჩასმა<br />ფორმის ელემენტები<br />ღილაკებისა და სქროლბარის გამოყენება,<br />არჩევანის ღილაკებისა და ჩამრთველების გამოყენება.<br />ოპტიმიზაცია სოლვერის გამოყენებით<br />სოლვერის გამოყენება:<br />ინგრედიენტების ოპტიმალური შეზავება<br />სამუშაო ძალის განრიგი<br />ტრანსპორტირებისა და დისტრიბუციის პრობლემა<br />ტექსტური ფაილიდან მონაცემების იმპორტი<br />ინტერნეტიდან მონაცემების იმპორტი<br />მონაცემების ვალიდაცია<br />მონაცემების შეჯამება ჰისტოგრამის საშუალებით<br />მონაცემების შეჯამება - აღწერითი სტატისტიკა<br />მონაცემების ანალიზი შემაჯამებელი ცხრილების საშუალებით<br />მონაცემების შეჯამება მონაცემთა ბაზის ფუნქციებით<br />უნიკალური სიის შექმნა<br />მონაცემების კონსოლიდაცია<br />ქვე მაჯამებლების შექმნა<br />დიაგრამები<br />წრფივი დამოკიდებულების შეფასება<br />კორელაციური ანალიზი<br />მონაცემების გაფილტვრა: <br />ავტო ფილტრი<br />გაფართოვებული ფილტრი<br />მოძრავი საშუალოს გამოყენება დროითი მწკრივების ანალიზისთვის<br />ავტომატიზაცია მაკროსის გამოყენებით<br />მაკროსის ჩაწერა<br />მაკროსის რედაქტირება</p>\n<p>კურსი მოიცავს: 2 თვეს<br />ლექციის ხანგრძლივობა: 1სთ 30წთ<br />კვირაში ჩატარდება: 2 ლექცია<br /> <br />კურსის ღირებულება თვეში:<br />ინდივიდუალურად: 350 ლარი<br />ორ-სამ კაციან ჯგუფში: 300 ლარი<br />ჯგუფში 4 კაცი და მეტი: 250 ლარი</p>', 'bussinec modeling excel', '', '', '', 'en', 3, 0, 0),
(232, 93, 8, 1523798497, 0, 'text', 'ბიზნეს მოდელირება და მონაცემთა ანალიზი ექსელში', '', '<p><strong>კურსის მიზანია: </strong></p>\n<p>ექსელთან მუშაობის გამოცდილების მქონე პიროვნებას ასწავლოს ბიზნესის პრაქტიკული ამოცანების მოდელირება და გადაწყვეტილებების მიღება; გაამარტივოს მომხმარებლისათვის დიდი ზომის მოანცემების დამუშავება და ანალიზი. რუტინული საქმის ავტომატიზაცია და მსმენელის სამუშაო ეფექტურობის ამაღლება.<br /> <br /><strong>კურსის გავლის შემდეგ შეძლებთ:</strong><br />გამოიყენონ ცხრილები პრაქტიკულ ცხოვრებაში;<br />მოახდინონ საინვესტიციო რისკების მოდელირება;<br />გაანალიზონ გაყიდვების გუნდის ეფექტურობა;<br />მოახდინონ სენსიტივობის ანალიზი;<br />საუკეთესო, ცუდი და სავარაუდო სცენარების ანალიზი;<br />შეადარონ ლიზინგისა და სესხის პირობები;<br />გაარკვიონ როგორ მოქმედებს ფასი, რეკლამა და სეზონურობა გაყიდვებზე;<br />მართონ საწყობი ოპტიმალურად;<br />შეაფასონ მომხმარებელთა ლოიალობა;<br />დაითვალონ უდანაკარგობის წერტილი;<br />მოახდინონ ეფექტური დაგეგმარება.</p>\n<p><strong>თემატიკა:</strong> <br />არეს დასათაურება Range Names<br />Lookup ფუნქცია<br />Index ფუნქცია<br />Match ფუნქცია<br />Text ფუნქციები<br />თარიღის ფუნქციებ<br />ფინანსური ფუნქციები<br />ინვესტიციების შეფასება<br />უკუგების შინაგანი ნორმა IRR<br />წრიული მიმართება<br />IFფუნქცია<br />დროითი ფუნქციები<br />სპეციალური ჩასმის ბრძანება paste special <br />სამ განზომილებიანი ფორმულები<br />ფორმულის აუდიტის ხელსაწყო<br />სინსიტივობის ანალიზი მოანცემთა ცხრილებით data tables<br />განტოლებების ამოხსნა Goal Seek ბრძანებით<br />სინსიტივობის ანალიზი სცენარების მენეჯერის დახმარებით<br />Count ფუნქცია<br />პირობითი ჯამისა და საშუალოს დათვლის ფუნქციები<br />OFFSET ფუნქცია<br />INDIRECT ფუნქცია<br />პირობითი ფორმატირება<br />სორტირება<br />ცხრილების ჩასმა<br />ფორმის ელემენტები<br />ღილაკებისა და სქროლბარის გამოყენება,<br />არჩევანის ღილაკებისა და ჩამრთველების გამოყენება.<br />ოპტიმიზაცია სოლვერის გამოყენებით<br />სოლვერის გამოყენება:<br />ინგრედიენტების ოპტიმალური შეზავება<br />სამუშაო ძალის განრიგი<br />ტრანსპორტირებისა და დისტრიბუციის პრობლემა<br />ტექსტური ფაილიდან მონაცემების იმპორტი<br />ინტერნეტიდან მონაცემების იმპორტი<br />მონაცემების ვალიდაცია<br />მონაცემების შეჯამება ჰისტოგრამის საშუალებით<br />მონაცემების შეჯამება - აღწერითი სტატისტიკა<br />მონაცემების ანალიზი შემაჯამებელი ცხრილების საშუალებით<br />მონაცემების შეჯამება მონაცემთა ბაზის ფუნქციებით<br />უნიკალური სიის შექმნა<br />მონაცემების კონსოლიდაცია<br />ქვე მაჯამებლების შექმნა<br />დიაგრამები<br />წრფივი დამოკიდებულების შეფასება<br />კორელაციური ანალიზი<br />მონაცემების გაფილტვრა: <br />ავტო ფილტრი<br />გაფართოვებული ფილტრი<br />მოძრავი საშუალოს გამოყენება დროითი მწკრივების ანალიზისთვის<br />ავტომატიზაცია მაკროსის გამოყენებით<br />მაკროსის ჩაწერა<br />მაკროსის რედაქტირება</p>\n<p>კურსი მოიცავს: 2 თვეს<br />ლექციის ხანგრძლივობა: 1სთ 30წთ<br />კვირაში ჩატარდება: 2 ლექცია<br /> <br />კურსის ღირებულება თვეში:<br />ინდივიდუალურად: 350 ლარი<br />ორ-სამ კაციან ჯგუფში: 300 ლარი<br />ჯგუფში 4 კაცი და მეტი: 250 ლარი</p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'bussinec-modeling-excel', '', '', '', 'ge', 3, 0, 0),
(233, 94, 8, 1523798625, 0, 'text', 'ექსელის სპეც კურსი - საფინანსო კომპანიის თანამშრომლებისთვის', '', '<p><strong>კურსი განკუთვნილია: </strong></p>\n<p>მათთვის ვისაც გააჩნია ექსელის საბაზისო ცოდნა და სურს მისი გამოყენებით გადაჭრას ფინანსური და ლოჯისტიკური აღრიცხვის პრობლემები საფინანსო ორგანიზაციაში. <br /> <br /><strong>კურსის მიზანი: </strong></p>\n<p>მსმენელს მისცეს ის პრაქტიკული ცოდნა, რომლის დახმარებითაც იგი მარტივად გადაჭრის რეალურ საკითხებს რომლებიც შეიძლება წამოიჭრას ფინანსური ორგანიზაციის ოპერირებისას. <br /> <br /><strong>კურსი განიხილავს, პრაქტიკაში დანერგილ, ექსელში მოდელირებულ ფორმებს, რომელიც კარგია როგორც თეორიული ცოდნის მისაღებად, ასევე შესაძლებელია მათი პრაქტიკაში გამოყენება მცირედი მოდიფიკაციის გზით.</strong></p>\n<p>ფინანსური უწყისები<br />ბალანსი<br />მოგება ზარალი<br />ფულადი ნაკადების მოძრაობა<br />მარტივი და რთული პროცენტი<br />სესხის ამორტიზაცია<br />თანამარი და არათანაბარი გადახდის გრაფიკები<br />მსესხებლის გადახდისუნარიანობის შეფასება<br />ბიზნეს სესხი<br />აგრო სესხი<br />საბონუსე სისტემა<br />საბონუსე სისტემის მოდელირება სესხის ექსპერტისთვის<br />საბონუსე სისტემის მოდელირება გაყიდვების აგენტებისთვის<br />სალაროს კუპიურული წყობის ფორმა<br />სტატიკური და დინამიური ანალიზისთვის<br />ეროვნული და უცხოური ვალუტებისთვის<br />მარაგების აღრიცხვა ოფის მენეჯერისთვის<br />ნაშთების აღრიცხვა<br />განაწილება თანამშრომლებზე<br />საკრედიტო პორტფელის რისკის ანალიზი<br />მიგრაციის მოდელი<br />ვინტიჯის მოდელი<br />ადამიანური რესურსების მართვა<br />თანამშრომელთა აღრიცხვა<br />შვებულებებისა და ტრენინგების აღრიცხვა</p>\n<p><strong>კურსი მოიცავს: 8 ლექციას</strong><br /><strong>კურსის ღირებულება ინდივიდუალურად: 280 ლარი</strong><br /><strong>ორ-სამ კაციან ჯგუფში: 240 ლარი</strong><br /><strong>ჯგუფში 4 კაცი და მეტი: 200 ლარი</strong></p>', 'finansial excel', '', '', '', 'en', 4, 0, 0),
(234, 94, 8, 1523798625, 0, 'text', 'ექსელის სპეც კურსი - საფინანსო კომპანიის თანამშრომლებისთვის', '', '<p><strong>კურსი განკუთვნილია: </strong></p>\n<p>მათთვის ვისაც გააჩნია ექსელის საბაზისო ცოდნა და სურს მისი გამოყენებით გადაჭრას ფინანსური და ლოჯისტიკური აღრიცხვის პრობლემები საფინანსო ორგანიზაციაში. <br /> <br /><strong>კურსის მიზანი: </strong></p>\n<p>მსმენელს მისცეს ის პრაქტიკული ცოდნა, რომლის დახმარებითაც იგი მარტივად გადაჭრის რეალურ საკითხებს რომლებიც შეიძლება წამოიჭრას ფინანსური ორგანიზაციის ოპერირებისას. <br /> <br /><strong>კურსი განიხილავს, პრაქტიკაში დანერგილ, ექსელში მოდელირებულ ფორმებს, რომელიც კარგია როგორც თეორიული ცოდნის მისაღებად, ასევე შესაძლებელია მათი პრაქტიკაში გამოყენება მცირედი მოდიფიკაციის გზით.</strong></p>\n<p>ფინანსური უწყისები<br />ბალანსი<br />მოგება ზარალი<br />ფულადი ნაკადების მოძრაობა<br />მარტივი და რთული პროცენტი<br />სესხის ამორტიზაცია<br />თანამარი და არათანაბარი გადახდის გრაფიკები<br />მსესხებლის გადახდისუნარიანობის შეფასება<br />ბიზნეს სესხი<br />აგრო სესხი<br />საბონუსე სისტემა<br />საბონუსე სისტემის მოდელირება სესხის ექსპერტისთვის<br />საბონუსე სისტემის მოდელირება გაყიდვების აგენტებისთვის<br />სალაროს კუპიურული წყობის ფორმა<br />სტატიკური და დინამიური ანალიზისთვის<br />ეროვნული და უცხოური ვალუტებისთვის<br />მარაგების აღრიცხვა ოფის მენეჯერისთვის<br />ნაშთების აღრიცხვა<br />განაწილება თანამშრომლებზე<br />საკრედიტო პორტფელის რისკის ანალიზი<br />მიგრაციის მოდელი<br />ვინტიჯის მოდელი<br />ადამიანური რესურსების მართვა<br />თანამშრომელთა აღრიცხვა<br />შვებულებებისა და ტრენინგების აღრიცხვა</p>\n<p><strong>კურსი მოიცავს: 8 ლექციას</strong><br /><strong>კურსის ღირებულება ინდივიდუალურად: 280 ლარი</strong><br /><strong>ორ-სამ კაციან ჯგუფში: 240 ლარი</strong><br /><strong>ჯგუფში 4 კაცი და მეტი: 200 ლარი</strong></p>\n<p>&nbsp;</p>\n<p>[registration]</p>', 'finansial-excel', '', '', '', 'ge', 4, 0, 0),
(235, 95, 14, 1523817395, 0, 'text', 'ფინანსური მომსახურება', '', '', 'finansial service', '', '', '', 'en', 3, 0, 1),
(236, 95, 14, 1523817395, 0, 'text', 'ფინანსური მომსახურება', '', '', 'finansial service', '', '', '', 'ge', 3, 0, 1),
(237, 96, 7, 1523868182, 0, 'text', 'გეოინფრომაციული სისტემები', '', '<p>გეოგრაფიული საინფორმაციო სისტემა არის კომპიუტერულ რუკებსა და მონაცემთა ბაზებზე დაფუძნებული საინფორმაციო სისტემა, რომელიც გამოიყენება სივრცეში განთავსებული მონაცემების შეგროვების, შენახვის, მართვისა და ანალიზისთვის.<br />ჩვენი კურსდამთავრებულები არიან: თელასის, საქართველოს რკინიგზის, ჯორჯიან ვოთერ ენდ ფაუერის, საჯარო რეესტრის, კაუკასუს ონლაინის, იუსტიციის სახლის, სხვადასხვა მუნიციპალიტეტების და სხვა ცნობილი კომპანიების კადრები!</p>\n<p>ხორციელდება კორპორატიული მომხმარებლებისთვის მსემენელთა მომზადება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით, სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე, შეიქმნება სპეციალიზირებული პროგრამა.</p>\n<p>გეოინფორმაციული სისტემები რამდენიმე ძირითადი მიმართულებისგან შედგება</p>', 'geoinformacional systems', '', '', '', 'en', 7, 0, 0),
(238, 96, 7, 1523868182, 0, 'text', 'გეოინფრომაციული სისტემები', '', '', 'geoinformacional-systems', '', '', '', 'ge', 7, 0, 0),
(239, 97, 96, 1523868605, 0, 'text', 'გეოინფორმაციული სისტემები ArcGIS 10.4', '', '', 'ArcGIS 10.4', '', '', '', 'en', 1, 0, 0),
(240, 97, 96, 1523868605, 0, 'text', 'გეოინფორმაციული სისტემები - ArcGIS 10.4', '', '<p>გეოგრაფიული საინფორმაციო სისტემა არის კომპიუტერულ რუკებსა და მონაცემთა ბაზებზე დაფუძნებული საინფორმაციო სისტემა, რომელიც გამოიყენება სივრცეში განთავსებული მონაცემების შეგროვების, შენახვის, მართვისა და ანალიზისთვის.<br />ჩვენი კურსდამთავრებულები არიან: თელასის, საქართველოს რკინიგზის, ჯორჯიან ვოთერ ენდ ფაუერის, საჯარო რეესტრის, კაუკასუს ონლაინის, იუსტიციის სახლის, სხვადასხვა მუნიციპალიტეტების და სხვა ცნობილი კომპანიების კადრები!</p>\n<p>ხორციელდება კორპორატიული მომხმარებლებისთვის მსემენელთა მომზადება, როგორც ჩვენს ოფისში, ასევე ადგილზე მოსვლით, სპეციალურად თქვენი მოთხოვნებიდან გამომდინარე, შეიქმნება სპეციალიზირებული პროგრამა.</p>\n<p>გეოინფორმაციული სისტემები რამდენიმე ძირითადი მიმართულებისგან შედგება.</p>\n<p>სად შეუძლია GIS-ის სპეციალისტს მუშაობა?<br />ნებისმიერ სახელმწიფო თუ კერძო დაწესებულებაში, რომელთაც აქვთ სივრცით ინფორმაციასთან საქმე. კერძოდ:</p>\n<p>** თავდაცვის სფეროში<br />** შინაგან საქმეთა უწყებაში<br />** საჯარო რეესტრში<br />** საჯარო რეესტრის ავტორიზებულ კერძო ამზომველ კომპანიებში<br />** მერიის დაქვემდებარების უწყებებში<br />** ტურიზმის დეპარტამენტში<br />** თელასში<br />** თბილგაზში<br />** თბილისის წყალში<br />** არქიტექტურულ სამსახურებში<br />** სამშენებლო კომპანიებში<br />** სასწავლო-სამეცნერო დაწესებულებებში<br />** სკოლებში<br />** მსხვილ კორპორაციებში (გაზისა და ნავთობის, ელექტროკავშირი და სხვა).</p>\n<p>გაკვეთილი 1. ზოგადი საკითხები<br />გაკვეთილი 2. გის-ის მონაცემთა სახეები<br />გაკვეთილი 3. გის-ის ვექტორული თემატური ფენების დიგიტალიზაცია (აციფრვა)<br />გაკვეთილი 4. მონაცემთა ატრიბუტული ცხრილები<br />გაკვეთილი 5. მონაცემთა მონიშვნა (Selection)<br />გაკვეთილი 6. მონაცემთა ვიზუალიზაცია<br />გაკვეთილი 7. წარწერებთან მუშაობა<br />გაკვეთილი 8. ციფრული რუკის კომპოზიცია <br />გაკვეთილი 9. სხვადასხვა ტიპის ციფრული რუკების გენერირება<br />გაკვეთილი 10. სასარგებლო ინსტრუმენტები და უნარ-ჩვევები</p>\n<p>სწავლის ხანგრძლივობა 10 - 2 სთ-იანი ლექცია - ორ კაციან ჯგუფში - 700 ლარი <br />სწავლის ხანგრძლივობა 10 - 2 სთ-იანი ლექცია - სამ-ოთხკაციან ჯგუფში - 600 ლარი <br />სწავლის ხანგრძლივობა 10 - 2 სთ-იანი ლექცია - ხუთ-ათ კაციან ჯგუფში - 500 ლარი</p>\n<p>&nbsp;[registration]</p>', 'ArcGIS-10.4', '', '', '', 'ge', 1, 0, 0),
(243, 99, 96, 1523869097, 0, 'text', 'ლანდშაფტების 3D მოდელირება', '', '', 'ArcGIS 3D Analyst', '', '', '', 'en', 3, 0, 0),
(241, 98, 96, 1523868701, 0, 'text', 'გეომონაცემთა ბაზები და პროგრამირება (პროგრამირება ArcGIS-ის გარემოში)', '', '', 'arcgis proggraming', '', '', '', 'en', 2, 0, 0),
(242, 98, 96, 1523868701, 0, 'text', 'გეომონაცემთა ბაზები და პროგრამირება', '', '<p>პროგრამირება ArcGIS-ის გარემოში</p>\n<p>1. ArcGIS-ის დაპროგრამების საშუალებები (VBA) და ArcObjects-ის მოდელი (2 სთ)<br />2. გეომონაცემების გამოყენება (მონაცემთა მწკრივები და ფენები. მათი ატრიბუტები, დამუშავება, გარდაქმნა და საკოორდინატო სისტემებთან მიბმა) (2-3 სთ)<br />3. მონაცემთა გამოსახვა (2 სთ)<br />4. ArcObjects-ის მოდელის გამოყენება გეომონაცემთა შესწავლისას (2 სთ)<br />5. ოპერაციები ვექტორულ მონაცემებზე (1.5-2 სთ)<br />6. ოპერაციები რასტრულ მონაცემებზე (1.5-2 სთ)<br />7. ArcObjects-ის გამოყენება ადგილობრივი რუკების შექმნისას და სივრცული ინტერპოლაციის დროს (2-3 სთ)</p>\n<p>სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - ორ კაციან ჯგუფში - 600 ლარი <br />სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - სამ-ოთხ კაციან ჯგუფში - 500 ლარი <br />სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - ხუთ-ათ კაციან ჯგუფში - 400 ლარი</p>\n<p>[registration]</p>', 'arcgis-proggraming', '', '', '', 'ge', 2, 0, 0),
(244, 99, 96, 1523869097, 0, 'text', 'ლანდშაფტების 3D მოდელირება', '', '<p>ArcGIS 3D Analyst - სამგანზომილებიანი გეოსაინფორმაციო სისტემა</p>\n<p>ArcGIS 3D Analyst-ის შესაძლებლობები და გამოყენება (1 სთ)</p>\n<p>1. შესავალი კურსი (2 სთ)<br />2. ზედაპირების სამგანზომილებიანი მოდელების (მაგ., TIN da DEM) შექმნა (2 სთ)<br />3. სამგანზომლებიანი მონაცემების მართვა (2 სთ)<br />4. ზედაპირების გამოსახვა (2 სთ)<br />5. ზედაპირების ანალიზი (2 სთ)<br />6. 3D ვიზუალიზაცია (2 სთ)<br />7. 3D ანიმაცია (2 სთ).</p>\n<p>სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - ორ კაციან ჯგუფში - 600 ლარი<br />სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - სამ-ოთხ კაციან ჯგუფში - 500 ლარი <br />სწავლის ხანგრძლივობა 7 - 2 სთ-იანი ლექცია - ხუთ-ათ კაციან ჯგუფში - 400 ლარი</p>\n<p>[registration]</p>', 'ArcGIS-3D-Analyst', '', '', '', 'ge', 3, 0, 0),
(245, 100, 96, 1523869468, 0, 'text', 'გამოყენებითი კარტოგარფიის და გეოდეზიის საფუძვლები', '', '', 'Applied cartography and geodesy basics', '', '', '', 'en', 4, 0, 0),
(246, 100, 96, 1523869468, 0, 'text', 'გამოყენებითი კარტოგარფიის და გეოდეზიის საფუძვლები', '', '<p>GIS-ის სპეციალისტებისა და საჯარო რეესტრის ავტორიზებული ამზომველი ორგანიზაციებისათვის</p>\n<p>1. რუკა და მისი ელემენტები<br />2. რუკის მათემატიკური საფუძვლები<br />3. რუკის გეოდეზიური საფუძველი<br />4. ტოპოგრაფიული რუკა და გეგმა<br />5. დამატებითი მასალა</p>\n<p>სწავლის ხანგრძლივობა 5 - 1,5 სთ-იანი ლექცია - ორ კაციან ჯგუფში - 500 ლარი<br />სწავლის ხანგრძლივობა 5 - 1,5 სთ-იანი ლექცია - სამ-ოთხ კაციან ჯგუფში - 400 ლარი <br />სწავლის ხანგრძლივობა 5 - 1,5 სთ-იანი ლექცია - ხუთ-ათ კაციან ჯგუფში - 300 ლარი</p>\n<p>[registration]</p>', 'Applied-cartography-and-geodesy-basics', '', '', '', 'ge', 4, 0, 0),
(253, 104, 0, 1524474956, 1, 'text', 'Socar Georgia Gaz', '<p>test</p>', '<p>aksjd akjsdn ajksnd akjsnd kjasnd jkasd njkasn dkjasnd kjasd l;asd ,askjd aslkd akjsd nkjasnd kjasd</p>', 'socar-georgia-gaz', '', '', '', 'en', 4, 0, 0),
(254, 104, 0, 1524474956, 1, 'text', 'Socar Georgia Gaz', '<p>test</p>', '<p>aksjd akjsdn ajksnd akjsnd kjasnd jkasd njkasn dkjasnd kjasd l;asd ,askjd aslkd akjsd nkjasnd kjasd</p>', 'socar-georgia-gaz', '', '', '', 'ge', 4, 0, 0);

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
(514, 8, '/public/filemanager/18359404_828453450636680_8420246105410845211_o.jpg', 'staff', 'ge', 0),
(203, 65, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'en', 1),
(490, 9, '/public/filemanager/tbclogo-cr-721x405.jpg', 'partners', 'ge', 0),
(489, 9, '/public/filemanager/tbclogo-cr-721x405.jpg', 'partners', 'en', 0),
(312, 16, '/public/filemanager/profilis foto.png', 'slider', 'ge', 1),
(311, 16, '/public/filemanager/profilis foto.png', 'slider', 'en', 1),
(263, 41, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'staff', 'en', 1),
(267, 77, '/public/filemanager/11188497_10204300159769044_4476653372014215508_n.jpg', 'staff', 'en', 0),
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
(518, 64, '/public/filemanager/pic_19_8_b.jpg', 'news', 'ge', 0),
(482, 18, '/public/filemanager/11171949_884642661595443_281946515_o.jpg', 'text', 'ge', 0),
(204, 65, '/public/filemanager/gallery/28879150_407704549657010_808531807_o.jpg', 'gallery', 'ge', 1),
(205, 66, '/public/filemanager/slider/profile.jpg', 'gallery', 'en', 1),
(206, 66, '/public/filemanager/slider/profile.jpg', 'gallery', 'ge', 1),
(207, 67, '/public/filemanager/Desert.jpg', 'ongoing', 'en', 1),
(208, 67, '/public/filemanager/Desert.jpg', 'ongoing', 'ge', 1),
(493, 119, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'en', 0),
(492, 7, '/public/filemanager/1111.jpg', 'text', 'ge', 0),
(256, 68, '/public/filemanager/Hydrangeas.jpg', 'vacancies', 'ge', 1),
(255, 68, '/public/filemanager/Hydrangeas.jpg', 'vacancies', 'en', 1),
(234, 70, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'ge', 1),
(233, 70, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'en', 1),
(235, 73, '/public/filemanager/slider/Desert.jpg', 'slider', 'en', 1),
(236, 73, '/public/filemanager/slider/Desert.jpg', 'slider', 'ge', 1),
(517, 64, '/public/filemanager/pic_19_8_b.jpg', 'news', 'en', 0),
(440, 74, '/public/filemanager/1.jpg', 'gallery', 'ge', 0),
(439, 74, '/public/filemanager/1.jpg', 'gallery', 'en', 0),
(247, 75, '/public/filemanager/slider/Koala.jpg', 'slider', 'en', 1),
(253, 76, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'en', 1),
(254, 76, '/public/filemanager/partners/logo-partner-01[1].png', 'partners', 'ge', 1),
(262, 82, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'text', 'ge', 0),
(261, 82, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'text', 'en', 0),
(264, 41, '/public/filemanager/21752449_10210394257677683_3634413079243991058_n.jpg', 'staff', 'ge', 1),
(268, 77, '/public/filemanager/11188497_10204300159769044_4476653372014215508_n.jpg', 'staff', 'ge', 0),
(272, 81, '/public/filemanager/19221616_848240541991304_9090221476517615912_o.jpg', 'staff', 'ge', 0),
(271, 81, '/public/filemanager/19221616_848240541991304_9090221476517615912_o.jpg', 'staff', 'en', 0),
(566, 78, '/public/filemanager/18527468_832890613526297_1929063127880407976_o.jpg', 'staff', 'ge', 0),
(565, 78, '/public/filemanager/18527468_832890613526297_1929063127880407976_o.jpg', 'staff', 'en', 0),
(513, 8, '/public/filemanager/18359404_828453450636680_8420246105410845211_o.jpg', 'staff', 'en', 0),
(568, 94, '/public/filemanager/19146262_846858775462814_6551429477230869815_n.jpg', 'staff', 'ge', 0),
(567, 94, '/public/filemanager/19146262_846858775462814_6551429477230869815_n.jpg', 'staff', 'en', 0),
(293, 6, '/public/filemanager/profilis foto.png', 'slider', 'en', 1),
(316, 95, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'ge', 1),
(315, 95, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'en', 1),
(299, 96, '/public/filemanager/managmenti finansebi.png', 'slider', 'en', 1),
(300, 96, '/public/filemanager/managmenti finansebi.png', 'slider', 'ge', 1),
(318, 97, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'slider', 'ge', 1),
(317, 97, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'slider', 'en', 1),
(376, 96, '/public/filemanager/esri-head.png', 'text', 'ge', 0),
(348, 8, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'text', 'ge', 0),
(422, 99, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'ge', 0),
(421, 99, '/public/filemanager/12696953_594851467330214_7932492631820914457_o.png', 'slider', 'en', 0),
(368, 100, '/public/filemanager/profilis foto.png', 'slider', 'ge', 0),
(367, 100, '/public/filemanager/profilis foto.png', 'slider', 'en', 0),
(328, 9, '/public/filemanager/3.jpg', 'text', 'ge', 0),
(327, 9, '/public/filemanager/3.jpg', 'text', 'en', 0),
(329, 39, '/public/filemanager/inglisuri rusuli.png', 'text', 'en', 0),
(330, 39, '/public/filemanager/inglisuri rusuli.png', 'text', 'ge', 0),
(331, 41, '/public/filemanager/7.jpg', 'text', 'en', 0),
(332, 41, '/public/filemanager/7.jpg', 'text', 'ge', 0),
(372, 50, '/public/filemanager/featGH.jpg', 'text', 'ge', 0),
(377, 84, '/public/filemanager/1377393_4774046728256_2133101185_n.jpg', 'staff', 'en', 0),
(371, 50, '/public/filemanager/featGH.jpg', 'text', 'en', 0),
(339, 72, '/public/filemanager/managmenti finansebi.png', 'text', 'en', 0),
(340, 72, '/public/filemanager/managmenti finansebi.png', 'text', 'ge', 0),
(347, 8, '/public/filemanager/12688347_597254993756528_7748117404101162670_n.png', 'text', 'en', 0),
(375, 96, '/public/filemanager/esri-head.png', 'text', 'en', 0),
(378, 84, '/public/filemanager/1377393_4774046728256_2133101185_n.jpg', 'staff', 'ge', 0),
(379, 101, '/public/filemanager/12164937_981069075287174_1108915828_o.jpg', 'staff', 'en', 0),
(380, 101, '/public/filemanager/12164937_981069075287174_1108915828_o.jpg', 'staff', 'ge', 0),
(381, 83, '/public/filemanager/12196358_966228063437904_3576434557539162600_n.jpg', 'staff', 'en', 0),
(382, 83, '/public/filemanager/12196358_966228063437904_3576434557539162600_n.jpg', 'staff', 'ge', 0),
(383, 82, '/public/filemanager/13901366_10205429692221759_1544414577075304099_n.jpg', 'staff', 'en', 0),
(384, 82, '/public/filemanager/13901366_10205429692221759_1544414577075304099_n.jpg', 'staff', 'ge', 0),
(385, 85, '/public/filemanager/11870799_862971910404950_1840413236988047045_n.jpg', 'staff', 'en', 0),
(386, 85, '/public/filemanager/11870799_862971910404950_1840413236988047045_n.jpg', 'staff', 'ge', 0),
(387, 86, '/public/filemanager/17800306_1885501021739064_4892206640904572823_n.jpg', 'staff', 'en', 0),
(388, 86, '/public/filemanager/17800306_1885501021739064_4892206640904572823_n.jpg', 'staff', 'ge', 0),
(570, 80, '/public/filemanager/16640535_1797589367231510_6525758461789530825_n.jpg', 'staff', 'ge', 0),
(400, 79, '/public/filemanager/bandicam 2018-04-16 16-38-25-754.jpg', 'staff', 'ge', 0),
(399, 79, '/public/filemanager/bandicam 2018-04-16 16-38-25-754.jpg', 'staff', 'en', 0),
(393, 91, '/public/filemanager/12373432_10205158494911067_3246514637602806548_n.jpg', 'staff', 'en', 0),
(394, 91, '/public/filemanager/12373432_10205158494911067_3246514637602806548_n.jpg', 'staff', 'ge', 0),
(395, 90, '/public/filemanager/18738703_1727116917303434_2242938732098223341_o.jpg', 'staff', 'en', 0),
(396, 90, '/public/filemanager/18738703_1727116917303434_2242938732098223341_o.jpg', 'staff', 'ge', 0),
(397, 89, '/public/filemanager/16730492_1420564574662582_7106513673582169652_n.jpg', 'staff', 'en', 0),
(398, 89, '/public/filemanager/16730492_1420564574662582_7106513673582169652_n.jpg', 'staff', 'ge', 0),
(401, 87, '/public/filemanager/10845694_1032517593443703_4636784827525185504_o.jpg', 'staff', 'en', 0),
(402, 87, '/public/filemanager/10845694_1032517593443703_4636784827525185504_o.jpg', 'staff', 'ge', 0),
(403, 88, '/public/filemanager/11329792_994862303871688_20089553617910455_n.jpg', 'staff', 'en', 0),
(404, 88, '/public/filemanager/11329792_994862303871688_20089553617910455_n.jpg', 'staff', 'ge', 0),
(405, 92, '/public/filemanager/17883498_10211255162526579_8265638243434087314_n.jpg', 'staff', 'en', 0),
(406, 92, '/public/filemanager/17883498_10211255162526579_8265638243434087314_n.jpg', 'staff', 'ge', 0),
(407, 93, '/public/filemanager/12795449_1229870497040725_6146309267461117831_n.jpg', 'staff', 'en', 0),
(408, 93, '/public/filemanager/12795449_1229870497040725_6146309267461117831_n.jpg', 'staff', 'ge', 0),
(569, 80, '/public/filemanager/16640535_1797589367231510_6525758461789530825_n.jpg', 'staff', 'en', 0),
(444, 102, '/public/filemanager/8.jpg', 'news', 'ge', 0),
(443, 102, '/public/filemanager/8.jpg', 'news', 'en', 0),
(419, 103, '/public/filemanager/8.jpg', 'news', 'en', 1),
(420, 103, '/public/filemanager/8.jpg', 'news', 'ge', 1),
(484, 104, '/public/filemanager/logorom.gif', 'partners', 'ge', 0),
(483, 104, '/public/filemanager/logorom.gif', 'partners', 'en', 0),
(486, 105, '/public/filemanager/logo.png', 'partners', 'ge', 0),
(485, 105, '/public/filemanager/logo.png', 'partners', 'en', 0),
(488, 106, '/public/filemanager/download.png', 'partners', 'ge', 0),
(487, 106, '/public/filemanager/download.png', 'partners', 'en', 0),
(555, 107, '/public/filemanager/marinas bug.jpg', 'gallery', 'en', 0),
(441, 108, '/public/filemanager/20151004_110957.jpg', 'gallery', 'en', 0),
(442, 108, '/public/filemanager/20151004_110957.jpg', 'gallery', 'ge', 0),
(481, 18, '/public/filemanager/11171949_884642661595443_281946515_o.jpg', 'text', 'en', 0),
(449, 84, '/public/filemanager/astoria01.jpg', 'text', 'en', 0),
(450, 84, '/public/filemanager/astoria01.jpg', 'text', 'ge', 0),
(454, 109, '/public/filemanager/menejmentissur.jpg', 'finished', 'ge', 0),
(453, 109, '/public/filemanager/menejmentissur.jpg', 'finished', 'en', 0),
(491, 7, '/public/filemanager/1111.jpg', 'text', 'en', 0),
(463, 110, '/public/filemanager/finance10.jpg', 'news', 'en', 0),
(464, 110, '/public/filemanager/finance10.jpg', 'news', 'ge', 0),
(465, 111, '/public/filemanager/medical-office.jpg', 'news', 'en', 0),
(466, 111, '/public/filemanager/medical-office.jpg', 'news', 'ge', 0),
(467, 112, '/public/filemanager/excel 2016.png', 'news', 'en', 0),
(468, 112, '/public/filemanager/excel 2016.png', 'news', 'ge', 0),
(469, 113, '/public/filemanager/rs.jpg', 'news', 'en', 0),
(470, 113, '/public/filemanager/rs.jpg', 'news', 'ge', 0),
(471, 114, '/public/filemanager/111.jpg', 'gallery', 'en', 1),
(472, 114, '/public/filemanager/111.jpg', 'gallery', 'ge', 1),
(473, 115, '/public/filemanager/20171214_140018.jpg', 'gallery', 'en', 0),
(474, 115, '/public/filemanager/20171214_140018.jpg', 'gallery', 'ge', 0),
(475, 116, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'en', 0),
(476, 116, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'ge', 0),
(477, 117, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'en', 1),
(478, 117, '/public/filemanager/11800998_938798792847536_993473527_o.jpg', 'gallery', 'ge', 1),
(494, 119, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'ge', 0),
(495, 120, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'en', 1),
(496, 120, '/public/filemanager/IMG_20180417_115950_1.jpg', 'ongoing', 'ge', 1),
(499, 10, '/public/filemanager/^E070141F31ACCC154E0D601BE1FB0D9B59B2828C3B8598A542^pimgpsh_fullsize_distr.jpg', 'text', 'en', 0),
(500, 10, '/public/filemanager/^E070141F31ACCC154E0D601BE1FB0D9B59B2828C3B8598A542^pimgpsh_fullsize_distr.jpg', 'text', 'ge', 0),
(506, 130, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'slider', 'ge', 0),
(505, 130, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'slider', 'en', 0),
(519, 131, '/public/filemanager/8424swiscapital.jpg', 'partners', 'en', 0),
(520, 131, '/public/filemanager/8424swiscapital.jpg', 'partners', 'ge', 0),
(521, 132, '/public/filemanager/download.jpg', 'partners', 'en', 0),
(522, 132, '/public/filemanager/download.jpg', 'partners', 'ge', 0),
(523, 133, '/public/filemanager/embawood.jpg', 'partners', 'en', 0),
(524, 133, '/public/filemanager/embawood.jpg', 'partners', 'ge', 0),
(532, 134, '/public/filemanager/963.jpg', 'gallery', 'ge', 0),
(531, 134, '/public/filemanager/963.jpg', 'gallery', 'en', 0),
(527, 135, '/public/filemanager/2332.jpg', 'gallery', 'en', 0),
(528, 135, '/public/filemanager/2332.jpg', 'gallery', 'ge', 0),
(533, 136, '/public/filemanager/2015-07-10 10.25.31.jpg', 'gallery', 'en', 0),
(534, 136, '/public/filemanager/2015-07-10 10.25.31.jpg', 'gallery', 'ge', 0),
(535, 137, '/public/filemanager/20170626_131546.jpg', 'gallery', 'en', 0),
(536, 137, '/public/filemanager/20170626_131546.jpg', 'gallery', 'ge', 0),
(537, 138, '/public/filemanager/20150310_192927.jpg', 'gallery', 'en', 0),
(538, 138, '/public/filemanager/20150310_192927.jpg', 'gallery', 'ge', 0),
(539, 139, '/public/filemanager/9233.jpg', 'gallery', 'en', 0),
(540, 139, '/public/filemanager/9233.jpg', 'gallery', 'ge', 0),
(541, 140, '/public/filemanager/17390797_799343103547715_7449022862767986193_o.jpg', 'gallery', 'en', 0),
(542, 140, '/public/filemanager/17390797_799343103547715_7449022862767986193_o.jpg', 'gallery', 'ge', 0),
(543, 141, '/public/filemanager/33.jpg', 'gallery', 'en', 0),
(544, 141, '/public/filemanager/33.jpg', 'gallery', 'ge', 0),
(545, 142, '/public/filemanager/20161110_185451.jpg', 'gallery', 'en', 0),
(546, 142, '/public/filemanager/20161110_185451.jpg', 'gallery', 'ge', 0),
(550, 143, '/public/filemanager/0202.jpg', 'gallery', 'ge', 0),
(549, 143, '/public/filemanager/0202.jpg', 'gallery', 'en', 0),
(551, 144, '/public/filemanager/gvinis lab.jpg', 'gallery', 'en', 0),
(552, 144, '/public/filemanager/gvinis lab.jpg', 'gallery', 'ge', 0),
(553, 145, '/public/filemanager/ingas kursi.jpg', 'gallery', 'en', 0),
(554, 145, '/public/filemanager/ingas kursi.jpg', 'gallery', 'ge', 0),
(556, 107, '/public/filemanager/marinas bug.jpg', 'gallery', 'ge', 0),
(557, 146, '/public/filemanager/tamos korp.jpg', 'gallery', 'en', 0),
(558, 146, '/public/filemanager/tamos korp.jpg', 'gallery', 'ge', 0),
(559, 147, '/public/filemanager/xatuna reg.jpg', 'gallery', 'en', 0),
(560, 147, '/public/filemanager/xatuna reg.jpg', 'gallery', 'ge', 0),
(561, 148, '/public/filemanager/menejmentissur zv.jpg', 'gallery', 'en', 0),
(562, 148, '/public/filemanager/menejmentissur zv.jpg', 'gallery', 'ge', 0),
(563, 149, '/public/filemanager/sistema da qs.jpg', 'gallery', 'en', 0),
(564, 149, '/public/filemanager/sistema da qs.jpg', 'gallery', 'ge', 0),
(571, 104, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'text', 'en', 0),
(572, 104, '/public/filemanager/10713000_387781688037194_6003891782558959171_n.png', 'text', 'ge', 0);

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
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usefull`
--

INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `lang`, `visibility`, `status`) VALUES
(1, 1, 0, 1523044800, '2018-04-06', 'contactdetails', 'test', '<p>tesa</p>', 'test', 'te', 'en', 0, 1),
(2, 1, 0, 1523044800, '2018-04-06', 'contactdetails', 'test', '<p>tesa</p>', 'test', 'te', 'ge', 0, 1),
(3, 2, 0, 1523044800, '2018-04-06', 'contactdetails', 'მორე ტესტ', '<p>ტესტ</p>', '', 'empty', 'en', 0, 1),
(4, 2, 0, 1523044800, '2018-04-06', 'contactdetails', 'მორე ტესტ', '<p>ტესტ</p>', '', 'empty', 'ge', 0, 1),
(5, 3, 0, 1523736000, '2018-04-15', 'contactdetails', 'Contact numbers', '<p>2371939; 551196110; 593618213</p>', '', 'empty', 'en', 0, 0),
(6, 3, 0, 1523736000, '2018-04-15', 'contactdetails', 'საკონტაქტო ნომრები', '<p>2371939; 551196110; 593618213</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(7, 4, 0, 1523649600, '2018-04-14', 'contactdetails', 'Address', '<p>Str. Pekini&nbsp;#28, Floor #6x</p>', '', 'empty', 'en', 0, 0),
(65, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>Usefull Links</p>', '', 'empty', 'en', 0, 0),
(8, 4, 0, 1523649600, '2018-04-14', 'contactdetails', 'მისამართი', '<p>პეკინის #28 მე-6-ე სართული</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(9, 5, 0, 1523044800, '2018-04-06', 'contactdetails', 'Email', '<p><a href=\"http://trip.404.ge/\">ninovipicg@gmail.com</a></p>', '', 'empty', 'en', 0, 0),
(10, 5, 0, 1523044800, '2018-04-06', 'contactdetails', 'ელ-ფოსტა', '<p><a href=\"http://trip.404.ge/\">ninovipicg@gmail.com</a></p>', '', 'empty', 'ge', 0, 0),
(11, 6, 0, 1523044800, '2018-04-07', 'slider', 'photo 1', '<p>photo&nbsp;1</p>', '', 'empty', 'en', 0, 1),
(12, 6, 0, 1523044800, '2018-04-07', 'slider', 'ფოტო 2', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(13, 7, 0, 1523822400, '2018-04-16', 'slogan', 'Slogan', '<p>,,Quality, for your success\"</p>', '', 'empty', 'en', 0, 0),
(15, 8, 0, 1523995200, '2018-04-18', 'staff', 'თამუნა თევზაძე', '', 'IT ინსტრუქტორი', '[facebook=https://www.facebook.com/ttevzadze]', 'en', 0, 0),
(263, 132, 0, 1524081600, '2018-04-19', 'partners', 'სოკარ ჯორჯია', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(264, 132, 0, 1524081600, '2018-04-19', 'partners', 'სოკარ ჯორჯია', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(265, 133, 0, 1524081600, '2018-04-19', 'partners', 'ემბავუდ ჯორჯია', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(266, 133, 0, 1524081600, '2018-04-19', 'partners', 'ემბავუდ ჯორჯია', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(267, 134, 0, 1524081600, '2018-04-19', 'gallery', 'ლოგისტიკის კურსი-მბავუდის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(268, 134, 0, 1524081600, '2018-04-19', 'gallery', 'ლოგისტიკის კურსი-რომპეტროლის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(269, 135, 0, 1524081600, '2018-04-19', 'gallery', 'საოფისე პროგრამები-რომპეტროლის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(270, 135, 0, 1524081600, '2018-04-19', 'gallery', 'საოფისე პროგრამები-რომპეტროლის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(271, 136, 0, 1524081600, '2018-04-19', 'gallery', 'ბუღალტერიის კორპორატიული ტრენინგი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(272, 136, 0, 1524081600, '2018-04-19', 'gallery', 'ბუღალტერიის კორპორატიული ტრენინგი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(273, 137, 0, 1524081600, '2018-04-19', 'gallery', 'ტურიზმის მენეჯმენტი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(274, 137, 0, 1524081600, '2018-04-19', 'gallery', 'ტურიზმის მენეჯმენტი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(275, 138, 0, 1524081600, '2018-04-19', 'gallery', 'ფარმაკოლოგიის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(276, 138, 0, 1524081600, '2018-04-19', 'gallery', 'ფარმაკოლოგიის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(14, 7, 0, 1523822400, '2018-04-16', 'slogan', 'Hidden Field', '<p>ხარისხი თქვენი წარმატებისთვის!</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(16, 8, 0, 1523995200, '2018-04-18', 'staff', 'თამუნა თევზაძე', '', 'კომპიუტერული პროგრამების სპეციალისტი', '[facebook=https://www.facebook.com/ttevzadze]', 'ge', 0, 0),
(154, 77, 0, 1523736000, '2018-04-15', 'staff', 'ნინო მღებრიშვილი', '', 'დირექტორი', 'empty', 'ge', 0, 0),
(155, 78, 0, 1523908800, '2018-04-17', 'staff', 'მარინა წიკლაშვილი', '', '', 'empty', 'en', 0, 0),
(156, 78, 0, 1523908800, '2018-04-17', 'staff', 'მარინა წიკლაშვილი', '', '', 'empty', 'ge', 0, 0),
(157, 79, 0, 1523736000, '2018-04-15', 'staff', 'ინგა შალიბაშვილი', '', '', 'empty', 'en', 0, 0),
(158, 79, 0, 1523736000, '2018-04-15', 'staff', 'ინგა შალიბაშვილი', '', '', 'empty', 'ge', 0, 0),
(159, 80, 0, 1523736000, '2018-04-15', 'staff', 'ალექსანდრე დვალი', '', '', 'empty', 'en', 0, 0),
(160, 80, 0, 1523736000, '2018-04-15', 'staff', 'ალექსანდრე დვალი', '<p>Education:</p>\n<p>PHD in Economics (2014 - Present)<br /> TSU &ndash; Faculty of Business and Economics. Supervisor &ndash; Iuri Ananiashvili <br />Masters Program (2008 - 2010)</p>\n<p>ISET (International School of Economics at TSU) International graduate program in economics, taught in English by international faculty. Coursework in Money and Banking, International Trade, International Finance, Environmental Economics, Energy Economics, Public Economics, Labor Economics, Advanced Macroeconomics, Advanced Microeconomics, Advanced Statistics and Econometrics, Mathematics, Game theory etc.</p>\n<p>Bachelors program (1997 -2002)<br />I. Gogebashvili Telavi State University, Faculty of Physics and Mathematics, Specialization of Mathematics and Informatics (Diploma with honor)</p>\n<p>Research - Masters thesis: &ldquo;Microloan officers&rsquo; incentives to cheat&rdquo;.</p>\n<p>Training courses:</p>\n<p>Training &ldquo;Financial Stability Stress Testing for Banking Systems&rdquo; &ndash; at Joint Vienna Institute (Austria; 10-15 April 2011)<br />Training in SME banking - conducted by IFC (9-11 March 2011)<br />Training - Teaching Fellows course at CERGE-EI (Prague, Czech Republic; 23 &ndash; 30 August 2010)<br />Training in Accounting and Taxation - European Center for Professional Development (15 January 2010 &ndash; 9 April 2010)<br />Training in &ldquo;The company&rsquo;s structure and management&rdquo; given by Nikoloz Markozashvili, ESM Tbilisi (Spring 2007)<br />Shorbank&rsquo;s loan officer&rsquo;s training courses (Spring 2004)</p>\n<p>Test scores:</p>\n<p>TOEFL IBT: 102<br />GRE: Quantitative 780</p>\n<p>Professional Experience:</p>\n<p>East European University&ndash; Assistant Professor (2013 Autumn semester - present)<br />Main responsibilities:<br />&bull; Delivering weekly lectures - Informational technologies, Statistics, Economics, Banking;<br />&bull; Posting materials for recitation sessions and classes;</p>\n<p><br />TNS Georgia &ndash; Statistician &amp; data manager in marketing research (2012 - present)<br />Main responsibilities:<br />&bull; Designing Samples for marketing research;<br />&bull; Developing software (PHP, Laravel, MS Access, VBA, SPSS, Stata, Matlab) for analysis of huge databases;<br />&bull; Building presentations.</p>\n<p>Georgian Business Academy (SBA) &ndash; Teacher in Mathematics and Economics (2013 - 2017)<br />Main responsibilities:<br />&bull; Delivering weekly lectures in Mathematics and Economics; Delivered in English;<br />&bull; Posting materials for recitation sessions and classes;</p>\n<p>Intellect Center - Trainer in Advanced Excel, Access and Statistics (2011 &ndash; present)<br />Main responsibilities:<br />&bull; Delivering lectures;<br />&bull; Designing training courses (Statistics, SPSS, Excel, VBA);<br />&bull; Providing assistance to Companies regarding data management and analysis;</p>\n<p>Caucasus University (CSG, CSB) &ndash; Teacher in Statistics and IT (2012 spring semester - 2015)<br />Main responsibilities:<br />&bull; Delivering weekly lectures in Statistics, Informational technologies; Delivered in English;<br />&bull; Posting materials for recitation sessions and classes;</p>\n<p>International Black Sea University (IBSU) &ndash; Teacher in Economics (2011 - 2013)<br />Main responsibilities:<br />&bull; Delivering weekly lectures in Statistics, Economics; Delivered in English.<br />&bull; Posting materials for recitation sessions and classes;</p>\n<p><br />Ilya State University &ndash; Teacher in Managerial accounting (2012 - 2012)<br />Main responsibilities:<br />&bull; Delivering weekly lectures.<br />&bull; Posting materials for recitation sessions and classes;</p>\n<p>Tbilisi State University (TSU) &ndash; Teacher in Econometrics (2010 &ndash; 2012)<br />Main responsibilities:<br />&bull; Holding weekly meetings with the professor to prepare recitation sessions;<br />&bull; Delivering weekly lectures;<br />&bull; Posting materials for recitation sessions and classes;<br />&bull; Assisting professors with technical equipment, data, software, etc. as needed;<br />&bull; Assisting professors with the administration and grading of quizzes and exams; <br />&bull; Performing other course-related tasks assigned by the professor.</p>\n<p>National Bank of Georgia (NBG) &ndash; Credit risk specialist (2009 &ndash;2012)<br />Main responsibilities:<br />&bull; Assessing commercial banks&rsquo; credit risk;<br />&bull; Assessing main trends of credit risk in Georgia.</p>\n<p>International School of Economics (ISET) - Teaching assistant in Statistics and Econometrics (autumn 2009)<br />Main responsibilities:<br />&bull; Holding weekly meetings with the instructor to prepare recitation sessions;<br />&bull; Delivering weekly recitations;</p>\n<p>Bank Constanta Lagodekhi branch - Branch manager (Sep 06 &ndash; March 08)<br />Main responsibilities:<br />&bull; Reporting to the Head office. Establishing and following up objectives and action plans of the branch. Managing the branch on a daily basis;<br />&bull; Supervising a team of 9 staff (6 loan officers, cashier, office manager and driver) and daily operations;<br />&bull; Promoting and maintaining relationship with customers and targeting market segments in order to effectively sell products and services of the organization;<br />&bull; Reviewing agricultural, micro and small business loans to achieve proper loan reporting;<br />&bull; Motivating branch staff, evaluating performance of personnel.</p>\n<p>Bank Constanta Tsnori branch - Loan officer (2005)</p>\n<p>Bank Constanta Tsnori branch - Management Information System (MIS) officer (2004)</p>\n<p>Post Bank&rsquo;s Gurjaani Branch - Programmer (2003)<br />Languages:<br /> <br />&bull; Georgian - Native<br />&bull; Russian - Advanced<br />&bull; English - Advanced <br />&bull; French &ndash; Beginner<br /> <br />Computer Skills<br /> <br />&bull; MS Office - Advanced<br />&bull; Stata &ndash; Advanced<br />&bull; SPSS - Advanced<br />&bull; E-VIEWS &ndash; Good<br />&bull; Maple &ndash; Advanced<br />&bull; MatLab &ndash; Good <br />&bull; SurveyCTO &ndash; Advanced<br />&bull; Checker &ndash; Advanced<br />&bull; SurveyMonkey&ndash; Advanced<br />&bull; Oris - Good<br />&bull; Microfin - Good<br />&bull; Bank 2000 - Good<br />&bull; Photoshop - Good<br />&bull; Delphi - Advanced<br />&bull; Visual Basic (VBA) - Advanced<br />&bull; HTML, CSS, jquery, vue &ndash; Good<br /> &bull; PHP, Laravel &ndash; Good<br />&bull; MS SQL, My SQL SERVER - Good<br />&bull; MS Windows (Workstation, Server) &ndash; Advanced</p>\n<p>&nbsp;</p>', 'გაძლიერებული ექსელის, მონაცემთა ბაზების, ბიზნეს სტატისტიკის SPSS-ის სპეციალისტი', 'empty', 'ge', 0, 0),
(161, 81, 0, 1523736000, '2018-04-15', 'staff', 'ნინო ჯაფარიძე', '', 'ინგლისურის სპეციალისტი', 'empty', 'en', 0, 0),
(162, 81, 0, 1523736000, '2018-04-15', 'staff', 'ნინო ჯაფარიძე', '', 'ინგლისურის სპეციალისტი', 'empty', 'ge', 0, 0),
(163, 82, 0, 1523736000, '2018-04-15', 'staff', 'ვიკტორია ნადირაძე', '', '', 'empty', 'en', 0, 0),
(164, 82, 0, 1523736000, '2018-04-15', 'staff', 'ვიქტორია ნადირაძე', '', '', 'empty', 'ge', 0, 0),
(165, 83, 0, 1523736000, '2018-04-15', 'staff', 'ანა სხვიტარიძე', '', 'ექიმი', 'empty', 'en', 0, 0),
(166, 83, 0, 1523736000, '2018-04-15', 'staff', 'ანა სხვიტარიძე', '', 'ექიმი', 'empty', 'ge', 0, 0),
(167, 84, 0, 1523736000, '2018-04-15', 'staff', 'ხათუნა შუბითიძე', '', '', 'empty', 'en', 0, 0),
(168, 84, 0, 1523736000, '2018-04-15', 'staff', 'ხათუნა შუბითიძე', '', '', 'empty', 'ge', 0, 0),
(169, 85, 0, 1523736000, '2018-04-15', 'staff', 'ხათუნა ძაძამია', '', 'რუსულის სპეციალისტი, პრაქტიკოსი გიდი', 'empty', 'en', 0, 0),
(170, 85, 0, 1523736000, '2018-04-15', 'staff', 'ხათუნა ძაძამია', '', 'რუსულის სპეციალისტი, პრაქტიკოსი გიდი', 'empty', 'ge', 0, 0),
(171, 86, 0, 1523736000, '2018-04-15', 'staff', 'ელგუჯა შენგელია', '', 'ისტორიკოსი, პრაქტიკოსი გიდი', 'empty', 'en', 0, 0),
(17, 9, 0, 1523044800, '2018-04-07', 'partners', 'Patel Psix', '', '', 'http://gumtree.com', 'en', 0, 0),
(18, 9, 0, 1523044800, '2018-04-07', 'partners', 'თიბისი ბანკი', '<p>თიბისი ბანკი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(19, 10, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Twitter', '<p>Twitter</p>', 'fa fa-twitter', 'http://twitter.com', 'en', 0, 0),
(20, 10, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Twitter', '<p>Twitter</p>', 'fa fa-twitter', 'http://twitter.com', 'ge', 0, 0),
(21, 11, 0, 1523044800, '2018-04-07', 'socialnetworks', 'Facebook', '<p>Facebook</p>', 'fa fa-facebook', 'https://www.facebook.com/vipintellectgroup/', 'en', 0, 0),
(22, 11, 0, 1523044800, '2018-04-07', 'socialnetworks', 'Facebook', '<p>Facebook</p>', 'fa fa-facebook', 'https://www.facebook.com/vipintellectgroup/', 'ge', 0, 0),
(23, 12, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Youtube', '<p>youtube</p>', 'fa fa-youtube-play', 'https://youtube.com', 'en', 0, 1),
(24, 12, 0, 1523044800, '2018-04-06', 'socialnetworks', 'Youtube', '<p>youtube</p>', 'fa fa-youtube-play', 'https://youtube.com', 'ge', 0, 1),
(25, 13, 0, 1523044800, '2018-04-06', 'usefulllinks', 'Proffesion development strategy', '', 'blank', 'http://www.mes.gov.ge/content.php?id=1184&lang=geo', 'en', 0, 1),
(27, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>Call us</p>', '', 'empty', 'en', 0, 0),
(26, 13, 0, 1523044800, '2018-04-06', 'usefulllinks', 'პროფესიული განათლების სტრატეგია', '', 'blank', 'http://www.mes.gov.ge/content.php?id=1184&lang=geo', 'ge', 0, 1),
(28, 14, 0, 1523044800, '2018-04-06', 'languagedata', 'contactus', '<p>დაგვიკავშირდით</p>', '', 'empty', 'ge', 0, 0),
(29, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>Search</p>', '', 'empty', 'en', 0, 0),
(30, 15, 0, 1523044800, '2018-04-06', 'languagedata', 'search', '<p>ძიება</p>', '', 'empty', 'ge', 0, 0),
(31, 16, 0, 1523044800, '2018-04-07', 'slider', 'ფოტო 2', '<p>ფოტო 2</p>', '', 'empty', 'en', 0, 1),
(32, 16, 0, 1523044800, '2018-04-07', 'slider', 'ფოტო 1', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(33, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>Sign up for training</p>', '', 'empty', 'en', 0, 0),
(35, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>Firstname Lastname</p>', '', 'empty', 'en', 0, 0),
(34, 17, 0, 1523131200, '2018-04-07', 'languagedata', 'registertraining', '<p>დარეგისტრირდი ტრენინგზე</p>', '', 'empty', 'ge', 0, 0),
(36, 18, 0, 1523131200, '2018-04-07', 'languagedata', 'namelname', '<p>სახელი გვარი</p>', '', 'empty', 'ge', 0, 0),
(37, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>Email</p>', '', 'empty', 'en', 0, 0),
(38, 19, 0, 1523131200, '2018-04-07', 'languagedata', 'email', '<p>ელ-ფოსტა</p>', '', 'empty', 'ge', 0, 0),
(39, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>Contact number</p>', '', 'empty', 'en', 0, 0),
(40, 20, 0, 1523131200, '2018-04-07', 'languagedata', 'contactnumber', '<p>საკონტაქტო ნომერი</p>', '', 'empty', 'ge', 0, 0),
(41, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>Age</p>', '', 'empty', 'en', 0, 0),
(42, 21, 0, 1523131200, '2018-04-07', 'languagedata', 'age', '<p>ასაკი</p>', '', 'empty', 'ge', 0, 0),
(43, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>Admission Clock</p>', '', 'empty', 'en', 0, 0),
(45, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>who told you about us?</p>', '', 'empty', 'en', 0, 0),
(44, 22, 0, 1523131200, '2018-04-07', 'languagedata', 'trainingstarttime', '<p>გაკვეთილის დაწყების მისაღები საათი</p>', '', 'empty', 'ge', 0, 0),
(47, 24, 0, 1523131200, '2018-04-08', 'howfindus', 'მეგობრისგან', '', '', 'empty', 'en', 0, 0),
(46, 23, 0, 1523131200, '2018-04-07', 'languagedata', 'howfindus', '<p>საიდან შეიტყვეთ ჩვენს შესახებ?</p>', '', 'empty', 'ge', 0, 0),
(48, 24, 0, 1523131200, '2018-04-08', 'howfindus', 'მეგობრისგან', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(49, 25, 0, 1523131200, '2018-04-07', 'howfindus', 'კოლეგისგან', '', '', 'empty', 'en', 0, 0),
(50, 25, 0, 1523131200, '2018-04-07', 'howfindus', 'კოლეგისგან', '', '', 'empty', 'ge', 0, 0),
(51, 26, 0, 1523131200, '2018-04-07', 'howfindus', 'Google', '', '', 'empty', 'en', 0, 0),
(52, 26, 0, 1523131200, '2018-04-07', 'howfindus', 'Google', '', '', 'empty', 'ge', 0, 0),
(53, 27, 0, 1523131200, '2018-04-07', 'howfindus', 'Jobs.ge', '', '', 'empty', 'en', 0, 0),
(54, 27, 0, 1523131200, '2018-04-07', 'howfindus', 'Jobs.ge', '', '', 'empty', 'ge', 0, 0),
(55, 28, 0, 1523131200, '2018-04-07', 'howfindus', 'Hr.ge', '', '', 'empty', 'en', 0, 0),
(56, 28, 0, 1523131200, '2018-04-07', 'howfindus', 'Hr.ge', '', '', 'empty', 'ge', 0, 0),
(57, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>Choose trainig</p>', '', 'empty', 'en', 0, 0),
(58, 29, 0, 1523131200, '2018-04-07', 'languagedata', 'choosetraining', '<p>აირჩიეთ ტრენინგი</p>', '', 'empty', 'ge', 0, 0),
(59, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>Sign up</p>', '', 'empty', 'en', 0, 0),
(60, 30, 0, 1523131200, '2018-04-07', 'languagedata', 'register', '<p>რეგისტრაცია</p>', '', 'empty', 'ge', 0, 0),
(61, 31, 0, 1523563200, '2018-04-13', 'news', '\"This Is Disaster\"', '<p>პროფკავშირების თავმჯდომარე ირაკლი პეტრიაშვილი ტყიბულის შახტაში მომხდარი უბედური შემთხვევის შემსწავლელი საგამოძიებო კომისიის მუშაობაში პროფკავშირების ჩართვას ითხოვს, - ამის შესახებ პეტრიაშვილმა ტყიბულში ჟურნალისტებს განუცხადა, სადაც ამ წუთებში &bdquo;საქნახშირის&ldquo; დირექტორს ხვდება. მისი თქმით, იმ შემთხვევაში, თუ საგამოძიებო კომისიაში პროფკავშირებს არ ჩართავენ, ყველას ეცოდინება, რომ &bdquo;კვლავ რაღაცის დამალვას ცდილობენ\".</p>\n<p>&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=b4GFV03LrUk]</p>\n<p>&nbsp;</p>\n<p>\"ყველაფრის განსაზღვრა შესაძლებელი იქნება მას შემდეგ, თუ მთავრობა და შახტის ადმინისტრაცია კომისიაში ჩვენს წარმომადგენელს ჩართავს. ამის გარეშე, რომ მათ თვითონ გამოიძიონ და საზოგადოებას და ჩვენ მოგვცენ ინფორმაცია იმაზე, თუ რა მოხდა რეალურად, ბუნებრივია, ამ ინფორმაციის სანდოობა ძალიან დაბალი იქნება საზოგადოებისა და პროფკავშირებისთვის. პროფკავშირებს აქვს გამოცდილება, როგორ ცდილობდნენ ყოველთვის, რომ ჩვენი წარმომადგენელი კომისიაში არ ჩაერთოთ. ვიზიარებთ ტრაგედიას. ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით. ზოგადად კანონმდებლობას ჯერჯერობით ვმიჯნავთ იმ უბედურებისგან, რაც ტყიბულს და მთლიანად საქართველოს დაატყდა თავს, სანამ რეალობა არ გვეცოდინება, რისგან მოხდა ამ მასის ჩამოწოლა, როგორ წარმოიქმნა ჰაერის ტალღა\", - განაცხადა ირაკლი პეტრიაშვილმა.&nbsp; ENG</p>', '', 'empty', 'en', 0, 1),
(62, 31, 0, 1523563200, '2018-04-13', 'news', 'jsajkakjaskj', '<p>პროფკავშირების თავმჯდომარე ირაკლი პეტრიაშვილი ტყიბულის შახტაში მომხდარი უბედური შემთხვევის შემსწავლელი საგამოძიებო კომისიის მუშაობაში პროფკავშირების ჩართვას ითხოვს, - ამის შესახებ პეტრიაშვილმა ტყიბულში ჟურნალისტებს განუცხადა, სადაც ამ წუთებში &bdquo;საქნახშირის&ldquo; დირექტორს ხვდება. მისი თქმით, იმ შემთხვევაში, თუ საგამოძიებო კომისიაში პროფკავშირებს არ ჩართავენ, ყველას ეცოდინება, რომ &bdquo;კვლავ რაღაცის დამალვას ცდილობენ\".&nbsp; asdasdas</p>\n<p>&nbsp;&nbsp;</p>\n<p>[https://www.youtube.com/watch?v=b4GFV03LrUk]</p>\n<p>&nbsp;</p>\n<p>\"ყველაფრის განსაზღვრა შესაძლებელი იქნება მას შემდეგ, თუ მთავრობა და შახტის ადმინისტრაცია კომისიაში ჩვენს წარმომადგენელს ჩართავს. ამის გარეშე, <a href=\"http://404.ge\">რომ მათ თვითონ გამოიძიონ და საზოგადოებას</a> და ჩვენ მოგვცენ ინფორმაცია იმაზე, თუ რა მოხდა რეალურად, ბუნებრივია, ამ ინფორმაციის სანდოობა ძალიან დაბალი იქნება საზოგადოებისა და პროფკავშირებისთვის. პროფკავშირებს აქვს გამოცდილება, როგორ ცდილობდნენ ყოველთვის, რომ ჩვენი წარმომადგენელი კომისიაში არ ჩაერთოთ. ვიზიარებთ ტრაგედიას. ეს არის კატასტროფა, რაც ხდება ქვეყანაში შრომის უსაფრთხოების კუთხით. ზოგადად კანონმდებლობას ჯერჯერობით ვმიჯნავთ იმ უბედურებისგან, რაც ტყიბულს და მთლიანად საქართველოს დაატყდა თავს, სანამ რეალობა არ გვეცოდინება, რისგან მოხდა ამ მასის ჩამოწოლა, როგორ წარმოიქმნა ჰაერის ტალღა\", - განაცხადა ირაკლი პეტრიაშვილმა.</p>\n<p>&nbsp;</p>\n<ul>\n<li>skadas</li>\n<li>a</li>\n<li>sd asdjkadsasd</li>\n<li>asd</li>\n<li>asdaskjdnakjsdnkasd</li>\n<li>asdkamsk dansjkd naskj dasd as</li>\n<li>askjdna kjsdnaskj a</li>\n</ul>', '', 'empty', 'ge', 0, 1),
(63, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>Trainings</p>', '', 'empty', 'en', 0, 0),
(64, 32, 0, 1523131200, '2018-04-07', 'languagedata', 'trainings', '<p>ტრენინგები</p>', '', 'empty', 'ge', 0, 0),
(66, 33, 0, 1523131200, '2018-04-07', 'languagedata', 'usefulllinks', '<p>სასარგებლო ბმულები</p>', '', 'empty', 'ge', 0, 0),
(67, 34, 0, 1523131200, '2018-04-08', 'news', 'test news', '<p>test news</p>', '', 'empty', 'en', 0, 1),
(68, 34, 0, 1523131200, '2018-04-08', 'news', 'test news', '<p>test <a href=\"http://test.ge\">news</a></p>', '', 'empty', 'ge', 0, 1),
(69, 35, 0, 1520884800, '2018-03-13', 'news', 'more test news', '<p>aslkdmnkasj dnkjasndakjsnd akjsdnaksjdnaskjdnakjsdnaskjndakjsndakjsndkajsndkjasndakjsdnakjsdnkjasdn akjds naskjd n</p>', '', 'empty', 'en', 0, 1),
(70, 35, 0, 1520884800, '2018-03-13', 'news', 'more test news', '<p>aslkdmnkasj dnkjasndakjsnd akjsdnaksjdnaskjdnakjsdnaskjndakjsndakjsndkajsndkjasndakjsdnakjsdnkjasdn akjds naskjd n</p>', '', 'empty', 'ge', 0, 1),
(71, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>Archive</p>', '', 'empty', 'en', 0, 0),
(72, 36, 0, 1523131200, '2018-04-08', 'languagedata', 'archive', '<p>არქივი</p>', '', 'empty', 'ge', 0, 0),
(133, 67, 0, 1523476800, '2018-04-12', 'ongoing', 'კჯასასჯნ', '<p>ჯკნკჯ</p>', '', 'empty', 'en', 0, 1),
(73, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>All news</p>', '', 'empty', 'en', 0, 0),
(74, 37, 0, 1523131200, '2018-04-08', 'languagedata', 'allnews', '<p>ყველა სიახლე</p>', '', 'empty', 'ge', 0, 0),
(75, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>News</p>', '', 'empty', 'en', 0, 0),
(76, 38, 0, 1523131200, '2018-04-08', 'languagedata', 'news', '<p>სიახლეები</p>', '', 'empty', 'ge', 0, 0),
(77, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>The last news</p>', '', 'empty', 'en', 0, 0),
(78, 39, 0, 1523217600, '2018-04-09', 'languagedata', 'lastnews', '<p>ბოლო სიახლეები</p>', '', 'empty', 'ge', 0, 0),
(79, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>View profile</p>', '', 'empty', 'en', 0, 0),
(80, 40, 0, 1523217600, '2018-04-09', 'languagedata', 'viewprofile', '<p>პროფილის ნახვა</p>', '', 'empty', 'ge', 0, 0),
(81, 41, 0, 1523217600, '2018-04-09', 'staff', 'ნანა ბურჭულაძე', '<p>ტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტ</p>\n<p>&nbsp;</p>\n<p>ტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტტესტ ტესტ ტესტ ასჯდ ასკჯდნაჯკსდნ კაჯსნდ ას;ლდ ა სკდ ცვბბმნ მბვცლ; ჰგლ; გ,ჰლ; ,გლ;ჰ ,გლ;ჰფგოჰრფოგიჰმფგჰფლკგჰმფკლგმ ფკლგმჰ ფკგლმჰ ფგკმჰ კჯფგნურიეჰ უეირჰტეიუტ</p>', 'ბუღალტერი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'en', 0, 1),
(82, 41, 0, 1523217600, '2018-04-09', 'staff', 'ნინო მღებრიშვილი', '<h3>&nbsp;</h3>\n<p>&nbsp;დირექტორი</p>', 'დირექტორი', '[twitter=https://twitter.com],[facebook=https://facebook.com],[youtube=https://youtube.com]', 'ge', 0, 1),
(172, 86, 0, 1523736000, '2018-04-15', 'staff', 'ელგუჯა შენგელია', '', 'ისტორიკოსი, პრაქტიკოსი გიდი', 'empty', 'ge', 0, 0),
(173, 87, 0, 1523736000, '2018-04-15', 'staff', 'დიანა დანელიანი', '', 'კომპიუტერული გრაფიკის სპეციალისტი', 'empty', 'en', 0, 0),
(174, 87, 0, 1523736000, '2018-04-15', 'staff', 'დიანა დანელიანი', '', 'კომპიუტერული გრაფიკის სპეციალისტი', 'empty', 'ge', 0, 0),
(175, 88, 0, 1523736000, '2018-04-15', 'staff', 'თეონა ბუაძე', '', 'მენეჯმენტის ტრენერი', 'empty', 'en', 0, 0),
(176, 88, 0, 1523736000, '2018-04-15', 'staff', 'თეონა ბუაძე', '', 'მენეჯმენტის ტრენერი', 'empty', 'ge', 0, 0),
(177, 89, 0, 1523736000, '2018-04-15', 'staff', 'სოფიკო ღუდუშაური', '', 'ფინანსური მენეჯმენტის ტრენერი', 'empty', 'en', 0, 0),
(178, 89, 0, 1523736000, '2018-04-15', 'staff', 'სოფიკო ღუდუშაური', '', 'ფინანსური მენეჯმენტის ტრენერი', 'empty', 'ge', 0, 0),
(179, 90, 0, 1523736000, '2018-04-15', 'staff', 'დავით მამრიკიშვილი', '', 'საგადასახადო საქმის ტრენერი', 'empty', 'en', 0, 0),
(180, 90, 0, 1523736000, '2018-04-15', 'staff', 'დავით მამრიკიშვილი', '', 'საგადასახადო საქმის ტრენერი', 'empty', 'ge', 0, 0),
(181, 91, 0, 1523736000, '2018-04-15', 'staff', 'ამირან დემურიშვილი', '', 'სისტემური და ქსელური ადმინისტრირების სპეციალისტი', 'empty', 'en', 0, 0),
(83, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>Contact information</p>', '', 'empty', 'en', 0, 0),
(187, 94, 0, 1523822400, '2018-04-16', 'staff', 'ირმა ბერძენიშვილი', '', 'ბიზნეს ფსიქოლოგი', 'empty', 'en', 0, 0),
(84, 42, 0, 1523217600, '2018-04-09', 'languagedata', 'contactinfo', '<p>საკონტაქტო ინფორმაცია</p>', '', 'empty', 'ge', 0, 0),
(134, 67, 0, 1523476800, '2018-04-12', 'ongoing', 'კჯასასჯნ', '<p>ჯკნკჯ</p>', '', 'empty', 'ge', 0, 1),
(85, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>More</p>', '', 'empty', 'en', 0, 0),
(86, 43, 0, 1523217600, '2018-04-09', 'languagedata', 'more', '<p>ნახე მეტი</p>', '', 'empty', 'ge', 0, 0),
(87, 44, 0, 1523217600, '2018-04-09', 'vacancies', '3d max', '<p>ასჯკდას ნკჯდ ნასჯკდანსჰდჯ ბასჰდ დლფსგმკდფგმდკლფგმდლკფ გჯკდფგნკჯდფ ნგმ,ნვხმცვნხცმვნმცნვმნცხ,მნცვმ,ცვხვოპხცოპხვცლლკსდკლფსდ სდკფ კსდფკსდფმნ კსდნფკჯსდ ფ</p>', 'Sales agent', 'empty', 'en', 0, 1),
(89, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>All vacancies</p>', '', 'empty', 'en', 0, 0),
(88, 44, 0, 1523217600, '2018-04-09', 'vacancies', '3დ მაქსის ინსტრუქტორი', '<p>ასჯკდას ნკჯდ ნასჯკდანსჰდჯ ბასჰდ დლფსგმკდფგმდკლფგმდლკფ გჯკდფგნკჯდფ ნგმ,ნვხმცვნხცმვნმცნვმნცხ,მნცვმ,ცვხვოპხცოპხვცლლკსდკლფსდ სდკფ კსდფკსდფმნ კსდნფკჯსდ ფ</p>', 'გაყიდვების აგენტი', 'empty', 'ge', 0, 1),
(90, 45, 0, 1523217600, '2018-04-09', 'languagedata', 'allvacancies', '<p>ყველა ვაკანსია</p>', '', 'empty', 'ge', 0, 0),
(91, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>Send us message</p>', '', 'empty', 'en', 0, 0),
(92, 46, 0, 1523217600, '2018-04-09', 'languagedata', 'writeus', '<p>მოგვწერეთ</p>', '', 'empty', 'ge', 0, 0),
(93, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>Message</p>', '', 'empty', 'en', 0, 0),
(94, 47, 0, 1523217600, '2018-04-09', 'languagedata', 'message', '<p>შეტყობინება</p>', '', 'empty', 'ge', 0, 0),
(95, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>Send</p>', '', 'empty', 'en', 0, 0),
(96, 48, 0, 1523217600, '2018-04-09', 'languagedata', 'send', '<p>გაგზავნა</p>', '', 'empty', 'ge', 0, 0),
(97, 49, 0, 1523736000, '2018-04-15', 'contactdetails', 'Map', '<p>41.7245164,44.7711561</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(98, 49, 0, 1523736000, '2018-04-15', 'contactdetails', 'რუკა', '<p>41.7245164,44.7711561</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(99, 50, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო ძაან ფოტო', '', '', 'empty', 'en', 0, 1),
(100, 50, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო ძაან ფოტო', '', '', 'empty', 'ge', 0, 1),
(101, 51, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო youtube ვიდეო', '', '', 'https://www.youtube.com/watch?v=g9TsbGQ-v3g', 'en', 0, 1),
(102, 51, 0, 1523217600, '2018-04-09', 'gallery', 'სატესტო youtube ვიდეო', '', '', 'https://www.youtube.com/watch?v=g9TsbGQ-v3g', 'ge', 0, 1),
(103, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>Gallery</p>', '', 'empty', 'en', 0, 0),
(104, 52, 0, 1523304000, '2018-04-10', 'languagedata', 'gallery', '<p>გალერეა</p>', '', 'empty', 'ge', 0, 0),
(105, 53, 0, 1523304000, '2018-04-10', 'test', 'ტესტ ტესტ', '<p>ჯკდსნჯკადსნსდკჯნ დსსდ სდნ სდსდჰჯდსჯჰდსჯჰსდ</p>', '', 'empty', 'en', 0, 1),
(106, 53, 0, 1523304000, '2018-04-10', 'test', 'ტესტ ტესტ', '<p>ჯკდსნჯკადსნსდკჯნ დსსდ სდნ სდსდჰჯდსჯჰდსჯჰსდ</p>', '', 'empty', 'ge', 0, 1),
(107, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>Main</p>', '', 'empty', 'en', 0, 0),
(108, 54, 0, 1523304000, '2018-04-10', 'languagedata', 'main', '<p>მთავარი</p>', '', 'empty', 'ge', 0, 0),
(109, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>vacancies</p>', '', 'empty', 'en', 0, 0),
(110, 55, 0, 1523304000, '2018-04-10', 'languagedata', 'vacancies', '<p>ვაკანსიები</p>', '', 'empty', 'ge', 0, 0),
(111, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>Our team</p>', '', 'empty', 'en', 0, 0),
(112, 56, 0, 1523304000, '2018-04-10', 'languagedata', 'ourteam', '<p>ჩვენი გუნდი</p>', '', 'empty', 'ge', 0, 0),
(113, 57, 0, 1523304000, '2018-04-10', 'contactdetails', 'test a', '<p>mimdinare</p>', '', 'empty', 'en', 0, 1),
(114, 57, 0, 1523304000, '2018-04-10', 'contactdetails', 'test a', '<p>mimdinare</p>', '', 'empty', 'ge', 0, 1),
(115, 58, 0, 1523304000, '2018-04-10', 'ongoing', 'akjsdasjkd', '<p>kjasndkjandkjasnd hjasbd jhasd jhasbd hasjbd hads</p>', '', 'empty', 'en', 0, 1),
(116, 58, 0, 1523304000, '2018-04-10', 'ongoing', 'სატესტო პროექტი', '<p>kjasndkjandkjasnd hjasbd jhasd jhasbd hasjbd hads</p>', '', 'empty', 'ge', 0, 1),
(117, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>All fields are required !</p>', '', 'empty', 'en', 0, 0),
(118, 59, 0, 1523390400, '2018-04-11', 'languagedata', 'errorallfieldsrequire', '<p>ყველა ველი სავალდებულოა!</p>', '', 'empty', 'ge', 0, 0),
(119, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>Email format error !</p>', '', 'empty', 'en', 0, 0),
(120, 60, 0, 1523390400, '2018-04-11', 'languagedata', 'erroremail', '<p>ელ-ფოსტა არასწორია !</p>', '', 'empty', 'ge', 0, 0),
(121, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>Operation done successfully !</p>', '', 'empty', 'en', 0, 0),
(123, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>Error !</p>', '', 'empty', 'en', 0, 0),
(122, 61, 0, 1523390400, '2018-04-11', 'languagedata', 'errornull', '<p>ოპერაცია წარმატებით შესრულდა !</p>', '', 'empty', 'ge', 0, 0),
(124, 62, 0, 1523390400, '2018-04-11', 'languagedata', 'error', '<p>მოხდა შეცდომა !</p>', '', 'empty', 'ge', 0, 0),
(125, 63, 0, 1523476800, '2018-04-12', 'news', 'ტესტ სიახლე', '<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>&nbsp;</p>\n<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>[https://www.youtube.com/watch?v=whMo-j7C42M]</p>\n<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლ<a href=\"http://test.ge\">ეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სია</a>ხლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>&nbsp;</p>\n<ul>\n<li><a href=\"http://test.ge\">asdasd</a></li>\n<li><a href=\"http://test.ge\">asdasd</a></li>\n<li><a href=\"http://test.ge\">asdasdasdd</a></li>\n</ul>', '', 'empty', 'en', 0, 1),
(126, 63, 0, 1523476800, '2018-04-12', 'news', 'ტესტ სიახლე', '<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>&nbsp;</p>\n<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>[https://www.youtube.com/watch?v=whMo-j7C42M]</p>\n<p>ტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლ<a href=\"http://test.ge\">ეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სია</a>ხლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლეტესტ სიახლე</p>\n<p>&nbsp;</p>\n<ul>\n<li><a href=\"http://test.ge\">asdasd</a></li>\n<li><a href=\"http://test.ge\">asdasd</a></li>\n<li><a href=\"http://test.ge\">asdasdasdd</a></li>\n</ul>', '', 'empty', 'ge', 0, 1),
(127, 64, 0, 1523476800, '2018-04-12', 'news', 'სათაური', '<p>ტესტ ასკჯდასჯკდნაკჯსდა <a href=\"http://test.ge\">სდასდჯკასნდასნდკასკდჯას</a></p>\n<p>&nbsp;</p>\n<ul>\n<li>asdas</li>\n<li>dasdasdasdasd</li>\n<li>asdasdasd</li>\n</ul>', '', 'empty', 'en', 0, 0),
(128, 64, 0, 1523476800, '2018-04-12', 'news', 'რუსულენოვანი გიდის კურსი იწყება!', '<p>19 აპრილს, ხუთშაბათს, 1 საათზე ტარდება პირველი ლექცია ტურიზმის გიდის რუსულენოვანი კურსზე!</p>\n<p>კურსი მოიცავს: 16-2 საათიან შეხვედრას</p>\n<p>კურსი ღირებულება თვეში: 200 ლარი</p>\n<p>&nbsp;</p>\n<p>კურსის მსვლელობისას პრაქტიკული ტური ჩაგიტარდებათ 2 სხვადასხვა აქტუალურ ადგილას!</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(261, 131, 0, 1524081600, '2018-04-19', 'partners', 'სვისკაპიტალი-მიკროსაფინანსო კომპანია', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(262, 131, 0, 1524081600, '2018-04-19', 'partners', 'სვისკაპიტალი-მიკროსაფინანსო კომპანია', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(147, 74, 0, 1523563200, '2018-04-13', 'gallery', 'ჯანდაცვის მენეჯმენტი', '', '', 'empty', 'en', 0, 0),
(129, 65, 0, 1523476800, '2018-04-12', 'gallery', 'IT ინსტრუქტორის ლექცია', '<p>IT ინსტრუქტორის ლექცია</p>', '', 'empty', 'en', 0, 1),
(130, 65, 0, 1523476800, '2018-04-12', 'gallery', 'IT ინსტრუქტორის ლექცია', '<p>IT ინსტრუქტორის ლექცია</p>', '', 'empty', 'ge', 0, 1),
(131, 66, 0, 1523476800, '2018-04-12', 'gallery', 'ვიდეო', '<p>ვიდეო</p>', '', 'https://www.youtube.com/watch?v=c0mLRpw-9rI', 'en', 0, 1),
(132, 66, 0, 1523476800, '2018-04-12', 'gallery', 'ვიდეო', '<p>ვიდეო</p>', '', 'https://www.youtube.com/watch?v=c0mLRpw-9rI', 'ge', 0, 1),
(153, 77, 0, 1523736000, '2018-04-15', 'staff', 'ნინო მღებრიშვილი', '', 'დირექტორი', 'empty', 'en', 0, 0),
(135, 68, 0, 1523476800, '2018-04-12', 'vacancies', 'Need web programmer', '<p>ჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვ</p>', 'Web programmer', 'empty', 'en', 0, 1),
(137, 69, 0, 1523476800, '2018-04-12', 'howfindus', 'ტესტი', '', '', 'empty', 'en', 0, 1),
(136, 68, 0, 1523476800, '2018-04-12', 'vacancies', 'ვებ პროგრამისტის ვაკანსია', '<p>ჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვჰჯასდჯკასდ ნჯასკჯდ ნაჯკსდ ნკჯასდ ;ას.\'დ .ად\'; ასდ ლკასმდკსლამდ კჯნჯდფ ხნგ კჯხნცვკჯნხცკვ</p>', 'ვებ პროგრამისტი', 'empty', 'ge', 0, 1),
(138, 69, 0, 1523476800, '2018-04-12', 'howfindus', 'ტესტი', '', '', 'empty', 'ge', 0, 1),
(139, 70, 0, 1523476800, '2018-04-12', 'partners', 'ტესტ', '', '', 'http://test.ge', 'en', 0, 1),
(140, 70, 0, 1523476800, '2018-04-12', 'partners', 'ტესტ adasd', '', '', 'http://test.ge', 'ge', 0, 1),
(141, 71, 0, 1523476800, '2018-04-12', 'socialnetworks', 'Intsagram', '', 'fa fa-instagram', 'https://www.instagram.com/', 'en', 0, 0),
(142, 71, 0, 1523476800, '2018-04-12', 'socialnetworks', 'Intsagram', 'Hidden field', 'fa fa-instagram', 'https://www.instagram.com/', 'ge', 0, 0),
(143, 72, 0, 1523476800, '2018-04-12', 'usefulllinks', 'test', '', '', 'http://test.ge', 'en', 0, 1),
(144, 72, 0, 1523476800, '2018-04-12', 'usefulllinks', 'test', 'Hidden field', 'blank', 'http://test.ge', 'ge', 0, 1),
(145, 73, 0, 1523476800, '2018-04-12', 'slider', 'ფოტო 3', '', '', 'empty', 'en', 0, 1),
(146, 73, 0, 1523476800, '2018-04-12', 'slider', 'ფოტო 3', '', '', 'empty', 'ge', 0, 1),
(149, 75, 0, 1523649600, '2018-04-14', 'slider', 'აჯკსჯკადს', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(150, 75, 0, 1523649600, '2018-04-14', 'slider', 'აჯკსჯკადს ხხხ', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(151, 76, 0, 1523649600, '2018-04-14', 'partners', 'ა', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(148, 74, 0, 1523563200, '2018-04-13', 'gallery', 'ჯანდაცვის მენეჯმენტი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(152, 76, 0, 1523649600, '2018-04-14', 'partners', 'ა', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(182, 91, 0, 1523736000, '2018-04-15', 'staff', 'ამირან დემურიშვილი', '', 'სისტემური და ქსელური ადმინისტრირების სპეციალისტი', 'empty', 'ge', 0, 0),
(183, 92, 0, 1523736000, '2018-04-15', 'staff', 'იოსებ ჭიპაშვილი', '', 'ლოგისტიკის სპეციალისტი', 'empty', 'en', 0, 0),
(184, 92, 0, 1523736000, '2018-04-15', 'staff', 'იოსებ ჭიპაშვილი', '', 'ლოგისტიკის სპეციალისტი', 'empty', 'ge', 0, 0),
(185, 93, 0, 1523736000, '2018-04-15', 'staff', 'მიხეილ კუტალაძე', '', 'ლოგისტიკის სპეციალისტი', 'empty', 'en', 0, 0),
(186, 93, 0, 1523736000, '2018-04-15', 'staff', 'მიხეილ კუტალაძე', '', 'ლოგისტიკის სპეციალისტი', 'empty', 'ge', 0, 0),
(188, 94, 0, 1523822400, '2018-04-16', 'staff', 'ირმა ბერძენიშვილი', '', 'ბიზნეს ფსიქოლოგი', 'empty', 'ge', 0, 0),
(189, 95, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 2', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(190, 95, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 2', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(191, 96, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(192, 96, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(193, 97, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 4', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(194, 97, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(195, 98, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(196, 98, 0, 1523822400, '2018-04-16', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(197, 99, 0, 1523649600, '2018-04-14', 'slider', 'ფოტო 2', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(198, 99, 0, 1523649600, '2018-04-14', 'slider', 'ფოტო 2', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(199, 100, 0, 1523736000, '2018-04-15', 'slider', 'ფოტო 1', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(200, 100, 0, 1523736000, '2018-04-15', 'slider', 'ფოტო 1', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(207, 104, 0, 1523908800, '2018-04-17', 'partners', 'რომპეტროლი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(201, 101, 0, 1523822400, '2018-04-16', 'staff', 'ზურაბ ლაოშვილი', '', '', 'empty', 'en', 0, 0),
(202, 101, 0, 1523822400, '2018-04-16', 'staff', 'ზურაბ ლაოშვილი', '', '', 'empty', 'ge', 0, 0),
(203, 102, 0, 1523822400, '2018-04-16', 'news', 'სასტუმროს მენეჯმენტის სასერთიფიკატო კურსზე გრძელდება მსურველთა რეგისტრაცია!', '<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 300 ლარი</p>\n<p>კურსის ბოლოს აგრძელებთ სტაჟირებას სასტუმროში</p>\n<p>დასაქმების შანსი ყველას ერთნაირად გაგაჩნიათ!</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(204, 102, 0, 1523822400, '2018-04-16', 'news', 'სასტუმროს მენეჯმენტის სასერთიფიკატო კურსზე გრძელდება მსურველთა რეგისტრაცია!', '<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 300 ლარი</p>\n<p>კურსის ბოლოს აგრძელებთ სტაჟირებას სასტუმროში</p>\n<p>დასაქმების შანსი ყველას ერთნაირად გაგაჩნიათ!</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(205, 103, 0, 1523822400, '2018-04-16', 'news', 'სასტუმროს მენეჯმენტის სასერთიფიკატო კურსზე გრძელდება მსურველთა რეგისტრაცია!', '<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 300 ლარი</p>\n<p>კურსის ბოლოს აგრძელებთ სტაჟირებას სასტუმროში</p>\n<p>დასაქმების შანსი ყველას ერთნაირად გაგაჩნიათ!</p>', 'Hidden Field', 'empty', 'en', 0, 1),
(206, 103, 0, 1523822400, '2018-04-16', 'news', 'სასტუმროს მენეჯმენტის სასერთიფიკატო კურსზე გრძელდება მსურველთა რეგისტრაცია!', '<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 300 ლარი</p>\n<p>კურსის ბოლოს აგრძელებთ სტაჟირებას სასტუმროში</p>\n<p>დასაქმების შანსი ყველას ერთნაირად გაგაჩნიათ!</p>', 'Hidden Field', 'empty', 'ge', 0, 1),
(208, 104, 0, 1523908800, '2018-04-17', 'partners', 'რომპეტროლი', '<p>რომპეტროლი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(209, 105, 0, 1523908800, '2018-04-17', 'partners', 'ელთ კომპანი-საფინანსო კომპანია', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(210, 105, 0, 1523908800, '2018-04-17', 'partners', 'ელთ კომპანი-საფინანსო კომპანია', '<p>ელთ კომპანი-საფინანსო კომპანია</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(211, 106, 0, 1523908800, '2018-04-17', 'partners', 'თიბისი დაზღვევა', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(212, 106, 0, 1523908800, '2018-04-17', 'partners', 'თიბისი დაზღვევა', '<p>თიბისი დაზღვევა</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(213, 107, 0, 1523908800, '2018-04-17', 'gallery', 'ბუღალტერიის კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'poto accoun', 'en', 0, 0),
(214, 107, 0, 1523908800, '2018-04-17', 'gallery', 'ბუღალტერიის კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(215, 108, 0, 1523908800, '2018-04-17', 'gallery', 'პრაქტიკული ლოგისტიკა', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(216, 108, 0, 1523908800, '2018-04-17', 'gallery', 'პრაქტიკული ლოგისტიკა', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0);
INSERT INTO `usefull` (`id`, `idx`, `cid`, `date`, `date_format`, `type`, `title`, `description`, `classname`, `url`, `lang`, `visibility`, `status`) VALUES
(217, 109, 0, 1523908800, '2018-04-17', 'finished', 'ჩვენს მიერ მომზადებული კომპანიის კადრები', '<p>სს ,,თიბისი ბანკი\", ,,თიბისი პეი\", შპს ,,ღვინის ლაბორატორია\", სს ,,პაშა ბანკი\", შპს ,,პატიო-არტი\", დმანისის მუნიციპალიტეტი, შპს ,,კავკასუს ონლაინი\", შპს ,, რომპეტროლ ჯორჯია\", შპს ,,სოკარ ჯორჯია\", შპს ,,შავი ზღვის ტერმინალი\", შპს ,, ელ კომპანის\" ; შპს ,,არენა\", შპს ,,ველესი\", სურსათის ეროვნული სააგენტო; შპს ,,ჯეოსელი\", სს ,,გაერთიანებული საფინანსო კომპანია\", შპს ,,ლოჯისტიკა საქართველი\", შპს ,,გეო იმპექსი\", სს ,,ნოვა ტექნოლოგი\", შპს ,,ეიჩარ პარტნერსი\", შპს ,,აიდიემი\", შპს ,,რჩეული\", სს ,,ბერლინ ქიმიას წარმომადგენლობა საქართველოში\", სოფლის მეურნეობის სამინისტრო - &bdquo;სურსათის ეროვნული სააგენტო\", შპს &bdquo;ჯორჯიან უოთერ ენდ ფაუერი\"; შპს ,,ევო სერვისი\"; შპს ,,კასპი ჯეო\"; შპს ,,Georgian Oil &amp; Gas Limited-ის წარმომადგენლობა საქართველოში;რეგიონალური განვითარების დააგენტო;შპს ,,LMC\"; Grain Lohistics Company\"; შპს ,,ივერ მედი\", შპს ,,მასტერ ჯგუფი\",საქართველოს მცირე და საშუალო ბიზნესის ასოციაცია,შპს ,,ტრანს სერვის გრუპი\", შპს ,,პანაცეა\", შპს ,,Wine Products and Spirts\", შპს ,,Mercury Project\", სს ,,თიბისი ბანკი\" , შპს ,,ბადენი\", შპს ,,რუსთავგაზი\", შპს ,,მირ-ტრანსი\", შპს ,,ენ ჯი ემ გრუპი\", სს, ნიკორა ტრეიდი\", სს ,,თელასი\", შპს ,,ოცნება\", შპს ,,ვარკეთილაინი\", შპს ,,შვიდი ვარსკვლავი\" სს ,,ბანკი რესპუბლიკა, სს ,,ელიტელექტრონიქსი&rdquo;, ,,ჯორჯიან ავია სერვის ეიჯენსი\", თბილისის მერია, წყნეთის გამგეობა, მიგრაციის საერთაშორისო კომპანია, შპს ,,კასტელი საქართველი&rdquo; , შპს ,,გეოპლასტიკი&rdquo; შპს ,,ორიფლეიმ ჯორჯია&rdquo;, სს ,,ჯი-პი-სი&rdquo;, შპს ,,ავერსი-რაციონალი&rdquo;, სს ,,პარაზიტოლოგიის ინსტიტუტი&rdquo;, შპს,,ინდგეო\", შპს,,მიკრონეტი\", საქართველოს საავიაციო უნივერსიტეტი, განათლების განვითრების აკადემია, კვლევის ამერიკული ინსტიტუტი, სს ზაზა ფანასკერტელი, შპს ,,მიფასი&rdquo;, შპს ,,სთრაიდ ჯორჯია&rdquo;, შპს ,,დიოლერ ჯორჯია, შპს ,,გადაუდებელი ნევროლოგიის კლინიკა, შპს ,,მედულოთერაპიის და იმუნოთერაპიის ინსტიტუტი&rdquo;, ინდ. მეწ. დავით ნიკოლეიშვილი, შპს ,,ნიუ-ვეი&rdquo; შპს ,,ფაქტორ ელექტრონიქსი&rdquo;,შპს ,,ევრობუილდინგი&rdquo;, შპს ,,რუსმეტალი&rdquo; შპს ,,იფქლი&rdquo;, შპს ,,ნიკა-2000&rdquo;, შპს ,,თბილისი-95&rdquo;, შპს ,,ატლანტა&rdquo;, ,,საქპატენტი&rdquo;,შპს ,,ატლასი&rdquo;, შპს ,,რ.კ და კომპანია&rdquo;, შპს ,,ზოოლაიფი&rdquo;, შპს ,,გრო&rdquo;, შპს ,,პოპტნეტი&rdquo; შპს ,,აგრობიზნეს კონსალტინგი&rdquo;, შპს ,,ალგი და ჯგუფი&rdquo;,sos ახალგაზრდული სახლი- თბილისი 2, შპს ,,კრისტალი&rdquo;, შპს ,, ველი&rdquo; , შპს ,, 919&rdquo;, შპს ,,ფაილი&rdquo;, შპს ,,ალიზი&rdquo;, შპს ,,ლაბოტე&rdquo; შპს ,,უნიტრანსი&rdquo; შპს ,,პოპტნეტი&rdquo; შპს ,,ინვესტი-2&rdquo; შპს ,,სხივი-2&rdquo; , შპს ,,დემასი&ldquo;, შპს ,,დალამა ენერჯი&ldquo;, JSI Sustain Project, IREX-ის საერთაშორისო კვლევები და გაცვლები, ACF - საერთაშორისო ორგანიზაცია, შპს \"დიკა\", შპს ,,MPG&rdquo;,გაეროს წარმომადგენლობა საქართველოში, გლაქსო სმიტკლაინ ექსპორტ ლიმიტედის წარმომადგენლობა საქართველოში, შპს ,,საქართველოს რკინიგზა&rdquo;, შპს ,,ალბატროსი&rdquo;, შპს ,,აკა&rdquo;, შპს ,, გერმანული სახლი&rdquo;, გუდაურის სპორტული სკოლა, შპს \"სააგენტო სერვის ცენტრი ტ.გ.მ.&rdquo;, შპს \"უნიტრანსი\", შ.პ.ს. \"ავიაკომპანია თუშეთი\", საქართველოს საავიაციო უნივერსიტეტი, ქალთა ჯანმრთელობის ორგანიზაცია , ვისოლ პეტროლიუმ ჯორჯია , შპს \"ინფინიტი\" , შპს \"შირნ ხოფერი\", შპს \"ფერა ჯორჯია\",შპს ,,ენერგო არაგვი\", შპს ,,ევრო დექი\"შპს ,,ახალი ნათება\", შპს ,,ვესტა კაპიტალი\", შპს ,,თერმარსენალი\", შპს ,,ედრესი\", შპს ,,RIXOS\", შპს ,,შოპ ენ\", შპს ,,მაქსიმალი\" , საქართველოს სასაზღვრო პოლიცია, იბერია ბიზნეს ჯგუფი, შპს ,,სპეცჰიდრომშენი\", საქართველოს კინოს და თეატრის მუზეუმი, შპს ,,ელიზი ჯგუფი\", შპს ,,ღვინის ლაბორატორია\", შპს ,,ჰომბილდერი\", შპს ,,ვესტა\", შპს ,,ვეზირი\", შპს ,,სპექტრი\", შპს ,,გეოინჟინერინგი\", შპს ,,რეგალი\", შპს &bdquo;არქ ქრეატიონ\"! სსიპ&nbsp; ,,ლ. საყვარელიძის სახ. დაავადებათა კონტროლის და საზოგადაოებრივი ჯანმრთელობის ეროვნული ცენტრის\", შპს ,,კაპტო დიზაინის\", შპს ,,ფურშეტი,\" შპს ,,MS group\", შპს ,,ივერმედი\", შპს, ღვინის ლაბორატორია\", შპს ,,ჯორჯიან სერვის გრუპი\", მიგრაციის საერთაშორისო ორგანიზაცია, გერმანიის საერთაშორისო თანამშრომლობის საზოგადოება GIZ და სხვ.</p>', 'Hidden Field', 'empty', 'en', 0, 1),
(218, 109, 0, 1523908800, '2018-04-17', 'finished', 'ჩვენს მიერ მომზადებული კომპანიის კადრები', '<p>სს ,,თიბისი ბანკი\", ,,თიბისი პეი\", შპს ,,ღვინის ლაბორატორია\", სს ,,პაშა ბანკი\", შპს ,,პატიო-არტი\", დმანისის მუნიციპალიტეტი, შპს ,,კავკასუს ონლაინი\", შპს ,, რომპეტროლ ჯორჯია\", შპს ,,სოკარ ჯორჯია\", შპს ,,შავი ზღვის ტერმინალი\", შპს ,, ელ კომპანის\" ; შპს ,,არენა\", შპს ,,ველესი\", სურსათის ეროვნული სააგენტო; შპს ,,ჯეოსელი\", სს ,,გაერთიანებული საფინანსო კომპანია\", შპს ,,ლოჯისტიკა საქართველი\", შპს ,,გეო იმპექსი\", სს ,,ნოვა ტექნოლოგი\", შპს ,,ეიჩარ პარტნერსი\", შპს ,,აიდიემი\", შპს ,,რჩეული\", სს ,,ბერლინ ქიმიას წარმომადგენლობა საქართველოში\", სოფლის მეურნეობის სამინისტრო - &bdquo;სურსათის ეროვნული სააგენტო\", შპს &bdquo;ჯორჯიან უოთერ ენდ ფაუერი\"; შპს ,,ევო სერვისი\"; შპს ,,კასპი ჯეო\"; შპს ,,Georgian Oil &amp; Gas Limited-ის წარმომადგენლობა საქართველოში;რეგიონალური განვითარების დააგენტო;შპს ,,LMC\"; Grain Lohistics Company\"; შპს ,,ივერ მედი\", შპს ,,მასტერ ჯგუფი\",საქართველოს მცირე და საშუალო ბიზნესის ასოციაცია,შპს ,,ტრანს სერვის გრუპი\", შპს ,,პანაცეა\", შპს ,,Wine Products and Spirts\", შპს ,,Mercury Project\", სს ,,თიბისი ბანკი\" , შპს ,,ბადენი\", შპს ,,რუსთავგაზი\", შპს ,,მირ-ტრანსი\", შპს ,,ენ ჯი ემ გრუპი\", სს, ნიკორა ტრეიდი\", სს ,,თელასი\", შპს ,,ოცნება\", შპს ,,ვარკეთილაინი\", შპს ,,შვიდი ვარსკვლავი\" სს ,,ბანკი რესპუბლიკა, სს ,,ელიტელექტრონიქსი&rdquo;, ,,ჯორჯიან ავია სერვის ეიჯენსი\", თბილისის მერია, წყნეთის გამგეობა, მიგრაციის საერთაშორისო კომპანია, შპს ,,კასტელი საქართველი&rdquo; , შპს ,,გეოპლასტიკი&rdquo; შპს ,,ორიფლეიმ ჯორჯია&rdquo;, სს ,,ჯი-პი-სი&rdquo;, შპს ,,ავერსი-რაციონალი&rdquo;, სს ,,პარაზიტოლოგიის ინსტიტუტი&rdquo;, შპს,,ინდგეო\", შპს,,მიკრონეტი\", საქართველოს საავიაციო უნივერსიტეტი, განათლების განვითრების აკადემია, კვლევის ამერიკული ინსტიტუტი, სს ზაზა ფანასკერტელი, შპს ,,მიფასი&rdquo;, შპს ,,სთრაიდ ჯორჯია&rdquo;, შპს ,,დიოლერ ჯორჯია, შპს ,,გადაუდებელი ნევროლოგიის კლინიკა, შპს ,,მედულოთერაპიის და იმუნოთერაპიის ინსტიტუტი&rdquo;, ინდ. მეწ. დავით ნიკოლეიშვილი, შპს ,,ნიუ-ვეი&rdquo; შპს ,,ფაქტორ ელექტრონიქსი&rdquo;,შპს ,,ევრობუილდინგი&rdquo;, შპს ,,რუსმეტალი&rdquo; შპს ,,იფქლი&rdquo;, შპს ,,ნიკა-2000&rdquo;, შპს ,,თბილისი-95&rdquo;, შპს ,,ატლანტა&rdquo;, ,,საქპატენტი&rdquo;,შპს ,,ატლასი&rdquo;, შპს ,,რ.კ და კომპანია&rdquo;, შპს ,,ზოოლაიფი&rdquo;, შპს ,,გრო&rdquo;, შპს ,,პოპტნეტი&rdquo; შპს ,,აგრობიზნეს კონსალტინგი&rdquo;, შპს ,,ალგი და ჯგუფი&rdquo;,sos ახალგაზრდული სახლი- თბილისი 2, შპს ,,კრისტალი&rdquo;, შპს ,, ველი&rdquo; , შპს ,, 919&rdquo;, შპს ,,ფაილი&rdquo;, შპს ,,ალიზი&rdquo;, შპს ,,ლაბოტე&rdquo; შპს ,,უნიტრანსი&rdquo; შპს ,,პოპტნეტი&rdquo; შპს ,,ინვესტი-2&rdquo; შპს ,,სხივი-2&rdquo; , შპს ,,დემასი&ldquo;, შპს ,,დალამა ენერჯი&ldquo;, JSI Sustain Project, IREX-ის საერთაშორისო კვლევები და გაცვლები, ACF - საერთაშორისო ორგანიზაცია, შპს \"დიკა\", შპს ,,MPG&rdquo;,გაეროს წარმომადგენლობა საქართველოში, გლაქსო სმიტკლაინ ექსპორტ ლიმიტედის წარმომადგენლობა საქართველოში, შპს ,,საქართველოს რკინიგზა&rdquo;, შპს ,,ალბატროსი&rdquo;, შპს ,,აკა&rdquo;, შპს ,, გერმანული სახლი&rdquo;, გუდაურის სპორტული სკოლა, შპს \"სააგენტო სერვის ცენტრი ტ.გ.მ.&rdquo;, შპს \"უნიტრანსი\", შ.პ.ს. \"ავიაკომპანია თუშეთი\", საქართველოს საავიაციო უნივერსიტეტი, ქალთა ჯანმრთელობის ორგანიზაცია , ვისოლ პეტროლიუმ ჯორჯია , შპს \"ინფინიტი\" , შპს \"შირნ ხოფერი\", შპს \"ფერა ჯორჯია\",შპს ,,ენერგო არაგვი\", შპს ,,ევრო დექი\"შპს ,,ახალი ნათება\", შპს ,,ვესტა კაპიტალი\", შპს ,,თერმარსენალი\", შპს ,,ედრესი\", შპს ,,RIXOS\", შპს ,,შოპ ენ\", შპს ,,მაქსიმალი\" , საქართველოს სასაზღვრო პოლიცია, იბერია ბიზნეს ჯგუფი, შპს ,,სპეცჰიდრომშენი\", საქართველოს კინოს და თეატრის მუზეუმი, შპს ,,ელიზი ჯგუფი\", შპს ,,ღვინის ლაბორატორია\", შპს ,,ჰომბილდერი\", შპს ,,ვესტა\", შპს ,,ვეზირი\", შპს ,,სპექტრი\", შპს ,,გეოინჟინერინგი\", შპს ,,რეგალი\", შპს &bdquo;არქ ქრეატიონ\"! სსიპ&nbsp; ,,ლ. საყვარელიძის სახ. დაავადებათა კონტროლის და საზოგადაოებრივი ჯანმრთელობის ეროვნული ცენტრის\", შპს ,,კაპტო დიზაინის\", შპს ,,ფურშეტი,\" შპს ,,MS group\", შპს ,,ივერმედი\", შპს, ღვინის ლაბორატორია\", შპს ,,ჯორჯიან სერვის გრუპი\", მიგრაციის საერთაშორისო ორგანიზაცია, გერმანიის საერთაშორისო თანამშრომლობის საზოგადოება GIZ და სხვ.</p>', 'Hidden Field', 'empty', 'ge', 0, 1),
(219, 110, 0, 1523908800, '2018-04-17', 'news', 'დაწყებულია მსმენელთა რეგისტრაცია ბუღალტერიის კურსზე!', '<p>კურსი მოიცავს: თვე ნახევარს</p>\n<p>ღირებულება</p>\n<p>დღის ჯგუფში:280 ლარი</p>\n<p>საღამოს ჯგუფში: 300 ლარი</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(220, 110, 0, 1523908800, '2018-04-17', 'news', 'დაწყებულია მსმენელთა რეგისტრაცია ბუღალტერიის კურსზე!', '<p>კურსი მოიცავს: თვე ნახევარს</p>\n<p>ღირებულება</p>\n<p>დღის ჯგუფში:280 ლარი</p>\n<p>საღამოს ჯგუფში: 300 ლარი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(221, 111, 0, 1523908800, '2018-04-17', 'news', 'სამედიცინო რეგისტრატორის კურსზე მსმენელთა დაწყებულია!', '<p>სამედიცინო რეგისტრატორის კურსზე მიმდინარეობს დაინტერესებულ პირთა მიღება 23 აპრილამდე!</p>\n<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 250 ლარი</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(222, 111, 0, 1523908800, '2018-04-17', 'news', 'სამედიცინო რეგისტრატორის კურსზე მსმენელთა დაწყებულია!', '<p>სამედიცინო რეგისტრატორის კურსზე მიმდინარეობს დაინტერესებულ პირთა მიღება 23 აპრილამდე!</p>\n<p>კურსი მოიცავს: 12 ლექციას</p>\n<p>კურსის ღირებულება: 250 ლარი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(223, 112, 0, 1523908800, '2018-04-17', 'news', 'ექსელის პროფესიონალური კურსი!', '<p>მხოლოდ ჩვენთა ისწავლება ექსელის სხვადასხვა დონის პროფესიონალური კურსები ქართულ, რუსულ და ინგლისურ ენაზე</p>\n<p>დამწყები - Basic Level;<br /> საშუალო - Intermediate Level;<br /> მაღალი დონე- Advanced Level;<br />VBA კურსი;<br />ბიზნეს მოდელირება და მონაცემთა ანალიზი ექსელში;<br />ექსელის სპეც კურსი - საფინანსო კომპანიის თანამშრომლებისთვის;<br />ექსელი უცხოელებისთვის ინგლისურად;<br />საათობრივი კონსულტაცია ნებისმიერ საფინანსო თუ ანალიტიკურ და სტატისტიკურ საკითხებზე;</p>\n<p>&nbsp;</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(224, 112, 0, 1523908800, '2018-04-17', 'news', 'ექსელის პროფესიონალური კურსი!', '<p>მხოლოდ ჩვენთა ისწავლება ექსელის სხვადასხვა დონის პროფესიონალური კურსები ქართულ, რუსულ და ინგლისურ ენაზე</p>\n<p>დამწყები - Basic Level;<br /> საშუალო - Intermediate Level;<br /> მაღალი დონე- Advanced Level;<br />VBA კურსი;<br />ბიზნეს მოდელირება და მონაცემთა ანალიზი ექსელში;<br />ექსელის სპეც კურსი - საფინანსო კომპანიის თანამშრომლებისთვის;<br />ექსელი უცხოელებისთვის ინგლისურად;<br />საათობრივი კონსულტაცია ნებისმიერ საფინანსო თუ ანალიტიკურ და სტატისტიკურ საკითხებზე;</p>\n<p>&nbsp;</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(225, 113, 0, 1523908800, '2018-04-17', 'news', 'საგადასახადო კანონმდებლობის კურსზე გრძლედება რეგისტრაცია!', '<p>კურსი მოიცავს: 12/2 საათიან ლექციას</p>\n<p>ლექციები&nbsp;ჩატარდება: კვირაში ორჯერ</p>\n<p>კურსის ღირებულება: 400 ლარი</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(226, 113, 0, 1523908800, '2018-04-17', 'news', 'საგადასახადო კანონმდებლობის კურსზე გრძლედება რეგისტრაცია!', '<p>კურსი მოიცავს: 12/2 საათიან ლექციას</p>\n<p>ლექციები&nbsp;ჩატარდება: კვირაში ორჯერ</p>\n<p>კურსის ღირებულება: 400 ლარი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(227, 114, 0, 1523908800, '2018-04-17', 'gallery', 'ექსელის კურსები', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(228, 114, 0, 1523908800, '2018-04-17', 'gallery', 'ექსელის კურსები', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(229, 115, 0, 1523908800, '2018-04-17', 'gallery', 'გიდის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(230, 115, 0, 1523908800, '2018-04-17', 'gallery', 'გიდის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(231, 116, 0, 1523908800, '2018-04-17', 'gallery', 'გისის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(232, 116, 0, 1523908800, '2018-04-17', 'gallery', 'გისის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(233, 117, 0, 1523908800, '2018-04-17', 'gallery', 'გისის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 1),
(234, 117, 0, 1523908800, '2018-04-17', 'gallery', 'გისის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 1),
(235, 118, 0, 1523908800, '2018-04-17', 'languagedata', 'finishprojects', '<p>Finished projects</p>', '', 'empty', 'en', 0, 0),
(236, 118, 0, 1523908800, '2018-04-17', 'languagedata', 'finishprojects', '<p>დასრულებული პროექტები</p>', '', 'empty', 'ge', 0, 0),
(237, 119, 0, 1523995200, '2018-04-18', 'ongoing', 'შპს ,,პრესტიჟი\"', '<p>შპს ,,პრესტიჟის\" კადრების მომზადება კომპიუტერულ გრაფიკულ პროგრამებში!</p>\n<p>პედაგოგი: დიანა დანელიანი</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(238, 119, 0, 1523995200, '2018-04-18', 'ongoing', 'შპს ,,პრესტიჟი\"', '<p>შპს ,,პრესტიჟის\" კადრების მომზადება კომპიუტერულ გრაფიკულ პროგრამებში!</p>\n<p>პედაგოგი: დიანა დანელიანი</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(239, 120, 0, 1523995200, '2018-04-18', 'ongoing', 'შპს ,,პრესტიჟი\"', '<p>შპს ,,პრესტიჟის\" კადრების მომზადება კომპიუტერულ გრაფიკულ პროგრამებში!</p>\n<p>პედაგოგი: დიანა დანელიანი</p>', 'Hidden Field', 'empty', 'en', 0, 1),
(240, 120, 0, 1523995200, '2018-04-18', 'ongoing', 'შპს ,,პრესტიჟი\"', '<p>შპს ,,პრესტიჟის\" კადრების მომზადება კომპიუტერულ გრაფიკულ პროგრამებში!</p>\n<p>პედაგოგი: დიანა დანელიანი</p>', 'Hidden Field', 'empty', 'ge', 0, 1),
(241, 121, 0, 1523995200, '2018-04-18', 'future', 'ბიზსეს სტატისტიკის კურსი', '<p>მიმდინარეობს მოლაპარაკება ბიზნეს სტატისტიკის და SPSS-ის კურსის ჩატარებაზე შპს ,,გამასთან!</p>', 'Hidden Field', 'empty', 'en', 0, 0),
(242, 121, 0, 1523995200, '2018-04-18', 'future', 'ბიზსეს სტატისტიკის კურსი', '<p>მიმდინარეობს მოლაპარაკება ბიზნეს სტატისტიკის და SPSS-ის კურსის ჩატარებაზე შპს ,,გამასთან!</p>', 'Hidden Field', 'empty', 'ge', 0, 0),
(243, 122, 0, 1523995200, '2018-04-18', 'usefulllinks', 'ჯობს.გე', 'Hidden field', 'http://jobs.ge/client/vip-intellect-group/', 'http://jobs.ge/client/vip-intellect-group/', 'en', 0, 0),
(244, 122, 0, 1523995200, '2018-04-18', 'usefulllinks', 'ჯობს.გე', 'Hidden field', 'http://jobs.ge/client/vip-intellect-group/', 'http://jobs.ge/client/vip-intellect-group/', 'ge', 0, 0),
(245, 123, 0, 1523995200, '2018-04-18', 'usefulllinks', 'ჯობს.გე', 'Hidden field', 'http://jobs.ge/client/vip-intellect-group/', 'http://jobs.ge/client/vip-intellect-group/', 'en', 0, 1),
(246, 123, 0, 1523995200, '2018-04-18', 'usefulllinks', 'ჯობს.გე', 'Hidden field', 'http://jobs.ge/client/vip-intellect-group/', 'http://jobs.ge/client/vip-intellect-group/', 'ge', 0, 1),
(247, 124, 0, 1523995200, '2018-04-18', 'usefulllinks', 'არის.ჯე', 'Hidden field', 'https://edu.aris.ge/preview/vip-intellect-group/turistuli-gidebis-mosamzadebeli-kursebi-rusul-da-inglisur-enebze.html', 'https://edu.aris.ge/preview/vip-intellect-group/turistuli-gidebis-mosamzadebeli-kursebi-rusul-da-inglisur-enebze.html', 'en', 0, 0),
(248, 124, 0, 1523995200, '2018-04-18', 'usefulllinks', 'არის.ჯე', 'Hidden field', 'https://edu.aris.ge/preview/vip-intellect-group/turistuli-gidebis-mosamzadebeli-kursebi-rusul-da-inglisur-enebze.html', 'https://edu.aris.ge/preview/vip-intellect-group/turistuli-gidebis-mosamzadebeli-kursebi-rusul-da-inglisur-enebze.html', 'ge', 0, 0),
(249, 125, 0, 1523908800, '2018-04-17', 'usefulllinks', 'ვიპ გრუპი-გასვლითი კოპრორატიული ტრენინგები საქართველოს მაშტაბით', 'Hidden field', 'https://www.facebook.com/VIP-GROUP-1979453345668458/', 'https://www.facebook.com/VIP-GROUP-1979453345668458/', 'en', 0, 0),
(250, 125, 0, 1523908800, '2018-04-17', 'usefulllinks', 'ვიპ გრუპი-გასვლითი კოპრორატიული ტრენინგები საქართველოს მაშტაბით', 'Hidden field', 'https://www.facebook.com/VIP-GROUP-1979453345668458/', 'https://www.facebook.com/VIP-GROUP-1979453345668458/', 'ge', 0, 0),
(251, 126, 0, 1523995200, '2018-04-18', 'vacancies', 'საოფიეს პროგრამების გამოცდილი პედაგოგი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge <br />fb გვერდზე: https://www.facebook.com/vipintellectgroup/</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება საოფისე პროგრამების პრაქტიკოსი სპეციალისტი-პედაგოგი,.</p>\n<p>აუცილებელი მოთხოვნა: <br />1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა - Ms Office; Excel (basic, Intermediate); Outlook; Windows;<br />2. სასურველიია შეძლოს ლექციების ჩატარება რუსულ და ინგლისურ ენაზეც.<br />3. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი-ოთხი დღე.<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.<br />საშუალოდ 400 -500 ლარის ფარგლებში.<br />ხოლო თუ კვირაში 5-6 დღე იმუშავებს ანაზღაურება იქნება მეტი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'en', 0, 0),
(252, 126, 0, 1523995200, '2018-04-18', 'vacancies', 'საოფისე პროგრამების გამოცდილი პედაგოგი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge <br />fb გვერდზე: https://www.facebook.com/vipintellectgroup/</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება საოფისე პროგრამების პრაქტიკოსი სპეციალისტი-პედაგოგი,.</p>\n<p>აუცილებელი მოთხოვნა: <br />1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა - Ms Office; Excel (basic, Intermediate); Outlook; Windows;<br />2. სასურველიია შეძლოს ლექციების ჩატარება რუსულ და ინგლისურ ენაზეც.<br />3. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი-ოთხი დღე.<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.<br />საშუალოდ 400 -500 ლარის ფარგლებში.<br />ხოლო თუ კვირაში 5-6 დღე იმუშავებს ანაზღაურება იქნება მეტი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'ge', 0, 0),
(253, 127, 0, 1523995200, '2018-04-18', 'vacancies', 'საოფიეს პროგრამების გამოცდილი პედაგოგი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge <br />fb გვერდზე: https://www.facebook.com/vipintellectgroup/</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება საოფისე პროგრამების პრაქტიკოსი სპეციალისტი-პედაგოგი,.</p>\n<p>აუცილებელი მოთხოვნა: <br />1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა - Ms Office; Excel (basic, Intermediate); Outlook; Windows;<br />2. სასურველიია შეძლოს ლექციების ჩატარება რუსულ და ინგლისურ ენაზეც.<br />3. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი-ოთხი დღე.<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.<br />საშუალოდ 400 -500 ლარის ფარგლებში.<br />ხოლო თუ კვირაში 5-6 დღე იმუშავებს ანაზღაურება იქნება მეტი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'en', 0, 1),
(254, 127, 0, 1523995200, '2018-04-18', 'vacancies', 'საოფიეს პროგრამების გამოცდილი პედაგოგი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge <br />fb გვერდზე: https://www.facebook.com/vipintellectgroup/</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება საოფისე პროგრამების პრაქტიკოსი სპეციალისტი-პედაგოგი,.</p>\n<p>აუცილებელი მოთხოვნა: <br />1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა - Ms Office; Excel (basic, Intermediate); Outlook; Windows;<br />2. სასურველიია შეძლოს ლექციების ჩატარება რუსულ და ინგლისურ ენაზეც.<br />3. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი-ოთხი დღე.<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.<br />საშუალოდ 400 -500 ლარის ფარგლებში.<br />ხოლო თუ კვირაში 5-6 დღე იმუშავებს ანაზღაურება იქნება მეტი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'ge', 0, 1),
(255, 128, 0, 1523995200, '2018-04-18', 'vacancies', 'WEB პროგრამების პედაგოგი, სპციალისტი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება WEB პროგრამების სპციალისტი.</p>\n<p>აუცილებელი მოთხოვნა:</p>\n<p>1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა -<br /> HTML/CSS; PHP/My SQL; JAVA SCRIPT;<br />2. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.<br />3. აუცილებელია შექმნილი ქონდეს WEB გვერდები, წარმოადგინოს თავისი ნამუშევრები.<br />4. შეძლოს მაღალ დონეზე შექმნას ნებისმიერი სირთულის WEB გვერდი</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი დღე .<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>დამატებითი ინფორმაცია ჩვენი სასწავლო ცენტრის შესახებ იხილეთ www.vipintellect.ge</p>\n<p>&nbsp;</p>', '', 'empty', 'en', 0, 0),
(256, 128, 0, 1523995200, '2018-04-18', 'vacancies', 'WEB პროგრამების პედაგოგი, სპციალისტი', '<p>შპს ,,VIP Intellect Group&rdquo; ერთერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 17 წლიანი გამოცდილება გააჩნია.</p>\n<p>დაწვრილებითი ინფორმაცია ჩვენი ცენტრის შესახებ შეგიძლიათ იხილოთ ჩვენს ვებ გვერდზე www.vipintellect.ge</p>\n<p>შპს ,,VIP Intellect Group&ldquo; მოთხოვნილების გაზრდასთან დაკავშირებით ესაჭიროება WEB პროგრამების სპციალისტი.</p>\n<p>აუცილებელი მოთხოვნა:</p>\n<p>1. ჩამოთვლილი პროგრამების პროფესიონალურ დონეზე ცოდნა -<br /> HTML/CSS; PHP/My SQL; JAVA SCRIPT;<br />2. ჰქონდეს კომპიუტერის პედაგოგად მუშაობის არანაკლებ 2 წლიანი გამოცდილება.<br />3. აუცილებელია შექმნილი ქონდეს WEB გვერდები, წარმოადგინოს თავისი ნამუშევრები.<br />4. შეძლოს მაღალ დონეზე შექმნას ნებისმიერი სირთულის WEB გვერდი</p>\n<p>მსურველმა უნდა წარმოგვიდგინოს სასწავლო პროგრამა ისე, რომ ლექციები მოიცავდეს 50%/50% თეორიულ და პრაქტიკულ საკითხებს, რათა კურსის დამთავრების შემდეგ ჩვენმა მსმენელმა უნდა შეძლოს პრაქტიკულად მისი გამოყენება.</p>\n<p>პიროვნული ღირებულებები:<br />&bull; კომპანიის შინაგანაწესის გათავისება და გათვალისწინება<br />&bull; გუნდში მუშაობის უნარი<br />&bull; კეთილგანწყობილი და მეგობრული დამოკიდებულების შენარჩუნება კომპანიის ყველა წევრთან<br />&bull; საკუთარი პროგრამის მუდმივად განვითარება და სიახლეების დანერგვის მოტივაცია<br />სამუშაო საათები: კვირაში სამი დღე .<br />ანაზღაურება: ყოველი ჯგუფიდან ან შესრულებული შეკვეთებიდან 50%- დარიცხული ხელფასი.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, სადაც მითითებული იქნება დეტალურად სამუშაო გამოცდილება, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />მონაცემები გამოგვიგზავნეთ ninovipicg@gmail.com</p>\n<p>დამატებითი ინფორმაცია ჩვენი სასწავლო ცენტრის შესახებ იხილეთ www.vipintellect.ge</p>\n<p>&nbsp;</p>', '', 'empty', 'ge', 0, 0),
(257, 129, 0, 1523995200, '2018-04-18', 'vacancies', 'უფასო სტაჟირება-საუკეთესოების დასაქმების შეთავაზებით', '<p>უფასო სტაჟირება-საუკეთესოების დასაქმების შეთავაზებით!</p>\n<p>შპს ,,VIP Intellect Group&ldquo; აცხადებს ერთთვიან უფასო სტაჟირებას, მათთვის ვისაც სურს მიიღოს გამოცდილება კომპანიაში მუშაობის, კერძოდ გაყიდვების და მარკეტინგის სფეროში!</p>\n<p>სასურველია კანდიდატები იყვნენ ახალი კურსდამთავრებულები, დაინტერესებული პირები, ან მე-3-4 კურსის სტუდენტები, რომელთაც უნდათ, რომ აიმაღლონ კვალიფიკაცია, შეიძინონ პრაქტიკული უნარები და გახდნენ მოთხოვნადი კადრი.</p>\n<p>გასაუბრების შედეგად აირჩევა 4 -5 კანდიდატი</p>\n<p>სტაჟიების უპირატესობა:<br />1. საუკეთესო 1-2 სტაჟიორს გეძლევათ რეალურად ამავე კომპანიაში დასაქმების შესაძლებლობა ,,კორპორატიული და საცალო გაყიდვების მენეჯერის&ldquo; პოზიციაზე<br />2. სტაჟირების დროს თქვენივე შესრულებული ნებისმიერი პროექტიდან გეძლევათ ანაზღაურება.<br />3. თქვენ იძენთ იმ უნარებს და გამოცდილებას, რაც დასაქმებისთვის ყველა კომპანიაში მოგეთხოვებათ (ონლაინ, სატელეფონო და პირდაპირი ურთიერთობა კომპანიებთან, საქმიანი მოლაპარაკებები, შეთავაზებები, ღონისძიებები, საქმიანი წერილების დამუშავება, საქმიანი ეტიკეტი)<br />4. სრულიად უფასოდ გივლით სტაჟირებისთვის აუცილებელ სწავლებას კომპანიის მენეჯმენტისგან<br />5. ჩვენს სტაჟიორებს ჩვენივე სასწავლო ცენტრში ნებისმიერ სასწავლო კურსზე სწავლის სურვილის შემთხვევაში გეძლევათ 20%-იანი ფასდაკლება ჯგუფური მეცადინეობისას და 10%-იანი ფასდაკლება ინდივიდუალური სწავლებისას თქვენივე განვითარებისთვის. <br />6. არ მოგეთხოვებათ ფიქსირებული სამუშაო საათები</p>\n<p>აუცილებელი მოთხოვნები:</p>\n<p>უმაღლესი ან მიმდინარე განათლება, სასურველია ბიზნეს ადმინისტრირების სპეციალობით;<br />საოფისე პროგრამების ცოდნა;<br />გუნდური მუშაობის უნარი;<br />მოლაპარაკების წარმოების უნარი;<br />დამარწმუნებელი;<br />კომუნიკაბელური;<br />მოტივირებული;<br />ორგანიზებული და მოწესრიგებული;<br />შედეგზე ორიენტირებული;<br />პასუხისმგებლობის მაღალი გრძნობა.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />დამატებითი ინფორმაცია ჩვენი კომპანიის და პირობების შესახებ იხილეთ: www.vipintellect.ge</p>\n<p>შპს ,,VIP Intellect Group&rdquo; ერთ-ერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 16 წლიანი გამოცდილება გააჩნია.</p>\n<p>,,VIP Intellect Group&rdquo; კურსდამთავრებულები არიან მრავალი ათეული ადგილობრივი და საერთაშორისო ორგანიზაცია: http://vipintellect.ge/new/index.php</p>\n<p>ჩვენი ტრენერები არიან გამოცდილი პრაქტიკოსი სპეციალისტები: პროგრამისტები, მენეჯერები, ფინანსისტები, ბიზნეს ექსპერტები, მარკეტოლოგები და ბუღალტრები!</p>\n<p>www.vipintellect.ge<br />e-mail: ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'en', 0, 0),
(258, 129, 0, 1523995200, '2018-04-18', 'vacancies', 'უფასო სტაჟირება-საუკეთესოების დასაქმების შეთავაზებით', '<p>უფასო სტაჟირება-საუკეთესოების დასაქმების შეთავაზებით!</p>\n<p>შპს ,,VIP Intellect Group&ldquo; აცხადებს ერთთვიან უფასო სტაჟირებას, მათთვის ვისაც სურს მიიღოს გამოცდილება კომპანიაში მუშაობის, კერძოდ გაყიდვების და მარკეტინგის სფეროში!</p>\n<p>სასურველია კანდიდატები იყვნენ ახალი კურსდამთავრებულები, დაინტერესებული პირები, ან მე-3-4 კურსის სტუდენტები, რომელთაც უნდათ, რომ აიმაღლონ კვალიფიკაცია, შეიძინონ პრაქტიკული უნარები და გახდნენ მოთხოვნადი კადრი.</p>\n<p>გასაუბრების შედეგად აირჩევა 4 -5 კანდიდატი</p>\n<p>სტაჟიების უპირატესობა:<br />1. საუკეთესო 1-2 სტაჟიორს გეძლევათ რეალურად ამავე კომპანიაში დასაქმების შესაძლებლობა ,,კორპორატიული და საცალო გაყიდვების მენეჯერის&ldquo; პოზიციაზე<br />2. სტაჟირების დროს თქვენივე შესრულებული ნებისმიერი პროექტიდან გეძლევათ ანაზღაურება.<br />3. თქვენ იძენთ იმ უნარებს და გამოცდილებას, რაც დასაქმებისთვის ყველა კომპანიაში მოგეთხოვებათ (ონლაინ, სატელეფონო და პირდაპირი ურთიერთობა კომპანიებთან, საქმიანი მოლაპარაკებები, შეთავაზებები, ღონისძიებები, საქმიანი წერილების დამუშავება, საქმიანი ეტიკეტი)<br />4. სრულიად უფასოდ გივლით სტაჟირებისთვის აუცილებელ სწავლებას კომპანიის მენეჯმენტისგან<br />5. ჩვენს სტაჟიორებს ჩვენივე სასწავლო ცენტრში ნებისმიერ სასწავლო კურსზე სწავლის სურვილის შემთხვევაში გეძლევათ 20%-იანი ფასდაკლება ჯგუფური მეცადინეობისას და 10%-იანი ფასდაკლება ინდივიდუალური სწავლებისას თქვენივე განვითარებისთვის. <br />6. არ მოგეთხოვებათ ფიქსირებული სამუშაო საათები</p>\n<p>აუცილებელი მოთხოვნები:</p>\n<p>უმაღლესი ან მიმდინარე განათლება, სასურველია ბიზნეს ადმინისტრირების სპეციალობით;<br />საოფისე პროგრამების ცოდნა;<br />გუნდური მუშაობის უნარი;<br />მოლაპარაკების წარმოების უნარი;<br />დამარწმუნებელი;<br />კომუნიკაბელური;<br />მოტივირებული;<br />ორგანიზებული და მოწესრიგებული;<br />შედეგზე ორიენტირებული;<br />პასუხისმგებლობის მაღალი გრძნობა.</p>\n<p>მსურველმა გამოგზავნოს თავისი CV ქართულ ენაზე, ჩვენ თავად დავუკავშირდებით სასურველ კანდიდატებს.<br />ისეთი პირები, რომლებიც არ აკმაყოფილებენ ზემოთ ჩამოთვლილ პირობებს ნუ გამოგვიგზავნიან თავიანთ მონაცემებს.<br />დამატებითი ინფორმაცია ჩვენი კომპანიის და პირობების შესახებ იხილეთ: www.vipintellect.ge</p>\n<p>შპს ,,VIP Intellect Group&rdquo; ერთ-ერთი მრავალპროფილიანი სასწავლო ცენტრია საქართველოში, რომლის მენეჯმენტს და ძირითად გუნდს მუშაობის 16 წლიანი გამოცდილება გააჩნია.</p>\n<p>,,VIP Intellect Group&rdquo; კურსდამთავრებულები არიან მრავალი ათეული ადგილობრივი და საერთაშორისო ორგანიზაცია: http://vipintellect.ge/new/index.php</p>\n<p>ჩვენი ტრენერები არიან გამოცდილი პრაქტიკოსი სპეციალისტები: პროგრამისტები, მენეჯერები, ფინანსისტები, ბიზნეს ექსპერტები, მარკეტოლოგები და ბუღალტრები!</p>\n<p>www.vipintellect.ge<br />e-mail: ninovipicg@gmail.com</p>\n<p>&nbsp;</p>', '', 'empty', 'ge', 0, 0),
(259, 130, 0, 1523563200, '2018-04-13', 'slider', 'ტრენინგ ცენტრი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(260, 130, 0, 1523563200, '2018-04-13', 'slider', 'ფოტო 3', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(277, 139, 0, 1524081600, '2018-04-19', 'gallery', 'სასტუმროს მენეჯმენტის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(278, 139, 0, 1524081600, '2018-04-19', 'gallery', 'სასტუმროს მენეჯმენტის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(279, 140, 0, 1524081600, '2018-04-19', 'gallery', 'ფინანსური მენეჯმენტი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(280, 140, 0, 1524081600, '2018-04-19', 'gallery', 'ფინანსური მენეჯმენტი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(281, 141, 0, 1524081600, '2018-04-19', 'gallery', 'გაყიდვების სტანდარტები-ელთ კომპანის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(282, 141, 0, 1524081600, '2018-04-19', 'gallery', 'გაყიდვების სტანდარტები-ელთ კომპანის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(283, 142, 0, 1524081600, '2018-04-19', 'gallery', 'რუსული ენის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(284, 142, 0, 1524081600, '2018-04-19', 'gallery', 'რუსული ენის კურსი', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(285, 143, 0, 1524081600, '2018-04-19', 'gallery', 'კომპიუტერული გრაფიკა-პრესტიჟის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(286, 143, 0, 1524081600, '2018-04-19', 'gallery', 'კომპიუტერული გრაფიკა-პრესტიჟის კადრებთან', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(287, 144, 0, 1524168000, '2018-04-20', 'gallery', 'ღვინის ლაბორატორიის კადრების მომზადება-კომპიუტერულ პროგრამებში', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(288, 144, 0, 1524168000, '2018-04-20', 'gallery', 'ღვინის ლაბორატორიის კადრების მომზადება-კომპიუტერულ პროგრამებში', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(289, 145, 0, 1524168000, '2018-04-20', 'gallery', 'კომპიუტერული ბუღალტერიის კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(290, 145, 0, 1524168000, '2018-04-20', 'gallery', 'კომპიუტერული ბუღალტერიის კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(291, 146, 0, 1524168000, '2018-04-20', 'gallery', 'ეკონომიკის და მდგრადი განვითარების სამინისტროს კადრების მომზადება-ექსელის პროგრამაში', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(292, 146, 0, 1524168000, '2018-04-20', 'gallery', 'ეკონომიკის და მდგრადი განვითარების სამინისტროს კადრების მომზადება-ექსელის პროგრამაში', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(293, 147, 0, 1524168000, '2018-04-20', 'gallery', 'სამედიცინო რეგისტრატორების კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(294, 147, 0, 1524168000, '2018-04-20', 'gallery', 'სამედიცინო რეგისტრატორების კურსის მსვლელობისას', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(295, 148, 0, 1524168000, '2018-04-20', 'gallery', 'iPhone+კადრების მომზადება- მენეჯმენტის კურსზე', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(296, 148, 0, 1524168000, '2018-04-20', 'gallery', 'iPhone+კადრების მომზადება- მენეჯმენტის კურსზე', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0),
(297, 149, 0, 1524168000, '2018-04-20', 'gallery', 'სისტემრუი და ქსელური ადმინისტრირება', 'Hidden field', 'Hidden Field', 'empty', 'en', 0, 0),
(298, 149, 0, 1524168000, '2018-04-20', 'gallery', 'სისტემრუი და ქსელური ადმინისტრირება', 'Hidden field', 'Hidden Field', 'empty', 'ge', 0, 0);

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
(1, 1, 'contactdetails', 'Contact details', '{\n  \"date\": {\n      \"visibility\":\"false\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"false\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"ტექსტი\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"false\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"false\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  }\n}', 'en', 1),
(2, 1, 'contactdetails', 'საკონტაქტო ინფორმაცია', '{\r\n  \"date\": {\r\n      \"visibility\":\"false\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ტექსტი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 1),
(3, 2, 'contactdetails', 'Contact information', '{\n  \"date\": {\n      \"visibility\":\"false\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"ტექსტი\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"false\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"false\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  }\n}', 'en', 0),
(4, 2, 'contactdetails', 'საკონტაქტო ინფორმაცია', '{\n  \"date\": {\n      \"visibility\":\"false\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"ტექსტი\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"false\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"false\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  }\n}', 'ge', 0),
(7, 4, 'slogan', 'Slogan', '{\r\n  \"date\": {\r\n      \"visibility\":\"false\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სლოგანი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(5, 3, 'slider', 'Slider', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(6, 3, 'slider', 'სლაიდერი', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(8, 4, 'slogan', 'სლოგანი', '{\r\n  \"date\": {\r\n      \"visibility\":\"false\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სლოგანი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(9, 5, 'staff', 'Team', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სახელი გვარი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"პროფესია\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"საკონტაქტო ინფორმაცია (სოც. ქსელების ბმულები)\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(10, 5, 'staff', 'ჩვენი გუნდი', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სახელი გვარი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"პროფესია\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"საკონტაქტო ინფორმაცია (სოც. ქსელების ბმულები)\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(11, 6, 'partners', 'Partners', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"პარტნიორის დასახელება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(12, 6, 'partners', 'დასრულებული პროექტები ლოგოები', '{\n  \"date\": {\n      \"visibility\":\"true\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"პარტნიორის დასახელება\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"false\",\n    \"title\":\"აღწერა\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"false\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"true\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"false\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  }\n}', 'ge', 0),
(13, 7, 'socialnetworks', 'Social networks', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სოციალური ქსელი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"font aswome-ის კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(14, 7, 'socialnetworks', 'სოციალური ქსელები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სოციალური ქსელი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"font aswome-ის კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(15, 8, 'usefulllinks', 'Usefull links', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"დასახელება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"გადასვლა ( blank | self )\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(16, 8, 'usefulllinks', 'სასარგებლო ბმულები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"დასახელება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"გადასვლა ( blank | self )\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(17, 9, 'languagedata', 'Language data', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(18, 9, 'languagedata', 'თარგმნა', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(19, 10, 'howfindus', 'How find us?', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"როგორ შეიტყვეთ ჩვენს შესახებ?\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(21, 11, 'news', 'News', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(20, 10, 'howfindus', 'საიდან შეიტყვეთ ჩვენს შესახებ?', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"როგორ შეიტყვეთ ჩვენს შესახებ?\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(22, 11, 'news', 'სიახლეები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(23, 12, 'vacancies', 'Vacancies', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"პროფესია\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(24, 12, 'vacancies', 'ვაკანსიები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"პროფესია\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(25, 13, 'gallery', 'Gallery', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"Youtube ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(26, 13, 'gallery', 'გალერეა', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"Youtube ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(27, 14, 'test', 'ტესტ სიახლეები', '{\n  \"date\": {\n      \"visibility\":\"true\",\n      \"title\":\"თარიღი\",\n      \"defaultValue\":\"\"\n  },\n  \"title\":{\n    \"visibility\":\"true\",\n    \"title\":\"სათაური\",\n    \"defaultValue\":\"\"\n  },\n  \"pageText\":{\n    \"visibility\":\"true\",\n    \"title\":\"აღწერა\",\n    \"defaultValue\":\"\"\n  },\n  \"classname\":{\n    \"visibility\":\"true\",\n    \"title\":\"კლასი\",\n    \"defaultValue\":\"\"\n  },\n  \"link\":{\n    \"visibility\":\"true\",\n    \"title\":\"ბმული\",\n    \"defaultValue\":\"\"\n  },\n  \"photoUploaderBox\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფოტოს მიმაგრება\",\n    \"defaultValue\":\"\"\n  },\n  \"file_attach\":{\n    \"visibility\":\"true\",\n    \"title\":\"ფაილის მიმაგრება\",\n    \"defaultValue\":\"\"\n  }\n}', 'en', 1),
(28, 14, 'test', 'ტესტ სიახლეები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 1),
(29, 15, 'ongoing', 'On going projects', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(30, 15, 'ongoing', 'მიმდინარე პროექტები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(31, 16, 'finished', 'Finished projects', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 1),
(32, 16, 'finished', 'დასრულებული პროექტები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 1),
(33, 17, 'future', 'Future projects', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'en', 0),
(34, 17, 'future', 'სამომავლო პროექტები', '{\r\n  \"date\": {\r\n      \"visibility\":\"true\",\r\n      \"title\":\"თარიღი\",\r\n      \"defaultValue\":\"\"\r\n  },\r\n  \"title\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"სათაური\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"pageText\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"აღწერა\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"classname\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"კლასი\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"link\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ბმული\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"photoUploaderBox\":{\r\n    \"visibility\":\"true\",\r\n    \"title\":\"ფოტოს მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  },\r\n  \"file_attach\":{\r\n    \"visibility\":\"false\",\r\n    \"title\":\"ფაილის მიმაგრება\",\r\n    \"defaultValue\":\"\"\r\n  }\r\n}', 'ge', 0),
(35, 18, 'moretest', 'სატესტო', '\r\n		{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(36, 18, 'moretest', 'სატესტო', '\r\n		{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'ge', 1),
(37, 19, 'testmode', 'სატესტო მოდული', '{\r\n			\"date\": {\r\n			  \"visibility\":\"true\",\r\n			  \"title\":\"თარიღი\",\r\n			  \"defaultValue\":\"\"\r\n			},\r\n			\"title\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"სათაური\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"pageText\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"აღწერა\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"classname\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"კლასი\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"link\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ბმული\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"photoUploaderBox\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფოტოს მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			},\r\n			\"file_attach\":{\r\n				\"visibility\":\"true\",\r\n				\"title\":\"ფაილის მიმაგრება\",\r\n				\"defaultValue\":\"\"\r\n			}\r\n		}', 'en', 1),
(38, 19, 'testmode', 'სატესტო მოდული', '{\n			\"date\": {\n			  \"visibility\":\"false\",\n			  \"title\":\"თარიღი\",\n			  \"defaultValue\":\"\"\n			},\n			\"title\":{\n				\"visibility\":\"true\",\n				\"title\":\"სათაური\",\n				\"defaultValue\":\"\"\n			},\n			\"pageText\":{\n				\"visibility\":\"true\",\n				\"title\":\"აღწერა\",\n				\"defaultValue\":\"\"\n			},\n			\"classname\":{\n				\"visibility\":\"true\",\n				\"title\":\"კლასი\",\n				\"defaultValue\":\"\"\n			},\n			\"link\":{\n				\"visibility\":\"true\",\n				\"title\":\"ბმული\",\n				\"defaultValue\":\"\"\n			},\n			\"photoUploaderBox\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფოტოს მიმაგრება\",\n				\"defaultValue\":\"\"\n			},\n			\"file_attach\":{\n				\"visibility\":\"true\",\n				\"title\":\"ფაილის მიმაგრება\",\n				\"defaultValue\":\"\"\n			}\n		}', 'ge', 1);

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
(23, 1524039672, '91.184.107.23', 74, 'l.dzneladze97@gmail.com', 'dzneladze lela', '597888159', '20', 'shetanxmebit', 26, 0),
(24, 1524040133, '188.129.160.41', 66, 'guga@iaa.ge', 'Guram', '995599335733', '33', 'All', 26, 0),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT for table `usefull_modules`
--
ALTER TABLE `usefull_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
