-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 05:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donate`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_detail`
--

DROP TABLE IF EXISTS `area_detail`;
CREATE TABLE `area_detail` (
  `id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `area_zipcode` varchar(45) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_activedate` date NOT NULL,
  `title` varchar(500) NOT NULL,
  `title_url` varchar(550) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `blog_data` text DEFAULT NULL,
  `blog_banners` varchar(500) DEFAULT NULL,
  `createdBy_id` int(10) UNSIGNED DEFAULT NULL,
  `createdBy_datetime` datetime DEFAULT NULL,
  `approvedBy_id` int(10) UNSIGNED DEFAULT NULL,
  `approvedBy_datetime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_subcategory`
--

DROP TABLE IF EXISTS `blog_subcategory`;
CREATE TABLE `blog_subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_types`
--

DROP TABLE IF EXISTS `blood_types`;
CREATE TABLE `blood_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `blood_code` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_types`
--

INSERT INTO `blood_types` (`id`, `name`, `blood_code`, `status`, `datetime`) VALUES
(1, 'A RhD positive', 'A+', 1, '0000-00-00 00:00:00'),
(2, 'A RhD negative', 'A-', 1, '0000-00-00 00:00:00'),
(3, 'B RhD positive', 'B+', 1, '0000-00-00 00:00:00'),
(4, 'B RhD negative', 'B-', 1, '0000-00-00 00:00:00'),
(5, 'O RhD positive', 'O+', 1, '0000-00-00 00:00:00'),
(6, 'O RhD negative', 'O-', 1, '0000-00-00 00:00:00'),
(7, 'AB RhD positive', 'AB+', 1, '0000-00-00 00:00:00'),
(8, 'AB RhD negative', 'AB-', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_code` varchar(45) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `name`, `latitude`, `longitude`, `status`, `datetime`) VALUES
(1, 'AD', 'Andorra', '42.546245', '1.601554', 1, '0000-00-00 00:00:00'),
(2, 'AE', 'United Arab Emirates', '23.424076', '53.847818', 1, '0000-00-00 00:00:00'),
(3, 'AF', 'Afghanistan', '33.93911', '67.709953', 1, '0000-00-00 00:00:00'),
(4, 'AG', 'Antigua and Barbuda', '17.060816', '-61.796428', 1, '0000-00-00 00:00:00'),
(5, 'AI', 'Anguilla', '18.220554', '-63.068615', 1, '0000-00-00 00:00:00'),
(6, 'AL', 'Albania', '41.153332', '20.168331', 1, '0000-00-00 00:00:00'),
(7, 'AM', 'Armenia', '40.069099', '45.038189', 1, '0000-00-00 00:00:00'),
(8, 'AN', 'Netherlands Antilles', '12.226079', '-69.060087', 1, '0000-00-00 00:00:00'),
(9, 'AO', 'Angola', '-11.202692', '17.873887', 1, '0000-00-00 00:00:00'),
(10, 'AQ', 'Antarctica', '-75.250973', '-0.071389', 1, '0000-00-00 00:00:00'),
(11, 'AR', 'Argentina', '-38.416097', '-63.616672', 1, '0000-00-00 00:00:00'),
(12, 'AS', 'American Samoa', '-14.270972', '-170.132217', 1, '0000-00-00 00:00:00'),
(13, 'AT', 'Austria', '47.516231', '14.550072', 1, '0000-00-00 00:00:00'),
(14, 'AU', 'Australia', '-25.274398', '133.775136', 1, '0000-00-00 00:00:00'),
(15, 'AW', 'Aruba', '12.52111', '-69.968338', 1, '0000-00-00 00:00:00'),
(16, 'AZ', 'Azerbaijan', '40.143105', '47.576927', 1, '0000-00-00 00:00:00'),
(17, 'BA', 'Bosnia and Herzegovina', '43.915886', '17.679076', 1, '0000-00-00 00:00:00'),
(18, 'BB', 'Barbados', '13.193887', '-59.543198', 1, '0000-00-00 00:00:00'),
(19, 'BD', 'Bangladesh', '23.684994', '90.356331', 1, '0000-00-00 00:00:00'),
(20, 'BE', 'Belgium', '50.503887', '4.469936', 1, '0000-00-00 00:00:00'),
(21, 'BF', 'Burkina Faso', '12.238333', '-1.561593', 1, '0000-00-00 00:00:00'),
(22, 'BG', 'Bulgaria', '42.733883', '25.48583', 1, '0000-00-00 00:00:00'),
(23, 'BH', 'Bahrain', '25.930414', '50.637772', 1, '0000-00-00 00:00:00'),
(24, 'BI', 'Burundi', '-3.373056', '29.918886', 1, '0000-00-00 00:00:00'),
(25, 'BJ', 'Benin', '9.30769', '2.315834', 1, '0000-00-00 00:00:00'),
(26, 'BM', 'Bermuda', '32.321384', '-64.75737', 1, '0000-00-00 00:00:00'),
(27, 'BN', 'Brunei', '4.535277', '114.727669', 1, '0000-00-00 00:00:00'),
(28, 'BO', 'Bolivia', '-16.290154', '-63.588653', 1, '0000-00-00 00:00:00'),
(29, 'BR', 'Brazil', '-14.235004', '-51.92528', 1, '0000-00-00 00:00:00'),
(30, 'BS', 'Bahamas', '25.03428', '-77.39628', 1, '0000-00-00 00:00:00'),
(31, 'BT', 'Bhutan', '27.514162', '90.433601', 1, '0000-00-00 00:00:00'),
(32, 'BV', 'Bouvet Island', '-54.423199', '3.413194', 1, '0000-00-00 00:00:00'),
(33, 'BW', 'Botswana', '-22.328474', '24.684866', 1, '0000-00-00 00:00:00'),
(34, 'BY', 'Belarus', '53.709807', '27.953389', 1, '0000-00-00 00:00:00'),
(35, 'BZ', 'Belize', '17.189877', '-88.49765', 1, '0000-00-00 00:00:00'),
(36, 'CA', 'Canada', '56.130366', '-106.346771', 1, '0000-00-00 00:00:00'),
(37, 'CC', 'Cocos [Keeling] Islands', '-12.164165', '96.870956', 1, '0000-00-00 00:00:00'),
(38, 'CD', 'Congo [DRC]', '-4.038333', '21.758664', 1, '0000-00-00 00:00:00'),
(39, 'CF', 'Central African Republic', '6.611111', '20.939444', 1, '0000-00-00 00:00:00'),
(40, 'CG', 'Congo [Republic]', '-0.228021', '15.827659', 1, '0000-00-00 00:00:00'),
(41, 'CH', 'Switzerland', '46.818188', '8.227512', 1, '0000-00-00 00:00:00'),
(42, 'CI', 'Côte d\'Ivoire', '7.539989', '-5.54708', 1, '0000-00-00 00:00:00'),
(43, 'CK', 'Cook Islands', '-21.236736', '-159.777671', 1, '0000-00-00 00:00:00'),
(44, 'CL', 'Chile', '-35.675147', '-71.542969', 1, '0000-00-00 00:00:00'),
(45, 'CM', 'Cameroon', '7.369722', '12.354722', 1, '0000-00-00 00:00:00'),
(46, 'CN', 'China', '35.86166', '104.195397', 1, '0000-00-00 00:00:00'),
(47, 'CO', 'Colombia', '4.570868', '-74.297333', 1, '0000-00-00 00:00:00'),
(48, 'CR', 'Costa Rica', '9.748917', '-83.753428', 1, '0000-00-00 00:00:00'),
(49, 'CU', 'Cuba', '21.521757', '-77.781167', 1, '0000-00-00 00:00:00'),
(50, 'CV', 'Cape Verde', '16.002082', '-24.013197', 1, '0000-00-00 00:00:00'),
(51, 'CX', 'Christmas Island', '-10.447525', '105.690449', 1, '0000-00-00 00:00:00'),
(52, 'CY', 'Cyprus', '35.126413', '33.429859', 1, '0000-00-00 00:00:00'),
(53, 'CZ', 'Czech Republic', '49.817492', '15.472962', 1, '0000-00-00 00:00:00'),
(54, 'DE', 'Germany', '51.165691', '10.451526', 1, '0000-00-00 00:00:00'),
(55, 'DJ', 'Djibouti', '11.825138', '42.590275', 1, '0000-00-00 00:00:00'),
(56, 'DK', 'Denmark', '56.26392', '9.501785', 1, '0000-00-00 00:00:00'),
(57, 'DM', 'Dominica', '15.414999', '-61.370976', 1, '0000-00-00 00:00:00'),
(58, 'DO', 'Dominican Republic', '18.735693', '-70.162651', 1, '0000-00-00 00:00:00'),
(59, 'DZ', 'Algeria', '28.033886', '1.659626', 1, '0000-00-00 00:00:00'),
(60, 'EC', 'Ecuador', '-1.831239', '-78.183406', 1, '0000-00-00 00:00:00'),
(61, 'EE', 'Estonia', '58.595272', '25.013607', 1, '0000-00-00 00:00:00'),
(62, 'EG', 'Egypt', '26.820553', '30.802498', 1, '0000-00-00 00:00:00'),
(63, 'EH', 'Western Sahara', '24.215527', '-12.885834', 1, '0000-00-00 00:00:00'),
(64, 'ER', 'Eritrea', '15.179384', '39.782334', 1, '0000-00-00 00:00:00'),
(65, 'ES', 'Spain', '40.463667', '-3.74922', 1, '0000-00-00 00:00:00'),
(66, 'ET', 'Ethiopia', '9.145', '40.489673', 1, '0000-00-00 00:00:00'),
(67, 'FI', 'Finland', '61.92411', '25.748151', 1, '0000-00-00 00:00:00'),
(68, 'FJ', 'Fiji', '-16.578193', '179.414413', 1, '0000-00-00 00:00:00'),
(69, 'FK', 'Falkland Islands [Islas Malvinas]', '-51.796253', '-59.523613', 1, '0000-00-00 00:00:00'),
(70, 'FM', 'Micronesia', '7.425554', '150.550812', 1, '0000-00-00 00:00:00'),
(71, 'FO', 'Faroe Islands', '61.892635', '-6.911806', 1, '0000-00-00 00:00:00'),
(72, 'FR', 'France', '46.227638', '2.213749', 1, '0000-00-00 00:00:00'),
(73, 'GA', 'Gabon', '-0.803689', '11.609444', 1, '0000-00-00 00:00:00'),
(74, 'GB', 'United Kingdom', '55.378051', '-3.435973', 1, '0000-00-00 00:00:00'),
(75, 'GD', 'Grenada', '12.262776', '-61.604171', 1, '0000-00-00 00:00:00'),
(76, 'GE', 'Georgia', '42.315407', '43.356892', 1, '0000-00-00 00:00:00'),
(77, 'GF', 'French Guiana', '3.933889', '-53.125782', 1, '0000-00-00 00:00:00'),
(78, 'GG', 'Guernsey', '49.465691', '-2.585278', 1, '0000-00-00 00:00:00'),
(79, 'GH', 'Ghana', '7.946527', '-1.023194', 1, '0000-00-00 00:00:00'),
(80, 'GI', 'Gibraltar', '36.137741', '-5.345374', 1, '0000-00-00 00:00:00'),
(81, 'GL', 'Greenland', '71.706936', '-42.604303', 1, '0000-00-00 00:00:00'),
(82, 'GM', 'Gambia', '13.443182', '-15.310139', 1, '0000-00-00 00:00:00'),
(83, 'GN', 'Guinea', '9.945587', '-9.696645', 1, '0000-00-00 00:00:00'),
(84, 'GP', 'Guadeloupe', '16.995971', '-62.067641', 1, '0000-00-00 00:00:00'),
(85, 'GQ', 'Equatorial Guinea', '1.650801', '10.267895', 1, '0000-00-00 00:00:00'),
(86, 'GR', 'Greece', '39.074208', '21.824312', 1, '0000-00-00 00:00:00'),
(87, 'GS', 'South Georgia and the South Sandwich Islands', '-54.429579', '-36.587909', 1, '0000-00-00 00:00:00'),
(88, 'GT', 'Guatemala', '15.783471', '-90.230759', 1, '0000-00-00 00:00:00'),
(89, 'GU', 'Guam', '13.444304', '144.793731', 1, '0000-00-00 00:00:00'),
(90, 'GW', 'Guinea-Bissau', '11.803749', '-15.180413', 1, '0000-00-00 00:00:00'),
(91, 'GY', 'Guyana', '4.860416', '-58.93018', 1, '0000-00-00 00:00:00'),
(92, 'GZ', 'Gaza Strip', '31.354676', '34.308825', 1, '0000-00-00 00:00:00'),
(93, 'HK', 'Hong Kong', '22.396428', '114.109497', 1, '0000-00-00 00:00:00'),
(94, 'HM', 'Heard Island and McDonald Islands', '-53.08181', '73.504158', 1, '0000-00-00 00:00:00'),
(95, 'HN', 'Honduras', '15.199999', '-86.241905', 1, '0000-00-00 00:00:00'),
(96, 'HR', 'Croatia', '45.1', '15.2', 1, '0000-00-00 00:00:00'),
(97, 'HT', 'Haiti', '18.971187', '-72.285215', 1, '0000-00-00 00:00:00'),
(98, 'HU', 'Hungary', '47.162494', '19.503304', 1, '0000-00-00 00:00:00'),
(99, 'ID', 'Indonesia', '-0.789275', '113.921327', 1, '0000-00-00 00:00:00'),
(100, 'IE', 'Ireland', '53.41291', '-8.24389', 1, '0000-00-00 00:00:00'),
(101, 'IL', 'Israel', '31.046051', '34.851612', 1, '0000-00-00 00:00:00'),
(102, 'IM', 'Isle of Man', '54.236107', '-4.548056', 1, '0000-00-00 00:00:00'),
(103, 'IN', 'India', '20.593684', '78.96288', 1, '0000-00-00 00:00:00'),
(104, 'IO', 'British Indian Ocean Territory', '-6.343194', '71.876519', 1, '0000-00-00 00:00:00'),
(105, 'IQ', 'Iraq', '33.223191', '43.679291', 1, '0000-00-00 00:00:00'),
(106, 'IR', 'Iran', '32.427908', '53.688046', 1, '0000-00-00 00:00:00'),
(107, 'IS', 'Iceland', '64.963051', '-19.020835', 1, '0000-00-00 00:00:00'),
(108, 'IT', 'Italy', '41.87194', '12.56738', 1, '0000-00-00 00:00:00'),
(109, 'JE', 'Jersey', '49.214439', '-2.13125', 1, '0000-00-00 00:00:00'),
(110, 'JM', 'Jamaica', '18.109581', '-77.297508', 1, '0000-00-00 00:00:00'),
(111, 'JO', 'Jordan', '30.585164', '36.238414', 1, '0000-00-00 00:00:00'),
(112, 'JP', 'Japan', '36.204824', '138.252924', 1, '0000-00-00 00:00:00'),
(113, 'KE', 'Kenya', '-0.023559', '37.906193', 1, '0000-00-00 00:00:00'),
(114, 'KG', 'Kyrgyzstan', '41.20438', '74.766098', 1, '0000-00-00 00:00:00'),
(115, 'KH', 'Cambodia', '12.565679', '104.990963', 1, '0000-00-00 00:00:00'),
(116, 'KI', 'Kiribati', '-3.370417', '-168.734039', 1, '0000-00-00 00:00:00'),
(117, 'KM', 'Comoros', '-11.875001', '43.872219', 1, '0000-00-00 00:00:00'),
(118, 'KN', 'Saint Kitts and Nevis', '17.357822', '-62.782998', 1, '0000-00-00 00:00:00'),
(119, 'KP', 'North Korea', '40.339852', '127.510093', 1, '0000-00-00 00:00:00'),
(120, 'KR', 'South Korea', '35.907757', '127.766922', 1, '0000-00-00 00:00:00'),
(121, 'KW', 'Kuwait', '29.31166', '47.481766', 1, '0000-00-00 00:00:00'),
(122, 'KY', 'Cayman Islands', '19.513469', '-80.566956', 1, '0000-00-00 00:00:00'),
(123, 'KZ', 'Kazakhstan', '48.019573', '66.923684', 1, '0000-00-00 00:00:00'),
(124, 'LA', 'Laos', '19.85627', '102.495496', 1, '0000-00-00 00:00:00'),
(125, 'LB', 'Lebanon', '33.854721', '35.862285', 1, '0000-00-00 00:00:00'),
(126, 'LC', 'Saint Lucia', '13.909444', '-60.978893', 1, '0000-00-00 00:00:00'),
(127, 'LI', 'Liechtenstein', '47.166', '9.555373', 1, '0000-00-00 00:00:00'),
(128, 'LK', 'Sri Lanka', '7.873054', '80.771797', 1, '0000-00-00 00:00:00'),
(129, 'LR', 'Liberia', '6.428055', '-9.429499', 1, '0000-00-00 00:00:00'),
(130, 'LS', 'Lesotho', '-29.609988', '28.233608', 1, '0000-00-00 00:00:00'),
(131, 'LT', 'Lithuania', '55.169438', '23.881275', 1, '0000-00-00 00:00:00'),
(132, 'LU', 'Luxembourg', '49.815273', '6.129583', 1, '0000-00-00 00:00:00'),
(133, 'LV', 'Latvia', '56.879635', '24.603189', 1, '0000-00-00 00:00:00'),
(134, 'LY', 'Libya', '26.3351', '17.228331', 1, '0000-00-00 00:00:00'),
(135, 'MA', 'Morocco', '31.791702', '-7.09262', 1, '0000-00-00 00:00:00'),
(136, 'MC', 'Monaco', '43.750298', '7.412841', 1, '0000-00-00 00:00:00'),
(137, 'MD', 'Moldova', '47.411631', '28.369885', 1, '0000-00-00 00:00:00'),
(138, 'ME', 'Montenegro', '42.708678', '19.37439', 1, '0000-00-00 00:00:00'),
(139, 'MG', 'Madagascar', '-18.766947', '46.869107', 1, '0000-00-00 00:00:00'),
(140, 'MH', 'Marshall Islands', '7.131474', '171.184478', 1, '0000-00-00 00:00:00'),
(141, 'MK', 'Macedonia [FYROM]', '41.608635', '21.745275', 1, '0000-00-00 00:00:00'),
(142, 'ML', 'Mali', '17.570692', '-3.996166', 1, '0000-00-00 00:00:00'),
(143, 'MM', 'Myanmar [Burma]', '21.913965', '95.956223', 1, '0000-00-00 00:00:00'),
(144, 'MN', 'Mongolia', '46.862496', '103.846656', 1, '0000-00-00 00:00:00'),
(145, 'MO', 'Macau', '22.198745', '113.543873', 1, '0000-00-00 00:00:00'),
(146, 'MP', 'Northern Mariana Islands', '17.33083', '145.38469', 1, '0000-00-00 00:00:00'),
(147, 'MQ', 'Martinique', '14.641528', '-61.024174', 1, '0000-00-00 00:00:00'),
(148, 'MR', 'Mauritania', '21.00789', '-10.940835', 1, '0000-00-00 00:00:00'),
(149, 'MS', 'Montserrat', '16.742498', '-62.187366', 1, '0000-00-00 00:00:00'),
(150, 'MT', 'Malta', '35.937496', '14.375416', 1, '0000-00-00 00:00:00'),
(151, 'MU', 'Mauritius', '-20.348404', '57.552152', 1, '0000-00-00 00:00:00'),
(152, 'MV', 'Maldives', '3.202778', '73.22068', 1, '0000-00-00 00:00:00'),
(153, 'MW', 'Malawi', '-13.254308', '34.301525', 1, '0000-00-00 00:00:00'),
(154, 'MX', 'Mexico', '23.634501', '-102.552784', 1, '0000-00-00 00:00:00'),
(155, 'MY', 'Malaysia', '4.210484', '101.975766', 1, '0000-00-00 00:00:00'),
(156, 'MZ', 'Mozambique', '-18.665695', '35.529562', 1, '0000-00-00 00:00:00'),
(157, 'NA', 'Namibia', '-22.95764', '18.49041', 1, '0000-00-00 00:00:00'),
(158, 'NC', 'New Caledonia', '-20.904305', '165.618042', 1, '0000-00-00 00:00:00'),
(159, 'NE', 'Niger', '17.607789', '8.081666', 1, '0000-00-00 00:00:00'),
(160, 'NF', 'Norfolk Island', '-29.040835', '167.954712', 1, '0000-00-00 00:00:00'),
(161, 'NG', 'Nigeria', '9.081999', '8.675277', 1, '0000-00-00 00:00:00'),
(162, 'NI', 'Nicaragua', '12.865416', '-85.207229', 1, '0000-00-00 00:00:00'),
(163, 'NL', 'Netherlands', '52.132633', '5.291266', 1, '0000-00-00 00:00:00'),
(164, 'NO', 'Norway', '60.472024', '8.468946', 1, '0000-00-00 00:00:00'),
(165, 'NP', 'Nepal', '28.394857', '84.124008', 1, '0000-00-00 00:00:00'),
(166, 'NR', 'Nauru', '-0.522778', '166.931503', 1, '0000-00-00 00:00:00'),
(167, 'NU', 'Niue', '-19.054445', '-169.867233', 1, '0000-00-00 00:00:00'),
(168, 'NZ', 'New Zealand', '-40.900557', '174.885971', 1, '0000-00-00 00:00:00'),
(169, 'OM', 'Oman', '21.512583', '55.923255', 1, '0000-00-00 00:00:00'),
(170, 'PA', 'Panama', '8.537981', '-80.782127', 1, '0000-00-00 00:00:00'),
(171, 'PE', 'Peru', '-9.189967', '-75.015152', 1, '0000-00-00 00:00:00'),
(172, 'PF', 'French Polynesia', '-17.679742', '-149.406843', 1, '0000-00-00 00:00:00'),
(173, 'PG', 'Papua New Guinea', '-6.314993', '143.95555', 1, '0000-00-00 00:00:00'),
(174, 'PH', 'Philippines', '12.879721', '121.774017', 1, '0000-00-00 00:00:00'),
(175, 'PK', 'Pakistan', '30.375321', '69.345116', 1, '0000-00-00 00:00:00'),
(176, 'PL', 'Poland', '51.919438', '19.145136', 1, '0000-00-00 00:00:00'),
(177, 'PM', 'Saint Pierre and Miquelon', '46.941936', '-56.27111', 1, '0000-00-00 00:00:00'),
(178, 'PN', 'Pitcairn Islands', '-24.703615', '-127.439308', 1, '0000-00-00 00:00:00'),
(179, 'PR', 'Puerto Rico', '18.220833', '-66.590149', 1, '0000-00-00 00:00:00'),
(180, 'PS', 'Palestinian Territories', '31.952162', '35.233154', 1, '0000-00-00 00:00:00'),
(181, 'PT', 'Portugal', '39.399872', '-8.224454', 1, '0000-00-00 00:00:00'),
(182, 'PW', 'Palau', '7.51498', '134.58252', 1, '0000-00-00 00:00:00'),
(183, 'PY', 'Paraguay', '-23.442503', '-58.443832', 1, '0000-00-00 00:00:00'),
(184, 'QA', 'Qatar', '25.354826', '51.183884', 1, '0000-00-00 00:00:00'),
(185, 'RE', 'Réunion', '-21.115141', '55.536384', 1, '0000-00-00 00:00:00'),
(186, 'RO', 'Romania', '45.943161', '24.96676', 1, '0000-00-00 00:00:00'),
(187, 'RS', 'Serbia', '44.016521', '21.005859', 1, '0000-00-00 00:00:00'),
(188, 'RU', 'Russia', '61.52401', '105.318756', 1, '0000-00-00 00:00:00'),
(189, 'RW', 'Rwanda', '-1.940278', '29.873888', 1, '0000-00-00 00:00:00'),
(190, 'SA', 'Saudi Arabia', '23.885942', '45.079162', 1, '0000-00-00 00:00:00'),
(191, 'SB', 'Solomon Islands', '-9.64571', '160.156194', 1, '0000-00-00 00:00:00'),
(192, 'SC', 'Seychelles', '-4.679574', '55.491977', 1, '0000-00-00 00:00:00'),
(193, 'SD', 'Sudan', '12.862807', '30.217636', 1, '0000-00-00 00:00:00'),
(194, 'SE', 'Sweden', '60.128161', '18.643501', 1, '0000-00-00 00:00:00'),
(195, 'SG', 'Singapore', '1.352083', '103.819836', 1, '0000-00-00 00:00:00'),
(196, 'SH', 'Saint Helena', '-24.143474', '-10.030696', 1, '0000-00-00 00:00:00'),
(197, 'SI', 'Slovenia', '46.151241', '14.995463', 1, '0000-00-00 00:00:00'),
(198, 'SJ', 'Svalbard and Jan Mayen', '77.553604', '23.670272', 1, '0000-00-00 00:00:00'),
(199, 'SK', 'Slovakia', '48.669026', '19.699024', 1, '0000-00-00 00:00:00'),
(200, 'SL', 'Sierra Leone', '8.460555', '-11.779889', 1, '0000-00-00 00:00:00'),
(201, 'SM', 'San Marino', '43.94236', '12.457777', 1, '0000-00-00 00:00:00'),
(202, 'SN', 'Senegal', '14.497401', '-14.452362', 1, '0000-00-00 00:00:00'),
(203, 'SO', 'Somalia', '5.152149', '46.199616', 1, '0000-00-00 00:00:00'),
(204, 'SR', 'Suriname', '3.919305', '-56.027783', 1, '0000-00-00 00:00:00'),
(205, 'ST', 'São Tomé and Príncipe', '0.18636', '6.613081', 1, '0000-00-00 00:00:00'),
(206, 'SV', 'El Salvador', '13.794185', '-88.89653', 1, '0000-00-00 00:00:00'),
(207, 'SY', 'Syria', '34.802075', '38.996815', 1, '0000-00-00 00:00:00'),
(208, 'SZ', 'Swaziland', '-26.522503', '31.465866', 1, '0000-00-00 00:00:00'),
(209, 'TC', 'Turks and Caicos Islands', '21.694025', '-71.797928', 1, '0000-00-00 00:00:00'),
(210, 'TD', 'Chad', '15.454166', '18.732207', 1, '0000-00-00 00:00:00'),
(211, 'TF', 'French Southern Territories', '-49.280366', '69.348557', 1, '0000-00-00 00:00:00'),
(212, 'TG', 'Togo', '8.619543', '0.824782', 1, '0000-00-00 00:00:00'),
(213, 'TH', 'Thailand', '15.870032', '100.992541', 1, '0000-00-00 00:00:00'),
(214, 'TJ', 'Tajikistan', '38.861034', '71.276093', 1, '0000-00-00 00:00:00'),
(215, 'TK', 'Tokelau', '-8.967363', '-171.855881', 1, '0000-00-00 00:00:00'),
(216, 'TL', 'Timor-Leste', '-8.874217', '125.727539', 1, '0000-00-00 00:00:00'),
(217, 'TM', 'Turkmenistan', '38.969719', '59.556278', 1, '0000-00-00 00:00:00'),
(218, 'TN', 'Tunisia', '33.886917', '9.537499', 1, '0000-00-00 00:00:00'),
(219, 'TO', 'Tonga', '-21.178986', '-175.198242', 1, '0000-00-00 00:00:00'),
(220, 'TR', 'Turkey', '38.963745', '35.243322', 1, '0000-00-00 00:00:00'),
(221, 'TT', 'Trinidad and Tobago', '10.691803', '-61.222503', 1, '0000-00-00 00:00:00'),
(222, 'TV', 'Tuvalu', '-7.109535', '177.64933', 1, '0000-00-00 00:00:00'),
(223, 'TW', 'Taiwan', '23.69781', '120.960515', 1, '0000-00-00 00:00:00'),
(224, 'TZ', 'Tanzania', '-6.369028', '34.888822', 1, '0000-00-00 00:00:00'),
(225, 'UA', 'Ukraine', '48.379433', '31.16558', 1, '0000-00-00 00:00:00'),
(226, 'UG', 'Uganda', '1.373333', '32.290275', 1, '0000-00-00 00:00:00'),
(227, 'UM', 'U.S. Minor Outlying Islands', '37.09024', '-95.712891', 1, '0000-00-00 00:00:00'),
(228, 'US', 'United States', '37.09024', '-95.712891', 1, '0000-00-00 00:00:00'),
(229, 'UY', 'Uruguay', '-32.522779', '-55.765835', 1, '0000-00-00 00:00:00'),
(230, 'UZ', 'Uzbekistan', '41.377491', '64.585262', 1, '0000-00-00 00:00:00'),
(231, 'VA', 'Vatican City', '41.902916', '12.453389', 1, '0000-00-00 00:00:00'),
(232, 'VC', 'Saint Vincent and the Grenadines', '12.984305', '-61.287228', 1, '0000-00-00 00:00:00'),
(233, 'VE', 'Venezuela', '6.42375', '-66.58973', 1, '0000-00-00 00:00:00'),
(234, 'VG', 'British Virgin Islands', '18.420695', '-64.639968', 1, '0000-00-00 00:00:00'),
(235, 'VI', 'U.S. Virgin Islands', '18.335765', '-64.896335', 1, '0000-00-00 00:00:00'),
(236, 'VN', 'Vietnam', '14.058324', '108.277199', 1, '0000-00-00 00:00:00'),
(237, 'VU', 'Vanuatu', '-15.376706', '166.959158', 1, '0000-00-00 00:00:00'),
(238, 'WF', 'Wallis and Futuna', '-13.768752', '-177.156097', 1, '0000-00-00 00:00:00'),
(239, 'WS', 'Samoa', '-13.759029', '-172.104629', 1, '0000-00-00 00:00:00'),
(240, 'XK', 'Kosovo', '42.602636', '20.902977', 1, '0000-00-00 00:00:00'),
(241, 'YE', 'Yemen', '15.552727', '48.516388', 1, '0000-00-00 00:00:00'),
(242, 'YT', 'Mayotte', '-12.8275', '45.166244', 1, '0000-00-00 00:00:00'),
(243, 'ZA', 'South Africa', '-30.559482', '22.937506', 1, '0000-00-00 00:00:00'),
(244, 'ZM', 'Zambia', '-13.133897', '27.849332', 1, '0000-00-00 00:00:00'),
(245, 'ZW', 'Zimbabwe', '-19.015438', '29.154857', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donate_request`
--

DROP TABLE IF EXISTS `donate_request`;
CREATE TABLE `donate_request` (
  `id` int(11) NOT NULL,
  `requester_id` int(10) UNSIGNED NOT NULL,
  `donate_date` date NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `area_code` varchar(45) NOT NULL,
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `donor_id` int(10) UNSIGNED DEFAULT NULL,
  `review_for_donor` varchar(500) DEFAULT NULL,
  `ratings_for_donor` double DEFAULT NULL,
  `review_for_requester` varchar(500) DEFAULT NULL,
  `ratings_for_requester` double DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0=>pending,1=>completed,2=>cancelled',
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donation_camp`
--

DROP TABLE IF EXISTS `donation_camp`;
CREATE TABLE `donation_camp` (
  `id` int(11) NOT NULL,
  `type` enum('camp','center') NOT NULL,
  `organization_type` enum('private','govt') NOT NULL,
  `title` text NOT NULL,
  `donation_orgnaization` text DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `donation_startdatetime` datetime DEFAULT NULL,
  `donation_enddatetime` datetime DEFAULT NULL,
  `contact_details` text DEFAULT NULL,
  `banner_img` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy_id` int(10) UNSIGNED NOT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `approveBy_id` int(10) UNSIGNED DEFAULT NULL,
  `approved_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_donors`
--

DROP TABLE IF EXISTS `requested_donors`;
CREATE TABLE `requested_donors` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `donor_id` int(10) UNSIGNED NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_finished` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `country_id`, `status`, `datetime`) VALUES
(1, 'Andhra Pradesh', 103, 1, '0000-00-00 00:00:00'),
(2, 'Arunachal Pradesh', 103, 1, '0000-00-00 00:00:00'),
(3, 'Assam', 103, 1, '0000-00-00 00:00:00'),
(4, 'Bihar', 103, 1, '0000-00-00 00:00:00'),
(5, 'Chhattisgarh', 103, 1, '0000-00-00 00:00:00'),
(6, 'Goa', 103, 1, '0000-00-00 00:00:00'),
(7, 'Gujarat', 103, 1, '0000-00-00 00:00:00'),
(8, 'Haryana', 103, 1, '0000-00-00 00:00:00'),
(9, 'Himachal Pradesh', 103, 1, '0000-00-00 00:00:00'),
(10, 'Jammu and Kashmir', 103, 1, '0000-00-00 00:00:00'),
(11, 'Jharkhand', 103, 1, '0000-00-00 00:00:00'),
(12, 'Karnataka', 103, 1, '0000-00-00 00:00:00'),
(13, 'Kerala', 103, 1, '0000-00-00 00:00:00'),
(14, 'Madhya Pradesh', 103, 1, '0000-00-00 00:00:00'),
(15, 'Maharashtra', 103, 1, '0000-00-00 00:00:00'),
(16, 'Manipur', 103, 1, '0000-00-00 00:00:00'),
(17, 'Meghalaya', 103, 1, '0000-00-00 00:00:00'),
(18, 'Mizoram', 103, 1, '0000-00-00 00:00:00'),
(19, 'Nagaland', 103, 1, '0000-00-00 00:00:00'),
(20, 'Odisha', 103, 1, '0000-00-00 00:00:00'),
(21, 'Punjab', 103, 1, '0000-00-00 00:00:00'),
(22, 'Rajasthan', 103, 1, '0000-00-00 00:00:00'),
(23, 'Sikkim', 103, 1, '0000-00-00 00:00:00'),
(24, 'Tamil Nadu', 103, 1, '0000-00-00 00:00:00'),
(25, 'Telangana', 103, 1, '0000-00-00 00:00:00'),
(26, 'Tripura', 103, 1, '0000-00-00 00:00:00'),
(27, 'Uttar Pradesh', 103, 1, '0000-00-00 00:00:00'),
(28, 'Uttarakhand', 103, 1, '0000-00-00 00:00:00'),
(29, 'West Bengal', 103, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(555) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 103,
  `city_name` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `zipcode` varchar(10) NOT NULL,
  `bloodtype_id` int(11) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `donate_status` tinyint(4) DEFAULT 1,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Admin,0=>User',
  `lastdonate_date` date DEFAULT NULL,
  `leaderboard_no` smallint(5) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_donate_area`
--

DROP TABLE IF EXISTS `user_donate_area`;
CREATE TABLE `user_donate_area` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leaderboard`
--

DROP TABLE IF EXISTS `user_leaderboard`;
CREATE TABLE `user_leaderboard` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `points` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_detail`
--
ALTER TABLE `area_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_in_area_detail_fk_idx` (`city_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdby_in_blog_fk_idx` (`createdBy_id`),
  ADD KEY `approveby_in_blog_fk_idx` (`approvedBy_id`),
  ADD KEY `category_in_blog_fk_idx` (`category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_subcategory`
--
ALTER TABLE `blog_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_in_blog_subcategory_fk_idx` (`category_id`);

--
-- Indexes for table `blood_types`
--
ALTER TABLE `blood_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blood_code_UNIQUE` (`blood_code`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_in_city_fk_idx` (`state_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_code_UNIQUE` (`country_code`);

--
-- Indexes for table `donate_request`
--
ALTER TABLE `donate_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requester_in_donate_request_fk_idx` (`requester_id`),
  ADD KEY `city_in_donate_request_fk_idx` (`city_id`),
  ADD KEY `area_in_donate_request_fk_idx` (`area_id`);

--
-- Indexes for table `donation_camp`
--
ALTER TABLE `donation_camp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy_user_in_donation_camp_fk_idx` (`createdBy_id`),
  ADD KEY `approveBy_user_in_donation_camp_fk_idx` (`approveBy_id`),
  ADD KEY `state_in_donation_camp_fk_idx` (`state_id`),
  ADD KEY `country_in_donation_camp_fk_idx` (`country_id`),
  ADD KEY `area_in_donation_camp_fk_idx` (`area_id`),
  ADD KEY `city_in_donation_camp_fk_idx` (`city_id`);

--
-- Indexes for table `requested_donors`
--
ALTER TABLE `requested_donors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_in_blood_donate_review_fk_idx` (`donor_id`),
  ADD KEY `request_in_requested_donors_fk_idx` (`request_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_in_state_fk_idx` (`country_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `bloodtype_id_in_users_fk_idx` (`bloodtype_id`),
  ADD KEY `country_id_in_users_fk_idx` (`country_id`),
  ADD KEY `state_id_in_users_fk_idx` (`state_id`),
  ADD KEY `city_in_users_fk_idx` (`city_id`),
  ADD KEY `area_in_users_fk_idx` (`area_id`);

--
-- Indexes for table `user_donate_area`
--
ALTER TABLE `user_donate_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_in_user_donate_area_idx` (`user_id`),
  ADD KEY `city_in_user_donate_area_fk_idx` (`city_id`),
  ADD KEY `state_in_user_donate_area_fk_idx` (`state_id`),
  ADD KEY `area_in_user_donate_area_fk_idx` (`area_id`);

--
-- Indexes for table `user_leaderboard`
--
ALTER TABLE `user_leaderboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_in_user_leaderboard_fk_idx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_detail`
--
ALTER TABLE `area_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_subcategory`
--
ALTER TABLE `blog_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blood_types`
--
ALTER TABLE `blood_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `donate_request`
--
ALTER TABLE `donate_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation_camp`
--
ALTER TABLE `donation_camp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requested_donors`
--
ALTER TABLE `requested_donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_donate_area`
--
ALTER TABLE `user_donate_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_leaderboard`
--
ALTER TABLE `user_leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_detail`
--
ALTER TABLE `area_detail`
  ADD CONSTRAINT `city_in_area_detail_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `approveby_in_blog_fk` FOREIGN KEY (`approvedBy_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `category_in_blog_fk` FOREIGN KEY (`category_id`) REFERENCES `blog_subcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `createdby_in_blog_fk` FOREIGN KEY (`createdBy_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `blog_subcategory`
--
ALTER TABLE `blog_subcategory`
  ADD CONSTRAINT `category_in_blog_subcategory_fk` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `state_in_city_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donate_request`
--
ALTER TABLE `donate_request`
  ADD CONSTRAINT `area_in_donate_request_fk` FOREIGN KEY (`area_id`) REFERENCES `area_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `city_in_donate_request_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `requester_in_donate_request_fk` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donation_camp`
--
ALTER TABLE `donation_camp`
  ADD CONSTRAINT `approveBy_user_in_donation_camp_fk` FOREIGN KEY (`approveBy_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `area_in_donation_camp_fk` FOREIGN KEY (`area_id`) REFERENCES `area_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `city_in_donation_camp_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `country_in_donation_camp_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `createdBy_user_in_donation_camp_fk` FOREIGN KEY (`createdBy_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `state_in_donation_camp_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `requested_donors`
--
ALTER TABLE `requested_donors`
  ADD CONSTRAINT `donor_in_blood_donate_review_fk` FOREIGN KEY (`donor_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `request_in_requested_donors_fk` FOREIGN KEY (`request_id`) REFERENCES `donate_request` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `country_in_state_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `area_in_users_fk` FOREIGN KEY (`area_id`) REFERENCES `area_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bloodtype_id_in_users_fk` FOREIGN KEY (`bloodtype_id`) REFERENCES `blood_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `city_in_users_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `country_id_in_users_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `state_id_in_users_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_donate_area`
--
ALTER TABLE `user_donate_area`
  ADD CONSTRAINT `area_in_user_donate_area_fk` FOREIGN KEY (`area_id`) REFERENCES `area_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `city_in_user_donate_area_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `state_in_user_donate_area_fk` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_in_user_donate_area` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_leaderboard`
--
ALTER TABLE `user_leaderboard`
  ADD CONSTRAINT `user_in_user_leaderboard_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
