-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colormoon`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `image`) VALUES
(1, 'Welcome To PV Sahaya', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n', '202010141522031372574_abtimg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `description`, `image`) VALUES
(5, 'AWARD CERTIFICATE OF  MSME', '<p>MINISTRY OF MSME, GOVT OF INDIA, CONDUCTED BY 11 DAYS TRAINING PROGRAMME IN &quot;AITAM&quot;&nbsp;TEKKALI , SRIKAKULAM DIST</p>\r\n', '20181111134418736984_img_20181111_133306.jpg'),
(6, 'NGO WORK SHOP NAGAPUR  ', '<p>&quot; NGO MANAGEMENT WORKSHOP &quot; CONDUCTED BY (STAPI). IN NAGAPUR</p>\r\n', '201811111340343136628_img_20181111_133554.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `plink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `description`, `image`, `created_at`, `plink`) VALUES
(18, 'Activity Title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asp abo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit. eriores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '202010141526335045477_act5.jpg', '1602669393', 'Activity-Title'),
(19, 'Activity Title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asp abo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit. eriores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '20201014152614405730_act4.jpg', '1602669374', 'Activity-Title'),
(20, 'Activity Title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asp abo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit. eriores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '202010141526006573554_act3.jpg', '1602669360', 'Activity-Title'),
(22, 'Activity Title', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asp abo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit. eriores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui sequi ullam minima saepe, aliquid suscipit explicabo asperiores nesciunt. Diques ipsum dolor sit amet, consectetur adipisicing elit. Sint, quibusdam qui consectetur adipisicing elit. Sin sequi Diques ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '202010141525478425008_act2.jpg', '1602669347', 'Activity-Title'),
(23, 'Activity Title', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>\r\n', '20201014152505227284_act1.jpg', '1602669332', 'Activity-Title');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `map_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `title`, `mobile`, `email`, `address`, `image`, `map_link`) VALUES
(1, 'Corporate Address', '001 706 443 4830', 'ipeacecorporation@gmail.com', 'PO Box 3363, Lagrange, Georgia 30241 - USA.', '201808141158498555908_usa.jpg', 'https://www.google.com/maps/embed?pb'),
(2, 'Regional Address', '+91 709 594 888', 'ipeacecorporation@gmail.com', '301 -Manish Plaza, Sector20, Dwarka, NewDelhi - 110075.', '201808141159517935485_delhi.jpg', 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3504.0833817860184!2d77.0610539650811!3d28.567258782443613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s301+-Manish+Plaza%2C+Sector20%2C+Dwarka%2C+NewDelhi+-+110075.!5e0!3m2!1sen!2sin!4v1534228914337');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', '1');

-- --------------------------------------------------------

--
-- Table structure for table `administrative_bodies`
--

CREATE TABLE `administrative_bodies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `created_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrative_bodies`
--

INSERT INTO `administrative_bodies` (`id`, `name`, `country_id`, `state_id`, `image`, `designation`, `created_on`) VALUES
(3, 'Raju.....', 13, 251, '201808131127385546569_m1.jpg', 'govt emplyee.....', '1534139858'),
(4, 'Name Comes Here', 4, 164, '201808131127267832031_m1.jpg', 'Designation', '1534248806'),
(5, 'Name Comes Here', 14, 290, '201808131128242249755_m1.jpg', 'Designation', '1534248792'),
(6, 'Name Comes Here', 101, 38, '201808131128557458801_m1.jpg', 'Designation', '1534248776'),
(7, 'Name Comes Here', 13, 247, '201808131129532115783_m1.jpg', 'Designation', '1534248761'),
(8, 'Name Comes Here', 101, 2, '201808131130542356567_m1.jpg', 'Designation', '1534248741'),
(9, 'Name Comes Here', 101, 36, '201808131131584120483_m1.jpg', 'Designation', '1534248723'),
(10, 'Name Comes Here', 101, 10, '20180813113238712585_m1.jpg', 'Designation', '1534248708'),
(11, 'Name Comes Here', 101, 17, '201808131133176570739_m1.jpg', 'Designation', '1534248676');

-- --------------------------------------------------------

--
-- Table structure for table `advertise_cms`
--

CREATE TABLE `advertise_cms` (
  `id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `advertise_cms`
--

INSERT INTO `advertise_cms` (`id`, `description`, `image`, `created_at`) VALUES
(2, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '201710021533272146911_moc.jpg', '1506938607'),
(3, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '201710021602334256286_moc.jpg', '1506940353');

-- --------------------------------------------------------

--
-- Table structure for table `advisory_council`
--

CREATE TABLE `advisory_council` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advisory_council`
--

INSERT INTO `advisory_council` (`id`, `name`, `country_id`, `state_id`, `image`, `designation`, `created_on`) VALUES
(1, 'Name Comes Here', 85, 1418, '20180813152206345458_m1.jpg', 'Designation', '1534248838');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `icon`, `text`) VALUES
(1, 'flaticon-eco-friendly', 'ECO FRIENDLY'),
(2, 'flaticon-potion', 'NON TOXIC'),
(3, 'flaticon-save-water', 'CONSERVES WATER'),
(4, 'flaticon-battery', 'SAFE FOR ELECTRONICS'),
(5, 'flaticon-germs', 'KILLS GERMS'),
(6, 'flaticon-alarm-clock', 'SAVES TIME');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `plink` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `description`, `image`, `plink`, `created_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elitaliqua.1', '<h3>Lorem ipsum dolor sit amet</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '201709111139189702758_ad2.jpg', 'Lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elitaliqua1', '1505108171');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `state_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `footer_display` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'no',
  `major_city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city_state` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `footer_display`, `major_city`, `city_state`, `created_at`, `updated_at`) VALUES
(1, 'Visakhapatnam', '1', 'yes', 'yes', 'Visakhapatnam (AP)', '1507628326', '1508310178'),
(3, 'Hyderabad', '4', 'yes', 'yes', 'Hyderabad (TS)', '1507810467', '1508310222'),
(4, 'Kakinada', '1', 'yes', 'no', 'Kakinada (AP)', '1507814361', '1508310226'),
(5, 'Patna', '5', 'yes', 'no', 'Patna (BR)', '1508238695', '1508310231'),
(6, 'Rajamundry', '1', 'yes', 'no', 'Rajamundry (AP)', '1508309129', '1508310235');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_bin NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_bin NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0c723sg4h0ln13foc3pq1651q77vu0et', '::1', 1508480540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383438303238393b70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a363a2253756a697468223b733a363a226d6f62696c65223b733a31303a2239363532303732363133223b733a353a22656d61696c223b733a32343a2273756a69746840746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383438303531323b733a333a226f7470223b693a3538333836353b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b757365725f706f705f75707c623a313b5f5f63695f766172737c613a323a7b733a31313a22757365725f706f705f7570223b693a313530383438313731323b733a373a226d73675f706f70223b733a333a226f6c64223b7d6d73675f706f707c733a35383a22576520706f7374656420796f757220656e717569727920746f2072656c6176656e742042756973696e657373205375636365737366756c6c7921223b),
('1uspp29p4mdcithrn942pdlc1rrrs9fc', '::1', 1508331611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333313332363b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('6bnb4njptrq9rfjlhudl8mj08q66gucv', '::1', 1508330679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333303338313b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b6d73677c733a36313a225765206861766520526563656976656420796f7572207061796d656e7420616e6420596f7572204f7264657220497320556e6465722050726f63657373223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('6sr5t2jtl2p0j49v0ndpchh27tc20qsb', '::1', 1508321603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332313330333b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b6d73677c733a33343a22596f7572204f7264657220686173205375636365737366756c6c7920506c61636564223b5f5f63695f766172737c613a323a7b733a333a226d7367223b733a333a226f6c64223b733a353a227064617461223b733a333a226f6c64223b7d70646174617c613a323a7b733a383a226f726465725f6964223b733a363a22333332343537223b733a353a227072696365223b643a32343330303b7d),
('7pu8un0kbhl1s0brv1oc06g803sm5k31', '::1', 1508331321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333313031303b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b62756973696e6573735f646174617c613a373a7b733a31333a22627573696e6573735f6e616d65223b733a393a223130746820736c6f74223b733a31373a2262756973696e6573735f61646472657373223b733a393a223130746820736c6f74223b733a31363a2262756973696e6573735f70686f6e6531223b733a31303a2239363532303732363133223b733a31363a2262756973696e6573735f70686f6e6532223b733a31303a2239363532303732363133223b733a31353a2277686174736170705f6e756d626572223b733a31303a2239363532303732363133223b733a333a2275726c223b733a31343a227777772e676f6f676c652e636f6d223b733a343a226c6f676f223b733a35303a223230313731303138313832353039353637333832385f616e696d617465645f74696765725f77616c6c70617065722e6a7067223b7d),
('8nqd34c1stgfv31ngegllhu1gvvn2vno', '::1', 1508320017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332303031373b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('9jgfd9ih1uj2kqdl4uk6leghrv07tpvd', '::1', 1508474751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437343735303b),
('9tkmtdr26c8l48hqds1mvi7042jg7ktm', '::1', 1508330316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333303035313b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('a49pjlkf9589g081dm7ido2ut4md10aa', '::1', 1508478551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437383531393b757365725f706f705f75707c623a313b5f5f63695f766172737c613a323a7b733a31313a22757365725f706f705f7570223b693a313530383437393731393b733a373a226d73675f706f70223b733a333a226f6c64223b7d70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a343a2274656a61223b733a363a226d6f62696c65223b733a31303a2239303330373030353932223b733a353a22656d61696c223b733a32323a2274656a6140746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383531393b733a333a226f7470223b693a3338313033303b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d6d73675f706f707c733a35383a22576520706f7374656420796f757220656e717569727920746f2072656c6176656e742042756973696e657373205375636365737366756c6c7921223b),
('bghe7ie9gob2rs58dj1rvt76dsg3a3j0', '::1', 1508480899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383438303839393b70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a363a2253756a697468223b733a363a226d6f62696c65223b733a31303a2239363532303732363133223b733a353a22656d61696c223b733a32343a2273756a69746840746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383438303531323b733a333a226f7470223b693a3538333836353b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b757365725f706f705f75707c623a313b5f5f63695f766172737c613a313a7b733a31313a22757365725f706f705f7570223b693a313530383438313731323b7d),
('bp6kub9k5rvj15fjsggp5qai5ler2e6m', '::1', 1508328017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332373930313b4642524c485f73746174657c733a33323a226564653662643162663539386133303532363133313534613466613065653833223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('etpqcei6gdlbkmgkk43q0e29ftgt65ud', '::1', 1508319829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383331393638323b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('g20a4h6f6f81ic63i3100om9mqvrelgr', '::1', 1508321182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332303934303b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b),
('hi40fqtcuobnv0ea0me3fliafnhsur0p', '::1', 1508479446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437393337383b757365725f706f705f75707c623a313b5f5f63695f766172737c613a323a7b733a31313a22757365725f706f705f7570223b693a313530383437393731393b733a333a226d7367223b733a333a226f6c64223b7d70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a343a2274656a61223b733a363a226d6f62696c65223b733a31303a2239303330373030353932223b733a353a22656d61696c223b733a32323a2274656a6140746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383531393b733a333a226f7470223b693a3338313033303b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b6d73677c733a32303a225570646174656420736974652064657461696c73223b),
('hlpeo0qfmfvhfka4hdp7tk13gv7vrvqn', '::1', 1508324726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332343533323b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b757365725f706f705f75707c623a313b5f5f63695f766172737c613a313a7b733a31313a22757365725f706f705f7570223b693a313530383332343837393b7d),
('htl9c8kql9244224i4gdpc2c6g6f0p36', '::1', 1508331994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333313939343b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('j6o4akou7p0v6m2jl6bilb5gbtum644b', '::1', 1508331901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333313634383b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b757365725f706f705f75707c623a313b5f5f63695f766172737c613a313a7b733a31313a22757365725f706f705f7570223b693a313530383333313935383b7d),
('knrmui5o7seifgcvqf1985m4f3sff691', '::1', 1508326699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332363431343b4642524c485f73746174657c733a33323a226564653662643162663539386133303532363133313534613466613065653833223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('kuk8qsgmqqibm4407dh88lq6hbdtrh72', '::1', 1508478059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437373835373b757365725f706f705f75707c623a313b5f5f63695f766172737c613a333a7b733a31313a22757365725f706f705f7570223b693a313530383437393235393b733a333a226f7470223b733a333a226f6c64223b733a31303a226f74705f6d6f62696c65223b733a333a226f6c64223b7d70646174617c613a31343a7b733a343a226e616d65223b733a393a2263682073756a697468223b733a363a226d6f62696c65223b733a31303a2239363532303732363133223b733a353a22656d61696c223b733a32343a2273756a69746840746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383035393b733a333a226f7470223b693a3932373632373b733a31303a226f74705f737461747573223b733a323a226e6f223b733a393a2276656e646f725f6964223b733a313a2231223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d6f74707c693a3932373632373b6f74705f6d6f62696c657c733a31303a2239363532303732363133223b),
('la7j37p57ojvf397s9ac03blrqkr15o7', '::1', 1508476910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437363930393b),
('n7k1gopdbsior1a1p9gg8vbpak8i53ba', '::1', 1508325959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332353736313b4642524c485f73746174657c733a33323a226564653662643162663539386133303532363133313534613466613065653833223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('o3ng9a2haphmlji4qptgjqkmc1cq02c3', '::1', 1508479920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437393836383b70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a343a2274656a61223b733a363a226d6f62696c65223b733a31303a2239303330373030353932223b733a353a22656d61696c223b733a32323a2274656a6140746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383531393b733a333a226f7470223b693a3338313033303b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('pf74umqn6rv1j6konselrno46m1mmll7', '::1', 1508326153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332363131333b4642524c485f73746174657c733a33323a226564653662643162663539386133303532363133313534613466613065653833223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('r1bd35cqr2ebahjqg1n7g4afga17glgs', '::1', 1508479001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437383832333b757365725f706f705f75707c623a313b5f5f63695f766172737c613a313a7b733a31313a22757365725f706f705f7570223b693a313530383437393731393b7d70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a343a2274656a61223b733a363a226d6f62696c65223b733a31303a2239303330373030353932223b733a353a22656d61696c223b733a32323a2274656a6140746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383531393b733a333a226f7470223b693a3338313033303b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('r888esjp4aor2rrj0u4ga803vl4aods3', '::1', 1508329560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332393436363b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b6d73677c733a36313a225765206861766520526563656976656420796f7572207061796d656e7420616e6420596f7572204f7264657220497320556e6465722050726f63657373223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('rj3rg6jm6gf88tnil8drb14np14d5c59', '::1', 1508330985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383333303638353b4642524c485f73746174657c733a33323a223138386662623832363237313834363162643562393461353763303731313132223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b),
('s5rikmg2ovehs1lu40mgodj5qt27pctt', '::1', 1508326756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332363734383b4642524c485f73746174657c733a33323a226564653662643162663539386133303532363133313534613466613065653833223b76656e646f725f69647c733a313a2231223b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b6d73677c733a32373a224f726465722055706461746564205375636365737366756c6c7921223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('sgeb9mjrnot6pkui30fko2vdp9g38kqg', '::1', 1508321621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332313631363b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b6d73677c733a36313a225765206861766520526563656976656420796f7572207061796d656e7420616e6420596f7572204f7264657220497320556e6465722050726f63657373223b5f5f63695f766172737c613a313a7b733a333a226d7367223b733a333a226f6c64223b7d),
('t2m924omfpvldjpr96svoutij5nbb0ne', '::1', 1508325415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332353034333b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b62756973696e6573735f646174617c613a373a7b733a31333a22627573696e6573735f6e616d65223b733a383a2231737420536c6f74223b733a31373a2262756973696e6573735f61646472657373223b733a363a223120736c6f74223b733a31363a2262756973696e6573735f70686f6e6531223b733a31303a2239363532303732363133223b733a31363a2262756973696e6573735f70686f6e6532223b733a31303a2239363532303732363133223b733a31353a2277686174736170705f6e756d626572223b733a31303a2239363532303732363133223b733a333a2275726c223b733a31343a227777772e676f6f676c652e636f6d223b733a343a226c6f676f223b733a35303a223230313731303138313634323136343837343837375f616e696d617465645f74696765725f77616c6c70617065722e6a7067223b7d),
('t7hlkttot08tafen38764a1jhkp02v9l', '::1', 1508478260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383437383230363b757365725f706f705f75707c623a313b5f5f63695f766172737c613a333a7b733a31313a22757365725f706f705f7570223b693a313530383437393436303b733a333a226f7470223b733a333a226f6c64223b733a31303a226f74705f6d6f62696c65223b733a333a226f6c64223b7d70646174617c613a31343a7b733a393a2276656e646f725f6964223b733a313a2231223b733a343a226e616d65223b733a363a2273756a697468223b733a363a226d6f62696c65223b733a31303a2238393139383538323635223b733a353a22656d61696c223b733a32343a2273756a69746840746865636f6c6f75726d6f6f6e2e636f6d223b733a31323a226c6561645f747970655f6964223b733a313a2231223b733a31333a227368696674696e675f73697a65223b733a313a2231223b733a31333a227368696674696e675f64617465223b733a31303a2231302f32312f32303137223b733a383a226c6f636174696f6e223b733a31343a224879646572616261642028545329223b733a31313a22746f5f6c6f636174696f6e223b733a31333a22566973616b68617061746e616d223b733a393a226c6561645f74797065223b733a32363a22416c6c20496e646961205061636b6572732026204d6f76657273223b733a31303a22637265617465645f6174223b693a313530383437383236303b733a333a226f7470223b693a3233363039333b733a31303a226f74705f737461747573223b733a323a226e6f223b733a31333a226f746865725f76656e646f7273223b733a333a22796573223b7d6f74707c693a3233363039333b6f74705f6d6f62696c657c733a31303a2238393139383538323635223b),
('uafrdmsmnkkoi6c74n9evv17ct80nosl', '::1', 1508325652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530383332353432373b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223739373334323531333931386532653436356134313335656638343432333634223b76656e646f725f69647c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) NOT NULL,
  `page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `page`, `title`, `description`, `image`, `created_at`) VALUES
(1, 'landscaping', 'Landscaping', '<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '201712191200124175720_a1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`id`, `name`, `image`, `designation`, `facebook`, `mail`) VALUES
(38, 'Title', '202010141541554659638_avatar.jpg', 'Designation', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `shortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` varchar(20) NOT NULL,
  `marked_as_top` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(25) NOT NULL,
  `updated_at` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`, `marked_as_top`, `created_at`, `updated_at`, `status`) VALUES
(1, 'AF', 'Afghanistan', '+93', 0, '1494919316', '', 1),
(2, 'AL', 'Albania', '+355', 0, '1494919316', '', 1),
(3, 'DZ', 'Algeria', '+213', 0, '1494919316', '', 1),
(4, 'AS', 'American Samoa', '+1684', 0, '1494919316', '', 1),
(5, 'AD', 'Andorra', '+376', 0, '1494919316', '', 1),
(6, 'AO', 'Angola', '+244', 0, '1494919316', '', 1),
(7, 'AI', 'Anguilla', '+1264', 0, '1494919316', '', 1),
(8, 'AQ', 'Antarctica', '+0', 0, '1494919316', '', 1),
(9, 'AG', 'Antigua And Barbuda', '+1268', 0, '1494919316', '', 1),
(10, 'AR', 'Argentina', '+54', 0, '1494919316', '', 1),
(11, 'AM', 'Armenia', '+374', 0, '1494919316', '', 1),
(12, 'AW', 'Aruba', '+297', 0, '1494919316', '', 1),
(13, 'AU', 'Australia', '+61', 0, '1494919316', '', 1),
(14, 'AT', 'Austria', '+43', 0, '1494919316', '', 1),
(15, 'AZ', 'Azerbaijan', '+994', 0, '1494919316', '', 1),
(16, 'BS', 'Bahamas The', '+1242', 0, '1494919316', '', 1),
(17, 'BH', 'Bahrain', '+973', 0, '1494919316', '', 1),
(18, 'BD', 'Bangladesh', '+880', 0, '1494919316', '', 1),
(19, 'BB', 'Barbados', '+1246', 0, '1494919316', '', 1),
(20, 'BY', 'Belarus', '+375', 0, '1494919316', '', 1),
(21, 'BE', 'Belgium', '+32', 0, '1494919316', '', 1),
(22, 'BZ', 'Belize', '+501', 0, '1494919316', '', 1),
(23, 'BJ', 'Benin', '+229', 0, '1494919316', '', 1),
(24, 'BM', 'Bermuda', '+1441', 0, '1494919316', '', 1),
(25, 'BT', 'Bhutan', '+975', 0, '1494919316', '', 1),
(26, 'BO', 'Bolivia', '+591', 0, '1494919316', '', 1),
(27, 'BA', 'Bosnia and Herzegovina', '+387', 0, '1494919316', '', 1),
(28, 'BW', 'Botswana', '+267', 0, '1494919316', '', 1),
(29, 'BV', 'Bouvet Island', '+0', 0, '1494919316', '', 1),
(30, 'BR', 'Brazil', '+55', 0, '1494919316', '', 1),
(31, 'IO', 'British Indian Ocean Territory', '+246', 0, '1494919316', '', 1),
(32, 'BN', 'Brunei', '+673', 0, '1494919316', '', 1),
(33, 'BG', 'Bulgaria', '+359', 0, '1494919316', '', 1),
(34, 'BF', 'Burkina Faso', '+226', 0, '1494919316', '', 1),
(35, 'BI', 'Burundi', '+257', 0, '1494919316', '', 1),
(36, 'KH', 'Cambodia', '+855', 0, '1494919316', '', 1),
(37, 'CM', 'Cameroon', '+237', 0, '1494919316', '', 1),
(38, 'CA', 'Canada', '+1', 1, '1494919316', '1494918644', 1),
(39, 'CV', 'Cape Verde', '+238', 0, '1494919316', '', 1),
(40, 'KY', 'Cayman Islands', '+1345', 0, '1494919316', '', 1),
(41, 'CF', 'Central African Republic', '+236', 0, '1494919316', '', 1),
(42, 'TD', 'Chad', '+235', 0, '1494919316', '', 1),
(43, 'CL', 'Chile', '+56', 0, '1494919316', '', 1),
(44, 'CN', 'China', '+86', 0, '1494919316', '', 1),
(45, 'CX', 'Christmas Island', '+61', 0, '1494919316', '', 1),
(46, 'CC', 'Cocos (Keeling) Islands', '+672', 0, '1494919316', '', 1),
(47, 'CO', 'Colombia', '+57', 0, '1494919316', '', 1),
(48, 'KM', 'Comoros', '+269', 0, '1494919316', '', 1),
(49, 'CG', 'Congo', '+242', 0, '1494919316', '', 1),
(50, 'CD', 'Congo The Democratic Republic Of The', '+242', 0, '1494919316', '', 1),
(51, 'CK', 'Cook Islands', '+682', 0, '1494919316', '', 1),
(52, 'CR', 'Costa Rica', '+506', 0, '1494919316', '', 1),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', '+225', 0, '1494919316', '', 1),
(54, 'HR', 'Croatia (Hrvatska)', '+385', 0, '1494919316', '', 1),
(55, 'CU', 'Cuba', '+53', 0, '1494919316', '', 1),
(56, 'CY', 'Cyprus', '+357', 0, '1494919316', '', 1),
(57, 'CZ', 'Czech Republic', '+420', 0, '1494919316', '', 1),
(58, 'DK', 'Denmark', '+45', 0, '1494919316', '', 1),
(59, 'DJ', 'Djibouti', '+253', 0, '1494919316', '', 1),
(60, 'DM', 'Dominica', '+1767', 0, '1494919316', '', 1),
(61, 'DO', 'Dominican Republic', '+1809', 0, '1494919316', '', 1),
(62, 'TP', 'East Timor', '+670', 0, '1494919316', '', 1),
(63, 'EC', 'Ecuador', '+593', 0, '1494919316', '', 1),
(64, 'EG', 'Egypt', '+20', 0, '1494919316', '', 1),
(65, 'SV', 'El Salvador', '+503', 0, '1494919316', '', 1),
(66, 'GQ', 'Equatorial Guinea', '+240', 0, '1494919316', '', 1),
(67, 'ER', 'Eritrea', '+291', 0, '1494919316', '', 1),
(68, 'EE', 'Estonia', '+372', 0, '1494919316', '', 1),
(69, 'ET', 'Ethiopia', '+251', 0, '1494919316', '', 1),
(70, 'XA', 'External Territories of Australia', '+61', 0, '1494919316', '', 1),
(71, 'FK', 'Falkland Islands', '+500', 0, '1494919316', '', 1),
(72, 'FO', 'Faroe Islands', '+298', 0, '1494919316', '', 1),
(73, 'FJ', 'Fiji Islands', '+679', 0, '1494919316', '', 1),
(74, 'FI', 'Finland', '+358', 0, '1494919316', '', 1),
(75, 'FR', 'France', '+33', 0, '1494919316', '', 1),
(76, 'GF', 'French Guiana', '+594', 0, '1494919316', '', 1),
(77, 'PF', 'French Polynesia', '+689', 0, '1494919316', '', 1),
(78, 'TF', 'French Southern Territories', '+0', 0, '1494919316', '', 1),
(79, 'GA', 'Gabon', '+241', 0, '1494919316', '', 1),
(80, 'GM', 'Gambia The', '+220', 0, '1494919316', '', 1),
(81, 'GE', 'Georgia', '+995', 0, '1494919316', '1494932280', 1),
(82, 'DE', 'Germany', '+49', 0, '1494919316', '', 1),
(83, 'GH', 'Ghana', '+233', 0, '1494919316', '', 1),
(84, 'GI', 'Gibraltar', '+350', 0, '1494919316', '', 1),
(85, 'GR', 'Greece', '+30', 0, '1494919316', '', 1),
(86, 'GL', 'Greenland', '+299', 0, '1494919316', '', 1),
(87, 'GD', 'Grenada', '+1473', 0, '1494919316', '', 1),
(88, 'GP', 'Guadeloupe', '+590', 0, '1494919316', '', 1),
(89, 'GU', 'Guam', '+1671', 0, '1494919316', '', 1),
(90, 'GT', 'Guatemala', '+502', 0, '1494919316', '', 1),
(91, 'XU', 'Guernsey and Alderney', '+44', 0, '1494919316', '', 1),
(92, 'GN', 'Guinea', '+224', 0, '1494919316', '', 1),
(93, 'GW', 'Guinea-Bissau', '+245', 0, '1494919316', '', 1),
(94, 'GY', 'Guyana', '+592', 0, '1494919316', '', 1),
(95, 'HT', 'Haiti', '+509', 0, '1494919316', '', 1),
(96, 'HM', 'Heard and McDonald Islands', '+0', 0, '1494919316', '', 1),
(97, 'HN', 'Honduras', '+504', 0, '1494919316', '', 1),
(98, 'HK', 'Hong Kong S.A.R.', '+852', 0, '1494919316', '', 1),
(99, 'HU', 'Hungary', '+36', 0, '1494919316', '', 1),
(100, 'IS', 'Iceland', '+354', 0, '1494919316', '', 1),
(101, 'IN', 'India', '+91', 0, '1494919316', '', 1),
(102, 'ID', 'Indonesia', '+62', 0, '1494919316', '', 1),
(103, 'IR', 'Iran', '+98', 0, '1494919316', '', 1),
(104, 'IQ', 'Iraq', '+964', 0, '1494919316', '', 1),
(105, 'IE', 'Ireland', '+353', 0, '1494919316', '', 1),
(106, 'IL', 'Israel', '+972', 0, '1494919316', '', 1),
(107, 'IT', 'Italy', '+39', 0, '1494919316', '', 1),
(108, 'JM', 'Jamaica', '+1876', 0, '1494919316', '', 1),
(109, 'JP', 'Japan', '+81', 0, '1494919316', '', 1),
(110, 'XJ', 'Jersey', '+44', 0, '1494919316', '', 1),
(111, 'JO', 'Jordan', '+962', 0, '1494919316', '', 1),
(112, 'KZ', 'Kazakhstan', '+7', 0, '1494919316', '', 1),
(113, 'KE', 'Kenya', '+254', 0, '1494919316', '', 1),
(114, 'KI', 'Kiribati', '+686', 0, '1494919316', '', 1),
(115, 'KP', 'Korea North', '+850', 0, '1494919316', '', 1),
(116, 'KR', 'Korea South', '+82', 0, '1494919316', '', 1),
(117, 'KW', 'Kuwait', '+965', 0, '1494919316', '', 1),
(118, 'KG', 'Kyrgyzstan', '+996', 0, '1494919316', '', 1),
(119, 'LA', 'Laos', '+856', 0, '1494919316', '', 1),
(120, 'LV', 'Latvia', '+371', 0, '1494919316', '', 1),
(121, 'LB', 'Lebanon', '+961', 0, '1494919316', '', 1),
(122, 'LS', 'Lesotho', '+266', 0, '1494919316', '', 1),
(123, 'LR', 'Liberia', '+231', 0, '1494919316', '', 1),
(124, 'LY', 'Libya', '+218', 0, '1494919316', '', 1),
(125, 'LI', 'Liechtenstein', '+423', 0, '1494919316', '', 1),
(126, 'LT', 'Lithuania', '+370', 0, '1494919316', '', 1),
(127, 'LU', 'Luxembourg', '+352', 0, '1494919316', '', 1),
(128, 'MO', 'Macau S.A.R.', '+853', 0, '1494919316', '', 1),
(129, 'MK', 'Macedonia', '+389', 0, '1494919316', '', 1),
(130, 'MG', 'Madagascar', '+261', 0, '1494919316', '', 1),
(131, 'MW', 'Malawi', '+265', 0, '1494919316', '', 1),
(132, 'MY', 'Malaysia', '+60', 0, '1494919316', '', 1),
(133, 'MV', 'Maldives', '+960', 0, '1494919316', '', 1),
(134, 'ML', 'Mali', '+223', 0, '1494919316', '', 1),
(135, 'MT', 'Malta', '+356', 0, '1494919316', '', 1),
(136, 'XM', 'Man (Isle of)', '+44', 0, '1494919316', '', 1),
(137, 'MH', 'Marshall Islands', '+692', 0, '1494919316', '', 1),
(138, 'MQ', 'Martinique', '+596', 0, '1494919316', '', 1),
(139, 'MR', 'Mauritania', '+222', 0, '1494919316', '', 1),
(140, 'MU', 'Mauritius', '+230', 0, '1494919316', '', 1),
(141, 'YT', 'Mayotte', '+269', 0, '1494919316', '', 1),
(142, 'MX', 'Mexico', '+52', 0, '1494919316', '', 1),
(143, 'FM', 'Micronesia', '+691', 0, '1494919316', '', 1),
(144, 'MD', 'Moldova', '+373', 0, '1494919316', '', 1),
(145, 'MC', 'Monaco', '+377', 0, '1494919316', '', 1),
(146, 'MN', 'Mongolia', '+976', 0, '1494919316', '', 1),
(147, 'MS', 'Montserrat', '+1664', 0, '1494919316', '', 1),
(148, 'MA', 'Morocco', '+212', 0, '1494919316', '', 1),
(149, 'MZ', 'Mozambique', '+258', 0, '1494919316', '', 1),
(150, 'MM', 'Myanmar', '+95', 0, '1494919316', '', 1),
(151, 'NA', 'Namibia', '+264', 0, '1494919316', '', 1),
(152, 'NR', 'Nauru', '+674', 0, '1494919316', '', 1),
(153, 'NP', 'Nepal', '+977', 0, '1494919316', '', 1),
(154, 'AN', 'Netherlands Antilles', '+599', 0, '1494919316', '', 1),
(155, 'NL', 'Netherlands The', '+31', 0, '1494919316', '', 1),
(156, 'NC', 'New Caledonia', '+687', 0, '1494919316', '', 1),
(157, 'NZ', 'New Zealand', '+64', 0, '1494919316', '', 1),
(158, 'NI', 'Nicaragua', '+505', 0, '1494919316', '', 1),
(159, 'NE', 'Niger', '+227', 0, '1494919316', '', 1),
(160, 'NG', 'Nigeria', '+234', 0, '1494919316', '', 1),
(161, 'NU', 'Niue', '+683', 0, '1494919316', '', 1),
(162, 'NF', 'Norfolk Island', '+672', 0, '1494919316', '', 1),
(163, 'MP', 'Northern Mariana Islands', '+1670', 0, '1494919316', '', 1),
(164, 'NO', 'Norway', '+47', 0, '1494919316', '', 1),
(165, 'OM', 'Oman', '+968', 0, '1494919316', '', 1),
(166, 'PK', 'Pakistan', '+92', 0, '1494919316', '', 1),
(167, 'PW', 'Palau', '+680', 0, '1494919316', '', 1),
(168, 'PS', 'Palestinian Territory Occupied', '+970', 0, '1494919316', '', 1),
(169, 'PA', 'Panama', '+507', 0, '1494919316', '', 1),
(170, 'PG', 'Papua new Guinea', '+675', 0, '1494919316', '', 1),
(171, 'PY', 'Paraguay', '+595', 0, '1494919316', '', 1),
(172, 'PE', 'Peru', '+51', 0, '1494919316', '', 1),
(173, 'PH', 'Philippines', '+63', 0, '1494919316', '', 1),
(174, 'PN', 'Pitcairn Island', '+0', 0, '1494919316', '', 1),
(175, 'PL', 'Poland', '+48', 0, '1494919316', '', 1),
(176, 'PT', 'Portugal', '+351', 0, '1494919316', '', 1),
(177, 'PR', 'Puerto Rico', '+1787', 0, '1494919316', '', 1),
(178, 'QA', 'Qatar', '+974', 0, '1494919316', '', 1),
(179, 'RE', 'Reunion', '+262', 0, '1494919316', '', 1),
(180, 'RO', 'Romania', '+40', 0, '1494919316', '', 1),
(181, 'RU', 'Russia', '+70', 0, '1494919316', '', 1),
(182, 'RW', 'Rwanda', '+250', 0, '1494919316', '', 1),
(183, 'SH', 'Saint Helena', '+290', 0, '1494919316', '', 1),
(184, 'KN', 'Saint Kitts And Nevis', '+1869', 0, '1494919316', '', 1),
(185, 'LC', 'Saint Lucia', '+1758', 0, '1494919316', '', 1),
(186, 'PM', 'Saint Pierre and Miquelon', '+508', 0, '1494919316', '', 1),
(187, 'VC', 'Saint Vincent And The Grenadines', '+1784', 0, '1494919316', '', 1),
(188, 'WS', 'Samoa', '+684', 0, '1494919316', '', 1),
(189, 'SM', 'San Marino', '+378', 0, '1494919316', '', 1),
(190, 'ST', 'Sao Tome and Principe', '+239', 0, '1494919316', '', 1),
(191, 'SA', 'Saudi Arabia', '+966', 0, '1494919316', '', 1),
(192, 'SN', 'Senegal', '+221', 0, '1494919316', '', 1),
(193, 'RS', 'Serbia', '+381', 0, '1494919316', '', 1),
(194, 'SC', 'Seychelles', '+248', 0, '1494919316', '', 1),
(195, 'SL', 'Sierra Leone', '+232', 0, '1494919316', '', 1),
(196, 'SG', 'Singapore', '+65', 0, '1494919316', '', 1),
(197, 'SK', 'Slovakia', '+421', 0, '1494919316', '', 1),
(198, 'SI', 'Slovenia', '+386', 0, '1494919316', '', 1),
(199, 'XG', 'Smaller Territories of the UK', '+44', 0, '1494919316', '', 1),
(200, 'SB', 'Solomon Islands', '+677', 0, '1494919316', '', 1),
(201, 'SO', 'Somalia', '+252', 0, '1494919316', '', 1),
(202, 'ZA', 'South Africa', '+27', 0, '1494919316', '', 1),
(203, 'GS', 'South Georgia', '+0', 0, '1494919316', '', 1),
(204, 'SS', 'South Sudan', '+211', 0, '1494919316', '', 1),
(205, 'ES', 'Spain', '+34', 0, '1494919316', '', 1),
(206, 'LK', 'Sri Lanka', '+94', 0, '1494919316', '', 1),
(207, 'SD', 'Sudan', '+249', 0, '1494919316', '', 1),
(208, 'SR', 'Suriname', '+597', 0, '1494919316', '', 1),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', '+47', 0, '1494919316', '', 1),
(210, 'SZ', 'Swaziland', '+268', 0, '1494919316', '', 1),
(211, 'SE', 'Sweden', '+46', 0, '1494919316', '', 1),
(212, 'CH', 'Switzerland', '+41', 0, '1494919316', '', 1),
(213, 'SY', 'Syria', '+963', 0, '1494919316', '', 1),
(214, 'TW', 'Taiwan', '+886', 0, '1494919316', '', 1),
(215, 'TJ', 'Tajikistan', '+992', 0, '1494919316', '', 1),
(216, 'TZ', 'Tanzania', '+255', 0, '1494919316', '', 1),
(217, 'TH', 'Thailand', '+66', 0, '1494919316', '', 1),
(218, 'TG', 'Togo', '+228', 0, '1494919316', '', 1),
(219, 'TK', 'Tokelau', '+690', 0, '1494919316', '', 1),
(220, 'TO', 'Tonga', '+676', 0, '1494919316', '', 1),
(221, 'TT', 'Trinidad And Tobago', '+1868', 0, '1494919316', '', 1),
(222, 'TN', 'Tunisia', '+216', 0, '1494919316', '', 1),
(223, 'TR', 'Turkey', '+90', 0, '1494919316', '', 1),
(224, 'TM', 'Turkmenistan', '+7370', 0, '1494919316', '', 1),
(225, 'TC', 'Turks And Caicos Islands', '+1649', 0, '1494919316', '', 1),
(226, 'TV', 'Tuvalu', '+688', 0, '1494919316', '', 1),
(227, 'UG', 'Uganda', '+256', 0, '1494919316', '', 1),
(228, 'UA', 'Ukraine', '+380', 0, '1494919316', '', 1),
(229, 'AE', 'United Arab Emirates', '+971', 0, '1494919316', '', 1),
(230, 'GB', 'United Kingdom', '+44', 0, '1494919316', '', 1),
(231, 'US', 'United States', '+1', 1, '1494919316', '1494918633', 1),
(232, 'UM', 'United States Minor Outlying Islands', '+1', 0, '1494919316', '', 1),
(233, 'UY', 'Uruguay', '+598', 0, '1494919316', '', 1),
(234, 'UZ', 'Uzbekistan', '+998', 0, '1494919316', '', 1),
(235, 'VU', 'Vanuatu', '+678', 0, '1494919316', '', 1),
(236, 'VA', 'Vatican City State (Holy See)', '+39', 0, '1494919316', '', 1),
(237, 'VE', 'Venezuela', '+58', 0, '1494919316', '', 1),
(238, 'VN', 'Vietnam', '+84', 0, '1494919316', '', 1),
(239, 'VG', 'Virgin Islands (British)', '+1284', 0, '1494919316', '', 1),
(240, 'VI', 'Virgin Islands (US)', '+1340', 0, '1494919316', '', 1),
(241, 'WF', 'Wallis And Futuna Islands', '+681', 0, '1494919316', '', 1),
(242, 'EH', 'Western Sahara', '+212', 0, '1494919316', '', 1),
(243, 'YE', 'Yemen', '+967', 0, '1494919316', '', 1),
(244, 'YU', 'Yugoslavia', '+38', 0, '1494919316', '', 1),
(245, 'ZM', 'Zambia', '+260', 0, '1494919316', '', 1),
(246, 'ZW', 'Zimbabwe', '+263', 0, '1494919316', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `google` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `plink` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `title`, `facebook`, `google`, `image`, `plink`) VALUES
(23, 'K. KRISHNARAO', 'LEGAL-ADVISOR', '', '', '201911061637152588203_krishnarao.jpg', 'LEGAL-ADVISOR'),
(25, 'TINKU JAIED AHMED', 'State Development Officer (S.D.O), ASSAM', '', '', '202002281715384465209_tinku_assam.jpg', 'State-Development-Officer-SDO-ASSAM'),
(18, 'K. VENKATALAXMI', '\"NETRA MITRA\" WEST GODAVARI', '', '', '201911061632335540597_vankatalaxmi.jpg', 'NETRA-MITRA-WEST-GODAVARI'),
(19, 'E. KAMAKSHI DEVI', '\"NETRA MITRA\"', '', '', '201911061633449090679_kamakshi.jpg', 'NETRA-MITRA'),
(20, 'E. ESWARARAO', '\"NETRA MITRA\"', '', '', '201911061634377270810_eswar.jpg', 'NETRA-MITRA'),
(21, 'L. SURYA KUMARI', 'CO-ORDINATOR', '', '', '201911061635216476066_kumari.jpg', 'CO-ORDINATOR'),
(22, 'M.V.V.V PRASADARAO', 'HON ARABLE - ADVISOR', '', '', '201911061636289393721_patnaik.jpg', 'HON-ARABLE-ADVISOR');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) NOT NULL,
  `question` text COLLATE utf8_bin DEFAULT NULL,
  `answer` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, '<p>HOW DO YOU CLEAN USING STEAM</p>\r\n', '<p>Steam loosens the dirt when it is injected on to the car surface and it is collected by high quality microfiber cloth, which will leave clean and glossy surface. Microfiber cloth prevents scratches on the car. Steam disinfects, deodorises and sterilises the interiors of your car.</p>\r\n'),
(2, '<p>2. &nbsp; Why choose steam clean over conventional soap and water?</p>\r\n', '<p>Steam cleans the cars more effectively compared to conventional wet car wash. It is a great tool to get rid of dirt and mud from your car without causing any damage to the surface or components. The high temperature vapour attempts to clean the tough areas which cannot be cleaned by hand for example door hinges, petrol caps, tyre rims etc. Unlike soap and water, steam cleaning is completely chemical-free in nature.&nbsp;<strong>NO waste water!</strong></p>\r\n'),
(3, '<p>&nbsp;Do I have to bring my car to you?</p>\r\n', '<p>No, we provide service at your doorstep.</p>\r\n'),
(4, '<p>How long will it take to clean my car?</p>\r\n', '<p>&nbsp;It takes 28 minutes for a complete car wash.</p>\r\n'),
(5, '<p>Do you steam clean bikes?</p>\r\n', '<p>Yes, we also clean bikes.</p>\r\n'),
(6, '<p>How do I book an appointment?</p>\r\n', '<p>To book our services through calls and online booking.</p>\r\n'),
(7, '<p>How many days in advance do I need to book?</p>\r\n', '<p>You need to book your service at least 24 hours in advance. Based on the requirement messy team will not fail to satisfy our customers.</p>\r\n'),
(8, '<p>Do you work on holidays and what are your working hours ?</p>\r\n', '<p>We work 365 days 24x7.</p>\r\n'),
(9, '<p>WHY CHOOSE messy steam car wash to CLEAN CARS ?</p>\r\n', '<p>Messy steam car wash do not use excessive water, chemicals, gimmick products. We work 24x7 to provide car steam wash at your door step.</p>\r\n'),
(10, '<p>&nbsp;Can you get rid of pests from car interiors?</p>\r\n', '<p>Yes, high pressure steam reaches all corners of the car and removes all odour which do not attracts pests to your car.</p>\r\n'),
(11, '<p>WHAT TYPE OF PAYMENT DO YOU ACCEPT?</p>\r\n', '<p>Messy steam car wash accepts Cash, Master Card, Visa, Paytm.</p>\r\n'),
(12, '<p>STEAM CAR WASH DAMAGES PAINT WORK?</p>\r\n', '<p>Paints made for automobiles are highly weather resistant and supposed to endure extreme cold and heat. Steam is a form of gas. Steam vapour temperature at the nozzle is below 90&deg; Celsius which is relatively low pressure rate and rapidly cools when in contact with atmospheric air. &nbsp;spray gun is held at a decent distance of 4-6 inches from the vehicles surface, which is powerful and sufficient enough to wash your car surfaces safely and will not damage the paint in any way.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `image`) VALUES
(9, 'Title Comes Here', '201712191039495054321_g1.jpg'),
(10, 'Title Comes Here', '201712191040409375915_a3.jpg'),
(11, 'Title Comes Here', '201712191040494023437_a4.jpg'),
(12, 'Title Comes Here', '201712191040592322082_a5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `headlines`
--

CREATE TABLE `headlines` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headlines`
--

INSERT INTO `headlines` (`id`, `title`) VALUES
(3, 'WELCOME TO SWWECHA FOUNDATION                     '),
(5, 'ANY DONATION OR CONTRIBUTION TRANSFER SWWECHA FOUNDATION. TO THIS AXIS BANK ACCOUNT NUMBER, , ACCOUNT NUMBER IS- 919020072053507, SUJATHA NAGARA BRANCH .VISAKHAPATNAM- IFSC Code - UTIB0003380'),
(8, 'SO PROUDLY ANNOUNCED TO BE LAUNCHED OUR PROJECT NETRA MITRA IN ASSAM STATE ALSO ON-WARDS   ');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `slider` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `sub_title`, `slider`, `created_at`) VALUES
(11, '', '', '202010141519466010428_slider3.jpg', '1555414803'),
(14, '', '', '202010141519331577792_slider2.jpg', '1555416304'),
(17, '', '', '202010141519162180844_slider1.jpg', '1562936205');

-- --------------------------------------------------------

--
-- Table structure for table `honorable_council`
--

CREATE TABLE `honorable_council` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honorable_council`
--

INSERT INTO `honorable_council` (`id`, `name`, `country_id`, `state_id`, `image`, `designation`, `created_on`) VALUES
(2, 'Name Comes Here', 101, 11, '201808131532135637207_m1.jpg', 'Designation', '1534248853');

-- --------------------------------------------------------

--
-- Table structure for table `ipcheck`
--

CREATE TABLE `ipcheck` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipcheck`
--

INSERT INTO `ipcheck` (`id`, `ip`, `date1`) VALUES
(8, '::1', '03-08-2017 11:45:31'),
(9, '::1', '05-08-2017 09:38:47'),
(10, '::1', '05-08-2017 11:59:51'),
(11, '::1', '08-08-2017 11:39:26'),
(12, '::1', '08-08-2017 05:35:57'),
(13, '::1', '08-08-2017 05:41:12'),
(14, '::1', '10-08-2017 10:19:40'),
(15, '::1', '14-08-2017 04:17:10'),
(16, '::1', '21-08-2017 09:54:18'),
(17, '::1', '22-08-2017 10:22:53'),
(18, '::1', '22-08-2017 10:46:35'),
(19, '::1', '24-08-2017 10:15:35'),
(20, '::1', '26-08-2017 01:55:08'),
(21, '::1', '29-08-2017 06:53:36'),
(22, '::1', '30-08-2017 10:28:40'),
(23, '::1', '31-08-2017 10:18:35'),
(24, '::1', '02-09-2017 09:42:30'),
(25, '::1', '04-09-2017 01:45:58'),
(26, '::1', '06-09-2017 11:47:57'),
(27, '::1', '06-09-2017 05:12:17'),
(28, '::1', '09-09-2017 11:13:53'),
(29, '::1', '11-09-2017 10:36:25'),
(30, '::1', '11-09-2017 11:04:36'),
(31, '::1', '13-09-2017 10:52:31'),
(32, '::1', '20-09-2017 10:51:59'),
(33, '::1', '21-09-2017 10:34:23'),
(34, '::1', '26-09-2017 09:28:47'),
(35, '::1', '26-09-2017 04:35:39'),
(36, '::1', '27-09-2017 01:54:38'),
(37, '::1', '29-09-2017 05:24:20'),
(38, '::1', '29-09-2017 05:29:33'),
(39, '::1', '29-09-2017 05:29:37'),
(40, '::1', '29-09-2017 05:30:41'),
(41, '::1', '29-09-2017 06:28:54'),
(42, '::1', '02-10-2017 01:14:01'),
(43, '::1', '03-10-2017 10:53:28'),
(44, '::1', '05-10-2017 10:15:08'),
(45, '::1', '06-10-2017 10:40:06'),
(46, '::1', '07-10-2017 11:04:37'),
(47, '::1', '10-10-2017 12:53:39'),
(48, '::1', '11-10-2017 03:41:13'),
(49, '::1', '12-10-2017 10:27:14'),
(50, '::1', '12-10-2017 11:17:02'),
(51, '::1', '12-10-2017 11:22:40'),
(52, '::1', '13-10-2017 04:05:01'),
(53, '::1', '13-10-2017 05:18:12'),
(54, '::1', '16-10-2017 07:11:07'),
(55, '::1', '16-10-2017 07:19:44'),
(56, '::1', '18-10-2017 10:28:08'),
(57, '::1', '18-10-2017 12:11:30'),
(58, '::1', '18-10-2017 03:34:37'),
(59, '::1', '20-10-2017 11:26:19'),
(60, '::1', '21-10-2017 10:39:31'),
(61, '::1', '23-10-2017 02:05:42'),
(62, '::1', '24-10-2017 10:05:09'),
(63, '::1', '14-12-2017 10:28:17'),
(64, '::1', '15-12-2017 05:50:11'),
(65, '::1', '18-12-2017 04:01:46'),
(66, '::1', '19-12-2017 10:18:46'),
(67, '::1', '02-01-2018 12:38:46'),
(68, '::1', '08-01-2018 12:51:39'),
(69, '::1', '09-01-2018 03:24:50'),
(70, '::1', '06-08-2018 11:56:46'),
(71, '::1', '16-08-2018 12:20:55'),
(72, '124.123.68.198', '21-08-2018 10:34:15'),
(73, '124.123.68.198', '21-08-2018 10:58:39'),
(74, '124.123.68.198', '21-08-2018 10:58:54'),
(75, '124.123.68.198', '21-08-2018 11:03:23'),
(76, '124.123.68.198', '21-08-2018 11:03:55'),
(77, '175.101.128.35', '14-10-2018 12:27:26'),
(78, '175.101.128.35', '14-10-2018 02:55:13'),
(79, '175.101.128.35', '24-10-2018 08:51:41'),
(80, '175.101.128.35', '24-10-2018 09:19:45'),
(81, '107.170.96.6', '24-10-2018 09:19:48'),
(82, '175.101.128.35', '24-10-2018 09:26:01'),
(83, '175.101.128.35', '24-10-2018 10:05:57'),
(84, '175.101.128.35', '24-10-2018 10:12:35'),
(85, '202.53.69.162', '25-10-2018 12:45:26'),
(86, '175.101.128.35', '25-10-2018 01:32:48'),
(87, '175.101.128.35', '25-10-2018 09:22:19'),
(88, '175.101.128.35', '26-10-2018 06:36:20'),
(89, '175.101.128.35', '27-10-2018 10:20:20'),
(90, '175.101.128.35', '27-10-2018 10:43:02'),
(91, '175.101.128.35', '27-10-2018 10:46:41'),
(92, '175.101.128.35', '28-10-2018 07:51:12'),
(93, '49.204.248.19', '30-10-2018 02:55:04'),
(94, '157.44.145.102', '07-11-2018 10:11:26'),
(95, '157.44.166.54', '08-11-2018 08:22:04'),
(96, '157.44.166.54', '08-11-2018 08:22:44'),
(97, '175.101.128.35', '10-11-2018 03:35:57'),
(98, '175.101.128.35', '11-11-2018 11:46:10'),
(99, '175.101.128.35', '11-11-2018 02:15:03'),
(100, '202.53.69.162', '14-11-2018 01:10:18'),
(101, '202.53.69.162', '16-11-2018 06:13:43'),
(102, '202.53.69.162', '17-11-2018 02:08:36'),
(103, '175.101.128.35', '17-11-2018 08:43:09'),
(104, '175.101.144.94', '29-11-2018 07:10:49'),
(105, '49.206.100.137', '07-12-2018 11:53:06'),
(106, '157.44.85.245', '07-12-2018 11:55:38'),
(107, '175.101.128.35', '16-12-2018 07:11:49'),
(108, '175.101.128.35', '19-12-2018 09:51:54'),
(109, '175.101.128.35', '02-01-2019 07:58:21'),
(110, '49.205.242.15', '07-02-2019 10:19:34'),
(111, '175.101.128.35', '24-02-2019 11:41:35'),
(112, '202.53.69.162', '16-04-2019 11:58:05'),
(113, '175.101.128.37', '16-04-2019 12:26:34'),
(114, '49.204.242.172', '16-04-2019 03:46:31'),
(115, '49.204.242.172', '16-04-2019 03:46:38'),
(116, '66.102.8.113', '16-04-2019 03:46:55'),
(117, '66.102.8.113', '16-04-2019 03:46:55'),
(118, '49.204.242.172', '17-04-2019 06:10:56'),
(119, '49.204.242.172', '17-04-2019 08:28:12'),
(120, '49.204.242.172', '17-04-2019 08:28:45'),
(121, '49.204.242.172', '17-04-2019 08:33:20'),
(122, '49.204.242.172', '17-04-2019 09:25:11'),
(123, '49.204.242.172', '18-04-2019 04:35:31'),
(124, '175.101.128.37', '28-07-2019 09:47:07'),
(125, '202.53.69.162', '29-07-2019 10:18:44'),
(126, '66.102.8.116', '29-07-2019 10:18:56'),
(127, '157.41.108.173', '24-09-2019 12:53:55'),
(128, '66.249.83.20', '24-09-2019 12:54:02'),
(129, '157.49.179.216', '30-09-2019 07:29:50'),
(130, '175.101.128.37', '03-02-2020 04:43:02'),
(131, '138.128.180.106', '14-10-2020 01:25:25'),
(132, '138.128.180.106', '14-10-2020 01:28:28'),
(133, '138.128.180.106', '14-10-2020 02:57:47'),
(134, '138.128.180.106', '14-10-2020 04:29:40'),
(135, '138.128.180.106', '14-10-2020 04:36:00'),
(136, '138.128.180.106', '14-10-2020 04:42:45'),
(137, '138.128.180.106', '15-10-2020 09:34:58'),
(138, '::1', '19-10-2020 10:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) NOT NULL,
  `text` text COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `text`, `link`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut', 'http://www.fb.com');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `created_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `vendor_id`, `address`, `created_at`) VALUES
(1, 1, '::1', '1507619854'),
(2, 1, '::1', '1507632752'),
(3, 1, '::1', '1507697193'),
(4, 2, '::1', '1507716392'),
(5, 2, '::1', '1507716559'),
(6, 1, '::1', '1507782583'),
(7, 1, '::1', '1507792862'),
(8, 1, '::1', '1507895324'),
(9, 1, '::1', '1508139163'),
(10, 1, '::1', '1508229694'),
(11, 1, '::1', '1508304050'),
(12, 1, '::1', '1508321106'),
(13, 1, '::1', '1508325784'),
(14, 1, '::1', '1508329482');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `location` text DEFAULT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `ip`, `admin`, `location`, `date`) VALUES
(1, '::1', 'admin', NULL, '07-06-2017 11:43:53'),
(2, '::1', 'admin', NULL, '07-06-2017 04:34:43'),
(3, '::1', 'admin', NULL, '07-06-2017 05:11:33'),
(4, '::1', 'admin', NULL, '07-06-2017 06:26:02'),
(5, '::1', 'admin', NULL, '07-06-2017 06:28:37'),
(6, '::1', 'admin', NULL, '07-06-2017 06:28:58'),
(7, '::1', 'admin', NULL, '07-06-2017 06:29:42'),
(8, '::1', 'admin', NULL, '07-06-2017 06:31:18'),
(9, '::1', 'admin', NULL, '07-06-2017 06:31:31'),
(10, '::1', 'admin', NULL, '08-06-2017 11:46:58'),
(11, '::1', 'admin', NULL, '09-06-2017 12:02:32'),
(12, '::1', 'admin', NULL, '09-06-2017 10:42:01'),
(13, '::1', 'admin', NULL, '10-06-2017 09:38:38'),
(14, '::1', 'admin', NULL, '10-06-2017 09:38:39'),
(15, '::1', 'admin', NULL, '11-06-2017 12:55:08'),
(16, '::1', 'admin', NULL, '11-06-2017 08:00:24'),
(17, '::1', 'admin', NULL, '12-06-2017 10:02:17'),
(18, '::1', 'admin', NULL, '12-06-2017 11:21:05'),
(19, '::1', 'admin', NULL, '12-06-2017 04:08:29'),
(20, '::1', 'admin', NULL, '12-06-2017 09:51:46'),
(21, '::1', 'admin', NULL, '13-06-2017 10:19:29'),
(22, '::1', 'admin', NULL, '14-06-2017 10:19:15'),
(23, '::1', 'admin', NULL, '14-06-2017 03:08:23'),
(24, '::1', 'admin', NULL, '15-06-2017 10:10:53'),
(25, '::1', 'admin', NULL, '15-06-2017 03:13:17'),
(26, '::1', 'admin', NULL, '16-06-2017 10:31:14'),
(27, '::1', 'admin', NULL, '16-06-2017 02:47:49'),
(28, '::1', 'admin', NULL, '16-06-2017 03:08:42'),
(29, '::1', 'admin', NULL, '16-06-2017 10:37:48'),
(30, '::1', 'admin', NULL, '17-06-2017 09:44:15'),
(31, '::1', 'admin', NULL, '18-06-2017 12:31:56'),
(32, '::1', 'admin', NULL, '19-06-2017 10:09:41'),
(33, '::1', 'admin', NULL, '19-06-2017 12:43:05'),
(34, '::1', 'admin', NULL, '19-06-2017 03:09:26'),
(35, '::1', 'admin', NULL, '21-06-2017 06:20:14'),
(36, '::1', 'admin', NULL, '22-06-2017 10:22:05'),
(37, '::1', 'admin', NULL, '22-06-2017 11:40:30'),
(38, '::1', 'admin', NULL, '22-06-2017 03:30:53'),
(39, '::1', 'admin', NULL, '22-06-2017 06:51:38'),
(40, '::1', 'admin', NULL, '23-06-2017 10:07:10'),
(41, '::1', 'admin', NULL, '23-06-2017 10:36:34'),
(42, '::1', 'admin', NULL, '23-06-2017 08:47:41'),
(43, '::1', 'admin', NULL, '26-06-2017 10:35:50'),
(44, '::1', 'admin', NULL, '26-06-2017 03:37:06'),
(45, '::1', 'admin', NULL, '27-06-2017 10:12:53'),
(46, '::1', 'admin', NULL, '27-06-2017 12:13:35'),
(47, '::1', 'admin', NULL, '28-06-2017 11:33:13'),
(48, '::1', 'admin', NULL, '28-06-2017 03:52:25'),
(49, '::1', 'admin', NULL, '29-06-2017 10:22:17'),
(50, '::1', 'admin', NULL, '30-06-2017 04:45:45'),
(51, '::1', 'admin', NULL, '03-07-2017 05:07:30'),
(52, '::1', 'admin', NULL, '03-07-2017 06:44:02'),
(53, '::1', 'admin', NULL, '04-07-2017 10:18:33'),
(54, '::1', 'admin', NULL, '05-07-2017 11:39:13'),
(55, '::1', 'admin', NULL, '10-07-2017 06:32:25'),
(56, '::1', 'admin', NULL, '11-07-2017 12:58:03'),
(57, '::1', 'admin', NULL, '12-07-2017 10:25:14'),
(58, '::1', 'admin', NULL, '13-07-2017 10:25:58'),
(59, '::1', 'admin', NULL, '13-07-2017 12:27:48'),
(60, '::1', 'admin', NULL, '14-07-2017 10:57:30'),
(61, '::1', 'admin', NULL, '15-07-2017 09:39:57'),
(62, '::1', 'admin', NULL, '17-07-2017 10:58:23'),
(63, '::1', 'admin', NULL, '18-07-2017 05:41:45'),
(64, '::1', 'admin', NULL, '19-07-2017 12:39:21'),
(65, '::1', 'admin', NULL, '20-07-2017 11:14:44'),
(66, '::1', 'admin', NULL, '21-07-2017 01:42:35'),
(67, '::1', 'admin', NULL, '26-07-2017 01:16:01'),
(68, '::1', 'admin', NULL, '27-07-2017 10:12:26'),
(69, '::1', 'admin', NULL, '28-07-2017 10:20:50'),
(70, '::1', 'admin', NULL, '28-07-2017 04:00:29'),
(71, '::1', 'admin', NULL, '29-07-2017 09:16:37'),
(72, '::1', 'admin', NULL, '31-07-2017 10:41:21'),
(73, '::1', 'admin', NULL, '01-08-2017 10:07:02'),
(74, '::1', 'admin', NULL, '02-08-2017 03:40:12'),
(75, '::1', 'admin', NULL, '02-08-2017 07:14:26'),
(76, '::1', 'admin', NULL, '03-08-2017 11:46:02'),
(77, '::1', 'admin', NULL, '03-08-2017 12:46:01'),
(78, '::1', 'admin', NULL, '03-08-2017 05:18:04'),
(79, '::1', 'admin', NULL, '03-08-2017 05:49:33'),
(80, '::1', 'admin', NULL, '04-08-2017 10:21:46'),
(81, '::1', 'admin', NULL, '04-08-2017 11:59:32'),
(82, '::1', 'admin', NULL, '04-08-2017 05:17:26'),
(83, '::1', 'admin', NULL, '04-08-2017 05:24:30'),
(84, '::1', 'admin', NULL, '05-08-2017 09:38:55'),
(85, '::1', 'admin', NULL, '08-08-2017 11:39:33'),
(86, '::1', 'admin', NULL, '08-08-2017 05:36:10'),
(87, '::1', 'admin', NULL, '08-08-2017 05:39:18'),
(88, '::1', 'admin', NULL, '08-08-2017 05:41:25'),
(89, '::1', 'admin', NULL, '08-08-2017 05:44:19'),
(90, '::1', 'admin', NULL, '09-08-2017 11:12:58'),
(91, '::1', 'admin', NULL, '09-08-2017 07:11:32'),
(92, '::1', 'admin', NULL, '10-08-2017 10:19:48'),
(93, '::1', 'admin', NULL, '10-08-2017 03:05:38'),
(94, '::1', 'admin', NULL, '11-08-2017 10:32:01'),
(95, '::1', 'admin', NULL, '11-08-2017 01:02:39'),
(96, '::1', 'admin', NULL, '14-08-2017 04:17:18'),
(97, '::1', 'admin', NULL, '16-08-2017 10:01:03'),
(98, '::1', 'admin', NULL, '16-08-2017 10:20:58'),
(99, '::1', 'admin', NULL, '16-08-2017 01:27:17'),
(100, '::1', 'admin', NULL, '17-08-2017 11:15:30'),
(101, '::1', 'admin', NULL, '17-08-2017 04:50:22'),
(102, '::1', 'admin', NULL, '18-08-2017 10:08:32'),
(103, '::1', 'admin', NULL, '21-08-2017 09:53:50'),
(104, '::1', 'admin', NULL, '21-08-2017 06:39:15'),
(105, '::1', 'admin', NULL, '22-08-2017 10:23:01'),
(106, '::1', 'admin', NULL, '22-08-2017 10:47:27'),
(107, '::1', 'admin', NULL, '23-08-2017 10:13:59'),
(108, '::1', 'admin', NULL, '24-08-2017 10:15:46'),
(109, '::1', 'admin', NULL, '24-08-2017 10:28:55'),
(110, '::1', 'admin', NULL, '26-08-2017 01:55:14'),
(111, '::1', 'admin', NULL, '29-08-2017 06:53:45'),
(112, '::1', 'admin', NULL, '30-08-2017 10:34:46'),
(113, '::1', 'admin', NULL, '31-08-2017 10:28:50'),
(114, '::1', 'admin', NULL, '01-09-2017 11:34:41'),
(115, '::1', 'admin', NULL, '01-09-2017 05:11:26'),
(116, '::1', 'admin', NULL, '06-09-2017 11:48:07'),
(117, '::1', 'admin', NULL, '09-09-2017 10:06:16'),
(118, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\n                Region : <b>Telangana</b><br/>	\n                Country : <b>India</b><br/>	\n                TimeZone : <b>Asia/Kolkata</b><br/>', '09-09-2017 11:14:49'),
(119, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '10-09-2017 10:40:32'),
(120, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '10-09-2017 03:19:34'),
(121, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '11-09-2017 10:36:30'),
(122, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '11-09-2017 03:00:35'),
(123, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '11-09-2017 11:04:42'),
(124, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '12-09-2017 11:14:28'),
(125, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '12-09-2017 11:14:28'),
(126, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '13-09-2017 11:19:07'),
(127, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '14-09-2017 10:36:59'),
(128, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '14-09-2017 04:44:28'),
(129, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '20-09-2017 10:52:06'),
(130, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '20-09-2017 12:59:17'),
(131, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '21-09-2017 10:34:37'),
(132, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '26-09-2017 09:28:54'),
(133, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '26-09-2017 04:35:49'),
(134, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '27-09-2017 01:54:47'),
(135, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '27-09-2017 05:27:02'),
(136, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '29-09-2017 05:24:52'),
(137, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '29-09-2017 05:30:48'),
(138, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '02-10-2017 01:14:21'),
(139, '::1', 'admin', 'City : <b>Hyderabad</b> <br/>\r\n                Region : <b>Telangana</b><br/>	\r\n                Country : <b>India</b><br/>	\r\n                TimeZone : <b>Asia/Kolkata</b><br/>', '03-10-2017 10:53:39'),
(140, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '05-10-2017 10:15:22'),
(141, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '05-10-2017 10:26:53'),
(142, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '06-10-2017 10:40:14'),
(143, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '07-10-2017 11:04:47'),
(144, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '10-10-2017 12:53:52'),
(145, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '10-10-2017 03:07:07'),
(146, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '11-10-2017 03:41:34'),
(147, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '12-10-2017 10:27:23'),
(148, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '12-10-2017 11:29:44'),
(149, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '13-10-2017 04:05:07'),
(150, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '16-10-2017 07:11:15'),
(151, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '16-10-2017 07:14:57'),
(152, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '17-10-2017 12:11:17'),
(153, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '18-10-2017 10:28:18'),
(154, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '18-10-2017 12:11:39'),
(155, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '18-10-2017 04:55:39'),
(156, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '18-10-2017 06:04:20'),
(157, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '20-10-2017 11:26:28'),
(158, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '21-10-2017 10:39:39'),
(159, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '23-10-2017 02:05:52'),
(160, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '24-10-2017 10:05:27'),
(161, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '14-12-2017 10:28:34'),
(162, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '15-12-2017 05:50:37'),
(163, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '16-12-2017 10:08:11'),
(164, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '18-12-2017 04:02:10'),
(165, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '19-12-2017 10:19:00'),
(166, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '20-12-2017 12:14:55'),
(167, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '20-12-2017 04:30:53'),
(168, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '08-01-2018 12:51:53'),
(169, '::1', 'admin', 'City : <b></b> <br/>\r\n                Region : <b></b><br/>	\r\n                Country : <b></b><br/>	\r\n                TimeZone : <b></b><br/>', '09-01-2018 03:24:59'),
(170, '::1', 'admin', NULL, '06-08-2018 11:59:28'),
(171, '::1', 'admin', NULL, '06-08-2018 01:06:15'),
(172, '::1', 'admin', NULL, '06-08-2018 01:27:57'),
(173, '::1', 'admin', NULL, '06-08-2018 01:37:04'),
(174, '::1', 'admin', NULL, '06-08-2018 02:52:01'),
(175, '::1', 'admin', NULL, '08-08-2018 06:49:22'),
(176, '::1', 'admin', NULL, '08-08-2018 01:24:06'),
(177, '::1', 'admin', NULL, '08-08-2018 01:25:16'),
(178, '::1', 'admin', NULL, '09-08-2018 10:24:07'),
(179, '::1', 'admin', NULL, '10-08-2018 10:29:45'),
(180, '::1', 'admin', NULL, '10-08-2018 12:55:21'),
(181, '::1', 'admin', NULL, '10-08-2018 02:28:47'),
(182, '::1', 'admin', NULL, '11-08-2018 10:04:17'),
(183, '::1', 'admin', NULL, '13-08-2018 10:44:14'),
(184, '::1', 'admin', NULL, '13-08-2018 06:38:52'),
(185, '::1', 'admin', NULL, '14-08-2018 10:05:24'),
(186, '::1', 'admin', NULL, '16-08-2018 10:40:57'),
(187, '::1', 'admin', NULL, '17-08-2018 09:59:06'),
(188, '::1', 'admin', NULL, '18-08-2018 10:08:58'),
(189, '::1', 'admin', NULL, '21-08-2018 10:13:33'),
(190, '124.123.68.198', 'admin', NULL, '21-08-2018 10:34:30'),
(191, '124.123.68.198', 'admin', NULL, '21-08-2018 10:59:17'),
(192, '124.123.68.198', 'admin', NULL, '21-08-2018 11:01:05'),
(193, '124.123.68.198', 'admin', NULL, '21-08-2018 11:02:35'),
(194, '175.101.128.35', 'admin', NULL, '14-10-2018 12:27:45'),
(195, '175.101.128.35', 'admin', NULL, '14-10-2018 12:36:20'),
(196, '175.101.128.35', 'admin', NULL, '24-10-2018 08:52:10'),
(197, '175.101.128.35', 'admin', NULL, '24-10-2018 10:06:47'),
(198, '175.101.128.35', 'admin', NULL, '24-10-2018 10:48:22'),
(199, '175.101.128.35', 'admin', NULL, '25-10-2018 12:41:48'),
(200, '202.53.69.162', 'admin', NULL, '25-10-2018 12:45:45'),
(201, '175.101.128.35', 'admin', NULL, '25-10-2018 01:32:51'),
(202, '175.101.128.35', 'admin', NULL, '25-10-2018 08:52:41'),
(203, '175.101.128.35', 'admin', NULL, '26-10-2018 05:21:56'),
(204, '175.101.128.35', 'admin', NULL, '27-10-2018 10:20:25'),
(205, '175.101.128.35', 'admin', NULL, '27-10-2018 07:01:14'),
(206, '175.101.128.35', 'admin', NULL, '28-10-2018 07:51:16'),
(207, '157.44.145.102', 'admin', NULL, '07-11-2018 10:13:40'),
(208, '157.44.166.54', 'admin', NULL, '08-11-2018 08:23:48'),
(209, '175.101.128.35', 'admin', NULL, '10-11-2018 07:22:56'),
(210, '175.101.128.35', 'admin', NULL, '11-11-2018 11:46:13'),
(211, '202.53.69.162', 'admin', NULL, '16-11-2018 06:14:18'),
(212, '202.53.69.162', 'admin', NULL, '17-11-2018 10:18:46'),
(213, '202.53.69.162', 'admin', NULL, '17-11-2018 02:09:00'),
(214, '175.101.128.35', 'admin', NULL, '17-11-2018 08:43:12'),
(215, '175.101.144.94', 'admin', NULL, '29-11-2018 07:11:34'),
(216, '49.206.100.137', 'admin', NULL, '07-12-2018 11:53:24'),
(217, '157.44.85.245', 'admin', NULL, '07-12-2018 11:56:17'),
(218, '175.101.128.35', 'admin', NULL, '16-12-2018 07:11:57'),
(219, '175.101.128.35', 'admin', NULL, '19-12-2018 09:52:13'),
(220, '175.101.128.35', 'admin', NULL, '02-01-2019 07:58:27'),
(221, '49.205.242.15', 'admin', NULL, '07-02-2019 10:19:55'),
(222, '175.101.128.35', 'admin', NULL, '24-02-2019 11:41:46'),
(223, '175.101.128.35', 'admin', NULL, '24-02-2019 02:05:51'),
(224, '175.101.128.35', 'admin', NULL, '24-02-2019 08:13:53'),
(225, '175.101.128.35', 'admin', NULL, '25-02-2019 10:46:25'),
(226, '175.101.128.35', 'admin', NULL, '19-03-2019 02:40:23'),
(227, '175.101.128.35', 'admin', NULL, '04-04-2019 12:15:24'),
(228, '202.53.69.162', 'admin', NULL, '16-04-2019 11:58:25'),
(229, '175.101.128.37', 'admin', NULL, '16-04-2019 12:26:53'),
(230, '49.204.242.172', 'admin', NULL, '16-04-2019 03:46:54'),
(231, '49.204.242.172', 'admin', NULL, '16-04-2019 06:02:31'),
(232, '49.204.242.172', 'admin', NULL, '17-04-2019 08:30:25'),
(233, '49.204.242.172', 'admin', NULL, '18-04-2019 04:37:11'),
(234, '175.101.128.37', 'admin', NULL, '10-06-2019 10:00:04'),
(235, '175.101.128.37', 'admin', NULL, '12-07-2019 05:35:53'),
(236, '175.101.128.37', 'admin', NULL, '12-07-2019 06:30:44'),
(237, '175.101.128.37', 'admin', NULL, '26-07-2019 03:33:34'),
(238, '175.101.128.37', 'admin', NULL, '26-07-2019 05:01:57'),
(239, '175.101.128.37', 'admin', NULL, '28-07-2019 09:47:10'),
(240, '202.53.69.162', 'admin', NULL, '29-07-2019 10:19:05'),
(241, '175.101.128.37', 'admin', NULL, '03-09-2019 12:42:26'),
(242, '175.101.128.37', 'admin', NULL, '20-09-2019 11:33:10'),
(243, '157.41.108.173', 'admin', NULL, '24-09-2019 12:54:08'),
(244, '157.49.179.216', 'admin', NULL, '30-09-2019 07:30:04'),
(245, '175.101.128.37', 'admin', NULL, '05-11-2019 08:52:31'),
(246, '175.101.128.37', 'admin', NULL, '06-11-2019 01:08:19'),
(247, '175.101.128.37', 'admin', NULL, '06-11-2019 03:44:25'),
(248, '175.101.128.37', 'admin', NULL, '07-11-2019 06:39:17'),
(249, '175.101.128.37', 'admin', NULL, '14-11-2019 05:53:03'),
(250, '175.101.128.37', 'admin', NULL, '07-12-2019 08:13:46'),
(251, '175.101.128.37', 'admin', NULL, '05-02-2020 12:26:35'),
(252, '175.101.128.37', 'admin', NULL, '28-02-2020 05:01:38'),
(253, '138.128.180.106', 'admin', NULL, '14-10-2020 01:27:16'),
(254, '138.128.180.106', 'admin', NULL, '14-10-2020 03:15:14'),
(255, '138.128.180.106', 'admin', NULL, '14-10-2020 04:30:25'),
(256, '138.128.180.106', 'admin', NULL, '14-10-2020 04:42:59'),
(257, '138.128.180.106', 'admin', NULL, '15-10-2020 09:35:18'),
(258, '::1', 'admin', NULL, '15-10-2020 11:23:47'),
(259, '::1', 'admin', NULL, '15-10-2020 11:32:21'),
(260, '::1', 'admin', NULL, '16-10-2020 09:43:17'),
(261, '::1', 'admin', NULL, '16-10-2020 12:35:12'),
(262, '::1', 'admin', NULL, '16-10-2020 12:38:51'),
(263, '::1', 'admin', NULL, '17-10-2020 10:11:16'),
(264, '::1', 'admin', NULL, '19-10-2020 10:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(500) COLLATE utf8_bin NOT NULL,
  `created_on` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`, `title`, `created_on`) VALUES
(5, '202010141546539297494_2.jpg', 'Title1', '1602670613'),
(6, '202010141547054747660_clip1.jpg', 'Title2', '1602670625');

-- --------------------------------------------------------

--
-- Table structure for table `membership_title`
--

CREATE TABLE `membership_title` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_title`
--

INSERT INTO `membership_title` (`id`, `title`, `description`) VALUES
(1, 'Membership', '<p>As an International Ambassadors for Peace Corporation (IAPC) member you get access to a world of opportunities. We assist you in forming networks and partnerships with other peacemakers &amp; diplomats and organizations across the globe. As consultative partners in policy making and reformation, we channelize your inputs in peace and diplomacy policy frameworks.</p>\r\n\r\n<p>International Ambassadors for Peace Corporation (IAPC) works to create and sustain an environment conducive to the development of country, industry, government, and civil society, through pace advisory and awareness.</p>\r\n\r\n<p>IAPC is a non-government, not-for-profit, organization, playing a proactive role in development process of world peace.</p>\r\n\r\n<p>IAPC membership is open to any organization working in support of world peace, any individual who is a mission diplomat.</p>\r\n\r\n<p>IAPC charts change by working closely with Government on world peace policy issues, interfacing with thought leaders globally, and enhancing efficiency, competitiveness and opportunities for peace &amp; diplomacy through global networking.</p>\r\n\r\n<p>Extending its agenda beyond policy making and networking, IAPC assists industry to identify and execute courses for peacemakers and diplomats for world peace. Partnerships with civil society organizations carry forward initiatives for integrated and inclusive development of peace and harmony by supporting and working across diverse domains including healthcare, education, livelihood, skill development, empowerment of women, and water, to name a few.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `our_news_events`
--

CREATE TABLE `our_news_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_on` varchar(200) NOT NULL,
  `p_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_news_events`
--

INSERT INTO `our_news_events` (`id`, `title`, `description`, `image`, `created_on`, `p_link`) VALUES
(1, 'Record discharge of timber logs at Vizag Port', '<p>Synergy Shipping Private Ltd said in a press release here on Monday that the company had discharged 3368 CBM/MT</p>\r\n', '201808101139166122131_event_1.jpg', '1534235328', 'Record-discharge-of-timber-logs-at-Vizag-Port'),
(2, 'Record Timber Discharge', '<p><em>VISAKHAPATNAM: </em>Synergy Shipping Private Ltd discharged 3,368 tonne imported Myanmar timber logs at</p>\r\n\r\n<p>&nbsp;</p>\r\n', '20180810121302608215_event_2.jpg', '1534169739', 'Record-Timber-Discharge'),
(3, 'Citation Presented', '\r\n\r\n<p>Visakhapatnam Port Trust has presented a citation to Synergy Shipping Pvt. Ltd in recognition of achieving a record in unloading 3,642 tonne of timber logs</p>\r\n\r\n', '201808141351568954467_event_3.jpg', '1534235254', 'Citation-Presented'),
(4, 'Synergy shipping executes record output', '<p>VISAKHAPATNAM, May 25: M/s.Synergy Shipping Pvt Ltd., Visakhapatnam have executed a record output in discharging Timber Logs at Visakhapatnam Port.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '201808141352456449890_event_4.jpg', '1534252904', 'Synergy-shipping-executes-record-output');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `title`, `designation`, `image`, `facebook`, `twitter`, `google`, `linkedin`) VALUES
(3, 'Title Here', '', '201712131309264835205_team_member3.jpg', 'www.fb.com', 'www.twitter.com', 'www.google.com', 'www.linkedin.com'),
(4, 'Title Here', '', '20171213130944179748_team_member3.jpg', 'www.fb.com', 'www.twitter.com', 'www.google.com', 'www.linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `overview`
--

INSERT INTO `overview` (`id`, `title`, `description`, `image`) VALUES
(1, 'About Sree Kaleswari Travels', '<p>Sree Kaleswari Travels has worked&nbsp;<br />\r\nday and night all these years</p>\r\n\r\n<p>And placed before the public the most efficient, safe, smooth and hospitable travel service and the public too has put us on the number 1 slot in Andhra Pradesh and other states with their trust and response.</p>\r\n', '201712201642045400695_abtimg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) NOT NULL,
  `package` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package`, `created_at`) VALUES
(1, 'COMPLETE CAR WASH', '1508488167'),
(2, 'EXTERIOR CAR WASH', '1508488178'),
(4, 'INTERIOR STEAM AUTO DETAILING', '1508497219');

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `id` bigint(20) NOT NULL,
  `vehicle_link` varchar(255) NOT NULL,
  `package_link` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_prices`
--

INSERT INTO `package_prices` (`id`, `vehicle_link`, `package_link`, `price`) VALUES
(1, '1', '1', '100'),
(2, '1', '2', '200'),
(3, '1', '4', '300'),
(7, '3', '1', '300'),
(8, '3', '2', '400'),
(9, '3', '4', '500');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `gallery_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `gallery_id`, `image`) VALUES
(2, '6', '201712141154506582336_aside_img_01.jpg'),
(3, '6', '201712141155044933776_aside_img_03.jpg'),
(4, '7', '201712141211252849731_hightlight_content.png'),
(6, '9', '201712191222212106933_a2.jpg'),
(7, '9', '201712191222314673156_a3.jpg'),
(8, '9', '201712191222376735229_a1.jpg'),
(9, '9', '201712191222436969909_a4.jpg'),
(10, '9', '201712191222498643798_bg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `photo_albums`
--

CREATE TABLE `photo_albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` varchar(255) NOT NULL,
  `p_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_albums`
--

INSERT INTO `photo_albums` (`id`, `title`, `created_on`, `p_link`) VALUES
(1, 'Gallery -1', '1602669449', 'Gallery-1');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `pf_id` int(11) NOT NULL,
  `pf_plink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`id`, `image`, `title`, `pf_id`, `pf_plink`) VALUES
(9, '201808161757306613464_activitiy_img1.jpg', 'image title', 2, 'Album-title-03'),
(10, '201808161759492304077_orphans_service.jpg', 'image title', 5, 'Album-title-05'),
(11, '201808161759582724304_health_service.jpg', 'image title', 5, 'Album-title-05'),
(13, '201810242154363310536_0000.jpg', '', 5, 'Album-title-09'),
(14, '201810242155203075703_01.jpg', '', 5, 'Album-title-09'),
(15, '201810242155349694433_02.jpg', '', 5, 'Album-title-09'),
(16, '20181024215605751899_03.jpg', '', 5, 'Album-title-09'),
(17, '201810242156272343143_04.jpg', '', 5, 'Album-title-09'),
(18, '201810242156488317320_05.jpg', '', 5, 'Album-title-09'),
(19, '201810242157068221667_06.jpg', '', 5, 'Album-title-09'),
(20, '201810242157197465333_07.jpg', '', 5, 'Album-title-09'),
(21, '201810242158182272461_08.jpg', '', 5, 'Album-title-09'),
(24, '201810242353089677149_07.jpg', '', 5, 'Album-title-09'),
(25, '201810242353234679310_06.jpg', '', 5, 'Album-title-09'),
(26, '20181024235335666028_05.jpg', '', 5, 'Album-title-09'),
(27, '201810242354059950546_02.jpg', '', 5, 'Album-title-09'),
(28, '201810242354373990203_39.jpg', '', 5, 'Album-title-09'),
(29, '201810242354524514125_01.jpg', '', 5, 'Album-title-09'),
(30, '201810242355157901803_16.jpg', '', 5, 'Album-title-09'),
(31, '201810242355555686338_10.jpg', '', 5, 'Album-title-09'),
(32, '201810242356339618953_36.jpg', '', 5, 'Album-title-09'),
(33, '201810242357223842321_28.jpg', '', 5, 'Album-title-09'),
(34, '201810242357525185249_24.jpg', '', 5, 'Album-title-09'),
(35, '201810242358068317236_26.jpg', '', 5, 'Album-title-09'),
(36, '201810242358339780716_41.jpg', '', 5, 'Album-title-09'),
(37, '201810242359052065155_07.jpg', '', 5, 'Album-title-09'),
(38, '201810250002209241027_06.jpg', '', 5, 'Album-title-09'),
(39, '201810250002547264441_02.jpg', '', 5, 'Album-title-09'),
(40, '201810250003516140585_img_20170205_wa0005.jpg', '', 5, 'Album-title-09'),
(41, '201810250004192606526_img_20170221_wa0002.jpg', '', 5, 'Album-title-09'),
(42, '201810250008336102537_20170131_105852.jpg', '', 5, 'Album-title-09'),
(43, '201810250008578353845_copy_of_img_20170305_wa0004.jpg', '', 5, 'Album-title-09'),
(44, '20181025000919869758_fb_img_1488414667920.jpg', '', 5, 'Album-title-09'),
(46, '201810250010367086862_fb_img_1488414711962.jpg', '', 5, 'Album-title-09'),
(47, '201810250011586717414_fb_img_1488414746340.jpg', '', 5, 'Album-title-09'),
(48, '201810250012333430700_img_20170311_wa0022.jpg', '', 5, 'Album-title-09'),
(49, '201810250013048090325_22491523_491277171243938_7329622902598998442_n.jpg', '', 5, 'Album-title-09'),
(50, '201810250013245249879_44104233_685353558502964_4379479891469402112_n.jpg', '', 5, 'Album-title-09'),
(51, '201810250013551466564_44168578_685350758503244_5315039792784736256_n.jpg', '', 5, 'Album-title-09'),
(52, '201810250014122929281_44188841_685354968502823_3948843638326296576_n.jpg', '', 5, 'Album-title-09'),
(53, '201810250015038921146_44194864_685359805169006_5842561196636504064_n_1_.jpg', '', 5, 'Album-title-09'),
(54, '201810250015385018975_20170120_110329.jpg', '', 5, 'Album-title-09'),
(55, '20181025001616461477_img_20170121_wa0051.jpg', '', 5, 'Album-title-09'),
(58, '201810252125301861888_1522599745474.png', '', 6, ''),
(59, '201810252125444518403_1522602640000.jpg', '', 6, ''),
(60, '201810252125577429726_1529774717732.jpg', '', 6, ''),
(61, '201810252126087634511_facebook_1540407495038__1_.jpg', '', 6, ''),
(63, '201810252127076667354_facebook_1540407516445.jpg', '', 6, ''),
(64, '201810252127199664657_facebook_1540407550601.jpg', '', 6, ''),
(66, '201810252127477040770_facebook_1540407591903.jpg', '', 6, ''),
(67, '201810252128125225206_facebook_1540407630903.jpg', '', 6, ''),
(68, '201810252128274361566_fb_img_1506782702438.jpg', '', 6, ''),
(69, '201810252129035566625_fb_img_1533893431988.jpg', '', 6, ''),
(70, '201810252129179116260_fb_img_1533893640210.jpg', '', 6, ''),
(71, '201810252129418452369_gplus2038941905.jpg', '', 6, ''),
(72, '2018102521301984784_img_20150319_112037.jpg', '', 6, ''),
(73, '201810252130321406192_img_20150414_151909.jpg', '', 6, ''),
(74, '2018102521313620428_img_20150414_151939.jpg', '', 6, ''),
(75, '201810252132173129874_img_20150414_152528.jpg', '', 6, ''),
(76, '201810252132404277523_img_20161010_114939.jpg', '', 6, ''),
(77, '201810252133177915264_img_20170409_113259.jpg', '', 6, ''),
(78, '201810252133545544977_img_20170409_113339.jpg', '', 6, ''),
(79, '201810252134259117083_img_20170409_113401.jpg', '', 6, ''),
(80, '201810252134549444695_img_20171211_225825.jpg', '', 6, ''),
(81, '201810252135113985478_img_20180128_114558.jpg', '', 6, ''),
(82, '201810252135429038857_img_20180330_182036.jpg', '', 6, ''),
(83, '201810252136006592057_img_20180409_171412.jpg', '', 6, ''),
(84, '201810252136316213995_img_20180509_120249.jpg', '', 6, ''),
(85, '201810252137003158705_img_20180624_134337.jpg', '', 6, ''),
(86, '201810252137352797115_img_20180726_121619.jpg', '', 6, ''),
(87, '201810252137491064324_img_20180726_121643.jpg', '', 6, ''),
(88, '201810252138032210934_img_20180828_155451.jpg', '', 6, ''),
(89, '201810252138263157971_img_20180829_151132.jpg', '', 6, ''),
(90, '201810252138423787398_img_20180830_152639.jpg', '', 6, ''),
(91, '201810252139011087246_img_20180915_120108.jpg', '', 6, ''),
(93, '201810252139547610389_img_20181025_085035.jpg', '', 6, ''),
(94, '201810252140091932266_img_20181025_134350.jpg', '', 6, ''),
(95, '201810252140223098013_img_20181025_134948.jpg', '', 6, ''),
(96, '201810252140437903587_img_20181025_135240.jpg', '', 6, ''),
(97, '201810252140572490836_img_20181025_135402.jpg', '', 6, ''),
(98, '201810252141095130085_img_20161229_wa0078.jpg', '', 6, ''),
(99, '201810252141244690878_img_20170121_wa0019.jpg', '', 6, ''),
(100, '201810252141365912631_img_20170121_wa0061.jpg', '', 6, ''),
(101, '201810252141501209277_img_20170121_wa0065.jpg', '', 6, ''),
(102, '201810252142285699834_img_20170221_wa0013.jpg', '', 6, ''),
(103, '201810252142458802148_img_20170222_wa0008.jpg', '', 6, ''),
(104, '201810252142574223090_img_20170222_wa0056.jpg', '', 6, ''),
(105, '201810252143192338779_img_20170316_wa0044.jpg', '', 6, ''),
(106, '201810252143332892582_img_20170323_wa0012.jpg', '', 6, ''),
(108, '201810252144028741682_img_20170809_wa0007.jpg', '', 6, ''),
(109, '201810252144167552898_img_20170822_wa0003.jpg', '', 6, ''),
(110, '201810252144433626325_img_20171231_wa0017.jpg', '', 6, ''),
(111, '201810252144582268436_img_20180223_wa0008.jpg', '', 6, ''),
(112, '201810252145114423498_img_20180224_wa0008.jpg', '', 6, ''),
(113, '201810252145342265454_img_20180226_wa0003.jpg', '', 6, ''),
(114, '20181025214550168115_img_20180226_wa0012.jpg', '', 6, ''),
(116, '201810252146178830624_img_20180412_wa0048.jpg', '', 6, ''),
(117, '201810252146325548587_img_20180614_wa0002.jpg', '', 6, ''),
(118, '2018102521464797536_img_20180706_wa0001.jpg', '', 6, ''),
(119, '201810252147005931690_img_20180907_wa0008.jpg', '', 6, ''),
(121, '20181025214720992125_orca_image_1490506641076_jpg_1490506642336.jpeg', '', 6, ''),
(122, '201811111254297021103_44118502_685357408502579_5818465815925620736_n.jpg', '', 7, ''),
(123, '201811111254581130254_04.jpg', '', 7, ''),
(124, '201811111255157279892_02.jpg', '', 7, ''),
(125, '201811111255434938626_facebook_1540407630903.jpg', '', 7, ''),
(126, '201811111256041438161_fb_img_1533893431988.jpg', '', 7, ''),
(127, '201811111256265239233_img_20150414_151939.jpg', '', 7, ''),
(128, '201811111256453174859_img_20150414_151909.jpg', '', 7, ''),
(129, '201811111258381483048_img_20180509_120249.jpg', '', 7, ''),
(130, '201811111259439066488_img_20180726_121643.jpg', '', 7, ''),
(131, '201811111300107447997_img_20180624_134337.jpg', '', 7, ''),
(132, '201811111300354020713_img_20171211_225825.jpg', '', 7, ''),
(133, '201811111301206935335_img_20181025_135402.jpg', '', 7, ''),
(134, '20181111130147817058_img_20170222_wa0056.jpg', '', 7, ''),
(135, '201811111302256989234_img_20170316_wa0044.jpg', '', 7, ''),
(136, '201811111303178833191_img_20180223_wa0008.jpg', '', 7, ''),
(137, '20181111130336513313_img_20170809_wa0007.jpg', '', 7, ''),
(138, '201811111304101926404_img_20180706_wa0001.jpg', '', 7, ''),
(139, '201811111304302929446_img_20181018_wa0010.jpg', '', 7, ''),
(140, '201811111304571622948_img_20170323_wa0012.jpg', '', 7, ''),
(141, '201811111305216933124_img_20180330_182036.jpg', '', 7, ''),
(142, '201811111305595259841_img_20170822_wa0003.jpg', '', 7, ''),
(143, '201811111306408458847_02.jpg', '', 7, ''),
(144, '201811111307093970038_09.jpg', '', 7, ''),
(145, '20181111130738789954_05.jpg', '', 7, ''),
(146, '201811111308067181797_22491523_491277171243938_7329622902598998442_n.jpg', '', 7, ''),
(147, '201811111308287213725_44118612_685359595169027_4411106535988527104_o.jpg', '', 7, ''),
(148, '201811111309499430394_44194864_685359805169006_5842561196636504064_n_2_.jpg', '', 7, ''),
(149, '201811111310224499981_44126903_685347238503596_8723509870201929728_n.jpg', '', 7, ''),
(150, '201811111311186432639_44190215_685355951836058_4584117057146060800_n.jpg', '', 7, ''),
(151, '201811111311379872694_44247895_685356015169385_1861728160853262336_n.jpg', '', 7, ''),
(152, '201811111311558585742_44247102_685359988502321_4506924623547334656_n.jpg', '', 7, ''),
(153, '201811111312365597593_20.jpg', '', 7, ''),
(154, '201811111313093371722_06.jpg', '', 7, ''),
(155, '20181111131332194855_41.jpg', '', 7, ''),
(156, '201811111313457882003_07.jpg', '', 7, ''),
(157, '201811111314529628729_28.jpg', '', 7, ''),
(158, '201811111315133582164_27.jpg', '', 7, ''),
(159, '201811111315443030380_32.jpg', '', 7, ''),
(160, '201909031245122528081_44128998_685347331836920_5066011502993997824_n.jpg', '', 2, 'klk'),
(165, '202010141527589953784_gal2.jpg', '', 1, 'Gallery-1'),
(166, '202010141528108708627_gal3.jpg', '', 1, 'Gallery-1'),
(167, '202010141528183798294_gal4.jpg', '', 1, 'Gallery-1'),
(168, '202010141528257581430_gal5.jpg', '', 1, 'Gallery-1');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `map` longtext NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fav` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `foot` varchar(255) NOT NULL,
  `fmail` varchar(100) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `foot_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `title`, `username`, `email`, `map`, `logo`, `fav`, `phone`, `address`, `foot`, `fmail`, `meta_keywords`, `meta_description`, `foot_description`) VALUES
(1, 'PV Sahaya', 'admin', 'pvsahaya@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243207.7269417989!2d83.1225040872413!3d17.738949529238557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a39431389e6973f:0x92d9c20395498468!2sVisakhapatnam,+Andhra+Pradesh!5e0!3m2!1sen!2sin!4v1532960347431', '2020101415182078154_newlogo.png', '201902071028263571385_logo.png', '+91 1234567890', 'Dwarkanagar, Visakhapatnam -16', '2020 pvsahaya.com | All Rights Reserved', 'info@pvsahaya.com', 'PVSahaya', 'PVSahaya', '2020 pvsahaya.com/ All Rights Reserved\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `services_categories_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services_categories_id`, `title`, `description`, `image`) VALUES
(1, 1, 'Education', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010161304226604844_202010141543354144233_act1_jpg13.jpg'),
(2, 2, 'Orphans', '<p>&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '201808161511325700378_orphans_service111.jpg'),
(3, 3, 'Humanity', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010141544305261248_gal111.jpg'),
(4, 4, 'Health', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010141544468050564_act342.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services_categories`
--

CREATE TABLE `services_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `p_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_categories`
--

INSERT INTO `services_categories` (`id`, `category_name`, `title`, `description`, `image`, `p_link`) VALUES
(1, 'Education', 'Education', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010161304226604844_202010141543354144233_act1_jpg12.jpg', 'education'),
(2, 'Orphans', 'Orphans', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '201808161511325700378_orphans_service11.jpg', 'orphans'),
(3, 'Humanity', 'Humanity', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010141544305261248_gal11.jpg', 'humanity'),
(4, 'Health', 'Health', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '202010141544468050564_act341.jpg', 'health');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) NOT NULL,
  `facebook` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `youtube` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `linkedin`, `google`, `youtube`) VALUES
(1, 'https://www.facebook.com/', '', '', 'pvsahaya@gmail.com', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `created_at` varchar(25) NOT NULL,
  `updated_at` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Andaman and Nicobar Islands', 101, '', '', 1),
(2, 'Andhra Pradesh', 101, '', '', 1),
(3, 'Arunachal Pradesh', 101, '', '', 1),
(4, 'Assam', 101, '', '', 1),
(5, 'Bihar', 101, '', '', 1),
(6, 'Chandigarh', 101, '', '', 1),
(7, 'Chhattisgarh', 101, '', '', 1),
(8, 'Dadra and Nagar Haveli', 101, '', '', 1),
(9, 'Daman and Diu', 101, '', '', 1),
(10, 'Delhi', 101, '', '', 1),
(11, 'Goa', 101, '', '', 1),
(12, 'Gujarat', 101, '', '', 1),
(13, 'Haryana', 101, '', '', 1),
(14, 'Himachal Pradesh', 101, '', '', 1),
(15, 'Jammu and Kashmir', 101, '', '', 1),
(16, 'Jharkhand', 101, '', '', 1),
(17, 'Karnataka', 101, '', '', 1),
(18, 'Kenmore', 101, '', '', 1),
(19, 'Kerala', 101, '', '', 1),
(20, 'Lakshadweep', 101, '', '', 1),
(21, 'Madhya Pradesh', 101, '', '', 1),
(22, 'Maharashtra', 101, '', '', 1),
(23, 'Manipur', 101, '', '', 1),
(24, 'Meghalaya', 101, '', '', 1),
(25, 'Mizoram', 101, '', '', 1),
(26, 'Nagaland', 101, '', '', 1),
(27, 'Narora', 101, '', '', 1),
(28, 'Natwar', 101, '', '', 1),
(29, 'Odisha', 101, '', '', 1),
(30, 'Paschim Medinipur', 101, '', '', 1),
(31, 'Pondicherry', 101, '', '', 1),
(32, 'Punjab', 101, '', '', 1),
(33, 'Rajasthan', 101, '', '', 1),
(34, 'Sikkim', 101, '', '', 1),
(35, 'Tamil Nadu', 101, '', '', 1),
(36, 'Telangana', 101, '', '', 1),
(37, 'Tripura', 101, '', '', 1),
(38, 'Uttar Pradesh', 101, '', '', 1),
(39, 'Uttarakhand', 101, '', '', 1),
(40, 'Vaishali', 101, '', '', 1),
(41, 'West Bengal', 101, '', '', 1),
(42, 'Badakhshan', 1, '', '', 1),
(43, 'Badgis', 1, '', '', 1),
(44, 'Baglan', 1, '', '', 1),
(45, 'Balkh', 1, '', '', 1),
(46, 'Bamiyan', 1, '', '', 1),
(47, 'Farah', 1, '', '', 1),
(48, 'Faryab', 1, '', '', 1),
(49, 'Gawr', 1, '', '', 1),
(50, 'Gazni', 1, '', '', 1),
(51, 'Herat', 1, '', '', 1),
(52, 'Hilmand', 1, '', '', 1),
(53, 'Jawzjan', 1, '', '', 1),
(54, 'Kabul', 1, '', '', 1),
(55, 'Kapisa', 1, '', '', 1),
(56, 'Khawst', 1, '', '', 1),
(57, 'Kunar', 1, '', '', 1),
(58, 'Lagman', 1, '', '', 1),
(59, 'Lawghar', 1, '', '', 1),
(60, 'Nangarhar', 1, '', '', 1),
(61, 'Nimruz', 1, '', '', 1),
(62, 'Nuristan', 1, '', '', 1),
(63, 'Paktika', 1, '', '', 1),
(64, 'Paktiya', 1, '', '', 1),
(65, 'Parwan', 1, '', '', 1),
(66, 'Qandahar', 1, '', '', 1),
(67, 'Qunduz', 1, '', '', 1),
(68, 'Samangan', 1, '', '', 1),
(69, 'Sar-e Pul', 1, '', '', 1),
(70, 'Takhar', 1, '', '', 1),
(71, 'Uruzgan', 1, '', '', 1),
(72, 'Wardag', 1, '', '', 1),
(73, 'Zabul', 1, '', '', 1),
(74, 'Berat', 2, '', '', 1),
(75, 'Bulqize', 2, '', '', 1),
(76, 'Delvine', 2, '', '', 1),
(77, 'Devoll', 2, '', '', 1),
(78, 'Dibre', 2, '', '', 1),
(79, 'Durres', 2, '', '', 1),
(80, 'Elbasan', 2, '', '', 1),
(81, 'Fier', 2, '', '', 1),
(82, 'Gjirokaster', 2, '', '', 1),
(83, 'Gramsh', 2, '', '', 1),
(84, 'Has', 2, '', '', 1),
(85, 'Kavaje', 2, '', '', 1),
(86, 'Kolonje', 2, '', '', 1),
(87, 'Korce', 2, '', '', 1),
(88, 'Kruje', 2, '', '', 1),
(89, 'Kucove', 2, '', '', 1),
(90, 'Kukes', 2, '', '', 1),
(91, 'Kurbin', 2, '', '', 1),
(92, 'Lezhe', 2, '', '', 1),
(93, 'Librazhd', 2, '', '', 1),
(94, 'Lushnje', 2, '', '', 1),
(95, 'Mallakaster', 2, '', '', 1),
(96, 'Malsi e Madhe', 2, '', '', 1),
(97, 'Mat', 2, '', '', 1),
(98, 'Mirdite', 2, '', '', 1),
(99, 'Peqin', 2, '', '', 1),
(100, 'Permet', 2, '', '', 1),
(101, 'Pogradec', 2, '', '', 1),
(102, 'Puke', 2, '', '', 1),
(103, 'Sarande', 2, '', '', 1),
(104, 'Shkoder', 2, '', '', 1),
(105, 'Skrapar', 2, '', '', 1),
(106, 'Tepelene', 2, '', '', 1),
(107, 'Tirane', 2, '', '', 1),
(108, 'Tropoje', 2, '', '', 1),
(109, 'Vlore', 2, '', '', 1),
(110, '\'Ayn Daflah', 3, '', '', 1),
(111, '\'Ayn Tamushanat', 3, '', '', 1),
(112, 'Adrar', 3, '', '', 1),
(113, 'Algiers', 3, '', '', 1),
(114, 'Annabah', 3, '', '', 1),
(115, 'Bashshar', 3, '', '', 1),
(116, 'Batnah', 3, '', '', 1),
(117, 'Bijayah', 3, '', '', 1),
(118, 'Biskrah', 3, '', '', 1),
(119, 'Blidah', 3, '', '', 1),
(120, 'Buirah', 3, '', '', 1),
(121, 'Bumardas', 3, '', '', 1),
(122, 'Burj Bu Arririj', 3, '', '', 1),
(123, 'Ghalizan', 3, '', '', 1),
(124, 'Ghardayah', 3, '', '', 1),
(125, 'Ilizi', 3, '', '', 1),
(126, 'Jijili', 3, '', '', 1),
(127, 'Jilfah', 3, '', '', 1),
(128, 'Khanshalah', 3, '', '', 1),
(129, 'Masilah', 3, '', '', 1),
(130, 'Midyah', 3, '', '', 1),
(131, 'Milah', 3, '', '', 1),
(132, 'Muaskar', 3, '', '', 1),
(133, 'Mustaghanam', 3, '', '', 1),
(134, 'Naama', 3, '', '', 1),
(135, 'Oran', 3, '', '', 1),
(136, 'Ouargla', 3, '', '', 1),
(137, 'Qalmah', 3, '', '', 1),
(138, 'Qustantinah', 3, '', '', 1),
(139, 'Sakikdah', 3, '', '', 1),
(140, 'Satif', 3, '', '', 1),
(141, 'Sayda\'', 3, '', '', 1),
(142, 'Sidi ban-al-\'Abbas', 3, '', '', 1),
(143, 'Suq Ahras', 3, '', '', 1),
(144, 'Tamanghasat', 3, '', '', 1),
(145, 'Tibazah', 3, '', '', 1),
(146, 'Tibissah', 3, '', '', 1),
(147, 'Tilimsan', 3, '', '', 1),
(148, 'Tinduf', 3, '', '', 1),
(149, 'Tisamsilt', 3, '', '', 1),
(150, 'Tiyarat', 3, '', '', 1),
(151, 'Tizi Wazu', 3, '', '', 1),
(152, 'Umm-al-Bawaghi', 3, '', '', 1),
(153, 'Wahran', 3, '', '', 1),
(154, 'Warqla', 3, '', '', 1),
(155, 'Wilaya d Alger', 3, '', '', 1),
(156, 'Wilaya de Bejaia', 3, '', '', 1),
(157, 'Wilaya de Constantine', 3, '', '', 1),
(158, 'al-Aghwat', 3, '', '', 1),
(159, 'al-Bayadh', 3, '', '', 1),
(160, 'al-Jaza\'ir', 3, '', '', 1),
(161, 'al-Wad', 3, '', '', 1),
(162, 'ash-Shalif', 3, '', '', 1),
(163, 'at-Tarif', 3, '', '', 1),
(164, 'Eastern', 4, '', '', 1),
(165, 'Manu\'a', 4, '', '', 1),
(166, 'Swains Island', 4, '', '', 1),
(167, 'Western', 4, '', '', 1),
(168, 'Andorra la Vella', 5, '', '', 1),
(169, 'Canillo', 5, '', '', 1),
(170, 'Encamp', 5, '', '', 1),
(171, 'La Massana', 5, '', '', 1),
(172, 'Les Escaldes', 5, '', '', 1),
(173, 'Ordino', 5, '', '', 1),
(174, 'Sant Julia de Loria', 5, '', '', 1),
(175, 'Bengo', 6, '', '', 1),
(176, 'Benguela', 6, '', '', 1),
(177, 'Bie', 6, '', '', 1),
(178, 'Cabinda', 6, '', '', 1),
(179, 'Cunene', 6, '', '', 1),
(180, 'Huambo', 6, '', '', 1),
(181, 'Huila', 6, '', '', 1),
(182, 'Kuando-Kubango', 6, '', '', 1),
(183, 'Kwanza Norte', 6, '', '', 1),
(184, 'Kwanza Sul', 6, '', '', 1),
(185, 'Luanda', 6, '', '', 1),
(186, 'Lunda Norte', 6, '', '', 1),
(187, 'Lunda Sul', 6, '', '', 1),
(188, 'Malanje', 6, '', '', 1),
(189, 'Moxico', 6, '', '', 1),
(190, 'Namibe', 6, '', '', 1),
(191, 'Uige', 6, '', '', 1),
(192, 'Zaire', 6, '', '', 1),
(193, 'Other Provinces', 7, '', '', 1),
(194, 'Sector claimed by Argentina/Ch', 8, '', '', 1),
(195, 'Sector claimed by Argentina/UK', 8, '', '', 1),
(196, 'Sector claimed by Australia', 8, '', '', 1),
(197, 'Sector claimed by France', 8, '', '', 1),
(198, 'Sector claimed by New Zealand', 8, '', '', 1),
(199, 'Sector claimed by Norway', 8, '', '', 1),
(200, 'Unclaimed Sector', 8, '', '', 1),
(201, 'Barbuda', 9, '', '', 1),
(202, 'Saint George', 9, '', '', 1),
(203, 'Saint John', 9, '', '', 1),
(204, 'Saint Mary', 9, '', '', 1),
(205, 'Saint Paul', 9, '', '', 1),
(206, 'Saint Peter', 9, '', '', 1),
(207, 'Saint Philip', 9, '', '', 1),
(208, 'Buenos Aires', 10, '', '', 1),
(209, 'Catamarca', 10, '', '', 1),
(210, 'Chaco', 10, '', '', 1),
(211, 'Chubut', 10, '', '', 1),
(212, 'Cordoba', 10, '', '', 1),
(213, 'Corrientes', 10, '', '', 1),
(214, 'Distrito Federal', 10, '', '', 1),
(215, 'Entre Rios', 10, '', '', 1),
(216, 'Formosa', 10, '', '', 1),
(217, 'Jujuy', 10, '', '', 1),
(218, 'La Pampa', 10, '', '', 1),
(219, 'La Rioja', 10, '', '', 1),
(220, 'Mendoza', 10, '', '', 1),
(221, 'Misiones', 10, '', '', 1),
(222, 'Neuquen', 10, '', '', 1),
(223, 'Rio Negro', 10, '', '', 1),
(224, 'Salta', 10, '', '', 1),
(225, 'San Juan', 10, '', '', 1),
(226, 'San Luis', 10, '', '', 1),
(227, 'Santa Cruz', 10, '', '', 1),
(228, 'Santa Fe', 10, '', '', 1),
(229, 'Santiago del Estero', 10, '', '', 1),
(230, 'Tierra del Fuego', 10, '', '', 1),
(231, 'Tucuman', 10, '', '', 1),
(232, 'Aragatsotn', 11, '', '', 1),
(233, 'Ararat', 11, '', '', 1),
(234, 'Armavir', 11, '', '', 1),
(235, 'Gegharkunik', 11, '', '', 1),
(236, 'Kotaik', 11, '', '', 1),
(237, 'Lori', 11, '', '', 1),
(238, 'Shirak', 11, '', '', 1),
(239, 'Stepanakert', 11, '', '', 1),
(240, 'Syunik', 11, '', '', 1),
(241, 'Tavush', 11, '', '', 1),
(242, 'Vayots Dzor', 11, '', '', 1),
(243, 'Yerevan', 11, '', '', 1),
(244, 'Aruba', 12, '', '', 1),
(245, 'Auckland', 13, '', '', 1),
(246, 'Australian Capital Territory', 13, '', '', 1),
(247, 'Balgowlah', 13, '', '', 1),
(248, 'Balmain', 13, '', '', 1),
(249, 'Bankstown', 13, '', '', 1),
(250, 'Baulkham Hills', 13, '', '', 1),
(251, 'Bonnet Bay', 13, '', '', 1),
(252, 'Camberwell', 13, '', '', 1),
(253, 'Carole Park', 13, '', '', 1),
(254, 'Castle Hill', 13, '', '', 1),
(255, 'Caulfield', 13, '', '', 1),
(256, 'Chatswood', 13, '', '', 1),
(257, 'Cheltenham', 13, '', '', 1),
(258, 'Cherrybrook', 13, '', '', 1),
(259, 'Clayton', 13, '', '', 1),
(260, 'Collingwood', 13, '', '', 1),
(261, 'Frenchs Forest', 13, '', '', 1),
(262, 'Hawthorn', 13, '', '', 1),
(263, 'Jannnali', 13, '', '', 1),
(264, 'Knoxfield', 13, '', '', 1),
(265, 'Melbourne', 13, '', '', 1),
(266, 'New South Wales', 13, '', '', 1),
(267, 'Northern Territory', 13, '', '', 1),
(268, 'Perth', 13, '', '', 1),
(269, 'Queensland', 13, '', '', 1),
(270, 'South Australia', 13, '', '', 1),
(271, 'Tasmania', 13, '', '', 1),
(272, 'Templestowe', 13, '', '', 1),
(273, 'Victoria', 13, '', '', 1),
(274, 'Werribee south', 13, '', '', 1),
(275, 'Western Australia', 13, '', '', 1),
(276, 'Wheeler', 13, '', '', 1),
(277, 'Bundesland Salzburg', 14, '', '', 1),
(278, 'Bundesland Steiermark', 14, '', '', 1),
(279, 'Bundesland Tirol', 14, '', '', 1),
(280, 'Burgenland', 14, '', '', 1),
(281, 'Carinthia', 14, '', '', 1),
(282, 'Karnten', 14, '', '', 1),
(283, 'Liezen', 14, '', '', 1),
(284, 'Lower Austria', 14, '', '', 1),
(285, 'Niederosterreich', 14, '', '', 1),
(286, 'Oberosterreich', 14, '', '', 1),
(287, 'Salzburg', 14, '', '', 1),
(288, 'Schleswig-Holstein', 14, '', '', 1),
(289, 'Steiermark', 14, '', '', 1),
(290, 'Styria', 14, '', '', 1),
(291, 'Tirol', 14, '', '', 1),
(292, 'Upper Austria', 14, '', '', 1),
(293, 'Vorarlberg', 14, '', '', 1),
(294, 'Wien', 14, '', '', 1),
(295, 'Abseron', 15, '', '', 1),
(296, 'Baki Sahari', 15, '', '', 1),
(297, 'Ganca', 15, '', '', 1),
(298, 'Ganja', 15, '', '', 1),
(299, 'Kalbacar', 15, '', '', 1),
(300, 'Lankaran', 15, '', '', 1),
(301, 'Mil-Qarabax', 15, '', '', 1),
(302, 'Mugan-Salyan', 15, '', '', 1),
(303, 'Nagorni-Qarabax', 15, '', '', 1),
(304, 'Naxcivan', 15, '', '', 1),
(305, 'Priaraks', 15, '', '', 1),
(306, 'Qazax', 15, '', '', 1),
(307, 'Saki', 15, '', '', 1),
(308, 'Sirvan', 15, '', '', 1),
(309, 'Xacmaz', 15, '', '', 1),
(310, 'Abaco', 16, '', '', 1),
(311, 'Acklins Island', 16, '', '', 1),
(312, 'Andros', 16, '', '', 1),
(313, 'Berry Islands', 16, '', '', 1),
(314, 'Biminis', 16, '', '', 1),
(315, 'Cat Island', 16, '', '', 1),
(316, 'Crooked Island', 16, '', '', 1),
(317, 'Eleuthera', 16, '', '', 1),
(318, 'Exuma and Cays', 16, '', '', 1),
(319, 'Grand Bahama', 16, '', '', 1),
(320, 'Inagua Islands', 16, '', '', 1),
(321, 'Long Island', 16, '', '', 1),
(322, 'Mayaguana', 16, '', '', 1),
(323, 'New Providence', 16, '', '', 1),
(324, 'Ragged Island', 16, '', '', 1),
(325, 'Rum Cay', 16, '', '', 1),
(326, 'San Salvador', 16, '', '', 1),
(327, '\'Isa', 17, '', '', 1),
(328, 'Badiyah', 17, '', '', 1),
(329, 'Hidd', 17, '', '', 1),
(330, 'Jidd Hafs', 17, '', '', 1),
(331, 'Mahama', 17, '', '', 1),
(332, 'Manama', 17, '', '', 1),
(333, 'Sitrah', 17, '', '', 1),
(334, 'al-Manamah', 17, '', '', 1),
(335, 'al-Muharraq', 17, '', '', 1),
(336, 'ar-Rifa\'a', 17, '', '', 1),
(337, 'Bagar Hat', 18, '', '', 1),
(338, 'Bandarban', 18, '', '', 1),
(339, 'Barguna', 18, '', '', 1),
(340, 'Barisal', 18, '', '', 1),
(341, 'Bhola', 18, '', '', 1),
(342, 'Bogora', 18, '', '', 1),
(343, 'Brahman Bariya', 18, '', '', 1),
(344, 'Chandpur', 18, '', '', 1),
(345, 'Chattagam', 18, '', '', 1),
(346, 'Chittagong Division', 18, '', '', 1),
(347, 'Chuadanga', 18, '', '', 1),
(348, 'Dhaka', 18, '', '', 1),
(349, 'Dinajpur', 18, '', '', 1),
(350, 'Faridpur', 18, '', '', 1),
(351, 'Feni', 18, '', '', 1),
(352, 'Gaybanda', 18, '', '', 1),
(353, 'Gazipur', 18, '', '', 1),
(354, 'Gopalganj', 18, '', '', 1),
(355, 'Habiganj', 18, '', '', 1),
(356, 'Jaipur Hat', 18, '', '', 1),
(357, 'Jamalpur', 18, '', '', 1),
(358, 'Jessor', 18, '', '', 1),
(359, 'Jhalakati', 18, '', '', 1),
(360, 'Jhanaydah', 18, '', '', 1),
(361, 'Khagrachhari', 18, '', '', 1),
(362, 'Khulna', 18, '', '', 1),
(363, 'Kishorganj', 18, '', '', 1),
(364, 'Koks Bazar', 18, '', '', 1),
(365, 'Komilla', 18, '', '', 1),
(366, 'Kurigram', 18, '', '', 1),
(367, 'Kushtiya', 18, '', '', 1),
(368, 'Lakshmipur', 18, '', '', 1),
(369, 'Lalmanir Hat', 18, '', '', 1),
(370, 'Madaripur', 18, '', '', 1),
(371, 'Magura', 18, '', '', 1),
(372, 'Maimansingh', 18, '', '', 1),
(373, 'Manikganj', 18, '', '', 1),
(374, 'Maulvi Bazar', 18, '', '', 1),
(375, 'Meherpur', 18, '', '', 1),
(376, 'Munshiganj', 18, '', '', 1),
(377, 'Naral', 18, '', '', 1),
(378, 'Narayanganj', 18, '', '', 1),
(379, 'Narsingdi', 18, '', '', 1),
(380, 'Nator', 18, '', '', 1),
(381, 'Naugaon', 18, '', '', 1),
(382, 'Nawabganj', 18, '', '', 1),
(383, 'Netrakona', 18, '', '', 1),
(384, 'Nilphamari', 18, '', '', 1),
(385, 'Noakhali', 18, '', '', 1),
(386, 'Pabna', 18, '', '', 1),
(387, 'Panchagarh', 18, '', '', 1),
(388, 'Patuakhali', 18, '', '', 1),
(389, 'Pirojpur', 18, '', '', 1),
(390, 'Rajbari', 18, '', '', 1),
(391, 'Rajshahi', 18, '', '', 1),
(392, 'Rangamati', 18, '', '', 1),
(393, 'Rangpur', 18, '', '', 1),
(394, 'Satkhira', 18, '', '', 1),
(395, 'Shariatpur', 18, '', '', 1),
(396, 'Sherpur', 18, '', '', 1),
(397, 'Silhat', 18, '', '', 1),
(398, 'Sirajganj', 18, '', '', 1),
(399, 'Sunamganj', 18, '', '', 1),
(400, 'Tangayal', 18, '', '', 1),
(401, 'Thakurgaon', 18, '', '', 1),
(402, 'Christ Church', 19, '', '', 1),
(403, 'Saint Andrew', 19, '', '', 1),
(404, 'Saint George', 19, '', '', 1),
(405, 'Saint James', 19, '', '', 1),
(406, 'Saint John', 19, '', '', 1),
(407, 'Saint Joseph', 19, '', '', 1),
(408, 'Saint Lucy', 19, '', '', 1),
(409, 'Saint Michael', 19, '', '', 1),
(410, 'Saint Peter', 19, '', '', 1),
(411, 'Saint Philip', 19, '', '', 1),
(412, 'Saint Thomas', 19, '', '', 1),
(413, 'Brest', 20, '', '', 1),
(414, 'Homjel\'', 20, '', '', 1),
(415, 'Hrodna', 20, '', '', 1),
(416, 'Mahiljow', 20, '', '', 1),
(417, 'Mahilyowskaya Voblasts', 20, '', '', 1),
(418, 'Minsk', 20, '', '', 1),
(419, 'Minskaja Voblasts\'', 20, '', '', 1),
(420, 'Petrik', 20, '', '', 1),
(421, 'Vicebsk', 20, '', '', 1),
(422, 'Antwerpen', 21, '', '', 1),
(423, 'Berchem', 21, '', '', 1),
(424, 'Brabant', 21, '', '', 1),
(425, 'Brabant Wallon', 21, '', '', 1),
(426, 'Brussel', 21, '', '', 1),
(427, 'East Flanders', 21, '', '', 1),
(428, 'Hainaut', 21, '', '', 1),
(429, 'Liege', 21, '', '', 1),
(430, 'Limburg', 21, '', '', 1),
(431, 'Luxembourg', 21, '', '', 1),
(432, 'Namur', 21, '', '', 1),
(433, 'Ontario', 21, '', '', 1),
(434, 'Oost-Vlaanderen', 21, '', '', 1),
(435, 'Provincie Brabant', 21, '', '', 1),
(436, 'Vlaams-Brabant', 21, '', '', 1),
(437, 'Wallonne', 21, '', '', 1),
(438, 'West-Vlaanderen', 21, '', '', 1),
(439, 'Belize', 22, '', '', 1),
(440, 'Cayo', 22, '', '', 1),
(441, 'Corozal', 22, '', '', 1),
(442, 'Orange Walk', 22, '', '', 1),
(443, 'Stann Creek', 22, '', '', 1),
(444, 'Toledo', 22, '', '', 1),
(445, 'Alibori', 23, '', '', 1),
(446, 'Atacora', 23, '', '', 1),
(447, 'Atlantique', 23, '', '', 1),
(448, 'Borgou', 23, '', '', 1),
(449, 'Collines', 23, '', '', 1),
(450, 'Couffo', 23, '', '', 1),
(451, 'Donga', 23, '', '', 1),
(452, 'Littoral', 23, '', '', 1),
(453, 'Mono', 23, '', '', 1),
(454, 'Oueme', 23, '', '', 1),
(455, 'Plateau', 23, '', '', 1),
(456, 'Zou', 23, '', '', 1),
(457, 'Hamilton', 24, '', '', 1),
(458, 'Saint George', 24, '', '', 1),
(459, 'Bumthang', 25, '', '', 1),
(460, 'Chhukha', 25, '', '', 1),
(461, 'Chirang', 25, '', '', 1),
(462, 'Daga', 25, '', '', 1),
(463, 'Geylegphug', 25, '', '', 1),
(464, 'Ha', 25, '', '', 1),
(465, 'Lhuntshi', 25, '', '', 1),
(466, 'Mongar', 25, '', '', 1),
(467, 'Pemagatsel', 25, '', '', 1),
(468, 'Punakha', 25, '', '', 1),
(469, 'Rinpung', 25, '', '', 1),
(470, 'Samchi', 25, '', '', 1),
(471, 'Samdrup Jongkhar', 25, '', '', 1),
(472, 'Shemgang', 25, '', '', 1),
(473, 'Tashigang', 25, '', '', 1),
(474, 'Timphu', 25, '', '', 1),
(475, 'Tongsa', 25, '', '', 1),
(476, 'Wangdiphodrang', 25, '', '', 1),
(477, 'Beni', 26, '', '', 1),
(478, 'Chuquisaca', 26, '', '', 1),
(479, 'Cochabamba', 26, '', '', 1),
(480, 'La Paz', 26, '', '', 1),
(481, 'Oruro', 26, '', '', 1),
(482, 'Pando', 26, '', '', 1),
(483, 'Potosi', 26, '', '', 1),
(484, 'Santa Cruz', 26, '', '', 1),
(485, 'Tarija', 26, '', '', 1),
(486, 'Federacija Bosna i Hercegovina', 27, '', '', 1),
(487, 'Republika Srpska', 27, '', '', 1),
(488, 'Central Bobonong', 28, '', '', 1),
(489, 'Central Boteti', 28, '', '', 1),
(490, 'Central Mahalapye', 28, '', '', 1),
(491, 'Central Serowe-Palapye', 28, '', '', 1),
(492, 'Central Tutume', 28, '', '', 1),
(493, 'Chobe', 28, '', '', 1),
(494, 'Francistown', 28, '', '', 1),
(495, 'Gaborone', 28, '', '', 1),
(496, 'Ghanzi', 28, '', '', 1),
(497, 'Jwaneng', 28, '', '', 1),
(498, 'Kgalagadi North', 28, '', '', 1),
(499, 'Kgalagadi South', 28, '', '', 1),
(500, 'Kgatleng', 28, '', '', 1),
(501, 'Kweneng', 28, '', '', 1),
(502, 'Lobatse', 28, '', '', 1),
(503, 'Ngamiland', 28, '', '', 1),
(504, 'Ngwaketse', 28, '', '', 1),
(505, 'North East', 28, '', '', 1),
(506, 'Okavango', 28, '', '', 1),
(507, 'Orapa', 28, '', '', 1),
(508, 'Selibe Phikwe', 28, '', '', 1),
(509, 'South East', 28, '', '', 1),
(510, 'Sowa', 28, '', '', 1),
(511, 'Bouvet Island', 29, '', '', 1),
(512, 'Acre', 30, '', '', 1),
(513, 'Alagoas', 30, '', '', 1),
(514, 'Amapa', 30, '', '', 1),
(515, 'Amazonas', 30, '', '', 1),
(516, 'Bahia', 30, '', '', 1),
(517, 'Ceara', 30, '', '', 1),
(518, 'Distrito Federal', 30, '', '', 1),
(519, 'Espirito Santo', 30, '', '', 1),
(520, 'Estado de Sao Paulo', 30, '', '', 1),
(521, 'Goias', 30, '', '', 1),
(522, 'Maranhao', 30, '', '', 1),
(523, 'Mato Grosso', 30, '', '', 1),
(524, 'Mato Grosso do Sul', 30, '', '', 1),
(525, 'Minas Gerais', 30, '', '', 1),
(526, 'Para', 30, '', '', 1),
(527, 'Paraiba', 30, '', '', 1),
(528, 'Parana', 30, '', '', 1),
(529, 'Pernambuco', 30, '', '', 1),
(530, 'Piaui', 30, '', '', 1),
(531, 'Rio Grande do Norte', 30, '', '', 1),
(532, 'Rio Grande do Sul', 30, '', '', 1),
(533, 'Rio de Janeiro', 30, '', '', 1),
(534, 'Rondonia', 30, '', '', 1),
(535, 'Roraima', 30, '', '', 1),
(536, 'Santa Catarina', 30, '', '', 1),
(537, 'Sao Paulo', 30, '', '', 1),
(538, 'Sergipe', 30, '', '', 1),
(539, 'Tocantins', 30, '', '', 1),
(540, 'British Indian Ocean Territory', 31, '', '', 1),
(541, 'Belait', 32, '', '', 1),
(542, 'Brunei-Muara', 32, '', '', 1),
(543, 'Temburong', 32, '', '', 1),
(544, 'Tutong', 32, '', '', 1),
(545, 'Blagoevgrad', 33, '', '', 1),
(546, 'Burgas', 33, '', '', 1),
(547, 'Dobrich', 33, '', '', 1),
(548, 'Gabrovo', 33, '', '', 1),
(549, 'Haskovo', 33, '', '', 1),
(550, 'Jambol', 33, '', '', 1),
(551, 'Kardzhali', 33, '', '', 1),
(552, 'Kjustendil', 33, '', '', 1),
(553, 'Lovech', 33, '', '', 1),
(554, 'Montana', 33, '', '', 1),
(555, 'Oblast Sofiya-Grad', 33, '', '', 1),
(556, 'Pazardzhik', 33, '', '', 1),
(557, 'Pernik', 33, '', '', 1),
(558, 'Pleven', 33, '', '', 1),
(559, 'Plovdiv', 33, '', '', 1),
(560, 'Razgrad', 33, '', '', 1),
(561, 'Ruse', 33, '', '', 1),
(562, 'Shumen', 33, '', '', 1),
(563, 'Silistra', 33, '', '', 1),
(564, 'Sliven', 33, '', '', 1),
(565, 'Smoljan', 33, '', '', 1),
(566, 'Sofija grad', 33, '', '', 1),
(567, 'Sofijska oblast', 33, '', '', 1),
(568, 'Stara Zagora', 33, '', '', 1),
(569, 'Targovishte', 33, '', '', 1),
(570, 'Varna', 33, '', '', 1),
(571, 'Veliko Tarnovo', 33, '', '', 1),
(572, 'Vidin', 33, '', '', 1),
(573, 'Vraca', 33, '', '', 1),
(574, 'Yablaniza', 33, '', '', 1),
(575, 'Bale', 34, '', '', 1),
(576, 'Bam', 34, '', '', 1),
(577, 'Bazega', 34, '', '', 1),
(578, 'Bougouriba', 34, '', '', 1),
(579, 'Boulgou', 34, '', '', 1),
(580, 'Boulkiemde', 34, '', '', 1),
(581, 'Comoe', 34, '', '', 1),
(582, 'Ganzourgou', 34, '', '', 1),
(583, 'Gnagna', 34, '', '', 1),
(584, 'Gourma', 34, '', '', 1),
(585, 'Houet', 34, '', '', 1),
(586, 'Ioba', 34, '', '', 1),
(587, 'Kadiogo', 34, '', '', 1),
(588, 'Kenedougou', 34, '', '', 1),
(589, 'Komandjari', 34, '', '', 1),
(590, 'Kompienga', 34, '', '', 1),
(591, 'Kossi', 34, '', '', 1),
(592, 'Kouritenga', 34, '', '', 1),
(593, 'Kourweogo', 34, '', '', 1),
(594, 'Leraba', 34, '', '', 1),
(595, 'Mouhoun', 34, '', '', 1),
(596, 'Nahouri', 34, '', '', 1),
(597, 'Namentenga', 34, '', '', 1),
(598, 'Noumbiel', 34, '', '', 1),
(599, 'Oubritenga', 34, '', '', 1),
(600, 'Oudalan', 34, '', '', 1),
(601, 'Passore', 34, '', '', 1),
(602, 'Poni', 34, '', '', 1),
(603, 'Sanguie', 34, '', '', 1),
(604, 'Sanmatenga', 34, '', '', 1),
(605, 'Seno', 34, '', '', 1),
(606, 'Sissili', 34, '', '', 1),
(607, 'Soum', 34, '', '', 1),
(608, 'Sourou', 34, '', '', 1),
(609, 'Tapoa', 34, '', '', 1),
(610, 'Tuy', 34, '', '', 1),
(611, 'Yatenga', 34, '', '', 1),
(612, 'Zondoma', 34, '', '', 1),
(613, 'Zoundweogo', 34, '', '', 1),
(614, 'Bubanza', 35, '', '', 1),
(615, 'Bujumbura', 35, '', '', 1),
(616, 'Bururi', 35, '', '', 1),
(617, 'Cankuzo', 35, '', '', 1),
(618, 'Cibitoke', 35, '', '', 1),
(619, 'Gitega', 35, '', '', 1),
(620, 'Karuzi', 35, '', '', 1),
(621, 'Kayanza', 35, '', '', 1),
(622, 'Kirundo', 35, '', '', 1),
(623, 'Makamba', 35, '', '', 1),
(624, 'Muramvya', 35, '', '', 1),
(625, 'Muyinga', 35, '', '', 1),
(626, 'Ngozi', 35, '', '', 1),
(627, 'Rutana', 35, '', '', 1),
(628, 'Ruyigi', 35, '', '', 1),
(629, 'Banteay Mean Chey', 36, '', '', 1),
(630, 'Bat Dambang', 36, '', '', 1),
(631, 'Kampong Cham', 36, '', '', 1),
(632, 'Kampong Chhnang', 36, '', '', 1),
(633, 'Kampong Spoeu', 36, '', '', 1),
(634, 'Kampong Thum', 36, '', '', 1),
(635, 'Kampot', 36, '', '', 1),
(636, 'Kandal', 36, '', '', 1),
(637, 'Kaoh Kong', 36, '', '', 1),
(638, 'Kracheh', 36, '', '', 1),
(639, 'Krong Kaeb', 36, '', '', 1),
(640, 'Krong Pailin', 36, '', '', 1),
(641, 'Krong Preah Sihanouk', 36, '', '', 1),
(642, 'Mondol Kiri', 36, '', '', 1),
(643, 'Otdar Mean Chey', 36, '', '', 1),
(644, 'Phnum Penh', 36, '', '', 1),
(645, 'Pousat', 36, '', '', 1),
(646, 'Preah Vihear', 36, '', '', 1),
(647, 'Prey Veaeng', 36, '', '', 1),
(648, 'Rotanak Kiri', 36, '', '', 1),
(649, 'Siem Reab', 36, '', '', 1),
(650, 'Stueng Traeng', 36, '', '', 1),
(651, 'Svay Rieng', 36, '', '', 1),
(652, 'Takaev', 36, '', '', 1),
(653, 'Adamaoua', 37, '', '', 1),
(654, 'Centre', 37, '', '', 1),
(655, 'Est', 37, '', '', 1),
(656, 'Littoral', 37, '', '', 1),
(657, 'Nord', 37, '', '', 1),
(658, 'Nord Extreme', 37, '', '', 1),
(659, 'Nordouest', 37, '', '', 1),
(660, 'Ouest', 37, '', '', 1),
(661, 'Sud', 37, '', '', 1),
(662, 'Sudouest', 37, '', '', 1),
(663, 'Alberta', 38, '', '', 1),
(664, 'British Columbia', 38, '', '', 1),
(665, 'Manitoba', 38, '', '', 1),
(666, 'New Brunswick', 38, '', '', 1),
(667, 'Newfoundland and Labrador', 38, '', '', 1),
(668, 'Northwest Territories', 38, '', '', 1),
(669, 'Nova Scotia', 38, '', '', 1),
(670, 'Nunavut', 38, '', '', 1),
(671, 'Ontario', 38, '', '', 1),
(672, 'Prince Edward Island', 38, '', '', 1),
(673, 'Quebec', 38, '', '', 1),
(674, 'Saskatchewan', 38, '', '', 1),
(675, 'Yukon', 38, '', '', 1),
(676, 'Boavista', 39, '', '', 1),
(677, 'Brava', 39, '', '', 1),
(678, 'Fogo', 39, '', '', 1),
(679, 'Maio', 39, '', '', 1),
(680, 'Sal', 39, '', '', 1),
(681, 'Santo Antao', 39, '', '', 1),
(682, 'Sao Nicolau', 39, '', '', 1),
(683, 'Sao Tiago', 39, '', '', 1),
(684, 'Sao Vicente', 39, '', '', 1),
(685, 'Grand Cayman', 40, '', '', 1),
(686, 'Bamingui-Bangoran', 41, '', '', 1),
(687, 'Bangui', 41, '', '', 1),
(688, 'Basse-Kotto', 41, '', '', 1),
(689, 'Haut-Mbomou', 41, '', '', 1),
(690, 'Haute-Kotto', 41, '', '', 1),
(691, 'Kemo', 41, '', '', 1),
(692, 'Lobaye', 41, '', '', 1),
(693, 'Mambere-Kadei', 41, '', '', 1),
(694, 'Mbomou', 41, '', '', 1),
(695, 'Nana-Gribizi', 41, '', '', 1),
(696, 'Nana-Mambere', 41, '', '', 1),
(697, 'Ombella Mpoko', 41, '', '', 1),
(698, 'Ouaka', 41, '', '', 1),
(699, 'Ouham', 41, '', '', 1),
(700, 'Ouham-Pende', 41, '', '', 1),
(701, 'Sangha-Mbaere', 41, '', '', 1),
(702, 'Vakaga', 41, '', '', 1),
(703, 'Batha', 42, '', '', 1),
(704, 'Biltine', 42, '', '', 1),
(705, 'Bourkou-Ennedi-Tibesti', 42, '', '', 1),
(706, 'Chari-Baguirmi', 42, '', '', 1),
(707, 'Guera', 42, '', '', 1),
(708, 'Kanem', 42, '', '', 1),
(709, 'Lac', 42, '', '', 1),
(710, 'Logone Occidental', 42, '', '', 1),
(711, 'Logone Oriental', 42, '', '', 1),
(712, 'Mayo-Kebbi', 42, '', '', 1),
(713, 'Moyen-Chari', 42, '', '', 1),
(714, 'Ouaddai', 42, '', '', 1),
(715, 'Salamat', 42, '', '', 1),
(716, 'Tandjile', 42, '', '', 1),
(717, 'Aisen', 43, '', '', 1),
(718, 'Antofagasta', 43, '', '', 1),
(719, 'Araucania', 43, '', '', 1),
(720, 'Atacama', 43, '', '', 1),
(721, 'Bio Bio', 43, '', '', 1),
(722, 'Coquimbo', 43, '', '', 1),
(723, 'Libertador General Bernardo O\'', 43, '', '', 1),
(724, 'Los Lagos', 43, '', '', 1),
(725, 'Magellanes', 43, '', '', 1),
(726, 'Maule', 43, '', '', 1),
(727, 'Metropolitana', 43, '', '', 1),
(728, 'Metropolitana de Santiago', 43, '', '', 1),
(729, 'Tarapaca', 43, '', '', 1),
(730, 'Valparaiso', 43, '', '', 1),
(731, 'Anhui', 44, '', '', 1),
(732, 'Anhui Province', 44, '', '', 1),
(733, 'Anhui Sheng', 44, '', '', 1),
(734, 'Aomen', 44, '', '', 1),
(735, 'Beijing', 44, '', '', 1),
(736, 'Beijing Shi', 44, '', '', 1),
(737, 'Chongqing', 44, '', '', 1),
(738, 'Fujian', 44, '', '', 1),
(739, 'Fujian Sheng', 44, '', '', 1),
(740, 'Gansu', 44, '', '', 1),
(741, 'Guangdong', 44, '', '', 1),
(742, 'Guangdong Sheng', 44, '', '', 1),
(743, 'Guangxi', 44, '', '', 1),
(744, 'Guizhou', 44, '', '', 1),
(745, 'Hainan', 44, '', '', 1),
(746, 'Hebei', 44, '', '', 1),
(747, 'Heilongjiang', 44, '', '', 1),
(748, 'Henan', 44, '', '', 1),
(749, 'Hubei', 44, '', '', 1),
(750, 'Hunan', 44, '', '', 1),
(751, 'Jiangsu', 44, '', '', 1),
(752, 'Jiangsu Sheng', 44, '', '', 1),
(753, 'Jiangxi', 44, '', '', 1),
(754, 'Jilin', 44, '', '', 1),
(755, 'Liaoning', 44, '', '', 1),
(756, 'Liaoning Sheng', 44, '', '', 1),
(757, 'Nei Monggol', 44, '', '', 1),
(758, 'Ningxia Hui', 44, '', '', 1),
(759, 'Qinghai', 44, '', '', 1),
(760, 'Shaanxi', 44, '', '', 1),
(761, 'Shandong', 44, '', '', 1),
(762, 'Shandong Sheng', 44, '', '', 1),
(763, 'Shanghai', 44, '', '', 1),
(764, 'Shanxi', 44, '', '', 1),
(765, 'Sichuan', 44, '', '', 1),
(766, 'Tianjin', 44, '', '', 1),
(767, 'Xianggang', 44, '', '', 1),
(768, 'Xinjiang', 44, '', '', 1),
(769, 'Xizang', 44, '', '', 1),
(770, 'Yunnan', 44, '', '', 1),
(771, 'Zhejiang', 44, '', '', 1),
(772, 'Zhejiang Sheng', 44, '', '', 1),
(773, 'Christmas Island', 45, '', '', 1),
(774, 'Cocos (Keeling) Islands', 46, '', '', 1),
(775, 'Amazonas', 47, '', '', 1),
(776, 'Antioquia', 47, '', '', 1),
(777, 'Arauca', 47, '', '', 1),
(778, 'Atlantico', 47, '', '', 1),
(779, 'Bogota', 47, '', '', 1),
(780, 'Bolivar', 47, '', '', 1),
(781, 'Boyaca', 47, '', '', 1),
(782, 'Caldas', 47, '', '', 1),
(783, 'Caqueta', 47, '', '', 1),
(784, 'Casanare', 47, '', '', 1),
(785, 'Cauca', 47, '', '', 1),
(786, 'Cesar', 47, '', '', 1),
(787, 'Choco', 47, '', '', 1),
(788, 'Cordoba', 47, '', '', 1),
(789, 'Cundinamarca', 47, '', '', 1),
(790, 'Guainia', 47, '', '', 1),
(791, 'Guaviare', 47, '', '', 1),
(792, 'Huila', 47, '', '', 1),
(793, 'La Guajira', 47, '', '', 1),
(794, 'Magdalena', 47, '', '', 1),
(795, 'Meta', 47, '', '', 1),
(796, 'Narino', 47, '', '', 1),
(797, 'Norte de Santander', 47, '', '', 1),
(798, 'Putumayo', 47, '', '', 1),
(799, 'Quindio', 47, '', '', 1),
(800, 'Risaralda', 47, '', '', 1),
(801, 'San Andres y Providencia', 47, '', '', 1),
(802, 'Santander', 47, '', '', 1),
(803, 'Sucre', 47, '', '', 1),
(804, 'Tolima', 47, '', '', 1),
(805, 'Valle del Cauca', 47, '', '', 1),
(806, 'Vaupes', 47, '', '', 1),
(807, 'Vichada', 47, '', '', 1),
(808, 'Mwali', 48, '', '', 1),
(809, 'Njazidja', 48, '', '', 1),
(810, 'Nzwani', 48, '', '', 1),
(811, 'Bouenza', 49, '', '', 1),
(812, 'Brazzaville', 49, '', '', 1),
(813, 'Cuvette', 49, '', '', 1),
(814, 'Kouilou', 49, '', '', 1),
(815, 'Lekoumou', 49, '', '', 1),
(816, 'Likouala', 49, '', '', 1),
(817, 'Niari', 49, '', '', 1),
(818, 'Plateaux', 49, '', '', 1),
(819, 'Pool', 49, '', '', 1),
(820, 'Sangha', 49, '', '', 1),
(821, 'Bandundu', 50, '', '', 1),
(822, 'Bas-Congo', 50, '', '', 1),
(823, 'Equateur', 50, '', '', 1),
(824, 'Haut-Congo', 50, '', '', 1),
(825, 'Kasai-Occidental', 50, '', '', 1),
(826, 'Kasai-Oriental', 50, '', '', 1),
(827, 'Katanga', 50, '', '', 1),
(828, 'Kinshasa', 50, '', '', 1),
(829, 'Maniema', 50, '', '', 1),
(830, 'Nord-Kivu', 50, '', '', 1),
(831, 'Sud-Kivu', 50, '', '', 1),
(832, 'Aitutaki', 51, '', '', 1),
(833, 'Atiu', 51, '', '', 1),
(834, 'Mangaia', 51, '', '', 1),
(835, 'Manihiki', 51, '', '', 1),
(836, 'Mauke', 51, '', '', 1),
(837, 'Mitiaro', 51, '', '', 1),
(838, 'Nassau', 51, '', '', 1),
(839, 'Pukapuka', 51, '', '', 1),
(840, 'Rakahanga', 51, '', '', 1),
(841, 'Rarotonga', 51, '', '', 1),
(842, 'Tongareva', 51, '', '', 1),
(843, 'Alajuela', 52, '', '', 1),
(844, 'Cartago', 52, '', '', 1),
(845, 'Guanacaste', 52, '', '', 1),
(846, 'Heredia', 52, '', '', 1),
(847, 'Limon', 52, '', '', 1),
(848, 'Puntarenas', 52, '', '', 1),
(849, 'San Jose', 52, '', '', 1),
(850, 'Abidjan', 53, '', '', 1),
(851, 'Agneby', 53, '', '', 1),
(852, 'Bafing', 53, '', '', 1),
(853, 'Denguele', 53, '', '', 1),
(854, 'Dix-huit Montagnes', 53, '', '', 1),
(855, 'Fromager', 53, '', '', 1),
(856, 'Haut-Sassandra', 53, '', '', 1),
(857, 'Lacs', 53, '', '', 1),
(858, 'Lagunes', 53, '', '', 1),
(859, 'Marahoue', 53, '', '', 1),
(860, 'Moyen-Cavally', 53, '', '', 1),
(861, 'Moyen-Comoe', 53, '', '', 1),
(862, 'N\'zi-Comoe', 53, '', '', 1),
(863, 'Sassandra', 53, '', '', 1),
(864, 'Savanes', 53, '', '', 1),
(865, 'Sud-Bandama', 53, '', '', 1),
(866, 'Sud-Comoe', 53, '', '', 1),
(867, 'Vallee du Bandama', 53, '', '', 1),
(868, 'Worodougou', 53, '', '', 1),
(869, 'Zanzan', 53, '', '', 1),
(870, 'Bjelovar-Bilogora', 54, '', '', 1),
(871, 'Dubrovnik-Neretva', 54, '', '', 1),
(872, 'Grad Zagreb', 54, '', '', 1),
(873, 'Istra', 54, '', '', 1),
(874, 'Karlovac', 54, '', '', 1),
(875, 'Koprivnica-Krizhevci', 54, '', '', 1),
(876, 'Krapina-Zagorje', 54, '', '', 1),
(877, 'Lika-Senj', 54, '', '', 1),
(878, 'Medhimurje', 54, '', '', 1),
(879, 'Medimurska Zupanija', 54, '', '', 1),
(880, 'Osijek-Baranja', 54, '', '', 1),
(881, 'Osjecko-Baranjska Zupanija', 54, '', '', 1),
(882, 'Pozhega-Slavonija', 54, '', '', 1),
(883, 'Primorje-Gorski Kotar', 54, '', '', 1),
(884, 'Shibenik-Knin', 54, '', '', 1),
(885, 'Sisak-Moslavina', 54, '', '', 1),
(886, 'Slavonski Brod-Posavina', 54, '', '', 1),
(887, 'Split-Dalmacija', 54, '', '', 1),
(888, 'Varazhdin', 54, '', '', 1),
(889, 'Virovitica-Podravina', 54, '', '', 1),
(890, 'Vukovar-Srijem', 54, '', '', 1),
(891, 'Zadar', 54, '', '', 1),
(892, 'Zagreb', 54, '', '', 1),
(893, 'Camaguey', 55, '', '', 1),
(894, 'Ciego de Avila', 55, '', '', 1),
(895, 'Cienfuegos', 55, '', '', 1),
(896, 'Ciudad de la Habana', 55, '', '', 1),
(897, 'Granma', 55, '', '', 1),
(898, 'Guantanamo', 55, '', '', 1),
(899, 'Habana', 55, '', '', 1),
(900, 'Holguin', 55, '', '', 1),
(901, 'Isla de la Juventud', 55, '', '', 1),
(902, 'La Habana', 55, '', '', 1),
(903, 'Las Tunas', 55, '', '', 1),
(904, 'Matanzas', 55, '', '', 1),
(905, 'Pinar del Rio', 55, '', '', 1),
(906, 'Sancti Spiritus', 55, '', '', 1),
(907, 'Santiago de Cuba', 55, '', '', 1),
(908, 'Villa Clara', 55, '', '', 1),
(909, 'Government controlled area', 56, '', '', 1),
(910, 'Limassol', 56, '', '', 1),
(911, 'Nicosia District', 56, '', '', 1),
(912, 'Paphos', 56, '', '', 1),
(913, 'Turkish controlled area', 56, '', '', 1),
(914, 'Central Bohemian', 57, '', '', 1),
(915, 'Frycovice', 57, '', '', 1),
(916, 'Jihocesky Kraj', 57, '', '', 1),
(917, 'Jihochesky', 57, '', '', 1),
(918, 'Jihomoravsky', 57, '', '', 1),
(919, 'Karlovarsky', 57, '', '', 1),
(920, 'Klecany', 57, '', '', 1),
(921, 'Kralovehradecky', 57, '', '', 1),
(922, 'Liberecky', 57, '', '', 1),
(923, 'Lipov', 57, '', '', 1),
(924, 'Moravskoslezsky', 57, '', '', 1),
(925, 'Olomoucky', 57, '', '', 1),
(926, 'Olomoucky Kraj', 57, '', '', 1),
(927, 'Pardubicky', 57, '', '', 1),
(928, 'Plzensky', 57, '', '', 1),
(929, 'Praha', 57, '', '', 1),
(930, 'Rajhrad', 57, '', '', 1),
(931, 'Smirice', 57, '', '', 1),
(932, 'South Moravian', 57, '', '', 1),
(933, 'Straz nad Nisou', 57, '', '', 1),
(934, 'Stredochesky', 57, '', '', 1),
(935, 'Unicov', 57, '', '', 1),
(936, 'Ustecky', 57, '', '', 1),
(937, 'Valletta', 57, '', '', 1),
(938, 'Velesin', 57, '', '', 1),
(939, 'Vysochina', 57, '', '', 1),
(940, 'Zlinsky', 57, '', '', 1),
(941, 'Arhus', 58, '', '', 1),
(942, 'Bornholm', 58, '', '', 1),
(943, 'Frederiksborg', 58, '', '', 1),
(944, 'Fyn', 58, '', '', 1),
(945, 'Hovedstaden', 58, '', '', 1),
(946, 'Kobenhavn', 58, '', '', 1),
(947, 'Kobenhavns Amt', 58, '', '', 1),
(948, 'Kobenhavns Kommune', 58, '', '', 1),
(949, 'Nordjylland', 58, '', '', 1),
(950, 'Ribe', 58, '', '', 1),
(951, 'Ringkobing', 58, '', '', 1),
(952, 'Roervig', 58, '', '', 1),
(953, 'Roskilde', 58, '', '', 1),
(954, 'Roslev', 58, '', '', 1),
(955, 'Sjaelland', 58, '', '', 1),
(956, 'Soeborg', 58, '', '', 1),
(957, 'Sonderjylland', 58, '', '', 1),
(958, 'Storstrom', 58, '', '', 1),
(959, 'Syddanmark', 58, '', '', 1),
(960, 'Toelloese', 58, '', '', 1),
(961, 'Vejle', 58, '', '', 1),
(962, 'Vestsjalland', 58, '', '', 1),
(963, 'Viborg', 58, '', '', 1),
(964, '\'Ali Sabih', 59, '', '', 1),
(965, 'Dikhil', 59, '', '', 1),
(966, 'Jibuti', 59, '', '', 1),
(967, 'Tajurah', 59, '', '', 1),
(968, 'Ubuk', 59, '', '', 1),
(969, 'Saint Andrew', 60, '', '', 1),
(970, 'Saint David', 60, '', '', 1),
(971, 'Saint George', 60, '', '', 1),
(972, 'Saint John', 60, '', '', 1),
(973, 'Saint Joseph', 60, '', '', 1),
(974, 'Saint Luke', 60, '', '', 1),
(975, 'Saint Mark', 60, '', '', 1),
(976, 'Saint Patrick', 60, '', '', 1),
(977, 'Saint Paul', 60, '', '', 1),
(978, 'Saint Peter', 60, '', '', 1),
(979, 'Azua', 61, '', '', 1),
(980, 'Bahoruco', 61, '', '', 1),
(981, 'Barahona', 61, '', '', 1),
(982, 'Dajabon', 61, '', '', 1),
(983, 'Distrito Nacional', 61, '', '', 1),
(984, 'Duarte', 61, '', '', 1),
(985, 'El Seybo', 61, '', '', 1),
(986, 'Elias Pina', 61, '', '', 1),
(987, 'Espaillat', 61, '', '', 1),
(988, 'Hato Mayor', 61, '', '', 1),
(989, 'Independencia', 61, '', '', 1),
(990, 'La Altagracia', 61, '', '', 1),
(991, 'La Romana', 61, '', '', 1),
(992, 'La Vega', 61, '', '', 1),
(993, 'Maria Trinidad Sanchez', 61, '', '', 1),
(994, 'Monsenor Nouel', 61, '', '', 1),
(995, 'Monte Cristi', 61, '', '', 1),
(996, 'Monte Plata', 61, '', '', 1),
(997, 'Pedernales', 61, '', '', 1),
(998, 'Peravia', 61, '', '', 1),
(999, 'Puerto Plata', 61, '', '', 1),
(1000, 'Salcedo', 61, '', '', 1),
(1001, 'Samana', 61, '', '', 1),
(1002, 'San Cristobal', 61, '', '', 1),
(1003, 'San Juan', 61, '', '', 1),
(1004, 'San Pedro de Macoris', 61, '', '', 1),
(1005, 'Sanchez Ramirez', 61, '', '', 1),
(1006, 'Santiago', 61, '', '', 1),
(1007, 'Santiago Rodriguez', 61, '', '', 1),
(1008, 'Valverde', 61, '', '', 1),
(1009, 'Aileu', 62, '', '', 1),
(1010, 'Ainaro', 62, '', '', 1),
(1011, 'Ambeno', 62, '', '', 1),
(1012, 'Baucau', 62, '', '', 1),
(1013, 'Bobonaro', 62, '', '', 1),
(1014, 'Cova Lima', 62, '', '', 1),
(1015, 'Dili', 62, '', '', 1),
(1016, 'Ermera', 62, '', '', 1),
(1017, 'Lautem', 62, '', '', 1),
(1018, 'Liquica', 62, '', '', 1),
(1019, 'Manatuto', 62, '', '', 1),
(1020, 'Manufahi', 62, '', '', 1),
(1021, 'Viqueque', 62, '', '', 1),
(1022, 'Azuay', 63, '', '', 1),
(1023, 'Bolivar', 63, '', '', 1),
(1024, 'Canar', 63, '', '', 1),
(1025, 'Carchi', 63, '', '', 1),
(1026, 'Chimborazo', 63, '', '', 1),
(1027, 'Cotopaxi', 63, '', '', 1),
(1028, 'El Oro', 63, '', '', 1),
(1029, 'Esmeraldas', 63, '', '', 1),
(1030, 'Galapagos', 63, '', '', 1),
(1031, 'Guayas', 63, '', '', 1),
(1032, 'Imbabura', 63, '', '', 1),
(1033, 'Loja', 63, '', '', 1),
(1034, 'Los Rios', 63, '', '', 1),
(1035, 'Manabi', 63, '', '', 1),
(1036, 'Morona Santiago', 63, '', '', 1),
(1037, 'Napo', 63, '', '', 1),
(1038, 'Orellana', 63, '', '', 1),
(1039, 'Pastaza', 63, '', '', 1),
(1040, 'Pichincha', 63, '', '', 1),
(1041, 'Sucumbios', 63, '', '', 1),
(1042, 'Tungurahua', 63, '', '', 1),
(1043, 'Zamora Chinchipe', 63, '', '', 1),
(1044, 'Aswan', 64, '', '', 1),
(1045, 'Asyut', 64, '', '', 1),
(1046, 'Bani Suwayf', 64, '', '', 1),
(1047, 'Bur Sa\'id', 64, '', '', 1),
(1048, 'Cairo', 64, '', '', 1),
(1049, 'Dumyat', 64, '', '', 1),
(1050, 'Kafr-ash-Shaykh', 64, '', '', 1),
(1051, 'Matruh', 64, '', '', 1),
(1052, 'Muhafazat ad Daqahliyah', 64, '', '', 1),
(1053, 'Muhafazat al Fayyum', 64, '', '', 1),
(1054, 'Muhafazat al Gharbiyah', 64, '', '', 1),
(1055, 'Muhafazat al Iskandariyah', 64, '', '', 1),
(1056, 'Muhafazat al Qahirah', 64, '', '', 1),
(1057, 'Qina', 64, '', '', 1),
(1058, 'Sawhaj', 64, '', '', 1),
(1059, 'Sina al-Janubiyah', 64, '', '', 1),
(1060, 'Sina ash-Shamaliyah', 64, '', '', 1),
(1061, 'ad-Daqahliyah', 64, '', '', 1),
(1062, 'al-Bahr-al-Ahmar', 64, '', '', 1),
(1063, 'al-Buhayrah', 64, '', '', 1),
(1064, 'al-Fayyum', 64, '', '', 1),
(1065, 'al-Gharbiyah', 64, '', '', 1),
(1066, 'al-Iskandariyah', 64, '', '', 1),
(1067, 'al-Ismailiyah', 64, '', '', 1),
(1068, 'al-Jizah', 64, '', '', 1),
(1069, 'al-Minufiyah', 64, '', '', 1),
(1070, 'al-Minya', 64, '', '', 1),
(1071, 'al-Qahira', 64, '', '', 1),
(1072, 'al-Qalyubiyah', 64, '', '', 1),
(1073, 'al-Uqsur', 64, '', '', 1),
(1074, 'al-Wadi al-Jadid', 64, '', '', 1),
(1075, 'as-Suways', 64, '', '', 1),
(1076, 'ash-Sharqiyah', 64, '', '', 1),
(1077, 'Ahuachapan', 65, '', '', 1),
(1078, 'Cabanas', 65, '', '', 1),
(1079, 'Chalatenango', 65, '', '', 1),
(1080, 'Cuscatlan', 65, '', '', 1),
(1081, 'La Libertad', 65, '', '', 1),
(1082, 'La Paz', 65, '', '', 1),
(1083, 'La Union', 65, '', '', 1),
(1084, 'Morazan', 65, '', '', 1),
(1085, 'San Miguel', 65, '', '', 1),
(1086, 'San Salvador', 65, '', '', 1),
(1087, 'San Vicente', 65, '', '', 1),
(1088, 'Santa Ana', 65, '', '', 1),
(1089, 'Sonsonate', 65, '', '', 1),
(1090, 'Usulutan', 65, '', '', 1),
(1091, 'Annobon', 66, '', '', 1),
(1092, 'Bioko Norte', 66, '', '', 1),
(1093, 'Bioko Sur', 66, '', '', 1),
(1094, 'Centro Sur', 66, '', '', 1),
(1095, 'Kie-Ntem', 66, '', '', 1),
(1096, 'Litoral', 66, '', '', 1),
(1097, 'Wele-Nzas', 66, '', '', 1),
(1098, 'Anseba', 67, '', '', 1),
(1099, 'Debub', 67, '', '', 1),
(1100, 'Debub-Keih-Bahri', 67, '', '', 1),
(1101, 'Gash-Barka', 67, '', '', 1),
(1102, 'Maekel', 67, '', '', 1),
(1103, 'Semien-Keih-Bahri', 67, '', '', 1),
(1104, 'Harju', 68, '', '', 1),
(1105, 'Hiiu', 68, '', '', 1),
(1106, 'Ida-Viru', 68, '', '', 1),
(1107, 'Jarva', 68, '', '', 1),
(1108, 'Jogeva', 68, '', '', 1),
(1109, 'Laane', 68, '', '', 1),
(1110, 'Laane-Viru', 68, '', '', 1),
(1111, 'Parnu', 68, '', '', 1),
(1112, 'Polva', 68, '', '', 1),
(1113, 'Rapla', 68, '', '', 1),
(1114, 'Saare', 68, '', '', 1),
(1115, 'Tartu', 68, '', '', 1),
(1116, 'Valga', 68, '', '', 1),
(1117, 'Viljandi', 68, '', '', 1),
(1118, 'Voru', 68, '', '', 1),
(1119, 'Addis Abeba', 69, '', '', 1),
(1120, 'Afar', 69, '', '', 1),
(1121, 'Amhara', 69, '', '', 1),
(1122, 'Benishangul', 69, '', '', 1),
(1123, 'Diredawa', 69, '', '', 1),
(1124, 'Gambella', 69, '', '', 1),
(1125, 'Harar', 69, '', '', 1),
(1126, 'Jigjiga', 69, '', '', 1),
(1127, 'Mekele', 69, '', '', 1),
(1128, 'Oromia', 69, '', '', 1),
(1129, 'Somali', 69, '', '', 1),
(1130, 'Southern', 69, '', '', 1),
(1131, 'Tigray', 69, '', '', 1),
(1132, 'Christmas Island', 70, '', '', 1),
(1133, 'Cocos Islands', 70, '', '', 1),
(1134, 'Coral Sea Islands', 70, '', '', 1),
(1135, 'Falkland Islands', 71, '', '', 1),
(1136, 'South Georgia', 71, '', '', 1),
(1137, 'Klaksvik', 72, '', '', 1),
(1138, 'Nor ara Eysturoy', 72, '', '', 1),
(1139, 'Nor oy', 72, '', '', 1),
(1140, 'Sandoy', 72, '', '', 1),
(1141, 'Streymoy', 72, '', '', 1),
(1142, 'Su uroy', 72, '', '', 1),
(1143, 'Sy ra Eysturoy', 72, '', '', 1),
(1144, 'Torshavn', 72, '', '', 1),
(1145, 'Vaga', 72, '', '', 1),
(1146, 'Central', 73, '', '', 1),
(1147, 'Eastern', 73, '', '', 1),
(1148, 'Northern', 73, '', '', 1),
(1149, 'South Pacific', 73, '', '', 1),
(1150, 'Western', 73, '', '', 1),
(1151, 'Ahvenanmaa', 74, '', '', 1),
(1152, 'Etela-Karjala', 74, '', '', 1),
(1153, 'Etela-Pohjanmaa', 74, '', '', 1),
(1154, 'Etela-Savo', 74, '', '', 1),
(1155, 'Etela-Suomen Laani', 74, '', '', 1),
(1156, 'Ita-Suomen Laani', 74, '', '', 1),
(1157, 'Ita-Uusimaa', 74, '', '', 1),
(1158, 'Kainuu', 74, '', '', 1),
(1159, 'Kanta-Hame', 74, '', '', 1),
(1160, 'Keski-Pohjanmaa', 74, '', '', 1),
(1161, 'Keski-Suomi', 74, '', '', 1),
(1162, 'Kymenlaakso', 74, '', '', 1),
(1163, 'Lansi-Suomen Laani', 74, '', '', 1),
(1164, 'Lappi', 74, '', '', 1),
(1165, 'Northern Savonia', 74, '', '', 1),
(1166, 'Ostrobothnia', 74, '', '', 1),
(1167, 'Oulun Laani', 74, '', '', 1),
(1168, 'Paijat-Hame', 74, '', '', 1),
(1169, 'Pirkanmaa', 74, '', '', 1),
(1170, 'Pohjanmaa', 74, '', '', 1),
(1171, 'Pohjois-Karjala', 74, '', '', 1),
(1172, 'Pohjois-Pohjanmaa', 74, '', '', 1),
(1173, 'Pohjois-Savo', 74, '', '', 1),
(1174, 'Saarijarvi', 74, '', '', 1),
(1175, 'Satakunta', 74, '', '', 1),
(1176, 'Southern Savonia', 74, '', '', 1),
(1177, 'Tavastia Proper', 74, '', '', 1),
(1178, 'Uleaborgs Lan', 74, '', '', 1),
(1179, 'Uusimaa', 74, '', '', 1),
(1180, 'Varsinais-Suomi', 74, '', '', 1),
(1181, 'Ain', 75, '', '', 1),
(1182, 'Aisne', 75, '', '', 1),
(1183, 'Albi Le Sequestre', 75, '', '', 1),
(1184, 'Allier', 75, '', '', 1),
(1185, 'Alpes-Cote dAzur', 75, '', '', 1),
(1186, 'Alpes-Maritimes', 75, '', '', 1),
(1187, 'Alpes-de-Haute-Provence', 75, '', '', 1),
(1188, 'Alsace', 75, '', '', 1),
(1189, 'Aquitaine', 75, '', '', 1),
(1190, 'Ardeche', 75, '', '', 1),
(1191, 'Ardennes', 75, '', '', 1),
(1192, 'Ariege', 75, '', '', 1),
(1193, 'Aube', 75, '', '', 1),
(1194, 'Aude', 75, '', '', 1),
(1195, 'Auvergne', 75, '', '', 1),
(1196, 'Aveyron', 75, '', '', 1),
(1197, 'Bas-Rhin', 75, '', '', 1),
(1198, 'Basse-Normandie', 75, '', '', 1),
(1199, 'Bouches-du-Rhone', 75, '', '', 1),
(1200, 'Bourgogne', 75, '', '', 1),
(1201, 'Bretagne', 75, '', '', 1),
(1202, 'Brittany', 75, '', '', 1),
(1203, 'Burgundy', 75, '', '', 1),
(1204, 'Calvados', 75, '', '', 1),
(1205, 'Cantal', 75, '', '', 1),
(1206, 'Cedex', 75, '', '', 1),
(1207, 'Centre', 75, '', '', 1),
(1208, 'Charente', 75, '', '', 1),
(1209, 'Charente-Maritime', 75, '', '', 1),
(1210, 'Cher', 75, '', '', 1),
(1211, 'Correze', 75, '', '', 1),
(1212, 'Corse-du-Sud', 75, '', '', 1),
(1213, 'Cote-d\'Or', 75, '', '', 1),
(1214, 'Cotes-d\'Armor', 75, '', '', 1),
(1215, 'Creuse', 75, '', '', 1),
(1216, 'Crolles', 75, '', '', 1),
(1217, 'Deux-Sevres', 75, '', '', 1),
(1218, 'Dordogne', 75, '', '', 1),
(1219, 'Doubs', 75, '', '', 1),
(1220, 'Drome', 75, '', '', 1),
(1221, 'Essonne', 75, '', '', 1),
(1222, 'Eure', 75, '', '', 1),
(1223, 'Eure-et-Loir', 75, '', '', 1),
(1224, 'Feucherolles', 75, '', '', 1),
(1225, 'Finistere', 75, '', '', 1),
(1226, 'Franche-Comte', 75, '', '', 1),
(1227, 'Gard', 75, '', '', 1),
(1228, 'Gers', 75, '', '', 1),
(1229, 'Gironde', 75, '', '', 1),
(1230, 'Haut-Rhin', 75, '', '', 1),
(1231, 'Haute-Corse', 75, '', '', 1),
(1232, 'Haute-Garonne', 75, '', '', 1),
(1233, 'Haute-Loire', 75, '', '', 1),
(1234, 'Haute-Marne', 75, '', '', 1),
(1235, 'Haute-Saone', 75, '', '', 1),
(1236, 'Haute-Savoie', 75, '', '', 1),
(1237, 'Haute-Vienne', 75, '', '', 1),
(1238, 'Hautes-Alpes', 75, '', '', 1),
(1239, 'Hautes-Pyrenees', 75, '', '', 1),
(1240, 'Hauts-de-Seine', 75, '', '', 1),
(1241, 'Herault', 75, '', '', 1),
(1242, 'Ile-de-France', 75, '', '', 1),
(1243, 'Ille-et-Vilaine', 75, '', '', 1),
(1244, 'Indre', 75, '', '', 1),
(1245, 'Indre-et-Loire', 75, '', '', 1),
(1246, 'Isere', 75, '', '', 1),
(1247, 'Jura', 75, '', '', 1),
(1248, 'Klagenfurt', 75, '', '', 1),
(1249, 'Landes', 75, '', '', 1),
(1250, 'Languedoc-Roussillon', 75, '', '', 1),
(1251, 'Larcay', 75, '', '', 1),
(1252, 'Le Castellet', 75, '', '', 1),
(1253, 'Le Creusot', 75, '', '', 1),
(1254, 'Limousin', 75, '', '', 1),
(1255, 'Loir-et-Cher', 75, '', '', 1),
(1256, 'Loire', 75, '', '', 1),
(1257, 'Loire-Atlantique', 75, '', '', 1),
(1258, 'Loiret', 75, '', '', 1),
(1259, 'Lorraine', 75, '', '', 1),
(1260, 'Lot', 75, '', '', 1),
(1261, 'Lot-et-Garonne', 75, '', '', 1),
(1262, 'Lower Normandy', 75, '', '', 1),
(1263, 'Lozere', 75, '', '', 1),
(1264, 'Maine-et-Loire', 75, '', '', 1),
(1265, 'Manche', 75, '', '', 1),
(1266, 'Marne', 75, '', '', 1),
(1267, 'Mayenne', 75, '', '', 1),
(1268, 'Meurthe-et-Moselle', 75, '', '', 1),
(1269, 'Meuse', 75, '', '', 1),
(1270, 'Midi-Pyrenees', 75, '', '', 1),
(1271, 'Morbihan', 75, '', '', 1),
(1272, 'Moselle', 75, '', '', 1),
(1273, 'Nievre', 75, '', '', 1),
(1274, 'Nord', 75, '', '', 1),
(1275, 'Nord-Pas-de-Calais', 75, '', '', 1),
(1276, 'Oise', 75, '', '', 1),
(1277, 'Orne', 75, '', '', 1),
(1278, 'Paris', 75, '', '', 1),
(1279, 'Pas-de-Calais', 75, '', '', 1),
(1280, 'Pays de la Loire', 75, '', '', 1),
(1281, 'Pays-de-la-Loire', 75, '', '', 1),
(1282, 'Picardy', 75, '', '', 1),
(1283, 'Puy-de-Dome', 75, '', '', 1),
(1284, 'Pyrenees-Atlantiques', 75, '', '', 1),
(1285, 'Pyrenees-Orientales', 75, '', '', 1),
(1286, 'Quelmes', 75, '', '', 1),
(1287, 'Rhone', 75, '', '', 1),
(1288, 'Rhone-Alpes', 75, '', '', 1),
(1289, 'Saint Ouen', 75, '', '', 1),
(1290, 'Saint Viatre', 75, '', '', 1),
(1291, 'Saone-et-Loire', 75, '', '', 1),
(1292, 'Sarthe', 75, '', '', 1),
(1293, 'Savoie', 75, '', '', 1),
(1294, 'Seine-Maritime', 75, '', '', 1),
(1295, 'Seine-Saint-Denis', 75, '', '', 1),
(1296, 'Seine-et-Marne', 75, '', '', 1),
(1297, 'Somme', 75, '', '', 1),
(1298, 'Sophia Antipolis', 75, '', '', 1),
(1299, 'Souvans', 75, '', '', 1),
(1300, 'Tarn', 75, '', '', 1),
(1301, 'Tarn-et-Garonne', 75, '', '', 1),
(1302, 'Territoire de Belfort', 75, '', '', 1),
(1303, 'Treignac', 75, '', '', 1),
(1304, 'Upper Normandy', 75, '', '', 1),
(1305, 'Val-d\'Oise', 75, '', '', 1),
(1306, 'Val-de-Marne', 75, '', '', 1),
(1307, 'Var', 75, '', '', 1),
(1308, 'Vaucluse', 75, '', '', 1),
(1309, 'Vellise', 75, '', '', 1),
(1310, 'Vendee', 75, '', '', 1),
(1311, 'Vienne', 75, '', '', 1),
(1312, 'Vosges', 75, '', '', 1),
(1313, 'Yonne', 75, '', '', 1),
(1314, 'Yvelines', 75, '', '', 1),
(1315, 'Cayenne', 76, '', '', 1),
(1316, 'Saint-Laurent-du-Maroni', 76, '', '', 1),
(1317, 'Iles du Vent', 77, '', '', 1),
(1318, 'Iles sous le Vent', 77, '', '', 1),
(1319, 'Marquesas', 77, '', '', 1),
(1320, 'Tuamotu', 77, '', '', 1),
(1321, 'Tubuai', 77, '', '', 1),
(1322, 'Amsterdam', 78, '', '', 1),
(1323, 'Crozet Islands', 78, '', '', 1),
(1324, 'Kerguelen', 78, '', '', 1),
(1325, 'Estuaire', 79, '', '', 1),
(1326, 'Haut-Ogooue', 79, '', '', 1),
(1327, 'Moyen-Ogooue', 79, '', '', 1),
(1328, 'Ngounie', 79, '', '', 1),
(1329, 'Nyanga', 79, '', '', 1),
(1330, 'Ogooue-Ivindo', 79, '', '', 1),
(1331, 'Ogooue-Lolo', 79, '', '', 1),
(1332, 'Ogooue-Maritime', 79, '', '', 1),
(1333, 'Woleu-Ntem', 79, '', '', 1),
(1334, 'Banjul', 80, '', '', 1),
(1335, 'Basse', 80, '', '', 1),
(1336, 'Brikama', 80, '', '', 1),
(1337, 'Janjanbureh', 80, '', '', 1),
(1338, 'Kanifing', 80, '', '', 1),
(1339, 'Kerewan', 80, '', '', 1),
(1340, 'Kuntaur', 80, '', '', 1),
(1341, 'Mansakonko', 80, '', '', 1),
(1342, 'Abhasia', 81, '', '', 1),
(1343, 'Ajaria', 81, '', '', 1),
(1344, 'Guria', 81, '', '', 1),
(1345, 'Imereti', 81, '', '', 1),
(1346, 'Kaheti', 81, '', '', 1),
(1347, 'Kvemo Kartli', 81, '', '', 1),
(1348, 'Mcheta-Mtianeti', 81, '', '', 1),
(1349, 'Racha', 81, '', '', 1),
(1350, 'Samagrelo-Zemo Svaneti', 81, '', '', 1),
(1351, 'Samche-Zhavaheti', 81, '', '', 1),
(1352, 'Shida Kartli', 81, '', '', 1),
(1353, 'Tbilisi', 81, '', '', 1),
(1354, 'Auvergne', 82, '', '', 1),
(1355, 'Baden-Wurttemberg', 82, '', '', 1),
(1356, 'Bavaria', 82, '', '', 1),
(1357, 'Bayern', 82, '', '', 1),
(1358, 'Beilstein Wurtt', 82, '', '', 1),
(1359, 'Berlin', 82, '', '', 1),
(1360, 'Brandenburg', 82, '', '', 1),
(1361, 'Bremen', 82, '', '', 1),
(1362, 'Dreisbach', 82, '', '', 1),
(1363, 'Freistaat Bayern', 82, '', '', 1),
(1364, 'Hamburg', 82, '', '', 1),
(1365, 'Hannover', 82, '', '', 1),
(1366, 'Heroldstatt', 82, '', '', 1),
(1367, 'Hessen', 82, '', '', 1),
(1368, 'Kortenberg', 82, '', '', 1),
(1369, 'Laasdorf', 82, '', '', 1),
(1370, 'Land Baden-Wurttemberg', 82, '', '', 1),
(1371, 'Land Bayern', 82, '', '', 1),
(1372, 'Land Brandenburg', 82, '', '', 1),
(1373, 'Land Hessen', 82, '', '', 1),
(1374, 'Land Mecklenburg-Vorpommern', 82, '', '', 1),
(1375, 'Land Nordrhein-Westfalen', 82, '', '', 1),
(1376, 'Land Rheinland-Pfalz', 82, '', '', 1),
(1377, 'Land Sachsen', 82, '', '', 1),
(1378, 'Land Sachsen-Anhalt', 82, '', '', 1),
(1379, 'Land Thuringen', 82, '', '', 1),
(1380, 'Lower Saxony', 82, '', '', 1),
(1381, 'Mecklenburg-Vorpommern', 82, '', '', 1),
(1382, 'Mulfingen', 82, '', '', 1),
(1383, 'Munich', 82, '', '', 1),
(1384, 'Neubeuern', 82, '', '', 1),
(1385, 'Niedersachsen', 82, '', '', 1),
(1386, 'Noord-Holland', 82, '', '', 1),
(1387, 'Nordrhein-Westfalen', 82, '', '', 1),
(1388, 'North Rhine-Westphalia', 82, '', '', 1),
(1389, 'Osterode', 82, '', '', 1),
(1390, 'Rheinland-Pfalz', 82, '', '', 1),
(1391, 'Rhineland-Palatinate', 82, '', '', 1),
(1392, 'Saarland', 82, '', '', 1),
(1393, 'Sachsen', 82, '', '', 1),
(1394, 'Sachsen-Anhalt', 82, '', '', 1),
(1395, 'Saxony', 82, '', '', 1),
(1396, 'Schleswig-Holstein', 82, '', '', 1),
(1397, 'Thuringia', 82, '', '', 1),
(1398, 'Webling', 82, '', '', 1),
(1399, 'Weinstrabe', 82, '', '', 1),
(1400, 'schlobborn', 82, '', '', 1),
(1401, 'Ashanti', 83, '', '', 1),
(1402, 'Brong-Ahafo', 83, '', '', 1),
(1403, 'Central', 83, '', '', 1),
(1404, 'Eastern', 83, '', '', 1),
(1405, 'Greater Accra', 83, '', '', 1),
(1406, 'Northern', 83, '', '', 1),
(1407, 'Upper East', 83, '', '', 1),
(1408, 'Upper West', 83, '', '', 1),
(1409, 'Volta', 83, '', '', 1),
(1410, 'Western', 83, '', '', 1),
(1411, 'Gibraltar', 84, '', '', 1),
(1412, 'Acharnes', 85, '', '', 1),
(1413, 'Ahaia', 85, '', '', 1),
(1414, 'Aitolia kai Akarnania', 85, '', '', 1),
(1415, 'Argolis', 85, '', '', 1),
(1416, 'Arkadia', 85, '', '', 1),
(1417, 'Arta', 85, '', '', 1),
(1418, 'Attica', 85, '', '', 1),
(1419, 'Attiki', 85, '', '', 1),
(1420, 'Ayion Oros', 85, '', '', 1),
(1421, 'Crete', 85, '', '', 1),
(1422, 'Dodekanisos', 85, '', '', 1),
(1423, 'Drama', 85, '', '', 1),
(1424, 'Evia', 85, '', '', 1),
(1425, 'Evritania', 85, '', '', 1),
(1426, 'Evros', 85, '', '', 1),
(1427, 'Evvoia', 85, '', '', 1),
(1428, 'Florina', 85, '', '', 1),
(1429, 'Fokis', 85, '', '', 1),
(1430, 'Fthiotis', 85, '', '', 1),
(1431, 'Grevena', 85, '', '', 1),
(1432, 'Halandri', 85, '', '', 1),
(1433, 'Halkidiki', 85, '', '', 1),
(1434, 'Hania', 85, '', '', 1),
(1435, 'Heraklion', 85, '', '', 1),
(1436, 'Hios', 85, '', '', 1),
(1437, 'Ilia', 85, '', '', 1),
(1438, 'Imathia', 85, '', '', 1),
(1439, 'Ioannina', 85, '', '', 1),
(1440, 'Iraklion', 85, '', '', 1),
(1441, 'Karditsa', 85, '', '', 1),
(1442, 'Kastoria', 85, '', '', 1),
(1443, 'Kavala', 85, '', '', 1),
(1444, 'Kefallinia', 85, '', '', 1),
(1445, 'Kerkira', 85, '', '', 1),
(1446, 'Kiklades', 85, '', '', 1),
(1447, 'Kilkis', 85, '', '', 1),
(1448, 'Korinthia', 85, '', '', 1),
(1449, 'Kozani', 85, '', '', 1),
(1450, 'Lakonia', 85, '', '', 1),
(1451, 'Larisa', 85, '', '', 1),
(1452, 'Lasithi', 85, '', '', 1),
(1453, 'Lesvos', 85, '', '', 1),
(1454, 'Levkas', 85, '', '', 1),
(1455, 'Magnisia', 85, '', '', 1),
(1456, 'Messinia', 85, '', '', 1),
(1457, 'Nomos Attikis', 85, '', '', 1),
(1458, 'Nomos Zakynthou', 85, '', '', 1),
(1459, 'Pella', 85, '', '', 1),
(1460, 'Pieria', 85, '', '', 1),
(1461, 'Piraios', 85, '', '', 1),
(1462, 'Preveza', 85, '', '', 1),
(1463, 'Rethimni', 85, '', '', 1),
(1464, 'Rodopi', 85, '', '', 1),
(1465, 'Samos', 85, '', '', 1),
(1466, 'Serrai', 85, '', '', 1),
(1467, 'Thesprotia', 85, '', '', 1),
(1468, 'Thessaloniki', 85, '', '', 1),
(1469, 'Trikala', 85, '', '', 1),
(1470, 'Voiotia', 85, '', '', 1),
(1471, 'West Greece', 85, '', '', 1),
(1472, 'Xanthi', 85, '', '', 1),
(1473, 'Zakinthos', 85, '', '', 1),
(1474, 'Aasiaat', 86, '', '', 1),
(1475, 'Ammassalik', 86, '', '', 1),
(1476, 'Illoqqortoormiut', 86, '', '', 1),
(1477, 'Ilulissat', 86, '', '', 1),
(1478, 'Ivittuut', 86, '', '', 1),
(1479, 'Kangaatsiaq', 86, '', '', 1),
(1480, 'Maniitsoq', 86, '', '', 1),
(1481, 'Nanortalik', 86, '', '', 1),
(1482, 'Narsaq', 86, '', '', 1),
(1483, 'Nuuk', 86, '', '', 1),
(1484, 'Paamiut', 86, '', '', 1),
(1485, 'Qaanaaq', 86, '', '', 1),
(1486, 'Qaqortoq', 86, '', '', 1),
(1487, 'Qasigiannguit', 86, '', '', 1),
(1488, 'Qeqertarsuaq', 86, '', '', 1);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`, `status`) VALUES
(1489, 'Sisimiut', 86, '', '', 1),
(1490, 'Udenfor kommunal inddeling', 86, '', '', 1),
(1491, 'Upernavik', 86, '', '', 1),
(1492, 'Uummannaq', 86, '', '', 1),
(1493, 'Carriacou-Petite Martinique', 87, '', '', 1),
(1494, 'Saint Andrew', 87, '', '', 1),
(1495, 'Saint Davids', 87, '', '', 1),
(1496, 'Saint George\'s', 87, '', '', 1),
(1497, 'Saint John', 87, '', '', 1),
(1498, 'Saint Mark', 87, '', '', 1),
(1499, 'Saint Patrick', 87, '', '', 1),
(1500, 'Basse-Terre', 88, '', '', 1),
(1501, 'Grande-Terre', 88, '', '', 1),
(1502, 'Iles des Saintes', 88, '', '', 1),
(1503, 'La Desirade', 88, '', '', 1),
(1504, 'Marie-Galante', 88, '', '', 1),
(1505, 'Saint Barthelemy', 88, '', '', 1),
(1506, 'Saint Martin', 88, '', '', 1),
(1507, 'Agana Heights', 89, '', '', 1),
(1508, 'Agat', 89, '', '', 1),
(1509, 'Barrigada', 89, '', '', 1),
(1510, 'Chalan-Pago-Ordot', 89, '', '', 1),
(1511, 'Dededo', 89, '', '', 1),
(1512, 'Hagatna', 89, '', '', 1),
(1513, 'Inarajan', 89, '', '', 1),
(1514, 'Mangilao', 89, '', '', 1),
(1515, 'Merizo', 89, '', '', 1),
(1516, 'Mongmong-Toto-Maite', 89, '', '', 1),
(1517, 'Santa Rita', 89, '', '', 1),
(1518, 'Sinajana', 89, '', '', 1),
(1519, 'Talofofo', 89, '', '', 1),
(1520, 'Tamuning', 89, '', '', 1),
(1521, 'Yigo', 89, '', '', 1),
(1522, 'Yona', 89, '', '', 1),
(1523, 'Alta Verapaz', 90, '', '', 1),
(1524, 'Baja Verapaz', 90, '', '', 1),
(1525, 'Chimaltenango', 90, '', '', 1),
(1526, 'Chiquimula', 90, '', '', 1),
(1527, 'El Progreso', 90, '', '', 1),
(1528, 'Escuintla', 90, '', '', 1),
(1529, 'Guatemala', 90, '', '', 1),
(1530, 'Huehuetenango', 90, '', '', 1),
(1531, 'Izabal', 90, '', '', 1),
(1532, 'Jalapa', 90, '', '', 1),
(1533, 'Jutiapa', 90, '', '', 1),
(1534, 'Peten', 90, '', '', 1),
(1535, 'Quezaltenango', 90, '', '', 1),
(1536, 'Quiche', 90, '', '', 1),
(1537, 'Retalhuleu', 90, '', '', 1),
(1538, 'Sacatepequez', 90, '', '', 1),
(1539, 'San Marcos', 90, '', '', 1),
(1540, 'Santa Rosa', 90, '', '', 1),
(1541, 'Solola', 90, '', '', 1),
(1542, 'Suchitepequez', 90, '', '', 1),
(1543, 'Totonicapan', 90, '', '', 1),
(1544, 'Zacapa', 90, '', '', 1),
(1545, 'Alderney', 91, '', '', 1),
(1546, 'Castel', 91, '', '', 1),
(1547, 'Forest', 91, '', '', 1),
(1548, 'Saint Andrew', 91, '', '', 1),
(1549, 'Saint Martin', 91, '', '', 1),
(1550, 'Saint Peter Port', 91, '', '', 1),
(1551, 'Saint Pierre du Bois', 91, '', '', 1),
(1552, 'Saint Sampson', 91, '', '', 1),
(1553, 'Saint Saviour', 91, '', '', 1),
(1554, 'Sark', 91, '', '', 1),
(1555, 'Torteval', 91, '', '', 1),
(1556, 'Vale', 91, '', '', 1),
(1557, 'Beyla', 92, '', '', 1),
(1558, 'Boffa', 92, '', '', 1),
(1559, 'Boke', 92, '', '', 1),
(1560, 'Conakry', 92, '', '', 1),
(1561, 'Coyah', 92, '', '', 1),
(1562, 'Dabola', 92, '', '', 1),
(1563, 'Dalaba', 92, '', '', 1),
(1564, 'Dinguiraye', 92, '', '', 1),
(1565, 'Faranah', 92, '', '', 1),
(1566, 'Forecariah', 92, '', '', 1),
(1567, 'Fria', 92, '', '', 1),
(1568, 'Gaoual', 92, '', '', 1),
(1569, 'Gueckedou', 92, '', '', 1),
(1570, 'Kankan', 92, '', '', 1),
(1571, 'Kerouane', 92, '', '', 1),
(1572, 'Kindia', 92, '', '', 1),
(1573, 'Kissidougou', 92, '', '', 1),
(1574, 'Koubia', 92, '', '', 1),
(1575, 'Koundara', 92, '', '', 1),
(1576, 'Kouroussa', 92, '', '', 1),
(1577, 'Labe', 92, '', '', 1),
(1578, 'Lola', 92, '', '', 1),
(1579, 'Macenta', 92, '', '', 1),
(1580, 'Mali', 92, '', '', 1),
(1581, 'Mamou', 92, '', '', 1),
(1582, 'Mandiana', 92, '', '', 1),
(1583, 'Nzerekore', 92, '', '', 1),
(1584, 'Pita', 92, '', '', 1),
(1585, 'Siguiri', 92, '', '', 1),
(1586, 'Telimele', 92, '', '', 1),
(1587, 'Tougue', 92, '', '', 1),
(1588, 'Yomou', 92, '', '', 1),
(1589, 'Bafata', 93, '', '', 1),
(1590, 'Bissau', 93, '', '', 1),
(1591, 'Bolama', 93, '', '', 1),
(1592, 'Cacheu', 93, '', '', 1),
(1593, 'Gabu', 93, '', '', 1),
(1594, 'Oio', 93, '', '', 1),
(1595, 'Quinara', 93, '', '', 1),
(1596, 'Tombali', 93, '', '', 1),
(1597, 'Barima-Waini', 94, '', '', 1),
(1598, 'Cuyuni-Mazaruni', 94, '', '', 1),
(1599, 'Demerara-Mahaica', 94, '', '', 1),
(1600, 'East Berbice-Corentyne', 94, '', '', 1),
(1601, 'Essequibo Islands-West Demerar', 94, '', '', 1),
(1602, 'Mahaica-Berbice', 94, '', '', 1),
(1603, 'Pomeroon-Supenaam', 94, '', '', 1),
(1604, 'Potaro-Siparuni', 94, '', '', 1),
(1605, 'Upper Demerara-Berbice', 94, '', '', 1),
(1606, 'Upper Takutu-Upper Essequibo', 94, '', '', 1),
(1607, 'Artibonite', 95, '', '', 1),
(1608, 'Centre', 95, '', '', 1),
(1609, 'Grand\'Anse', 95, '', '', 1),
(1610, 'Nord', 95, '', '', 1),
(1611, 'Nord-Est', 95, '', '', 1),
(1612, 'Nord-Ouest', 95, '', '', 1),
(1613, 'Ouest', 95, '', '', 1),
(1614, 'Sud', 95, '', '', 1),
(1615, 'Sud-Est', 95, '', '', 1),
(1616, 'Heard and McDonald Islands', 96, '', '', 1),
(1617, 'Atlantida', 97, '', '', 1),
(1618, 'Choluteca', 97, '', '', 1),
(1619, 'Colon', 97, '', '', 1),
(1620, 'Comayagua', 97, '', '', 1),
(1621, 'Copan', 97, '', '', 1),
(1622, 'Cortes', 97, '', '', 1),
(1623, 'Distrito Central', 97, '', '', 1),
(1624, 'El Paraiso', 97, '', '', 1),
(1625, 'Francisco Morazan', 97, '', '', 1),
(1626, 'Gracias a Dios', 97, '', '', 1),
(1627, 'Intibuca', 97, '', '', 1),
(1628, 'Islas de la Bahia', 97, '', '', 1),
(1629, 'La Paz', 97, '', '', 1),
(1630, 'Lempira', 97, '', '', 1),
(1631, 'Ocotepeque', 97, '', '', 1),
(1632, 'Olancho', 97, '', '', 1),
(1633, 'Santa Barbara', 97, '', '', 1),
(1634, 'Valle', 97, '', '', 1),
(1635, 'Yoro', 97, '', '', 1),
(1636, 'Hong Kong', 98, '', '', 1),
(1637, 'Bacs-Kiskun', 99, '', '', 1),
(1638, 'Baranya', 99, '', '', 1),
(1639, 'Bekes', 99, '', '', 1),
(1640, 'Borsod-Abauj-Zemplen', 99, '', '', 1),
(1641, 'Budapest', 99, '', '', 1),
(1642, 'Csongrad', 99, '', '', 1),
(1643, 'Fejer', 99, '', '', 1),
(1644, 'Gyor-Moson-Sopron', 99, '', '', 1),
(1645, 'Hajdu-Bihar', 99, '', '', 1),
(1646, 'Heves', 99, '', '', 1),
(1647, 'Jasz-Nagykun-Szolnok', 99, '', '', 1),
(1648, 'Komarom-Esztergom', 99, '', '', 1),
(1649, 'Nograd', 99, '', '', 1),
(1650, 'Pest', 99, '', '', 1),
(1651, 'Somogy', 99, '', '', 1),
(1652, 'Szabolcs-Szatmar-Bereg', 99, '', '', 1),
(1653, 'Tolna', 99, '', '', 1),
(1654, 'Vas', 99, '', '', 1),
(1655, 'Veszprem', 99, '', '', 1),
(1656, 'Zala', 99, '', '', 1),
(1657, 'Austurland', 100, '', '', 1),
(1658, 'Gullbringusysla', 100, '', '', 1),
(1659, 'Hofu borgarsva i', 100, '', '', 1),
(1660, 'Nor urland eystra', 100, '', '', 1),
(1661, 'Nor urland vestra', 100, '', '', 1),
(1662, 'Su urland', 100, '', '', 1),
(1663, 'Su urnes', 100, '', '', 1),
(1664, 'Vestfir ir', 100, '', '', 1),
(1665, 'Vesturland', 100, '', '', 1),
(1666, 'Aceh', 102, '', '', 1),
(1667, 'Bali', 102, '', '', 1),
(1668, 'Bangka-Belitung', 102, '', '', 1),
(1669, 'Banten', 102, '', '', 1),
(1670, 'Bengkulu', 102, '', '', 1),
(1671, 'Gandaria', 102, '', '', 1),
(1672, 'Gorontalo', 102, '', '', 1),
(1673, 'Jakarta', 102, '', '', 1),
(1674, 'Jambi', 102, '', '', 1),
(1675, 'Jawa Barat', 102, '', '', 1),
(1676, 'Jawa Tengah', 102, '', '', 1),
(1677, 'Jawa Timur', 102, '', '', 1),
(1678, 'Kalimantan Barat', 102, '', '', 1),
(1679, 'Kalimantan Selatan', 102, '', '', 1),
(1680, 'Kalimantan Tengah', 102, '', '', 1),
(1681, 'Kalimantan Timur', 102, '', '', 1),
(1682, 'Kendal', 102, '', '', 1),
(1683, 'Lampung', 102, '', '', 1),
(1684, 'Maluku', 102, '', '', 1),
(1685, 'Maluku Utara', 102, '', '', 1),
(1686, 'Nusa Tenggara Barat', 102, '', '', 1),
(1687, 'Nusa Tenggara Timur', 102, '', '', 1),
(1688, 'Papua', 102, '', '', 1),
(1689, 'Riau', 102, '', '', 1),
(1690, 'Riau Kepulauan', 102, '', '', 1),
(1691, 'Solo', 102, '', '', 1),
(1692, 'Sulawesi Selatan', 102, '', '', 1),
(1693, 'Sulawesi Tengah', 102, '', '', 1),
(1694, 'Sulawesi Tenggara', 102, '', '', 1),
(1695, 'Sulawesi Utara', 102, '', '', 1),
(1696, 'Sumatera Barat', 102, '', '', 1),
(1697, 'Sumatera Selatan', 102, '', '', 1),
(1698, 'Sumatera Utara', 102, '', '', 1),
(1699, 'Yogyakarta', 102, '', '', 1),
(1700, 'Ardabil', 103, '', '', 1),
(1701, 'Azarbayjan-e Bakhtari', 103, '', '', 1),
(1702, 'Azarbayjan-e Khavari', 103, '', '', 1),
(1703, 'Bushehr', 103, '', '', 1),
(1704, 'Chahar Mahal-e Bakhtiari', 103, '', '', 1),
(1705, 'Esfahan', 103, '', '', 1),
(1706, 'Fars', 103, '', '', 1),
(1707, 'Gilan', 103, '', '', 1),
(1708, 'Golestan', 103, '', '', 1),
(1709, 'Hamadan', 103, '', '', 1),
(1710, 'Hormozgan', 103, '', '', 1),
(1711, 'Ilam', 103, '', '', 1),
(1712, 'Kerman', 103, '', '', 1),
(1713, 'Kermanshah', 103, '', '', 1),
(1714, 'Khorasan', 103, '', '', 1),
(1715, 'Khuzestan', 103, '', '', 1),
(1716, 'Kohgiluyeh-e Boyerahmad', 103, '', '', 1),
(1717, 'Kordestan', 103, '', '', 1),
(1718, 'Lorestan', 103, '', '', 1),
(1719, 'Markazi', 103, '', '', 1),
(1720, 'Mazandaran', 103, '', '', 1),
(1721, 'Ostan-e Esfahan', 103, '', '', 1),
(1722, 'Qazvin', 103, '', '', 1),
(1723, 'Qom', 103, '', '', 1),
(1724, 'Semnan', 103, '', '', 1),
(1725, 'Sistan-e Baluchestan', 103, '', '', 1),
(1726, 'Tehran', 103, '', '', 1),
(1727, 'Yazd', 103, '', '', 1),
(1728, 'Zanjan', 103, '', '', 1),
(1729, 'Babil', 104, '', '', 1),
(1730, 'Baghdad', 104, '', '', 1),
(1731, 'Dahuk', 104, '', '', 1),
(1732, 'Dhi Qar', 104, '', '', 1),
(1733, 'Diyala', 104, '', '', 1),
(1734, 'Erbil', 104, '', '', 1),
(1735, 'Irbil', 104, '', '', 1),
(1736, 'Karbala', 104, '', '', 1),
(1737, 'Kurdistan', 104, '', '', 1),
(1738, 'Maysan', 104, '', '', 1),
(1739, 'Ninawa', 104, '', '', 1),
(1740, 'Salah-ad-Din', 104, '', '', 1),
(1741, 'Wasit', 104, '', '', 1),
(1742, 'al-Anbar', 104, '', '', 1),
(1743, 'al-Basrah', 104, '', '', 1),
(1744, 'al-Muthanna', 104, '', '', 1),
(1745, 'al-Qadisiyah', 104, '', '', 1),
(1746, 'an-Najaf', 104, '', '', 1),
(1747, 'as-Sulaymaniyah', 104, '', '', 1),
(1748, 'at-Ta\'mim', 104, '', '', 1),
(1749, 'Armagh', 105, '', '', 1),
(1750, 'Carlow', 105, '', '', 1),
(1751, 'Cavan', 105, '', '', 1),
(1752, 'Clare', 105, '', '', 1),
(1753, 'Cork', 105, '', '', 1),
(1754, 'Donegal', 105, '', '', 1),
(1755, 'Dublin', 105, '', '', 1),
(1756, 'Galway', 105, '', '', 1),
(1757, 'Kerry', 105, '', '', 1),
(1758, 'Kildare', 105, '', '', 1),
(1759, 'Kilkenny', 105, '', '', 1),
(1760, 'Laois', 105, '', '', 1),
(1761, 'Leinster', 105, '', '', 1),
(1762, 'Leitrim', 105, '', '', 1),
(1763, 'Limerick', 105, '', '', 1),
(1764, 'Loch Garman', 105, '', '', 1),
(1765, 'Longford', 105, '', '', 1),
(1766, 'Louth', 105, '', '', 1),
(1767, 'Mayo', 105, '', '', 1),
(1768, 'Meath', 105, '', '', 1),
(1769, 'Monaghan', 105, '', '', 1),
(1770, 'Offaly', 105, '', '', 1),
(1771, 'Roscommon', 105, '', '', 1),
(1772, 'Sligo', 105, '', '', 1),
(1773, 'Tipperary North Riding', 105, '', '', 1),
(1774, 'Tipperary South Riding', 105, '', '', 1),
(1775, 'Ulster', 105, '', '', 1),
(1776, 'Waterford', 105, '', '', 1),
(1777, 'Westmeath', 105, '', '', 1),
(1778, 'Wexford', 105, '', '', 1),
(1779, 'Wicklow', 105, '', '', 1),
(1780, 'Beit Hanania', 106, '', '', 1),
(1781, 'Ben Gurion Airport', 106, '', '', 1),
(1782, 'Bethlehem', 106, '', '', 1),
(1783, 'Caesarea', 106, '', '', 1),
(1784, 'Centre', 106, '', '', 1),
(1785, 'Gaza', 106, '', '', 1),
(1786, 'Hadaron', 106, '', '', 1),
(1787, 'Haifa District', 106, '', '', 1),
(1788, 'Hamerkaz', 106, '', '', 1),
(1789, 'Hazafon', 106, '', '', 1),
(1790, 'Hebron', 106, '', '', 1),
(1791, 'Jaffa', 106, '', '', 1),
(1792, 'Jerusalem', 106, '', '', 1),
(1793, 'Khefa', 106, '', '', 1),
(1794, 'Kiryat Yam', 106, '', '', 1),
(1795, 'Lower Galilee', 106, '', '', 1),
(1796, 'Qalqilya', 106, '', '', 1),
(1797, 'Talme Elazar', 106, '', '', 1),
(1798, 'Tel Aviv', 106, '', '', 1),
(1799, 'Tsafon', 106, '', '', 1),
(1800, 'Umm El Fahem', 106, '', '', 1),
(1801, 'Yerushalayim', 106, '', '', 1),
(1802, 'Abruzzi', 107, '', '', 1),
(1803, 'Abruzzo', 107, '', '', 1),
(1804, 'Agrigento', 107, '', '', 1),
(1805, 'Alessandria', 107, '', '', 1),
(1806, 'Ancona', 107, '', '', 1),
(1807, 'Arezzo', 107, '', '', 1),
(1808, 'Ascoli Piceno', 107, '', '', 1),
(1809, 'Asti', 107, '', '', 1),
(1810, 'Avellino', 107, '', '', 1),
(1811, 'Bari', 107, '', '', 1),
(1812, 'Basilicata', 107, '', '', 1),
(1813, 'Belluno', 107, '', '', 1),
(1814, 'Benevento', 107, '', '', 1),
(1815, 'Bergamo', 107, '', '', 1),
(1816, 'Biella', 107, '', '', 1),
(1817, 'Bologna', 107, '', '', 1),
(1818, 'Bolzano', 107, '', '', 1),
(1819, 'Brescia', 107, '', '', 1),
(1820, 'Brindisi', 107, '', '', 1),
(1821, 'Calabria', 107, '', '', 1),
(1822, 'Campania', 107, '', '', 1),
(1823, 'Cartoceto', 107, '', '', 1),
(1824, 'Caserta', 107, '', '', 1),
(1825, 'Catania', 107, '', '', 1),
(1826, 'Chieti', 107, '', '', 1),
(1827, 'Como', 107, '', '', 1),
(1828, 'Cosenza', 107, '', '', 1),
(1829, 'Cremona', 107, '', '', 1),
(1830, 'Cuneo', 107, '', '', 1),
(1831, 'Emilia-Romagna', 107, '', '', 1),
(1832, 'Ferrara', 107, '', '', 1),
(1833, 'Firenze', 107, '', '', 1),
(1834, 'Florence', 107, '', '', 1),
(1835, 'Forli-Cesena ', 107, '', '', 1),
(1836, 'Friuli-Venezia Giulia', 107, '', '', 1),
(1837, 'Frosinone', 107, '', '', 1),
(1838, 'Genoa', 107, '', '', 1),
(1839, 'Gorizia', 107, '', '', 1),
(1840, 'L\'Aquila', 107, '', '', 1),
(1841, 'Lazio', 107, '', '', 1),
(1842, 'Lecce', 107, '', '', 1),
(1843, 'Lecco', 107, '', '', 1),
(1844, 'Lecco Province', 107, '', '', 1),
(1845, 'Liguria', 107, '', '', 1),
(1846, 'Lodi', 107, '', '', 1),
(1847, 'Lombardia', 107, '', '', 1),
(1848, 'Lombardy', 107, '', '', 1),
(1849, 'Macerata', 107, '', '', 1),
(1850, 'Mantova', 107, '', '', 1),
(1851, 'Marche', 107, '', '', 1),
(1852, 'Messina', 107, '', '', 1),
(1853, 'Milan', 107, '', '', 1),
(1854, 'Modena', 107, '', '', 1),
(1855, 'Molise', 107, '', '', 1),
(1856, 'Molteno', 107, '', '', 1),
(1857, 'Montenegro', 107, '', '', 1),
(1858, 'Monza and Brianza', 107, '', '', 1),
(1859, 'Naples', 107, '', '', 1),
(1860, 'Novara', 107, '', '', 1),
(1861, 'Padova', 107, '', '', 1),
(1862, 'Parma', 107, '', '', 1),
(1863, 'Pavia', 107, '', '', 1),
(1864, 'Perugia', 107, '', '', 1),
(1865, 'Pesaro-Urbino', 107, '', '', 1),
(1866, 'Piacenza', 107, '', '', 1),
(1867, 'Piedmont', 107, '', '', 1),
(1868, 'Piemonte', 107, '', '', 1),
(1869, 'Pisa', 107, '', '', 1),
(1870, 'Pordenone', 107, '', '', 1),
(1871, 'Potenza', 107, '', '', 1),
(1872, 'Puglia', 107, '', '', 1),
(1873, 'Reggio Emilia', 107, '', '', 1),
(1874, 'Rimini', 107, '', '', 1),
(1875, 'Roma', 107, '', '', 1),
(1876, 'Salerno', 107, '', '', 1),
(1877, 'Sardegna', 107, '', '', 1),
(1878, 'Sassari', 107, '', '', 1),
(1879, 'Savona', 107, '', '', 1),
(1880, 'Sicilia', 107, '', '', 1),
(1881, 'Siena', 107, '', '', 1),
(1882, 'Sondrio', 107, '', '', 1),
(1883, 'South Tyrol', 107, '', '', 1),
(1884, 'Taranto', 107, '', '', 1),
(1885, 'Teramo', 107, '', '', 1),
(1886, 'Torino', 107, '', '', 1),
(1887, 'Toscana', 107, '', '', 1),
(1888, 'Trapani', 107, '', '', 1),
(1889, 'Trentino-Alto Adige', 107, '', '', 1),
(1890, 'Trento', 107, '', '', 1),
(1891, 'Treviso', 107, '', '', 1),
(1892, 'Udine', 107, '', '', 1),
(1893, 'Umbria', 107, '', '', 1),
(1894, 'Valle d\'Aosta', 107, '', '', 1),
(1895, 'Varese', 107, '', '', 1),
(1896, 'Veneto', 107, '', '', 1),
(1897, 'Venezia', 107, '', '', 1),
(1898, 'Verbano-Cusio-Ossola', 107, '', '', 1),
(1899, 'Vercelli', 107, '', '', 1),
(1900, 'Verona', 107, '', '', 1),
(1901, 'Vicenza', 107, '', '', 1),
(1902, 'Viterbo', 107, '', '', 1),
(1903, 'Buxoro Viloyati', 108, '', '', 1),
(1904, 'Clarendon', 108, '', '', 1),
(1905, 'Hanover', 108, '', '', 1),
(1906, 'Kingston', 108, '', '', 1),
(1907, 'Manchester', 108, '', '', 1),
(1908, 'Portland', 108, '', '', 1),
(1909, 'Saint Andrews', 108, '', '', 1),
(1910, 'Saint Ann', 108, '', '', 1),
(1911, 'Saint Catherine', 108, '', '', 1),
(1912, 'Saint Elizabeth', 108, '', '', 1),
(1913, 'Saint James', 108, '', '', 1),
(1914, 'Saint Mary', 108, '', '', 1),
(1915, 'Saint Thomas', 108, '', '', 1),
(1916, 'Trelawney', 108, '', '', 1),
(1917, 'Westmoreland', 108, '', '', 1),
(1918, 'Aichi', 109, '', '', 1),
(1919, 'Akita', 109, '', '', 1),
(1920, 'Aomori', 109, '', '', 1),
(1921, 'Chiba', 109, '', '', 1),
(1922, 'Ehime', 109, '', '', 1),
(1923, 'Fukui', 109, '', '', 1),
(1924, 'Fukuoka', 109, '', '', 1),
(1925, 'Fukushima', 109, '', '', 1),
(1926, 'Gifu', 109, '', '', 1),
(1927, 'Gumma', 109, '', '', 1),
(1928, 'Hiroshima', 109, '', '', 1),
(1929, 'Hokkaido', 109, '', '', 1),
(1930, 'Hyogo', 109, '', '', 1),
(1931, 'Ibaraki', 109, '', '', 1),
(1932, 'Ishikawa', 109, '', '', 1),
(1933, 'Iwate', 109, '', '', 1),
(1934, 'Kagawa', 109, '', '', 1),
(1935, 'Kagoshima', 109, '', '', 1),
(1936, 'Kanagawa', 109, '', '', 1),
(1937, 'Kanto', 109, '', '', 1),
(1938, 'Kochi', 109, '', '', 1),
(1939, 'Kumamoto', 109, '', '', 1),
(1940, 'Kyoto', 109, '', '', 1),
(1941, 'Mie', 109, '', '', 1),
(1942, 'Miyagi', 109, '', '', 1),
(1943, 'Miyazaki', 109, '', '', 1),
(1944, 'Nagano', 109, '', '', 1),
(1945, 'Nagasaki', 109, '', '', 1),
(1946, 'Nara', 109, '', '', 1),
(1947, 'Niigata', 109, '', '', 1),
(1948, 'Oita', 109, '', '', 1),
(1949, 'Okayama', 109, '', '', 1),
(1950, 'Okinawa', 109, '', '', 1),
(1951, 'Osaka', 109, '', '', 1),
(1952, 'Saga', 109, '', '', 1),
(1953, 'Saitama', 109, '', '', 1),
(1954, 'Shiga', 109, '', '', 1),
(1955, 'Shimane', 109, '', '', 1),
(1956, 'Shizuoka', 109, '', '', 1),
(1957, 'Tochigi', 109, '', '', 1),
(1958, 'Tokushima', 109, '', '', 1),
(1959, 'Tokyo', 109, '', '', 1),
(1960, 'Tottori', 109, '', '', 1),
(1961, 'Toyama', 109, '', '', 1),
(1962, 'Wakayama', 109, '', '', 1),
(1963, 'Yamagata', 109, '', '', 1),
(1964, 'Yamaguchi', 109, '', '', 1),
(1965, 'Yamanashi', 109, '', '', 1),
(1966, 'Grouville', 110, '', '', 1),
(1967, 'Saint Brelade', 110, '', '', 1),
(1968, 'Saint Clement', 110, '', '', 1),
(1969, 'Saint Helier', 110, '', '', 1),
(1970, 'Saint John', 110, '', '', 1),
(1971, 'Saint Lawrence', 110, '', '', 1),
(1972, 'Saint Martin', 110, '', '', 1),
(1973, 'Saint Mary', 110, '', '', 1),
(1974, 'Saint Peter', 110, '', '', 1),
(1975, 'Saint Saviour', 110, '', '', 1),
(1976, 'Trinity', 110, '', '', 1),
(1977, '\'Ajlun', 111, '', '', 1),
(1978, 'Amman', 111, '', '', 1),
(1979, 'Irbid', 111, '', '', 1),
(1980, 'Jarash', 111, '', '', 1),
(1981, 'Ma\'an', 111, '', '', 1),
(1982, 'Madaba', 111, '', '', 1),
(1983, 'al-\'Aqabah', 111, '', '', 1),
(1984, 'al-Balqa\'', 111, '', '', 1),
(1985, 'al-Karak', 111, '', '', 1),
(1986, 'al-Mafraq', 111, '', '', 1),
(1987, 'at-Tafilah', 111, '', '', 1),
(1988, 'az-Zarqa\'', 111, '', '', 1),
(1989, 'Akmecet', 112, '', '', 1),
(1990, 'Akmola', 112, '', '', 1),
(1991, 'Aktobe', 112, '', '', 1),
(1992, 'Almati', 112, '', '', 1),
(1993, 'Atirau', 112, '', '', 1),
(1994, 'Batis Kazakstan', 112, '', '', 1),
(1995, 'Burlinsky Region', 112, '', '', 1),
(1996, 'Karagandi', 112, '', '', 1),
(1997, 'Kostanay', 112, '', '', 1),
(1998, 'Mankistau', 112, '', '', 1),
(1999, 'Ontustik Kazakstan', 112, '', '', 1),
(2000, 'Pavlodar', 112, '', '', 1),
(2001, 'Sigis Kazakstan', 112, '', '', 1),
(2002, 'Soltustik Kazakstan', 112, '', '', 1),
(2003, 'Taraz', 112, '', '', 1),
(2004, 'Central', 113, '', '', 1),
(2005, 'Coast', 113, '', '', 1),
(2006, 'Eastern', 113, '', '', 1),
(2007, 'Nairobi', 113, '', '', 1),
(2008, 'North Eastern', 113, '', '', 1),
(2009, 'Nyanza', 113, '', '', 1),
(2010, 'Rift Valley', 113, '', '', 1),
(2011, 'Western', 113, '', '', 1),
(2012, 'Abaiang', 114, '', '', 1),
(2013, 'Abemana', 114, '', '', 1),
(2014, 'Aranuka', 114, '', '', 1),
(2015, 'Arorae', 114, '', '', 1),
(2016, 'Banaba', 114, '', '', 1),
(2017, 'Beru', 114, '', '', 1),
(2018, 'Butaritari', 114, '', '', 1),
(2019, 'Kiritimati', 114, '', '', 1),
(2020, 'Kuria', 114, '', '', 1),
(2021, 'Maiana', 114, '', '', 1),
(2022, 'Makin', 114, '', '', 1),
(2023, 'Marakei', 114, '', '', 1),
(2024, 'Nikunau', 114, '', '', 1),
(2025, 'Nonouti', 114, '', '', 1),
(2026, 'Onotoa', 114, '', '', 1),
(2027, 'Phoenix Islands', 114, '', '', 1),
(2028, 'Tabiteuea North', 114, '', '', 1),
(2029, 'Tabiteuea South', 114, '', '', 1),
(2030, 'Tabuaeran', 114, '', '', 1),
(2031, 'Tamana', 114, '', '', 1),
(2032, 'Tarawa North', 114, '', '', 1),
(2033, 'Tarawa South', 114, '', '', 1),
(2034, 'Teraina', 114, '', '', 1),
(2035, 'Chagangdo', 115, '', '', 1),
(2036, 'Hamgyeongbukto', 115, '', '', 1),
(2037, 'Hamgyeongnamdo', 115, '', '', 1),
(2038, 'Hwanghaebukto', 115, '', '', 1),
(2039, 'Hwanghaenamdo', 115, '', '', 1),
(2040, 'Kaeseong', 115, '', '', 1),
(2041, 'Kangweon', 115, '', '', 1),
(2042, 'Nampo', 115, '', '', 1),
(2043, 'Pyeonganbukto', 115, '', '', 1),
(2044, 'Pyeongannamdo', 115, '', '', 1),
(2045, 'Pyeongyang', 115, '', '', 1),
(2046, 'Yanggang', 115, '', '', 1),
(2047, 'Busan', 116, '', '', 1),
(2048, 'Cheju', 116, '', '', 1),
(2049, 'Chollabuk', 116, '', '', 1),
(2050, 'Chollanam', 116, '', '', 1),
(2051, 'Chungbuk', 116, '', '', 1),
(2052, 'Chungcheongbuk', 116, '', '', 1),
(2053, 'Chungcheongnam', 116, '', '', 1),
(2054, 'Chungnam', 116, '', '', 1),
(2055, 'Daegu', 116, '', '', 1),
(2056, 'Gangwon-do', 116, '', '', 1),
(2057, 'Goyang-si', 116, '', '', 1),
(2058, 'Gyeonggi-do', 116, '', '', 1),
(2059, 'Gyeongsang ', 116, '', '', 1),
(2060, 'Gyeongsangnam-do', 116, '', '', 1),
(2061, 'Incheon', 116, '', '', 1),
(2062, 'Jeju-Si', 116, '', '', 1),
(2063, 'Jeonbuk', 116, '', '', 1),
(2064, 'Kangweon', 116, '', '', 1),
(2065, 'Kwangju', 116, '', '', 1),
(2066, 'Kyeonggi', 116, '', '', 1),
(2067, 'Kyeongsangbuk', 116, '', '', 1),
(2068, 'Kyeongsangnam', 116, '', '', 1),
(2069, 'Kyonggi-do', 116, '', '', 1),
(2070, 'Kyungbuk-Do', 116, '', '', 1),
(2071, 'Kyunggi-Do', 116, '', '', 1),
(2072, 'Kyunggi-do', 116, '', '', 1),
(2073, 'Pusan', 116, '', '', 1),
(2074, 'Seoul', 116, '', '', 1),
(2075, 'Sudogwon', 116, '', '', 1),
(2076, 'Taegu', 116, '', '', 1),
(2077, 'Taejeon', 116, '', '', 1),
(2078, 'Taejon-gwangyoksi', 116, '', '', 1),
(2079, 'Ulsan', 116, '', '', 1),
(2080, 'Wonju', 116, '', '', 1),
(2081, 'gwangyoksi', 116, '', '', 1),
(2082, 'Al Asimah', 117, '', '', 1),
(2083, 'Hawalli', 117, '', '', 1),
(2084, 'Mishref', 117, '', '', 1),
(2085, 'Qadesiya', 117, '', '', 1),
(2086, 'Safat', 117, '', '', 1),
(2087, 'Salmiya', 117, '', '', 1),
(2088, 'al-Ahmadi', 117, '', '', 1),
(2089, 'al-Farwaniyah', 117, '', '', 1),
(2090, 'al-Jahra', 117, '', '', 1),
(2091, 'al-Kuwayt', 117, '', '', 1),
(2092, 'Batken', 118, '', '', 1),
(2093, 'Bishkek', 118, '', '', 1),
(2094, 'Chui', 118, '', '', 1),
(2095, 'Issyk-Kul', 118, '', '', 1),
(2096, 'Jalal-Abad', 118, '', '', 1),
(2097, 'Naryn', 118, '', '', 1),
(2098, 'Osh', 118, '', '', 1),
(2099, 'Talas', 118, '', '', 1),
(2100, 'Attopu', 119, '', '', 1),
(2101, 'Bokeo', 119, '', '', 1),
(2102, 'Bolikhamsay', 119, '', '', 1),
(2103, 'Champasak', 119, '', '', 1),
(2104, 'Houaphanh', 119, '', '', 1),
(2105, 'Khammouane', 119, '', '', 1),
(2106, 'Luang Nam Tha', 119, '', '', 1),
(2107, 'Luang Prabang', 119, '', '', 1),
(2108, 'Oudomxay', 119, '', '', 1),
(2109, 'Phongsaly', 119, '', '', 1),
(2110, 'Saravan', 119, '', '', 1),
(2111, 'Savannakhet', 119, '', '', 1),
(2112, 'Sekong', 119, '', '', 1),
(2113, 'Viangchan Prefecture', 119, '', '', 1),
(2114, 'Viangchan Province', 119, '', '', 1),
(2115, 'Xaignabury', 119, '', '', 1),
(2116, 'Xiang Khuang', 119, '', '', 1),
(2117, 'Aizkraukles', 120, '', '', 1),
(2118, 'Aluksnes', 120, '', '', 1),
(2119, 'Balvu', 120, '', '', 1),
(2120, 'Bauskas', 120, '', '', 1),
(2121, 'Cesu', 120, '', '', 1),
(2122, 'Daugavpils', 120, '', '', 1),
(2123, 'Daugavpils City', 120, '', '', 1),
(2124, 'Dobeles', 120, '', '', 1),
(2125, 'Gulbenes', 120, '', '', 1),
(2126, 'Jekabspils', 120, '', '', 1),
(2127, 'Jelgava', 120, '', '', 1),
(2128, 'Jelgavas', 120, '', '', 1),
(2129, 'Jurmala City', 120, '', '', 1),
(2130, 'Kraslavas', 120, '', '', 1),
(2131, 'Kuldigas', 120, '', '', 1),
(2132, 'Liepaja', 120, '', '', 1),
(2133, 'Liepajas', 120, '', '', 1),
(2134, 'Limbazhu', 120, '', '', 1),
(2135, 'Ludzas', 120, '', '', 1),
(2136, 'Madonas', 120, '', '', 1),
(2137, 'Ogres', 120, '', '', 1),
(2138, 'Preilu', 120, '', '', 1),
(2139, 'Rezekne', 120, '', '', 1),
(2140, 'Rezeknes', 120, '', '', 1),
(2141, 'Riga', 120, '', '', 1),
(2142, 'Rigas', 120, '', '', 1),
(2143, 'Saldus', 120, '', '', 1),
(2144, 'Talsu', 120, '', '', 1),
(2145, 'Tukuma', 120, '', '', 1),
(2146, 'Valkas', 120, '', '', 1),
(2147, 'Valmieras', 120, '', '', 1),
(2148, 'Ventspils', 120, '', '', 1),
(2149, 'Ventspils City', 120, '', '', 1),
(2150, 'Beirut', 121, '', '', 1),
(2151, 'Jabal Lubnan', 121, '', '', 1),
(2152, 'Mohafazat Liban-Nord', 121, '', '', 1),
(2153, 'Mohafazat Mont-Liban', 121, '', '', 1),
(2154, 'Sidon', 121, '', '', 1),
(2155, 'al-Biqa', 121, '', '', 1),
(2156, 'al-Janub', 121, '', '', 1),
(2157, 'an-Nabatiyah', 121, '', '', 1),
(2158, 'ash-Shamal', 121, '', '', 1),
(2159, 'Berea', 122, '', '', 1),
(2160, 'Butha-Buthe', 122, '', '', 1),
(2161, 'Leribe', 122, '', '', 1),
(2162, 'Mafeteng', 122, '', '', 1),
(2163, 'Maseru', 122, '', '', 1),
(2164, 'Mohale\'s Hoek', 122, '', '', 1),
(2165, 'Mokhotlong', 122, '', '', 1),
(2166, 'Qacha\'s Nek', 122, '', '', 1),
(2167, 'Quthing', 122, '', '', 1),
(2168, 'Thaba-Tseka', 122, '', '', 1),
(2169, 'Bomi', 123, '', '', 1),
(2170, 'Bong', 123, '', '', 1),
(2171, 'Grand Bassa', 123, '', '', 1),
(2172, 'Grand Cape Mount', 123, '', '', 1),
(2173, 'Grand Gedeh', 123, '', '', 1),
(2174, 'Loffa', 123, '', '', 1),
(2175, 'Margibi', 123, '', '', 1),
(2176, 'Maryland and Grand Kru', 123, '', '', 1),
(2177, 'Montserrado', 123, '', '', 1),
(2178, 'Nimba', 123, '', '', 1),
(2179, 'Rivercess', 123, '', '', 1),
(2180, 'Sinoe', 123, '', '', 1),
(2181, 'Ajdabiya', 124, '', '', 1),
(2182, 'Fezzan', 124, '', '', 1),
(2183, 'Banghazi', 124, '', '', 1),
(2184, 'Darnah', 124, '', '', 1),
(2185, 'Ghadamis', 124, '', '', 1),
(2186, 'Gharyan', 124, '', '', 1),
(2187, 'Misratah', 124, '', '', 1),
(2188, 'Murzuq', 124, '', '', 1),
(2189, 'Sabha', 124, '', '', 1),
(2190, 'Sawfajjin', 124, '', '', 1),
(2191, 'Surt', 124, '', '', 1),
(2192, 'Tarabulus', 124, '', '', 1),
(2193, 'Tarhunah', 124, '', '', 1),
(2194, 'Tripolitania', 124, '', '', 1),
(2195, 'Tubruq', 124, '', '', 1),
(2196, 'Yafran', 124, '', '', 1),
(2197, 'Zlitan', 124, '', '', 1),
(2198, 'al-\'Aziziyah', 124, '', '', 1),
(2199, 'al-Fatih', 124, '', '', 1),
(2200, 'al-Jabal al Akhdar', 124, '', '', 1),
(2201, 'al-Jufrah', 124, '', '', 1),
(2202, 'al-Khums', 124, '', '', 1),
(2203, 'al-Kufrah', 124, '', '', 1),
(2204, 'an-Nuqat al-Khams', 124, '', '', 1),
(2205, 'ash-Shati\'', 124, '', '', 1),
(2206, 'az-Zawiyah', 124, '', '', 1),
(2207, 'Balzers', 125, '', '', 1),
(2208, 'Eschen', 125, '', '', 1),
(2209, 'Gamprin', 125, '', '', 1),
(2210, 'Mauren', 125, '', '', 1),
(2211, 'Planken', 125, '', '', 1),
(2212, 'Ruggell', 125, '', '', 1),
(2213, 'Schaan', 125, '', '', 1),
(2214, 'Schellenberg', 125, '', '', 1),
(2215, 'Triesen', 125, '', '', 1),
(2216, 'Triesenberg', 125, '', '', 1),
(2217, 'Vaduz', 125, '', '', 1),
(2218, 'Alytaus', 126, '', '', 1),
(2219, 'Anyksciai', 126, '', '', 1),
(2220, 'Kauno', 126, '', '', 1),
(2221, 'Klaipedos', 126, '', '', 1),
(2222, 'Marijampoles', 126, '', '', 1),
(2223, 'Panevezhio', 126, '', '', 1),
(2224, 'Panevezys', 126, '', '', 1),
(2225, 'Shiauliu', 126, '', '', 1),
(2226, 'Taurages', 126, '', '', 1),
(2227, 'Telshiu', 126, '', '', 1),
(2228, 'Telsiai', 126, '', '', 1),
(2229, 'Utenos', 126, '', '', 1),
(2230, 'Vilniaus', 126, '', '', 1),
(2231, 'Capellen', 127, '', '', 1),
(2232, 'Clervaux', 127, '', '', 1),
(2233, 'Diekirch', 127, '', '', 1),
(2234, 'Echternach', 127, '', '', 1),
(2235, 'Esch-sur-Alzette', 127, '', '', 1),
(2236, 'Grevenmacher', 127, '', '', 1),
(2237, 'Luxembourg', 127, '', '', 1),
(2238, 'Mersch', 127, '', '', 1),
(2239, 'Redange', 127, '', '', 1),
(2240, 'Remich', 127, '', '', 1),
(2241, 'Vianden', 127, '', '', 1),
(2242, 'Wiltz', 127, '', '', 1),
(2243, 'Macau', 128, '', '', 1),
(2244, 'Berovo', 129, '', '', 1),
(2245, 'Bitola', 129, '', '', 1),
(2246, 'Brod', 129, '', '', 1),
(2247, 'Debar', 129, '', '', 1),
(2248, 'Delchevo', 129, '', '', 1),
(2249, 'Demir Hisar', 129, '', '', 1),
(2250, 'Gevgelija', 129, '', '', 1),
(2251, 'Gostivar', 129, '', '', 1),
(2252, 'Kavadarci', 129, '', '', 1),
(2253, 'Kichevo', 129, '', '', 1),
(2254, 'Kochani', 129, '', '', 1),
(2255, 'Kratovo', 129, '', '', 1),
(2256, 'Kriva Palanka', 129, '', '', 1),
(2257, 'Krushevo', 129, '', '', 1),
(2258, 'Kumanovo', 129, '', '', 1),
(2259, 'Negotino', 129, '', '', 1),
(2260, 'Ohrid', 129, '', '', 1),
(2261, 'Prilep', 129, '', '', 1),
(2262, 'Probishtip', 129, '', '', 1),
(2263, 'Radovish', 129, '', '', 1),
(2264, 'Resen', 129, '', '', 1),
(2265, 'Shtip', 129, '', '', 1),
(2266, 'Skopje', 129, '', '', 1),
(2267, 'Struga', 129, '', '', 1),
(2268, 'Strumica', 129, '', '', 1),
(2269, 'Sveti Nikole', 129, '', '', 1),
(2270, 'Tetovo', 129, '', '', 1),
(2271, 'Valandovo', 129, '', '', 1),
(2272, 'Veles', 129, '', '', 1),
(2273, 'Vinica', 129, '', '', 1),
(2274, 'Antananarivo', 130, '', '', 1),
(2275, 'Antsiranana', 130, '', '', 1),
(2276, 'Fianarantsoa', 130, '', '', 1),
(2277, 'Mahajanga', 130, '', '', 1),
(2278, 'Toamasina', 130, '', '', 1),
(2279, 'Toliary', 130, '', '', 1),
(2280, 'Balaka', 131, '', '', 1),
(2281, 'Blantyre City', 131, '', '', 1),
(2282, 'Chikwawa', 131, '', '', 1),
(2283, 'Chiradzulu', 131, '', '', 1),
(2284, 'Chitipa', 131, '', '', 1),
(2285, 'Dedza', 131, '', '', 1),
(2286, 'Dowa', 131, '', '', 1),
(2287, 'Karonga', 131, '', '', 1),
(2288, 'Kasungu', 131, '', '', 1),
(2289, 'Lilongwe City', 131, '', '', 1),
(2290, 'Machinga', 131, '', '', 1),
(2291, 'Mangochi', 131, '', '', 1),
(2292, 'Mchinji', 131, '', '', 1),
(2293, 'Mulanje', 131, '', '', 1),
(2294, 'Mwanza', 131, '', '', 1),
(2295, 'Mzimba', 131, '', '', 1),
(2296, 'Mzuzu City', 131, '', '', 1),
(2297, 'Nkhata Bay', 131, '', '', 1),
(2298, 'Nkhotakota', 131, '', '', 1),
(2299, 'Nsanje', 131, '', '', 1),
(2300, 'Ntcheu', 131, '', '', 1),
(2301, 'Ntchisi', 131, '', '', 1),
(2302, 'Phalombe', 131, '', '', 1),
(2303, 'Rumphi', 131, '', '', 1),
(2304, 'Salima', 131, '', '', 1),
(2305, 'Thyolo', 131, '', '', 1),
(2306, 'Zomba Municipality', 131, '', '', 1),
(2307, 'Johor', 132, '', '', 1),
(2308, 'Kedah', 132, '', '', 1),
(2309, 'Kelantan', 132, '', '', 1),
(2310, 'Kuala Lumpur', 132, '', '', 1),
(2311, 'Labuan', 132, '', '', 1),
(2312, 'Melaka', 132, '', '', 1),
(2313, 'Negeri Johor', 132, '', '', 1),
(2314, 'Negeri Sembilan', 132, '', '', 1),
(2315, 'Pahang', 132, '', '', 1),
(2316, 'Penang', 132, '', '', 1),
(2317, 'Perak', 132, '', '', 1),
(2318, 'Perlis', 132, '', '', 1),
(2319, 'Pulau Pinang', 132, '', '', 1),
(2320, 'Sabah', 132, '', '', 1),
(2321, 'Sarawak', 132, '', '', 1),
(2322, 'Selangor', 132, '', '', 1),
(2323, 'Sembilan', 132, '', '', 1),
(2324, 'Terengganu', 132, '', '', 1),
(2325, 'Alif Alif', 133, '', '', 1),
(2326, 'Alif Dhaal', 133, '', '', 1),
(2327, 'Baa', 133, '', '', 1),
(2328, 'Dhaal', 133, '', '', 1),
(2329, 'Faaf', 133, '', '', 1),
(2330, 'Gaaf Alif', 133, '', '', 1),
(2331, 'Gaaf Dhaal', 133, '', '', 1),
(2332, 'Ghaviyani', 133, '', '', 1),
(2333, 'Haa Alif', 133, '', '', 1),
(2334, 'Haa Dhaal', 133, '', '', 1),
(2335, 'Kaaf', 133, '', '', 1),
(2336, 'Laam', 133, '', '', 1),
(2337, 'Lhaviyani', 133, '', '', 1),
(2338, 'Male', 133, '', '', 1),
(2339, 'Miim', 133, '', '', 1),
(2340, 'Nuun', 133, '', '', 1),
(2341, 'Raa', 133, '', '', 1),
(2342, 'Shaviyani', 133, '', '', 1),
(2343, 'Siin', 133, '', '', 1),
(2344, 'Thaa', 133, '', '', 1),
(2345, 'Vaav', 133, '', '', 1),
(2346, 'Bamako', 134, '', '', 1),
(2347, 'Gao', 134, '', '', 1),
(2348, 'Kayes', 134, '', '', 1),
(2349, 'Kidal', 134, '', '', 1),
(2350, 'Koulikoro', 134, '', '', 1),
(2351, 'Mopti', 134, '', '', 1),
(2352, 'Segou', 134, '', '', 1),
(2353, 'Sikasso', 134, '', '', 1),
(2354, 'Tombouctou', 134, '', '', 1),
(2355, 'Gozo and Comino', 135, '', '', 1),
(2356, 'Inner Harbour', 135, '', '', 1),
(2357, 'Northern', 135, '', '', 1),
(2358, 'Outer Harbour', 135, '', '', 1),
(2359, 'South Eastern', 135, '', '', 1),
(2360, 'Valletta', 135, '', '', 1),
(2361, 'Western', 135, '', '', 1),
(2362, 'Castletown', 136, '', '', 1),
(2363, 'Douglas', 136, '', '', 1),
(2364, 'Laxey', 136, '', '', 1),
(2365, 'Onchan', 136, '', '', 1),
(2366, 'Peel', 136, '', '', 1),
(2367, 'Port Erin', 136, '', '', 1),
(2368, 'Port Saint Mary', 136, '', '', 1),
(2369, 'Ramsey', 136, '', '', 1),
(2370, 'Ailinlaplap', 137, '', '', 1),
(2371, 'Ailuk', 137, '', '', 1),
(2372, 'Arno', 137, '', '', 1),
(2373, 'Aur', 137, '', '', 1),
(2374, 'Bikini', 137, '', '', 1),
(2375, 'Ebon', 137, '', '', 1),
(2376, 'Enewetak', 137, '', '', 1),
(2377, 'Jabat', 137, '', '', 1),
(2378, 'Jaluit', 137, '', '', 1),
(2379, 'Kili', 137, '', '', 1),
(2380, 'Kwajalein', 137, '', '', 1),
(2381, 'Lae', 137, '', '', 1),
(2382, 'Lib', 137, '', '', 1),
(2383, 'Likiep', 137, '', '', 1),
(2384, 'Majuro', 137, '', '', 1),
(2385, 'Maloelap', 137, '', '', 1),
(2386, 'Mejit', 137, '', '', 1),
(2387, 'Mili', 137, '', '', 1),
(2388, 'Namorik', 137, '', '', 1),
(2389, 'Namu', 137, '', '', 1),
(2390, 'Rongelap', 137, '', '', 1),
(2391, 'Ujae', 137, '', '', 1),
(2392, 'Utrik', 137, '', '', 1),
(2393, 'Wotho', 137, '', '', 1),
(2394, 'Wotje', 137, '', '', 1),
(2395, 'Fort-de-France', 138, '', '', 1),
(2396, 'La Trinite', 138, '', '', 1),
(2397, 'Le Marin', 138, '', '', 1),
(2398, 'Saint-Pierre', 138, '', '', 1),
(2399, 'Adrar', 139, '', '', 1),
(2400, 'Assaba', 139, '', '', 1),
(2401, 'Brakna', 139, '', '', 1),
(2402, 'Dhakhlat Nawadibu', 139, '', '', 1),
(2403, 'Hudh-al-Gharbi', 139, '', '', 1),
(2404, 'Hudh-ash-Sharqi', 139, '', '', 1),
(2405, 'Inshiri', 139, '', '', 1),
(2406, 'Nawakshut', 139, '', '', 1),
(2407, 'Qidimagha', 139, '', '', 1),
(2408, 'Qurqul', 139, '', '', 1),
(2409, 'Taqant', 139, '', '', 1),
(2410, 'Tiris Zammur', 139, '', '', 1),
(2411, 'Trarza', 139, '', '', 1),
(2412, 'Black River', 140, '', '', 1),
(2413, 'Eau Coulee', 140, '', '', 1),
(2414, 'Flacq', 140, '', '', 1),
(2415, 'Floreal', 140, '', '', 1),
(2416, 'Grand Port', 140, '', '', 1),
(2417, 'Moka', 140, '', '', 1),
(2418, 'Pamplempousses', 140, '', '', 1),
(2419, 'Plaines Wilhelm', 140, '', '', 1),
(2420, 'Port Louis', 140, '', '', 1),
(2421, 'Riviere du Rempart', 140, '', '', 1),
(2422, 'Rodrigues', 140, '', '', 1),
(2423, 'Rose Hill', 140, '', '', 1),
(2424, 'Savanne', 140, '', '', 1),
(2425, 'Mayotte', 141, '', '', 1),
(2426, 'Pamanzi', 141, '', '', 1),
(2427, 'Aguascalientes', 142, '', '', 1),
(2428, 'Baja California', 142, '', '', 1),
(2429, 'Baja California Sur', 142, '', '', 1),
(2430, 'Campeche', 142, '', '', 1),
(2431, 'Chiapas', 142, '', '', 1),
(2432, 'Chihuahua', 142, '', '', 1),
(2433, 'Coahuila', 142, '', '', 1),
(2434, 'Colima', 142, '', '', 1),
(2435, 'Distrito Federal', 142, '', '', 1),
(2436, 'Durango', 142, '', '', 1),
(2437, 'Estado de Mexico', 142, '', '', 1),
(2438, 'Guanajuato', 142, '', '', 1),
(2439, 'Guerrero', 142, '', '', 1),
(2440, 'Hidalgo', 142, '', '', 1),
(2441, 'Jalisco', 142, '', '', 1),
(2442, 'Mexico', 142, '', '', 1),
(2443, 'Michoacan', 142, '', '', 1),
(2444, 'Morelos', 142, '', '', 1),
(2445, 'Nayarit', 142, '', '', 1),
(2446, 'Nuevo Leon', 142, '', '', 1),
(2447, 'Oaxaca', 142, '', '', 1),
(2448, 'Puebla', 142, '', '', 1),
(2449, 'Queretaro', 142, '', '', 1),
(2450, 'Quintana Roo', 142, '', '', 1),
(2451, 'San Luis Potosi', 142, '', '', 1),
(2452, 'Sinaloa', 142, '', '', 1),
(2453, 'Sonora', 142, '', '', 1),
(2454, 'Tabasco', 142, '', '', 1),
(2455, 'Tamaulipas', 142, '', '', 1),
(2456, 'Tlaxcala', 142, '', '', 1),
(2457, 'Veracruz', 142, '', '', 1),
(2458, 'Yucatan', 142, '', '', 1),
(2459, 'Zacatecas', 142, '', '', 1),
(2460, 'Chuuk', 143, '', '', 1),
(2461, 'Kusaie', 143, '', '', 1),
(2462, 'Pohnpei', 143, '', '', 1),
(2463, 'Yap', 143, '', '', 1),
(2464, 'Balti', 144, '', '', 1),
(2465, 'Cahul', 144, '', '', 1),
(2466, 'Chisinau', 144, '', '', 1),
(2467, 'Chisinau Oras', 144, '', '', 1),
(2468, 'Edinet', 144, '', '', 1),
(2469, 'Gagauzia', 144, '', '', 1),
(2470, 'Lapusna', 144, '', '', 1),
(2471, 'Orhei', 144, '', '', 1),
(2472, 'Soroca', 144, '', '', 1),
(2473, 'Taraclia', 144, '', '', 1),
(2474, 'Tighina', 144, '', '', 1),
(2475, 'Transnistria', 144, '', '', 1),
(2476, 'Ungheni', 144, '', '', 1),
(2477, 'Fontvieille', 145, '', '', 1),
(2478, 'La Condamine', 145, '', '', 1),
(2479, 'Monaco-Ville', 145, '', '', 1),
(2480, 'Monte Carlo', 145, '', '', 1),
(2481, 'Arhangaj', 146, '', '', 1),
(2482, 'Bajan-Olgij', 146, '', '', 1),
(2483, 'Bajanhongor', 146, '', '', 1),
(2484, 'Bulgan', 146, '', '', 1),
(2485, 'Darhan-Uul', 146, '', '', 1),
(2486, 'Dornod', 146, '', '', 1),
(2487, 'Dornogovi', 146, '', '', 1),
(2488, 'Dundgovi', 146, '', '', 1),
(2489, 'Govi-Altaj', 146, '', '', 1),
(2490, 'Govisumber', 146, '', '', 1),
(2491, 'Hentij', 146, '', '', 1),
(2492, 'Hovd', 146, '', '', 1),
(2493, 'Hovsgol', 146, '', '', 1),
(2494, 'Omnogovi', 146, '', '', 1),
(2495, 'Orhon', 146, '', '', 1),
(2496, 'Ovorhangaj', 146, '', '', 1),
(2497, 'Selenge', 146, '', '', 1),
(2498, 'Suhbaatar', 146, '', '', 1),
(2499, 'Tov', 146, '', '', 1),
(2500, 'Ulaanbaatar', 146, '', '', 1),
(2501, 'Uvs', 146, '', '', 1),
(2502, 'Zavhan', 146, '', '', 1),
(2503, 'Montserrat', 147, '', '', 1),
(2504, 'Agadir', 148, '', '', 1),
(2505, 'Casablanca', 148, '', '', 1),
(2506, 'Chaouia-Ouardigha', 148, '', '', 1),
(2507, 'Doukkala-Abda', 148, '', '', 1),
(2508, 'Fes-Boulemane', 148, '', '', 1),
(2509, 'Gharb-Chrarda-Beni Hssen', 148, '', '', 1),
(2510, 'Guelmim', 148, '', '', 1),
(2511, 'Kenitra', 148, '', '', 1),
(2512, 'Marrakech-Tensift-Al Haouz', 148, '', '', 1),
(2513, 'Meknes-Tafilalet', 148, '', '', 1),
(2514, 'Oriental', 148, '', '', 1),
(2515, 'Oujda', 148, '', '', 1),
(2516, 'Province de Tanger', 148, '', '', 1),
(2517, 'Rabat-Sale-Zammour-Zaer', 148, '', '', 1),
(2518, 'Sala Al Jadida', 148, '', '', 1),
(2519, 'Settat', 148, '', '', 1),
(2520, 'Souss Massa-Draa', 148, '', '', 1),
(2521, 'Tadla-Azilal', 148, '', '', 1),
(2522, 'Tangier-Tetouan', 148, '', '', 1),
(2523, 'Taza-Al Hoceima-Taounate', 148, '', '', 1),
(2524, 'Wilaya de Casablanca', 148, '', '', 1),
(2525, 'Wilaya de Rabat-Sale', 148, '', '', 1),
(2526, 'Cabo Delgado', 149, '', '', 1),
(2527, 'Gaza', 149, '', '', 1),
(2528, 'Inhambane', 149, '', '', 1),
(2529, 'Manica', 149, '', '', 1),
(2530, 'Maputo', 149, '', '', 1),
(2531, 'Maputo Provincia', 149, '', '', 1),
(2532, 'Nampula', 149, '', '', 1),
(2533, 'Niassa', 149, '', '', 1),
(2534, 'Sofala', 149, '', '', 1),
(2535, 'Tete', 149, '', '', 1),
(2536, 'Zambezia', 149, '', '', 1),
(2537, 'Ayeyarwady', 150, '', '', 1),
(2538, 'Bago', 150, '', '', 1),
(2539, 'Chin', 150, '', '', 1),
(2540, 'Kachin', 150, '', '', 1),
(2541, 'Kayah', 150, '', '', 1),
(2542, 'Kayin', 150, '', '', 1),
(2543, 'Magway', 150, '', '', 1),
(2544, 'Mandalay', 150, '', '', 1),
(2545, 'Mon', 150, '', '', 1),
(2546, 'Nay Pyi Taw', 150, '', '', 1),
(2547, 'Rakhine', 150, '', '', 1),
(2548, 'Sagaing', 150, '', '', 1),
(2549, 'Shan', 150, '', '', 1),
(2550, 'Tanintharyi', 150, '', '', 1),
(2551, 'Yangon', 150, '', '', 1),
(2552, 'Caprivi', 151, '', '', 1),
(2553, 'Erongo', 151, '', '', 1),
(2554, 'Hardap', 151, '', '', 1),
(2555, 'Karas', 151, '', '', 1),
(2556, 'Kavango', 151, '', '', 1),
(2557, 'Khomas', 151, '', '', 1),
(2558, 'Kunene', 151, '', '', 1),
(2559, 'Ohangwena', 151, '', '', 1),
(2560, 'Omaheke', 151, '', '', 1),
(2561, 'Omusati', 151, '', '', 1),
(2562, 'Oshana', 151, '', '', 1),
(2563, 'Oshikoto', 151, '', '', 1),
(2564, 'Otjozondjupa', 151, '', '', 1),
(2565, 'Yaren', 152, '', '', 1),
(2566, 'Bagmati', 153, '', '', 1),
(2567, 'Bheri', 153, '', '', 1),
(2568, 'Dhawalagiri', 153, '', '', 1),
(2569, 'Gandaki', 153, '', '', 1),
(2570, 'Janakpur', 153, '', '', 1),
(2571, 'Karnali', 153, '', '', 1),
(2572, 'Koshi', 153, '', '', 1),
(2573, 'Lumbini', 153, '', '', 1),
(2574, 'Mahakali', 153, '', '', 1),
(2575, 'Mechi', 153, '', '', 1),
(2576, 'Narayani', 153, '', '', 1),
(2577, 'Rapti', 153, '', '', 1),
(2578, 'Sagarmatha', 153, '', '', 1),
(2579, 'Seti', 153, '', '', 1),
(2580, 'Bonaire', 154, '', '', 1),
(2581, 'Curacao', 154, '', '', 1),
(2582, 'Saba', 154, '', '', 1),
(2583, 'Sint Eustatius', 154, '', '', 1),
(2584, 'Sint Maarten', 154, '', '', 1),
(2585, 'Amsterdam', 155, '', '', 1),
(2586, 'Benelux', 155, '', '', 1),
(2587, 'Drenthe', 155, '', '', 1),
(2588, 'Flevoland', 155, '', '', 1),
(2589, 'Friesland', 155, '', '', 1),
(2590, 'Gelderland', 155, '', '', 1),
(2591, 'Groningen', 155, '', '', 1),
(2592, 'Limburg', 155, '', '', 1),
(2593, 'Noord-Brabant', 155, '', '', 1),
(2594, 'Noord-Holland', 155, '', '', 1),
(2595, 'Overijssel', 155, '', '', 1),
(2596, 'South Holland', 155, '', '', 1),
(2597, 'Utrecht', 155, '', '', 1),
(2598, 'Zeeland', 155, '', '', 1),
(2599, 'Zuid-Holland', 155, '', '', 1),
(2600, 'Iles', 156, '', '', 1),
(2601, 'Nord', 156, '', '', 1),
(2602, 'Sud', 156, '', '', 1),
(2603, 'Area Outside Region', 157, '', '', 1),
(2604, 'Auckland', 157, '', '', 1),
(2605, 'Bay of Plenty', 157, '', '', 1),
(2606, 'Canterbury', 157, '', '', 1),
(2607, 'Christchurch', 157, '', '', 1),
(2608, 'Gisborne', 157, '', '', 1),
(2609, 'Hawke\'s Bay', 157, '', '', 1),
(2610, 'Manawatu-Wanganui', 157, '', '', 1),
(2611, 'Marlborough', 157, '', '', 1),
(2612, 'Nelson', 157, '', '', 1),
(2613, 'Northland', 157, '', '', 1),
(2614, 'Otago', 157, '', '', 1),
(2615, 'Rodney', 157, '', '', 1),
(2616, 'Southland', 157, '', '', 1),
(2617, 'Taranaki', 157, '', '', 1),
(2618, 'Tasman', 157, '', '', 1),
(2619, 'Waikato', 157, '', '', 1),
(2620, 'Wellington', 157, '', '', 1),
(2621, 'West Coast', 157, '', '', 1),
(2622, 'Atlantico Norte', 158, '', '', 1),
(2623, 'Atlantico Sur', 158, '', '', 1),
(2624, 'Boaco', 158, '', '', 1),
(2625, 'Carazo', 158, '', '', 1),
(2626, 'Chinandega', 158, '', '', 1),
(2627, 'Chontales', 158, '', '', 1),
(2628, 'Esteli', 158, '', '', 1),
(2629, 'Granada', 158, '', '', 1),
(2630, 'Jinotega', 158, '', '', 1),
(2631, 'Leon', 158, '', '', 1),
(2632, 'Madriz', 158, '', '', 1),
(2633, 'Managua', 158, '', '', 1),
(2634, 'Masaya', 158, '', '', 1),
(2635, 'Matagalpa', 158, '', '', 1),
(2636, 'Nueva Segovia', 158, '', '', 1),
(2637, 'Rio San Juan', 158, '', '', 1),
(2638, 'Rivas', 158, '', '', 1),
(2639, 'Agadez', 159, '', '', 1),
(2640, 'Diffa', 159, '', '', 1),
(2641, 'Dosso', 159, '', '', 1),
(2642, 'Maradi', 159, '', '', 1),
(2643, 'Niamey', 159, '', '', 1),
(2644, 'Tahoua', 159, '', '', 1),
(2645, 'Tillabery', 159, '', '', 1),
(2646, 'Zinder', 159, '', '', 1),
(2647, 'Abia', 160, '', '', 1),
(2648, 'Abuja Federal Capital Territor', 160, '', '', 1),
(2649, 'Adamawa', 160, '', '', 1),
(2650, 'Akwa Ibom', 160, '', '', 1),
(2651, 'Anambra', 160, '', '', 1),
(2652, 'Bauchi', 160, '', '', 1),
(2653, 'Bayelsa', 160, '', '', 1),
(2654, 'Benue', 160, '', '', 1),
(2655, 'Borno', 160, '', '', 1),
(2656, 'Cross River', 160, '', '', 1),
(2657, 'Delta', 160, '', '', 1),
(2658, 'Ebonyi', 160, '', '', 1),
(2659, 'Edo', 160, '', '', 1),
(2660, 'Ekiti', 160, '', '', 1),
(2661, 'Enugu', 160, '', '', 1),
(2662, 'Gombe', 160, '', '', 1),
(2663, 'Imo', 160, '', '', 1),
(2664, 'Jigawa', 160, '', '', 1),
(2665, 'Kaduna', 160, '', '', 1),
(2666, 'Kano', 160, '', '', 1),
(2667, 'Katsina', 160, '', '', 1),
(2668, 'Kebbi', 160, '', '', 1),
(2669, 'Kogi', 160, '', '', 1),
(2670, 'Kwara', 160, '', '', 1),
(2671, 'Lagos', 160, '', '', 1),
(2672, 'Nassarawa', 160, '', '', 1),
(2673, 'Niger', 160, '', '', 1),
(2674, 'Ogun', 160, '', '', 1),
(2675, 'Ondo', 160, '', '', 1),
(2676, 'Osun', 160, '', '', 1),
(2677, 'Oyo', 160, '', '', 1),
(2678, 'Plateau', 160, '', '', 1),
(2679, 'Rivers', 160, '', '', 1),
(2680, 'Sokoto', 160, '', '', 1),
(2681, 'Taraba', 160, '', '', 1),
(2682, 'Yobe', 160, '', '', 1),
(2683, 'Zamfara', 160, '', '', 1),
(2684, 'Niue', 161, '', '', 1),
(2685, 'Norfolk Island', 162, '', '', 1),
(2686, 'Northern Islands', 163, '', '', 1),
(2687, 'Rota', 163, '', '', 1),
(2688, 'Saipan', 163, '', '', 1),
(2689, 'Tinian', 163, '', '', 1),
(2690, 'Akershus', 164, '', '', 1),
(2691, 'Aust Agder', 164, '', '', 1),
(2692, 'Bergen', 164, '', '', 1),
(2693, 'Buskerud', 164, '', '', 1),
(2694, 'Finnmark', 164, '', '', 1),
(2695, 'Hedmark', 164, '', '', 1),
(2696, 'Hordaland', 164, '', '', 1),
(2697, 'Moere og Romsdal', 164, '', '', 1),
(2698, 'Nord Trondelag', 164, '', '', 1),
(2699, 'Nordland', 164, '', '', 1),
(2700, 'Oestfold', 164, '', '', 1),
(2701, 'Oppland', 164, '', '', 1),
(2702, 'Oslo', 164, '', '', 1),
(2703, 'Rogaland', 164, '', '', 1),
(2704, 'Soer Troendelag', 164, '', '', 1),
(2705, 'Sogn og Fjordane', 164, '', '', 1),
(2706, 'Stavern', 164, '', '', 1),
(2707, 'Sykkylven', 164, '', '', 1),
(2708, 'Telemark', 164, '', '', 1),
(2709, 'Troms', 164, '', '', 1),
(2710, 'Vest Agder', 164, '', '', 1),
(2711, 'Vestfold', 164, '', '', 1),
(2712, 'ÃƒÂ˜stfold', 164, '', '', 1),
(2713, 'Al Buraimi', 165, '', '', 1),
(2714, 'Dhufar', 165, '', '', 1),
(2715, 'Masqat', 165, '', '', 1),
(2716, 'Musandam', 165, '', '', 1),
(2717, 'Rusayl', 165, '', '', 1),
(2718, 'Wadi Kabir', 165, '', '', 1),
(2719, 'ad-Dakhiliyah', 165, '', '', 1),
(2720, 'adh-Dhahirah', 165, '', '', 1),
(2721, 'al-Batinah', 165, '', '', 1),
(2722, 'ash-Sharqiyah', 165, '', '', 1),
(2723, 'Baluchistan', 166, '', '', 1),
(2724, 'Federal Capital Area', 166, '', '', 1),
(2725, 'Federally administered Tribal ', 166, '', '', 1),
(2726, 'North-West Frontier', 166, '', '', 1),
(2727, 'Northern Areas', 166, '', '', 1),
(2728, 'Punjab', 166, '', '', 1),
(2729, 'Sind', 166, '', '', 1),
(2730, 'Aimeliik', 167, '', '', 1),
(2731, 'Airai', 167, '', '', 1),
(2732, 'Angaur', 167, '', '', 1),
(2733, 'Hatobohei', 167, '', '', 1),
(2734, 'Kayangel', 167, '', '', 1),
(2735, 'Koror', 167, '', '', 1),
(2736, 'Melekeok', 167, '', '', 1),
(2737, 'Ngaraard', 167, '', '', 1),
(2738, 'Ngardmau', 167, '', '', 1),
(2739, 'Ngaremlengui', 167, '', '', 1),
(2740, 'Ngatpang', 167, '', '', 1),
(2741, 'Ngchesar', 167, '', '', 1),
(2742, 'Ngerchelong', 167, '', '', 1),
(2743, 'Ngiwal', 167, '', '', 1),
(2744, 'Peleliu', 167, '', '', 1),
(2745, 'Sonsorol', 167, '', '', 1),
(2746, 'Ariha', 168, '', '', 1),
(2747, 'Bayt Lahm', 168, '', '', 1),
(2748, 'Bethlehem', 168, '', '', 1),
(2749, 'Dayr-al-Balah', 168, '', '', 1),
(2750, 'Ghazzah', 168, '', '', 1),
(2751, 'Ghazzah ash-Shamaliyah', 168, '', '', 1),
(2752, 'Janin', 168, '', '', 1),
(2753, 'Khan Yunis', 168, '', '', 1),
(2754, 'Nabulus', 168, '', '', 1),
(2755, 'Qalqilyah', 168, '', '', 1),
(2756, 'Rafah', 168, '', '', 1),
(2757, 'Ram Allah wal-Birah', 168, '', '', 1),
(2758, 'Salfit', 168, '', '', 1),
(2759, 'Tubas', 168, '', '', 1),
(2760, 'Tulkarm', 168, '', '', 1),
(2761, 'al-Khalil', 168, '', '', 1),
(2762, 'al-Quds', 168, '', '', 1),
(2763, 'Bocas del Toro', 169, '', '', 1),
(2764, 'Chiriqui', 169, '', '', 1),
(2765, 'Cocle', 169, '', '', 1),
(2766, 'Colon', 169, '', '', 1),
(2767, 'Darien', 169, '', '', 1),
(2768, 'Embera', 169, '', '', 1),
(2769, 'Herrera', 169, '', '', 1),
(2770, 'Kuna Yala', 169, '', '', 1),
(2771, 'Los Santos', 169, '', '', 1),
(2772, 'Ngobe Bugle', 169, '', '', 1),
(2773, 'Panama', 169, '', '', 1),
(2774, 'Veraguas', 169, '', '', 1),
(2775, 'East New Britain', 170, '', '', 1),
(2776, 'East Sepik', 170, '', '', 1),
(2777, 'Eastern Highlands', 170, '', '', 1),
(2778, 'Enga', 170, '', '', 1),
(2779, 'Fly River', 170, '', '', 1),
(2780, 'Gulf', 170, '', '', 1),
(2781, 'Madang', 170, '', '', 1),
(2782, 'Manus', 170, '', '', 1),
(2783, 'Milne Bay', 170, '', '', 1),
(2784, 'Morobe', 170, '', '', 1),
(2785, 'National Capital District', 170, '', '', 1),
(2786, 'New Ireland', 170, '', '', 1),
(2787, 'North Solomons', 170, '', '', 1),
(2788, 'Oro', 170, '', '', 1),
(2789, 'Sandaun', 170, '', '', 1),
(2790, 'Simbu', 170, '', '', 1),
(2791, 'Southern Highlands', 170, '', '', 1),
(2792, 'West New Britain', 170, '', '', 1),
(2793, 'Western Highlands', 170, '', '', 1),
(2794, 'Alto Paraguay', 171, '', '', 1),
(2795, 'Alto Parana', 171, '', '', 1),
(2796, 'Amambay', 171, '', '', 1),
(2797, 'Asuncion', 171, '', '', 1),
(2798, 'Boqueron', 171, '', '', 1),
(2799, 'Caaguazu', 171, '', '', 1),
(2800, 'Caazapa', 171, '', '', 1),
(2801, 'Canendiyu', 171, '', '', 1),
(2802, 'Central', 171, '', '', 1),
(2803, 'Concepcion', 171, '', '', 1),
(2804, 'Cordillera', 171, '', '', 1),
(2805, 'Guaira', 171, '', '', 1),
(2806, 'Itapua', 171, '', '', 1),
(2807, 'Misiones', 171, '', '', 1),
(2808, 'Neembucu', 171, '', '', 1),
(2809, 'Paraguari', 171, '', '', 1),
(2810, 'Presidente Hayes', 171, '', '', 1),
(2811, 'San Pedro', 171, '', '', 1),
(2812, 'Amazonas', 172, '', '', 1),
(2813, 'Ancash', 172, '', '', 1),
(2814, 'Apurimac', 172, '', '', 1),
(2815, 'Arequipa', 172, '', '', 1),
(2816, 'Ayacucho', 172, '', '', 1),
(2817, 'Cajamarca', 172, '', '', 1),
(2818, 'Cusco', 172, '', '', 1),
(2819, 'Huancavelica', 172, '', '', 1),
(2820, 'Huanuco', 172, '', '', 1),
(2821, 'Ica', 172, '', '', 1),
(2822, 'Junin', 172, '', '', 1),
(2823, 'La Libertad', 172, '', '', 1),
(2824, 'Lambayeque', 172, '', '', 1),
(2825, 'Lima y Callao', 172, '', '', 1),
(2826, 'Loreto', 172, '', '', 1),
(2827, 'Madre de Dios', 172, '', '', 1),
(2828, 'Moquegua', 172, '', '', 1),
(2829, 'Pasco', 172, '', '', 1),
(2830, 'Piura', 172, '', '', 1),
(2831, 'Puno', 172, '', '', 1),
(2832, 'San Martin', 172, '', '', 1),
(2833, 'Tacna', 172, '', '', 1),
(2834, 'Tumbes', 172, '', '', 1),
(2835, 'Ucayali', 172, '', '', 1),
(2836, 'Batangas', 173, '', '', 1),
(2837, 'Bicol', 173, '', '', 1),
(2838, 'Bulacan', 173, '', '', 1),
(2839, 'Cagayan', 173, '', '', 1),
(2840, 'Caraga', 173, '', '', 1),
(2841, 'Central Luzon', 173, '', '', 1),
(2842, 'Central Mindanao', 173, '', '', 1),
(2843, 'Central Visayas', 173, '', '', 1),
(2844, 'Cordillera', 173, '', '', 1),
(2845, 'Davao', 173, '', '', 1),
(2846, 'Eastern Visayas', 173, '', '', 1),
(2847, 'Greater Metropolitan Area', 173, '', '', 1),
(2848, 'Ilocos', 173, '', '', 1),
(2849, 'Laguna', 173, '', '', 1),
(2850, 'Luzon', 173, '', '', 1),
(2851, 'Mactan', 173, '', '', 1),
(2852, 'Metropolitan Manila Area', 173, '', '', 1),
(2853, 'Muslim Mindanao', 173, '', '', 1),
(2854, 'Northern Mindanao', 173, '', '', 1),
(2855, 'Southern Mindanao', 173, '', '', 1),
(2856, 'Southern Tagalog', 173, '', '', 1),
(2857, 'Western Mindanao', 173, '', '', 1),
(2858, 'Western Visayas', 173, '', '', 1),
(2859, 'Pitcairn Island', 174, '', '', 1),
(2860, 'Biale Blota', 175, '', '', 1),
(2861, 'Dobroszyce', 175, '', '', 1),
(2862, 'Dolnoslaskie', 175, '', '', 1),
(2863, 'Dziekanow Lesny', 175, '', '', 1),
(2864, 'Hopowo', 175, '', '', 1),
(2865, 'Kartuzy', 175, '', '', 1),
(2866, 'Koscian', 175, '', '', 1),
(2867, 'Krakow', 175, '', '', 1),
(2868, 'Kujawsko-Pomorskie', 175, '', '', 1),
(2869, 'Lodzkie', 175, '', '', 1),
(2870, 'Lubelskie', 175, '', '', 1),
(2871, 'Lubuskie', 175, '', '', 1),
(2872, 'Malomice', 175, '', '', 1),
(2873, 'Malopolskie', 175, '', '', 1),
(2874, 'Mazowieckie', 175, '', '', 1),
(2875, 'Mirkow', 175, '', '', 1),
(2876, 'Opolskie', 175, '', '', 1),
(2877, 'Ostrowiec', 175, '', '', 1),
(2878, 'Podkarpackie', 175, '', '', 1),
(2879, 'Podlaskie', 175, '', '', 1),
(2880, 'Polska', 175, '', '', 1),
(2881, 'Pomorskie', 175, '', '', 1),
(2882, 'Poznan', 175, '', '', 1),
(2883, 'Pruszkow', 175, '', '', 1),
(2884, 'Rymanowska', 175, '', '', 1),
(2885, 'Rzeszow', 175, '', '', 1),
(2886, 'Slaskie', 175, '', '', 1),
(2887, 'Stare Pole', 175, '', '', 1),
(2888, 'Swietokrzyskie', 175, '', '', 1),
(2889, 'Warminsko-Mazurskie', 175, '', '', 1),
(2890, 'Warsaw', 175, '', '', 1),
(2891, 'Wejherowo', 175, '', '', 1),
(2892, 'Wielkopolskie', 175, '', '', 1),
(2893, 'Wroclaw', 175, '', '', 1),
(2894, 'Zachodnio-Pomorskie', 175, '', '', 1),
(2895, 'Zukowo', 175, '', '', 1),
(2896, 'Abrantes', 176, '', '', 1),
(2897, 'Acores', 176, '', '', 1),
(2898, 'Alentejo', 176, '', '', 1),
(2899, 'Algarve', 176, '', '', 1),
(2900, 'Braga', 176, '', '', 1),
(2901, 'Centro', 176, '', '', 1),
(2902, 'Distrito de Leiria', 176, '', '', 1),
(2903, 'Distrito de Viana do Castelo', 176, '', '', 1),
(2904, 'Distrito de Vila Real', 176, '', '', 1),
(2905, 'Distrito do Porto', 176, '', '', 1),
(2906, 'Lisboa e Vale do Tejo', 176, '', '', 1),
(2907, 'Madeira', 176, '', '', 1),
(2908, 'Norte', 176, '', '', 1),
(2909, 'Paivas', 176, '', '', 1),
(2910, 'Arecibo', 177, '', '', 1),
(2911, 'Bayamon', 177, '', '', 1),
(2912, 'Carolina', 177, '', '', 1),
(2913, 'Florida', 177, '', '', 1),
(2914, 'Guayama', 177, '', '', 1),
(2915, 'Humacao', 177, '', '', 1),
(2916, 'Mayaguez-Aguadilla', 177, '', '', 1),
(2917, 'Ponce', 177, '', '', 1),
(2918, 'Salinas', 177, '', '', 1),
(2919, 'San Juan', 177, '', '', 1),
(2920, 'Doha', 178, '', '', 1),
(2921, 'Jarian-al-Batnah', 178, '', '', 1),
(2922, 'Umm Salal', 178, '', '', 1),
(2923, 'ad-Dawhah', 178, '', '', 1),
(2924, 'al-Ghuwayriyah', 178, '', '', 1),
(2925, 'al-Jumayliyah', 178, '', '', 1),
(2926, 'al-Khawr', 178, '', '', 1),
(2927, 'al-Wakrah', 178, '', '', 1),
(2928, 'ar-Rayyan', 178, '', '', 1),
(2929, 'ash-Shamal', 178, '', '', 1);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`, `status`) VALUES
(2930, 'Saint-Benoit', 179, '', '', 1),
(2931, 'Saint-Denis', 179, '', '', 1),
(2932, 'Saint-Paul', 179, '', '', 1),
(2933, 'Saint-Pierre', 179, '', '', 1),
(2934, 'Alba', 180, '', '', 1),
(2935, 'Arad', 180, '', '', 1),
(2936, 'Arges', 180, '', '', 1),
(2937, 'Bacau', 180, '', '', 1),
(2938, 'Bihor', 180, '', '', 1),
(2939, 'Bistrita-Nasaud', 180, '', '', 1),
(2940, 'Botosani', 180, '', '', 1),
(2941, 'Braila', 180, '', '', 1),
(2942, 'Brasov', 180, '', '', 1),
(2943, 'Bucuresti', 180, '', '', 1),
(2944, 'Buzau', 180, '', '', 1),
(2945, 'Calarasi', 180, '', '', 1),
(2946, 'Caras-Severin', 180, '', '', 1),
(2947, 'Cluj', 180, '', '', 1),
(2948, 'Constanta', 180, '', '', 1),
(2949, 'Covasna', 180, '', '', 1),
(2950, 'Dambovita', 180, '', '', 1),
(2951, 'Dolj', 180, '', '', 1),
(2952, 'Galati', 180, '', '', 1),
(2953, 'Giurgiu', 180, '', '', 1),
(2954, 'Gorj', 180, '', '', 1),
(2955, 'Harghita', 180, '', '', 1),
(2956, 'Hunedoara', 180, '', '', 1),
(2957, 'Ialomita', 180, '', '', 1),
(2958, 'Iasi', 180, '', '', 1),
(2959, 'Ilfov', 180, '', '', 1),
(2960, 'Maramures', 180, '', '', 1),
(2961, 'Mehedinti', 180, '', '', 1),
(2962, 'Mures', 180, '', '', 1),
(2963, 'Neamt', 180, '', '', 1),
(2964, 'Olt', 180, '', '', 1),
(2965, 'Prahova', 180, '', '', 1),
(2966, 'Salaj', 180, '', '', 1),
(2967, 'Satu Mare', 180, '', '', 1),
(2968, 'Sibiu', 180, '', '', 1),
(2969, 'Sondelor', 180, '', '', 1),
(2970, 'Suceava', 180, '', '', 1),
(2971, 'Teleorman', 180, '', '', 1),
(2972, 'Timis', 180, '', '', 1),
(2973, 'Tulcea', 180, '', '', 1),
(2974, 'Valcea', 180, '', '', 1),
(2975, 'Vaslui', 180, '', '', 1),
(2976, 'Vrancea', 180, '', '', 1),
(2977, 'Adygeja', 181, '', '', 1),
(2978, 'Aga', 181, '', '', 1),
(2979, 'Alanija', 181, '', '', 1),
(2980, 'Altaj', 181, '', '', 1),
(2981, 'Amur', 181, '', '', 1),
(2982, 'Arhangelsk', 181, '', '', 1),
(2983, 'Astrahan', 181, '', '', 1),
(2984, 'Bashkortostan', 181, '', '', 1),
(2985, 'Belgorod', 181, '', '', 1),
(2986, 'Brjansk', 181, '', '', 1),
(2987, 'Burjatija', 181, '', '', 1),
(2988, 'Chechenija', 181, '', '', 1),
(2989, 'Cheljabinsk', 181, '', '', 1),
(2990, 'Chita', 181, '', '', 1),
(2991, 'Chukotka', 181, '', '', 1),
(2992, 'Chuvashija', 181, '', '', 1),
(2993, 'Dagestan', 181, '', '', 1),
(2994, 'Evenkija', 181, '', '', 1),
(2995, 'Gorno-Altaj', 181, '', '', 1),
(2996, 'Habarovsk', 181, '', '', 1),
(2997, 'Hakasija', 181, '', '', 1),
(2998, 'Hanty-Mansija', 181, '', '', 1),
(2999, 'Ingusetija', 181, '', '', 1),
(3000, 'Irkutsk', 181, '', '', 1),
(3001, 'Ivanovo', 181, '', '', 1),
(3002, 'Jamalo-Nenets', 181, '', '', 1),
(3003, 'Jaroslavl', 181, '', '', 1),
(3004, 'Jevrej', 181, '', '', 1),
(3005, 'Kabardino-Balkarija', 181, '', '', 1),
(3006, 'Kaliningrad', 181, '', '', 1),
(3007, 'Kalmykija', 181, '', '', 1),
(3008, 'Kaluga', 181, '', '', 1),
(3009, 'Kamchatka', 181, '', '', 1),
(3010, 'Karachaj-Cherkessija', 181, '', '', 1),
(3011, 'Karelija', 181, '', '', 1),
(3012, 'Kemerovo', 181, '', '', 1),
(3013, 'Khabarovskiy Kray', 181, '', '', 1),
(3014, 'Kirov', 181, '', '', 1),
(3015, 'Komi', 181, '', '', 1),
(3016, 'Komi-Permjakija', 181, '', '', 1),
(3017, 'Korjakija', 181, '', '', 1),
(3018, 'Kostroma', 181, '', '', 1),
(3019, 'Krasnodar', 181, '', '', 1),
(3020, 'Krasnojarsk', 181, '', '', 1),
(3021, 'Krasnoyarskiy Kray', 181, '', '', 1),
(3022, 'Kurgan', 181, '', '', 1),
(3023, 'Kursk', 181, '', '', 1),
(3024, 'Leningrad', 181, '', '', 1),
(3025, 'Lipeck', 181, '', '', 1),
(3026, 'Magadan', 181, '', '', 1),
(3027, 'Marij El', 181, '', '', 1),
(3028, 'Mordovija', 181, '', '', 1),
(3029, 'Moscow', 181, '', '', 1),
(3030, 'Moskovskaja Oblast', 181, '', '', 1),
(3031, 'Moskovskaya Oblast', 181, '', '', 1),
(3032, 'Moskva', 181, '', '', 1),
(3033, 'Murmansk', 181, '', '', 1),
(3034, 'Nenets', 181, '', '', 1),
(3035, 'Nizhnij Novgorod', 181, '', '', 1),
(3036, 'Novgorod', 181, '', '', 1),
(3037, 'Novokusnezk', 181, '', '', 1),
(3038, 'Novosibirsk', 181, '', '', 1),
(3039, 'Omsk', 181, '', '', 1),
(3040, 'Orenburg', 181, '', '', 1),
(3041, 'Orjol', 181, '', '', 1),
(3042, 'Penza', 181, '', '', 1),
(3043, 'Perm', 181, '', '', 1),
(3044, 'Primorje', 181, '', '', 1),
(3045, 'Pskov', 181, '', '', 1),
(3046, 'Pskovskaya Oblast', 181, '', '', 1),
(3047, 'Rjazan', 181, '', '', 1),
(3048, 'Rostov', 181, '', '', 1),
(3049, 'Saha', 181, '', '', 1),
(3050, 'Sahalin', 181, '', '', 1),
(3051, 'Samara', 181, '', '', 1),
(3052, 'Samarskaya', 181, '', '', 1),
(3053, 'Sankt-Peterburg', 181, '', '', 1),
(3054, 'Saratov', 181, '', '', 1),
(3055, 'Smolensk', 181, '', '', 1),
(3056, 'Stavropol', 181, '', '', 1),
(3057, 'Sverdlovsk', 181, '', '', 1),
(3058, 'Tajmyrija', 181, '', '', 1),
(3059, 'Tambov', 181, '', '', 1),
(3060, 'Tatarstan', 181, '', '', 1),
(3061, 'Tjumen', 181, '', '', 1),
(3062, 'Tomsk', 181, '', '', 1),
(3063, 'Tula', 181, '', '', 1),
(3064, 'Tver', 181, '', '', 1),
(3065, 'Tyva', 181, '', '', 1),
(3066, 'Udmurtija', 181, '', '', 1),
(3067, 'Uljanovsk', 181, '', '', 1),
(3068, 'Ulyanovskaya Oblast', 181, '', '', 1),
(3069, 'Ust-Orda', 181, '', '', 1),
(3070, 'Vladimir', 181, '', '', 1),
(3071, 'Volgograd', 181, '', '', 1),
(3072, 'Vologda', 181, '', '', 1),
(3073, 'Voronezh', 181, '', '', 1),
(3074, 'Butare', 182, '', '', 1),
(3075, 'Byumba', 182, '', '', 1),
(3076, 'Cyangugu', 182, '', '', 1),
(3077, 'Gikongoro', 182, '', '', 1),
(3078, 'Gisenyi', 182, '', '', 1),
(3079, 'Gitarama', 182, '', '', 1),
(3080, 'Kibungo', 182, '', '', 1),
(3081, 'Kibuye', 182, '', '', 1),
(3082, 'Kigali-ngali', 182, '', '', 1),
(3083, 'Ruhengeri', 182, '', '', 1),
(3084, 'Ascension', 183, '', '', 1),
(3085, 'Gough Island', 183, '', '', 1),
(3086, 'Saint Helena', 183, '', '', 1),
(3087, 'Tristan da Cunha', 183, '', '', 1),
(3088, 'Christ Church Nichola Town', 184, '', '', 1),
(3089, 'Saint Anne Sandy Point', 184, '', '', 1),
(3090, 'Saint George Basseterre', 184, '', '', 1),
(3091, 'Saint George Gingerland', 184, '', '', 1),
(3092, 'Saint James Windward', 184, '', '', 1),
(3093, 'Saint John Capesterre', 184, '', '', 1),
(3094, 'Saint John Figtree', 184, '', '', 1),
(3095, 'Saint Mary Cayon', 184, '', '', 1),
(3096, 'Saint Paul Capesterre', 184, '', '', 1),
(3097, 'Saint Paul Charlestown', 184, '', '', 1),
(3098, 'Saint Peter Basseterre', 184, '', '', 1),
(3099, 'Saint Thomas Lowland', 184, '', '', 1),
(3100, 'Saint Thomas Middle Island', 184, '', '', 1),
(3101, 'Trinity Palmetto Point', 184, '', '', 1),
(3102, 'Anse-la-Raye', 185, '', '', 1),
(3103, 'Canaries', 185, '', '', 1),
(3104, 'Castries', 185, '', '', 1),
(3105, 'Choiseul', 185, '', '', 1),
(3106, 'Dennery', 185, '', '', 1),
(3107, 'Gros Inlet', 185, '', '', 1),
(3108, 'Laborie', 185, '', '', 1),
(3109, 'Micoud', 185, '', '', 1),
(3110, 'Soufriere', 185, '', '', 1),
(3111, 'Vieux Fort', 185, '', '', 1),
(3112, 'Miquelon-Langlade', 186, '', '', 1),
(3113, 'Saint-Pierre', 186, '', '', 1),
(3114, 'Charlotte', 187, '', '', 1),
(3115, 'Grenadines', 187, '', '', 1),
(3116, 'Saint Andrew', 187, '', '', 1),
(3117, 'Saint David', 187, '', '', 1),
(3118, 'Saint George', 187, '', '', 1),
(3119, 'Saint Patrick', 187, '', '', 1),
(3120, 'A\'ana', 188, '', '', 1),
(3121, 'Aiga-i-le-Tai', 188, '', '', 1),
(3122, 'Atua', 188, '', '', 1),
(3123, 'Fa\'asaleleaga', 188, '', '', 1),
(3124, 'Gaga\'emauga', 188, '', '', 1),
(3125, 'Gagaifomauga', 188, '', '', 1),
(3126, 'Palauli', 188, '', '', 1),
(3127, 'Satupa\'itea', 188, '', '', 1),
(3128, 'Tuamasaga', 188, '', '', 1),
(3129, 'Va\'a-o-Fonoti', 188, '', '', 1),
(3130, 'Vaisigano', 188, '', '', 1),
(3131, 'Acquaviva', 189, '', '', 1),
(3132, 'Borgo Maggiore', 189, '', '', 1),
(3133, 'Chiesanuova', 189, '', '', 1),
(3134, 'Domagnano', 189, '', '', 1),
(3135, 'Faetano', 189, '', '', 1),
(3136, 'Fiorentino', 189, '', '', 1),
(3137, 'Montegiardino', 189, '', '', 1),
(3138, 'San Marino', 189, '', '', 1),
(3139, 'Serravalle', 189, '', '', 1),
(3140, 'Agua Grande', 190, '', '', 1),
(3141, 'Cantagalo', 190, '', '', 1),
(3142, 'Lemba', 190, '', '', 1),
(3143, 'Lobata', 190, '', '', 1),
(3144, 'Me-Zochi', 190, '', '', 1),
(3145, 'Pague', 190, '', '', 1),
(3146, 'Al Khobar', 191, '', '', 1),
(3147, 'Aseer', 191, '', '', 1),
(3148, 'Ash Sharqiyah', 191, '', '', 1),
(3149, 'Asir', 191, '', '', 1),
(3150, 'Central Province', 191, '', '', 1),
(3151, 'Eastern Province', 191, '', '', 1),
(3152, 'Ha\'il', 191, '', '', 1),
(3153, 'Jawf', 191, '', '', 1),
(3154, 'Jizan', 191, '', '', 1),
(3155, 'Makkah', 191, '', '', 1),
(3156, 'Najran', 191, '', '', 1),
(3157, 'Qasim', 191, '', '', 1),
(3158, 'Tabuk', 191, '', '', 1),
(3159, 'Western Province', 191, '', '', 1),
(3160, 'al-Bahah', 191, '', '', 1),
(3161, 'al-Hudud-ash-Shamaliyah', 191, '', '', 1),
(3162, 'al-Madinah', 191, '', '', 1),
(3163, 'ar-Riyad', 191, '', '', 1),
(3164, 'Dakar', 192, '', '', 1),
(3165, 'Diourbel', 192, '', '', 1),
(3166, 'Fatick', 192, '', '', 1),
(3167, 'Kaolack', 192, '', '', 1),
(3168, 'Kolda', 192, '', '', 1),
(3169, 'Louga', 192, '', '', 1),
(3170, 'Saint-Louis', 192, '', '', 1),
(3171, 'Tambacounda', 192, '', '', 1),
(3172, 'Thies', 192, '', '', 1),
(3173, 'Ziguinchor', 192, '', '', 1),
(3174, 'Central Serbia', 193, '', '', 1),
(3175, 'Kosovo and Metohija', 193, '', '', 1),
(3176, 'Vojvodina', 193, '', '', 1),
(3177, 'Anse Boileau', 194, '', '', 1),
(3178, 'Anse Royale', 194, '', '', 1),
(3179, 'Cascade', 194, '', '', 1),
(3180, 'Takamaka', 194, '', '', 1),
(3181, 'Victoria', 194, '', '', 1),
(3182, 'Eastern', 195, '', '', 1),
(3183, 'Northern', 195, '', '', 1),
(3184, 'Southern', 195, '', '', 1),
(3185, 'Western', 195, '', '', 1),
(3186, 'Singapore', 196, '', '', 1),
(3187, 'Banskobystricky', 197, '', '', 1),
(3188, 'Bratislavsky', 197, '', '', 1),
(3189, 'Kosicky', 197, '', '', 1),
(3190, 'Nitriansky', 197, '', '', 1),
(3191, 'Presovsky', 197, '', '', 1),
(3192, 'Trenciansky', 197, '', '', 1),
(3193, 'Trnavsky', 197, '', '', 1),
(3194, 'Zilinsky', 197, '', '', 1),
(3195, 'Benedikt', 198, '', '', 1),
(3196, 'Gorenjska', 198, '', '', 1),
(3197, 'Gorishka', 198, '', '', 1),
(3198, 'Jugovzhodna Slovenija', 198, '', '', 1),
(3199, 'Koroshka', 198, '', '', 1),
(3200, 'Notranjsko-krashka', 198, '', '', 1),
(3201, 'Obalno-krashka', 198, '', '', 1),
(3202, 'Obcina Domzale', 198, '', '', 1),
(3203, 'Obcina Vitanje', 198, '', '', 1),
(3204, 'Osrednjeslovenska', 198, '', '', 1),
(3205, 'Podravska', 198, '', '', 1),
(3206, 'Pomurska', 198, '', '', 1),
(3207, 'Savinjska', 198, '', '', 1),
(3208, 'Slovenian Littoral', 198, '', '', 1),
(3209, 'Spodnjeposavska', 198, '', '', 1),
(3210, 'Zasavska', 198, '', '', 1),
(3211, 'Pitcairn', 199, '', '', 1),
(3212, 'Central', 200, '', '', 1),
(3213, 'Choiseul', 200, '', '', 1),
(3214, 'Guadalcanal', 200, '', '', 1),
(3215, 'Isabel', 200, '', '', 1),
(3216, 'Makira and Ulawa', 200, '', '', 1),
(3217, 'Malaita', 200, '', '', 1),
(3218, 'Rennell and Bellona', 200, '', '', 1),
(3219, 'Temotu', 200, '', '', 1),
(3220, 'Western', 200, '', '', 1),
(3221, 'Awdal', 201, '', '', 1),
(3222, 'Bakol', 201, '', '', 1),
(3223, 'Banadir', 201, '', '', 1),
(3224, 'Bari', 201, '', '', 1),
(3225, 'Bay', 201, '', '', 1),
(3226, 'Galgudug', 201, '', '', 1),
(3227, 'Gedo', 201, '', '', 1),
(3228, 'Hiran', 201, '', '', 1),
(3229, 'Jubbada Hose', 201, '', '', 1),
(3230, 'Jubbadha Dexe', 201, '', '', 1),
(3231, 'Mudug', 201, '', '', 1),
(3232, 'Nugal', 201, '', '', 1),
(3233, 'Sanag', 201, '', '', 1),
(3234, 'Shabellaha Dhexe', 201, '', '', 1),
(3235, 'Shabellaha Hose', 201, '', '', 1),
(3236, 'Togdher', 201, '', '', 1),
(3237, 'Woqoyi Galbed', 201, '', '', 1),
(3238, 'Eastern Cape', 202, '', '', 1),
(3239, 'Free State', 202, '', '', 1),
(3240, 'Gauteng', 202, '', '', 1),
(3241, 'Kempton Park', 202, '', '', 1),
(3242, 'Kramerville', 202, '', '', 1),
(3243, 'KwaZulu Natal', 202, '', '', 1),
(3244, 'Limpopo', 202, '', '', 1),
(3245, 'Mpumalanga', 202, '', '', 1),
(3246, 'North West', 202, '', '', 1),
(3247, 'Northern Cape', 202, '', '', 1),
(3248, 'Parow', 202, '', '', 1),
(3249, 'Table View', 202, '', '', 1),
(3250, 'Umtentweni', 202, '', '', 1),
(3251, 'Western Cape', 202, '', '', 1),
(3252, 'South Georgia', 203, '', '', 1),
(3253, 'Central Equatoria', 204, '', '', 1),
(3254, 'A Coruna', 205, '', '', 1),
(3255, 'Alacant', 205, '', '', 1),
(3256, 'Alava', 205, '', '', 1),
(3257, 'Albacete', 205, '', '', 1),
(3258, 'Almeria', 205, '', '', 1),
(3259, 'Andalucia', 205, '', '', 1),
(3260, 'Asturias', 205, '', '', 1),
(3261, 'Avila', 205, '', '', 1),
(3262, 'Badajoz', 205, '', '', 1),
(3263, 'Balears', 205, '', '', 1),
(3264, 'Barcelona', 205, '', '', 1),
(3265, 'Bertamirans', 205, '', '', 1),
(3266, 'Biscay', 205, '', '', 1),
(3267, 'Burgos', 205, '', '', 1),
(3268, 'Caceres', 205, '', '', 1),
(3269, 'Cadiz', 205, '', '', 1),
(3270, 'Cantabria', 205, '', '', 1),
(3271, 'Castello', 205, '', '', 1),
(3272, 'Catalunya', 205, '', '', 1),
(3273, 'Ceuta', 205, '', '', 1),
(3274, 'Ciudad Real', 205, '', '', 1),
(3275, 'Comunidad Autonoma de Canarias', 205, '', '', 1),
(3276, 'Comunidad Autonoma de Cataluna', 205, '', '', 1),
(3277, 'Comunidad Autonoma de Galicia', 205, '', '', 1),
(3278, 'Comunidad Autonoma de las Isla', 205, '', '', 1),
(3279, 'Comunidad Autonoma del Princip', 205, '', '', 1),
(3280, 'Comunidad Valenciana', 205, '', '', 1),
(3281, 'Cordoba', 205, '', '', 1),
(3282, 'Cuenca', 205, '', '', 1),
(3283, 'Gipuzkoa', 205, '', '', 1),
(3284, 'Girona', 205, '', '', 1),
(3285, 'Granada', 205, '', '', 1),
(3286, 'Guadalajara', 205, '', '', 1),
(3287, 'Guipuzcoa', 205, '', '', 1),
(3288, 'Huelva', 205, '', '', 1),
(3289, 'Huesca', 205, '', '', 1),
(3290, 'Jaen', 205, '', '', 1),
(3291, 'La Rioja', 205, '', '', 1),
(3292, 'Las Palmas', 205, '', '', 1),
(3293, 'Leon', 205, '', '', 1),
(3294, 'Lerida', 205, '', '', 1),
(3295, 'Lleida', 205, '', '', 1),
(3296, 'Lugo', 205, '', '', 1),
(3297, 'Madrid', 205, '', '', 1),
(3298, 'Malaga', 205, '', '', 1),
(3299, 'Melilla', 205, '', '', 1),
(3300, 'Murcia', 205, '', '', 1),
(3301, 'Navarra', 205, '', '', 1),
(3302, 'Ourense', 205, '', '', 1),
(3303, 'Pais Vasco', 205, '', '', 1),
(3304, 'Palencia', 205, '', '', 1),
(3305, 'Pontevedra', 205, '', '', 1),
(3306, 'Salamanca', 205, '', '', 1),
(3307, 'Santa Cruz de Tenerife', 205, '', '', 1),
(3308, 'Segovia', 205, '', '', 1),
(3309, 'Sevilla', 205, '', '', 1),
(3310, 'Soria', 205, '', '', 1),
(3311, 'Tarragona', 205, '', '', 1),
(3312, 'Tenerife', 205, '', '', 1),
(3313, 'Teruel', 205, '', '', 1),
(3314, 'Toledo', 205, '', '', 1),
(3315, 'Valencia', 205, '', '', 1),
(3316, 'Valladolid', 205, '', '', 1),
(3317, 'Vizcaya', 205, '', '', 1),
(3318, 'Zamora', 205, '', '', 1),
(3319, 'Zaragoza', 205, '', '', 1),
(3320, 'Amparai', 206, '', '', 1),
(3321, 'Anuradhapuraya', 206, '', '', 1),
(3322, 'Badulla', 206, '', '', 1),
(3323, 'Boralesgamuwa', 206, '', '', 1),
(3324, 'Colombo', 206, '', '', 1),
(3325, 'Galla', 206, '', '', 1),
(3326, 'Gampaha', 206, '', '', 1),
(3327, 'Hambantota', 206, '', '', 1),
(3328, 'Kalatura', 206, '', '', 1),
(3329, 'Kegalla', 206, '', '', 1),
(3330, 'Kilinochchi', 206, '', '', 1),
(3331, 'Kurunegala', 206, '', '', 1),
(3332, 'Madakalpuwa', 206, '', '', 1),
(3333, 'Maha Nuwara', 206, '', '', 1),
(3334, 'Malwana', 206, '', '', 1),
(3335, 'Mannarama', 206, '', '', 1),
(3336, 'Matale', 206, '', '', 1),
(3337, 'Matara', 206, '', '', 1),
(3338, 'Monaragala', 206, '', '', 1),
(3339, 'Mullaitivu', 206, '', '', 1),
(3340, 'North Eastern Province', 206, '', '', 1),
(3341, 'North Western Province', 206, '', '', 1),
(3342, 'Nuwara Eliya', 206, '', '', 1),
(3343, 'Polonnaruwa', 206, '', '', 1),
(3344, 'Puttalama', 206, '', '', 1),
(3345, 'Ratnapuraya', 206, '', '', 1),
(3346, 'Southern Province', 206, '', '', 1),
(3347, 'Tirikunamalaya', 206, '', '', 1),
(3348, 'Tuscany', 206, '', '', 1),
(3349, 'Vavuniyawa', 206, '', '', 1),
(3350, 'Western Province', 206, '', '', 1),
(3351, 'Yapanaya', 206, '', '', 1),
(3352, 'kadawatha', 206, '', '', 1),
(3353, 'A\'ali-an-Nil', 207, '', '', 1),
(3354, 'Bahr-al-Jabal', 207, '', '', 1),
(3355, 'Central Equatoria', 207, '', '', 1),
(3356, 'Gharb Bahr-al-Ghazal', 207, '', '', 1),
(3357, 'Gharb Darfur', 207, '', '', 1),
(3358, 'Gharb Kurdufan', 207, '', '', 1),
(3359, 'Gharb-al-Istiwa\'iyah', 207, '', '', 1),
(3360, 'Janub Darfur', 207, '', '', 1),
(3361, 'Janub Kurdufan', 207, '', '', 1),
(3362, 'Junqali', 207, '', '', 1),
(3363, 'Kassala', 207, '', '', 1),
(3364, 'Nahr-an-Nil', 207, '', '', 1),
(3365, 'Shamal Bahr-al-Ghazal', 207, '', '', 1),
(3366, 'Shamal Darfur', 207, '', '', 1),
(3367, 'Shamal Kurdufan', 207, '', '', 1),
(3368, 'Sharq-al-Istiwa\'iyah', 207, '', '', 1),
(3369, 'Sinnar', 207, '', '', 1),
(3370, 'Warab', 207, '', '', 1),
(3371, 'Wilayat al Khartum', 207, '', '', 1),
(3372, 'al-Bahr-al-Ahmar', 207, '', '', 1),
(3373, 'al-Buhayrat', 207, '', '', 1),
(3374, 'al-Jazirah', 207, '', '', 1),
(3375, 'al-Khartum', 207, '', '', 1),
(3376, 'al-Qadarif', 207, '', '', 1),
(3377, 'al-Wahdah', 207, '', '', 1),
(3378, 'an-Nil-al-Abyad', 207, '', '', 1),
(3379, 'an-Nil-al-Azraq', 207, '', '', 1),
(3380, 'ash-Shamaliyah', 207, '', '', 1),
(3381, 'Brokopondo', 208, '', '', 1),
(3382, 'Commewijne', 208, '', '', 1),
(3383, 'Coronie', 208, '', '', 1),
(3384, 'Marowijne', 208, '', '', 1),
(3385, 'Nickerie', 208, '', '', 1),
(3386, 'Para', 208, '', '', 1),
(3387, 'Paramaribo', 208, '', '', 1),
(3388, 'Saramacca', 208, '', '', 1),
(3389, 'Wanica', 208, '', '', 1),
(3390, 'Svalbard', 209, '', '', 1),
(3391, 'Hhohho', 210, '', '', 1),
(3392, 'Lubombo', 210, '', '', 1),
(3393, 'Manzini', 210, '', '', 1),
(3394, 'Shiselweni', 210, '', '', 1),
(3395, 'Alvsborgs Lan', 211, '', '', 1),
(3396, 'Angermanland', 211, '', '', 1),
(3397, 'Blekinge', 211, '', '', 1),
(3398, 'Bohuslan', 211, '', '', 1),
(3399, 'Dalarna', 211, '', '', 1),
(3400, 'Gavleborg', 211, '', '', 1),
(3401, 'Gaza', 211, '', '', 1),
(3402, 'Gotland', 211, '', '', 1),
(3403, 'Halland', 211, '', '', 1),
(3404, 'Jamtland', 211, '', '', 1),
(3405, 'Jonkoping', 211, '', '', 1),
(3406, 'Kalmar', 211, '', '', 1),
(3407, 'Kristianstads', 211, '', '', 1),
(3408, 'Kronoberg', 211, '', '', 1),
(3409, 'Norrbotten', 211, '', '', 1),
(3410, 'Orebro', 211, '', '', 1),
(3411, 'Ostergotland', 211, '', '', 1),
(3412, 'Saltsjo-Boo', 211, '', '', 1),
(3413, 'Skane', 211, '', '', 1),
(3414, 'Smaland', 211, '', '', 1),
(3415, 'Sodermanland', 211, '', '', 1),
(3416, 'Stockholm', 211, '', '', 1),
(3417, 'Uppsala', 211, '', '', 1),
(3418, 'Varmland', 211, '', '', 1),
(3419, 'Vasterbotten', 211, '', '', 1),
(3420, 'Vastergotland', 211, '', '', 1),
(3421, 'Vasternorrland', 211, '', '', 1),
(3422, 'Vastmanland', 211, '', '', 1),
(3423, 'Vastra Gotaland', 211, '', '', 1),
(3424, 'Aargau', 212, '', '', 1),
(3425, 'Appenzell Inner-Rhoden', 212, '', '', 1),
(3426, 'Appenzell-Ausser Rhoden', 212, '', '', 1),
(3427, 'Basel-Landschaft', 212, '', '', 1),
(3428, 'Basel-Stadt', 212, '', '', 1),
(3429, 'Bern', 212, '', '', 1),
(3430, 'Canton Ticino', 212, '', '', 1),
(3431, 'Fribourg', 212, '', '', 1),
(3432, 'Geneve', 212, '', '', 1),
(3433, 'Glarus', 212, '', '', 1),
(3434, 'Graubunden', 212, '', '', 1),
(3435, 'Heerbrugg', 212, '', '', 1),
(3436, 'Jura', 212, '', '', 1),
(3437, 'Kanton Aargau', 212, '', '', 1),
(3438, 'Luzern', 212, '', '', 1),
(3439, 'Morbio Inferiore', 212, '', '', 1),
(3440, 'Muhen', 212, '', '', 1),
(3441, 'Neuchatel', 212, '', '', 1),
(3442, 'Nidwalden', 212, '', '', 1),
(3443, 'Obwalden', 212, '', '', 1),
(3444, 'Sankt Gallen', 212, '', '', 1),
(3445, 'Schaffhausen', 212, '', '', 1),
(3446, 'Schwyz', 212, '', '', 1),
(3447, 'Solothurn', 212, '', '', 1),
(3448, 'Thurgau', 212, '', '', 1),
(3449, 'Ticino', 212, '', '', 1),
(3450, 'Uri', 212, '', '', 1),
(3451, 'Valais', 212, '', '', 1),
(3452, 'Vaud', 212, '', '', 1),
(3453, 'Vauffelin', 212, '', '', 1),
(3454, 'Zug', 212, '', '', 1),
(3455, 'Zurich', 212, '', '', 1),
(3456, 'Aleppo', 213, '', '', 1),
(3457, 'Dar\'a', 213, '', '', 1),
(3458, 'Dayr-az-Zawr', 213, '', '', 1),
(3459, 'Dimashq', 213, '', '', 1),
(3460, 'Halab', 213, '', '', 1),
(3461, 'Hamah', 213, '', '', 1),
(3462, 'Hims', 213, '', '', 1),
(3463, 'Idlib', 213, '', '', 1),
(3464, 'Madinat Dimashq', 213, '', '', 1),
(3465, 'Tartus', 213, '', '', 1),
(3466, 'al-Hasakah', 213, '', '', 1),
(3467, 'al-Ladhiqiyah', 213, '', '', 1),
(3468, 'al-Qunaytirah', 213, '', '', 1),
(3469, 'ar-Raqqah', 213, '', '', 1),
(3470, 'as-Suwayda', 213, '', '', 1),
(3471, 'Changhwa', 214, '', '', 1),
(3472, 'Chiayi Hsien', 214, '', '', 1),
(3473, 'Chiayi Shih', 214, '', '', 1),
(3474, 'Eastern Taipei', 214, '', '', 1),
(3475, 'Hsinchu Hsien', 214, '', '', 1),
(3476, 'Hsinchu Shih', 214, '', '', 1),
(3477, 'Hualien', 214, '', '', 1),
(3478, 'Ilan', 214, '', '', 1),
(3479, 'Kaohsiung Hsien', 214, '', '', 1),
(3480, 'Kaohsiung Shih', 214, '', '', 1),
(3481, 'Keelung Shih', 214, '', '', 1),
(3482, 'Kinmen', 214, '', '', 1),
(3483, 'Miaoli', 214, '', '', 1),
(3484, 'Nantou', 214, '', '', 1),
(3485, 'Northern Taiwan', 214, '', '', 1),
(3486, 'Penghu', 214, '', '', 1),
(3487, 'Pingtung', 214, '', '', 1),
(3488, 'Taichung', 214, '', '', 1),
(3489, 'Taichung Hsien', 214, '', '', 1),
(3490, 'Taichung Shih', 214, '', '', 1),
(3491, 'Tainan Hsien', 214, '', '', 1),
(3492, 'Tainan Shih', 214, '', '', 1),
(3493, 'Taipei Hsien', 214, '', '', 1),
(3494, 'Taipei Shih / Taipei Hsien', 214, '', '', 1),
(3495, 'Taitung', 214, '', '', 1),
(3496, 'Taoyuan', 214, '', '', 1),
(3497, 'Yilan', 214, '', '', 1),
(3498, 'Yun-Lin Hsien', 214, '', '', 1),
(3499, 'Yunlin', 214, '', '', 1),
(3500, 'Dushanbe', 215, '', '', 1),
(3501, 'Gorno-Badakhshan', 215, '', '', 1),
(3502, 'Karotegin', 215, '', '', 1),
(3503, 'Khatlon', 215, '', '', 1),
(3504, 'Sughd', 215, '', '', 1),
(3505, 'Arusha', 216, '', '', 1),
(3506, 'Dar es Salaam', 216, '', '', 1),
(3507, 'Dodoma', 216, '', '', 1),
(3508, 'Iringa', 216, '', '', 1),
(3509, 'Kagera', 216, '', '', 1),
(3510, 'Kigoma', 216, '', '', 1),
(3511, 'Kilimanjaro', 216, '', '', 1),
(3512, 'Lindi', 216, '', '', 1),
(3513, 'Mara', 216, '', '', 1),
(3514, 'Mbeya', 216, '', '', 1),
(3515, 'Morogoro', 216, '', '', 1),
(3516, 'Mtwara', 216, '', '', 1),
(3517, 'Mwanza', 216, '', '', 1),
(3518, 'Pwani', 216, '', '', 1),
(3519, 'Rukwa', 216, '', '', 1),
(3520, 'Ruvuma', 216, '', '', 1),
(3521, 'Shinyanga', 216, '', '', 1),
(3522, 'Singida', 216, '', '', 1),
(3523, 'Tabora', 216, '', '', 1),
(3524, 'Tanga', 216, '', '', 1),
(3525, 'Zanzibar and Pemba', 216, '', '', 1),
(3526, 'Amnat Charoen', 217, '', '', 1),
(3527, 'Ang Thong', 217, '', '', 1),
(3528, 'Bangkok', 217, '', '', 1),
(3529, 'Buri Ram', 217, '', '', 1),
(3530, 'Chachoengsao', 217, '', '', 1),
(3531, 'Chai Nat', 217, '', '', 1),
(3532, 'Chaiyaphum', 217, '', '', 1),
(3533, 'Changwat Chaiyaphum', 217, '', '', 1),
(3534, 'Chanthaburi', 217, '', '', 1),
(3535, 'Chiang Mai', 217, '', '', 1),
(3536, 'Chiang Rai', 217, '', '', 1),
(3537, 'Chon Buri', 217, '', '', 1),
(3538, 'Chumphon', 217, '', '', 1),
(3539, 'Kalasin', 217, '', '', 1),
(3540, 'Kamphaeng Phet', 217, '', '', 1),
(3541, 'Kanchanaburi', 217, '', '', 1),
(3542, 'Khon Kaen', 217, '', '', 1),
(3543, 'Krabi', 217, '', '', 1),
(3544, 'Krung Thep', 217, '', '', 1),
(3545, 'Lampang', 217, '', '', 1),
(3546, 'Lamphun', 217, '', '', 1),
(3547, 'Loei', 217, '', '', 1),
(3548, 'Lop Buri', 217, '', '', 1),
(3549, 'Mae Hong Son', 217, '', '', 1),
(3550, 'Maha Sarakham', 217, '', '', 1),
(3551, 'Mukdahan', 217, '', '', 1),
(3552, 'Nakhon Nayok', 217, '', '', 1),
(3553, 'Nakhon Pathom', 217, '', '', 1),
(3554, 'Nakhon Phanom', 217, '', '', 1),
(3555, 'Nakhon Ratchasima', 217, '', '', 1),
(3556, 'Nakhon Sawan', 217, '', '', 1),
(3557, 'Nakhon Si Thammarat', 217, '', '', 1),
(3558, 'Nan', 217, '', '', 1),
(3559, 'Narathiwat', 217, '', '', 1),
(3560, 'Nong Bua Lam Phu', 217, '', '', 1),
(3561, 'Nong Khai', 217, '', '', 1),
(3562, 'Nonthaburi', 217, '', '', 1),
(3563, 'Pathum Thani', 217, '', '', 1),
(3564, 'Pattani', 217, '', '', 1),
(3565, 'Phangnga', 217, '', '', 1),
(3566, 'Phatthalung', 217, '', '', 1),
(3567, 'Phayao', 217, '', '', 1),
(3568, 'Phetchabun', 217, '', '', 1),
(3569, 'Phetchaburi', 217, '', '', 1),
(3570, 'Phichit', 217, '', '', 1),
(3571, 'Phitsanulok', 217, '', '', 1),
(3572, 'Phra Nakhon Si Ayutthaya', 217, '', '', 1),
(3573, 'Phrae', 217, '', '', 1),
(3574, 'Phuket', 217, '', '', 1),
(3575, 'Prachin Buri', 217, '', '', 1),
(3576, 'Prachuap Khiri Khan', 217, '', '', 1),
(3577, 'Ranong', 217, '', '', 1),
(3578, 'Ratchaburi', 217, '', '', 1),
(3579, 'Rayong', 217, '', '', 1),
(3580, 'Roi Et', 217, '', '', 1),
(3581, 'Sa Kaeo', 217, '', '', 1),
(3582, 'Sakon Nakhon', 217, '', '', 1),
(3583, 'Samut Prakan', 217, '', '', 1),
(3584, 'Samut Sakhon', 217, '', '', 1),
(3585, 'Samut Songkhran', 217, '', '', 1),
(3586, 'Saraburi', 217, '', '', 1),
(3587, 'Satun', 217, '', '', 1),
(3588, 'Si Sa Ket', 217, '', '', 1),
(3589, 'Sing Buri', 217, '', '', 1),
(3590, 'Songkhla', 217, '', '', 1),
(3591, 'Sukhothai', 217, '', '', 1),
(3592, 'Suphan Buri', 217, '', '', 1),
(3593, 'Surat Thani', 217, '', '', 1),
(3594, 'Surin', 217, '', '', 1),
(3595, 'Tak', 217, '', '', 1),
(3596, 'Trang', 217, '', '', 1),
(3597, 'Trat', 217, '', '', 1),
(3598, 'Ubon Ratchathani', 217, '', '', 1),
(3599, 'Udon Thani', 217, '', '', 1),
(3600, 'Uthai Thani', 217, '', '', 1),
(3601, 'Uttaradit', 217, '', '', 1),
(3602, 'Yala', 217, '', '', 1),
(3603, 'Yasothon', 217, '', '', 1),
(3604, 'Centre', 218, '', '', 1),
(3605, 'Kara', 218, '', '', 1),
(3606, 'Maritime', 218, '', '', 1),
(3607, 'Plateaux', 218, '', '', 1),
(3608, 'Savanes', 218, '', '', 1),
(3609, 'Atafu', 219, '', '', 1),
(3610, 'Fakaofo', 219, '', '', 1),
(3611, 'Nukunonu', 219, '', '', 1),
(3612, 'Eua', 220, '', '', 1),
(3613, 'Ha\'apai', 220, '', '', 1),
(3614, 'Niuas', 220, '', '', 1),
(3615, 'Tongatapu', 220, '', '', 1),
(3616, 'Vava\'u', 220, '', '', 1),
(3617, 'Arima-Tunapuna-Piarco', 221, '', '', 1),
(3618, 'Caroni', 221, '', '', 1),
(3619, 'Chaguanas', 221, '', '', 1),
(3620, 'Couva-Tabaquite-Talparo', 221, '', '', 1),
(3621, 'Diego Martin', 221, '', '', 1),
(3622, 'Glencoe', 221, '', '', 1),
(3623, 'Penal Debe', 221, '', '', 1),
(3624, 'Point Fortin', 221, '', '', 1),
(3625, 'Port of Spain', 221, '', '', 1),
(3626, 'Princes Town', 221, '', '', 1),
(3627, 'Saint George', 221, '', '', 1),
(3628, 'San Fernando', 221, '', '', 1),
(3629, 'San Juan', 221, '', '', 1),
(3630, 'Sangre Grande', 221, '', '', 1),
(3631, 'Siparia', 221, '', '', 1),
(3632, 'Tobago', 221, '', '', 1),
(3633, 'Aryanah', 222, '', '', 1),
(3634, 'Bajah', 222, '', '', 1),
(3635, 'Bin \'Arus', 222, '', '', 1),
(3636, 'Binzart', 222, '', '', 1),
(3637, 'Gouvernorat de Ariana', 222, '', '', 1),
(3638, 'Gouvernorat de Nabeul', 222, '', '', 1),
(3639, 'Gouvernorat de Sousse', 222, '', '', 1),
(3640, 'Hammamet Yasmine', 222, '', '', 1),
(3641, 'Jundubah', 222, '', '', 1),
(3642, 'Madaniyin', 222, '', '', 1),
(3643, 'Manubah', 222, '', '', 1),
(3644, 'Monastir', 222, '', '', 1),
(3645, 'Nabul', 222, '', '', 1),
(3646, 'Qabis', 222, '', '', 1),
(3647, 'Qafsah', 222, '', '', 1),
(3648, 'Qibili', 222, '', '', 1),
(3649, 'Safaqis', 222, '', '', 1),
(3650, 'Sfax', 222, '', '', 1),
(3651, 'Sidi Bu Zayd', 222, '', '', 1),
(3652, 'Silyanah', 222, '', '', 1),
(3653, 'Susah', 222, '', '', 1),
(3654, 'Tatawin', 222, '', '', 1),
(3655, 'Tawzar', 222, '', '', 1),
(3656, 'Tunis', 222, '', '', 1),
(3657, 'Zaghwan', 222, '', '', 1),
(3658, 'al-Kaf', 222, '', '', 1),
(3659, 'al-Mahdiyah', 222, '', '', 1),
(3660, 'al-Munastir', 222, '', '', 1),
(3661, 'al-Qasrayn', 222, '', '', 1),
(3662, 'al-Qayrawan', 222, '', '', 1),
(3663, 'Adana', 223, '', '', 1),
(3664, 'Adiyaman', 223, '', '', 1),
(3665, 'Afyon', 223, '', '', 1),
(3666, 'Agri', 223, '', '', 1),
(3667, 'Aksaray', 223, '', '', 1),
(3668, 'Amasya', 223, '', '', 1),
(3669, 'Ankara', 223, '', '', 1),
(3670, 'Antalya', 223, '', '', 1),
(3671, 'Ardahan', 223, '', '', 1),
(3672, 'Artvin', 223, '', '', 1),
(3673, 'Aydin', 223, '', '', 1),
(3674, 'Balikesir', 223, '', '', 1),
(3675, 'Bartin', 223, '', '', 1),
(3676, 'Batman', 223, '', '', 1),
(3677, 'Bayburt', 223, '', '', 1),
(3678, 'Bilecik', 223, '', '', 1),
(3679, 'Bingol', 223, '', '', 1),
(3680, 'Bitlis', 223, '', '', 1),
(3681, 'Bolu', 223, '', '', 1),
(3682, 'Burdur', 223, '', '', 1),
(3683, 'Bursa', 223, '', '', 1),
(3684, 'Canakkale', 223, '', '', 1),
(3685, 'Cankiri', 223, '', '', 1),
(3686, 'Corum', 223, '', '', 1),
(3687, 'Denizli', 223, '', '', 1),
(3688, 'Diyarbakir', 223, '', '', 1),
(3689, 'Duzce', 223, '', '', 1),
(3690, 'Edirne', 223, '', '', 1),
(3691, 'Elazig', 223, '', '', 1),
(3692, 'Erzincan', 223, '', '', 1),
(3693, 'Erzurum', 223, '', '', 1),
(3694, 'Eskisehir', 223, '', '', 1),
(3695, 'Gaziantep', 223, '', '', 1),
(3696, 'Giresun', 223, '', '', 1),
(3697, 'Gumushane', 223, '', '', 1),
(3698, 'Hakkari', 223, '', '', 1),
(3699, 'Hatay', 223, '', '', 1),
(3700, 'Icel', 223, '', '', 1),
(3701, 'Igdir', 223, '', '', 1),
(3702, 'Isparta', 223, '', '', 1),
(3703, 'Istanbul', 223, '', '', 1),
(3704, 'Izmir', 223, '', '', 1),
(3705, 'Kahramanmaras', 223, '', '', 1),
(3706, 'Karabuk', 223, '', '', 1),
(3707, 'Karaman', 223, '', '', 1),
(3708, 'Kars', 223, '', '', 1),
(3709, 'Karsiyaka', 223, '', '', 1),
(3710, 'Kastamonu', 223, '', '', 1),
(3711, 'Kayseri', 223, '', '', 1),
(3712, 'Kilis', 223, '', '', 1),
(3713, 'Kirikkale', 223, '', '', 1),
(3714, 'Kirklareli', 223, '', '', 1),
(3715, 'Kirsehir', 223, '', '', 1),
(3716, 'Kocaeli', 223, '', '', 1),
(3717, 'Konya', 223, '', '', 1),
(3718, 'Kutahya', 223, '', '', 1),
(3719, 'Lefkosa', 223, '', '', 1),
(3720, 'Malatya', 223, '', '', 1),
(3721, 'Manisa', 223, '', '', 1),
(3722, 'Mardin', 223, '', '', 1),
(3723, 'Mugla', 223, '', '', 1),
(3724, 'Mus', 223, '', '', 1),
(3725, 'Nevsehir', 223, '', '', 1),
(3726, 'Nigde', 223, '', '', 1),
(3727, 'Ordu', 223, '', '', 1),
(3728, 'Osmaniye', 223, '', '', 1),
(3729, 'Rize', 223, '', '', 1),
(3730, 'Sakarya', 223, '', '', 1),
(3731, 'Samsun', 223, '', '', 1),
(3732, 'Sanliurfa', 223, '', '', 1),
(3733, 'Siirt', 223, '', '', 1),
(3734, 'Sinop', 223, '', '', 1),
(3735, 'Sirnak', 223, '', '', 1),
(3736, 'Sivas', 223, '', '', 1),
(3737, 'Tekirdag', 223, '', '', 1),
(3738, 'Tokat', 223, '', '', 1),
(3739, 'Trabzon', 223, '', '', 1),
(3740, 'Tunceli', 223, '', '', 1),
(3741, 'Usak', 223, '', '', 1),
(3742, 'Van', 223, '', '', 1),
(3743, 'Yalova', 223, '', '', 1),
(3744, 'Yozgat', 223, '', '', 1),
(3745, 'Zonguldak', 223, '', '', 1),
(3746, 'Ahal', 224, '', '', 1),
(3747, 'Asgabat', 224, '', '', 1),
(3748, 'Balkan', 224, '', '', 1),
(3749, 'Dasoguz', 224, '', '', 1),
(3750, 'Lebap', 224, '', '', 1),
(3751, 'Mari', 224, '', '', 1),
(3752, 'Grand Turk', 225, '', '', 1),
(3753, 'South Caicos and East Caicos', 225, '', '', 1),
(3754, 'Funafuti', 226, '', '', 1),
(3755, 'Nanumanga', 226, '', '', 1),
(3756, 'Nanumea', 226, '', '', 1),
(3757, 'Niutao', 226, '', '', 1),
(3758, 'Nui', 226, '', '', 1),
(3759, 'Nukufetau', 226, '', '', 1),
(3760, 'Nukulaelae', 226, '', '', 1),
(3761, 'Vaitupu', 226, '', '', 1),
(3762, 'Central', 227, '', '', 1),
(3763, 'Eastern', 227, '', '', 1),
(3764, 'Northern', 227, '', '', 1),
(3765, 'Western', 227, '', '', 1),
(3766, 'Cherkas\'ka', 228, '', '', 1),
(3767, 'Chernihivs\'ka', 228, '', '', 1),
(3768, 'Chernivets\'ka', 228, '', '', 1),
(3769, 'Crimea', 228, '', '', 1),
(3770, 'Dnipropetrovska', 228, '', '', 1),
(3771, 'Donets\'ka', 228, '', '', 1),
(3772, 'Ivano-Frankivs\'ka', 228, '', '', 1),
(3773, 'Kharkiv', 228, '', '', 1),
(3774, 'Kharkov', 228, '', '', 1),
(3775, 'Khersonska', 228, '', '', 1),
(3776, 'Khmel\'nyts\'ka', 228, '', '', 1),
(3777, 'Kirovohrad', 228, '', '', 1),
(3778, 'Krym', 228, '', '', 1),
(3779, 'Kyyiv', 228, '', '', 1),
(3780, 'Kyyivs\'ka', 228, '', '', 1),
(3781, 'L\'vivs\'ka', 228, '', '', 1),
(3782, 'Luhans\'ka', 228, '', '', 1),
(3783, 'Mykolayivs\'ka', 228, '', '', 1),
(3784, 'Odes\'ka', 228, '', '', 1),
(3785, 'Odessa', 228, '', '', 1),
(3786, 'Poltavs\'ka', 228, '', '', 1),
(3787, 'Rivnens\'ka', 228, '', '', 1),
(3788, 'Sevastopol\'', 228, '', '', 1),
(3789, 'Sums\'ka', 228, '', '', 1),
(3790, 'Ternopil\'s\'ka', 228, '', '', 1),
(3791, 'Volyns\'ka', 228, '', '', 1),
(3792, 'Vynnyts\'ka', 228, '', '', 1),
(3793, 'Zakarpats\'ka', 228, '', '', 1),
(3794, 'Zaporizhia', 228, '', '', 1),
(3795, 'Zhytomyrs\'ka', 228, '', '', 1),
(3796, 'Abu Zabi', 229, '', '', 1),
(3797, 'Ajman', 229, '', '', 1),
(3798, 'Dubai', 229, '', '', 1),
(3799, 'Ras al-Khaymah', 229, '', '', 1),
(3800, 'Sharjah', 229, '', '', 1),
(3801, 'Sharjha', 229, '', '', 1),
(3802, 'Umm al Qaywayn', 229, '', '', 1),
(3803, 'al-Fujayrah', 229, '', '', 1),
(3804, 'ash-Shariqah', 229, '', '', 1),
(3805, 'Aberdeen', 230, '', '', 1),
(3806, 'Aberdeenshire', 230, '', '', 1),
(3807, 'Argyll', 230, '', '', 1),
(3808, 'Armagh', 230, '', '', 1),
(3809, 'Bedfordshire', 230, '', '', 1),
(3810, 'Belfast', 230, '', '', 1),
(3811, 'Berkshire', 230, '', '', 1),
(3812, 'Birmingham', 230, '', '', 1),
(3813, 'Brechin', 230, '', '', 1),
(3814, 'Bridgnorth', 230, '', '', 1),
(3815, 'Bristol', 230, '', '', 1),
(3816, 'Buckinghamshire', 230, '', '', 1),
(3817, 'Cambridge', 230, '', '', 1),
(3818, 'Cambridgeshire', 230, '', '', 1),
(3819, 'Channel Islands', 230, '', '', 1),
(3820, 'Cheshire', 230, '', '', 1),
(3821, 'Cleveland', 230, '', '', 1),
(3822, 'Co Fermanagh', 230, '', '', 1),
(3823, 'Conwy', 230, '', '', 1),
(3824, 'Cornwall', 230, '', '', 1),
(3825, 'Coventry', 230, '', '', 1),
(3826, 'Craven Arms', 230, '', '', 1),
(3827, 'Cumbria', 230, '', '', 1),
(3828, 'Denbighshire', 230, '', '', 1),
(3829, 'Derby', 230, '', '', 1),
(3830, 'Derbyshire', 230, '', '', 1),
(3831, 'Devon', 230, '', '', 1),
(3832, 'Dial Code Dungannon', 230, '', '', 1),
(3833, 'Didcot', 230, '', '', 1),
(3834, 'Dorset', 230, '', '', 1),
(3835, 'Dunbartonshire', 230, '', '', 1),
(3836, 'Durham', 230, '', '', 1),
(3837, 'East Dunbartonshire', 230, '', '', 1),
(3838, 'East Lothian', 230, '', '', 1),
(3839, 'East Midlands', 230, '', '', 1),
(3840, 'East Sussex', 230, '', '', 1),
(3841, 'East Yorkshire', 230, '', '', 1),
(3842, 'England', 230, '', '', 1),
(3843, 'Essex', 230, '', '', 1),
(3844, 'Fermanagh', 230, '', '', 1),
(3845, 'Fife', 230, '', '', 1),
(3846, 'Flintshire', 230, '', '', 1),
(3847, 'Fulham', 230, '', '', 1),
(3848, 'Gainsborough', 230, '', '', 1),
(3849, 'Glocestershire', 230, '', '', 1),
(3850, 'Gwent', 230, '', '', 1),
(3851, 'Hampshire', 230, '', '', 1),
(3852, 'Hants', 230, '', '', 1),
(3853, 'Herefordshire', 230, '', '', 1),
(3854, 'Hertfordshire', 230, '', '', 1),
(3855, 'Ireland', 230, '', '', 1),
(3856, 'Isle Of Man', 230, '', '', 1),
(3857, 'Isle of Wight', 230, '', '', 1),
(3858, 'Kenford', 230, '', '', 1),
(3859, 'Kent', 230, '', '', 1),
(3860, 'Kilmarnock', 230, '', '', 1),
(3861, 'Lanarkshire', 230, '', '', 1),
(3862, 'Lancashire', 230, '', '', 1),
(3863, 'Leicestershire', 230, '', '', 1),
(3864, 'Lincolnshire', 230, '', '', 1),
(3865, 'Llanymynech', 230, '', '', 1),
(3866, 'London', 230, '', '', 1),
(3867, 'Ludlow', 230, '', '', 1),
(3868, 'Manchester', 230, '', '', 1),
(3869, 'Mayfair', 230, '', '', 1),
(3870, 'Merseyside', 230, '', '', 1),
(3871, 'Mid Glamorgan', 230, '', '', 1),
(3872, 'Middlesex', 230, '', '', 1),
(3873, 'Mildenhall', 230, '', '', 1),
(3874, 'Monmouthshire', 230, '', '', 1),
(3875, 'Newton Stewart', 230, '', '', 1),
(3876, 'Norfolk', 230, '', '', 1),
(3877, 'North Humberside', 230, '', '', 1),
(3878, 'North Yorkshire', 230, '', '', 1),
(3879, 'Northamptonshire', 230, '', '', 1),
(3880, 'Northants', 230, '', '', 1),
(3881, 'Northern Ireland', 230, '', '', 1),
(3882, 'Northumberland', 230, '', '', 1),
(3883, 'Nottinghamshire', 230, '', '', 1),
(3884, 'Oxford', 230, '', '', 1),
(3885, 'Powys', 230, '', '', 1),
(3886, 'Roos-shire', 230, '', '', 1),
(3887, 'SUSSEX', 230, '', '', 1),
(3888, 'Sark', 230, '', '', 1),
(3889, 'Scotland', 230, '', '', 1),
(3890, 'Scottish Borders', 230, '', '', 1),
(3891, 'Shropshire', 230, '', '', 1),
(3892, 'Somerset', 230, '', '', 1),
(3893, 'South Glamorgan', 230, '', '', 1),
(3894, 'South Wales', 230, '', '', 1),
(3895, 'South Yorkshire', 230, '', '', 1),
(3896, 'Southwell', 230, '', '', 1),
(3897, 'Staffordshire', 230, '', '', 1),
(3898, 'Strabane', 230, '', '', 1),
(3899, 'Suffolk', 230, '', '', 1),
(3900, 'Surrey', 230, '', '', 1),
(3901, 'Sussex', 230, '', '', 1),
(3902, 'Twickenham', 230, '', '', 1),
(3903, 'Tyne and Wear', 230, '', '', 1),
(3904, 'Tyrone', 230, '', '', 1),
(3905, 'Utah', 230, '', '', 1),
(3906, 'Wales', 230, '', '', 1),
(3907, 'Warwickshire', 230, '', '', 1),
(3908, 'West Lothian', 230, '', '', 1),
(3909, 'West Midlands', 230, '', '', 1),
(3910, 'West Sussex', 230, '', '', 1),
(3911, 'West Yorkshire', 230, '', '', 1),
(3912, 'Whissendine', 230, '', '', 1),
(3913, 'Wiltshire', 230, '', '', 1),
(3914, 'Wokingham', 230, '', '', 1),
(3915, 'Worcestershire', 230, '', '', 1),
(3916, 'Wrexham', 230, '', '', 1),
(3917, 'Wurttemberg', 230, '', '', 1),
(3918, 'Yorkshire', 230, '', '', 1),
(3919, 'Alabama', 231, '', '', 1),
(3920, 'Alaska', 231, '', '', 1),
(3921, 'Arizona', 231, '', '', 1),
(3922, 'Arkansas', 231, '', '', 1),
(3923, 'Byram', 231, '', '', 1),
(3924, 'California', 231, '', '', 1),
(3925, 'Cokato', 231, '', '', 1),
(3926, 'Colorado', 231, '', '', 1),
(3927, 'Connecticut', 231, '', '', 1),
(3928, 'Delaware', 231, '', '', 1),
(3929, 'District of Columbia', 231, '', '', 1),
(3930, 'Florida', 231, '', '', 1),
(3931, 'Georgia', 231, '', '', 1),
(3932, 'Hawaii', 231, '', '', 1),
(3933, 'Idaho', 231, '', '', 1),
(3934, 'Illinois', 231, '', '', 1),
(3935, 'Indiana', 231, '', '', 1),
(3936, 'Iowa', 231, '', '', 1),
(3937, 'Kansas', 231, '', '', 1),
(3938, 'Kentucky', 231, '', '', 1),
(3939, 'Louisiana', 231, '', '', 1),
(3940, 'Lowa', 231, '', '', 1),
(3941, 'Maine', 231, '', '', 1),
(3942, 'Maryland', 231, '', '', 1),
(3943, 'Massachusetts', 231, '', '', 1),
(3944, 'Medfield', 231, '', '', 1),
(3945, 'Michigan', 231, '', '', 1),
(3946, 'Minnesota', 231, '', '', 1),
(3947, 'Mississippi', 231, '', '', 1),
(3948, 'Missouri', 231, '', '', 1),
(3949, 'Montana', 231, '', '', 1),
(3950, 'Nebraska', 231, '', '', 1),
(3951, 'Nevada', 231, '', '', 1),
(3952, 'New Hampshire', 231, '', '', 1),
(3953, 'New Jersey', 231, '', '', 1),
(3954, 'New Jersy', 231, '', '', 1),
(3955, 'New Mexico', 231, '', '', 1),
(3956, 'New York', 231, '', '', 1),
(3957, 'North Carolina', 231, '', '', 1),
(3958, 'North Dakota', 231, '', '', 1),
(3959, 'Ohio', 231, '', '', 1),
(3960, 'Oklahoma', 231, '', '', 1),
(3961, 'Ontario', 231, '', '', 1),
(3962, 'Oregon', 231, '', '', 1),
(3963, 'Pennsylvania', 231, '', '', 1),
(3964, 'Ramey', 231, '', '', 1),
(3965, 'Rhode Island', 231, '', '', 1),
(3966, 'South Carolina', 231, '', '', 1),
(3967, 'South Dakota', 231, '', '', 1),
(3968, 'Sublimity', 231, '', '', 1),
(3969, 'Tennessee', 231, '', '', 1),
(3970, 'Texas', 231, '', '', 1),
(3971, 'Trimble', 231, '', '', 1),
(3972, 'Utah', 231, '', '', 1),
(3973, 'Vermont', 231, '', '', 1),
(3974, 'Virginia', 231, '', '', 1),
(3975, 'Washington', 231, '', '', 1),
(3976, 'West Virginia', 231, '', '', 1),
(3977, 'Wisconsin', 231, '', '', 1),
(3978, 'Wyoming', 231, '', '', 1),
(3979, 'United States Minor Outlying I', 232, '', '', 1),
(3980, 'Artigas', 233, '', '', 1),
(3981, 'Canelones', 233, '', '', 1),
(3982, 'Cerro Largo', 233, '', '', 1),
(3983, 'Colonia', 233, '', '', 1),
(3984, 'Durazno', 233, '', '', 1),
(3985, 'FLorida', 233, '', '', 1),
(3986, 'Flores', 233, '', '', 1),
(3987, 'Lavalleja', 233, '', '', 1),
(3988, 'Maldonado', 233, '', '', 1),
(3989, 'Montevideo', 233, '', '', 1),
(3990, 'Paysandu', 233, '', '', 1),
(3991, 'Rio Negro', 233, '', '', 1),
(3992, 'Rivera', 233, '', '', 1),
(3993, 'Rocha', 233, '', '', 1),
(3994, 'Salto', 233, '', '', 1),
(3995, 'San Jose', 233, '', '', 1),
(3996, 'Soriano', 233, '', '', 1),
(3997, 'Tacuarembo', 233, '', '', 1),
(3998, 'Treinta y Tres', 233, '', '', 1),
(3999, 'Andijon', 234, '', '', 1),
(4000, 'Buhoro', 234, '', '', 1),
(4001, 'Buxoro Viloyati', 234, '', '', 1),
(4002, 'Cizah', 234, '', '', 1),
(4003, 'Fargona', 234, '', '', 1),
(4004, 'Horazm', 234, '', '', 1),
(4005, 'Kaskadar', 234, '', '', 1),
(4006, 'Korakalpogiston', 234, '', '', 1),
(4007, 'Namangan', 234, '', '', 1),
(4008, 'Navoi', 234, '', '', 1),
(4009, 'Samarkand', 234, '', '', 1),
(4010, 'Sirdare', 234, '', '', 1),
(4011, 'Surhondar', 234, '', '', 1),
(4012, 'Toskent', 234, '', '', 1),
(4013, 'Malampa', 235, '', '', 1),
(4014, 'Penama', 235, '', '', 1),
(4015, 'Sanma', 235, '', '', 1),
(4016, 'Shefa', 235, '', '', 1),
(4017, 'Tafea', 235, '', '', 1),
(4018, 'Torba', 235, '', '', 1),
(4019, 'Vatican City State (Holy See)', 236, '', '', 1),
(4020, 'Amazonas', 237, '', '', 1),
(4021, 'Anzoategui', 237, '', '', 1),
(4022, 'Apure', 237, '', '', 1),
(4023, 'Aragua', 237, '', '', 1),
(4024, 'Barinas', 237, '', '', 1),
(4025, 'Bolivar', 237, '', '', 1),
(4026, 'Carabobo', 237, '', '', 1),
(4027, 'Cojedes', 237, '', '', 1),
(4028, 'Delta Amacuro', 237, '', '', 1),
(4029, 'Distrito Federal', 237, '', '', 1),
(4030, 'Falcon', 237, '', '', 1),
(4031, 'Guarico', 237, '', '', 1),
(4032, 'Lara', 237, '', '', 1),
(4033, 'Merida', 237, '', '', 1),
(4034, 'Miranda', 237, '', '', 1),
(4035, 'Monagas', 237, '', '', 1),
(4036, 'Nueva Esparta', 237, '', '', 1),
(4037, 'Portuguesa', 237, '', '', 1),
(4038, 'Sucre', 237, '', '', 1),
(4039, 'Tachira', 237, '', '', 1),
(4040, 'Trujillo', 237, '', '', 1),
(4041, 'Vargas', 237, '', '', 1),
(4042, 'Yaracuy', 237, '', '', 1),
(4043, 'Zulia', 237, '', '', 1),
(4044, 'Bac Giang', 238, '', '', 1),
(4045, 'Binh Dinh', 238, '', '', 1),
(4046, 'Binh Duong', 238, '', '', 1),
(4047, 'Da Nang', 238, '', '', 1),
(4048, 'Dong Bang Song Cuu Long', 238, '', '', 1),
(4049, 'Dong Bang Song Hong', 238, '', '', 1),
(4050, 'Dong Nai', 238, '', '', 1),
(4051, 'Dong Nam Bo', 238, '', '', 1),
(4052, 'Duyen Hai Mien Trung', 238, '', '', 1),
(4053, 'Hanoi', 238, '', '', 1),
(4054, 'Hung Yen', 238, '', '', 1),
(4055, 'Khu Bon Cu', 238, '', '', 1),
(4056, 'Long An', 238, '', '', 1),
(4057, 'Mien Nui Va Trung Du', 238, '', '', 1),
(4058, 'Thai Nguyen', 238, '', '', 1),
(4059, 'Thanh Pho Ho Chi Minh', 238, '', '', 1),
(4060, 'Thu Do Ha Noi', 238, '', '', 1),
(4061, 'Tinh Can Tho', 238, '', '', 1),
(4062, 'Tinh Da Nang', 238, '', '', 1),
(4063, 'Tinh Gia Lai', 238, '', '', 1),
(4064, 'Anegada', 239, '', '', 1),
(4065, 'Jost van Dyke', 239, '', '', 1),
(4066, 'Tortola', 239, '', '', 1),
(4067, 'Saint Croix', 240, '', '', 1),
(4068, 'Saint John', 240, '', '', 1),
(4069, 'Saint Thomas', 240, '', '', 1),
(4070, 'Alo', 241, '', '', 1),
(4071, 'Singave', 241, '', '', 1),
(4072, 'Wallis', 241, '', '', 1),
(4073, 'Bu Jaydur', 242, '', '', 1),
(4074, 'Wad-adh-Dhahab', 242, '', '', 1),
(4075, 'al-\'Ayun', 242, '', '', 1),
(4076, 'as-Samarah', 242, '', '', 1),
(4077, '\'Adan', 243, '', '', 1),
(4078, 'Abyan', 243, '', '', 1),
(4079, 'Dhamar', 243, '', '', 1),
(4080, 'Hadramaut', 243, '', '', 1),
(4081, 'Hajjah', 243, '', '', 1),
(4082, 'Hudaydah', 243, '', '', 1),
(4083, 'Ibb', 243, '', '', 1),
(4084, 'Lahij', 243, '', '', 1),
(4085, 'Ma\'rib', 243, '', '', 1),
(4086, 'Madinat San\'a', 243, '', '', 1),
(4087, 'Sa\'dah', 243, '', '', 1),
(4088, 'Sana', 243, '', '', 1),
(4089, 'Shabwah', 243, '', '', 1),
(4090, 'Ta\'izz', 243, '', '', 1),
(4091, 'al-Bayda', 243, '', '', 1),
(4092, 'al-Hudaydah', 243, '', '', 1),
(4093, 'al-Jawf', 243, '', '', 1),
(4094, 'al-Mahrah', 243, '', '', 1),
(4095, 'al-Mahwit', 243, '', '', 1),
(4096, 'Central Serbia', 244, '', '', 1),
(4097, 'Kosovo and Metohija', 244, '', '', 1),
(4098, 'Montenegro', 244, '', '', 1),
(4099, 'Republic of Serbia', 244, '', '', 1),
(4100, 'Serbia', 244, '', '', 1),
(4101, 'Vojvodina', 244, '', '', 1),
(4102, 'Central', 245, '', '', 1),
(4103, 'Copperbelt', 245, '', '', 1),
(4104, 'Eastern', 245, '', '', 1),
(4105, 'Luapala', 245, '', '', 1),
(4106, 'Lusaka', 245, '', '', 1),
(4107, 'North-Western', 245, '', '', 1),
(4108, 'Northern', 245, '', '', 1),
(4109, 'Southern', 245, '', '', 1),
(4110, 'Western', 245, '', '', 1),
(4111, 'Bulawayo', 246, '', '', 1),
(4112, 'Harare', 246, '', '', 1),
(4113, 'Manicaland', 246, '', '', 1),
(4114, 'Mashonaland Central', 246, '', '', 1),
(4115, 'Mashonaland East', 246, '', '', 1),
(4116, 'Mashonaland West', 246, '', '', 1),
(4117, 'Masvingo', 246, '', '', 1),
(4118, 'Matabeleland North', 246, '', '', 1),
(4119, 'Matabeleland South', 246, '', '', 1),
(4120, 'Midlands', 246, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_varieties`
--

CREATE TABLE `sub_varieties` (
  `id` int(11) NOT NULL,
  `variety_plink` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sub_varieties`
--

INSERT INTO `sub_varieties` (`id`, `variety_plink`, `title`, `description`, `image`) VALUES
(1, 'Flower-Plant', 'Plant Name Comes Here', ' Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius.', '201712181831518533935_a3.jpg'),
(2, 'Decorative-Plant', 'Plant Name Comes Here', ' Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius.', '201712181837208986816_a3.jpg'),
(3, 'Flower-Plant', 'Plant Name Comes Here', ' Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius.\r\n\r\n', '201712191347194357910_a2.jpg'),
(4, 'Flower-Plant', 'Plant Name Comes Here', ' Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius.\r\n', '201712191347577529602_a3.jpg'),
(5, 'Flower-Plant', 'Title Here', 'Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius.\r\n\r\n', '201712191348165587768_a4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `varieties`
--

CREATE TABLE `varieties` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `plink` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `varieties`
--

INSERT INTO `varieties` (`id`, `title`, `image`, `plink`) VALUES
(2, 'Avenue Plant', '20171218174739894775_a1.jpg', 'Avenue-Plant'),
(3, 'Decorative Plant', '201712181753138172912_a3.jpg', 'Decorative-Plant'),
(4, 'Fruit Plant', '201712181754001333618_a4.jpg', 'Fruit-Plant'),
(5, 'Flower Plant', '201712181754448349609_a5.jpg', 'Flower-Plant');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(20) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_type_link` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_name`, `vehicle_type_link`, `created_at`) VALUES
(1, 'Skoda', '1', '1508494073'),
(3, 'Honda City', '2', '1508497588');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `type`, `created_at`) VALUES
(1, 'Sedan', '1508486473'),
(2, 'Hatchback', '1508487232');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `salt` varchar(255) COLLATE utf8_bin NOT NULL,
  `access_token` varchar(255) COLLATE utf8_bin NOT NULL,
  `otp` int(20) NOT NULL,
  `fname` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin NOT NULL,
  `company_info` longtext COLLATE utf8_bin DEFAULT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `picture_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `document1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `document2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `document3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `document4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `username`, `password`, `salt`, `access_token`, `otp`, `fname`, `email`, `mobile`, `company_info`, `oauth_provider`, `oauth_uid`, `picture_url`, `status`, `document1`, `document2`, `document3`, `document4`, `created_at`, `updated_at`) VALUES
(1, 'sujith', '7d24785ac2f1f20f3282ad277d1bee2c', 'zmtmrEUMKp', 'cjvIieHnMdlcERazlgnhR1GIFdkHHr1AsOYcUTTUvO2xe75rxW', 452111, '', 'sujith@thecolourmoon.com', '9652072613', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<h2>Why do we use it?</h2>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n', NULL, NULL, NULL, '1', '201710161557159839782_s3.png', '201710161611117519226_s2.png', '201710161552256817626_s7.png', '201710161552251263732_s8.png', '1502267890', NULL),
(2, 'teja123', '4d0d216a6c584d083a8557c3047c65d8', 'TrMgSDcxCV', 'NOJbFGgPjmrXR26vRsBYrPNibRZYbN3X1kkIOGEe8AnX6glShp', 578372, 'teja', 'teja@thecolourmoon.com', '9030700592', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1507716366', NULL),
(3, 'sujith222', '0eb9106c617ec89685890175623bd318', 'AwW5GRxse5', 'eyNuzkQA5CJqYhrBYEqfjzEUGoBIkWeeWA1AL9Vlv0qBnXuX7n', 166741, 'sujith 12345', 'sujith222@yopmail.com', '8919858265', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1507783185', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `link`, `image`) VALUES
(1, 'https://www.youtube.com/watch?v=MK_C0QYwNng', '202010141532393758437_'),
(2, 'https://www.youtube.com/watch?v=nVeECOl_kUs', 'api-dev-banner@2x1.png'),
(4, 'https://www.youtube.com/watch?v=HTj4m3SMHDY', 'Banner_1.jpg'),
(5, 'https://www.youtube.com/watch?v=nVeECOl_kUs', 'SAP-banner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `title`, `description`, `image`) VALUES
(1, 'Welcome to IAPC', '<p class=\"text-justify\">\r\n					International Ambassador’s for Peace Corporation is a non-profit institution and its function will be to preserve human life on the planet and outside of it.\r\n				   </p>\r\n<p class=\"text-justify\">\r\n				   	This Worldwide Organization will conform to the guidelines of the United Nations, which is the ruling parent organization that together with the countries which are members determines and proposes the destinies of our humanity.&nbsp;\r\n				   </p>\r\n<p class=\"text-justify\">\r\n				   	The International Ambassador’s for Peace Corporation will have as its key purpose a proposal of a ceasefire on the entire planet, and at the same time promote a peaceful \r\n				   </p>\r\n', '201808091805257528076_about_img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `why_we_are`
--

CREATE TABLE `why_we_are` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `why_we_are`
--

INSERT INTO `why_we_are` (`id`, `title`, `sub_title`) VALUES
(1, 'Peace \r\nThrough Diplomacy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(2, 'Peace \r\nThrough Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(3, 'Peace \r\nThrough Employment\r\n', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(4, 'Peace  Through Diplomacy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administrative_bodies`
--
ALTER TABLE `administrative_bodies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertise_cms`
--
ALTER TABLE `advertise_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advisory_council`
--
ALTER TABLE `advisory_council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headlines`
--
ALTER TABLE `headlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honorable_council`
--
ALTER TABLE `honorable_council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipcheck`
--
ALTER TABLE `ipcheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`vendor_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_title`
--
ALTER TABLE `membership_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_news_events`
--
ALTER TABLE `our_news_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_albums`
--
ALTER TABLE `photo_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_categories`
--
ALTER TABLE `services_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `sub_varieties`
--
ALTER TABLE `sub_varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varieties`
--
ALTER TABLE `varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_we_are`
--
ALTER TABLE `why_we_are`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `administrative_bodies`
--
ALTER TABLE `administrative_bodies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `advertise_cms`
--
ALTER TABLE `advertise_cms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advisory_council`
--
ALTER TABLE `advisory_council`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `headlines`
--
ALTER TABLE `headlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `honorable_council`
--
ALTER TABLE `honorable_council`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ipcheck`
--
ALTER TABLE `ipcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `membership_title`
--
ALTER TABLE `membership_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_news_events`
--
ALTER TABLE `our_news_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overview`
--
ALTER TABLE `overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photo_albums`
--
ALTER TABLE `photo_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services_categories`
--
ALTER TABLE `services_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `sub_varieties`
--
ALTER TABLE `sub_varieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `varieties`
--
ALTER TABLE `varieties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `why_we_are`
--
ALTER TABLE `why_we_are`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
