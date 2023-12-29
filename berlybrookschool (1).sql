-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 01:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berlybrookschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `about_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_cat_id`, `name`, `description`, `image`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 1, 'About Us', '<p>Aba Sports Club was founded as Aba European Club in 1921 and incorporated as such on 12<sup>th</sup>&nbsp;March, 1926.&nbsp;<br />\r\nIts membership was then exclusively European, but by 1926, it had admitted 12 Africans. Thereafter, African membership of the Club increased; and in 1970, the first Nigerian President of the Club, Mr. Raleke Nwosu was elected.&nbsp;<br />\r\nThe changes brought about by independence, led to the re-naming of the Club as Aba Club, and with the growing interest of the Club in Sports, the name was again changed, on 14<sup>th</sup>&nbsp;October 1982, to Aba Sports Club, which it has retained till today.&nbsp;<br />\r\n<strong>MEMBERSHIP</strong><br />\r\nMembership is open to every prospective applicant, provided that he or she satisfies the prescribed requirements. Membership of the Club under a reciprocal membership arrangement, enables its members to gain access to facilities provided by its affiliated Clubs and vice-versa. The affiliate Clubs are listed on membership identity cards.&nbsp;<br />\r\n<strong>MANAGEMENT</strong><br />\r\nThe administration of the Club is vested in a Management Committee headed by a President. The Committee appoints members of sub- ,and ad-hoc, Committees to carry-out special assignments for the Club.&nbsp;<br />\r\n<strong>TRUSTEES</strong><br />\r\nThe rules of the Club provide for three Trustees who are appointed for the purposes of the Companies and Allied Matters Act as amended from time to time.<br />\r\nThere is an equipped library named after the Late Sir Louis Mbanefo, a past Trustee of the Club.<br />\r\n&nbsp;</p>', 'About/8Dzli5eGct0PBnAFHcgH1VZssuTbCsnMAJbPOBq9.jpg', 'about-us', 0, '2022-11-05 19:36:43', '2022-11-19 02:29:59'),
(3, 2, 'Meet the President', '<p><strong>OWELLE GREG OKAFOR</strong><br />\r\nTHE&nbsp;PRESIDENT</p>\r\n\r\n<p>2021-2024</p>', 'About/B2eQTHCR9Ak5m2drdsKfdy1hEI66Mrg6fFgV6V9H.jpg', 'meet-the-president', 0, '2022-11-05 19:41:24', '2022-12-03 13:21:02'),
(4, 1, 'MEMBERSHIP', '<p>Membership is open to every prospective applicant, provided that he or she satisfies the prescribed requirements. Membership of the Club under a reciprocal membership arrangement, enables its members to gain access to facilities provided by its affiliated Clubs and vice-versa. The affiliate Clubs are listed on membership identity cards.</p>', 'About/B3K0HrNOXXkhOh80FSC0XbmbeEuC7yErsLVZCoLR.jpg', 'membership', 0, '2022-11-06 03:17:22', '2022-12-03 12:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `about_categories`
--

CREATE TABLE `about_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_categories`
--

INSERT INTO `about_categories` (`id`, `name`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'About Aba Sports Club', 'About Aba Sports Club', 'about-aba-sports-club', 0, '2022-11-05 19:20:24', '2022-11-05 19:20:24'),
(2, 'Club President', 'Club President', 'club-president', 0, '2022-11-05 19:27:03', '2022-11-05 19:27:03'),
(3, 'Club Management Committee', 'Club Management Committee', 'club-management-committee', 0, '2022-11-05 19:27:43', '2022-11-05 19:27:43'),
(4, 'Past President', 'Past President', 'past-president', 0, '2022-11-05 19:28:11', '2022-11-05 19:28:11'),
(6, 'Captains', 'Captains', 'captains', 0, '2022-11-05 19:29:10', '2022-11-05 19:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `about_section_categories`
--

CREATE TABLE `about_section_categories` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `about_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_section_categories`
--

INSERT INTO `about_section_categories` (`id`, `about_id`, `about_cat_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_of_kin_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clienttype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bvn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idtype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idscan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `lname`, `fname`, `mname`, `phone`, `email`, `dob`, `pob`, `address`, `next_of_kin`, `next_of_kin_phone`, `next_of_kin_address`, `gender`, `marital_status`, `clienttype`, `bvn`, `idtype`, `idnumber`, `idscan`, `photo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Blossom', 'Thomas', 'Jensen', '+1 (209) 658-1163', 'ryti@blognet.net', '1996-06-02', 'Sit consequatur', 'Ea ad repudiandae dolorem eius cillum hicdebitis rerum ut aperiam nulla eveniet enim in eaque est nemo vitae labore et non neque', 'Autem est', '+1 (591) 477-4188', 'Nisi rerum magnam autem explicabodebitis rerum ut aperiam nulla eveniet enim in eaque est nemo vitae labore et non neque', 'Male', 'Single', 'Individual', '7654699765', 'NON-REGISTERED CLUB', '587789', 'images/IeVHBmyoSqwl83QbdTtErdyxDiLb9iMtEjg5WLaS.png', 'images/QWKgK9B4omDI6M3dQRp9GdCYxoSLfXdYlQ0aI1xV.jpeg', NULL, NULL, '2019-05-09 09:02:01', '2019-05-09 09:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `title`, `subtitle`, `description`, `image`, `deleted`) VALUES
(1, 'Entrance Examination', 'Tuition and Payment', '<p>The following summary of the process serves as a guide for parents and guardians for admitting prospective pupils.</p>\r\n\r\n<p>1. Purchase an application form for 5000 naira.</p>\r\n\r\n<p>2. Scheduled Informal assessment for Early years and placement assessment for Year 1-6 3.</p>\r\n\r\n<p>Successful candidates will be informed via email and SMS or telephone call and acceptance letter will be issued via email.</p>\r\n\r\n<p>4. School fees payments are made to designated banks.</p>\r\n\r\n<p>5. Bank slip, transfer evidence or draft submitted will be issued immediate receipt.</p>\r\n\r\n<p>6. Other appropriate enrollment paperwork will be filled out and returned with all required documents before resumption.</p>\r\n\r\n<p>For further enquiries on how to apply please contact us.</p>', 'WhatsApp Image 2023-08-17 at 12.02.19 PM.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `parent`, `slug`, `description`, `image`, `count`, `deleted_at`, `deleted`, `created_at`, `updated_at`) VALUES
(9, 'Savings', NULL, 'savings', NULL, NULL, NULL, '2020-12-15 17:34:08', 0, '2020-12-15 17:34:03', '2020-12-15 17:34:08'),
(10, 'uncategorised', NULL, 'uncategorised', NULL, NULL, NULL, NULL, 0, '2021-01-19 07:22:22', '2021-01-19 07:22:22'),
(11, 'News', NULL, 'news', NULL, NULL, NULL, NULL, 0, '2021-01-19 07:22:32', '2021-01-19 07:22:32'),
(12, 'eum-vero-nulla-offic', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-04 03:19:13', '2022-11-04 03:37:32'),
(13, 'sales-and-distribution', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-05 03:45:50', '2022-11-05 03:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blog_cat_id`, `title`, `author`, `slug`, `description`, `status`, `post_count`, `comment_status`, `category`, `tag`, `featured_image`, `deleted`, `created_at`, `updated_at`) VALUES
(67, 11, 'Mining & Quarry Services', NULL, 'mining-quarry-services', '<p>Our Quary and Ipsum nulla quia praesentium voluptatem fugiat ea ad ea commodi autem excepteur expedita facere dolores ut accusamus minus eius soluta Ipsum nulla quia praesentium voluptatem fugiat ea ad ea commodi autem excepteur expedita facere dolores ut accusamus minus eius soluta</p>\r\n\r\n<p>Our Quary and Ipsum nulla quia praesentium voluptatem fugiat ea ad ea commodi autem excepteur expedita facere dolores ut accusamus minus eius soluta Ipsum nulla quia praesentium voluptatem fugiat ea ad ea commodi autem excepteur expedita facere dolores ut accusamus minus eius soluta</p>', NULL, NULL, NULL, NULL, NULL, 'property/21PvmHiusr1YalDLwJ7I64rOmfoXBHIyGWSuFJU8.jpeg', 0, '2020-06-06 10:47:26', '2020-06-06 10:47:26'),
(68, 12, 'Construction & Engineering  Services all of the country', NULL, 'construction-engineering-services-all-of-the-country', '<p>Construction &amp; Engineering&nbsp; Id aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fuga</p>\r\n\r\n<p>Id aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fuga</p>\r\n\r\n<p>Id aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fugaId aliquid Nam quia sint in reprehenderit incidunt fuga</p>', NULL, NULL, NULL, NULL, NULL, 'property/guFymBsTkHFlUqfadkoqLzLgbalp7hJBMC2Eakd3.jpeg', 0, '2020-06-06 10:48:11', '2020-06-06 10:48:11'),
(69, 11, 'Exploration & Prospecting and Management', NULL, 'exploration-prospecting-and-management', '<p>Consequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciunt</p>\r\n\r\n<p>Consequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciuntConsequat Quis iste cupidatat nulla nemo exercitation nulla ad et nostrum optio nesciunt</p>', NULL, NULL, NULL, NULL, NULL, 'property/Y2TWrIXmCtC6WWov5LL52yQ6UhNlLjFSdUFiGzqQ.jpeg', 0, '2020-06-06 10:48:44', '2020-06-06 10:48:44'),
(70, 9, 'Est et dolores repel', NULL, 'est-et-dolores-repel', '<p>&nbsp; &nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp; &nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp; &nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, NULL, NULL, NULL, NULL, 'blog/m6zKynTyuj9OZZwDafjSAmgLFXeTYJaIKxWNaOdW.jpg', 0, '2021-01-19 07:23:04', '2022-12-03 12:45:54'),
(71, 11, 'Sint sed rerum volu', '1', 'sint-sed-rerum-volu', '<p>dfghjkl;&#39;/sdfbgjhm,k.l</p>', NULL, NULL, NULL, NULL, NULL, 'blog/Pk4iBqTmpnuRLQBwVJTFcEvnNWQe4Zx0JQmIQr1j.jpg', 0, '2022-11-03 15:42:16', '2022-11-03 15:42:16'),
(72, 9, 'The Name and the fame is because of who you are', NULL, 'the-name-and-the-fame-is-because-of-who-you-are', '<p>The Name and the fame is because of who you are</p>', NULL, NULL, NULL, NULL, NULL, 'blog/1WhhMRFBvCXlAkQN7TbF0tHHtm6M4XtGBQJ4YxEy.jpg', 0, '2022-11-04 03:56:56', '2022-12-03 12:46:20'),
(74, 9, 'Id rerum fugiat nat', NULL, 'id-rerum-fugiat-nat', '<p>The Name and the fame is because of who you are, we are here to serve you better</p>', NULL, NULL, NULL, NULL, NULL, 'blog/hM58ZXAbKRCO9AUYrNhOAqEPE7FzQnX00oZ522bT.jpg', 0, '2022-11-04 04:00:07', '2022-12-03 12:46:42'),
(76, 11, 'NDLEA dismantles 25 illicit drug outlets, arrests 150 suspects…', NULL, 'ndlea-dismantles-25-illicit-drug-outlets-arrests-150-suspects', '<p>The National Drug Law Enforcement Agency (NDLEA), Kaduna State Command, says it dismantled 25 notorious drug joints and arrested 150 suspected drug traffickers in the state.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The NDLEA Commander, Mr Umar Adoro told the News Agency of Nigeria (NAN) on Wednesday in Kaduna that the operation was conducted in August.</p>\r\n\r\n<p>Adoro said four properties belonging to the drug dealers were sealed within the period under review</p>', NULL, NULL, NULL, NULL, NULL, 'blog/7eHU0vkFaPyOxJLqvuCEhppwbnUfBFmr8xcMvzh1.jpg', 0, '2022-11-04 04:07:19', '2022-11-15 03:07:56'),
(79, 9, 'With 50,000 telecom infrastructure vandalised, Nigerians risk…', NULL, 'with-50000-telecom-infrastructure-vandalised-nigerians-risk', '<p>The general knowledge on the street is that 5G will make the telecommunication a lot easier in terms of connections, data management social interactions. But, it appears that is not totally going to be the case as telcos are expressing frustration with the way and manner their facilities are being shut down, vandalised and destroyed.</p>\r\n\r\n<p>The regulator, Nigerian communications Commission, NCC also alluded to the operators complaint, providing even statistic showing that services have been a bit poor due to incessant vandalisation and destruction of telecom facilities.</p>', NULL, NULL, NULL, NULL, NULL, 'blog/gE5G4pDGtdyfef9Xmd7cHqlhXWmN9EQZ1r4a4mbh.jpg', 0, '2022-11-04 13:01:40', '2022-11-16 09:12:28'),
(80, 9, 'Super Falcons fall to USA again in friendly match', NULL, 'super-falcons-fall-to-usa-again-in-friendly-match', '<p>The Super Falcons of Nigeria have lost their second international friendly match against the United States Women&rsquo;s National Team 2-1.</p>\r\n\r\n<p>The match was played in the early hours of Wednesday morning (Nigeria Time) in Washington DC.</p>\r\n\r\n<p>The first of the twin friendly between the two teams saw the USA team beat the Super Falcons 4-0 at Children&rsquo;s Mercy Park, Kansas City.</p>\r\n\r\n<p>USA took the lead in the game in Washington after Blessing Demehin put the ball into her own net before Uchenna Kanu equalized in the 50th minute to give the Nigeria team hope of nicking a win against the Americans.</p>\r\n\r\n<p>However, Rosemary Lavelle cut that hope short in the 66th minute when she headed in a cross from Megan Rapinoe to clinch yet another win for the Americans.</p>', NULL, NULL, NULL, NULL, NULL, 'blog/IMuDYiKoNJrG5cX6dpixkZurFUDEpoRPmpiuQO88.jpg', 0, '2022-11-05 03:49:19', '2022-11-16 09:11:47'),
(81, 9, 'Nigeria may slip into economic stagflation, LCCI warns', NULL, 'nigeria-may-slip-into-economic-stagflation-lcci-warns', '<p>The Lagos Chamber of Commerce and Industry, LCCI, yesterday, warned that Nigeria was at the risk of slipping into economic stagflation unless urgent, necessary steps were taken to tackle the factors currently inhibiting the nation&rsquo;s economic growth.LCCI&rsquo;s warning came on a day the Manufacturers Association of Nigeria, MAN, appealed to Imo and Abia State governments to promote industrial expansion and employment generation through the grant of tax holidays to manufacturers.</p>', NULL, NULL, NULL, NULL, NULL, 'blog/l1L18Ilfk5FJmeFrohjWBzxVo7SyhbjLKFDZewBQ.jpg', 0, '2022-11-05 03:52:21', '2022-11-16 09:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` int(20) NOT NULL,
  `blog_post_id` int(20) DEFAULT NULL,
  `blog_cat_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_post_id`, `blog_cat_id`) VALUES
(17, 66, 7),
(18, 70, 10),
(19, 79, 9),
(20, 75, 9),
(21, 76, 10),
(22, 77, 10),
(23, 78, 9),
(24, 79, 10),
(25, 80, 13),
(26, 81, 13);

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `board_cat_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `board_cat_id`, `name`, `slug`, `post`, `description`, `image`, `remember_token`, `deleted`, `created_at`, `updated_at`) VALUES
(14, 1, 'CELESTINE O. OKOGBUE', 'celestine-o-okogbue', 'Chairman of The Board', '<p>Professor Celestine O. Okogbue is an Engineering/Environmental Geologist in the staff of the University of Nigeria, Nsukka. He joined the University of Nigeria as Lecturer in 1982, after working briefly with the Soils Department of the Indiana Highway Commission, Indianapolis, Indiana, USA. He rose through the ranks in the University: &ndash; Lecturer II 1982, Lecturer I 1984, Senior Lecturer 1986 and Professor 1990.</p>\r\n\r\n<p>He holds a Ph.D in Engineering Geology from Purdue University, West Lafayette, Indiana, USA and currently heads the Engineering/Environmental Geology group of the Department of Geology at the University of Nigeria. He has produced over 30 M. Sc. and Ph Ds in Engineering Geology some of who are already Readers and Professors.</p>\r\n\r\n<p>Professor Okogbue has represented Africa (1989 &ndash; 2000) on the International Association of Engineering Geology (IAEG) Commission on Landslides and also on the UNESCO International Union of Geological Sciences Working Group on Landslides. He was the Head of Department of Geology, University of Nigeria from 1993 to 1997, Associate Dean of the Faculty of Physical Sciences from 1993 to 1997, and Dean Faculty of Physical Sciences, from 1997 to 1999. Among his previous awards and honours are University of Nigeria Award for best graduating student in Geology (1975), the Elf/Nigerian Mining and Geosciences Society Prize for Best Technical Paper presentation (1989).and the NMGS/VERSA-TECH/PO NWASIKE award,( 2011) for an active member of the NMGS who has contributed immensely to promoting the career of young mining engineers and geoscientists and has also distinguished himself in the profession. Some of the professional associations to which he belongs are the International Association of Engineering Geology and Environment (IAEGE), Association of Environmental and Engineering Geologists (AEG), USA, Nigerian Mining and Geosciences Society (NMGS) where he is a Fellow, Nigerian Association of Engineering Geology and Environment (NAEGE), and Nigerian Association of Hydrogeologists (NAH). He was President of the Nigerian Association of Engineering Geology and Environment from 1988 to 2001.</p>\r\n\r\n<p>Professor Okogbue has published over 95 peer reviewed journal and referred conference proceedings articles and has also presented solicited papers on aspects of Engineering and Environmental Geology at various symposia and workshops including those on landslides (28th International Geological Congress, Washington D.C. USA), Natural Disasters/Gully erosion (Federal Ministry of Science and Technology, Lagos (1986), and Federal Ministry of Solid Minerals, Abuja (2006)). He regularly reviews technical papers for both national and international journals.</p>\r\n\r\n<p>Professor Okogbue is the first Professor of Engineering Geology in Nigeria, the first Professorial Chair Occupant of the Petroleum Technology Development Fund (PTDF) at the University of Nigeria, Nsukka, and a one time member of the Editorial Board of the Journal of Mining and Geology, He is married and blessed with four children.</p>', 'board/hXqviPeJqIiA2Cke8y4sZtvxc2KZNmrYXLGIGh8f.jpeg', NULL, 0, '2020-10-12 09:39:27', '2021-01-17 21:05:05'),
(15, 1, 'Dr P-J Eze', 'dr-p-j-eze', 'Director of Special Duties', '<p>The Director of Special Duties (DSD) ensures that the minutes of Board meetings as well as the agenda for regular meetings of the Board are produced by the General Services Officer/Secretary of the Bank as may be directed by the Chairman of the Board. He/she oversees the preparation of the Annual General Meeting Report and replies to official letters addressed to the Chairman of the Board as the Chairman may direct. The DSD also oversees the preparation of allowances of members of Board. He/she is in charge of certain functions with regard to employment. He/she signs the appointment papers of junior members of staff. In consultation with the Chairman of the General Purpose Committee, he/she advertises vacant positions in the Bank and shortlists and invites candidates for interview. Also in consultation with the General Purpose Committee, he/she processes applications for candidates looking for industrial attachments, internship or vacation jobs and forwards his/her recommendations to the Chairman of the Board for approval on behalf of the Board.</p>\r\n\r\n<p>P-J Ezeh</p>\r\n\r\n<p>Peter-Jazzy Ezeh&rsquo;s first assignment in the University of Nigeria Microfinance Bank was as a member of the General Purpose Committee. He afterwards worked in several other Committees before being appointed the Director of Special Duties in the Bank in 2013. Dr Ezeh has worked as a journalist in Nigeria and overseas before training as an anthropologist in University of Nigeria, Nsukka. After cutting his teeth on professional journalism in the remarkable provincial, Nigerian Mirror (Onitsha), he went on to join The Punch at the stage when that group was the only independent newspaper group in the country. In his book, The second beginning, he has been passionate about the need for newspapers to be independent if they are to merit their name. For him, the primary function of the press is to protect the weak from governmental or corporate abuse, and therefore it becomes anomalous for government, being too powerful already, to run a paper to aggrandize itself further against the populace. He left The Punch briefly in late 1983 to join the Enugu-based Satellite and left for France in 1985 as the only Nigerian participating in a 22-nation senior-journalist programme organized by the Fondation Journaistes en Europe to familiarize them with Europe in the run-up to the formation of what has now become the European Union. It is in that programme that he met and worked with some of the foremost names in current journalism who even after he later branched off to full-time academics still hold him in high esteem due to his performance then. Perhaps two events during the programme might suffice to underline two traits in Dr Ezeh&rsquo;s character; defiance to reasonable risks and opposition to injustice. When his colleagues on the programme where opting for more familiar projects, he chose, against all dissuasions, to go the Arctic Circle to investigate cod fishing in the frozen Lofoten Islands on the Norwegian Sea. He probably became the only Nigerian who ever did that, all because he said he wanted to engage first-hand the myth that Nigerians surrounded the subject of stockfish. &ldquo;The best way to deal with any doubtful claims, myth or any other type,&rdquo; he says down till today, &ldquo;is to investigate it objectively, empirically.&rdquo; When it was announced that the Frenchman, Claude Simon, had won the Nobel Prize in Literature in 1985, Ezeh became angry and wanted to find out why no African writer was ever been considered good enough for the prize although some of them, in his estimation, were far better than those from other continents who had won. With a shoe-string budget from his scholarship he decided to travel from his base in Paris to go and confront the officials of the Swedish Academy, givers of the prize, who during the engagement told him that no one of African origin ever came to Stockholm to raise the topic. Although they also said that representations could not be taken into account in giving the prize, nevertheless by what Dr Ezeh now prefers to describe as &ldquo;a happy coincidence&rdquo; the Nigerian, Wole Soyinka, won the prize the very next year after Ezeh&rsquo;s efforts. After the Paris projects he returned to rejoin The Punch and rose to become its News Editor. Ezeh has been correspondents to a string of international newspapers that will take much space outlining here. He has also been a Press Fellow at University of Cambridge (Wolfson College). In 1996 the Austrians recognized his efforts in double measure. The major newspaper in Graz, Kleine Zeitung, invited him as a guest editor, and the Foreign Ministry invited him as one of the three Nigerians to give talks in its first African-focused cultural festival, Sura za Afrika, (the Swahili for Images of Africa).</p>\r\n\r\n<p>For his PhD Ezeh became the first Nigerian to study a glotto-cultural group other than his through the participant-observation strategy. The research explored the interstices among linguistics, anthropology and mass communications adapting classic participant observation in a manner that made the authoritative Qualitative Research journal of London to publish the innovation in 2003 ever before he defended his thesis that was named Censorship in traditional Orring mass communication. For his pains he won the Faculty of Social Sciences Vice-Chancellor&rsquo;s Prize for Best PhD Thesis a year afterwards. He has gone on to develop and publish orthography for Korring in the primer that he called Lọgwa ẹ livoro ẹ Kọrịń. Varieties of this previously unwritten language is spoken indigenously in Ebonyi, Cross River and Benue. Dr Ezeh has been a lecturer in anthropology in his alma mater since 1999. In his publications he explores ways of making anthropology relevant to the needs of non-Western peoples in contemporary times. He has about 40 published non-journalistic intellectual works, including the path-finding translation into his native Igbo of Moli&egrave;re&rsquo;s Les femmes savantes as Filamint na ndiotu ya, and journal articles on the traditional African thrift systems.</p>', 'board/i2UX4s16h3rZb6kaoOVMKsIe47wHh6OqmfNLsJpQ.jpeg', NULL, 0, '2021-01-17 21:06:25', '2021-01-17 21:06:25'),
(16, 3, 'Mrs. Okoye Ifeyinwa Anastesia Ag.', 'mrs-okoye-ifeyinwa-anastesia-ag', 'Managing Director', '<p>She holds B.A (UNN) in Education, PGD (UNN) in Public Admin and Finance and M.C.I.B.&nbsp; She has worked for 20 years in the Bank and still counting. She has 6 years working experience in operations, 8 years experience as a credit officer and currently the acting managing director. She is also a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria.</p>', 'board/RvtuJDohvNHZ9qwAzsLk2kI3BEFUXxoO8EP36ksE.jpeg', NULL, 0, '2021-01-17 21:07:36', '2021-01-17 21:07:36'),
(17, 3, 'Rev. Canon Professor Jacob Okwuchukwu Onyechi', 'rev-canon-professor-jacob-okwuchukwu-onyechi', 'Director', '<p>Rev. Canon Professor Jacob Onyechi is a Professor of Pharmaceutical Technology and Industrial Pharmacy of the University of Nigeria. He was appointed Lecturer II in the Department of Pharmaceutical Tech. and Ind. Pharm. in 1983. In 2010 he rose to the rank of Professor of Pharmaceutical&nbsp; Technology and Industrial Pharmacy.<br />\r\nProfessor Jacob Onyechi has served as Acting Head Department of Pharm. Tech. and Ind. Pharm. between 2006-2008.<br />\r\nAcademic Qualifications<br />\r\n&bull;Ph.D., Pharmaceutical Technology and Industrial Pharmacy, University of Nigeria, 1987<br />\r\n&bull;M. Pharm. Powder Technology, UNN, 1983<br />\r\n&bull;B.Pharm. (Second Class, Upper Division), UNN, 1979<br />\r\n&bull;WASC (Division One with Distinction), Government Secondary School, Afikpo. 1971<br />\r\nMembership of Professional Associations/Bodies<br />\r\n&bull;Registered Pharmacist, Pharmacists Council of Nigeria (PCN), 1979<br />\r\n&bull;Member, Pharmaceutical Society of Nigeria (MPSN)<br />\r\n&bull;Member, National Association of Pharmacists in Academia (NAPA)<br />\r\nServices within the University<br />\r\n&bull;First Appointment, Lecturer II, 1983, Dept. of Pharmaceutical Technology and Industrial Pharmacy<br />\r\n&bull;Production Manager, Pilot Production Unit, Faculty of Pharmaceutical Sciences, 1983-1991<br />\r\n&bull;Acting Head, Department of Pharmaceutical Technology and Industrial Pharmacy 2006-2008<br />\r\n&bull;Chairman, Faculty Curriculum Committee, 1990-1991<br />\r\n&bull;Faculty Representative, UNN Senate, 1990-1991; 2007-2012<br />\r\n&bull;Chairman, Environment Sanitation and Landscape Committee, UNN, 2006-2009<br />\r\n&bull;Chairman Strategic Contact Committee, UNN, 2007-2009<br />\r\n&bull;UNN Representative, UNNMFB Ltd., 2006 till date<br />\r\n&bull;UNN Cricket Coach, 1983 till date<br />\r\n&bull;Chairman, UNN Team Preparation, NUGA 2009<br />\r\n&bull;Vice-Chairman, UNN Sports Council, 2008-2014; Chairman, 2014 till date<br />\r\nServices outside the University<br />\r\n&bull;Consultant Pharmacist and CEO, Pharmconsult (UK) Ltd, 2005<br />\r\n&bull;Visiting Professor, Department of Pharmacy, King&rsquo;s College London, University of London, 1994<br />\r\n&bull;Assoc. Professor of Pharmacy, College of Health Sciences, Al-Ahsa, Kingdom of Saudi Arabia, 1998-2000<br />\r\n&bull;Lecturer in Pharmaceutical Sciences, Department of Pharmacy, University of Brighton, UK, 1995-1997<br />\r\n&bull;Post-Doctoral Research, Department of Pharmacy, King&rsquo;s College London, 1991-1994<br />\r\n&bull;Scientist, MedPharm Ltd., Department of Pharmacy, King&rsquo;s College London, 2002-2005<br />\r\n&bull;External Examiner, Faculty of Pharm. Scs., Undergraduate/Postgraduate Exams, UNIJOS, 2013 till date<br />\r\n&bull;Consultant Pharmacist, Juhel Pharmacy and Stores; Zevis Pharmaceuticals Ltd; Ceenek Pharmaceutical Chemists Ltd; Government Manufacturing Laboratory, Port Harcourt.<br />\r\n&bull;Ordained Priest of the Church of Nigeria Anglican Communion, 1989<br />\r\n&bull;Preferred Canon of the Church of the Nigeria Anglican Communion, 2014<br />\r\n&bull;Adjunct Lecturer/Professor, Nnamdi Azikiwe University, Awka, 1989 till date<br />\r\n&bull;Committed to Community and National Service<br />\r\nResearch/Academic Publications<br />\r\n&bull;Written 9 Books<br />\r\n&bull;Published over 70 Articles in Journals<br />\r\n&bull;Attended and is still attending Local and International Conferences<br />\r\nRev Canon Professor Jacob O. Onyechi is married to Dr Mrs Uchenna A. Onyechi and they have 3 children.</p>', 'board/zAqgJPbGCnE6SZu92e3eL3sP04VMEMIjTzTRTSBT.jpeg', NULL, 0, '2021-01-17 21:08:39', '2021-01-17 21:08:39'),
(18, 1, 'Prof. Eke Anthony Nnemeka', 'prof-eke-anthony-nnemeka', 'Director', '<p>B.Sc(Hons), M.Phil, Ph.D (University of Nigeria, Nsukka)<br />\r\nChairman, GPC and Member, Board Committee on Risk Management.<br />\r\nEke Anthony Nnemeka is a Professor of Mathematics since 1997 to date and currently lecturing at the University of Nigeria, Nsukka. He has been a member; Board of Directors for 4year now and still counting. He is also a visiting professor of the University of Swaziland, Southern Africa. He is a Member, Nigerian Mathematical Society, Member Mathematical Association of Nigeria, Member American Mathematical society.</p>', 'board/OPehufgYFP5fDPhGTx79SOghttRXyr8ZCqwEepwH.jpeg', NULL, 1, '2021-01-17 21:09:51', '2022-11-12 04:09:16'),
(20, 4, 'Mrs Ijeoma Wali', 'mrs-ijeoma-wali', 'Child Mum', 'Our experience with the school has been exceptional. The teachers are dedicated and truly care about our child\'s education. The curriculum is well-rounded, and our child has thrived academically and socially. We couldn\'t be happier with our choice of school.', 'Boards/4LKTpc5i3bTczZIkV7zwWKm8XAUzg5sRPbfrlRKl.jpg', NULL, 0, '2023-09-04 09:41:46', '2023-09-10 04:21:17'),
(21, 4, 'Mr Eugene', 'mr-eugene', 'Child Dad', 'This school has been a second home for our child. The inclusive and supportive environment has helped our child develop not only academically but also personally. The extracurricular activities offered here are fantastic, providing a well-rounded education.', 'About/2oOAj36RNyOwHHTfqNYUQJAAvKY3g7JPCTnzmrPc.jpg', NULL, 0, '2023-09-04 09:44:57', '2023-09-04 11:55:44'),
(22, 4, 'Mr Stephen Ene', 'mr-stephen-ene', 'Child Dad', 'We\'ve seen remarkable growth in our child\'s confidence and self-esteem since enrolling them in this school. The teachers go above and beyond to ensure each student\'s success. We appreciate the strong emphasis on character development and values.', 'Boards/HfN3KMMayEMZ8dp7LnNVjc9aNZ9d4JgJKFPyC3dp.jpg', NULL, 0, '2023-09-04 10:31:35', '2023-09-04 11:56:05'),
(23, 4, 'Mrs Joe Amos', 'mrs-joe-amos', 'Child Parent', 'The school\'s commitment to fostering a love for learning is evident in our child\'s enthusiasm for school. The communication between teachers and parents is excellent, and we feel involved in our child\'s education every step of the way. It\'s been a rewarding journey for our family.', 'About/jGYWDEJtByicvhrzWQJPmvJJDBZcXE5OHRyJSmdz.jpg', NULL, 0, '2023-09-04 10:50:02', '2023-09-04 11:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `board_categories`
--

CREATE TABLE `board_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board_categories`
--

INSERT INTO `board_categories` (`id`, `name`, `description`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Past President', 'It holds information about past president', 0, '2022-11-09 05:48:28', '2022-11-09 05:48:28'),
(3, 'management', 'thekjjkbkjbk', 0, '2022-11-11 06:30:43', '2022-11-11 06:30:43'),
(4, 'Testimonial', 'Testimonial', 0, '2023-09-04 08:42:52', '2023-09-04 08:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `phone`, `email`, `address`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Umuohama', '+2348036661434', 'umuohama@ukpormfb.com.ng', 'Ugwuorie Market, Umuohama, Ukpor', '2019-04-29 08:14:56', NULL, '2018-09-06 12:48:22', '2019-04-29 08:14:56'),
(2, 'Umunuko', '+2348036661434', 'umunuko@ukpormfb.com.ng', 'Nchounu, Ukpor, Nnewi South L.G.A', '2018-09-12 13:11:33', NULL, '2018-09-06 13:35:51', '2018-09-12 13:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'GreenBank MFB Ltd Enugu', 'images/dDE2a9tGDHotcnaH5vEOKjC2pNhPMwSKpKGxnFa0.jpeg', '2019-01-15 11:54:12', '2019-01-15 10:39:02', '2019-01-15 11:54:12'),
(2, 'Ohha MFB Ltd Enugu', 'images/rvkmJjGRlRnwxUZkt26AJ2auhjsnwTf4NKgO4uAX.jpeg', '2019-03-05 04:55:18', '2019-01-15 10:40:08', '2019-03-05 04:55:18'),
(3, 'Ogbete MFB Ltd Enugu', 'images/uR1cBXuOnlDPERm2gEbHcyJAon4EuH0k2KMVqac5.jpeg', '2019-09-22 05:16:14', '2019-01-15 10:40:32', '2019-09-22 05:16:14'),
(4, 'UNN MFB Ltd Enugu', 'images/XQ8tAtVt50lQ8qx92iPg6Y6tomrrHn5sgsNpRbrY.jpeg', '2019-09-22 05:16:00', '2019-01-15 10:40:52', '2019-09-22 05:16:00'),
(5, 'Ngbo MFB Ltd Ebonyi', 'images/YRnXJTzzWcIjyEuusOCii0bexJW2hTmnVrMEqKan.jpeg', '2019-06-06 14:28:43', '2019-01-15 10:41:16', '2019-06-06 14:28:43'),
(6, 'Monarch MFB Ltd Ebonyi', 'images/SZlBh9CEA3738g2S5aGzjUYDoNiKStViUniazNqi.jpeg', '2019-06-06 14:28:09', '2019-01-15 10:41:35', '2019-06-06 14:28:09'),
(7, 'Enugu Sports Club Enugu', 'images/8lsGA4stMB2JRfXJ2rCU14x8kbPwPg1y322LX9Nr.jpeg', '2019-02-27 09:47:48', '2019-01-15 10:41:55', '2019-02-27 09:47:48'),
(8, 'Aba Sports Club Aba', 'images/vQxmzKvMVUMPeJIWEt2uxIP39RLwpdX3HkLrYqvG.jpeg', '2019-09-22 05:15:55', '2019-01-15 10:42:13', '2019-09-22 05:15:55'),
(9, 'Lighthill Group', 'images/foHiVySOkNs53Fn29Mm6MUa3yV2x4H7URaHR1dq7.jpeg', '2019-02-27 09:46:07', '2019-01-15 10:42:40', '2019-02-27 09:46:07'),
(10, 'First System Refinishes LTD Lagos', 'images/LdOLn82ieyiMmyIKmxOrzDviYqB1AOFpaiJvjWMx.jpeg', '2019-09-22 05:15:49', '2019-01-15 10:43:01', '2019-09-22 05:15:49'),
(11, 'Trucontact CSR Lagos', 'images/0cEVzs5AVKmK6uLemuV5HGOyeM6yflb7oMhGs9O2.jpeg', '2019-09-22 05:15:41', '2019-01-15 10:43:22', '2019-09-22 05:15:41'),
(12, 'Umuchinemere Procredit MFB', 'images/bBfePSqQfRj0je8fyLi7OlvVVqLzfUrsodFnwS6x.jpeg', '2019-09-22 05:14:29', '2019-01-15 10:43:40', '2019-09-22 05:14:29'),
(13, 'Good Shepherd MFB Ltd Enugu', 'images/b6flyXYlInu1VSjFG8iJWFFAWlMMcpcEwDRFwfoE.jpeg', '2019-09-22 05:14:23', '2019-01-15 10:44:05', '2019-09-22 05:14:23'),
(14, 'Quantum Business School Lagos', 'images/rRiinicPNu4oMXtQ8QCk6dNXC1aHRfTwKPVkKmNo.jpeg', '2019-09-22 05:13:19', '2019-01-15 10:44:24', '2019-09-22 05:13:19'),
(15, 'National Association of MFBs (NAMB) Enugu', 'images/aINQjqkZaYWEM2lYFPPScyCokgiCrvpwRxcMADGo.jpeg', '2019-09-22 05:13:02', '2019-01-15 10:44:44', '2019-09-22 05:13:02'),
(16, 'Gosgra Properties and Investment LTD Lagos', 'images/8STTMLyQsDil3rC8I0TTwJlVZdZ67t8H5p6P8CW5.jpeg', '2019-09-22 05:12:53', '2019-01-15 10:45:03', '2019-09-22 05:12:53'),
(17, 'Treasure Field Polytechnic', 'images/174SpHLQWk10QLg32nHziQ2ufBPjo4pJZ2bYlJkG.jpeg', '2019-10-10 11:45:12', '2019-09-22 05:12:32', '2019-10-10 11:45:12'),
(18, 'Unity', 'images/P6mUemcWRa4WWxUC6TliMc13llifCqE7ISTygrFx.jpeg', '2019-10-10 11:51:04', '2019-10-10 11:45:49', '2019-10-10 11:51:04'),
(19, 'Unity Hostel', 'images/LpLw4lAm7ojJqbUS0STs4EkAw4sm3DiMxXlapqU7.png', '2019-10-10 11:51:53', '2019-10-10 11:49:16', '2019-10-10 11:51:53'),
(20, 'Sylvia Ifunanya Ekeocha', 'images/UR8etrqh2YuTjnRF3fkHlg89x4K4rWgWaSreNhEr.jpeg', '2019-10-10 11:50:34', '2019-10-10 11:50:11', '2019-10-10 11:50:34'),
(21, 'Piquant Media', 'images/BCRzl4TxT9bVXm0lHd4KDoTQInXYjOifSYCG2tdv.jpeg', '2019-10-10 11:51:59', '2019-10-10 11:51:36', '2019-10-10 11:51:59'),
(25, 'Treasure Field Polytechnic', 'images/8SM9bJiH1MEI5Tny7GTuYGq1d2AMVa8JrtcmgqWC.jpeg', '2019-10-30 12:11:10', '2019-10-20 05:59:13', '2019-10-30 12:11:10'),
(26, 'Treasure Field Polytechnic', 'images/d2OtsvByYbu735TpXFXP7DWDof1XW2utT5QEsEli.jpeg', NULL, '2019-10-30 12:11:41', '2019-10-30 12:11:41'),
(27, 'Philip Cotinho', 'images/NjRO0rAF9bX7fhIXFHulLfmU5OgH3XP5zA30w2HF.jpeg', '2019-10-31 07:18:01', '2019-10-31 07:17:50', '2019-10-31 07:18:01'),
(28, 'Bet9ja Betting Company', 'images/aDRFSTWMR1p0gN1LtbKDLDIKWpaE3qyYQ1Jkyh1V.png', NULL, '2020-02-12 04:57:53', '2020-02-12 04:57:53'),
(29, 'Emiren  Int\'l School Investment Ltd', 'images/pDe7jp1OAjHUssnvzZrbbGlouqIUVOUs3Dtryvv3.docx', '2020-04-11 11:10:03', '2020-03-29 09:16:50', '2020-04-11 11:10:03'),
(30, 'Emiren  Int\'l School Investment Ltd', 'images/yFgQjYOF90RAt8TlbjuHluqa74IskGZ9O4j0Du3l.zip', '2020-04-11 11:10:15', '2020-04-11 10:19:09', '2020-04-11 11:10:15'),
(31, 'Emiren  Int\'l School Investment Ltd', 'images/rfTfJS77qiC5K4GUmpCeOGngvslPdlaAz6swK253.jpeg', NULL, '2020-04-11 11:10:40', '2020-04-11 11:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `club_categories`
--

CREATE TABLE `club_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_categories`
--

INSERT INTO `club_categories` (`id`, `name`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(7, 'Golf Section', 'Golf Section', 'golf-section', 0, '2022-11-16 11:59:54', '2022-11-16 11:59:54'),
(8, 'Lawn Tennis Section', 'Lawn Tennis Section', 'lawn-tennis-section', 0, '2022-11-16 12:00:09', '2022-11-16 12:00:09'),
(9, 'Swimming Section', 'Swimming Section', 'swimming-section', 0, '2022-11-16 12:00:23', '2022-11-16 12:00:23'),
(10, 'Badmington Section', 'Badmington Section', 'badmington-section', 0, '2022-11-16 12:00:37', '2022-11-16 12:00:37'),
(11, 'Draught Section', 'Draught Section', 'draught-section', 0, '2022-11-16 12:01:00', '2022-11-16 12:01:00'),
(12, 'Table Tennis Section', 'Table Tennis Section', 'table-tennis-section', 0, '2022-11-16 12:01:18', '2022-11-16 12:01:18'),
(13, 'Billiards Section', 'Billiards Section', 'billiards-section', 0, '2022-11-16 12:01:38', '2022-11-16 12:01:38'),
(14, 'Squash Section', 'Squash Section', 'squash-section', 0, '2022-11-16 12:02:01', '2022-11-16 12:02:01'),
(15, 'Jogging Section', 'Jogging Section', 'jogging-section', 0, '2022-11-16 12:02:14', '2022-11-16 12:02:14'),
(16, 'Bus Stop Section', 'Bus Stop Section', 'bus-stop-section', 0, '2022-11-16 12:02:29', '2022-11-16 12:02:29'),
(17, 'Afternoon Bus Stop Section', 'Afternoon Bus Stop Section', 'afternoon-bus-stop-section', 0, '2022-11-16 12:02:46', '2022-11-16 12:02:46'),
(18, 'Dart Section', 'Dart Section', 'dart-section', 0, '2022-11-16 12:02:59', '2022-11-16 12:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `club_sections`
--

CREATE TABLE `club_sections` (
  `id` int(11) NOT NULL,
  `club_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_sections`
--

INSERT INTO `club_sections` (`id`, `club_category_id`, `name`, `file_path`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(8, 7, 'Golf Sections', 'Club/L1oEgbUlRvUHTdHGCb8aIvx2sW65MjZrc2izME2C.jpg', 'Captain: Chief. Nduka Nwachukwu  \r\nEmail: golf@abasportsclub.org', 'golf-sections', 0, '2022-11-16 12:11:21', '2022-12-03 20:12:21'),
(9, 7, 'Lawn Tennis Section', 'Club/PJINQ7mryL5qW1MN53XcPqK5JuBMLqt8OcQ2JM5F.jpg', 'Captain: Prince Benjamin M. Ojigbani \r\nEmail: lawntennis@abasportsclub.org', 'lawn-tennis-section', 0, '2022-11-16 12:13:05', '2022-12-03 20:14:15'),
(10, 7, 'Swimming Section', 'Club/psDS5n7YFFtizR6o8dxrJZChThoPQx6u4wtKIGqC.jpg', 'Email: swimming@abasportsclub.org', 'swimming-section', 0, '2022-11-16 12:14:59', '2022-12-03 20:14:32'),
(11, 7, 'Badmington Section', 'Club/M0UEEgG5RvR37Doq3zqSgJ4BJuJCc1wEVzLXEqTs.jpg', 'Email: badmington@abasportsclub.org', 'badmington-section', 0, '2022-11-16 12:21:24', '2022-12-03 20:14:49'),
(12, 7, 'Draught Section', 'Club/hsSkceK5mMzR3TeQa7BRyTaKF9PMrloTtolYUPeL.jpg', 'draught@abasportsclub.org', 'draught-section', 0, '2022-11-16 12:23:54', '2022-12-03 20:15:05'),
(13, 7, 'Table Tennis Section', 'Club/HhjHOt9gJ2TBaGly2Wu5aU4nRMfaIlSIhuReodsu.jpg', 'Email: tabletennis@abasportsclub.org', 'table-tennis-section', 0, '2022-11-16 12:26:11', '2022-12-03 20:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `club_section_categories`
--

CREATE TABLE `club_section_categories` (
  `id` int(11) NOT NULL,
  `club_section_id` int(11) NOT NULL,
  `club_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_section_categories`
--

INSERT INTO `club_section_categories` (`id`, `club_section_id`, `club_category_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `deleted`, `created_at`, `updated_at`) VALUES
(3, 'Eugenia Guthrie', 'feguf@mailinator.com', '+1 (635) 129-9564', 'support', 'Do ut ea quia assume', 0, '2022-11-07 13:35:28', '2022-11-07 13:35:28'),
(4, 'Beatrice Herring', 'rebybotobo@mailinator.com', '+1 (557) 765-1315', 'support', 'At aliqua Repellend', 0, '2022-11-18 04:56:52', '2022-11-18 04:56:52'),
(7, 'Martha Cross', 'rihonyha@mailinator.com', '+1 (571) 641-5629', 'support', 'Odio laudantium num', 0, '2022-11-19 02:19:25', '2022-11-19 02:19:25'),
(8, 'Kessie Bryan', 'haxyh@mailinator.com', '+1 (575) 263-6349', 'training', 'Reiciendis laboris e', 0, '2022-11-19 02:19:46', '2022-11-19 02:19:46'),
(9, 'Eugenia Galloway', 'rynawenop@mailinator.com', '+1 (251) 651-4328', 'training', 'Rem quidem sed id a', 0, '2022-11-19 02:21:37', '2022-11-19 02:21:37'),
(10, 'September Bell', 'goxe@mailinator.com', '+1 (926) 431-8641', 'Aliquip tempore ut', 'Ipsum numquam suscip', 0, '2023-08-28 08:16:45', '2023-08-28 08:16:45'),
(11, 'Maryam Shepherd', 'vatu@mailinator.com', '+1 (118) 293-3801', 'Id quas assumenda ha', 'Similique pariatur', 0, '2023-08-28 08:20:51', '2023-08-28 08:20:51'),
(12, 'Garth Welch', 'qowile@mailinator.com', '+1 (701) 155-8479', 'Est dolor unde sed d', 'Velit amet sit ad', 0, '2023-09-05 12:41:18', '2023-09-05 12:41:18'),
(13, 'Godwin Tombrown', 'godwintombrown@gmail.com', '08069071539', 'Resumption Enquiry', 'Please when is school resuming for the first term and what does it take to get admitted in the school', 0, '2023-09-06 09:21:33', '2023-09-06 09:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `curriculum_cat_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age_range` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id`, `curriculum_cat_id`, `name`, `age_range`, `slug`, `description`, `image`, `deleted`) VALUES
(1, 1, 'Creche', '0-2', 'creche', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">The Early Years Foundation Stage is the statutory framework that sets out children&#39;s learning and development in the Foundation Stage. EYFS begins at birth and ends at the end of Reception year when a child is five. It provides children with the skills and knowledge necessary to build the foundation of learning for future process and success through school and life.</span></span></span><br />\r\n<span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\"><span style=\"background-color:white\">The EYFS profile summarizes a child&#39;s attainment at the end of the Foundation Stage, the judgement is based on ongoing observation and assessment of the characteristics of effective learning, as well as the prime and the specific area of learning.</span><br />\r\n<span style=\"background-color:white\">From Playgroup to Reception the children spend the majority of their day engaged in playful learning, this involves the children independently assessing a variety of indoor and outdoor resources focusing on the curriculum areas. They also take part in small-group times each day working alongside their classmates and teachers. The reception classroom provides a balance of adult-led and child initiated learning opportunities so that children can progress socially, physically and academically.</span></span></span></span></span></p>', 'Space 5 IMG_9905.JPG', 0),
(2, 1, 'Reception', '2-4', 'reception', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">The Early Years Foundation Stage is the statutory framework that sets out children&#39;s learning and development in the Foundation Stage. EYFS begins at birth and ends at the end of Reception year when a child is five. It provides children with the skills and knowledge necessary to build the foundation of learning for future process and success through school and life.</span></span></span><br />\r\n<span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\"><span style=\"background-color:white\">The EYFS profile summarizes a child&#39;s attainment at the end of the Foundation Stage, the judgement is based on ongoing observation and assessment of the characteristics of effective learning, as well as the prime and the specific area of learning.</span><br />\r\n<span style=\"background-color:white\">From Playgroup to Reception the children spend the majority of their day engaged in playful learning, this involves the children independently assessing a variety of indoor and outdoor resources focusing on the curriculum areas. They also take part in small-group times each day working alongside their classmates and teachers. The reception classroom provides a balance of adult-led and child initiated learning opportunities so that children can progress socially, physically and academically.</span></span></span></span></span></p>', 'Space 4 DSC_4055.JPG', 0),
(3, 2, 'Transition', '3-5', 'transition', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">We support the children in this class through the transition from the Reception stage to key stage 1, we gradually increase the children&#39;s exposure to more structured small groups and whole class learning with longer learning times.</span></span></span></p>', 'Space 4 DSC_4055.JPG', 0),
(4, 2, 'Year Two in Beryl Brooks', '1-6 Years', 'year-two-in-beryl-brooks', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Year 2 is the end of the key stage 1 and we have to ensure that pupils are well prepared to make the move for the key stage 2 at the end of the year. While playful learning time is reduced the children still engage in lots of hands -on practical activities using a range of resources to develop different concepts.</span></span></span></p>', 'Space 8, year 1 DSC_4068.JPG', 0),
(5, 2, 'Year Three in Beryl Brooks', '2 - 7 Years', 'year-three-in-beryl-brooks', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Year 3 is the first year in Key Stage 2 and we work hard to support the transition from &#39;infants to Juniors&#39;.&nbsp; We start to expect children to take a bit more responsibility for learning and homework, we begin to see more extended working and investigation work.&nbsp; We aim to develop children&#39;s social, emotional, academic skills and we challenge children to strive for their personal best.</span></span></span></p>', 'Space 10 Year 3,   IMG_9847.JPG', 0),
(6, 3, 'Year four in Beryl Brooks', '5-8', 'year-four-in-beryl-brooks', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">From year 4 we continue to develop and build on children social emotional an academic skill through our creative curriculum. We embed opportunities for philosophical discussion and dialogue, we support the children as they build confidence in their presentation skill, we encourage the children to become more independent, make sensible choices and strive for their personal best in all that they do.</span></span></span></p>', 'Space 11, Year 4  DSC_4085.jpg', 0),
(7, 3, 'Year five in Beryl Brooks', '5 - 9', 'year-five-in-beryl-brooks', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">From year 4 we continue to develop and build on children social emotional an academic skill through our creative curriculum. We embed opportunities for philosophical discussion and dialogue, we support the children as they build confidence in their presentation skill, we encourage the children to become more independent, make sensible choices and strive for their personal best in all that they do.</span></span></span></p>', 'space 7. DSC_9872.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `curriculumcategorys`
--

CREATE TABLE `curriculumcategorys` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculumcategorys`
--

INSERT INTO `curriculumcategorys` (`id`, `name`, `description`, `slug`, `deleted`) VALUES
(1, 'The Early Years Foundation Stage ( EYFS )', 'The Early Years Foundation Stage', 'the-early-years-foundation-stage-eyfs', 0),
(2, 'Junior Primary in Beryl Brooks', 'Junior Primary in Beryl Brooks', 'junior-primary-in-beryl-brooks', 0),
(3, 'Upper Primary in Beryl Brooks', 'Upper Primary in Beryl Brooks', 'upper-primary-in-beryl-brooks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `message`, `status`, `property_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Fitzgerald Rutledge', 'cisysazijy@yahoo.com', '+1 (197) 557-5518', 'Cillum earum eius cum quam facere', '1', 'A5206BO3081', NULL, '2020-05-29 09:28:11', '2020-05-29 12:06:27'),
(2, 'Derek Benton', 'tyhuzebyt@gmail.com', '+1 (843) 349-6617', 'Cillum earum eius cum quam facere', '0', 'A5206BO3081', NULL, '2020-05-29 09:30:27', '2020-05-29 09:30:27'),
(3, 'Piper Meadows', 'qimev@gmail.com', '+1 (694) 131-6619', 'Cillum earum eius cum quam facere', '0', 'A5206BO3081', NULL, '2020-05-29 09:31:04', '2020-05-29 09:31:04'),
(4, 'September May', 'hibi@gmail.com', '+1 (199) 539-1974', 'Cillum earum eius cum quam facere', '1', NULL, '2020-05-29 12:07:48', '2020-05-29 10:26:47', '2020-05-29 12:07:48'),
(5, 'Benedict Lewis', 'zovuxogum@hotmail.com', '+1 (448) 681-1956', 'Rem neque ea eos ipsum ut qui doloremque et inventore ducimus ea aliquip', '0', 'A3980BfO4429', NULL, '2020-05-29 10:30:26', '2020-05-29 10:30:26'),
(6, 'Justin Hart', 'rapiqep@gmail.com', '+1 (835) 747-9622', 'Aperiam duis magni proident similique sunt nobis corporis excepturi aut quia eum est', '1', NULL, '2020-06-06 15:41:34', '2020-06-06 15:05:14', '2020-06-06 15:41:34'),
(7, 'Emma Caldwell', 'qobaqyh@yahoo.com', '+1 (984) 959-5386', NULL, '1', NULL, NULL, '2020-10-12 11:29:59', '2020-10-12 11:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_event` date DEFAULT NULL,
  `venue` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `faq_cats_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_cats_id`, `question`, `answer`, `slug`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Where is DALA ESTATE Located?', '<p>DALA ESTATE is situated at Ilamija, Ibeju Lekki, Alaro City.</p>', 'where-is-dala-estate-located', 'faq/Dryd3J5mnPkIPBAm1QZPEBTPxDTX4eksbbjpca5U.png', NULL, '2022-08-06 05:33:55', '2022-08-06 05:33:55'),
(2, 3, 'Who is the developer of DALA ESTATE ?', '<p>DALA PROPERTY LIMITED</p>', 'who-is-the-developer-of-dala-estate', NULL, NULL, '2022-08-06 05:36:09', '2022-08-06 05:36:09'),
(3, 3, 'What type of Title does DALA ESTATE have on the land?', '<p>C of O</p>', 'what-type-of-title-does-dala-estate-have-on-the-land', NULL, NULL, '2022-08-06 05:37:56', '2022-08-06 05:37:56'),
(4, 3, 'What types of infrastructure will the developer provide?', '<p>Perimeter fencing, Gate House and Earth Road.</p>', 'what-types-of-infrastructure-will-the-developer-provide', NULL, NULL, '2022-08-06 05:38:29', '2022-08-06 05:38:29'),
(5, 3, 'What is the payment structure?', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>PLOT SIZE</td>\r\n			<td>600SQM</td>\r\n			<td>300SQM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>0-3 MONTHS</td>\r\n			<td>5,500,000.00</td>\r\n			<td>3,000,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3-6 MONTHS</td>\r\n			<td>6,000,000.00</td>\r\n			<td>3,500,000.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6-12 MONTHS</td>\r\n			<td>6,500,000.00</td>\r\n			<td>4,000,000.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>', 'what-is-the-payment-structure', NULL, NULL, '2022-08-06 05:48:02', '2022-08-06 05:48:02'),
(6, 3, 'Would there be any development levy?', '<p>YES. N500,000 Per Plot and to be paid before physical allocation.</p>', 'would-there-be-any-development-levy', NULL, NULL, '2022-08-06 05:48:44', '2022-08-06 05:48:44'),
(7, 3, 'What is Development levy?', '<p>It is the cost paid for the placement of Infrastructure within the estate.</p>', 'what-is-development-levy', NULL, NULL, '2022-08-06 05:49:20', '2022-08-06 05:49:20'),
(8, 3, 'Would there be any survey fee?', '<p>YES N200,000 PER PLOT Registered Survey signed by Registered Surveyor and it is required<br />\r\nat time of payment, NO Special Consideration When Buying More than a plot.</p>', 'would-there-be-any-survey-fee', NULL, NULL, '2022-08-06 05:49:55', '2022-08-06 05:49:55'),
(9, 3, 'Would there be an agreement fee?', '<p>YES, the agreement fee referred to as DEED OF ASSIGNMENT FEE is N100,000 PER PLOT and it<br />\r\n2 -3 Plots ------- N150, 000<br />\r\nis Required at time of Payment. Special Consideration When Buying More than a plot.<br />\r\n4-6Plots ------- N200, 000</p>', 'would-there-be-an-agreement-fee', NULL, NULL, '2022-08-06 05:50:50', '2022-08-06 05:50:50'),
(10, 3, 'Will there be extra charges for commercial plots and corner piece plots?', '<p>Yes, Commercial Plots attracts 20% surcharge while Corner plot attract an additional 20%charge</p>', 'will-there-be-extra-charges-for-commercial-plots-and-corner-piece-plots', NULL, NULL, '2022-08-06 05:51:22', '2022-08-06 05:51:22'),
(11, 3, 'When will my plot(s) be allocated to me?', '<p>Physical allocation is done instantly. For subscribers to be eligible for Physical allocation, they&nbsp;must have complete full payment for plot price and other statutory charges.</p>', 'when-will-my-plots-be-allocated-to-me', NULL, NULL, '2022-08-06 05:53:37', '2022-08-06 05:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `faq_cats`
--

CREATE TABLE `faq_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq_cats`
--

INSERT INTO `faq_cats` (`id`, `name`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DALA ESTATE ENUGU AGIDI AWKA', 'DALA ESTATE ENUGU AGIDI AWKA is situated Behind Dubai Estate Awka, Opposite\r\nGovernor Soludo Property, Along Virginia Etiaba Industry, 5 Minutes Drive from Aroma\r\nJunction.', 'dala-estate-enugu-agidi-awka', NULL, '2022-08-06 05:30:35', '2022-08-06 05:30:35'),
(2, 'DALA ESTATE PHASE II', 'DALA ESTATE PHASE II is situated at Ilamija, Ibeju Lekki, Alaro City.', 'dala-estate-phase-ii', NULL, '2022-08-06 05:31:21', '2022-08-06 05:31:21'),
(3, 'DALA ESTATE', 'DALA ESTATE is situated at Ilamija, Ibeju Lekki, Alaro City.', 'dala-estate', NULL, '2022-08-06 05:31:53', '2022-08-06 05:31:53'),
(4, 'About Fairmont Hilltop', 'About Fairmont Hilltop', 'about-fairmont-hilltop', NULL, '2022-08-15 16:31:52', '2022-08-15 16:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `form_uploads`
--

CREATE TABLE `form_uploads` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `file_path` varchar(225) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(225) DEFAULT NULL,
  `updated_at` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_uploads`
--

INSERT INTO `form_uploads` (`id`, `title`, `file_path`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Membership Form Download', 'Uploads/Ghztey6p2WY9OPZblSn6nP7MSMbTGN8a3SU7y6CO.pdf', 'Membership Form Download', 'membership-form-download', 0, '2022-11-08 18:41:25', '2022-11-08 18:41:25'),
(2, 'Constitution and Bye-Laws', 'Uploads/wSMc6F0zPree8qP4uqBOrZDHimiI95rS8PaNlxXo.pdf', 'Constitution and Bye-Laws', 'constitution-and-bye-laws', 0, '2022-11-08 18:42:36', '2022-11-08 18:42:36'),
(3, 'Revalidation Form Download', 'Uploads/nfeKOeAuJMir5BzoGj01xQM5uqRZ9a9aGyV9nhfy.pdf', 'Membership Revalidation Form Download', 'membership-revalidation-form-download', 0, '2022-11-08 18:43:29', '2022-11-08 18:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_categories`
--

CREATE TABLE `galleries_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galleries_categories`
--

INSERT INTO `galleries_categories` (`id`, `name`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Graduation', 'Graduation Pictures', 'graduation', 0, '2023-09-04 15:23:24', '2023-09-04 15:23:24'),
(2, 'Playground', 'Playground', 'playground', 0, '2023-09-04 15:23:51', '2023-09-04 15:23:51'),
(3, 'School Hour', 'School Hour', 'school-hour', 0, '2023-09-04 15:24:45', '2023-09-04 15:24:45'),
(4, 'About Slider', 'About Slider', 'about-slider', 0, '2023-09-04 15:50:35', '2023-09-04 15:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_posts`
--

CREATE TABLE `galleries_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `gallery_cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries_posts`
--

INSERT INTO `galleries_posts` (`id`, `gallery_cat_id`, `name`, `file_path`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 3, 'Year One', 'gallery/9rK8me3bd2SAdI180mpiFXIdWXcci5G5jG3E9IqI.jpg', 'Year One Children in Class Learning', 'year-one', 0, '2023-09-04 15:26:37', '2023-09-04 15:26:37'),
(2, 3, 'Year Two Children', 'gallery/3oQ8cxkjLdIEOujTSv73appgwxskhCCj1LFCswFp.jpg', 'Year Two Children learning in class', 'year-two-children', 0, '2023-09-04 15:27:39', '2023-09-04 15:27:39'),
(3, 3, 'Year Three', 'gallery/8eYW9Hb0HFZvt4JKOX4LfDsPKMC5eP4tnvAuHmhW.jpg', 'Year Three in class learning', 'year-three', 0, '2023-09-04 15:28:32', '2023-09-04 15:28:32'),
(4, 3, 'Year Four Children', 'gallery/1sDO1AowUvltd7NVtlqLe53dI7ywPazFbh76xAEW.jpg', 'Year Four Children in class learning', 'year-four-children', 0, '2023-09-04 15:29:35', '2023-09-04 15:29:35'),
(5, 1, 'Graduation Children', 'gallery/eqepa5xdaylmmiMUVcqnZ6g2cIjQ8Epwi2EmhArq.jpg', 'Graduation Children celebrating', 'graduation-children', 0, '2023-09-04 15:30:43', '2023-09-04 15:30:43'),
(6, 3, 'Pre School', 'gallery/VNvC0cVD5fp7HVqvUEbXPEgPMoKPyJTeVW3pNIbs.jpg', 'Pre School Children in class Learning', 'pre-school', 0, '2023-09-04 15:32:28', '2023-09-04 15:32:28'),
(7, 3, 'Creche', 'gallery/hQwslSViriK2Tbx77a2SYKbOZIB9HmW33XeZdZlX.jpg', 'Creche in class learning', 'creche', 0, '2023-09-04 15:37:21', '2023-09-04 15:37:21'),
(8, 4, 'about', 'gallery/a10GnMnOeWQErFIhD0yci6sdHZYzkh6hFINXjz77.jpg', 'about slider', 'about', 0, '2023-09-04 15:51:52', '2023-09-04 15:51:52'),
(9, 4, 'About 2', 'gallery/eOBoXRLizUmJMfFmKnyj8KR0ByWMKTAf9h4NHGEP.jpg', 'About 2', 'about-2', 0, '2023-09-04 15:52:45', '2023-09-04 15:52:45'),
(10, 2, 'Recreation', 'gallery/DFmn36TKUIiOxMnaXKvdA6owzVWAFfpdhYG6UmwP.jpg', 'Recreation', 'recreation', 0, '2023-09-05 21:52:57', '2023-09-12 15:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `housings`
--

CREATE TABLE `housings` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housings`
--

INSERT INTO `housings` (`id`, `name`, `slug`, `description`, `image`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'About The Meadows', 'about-the-meadows', '<h2><strong><span style=\"color:#c0392b\">Affordable Luxury For All</span></strong></h2>\r\n\r\n<p>Lagos Meadows is an exclusive site and service project with a design concept of luxury lifestyle. It is a well thought after project with all the essential amenities and infrastructure to guarantee its stakeholders a bespoke lifestyle.</p>\r\n\r\n<p>It is located in a developed area of the Lekki Free Trade Zone known as Magbon Alade. The site is in close proximity with the Eleko Beach junction and about 4 minutes drive away from Amen Estate.</p>\r\n\r\n<table id=\"eael-data-table-f6968f7\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"\">&nbsp;</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Location</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>Magbon Alade</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Property type</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>Residential Plots &amp; Commercial Plots</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Size</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>500 Sqm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'housing/wVaUZvCBnVE2txzKJskLyBBZBd2q6AM26xIkV4b5.jpeg', NULL, NULL, '2022-07-30 03:11:03', '2022-07-30 03:54:18'),
(2, 'Martha King', 'martha-king', '<h2>Affordable Luxury For All</h2>\r\n\r\n<p>Lagos Meadows is an exclusive site and service project with a design concept of luxury lifestyle. It is a well thought after project with all the essential amenities and infrastructure to guarantee its stakeholders a bespoke lifestyle.</p>\r\n\r\n<p>It is located in a developed area of the Lekki Free Trade Zone known as Magbon Alade. The site is in close proximity with the Eleko Beach junction and about 4 minutes drive away from Amen Estate.</p>\r\n\r\n<table id=\"eael-data-table-f6968f7\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"\">&nbsp;</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Location</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>Magbon Alade</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Property type</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>Residential Plots &amp; Commercial Plots</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p><strong>Size</strong></p>\r\n			</td>\r\n			<td colspan=\"\" rowspan=\"\">\r\n			<p>500 Sqm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'housing/Gt0iLVMcrhRosC14UJoP9PVc6NYgVVMipUNj5Mg1.jpeg', NULL, NULL, '2022-07-30 03:51:31', '2022-07-30 03:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(20) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `bvn` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `nature` text DEFAULT NULL,
  `repayment` text DEFAULT NULL,
  `security` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `address`, `amount`, `interest`, `bvn`, `dob`, `gender`, `photo`, `id_card`, `purpose`, `location`, `experience`, `nature`, `repayment`, `security`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ramona', NULL, 'Madden', 'zuhaby@hotmail.com', '+1 (286) 157-8569', 'Facilis ex a libero et dolorem soluta lorem reprehenderit', '100000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seen', NULL, '2020-12-18 08:27:41', '2020-12-18 08:41:02'),
(2, 'Aurora', 'Talley', 'Talley', 'jywigydu@mailinator.net', '+1 (803) 727-4313', 'Duis corporis laboru', '280000', '2', '4567987', '2016-10-10', 'Male', 'photo/R12iCogWxO4AavX2poD04eKJCeDmX8Exaq7hTyvE.jpeg', 'id_card/iKzaxwShyl4c7oyK2ptPMKmSTNW1QtZKefW6L6Jr.png', 'Ut ut aut inventore', 'Sit aut obcaecati at', 'Fuga Cupidatat nobi', 'Sapiente voluptas mi', 'Dolor vel sint aut n', 'Voluptas assumenda e', 'Seen', NULL, '2020-12-23 13:06:48', '2020-12-23 13:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `managements`
--

CREATE TABLE `managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managements`
--

INSERT INTO `managements` (`id`, `name`, `slug`, `post`, `image`, `description`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Uche, Basil Chinedu (B.A. MCIB)', 'uche-basil-chinedu-ba-mcib', 'Manager, Enugu Branch', 'Management/pVSM2mGUpsHTREmfw9m4eutqvfNSQ1oSUyL9PTak.jpeg', '<p style=\"text-align:justify\">Mr Uche is a vastly experienced banker, having worked in a commercial bank before joining the services of the UNNMFB. He holds a Bachelor of Arts (BA) Degree from the University of Nigeria and is a certified member of the Chartered Institute of Bankers of Nigeria. He has been the manger of the Enugu branch of the bank since 2005 and is a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria (MCIB). Mr Uche is a recipient of the Leadership Excellence award from the Non-Academic Staff Union of the University of Nigeria, Enugu Campus.</p>', NULL, NULL, '2020-10-12 09:45:47', '2021-01-17 21:13:22'),
(10, 'Nnamuch, Nicholas Ani, Mr (B.A)', 'nnamuch-nicholas-ani-mr-ba', 'Internal Auditor', 'Management/NJFbe3gZ1xRPU6nV2mxOiBdXLHttH2q3T8JxOGzg.jpeg', '<p>Mr Nnamuchi holds a Bachelors Degree in Banking and Finance from Abia State University, Uturu. He has over 25 years experience of banking and currently heads the audit department of the bank.</p>', NULL, NULL, '2021-01-17 21:14:38', '2021-01-17 21:14:38'),
(11, 'Cecilia Ifeoma Isiwu (HND, MCIB) Ag.', 'cecilia-ifeoma-isiwu-hnd-mcib-ag', 'Head of Finance and Accounts', 'Management/S4mz0Bi4h64bZfaqUx8Wyvs2uJZNV9oHnV4rRZza.jpeg', '<p>Mrs Isiuwu has been the Head of the Finance and Accounts Department of the bank since 2011. She holds a Higher National Diploma in Accounting and is a Microfinance Certified Banker (MCIB) of the Chartered Institute of Bankers of Nigeria. She joined the services of the bank in 2004 and has served in various capacities in different departments of the bank,&nbsp; namely audit department and credit operations.</p>', NULL, NULL, '2021-01-17 21:15:41', '2021-01-17 21:15:41'),
(12, 'Ene Benjamin Ikechukwu (HND, MBA, MCIB).', 'ene-benjamin-ikechukwu-hnd-mba-mcib', 'Head of Marketing', 'Management/mWudd8pFWmFpjepnJ2lJOmpx6oc0rKqENtYPZVtV.jpeg', '<p>Mr Ene holds a Higher National Diploma (HND) and a Masters Degree in Business Administration (MBA) in marketing. He is a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria. Mr Ene joined the services of the bank in 2004 and once headed the credit operations of the bank.</p>', NULL, NULL, '2021-01-17 21:16:28', '2021-01-17 21:16:28'),
(13, 'Asogwa Sunday Ezeugwu HND (London), ACIS (London), MCIB, PGD.', 'asogwa-sunday-ezeugwu-hnd-london-acis-london-mcib-pgd', 'General Services Officer/Company Secretary', 'Management/aTIaISLqRq7dcbof9kl3mcPQ6oIP07F6PG6rEOxU.jpeg', '<p><br />\r\nMr. Asogwa holds a Higher National Diploma in Business Studies and has been the General Services Officer of the Bank since 2008. He is an Associate of the Institute of Marketing (London) and the Chartered Institute of Secretaries and Administrators ( London). He is also a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria (MCIB).</p>', NULL, NULL, '2021-01-17 21:17:44', '2021-01-17 21:17:44'),
(14, 'Omeje, Ejiofor Leonard (HND, PGD., MSc.)', 'omeje-ejiofor-leonard-hnd-pgd-msc', 'Head of Information and Communication Technology Department.', 'Management/r2Z5qhkMTywMD3qfJOuP3fzO21RdwZRWNNS3zvAc.jpeg', '<p><br />\r\nMr Ejiofor was educated at the Institute of Management and Technology (IMT), Enugu and the University of Nigeria, Nsukka, from where he bagged a higher National Diploma (HND) in accounting and a Master of Science (MSC) degree in Public Administration and Financial Management. He joined the ICT unit of the bank in 2006 and rose through the ranks to head the unit. He has received many professional trainings in information and communication technology, especially its application in the banking industry. He is also a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria (MCIB).</p>', NULL, NULL, '2021-01-17 21:18:45', '2021-01-17 21:18:45'),
(15, 'Mrs. Anyiam Ogochukwu (B.Sc, M.Sc) Ag.', 'mrs-anyiam-ogochukwu-bsc-msc-ag', 'Head of Credit', 'Management/Dz0RV0z6rU2oHWeDgRfgXDV1TTbDTUJt6Tst5EdV.jpeg', '<p><br />\r\nMrs. Anyiam is the Acting Head of Credit Dept. She has worked as the credit office, customer service officer before attaining the current status. She holds Bachelor of Science Degree and Master of Science Degree in Geology from UNN respectively. She is also a Microfinance certified member of the Chartered Institute of Bankers of Nigeria.</p>', NULL, NULL, '2021-01-17 21:19:34', '2021-01-17 21:19:34'),
(16, 'Mrs. Okoye Ifeyinwa Anastesia Ag.', 'mrs-okoye-ifeyinwa-anastesia-ag', 'Managing Director', 'Management/WWuzCW819QhaqBQDcIqcURlkuQzKbteIU9OmVHRH.jpeg', '<p><br />\r\nShe holds B.A (UNN) in Education, PGD (UNN) in Public Admin and Finance and M.C.I.B.&nbsp; She has worked for 20 years in the Bank and still counting. She has 6 years working experience in operations, 8 years experience as a credit officer and currently the acting managing director. She is also a Microfinance Certified Banker of the Chartered Institute of Bankers of Nigeria.</p>', NULL, NULL, '2021-01-17 21:20:32', '2021-01-17 21:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2018_09_05_141731_create_managements_table', 1),
(20, '2018_09_05_141819_create_boards_table', 1),
(21, '2018_09_05_141834_create_branches_table', 1),
(22, '2018_09_05_141848_create_products_table', 1),
(23, '2018_09_05_141902_create_services_table', 1),
(24, '2018_10_26_183033_create_settings_table', 1),
(25, '2018_09_07_080709_create_sliders_table', 2),
(26, '2018_08_11_211426_create_posts_table', 3),
(27, '2018_08_11_211441_create_categories_table', 3),
(28, '2018_08_11_211455_create_tags_table', 3),
(29, '2018_08_17_201055_create_subcategories_table', 3),
(30, '2018_08_23_190605_create_events_table', 4),
(31, '2018_09_10_204003_create_galleries_table', 5),
(32, '2019_01_15_112830_create_clients_table', 6),
(33, '2019_01_15_112914_create_partners_table', 6),
(34, '2019_01_15_123701_create_projects_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `slug`, `description`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'Mining & Quarry Services', 'mining-quarry-services', '<p>We design, erect, construct and operate quarry operations for infrastructural projects which involves approval of quarry site, testing of stone/rock, top soil removal, drilling, blasting, hauling, crushing and producing required product at the required rate. Our stone quality is stupendiously excellent and the bed height gives our customers maximum satisfaction</p>\r\n\r\n<p>&nbsp;</p>', 'service/eh6tFewS1pixReWsHR55lbhB7jnLMElLScbj2fgg.jpeg', NULL, '2020-06-06 10:57:49', '2020-06-06 10:57:49'),
(10, 'Exploration & Prospecting and Management', 'exploration-prospecting-and-management', '<p>As a growing company we provide exploration services covering design, and management of exploration services. We source and explore local supply of raw materials. Materials we source explore and supply includes minerals and gem stones, lead ore, iron ore, galena, zinc ore, copper ore etc</p>\r\n\r\n<p>&nbsp;</p>', 'service/0y9gCvC6n26rBddWBeYW5ZjLkxgGNua4UhGKooYI.jpeg', NULL, '2020-06-06 10:59:28', '2020-06-06 10:59:28'),
(11, 'Construction & Engineering  Services', 'construction-engineering-services', '<p>We are a leading company in Nigeria that provide services to meet a wide variety of infrastructural and structural needs and our core activities include offering consultancy services in preliminary work, building design, construction and maintenance.</p>', 'service/R5fy9Gnf85dSTJsK8ZSgBBRQ3cWt93XdCbQjMRFG.jpeg', NULL, '2020-06-06 10:59:50', '2020-06-06 10:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, '3docean', 'partner/jTfQ2r4enOpV86i2qqHP6fTxL3KEcqdL3VnBKoaE.png', NULL, '2020-10-09 05:49:48', '2022-08-08 15:19:10'),
(22, 'AudioJungle', 'partner/sVF9F3APwfazU7gOSsW0XDR9gpUYy2myN3s1Dafn.png', NULL, '2020-10-09 05:49:58', '2022-08-08 15:19:33'),
(23, 'Microlancer', 'partner/2eydMMcdnxQDbIcNAQsz4AijhIN0fzCugl620zJ5.png', NULL, '2020-10-09 05:50:10', '2022-08-08 15:19:52'),
(24, 'Pixeden', 'partner/Gbd8OjUezec0sGtY9nKjHsxZQHXPZjZDRREi0CE6.png', NULL, '2020-10-09 05:50:28', '2022-08-08 15:20:12'),
(25, 'Graphicriver', 'partner/DyxfzWuv6VViTxQ6jgPmo41D9XE3sZIZLBVwjCMx.png', NULL, '2020-10-09 05:50:47', '2022-08-08 15:20:42'),
(26, 'Photodune', 'partner/BLABLuGABbi8eC8dE9nCM7zZiR9chWdWK6kSJVik.png', NULL, '2020-10-09 05:51:04', '2022-08-08 15:21:03'),
(27, 'Rerum blanditiis et', 'partner/Sn92C9lGp35CQQDSvjiYkQnbDDzTAyDz9PWvE7vp.jpeg', '2022-08-08 15:21:09', '2022-08-07 21:03:15', '2022-08-08 15:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `past_presidents`
--

CREATE TABLE `past_presidents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `past_presidents`
--

INSERT INTO `past_presidents` (`id`, `name`, `description`, `slug`, `image`, `start_date`, `end_date`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 'Amela Summers Chantale Mays', 'Omnis quia animi ha', 'amela-summers-chantale-mays', 'PastPresident/VQD93IfPDH7u0Pqip2Vzu0MfvCjDCvc6BYAkbxnQ.jpg', '2019-06-03 23:00:00', '2021-06-17 23:00:00', 0, '2022-11-18 11:27:40', '2022-11-18 13:58:49'),
(4, 'Zorita ButlerDeacon Higgins', 'Aspernatur consequun', 'zorita-butlerdeacon-higgins', 'PastPresident/ZaCHeYjCe2ASK6FmagjxqTbBnd2CKE7ilK1PIiwA.png', '1989-08-10 23:00:00', '1977-01-23 23:00:00', 0, '2022-11-18 15:08:45', '2022-11-18 15:08:45'),
(5, 'Hoyt FarrellAlika Chaney', 'Amet sed aut quasi', 'hoyt-farrellalika-chaney', 'PastPresident/lRPysSkly9j8fRFqIs4ps7OW36rW733KF2f5RcGt.jpg', '2022-07-28 23:00:00', '1996-04-16 23:00:00', 0, '2022-11-18 15:08:59', '2022-11-18 15:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beneficiary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `service`, `benefits`, `beneficiary`, `requirements`, `description`, `image`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'Plastic Poly Bagss', 'plastic-poly-bagss', NULL, 'lkanlfknalf', 'lasknalkf', 'laknlaknla', '<p>Sacclaimed in the industry as a manufacturer, supplier, trader and exporter, we are engaged in offering <strong>Plastic Poly Bags</strong>. Excellent in quality, our offered bags are designed in adherence to the guidelines laid in the industry. Besides, to meet the voluminous demands of customers, we upgrade our machines on regular basis.<br />\r\n<br />\r\n<strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>Excellent tearing strength</li>\r\n	<li>Lightweight</li>\r\n	<li>Elegant design</li>\r\n</ul>', 'product/2Yoag3i3knqYwL95PmsDZjHnnSholkb8cXOLZn57.jpeg', '2020-12-17 09:58:12', NULL, '2020-10-10 16:17:59', '2020-12-17 09:58:12'),
(24, 'BOPP Printed Poly Bags', 'bopp-printed-poly-bags', NULL, 'lknlkanlf', 'lknlaknvla', NULL, '<p>Creating new benchmarks in the industry as a manufacturer, supplier, trader and exporter, we are engaged in offering <strong>BOPP Printed Poly Bags.</strong> Premium-grade plastic and other material that is obtained from the reliable vendors of the industry are used in the manufacturing process of these bags to attain highest benchmarks of quality. Following ethical business policies, we have mustered huge client-base.<br />\r\n<br />\r\n<strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>Convenient to carry</li>\r\n	<li>High tearing strength</li>\r\n	<li>Lightweight</li>\r\n</ul>', 'product/KN8lkuzVJolMIwIBcYdDLtUwI6jyPlDxaSQAUoX5.png', '2020-12-15 17:30:52', NULL, '2020-10-10 18:36:12', '2020-12-15 17:30:52'),
(25, 'OUR BANKING SERVICES', 'our-banking-services', NULL, 'lkanmlkanl', 'lalknfla', 'alknalkfa', '<p>UNN&nbsp;Microfinance Bank provides modern banking methods which allow our dear customers to choose from our numerous savings and current account plans to perfectly meet their individual requirements.</p>\r\n\r\n<p>We have plans for low class, middle class and high class individuals. We also provide innovative banking solutions for business men and women, corporate organizations and NGOs.</p>', 'product/k7DgEpvlUOHuFrD1SYdlAeq4DUFjwcd21DRMLnQB.jpeg', NULL, NULL, '2020-12-17 10:00:14', '2021-01-17 20:25:25'),
(26, 'Current Account', 'current-account', NULL, '<ul>\r\n	<li>&nbsp;Access to both short and long term credit facility.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Customer can guarantee other customer to get loan.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Issuance of cheque to 3rd party.</li>\r\n</ul>', '<ul>\r\n	<li>Adult , Traders both males and females.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Small and medium enterprises owner.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Salary earners.</li>\r\n</ul>', '<p><strong>Minimum Opening balance</strong></p>\r\n\r\n<ul>\r\n	<li>Individual N1, 000.00</li>\r\n	<li>Association N2, 000.00</li>\r\n	<li>Corporate N5, 000.00</li>\r\n	<li>Joint N2, 000.00</li>\r\n	<li>Microfinance Individual N1, 000.00</li>\r\n</ul>\r\n\r\n<p><strong>Cash/Verve card services<br />\r\nNo minimum balance requirement<br />\r\nRequisite for credit facility<br />\r\nCOT charge N5.00 Per &lsquo;000</strong></p>', '<p>This is an account operates through the use of deposit voucher and cheque book.</p>', 'product/Lo7QhcYqvATpI7MCfmyX8WH3pV27G9akzvPR8xlu.png', NULL, NULL, '2022-02-21 18:31:20', '2022-02-21 19:30:30'),
(27, 'SAVINGS ACCOUNT', 'savings-account', NULL, '<ul>\r\n	<li>&nbsp;&nbsp;Customer save and withdrawal cash at convenient time.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Account attracts interest at the end of month.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Account can be opened to finance target project. etc</li>\r\n</ul>', '<ul>\r\n	<li>&nbsp;&nbsp;&nbsp;Adult males and females.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Traders.</li>\r\n	<li>&nbsp;&nbsp;&nbsp;Salary earners.</li>\r\n</ul>', '<p><strong>Minimum opening balance</strong></p>\r\n\r\n<ul>\r\n	<li>Individual N1, 000.00</li>\r\n	<li>Association N5, 000.00</li>\r\n	<li>Joint N2, 000.00</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;Two passport photographs.<br />\r\n&nbsp;&nbsp;&nbsp;Recent Utility bills.<br />\r\n&nbsp;&nbsp;&nbsp;National recognized identity card.</strong></p>', '<p>This is an account open to keep money for short and long period. It is operated through the use of saving deposits and savings withdrawal by the account owner.</p>', 'product/nQ35y8fJz18sBcvwmLCR5KQR53wvQisBPVS80lZM.jpeg', NULL, NULL, '2022-02-21 20:17:22', '2022-02-21 20:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `description`, `image`, `link`, `deleted_at`, `created_at`, `updated_at`) VALUES
(44, 'Ezzamgbo Bio Energy Plant', 'ezzamgbo-bio-energy-plant', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'property/1BvxX9lhmMFT8332dPTU6m3z0dCjjAyQ3KHh75cA.jpeg', NULL, NULL, '2020-06-06 13:49:06', '2020-10-12 10:46:10'),
(45, 'People\'s Hill Project', 'peoples-hill-project', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'property/6Sv0SLJhMA5YXHbaE7vhUUrRUFrn6gyVkKmsWOSO.jpeg', NULL, NULL, '2020-06-06 13:55:29', '2020-10-12 10:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `property_categories_id` int(11) NOT NULL,
  `property_uses_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `minimum_price` varchar(100) DEFAULT NULL,
  `maximum_price` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_cat_id`, `name`, `description`, `image`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 1, 'Event Center Services', '<p>2022 International Women Day Celebration</p>', 'Services/hYP1mCDQipFDf754UzGMqyBxujACwGzdcLdgXlQq.jpg', 'event-center-services', 0, '2022-11-05 06:17:35', '2022-12-03 13:30:54'),
(3, 1, 'Kitchen Services', '<p>We Provide all kinds of delicacies</p>', 'Services/htSE9uuCPLPrzfv1ljwkpE9VJ1d6KMxQN9hn1n6t.jpg', 'kitchen-services', 0, '2022-11-05 06:18:40', '2022-12-03 13:29:50'),
(4, 1, 'Bar Services', '<p>Provides all kind of delicacies including african home made porrage</p>', 'Services/FZsi6MUHKGF5B3pxmBL1FGHmtveVE7GZIfS53K1f.jpg', 'bar-services', 0, '2022-11-11 05:33:28', '2022-12-03 13:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `description`, `slug`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Event Center Services', 'Event Center Services', 'event-center-services', 0, '2022-11-05 05:11:53', '2022-11-05 05:11:53'),
(2, 'Kitchen Services', 'Kitchen Services', 'kitchen-services', 0, '2022-11-05 05:12:45', '2022-11-05 05:12:45'),
(6, 'Bar Services', 'Bar Services', 'bar-services', 0, '2022-11-11 05:26:55', '2022-11-11 05:26:55'),
(7, 'Lyle Wilkinson', 'Aut adipisci velit e', 'lyle-wilkinson', 0, '2022-11-16 20:42:44', '2022-11-16 20:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `service_section_categories`
--

CREATE TABLE `service_section_categories` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_section_categories`
--

INSERT INTO `service_section_categories` (`id`, `service_id`, `service_category_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitetitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sitename`, `sitetitle`, `email`, `phone`, `about`, `mission`, `vision`, `core_value`, `address`, `facebook`, `twitter`, `linkedin`, `googleplus`, `logo`, `banner`, `deleted`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beryl Brooks Premier School', NULL, 'info@berylbrookschool.com', '(+234) 903 793 9282,  (+234) 903 797 0077', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Beryl Brooks Premier School was established in 2014 in Port Harcourt, Rivers State, Nigeria, on the belief that education is a preparatory ground for children in whose hands a country&#39;s development and growth depends.<br />\r\n<br />\r\nThe school was instituted to provide a well-rounded education on the principle that education must ensure that children are soundly grounded &nbsp;not only in academics but in all spheres of life, in preparation for life adventures to become the pride of the society through excellent education.<br />\r\n<br />\r\nWe have structures in place directed at achieving this vision. Our school is designed in a rich innovative, enabling and stimulating environment&nbsp; &nbsp;that supports and aids rapid development which enhances the learning process.<br />\r\n<br />\r\nOur classes are equipped with state-of-the-art technology; deliberately small in number of pupils to ensure that children receive individual attention in order to meet their learning needs. We aim at giving every pupil the opportunity to develop their innate abilities.<br />\r\n<br />\r\nOur teachers are committed and passionate about teaching, well grounded in our approaches. We take pride in our excellent teaching methodology and as such staff undergo a challenging recruitment processes with safeguarding and child protection as a key feature, they are selected to fulfill the vision of the school through experience and resilience. We make provision &nbsp;for continuous training and development of all staff to guarantee the motivation of providing a high-quality education for our pupils.</span></span></span></span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Beryl Brooks Premier School runs classes from Creche to Primary 6<br />\r\n<br />\r\nEnrollment is usually from either 3 months(Playgroup) or from 2 years(Preschool 1).</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\"><span style=\"background-color:white\">Our school day starts at 7:30 a.m. and closes at 3 p.m. This includes a comprehensive school based extracurricular programs and activities backed up by professional coaching and teaching management. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">We facilitate quality online learning, that allows teachers and pupils to collaborate effectively.</span></span></span></span><br />\r\n<br />\r\n<span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\"><span style=\"background-color:white\">We operate an open door policy and as such, our parents can have easy access to the school management.</span><br />\r\n<br />\r\n<span style=\"background-color:white\">Bbps will continue to expand its scope of work with children and other experts to create new experiences and opportunities for learning. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>', 'Beryl brooks is committed to providing innovative learning experiences. We use recent and up-to-date human and information technology through an effective curriculum; this helps the child to fully harness his or her natural learning part for early success', 'To be a world class school known for educational excellence while raising sound and God fearing children who will be the pride of the society.', 'P - Passion \r\nR - Respect \r\nE - Excellent \r\nM - Meekness \r\nI - Integrity  \r\nE - Eminence \r\nR - Responsibility', 'No 19 Nwakohu Street, Sunshine Estate, by Redeem Junction, Rumuodara Eliowhani Road, off East West Road PHC.', 'https://www.facebook.com/berylbrookschool', 'https://twitter.com/berylbrookschool', 'www.berylbrookschool.com', 'https://www.googleplus.com/iotglobal', 'logo/z1l8GcPZ2NUw2BdO2Ao1j7K5FscUs8aLsJOtv4yg.jpg', 'banner/oxhqCoqiQ21vmzv4jIY8DSnuCyX3f28ePHCV3ADQ.jpg', 0, 0, '2018-09-17 23:00:00', '2022-08-08 23:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `color`, `description`, `image`, `deleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'International Women Conference 2022', 'sliders/vHacbTJzTfPN4OzTGNDGML9FjyK7AaR4669V6R4i.jpg', 1, NULL, '2022-11-03 05:13:38', '2022-11-03 09:14:17'),
(2, NULL, NULL, 'International Women Conference 2022', 'sliders/ADdF3JBvHLkOSmCPdXCJhMPCy0ZpcstLNg83iDlT.jpg', 1, NULL, '2022-11-03 05:14:23', '2022-11-08 03:50:40'),
(3, NULL, NULL, 'Hello Slide', 'sliders/rXDoh8KCypMM0W0g8LtyCsy0DuCfFdIa9hl4fhdB.png', 1, NULL, '2022-11-04 08:08:43', '2022-11-08 01:11:33'),
(7, 'Welcome to Beryl Brooks Premier School', NULL, 'Uncovering the treasure in every child', 'slider/EBF5I5SPMBeHgfdiwAzXj0A5m3EegTFhWmb5qVqx.jpg', 0, NULL, '2022-11-08 01:16:33', '2023-08-24 15:11:55'),
(9, 'Welcome to Beryl Brooks Premier School', NULL, 'Uncovering the treasure in every child', 'slider/zrGGQLOHNSbC7SgENDFdChrTrjB7j1sprHEb3TQ7.jpg', 0, NULL, '2023-08-19 12:25:13', '2023-09-07 06:09:39'),
(10, 'Director', NULL, 'Director Welcome Address', 'slider/38TtA8bUDxfUJMhLQSiDycyRb4x9xNH12eEaCkZD.jpg', 0, NULL, '2023-09-04 06:01:31', '2023-09-04 06:14:55'),
(11, 'Director', NULL, 'Director Address', 'slider/JRww5KEYvp9bip1km0e0jSlCEnycL8wgdHDQrpR4.jpg', 0, NULL, '2023-09-04 06:20:48', '2023-09-04 06:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `staffcategorys`
--

CREATE TABLE `staffcategorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffcategorys`
--

INSERT INTO `staffcategorys` (`id`, `name`, `description`, `slug`, `deleted`) VALUES
(1, 'Creche', 'Creche', 'creche', 0),
(2, 'Reception', 'Reception', 'reception', 0),
(3, 'Director', 'Director', 'director', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `staff_cat_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `staff_cat_id`, `description`, `fname`, `lname`, `username`, `slug`, `phone`, `email`, `gender`, `position`, `image`, `deleted`) VALUES
(1, 1, '<p>A positive and driven English teacher with 15 years of experience working with students in grades 6-12. Passionate about engaging students on all levels, enhancing their social experiences by encouraging group lessons and learning</p>', 'Chika', 'Amadi', 'Chika Amadi', 'chika-amadi', '08132542312', 'chikaamadi@gmail', 'Female', 'Creche class Teacher', 'female_avatar.jpg', 0),
(2, 2, '<p>Vinteger eu libero rutrum, imperdiet arcueniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi</p>', 'Emmanuella', 'Harry', 'Emmanuella Harry', 'emmanuella-harry', '09121099221', 'emmanuellaharry@yahoo.com', 'Female', 'Class Teacher', 'Space 11, Year 4  DSC_4085.jpg', 0),
(3, 2, '<p>Vinteger eu libero rutrum, imperdiet arcueniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi</p>', 'Adaeze', 'Solomon', 'Adaeze Solomon', 'adaeze-solomon', '07040733112', 'adaezesolomon@gmail.com', 'Female', 'Reception Class Teacher', 'Space 3 DSC_4083.JPG', 0),
(4, 2, '<p>Vinteger eu libero rutrum, imperdiet arcueniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem. accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi</p>', 'Tana Fischer', 'Tana Fischer Bree Williams', 'Tana Fischer Tana Fischer Bree Williams', 'tana-fischer-tana-fischer-bree-williams', '+1 (111) 957-5961', 'rejy@mailinator.com', 'Male', 'Reception Class Teacher', 'fake_photo.jpg', 0),
(5, 5, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Welcome to Beryl Brooks Premier School, a learning institution founded upon a desire born out of passion, and the quest to provide excellent academic education that will also secure and build on sound moral and human values. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">We believe that the greatest legacy one can pass on to one&rsquo;s children and grandchildren is not just money and material things, rather a legacy of character and faith .Beryl Brooks steadily and progressively imprints these values in our children on the note that to build on character starts early in life<br />\r\n<br />\r\n&nbsp;The application of reviewed and tested principles results in educational excellence . We run a standard curriculum that enables children from different backgrounds have a unified mindset of excellence. For us every step in a child&rsquo;s learning process counts because we are trained to uncover the genius in every child.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">Beryl Brooks Premier School has produced exceptional results in academics and our pupils have excelled both in internal and external extra-curricular activities .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#222222\">We provide the right atmosphere as well as give children a flying start.</span></span></span><br />\r\n&nbsp;</p>', 'Rita', 'Strong', 'Rita Strong', 'rita-strong', '08030835421', 'ritastrong@gmail.com', 'Female', 'Director', 'space 1 DSC_2435.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$JfIPjdW9Zzt3wh5QtcaJH.Po.6GHfDQKgIGffN/d8MlQNKyFGre1i', NULL, '', 0, '2022-11-03 01:56:01', '2022-11-03 01:56:01'),
(2, 'Autumn Hendrix', 'zisi@mailinator.com', NULL, '$2y$10$ZG9ognA7VoOLBj/PcU63.ONXmhwZTya4vzYHOqRFoC5VZyD1uYHEe', NULL, '', 0, '2022-11-22 13:00:00', '2022-11-22 13:00:00'),
(3, 'Godwin Tombrown', 'godwintombrown@gmail.com', NULL, '$2y$10$ekbiOcE6SiH5bWRt/Bt.H.fvriqKX6QrZs4FpOuiMKH6R5woQL3s2', 'dnzTO1lEL4KZ5ly9BxT9r9izyZcJQsHbDYHBAOIaHTz2tmDFpyYbXARh6ZuN', '', 0, '2022-11-23 08:19:55', '2022-12-17 03:12:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_categories`
--
ALTER TABLE `about_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_section_categories`
--
ALTER TABLE `about_section_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_categories`
--
ALTER TABLE `board_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_categories`
--
ALTER TABLE `club_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_sections`
--
ALTER TABLE `club_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_section_categories`
--
ALTER TABLE `club_section_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculumcategorys`
--
ALTER TABLE `curriculumcategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `form_uploads`
--
ALTER TABLE `form_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries_categories`
--
ALTER TABLE `galleries_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries_posts`
--
ALTER TABLE `galleries_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `past_presidents`
--
ALTER TABLE `past_presidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_section_categories`
--
ALTER TABLE `service_section_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_email_unique` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffcategorys`
--
ALTER TABLE `staffcategorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `about_categories`
--
ALTER TABLE `about_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `about_section_categories`
--
ALTER TABLE `about_section_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `board_categories`
--
ALTER TABLE `board_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `club_categories`
--
ALTER TABLE `club_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `club_sections`
--
ALTER TABLE `club_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `club_section_categories`
--
ALTER TABLE `club_section_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `curriculumcategorys`
--
ALTER TABLE `curriculumcategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_uploads`
--
ALTER TABLE `form_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries_categories`
--
ALTER TABLE `galleries_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries_posts`
--
ALTER TABLE `galleries_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `past_presidents`
--
ALTER TABLE `past_presidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_section_categories`
--
ALTER TABLE `service_section_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staffcategorys`
--
ALTER TABLE `staffcategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
