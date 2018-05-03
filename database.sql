-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2017 at 06:58 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `email-marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Email Marketting Lite', NULL, NULL),
(2, 'company_email', 'xcoderdotio@gmail.com', NULL, NULL),
(3, 'company_address', 'Bangladesh', NULL, NULL),
(4, 'sidebar_theme', 'red-light', NULL, NULL),
(5, 'privacy', 'Please update you privacy policy. This is dummy text.', NULL, NULL),
(6, 'termCondition', '<p>Please update you Terms And Condition. This is dummy text. Once you <a href=\'/privacy\'>update</a>, your content will appear here</p>\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(10) UNSIGNED NOT NULL,
  `smtp_host` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `from_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_history`
--

CREATE TABLE `email_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `email_list` longtext COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_later`
--

CREATE TABLE `email_later` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `email_list` text COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send_time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(2255) COLLATE utf8_unicode_ci NOT NULL,
  `free_email_check` tinyint(4) NOT NULL,
  `free_email_value` text COLLATE utf8_unicode_ci NOT NULL,
  `bulk_check` tinyint(4) NOT NULL,
  `bulk_value` text COLLATE utf8_unicode_ci NOT NULL,
  `email_list_check` tinyint(4) NOT NULL,
  `email_list_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `free_email_check` tinyint(4) NOT NULL,
  `free_email_check_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bulk_check` tinyint(4) NOT NULL,
  `bulk_check_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_list_check` tinyint(4) NOT NULL,
  `email_list_verify_date` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `locale`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en_US', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `locale`, `code`, `language`, `name`) VALUES
(1, 'aa_DJ', 'aa', 'afar', 'Afar (Djibouti)'),
(2, 'aa_ER', 'aa', 'afar', 'Afar (Eritrea)'),
(3, 'aa_ET', 'aa', 'afar', 'Afar (Ethiopia)'),
(4, 'af_ZA', 'af', 'afrikaans', 'Afrikaans (South Africa)'),
(5, 'am_ET', 'am', 'amharic', 'Amharic (Ethiopia)'),
(6, 'an_ES', 'an', 'aragonese', 'Aragonese (Spain)'),
(7, 'ar_AE', 'ar', 'arabic', 'Arabic (United Arab Emirates)'),
(8, 'ar_BH', 'ar', 'arabic', 'Arabic (Bahrain)'),
(9, 'ar_DZ', 'ar', 'arabic', 'Arabic (Algeria)'),
(10, 'ar_EG', 'ar', 'arabic', 'Arabic (Egypt)'),
(11, 'ar_IN', 'ar', 'arabic', 'Arabic (India)'),
(12, 'ar_IQ', 'ar', 'arabic', 'Arabic (Iraq)'),
(13, 'ar_JO', 'ar', 'arabic', 'Arabic (Jordan)'),
(14, 'ar_KW', 'ar', 'arabic', 'Arabic (Kuwait)'),
(15, 'ar_LB', 'ar', 'arabic', 'Arabic (Lebanon)'),
(16, 'ar_LY', 'ar', 'arabic', 'Arabic (Libya)'),
(17, 'ar_MA', 'ar', 'arabic', 'Arabic (Morocco)'),
(18, 'ar_OM', 'ar', 'arabic', 'Arabic (Oman)'),
(19, 'ar_QA', 'ar', 'arabic', 'Arabic (Qatar)'),
(20, 'ar_SA', 'ar', 'arabic', 'Arabic (Saudi Arabia)'),
(21, 'ar_SD', 'ar', 'arabic', 'Arabic (Sudan)'),
(22, 'ar_SY', 'ar', 'arabic', 'Arabic (Syria)'),
(23, 'ar_TN', 'ar', 'arabic', 'Arabic (Tunisia)'),
(24, 'ar_YE', 'ar', 'arabic', 'Arabic (Yemen)'),
(25, 'ast_ES', 'ast', 'asturian', 'Asturian (Spain)'),
(26, 'as_IN', 'as', 'assamese', 'Assamese (India)'),
(27, 'az_AZ', 'az', 'azerbaijani', 'Azerbaijani (Azerbaijan)'),
(28, 'az_TR', 'az', 'azerbaijani', 'Azerbaijani (Turkey)'),
(29, 'bem_ZM', 'bem', 'bemba', 'Bemba (Zambia)'),
(30, 'ber_DZ', 'ber', 'berber', 'Berber (Algeria)'),
(31, 'ber_MA', 'ber', 'berber', 'Berber (Morocco)'),
(32, 'be_BY', 'be', 'belarusian', 'Belarusian (Belarus)'),
(33, 'bg_BG', 'bg', 'bulgarian', 'Bulgarian (Bulgaria)'),
(34, 'bn_BD', 'bn', 'bengali', 'Bengali (Bangladesh)'),
(35, 'bn_IN', 'bn', 'bengali', 'Bengali (India)'),
(36, 'bo_CN', 'bo', 'tibetan', 'Tibetan (China)'),
(37, 'bo_IN', 'bo', 'tibetan', 'Tibetan (India)'),
(38, 'br_FR', 'br', 'breton', 'Breton (France)'),
(39, 'bs_BA', 'bs', 'bosnian', 'Bosnian (Bosnia and Herzegovina)'),
(40, 'byn_ER', 'byn', 'blin', 'Blin (Eritrea)'),
(41, 'ca_AD', 'ca', 'catalan', 'Catalan (Andorra)'),
(42, 'ca_ES', 'ca', 'catalan', 'Catalan (Spain)'),
(43, 'ca_FR', 'ca', 'catalan', 'Catalan (France)'),
(44, 'ca_IT', 'ca', 'catalan', 'Catalan (Italy)'),
(45, 'crh_UA', 'crh', 'crimean turkish', 'Crimean Turkish (Ukraine)'),
(46, 'csb_PL', 'csb', 'kashubian', 'Kashubian (Poland)'),
(47, 'cs_CZ', 'cs', 'czech', 'Czech (Czech Republic)'),
(48, 'cv_RU', 'cv', 'chuvash', 'Chuvash (Russia)'),
(49, 'cy_GB', 'cy', 'welsh', 'Welsh (United Kingdom)'),
(50, 'da_DK', 'da', 'danish', 'Danish (Denmark)'),
(51, 'de_AT', 'de', 'german', 'German (Austria)'),
(52, 'de_BE', 'de', 'german', 'German (Belgium)'),
(53, 'de_CH', 'de', 'german', 'German (Switzerland)'),
(54, 'de_DE', 'de', 'german', 'German (Germany)'),
(55, 'de_LI', 'de', 'german', 'German (Liechtenstein)'),
(56, 'de_LU', 'de', 'german', 'German (Luxembourg)'),
(57, 'dv_MV', 'dv', 'divehi', 'Divehi (Maldives)'),
(58, 'dz_BT', 'dz', 'dzongkha', 'Dzongkha (Bhutan)'),
(59, 'ee_GH', 'ee', 'ewe', 'Ewe (Ghana)'),
(60, 'el_CY', 'el', 'greek', 'Greek (Cyprus)'),
(61, 'el_GR', 'el', 'greek', 'Greek (Greece)'),
(62, 'en_AG', 'en', 'english', 'English (Antigua and Barbuda)'),
(63, 'en_AS', 'en', 'english', 'English (American Samoa)'),
(64, 'en_AU', 'en', 'english', 'English (Australia)'),
(65, 'en_BW', 'en', 'english', 'English (Botswana)'),
(66, 'en_CA', 'en', 'english', 'English (Canada)'),
(67, 'en_DK', 'en', 'english', 'English (Denmark)'),
(68, 'en_GB', 'en', 'english', 'English (United Kingdom)'),
(69, 'en_GU', 'en', 'english', 'English (Guam)'),
(70, 'en_HK', 'en', 'english', 'English (Hong Kong SAR China)'),
(71, 'en_IE', 'en', 'english', 'English (Ireland)'),
(72, 'en_IN', 'en', 'english', 'English (India)'),
(73, 'en_JM', 'en', 'english', 'English (Jamaica)'),
(74, 'en_MH', 'en', 'english', 'English (Marshall Islands)'),
(75, 'en_MP', 'en', 'english', 'English (Northern Mariana Islands)'),
(76, 'en_MU', 'en', 'english', 'English (Mauritius)'),
(77, 'en_NG', 'en', 'english', 'English (Nigeria)'),
(78, 'en_NZ', 'en', 'english', 'English (New Zealand)'),
(79, 'en_PH', 'en', 'english', 'English (Philippines)'),
(80, 'en_SG', 'en', 'english', 'English (Singapore)'),
(81, 'en_TT', 'en', 'english', 'English (Trinidad and Tobago)'),
(82, 'en_US', 'en', 'english', 'English (United States)'),
(83, 'en_VI', 'en', 'english', 'English (Virgin Islands)'),
(84, 'en_ZA', 'en', 'english', 'English (South Africa)'),
(85, 'en_ZM', 'en', 'english', 'English (Zambia)'),
(86, 'en_ZW', 'en', 'english', 'English (Zimbabwe)'),
(87, 'eo', 'eo', 'esperanto', 'Esperanto'),
(88, 'es_AR', 'es', 'spanish', 'Spanish (Argentina)'),
(89, 'es_BO', 'es', 'spanish', 'Spanish (Bolivia)'),
(90, 'es_CL', 'es', 'spanish', 'Spanish (Chile)'),
(91, 'es_CO', 'es', 'spanish', 'Spanish (Colombia)'),
(92, 'es_CR', 'es', 'spanish', 'Spanish (Costa Rica)'),
(93, 'es_DO', 'es', 'spanish', 'Spanish (Dominican Republic)'),
(94, 'es_EC', 'es', 'spanish', 'Spanish (Ecuador)'),
(95, 'es_ES', 'es', 'spanish', 'Spanish (Spain)'),
(96, 'es_GT', 'es', 'spanish', 'Spanish (Guatemala)'),
(97, 'es_HN', 'es', 'spanish', 'Spanish (Honduras)'),
(98, 'es_MX', 'es', 'spanish', 'Spanish (Mexico)'),
(99, 'es_NI', 'es', 'spanish', 'Spanish (Nicaragua)'),
(100, 'es_PA', 'es', 'spanish', 'Spanish (Panama)'),
(101, 'es_PE', 'es', 'spanish', 'Spanish (Peru)'),
(102, 'es_PR', 'es', 'spanish', 'Spanish (Puerto Rico)'),
(103, 'es_PY', 'es', 'spanish', 'Spanish (Paraguay)'),
(104, 'es_SV', 'es', 'spanish', 'Spanish (El Salvador)'),
(105, 'es_US', 'es', 'spanish', 'Spanish (United States)'),
(106, 'es_UY', 'es', 'spanish', 'Spanish (Uruguay)'),
(107, 'es_VE', 'es', 'spanish', 'Spanish (Venezuela)'),
(108, 'et_EE', 'et', 'estonian', 'Estonian (Estonia)'),
(109, 'eu_ES', 'eu', 'basque', 'Basque (Spain)'),
(110, 'eu_FR', 'eu', 'basque', 'Basque (France)'),
(111, 'fa_AF', 'fa', 'persian', 'Persian (Afghanistan)'),
(112, 'fa_IR', 'fa', 'persian', 'Persian (Iran)'),
(113, 'ff_SN', 'ff', 'fulah', 'Fulah (Senegal)'),
(114, 'fil_PH', 'fil', 'filipino', 'Filipino (Philippines)'),
(115, 'fi_FI', 'fi', 'finnish', 'Finnish (Finland)'),
(116, 'fo_FO', 'fo', 'faroese', 'Faroese (Faroe Islands)'),
(117, 'fr_BE', 'fr', 'french', 'French (Belgium)'),
(118, 'fr_BF', 'fr', 'french', 'French (Burkina Faso)'),
(119, 'fr_BI', 'fr', 'french', 'French (Burundi)'),
(120, 'fr_BJ', 'fr', 'french', 'French (Benin)'),
(121, 'fr_CA', 'fr', 'french', 'French (Canada)'),
(122, 'fr_CF', 'fr', 'french', 'French (Central African Republic)'),
(123, 'fr_CG', 'fr', 'french', 'French (Congo)'),
(124, 'fr_CH', 'fr', 'french', 'French (Switzerland)'),
(125, 'fr_CM', 'fr', 'french', 'French (Cameroon)'),
(126, 'fr_FR', 'fr', 'french', 'French (France)'),
(127, 'fr_GA', 'fr', 'french', 'French (Gabon)'),
(128, 'fr_GN', 'fr', 'french', 'French (Guinea)'),
(129, 'fr_GP', 'fr', 'french', 'French (Guadeloupe)'),
(130, 'fr_GQ', 'fr', 'french', 'French (Equatorial Guinea)'),
(131, 'fr_KM', 'fr', 'french', 'French (Comoros)'),
(132, 'fr_LU', 'fr', 'french', 'French (Luxembourg)'),
(133, 'fr_MC', 'fr', 'french', 'French (Monaco)'),
(134, 'fr_MG', 'fr', 'french', 'French (Madagascar)'),
(135, 'fr_ML', 'fr', 'french', 'French (Mali)'),
(136, 'fr_MQ', 'fr', 'french', 'French (Martinique)'),
(137, 'fr_NE', 'fr', 'french', 'French (Niger)'),
(138, 'fr_SN', 'fr', 'french', 'French (Senegal)'),
(139, 'fr_TD', 'fr', 'french', 'French (Chad)'),
(140, 'fr_TG', 'fr', 'french', 'French (Togo)'),
(141, 'fur_IT', 'fur', 'friulian', 'Friulian (Italy)'),
(142, 'fy_DE', 'fy', 'western frisian', 'Western Frisian (Germany)'),
(143, 'fy_NL', 'fy', 'western frisian', 'Western Frisian (Netherlands)'),
(144, 'ga_IE', 'ga', 'irish', 'Irish (Ireland)'),
(145, 'gd_GB', 'gd', 'scottish gaelic', 'Scottish Gaelic (United Kingdom)'),
(146, 'gez_ER', 'gez', 'geez', 'Geez (Eritrea)'),
(147, 'gez_ET', 'gez', 'geez', 'Geez (Ethiopia)'),
(148, 'gl_ES', 'gl', 'galician', 'Galician (Spain)'),
(149, 'gu_IN', 'gu', 'gujarati', 'Gujarati (India)'),
(150, 'gv_GB', 'gv', 'manx', 'Manx (United Kingdom)'),
(151, 'ha_NG', 'ha', 'hausa', 'Hausa (Nigeria)'),
(152, 'he_IL', 'he', 'hebrew', 'Hebrew (Israel)'),
(153, 'hi_IN', 'hi', 'hindi', 'Hindi (India)'),
(154, 'hr_HR', 'hr', 'croatian', 'Croatian (Croatia)'),
(155, 'hsb_DE', 'hsb', 'upper sorbian', 'Upper Sorbian (Germany)'),
(156, 'ht_HT', 'ht', 'haitian', 'Haitian (Haiti)'),
(157, 'hu_HU', 'hu', 'hungarian', 'Hungarian (Hungary)'),
(158, 'hy_AM', 'hy', 'armenian', 'Armenian (Armenia)'),
(159, 'ia', 'ia', 'interlingua', 'Interlingua'),
(160, 'id_ID', 'id', 'indonesian', 'Indonesian (Indonesia)'),
(161, 'ig_NG', 'ig', 'igbo', 'Igbo (Nigeria)'),
(162, 'ik_CA', 'ik', 'inupiaq', 'Inupiaq (Canada)'),
(163, 'is_IS', 'is', 'icelandic', 'Icelandic (Iceland)'),
(164, 'it_CH', 'it', 'italian', 'Italian (Switzerland)'),
(165, 'it_IT', 'it', 'italian', 'Italian (Italy)'),
(166, 'iu_CA', 'iu', 'inuktitut', 'Inuktitut (Canada)'),
(167, 'ja_JP', 'ja', 'japanese', 'Japanese (Japan)'),
(168, 'ka_GE', 'ka', 'georgian', 'Georgian (Georgia)'),
(169, 'kk_KZ', 'kk', 'kazakh', 'Kazakh (Kazakhstan)'),
(170, 'kl_GL', 'kl', 'kalaallisut', 'Kalaallisut (Greenland)'),
(171, 'km_KH', 'km', 'khmer', 'Khmer (Cambodia)'),
(172, 'kn_IN', 'kn', 'kannada', 'Kannada (India)'),
(173, 'kok_IN', 'kok', 'konkani', 'Konkani (India)'),
(174, 'ko_KR', 'ko', 'korean', 'Korean (South Korea)'),
(175, 'ks_IN', 'ks', 'kashmiri', 'Kashmiri (India)'),
(176, 'ku_TR', 'ku', 'kurdish', 'Kurdish (Turkey)'),
(177, 'kw_GB', 'kw', 'cornish', 'Cornish (United Kingdom)'),
(178, 'ky_KG', 'ky', 'kirghiz', 'Kirghiz (Kyrgyzstan)'),
(179, 'lg_UG', 'lg', 'ganda', 'Ganda (Uganda)'),
(180, 'li_BE', 'li', 'limburgish', 'Limburgish (Belgium)'),
(181, 'li_NL', 'li', 'limburgish', 'Limburgish (Netherlands)'),
(182, 'lo_LA', 'lo', 'lao', 'Lao (Laos)'),
(183, 'lt_LT', 'lt', 'lithuanian', 'Lithuanian (Lithuania)'),
(184, 'lv_LV', 'lv', 'latvian', 'Latvian (Latvia)'),
(185, 'mai_IN', 'mai', 'maithili', 'Maithili (India)'),
(186, 'mg_MG', 'mg', 'malagasy', 'Malagasy (Madagascar)'),
(187, 'mi_NZ', 'mi', 'maori', 'Maori (New Zealand)'),
(188, 'mk_MK', 'mk', 'macedonian', 'Macedonian (Macedonia)'),
(189, 'ml_IN', 'ml', 'malayalam', 'Malayalam (India)'),
(190, 'mn_MN', 'mn', 'mongolian', 'Mongolian (Mongolia)'),
(191, 'mr_IN', 'mr', 'marathi', 'Marathi (India)'),
(192, 'ms_BN', 'ms', 'malay', 'Malay (Brunei)'),
(193, 'ms_MY', 'ms', 'malay', 'Malay (Malaysia)'),
(194, 'mt_MT', 'mt', 'maltese', 'Maltese (Malta)'),
(195, 'my_MM', 'my', 'burmese', 'Burmese (Myanmar)'),
(196, 'naq_NA', 'naq', 'namibia', 'Namibia'),
(197, 'nb_NO', 'nb', 'norwegian bokmål', 'Norwegian Bokmål (Norway)'),
(198, 'nds_DE', 'nds', 'low german', 'Low German (Germany)'),
(199, 'nds_NL', 'nds', 'low german', 'Low German (Netherlands)'),
(200, 'ne_NP', 'ne', 'nepali', 'Nepali (Nepal)'),
(201, 'nl_AW', 'nl', 'dutch', 'Dutch (Aruba)'),
(202, 'nl_BE', 'nl', 'dutch', 'Dutch (Belgium)'),
(203, 'nl_NL', 'nl', 'dutch', 'Dutch (Netherlands)'),
(204, 'nn_NO', 'nn', 'norwegian nynorsk', 'Norwegian Nynorsk (Norway)'),
(205, 'no_NO', 'no', 'norwegian', 'Norwegian (Norway)'),
(206, 'nr_ZA', 'nr', 'south ndebele', 'South Ndebele (South Africa)'),
(207, 'nso_ZA', 'nso', 'northern sotho', 'Northern Sotho (South Africa)'),
(208, 'oc_FR', 'oc', 'occitan', 'Occitan (France)'),
(209, 'om_ET', 'om', 'oromo', 'Oromo (Ethiopia)'),
(210, 'om_KE', 'om', 'oromo', 'Oromo (Kenya)'),
(211, 'or_IN', 'or', 'oriya', 'Oriya (India)'),
(212, 'os_RU', 'os', 'ossetic', 'Ossetic (Russia)'),
(213, 'pap_AN', 'pap', 'papiamento', 'Papiamento (Netherlands Antilles)'),
(214, 'pa_IN', 'pa', 'punjabi', 'Punjabi (India)'),
(215, 'pa_PK', 'pa', 'punjabi', 'Punjabi (Pakistan)'),
(216, 'pl_PL', 'pl', 'polish', 'Polish (Poland)'),
(217, 'ps_AF', 'ps', 'pashto', 'Pashto (Afghanistan)'),
(218, 'pt_BR', 'pt', 'portuguese', 'Portuguese (Brazil)'),
(219, 'pt_GW', 'pt', 'portuguese', 'Portuguese (Guinea-Bissau)'),
(220, 'pt_PT', 'pt', 'portuguese', 'Portuguese (Portugal)'),
(221, 'ro_MD', 'ro', 'romanian', 'Romanian (Moldova)'),
(222, 'ro_RO', 'ro', 'romanian', 'Romanian (Romania)'),
(223, 'ru_RU', 'ru', 'russian', 'Russian (Russia)'),
(224, 'ru_UA', 'ru', 'russian', 'Russian (Ukraine)'),
(225, 'rw_RW', 'rw', 'kinyarwanda', 'Kinyarwanda (Rwanda)'),
(226, 'sa_IN', 'sa', 'sanskrit', 'Sanskrit (India)'),
(227, 'sc_IT', 'sc', 'sardinian', 'Sardinian (Italy)'),
(228, 'sd_IN', 'sd', 'sindhi', 'Sindhi (India)'),
(229, 'seh_MZ', 'seh', 'sena', 'Sena (Mozambique)'),
(230, 'se_NO', 'se', 'northern sami', 'Northern Sami (Norway)'),
(231, 'sid_ET', 'sid', 'sidamo', 'Sidamo (Ethiopia)'),
(232, 'si_LK', 'si', 'sinhala', 'Sinhala (Sri Lanka)'),
(233, 'sk_SK', 'sk', 'slovak', 'Slovak (Slovakia)'),
(234, 'sl_SI', 'sl', 'slovenian', 'Slovenian (Slovenia)'),
(235, 'sn_ZW', 'sn', 'shona', 'Shona (Zimbabwe)'),
(236, 'so_DJ', 'so', 'somali', 'Somali (Djibouti)'),
(237, 'so_ET', 'so', 'somali', 'Somali (Ethiopia)'),
(238, 'so_KE', 'so', 'somali', 'Somali (Kenya)'),
(239, 'so_SO', 'so', 'somali', 'Somali (Somalia)'),
(240, 'sq_AL', 'sq', 'albanian', 'Albanian (Albania)'),
(241, 'sq_MK', 'sq', 'albanian', 'Albanian (Macedonia)'),
(242, 'sr_BA', 'sr', 'serbian', 'Serbian (Bosnia and Herzegovina)'),
(243, 'sr_ME', 'sr', 'serbian', 'Serbian (Montenegro)'),
(244, 'sr_RS', 'sr', 'serbian', 'Serbian (Serbia)'),
(245, 'ss_ZA', 'ss', 'swati', 'Swati (South Africa)'),
(246, 'st_ZA', 'st', 'southern sotho', 'Southern Sotho (South Africa)'),
(247, 'sv_FI', 'sv', 'swedish', 'Swedish (Finland)'),
(248, 'sv_SE', 'sv', 'swedish', 'Swedish (Sweden)'),
(249, 'sw_KE', 'sw', 'swahili', 'Swahili (Kenya)'),
(250, 'sw_TZ', 'sw', 'swahili', 'Swahili (Tanzania)'),
(251, 'ta_IN', 'ta', 'tamil', 'Tamil (India)'),
(252, 'teo_UG', 'teo', 'teso', 'Teso (Uganda)'),
(253, 'te_IN', 'te', 'telugu', 'Telugu (India)'),
(254, 'tg_TJ', 'tg', 'tajik', 'Tajik (Tajikistan)'),
(255, 'th_TH', 'th', 'thai', 'Thai (Thailand)'),
(256, 'tig_ER', 'tig', 'tigre', 'Tigre (Eritrea)'),
(257, 'ti_ER', 'ti', 'tigrinya', 'Tigrinya (Eritrea)'),
(258, 'ti_ET', 'ti', 'tigrinya', 'Tigrinya (Ethiopia)'),
(259, 'tk_TM', 'tk', 'turkmen', 'Turkmen (Turkmenistan)'),
(260, 'tl_PH', 'tl', 'tagalog', 'Tagalog (Philippines)'),
(261, 'tn_ZA', 'tn', 'tswana', 'Tswana (South Africa)'),
(262, 'to_TO', 'to', 'tongan', 'Tongan (Tonga)'),
(263, 'tr_CY', 'tr', 'turkish', 'Turkish (Cyprus)'),
(264, 'tr_TR', 'tr', 'turkish', 'Turkish (Turkey)'),
(265, 'ts_ZA', 'ts', 'tsonga', 'Tsonga (South Africa)'),
(266, 'tt_RU', 'tt', 'tatar', 'Tatar (Russia)'),
(267, 'ug_CN', 'ug', 'uighur', 'Uighur (China)'),
(268, 'uk_UA', 'uk', 'ukrainian', 'Ukrainian (Ukraine)'),
(269, 'ur_PK', 'ur', 'urdu', 'Urdu (Pakistan)'),
(270, 'uz_UZ', 'uz', 'uzbek', 'Uzbek (Uzbekistan)'),
(271, 've_ZA', 've', 'venda', 'Venda (South Africa)'),
(272, 'vi_VN', 'vi', 'vietnamese', 'Vietnamese (Vietnam)'),
(273, 'wa_BE', 'wa', 'walloon', 'Walloon (Belgium)'),
(274, 'wo_SN', 'wo', 'wolof', 'Wolof (Senegal)'),
(275, 'xh_ZA', 'xh', 'xhosa', 'Xhosa (South Africa)'),
(276, 'yi_US', 'yi', 'yiddish', 'Yiddish (United States)'),
(277, 'yo_NG', 'yo', 'yoruba', 'Yoruba (Nigeria)'),
(278, 'zh_CN', 'zh', 'chinese', 'Chinese (China)'),
(279, 'zh_HK', 'zh', 'chinese', 'Chinese (Hong Kong SAR China)'),
(280, 'zh_SG', 'zh', 'chinese', 'Chinese (Singapore)'),
(281, 'zh_TW', 'zh', 'chinese', 'Chinese (Taiwan)'),
(282, 'zu_ZA', 'zu', 'zulu', 'Zulu (South Africa)');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(1055) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1055) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_04_141804_create_activities_table', 1),
('2016_02_04_142653_create_oauth_table', 1),
('2016_02_04_142901_create_email_table', 1),
('2016_02_04_143623_create_config_table', 1),
('2016_02_09_113358_create_languages_table', 1),
('2016_02_09_114729_create_locales_table', 1),
('2016_06_15_071638_create_template_table', 1),
('2016_06_16_105849_create_group_table', 1),
('2016_06_16_105948_create_email_list_table', 1),
('2016_06_19_101214_create_table_media', 1),
('2016_06_20_123633_create_jobs_table', 1),
('2016_06_23_073119_create_email-history_table', 1),
('2016_06_27_110657_create_email_later_table', 1),
('2016_07_12_131153_create_api_table', 1),
('2016_07_14_135049_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth`
--

CREATE TABLE `oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(21270) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `created_at`, `updated_at`) VALUES
(1, 'Happy Birthday', '<p style=""><br></p><h1 class="size-30" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #b59859;font-size: 26px;line-height: 34px;text-align: center;" lang="x-size-30">— Happy Birthday&nbsp;—</h1><p><br></p><h2 class="size-24" style="Margin-top: 20px;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #555;font-size: 20px;line-height: 28px;font-family: " pt="" sans","trebuchet="" ms",sans-serif;text-align:="" center;"="" lang="x-size-24" align="center">How are you doing?</h2><p><br></p><p class="size-16" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p class="size-16" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16"><span style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #cca95e;font-family: \'PT Serif\', Georgia, serif;">Love you!</span> <br></p><div style="Margin-left: 20px;Margin-right: 20px;">\n      <div style="line-height:5px;font-size:1px">&nbsp;</div></div>', '2016-06-23 10:40:03', '2016-06-28 08:08:20'),
(2, 'Hotel Booking', '<div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: Merriweather,Georgia,serif;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 167400px);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Where do you want to go in this holidays.<br> <br><div style="margin-left: 45px; margin-right: 20px; margin-bottom: 24px;">\n      <div class="btn btn--flat btn--large" style="text-align: center; margin-left: 300px;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #70717d;font-family: Merriweather, Georgia, serif;" href="http://test.com">Book now</a>\n      </div>\n    </div>\n\n          </div><p>\n\n\n\n\n      <br></p><div style="line-height:20px;font-size:20px;">&nbsp;</div><p>\n\n      <br></p><div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #ffffff;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 300px; width: 320px;width: calc(12300px - 2000%);">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i1.createsend1.com/ei/d/B2/145/2C5/204455/csfinal/greece-304-888x550.jpg" alt="" width="300">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <h3 style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #353638;font-size: 16px;line-height: 24px;"><strong><em>Greece</em></strong></h3><p style="Margin-top: 12px;Margin-bottom: 20px;">Located in the heart of the Mediterranean, our resort and spa is guaranteed to be a great home base for your next trip to Greece in any season.&nbsp;</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 24px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #70717d;font-family: Merriweather, Georgia, serif;" href="http://test.com">View Hotel</a>\n      </div>\n    </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 300px; width: 320px;width: calc(12300px - 2000%);">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i2.createsend1.com/ei/d/B2/145/2C5/204455/csfinal/viet.jpg" alt="" width="300">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <h3 style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #353638;font-size: 16px;line-height: 24px;"><em><strong>Vietnam</strong></em></h3><p style="Margin-top: 12px;Margin-bottom: 20px;">Our hotel in central Hanoi has the perfect blend of culture and luxury. This hotel features truly authentic dining with a 5-star restaurant onsite.&nbsp;</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 24px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #70717d;font-family: Merriweather, Georgia, serif;" href="http://test.com">View Hotel</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><p>\n\n      <br></p><div style="line-height:20px;font-size:20px;">&nbsp;</div><p>\n\n      <br></p><div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #ffffff;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 300px; width: 320px;width: calc(12300px - 2000%);">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i3.createsend1.com/ei/d/B2/145/2C5/204455/csfinal/sf.jpg" alt="" width="300">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <h3 style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #353638;font-size: 16px;line-height: 24px;"><em><strong>San Fransisco</strong></em>&nbsp;</h3><p style="Margin-top: 12px;Margin-bottom: 20px;">This city has so much to offer. Our hotel here is located right on the water with amazing views and a row of bars and restaurants just next door.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 24px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #70717d;font-family: Merriweather, Georgia, serif;" href="http://test.com">View Hotel</a>\n      </div>\n    </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 300px; width: 320px;width: calc(12300px - 2000%);">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i4.createsend1.com/ei/d/B2/145/2C5/204455/csfinal/beach1.jpg" alt="" width="300">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <h3 style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #353638;font-size: 16px;line-height: 24px;"><em><strong>Maldives</strong></em></h3><p style="Margin-top: 12px;Margin-bottom: 20px;">Whether you\'re on a romantic getaway or a family vacation, our Maldives location has something for everyone from spa treatments to outdoor fun.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 24px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #70717d;font-family: Merriweather, Georgia, serif;" href="http://test.com">View Hotel</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><p>\n\n      <br></p><div style="line-height:20px;font-size:20px;">&nbsp;</div><p>\n\n      <br></p><div class="layout email-footer" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;">\n\n          <div class="column wide" style="text-align: left;font-size: 12px;line-height: 19px;color: #a3a4ad;font-family: Merriweather,Georgia,serif;Float: left;max-width: 400px;min-width: 320px; width: 320px;width: calc(8000% - 47600px);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n              <div>\n\n              </div>\n              <div style="Margin-top: 18px;">\n\n              </div>\n            </div>\n          </div>\n\n          <div class="column narrow" style="text-align: left;font-size: 12px;line-height: 19px;color: #a3a4ad;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 200px; width: 320px;width: calc(72200px - 12000%);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n            </div>\n          </div>\n\n        </div>\n      </div><p>\n\n\n\n          <br></p><div class="column" style="text-align: left;font-size: 12px;line-height: 19px;color: #a3a4ad;font-family: Merriweather,Georgia,serif;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 167400px);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n              <div>\n                <span><a target="_blank" style="text-decoration: underline;transition: opacity 0.1s ease-in;color: #a3a4ad;" href="http://client.updatemyprofile.com/d-l-2AD73FFF-l-r" lang="en">Preferences</a>&nbsp;&nbsp;|&nbsp;&nbsp;</span><a target="_blank" style="text-decoration: underline;transition: opacity 0.1s ease-in;color: #a3a4ad;" href="http://preview16062310.createsend1.com/t/d-u-tkdliid-l-j/">Unsubscribe</a>\n              </div>\n            </div>\n          </div>', '2016-06-23 10:58:05', '2016-06-28 08:08:38'),
(3, 'Product (mobile view)', '<p><br></p><div class="snippet" style="Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;width: calc(14000% - 78120px);padding: 10px 0 5px 0;color: #bbb;font-family: Merriweather,Georgia,serif;">\n\n          </div><p>\n\n          <br></p><div class="webversion" style="Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;width: calc(14100% - 78680px);padding: 10px 0 5px 0;text-align: right;color: #bbb;font-family: Merriweather,Georgia,serif;">\n\n          </div><p>\n\n\n\n\n      <br></p><div class="layout one-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;max-width:="" 600px;min-width:="" 320px;="" width:="" 320px;width:="" calc(28000%="" -="" 167400px);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 900px;" src="https://i1.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/fashion-hero1.jpg" alt="" width="600">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <div style="line-height:10px;font-size:1px">&nbsp;</div>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;">\n      <h1 class="size-34" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 30px;line-height: 38px;font-family: Cabin,Avenir,sans-serif;text-align: center;" lang="x-size-34">My favorite things...</h1><p class="size-16" style="Margin-top: 20px;Margin-bottom: 0;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16">Being\n a fashionista in the big city I pick up all kinds of tips on how to\nstay stylish on a budget and still keep my individuality. As the end of\nthe month comes to a close, I picked a few of my favorite posts to\nshare.&nbsp;</p><p class="size-16" style="Margin-top: 20px;Margin-bottom: 20px;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16">❤<br>\nRiya Lee</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div style="line-height:8px;font-size:1px">&nbsp;</div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><p>\n\n      <br></p><div style="line-height:20px;font-size:20px;">&nbsp;</div><p>\n\n      <br></p><div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i2.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter02.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Hats to the rescue</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">The right hat can be your best friend when you\'re in a late for work in the morning or having a bad hair day.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><p>\n\n      <br></p><div style="line-height:30px;font-size:30px;">&nbsp;</div><p>\n\n      <br></p><div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i3.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter03.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Fancy tech accessories</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">I love my devices but they all look the same! Here\'s how I wrap my style on my phone and tablet.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><p>\n\n      <br></p><div style="line-height:30px;font-size:30px;">&nbsp;</div><p>\n\n      <br></p><div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i4.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter04.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Boot for every season</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">Check out my top tips on how to pair your favorite boots on any outfit from winter to summer.&nbsp;</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div><div class="layout email-footer" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;">\n\n          <div class="column wide" style="text-align: left;font-size: 12px;line-height: 19px;color: #bbb;font-family: Merriweather,Georgia,serif;Float: left;max-width: 400px;min-width: 320px; width: 320px;width: calc(8000% - 47600px);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n              <div>\n\n              </div>\n              <div style="Margin-top: 18px;">\n\n              </div>\n            </div>\n          </div>\n\n          <div class="column narrow" style="text-align: left;font-size: 12px;line-height: 19px;color: #bbb;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 200px; width: 320px;width: calc(72200px - 12000%);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n            </div>\n          </div>\n\n        </div>\n      </div><div class="layout one-col email-footer" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;">\n\n          <div class="column" style="text-align: left;font-size: 12px;line-height: 19px;color: #bbb;font-family: Merriweather,Georgia,serif;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 167400px);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n</div></div></div></div>', '2016-06-23 11:04:06', '2016-06-28 08:07:23'),
(4, 'Product (desktop view)', '<p><br></p><div class="wrapper" style="min-width: 320px;background-color: #fefefe;" lang="x-wrapper">\n      <div class="preheader" style="Margin: 0 auto;max-width: 560px;min-width: 280px; width: 280px;width: calc(28000% - 173040px);">\n        <div style="border-collapse: collapse;display: table;width: 100%;">\n\n          <div class="snippet" style="Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 140px; width: 140px;width: calc(14000% - 78120px);padding: 10px 0 5px 0;color: #bbb;font-family: Merriweather,Georgia,serif;">\n\n          </div>\n\n          <div class="webversion" style="Float: left;font-size: 12px;line-height: 19px;max-width: 280px;min-width: 139px; width: 139px;width: calc(14100% - 78680px);padding: 10px 0 5px 0;text-align: right;color: #bbb;font-family: Merriweather,Georgia,serif;">\n\n          </div>\n\n        </div>\n      </div>\n\n      <div class="layout one-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;max-width:="" 600px;min-width:="" 320px;="" width:="" 320px;width:="" calc(28000%="" -="" 167400px);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top" style="border: 0;display: block;height: auto;width: 100%;max-width: 900px;" src="https://i1.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/fashion-hero1.jpg" alt="" width="600">\n        </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 20px;">\n      <div style="line-height:10px;font-size:1px">&nbsp;</div>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;">\n      <h1 class="size-34" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 30px;line-height: 38px;font-family: Cabin,Avenir,sans-serif;text-align: center;" lang="x-size-34">My favorite things...</h1><p class="size-16" style="Margin-top: 20px;Margin-bottom: 0;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16">Being\n a fashionista in the big city I pick up all kinds of tips on how to\nstay stylish on a budget and still keep my individuality. As the end of\nthe month comes to a close, I picked a few of my favorite posts to\nshare.&nbsp;</p><p class="size-16" style="Margin-top: 20px;Margin-bottom: 20px;font-size: 16px;line-height: 24px;text-align: center;" lang="x-size-16">❤<br>\nRiya Lee</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div style="line-height:8px;font-size:1px">&nbsp;</div>\n    </div>\n\n          </div>\n\n        </div>\n      </div>\n\n      <div style="line-height:20px;font-size:20px;">&nbsp;</div>\n\n      <div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i2.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter02.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Hats to the rescue</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">The right hat can be your best friend when you\'re in a late for work in the morning or having a bad hair day.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div>\n\n      <div style="line-height:30px;font-size:30px;">&nbsp;</div>\n\n      <div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i3.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter03.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Fancy tech accessories</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">I love my devices but they all look the same! Here\'s how I wrap my style on my phone and tablet.</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div>\n\n        </div>\n      </div>\n\n      <div style="line-height:30px;font-size:30px;">&nbsp;</div>\n\n      <div class="layout two-col fixed-width" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <br><div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;background-color: #fefefe;">\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n        <div style="font-size: 12px;font-style: normal;font-weight: normal;" align="center">\n          <img class="gnd-corner-image gnd-corner-image-center gnd-corner-image-top gnd-corner-image-bottom" style="border: 0;display: block;height: auto;width: 100%;max-width: 480px;" src="https://i4.createsend1.com/ei/d/B2/145/2C5/210047/csfinal/05-newsletter04.png" alt="" width="300">\n        </div>\n\n          </div>\n\n          <div class="column" style="text-align: left;color: #353638;font-size: 14px;line-height: 21px;font-family: " pt="" serif",georgia,serif;float:="" left;max-width:="" 320px;min-width:="" 300px;="" width:="" 320px;width:="" calc(12300px="" -="" 2000%);"="">\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 12px;">\n      <h2 class="size-22" style="Margin-top: 0;Margin-bottom: 0;font-style: normal;font-weight: normal;color: #2ecc9e;font-size: 18px;line-height: 26px;font-family: Cabin,Avenir,sans-serif;" lang="x-size-22"><strong>Boot for every season</strong></h2><p class="size-17" style="Margin-top: 16px;Margin-bottom: 20px;font-size: 17px;line-height: 26px;" lang="x-size-17">Check out my top tips on how to pair your favorite boots on any outfit from winter to summer.&nbsp;</p>\n    </div>\n\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-bottom: 12px;">\n      <div class="btn btn--flat btn--large" style="text-align:left;">\n        <a target="_blank" style="border-radius: 4px;display: inline-block;font-size: 14px;font-weight: bold;line-height: 24px;padding: 12px 24px;text-align: center;text-decoration: none !important;transition: opacity 0.1s ease-in;color: #fff;background-color: #2ecc9e;font-family: \'PT Serif\', Georgia, serif;" href="http://test.com">Read more</a>\n      </div>\n    </div>\n\n          </div></div></div><div class="layout email-footer" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;">\n\n          <div class="column wide" style="text-align: left;font-size: 12px;line-height: 19px;color: #bbb;font-family: Merriweather,Georgia,serif;Float: left;max-width: 400px;min-width: 320px; width: 320px;width: calc(8000% - 47600px);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n              <div>\n\n              </div>\n              <div style="Margin-top: 18px;">\n\n              </div>\n            </div>\n          </div>\n\n          <div class="column narrow" style="text-align: left;font-size: 12px;line-height: 19px;color: #bbb;font-family: Merriweather,Georgia,serif;Float: left;max-width: 320px;min-width: 200px; width: 320px;width: calc(72200px - 12000%);">\n            <div style="Margin-left: 20px;Margin-right: 20px;Margin-top: 10px;Margin-bottom: 10px;">\n\n            </div>\n          </div>\n\n        </div>\n      </div>\n      <div class="layout one-col email-footer" style="Margin: 0 auto;max-width: 600px;min-width: 320px; width: 320px;width: calc(28000% - 173000px);overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;">\n        <div class="layout__inner" style="border-collapse: collapse;display: table;width: 100%;">\n\n          </div></div></div>', '2016-06-23 11:04:36', '2016-06-28 08:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_user_id` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_history`
--
ALTER TABLE `email_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_later`
--
ALTER TABLE `email_later`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth`
--
ALTER TABLE `oauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_history`
--
ALTER TABLE `email_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_later`
--
ALTER TABLE `email_later`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth`
--
ALTER TABLE `oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
