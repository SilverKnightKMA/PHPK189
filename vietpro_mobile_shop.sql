-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 03:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietpro_mobile_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Blackberry'),
(3, 'HTC'),
(21, 'huawei'),
(1, 'iPhone'),
(4, 'Nokia'),
(7, 'OPPO'),
(20, 'PIXEL'),
(2, 'Samsung'),
(5, 'Sony'),
(19, 'Vinsmart'),
(9, 'Vivo'),
(8, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text COLLATE utf8_unicode_ci NOT NULL,
  `comm_status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comm_id`, `prd_id`, `comm_name`, `comm_mail`, `comm_date`, `comm_details`, `comm_status`) VALUES
(1, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(2, 2, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(3, 3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(4, 4, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(5, 5, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(6, 6, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(7, 7, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(8, 8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(9, 9, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(10, 10, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(11, 11, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(12, 12, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(13, 13, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(14, 14, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(15, 15, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(16, 16, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(17, 17, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(18, 18, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(19, 19, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(20, 20, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(21, 21, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(22, 22, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(23, 23, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(24, 24, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(25, 25, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(26, 26, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(27, 27, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(28, 28, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(29, 29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(30, 30, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(31, 50, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(32, 50, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(33, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(34, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(35, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(36, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(37, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(38, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(39, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(40, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(41, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(42, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(43, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(45, 0, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 00:00:00', '<p>Đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(47, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 23:51:23', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(48, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:51:50', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(50, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:57:36', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(51, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:57:47', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(52, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:57:48', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(53, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:57:50', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(55, 1, 'do viet duc', 'vitdog93@gmail.com', '2020-07-05 23:59:21', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 0),
(57, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:12', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(58, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:16', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(59, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:18', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(60, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:18', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(61, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:19', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(62, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:20', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(63, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:20', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(64, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:20', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(65, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:20', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(66, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:21', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(67, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:21', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(68, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:21', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(69, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:21', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(70, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:22', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(71, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:22', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(72, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:22', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(73, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:22', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(74, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:22', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(75, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 18:42:23', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời.</p>\r\n', 1),
(76, 49, 'đỗ việt đức', 'vitdog93@gmail.com', '2020-07-06 18:54:57', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời</p>\r\n', 1),
(77, 49, 'do viet duc', 'vitdog93@gmail.com', '2020-07-06 18:56:53', '<p>đ&acirc;y l&agrave; một sản phẩm tuyệt vời ch&oacute;</p>\r\n', 1),
(91, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 19:25:49', '<p>aksldjakld jaskld jalksd</p>\r\n', 0),
(92, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 19:26:01', '<p>đ&acirc;sdasdasdasdasd</p>\r\n', 0),
(93, 49, 'nguyen van a', 'nguyenvana@gmail.com', '2020-07-06 19:27:11', '<p>Sản phẩm n&agrave;y ch&uacute;ng t&ocirc;i đang cập nhật nội dung chi tiết. fuck fuck fuck fuck fuck fuck fuck fuck fuck</p>\r\n', 0),
(94, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 21:00:07', '<p>fuck fuck ngu đm hay</p>\r\n', 1),
(95, 49, 'đỗ việt đức', 'vitdog93@gmail.com', '2020-07-06 21:02:25', '<p>đụ m&aacute; , shit shit shit</p>\r\n', 0),
(96, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 23:30:00', '<p>adsadada</p>\r\n', 1),
(97, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 23:30:00', '<p>fuck fuck</p>\r\n', 1),
(98, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-05 23:30:00', '<p>đ&acirc;y l&agrave; sản phẩm tuyệt vời</p>\r\n', 1),
(99, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0000-00-00 00:00:00', '<p>sdasdad</p>\r\n', 1),
(100, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 21:41:53', '<p>h&agrave; nội m&ugrave;a thu</p>\r\n', 1),
(101, 49, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2020-07-06 21:42:50', '<p>adadadadasdasd</p>\r\n', 1),
(102, 49, 'tung', 'tung@email.com', '2020-07-12 07:29:57', '<p>sfđsffsdff</p>\r\n', 1),
(103, 49, 'tung', 'tung@email.com', '2020-07-12 07:30:09', 'sfđsffsdff', 0),
(104, 49, 'tung', 'tung@email.com', '2020-07-12 07:57:31', 'sfđsffsdff', 0);

-- --------------------------------------------------------

--
-- Table structure for table `config_mail`
--

CREATE TABLE `config_mail` (
  `mail_id` int(10) NOT NULL,
  `mail_host` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_smtpsecure` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_port` int(10) NOT NULL,
  `mail_setform` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_addcc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail_altbody` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_mail`
--

INSERT INTO `config_mail` (`mail_id`, `mail_host`, `mail_username`, `mail_password`, `mail_smtpsecure`, `mail_port`, `mail_setform`, `mail_addcc`, `mail_subject`, `mail_altbody`) VALUES
(1, 'smtp.gmail.com', 'anhnhatdev2504@gmail.com', 'aooetapcleuuisun', 'ssl', 465, 'quantri.vietproshop@gmail.com', 'quantri.vietproshop@gmail.com', 'Xác nhận đơn hàng từ Vietpro Mobile Shop', 'Mô tả đơn hàng');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_warranty`, `prd_accessories`, `prd_new`, `prd_promotion`, `prd_status`, `prd_featured`, `prd_details`) VALUES
(1, 1, 'iPhone 7 Plus 32GB Rose Gold', 'iPhone-7-Plus-32GB-Rose-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(2, 1, 'iPhone X 256GB Silver Seedstock', 'iPhone-X-256GB-Silver-Seedstock.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(3, 1, 'iPhone Xr 2 Sim 64GB Yellow', 'iPhone-Xr-2-Sim-64GB-Yellow.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(4, 1, 'iPhone Xr 2 Sim 56GB Red', 'iPhone-Xr-2-Sim-256GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(5, 1, 'iPhone Xs 256GB Gold', 'iPhone-Xs-256GB-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(6, 2, 'Samsung Galaxy A9 2018 Black', 'Samsung-Galaxy-A9-2018-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(7, 2, 'Samsung Galaxy J2 Core Gold', 'Samsung-Galaxy-J2-Core-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(8, 2, 'Samsung Galaxy J4 Core Black', 'Samsung-Galaxy-J4-Core-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(9, 2, 'Samsung Galaxy S9 Plus 64GB Orchid Gray', 'Samsung-Galaxy-S9-Plus-64GB-Orchid-Gray.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(10, 2, 'Samsung Galaxy S9 Plus Black 128GB', 'Samsung-Galaxy-S9-Plus-Black-128GB.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(11, 4, 'Nokia 1 red', 'Nokia-1-red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(12, 4, 'Nokia 3.1 Black', 'Nokia-3.1-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(13, 4, 'Nokia 6.1 Plus Blue', 'Nokia-6.1-Plus-Blue.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(14, 4, 'Nokia 6.1 Plus White', 'Nokia-6.1-Plus-White.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(15, 4, 'Nokia 150 White', 'Nokia-150-White.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(16, 7, 'OPPO A3s 16GB Red', 'OPPO-A3s–16GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(17, 7, 'OPPO A7 64GB Blue', 'OPPO-A7-64GB-Blue.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(18, 7, 'OPPO F7 128GB Black', 'OPPO-F7-128GB-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(19, 7, 'OPPO F9 Sunrise Red', 'OPPO-F9-Sunrise-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(20, 7, 'OPPO R17 Pro Lavender', 'OPPO-R17-Pro-Lavender.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(21, 8, 'Xiaomi Mi 8 Pro Black', 'Xiaomi-Mi-8-Pro-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(22, 8, 'Xiaomi Mi A1 Black', 'Xiaomi-Mi-A1-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(23, 8, 'Xiaomi Mi A1 Gold', 'Xiaomi-Mi-A1-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(24, 8, 'Xiaomi Mi Max 3 Ram 4 64GB-Black', 'Xiaomi-Mi-Max-3-Ram-4–64GB-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(25, 8, 'Xiaomi Redmi Note 6 Pro 32GB Blue', 'Xiaomi-Redmi-Note-6-Pro–32GB-Blue.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(26, 9, 'Vivo V7 Gold', 'Vivo-V7-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(27, 9, 'Vivo V9 Gold', 'Vivo-V9-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(28, 9, 'Vivo Y53C Gold', 'Vivo-Y53C-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(29, 9, 'Vivo Y69 Gold', 'Vivo-Y69-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(30, 9, 'Vivo Y81i Red', 'Vivo-Y81i-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(31, 8, 'dien thoai ngu si', 'Xiaomi-Redmi-Note-6-Pro–32GB-Blue.png', 4294967295, 'bao test 1 ngày ', 'cáp sạc tai nghe', 'máy lướt', 'gói bảo hành lừa đảo', 1, 1, 'mua đi rồi có bạn gái '),
(32, 9, 'dien thoai hoi thong minh', 'Xiaomi-Redmi-Note-6-Pro–32GB-Blue.png', 100000, 'không có ', 'không có', 'máy cũ', 'không có ', 0, 0, 'may deu dung mua'),
(33, 9, 'dien thoai hoi thong minh 1', 'Xiaomi-Redmi-Note-6-Pro–32GB-Blue.png', 100000, 'không có ', 'không có', 'máy cũ', 'không có ', 0, 0, '<p>may deu dung mua</p>\r\n'),
(36, 7, 'oppo', 'OPPO-F9-Sunrise-Red.png', 1000000, 'khong ', 'khong ', '99%', 'khong ', 1, 0, ''),
(37, 7, 'oppo f1 ', 'OPPO-A7-64GB-Blue.png', 10000000, 'khong ', 'khong ', '99%', 'khong ', 0, 0, ''),
(38, 1, 'iPhone 7 Plus 32GB Rose Gold', 'iPhone-7-Plus-32GB-Rose-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(39, 8, 'Xiaomi Mi A1 Gold', 'Xiaomi-Mi-A1-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(40, 1, 'iPhone 7 Plus 32GB Rose Gold', 'iPhone-7-Plus-32GB-Rose-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(41, 1, 'iPhone X 256GB Silver Seedstock', 'iPhone-X-256GB-Silver-Seedstock.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(42, 2, 'Samsung Galaxy A9 2018 Black', 'Samsung-Galaxy-A9-2018-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(43, 2, 'Samsung Galaxy J2 Core Gold', 'Samsung-Galaxy-J2-Core-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(44, 4, 'Nokia 1 red', 'Nokia-1-red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(45, 7, 'OPPO A3s 16GB Red', 'OPPO-A3s–16GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(46, 8, 'Xiaomi Mi 8 Pro Black', 'Xiaomi-Mi-8-Pro-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(47, 9, 'Vivo V7 Gold', 'Vivo-V7-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(48, 8, 'dien thoai ngu si', 'Xiaomi-Redmi-Note-6-Pro–32GB-Blue.png', 4294967295, 'bao test 1 ngày ', 'cáp sạc tai nghe', 'máy lướt', 'gói bảo hành lừa đảo', 1, 1, 'mua đi rồi có bạn gái '),
(49, 1, 'iPhone 7 Plus 32GB Rose Gold', 'iPhone-7-Plus-32GB-Rose-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(50, 1, 'iPhone Xr 2 Sim 64GB Yellow', 'iPhone-Xr-2-Sim-64GB-Yellow.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(51, 1, 'iPhone Xr 2 Sim 56GB Red', 'iPhone-Xr-2-Sim-256GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(52, 1, 'iPhone Xs 256GB Gold', 'iPhone-Xs-256GB-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(53, 2, 'Samsung Galaxy J4 Core Black', 'Samsung-Galaxy-J4-Core-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(54, 2, 'Samsung Galaxy S9 Plus 64GB Orchid Gray', 'Samsung-Galaxy-S9-Plus-64GB-Orchid-Gray.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(55, 2, 'Samsung Galaxy S9 Plus Black 128GB', 'Samsung-Galaxy-S9-Plus-Black-128GB.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(56, 4, 'Nokia 3.1 Black', 'Nokia-3.1-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.');

-- --------------------------------------------------------

--
-- Table structure for table `rating_prd`
--

CREATE TABLE `rating_prd` (
  `id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_prd`
--

INSERT INTO `rating_prd` (`id`, `prd_id`, `rate`) VALUES
(1, 21, 5),
(2, 21, 4),
(3, 49, 4),
(4, 52, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rep_cmt`
--

CREATE TABLE `rep_cmt` (
  `rep_id` int(11) NOT NULL,
  `rep_keyword` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rep_cmt`
--

INSERT INTO `rep_cmt` (`rep_id`, `rep_keyword`) VALUES
(7, 'dmm'),
(1, 'duongdbrr'),
(9, 'đm'),
(10, 'fdfdfdfdsffdf'),
(11, 'fdgsgsfdgfdg'),
(8, 'fuckyou'),
(6, 'iporn');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'Vietpro Academy', 'vietpro.edu.vn@gmail.com', '123456', 1),
(2, 'Administrator', 'admin@gmail.com', '123456', 1),
(3, 'Nguyễn Van A', 'nguyenvana@gmail.com', '123456', 2),
(4, 'Nguyễn Van B', 'nguyenvanb@gmail.com', '123456', 2),
(5, 'Nguyễn Van C', 'nguyenvanc@gmail.com', '123456', 2),
(6, 'Nguyễn Van D', 'nguyenvand@gmail.com', '123456', 2),
(9, 'do viet duc', 'silverknightkma1912@gmail.com', '200c7ddd05d339f80fea', 1),
(10, 'Hoàng Phương Anh', 'phkanhuong42@gmail.com', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

--
-- Indexes for table `config_mail`
--
ALTER TABLE `config_mail`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `rating_prd`
--
ALTER TABLE `rating_prd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rep_cmt`
--
ALTER TABLE `rep_cmt`
  ADD PRIMARY KEY (`rep_id`),
  ADD UNIQUE KEY `rep_keyword` (`rep_keyword`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rating_prd`
--
ALTER TABLE `rating_prd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rep_cmt`
--
ALTER TABLE `rep_cmt`
  MODIFY `rep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
