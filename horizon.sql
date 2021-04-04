-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 07:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horizon`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `audio_post_Id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio_post`
--

INSERT INTO `audio_post` (`audio_post_Id`, `post_id`, `audio`, `about`) VALUES
(3, 48, 'Abhay Singh Room(00917030080251)_20201103210236.mp3', 'hey there , listen it\n');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `block_id` int(11) NOT NULL,
  `block_by` int(11) NOT NULL,
  `block_to` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `bkmrk_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bookmark_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`bkmrk_id`, `post_id`, `user_id`, `bookmark_time`) VALUES
(5, 11, 139, '2017-07-30 01:14:40'),
(7, 10, 139, '2017-07-30 01:37:57'),
(9, 54, 252, '2021-03-27 22:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `comment_like_id` int(11) NOT NULL,
  `like_by` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`comment_like_id`, `like_by`, `comment_id`, `time`) VALUES
(4, 139, 5, '2017-07-30 00:51:34'),
(6, 250, 8, '2021-03-26 14:47:38'),
(7, 250, 14, '2021-03-27 23:46:52'),
(8, 250, 37, '2021-04-04 10:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `con_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `comb_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`con_id`, `name`, `user_one`, `user_two`, `comb_users`, `time`) VALUES
(1, 'aa', 139, 224, '139,224', '2017-07-30 00:58:07'),
(2, 'my con name', 139, 144, '139,144', '2017-07-30 00:58:25'),
(3, 'hi', 250, 252, '250,252', '2021-03-27 09:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `doc_post`
--

CREATE TABLE `doc_post` (
  `doc_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `doc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_private`
--

CREATE TABLE `email_private` (
  `e_p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `options` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_private`
--

INSERT INTO `email_private` (`e_p_id`, `user_id`, `options`) VALUES
(24, 139, 'public'),
(25, 140, 'public'),
(26, 141, 'public'),
(27, 142, 'public'),
(28, 143, 'public'),
(29, 144, 'public'),
(30, 145, 'public'),
(31, 146, 'public'),
(32, 147, 'public'),
(33, 148, 'public'),
(34, 149, 'public'),
(35, 150, 'public'),
(36, 151, 'public'),
(37, 152, 'public'),
(38, 153, 'public'),
(39, 154, 'public'),
(40, 155, 'public'),
(41, 156, 'public'),
(42, 157, 'public'),
(43, 158, 'public'),
(44, 159, 'public'),
(45, 160, 'public'),
(46, 161, 'public'),
(47, 162, 'public'),
(48, 163, 'public'),
(49, 164, 'public'),
(50, 165, 'public'),
(51, 166, 'public'),
(52, 167, 'public'),
(53, 168, 'public'),
(54, 169, 'public'),
(55, 170, 'public'),
(56, 171, 'public'),
(57, 172, 'public'),
(58, 173, 'public'),
(59, 174, 'public'),
(60, 175, 'public'),
(61, 176, 'public'),
(62, 177, 'public'),
(63, 178, 'public'),
(64, 179, 'public'),
(65, 180, 'public'),
(66, 181, 'public'),
(67, 182, 'public'),
(68, 183, 'public'),
(69, 184, 'public'),
(70, 185, 'public'),
(71, 186, 'public'),
(72, 187, 'public'),
(73, 188, 'public'),
(74, 189, 'public'),
(75, 190, 'public'),
(76, 191, 'public'),
(77, 192, 'public'),
(78, 193, 'public'),
(79, 194, 'public'),
(80, 195, 'public'),
(81, 196, 'public'),
(82, 197, 'public'),
(83, 198, 'public'),
(84, 199, 'public'),
(87, 206, 'public'),
(88, 207, 'public'),
(89, 208, 'public'),
(90, 209, 'public'),
(91, 210, 'public'),
(92, 211, 'public'),
(93, 212, 'public'),
(94, 213, 'public'),
(95, 214, 'public'),
(96, 215, 'public'),
(97, 216, 'public'),
(98, 217, 'public'),
(99, 218, 'public'),
(100, 219, 'public'),
(101, 220, 'public'),
(102, 221, 'public'),
(103, 222, 'public'),
(104, 223, 'public'),
(105, 224, 'public'),
(106, 227, 'public'),
(107, 228, 'public'),
(108, 230, 'public'),
(109, 232, 'public'),
(121, 250, 'public'),
(122, 251, 'public'),
(123, 252, 'public'),
(124, 253, 'public'),
(125, 254, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `fav_id` int(11) NOT NULL,
  `fav_by` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`fav_id`, `fav_by`, `user`, `time`) VALUES
(1, 139, 187, '2017-07-30 01:19:45'),
(2, 139, 144, '2017-07-30 01:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `follow_system`
--

CREATE TABLE `follow_system` (
  `follow_id` int(11) NOT NULL,
  `follow_by` int(11) NOT NULL,
  `follow_by_u` varchar(255) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `follow_to_u` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow_system`
--

INSERT INTO `follow_system` (`follow_id`, `follow_by`, `follow_by_u`, `follow_to`, `follow_to_u`, `time`) VALUES
(47, 250, 'Indiana', 196, 'draco', '2021-03-09 14:30:18'),
(51, 250, 'Indiana', 171, 'kumarVishwas', '2021-03-09 14:30:22'),
(52, 251, 'abcde', 250, 'Indiana', '2021-03-09 14:44:54'),
(55, 252, 'abcder', 199, 'hagrid', '2021-03-25 23:00:56'),
(57, 253, 'avi', 252, 'abcder', '2021-03-26 12:42:19'),
(59, 253, 'avi', 187, 'harmoine', '2021-03-26 12:42:49'),
(60, 253, 'avi', 177, 'johnny', '2021-03-26 12:42:50'),
(62, 252, 'abcder', 253, 'avi', '2021-03-26 17:36:07'),
(63, 252, 'abcder', 250, 'Indiana', '2021-03-26 17:36:19'),
(65, 250, 'Indiana', 144, 'ghalib', '2021-03-27 11:00:40'),
(66, 250, 'Indiana', 252, 'abcder', '2021-03-27 11:04:36'),
(67, 250, 'Indiana', 139, 'MrMohite', '2021-04-02 10:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `grp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_bio` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_admin` int(11) NOT NULL,
  `grp_privacy` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `grp_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `grp_name`, `grp_bio`, `grp_avatar`, `grp_admin`, `grp_privacy`, `grp_time`) VALUES
(3, 'Hello', 'India and the world!!', '1501356405.jpg', 139, 'private', '2017-07-30 00:56:39'),
(4, 'Hello', 'Bio of group!!', '1501357704.jpg', 139, 'public', '2017-07-30 01:17:33'),
(5, 'Hello', 'ww', '1501359072.jpg', 139, 'public', '2017-07-30 01:41:04'),
(6, 'avishkar mohite', 'jgjarhg fjavid jdkfdkvj cv9eo fvf bifhvifhvrea vevhfeivaejvodv asfj adjf adsjvidas cdsjvdanvdjv daovkafkv a jvjfvoai iaj aoiv aopbjfdob po fjaj anojifvfjaijvare ovjavpav vjakdvj kvjodvi k k asjdaosjvfd dovjaovjaivnajaivaduaihaj9u490u9r', '', 250, 'public', '2021-03-26 16:05:47'),
(7, 'avishkar mohite', 'jgjarhg fjavid jdkfdkvj cv9eo fvf bifhvifhvrea vevhfeivaejvodv asfj adjf adsjvidas cdsjvdanvdjv daovkafkv a jvjfvoai iaj aoiv aopbjfdob po fjaj anojifvfjaijvare ovjavpav vjakdvj kvjodvi k k asjdaosjvfd dovjaovjaivnajaivaduaihaj9u490u9r', '', 250, 'public', '2021-03-26 16:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `group_con`
--

CREATE TABLE `group_con` (
  `grp_con_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_con`
--

INSERT INTO `group_con` (`grp_con_id`, `name`, `avatar`, `time`, `admin`) VALUES
(5, 'my group', '1501356566.jpg', '2017-07-30 00:59:08', 144);

-- --------------------------------------------------------

--
-- Table structure for table `group_con_members`
--

CREATE TABLE `group_con_members` (
  `grp_con_mem_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `members` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_con_members`
--

INSERT INTO `group_con_members` (`grp_con_mem_id`, `grp_con_id`, `members`) VALUES
(9, 5, 139),
(10, 5, 143),
(11, 5, 224),
(12, 5, 144),
(13, 5, 145),
(14, 5, 166),
(15, 5, 195);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `group_mem_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_member` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`group_mem_id`, `group_id`, `group_member`, `added_by`, `time`) VALUES
(7, 3, 139, 139, '2017-07-30 00:56:39'),
(10, 3, 143, 139, '2017-07-30 00:56:53'),
(11, 3, 144, 144, '2017-07-30 01:01:35'),
(12, 4, 139, 139, '2017-07-30 01:17:33'),
(13, 4, 144, 139, '2017-07-30 01:17:39'),
(15, 4, 143, 139, '2017-07-30 01:17:43'),
(16, 5, 139, 139, '2017-07-30 01:41:04'),
(17, 5, 144, 139, '2017-07-30 01:41:16'),
(18, 5, 224, 139, '2017-07-30 01:41:18'),
(19, 5, 143, 139, '2017-07-30 01:41:21'),
(20, 6, 250, 250, '2021-03-26 16:05:47'),
(21, 7, 250, 250, '2021-03-26 16:05:47'),
(22, 6, 252, 252, '2021-03-26 17:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `grpconunreads`
--

CREATE TABLE `grpconunreads` (
  `gru_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `gcu_by` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `gcu_mssg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grpconunreads`
--

INSERT INTO `grpconunreads` (`gru_id`, `grp_con_id`, `gcu_by`, `member`, `gcu_mssg`) VALUES
(5, 5, 139, 143, 15),
(6, 5, 139, 143, 16),
(7, 5, 139, 143, 17),
(8, 5, 139, 224, 17),
(9, 5, 139, 143, 18),
(10, 5, 139, 224, 18),
(12, 5, 139, 143, 19),
(13, 5, 139, 224, 19),
(15, 5, 139, 145, 19),
(16, 5, 139, 143, 20),
(17, 5, 139, 224, 20),
(19, 5, 139, 145, 20),
(20, 5, 139, 166, 20),
(21, 5, 139, 143, 21),
(22, 5, 139, 224, 21),
(24, 5, 139, 145, 21),
(25, 5, 139, 166, 21),
(26, 5, 139, 195, 21),
(27, 5, 139, 143, 22),
(28, 5, 139, 224, 22),
(30, 5, 139, 145, 22),
(31, 5, 139, 166, 22),
(32, 5, 139, 195, 22),
(33, 5, 139, 143, 23),
(34, 5, 139, 224, 23),
(36, 5, 139, 145, 23),
(37, 5, 139, 166, 23),
(38, 5, 139, 195, 23),
(39, 5, 139, 143, 24),
(40, 5, 139, 224, 24),
(42, 5, 139, 145, 24),
(43, 5, 139, 166, 24),
(44, 5, 139, 195, 24),
(45, 5, 139, 143, 25),
(46, 5, 139, 224, 25),
(48, 5, 139, 145, 25),
(49, 5, 139, 166, 25),
(50, 5, 139, 195, 25),
(51, 5, 139, 143, 26),
(52, 5, 139, 224, 26),
(54, 5, 139, 145, 26),
(55, 5, 139, 166, 26),
(56, 5, 139, 195, 26),
(58, 5, 144, 143, 27),
(59, 5, 144, 224, 27),
(60, 5, 144, 145, 27),
(61, 5, 144, 166, 27),
(62, 5, 144, 195, 27),
(63, 5, 139, 143, 28),
(64, 5, 139, 224, 28),
(66, 5, 139, 145, 28),
(67, 5, 139, 166, 28),
(68, 5, 139, 195, 28),
(69, 5, 139, 143, 29),
(70, 5, 139, 224, 29),
(72, 5, 139, 145, 29),
(73, 5, 139, 166, 29),
(74, 5, 139, 195, 29),
(75, 5, 139, 143, 30),
(76, 5, 139, 224, 30),
(78, 5, 139, 145, 30),
(79, 5, 139, 166, 30),
(80, 5, 139, 195, 30);

-- --------------------------------------------------------

--
-- Table structure for table `hashtag`
--

CREATE TABLE `hashtag` (
  `hashtag_id` int(11) NOT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` enum('post','post_comment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hashtag`
--

INSERT INTO `hashtag` (`hashtag_id`, `hashtag`, `src`, `post_id`, `comment_id`, `user_id`, `time`) VALUES
(7, '#corruption', 'post', 58, 0, 139, '2021-04-02 10:38:27'),
(8, '#roads', 'post', 58, 0, 139, '2021-04-02 10:38:27'),
(9, '#shameondemocracy', 'post', 59, 0, 250, '2021-04-04 10:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `image_post`
--

CREATE TABLE `image_post` (
  `image_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_post`
--

INSERT INTO `image_post` (`image_post_id`, `post_id`, `image`, `about`, `filter`) VALUES
(4, 9, '1499101610.jpg', '', ''),
(5, 11, '1501356005.png', '', ''),
(6, 17, '1501356770.jpg', '', ''),
(9, 32, '1615280525.jpeg', 'what is happening there must not be entertained , this is against the rule #mohite1', ''),
(12, 36, '1616760291.jpeg', '', 'hue-rotate'),
(13, 37, '1616760306.jpg', '', 'hue-rotate'),
(14, 38, '1616760317.jpg', '', ''),
(15, 39, '1616760327.jpg', '', ''),
(17, 56, '1617115833.png', 'nothing , just usual\n😴😴😴😴', ''),
(18, 58, '1617340107.jpg', 'This road was built in january  2020 last year . After only one heavy rainfall , see it . Is this what we call developed India . Is this how taxpayer\'s money is used . Why we don\'t even have good roads here. #corruption #roads', '');

-- --------------------------------------------------------

--
-- Table structure for table `invitegrp`
--

CREATE TABLE `invitegrp` (
  `inviteGrpId` int(11) NOT NULL,
  `inviteGrp` int(11) NOT NULL,
  `inviteGrpBy` int(11) NOT NULL,
  `inviteGrpTo` int(11) NOT NULL,
  `inviteGrpTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `link_post`
--

CREATE TABLE `link_post` (
  `link_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loc_post`
--

CREATE TABLE `loc_post` (
  `loc_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `loc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loc_post`
--

INSERT INTO `loc_post` (`loc_post_id`, `post_id`, `loc`, `about`) VALUES
(4, 53, 'https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=500x400&scale=2&maptype=roadmap&markers=color:red%7Clabel:S%7C19.7514798,75.7138884&key=AIzaSyDOPJdgCIHzaQ4VH0w8ngbRUtf2oBu2Y5c', 'cxwefcfcfw'),
(5, 57, 'https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=500x400&scale=2&maptype=roadmap&markers=color:red%7Clabel:S%7C19.7514798,75.7138884&key=AIzaSyDOPJdgCIHzaQ4VH0w8ngbRUtf2oBu2Y5c', 'this is new location');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `user_id`, `ip`, `time`, `os`, `browser`, `logout`) VALUES
(1, 139, '1', '2017-07-03 01:50:46', 'Windows 10', 'Chrome', '2017-07-03 16:11:08'),
(2, 144, '1', '2017-07-03 16:11:19', 'Windows 10', 'Chrome', '2017-07-03 16:46:39'),
(3, 139, '1', '2017-07-03 16:53:37', 'Windows 10', 'Chrome', '2017-07-03 17:16:18'),
(4, 182, '1', '2017-07-03 17:16:41', 'Windows 10', 'Chrome', '2017-07-03 17:19:32'),
(5, 139, '1', '2017-07-03 19:52:42', 'Windows 10', 'Chrome', '2017-07-03 19:54:22'),
(6, 227, '1', '2017-07-03 19:54:27', 'Windows 10', 'Chrome', '2017-07-03 22:36:13'),
(7, 149, '1', '2017-07-03 22:36:25', 'Windows 10', 'Chrome', '2017-07-30 00:35:34'),
(8, 139, '1', '2017-07-03 22:36:58', 'Windows 10', 'Chrome', '2017-07-03 23:06:50'),
(9, 139, '1', '2017-07-05 16:28:18', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(10, 139, '1', '2017-07-23 21:49:50', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(11, 139, '1', '2017-07-25 22:54:35', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(12, 139, '1', '2017-07-29 01:15:14', 'Windows 10', 'Firefox', '0000-00-00 00:00:00'),
(13, 144, '1', '2017-07-30 00:35:43', 'Windows 10', 'Chrome', '2017-07-30 00:38:56'),
(14, 139, '1', '2017-07-30 00:39:04', 'Windows 10', 'Chrome', '2017-07-30 00:39:52'),
(15, 139, '1', '2017-07-30 00:42:11', 'Windows 10', 'Chrome', '2017-07-30 00:49:07'),
(16, 144, '1', '2017-07-30 00:49:12', 'Windows 10', 'Chrome', '2017-07-30 00:50:50'),
(17, 139, '1', '2017-07-30 00:51:09', 'Windows 10', 'Chrome', '2017-07-30 01:00:39'),
(18, 144, '1', '2017-07-30 01:00:44', 'Windows 10', 'Chrome', '2017-07-30 01:02:01'),
(19, 139, '1', '2017-07-30 01:02:23', 'Windows 10', 'Chrome', '2017-07-30 01:03:18'),
(20, 139, '1', '2017-07-30 01:03:24', 'Windows 10', 'Chrome', '2017-07-30 01:05:49'),
(21, 187, '1', '2017-07-30 01:05:58', 'Windows 10', 'Chrome', '2017-07-30 01:06:12'),
(22, 139, '1', '2017-07-30 01:14:33', 'Windows 10', 'Chrome', '2017-07-30 01:19:59'),
(23, 144, '1', '2017-07-30 01:20:04', 'Windows 10', 'Chrome', '2017-07-30 01:21:20'),
(24, 139, '1', '2017-07-30 01:24:42', 'Windows 10', 'Chrome', '2017-07-30 01:27:16'),
(25, 139, '1', '2017-07-30 01:27:22', 'Windows 10', 'Chrome', '2017-07-30 01:28:13'),
(26, 144, '1', '2017-07-30 01:28:18', 'Windows 10', 'Chrome', '2017-07-30 01:30:05'),
(27, 139, '1', '2017-07-30 01:30:10', 'Windows 10', 'Chrome', '2017-07-30 01:37:24'),
(28, 139, '1', '2017-07-30 01:37:29', 'Windows 10', 'Chrome', '2017-07-30 01:41:57'),
(29, 144, '1', '2017-07-30 01:42:01', 'Windows 10', 'Chrome', '2017-07-30 01:42:16'),
(30, 187, '1', '2017-07-30 01:42:22', 'Windows 10', 'Chrome', '2017-07-30 01:42:39'),
(31, 144, '1', '2017-07-30 01:42:44', 'Windows 10', 'Chrome', '2017-07-30 01:43:40'),
(32, 144, '1', '2017-07-30 01:43:45', 'Windows 10', 'Chrome', '2017-07-30 01:44:30'),
(33, 139, '1', '2017-07-30 01:44:34', 'Windows 10', 'Chrome', '2017-07-30 01:44:44'),
(34, 144, '1', '2017-07-30 01:44:49', 'Windows 10', 'Chrome', '2017-07-30 01:45:02'),
(35, 144, '1', '2017-07-30 01:45:16', 'Windows 10', 'Chrome', '2017-07-30 01:45:24'),
(36, 139, '1', '2017-07-30 03:47:04', 'Windows 10', 'Chrome', '2017-07-30 03:47:25'),
(37, 144, '1', '2017-07-30 03:47:31', 'Windows 10', 'Chrome', '2017-07-31 02:26:22'),
(38, 139, '1', '2017-07-31 02:26:29', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(39, 235, '1', '2017-07-31 14:55:12', 'Windows 10', 'Chrome', '2017-07-31 14:58:45'),
(40, 236, '1', '2017-07-31 15:19:54', 'Windows 10', 'Chrome', '2017-07-31 15:20:06'),
(41, 252, '1', '2021-03-25 22:56:14', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(42, 252, '1', '2021-03-26 12:24:50', 'Windows 10', 'Chrome', '2021-03-26 12:40:23'),
(43, 252, '1', '2021-03-26 14:43:24', 'Windows 10', 'Chrome', '2021-03-26 14:47:02'),
(44, 250, '1', '2021-03-26 14:47:14', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(45, 250, '1', '2021-03-26 15:21:11', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(46, 250, '1', '2021-03-26 15:28:39', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(47, 250, '1', '2021-03-26 17:33:18', 'Windows 10', 'Chrome', '2021-03-26 17:35:44'),
(48, 252, '1', '2021-03-26 17:35:52', 'Windows 10', 'Chrome', '2021-03-26 22:58:02'),
(49, 252, '1', '2021-03-26 22:58:13', 'Windows 10', 'Chrome', '2021-03-26 22:58:22'),
(50, 250, '1', '2021-03-26 22:58:32', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(51, 250, '1', '2021-03-27 09:38:41', 'Windows 10', 'Chrome', '2021-03-27 09:44:35'),
(52, 252, '1', '2021-03-27 09:44:46', 'Windows 10', 'Chrome', '2021-03-27 10:56:50'),
(53, 252, '1', '2021-03-27 10:57:02', 'Windows 10', 'Chrome', '2021-03-27 10:58:22'),
(54, 250, '1', '2021-03-27 10:58:30', 'Windows 10', 'Chrome', '2021-03-27 12:26:11'),
(55, 250, '1', '2021-03-27 12:26:19', 'Windows 10', 'Chrome', '2021-03-27 12:26:38'),
(56, 252, '1', '2021-03-27 12:27:00', 'Windows 10', 'Chrome', '2021-03-27 23:11:02'),
(57, 250, '1', '2021-03-27 23:27:04', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(58, 250, '1', '2021-03-28 09:21:28', 'Windows 10', 'Chrome', '2021-03-28 14:53:41'),
(59, 252, '1', '2021-03-28 14:53:55', 'Windows 10', 'Chrome', '2021-03-28 15:01:31'),
(60, 250, '1', '2021-03-28 15:01:41', 'Windows 10', 'Chrome', '2021-03-28 16:02:23'),
(61, 250, '1', '2021-03-28 16:05:10', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(62, 252, '1', '2021-03-28 21:33:18', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(63, 250, '1', '2021-03-29 09:03:34', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(64, 250, '1', '2021-03-31 08:39:56', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(65, 250, '1', '2021-03-31 18:28:41', 'Windows 10', 'Chrome', '2021-03-31 19:25:03'),
(66, 252, '1', '2021-03-31 19:25:14', 'Windows 10', 'Chrome', '2021-03-31 19:52:38'),
(67, 250, '1', '2021-03-31 19:54:34', 'Windows 10', 'Chrome', '2021-03-31 19:54:44'),
(68, 250, '1', '2021-03-31 21:26:28', 'Windows 10', 'Chrome', '2021-03-31 21:32:59'),
(69, 252, '1', '2021-03-31 21:34:28', 'Windows 10', 'Chrome', '2021-03-31 21:41:33'),
(70, 250, '1', '2021-03-31 21:46:10', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(71, 250, '1', '2021-04-01 08:59:32', 'Windows 10', 'Chrome', '2021-04-01 09:01:15'),
(72, 252, '1', '2021-04-01 09:01:26', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(73, 250, '1', '2021-04-01 09:14:03', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(74, 252, '1', '2021-04-02 10:10:16', 'Windows 10', 'Chrome', '2021-04-02 10:28:13'),
(75, 139, '1', '2021-04-02 10:28:29', 'Windows 10', 'Chrome', '2021-04-02 15:53:33'),
(76, 250, '1', '2021-04-02 10:40:33', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(77, 139, '1', '2021-04-03 11:31:42', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(78, 250, '1', '2021-04-03 14:17:22', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(79, 139, '1', '2021-04-04 08:08:35', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(80, 139, '1', '2021-04-04 09:56:41', 'Windows 10', 'Chrome', '2021-04-04 09:56:54'),
(81, 250, '1', '2021-04-04 09:56:59', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(82, 252, '1', '2021-04-04 09:59:41', 'Windows 10', 'Chrome', '2021-04-04 10:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `mssg_by` int(11) NOT NULL,
  `mssg_to` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','image','sticker','name_change','avatar_change','member_add','leave_grp_con','removed_grp_con','admin_change') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `mssg_of` enum('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `time` datetime NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `con_id`, `grp_con_id`, `mssg_by`, `mssg_to`, `message`, `type`, `mssg_of`, `time`, `status`) VALUES
(1, 0, 0, 139, 0, '', 'avatar_change', 'user', '2017-07-03 01:55:19', 'unread'),
(9, 1, 0, 139, 224, 'aaa', 'text', 'user', '2017-07-30 00:58:07', 'unread'),
(10, 2, 0, 139, 144, 'nmnmnm', 'text', 'user', '2017-07-30 00:58:25', 'read'),
(11, 2, 0, 139, 144, '😴😴😴😴😴', 'text', 'user', '2017-07-30 00:58:34', 'read'),
(12, 2, 0, 139, 144, '1501356527.jpg', 'image', 'user', '2017-07-30 00:58:47', 'read'),
(13, 2, 0, 139, 0, '1501356532.png', 'sticker', 'user', '2017-07-30 00:58:52', 'unread'),
(14, 0, 5, 139, 0, '', 'avatar_change', 'user', '2017-07-30 00:59:08', 'unread'),
(15, 0, 5, 139, 0, '1501356556.png', 'sticker', 'group', '2017-07-30 00:59:16', 'unread'),
(16, 0, 5, 139, 0, '', 'avatar_change', 'user', '2017-07-30 00:59:26', 'unread'),
(17, 0, 5, 139, 0, '224', 'member_add', 'user', '2017-07-30 00:59:33', 'unread'),
(18, 0, 5, 139, 0, '144', 'member_add', 'user', '2017-07-30 00:59:36', 'unread'),
(19, 0, 5, 139, 0, '145', 'member_add', 'user', '2017-07-30 00:59:38', 'unread'),
(20, 0, 5, 139, 0, '166', 'member_add', 'user', '2017-07-30 00:59:41', 'unread'),
(21, 0, 5, 139, 0, '195', 'member_add', 'user', '2017-07-30 00:59:43', 'unread'),
(22, 0, 5, 139, 0, '144', 'admin_change', 'user', '2017-07-30 00:59:51', 'unread'),
(23, 0, 5, 139, 0, 'jkjk', 'text', 'group', '2017-07-30 01:00:01', 'unread'),
(24, 0, 5, 139, 0, '1501357717.png', 'sticker', 'group', '2017-07-30 01:18:37', 'unread'),
(25, 0, 5, 139, 0, 'jkjkjk', 'text', 'group', '2017-07-30 01:18:43', 'unread'),
(26, 0, 5, 139, 0, '1501357730.gif', 'image', 'group', '2017-07-30 01:18:50', 'unread'),
(27, 0, 5, 144, 0, 'Wo', 'text', 'group', '2017-07-30 01:20:42', 'unread'),
(28, 0, 5, 139, 0, 'tessspopo', 'text', 'group', '2017-07-30 01:37:38', 'unread'),
(29, 0, 5, 139, 0, '1501358864.jpg', 'image', 'group', '2017-07-30 01:37:44', 'unread'),
(30, 0, 5, 139, 0, '1501358869.png', 'sticker', 'group', '2017-07-30 01:37:49', 'unread'),
(31, 3, 0, 250, 252, 'hi there , what you are doing', 'text', 'user', '2021-03-27 09:41:16', 'read'),
(32, 3, 0, 250, 252, 'hey , are you there', 'text', 'user', '2021-03-27 09:41:40', 'read'),
(33, 3, 0, 250, 252, '😁😲', 'text', 'user', '2021-03-27 09:41:49', 'read'),
(34, 3, 0, 252, 250, 'yes', 'text', 'user', '2021-03-27 09:45:42', 'read'),
(35, 3, 0, 252, 250, 'what do you want', 'text', 'user', '2021-03-27 09:45:48', 'read'),
(36, 3, 0, 250, 252, 'fU\njbvujbfubv hvuhvuirhdf\nabvhdvhndfc\njabdbva\njdsacbdsajbcaihfu avishkar mohite is not a very good coder , but yes  he is not a average', 'text', 'user', '2021-03-27 11:02:16', 'read'),
(37, 3, 0, 250, 252, '😺okay😺', 'text', 'user', '2021-03-27 12:23:05', 'read'),
(38, 3, 0, 250, 252, '😡', 'text', 'user', '2021-03-27 12:23:42', 'read'),
(39, 3, 0, 250, 252, 'hi there  what are you doing\n😲', 'text', 'user', '2021-03-28 14:53:37', 'read'),
(40, 3, 0, 252, 250, 'nothing', 'text', 'user', '2021-03-28 14:59:49', 'read'),
(41, 3, 0, 252, 250, 'you?', 'text', 'user', '2021-03-28 14:59:54', 'read'),
(42, 3, 0, 250, 252, 'heya', 'text', 'user', '2021-03-31 14:19:26', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_private`
--

CREATE TABLE `mobile_private` (
  `m_p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `options` enum('private','public') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_private`
--

INSERT INTO `mobile_private` (`m_p_id`, `user_id`, `options`) VALUES
(24, 139, 'public'),
(25, 140, 'public'),
(26, 141, 'public'),
(27, 142, 'public'),
(28, 143, 'public'),
(29, 144, 'public'),
(30, 145, 'public'),
(31, 146, 'public'),
(32, 147, 'public'),
(33, 148, 'public'),
(34, 149, 'public'),
(35, 150, 'public'),
(36, 151, 'public'),
(37, 152, 'public'),
(38, 153, 'public'),
(39, 154, 'public'),
(40, 155, 'public'),
(41, 156, 'public'),
(42, 157, 'public'),
(43, 158, 'public'),
(44, 159, 'public'),
(45, 160, 'public'),
(46, 161, 'public'),
(47, 162, 'public'),
(48, 163, 'public'),
(49, 164, 'public'),
(50, 165, 'public'),
(51, 166, 'public'),
(52, 167, 'public'),
(53, 168, 'public'),
(54, 169, 'public'),
(55, 170, 'public'),
(56, 171, 'public'),
(57, 172, 'public'),
(58, 173, 'public'),
(59, 174, 'public'),
(60, 175, 'public'),
(61, 176, 'public'),
(62, 177, 'public'),
(63, 178, 'public'),
(64, 179, 'public'),
(65, 180, 'public'),
(66, 181, 'public'),
(67, 182, 'public'),
(68, 183, 'public'),
(69, 184, 'public'),
(70, 185, 'public'),
(71, 186, 'public'),
(72, 187, 'public'),
(73, 188, 'public'),
(74, 189, 'public'),
(75, 190, 'public'),
(76, 191, 'public'),
(77, 192, 'public'),
(78, 193, 'public'),
(79, 194, 'public'),
(80, 195, 'public'),
(81, 196, 'public'),
(82, 197, 'public'),
(83, 198, 'public'),
(84, 199, 'public'),
(87, 206, 'public'),
(88, 207, 'public'),
(89, 208, 'public'),
(90, 209, 'public'),
(91, 210, 'public'),
(92, 211, 'public'),
(93, 212, 'public'),
(94, 213, 'public'),
(95, 214, 'public'),
(96, 215, 'public'),
(97, 216, 'public'),
(98, 217, 'public'),
(99, 218, 'public'),
(100, 219, 'public'),
(101, 220, 'public'),
(102, 221, 'public'),
(103, 222, 'public'),
(104, 223, 'public'),
(105, 224, 'public'),
(106, 227, 'public'),
(107, 228, 'public'),
(108, 230, 'public'),
(109, 232, 'public'),
(121, 250, 'public'),
(122, 251, 'public'),
(123, 252, 'public'),
(124, 253, 'public'),
(125, 254, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `noti_id` int(11) NOT NULL,
  `notify_by` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_to` int(11) NOT NULL,
  `notify_of` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`noti_id`, `notify_by`, `type`, `notify_to`, `notify_of`, `post_id`, `comment_id`, `time`, `status`) VALUES
(1, 139, 'follow', 224, 0, 0, 0, '2017-07-03 01:54:41', 'unread'),
(3, 139, 'follow', 141, 0, 0, 0, '2017-07-03 01:54:50', 'unread'),
(10, 139, 'follow', 143, 0, 0, 0, '2017-07-03 16:10:47', 'unread'),
(11, 139, 'follow', 145, 0, 0, 0, '2017-07-03 16:10:53', 'unread'),
(15, 139, 'follow', 166, 0, 0, 0, '2017-07-03 16:57:52', 'unread'),
(18, 139, 'follow', 195, 0, 0, 0, '2017-07-03 17:14:10', 'unread'),
(19, 139, 'follow', 175, 0, 0, 0, '2017-07-03 17:14:12', 'unread'),
(20, 139, 'follow', 182, 0, 0, 0, '2017-07-03 17:14:14', 'read'),
(30, 227, 'follow', 186, 0, 0, 0, '2017-07-03 21:18:32', 'unread'),
(31, 227, 'follow', 145, 0, 0, 0, '2017-07-03 21:18:39', 'unread'),
(32, 227, 'follow', 154, 0, 0, 0, '2017-07-03 21:18:40', 'unread'),
(33, 227, 'follow', 140, 0, 0, 0, '2017-07-03 21:18:45', 'unread'),
(44, 139, 'shareto', 166, 0, 11, 0, '2017-07-30 00:51:38', 'unread'),
(61, 139, 'grp_add', 224, 0, 3, 0, '2017-07-30 00:56:51', 'unread'),
(62, 139, 'grp_add', 143, 0, 3, 0, '2017-07-30 00:56:54', 'unread'),
(70, 139, 'follow', 206, 0, 0, 0, '2017-07-30 01:05:29', 'unread'),
(72, 139, 'like', 144, 0, 11, 0, '2017-07-30 01:14:39', 'read'),
(73, 139, 'shareto', 187, 0, 11, 0, '2017-07-30 01:14:45', 'read'),
(74, 139, 'shareyour', 144, 0, 11, 0, '2017-07-30 01:14:45', 'read'),
(77, 139, 'follow', 151, 0, 0, 0, '2017-07-30 01:16:39', 'unread'),
(78, 139, 'follow', 186, 0, 0, 0, '2017-07-30 01:16:41', 'unread'),
(79, 139, 'grp_add', 144, 0, 4, 0, '2017-07-30 01:17:39', 'read'),
(80, 139, 'grp_add', 224, 0, 4, 0, '2017-07-30 01:17:41', 'unread'),
(81, 139, 'grp_add', 143, 0, 4, 0, '2017-07-30 01:17:43', 'unread'),
(82, 139, 'recommend', 144, 187, 0, 0, '2017-07-30 01:19:56', 'read'),
(87, 144, 'follow', 142, 0, 0, 0, '2017-07-30 01:20:52', 'unread'),
(88, 139, 'like', 144, 0, 11, 0, '2017-07-30 01:37:55', 'read'),
(89, 139, 'shareto', 227, 0, 11, 0, '2017-07-30 01:38:00', 'unread'),
(90, 139, 'shareyour', 144, 0, 11, 0, '2017-07-30 01:38:00', 'read'),
(95, 139, 'recommend', 187, 144, 0, 0, '2017-07-30 01:40:44', 'read'),
(99, 144, 'follow', 187, 0, 0, 0, '2017-07-30 01:43:03', 'unread'),
(101, 139, 'follow', 144, 0, 0, 0, '2017-07-30 03:47:15', 'read'),
(103, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:49:59', 'unread'),
(104, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:50:08', 'unread'),
(112, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:52:57', 'unread'),
(114, 144, 'follow', 160, 0, 0, 0, '2017-07-30 04:21:45', 'unread'),
(115, 144, 'follow', 219, 0, 0, 0, '2017-07-30 04:22:06', 'unread'),
(117, 144, 'follow', 213, 0, 0, 0, '2017-07-30 04:22:08', 'unread'),
(118, 144, 'follow', 161, 0, 0, 0, '2017-07-30 04:22:09', 'unread'),
(119, 144, 'follow', 169, 0, 0, 0, '2017-07-30 04:22:12', 'unread'),
(120, 250, 'follow', 196, 0, 0, 0, '2021-03-09 14:30:18', 'unread'),
(121, 250, 'follow', 184, 0, 0, 0, '2021-03-09 14:30:19', 'unread'),
(122, 250, 'follow', 227, 0, 0, 0, '2021-03-09 14:30:20', 'unread'),
(123, 250, 'follow', 168, 0, 0, 0, '2021-03-09 14:30:21', 'unread'),
(124, 250, 'follow', 171, 0, 0, 0, '2021-03-09 14:30:22', 'unread'),
(125, 250, 'shareto', 171, 0, 32, 0, '2021-03-09 14:32:42', 'unread'),
(126, 251, 'follow', 250, 0, 0, 0, '2021-03-09 14:44:54', 'read'),
(127, 252, 'like', 250, 0, 32, 0, '2021-03-25 22:56:59', 'read'),
(128, 252, 'follow', 191, 0, 0, 0, '2021-03-25 23:00:54', 'unread'),
(129, 252, 'follow', 153, 0, 0, 0, '2021-03-25 23:00:54', 'unread'),
(130, 252, 'follow', 199, 0, 0, 0, '2021-03-25 23:00:56', 'unread'),
(131, 252, 'follow', 210, 0, 0, 0, '2021-03-25 23:00:57', 'unread'),
(132, 253, 'follow', 252, 0, 0, 0, '2021-03-26 12:42:19', 'read'),
(133, 253, 'follow', 192, 0, 0, 0, '2021-03-26 12:42:47', 'unread'),
(134, 253, 'follow', 187, 0, 0, 0, '2021-03-26 12:42:49', 'unread'),
(135, 253, 'follow', 177, 0, 0, 0, '2021-03-26 12:42:50', 'unread'),
(136, 253, 'follow', 189, 0, 0, 0, '2021-03-26 12:42:50', 'unread'),
(137, 252, 'follow', 253, 0, 0, 0, '2021-03-26 17:36:07', 'unread'),
(138, 252, 'follow', 250, 0, 0, 0, '2021-03-26 17:36:19', 'read'),
(139, 252, 'like', 250, 0, 31, 0, '2021-03-26 22:57:24', 'read'),
(140, 250, 'follow', 252, 0, 0, 0, '2021-03-26 22:58:44', 'read'),
(141, 250, 'follow', 144, 0, 0, 0, '2021-03-27 11:00:40', 'unread'),
(142, 250, 'follow', 252, 0, 0, 0, '2021-03-27 11:04:36', 'read'),
(146, 252, 'comment', 250, 0, 47, 0, '2021-03-27 12:42:53', 'read'),
(147, 252, 'comment', 250, 0, 47, 0, '2021-03-27 12:42:59', 'read'),
(148, 252, 'comment', 250, 0, 47, 0, '2021-03-27 12:43:08', 'read'),
(149, 252, 'like', 250, 0, 54, 0, '2021-03-27 14:51:45', 'read'),
(150, 252, 'like', 149, 0, 9, 0, '2021-03-27 15:14:35', 'unread'),
(151, 252, 'like', 149, 0, 9, 0, '2021-03-27 15:14:41', 'unread'),
(152, 252, 'like', 149, 0, 9, 0, '2021-03-27 15:22:34', 'unread'),
(155, 250, 'comment', 149, 0, 9, 0, '2021-03-27 23:46:42', 'unread'),
(156, 250, 'like', 149, 0, 9, 0, '2021-03-28 09:47:39', 'unread'),
(157, 250, 'like', 144, 0, 11, 0, '2021-03-28 14:49:28', 'unread'),
(158, 250, 'like', 144, 0, 11, 0, '2021-03-28 14:49:28', 'unread'),
(159, 250, 'like', 144, 0, 11, 0, '2021-03-28 14:49:28', 'unread'),
(160, 250, 'like', 144, 0, 11, 0, '2021-03-28 14:49:28', 'unread'),
(161, 250, 'like', 144, 0, 11, 0, '2021-03-28 14:49:28', 'unread'),
(169, 250, 'follow', 139, 0, 0, 0, '2021-04-02 10:40:48', 'read'),
(170, 250, 'comment', 139, 0, 58, 0, '2021-04-02 10:42:16', 'read'),
(171, 250, 'comment', 139, 0, 58, 0, '2021-04-02 10:42:52', 'read'),
(172, 250, 'comment', 139, 0, 58, 0, '2021-04-02 11:19:05', 'read'),
(173, 139, 'comment', 149, 0, 9, 0, '2021-04-03 11:45:41', 'unread'),
(174, 139, 'comment', 149, 0, 9, 0, '2021-04-03 11:46:02', 'unread'),
(175, 139, 'comment', 149, 0, 9, 0, '2021-04-03 13:32:06', 'unread'),
(176, 139, 'like', 149, 0, 9, 0, '2021-04-03 13:32:23', 'unread'),
(177, 139, 'like', 149, 0, 9, 0, '2021-04-03 13:32:24', 'unread'),
(178, 139, 'like', 149, 0, 9, 0, '2021-04-03 13:32:25', 'unread'),
(179, 250, 'comment', 139, 0, 58, 0, '2021-04-03 14:18:04', 'read'),
(180, 250, 'comment', 139, 0, 58, 0, '2021-04-03 14:39:15', 'read'),
(181, 250, 'comment', 139, 0, 58, 0, '2021-04-04 09:57:23', 'unread'),
(182, 252, 'comment', 139, 0, 58, 0, '2021-04-04 10:00:37', 'unread'),
(183, 254, 'comment', 250, 0, 59, 0, '2021-04-04 10:12:29', 'read'),
(184, 250, 'commentLike', 254, 0, 59, 37, '2021-04-04 10:38:36', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('text','image','video','audio','link','document','location') COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_of` enum('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `grp_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `font_size` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `type`, `post_of`, `grp_id`, `time`, `font_size`, `address`) VALUES
(9, 149, 'image', 'user', 0, '2017-07-03 22:36:50', '14', ''),
(10, 144, 'text', 'user', 0, '2017-07-30 00:49:38', '19', 'Shammi Nagar, Dharavi, Mumbai'),
(11, 144, 'image', 'user', 0, '2017-07-30 00:50:05', '14', 'Shammi Nagar, Dharavi, Mumbai'),
(16, 139, 'text', 'group', 3, '2017-07-30 01:02:37', '14', ''),
(17, 139, 'image', 'group', 3, '2017-07-30 01:02:50', '14', ''),
(31, 250, 'text', 'user', 0, '2021-03-09 14:31:11', '14', ''),
(32, 250, 'image', 'user', 0, '2021-03-09 14:32:05', '14', ''),
(36, 250, 'image', 'user', 0, '2021-03-26 17:34:51', '14', ''),
(37, 250, 'image', 'user', 0, '2021-03-26 17:35:06', '14', ''),
(38, 250, 'image', 'user', 0, '2021-03-26 17:35:17', '14', ''),
(39, 250, 'image', 'user', 0, '2021-03-26 17:35:27', '14', ''),
(46, 250, 'text', 'user', 0, '2021-03-26 22:59:47', '14', ''),
(47, 250, 'text', 'user', 0, '2021-03-26 23:02:00', '14', ''),
(48, 250, 'audio', 'user', 0, '2021-03-27 09:44:20', '14', ''),
(53, 250, 'location', 'user', 0, '2021-03-27 11:18:31', '14', ''),
(54, 250, 'video', 'user', 0, '2021-03-27 11:19:41', '14', ''),
(56, 250, 'image', 'user', 0, '2021-03-30 20:20:33', '14', ''),
(57, 250, 'location', 'user', 0, '2021-03-31 21:52:13', '14', ''),
(58, 139, 'image', 'user', 0, '2021-04-02 10:38:27', '14', ''),
(59, 250, 'text', 'user', 0, '2021-04-04 10:10:33', '15', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `post_comments_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','image','video','audio','link','document','location','sticker') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_comments_id`, `post_id`, `user_id`, `data`, `type`, `time`) VALUES
(5, 11, 139, '1501356089.png', 'sticker', '2017-07-30 00:51:29'),
(8, 32, 250, 'yes , hello , sorry , but you are wrong', 'text', '2021-03-09 14:39:24'),
(11, 47, 252, 'dbfhajsfbavdshjvbc', 'text', '2021-03-27 12:42:53'),
(12, 47, 252, 'ahdjvahdjvadhvcbahdvcadbscds x\'', 'text', '2021-03-27 12:42:59'),
(13, 47, 252, 'hajvndabdvncnadmsvcjm,nasdvcgajs,dhfbncx', 'text', '2021-03-27 12:43:08'),
(14, 9, 250, 'hi there', 'text', '2021-03-27 23:46:42'),
(30, 9, 139, 'cnvjnzmxc', 'text', '2021-04-03 13:32:06'),
(35, 58, 250, 'The reason is not that they are not made as well.The first actual reason is corruption!Government contracts require (unwritten requirement) the contractor to pay 14% of the contract amount as commissions (read bribe) to be able to finish the contract and collect their payments. Since these contacts are awarded by competitive bidding the already tight budget gets further squeezed and the only solution is substandard output.Also, If the job is done to last 10 years the first time over, there will be no further allocation for the subsequent years, and therefore no commissions.Secondly, the roads are not as wide as in the US simply because the density of population in India is far higher than US or Europe. That means there is less free land for use in wider roads. For example, in Kerala, you can\'t figure out where one town or village ends and the next begins, because it\'s all just a continuous string of houses. In such a scenario, it is close to impossible to have wide roads without displacing a large majority of the inhabitants in the effort to provide the exact same inhabitants wider roads!The above is assuming the question is correct in the first place. Not ALL the roads in US are as good, and not all the roads in India are as bad!', 'text', '2021-04-04 09:57:23'),
(36, 58, 252, 'Some of the reasons mentioned like high rainfall, poor road material quality etc. are highly arguable because these identified problems can be solved through investment in Research & Development and technology to suit the Indian conditions.\n\nNow, where is the investment? - One investment destination is subsidized education. Almost all IITs + other government premium technical institute (all subsidized by the government) have Civil Engineering degrees, what are these students (investments) contributing in return?\n\nSo, these reasons like high rainfall, poor material quality are mere excuses rather than the problem. The real problem is the widespread corruption across government and private sectors (contractors) engaged in public works and maintenance. Unless sincere effort is put forward to tackle corruption and install a transparent system not even American imported quality materials can save Indian roads.\n\nAnd anyways, roads are repaired every 5 years, in view of upcoming elections.', 'text', '2021-04-04 10:00:37'),
(37, 59, 254, 'Yes, Gender Equality is a myth in India, it’s an even bigger myth than the “achhe din” (better days) folklore currently so rave in the country. Let me tell you why.I attended one of the best colleges in the country. My institution prided itself on its rule of law, and a complex web of regulations at every step. It wasn’t anything short of a reign of terror as even the slightest misdemeanour (in their eyes) could earn you a fabled disciplinary action. Don’t get me wrong, it is a remarkable institution, with extremely erudite and liberal professors and an inspirational student body, but the administration was and still is a a bastion of misogyny and blatant sexism.The lives of women scholars are strictly governed and the administration did not want any bad apples (the liberated, independent woman trope so often vilified) in the hostels, so the principal himself intervened in handpicking “docile” girls who wouldn’t be a problem. Boys on the other hand, you could fail you exams and still retain your hostel. It was repeatedly fed to us in sermon type settings how men and women are different and how the role of a woman should be predominantly nurturing. Imagine that, in the 21st century coming from the people (men, mostly) who represent the very finest of educational attainment. What was further appalling was the sheer number of women who had internalised and normalised this nonsense so as to comply and even play accomplice to the hungry eyes of the watchdogs (ever heard of moral gestapo)!', 'text', '2021-04-04 10:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `post_likes_id` int(11) NOT NULL,
  `post_like_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_likes_id`, `post_like_by`, `post_id`, `time`) VALUES
(12, 139, 10, '2017-07-30 00:51:45'),
(19, 139, 11, '2017-07-30 01:37:55'),
(27, 252, 32, '2021-03-25 22:56:59'),
(28, 250, 32, '2021-03-26 15:09:14'),
(29, 252, 31, '2021-03-26 22:57:24'),
(34, 252, 54, '2021-03-27 14:51:45'),
(44, 250, 39, '2021-03-27 23:41:55'),
(50, 250, 11, '2021-03-28 14:49:28'),
(52, 250, 56, '2021-03-30 20:20:42'),
(59, 139, 9, '2021-04-03 13:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `view_id` int(11) NOT NULL,
  `view_from` int(11) NOT NULL,
  `view_to` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`view_id`, `view_from`, `view_to`, `time`) VALUES
(1, 139, 141, '2017-07-03 01:54:48'),
(2, 139, 144, '2017-07-03 01:54:53'),
(3, 227, 139, '2017-07-03 19:50:58'),
(4, 227, 139, '2017-07-03 19:52:31'),
(5, 139, 227, '2017-07-03 19:54:14'),
(6, 139, 224, '2017-07-30 00:55:59'),
(7, 139, 187, '2017-07-30 00:56:07'),
(8, 144, 139, '2017-07-30 01:01:06'),
(9, 144, 139, '2017-07-30 01:01:10'),
(10, 144, 139, '2017-07-30 01:01:17'),
(11, 144, 139, '2017-07-30 01:01:21'),
(12, 139, 206, '2017-07-30 01:05:25'),
(13, 139, 187, '2017-07-30 01:19:42'),
(14, 144, 142, '2017-07-30 01:20:50'),
(15, 144, 142, '2017-07-30 01:20:54'),
(16, 144, 139, '2017-07-30 01:21:00'),
(17, 144, 139, '2017-07-30 01:21:02'),
(18, 144, 139, '2017-07-30 01:28:21'),
(19, 144, 139, '2017-07-30 01:28:24'),
(20, 139, 144, '2017-07-30 01:40:33'),
(21, 144, 187, '2017-07-30 01:43:00'),
(22, 144, 187, '2017-07-30 01:43:07'),
(23, 144, 139, '2017-07-30 01:44:23'),
(24, 144, 139, '2017-07-30 01:44:55'),
(25, 144, 139, '2017-07-30 01:44:59'),
(26, 144, 139, '2017-07-30 01:45:17'),
(27, 144, 187, '2017-07-30 03:49:53'),
(28, 144, 187, '2017-07-30 03:49:56'),
(29, 144, 187, '2017-07-30 03:51:15'),
(30, 144, 187, '2017-07-30 03:51:22'),
(31, 144, 187, '2017-07-30 03:52:35'),
(32, 144, 187, '2017-07-30 03:52:38'),
(33, 144, 187, '2017-07-30 03:52:54'),
(34, 144, 187, '2017-07-30 03:52:58'),
(35, 144, 139, '2017-07-30 03:53:21'),
(36, 144, 139, '2017-07-30 03:53:25'),
(37, 144, 160, '2017-07-30 04:21:42'),
(38, 251, 250, '2021-03-09 14:44:50'),
(39, 251, 250, '2021-03-09 14:45:42'),
(40, 251, 222, '2021-03-09 14:45:50'),
(41, 251, 162, '2021-03-09 14:47:33'),
(42, 252, 250, '2021-03-25 22:56:31'),
(43, 252, 250, '2021-03-25 22:57:09'),
(44, 253, 252, '2021-03-26 12:42:17'),
(45, 252, 250, '2021-03-26 17:36:15'),
(46, 252, 250, '2021-03-26 18:03:30'),
(47, 252, 250, '2021-03-26 18:53:28'),
(48, 252, 149, '2021-03-26 18:59:27'),
(49, 252, 144, '2021-03-26 19:01:15'),
(50, 252, 250, '2021-03-26 19:03:35'),
(51, 252, 250, '2021-03-27 10:55:36'),
(52, 250, 252, '2021-03-27 10:58:55'),
(53, 250, 144, '2021-03-27 11:00:35'),
(54, 250, 144, '2021-03-27 11:00:43'),
(55, 250, 148, '2021-03-27 11:01:24'),
(56, 250, 252, '2021-03-27 11:04:33'),
(57, 252, 250, '2021-03-27 12:28:22'),
(58, 252, 149, '2021-03-27 13:08:25'),
(59, 250, 151, '2021-03-31 09:27:54'),
(60, 250, 187, '2021-03-31 11:36:15'),
(61, 250, 252, '2021-03-31 19:24:50'),
(62, 252, 171, '2021-04-01 09:10:47'),
(63, 250, 252, '2021-04-01 09:14:20'),
(64, 250, 177, '2021-04-01 09:14:28'),
(65, 250, 194, '2021-04-01 09:14:39'),
(66, 252, 139, '2021-04-02 10:10:42'),
(67, 252, 192, '2021-04-02 10:24:27'),
(68, 250, 139, '2021-04-02 10:40:43'),
(69, 250, 139, '2021-04-02 17:48:11'),
(70, 139, 192, '2021-04-04 08:11:01'),
(71, 250, 254, '2021-04-04 10:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `recommend_id` int(11) NOT NULL,
  `recommend_by` int(11) NOT NULL,
  `recommend_to` int(11) NOT NULL,
  `recommend_of` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`recommend_id`, `recommend_by`, `recommend_to`, `recommend_of`, `time`) VALUES
(1, 139, 144, 187, '2017-07-30 01:19:56'),
(2, 139, 187, 144, '2017-07-30 01:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `share_id` int(11) NOT NULL,
  `share_by` int(11) NOT NULL,
  `share_to` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`share_id`, `share_by`, `share_to`, `post_id`, `share_time`) VALUES
(3, 139, 166, 11, '2017-07-30 00:51:38'),
(4, 139, 187, 11, '2017-07-30 01:14:45'),
(5, 139, 227, 11, '2017-07-30 01:38:00'),
(7, 250, 171, 32, '2021-03-09 14:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `taggings`
--

CREATE TABLE `taggings` (
  `tagging_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `taggings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggings_id` int(11) NOT NULL,
  `taggings_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggings`
--

INSERT INTO `taggings` (`tagging_id`, `post_id`, `taggings`, `taggings_id`, `taggings_time`) VALUES
(5, 10, 'takkar', 139, '2017-07-30 00:49:38'),
(6, 11, 'takkar', 139, '2017-07-30 00:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `user_id`, `tags`) VALUES
(65, 139, 'programmer'),
(75, 250, '#mohite');

-- --------------------------------------------------------

--
-- Table structure for table `text_post`
--

CREATE TABLE `text_post` (
  `text_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_post`
--

INSERT INTO `text_post` (`text_post_id`, `post_id`, `text`) VALUES
(3, 10, 'Hello😨😨😨😨😨😨'),
(5, 16, 'hjhj'),
(8, 31, 'dfavfhhgnscfsbtg'),
(14, 47, 'hi , won\'t you work now?'),
(19, 59, 'We are ranked 140th among 156 countries in case of gender equality . isn\'t it shame on India . Is this The India our ancestors expected and chose death for it. Upto when we will remain uncivilised morons.\n#shameondemocracy\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `signup` datetime NOT NULL,
  `email_activated` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `last_login` datetime NOT NULL,
  `pri_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pri_os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pri_browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `surname`, `email`, `password`, `facebook`, `instagram`, `twitter`, `youtube`, `website`, `mobile`, `bio`, `type`, `signup`, `email_activated`, `last_login`, `pri_ip`, `pri_os`, `pri_browser`) VALUES
(139, 'MrMohite', 'Avishkar', 'Mohite', 'avimohite2019@gmail.com', '$2y$10$Ic0GMBq.hLOciK6whatlxu/1DVwLz3bPw/nS8D24ZdiLQke89qWKi', 'https://www.facebook.com/profile.php?id=100009110960262', 'https://www.instagram.com/its_ciphertext_/', 'https://twitter.com/', '', '', '', '😮Developer of Horizon.', 'public', '2021-03-25 19:38:20', 'yes', '2021-03-26 19:38:20', '1', 'Windows 10', 'Chrome'),
(141, 'modi', 'narendra', 'modi', 'modi@gmail.com', '$2y$10$Ic0GMBq.hLOciK6whatlxu/1DVwLz3bPw/nS8D24ZdiLQke89qWKi', 'https://www.facebook.com/narendramodi', 'https://www.instagram.com/narendramodi/', 'https://twitter.com/narendramodi', 'https://www.youtube.com/user/narendramodi', 'http://www.narendramodi.in/', '', '🌞🌞🌞🌞', 'public', '2017-03-18 16:38:49', 'yes', '2017-03-18 16:38:49', '1', 'Windows 10', 'Chrome'),
(142, 'taylor_swift', 'taylor', '__swift', 'taylor@gmail.com', '$2y$10$Ic0GMBq.hLOciK6whatlxu/1DVwLz3bPw/nS8D24ZdiLQke89qWKi', 'https://www.facebook.com/TaylorSwift/', 'https://www.instagram.com/taylorswift/', 'https://twitter.com/taylorswift13', 'https://www.youtube.com/user/TaylorSwiftVEVO', 'https://taylorswift.com/', '', 'singer', 'public', '2017-03-18 17:13:23', 'yes', '2017-03-18 17:13:23', '1', 'Windows 10', 'Chrome'),
(143, 'selenagomez', 'selena', 'gomez', 'selena@gmail.com', '$2y$10$IktQRVd262bp0Ihv2A06ferDhWAW/R0LhDwKxXWjPb3ycGDRx4ccC', 'https://www.facebook.com/Selena/', 'https://www.instagram.com/selenagomez/', 'https://twitter.com/selenagomez?ref_srctwsrc5Egoogle7Ctwcamp5Eserp7Ctwgr5Eauthor', 'https://www.youtube.com/user/SelenaGomezVEVO', 'https://www.selenagomez.com/', '', 'Get \'It Ain\'t Me\' with Kygo, out now. Enjoy!!😛😛', 'private', '2017-03-21 19:36:54', 'yes', '2017-03-21 19:36:54', '1', 'Windows 10', 'Chrome'),
(144, 'ghalib', 'mirza', 'ghalib', 'ghalib@gmail.com', '$2y$10$jOJJJTFANBTOtW4b8m.ci.22KLhZClVeEkIhM9DVkLyP3pELFVeku', '', '', '', '', 'https://www.google.co.in/webhp?sourceidchrome-instant&ion1&espv2&ieUTF-8qghalib&#q=ghalib&*', '', 'Urdu Poet.', 'private', '2017-03-21 19:45:50', 'yes', '2017-03-21 19:45:50', '1', 'Windows 10', 'Chrome'),
(149, 'nobita', 'nobita', 'nobi', 'nobita@gmail.com', '$2y$10$9kM9TpO9kjfTn.R2jnEia.3tz7F38QKiKifyfWDjW5al6aQUOeimu', '', '', '', '', '', '', 'Shh... I\'m sleeping right now.', 'public', '2017-03-21 22:11:22', 'yes', '2017-03-21 22:11:22', '1', 'Windows 10', 'Chrome'),
(153, 'tendulkar', 'sachin', 'tendulkar', 'sachin@gmail.com', '$2y$10$p0pCtnoxrdQFTnx9YsARKO1UxZCnLs/KqxK5NEb.rWRgZGuJwJ4eq', '', '', '', '', '', '', 'LORD OR CRICKET.', 'public', '2017-03-21 22:30:49', 'yes', '2017-03-21 22:30:49', '1', 'Windows 10', 'Chrome'),
(154, 'voldemort', 'lord', 'voldemort', 'lord@gmail.com', '$2y$10$cSpyMlCfMlCScH9r2/DYmuu42QPO9iDaV3j.vUua.M1ohdBqWhaMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-21 22:33:57', 'yes', '2017-03-21 22:33:57', '1', 'Windows 10', 'Chrome'),
(165, 'gian', 'gian', 'takeshi', 'gian@gmail.com', '$2y$10$VLXCFETiLoTiZyRzm9PeluKNA6cKjK78e0OKJKiShCx.8E53CO/nO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-22 15:27:56', 'yes', '2017-03-22 15:27:56', '1', 'Windows 10', 'Chrome'),
(166, 'pikachu', 'pi', 'kachu', 'pikachu@gmail.com', '$2y$10$Kd.q/TtAdyh.h12UWfdyg.GGdkMsLR3IL.I3eTml8SUxyyAugLPIG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-22 15:36:46', 'yes', '2017-03-22 15:36:46', '1', 'Windows 10', 'Chrome'),
(171, 'kumarVishwas', 'kumar', 'vishwas', 'vishwas@gmail.com', '$2y$10$G4YJhe6Fe/sTm7gE53Hnl.ehOQ3vgWa1pz/BoEZ.QevB9bvouEgtG', '', '', '', '', '', '', 'A hindi poet.', 'public', '2017-03-22 17:04:00', 'yes', '2017-03-22 17:04:00', '1', 'Windows 10', 'Chrome'),
(176, 'dexter', 'dexters', 'laboratory', 'dexter@gmail.com', '$2y$10$bDARJPwkI3.eowdUjK4KGuHxkBfuOoywZ5667yquwRqWDn56Ql4BG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 00:56:56', 'yes', '2017-03-23 00:56:56', '1', 'Windows 10', 'Chrome'),
(177, 'johnny', 'johnny', 'bravo', 'johnny@gmail.com', '$2y$10$ajibDZ5HMuhmNtU.GtgO1.pL4UMpv9a.6VQScUmfZl9gijs9YCtc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 00:58:55', 'yes', '2017-03-23 00:58:55', '1', 'Windows 10', 'Chrome'),
(179, 'oggy', 'andthe', 'cockroaches', 'oggy@gmail.com', '$2y$10$D.oLq...EFHuaTuRIhxUkeJ7FcIvfd15ELNPwVPnf.Ju.2ft7Ctwy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 01:05:18', 'yes', '2017-03-23 01:05:18', '1', 'Windows 10', 'Chrome'),
(180, 'tomandjerry', 'cartoon', 'network', 'tomandjerry@gmail.com', '$2y$10$.7TI0qjuPleXvH7c6ZVriObS.CCFIgqXBZ6A9M8XGc6tJFSsdyPm2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 01:08:15', 'yes', '2017-03-23 01:08:15', '1', 'Windows 10', 'Chrome'),
(186, 'harrypotter', 'harry', 'potter', 'harrypotter@gmail.com', '$2y$10$k.SR4rUcw9ABiw6zCgYg3emamtHZa499L5nszPTPAo/cSp55J1.c6', '', '', '', '', '', '', '', 'public', '2017-03-23 01:33:35', 'yes', '2017-03-23 01:33:35', '1', 'Windows 10', 'Chrome'),
(187, 'harmoine', 'harmoine', 'granger', 'harmoine@gmail.com', '$2y$10$VH4je2DWNHdJTdD6WYI9Aeu9XbdH4BlD8pd2vUQxXT8zB8LyBg1ge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 01:38:29', 'yes', '2017-03-23 01:38:29', '1', 'Windows 10', 'Chrome'),
(188, 'ron', 'ron', 'weasley', 'ron@gmail.com', '$2y$10$hymaVLBlzOaYvORWCKa4QebaLdoFRPQBtu9Y7y5YGxqLYME86DoFW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 01:41:25', 'yes', '2017-03-23 01:41:25', '1', 'Windows 10', 'Chrome'),
(192, 'instagram', 'instagram', 'official', 'instagram@gmail.com', '$2y$10$jR.NwcgfN6n6E4sChguvl.zCVrAzsQMpw5KK5vTVR6LK9FqCkhR1S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-23 17:24:04', 'yes', '2017-03-23 17:24:04', '1', 'Windows 10', 'Chrome'),
(194, 'shizuka', 'shizuka', 'minamoto', 'shizuka@gmail.com', '$2y$10$dcsmNtMIOAQFi6a9IjKF7OzbWMCuuUkiIy9uao.MFiJTKvZQ7Gxv6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-27 23:05:09', 'yes', '2017-03-27 23:05:09', '1', 'Windows 10', 'Chrome'),
(195, 'snape', 'severus', 'snape', 'snape@gmail.com', '$2y$10$yMIgIAf2.WlOYJFw/HstJuU3ItAN2DjNWzi6XtDe0u5GN/YnY68Cu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-27 23:56:53', 'yes', '2017-03-27 23:56:53', '1', 'Windows 10', 'Chrome'),
(196, 'draco', 'draco', 'malfoy', 'draco@gmail.com', '$2y$10$.qOPiIDPBWXZJGJZ9g6j3O1IwJ8zhAyptZtDasHkPjpOF1yIdvZqG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-27 23:59:04', 'yes', '2017-03-27 23:59:04', '1', 'Windows 10', 'Chrome'),
(197, 'dumbledore', 'albus', 'dumbledore', 'albus@gmail.com', '$2y$10$D74VnnC30GNLGHYfmIfc5O2K9O/N83BjkM500i6vkLwyy7Zq1yuyS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-28 00:02:46', 'yes', '2017-03-28 00:02:46', '1', 'Windows 10', 'Chrome'),
(199, 'hagrid', 'rubeus', 'hagrid', 'hagrid@gmail.com', '$2y$10$j2sCTTy6lkmSnhUPWSyH2eWfh9s4kS3rkoCKzUZgZvFE0jPynhp3W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-03-28 00:09:38', 'yes', '2017-03-28 00:09:38', '1', 'Windows 10', 'Chrome'),
(217, 'TED', 'ted', 'talks', 'ted@gmail.com', '$2y$10$7qYFYmAyE62NLSIwtvU9G.MzBJIPwrpEyagiihKfPn.5kAb3g5JQu', '', '', '', '', '', '', 'Ideas worth sharing.', 'public', '2017-04-01 01:14:13', 'yes', '2017-04-01 01:14:13', '1', 'Windows 10', 'Chrome'),
(218, 'Johnny-depp', 'johnny', 'depp', 'johnnydepp@gmail.com', '$2y$10$sJfxVvxanZMn9WBmG4q5.exZU15h/DeM60Y4xwS0EAM/SSs8syD0G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2017-04-01 16:13:13', 'yes', '2017-04-01 16:13:13', '1', 'Windows 10', 'Chrome'),
(219, 'flipkart', 'flipkart', '??', 'flipkart@gmail.com', '$2y$10$D7C3sBKCE1HmdongzS5.cuw2bUnLI6ZlIz11ZMMUa2EadE5ilCtc.', '', '', '', '', 'https://www.flipkart.com', '', '', 'public', '2017-04-07 22:21:35', 'yes', '2017-04-07 22:21:35', '1', 'Windows 10', 'Chrome'),
(250, 'Indiana', 'Indiana', 'Jones', 'a@gmail.com', '$2y$10$Ic0GMBq.hLOciK6whatlxu/1DVwLz3bPw/nS8D24ZdiLQke89qWKi', '', '', '', '', '', '', 'The unique scoring system based on live performance of the players will definitely make your heart skip a beat and it will take your experience to a whole new level. With this scoring system even a team with zero cricketing knowledge can beat the cricket pundits on their day.😈', 'public', '2021-03-09 14:28:24', 'no', '2021-03-09 14:28:24', '1', 'Windows 10', 'Chrome'),
(251, 'abcde', 'kk', 'll', 'avimohite2019@gmail.com', '$2y$10$QEypy6jM.V.xTS5hu7E7h.j.w.BxSWcF.7Mo6W2ZJkc/F47M8yMYW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2021-03-09 14:43:29', 'yes', '2021-03-09 14:43:29', '1', 'Windows 10', 'Chrome'),
(252, 'abcder', 'a', 'b', 'k@gmail.com', '$2y$10$QEypy6jM.V.xTS5hu7E7h.j.w.BxSWcF.7Mo6W2ZJkc/F47M8yMYW', '', 'https://codepen.io/bap13/details/PZRBzy', '', '', '', '', '', 'public', '2021-03-25 22:19:25', 'no', '2021-03-25 22:19:25', '1', 'Windows 10', 'Chrome'),
(253, 'avi', 'a', 'b', 'a@mail.com', '$2y$10$cPkj6mJRIeqNWWkB0Awf7uZqwifCr0BhPgfUtqnYhIHGm0hxJWCAu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2021-03-26 12:41:39', 'no', '2021-03-26 12:41:39', '1', 'Windows 10', 'Chrome'),
(254, 'sherlock', 'sherlock', 'holmes', 'holmes@sherlock.com', '$2y$10$mMkUqlZY4NlDdPx7yQLQJuGoolOJ6YNPbqOd6Em77tU4SCiCklgxS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2021-04-04 10:03:02', 'no', '2021-04-04 10:03:02', '1', 'Windows 10', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `video_post`
--

CREATE TABLE `video_post` (
  `video_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_post`
--

INSERT INTO `video_post` (`video_post_id`, `post_id`, `video`, `about`) VALUES
(6, 54, '1616824181.mp4', ' wcwfrvwrfcwefrcrfw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`audio_post_Id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`bkmrk_id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`comment_like_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `doc_post`
--
ALTER TABLE `doc_post`
  ADD PRIMARY KEY (`doc_post_id`);

--
-- Indexes for table `email_private`
--
ALTER TABLE `email_private`
  ADD PRIMARY KEY (`e_p_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `follow_system`
--
ALTER TABLE `follow_system`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_con`
--
ALTER TABLE `group_con`
  ADD PRIMARY KEY (`grp_con_id`);

--
-- Indexes for table `group_con_members`
--
ALTER TABLE `group_con_members`
  ADD PRIMARY KEY (`grp_con_mem_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_mem_id`);

--
-- Indexes for table `grpconunreads`
--
ALTER TABLE `grpconunreads`
  ADD PRIMARY KEY (`gru_id`);

--
-- Indexes for table `hashtag`
--
ALTER TABLE `hashtag`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Indexes for table `image_post`
--
ALTER TABLE `image_post`
  ADD PRIMARY KEY (`image_post_id`);

--
-- Indexes for table `invitegrp`
--
ALTER TABLE `invitegrp`
  ADD PRIMARY KEY (`inviteGrpId`);

--
-- Indexes for table `link_post`
--
ALTER TABLE `link_post`
  ADD PRIMARY KEY (`link_post_id`);

--
-- Indexes for table `loc_post`
--
ALTER TABLE `loc_post`
  ADD PRIMARY KEY (`loc_post_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `mobile_private`
--
ALTER TABLE `mobile_private`
  ADD PRIMARY KEY (`m_p_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_comments_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_likes_id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`recommend_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`share_id`);

--
-- Indexes for table `taggings`
--
ALTER TABLE `taggings`
  ADD PRIMARY KEY (`tagging_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `text_post`
--
ALTER TABLE `text_post`
  ADD PRIMARY KEY (`text_post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_post`
--
ALTER TABLE `video_post`
  ADD PRIMARY KEY (`video_post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `audio_post_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `bkmrk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `comment_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doc_post`
--
ALTER TABLE `doc_post`
  MODIFY `doc_post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_private`
--
ALTER TABLE `email_private`
  MODIFY `e_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `follow_system`
--
ALTER TABLE `follow_system`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group_con`
--
ALTER TABLE `group_con`
  MODIFY `grp_con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group_con_members`
--
ALTER TABLE `group_con_members`
  MODIFY `grp_con_mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `group_mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `grpconunreads`
--
ALTER TABLE `grpconunreads`
  MODIFY `gru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `hashtag`
--
ALTER TABLE `hashtag`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `image_post`
--
ALTER TABLE `image_post`
  MODIFY `image_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invitegrp`
--
ALTER TABLE `invitegrp`
  MODIFY `inviteGrpId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link_post`
--
ALTER TABLE `link_post`
  MODIFY `link_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loc_post`
--
ALTER TABLE `loc_post`
  MODIFY `loc_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mobile_private`
--
ALTER TABLE `mobile_private`
  MODIFY `m_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `post_comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `post_likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `recommend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taggings`
--
ALTER TABLE `taggings`
  MODIFY `tagging_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `text_post`
--
ALTER TABLE `text_post`
  MODIFY `text_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `video_post`
--
ALTER TABLE `video_post`
  MODIFY `video_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
