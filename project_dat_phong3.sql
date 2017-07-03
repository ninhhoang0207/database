-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2017 at 11:47 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_dat_phong`
--

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE IF NOT EXISTS `dichvu` (
  `id` int(11) NOT NULL,
  `ten_dv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`id`, `ten_dv`) VALUES
(1, 'Wifi'),
(2, 'Điều hòa'),
(3, 'Nóng lạnh'),
(4, 'Gara để xe'),
(5, 'Truyền hình cáp'),
(6, 'Phục vụ đồ ăn'),
(7, 'Massage');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int(11) NOT NULL,
  `nn_id` int(11) NOT NULL,
  `ho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(11) NOT NULL,
  `trangthai` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT '0. Trống',
  `thoigianden` datetime DEFAULT NULL,
  `thoigiantra` datetime DEFAULT NULL,
  `thoigiandangky` datetime DEFAULT NULL,
  `giatien` int(11) DEFAULT NULL,
  `sophong` int(11) DEFAULT NULL,
  `songuoi` int(11) DEFAULT NULL,
  `loaiphong` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mauudai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `nn_id`, `ho`, `ten`, `sdt`, `trangthai`, `thoigianden`, `thoigiantra`, `thoigiandangky`, `giatien`, `sophong`, `songuoi`, `loaiphong`, `mauudai`) VALUES
(5, 60, '123', '123123', 123123, 'choxacnhan', '2017-04-28 22:00:00', '2017-04-29 22:00:00', '0000-00-00 00:00:00', 720, 123, 123, 'phongdon', '123123'),
(6, 60, 'Larmbert', 'Adam', 123213, 'choxacnhan', '2017-05-01 09:00:00', '2017-05-02 14:00:00', '0000-00-00 00:00:00', 400, 3, 2, 'phongdoi', '123213'),
(7, 60, '123', '123', 123123, 'choxacnhan', '2017-05-01 11:00:00', '2017-05-01 11:00:00', '2017-05-01 04:35:41', 0, 123, 123, 'phongkhac', '');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `id` int(11) NOT NULL,
  `tieude_km` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoihan_km` date NOT NULL,
  `tien_km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_01_07_073615_create_tagged_table', 1),
(14, '2014_01_07_073615_create_tags_table', 1),
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2016_06_29_073615_create_tag_groups_table', 1),
(18, '2016_06_29_073615_update_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung_khuyenmai`
--

CREATE TABLE IF NOT EXISTS `nguoidung_khuyenmai` (
  `user_id` int(11) NOT NULL,
  `khuyenmai_id` int(11) NOT NULL,
  `ngaynhan_km` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanghi_dichvu`
--

CREATE TABLE IF NOT EXISTS `nhanghi_dichvu` (
  `id` int(11) NOT NULL,
  `nn_id` int(11) NOT NULL,
  `dichvu_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanghi_dichvu`
--

INSERT INTO `nhanghi_dichvu` (`id`, `nn_id`, `dichvu_id`) VALUES
(40, 46, 1),
(41, 46, 5),
(45, 50, 1),
(46, 50, 6),
(47, 50, 7),
(62, 57, 1),
(63, 57, 2),
(64, 57, 3),
(65, 57, 4),
(66, 57, 5),
(67, 58, 1),
(68, 58, 2),
(69, 58, 3),
(70, 58, 5),
(71, 58, 6),
(72, 59, 1),
(73, 59, 2),
(74, 59, 3),
(75, 59, 4),
(76, 59, 5),
(77, 59, 6),
(78, 59, 7),
(79, 60, 1),
(80, 60, 3),
(81, 60, 5),
(82, 60, 6),
(83, 61, 1),
(84, 61, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nhanghi_giatien`
--

CREATE TABLE IF NOT EXISTS `nhanghi_giatien` (
  `nn_id` int(11) NOT NULL DEFAULT '0',
  `phongdon_motgio` int(11) DEFAULT NULL,
  `phongdon_giotieptheo` int(11) DEFAULT NULL,
  `phongdon_quadem` int(11) DEFAULT NULL,
  `phongdon_nhieungay` int(11) DEFAULT NULL,
  `phongdoi_motgio` int(11) DEFAULT NULL,
  `phongdoi_giotieptheo` int(11) DEFAULT NULL,
  `phongdoi_quadem` int(11) DEFAULT NULL,
  `phongdoi_nhieungay` int(11) DEFAULT NULL,
  `phongkhac_motgio` int(11) DEFAULT NULL,
  `phongkhac_giotieptheo` int(11) DEFAULT NULL,
  `phongkhac_quadem` int(11) DEFAULT NULL,
  `phongkhac_nhieungay` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `thoigianden_theogio` time NOT NULL,
  `thoigianden_quadem` time NOT NULL,
  `thoigiantra_theogio` time NOT NULL,
  `thoigiantra_quadem` time NOT NULL,
  `loai_thoigiantra_theogio` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai_thoigiantra_quadem` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanghi_giatien`
--

INSERT INTO `nhanghi_giatien` (`nn_id`, `phongdon_motgio`, `phongdon_giotieptheo`, `phongdon_quadem`, `phongdon_nhieungay`, `phongdoi_motgio`, `phongdoi_giotieptheo`, `phongdoi_quadem`, `phongdoi_nhieungay`, `phongkhac_motgio`, `phongkhac_giotieptheo`, `phongkhac_quadem`, `phongkhac_nhieungay`, `id`, `thoigianden_theogio`, `thoigianden_quadem`, `thoigiantra_theogio`, `thoigiantra_quadem`, `loai_thoigiantra_theogio`, `loai_thoigiantra_quadem`) VALUES
(46, 100, 10, 200, 300, 120, 12, 220, 300, 150, 15, 300, 300, 10, '06:00:00', '12:00:00', '23:59:00', '12:00:00', '0', '1'),
(50, 123, 123, 123123, 12312312, 123, 121, 12312312, 123123, 123, 12312312, 123213, 123123, 13, '07:00:00', '12:00:00', '23:00:00', '12:00:00', '0', '1'),
(57, 60, 10, 130, 230, 70, 20, 140, 250, 0, 0, 0, 0, 18, '06:00:00', '12:00:00', '12:00:00', '12:00:00', '1', '1'),
(58, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 19, '07:00:00', '12:00:00', '23:59:00', '12:00:00', '0', '1'),
(59, 250, 100, 500, 600, 300, 120, 550, 700, 350, 150, 600, 800, 20, '06:00:00', '22:01:00', '22:00:00', '12:00:00', '0', '1'),
(60, 90, 30, 150, 200, 110, 40, 180, 250, 150, 50, 220, 350, 21, '06:00:00', '23:59:00', '23:00:00', '12:00:00', '0', '1'),
(61, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 22, '15:57:00', '15:58:00', '15:58:00', '15:59:00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nhanghi_hinhanh`
--

CREATE TABLE IF NOT EXISTS `nhanghi_hinhanh` (
  `id` int(11) NOT NULL,
  `nn_id` int(11) NOT NULL,
  `url_hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanghi_hinhanh`
--

INSERT INTO `nhanghi_hinhanh` (`id`, `nn_id`, `url_hinhanh`) VALUES
(91, 46, 'stores/img_hotel/46/0/\\9411493886322.jpg'),
(92, 46, 'stores/img_hotel/46/0/\\401493886323.jpg'),
(93, 46, 'stores/img_hotel/46/1/\\4361493886330.JPG'),
(94, 46, 'stores/img_hotel/46/2/\\7021493886333.jpg'),
(95, 46, 'stores/img_hotel/46/3/\\1321493886338.jpg'),
(96, 50, 'stores/img_hotel/50/0/\\2871493886379.jpg'),
(97, 50, 'stores/img_hotel/50/0/\\1641493886379.jpg'),
(98, 50, 'stores/img_hotel/50/1/\\7841493886384.JPG'),
(99, 50, 'stores/img_hotel/50/2/\\321493886387.jpg'),
(100, 50, 'stores/img_hotel/50/3/\\131493886391.jpg'),
(101, 57, 'stores/img_hotel/57/0/\\7581493886428.jpg'),
(102, 57, 'stores/img_hotel/57/0/\\5091493886429.jpg'),
(103, 57, 'stores/img_hotel/57/1/\\5021493886439.JPG'),
(104, 57, 'stores/img_hotel/57/2/\\1301493886445.jpg'),
(105, 57, 'stores/img_hotel/57/3/\\9391493886452.jpg'),
(106, 58, 'stores/img_hotel/58/0/\\8451493886478.jpg'),
(107, 58, 'stores/img_hotel/58/0/\\6101493886478.jpg'),
(108, 58, 'stores/img_hotel/58/1/\\941493886484.JPG'),
(109, 58, 'stores/img_hotel/58/2/\\7041493886488.jpg'),
(110, 58, 'stores/img_hotel/58/3/\\5921493886491.jpg'),
(111, 59, 'stores/img_hotel/59/0/\\2381493886513.jpg'),
(112, 59, 'stores/img_hotel/59/0/\\61493886513.jpg'),
(113, 59, 'stores/img_hotel/59/1/\\9371493886516.JPG'),
(114, 59, 'stores/img_hotel/59/2/\\1861493886519.jpg'),
(115, 59, 'stores/img_hotel/59/3/\\4211493886522.jpg'),
(116, 60, 'stores/img_hotel/60/0/\\2551493886539.jpg'),
(117, 60, 'stores/img_hotel/60/0/\\9951493886539.jpg'),
(118, 60, 'stores/img_hotel/60/1/\\3551493886542.JPG'),
(119, 60, 'stores/img_hotel/60/2/\\6281493886545.jpg'),
(120, 60, 'stores/img_hotel/60/3/\\5771493886547.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nha_nghi`
--

CREATE TABLE IF NOT EXISTS `nha_nghi` (
  `id` int(11) NOT NULL,
  `ten` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `diachi` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `toado_lat` double DEFAULT NULL,
  `toado_lng` double DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(11) NOT NULL,
  `sophong` int(11) DEFAULT NULL,
  `so_phongdon` int(11) DEFAULT NULL,
  `so_phongdoi` int(11) DEFAULT NULL,
  `so_phongkhac` int(11) DEFAULT NULL,
  `sotang` int(11) DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `ghichu` text COLLATE utf8_unicode_ci,
  `nguoi_dk_id` int(11) NOT NULL,
  `thoigian_dk` date NOT NULL,
  `thoihan_dk` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nha_nghi`
--

INSERT INTO `nha_nghi` (`id`, `ten`, `diachi`, `toado_lat`, `toado_lng`, `email`, `sdt`, `sophong`, `so_phongdon`, `so_phongdoi`, `so_phongkhac`, `sotang`, `mota`, `ghichu`, `nguoi_dk_id`, `thoigian_dk`, `thoihan_dk`) VALUES
(46, 'Nhà nghỉ Cẩm Giàng', 'Cẩm Giàng, Hải Dương, Việt Nam', 20.9479485, 106.22867999999994, NULL, 123213, NULL, 12, 10, 1, 3, '', '', 1, '2017-04-04', '2017-04-21'),
(50, 'Nhà nghỉ Khuất Duy Tiến', 'ngõ 13 Khuất Duy Tiến, Hà Nội, Việt Nam', 20.9946597, 105.79789490000007, NULL, 123123, NULL, 123, 12, 12, 12312, '<p>H&agrave; h&agrave;</p>\r\n', 'Đây là ghi chú của chủ nhà nghỉ\r\n', 1, '2017-04-04', '2017-04-04'),
(57, 'Nhà nghỉ Mai Hương', 'Ngõ 204 Kim Giang, Kim Giang, Hà Nội, Việt Nam', 20.9788902, 105.81716610000001, NULL, 123456789, NULL, 15, 5, 0, 3, '<p><strong>Đ&acirc;y l&agrave; m&ocirc; tả của nh&agrave; nghỉ</strong></p>\r\n', 'Đây là ghi chú của nhà nghỉ', 1, '2017-04-25', '2017-04-25'),
(58, 'Nhà nghỉ Nguyễn Xiển', 'Nguyễn Xiển, Hà Nội, Việt Nam', 20.9853298, 105.80764410000006, NULL, 123, NULL, 12, 10, 5, 12, '<p>Đ&acirc;y l&agrave; m&ocirc; tả của nh&agrave; nghỉ.</p>\r\n', '', 1, '2017-04-27', '2017-05-01'),
(59, 'Nhà nghĩ Bình minh', 'Nhà Nghỉ Bình Minh, Kim Mã, Hà Nội, Việt Nam', 21.0312273, 105.82221759999993, NULL, 1237213, NULL, 12, 19, 8, 10, '<p>Kh&ocirc;ng c&oacute; m&ocirc; tả n&agrave;o được t&igrave;m thấy.</p>\r\n', 'KHÔNG CÓ GHI CHÚ NÀO', 5, '2017-04-27', '2017-04-29'),
(60, 'Nhà nghỉ Ánh Dương', 'Nhà Nghỉ Ánh Dương, Mễ Trì Hạ, Mễ Trì, Hà Nội, Việt Nam', 21.0113751, 105.7827294, NULL, 5123213, NULL, 10, 5, 5, 5, '<p>Kh&ocirc;ng c&oacute; m&ocirc; tả n&agrave;o</p>\r\n', '', 5, '2017-04-27', '2017-04-29'),
(61, '123213', 'Hà Nội, Việt Nam', 21.0031177, 105.82014079999999, '123@gmail.com', 123, NULL, 123, 123, 123, 123, '', '', 6, '2017-05-16', '2017-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE IF NOT EXISTS `phong` (
  `id` int(11) NOT NULL,
  `loaiphong` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `sophong` int(11) DEFAULT '0',
  `tang` int(11) DEFAULT NULL,
  `thoigian_dk` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `loaiphong`, `user_id`, `trangthai`, `mota`, `sophong`, `tang`, `thoigian_dk`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '123', 123, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tagged`
--

CREATE TABLE IF NOT EXISTS `tagging_tagged` (
  `id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tags`
--

CREATE TABLE IF NOT EXISTS `tagging_tags` (
  `id` int(10) unsigned NOT NULL,
  `tag_group_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag_groups`
--

CREATE TABLE IF NOT EXISTS `tagging_tag_groups` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `email`, `role`, `phone`, `address`, `password`, `remember_token`, `created_at`, `updated_at`, `end_date`) VALUES
(1, '123213', '123213', 'Admin', 'admin@admin.com', 'admin', 123124123, '213213', '$2y$10$Vd7j/c9aeHwCdEV0UK7CYeWiwmIXlcBNVNykUmpSnZ6zOBZyk7Bp.', '7BjIS5UKH9rcPSymxPU1l7iKz8asnaguurdA65xHLxRT6CpnmWJKeHnjUQGo', '2017-04-04 17:00:00', NULL, '0000-00-00'),
(2, NULL, NULL, 'hoang', 'user@gmail.com', 'user', 0, NULL, '$2y$10$kScKYz6lq/C370YTCrqa3OBm6O5GntAuC4QB/5kTXiDx1K1QogHIK', 'ZWZkhzIU8y35xAH80YEE21eYOQdsVKycF9fGG9wgeNBCoulohVAfxiLmIu4P', '2017-04-24 01:57:28', '2017-04-24 01:57:28', NULL),
(5, NULL, NULL, 'Ninh Hoàng', 'congtu_baclieu_hd@yahoo.com.vn', 'user', 12312321, NULL, '$2y$10$1/g98OnOj86AVxL71yYJqODa4NBE730cXVnCWGecuT10l3GWztOb2', 'qbKXvrvoH12SHd3w6mYMtx7JagwoVNIMv8hnjbLFnCXvaZ4RGSajiUAXnq0j', NULL, NULL, NULL),
(6, NULL, NULL, 'hoang ninhvan', 'ninhvanhoang0207@gmail.com', 'user', 132, NULL, '$2y$10$xjKlj6N0pxIXYMDEgGNV5OB8l/byjG72NUnuhsQ7wBs5EL3C38Bzi', 'hCC3lqcwMskD2dVsw2sYD3gZPwjfYsNBmnGBrtmm4IT7VsI8cWXA9jVmWeD2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanghi_dichvu`
--
ALTER TABLE `nhanghi_dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanghi_giatien`
--
ALTER TABLE `nhanghi_giatien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanghi_hinhanh`
--
ALTER TABLE `nhanghi_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nha_nghi`
--
ALTER TABLE `nha_nghi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  ADD KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  ADD KEY `tagging_tagged_tag_slug_index` (`tag_slug`);

--
-- Indexes for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tags_slug_index` (`slug`),
  ADD KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`);

--
-- Indexes for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagging_tag_groups_slug_index` (`slug`);

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
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nhanghi_dichvu`
--
ALTER TABLE `nhanghi_dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `nhanghi_giatien`
--
ALTER TABLE `nhanghi_giatien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nhanghi_hinhanh`
--
ALTER TABLE `nhanghi_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `nha_nghi`
--
ALTER TABLE `nha_nghi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tagging_tagged`
--
ALTER TABLE `tagging_tagged`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging_tag_groups`
--
ALTER TABLE `tagging_tag_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tagging_tags`
--
ALTER TABLE `tagging_tags`
  ADD CONSTRAINT `tagging_tags_tag_group_id_foreign` FOREIGN KEY (`tag_group_id`) REFERENCES `tagging_tag_groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
