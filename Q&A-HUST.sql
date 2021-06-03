-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 25, 2021 lúc 06:09 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qa_uet_current`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

CREATE TABLE `answers` (
  `id_answer` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `content` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer_survey`
--

CREATE TABLE `answer_survey` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `answer_survey`
--

INSERT INTO `answer_survey` (`id`, `user_id`, `question_id`, `survey_id`, `answer`, `created_at`, `updated_at`) VALUES
(99, 3, 19, 8, '\"b1\"', '2019-11-18 18:40:56', '2019-11-18 18:40:56'),
(100, 3, 20, 8, '\"hihi\"', '2019-11-18 18:40:56', '2019-11-18 18:40:56'),
(101, 3, 21, 8, '[\"cb2\"]', '2019-11-18 18:40:56', '2019-11-18 18:40:56'),
(102, 3, 22, 8, '\"huhu\"', '2019-11-18 18:40:56', '2019-11-18 18:40:56'),
(103, 6, 19, 8, '\"b2\"', '2019-11-18 18:42:36', '2019-11-18 18:42:36'),
(104, 6, 20, 8, '\"aaaa\"', '2019-11-18 18:42:36', '2019-11-18 18:42:36'),
(105, 6, 21, 8, '[\"cb2\",\"cb3\"]', '2019-11-18 18:42:36', '2019-11-18 18:42:36'),
(106, 6, 22, 8, '\"xxxx\"', '2019-11-18 18:42:36', '2019-11-18 18:42:36'),
(107, 1, 19, 8, '\"b1\"', '2019-11-18 18:46:48', '2019-11-18 18:46:48'),
(108, 1, 20, 8, '\"huhu\"', '2019-11-18 18:46:48', '2019-11-18 18:46:48'),
(109, 1, 21, 8, '[\"cb3\"]', '2019-11-18 18:46:48', '2019-11-18 18:46:48'),
(110, 1, 22, 8, '\"hehe\"', '2019-11-18 18:46:48', '2019-11-18 18:46:48'),
(111, 1, 23, 8, '\"area\"', '2019-11-18 18:46:48', '2019-11-18 18:46:48'),
(112, 1, 24, 10, '\"com\"', '2019-11-19 08:21:00', '2019-11-19 08:21:00'),
(113, 1, 25, 10, '\"19\"', '2019-11-19 08:21:00', '2019-11-19 08:21:00'),
(114, 3, 24, 10, '\"chao\"', '2019-11-19 08:21:46', '2019-11-19 08:21:46'),
(115, 3, 25, 10, '\"20\"', '2019-11-19 08:21:46', '2019-11-19 08:21:46'),
(116, 10, 24, 10, '\"pho\"', '2019-11-19 08:26:27', '2019-11-19 08:26:27'),
(117, 10, 25, 10, '\"25\"', '2019-11-19 08:26:27', '2019-11-19 08:26:27'),
(118, 1, 26, 11, '\"an com\"', '2019-11-19 09:11:31', '2019-11-19 09:11:31'),
(119, 1, 27, 11, '\"radio2\"', '2019-11-19 09:11:31', '2019-11-19 09:11:31'),
(120, 3, 26, 11, '\"aca\"', '2019-11-19 09:12:28', '2019-11-19 09:12:28'),
(121, 3, 27, 11, '\"radio2\"', '2019-11-19 09:12:28', '2019-11-19 09:12:28'),
(122, 6, 26, 11, '\"an com ca\"', '2019-11-19 09:13:26', '2019-11-19 09:13:26'),
(123, 6, 27, 11, '\"radio3\"', '2019-11-19 09:13:26', '2019-11-19 09:13:26'),
(124, 1, 29, 13, '\"hehe\"', '2020-06-08 14:12:13', '2020-06-08 14:12:13'),
(125, 1, 30, 13, '[\"q1\"]', '2020-06-08 14:12:13', '2020-06-08 14:12:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `confirm` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_comment`, `id_user`, `id_question`, `content`, `created_at`, `updated_at`, `confirm`) VALUES
(3, 1, 2, 'eheh', '2019-11-12 20:34:22', '2019-11-12 20:34:22', 0),
(4, 3, 2, 'tao co sung!', '2019-11-12 20:40:22', '2019-11-12 20:40:22', 0),
(5, 3, 2, 'Tao là dần', '2019-11-12 21:27:13', '2019-11-18 22:44:30', 1),
(6, 3, 2, 'hehehe', '2019-11-12 21:42:43', '2019-11-12 21:42:43', 0),
(7, 3, 2, 'acccc', '2019-11-12 21:42:54', '2019-11-12 21:42:54', 0),
(8, 1, 2, 'jlkjlkjk', '2019-11-13 00:16:05', '2019-11-13 00:16:05', 0),
(9, 1, 2, 'tao co sung bang bang bang!!', '2019-11-13 08:49:43', '2019-11-13 08:49:43', 0),
(10, 1, 2, 'co sung!', '2019-11-13 08:50:16', '2019-11-13 08:50:16', 0),
(11, 1, 2, 'xxxxxxxx', '2019-11-17 17:28:56', '2019-11-17 17:28:56', 0),
(12, 1, 2, 'daasd', '2019-11-17 17:42:56', '2019-11-17 17:42:56', 0),
(13, 3, 2, 'tesst pusher', '2019-11-17 17:43:32', '2019-11-17 17:43:32', 0),
(14, 1, 2, 'xxxx', '2019-11-18 12:43:18', '2019-11-18 12:43:18', 0),
(15, 1, 2, '@@@@', '2019-11-18 12:44:23', '2019-11-18 12:44:23', 0),
(16, 1, 4, '@@', '2019-11-18 13:22:05', '2019-11-18 13:22:05', 0),
(17, 1, 3, 'test nha', '2019-11-18 23:06:48', '2019-11-18 23:06:48', 0),
(18, 3, 9, 'abcxyz', '2019-11-19 13:14:44', '2019-11-19 13:14:44', 0),
(19, 3, 9, 'xxxx', '2019-11-19 13:19:14', '2019-11-19 13:19:14', 0),
(20, 3, 9, 'asdasd', '2019-11-19 13:19:44', '2019-11-19 13:20:37', 1),
(21, 3, 9, 'asdasd', '2019-11-19 13:22:17', '2019-11-19 13:22:17', 0),
(22, 3, 9, 'asdasd', '2019-11-19 13:23:11', '2019-11-19 13:23:11', 0),
(23, 3, 9, 'asdasd', '2019-11-19 13:27:35', '2019-11-19 13:27:35', 0),
(24, 3, 9, 'xxxczczxczc', '2019-11-19 13:30:26', '2019-11-19 13:30:26', 0),
(25, 3, 9, 'okokokoko', '2019-11-19 13:31:40', '2019-11-19 13:31:40', 0),
(26, 3, 9, 'asdasd', '2019-11-19 13:48:23', '2019-11-19 13:48:23', 0),
(27, 3, 9, 'asdsad', '2019-11-19 13:53:01', '2019-11-19 13:53:01', 0),
(28, 3, 9, 'ococ', '2019-11-19 13:55:30', '2019-11-19 13:55:30', 0),
(29, 3, 9, 'xxx', '2019-11-19 13:55:47', '2019-11-19 13:55:47', 0),
(30, 3, 9, 'i love you', '2019-11-19 13:57:37', '2019-11-19 13:57:37', 0),
(31, 3, 9, 'asdasdasdaasd', '2019-11-19 13:58:20', '2019-11-19 13:58:20', 0),
(32, 6, 9, 'asdasd', '2019-11-19 14:06:19', '2019-11-19 14:06:19', 0),
(33, 6, 9, 'asdasd', '2019-11-19 14:07:26', '2019-11-19 14:07:26', 0),
(34, 6, 9, 'asdasd', '2019-11-19 14:08:20', '2019-11-19 14:08:20', 0),
(35, 6, 9, 'asdadsad', '2019-11-19 14:09:00', '2019-11-19 14:09:00', 0),
(36, 6, 9, 'xxxxxxxxx', '2019-11-19 14:09:08', '2019-11-19 14:09:08', 0),
(37, 6, 9, 'asdasd', '2019-11-19 14:10:48', '2019-11-19 14:10:48', 0),
(38, 6, 9, 'xzczxczxczxczczxc', '2019-11-19 14:10:54', '2019-11-19 14:10:54', 0),
(39, 6, 9, 'adasdadadsadsads', '2019-11-19 14:11:39', '2019-11-19 14:11:39', 0),
(40, 3, 10, 'test cmt', '2019-11-19 15:11:18', '2019-11-19 15:11:18', 0),
(41, 1, 10, 'hehehe', '2019-11-19 15:11:31', '2019-11-19 15:11:50', 1),
(42, 1, 12, 'tra loi', '2019-11-19 16:07:47', '2019-11-19 16:07:47', 0),
(43, 1, 12, 'xxxx', '2019-11-19 16:08:07', '2019-11-19 16:08:30', 1),
(44, 1, 11, 'abcyxz', '2019-11-19 16:16:51', '2019-11-19 16:16:51', 0),
(45, 1, 11, 'xyz', '2019-11-19 16:16:57', '2019-11-19 16:16:57', 0),
(46, 1, 13, 'hello', '2020-06-08 00:23:01', '2020-06-08 00:23:01', 0),
(47, 1, 15, 'hello', '2020-06-08 21:10:08', '2020-06-08 21:10:08', 0),
(48, 3, 16, 'xxxyxuasdasd', '2020-06-09 08:12:25', '2020-06-09 08:12:25', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_in`
--

CREATE TABLE `comment_in` (
  `id` int(11) NOT NULL,
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment_in`
--

INSERT INTO `comment_in` (`id`, `id_comment`, `id_user`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'heheh', '2019-11-12 22:24:11', '2019-11-12 22:24:11'),
(2, 3, 3, 'hjhj', '2019-11-12 22:24:15', '2019-11-12 22:24:15'),
(3, 8, 1, 'ok', '2019-11-13 00:16:11', '2019-11-13 00:16:11'),
(4, 3, 1, 'sung ne', '2019-11-13 08:49:53', '2019-11-13 08:49:53'),
(5, 10, 1, 'heheheh', '2019-11-13 08:50:21', '2019-11-13 08:50:21'),
(6, 3, 3, 'kljlkjl', '2019-11-17 14:14:24', '2019-11-17 14:14:24'),
(7, 3, 1, 'ádasdaasd', '2019-11-17 14:15:05', '2019-11-17 14:15:05'),
(8, 3, 3, 'demo', '2019-11-17 14:15:22', '2019-11-17 14:15:22'),
(9, 3, 1, 'uuuu', '2019-11-18 12:43:27', '2019-11-18 12:43:27'),
(10, 3, 3, 'check', '2019-11-18 12:43:53', '2019-11-18 12:43:53'),
(11, 42, 1, 'abcxyz', '2019-11-19 16:07:56', '2019-11-19 16:07:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_question`
--

CREATE TABLE `like_question` (
  `id` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_user` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `like_question`
--

INSERT INTO `like_question` (`id`, `id_question`, `id_user`, `name_user`, `created_at`, `updated_at`) VALUES
(8, 2, 1, 'viet', '2019-11-13 08:50:10', '2019-11-13 08:50:10'),
(9, 10, 1, 'phuong', '2019-11-19 15:10:27', '2019-11-19 15:10:27'),
(10, 12, 1, 'viet', '2019-11-19 16:08:05', '2019-11-19 16:08:05'),
(11, 13, 1, 'phuong', '2020-06-08 00:23:09', '2020-06-08 00:23:09'),
(12, 15, 3, 'Nguyen Hong Phuong', '2020-06-08 21:10:34', '2020-06-08 21:10:34'),
(13, 16, 3, 'Do Hoang Viet', '2020-06-09 08:12:30', '2020-06-09 08:12:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `whoposted` varchar(225) NOT NULL,
  `title_question` text NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id_question`, `id_user`, `id_session`, `whoposted`, `title_question`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'hoang', 'asdas', NULL, '2019-11-11 23:04:29', '2019-11-11 23:04:29'),
(2, 1, 15, 'Hide', 'Tao co sung ne', NULL, '2019-11-11 23:04:43', '2019-11-11 23:04:43'),
(3, 1, 15, 'Hide', 'aaaaaa', NULL, '2019-11-12 15:15:42', '2019-11-12 15:15:42'),
(4, 1, 18, 'Hide', 'hehhehehe', NULL, '2019-11-18 13:21:58', '2019-11-18 13:21:58'),
(5, 1, 26, 'hoang', 'abcyxz', NULL, '2019-11-18 20:35:48', '2019-11-18 20:35:48'),
(6, 1, 26, 'hoang', 'xxxxxxxx', NULL, '2019-11-18 20:39:57', '2019-11-18 20:39:57'),
(8, 1, 26, 'Hide', 'dat cau hoi an danh', NULL, '2019-11-19 13:08:33', '2019-11-19 13:08:33'),
(9, 1, 28, 'hoang', 'akjsdlajsdlajs', NULL, '2019-11-19 13:13:18', '2019-11-19 13:13:18'),
(10, 3, 29, 'alo1234', 'Laravel la gi?', NULL, '2019-11-19 15:09:57', '2019-11-19 15:09:57'),
(11, 1, 30, 'hoang', 'Cau hoi ne', NULL, '2019-11-19 15:47:51', '2019-11-19 15:47:51'),
(12, 1, 33, 'Hide', 'hom nay an gi?', NULL, '2019-11-19 16:07:32', '2019-11-19 16:07:32'),
(13, 3, 35, 'ChimSeDiNang', 'hehehe', NULL, '2020-06-08 00:22:24', '2020-06-08 00:22:24'),
(14, 1, 36, 'Hide', '??t câu h?i ? ch? ?? ?n danh', NULL, '2020-06-08 21:09:41', '2020-06-08 21:09:41'),
(15, 1, 36, 'hoang', 'public', NULL, '2020-06-08 21:09:58', '2020-06-08 21:09:58'),
(16, 3, 38, 'Hide', 'hom nay an gi', NULL, '2020-06-09 08:11:50', '2020-06-09 08:11:50'),
(17, 3, 38, 'DMCS', 'cau hoi 2 asd', NULL, '2020-06-09 08:12:00', '2020-06-09 08:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_survey`
--

CREATE TABLE `question_survey` (
  `id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `question_survey`
--

INSERT INTO `question_survey` (`id`, `survey_id`, `user_id`, `title`, `question_type`, `option_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hehehe', 'textarea', NULL, '2019-11-13 06:19:46', '2019-11-13 06:19:46'),
(3, 1, 1, 'xxxx', 'radio', '[\"xx\",\"xx\",\"xx\"]', '2019-11-13 06:24:06', '2019-11-13 06:24:06'),
(4, 2, 1, 'aaaaaaa', 'textarea', NULL, '2019-11-16 03:19:54', '2019-11-16 03:19:54'),
(5, 1, 1, 'asas', 'checkbox', '[\"xx\",\"abc\"]', '2019-11-16 03:44:24', '2019-11-16 03:44:24'),
(6, 1, 1, 'aaaaaaa', 'text', NULL, '2019-11-16 05:24:21', '2019-11-16 05:24:21'),
(7, 1, 1, 'test', 'checkbox', '[\"test1\",\"test2\",\"test3\"]', '2019-11-16 13:55:30', '2019-11-16 13:55:30'),
(8, 4, 1, 'Bạn đã biết gì về larave hay chưa?', 'text', NULL, '2019-11-17 03:38:27', '2019-11-17 03:38:27'),
(9, 4, 1, 'Bạn học laravel được bao lâu?', 'checkbox', '[\"1m\",\"2m\",\"1y\",\"2y\"]', '2019-11-17 03:39:07', '2019-11-17 03:39:07'),
(10, 4, 1, 'Bạn là nam hay nữ?', 'radio', '[\"Nam\",\"N\\u1eef\",\"Kh\\u00e1c\"]', '2019-11-17 03:39:30', '2019-11-17 03:39:30'),
(11, 5, 1, 'checkbox1', 'checkbox', '[\"checkbox1\",\"checkbox2\",\"checkbox3\"]', '2019-11-17 14:02:44', '2019-11-17 14:02:44'),
(12, 5, 1, 'radio', 'radio', '[\"radio1\",\"radio2\",\"radio3\"]', '2019-11-17 14:03:44', '2019-11-17 14:03:44'),
(13, 6, 1, 'Test', 'radio', '[\"Hihi\",\"hehe\",\"haha\"]', '2019-11-17 15:12:27', '2019-11-17 15:12:27'),
(14, 6, 1, 'test1', 'radio', '[\"demo1\",\"demo2\",\"demo3\"]', '2019-11-17 15:44:07', '2019-11-17 15:44:07'),
(15, 7, 1, 'cau1', 'radio', '[\"a1\",\"a2\"]', '2019-11-17 15:56:44', '2019-11-17 15:56:44'),
(16, 7, 1, 'cau2', 'radio', '[\"b1\",\"b2\"]', '2019-11-17 15:56:58', '2019-11-17 15:56:58'),
(17, 7, 1, 'aaaa', 'radio', '[\"c1\",\"c2\",\"c3\"]', '2019-11-17 17:52:51', '2019-11-17 17:52:51'),
(18, 7, 1, 'sa', 'radio', '[\"asd\"]', '2019-11-17 17:56:21', '2019-11-17 17:56:21'),
(19, 8, 1, 'Abc1234', 'radio', '[\"b1\",\"b2\",\"b3\"]', '2019-11-18 05:22:07', '2019-11-19 08:53:18'),
(20, 8, 1, 'heheh', 'text', NULL, '2019-11-18 09:26:24', '2019-11-18 09:26:24'),
(21, 8, 1, 'Khao sat checkbox', 'checkbox', '[\"cb1\",\"cb2\",\"cb3\"]', '2019-11-18 09:26:56', '2019-11-18 09:26:56'),
(22, 8, 1, 'hehe', 'text', NULL, '2019-11-18 18:38:06', '2019-11-18 18:38:06'),
(23, 8, 1, 'test', 'textarea', NULL, '2019-11-18 18:46:05', '2019-11-18 18:46:05'),
(24, 10, 1, 'HOM NAY AN GI?', 'radio', '[\"com\",\"chao\",\"pho\"]', '2019-11-19 08:20:18', '2019-11-19 08:20:18'),
(25, 10, 1, 'Ban bao nhieu tuoi?', 'text', NULL, '2019-11-19 08:20:44', '2019-11-19 08:20:44'),
(26, 11, 11, 'Hom nay anh gi?', 'text', NULL, '2019-11-19 09:10:19', '2019-11-19 09:10:19'),
(27, 11, 11, 'radio', 'radio', '[\"radio1\",\"radio2\",\"radio3\"]', '2019-11-19 09:10:46', '2019-11-19 09:10:46'),
(28, 12, 3, 'ádasdasd', 'checkbox', '[\"hiahsid\"]', '2020-04-19 03:56:37', '2020-04-19 04:33:10'),
(29, 13, 3, 'test', 'text', NULL, '2020-06-08 14:11:41', '2020-06-08 14:11:41'),
(30, 13, 3, 'checkbox', 'checkbox', '[\"q1\",\"q1\",\"q3\",\"q4\"]', '2020-06-08 14:12:00', '2020-06-08 14:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id_session` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name_session` text NOT NULL,
  `type_session` varchar(255) NOT NULL,
  `date_session` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp(),
  `password` varchar(255) DEFAULT NULL,
  `count_views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id_session`, `id_user`, `name_session`, `type_session`, `date_session`, `description`, `expired_at`, `updated_at`, `created_at`, `password`, `count_views`) VALUES
(16, 1, 'Học như thế nào cho tốt?', 'technology', '2019-11-11 10:24:30', 'học gì...', NULL, '2019-11-19 15:50:43', '2019-11-11 17:24:30', '$2y$10$PqLWe9tTfzSofzwXJdM1g.emWiWyCf4bOau0ns4YPe7AYsaYhto8e', 1),
(17, 1, 'Về quê ăn tết', 'marketing', '2019-11-11 10:27:30', 'ăn têt..', NULL, '2019-11-18 22:16:08', '2019-11-11 17:27:30', NULL, 6),
(18, 1, 'Js là gì?', 'marketing', '2019-11-11 10:44:38', 'js', NULL, '2019-11-19 02:44:33', '2019-11-11 17:44:38', NULL, 4),
(19, 1, 'Ngôn ngữ php', 'technology', '2019-11-11 10:44:48', 'php', NULL, '2019-11-11 17:44:48', '2019-11-11 17:44:48', NULL, 0),
(21, 1, 'Java', 'Q&A', '2019-11-11 14:18:58', 'yy', NULL, '2019-11-11 21:18:58', '2019-11-11 21:18:58', NULL, 0),
(22, 1, 'Vuejs', 'Q&A', '2019-11-11 14:20:36', 'asdasdsad', NULL, '2019-11-11 21:20:36', '2019-11-11 21:20:36', '$2y$10$ShgQTxTbGjzojEcUewrGwueSsLOp2BoZiLkxtzyzOvNDNXFT0oL2O', 0),
(23, 1, 'Html', 'business', '2019-11-11 14:32:39', 'asdas', NULL, '2019-11-11 21:32:39', '2019-11-11 21:32:39', '$2y$10$LlVTsUMu.s.PkP6LbJn18uVDBEn4ncG2ikD8MBXHOejK9UWnc3z1.', 0),
(24, 1, 'css', 'business', '2019-11-11 14:33:53', 'xzxcz', NULL, '2019-11-11 21:33:53', '2019-11-11 21:33:53', '$2y$10$VBXbNGDlRJ9NuO6UL46nluLU.2QSYVkGWfCHMCua1wrmestH30gc.', 0),
(25, 3, '1+1=2?', 'Q&A', '2019-11-17 06:22:05', 'askdjalsd alsdj lajsd aldj lajd alskdj asdjk aldjla sdalkjdlakd jlajdaj dladlajsd la sdlasjd ajsdlaj', NULL, '2019-11-18 21:54:12', '2019-11-17 13:22:05', NULL, 1),
(26, 1, 'Thao luan laravel edit', 'business', '2019-11-18 06:32:34', 'nói về những vấn đề trọng tâm.', NULL, '2020-06-08 21:13:01', '2019-11-18 13:32:34', NULL, 80),
(29, 1, 'laravel edit', 'IT', '2019-11-19 08:08:06', 'thao luan ve laravel', NULL, '2019-11-19 15:17:52', '2019-11-19 15:08:06', '$2y$10$clH0OjmD.wGqtUpXR1bsPOy3hmzt4vHs4BG3GSumtpoeuYMh0tLru', 6),
(30, 10, 'Test session', 'Q&A', '2019-11-19 08:30:56', 'bacxyz', NULL, '2020-05-31 21:47:27', '2019-11-19 15:30:56', '$2y$10$r6xxRWTua2cW9fG2WrREDeOIOtFYJDFviHd5oqhMtRKQOhRD5C156', 13),
(33, 11, 'Tao 1 phiien', 'IT', '2019-11-19 09:06:37', 'aaaaaadasd', NULL, '2020-05-31 22:08:33', '2019-11-19 16:06:37', '$2y$10$x.qbnCQVXOhkqrvi4GTpSOKmyg9A0rBZH6zo2JjKCDdFnBYTI1O2e', 9),
(34, 11, 'tao moi 1 ss', 'business', '2019-11-19 09:09:43', 'asdasdadsasd', NULL, '2020-05-31 22:08:25', '2019-11-19 16:09:43', NULL, 4),
(35, 3, 'test 1 phien', 'technology', '2020-06-07 17:22:16', 'abcxyz', NULL, '2020-06-08 21:11:02', '2020-06-08 00:22:16', '$2y$10$2mhY7weAC.Xnq1rL06RSxu9uxmgp1nKdQSGMmZTQ3DyiEq97IxexG', 6),
(36, 3, 'Phiên bản mới', 'IT', '2020-06-08 14:08:12', 'test phiên hỏi đáp', NULL, '2020-06-08 21:10:22', '2020-06-08 21:08:12', '$2y$10$gEdIcphyWCVcLM7N71EvfuihOeYFn/ONembh3BtjzmcjZLuaF2g/O', 9),
(37, 12, 'xxxxxxx', 'business', '2020-06-08 14:23:52', 'asdasdasd', NULL, '2020-06-08 21:23:52', '2020-06-08 21:23:52', NULL, 0),
(38, 13, 'tao phien hoi dap 09/06', 'Q&A', '2020-06-09 01:10:43', 'tao phien hoi dap', NULL, '2020-06-09 08:12:01', '2020-06-09 08:10:43', '$2y$10$6M.o9AxvTGMrbw/jdhQpqez8XDZMZTteKPWfRrbgeTc8fupczrAva', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `survey`
--

CREATE TABLE `survey` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `survey`
--

INSERT INTO `survey` (`id`, `title`, `user_id`, `description`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Khảo sát laravel1', 1, 'laravel là gì', NULL, NULL, '2019-11-18 05:20:18', '2019-11-19 08:53:11'),
(11, 'tao 1 phien khao sat', 11, 'xxxxxxx', NULL, NULL, '2019-11-19 09:10:09', '2019-11-19 09:10:09'),
(12, 'test thoi', 3, 'hoanght99', NULL, NULL, '2020-04-19 03:56:21', '2020-04-19 03:56:21'),
(13, 'hom nay an gi', 3, 'test survey', NULL, NULL, '2020-06-08 14:11:26', '2020-06-08 14:11:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT 'thanhvien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permission`) VALUES
(1, 'hoang', 'nchdzvcl@gmail.com', NULL, '$2y$10$0Un0Io0PpxyenalKSFqgq.tEhiXYMY9Oz8S6oUgCrTd2CFgV9N3kK', 'L3kBf205zQuHjGBFl6bL2PQGi5lW4e8lW5hL9rqFpAOc6GZywdGxo2duGfIf', '2019-11-03 04:11:18', '2019-11-03 04:11:18', 'chutoa'),
(2, 'asd', 'asdasd@gmail.com', NULL, '$2y$10$JGIN4ETf.Pa9X1yWjoJHx.2U5TamuRyRNiEVi2SIgZeSyF0AVYz6u', NULL, '2019-11-03 06:52:32', '2019-11-03 06:52:32', 'thanhvien'),
(3, 'ABCXYZ', 'checkpassnch@gmail.com', NULL, '$2y$10$D3HVd8thxELTLzFdio.gl.zKUhV/oNegBJFFPixSUyfFNr3NJyrQy', NULL, '2019-11-04 09:46:27', '2019-11-04 09:46:27', 'chutoa'),
(4, 'Khacngoc', 'khacngoc99@gmail.com', NULL, '$2y$10$lOCpPoPAQRG5l55kn.VPP.3SdtFp2a.xgqSqNxzC2m3mgwrAo4jTO', NULL, '2019-11-05 02:03:21', '2019-11-05 02:03:21', 'thanhvien'),
(5, 'Hoang', '123@gmail.com', NULL, '$2y$10$PrKVTFNkGrCY/8uijQv95Oi.vhQBBqTvpdOkgaWIOBdn53MfZOD.O', NULL, '2019-11-05 02:12:29', '2019-11-05 02:12:29', 'thanhvien'),
(6, 'hoanghoang', 'githubblackpanter99@gmail.com', NULL, '$2y$10$whkePjcaICvziKgef0o52u8B3/DXUHXk7sOLwgCudchui30P0CtNi', NULL, '2019-11-17 15:13:18', '2019-11-17 15:13:18', 'thanhvien'),
(7, 'Hoang', 'abc@gmail.com', NULL, '$2y$10$b.6G/KXohx7lUa2VJ4HW2uHyUArezTJBXFS7bAlEbMIrXJvzvBZtW', NULL, '2019-11-17 17:53:36', '2019-11-17 17:53:36', 'thanhvien'),
(9, 'admin', 'admin@gmail.com', NULL, '$2y$10$HglM/QDns/y5w5pjEX4ol.BZ884LfR3bCS9ZMULtYcte9wH43sN86', NULL, NULL, NULL, 'admin'),
(10, 'liem dang', 'abcxyz@gmail.com', NULL, '$2y$10$GCF5NICsaOYn7IXgSbmi7O7MdTYbVW/.lAv4sU8XvVGL2Aony/2MC', NULL, NULL, NULL, 'chutoa'),
(11, 'Canh Hoang', 'canhhoanght99@gmail.com', NULL, '$2y$10$kmlM4rHvuCTv.z3AMCPZbOxWj9hHPDp9nzkrPSAJutRpdrOwOK5qK', NULL, NULL, NULL, 'chutoa'),
(12, 'Hoang', 'xyzxyz@gmail.com', NULL, '$2y$10$nGJYzLJay/kxAe8YKpv9aOCiMfatW6FHjhRI1H3t/V6gvC7k9FueO', NULL, NULL, NULL, 'chutoa'),
(13, '1234567890', 'xyzxyzxyz@gmail.com', NULL, '$2y$10$Vt0Bz/26sT44Lj2zXZyMo.59PaiSh0hA8/XOGTzAWHD.2BTz5OuL.', NULL, NULL, NULL, 'chutoa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_answer`,`id_question`) USING BTREE,
  ADD KEY `id_question` (`id_question`);

--
-- Chỉ mục cho bảng `answer_survey`
--
ALTER TABLE `answer_survey`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`,`id_user`,`id_question`) USING BTREE;

--
-- Chỉ mục cho bảng `comment_in`
--
ALTER TABLE `comment_in`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `like_question`
--
ALTER TABLE `like_question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Chỉ mục cho bảng `question_survey`
--
ALTER TABLE `question_survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_survey_id_index` (`survey_id`),
  ADD KEY `question_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id_session`,`id_user`) USING BTREE;

--
-- Chỉ mục cho bảng `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answers`
--
ALTER TABLE `answers`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `answer_survey`
--
ALTER TABLE `answer_survey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `comment_in`
--
ALTER TABLE `comment_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `like_question`
--
ALTER TABLE `like_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `question_survey`
--
ALTER TABLE `question_survey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
