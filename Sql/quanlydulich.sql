-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 17, 2022 lúc 03:16 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydulich`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agencies`
--

CREATE TABLE `agencies` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `agencies`
--

INSERT INTO `agencies` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-16 19:45:55', '2022-06-17 01:03:53', NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-16 19:45:55', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-16 19:45:55', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-16 19:45:55', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-16 19:45:55', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-16 19:45:55', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-16 19:45:55', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-16 19:45:55', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-16 19:45:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agency_tours`
--

CREATE TABLE `agency_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agency_id` smallint(5) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phòng kế toán', '2022-06-16 19:45:55', NULL, NULL),
(2, 'Phòng tài chín', '2022-06-16 19:45:55', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-16 19:45:55', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-16 19:45:55', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-16 19:45:55', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-16 19:45:55', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-16 19:45:55', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-16 19:45:55', NULL, NULL);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_06_16_192751_create_agencies_table', 1),
(3, '2022_06_16_192827_create_departments_table', 1),
(4, '2022_06_16_192839_create_positions_table', 1),
(5, '2022_06_16_192851_create_users_table', 1),
(6, '2022_06_16_193050_create_regions_table', 1),
(7, '2022_06_16_193100_create_tours_table', 1),
(8, '2022_06_16_193119_create_agency_tours_table', 1),
(9, '2022_06_16_193151_create_tour_registrations_table', 1),
(10, '2022_06_16_193208_create_supports_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nhân viên phân tích dữ liệu', '2022-06-17 00:45:56', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-17 00:45:56', NULL, NULL),
(3, 'Lập trình viên', '2022-06-17 00:45:56', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-17 00:45:56', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-17 00:45:56', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-17 00:45:56', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-17 00:45:56', NULL, NULL),
(8, 'Người giám sát', '2022-06-17 00:45:56', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-17 00:45:56', NULL, NULL),
(10, 'Sếp', '2022-06-17 00:45:56', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-17 00:45:56', NULL, NULL),
(12, 'Thư kí', '2022-06-17 00:45:56', NULL, NULL),
(13, 'Nhân viên', '2022-06-17 00:45:56', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-17 00:45:56', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-17 00:45:56', NULL, NULL),
(16, 'Quản lý', '2022-06-17 00:45:56', NULL, NULL),
(17, 'Giám đốc', '2022-06-17 00:45:56', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-17 00:45:56', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-17 00:45:56', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-17 00:45:56', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-17 00:45:56', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-17 00:45:56', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-17 00:45:56', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-17 00:45:56', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-17 00:45:56', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-17 00:45:56', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-17 00:45:56', NULL, NULL),
(28, 'Trưởng Bộ phận', '2022-06-17 00:45:56', NULL, NULL),
(29, 'Trưởng phòng nhân sự', '2022-06-17 00:45:56', NULL, NULL),
(30, 'Trưởng phòng tài chính', '2022-06-17 00:45:56', NULL, NULL),
(31, 'Trưởng phòng kế toán', '2022-06-17 00:45:56', NULL, NULL),
(32, 'Trưởng phòng sản xuất', '2022-06-17 00:45:56', NULL, NULL),
(33, 'Trưởng phòng marketing', '2022-06-17 00:45:56', NULL, NULL),
(34, 'Chủ tịch', '2022-06-17 00:45:56', NULL, NULL),
(35, 'Thành viên ban quản trị', '2022-06-17 00:45:56', NULL, NULL),
(36, 'Thư kín', '2022-06-17 00:45:56', NULL, NULL),
(37, 'Phó phòng kinh doanh', '2022-06-17 00:45:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regions`
--

CREATE TABLE `regions` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tây Bắc Bộ', '2022-06-16 19:45:55', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-06-16 19:45:55', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-06-16 19:45:55', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-06-16 19:45:55', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-06-16 19:45:55', NULL, NULL),
(6, 'Vùng Duyên hải Nam Trung Bộ', '2022-06-16 19:45:55', NULL, NULL),
(7, 'Vùng Đông Nam Bộ', '2022-06-16 19:45:55', NULL, NULL),
(8, 'Vùng đồng bằng sông Cửu Long', '2022-06-16 19:45:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_year` smallint(6) DEFAULT NULL,
  `end_year` smallint(6) DEFAULT NULL,
  `min_condition` smallint(6) DEFAULT NULL,
  `max_condition` smallint(6) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_start_date` datetime NOT NULL,
  `tour_end_date` datetime NOT NULL,
  `registration_start_date` datetime NOT NULL,
  `registration_end_date` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `max_people` int(11) NOT NULL,
  `region_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_registrations`
--

CREATE TABLE `tour_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `registration_date` datetime NOT NULL,
  `relative_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_id` smallint(5) UNSIGNED NOT NULL,
  `department_id` smallint(5) UNSIGNED NOT NULL,
  `position_id` smallint(5) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `email_verified_at`, `gender`, `phone`, `citizen_card`, `agency_id`, `department_id`, `position_id`, `start_date`, `is_admin`, `created_at`, `updated_at`, `deleted_at`, `remember_token`) VALUES
(1, 'Veronica Donnelly', 'veronicadonnelly0206', '$2y$10$ihy3v492D2VjUlOGzjJZHuzdqENQ7pmik52n5lmNeziEAdkFMaCaC', 'veronicadonnelly0206@gmail.com', '2022-06-17 00:45:56', 'Nữ', '0977794877', '302498616', 2, 6, 8, '2003-09-04 05:48:46', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '2t1xg2bfnj'),
(2, 'Ernesto Stanton DDS', 'ernestostantondds0105', '$2y$10$LaFa79AY45/NA2XGFB3.KuhsLP47C7BCOfIh0kSKaeN6GtKdc18UK', 'ernestostantondds0105@gmail.com', '2022-06-17 00:45:56', 'Nam', '0109984008', '336498260', 1, 5, 28, '2009-05-08 06:48:15', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'xbkpZHRiqq'),
(3, 'Fabian Dicki', 'fabiandicki0503', '$2y$10$js2BFS5FvAqLQ57LaSYmFujSvZjgiNx//iG6ydQul.IZ7jANUwu36', 'fabiandicki0503@gmail.com', '2022-06-17 00:45:56', 'Nam', '0430664212', '395571283', 5, 3, 22, '2004-08-30 13:19:36', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'L6pvgPFJWT'),
(4, 'Sister Johns III', 'sisterjohnsiii0602', '$2y$10$n3DVCjKDqXbcn2RG7Xk6UuXlKalAUGzePe8dMhIt7DKNTYvIFZSyy', 'sisterjohnsiii0602@gmail.com', '2022-06-17 00:45:56', 'Nam', '0119156380', '352888348', 6, 2, 14, '2005-11-26 15:08:02', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '8VF0AGgM6H'),
(5, 'Eryn Yundt IV', 'erynyundtiv0306', '$2y$10$6BnqiHZXc8M/IlyduZnCAu3zVzavOcW/m9w324H6nfDkPk7JFWioy', 'erynyundtiv0306@gmail.com', '2022-06-17 00:45:56', 'Nam', '0542748792', '381766630', 3, 6, 15, '2009-03-17 05:54:43', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '21KM4rChWy'),
(6, 'Mrs. Aubrey Cummings', 'mrs.aubreycummings0305', '$2y$10$T.8tb4SzO7i1OUTO2L5WPe1UaKb/6G8ehj2nabrBOwJ1twm0PsE5W', 'mrs.aubreycummings0305@gmail.com', '2022-06-17 00:45:57', 'Nam', '0793793011', '332674738', 3, 5, 7, '2008-03-31 01:52:05', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'vf4jBTsoXd'),
(7, 'Dr. Jerrold Aufderhar', 'dr.jerroldaufderhar0404', '$2y$10$d4MY/gxeOFJvM5bXgB9ZtuqHVddnxrzZtCP66.O4qj7JuyHwYW6h.', 'dr.jerroldaufderhar0404@gmail.com', '2022-06-17 00:45:57', 'Nam', '0392337750', '326503429', 4, 4, 23, '2020-05-03 14:18:14', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'MTR5QU1dya'),
(8, 'Delmer Nolan DDS', 'delmernolandds0904', '$2y$10$kChluSst9q78vZrD.Mba2.rgFXcNWViwRMDbn/O1ALeZiL.e8K.8C', 'delmernolandds0904@gmail.com', '2022-06-17 00:45:57', 'Nam', '0531953692', '380406437', 9, 4, 15, '2013-05-14 10:04:37', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'pW6wj56Q2Y'),
(9, 'Elsie Toy PhD', 'elsietoyphd0601', '$2y$10$vUzPjjO.nk7Io3tpKlYPpevUVxc/Z3zD7RdsNbg8uslp1CMf/piYO', 'elsietoyphd0601@gmail.com', '2022-06-17 00:45:57', 'Nữ', '0691863743', '316382942', 6, 1, 15, '2016-06-25 01:23:14', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'pDtljz4mpI'),
(10, 'Marlen Bayer', 'marlenbayer0705', '$2y$10$pz8.mNUf.MSlcLKauks0UeVKorwGsh124jiKaguXLROixTeLBA3p2', 'marlenbayer0705@gmail.com', '2022-06-17 00:45:57', 'Nữ', '0593691043', '383785463', 7, 5, 24, '2008-10-28 05:24:51', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'KhrRXc909f'),
(11, 'Prof. Anibal Lockman', 'prof.aniballockman0406', '$2y$10$IouLjOpguJwRpNOC9v8X4ONMut0xTIIJaDokctK1kFoR6iag2FARC', 'prof.aniballockman0406@gmail.com', '2022-06-17 00:45:57', 'Nam', '0630063887', '371447625', 4, 6, 3, '2006-07-27 11:09:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'GKaa2zsNjy'),
(12, 'Cathryn Strosin DVM', 'cathrynstrosindvm0401', '$2y$10$dd6VVd4UEQx4iA82P0s9S.0Iq2u7eFt0TLZb6pQETja3Wh75.NO8G', 'cathrynstrosindvm0401@gmail.com', '2022-06-17 00:45:57', 'Nam', '0203267447', '352011808', 4, 1, 22, '2010-11-29 14:24:19', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Sabjw6tUuv'),
(13, 'Mr. Rico Johnson V', 'mr.ricojohnsonv0604', '$2y$10$b2nnJTcfw3XYi1YLf1yMtenaLDu97Mr7jyw3hp8WHwuAkxFSibxVC', 'mr.ricojohnsonv0604@gmail.com', '2022-06-17 00:45:57', 'Nữ', '0450636410', '339132822', 6, 4, 13, '2019-01-05 09:37:02', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'r1nfLvKvT6'),
(14, 'Domenick Lemke', 'domenicklemke0802', '$2y$10$eeETUdp604BQaVVSz2jIY.Fon9IP98EORuOb6XpoIsNOgU7hIE8qC', 'domenicklemke0802@gmail.com', '2022-06-17 00:45:57', 'Nữ', '0055451443', '379658868', 8, 2, 20, '2020-01-19 19:33:53', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'M0U4ksM0DD'),
(15, 'Ronny Rau', 'ronnyrau0103', '$2y$10$qdehqY2skz2.7TEV8.X65eoo8hm1zhLd9pT25G0njnrzhE8QUpsIq', 'ronnyrau0103@gmail.com', '2022-06-17 00:45:57', 'Nam', '0545657321', '332310248', 1, 3, 6, '2020-02-24 19:27:13', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'U4gEeWthlv'),
(16, 'Dalton Hagenes DDS', 'daltonhagenesdds0406', '$2y$10$K5yNUHxpk/kGBRacksb7dOeQ.05BSNVU0MUXO5NuiRBSnTR9spVYK', 'daltonhagenesdds0406@gmail.com', '2022-06-17 00:45:57', 'Nam', '0155706400', '382803690', 4, 6, 4, '2021-06-04 16:11:35', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'BKabSz0MBO'),
(17, 'Marcellus Toy', 'marcellustoy0405', '$2y$10$PeB5kNX16Rnq8bj442hzHupWgktQrQ9TMBaEpoi42i1UxOOr2fhxi', 'marcellustoy0405@gmail.com', '2022-06-17 00:45:57', 'Nam', '0765761625', '374057225', 4, 5, 28, '2003-09-14 05:38:35', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'AbeRWdfIoY'),
(18, 'Nicholaus Marquardt Jr.', 'nicholausmarquardtjr.0804', '$2y$10$JF4AUc6QC9hTI6sjWE/GrOWe52Hl4Ku1Z6lRp4qDDkJqK.PWa/q3C', 'nicholausmarquardtjr.0804@gmail.com', '2022-06-17 00:45:57', 'Nam', '0278781625', '312438144', 8, 4, 2, '2015-12-02 05:15:30', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'bHgFAtcFpd'),
(19, 'Miss Juliet Kiehn', 'missjulietkiehn0207', '$2y$10$9gE31.dZ8.xPavhh8EB1y.gE3ypjlqtagbMOhLbrv1TckGzMuAq.e', 'missjulietkiehn0207@gmail.com', '2022-06-17 00:45:57', 'Nam', '0265678675', '365527494', 2, 7, 32, '2002-11-29 14:21:00', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'cyNJzMGNfJ'),
(20, 'Carleton Koch', 'carletonkoch0908', '$2y$10$C9rDSVR7X.VRsbzF0uV8NO6THNP8izmBE61UyEZ5eH0H7XZoi7QES', 'carletonkoch0908@gmail.com', '2022-06-17 00:45:57', 'Nữ', '0383132615', '371581837', 9, 8, 6, '2010-04-02 12:27:40', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '7qdfU7QB8y'),
(21, 'Jarrell Leuschke', 'jarrellleuschke0107', '$2y$10$T5DsJbr.UnBnnBfs17i8gubXVRHULLte36IFJMsyJ2pae61Uzizki', 'jarrellleuschke0107@gmail.com', '2022-06-17 00:45:58', 'Nam', '0550411734', '322780826', 1, 7, 16, '2016-10-14 15:29:41', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'cRvHDsPRWk'),
(22, 'Jules Thiel', 'julesthiel0504', '$2y$10$51USFDxLMZ3oi4DNMXV9vuqL0gOoXJnQ4u8lkSNJ3yXxoT833p8um', 'julesthiel0504@gmail.com', '2022-06-17 00:45:58', 'Nam', '0814126742', '363824646', 5, 4, 10, '2012-10-11 00:14:44', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Ffm1GKR2Wp'),
(23, 'Dariana Eichmann V', 'darianaeichmannv0605', '$2y$10$zkD/mSNXRfvVdTl4ilwKTewesQZPYPxm3bAYnDCAxi/x/Rqc.FGpq', 'darianaeichmannv0605@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0950328485', '367910356', 6, 5, 36, '2014-06-24 11:37:25', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Fi52j1tZSk'),
(24, 'Bryon Morissette', 'bryonmorissette0706', '$2y$10$RWOakAO1K96tAC3Ue8oopOpKkmpV5AmegHJs/e9dFpnv/d8gsZI7G', 'bryonmorissette0706@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0631848756', '334800786', 7, 6, 10, '2004-07-01 16:40:40', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Pbe8d5Ae22'),
(25, 'Percival Halvorson', 'percivalhalvorson0801', '$2y$10$8i9kcTWBnMVv1p4.h/VJKe./9SXdWZ2dSIseeohIxfdoJIuFQGzyi', 'percivalhalvorson0801@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0946708824', '393739166', 8, 1, 3, '2019-12-05 22:23:33', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '3JEQbXl7Ex'),
(26, 'Mrs. Abigayle King', 'mrs.abigayleking0205', '$2y$10$OhL8pB6synOI3AfwU77oZupOVxiU.ra10BIK9wzn8V2Q/MoCx2egq', 'mrs.abigayleking0205@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0246707652', '359415030', 2, 5, 5, '2015-07-13 05:46:08', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'NKJGVvpwcg'),
(27, 'Elisa Hickle', 'elisahickle0303', '$2y$10$DBYSUKnSwSQqW6e.9Idf6.mc5eujkoj3Un4ohsxb9WeJnW3uLDTPy', 'elisahickle0303@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0495974964', '337401923', 3, 3, 14, '2018-12-21 13:40:14', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'vIYxqEnrth'),
(28, 'Dr. Isom Murazik', 'dr.isommurazik0301', '$2y$10$BJY17BTYjRkuQX41KDd4r.cBO8Kjlewc7mLjKhwq3mVZkSKQ8z./2', 'dr.isommurazik0301@gmail.com', '2022-06-17 00:45:58', 'Nam', '0041159094', '391870416', 3, 1, 25, '2004-03-24 20:56:15', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'YcQc6IDqNB'),
(29, 'Ms. Loraine Wunsch', 'ms.lorainewunsch0908', '$2y$10$tb0oMNxLnEqeV4DAK3MFQu7dAQ4qbA2E3a628wD5whTUfwi1HCh8K', 'ms.lorainewunsch0908@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0337170868', '340542822', 9, 8, 36, '2021-02-03 02:38:35', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'bdngqkjRJa'),
(30, 'Dr. Maryjane Herman', 'dr.maryjaneherman0105', '$2y$10$HJBEHnyPBQAJLJOc8jSB2OXbWnzt80efrI2iRKAYjQRwvsOKZ.fE6', 'dr.maryjaneherman0105@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0241751943', '314588248', 1, 5, 29, '2002-06-18 23:30:22', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '8tK7d9tPEP'),
(31, 'Dannie White', 'danniewhite0107', '$2y$10$rUkLwUNJYQfKzzy21OESBu1Rd6uepT3/JCf1T0wJ9Pndzik.PvYbC', 'danniewhite0107@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0090274717', '377700014', 1, 7, 23, '2016-10-19 23:16:10', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'e37bkop6M7'),
(32, 'Lois Strosin', 'loisstrosin0106', '$2y$10$EtYr06AFJqfr8Mwm7R7qK.3Jdq3efjhwBgoz6UU/1kJ6E5eO9/gzi', 'loisstrosin0106@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0312385933', '316823482', 1, 6, 14, '2021-09-13 02:13:17', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'bIv2yHjdLU'),
(33, 'Heath Cormier', 'heathcormier0505', '$2y$10$lj82PIT4Eo8xxMkwn6fnm.pRmnqInW.2ltoE62WDpGqI10RL/REMK', 'heathcormier0505@gmail.com', '2022-06-17 00:45:58', 'Nam', '0911480928', '305279462', 5, 5, 23, '2016-03-31 09:31:12', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'XYAZFJWLfF'),
(34, 'Ida Bruen', 'idabruen0202', '$2y$10$4mJss/NIqP96XArC.rC1zOWWiNlbjohJED6IhQ3nv0aikyLfRLChC', 'idabruen0202@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0588519212', '397015558', 2, 2, 19, '2008-04-18 23:09:24', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '6F77dCd3iy'),
(35, 'Benton Schimmel DVM', 'bentonschimmeldvm0507', '$2y$10$nH6O815hkhu1Q9O5jxYxS.Y7XAygBNWJnJxqqp8qAtmcyrqlNdKUq', 'bentonschimmeldvm0507@gmail.com', '2022-06-17 00:45:58', 'Nữ', '0336943246', '327439635', 5, 7, 3, '2003-07-28 05:28:00', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '8tymXRxIVS'),
(36, 'Immanuel Murray', 'immanuelmurray0907', '$2y$10$6hkfd93nH43vORAmcgZf.OSMLcPX6FuKvd81.FBlhj3swjj0njsQK', 'immanuelmurray0907@gmail.com', '2022-06-17 00:45:59', 'Nam', '0649579567', '334454283', 9, 7, 5, '2011-12-15 18:03:30', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'ExXFeD1AI5'),
(37, 'Ms. Filomena Cummings III', 'ms.filomenacummingsiii0503', '$2y$10$uVMvh9Kovg0MzOVz7AVaxOYWHLwHUcyXYa.Ysm.Gy0Omj6at.SzAi', 'ms.filomenacummingsiii0503@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0056156970', '394293806', 5, 3, 37, '2012-01-13 03:40:40', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'lSp1RDiAP3'),
(38, 'Jaylin Marvin', 'jaylinmarvin0801', '$2y$10$H07dPYaIf33SjTTLwwnwtu4TurhzxEey7h56WU7W3z5NjE9LgoUCO', 'jaylinmarvin0801@gmail.com', '2022-06-17 00:45:59', 'Nam', '0925460865', '372778244', 8, 1, 5, '2021-05-12 14:20:43', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'rWlua04ZRF'),
(39, 'Hoyt Douglas', 'hoytdouglas0201', '$2y$10$96OUK.LXSvbtp2VCPi/snuhWdxhCCFyg0dFAi2QmrwZ6x55RyKcZ6', 'hoytdouglas0201@gmail.com', '2022-06-17 00:45:59', 'Nam', '0430896904', '328393576', 2, 1, 10, '2005-12-21 20:21:44', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'wTMWppx58H'),
(40, 'Abigayle Flatley', 'abigayleflatley0504', '$2y$10$xdzKxYgja4rfKKKTRnHb7u9Ux.LGFuly0hSgM6llk6Roa0P2v7gKa', 'abigayleflatley0504@gmail.com', '2022-06-17 00:45:59', 'Nam', '0890766068', '306494026', 5, 4, 13, '2017-05-01 20:01:17', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'YI6ExRj3Fe'),
(41, 'Myrna Kertzmann', 'myrnakertzmann0506', '$2y$10$YKBEcNbZmGyLgiuvwnRyzeFyuh7WdDv3M/bBM10qANddNXAWbqzta', 'myrnakertzmann0506@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0803534901', '399113594', 5, 6, 4, '2009-03-20 20:38:47', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'NQHgamxFp4'),
(42, 'Mrs. Esperanza Schumm', 'mrs.esperanzaschumm0305', '$2y$10$roaUfZVi9fxdAgNkZMJ67.4Cqpuvff9hFLmothhkg9bwf/61Aoelm', 'mrs.esperanzaschumm0305@gmail.com', '2022-06-17 00:45:59', 'Nam', '0691430471', '364351279', 3, 5, 9, '2004-05-15 08:13:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'sHJZ8Sef1n'),
(43, 'Abraham Beer Sr.', 'abrahambeersr.0105', '$2y$10$n3a2h0AtKxrIfSU6YVK.fuB1hLdXIXP4E7EyI2YaOm/lCitU.pyr2', 'abrahambeersr.0105@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0274235963', '308777338', 1, 5, 15, '2005-10-07 07:11:04', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'MqmEH5ESux'),
(44, 'Dr. Nicole Lang DDS', 'dr.nicolelangdds0305', '$2y$10$wPo0mqTY5v8DzrePrivYV.l1PmtcUALQpSzn1aNbi1LmJ.TeNiVy6', 'dr.nicolelangdds0305@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0629824632', '324537635', 3, 5, 34, '2014-02-14 04:08:39', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'eOtNQ9Fdi5'),
(45, 'Alden Jacobson', 'aldenjacobson0501', '$2y$10$x0AjDWtx.fkfDtdi8fAnfO68MfGLomJx2hf.f4Ldux8b3hErgvwuO', 'aldenjacobson0501@gmail.com', '2022-06-17 00:45:59', 'Nam', '0020843506', '348676138', 5, 1, 21, '2006-03-05 19:07:05', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'viomL9kV35'),
(46, 'Cayla Witting IV', 'caylawittingiv0708', '$2y$10$PoP96W3k11N6Y4DMLonLjOWLJS0MsIvzDKmYT3oRE0GxuRje5OYIm', 'caylawittingiv0708@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0782649412', '391462198', 7, 8, 5, '2010-01-25 06:21:51', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'mbNeeCM1RN'),
(47, 'Susana Sipes I', 'susanasipesi0802', '$2y$10$c2PnBOFpxJiXMzjydzOlkOfMsyve.toxN3nOSepYriGkrEkJuVts6', 'susanasipesi0802@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0205959080', '347210983', 8, 2, 8, '2006-05-31 16:34:53', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'kASdFL95MK'),
(48, 'Samara Kuvalis', 'samarakuvalis0208', '$2y$10$kGiFLktHKLLo6krbT9CGeOfzoLy9KFLC7EYBnovzTYgIHboW735hK', 'samarakuvalis0208@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0771972886', '332666481', 2, 8, 35, '2008-07-26 06:28:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '71HdsMub9Y'),
(49, 'Gianni Graham', 'giannigraham0908', '$2y$10$7vkA8Anx2B.oYr39qun0IuBVPB.gM8p1UEGmT4.TuJbgUa86A.FeO', 'giannigraham0908@gmail.com', '2022-06-17 00:45:59', 'Nữ', '0051440617', '357602370', 9, 8, 5, '2018-12-16 03:06:38', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'fxFFUBqPOf'),
(50, 'Joany Kunze', 'joanykunze0901', '$2y$10$gnHnZw1x2KR0VSZAKgKFFOnH.MPahuG5u/y/.28Q/w6QL5eyGb0R6', 'joanykunze0901@gmail.com', '2022-06-17 00:45:59', 'Nam', '0663384196', '379474132', 9, 1, 21, '2013-01-21 22:36:02', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Sb5Osa46X9'),
(51, 'Kenyatta Hettinger', 'kenyattahettinger0108', '$2y$10$3KdiUyeIOcQoWiU7mwKm9OsnCGcPY4Q0iih9Jtzam7sjRUm9Sues6', 'kenyattahettinger0108@gmail.com', '2022-06-17 00:46:00', 'Nam', '0405455205', '356918109', 1, 8, 9, '2009-04-19 06:35:44', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'BbRY2Pnm4I'),
(52, 'Rodrigo Doyle', 'rodrigodoyle0705', '$2y$10$bUfLji73WIZ0Mh2h.WBEdOzIMqT5Ov.QuJhBPP7dEF/LFmkWsE8QG', 'rodrigodoyle0705@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0636559469', '360748294', 7, 5, 26, '2004-12-05 18:03:21', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'NF9n9nUQFo'),
(53, 'Leopoldo Leuschke', 'leopoldoleuschke0504', '$2y$10$kA1vzADnYcaHYsX3.t7p2exn/1e8IZDnjCTAy4Oib5rt6tQDznTe2', 'leopoldoleuschke0504@gmail.com', '2022-06-17 00:46:00', 'Nam', '0009110091', '305220693', 5, 4, 37, '2016-11-30 06:43:19', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'nLG65UV2os'),
(54, 'Gabrielle Okuneva', 'gabrielleokuneva0801', '$2y$10$dRfgJqTk3AGpAr7lMNC3RO9UY/NtwS/49t1/5/xUCHY8nvl/HZD3S', 'gabrielleokuneva0801@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0258964384', '330192468', 8, 1, 7, '2021-12-01 05:58:23', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'tSWIVEtESG'),
(55, 'Charlotte Ebert', 'charlotteebert0705', '$2y$10$bOeWjTBquROzH8/0.M6zyuBTJEGEyyqO.WxDa4.n9fhNzgM3cMLr6', 'charlotteebert0705@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0841146907', '310915293', 7, 5, 33, '2021-08-22 04:15:59', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'R2pkZk25Dq'),
(56, 'Mrs. Lesly Kessler DVM', 'mrs.leslykesslerdvm0506', '$2y$10$QcErUQ33.gXSFwqhUg14mOYf86w6S2zaeKOxioqI8F5c.uR1QS3VW', 'mrs.leslykesslerdvm0506@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0312373023', '396711374', 5, 6, 22, '2013-03-14 19:32:16', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'CG0KcovPLR'),
(57, 'Miss Destini Brakus V', 'missdestinibrakusv0505', '$2y$10$i7J9u92i8IRT7XJFB2McKOb3im5Y0rzHfpeok/5o8q4c0wYSSWD76', 'missdestinibrakusv0505@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0609010485', '363899947', 5, 5, 20, '2015-02-25 23:23:39', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'UTh53RMXAI'),
(58, 'Mr. Kolby Hermiston', 'mr.kolbyhermiston0402', '$2y$10$zL2vgmmSzuSOQRNTNKJpHuqlqETaoA5dRR4u5.v1Qyc2hT7CiyfEq', 'mr.kolbyhermiston0402@gmail.com', '2022-06-17 00:46:00', 'Nam', '0815161551', '322941255', 4, 2, 14, '2004-07-20 12:38:30', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Wn1aUWEFom'),
(59, 'Ms. Michele Dibbert', 'ms.micheledibbert0905', '$2y$10$vFWAtasONfY3X8xPi.5MJ.3EAaYhsW0hD454ZD4V3ZBKwtTyyVwCO', 'ms.micheledibbert0905@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0226092485', '333902215', 9, 5, 27, '2002-08-28 23:21:26', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Bs0VsJP0gO'),
(60, 'Araceli Runte', 'aracelirunte0101', '$2y$10$sCWYKyoh6MmGTNfF/KxIJuJ0mt/6k07Ll9O9FKpwiWPXyMrgDl21q', 'aracelirunte0101@gmail.com', '2022-06-17 00:46:00', 'Nam', '0402740487', '346314233', 1, 1, 27, '2016-11-29 14:34:00', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'xMmEQUMCvu'),
(61, 'Prof. Sylvester Nolan II', 'prof.sylvesternolanii0507', '$2y$10$Q1m2Ix.RpyBtX6trQaIzsurIWQY.xaXfFcioMGMMnYET6ne4yBjzG', 'prof.sylvesternolanii0507@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0426564227', '399457639', 5, 7, 33, '2013-12-09 12:37:38', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'bnSpkpjLZC'),
(62, 'Harmony Sporer', 'harmonysporer0208', '$2y$10$f6IuqOsjTjif02Wrk0DZHOL8v/WBKRNXG/8Ht/3FAIZycG5sv6dcC', 'harmonysporer0208@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0155835817', '346464061', 2, 8, 35, '2009-06-11 01:32:01', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'too9DxyDlN'),
(63, 'Lamar Botsford', 'lamarbotsford0403', '$2y$10$m0FE47XiSPGcNXhjXHvrMe1N3VFgqARrlwf.N6ecUW9y0W6XIlWTa', 'lamarbotsford0403@gmail.com', '2022-06-17 00:46:00', 'Nam', '0793635176', '342233306', 4, 3, 26, '2018-08-06 17:44:23', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'c9SOOJgFTC'),
(64, 'Hadley Reynolds', 'hadleyreynolds0302', '$2y$10$YQZ5H5/MMIR711Iim5wUAeGVtGuZilHocb9aP9jLk08pDOQBk0Jje', 'hadleyreynolds0302@gmail.com', '2022-06-17 00:46:00', 'Nữ', '0378353876', '305961578', 3, 2, 2, '2015-03-02 04:57:35', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'hGRCDnWZpq'),
(65, 'Pat Abshire', 'patabshire0603', '$2y$10$7R3vAD96YdOvl1BaF/BPf.AI2mlgQ/cB4g.IHl3c1INNFulVagGiO', 'patabshire0603@gmail.com', '2022-06-17 00:46:00', 'Nam', '0546376113', '335135245', 6, 3, 27, '2013-04-03 23:52:54', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'do5F0LxPML'),
(66, 'Jennie Funk', 'jenniefunk0903', '$2y$10$yBCfRIGY9lcXq.19C/5dOeXPPr8B2DyNxO07ha9jiRbZsFa9Sn6dS', 'jenniefunk0903@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0337940264', '332877925', 9, 3, 8, '2007-05-18 05:30:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'NvT7jFBXiN'),
(67, 'Cydney Botsford', 'cydneybotsford0803', '$2y$10$PBEZqqjFopBTMZDyh5V6SO8BnReDZ8622LwE/3bzO/X5rPCGVNXDC', 'cydneybotsford0803@gmail.com', '2022-06-17 00:46:01', 'Nam', '0243024315', '328448792', 8, 3, 17, '2007-07-20 06:53:40', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'dKJWRmzZme'),
(68, 'Nicholaus Koepp DDS', 'nicholauskoeppdds0801', '$2y$10$f.lfJXcsc7iT5uplzOjVe.GmgB7HCtyGHt8qcVvg.Fz5IA1jSv49m', 'nicholauskoeppdds0801@gmail.com', '2022-06-17 00:46:01', 'Nam', '0664143256', '334225283', 8, 1, 6, '2019-04-25 12:17:06', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'bgNEjoA76B'),
(69, 'Stephon Halvorson DVM', 'stephonhalvorsondvm0404', '$2y$10$sZwgVQcRTdKAbVXIbjG8r.kzYCvpj8ljwGjYweVVb5U2W68j2nd2O', 'stephonhalvorsondvm0404@gmail.com', '2022-06-17 00:46:01', 'Nam', '0542532138', '302723522', 4, 4, 22, '2017-06-09 20:10:02', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '71U5w8jgU2'),
(70, 'Elda Schaden', 'eldaschaden0506', '$2y$10$gG0NRAC4jdP6ksT8Q3UWS.v/ZC4Ekf5hx.OrAwPyk087Ok.8NYbjG', 'eldaschaden0506@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0067421727', '345703767', 5, 6, 15, '2008-05-19 18:15:10', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'aYDcZrL1ml'),
(71, 'Lonnie Robel MD', 'lonnierobelmd0601', '$2y$10$XbARl48br6oFE6n8Wki/S.Jjv8lSLe4LZdJdmhgcKfdqmCraUTTSy', 'lonnierobelmd0601@gmail.com', '2022-06-17 00:46:01', 'Nam', '0119737383', '342065932', 6, 1, 1, '2015-06-28 02:52:05', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'D3aCaMPaV4'),
(72, 'Dr. Clement Hand', 'dr.clementhand0605', '$2y$10$rMnHOdfI1GKA5gCXaYUYX.EJeAp1DYPgmL7dJXLTXEJPupRHFdALa', 'dr.clementhand0605@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0720844768', '320813724', 6, 5, 7, '2020-02-09 04:27:34', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'CTkSr0cgXQ'),
(73, 'Dr. Fritz Ebert', 'dr.fritzebert0303', '$2y$10$Dm13fEl9crlrdwYAmagOB.eFQvvr0lMr1350nzeEzFWIwACULOjiC', 'dr.fritzebert0303@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0343840426', '316335817', 3, 3, 6, '2009-09-03 02:37:39', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '9UesdatDmm'),
(74, 'Kameron Terry', 'kameronterry0302', '$2y$10$4IdOh0V4RmLVPowNkb0.dO3lxjbB7Uf7nbPTC5ktU9UKGLub3AaA.', 'kameronterry0302@gmail.com', '2022-06-17 00:46:01', 'Nam', '0715062458', '329412101', 3, 2, 18, '2003-05-23 21:58:54', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'QonHSL8tSt'),
(75, 'Pansy Osinski I', 'pansyosinskii0704', '$2y$10$JoShknAdZWM491Wxp411Oujzbto/VZ9VgbDjURdVFsKsRDBOlyyJC', 'pansyosinskii0704@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0599132137', '383339327', 7, 4, 34, '2020-02-22 08:23:42', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'h1uvIpQvp8'),
(76, 'Reagan Johnston', 'reaganjohnston0908', '$2y$10$YPupPXIOJZtSsFrqHBl0ce2pd9pX/MWB.SL6Warm7xJIgTSBWWBby', 'reaganjohnston0908@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0873979370', '310042705', 9, 8, 4, '2017-11-17 09:57:41', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'xeTx8CTmUN'),
(77, 'Amara Schowalter', 'amaraschowalter0802', '$2y$10$V0fTRjbmLNDRr8khfPrD9OF0hEh09.1psQyYZzfB0JiKQMD8cvJT6', 'amaraschowalter0802@gmail.com', '2022-06-17 00:46:01', 'Nam', '0924040014', '382091408', 8, 2, 35, '2005-02-02 17:05:54', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'WmPLg7Wg1f'),
(78, 'Wilburn Daugherty', 'wilburndaugherty0606', '$2y$10$ySQB0TKi1f3C62BX.8fYse7ke0ICXm7KWxd7YRkWBwbckvN8hzDNa', 'wilburndaugherty0606@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0256344526', '392064985', 6, 6, 27, '2017-01-06 16:42:46', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'Su30TSmS3z'),
(79, 'Roel Jerde', 'roeljerde0905', '$2y$10$f/N2KSEuuwQgXE0vdj/26uik2vzXo3vIa4bMK8QCCW0ljg19t7z3S', 'roeljerde0905@gmail.com', '2022-06-17 00:46:01', 'Nữ', '0868144267', '336390637', 9, 5, 21, '2018-12-14 20:44:12', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '08goaHrZK4'),
(80, 'Clifton Schumm', 'cliftonschumm0808', '$2y$10$EsSR56zoSgWG2cCppz805edrQdveAeDQndzmwMdHHAsftk91pTF2K', 'cliftonschumm0808@gmail.com', '2022-06-17 00:46:01', 'Nam', '0084261912', '387745222', 8, 8, 32, '2003-12-28 19:04:01', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '70aO9SuIem'),
(81, 'Ms. Brandyn Stoltenberg PhD', 'ms.brandynstoltenbergphd0606', '$2y$10$KfP.Kp2y1bOPPKnzGamlbeNO/kaHxieEMbLtAvgd2y27HbAXu0V7i', 'ms.brandynstoltenbergphd0606@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0027272396', '346838220', 6, 6, 37, '2022-03-08 21:42:20', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'lVEjGWXW1e'),
(82, 'Paolo O\'Hara', 'paoloo-hara0808', '$2y$10$Z6.XF0x7VEPT0t9.rMPedermjYq27xrFXwyLuPxtGePQCjeC33DMu', 'paoloo-hara0808@gmail.com', '2022-06-17 00:46:02', 'Nam', '0213173104', '324601517', 8, 8, 7, '2002-09-01 05:35:03', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'MHG5cAcCFL'),
(83, 'Leslie Ryan', 'leslieryan0505', '$2y$10$BKSfutWtttNdLACHs0kTPeuZPbmacapW.OvwI/RQn84/VjwAjxre2', 'leslieryan0505@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0634455165', '364543455', 5, 5, 2, '2022-01-25 12:13:36', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'IddP7i39fH'),
(84, 'Reese Jacobi Jr.', 'reesejacobijr.0704', '$2y$10$C0h.tA4UBtLxGEDDK17oDOhwVMgMMDTzvVq6XlXY5b2pDeLQkXcU6', 'reesejacobijr.0704@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0816975226', '331141099', 7, 4, 13, '2020-08-29 20:04:12', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'iYvQrO1Mbx'),
(85, 'Lisa Kunze', 'lisakunze0101', '$2y$10$W8R4IlhWyelB8E.96O8rkeGVYd9ZEJl9XaAvhtXVxvLxPEWwP.IQO', 'lisakunze0101@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0401900221', '365186730', 1, 1, 17, '2016-02-10 05:04:01', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'GR0t4tdeR6'),
(86, 'Marcella Lesch II', 'marcellaleschii0105', '$2y$10$hd.SYwivBFCmW3gvAzgo/O7pGyNCiuDOIaFxIhOtwF9a6iToBD35u', 'marcellaleschii0105@gmail.com', '2022-06-17 00:46:02', 'Nam', '0381033055', '369251967', 1, 5, 8, '2010-03-24 13:56:54', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'nu0fukbBz2'),
(87, 'Sierra Lebsack DDS', 'sierralebsackdds0308', '$2y$10$MsuJVl9Eme1LjpBduG205ObJtD5v5evwGUwKCddR9p7fw9H.pJvjO', 'sierralebsackdds0308@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0758816255', '390169054', 3, 8, 13, '2013-07-07 16:59:09', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '11J1TCvdPT'),
(88, 'Angelica Waelchi PhD', 'angelicawaelchiphd0803', '$2y$10$GjLc1YzbVCiV9zdvIYKVe.l7au4/vm1UcNaxEUDr7CK8kVcaegNJK', 'angelicawaelchiphd0803@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0847457451', '321794370', 8, 3, 17, '2016-02-01 18:11:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '8Y51noF9z3'),
(89, 'Mr. Garfield Hermiston', 'mr.garfieldhermiston0404', '$2y$10$B9x.8IaFXsFX1LVcDBXWQ.jeLnO/FPMoxfXFP8OVJ96miuMo3TZKS', 'mr.garfieldhermiston0404@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0962695735', '362558041', 4, 4, 26, '2020-12-19 19:40:33', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '7EyQTtfgtE'),
(90, 'Floy Howe', 'floyhowe0203', '$2y$10$siOdmwAEBIsAo0cGc/f9F.eeprJq0jErRDzQ07Wdt3DWcVCZ7GAwe', 'floyhowe0203@gmail.com', '2022-06-17 00:46:02', 'Nam', '0178270388', '398788638', 2, 3, 1, '2009-03-12 17:53:26', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'FgBiBIm0Jr'),
(91, 'Fleta Torp', 'fletatorp0703', '$2y$10$fsdw6fqmBNKTWbd1LilyO.Cj5jol4YVNqFqlKedinyS4OLWcuW4Wi', 'fletatorp0703@gmail.com', '2022-06-17 00:46:02', 'Nam', '0445465177', '379404313', 7, 3, 25, '2007-07-20 11:51:01', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'qdXartfcj0'),
(92, 'Melba Adams', 'melbaadams0301', '$2y$10$ZdPRh3iRu8m2RsJycGW3O.o74tMiY13nzjnG9/cjFASYnuy4zCGzq', 'melbaadams0301@gmail.com', '2022-06-17 00:46:02', 'Nam', '0171834903', '385605298', 3, 1, 7, '2009-02-24 08:17:04', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'ykNtX9V10s'),
(93, 'Jamir Ward', 'jamirward0208', '$2y$10$C6DgBw3NXM0/QR5WPerGR.i9k9zb/aMrUvrOMfkhktbDbjcRo77RS', 'jamirward0208@gmail.com', '2022-06-17 00:46:02', 'Nam', '0894082803', '363957273', 2, 8, 35, '2004-07-22 18:23:06', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'jxbN13Ru0W'),
(94, 'Dallas Strosin', 'dallasstrosin0401', '$2y$10$N/WGX.UcUGzGslqbaBNiEOSzzXT/PIfuuaWaZq.zxwiKtJsfezodq', 'dallasstrosin0401@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0862961243', '301162091', 4, 1, 1, '2014-06-11 02:10:38', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'a6AjcJDWxA'),
(95, 'Dr. Nicklaus Hickle DDS', 'dr.nicklaushickledds0304', '$2y$10$7GpLKaFBB4kq.PZms3Cj3.ccaFEgSZ8mBtThoLLVYv78E.BU4Hura', 'dr.nicklaushickledds0304@gmail.com', '2022-06-17 00:46:02', 'Nữ', '0844634040', '312502518', 3, 4, 36, '2017-12-17 05:11:11', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'ZhDFYjsmTd'),
(96, 'Carey Grady', 'careygrady0705', '$2y$10$l/EOS0bdt9UE3CdK0JjA1.MTLGZ.SgcmcjzzTHnxwLLaq0N6pGD46', 'careygrady0705@gmail.com', '2022-06-17 00:46:03', 'Nữ', '0654828105', '354699844', 7, 5, 26, '2020-01-25 05:35:58', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, '67jhX2AetK'),
(97, 'Morris Tremblay', 'morristremblay0101', '$2y$10$PZA5X.ux3H308BkR.umsNemFJtiKPjksdOKUpQM.uZ1.ATGUWwIcK', 'morristremblay0101@gmail.com', '2022-06-17 00:46:03', 'Nam', '0339121728', '332444105', 1, 1, 8, '2014-12-22 01:22:53', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'CMYmdT5W74'),
(98, 'Prof. Courtney Heller', 'prof.courtneyheller0905', '$2y$10$fHoDN5gDzKOdF7kqj/Lzt.pwQASX7M4iJE47SSv219Hy4/HSfop9G', 'prof.courtneyheller0905@gmail.com', '2022-06-17 00:46:03', 'Nam', '0678352737', '357738158', 9, 5, 24, '2010-11-24 13:03:06', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'ivDwlHpzW4'),
(99, 'Jake Klein', 'jakeklein0603', '$2y$10$dImvzTwyZQQoIdQ6gL3w1Op9/urpZJs092.hyvryIkde8ZouBWKE2', 'jakeklein0603@gmail.com', '2022-06-17 00:46:03', 'Nam', '0572002207', '319625890', 6, 3, 34, '2013-12-06 15:39:12', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'VOTQ8VOCOu'),
(100, 'Claire Paucek', 'clairepaucek0402', '$2y$10$zf8.KV4XPWTJxJ8JS8lZZeMovtMYYlfpFX1MKy2038z8IwIJyWYSW', 'clairepaucek0402@gmail.com', '2022-06-17 00:46:03', 'Nữ', '0785702940', '317812837', 4, 2, 5, '2017-09-29 03:00:24', 0, '2022-06-17 00:46:03', '2022-06-17 00:46:03', NULL, 'd4u9hsiNWA');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `agency_tours`
--
ALTER TABLE `agency_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agency_tours_agency_id_foreign` (`agency_id`),
  ADD KEY `agency_tours_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_region_id_foreign` (`region_id`);

--
-- Chỉ mục cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_registrations_user_id_foreign` (`user_id`),
  ADD KEY `tour_registrations_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_agency_id_foreign` (`agency_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_position_id_foreign` (`position_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `agency_tours`
--
ALTER TABLE `agency_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `positions`
--
ALTER TABLE `positions`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `regions`
--
ALTER TABLE `regions`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `agency_tours`
--
ALTER TABLE `agency_tours`
  ADD CONSTRAINT `agency_tours_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agency_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  ADD CONSTRAINT `tour_registrations_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tour_registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
