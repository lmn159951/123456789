-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2022 lúc 07:23 AM
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
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-20 00:19:29', NULL, NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-20 00:19:29', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-20 00:19:29', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-20 00:19:29', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-20 00:19:29', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-20 00:19:29', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-20 00:19:29', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-20 00:19:29', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-20 00:19:29', NULL, NULL);

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

--
-- Đang đổ dữ liệu cho bảng `agency_tours`
--

INSERT INTO `agency_tours` (`id`, `agency_id`, `tour_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, NULL, NULL, NULL),
(2, 7, 1, NULL, NULL, NULL),
(3, 8, 2, NULL, NULL, NULL),
(4, 9, 2, NULL, NULL, NULL),
(5, 5, 2, NULL, NULL, NULL),
(6, 6, 3, NULL, NULL, NULL),
(7, 2, 3, NULL, NULL, NULL),
(8, 1, 4, NULL, NULL, NULL),
(9, 3, 4, NULL, NULL, NULL),
(10, 7, 4, NULL, NULL, NULL),
(11, 1, 5, NULL, NULL, NULL),
(12, 9, 5, NULL, NULL, NULL),
(13, 6, 5, NULL, NULL, NULL),
(14, 8, 6, NULL, NULL, NULL),
(15, 7, 6, NULL, NULL, NULL),
(16, 5, 7, NULL, NULL, NULL),
(17, 4, 8, NULL, NULL, NULL),
(18, 3, 8, NULL, NULL, NULL),
(19, 5, 9, NULL, NULL, NULL),
(20, 2, 10, NULL, NULL, NULL),
(21, 9, 10, NULL, NULL, NULL),
(22, 5, 11, NULL, NULL, NULL),
(23, 6, 12, NULL, NULL, NULL),
(24, 2, 13, NULL, NULL, NULL),
(25, 5, 13, NULL, NULL, NULL),
(26, 8, 13, NULL, NULL, NULL),
(27, 1, 14, NULL, NULL, NULL),
(28, 6, 15, NULL, NULL, NULL),
(29, 1, 15, NULL, NULL, NULL),
(30, 3, 15, NULL, NULL, NULL),
(31, 4, 16, NULL, NULL, NULL),
(32, 5, 17, NULL, NULL, NULL),
(33, 1, 18, NULL, NULL, NULL),
(34, 4, 19, NULL, NULL, NULL),
(35, 1, 19, NULL, NULL, NULL),
(36, 8, 20, NULL, NULL, NULL),
(37, 2, 20, NULL, NULL, NULL),
(38, 9, 21, NULL, NULL, NULL),
(39, 8, 22, NULL, NULL, NULL),
(40, 3, 22, NULL, NULL, NULL),
(41, 5, 22, NULL, NULL, NULL),
(42, 3, 23, NULL, NULL, NULL),
(43, 4, 23, NULL, NULL, NULL),
(44, 3, 24, NULL, NULL, NULL),
(45, 2, 24, NULL, NULL, NULL),
(46, 2, 25, NULL, NULL, NULL),
(47, 4, 26, NULL, NULL, NULL),
(48, 5, 26, NULL, NULL, NULL),
(49, 7, 27, NULL, NULL, NULL),
(50, 3, 27, NULL, NULL, NULL),
(51, 9, 28, NULL, NULL, NULL),
(52, 5, 29, NULL, NULL, NULL),
(53, 6, 29, NULL, NULL, NULL),
(54, 5, 30, NULL, NULL, NULL),
(55, 2, 31, NULL, NULL, NULL),
(56, 3, 31, NULL, NULL, NULL),
(57, 8, 32, NULL, NULL, NULL),
(58, 6, 33, NULL, NULL, NULL),
(59, 3, 33, NULL, NULL, NULL),
(60, 5, 33, NULL, NULL, NULL),
(61, 8, 34, NULL, NULL, NULL),
(62, 5, 34, NULL, NULL, NULL),
(63, 2, 35, NULL, NULL, NULL),
(64, 8, 36, NULL, NULL, NULL),
(65, 6, 37, NULL, NULL, NULL),
(66, 5, 37, NULL, NULL, NULL),
(67, 4, 38, NULL, NULL, NULL),
(68, 5, 39, NULL, NULL, NULL),
(69, 2, 39, NULL, NULL, NULL),
(70, 3, 40, NULL, NULL, NULL),
(71, 7, 40, NULL, NULL, NULL),
(72, 1, 41, NULL, NULL, NULL),
(73, 7, 41, NULL, NULL, NULL),
(74, 8, 41, NULL, NULL, NULL),
(75, 3, 42, NULL, NULL, NULL),
(76, 5, 42, NULL, NULL, NULL),
(77, 1, 42, NULL, NULL, NULL),
(78, 5, 43, NULL, NULL, NULL),
(79, 2, 43, NULL, NULL, NULL),
(80, 2, 44, NULL, NULL, NULL),
(81, 7, 44, NULL, NULL, NULL),
(82, 3, 45, NULL, NULL, NULL),
(83, 1, 46, NULL, NULL, NULL),
(84, 2, 46, NULL, NULL, NULL),
(85, 9, 47, NULL, NULL, NULL),
(86, 6, 47, NULL, NULL, NULL),
(87, 3, 47, NULL, NULL, NULL),
(88, 7, 48, NULL, NULL, NULL),
(89, 6, 49, NULL, NULL, NULL),
(90, 2, 49, NULL, NULL, NULL);

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
(1, 'Phòng kế toán', '2022-06-20 00:19:29', NULL, NULL),
(2, 'Phòng tài chín', '2022-06-20 00:19:29', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-20 00:19:29', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-20 00:19:29', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-20 00:19:29', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-20 00:19:29', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-20 00:19:29', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-20 00:19:29', NULL, NULL);

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
(1, 'Nhân viên phân tích dữ liệu', '2022-06-20 05:19:29', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-20 05:19:29', NULL, NULL),
(3, 'Lập trình viên', '2022-06-20 05:19:29', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-20 05:19:29', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-20 05:19:29', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-20 05:19:29', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-20 05:19:29', NULL, NULL),
(8, 'Người giám sát', '2022-06-20 05:19:29', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-20 05:19:29', NULL, NULL),
(10, 'Sếp', '2022-06-20 05:19:29', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-20 05:19:29', NULL, NULL),
(12, 'Thư kí', '2022-06-20 05:19:29', NULL, NULL),
(13, 'Nhân viên', '2022-06-20 05:19:29', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-20 05:19:29', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-20 05:19:29', NULL, NULL),
(16, 'Quản lý', '2022-06-20 05:19:29', NULL, NULL),
(17, 'Giám đốc', '2022-06-20 05:19:29', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-20 05:19:29', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-20 05:19:29', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-20 05:19:29', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-20 05:19:29', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-20 05:19:29', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-20 05:19:29', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-20 05:19:29', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-20 05:19:29', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-20 05:19:29', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-20 05:19:29', NULL, NULL),
(28, 'Trưởng Bộ phận', '2022-06-20 05:19:29', NULL, NULL),
(29, 'Trưởng phòng nhân sự', '2022-06-20 05:19:29', NULL, NULL),
(30, 'Trưởng phòng tài chính', '2022-06-20 05:19:29', NULL, NULL),
(31, 'Trưởng phòng kế toán', '2022-06-20 05:19:29', NULL, NULL),
(32, 'Trưởng phòng sản xuất', '2022-06-20 05:19:29', NULL, NULL),
(33, 'Trưởng phòng marketing', '2022-06-20 05:19:29', NULL, NULL),
(34, 'Chủ tịch', '2022-06-20 05:19:29', NULL, NULL),
(35, 'Thành viên ban quản trị', '2022-06-20 05:19:29', NULL, NULL),
(36, 'Thư kín', '2022-06-20 05:19:29', NULL, NULL),
(37, 'Phó phòng kinh doanh', '2022-06-20 05:19:29', NULL, NULL);

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
(1, 'Tây Bắc Bộ', '2022-06-20 00:19:29', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-06-20 00:19:29', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-06-20 00:19:29', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-06-20 00:19:29', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-06-20 00:19:29', NULL, NULL),
(6, 'Vùng Duyên hải Nam Trung Bộ', '2022-06-20 00:19:29', NULL, NULL),
(7, 'Vùng Đông Nam Bộ', '2022-06-20 00:19:29', NULL, NULL),
(8, 'Vùng đồng bằng sông Cửu Long', '2022-06-20 00:19:29', NULL, NULL);

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

--
-- Đang đổ dữ liệu cho bảng `supports`
--

INSERT INTO `supports` (`id`, `start_year`, `end_year`, `min_condition`, `max_condition`, `price`, `created_at`, `updated_at`) VALUES
(1, 2000, 2003, 1, NULL, 6854000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(2, 2004, 2007, 3, NULL, 4646000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(3, 2008, 2009, NULL, 1, 2726000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(4, 2008, 2009, 1, 3, 8316000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(5, 2008, 2009, 3, NULL, 3619000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(6, 2010, 2013, 2, NULL, 5179000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(7, 2014, 2017, NULL, 1, 803000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(8, 2014, 2017, 1, 3, 6746000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(9, 2014, 2017, 3, NULL, 2920000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(10, 2018, 2021, 3, NULL, 4523000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(11, 2022, 2025, NULL, 1, 7623000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(12, 2022, 2025, 1, 3, 1910000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(13, 2022, 2025, 3, NULL, 9302000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(14, 2026, 2028, NULL, 1, 8925000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(15, 2026, 2028, 1, 3, 7718000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(16, 2026, 2028, 3, NULL, 8292000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(17, 2029, 2030, NULL, 2, 5354000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(18, 2029, 2030, 2, NULL, 6357000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(19, 2031, 2032, NULL, 2, 7747000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(20, 2031, 2032, 2, 4, 6805000, '2022-06-20 05:19:33', '2022-06-20 05:19:33'),
(21, 2031, 2032, 4, NULL, 9814000, '2022-06-20 05:19:33', '2022-06-20 05:19:33');

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
  `region_id` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `name`, `image`, `description_file`, `tour_start_date`, `tour_end_date`, `registration_start_date`, `registration_end_date`, `price`, `max_people`, `region_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A nihil reprehenderit eius possimus dolorem delectus et.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-07-03 20:34:08', '2022-07-10 20:34:08', '2022-06-30 20:34:08', '2022-08-29 20:34:08', 9225000, 20, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(2, 'Accusantium quidem ipsam officiis error.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-05 08:23:10', '2022-08-10 08:23:10', '2022-06-21 08:23:10', '2022-09-19 08:23:10', 2477000, 90, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(3, 'Quidem rerum voluptatem explicabo magni et et quis.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-15 02:48:20', '2022-07-20 02:48:20', '2022-06-25 02:48:20', '2022-07-25 02:48:20', 2981000, 50, 5, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(4, 'Nisi id suscipit dignissimos id qui corrupti dolor.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-01 15:28:53', '2022-10-07 15:28:53', '2022-05-20 15:28:53', '2022-10-17 15:28:53', 9088000, 40, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(5, 'Harum in ut accusamus sunt.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-11-09 11:32:28', '2022-11-14 11:32:28', '2022-07-06 11:32:28', '2022-12-03 11:32:28', 2684000, 30, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(6, 'Ipsum et cum atque expedita quia itaque et molestiae.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-07-03 13:55:20', '2022-07-09 13:55:20', '2022-06-12 13:55:20', '2022-12-09 13:55:20', 9940000, 20, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(7, 'Consectetur qui repudiandae consequatur possimus ut.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-23 22:11:23', '2022-08-26 22:11:23', '2022-07-04 22:11:23', '2022-12-31 22:11:23', 8205000, 50, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(8, 'Unde est esse quisquam est.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-30 03:17:55', '2022-07-03 03:17:55', '2022-06-22 03:17:55', '2022-08-21 03:17:55', 697000, 30, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(9, 'Nam rerum mollitia doloremque tempore quis similique aliquid.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-08-14 08:18:05', '2022-08-20 08:18:05', '2022-07-20 08:18:05', '2022-08-19 08:18:05', 5621000, 70, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(10, 'Quo et veritatis nulla rerum qui.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-10-25 06:11:00', '2022-10-27 06:11:00', '2022-06-12 06:11:00', '2022-11-09 06:11:00', 4739000, 80, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(11, 'Occaecati sed dolorem molestiae eum.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-13 15:13:19', '2022-08-21 15:13:19', '2022-07-02 15:13:19', '2022-10-30 15:13:19', 897000, 90, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(12, 'Aut quidem porro dolor.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-18 23:35:45', '2022-08-24 23:35:45', '2022-07-09 23:35:45', '2022-10-07 23:35:45', 4113000, 90, 5, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(13, 'Placeat amet est aperiam excepturi dolores repellat deserunt.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-07-02 05:24:11', '2022-07-10 05:24:11', '2022-06-17 05:24:11', '2022-07-17 05:24:11', 4878000, 40, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(14, 'Ipsam sit ab neque nostrum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-10 03:48:27', '2022-06-15 03:48:27', '2022-05-28 03:48:27', '2022-07-27 03:48:27', 1083000, 90, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(15, 'Provident repellendus dolores labore quaerat aliquid occaecati quod.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-04 22:33:53', '2022-07-07 22:33:53', '2022-06-27 22:33:53', '2022-07-27 22:33:53', 7117000, 50, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(16, 'Eum et rerum sunt.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-07-19 19:43:41', '2022-07-21 19:43:41', '2022-05-26 19:43:41', '2022-09-23 19:43:41', 3388000, 80, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(17, 'Non repudiandae aut est laudantium.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-09-12 15:43:07', '2022-09-20 15:43:07', '2022-05-31 15:43:07', '2022-11-27 15:43:07', 6068000, 60, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(18, 'Est voluptatem consequatur repellat quis itaque hic asperiores.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-07-20 18:36:23', '2022-07-22 18:36:23', '2022-05-21 18:36:23', '2022-10-18 18:36:23', 624000, 70, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(19, 'Sed et in provident quia.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-06-22 17:05:33', '2022-06-26 17:05:33', '2022-05-26 17:05:33', '2022-06-25 17:05:33', 3102000, 20, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(20, 'Explicabo aliquam consequatur est dolorem quisquam repudiandae dicta.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-06-21 18:16:23', '2022-06-28 18:16:23', '2022-06-06 18:16:23', '2022-07-06 18:16:23', 1705000, 20, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(21, 'Aliquid iure aut laboriosam fuga est delectus corporis.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-10-11 00:43:28', '2022-10-14 00:43:28', '2022-06-22 00:43:28', '2022-10-20 00:43:28', 1724000, 50, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(22, 'Rem et eum maxime.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-07-02 07:00:13', '2022-07-06 07:00:13', '2022-05-21 07:00:13', '2022-11-17 07:00:13', 4146000, 80, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(23, 'Neque qui fuga maxime enim.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-06-26 00:14:03', '2022-07-04 00:14:03', '2022-06-20 00:14:03', '2022-09-18 00:14:03', 7792000, 40, 5, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(24, 'Necessitatibus saepe velit voluptates corporis quasi officia velit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-09 01:00:46', '2022-09-16 01:00:46', '2022-07-12 01:00:46', '2022-09-10 01:00:46', 7430000, 70, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(25, 'Veniam necessitatibus tenetur quod ab maxime.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-07-14 19:06:32', '2022-07-17 19:06:32', '2022-06-27 19:06:32', '2022-07-27 19:06:32', 5917000, 20, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(26, 'Illum corrupti quae ut tempore.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-03 07:51:24', '2022-10-07 07:51:24', '2022-07-02 07:51:24', '2022-11-29 07:51:24', 4127000, 40, 6, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(27, 'Ratione possimus pariatur voluptatem dolorem quo ad consequatur quo.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-08-30 07:01:43', '2022-09-01 07:01:43', '2022-06-24 07:01:43', '2022-10-22 07:01:43', 2367000, 70, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(28, 'Saepe qui debitis aut tempora.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-09-25 02:39:59', '2022-09-29 02:39:59', '2022-07-18 02:39:59', '2022-11-15 02:39:59', 8286000, 30, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(29, 'Nostrum quae rerum dolorum molestias excepturi.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-08 06:16:49', '2022-08-11 06:16:49', '2022-07-09 06:16:49', '2022-11-06 06:16:49', 9676000, 20, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(30, 'Vel sit placeat facere velit.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-16 16:14:23', '2022-06-24 16:14:23', '2022-05-30 16:14:23', '2022-08-28 16:14:23', 7903000, 70, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(31, 'Quia corporis officia quaerat nisi unde.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-07-28 01:40:58', '2022-08-01 01:40:58', '2022-06-26 01:40:58', '2022-08-25 01:40:58', 9528000, 70, 5, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(32, 'Dolorum possimus ratione consequatur atque voluptatem laboriosam dolore.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-07-04 13:43:06', '2022-07-08 13:43:06', '2022-06-10 13:43:06', '2022-07-10 13:43:06', 4765000, 40, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(33, 'Accusantium eius illo occaecati deserunt.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-27 23:59:43', '2022-07-04 23:59:43', '2022-06-15 23:59:43', '2022-09-13 23:59:43', 4436000, 60, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(34, 'Ut consectetur eligendi odio ut omnis sunt sint.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-28 05:46:06', '2022-07-01 05:46:06', '2022-06-23 05:46:06', '2022-11-20 05:46:06', 6576000, 40, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(35, 'Ea ipsa est consequatur fugiat voluptas sequi mollitia.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-07-10 12:16:20', '2022-07-18 12:16:20', '2022-06-17 12:16:20', '2022-07-17 12:16:20', 3154000, 60, 4, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(36, 'Cumque perferendis ut incidunt labore eius.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-06-28 21:41:28', '2022-07-05 21:41:28', '2022-06-23 21:41:28', '2022-12-20 21:41:28', 3355000, 50, 6, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(37, 'Sit quod veritatis asperiores est.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-09-16 22:33:51', '2022-09-19 22:33:51', '2022-06-26 22:33:51', '2022-10-24 22:33:51', 4561000, 20, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(38, 'Eum voluptatum quisquam rerum ut.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-24 19:54:10', '2022-07-29 19:54:10', '2022-06-29 19:54:10', '2022-07-29 19:54:10', 3031000, 80, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(39, 'Culpa totam qui enim alias expedita dolor quod.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-09-12 17:47:21', '2022-09-20 17:47:21', '2022-07-15 17:47:21', '2022-09-13 17:47:21', 9433000, 80, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(40, 'Quod eaque vel quidem minima ut qui consequatur.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-11-22 22:18:58', '2022-11-24 22:18:58', '2022-07-02 22:18:58', '2022-12-29 22:18:58', 3501000, 90, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(41, 'Cum odio in explicabo quo.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-09-14 07:43:58', '2022-09-19 07:43:58', '2022-07-14 07:43:58', '2022-10-12 07:43:58', 9920000, 20, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(42, 'Voluptatem officia animi at.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-09-09 06:56:58', '2022-09-12 06:56:58', '2022-07-11 06:56:58', '2022-12-08 06:56:58', 5955000, 70, 3, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(43, 'Porro est possimus hic.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-12 21:37:55', '2022-08-14 21:37:55', '2022-07-09 21:37:55', '2023-01-05 21:37:55', 5284000, 30, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(44, 'Optio non ut et ullam.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-07-16 10:34:02', '2022-07-22 10:34:02', '2022-05-21 10:34:02', '2022-07-20 10:34:02', 1753000, 70, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(45, 'Rerum omnis debitis voluptates cupiditate.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-07-12 20:49:01', '2022-07-15 20:49:01', '2022-06-15 20:49:01', '2022-12-12 20:49:01', 9369000, 50, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(46, 'Reprehenderit cum qui qui fuga.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-11-11 01:03:09', '2022-11-15 01:03:09', '2022-07-18 01:03:09', '2023-01-14 01:03:09', 2862000, 70, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(47, 'Asperiores voluptate voluptatem aut quod debitis consequatur.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-06-01 09:32:11', '2022-06-06 09:32:11', '2022-05-29 09:32:11', '2022-08-27 09:32:11', 9982000, 40, 2, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(48, 'Accusamus et possimus accusamus.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-06-12 05:49:45', '2022-06-14 05:49:45', '2022-06-10 05:49:45', '2022-07-10 05:49:45', 6386000, 40, 7, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(49, 'Est eligendi error id laboriosam placeat consequatur.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-18 04:52:09', '2022-08-25 04:52:09', '2022-07-19 04:52:09', '2022-08-18 04:52:09', 4908000, 30, 1, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL),
(50, 'Beatae ab nihil amet pariatur odio qui animi.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-08 02:01:59', '2022-07-11 02:01:59', '2022-06-14 02:01:59', '2022-07-14 02:01:59', 3955000, 40, 8, '2022-06-20 05:19:33', '2022-06-20 05:19:33', NULL);

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
(1, 'Lê Ngọc Hở', 'ngocho123', '$2y$10$U.b8Cf2qgQc2807.hvUixO/dE5faE7pld0bmLbtGs6qGL/aa.jcSq', 'ngocho123@gmail.com', '2022-06-20 05:19:30', 'Nam', '0589124204', '312345678', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(2, 'Bùi Thị Thuỳ Dương', 'thuyduong123', '$2y$10$KJPl7i.awm.t/wIWSyTR4uOuFuS.Dl5biqTp4Q8zaQXBmyWNaLqTq', 'thuyduong123@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0589124205', '312345675', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(3, 'Nguyễn Thị Bảo Trân', 'baotran123', '$2y$10$TqYeNjOmd2aKFoC/8gT1J.ANCZAOvyihHJ/VF6qojTRn54HZ4sTXK', 'baotran123@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0589124206', '312345676', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(4, 'Lê Minh Nhật', 'minhnhat123', '$2y$10$k.S7iUtuN1hQr70qHKYSF.JePxgVrx2G3ag1pmBhb3W0Q2aZFiN66', 'minhnhat123@gmail.com', '2022-06-20 05:19:30', 'Nam', '0589124207', '312345677', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(5, 'Chế Vũ Uy', 'vu uy0408001', '$2y$10$eG8oG.D2b1N2TGMhrfRceuiN2VHR.gNPsT/6S/zLMTHziZjWM2sQS', 'vu uy0408001@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0739035482', '361512276', 4, 8, 37, '2022-05-12 16:14:37', 0, NULL, NULL, NULL, NULL),
(6, 'Trác Phúc Cường', 'phuc cuong0208001', '$2y$10$kPlwWU5FVAgBXaPa00h0FOYbFXwa6OmzvkHWQywnI/cNVbuDm1VN2', 'phuc cuong0208001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0440429916', '304285532', 2, 8, 18, '2010-08-11 01:13:13', 0, NULL, NULL, NULL, NULL),
(7, 'Đương Hoàng Ân', 'hoang an0606001', '$2y$10$qBryGSZvxxLVQ7KwCnzxpeXVd1HwJCg9sFJecgokC/vOW22KNNWCe', 'hoang an0606001@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0397673497', '367565953', 6, 6, 16, '2020-11-27 15:14:03', 0, NULL, NULL, NULL, NULL),
(8, 'Ngạc Anh Minh', 'anh minh0504001', '$2y$10$2XtHax2vHB7VmHgUw5yz2u6tIxlGee7IFA0ptqlaRkUJnKrdi9PVe', 'anh minh0504001@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0219298591', '303432975', 5, 4, 13, '2009-07-28 19:22:49', 0, NULL, NULL, NULL, NULL),
(9, 'Hà Minh Khôi', 'minh khoi0904001', '$2y$10$KVsPK3D3savp5Ah4skNn2OssM8HA0CP1eYapt6U32kTTAOTg93GZi', 'minh khoi0904001@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0434864666', '363312185', 9, 4, 7, '2005-12-05 19:08:52', 0, NULL, NULL, NULL, NULL),
(10, 'Ứng Công Thành', 'cong thanh0503001', '$2y$10$FNTXLFbuxUxX4qsyU7HisuMGl7RK15bsS5VB6YV0omge5G6mkkSeS', 'cong thanh0503001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0738825261', '382411697', 5, 3, 32, '2010-02-25 18:40:20', 0, NULL, NULL, NULL, NULL),
(11, 'Ngạc Quang Tuấn', 'quang tuan0401001', '$2y$10$gU.HhZwaY1bcvpFSRYdmiuVOBs.K7fNOKqMurxhYNHStN0gYdGF82', 'quang tuan0401001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0191315133', '338870287', 4, 1, 17, '2012-03-12 19:17:37', 0, NULL, NULL, NULL, NULL),
(12, 'Phương Quyết Thắng', 'quyet thang0202001', '$2y$10$f1KCprGLdZSS5BHncDc8hOznKDFUpUverWc2oT6k8qRm5x4Uf4Oiu', 'quyet thang0202001@gmail.com', '2022-06-20 05:19:30', 'Nữ', '0069361226', '362863230', 2, 2, 26, '2019-10-12 12:17:45', 0, NULL, NULL, NULL, NULL),
(13, 'Cổ Chấn Phong', 'chan phong0108001', '$2y$10$BZvqEzX4g28o5Da1fgm7weagGlCo346tkvBdph/awXs5hWSuUtSQ.', 'chan phong0108001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0253593204', '390465116', 1, 8, 14, '2005-06-15 23:03:18', 0, NULL, NULL, NULL, NULL),
(14, 'Tinh Thế Vinh', 'the vinh0106001', '$2y$10$/fB9OWSmq1ClsErTCS10W.LVJNhY3.qlxicabalATCcA4EnS6BjN2', 'the vinh0106001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0832769646', '326576045', 1, 6, 37, '2020-11-27 22:57:30', 0, NULL, NULL, NULL, NULL),
(15, 'Trịnh Minh Thuận', 'minh thuan0201001', '$2y$10$RXtdduui5Us3dzUKepsta.jMAaMYCjjTRjv55eg.WVo7xAAU4aErO', 'minh thuan0201001@gmail.com', '2022-06-20 05:19:30', 'Nam', '0500176399', '347981933', 2, 1, 29, '2014-07-20 12:36:16', 0, NULL, NULL, NULL, NULL),
(16, 'Cổ Vương Triều', 'vuong trieu0206001', '$2y$10$n9fIZreo2qRCLcvXQFg2YuQTou06gVI2XRN19BgYqPZoaAWFGiOTW', 'vuong trieu0206001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0800435969', '356728587', 2, 6, 36, '2018-01-29 12:35:55', 0, NULL, NULL, NULL, NULL),
(17, 'Chu Minh Quân', 'minh quan0905001', '$2y$10$wFoarGbEeD94xZuKta6m3um10taTWI6/J5pkmQ.4pctfPLEDMuv3u', 'minh quan0905001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0990305383', '368016718', 9, 5, 33, '2012-09-09 17:55:21', 0, NULL, NULL, NULL, NULL),
(18, 'Văn Kim Thịnh', 'kim thinh0906001', '$2y$10$uaBc7cta3P1DyKgdlKJ0xeRE6HQDcZdl67XIxpKCPewHaJg72FZLO', 'kim thinh0906001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0328703112', '339909906', 9, 6, 9, '2018-09-01 03:12:23', 0, NULL, NULL, NULL, NULL),
(19, 'Kiều Gia Uy', 'gia uy0204001', '$2y$10$qTs1PpeIA3RLN1fD0RLko.zexbuKuSps9UdFe6K7zRFrt4uT/ODAS', 'gia uy0204001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0954532842', '328685462', 2, 4, 27, '2021-06-15 06:38:01', 0, NULL, NULL, NULL, NULL),
(20, 'Uông Hải Thụy', 'hai thuy0602001', '$2y$10$j2zDpjK4QTslLtJ.Z7qZfOtIq218sHgJozjbuMkG5/B2JnDfTJiUW', 'hai thuy0602001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0438427401', '368799780', 6, 2, 10, '2003-03-14 02:18:10', 0, NULL, NULL, NULL, NULL),
(21, 'Diêm Thành Tín', 'thanh tin0805001', '$2y$10$Lun68CfZPuwCPUQ29jMEYOFMNQyK9DzI0mbD7ZMeAzLc0MkHYl3/m', 'thanh tin0805001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0783982767', '301408487', 8, 5, 26, '2015-03-26 05:05:07', 0, NULL, NULL, NULL, NULL),
(22, 'Ao Thanh Phong', 'thanh phong0205001', '$2y$10$fOKOZLeL1Hw3nPahvpjXduiwwGCOZ4AdNG1B6lveVl449PkH/ngUe', 'thanh phong0205001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0686847447', '321245820', 2, 5, 15, '2015-04-01 17:05:57', 0, NULL, NULL, NULL, NULL),
(23, 'Triệu Thành Nguyên', 'thanh nguyen0403001', '$2y$10$WReZTwSsllx7DZ4fvM2as.q8pm3occIX9u4kMeSwBFUzmAke0Z47G', 'thanh nguyen0403001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0257971716', '351838668', 4, 3, 4, '2014-12-14 02:14:14', 0, NULL, NULL, NULL, NULL),
(24, 'Hàn Kim Thịnh', 'kim thinh0507001', '$2y$10$gbN3F6MMetsY9o6XviU2le5B8lX81Qps/5gnZUr36XM4xgQTuu14u', 'kim thinh0507001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0780179163', '339624680', 5, 7, 11, '2014-03-19 12:27:39', 0, NULL, NULL, NULL, NULL),
(25, 'Đậu Hoài Trung', 'hoai trung0605001', '$2y$10$i2s149nQLeSQ4PCyO79wO.xIjtDFDu510jmVumcKtvQ9DTZWFS.y6', 'hoai trung0605001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0971077937', '385156072', 6, 5, 32, '2017-11-09 13:53:31', 0, NULL, NULL, NULL, NULL),
(26, 'Mầu Công Lập', 'cong lap0704001', '$2y$10$BGKlVdIT5Sg6v3iCwVn4Cuxg19BTqZSfJGwqPOY1TIgF1i8it2WOC', 'cong lap0704001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0996137734', '372939407', 7, 4, 15, '2005-04-22 05:11:52', 0, NULL, NULL, NULL, NULL),
(27, 'Bạch Ðình Tuấn', 'Ðinh tuan0705001', '$2y$10$gSZsRORLsOzytiGy33WMJ.xLfTJShza.vvVz/74mBucooVrZEH6pi', 'Ðinh tuan0705001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0914449118', '334945326', 7, 5, 24, '2015-03-31 02:35:43', 0, NULL, NULL, NULL, NULL),
(28, 'Doãn Ðình Phú', 'Ðinh phu0107001', '$2y$10$NLuOltiuEOc9noRP9elqWOLcg4ITb2xnx6pjb2CXfQmWsxsyEUpR.', 'Ðinh phu0107001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0760059512', '399956716', 1, 7, 30, '2019-08-13 11:29:18', 0, NULL, NULL, NULL, NULL),
(29, 'Mạc Tạ Hiền', 'ta hien0808001', '$2y$10$dvNhRoPU1V5m28gMZgyGo.GjHz/D.9bahLozxT3sIDnZjm.Fi4nZm', 'ta hien0808001@gmail.com', '2022-06-20 05:19:31', 'Nam', '0205176809', '309955653', 8, 8, 34, '2018-09-25 13:47:09', 0, NULL, NULL, NULL, NULL),
(30, 'Phí Ðức Hòa', 'Ðuc hoa0401001', '$2y$10$wNxDp1FvvcQbHANcAn032eneGVe7AFFzXh5hnO21ozfcXeEua8DMq', 'Ðuc hoa0401001@gmail.com', '2022-06-20 05:19:31', 'Nữ', '0479253983', '317927514', 4, 1, 32, '2021-02-23 20:56:14', 0, NULL, NULL, NULL, NULL),
(31, 'Lý Kiên Bình', 'kien binh0803001', '$2y$10$zfOapSuFcdzbS2lsxVIjU.24aQCF0uJrI0/6XozD09z7s37q0XVP2', 'kien binh0803001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0988641665', '379238783', 8, 3, 8, '2012-05-26 14:58:36', 0, NULL, NULL, NULL, NULL),
(32, 'Liên Mạnh Dũng', 'manh dung0506001', '$2y$10$dgSk/PWqDtIWYTRi3UbqduUlj5d7.HCC/H/BKhdqimO27lnAfw7Dq', 'manh dung0506001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0829453674', '372412637', 5, 6, 6, '2021-06-07 20:14:37', 0, NULL, NULL, NULL, NULL),
(33, 'Lèng Sơn Hải', 'son hai0908001', '$2y$10$JyTE4kbIPG1T3P5QOO37x.G7eZXZcMytKcRKiw4pqYmJCnr5WH2WS', 'son hai0908001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0675756796', '370022696', 9, 8, 23, '2012-08-22 18:18:08', 0, NULL, NULL, NULL, NULL),
(34, 'Lại Trung Hiếu', 'trung hieu0707001', '$2y$10$7JLzN6FcPYb/Y1hPZOfgUukJgI7qroTyJGrVU7gxFyWzhp3CgyC9W', 'trung hieu0707001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0637183831', '340331678', 7, 7, 22, '2015-10-11 10:29:32', 0, NULL, NULL, NULL, NULL),
(35, 'Linh Cao Sơn', 'cao son0704001', '$2y$10$wLhN.VXQLDz0Zp/IPOPaqOFHZV2oSvpbnLz16jX5msP6wTd/okXee', 'cao son0704001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0032614147', '342262357', 7, 4, 8, '2018-05-20 00:44:36', 0, NULL, NULL, NULL, NULL),
(36, 'Giáp Hồng Phát', 'hong phat0508001', '$2y$10$JWYvprAcwvaEXfFcMWYJbuentPlp7iCA0ciohsab3nWyZp3n9IkiK', 'hong phat0508001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0653252294', '345134342', 5, 8, 9, '2006-03-10 08:10:15', 0, NULL, NULL, NULL, NULL),
(37, 'Nhan Cao Thọ', 'cao tho0904001', '$2y$10$0RZbZFSy/v06bdXhNwQBo.sWc4OYhdMOKoXSSObrp5CZG1V8NWhBG', 'cao tho0904001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0679664207', '355927014', 9, 4, 6, '2018-07-10 08:39:52', 0, NULL, NULL, NULL, NULL),
(38, 'Hướng Trí Dũng', 'tri dung0604001', '$2y$10$pCNaOPIyUOM2O79jUB2R1.i.JB5P0pWVpgR3Cu9XOTtJe0/2K6Vsq', 'tri dung0604001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0802792662', '362325604', 6, 4, 37, '2012-08-03 08:31:51', 0, NULL, NULL, NULL, NULL),
(39, 'Ngọc Công Lý', 'cong ly0708001', '$2y$10$qqPr2M.Z63MpN0VDqe44aeLdqDfpzxmwRt40sNlETHnlIpKcJMOS2', 'cong ly0708001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0482365925', '350956603', 7, 8, 31, '2020-09-01 07:32:53', 0, NULL, NULL, NULL, NULL),
(40, 'Tấn Trung Nguyên', 'trung nguyen0603001', '$2y$10$kyrPSodLm4b2OdGiCfZWPe6hi1gL/xGB7Cwh7j1H9flrac4Gbeli.', 'trung nguyen0603001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0122649153', '379847325', 6, 3, 20, '2020-06-19 00:32:01', 0, NULL, NULL, NULL, NULL),
(41, 'Ấu Quang Trung', 'quang trung0702001', '$2y$10$S.vPiGeME4raJz469yq1Puipbv5cc7dQkY3ZTmpi/kW9ce/DGy43q', 'quang trung0702001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0242469941', '316811847', 7, 2, 1, '2022-02-03 10:52:44', 0, NULL, NULL, NULL, NULL),
(42, 'Tinh Nam An', 'nam an0802001', '$2y$10$4KM6XFxLMP.fsPq8nbJcCONRwulIkzcWZ1DaMpfhs7.TKpP2aRv1q', 'nam an0802001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0170941977', '396812332', 8, 2, 4, '2004-01-01 06:44:17', 0, NULL, NULL, NULL, NULL),
(43, 'Mục Bình Nguyên', 'binh nguyen0801001', '$2y$10$SyotWZqUWp3peQmaUwvsAulQTNIi35Muwo2W247fBPh.ZdGP8.9c.', 'binh nguyen0801001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0348082501', '318139845', 8, 1, 36, '2014-11-29 04:54:31', 0, NULL, NULL, NULL, NULL),
(44, 'Quảng Vạn Thông', 'van thong0805001', '$2y$10$Okquvixdc/y2kGBIEKhIY.8UZ3pEF4WOAq2Svw/BMkqUdrqtO5ice', 'van thong0805001@gmail.com', '2022-06-20 05:19:32', 'Nam', '0389192510', '361108900', 8, 5, 16, '2021-08-06 19:00:11', 0, NULL, NULL, NULL, NULL),
(45, 'Tào Anh Thái', 'anh thai0208001', '$2y$10$5X/Gddiy.hhSget.FSWBjeuH2CczvFwwqFwjcfoBsE.uU3Nt.tp6u', 'anh thai0208001@gmail.com', '2022-06-20 05:19:32', 'Nữ', '0018803961', '393180366', 2, 8, 11, '2002-07-08 00:40:13', 0, NULL, NULL, NULL, NULL),
(46, 'Võ Việt Khôi', 'viet khoi0705001', '$2y$10$CnJBqLQYyNLvVxFKQ0Afv.w2XGsyllVuGmO9/fano9aKGLRTJtpAG', 'viet khoi0705001@gmail.com', '2022-06-20 05:19:33', 'Nữ', '0343292822', '337237181', 7, 5, 21, '2012-08-12 13:53:42', 0, NULL, NULL, NULL, NULL),
(47, 'Lã Trung Hiếu', 'trung hieu0301001', '$2y$10$4M18zhtm9qmOvRbN/vYOUurHPl407jjkL8AbO54KOZOuMQloZqbgi', 'trung hieu0301001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0662487968', '330011143', 3, 1, 26, '2022-03-09 08:51:40', 0, NULL, NULL, NULL, NULL),
(48, 'Đỗ Huy Thông', 'huy thong0502001', '$2y$10$yVnBEe2Os7aP7rx5Zsm6fOiwa.qgW2ck1250BWqPspiG14el2XmDa', 'huy thong0502001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0185391006', '362587664', 5, 2, 9, '2009-04-03 23:11:12', 0, NULL, NULL, NULL, NULL),
(49, 'Vưu Việt Thái', 'viet thai0906001', '$2y$10$J2LIX2J.tApsovqY5NPgkOFeTB7.HH3D6Z9TcdY86mDiwu1yrT5Ja', 'viet thai0906001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0728439197', '313091975', 9, 6, 19, '2015-01-04 04:07:55', 0, NULL, NULL, NULL, NULL),
(50, 'Phương Hữu Từ', 'huu tu0104001', '$2y$10$7jCALCYawWPBxLmx7Qj6YO5RBtzoDihCyzVn9Pk0mnOeppuZetxbe', 'huu tu0104001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0188756805', '334896082', 1, 4, 13, '2013-02-09 19:53:19', 0, NULL, NULL, NULL, NULL),
(51, 'Ánh Vạn Thắng', 'van thang0806001', '$2y$10$WET2.IcCxOwOAkhXACyOF.cd1IroHZ41ko/uv0e1J91bWNvXMyWsy', 'van thang0806001@gmail.com', '2022-06-20 05:19:33', 'Nữ', '0164878957', '379107230', 8, 6, 15, '2015-09-29 17:28:51', 0, NULL, NULL, NULL, NULL),
(52, 'Chiêm Hữu Cảnh', 'huu canh0606001', '$2y$10$sphFOVzgteJZ9Nnd1GD/6urLwFrF8wXcl.8aM3JvXq8ILHruYA98u', 'huu canh0606001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0990118519', '307008866', 6, 6, 13, '2002-11-10 04:09:51', 0, NULL, NULL, NULL, NULL),
(53, 'Lạc Thành An', 'thanh an0103001', '$2y$10$ztU31XijN4W.8shDpRV3p./4WbH5j9nMNb5Yw0FjvE0a.YM30muTm', 'thanh an0103001@gmail.com', '2022-06-20 05:19:33', 'Nam', '0575971253', '374936354', 1, 3, 22, '2019-02-25 22:43:41', 0, NULL, NULL, NULL, NULL),
(54, 'Thái Bảo Châu', 'bao chau0105001', '$2y$10$tGkNewyyDdpJ4.mq70nI8u2quJW7uPF0R.ImbvK78kdHB.yITC.h6', 'bao chau0105001@gmail.com', '2022-06-20 05:19:33', 'Nữ', '0169066560', '389068781', 1, 5, 8, '2020-07-22 02:37:39', 0, NULL, NULL, NULL, NULL);

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `agency_tours`
--
ALTER TABLE `agency_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
