-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 02:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia, Plurinational State of'),
(27, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(28, 'BA', 'Bosnia and Herzegovina'),
(29, 'BW', 'Botswana'),
(30, 'BV', 'Bouvet Island'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'BN', 'Brunei Darussalam'),
(34, 'BG', 'Bulgaria'),
(35, 'BF', 'Burkina Faso'),
(36, 'BI', 'Burundi'),
(37, 'CV', 'Cabo Verde'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CD', 'Congo, the Democratic Republic of the'),
(52, 'CK', 'Cook Islands'),
(53, 'CR', 'Costa Rica'),
(54, 'HR', 'Croatia'),
(55, 'CU', 'Cuba'),
(56, 'CW', 'Curaçao'),
(57, 'CY', 'Cyprus'),
(58, 'CZ', 'Czech Republic'),
(59, 'CI', 'Côte d\'Ivoire'),
(60, 'DK', 'Denmark'),
(61, 'DJ', 'Djibouti'),
(62, 'DM', 'Dominica'),
(63, 'DO', 'Dominican Republic'),
(64, 'EC', 'Ecuador'),
(65, 'EG', 'Egypt'),
(66, 'SV', 'El Salvador'),
(67, 'GQ', 'Equatorial Guinea'),
(68, 'ER', 'Eritrea'),
(69, 'EE', 'Estonia'),
(70, 'ET', 'Ethiopia'),
(71, 'FK', 'Falkland Islands (Malvinas)'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GG', 'Guernsey'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'VA', 'Holy See (Vatican City State)'),
(98, 'HN', 'Honduras'),
(99, 'HK', 'Hong Kong'),
(100, 'HU', 'Hungary'),
(101, 'IS', 'Iceland'),
(102, 'IN', 'India'),
(103, 'ID', 'Indonesia'),
(104, 'IR', 'Iran'),
(105, 'IQ', 'Iraq'),
(106, 'IE', 'Ireland'),
(107, 'IM', 'Isle of Man'),
(108, 'IL', 'Israel'),
(109, 'IT', 'Italy'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JE', 'Jersey'),
(113, 'JO', 'Jordan'),
(114, 'KZ', 'Kazakhstan'),
(115, 'KE', 'Kenya'),
(116, 'KI', 'Kiribati'),
(117, 'KP', 'Korea, Democratic People\'s Republic of'),
(118, 'KR', 'Korea, Republic of'),
(119, 'XK', 'Kosovo'),
(120, 'KW', 'Kuwait'),
(121, 'KG', 'Kyrgyzstan'),
(122, 'LA', 'Lao People\'s Democratic Republic'),
(123, 'LV', 'Latvia'),
(124, 'LB', 'Lebanon'),
(125, 'LS', 'Lesotho'),
(126, 'LR', 'Liberia'),
(127, 'LY', 'Libya'),
(128, 'LI', 'Liechtenstein'),
(129, 'LT', 'Lithuania'),
(130, 'LU', 'Luxembourg'),
(131, 'MO', 'Macao'),
(132, 'MK', 'Macedonia, the former Yugoslav Republic of'),
(133, 'MG', 'Madagascar'),
(134, 'MW', 'Malawi'),
(135, 'MY', 'Malaysia'),
(136, 'MV', 'Maldives'),
(137, 'ML', 'Mali'),
(138, 'MT', 'Malta'),
(139, 'MH', 'Marshall Islands'),
(140, 'MQ', 'Martinique'),
(141, 'MR', 'Mauritania'),
(142, 'MU', 'Mauritius'),
(143, 'YT', 'Mayotte'),
(144, 'MX', 'Mexico'),
(145, 'FM', 'Micronesia, Federated States of'),
(146, 'MD', 'Moldova, Republic of'),
(147, 'MC', 'Monaco'),
(148, 'MN', 'Mongolia'),
(149, 'ME', 'Montenegro'),
(150, 'MS', 'Montserrat'),
(151, 'MA', 'Morocco'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NL', 'Netherlands'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine, State of'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'RE', 'Réunion'),
(185, 'BL', 'Saint Barthélemy'),
(186, 'SH', 'Saint Helena, Ascension and Tristan da Cunha'),
(187, 'KN', 'Saint Kitts and Nevis'),
(188, 'LC', 'Saint Lucia'),
(189, 'MF', 'Saint Martin (French part)'),
(190, 'PM', 'Saint Pierre and Miquelon'),
(191, 'VC', 'Saint Vincent and the Grenadines'),
(192, 'WS', 'Samoa'),
(193, 'SM', 'San Marino'),
(194, 'ST', 'Sao Tome and Principe'),
(195, 'SA', 'Saudi Arabia'),
(196, 'SN', 'Senegal'),
(197, 'RS', 'Serbia'),
(198, 'SC', 'Seychelles'),
(199, 'SL', 'Sierra Leone'),
(200, 'SG', 'Singapore'),
(201, 'SX', 'Sint Maarten (Dutch part)'),
(202, 'SK', 'Slovakia'),
(203, 'SI', 'Slovenia'),
(204, 'SB', 'Solomon Islands'),
(205, 'SO', 'Somalia'),
(206, 'ZA', 'South Africa'),
(207, 'GS', 'South Georgia and the South Sandwich Islands'),
(208, 'SS', 'South Sudan'),
(209, 'ES', 'Spain'),
(210, 'LK', 'Sri Lanka'),
(211, 'SD', 'Sudan'),
(212, 'SR', 'Suriname'),
(213, 'SJ', 'Svalbard and Jan Mayen'),
(214, 'SZ', 'Swaziland'),
(215, 'SE', 'Sweden'),
(216, 'CH', 'Switzerland'),
(217, 'SY', 'Syrian Arab Republic'),
(218, 'TW', 'Taiwan'),
(219, 'TJ', 'Tajikistan'),
(220, 'TZ', 'Tanzania, United Republic of'),
(221, 'TH', 'Thailand'),
(222, 'TL', 'Timor-Leste'),
(223, 'TG', 'Togo'),
(224, 'TK', 'Tokelau'),
(225, 'TO', 'Tonga'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TN', 'Tunisia'),
(228, 'TR', 'Turkey'),
(229, 'TM', 'Turkmenistan'),
(230, 'TC', 'Turks and Caicos Islands'),
(231, 'TV', 'Tuvalu'),
(232, 'UG', 'Uganda'),
(233, 'UA', 'Ukraine'),
(234, 'AE', 'United Arab Emirates'),
(235, 'GB', 'United Kingdom'),
(236, 'US', 'United States'),
(237, 'UM', 'United States Minor Outlying Islands'),
(238, 'UY', 'Uruguay'),
(239, 'UZ', 'Uzbekistan'),
(240, 'VU', 'Vanuatu'),
(241, 'VE', 'Venezuela, Bolivarian Republic of'),
(242, 'VN', 'Viet Nam'),
(243, 'VG', 'Virgin Islands, British'),
(244, 'VI', 'Virgin Islands, U.S.'),
(245, 'WF', 'Wallis and Futuna'),
(246, 'EH', 'Western Sahara'),
(247, 'YE', 'Yemen'),
(248, 'ZM', 'Zambia'),
(249, 'ZW', 'Zimbabwe'),
(250, 'AX', 'Åland Islands');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `payment_terms` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_status` enum('Completed','Pending') NOT NULL DEFAULT 'Pending',
  `due_date` varchar(255) NOT NULL,
  `po_number` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `total`, `payment_terms`, `currency`, `payment_type`, `payment_status`, `due_date`, `po_number`, `shipping_address`, `notes`, `terms`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2023-08-01', '100.00', 'Net 30', 'USD', 'Credit Card', 'Completed', '2023-08-31', 'PO123', '123 Main St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(2, '2023-08-02', '200.00', 'Net 15', 'EUR', 'PayPal', 'Pending', '2023-08-17', 'PO456', '456 Elm St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(3, '2023-08-03', '150.00', 'Net 30', 'USD', 'Credit Card', 'Completed', '2023-09-02', 'PO789', '789 Oak St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(4, '2023-08-04', '180.00', 'Net 30', 'GBP', 'Bank Transfer', 'Pending', '2023-09-03', 'PO101', '101 Pine St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(5, '2023-08-05', '250.00', 'Net 15', 'USD', 'Credit Card', 'Completed', '2023-08-20', 'PO111', '111 Cedar St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(6, '2023-08-06', '120.00', 'Net 15', 'EUR', 'PayPal', 'Pending', '2023-08-21', 'PO121', '121 Maple St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(7, '2023-08-07', '300.00', 'Net 30', 'USD', 'Credit Card', 'Completed', '2023-09-06', 'PO131', '131 Birch St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(8, '2023-08-08', '170.00', 'Net 15', 'GBP', 'Bank Transfer', 'Pending', '2023-08-22', 'PO141', '141 Walnut St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(9, '2023-08-09', '220.00', 'Net 30', 'USD', 'Credit Card', 'Completed', '2023-09-09', 'PO151', '151 Oak St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20'),
(10, '2023-08-10', '190.00', 'Net 30', 'EUR', 'PayPal', 'Pending', '2023-08-25', 'PO161', '161 Pine St', 'Invoice notes', 'Terms and conditions', NULL, '2023-08-24 09:09:20', '2023-08-24 09:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_user`
--

CREATE TABLE `invoice_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_user`
--

INSERT INTO `invoice_user` (`id`, `invoice_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(2, 1, 2, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(3, 2, 3, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(4, 2, 4, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(5, 3, 5, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(6, 3, 6, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(7, 4, 7, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(8, 4, 8, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(9, 5, 9, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(10, 5, 10, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(11, 6, 1, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(12, 6, 2, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(13, 7, 3, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(14, 7, 4, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(15, 10, 9, '2023-08-24 09:09:46', '2023-08-24 09:09:46'),
(16, 10, 10, '2023-08-24 09:09:46', '2023-08-24 09:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(75, '2014_10_12_000000_create_users_table', 1),
(76, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(77, '2019_08_19_000000_create_failed_jobs_table', 1),
(78, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(79, '2023_08_02_112636_add_country_and_role_to_users_table', 1),
(80, '2023_08_08_105444_create_invoices_table', 1),
(81, '2023_08_08_112932_create_items_table', 1),
(82, '2023_08_08_113313_create_invoice_item_table', 1),
(83, '2023_08_23_132912_create_invoice_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  `role` enum('client','vendor','admin') NOT NULL DEFAULT 'client',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Client 1', 'client1@example.com', 'DZ', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(2, 'Client 2', 'client2@example.com', 'AL', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(3, 'Client 3', 'client3@example.com', 'AS', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(4, 'Client 4', 'client4@example.com', 'MA', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(5, 'Client 5', 'client5@example.com', 'MA', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(6, 'Client 6', 'client6@example.com', 'MA', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(7, 'Client 7', 'client7@example.com', 'MA', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(8, 'Client 8', 'client8@example.com', 'MA', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(9, 'Client 9', 'client9@example.com', 'DZ', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(10, 'Client 10', 'client10@example.com', 'DZ', 'client', '2023-08-24 09:03:24', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:24', '2023-08-24 09:03:24'),
(11, 'Vendor 1', 'vendor1@example.com', 'MA', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2022-08-24 09:03:39', '2023-08-24 09:03:39'),
(12, 'Vendor 2', 'vendor2@example.com', 'MA', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(13, 'Vendor 3', 'vendor3@example.com', 'MA', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(14, 'Vendor 4', 'vendor4@example.com', 'MA', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(15, 'Vendor 5', 'vendor5@example.com', 'MA', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(16, 'Vendor 6', 'vendor6@example.com', 'BM', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(17, 'Vendor 7', 'vendor7@example.com', 'BM', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(18, 'Vendor 8', 'vendor8@example.com', 'BM', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(19, 'Vendor 9', 'vendor9@example.com', 'BM', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(20, 'Vendor 10', 'vendor10@example.com', 'BM', 'vendor', '2023-08-24 09:03:39', '$2y$10$Zoj8f0izGgkoE/hv10Mfj.fqXk6BvGD0eVLduZVyWj9OPiGed.Npy', NULL, '2023-08-24 09:03:39', '2023-08-24 09:03:39'),
(21, 'chaimaa', 'chaimaa@gmail.com', 'AZ', 'admin', NULL, '$2y$10$N/wsqYPNjr2HrvB1cohs9.svsqogVj0kd7bvNIEppoqjblaHrqyZO', NULL, '2023-08-24 08:10:56', '2023-08-24 08:10:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_item_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_item_item_id_foreign` (`item_id`);

--
-- Indexes for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_user_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_user`
--
ALTER TABLE `invoice_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `invoice_item_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_user`
--
ALTER TABLE `invoice_user`
  ADD CONSTRAINT `invoice_user_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
