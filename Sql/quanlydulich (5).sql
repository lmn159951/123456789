-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2022 lúc 05:13 AM
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
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-22 21:42:51', NULL, NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-22 21:42:51', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-22 21:42:51', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-22 21:42:51', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-22 21:42:51', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-22 21:42:51', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-22 21:42:51', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-22 21:42:51', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-22 21:42:51', NULL, NULL);

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
(1, 9, 1, NULL, NULL, NULL),
(2, 5, 1, NULL, NULL, NULL),
(3, 9, 2, NULL, NULL, NULL),
(4, 7, 2, NULL, NULL, NULL),
(5, 6, 3, NULL, NULL, NULL),
(6, 9, 3, NULL, NULL, NULL),
(7, 7, 3, NULL, NULL, NULL),
(8, 1, 4, NULL, NULL, NULL),
(9, 1, 5, NULL, NULL, NULL),
(10, 5, 6, NULL, NULL, NULL),
(11, 7, 6, NULL, NULL, NULL),
(12, 4, 6, NULL, NULL, NULL),
(13, 3, 7, NULL, NULL, NULL),
(14, 6, 7, NULL, NULL, NULL),
(15, 8, 8, NULL, NULL, NULL),
(16, 2, 9, NULL, NULL, NULL),
(17, 1, 9, NULL, NULL, NULL),
(18, 9, 9, NULL, NULL, NULL),
(19, 9, 10, NULL, NULL, NULL),
(20, 2, 10, NULL, NULL, NULL),
(21, 6, 11, NULL, NULL, NULL),
(22, 8, 12, NULL, NULL, NULL),
(23, 3, 12, NULL, NULL, NULL),
(24, 5, 13, NULL, NULL, NULL),
(25, 9, 13, NULL, NULL, NULL),
(26, 2, 13, NULL, NULL, NULL),
(27, 8, 14, NULL, NULL, NULL),
(28, 4, 15, NULL, NULL, NULL),
(29, 2, 15, NULL, NULL, NULL),
(30, 5, 15, NULL, NULL, NULL),
(31, 5, 16, NULL, NULL, NULL),
(32, 7, 16, NULL, NULL, NULL),
(33, 8, 17, NULL, NULL, NULL),
(34, 7, 17, NULL, NULL, NULL),
(35, 6, 18, NULL, NULL, NULL),
(36, 1, 19, NULL, NULL, NULL),
(37, 6, 19, NULL, NULL, NULL),
(38, 3, 20, NULL, NULL, NULL),
(39, 5, 20, NULL, NULL, NULL),
(40, 1, 21, NULL, NULL, NULL),
(41, 7, 22, NULL, NULL, NULL),
(42, 3, 22, NULL, NULL, NULL),
(43, 9, 23, NULL, NULL, NULL),
(44, 7, 24, NULL, NULL, NULL),
(45, 2, 25, NULL, NULL, NULL),
(46, 2, 26, NULL, NULL, NULL),
(47, 8, 26, NULL, NULL, NULL),
(48, 9, 26, NULL, NULL, NULL),
(49, 8, 27, NULL, NULL, NULL),
(50, 1, 27, NULL, NULL, NULL),
(51, 3, 28, NULL, NULL, NULL),
(52, 7, 28, NULL, NULL, NULL),
(53, 2, 28, NULL, NULL, NULL),
(54, 3, 29, NULL, NULL, NULL),
(55, 4, 29, NULL, NULL, NULL),
(56, 1, 29, NULL, NULL, NULL),
(57, 8, 30, NULL, NULL, NULL),
(58, 6, 31, NULL, NULL, NULL),
(59, 2, 31, NULL, NULL, NULL),
(60, 8, 31, NULL, NULL, NULL),
(61, 4, 32, NULL, NULL, NULL),
(62, 8, 32, NULL, NULL, NULL),
(63, 8, 33, NULL, NULL, NULL),
(64, 2, 33, NULL, NULL, NULL),
(65, 2, 34, NULL, NULL, NULL),
(66, 8, 35, NULL, NULL, NULL),
(67, 8, 36, NULL, NULL, NULL),
(68, 1, 36, NULL, NULL, NULL),
(69, 6, 36, NULL, NULL, NULL),
(70, 6, 37, NULL, NULL, NULL),
(71, 1, 37, NULL, NULL, NULL),
(72, 5, 38, NULL, NULL, NULL),
(73, 6, 39, NULL, NULL, NULL),
(74, 1, 39, NULL, NULL, NULL),
(75, 8, 39, NULL, NULL, NULL),
(76, 6, 40, NULL, NULL, NULL),
(77, 6, 41, NULL, NULL, NULL),
(78, 7, 41, NULL, NULL, NULL),
(79, 1, 42, NULL, NULL, NULL),
(80, 7, 42, NULL, NULL, NULL),
(81, 6, 42, NULL, NULL, NULL),
(82, 8, 43, NULL, NULL, NULL),
(83, 6, 43, NULL, NULL, NULL),
(84, 1, 43, NULL, NULL, NULL),
(85, 7, 44, NULL, NULL, NULL),
(86, 1, 45, NULL, NULL, NULL),
(87, 7, 46, NULL, NULL, NULL),
(88, 1, 46, NULL, NULL, NULL),
(89, 5, 46, NULL, NULL, NULL),
(90, 9, 47, NULL, NULL, NULL),
(91, 5, 48, NULL, NULL, NULL),
(92, 1, 48, NULL, NULL, NULL),
(93, 9, 49, NULL, NULL, NULL);

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
(1, 'Phòng kế toán', '2022-06-22 21:42:51', NULL, NULL),
(2, 'Phòng tài chính', '2022-06-22 21:42:51', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-22 21:42:51', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-22 21:42:51', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-22 21:42:51', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-22 21:42:51', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-22 21:42:51', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-22 21:42:51', NULL, NULL);

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
(10, '2022_06_16_193208_create_supports_table', 1),
(11, '2022_06_23_093008_create_user_supports_table', 1);

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
(1, 'Nhân viên phân tích dữ liệu', '2022-06-23 02:42:52', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-23 02:42:52', NULL, NULL),
(3, 'Lập trình viên', '2022-06-23 02:42:52', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-23 02:42:52', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-23 02:42:52', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-23 02:42:52', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-23 02:42:52', NULL, NULL),
(8, 'Người giám sát', '2022-06-23 02:42:52', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-23 02:42:52', NULL, NULL),
(10, 'Sếp', '2022-06-23 02:42:52', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-23 02:42:52', NULL, NULL),
(12, 'Thư kí', '2022-06-23 02:42:52', NULL, NULL),
(13, 'Nhân viên', '2022-06-23 02:42:52', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-23 02:42:52', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-23 02:42:52', NULL, NULL),
(16, 'Quản lý', '2022-06-23 02:42:52', NULL, NULL),
(17, 'Giám đốc', '2022-06-23 02:42:52', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-23 02:42:52', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-23 02:42:52', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-23 02:42:52', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-23 02:42:52', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-23 02:42:52', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-23 02:42:52', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-23 02:42:52', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-23 02:42:52', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-23 02:42:52', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-23 02:42:52', NULL, NULL),
(28, 'Trưởng Bộ phận', '2022-06-23 02:42:52', NULL, NULL),
(29, 'Trưởng phòng nhân sự', '2022-06-23 02:42:52', NULL, NULL),
(30, 'Trưởng phòng tài chính', '2022-06-23 02:42:52', NULL, NULL),
(31, 'Trưởng phòng kế toán', '2022-06-23 02:42:52', NULL, NULL),
(32, 'Trưởng phòng sản xuất', '2022-06-23 02:42:52', NULL, NULL),
(33, 'Trưởng phòng marketing', '2022-06-23 02:42:52', NULL, NULL),
(34, 'Chủ tịch', '2022-06-23 02:42:52', NULL, NULL),
(35, 'Thành viên ban quản trị', '2022-06-23 02:42:52', NULL, NULL),
(36, 'Thư kín', '2022-06-23 02:42:52', NULL, NULL),
(37, 'Phó phòng kinh doanh', '2022-06-23 02:42:52', NULL, NULL);

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
(1, 'Tây Bắc Bộ', '2022-06-22 21:42:51', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-06-22 21:42:51', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-06-22 21:42:51', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-06-22 21:42:51', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-06-22 21:42:51', NULL, NULL),
(6, 'Tây Nguyên', '2022-06-22 21:42:51', NULL, NULL),
(7, 'Đông Nam Bộ', '2022-06-22 21:42:51', NULL, NULL),
(8, 'Tây Nam Bộ', '2022-06-22 21:42:51', NULL, NULL);

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
(1, 2000, 2001, 3, NULL, 5103000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(2, 2002, 2003, NULL, 1, 4119000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(3, 2002, 2003, 1, 3, 5093000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(4, 2002, 2003, 3, NULL, 3869000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(5, 2004, 2006, NULL, 1, 8835000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(6, 2004, 2006, 1, 2, 2344000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(7, 2004, 2006, 2, NULL, 4074000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(8, 2007, 2010, NULL, 2, 9349000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(9, 2007, 2010, 2, NULL, 7524000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(10, 2011, 2013, NULL, 2, 6483000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(11, 2011, 2013, 2, 3, 9524000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(12, 2011, 2013, 3, NULL, 5765000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(13, 2014, 2016, NULL, 1, 7875000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(14, 2014, 2016, 1, NULL, 9992000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(15, 2017, 2020, NULL, 2, 1341000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(16, 2017, 2020, 2, NULL, 7215000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(17, 2021, 2024, NULL, 2, 5044000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(18, 2021, 2024, 2, NULL, 2470000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(19, 2025, 2026, 3, NULL, 6027000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(20, 2027, 2030, NULL, 1, 2065000, '2022-06-23 02:42:56', '2022-06-23 02:42:56'),
(21, 2027, 2030, 1, NULL, 4173000, '2022-06-23 02:42:56', '2022-06-23 02:42:56');

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
(1, 'Deserunt ut molestias iure sed sint consequatur.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-03 03:08:26', '2022-10-08 03:08:26', '2022-06-28 03:08:26', '2022-09-26 03:08:26', 5731000, 20, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(2, 'Provident esse et sint placeat maiores.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-12-10 01:01:37', '2022-12-15 01:01:37', '2022-07-09 01:01:37', '2022-12-06 01:01:37', 4807000, 50, 8, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(3, 'Optio quia aspernatur eum ea nihil.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-12 18:12:25', '2022-09-19 18:12:25', '2022-07-12 18:12:25', '2022-09-10 18:12:25', 7540000, 30, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(4, 'Non mollitia porro cum sit.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-10-11 11:16:01', '2022-10-13 11:16:01', '2022-07-09 11:16:01', '2022-10-07 11:16:01', 4895000, 50, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(5, 'Rem cumque harum natus qui sunt.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-17 11:43:54', '2022-08-23 11:43:54', '2022-07-14 11:43:54', '2022-08-13 11:43:54', 876000, 60, 2, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(6, 'Omnis doloremque in earum eos.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-08-18 20:07:15', '2022-08-25 20:07:15', '2022-07-16 20:07:15', '2022-08-15 20:07:15', 2187000, 50, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(7, 'Aperiam possimus quis laborum quaerat amet.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-11-21 03:27:07', '2022-11-24 03:27:07', '2022-07-20 03:27:07', '2022-11-17 03:27:07', 5277000, 50, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(8, 'Nisi sit nesciunt quia qui soluta cupiditate recusandae.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-08-06 07:18:42', '2022-08-11 07:18:42', '2022-06-05 07:18:42', '2022-08-04 07:18:42', 2472000, 90, 2, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(9, 'Quaerat odit dolorum dolor autem vel dolorum.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2023-01-15 15:07:05', '2023-01-20 15:07:05', '2022-07-17 15:07:05', '2023-01-13 15:07:05', 4719000, 30, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(10, 'Aut quidem veritatis omnis doloremque.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2023-01-23 05:18:24', '2023-01-30 05:18:24', '2022-07-23 05:18:24', '2023-01-19 05:18:24', 4615000, 80, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(11, 'Illum voluptas corporis rerum magnam dolor.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-17 15:19:43', '2022-09-23 15:19:43', '2022-06-13 15:19:43', '2022-09-11 15:19:43', 9673000, 40, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(12, 'Quae unde cupiditate aut laboriosam.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2023-01-24 16:01:20', '2023-01-27 16:01:20', '2022-07-21 16:01:20', '2023-01-17 16:01:20', 5432000, 70, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(13, 'Et id eius assumenda quo impedit dolor.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-09-14 01:51:33', '2022-09-22 01:51:33', '2022-06-11 01:51:33', '2022-09-09 01:51:33', 6099000, 60, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(14, 'Omnis eveniet ipsum consequatur nihil qui temporibus.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-11-10 08:05:58', '2022-11-16 08:05:58', '2022-07-11 08:05:58', '2022-11-08 08:05:58', 5546000, 90, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(15, 'Harum tenetur earum beatae dolorem.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-01 17:22:57', '2022-10-03 17:22:57', '2022-06-29 17:22:57', '2022-09-27 17:22:57', 3457000, 40, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(16, 'Nobis totam fuga sed dolore nam.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-12 01:08:20', '2022-07-15 01:08:20', '2022-06-06 01:08:20', '2022-07-06 01:08:20', 8448000, 70, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(17, 'Est ipsum unde dolorem mollitia enim veniam deserunt.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-23 15:09:54', '2022-08-29 15:09:54', '2022-05-23 15:09:54', '2022-08-21 15:09:54', 3651000, 60, 8, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(18, 'Ab iure rerum velit earum corrupti magnam enim.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-11 12:30:16', '2022-08-17 12:30:16', '2022-06-04 12:30:16', '2022-08-03 12:30:16', 3981000, 20, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(19, 'Aliquam et tempora et labore aut quis ut.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-11-19 02:34:55', '2022-11-23 02:34:55', '2022-07-17 02:34:55', '2022-11-14 02:34:55', 8375000, 70, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(20, 'Fugit quae voluptatem similique et mollitia animi eius.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-10-28 23:00:33', '2022-11-02 23:00:33', '2022-06-24 23:00:33', '2022-10-22 23:00:33', 9516000, 70, 5, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(21, 'Ut commodi sunt maxime beatae est vero dolores.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-09-12 07:35:18', '2022-09-19 07:35:18', '2022-07-12 07:35:18', '2022-09-10 07:35:18', 7074000, 90, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(22, 'Magnam voluptatem quod facilis ducimus provident beatae neque.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2023-01-05 05:10:42', '2023-01-09 05:10:42', '2022-07-05 05:10:42', '2023-01-01 05:10:42', 7693000, 60, 8, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(23, 'Dolor perferendis omnis qui omnis.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-11-10 17:57:23', '2022-11-16 17:57:23', '2022-06-06 17:57:23', '2022-11-03 17:57:23', 5465000, 20, 2, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(24, 'Suscipit suscipit reiciendis officiis sunt.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-11-18 05:33:54', '2022-11-24 05:33:54', '2022-07-14 05:33:54', '2022-11-11 05:33:54', 802000, 60, 2, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(25, 'Voluptas similique voluptatem asperiores dolores veritatis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-10-25 00:23:23', '2022-10-31 00:23:23', '2022-06-23 00:23:23', '2022-10-21 00:23:23', 3787000, 80, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(26, 'Repellat eius sit dolores vitae.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-09-05 10:19:32', '2022-09-12 10:19:32', '2022-06-02 10:19:32', '2022-08-31 10:19:32', 8126000, 30, 2, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(27, 'Cumque assumenda fuga vel velit ullam harum.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-23 20:24:34', '2022-08-27 20:24:34', '2022-06-20 20:24:34', '2022-08-19 20:24:34', 7101000, 60, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(28, 'Voluptates repudiandae aut voluptatem doloremque ducimus.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-07-28 09:43:28', '2022-08-03 09:43:28', '2022-06-25 09:43:28', '2022-07-25 09:43:28', 7217000, 60, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(29, 'Commodi quae molestiae tempora architecto.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-07-10 16:54:59', '2022-07-17 16:54:59', '2022-06-07 16:54:59', '2022-07-07 16:54:59', 9084000, 30, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(30, 'Assumenda tempora necessitatibus aspernatur tenetur architecto nostrum voluptatem.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-07-06 19:18:43', '2022-07-09 19:18:43', '2022-05-30 19:18:43', '2022-06-29 19:18:43', 7623000, 50, 5, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(31, 'Aspernatur ut eos et similique molestiae cumque optio.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-11-08 13:07:53', '2022-11-10 13:07:53', '2022-06-09 13:07:53', '2022-11-06 13:07:53', 4097000, 50, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(32, 'Quasi non sunt laborum aliquam nisi molestias.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-12-17 04:51:55', '2022-12-22 04:51:55', '2022-06-15 04:51:55', '2022-12-12 04:51:55', 5352000, 60, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(33, 'Porro ut repellendus accusamus et.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-12-23 17:38:29', '2022-12-25 17:38:29', '2022-06-23 17:38:29', '2022-12-20 17:38:29', 7317000, 50, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(34, 'Enim omnis molestiae qui debitis sit praesentium ipsam.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-12-03 00:38:41', '2022-12-06 00:38:41', '2022-05-29 00:38:41', '2022-11-25 00:38:41', 1952000, 90, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(35, 'Sed quas sint tempora ipsa maiores ut ipsam.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-07-27 14:05:17', '2022-07-30 14:05:17', '2022-06-22 14:05:17', '2022-07-22 14:05:17', 4964000, 30, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(36, 'Et esse tenetur id perspiciatis nisi.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-10 06:16:55', '2022-08-15 06:16:55', '2022-06-06 06:16:55', '2022-08-05 06:16:55', 3573000, 60, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(37, 'Est quia vel eos.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-11-17 18:37:09', '2022-11-20 18:37:09', '2022-07-12 18:37:09', '2022-11-09 18:37:09', 4765000, 50, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(38, 'Aut ipsum aut expedita.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-06-26 05:06:13', '2022-06-29 05:06:13', '2022-05-25 05:06:13', '2022-06-24 05:06:13', 7706000, 30, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(39, 'Eos ipsam illo ducimus ut rerum repellendus.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-02 00:23:42', '2022-09-04 00:23:42', '2022-05-31 00:23:42', '2022-08-29 00:23:42', 1410000, 90, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(40, 'Unde qui voluptatem pariatur laudantium repudiandae animi quod aliquid.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-08-09 07:00:47', '2022-08-15 07:00:47', '2022-06-06 07:00:47', '2022-08-05 07:00:47', 3623000, 30, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(41, 'Ratione aut ut ipsa suscipit repellendus.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-11-16 06:13:40', '2022-11-24 06:13:40', '2022-07-12 06:13:40', '2022-11-09 06:13:40', 5288000, 30, 1, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(42, 'Facilis reiciendis voluptate cumque fuga.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-09-26 00:19:18', '2022-09-30 00:19:18', '2022-06-24 00:19:18', '2022-09-22 00:19:18', 7623000, 20, 3, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(43, 'Provident dolores minus possimus non voluptatem recusandae quo.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-11-23 10:46:25', '2022-11-26 10:46:25', '2022-06-19 10:46:25', '2022-11-16 10:46:25', 765000, 40, 5, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(44, 'Unde tempora ratione nisi eveniet quibusdam deserunt.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-12-21 08:01:10', '2022-12-28 08:01:10', '2022-06-17 08:01:10', '2022-12-14 08:01:10', 3742000, 60, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(45, 'Mollitia eos ea magni molestias.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-12-02 15:06:09', '2022-12-05 15:06:09', '2022-05-28 15:06:09', '2022-11-24 15:06:09', 570000, 40, 7, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(46, 'Dolorem vel optio placeat harum.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-09-07 01:54:17', '2022-09-12 01:54:17', '2022-07-05 01:54:17', '2022-09-03 01:54:17', 8895000, 20, 6, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(47, 'Alias corporis sint voluptas deleniti et.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-11-20 03:20:27', '2022-11-27 03:20:27', '2022-07-16 03:20:27', '2022-11-13 03:20:27', 4895000, 90, 8, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(48, 'Autem omnis beatae dicta neque vel minima dolor.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-21 16:31:10', '2022-10-25 16:31:10', '2022-07-18 16:31:10', '2022-10-16 16:31:10', 1699000, 40, 4, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(49, 'Ut hic assumenda quisquam et et debitis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-11-25 13:51:44', '2022-12-02 13:51:44', '2022-05-26 13:51:44', '2022-11-22 13:51:44', 5224000, 70, 8, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL),
(50, 'Tempora ipsa non consequuntur aspernatur quo.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-12-11 05:21:54', '2022-12-14 05:21:54', '2022-07-06 05:21:54', '2022-12-03 05:21:54', 6550000, 20, 5, '2022-06-23 02:42:55', '2022-06-23 02:42:55', NULL);

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
  `birthdate` datetime NOT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `email_verified_at`, `gender`, `birthdate`, `phone`, `citizen_card`, `agency_id`, `department_id`, `position_id`, `start_date`, `is_admin`, `created_at`, `updated_at`, `deleted_at`, `remember_token`, `user_token`) VALUES
(1, 'Lê Ngọc Hở', 'ngocho123', '$2y$10$MocZU5mR9GcmmRz2O8oqvezmsJfOMd2W8Ee0j4Zp/9GOQ9S2bcMre', 'ngocho123@gmail.com', '2022-06-23 02:42:52', 'Nam', '2001-06-23 09:42:52', '0589124204', '312345678', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Bùi Thị Thùy Dương', 'thuyduong123', '$2y$10$deCbs3OJQHS4Am8Ah3hz1.G4jcPSM6FzwxlAGNOfdOObz5x4O8ozC', 'thuyduong123@gmail.com', '2022-06-23 02:42:52', 'Nữ', '2001-06-23 09:42:52', '0589124205', '312345675', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Nguyễn Thị Bảo Trân', 'baotran123', '$2y$10$N/da70WlqktePZW/P6pmGeBMvH9eVc84WomfwsqxTEpiB9zkbkUii', 'baotran123@gmail.com', '2022-06-23 02:42:52', 'Nữ', '2001-06-23 09:42:52', '0589124206', '312345676', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Lê Minh Nhật', 'minhnhat123', '$2y$10$Qz1nevsUBgaCER7fi1RKkeFp0vHN1ee9N/6QRf2BfZOFmfh0qBAM.', 'minhnhat123@gmail.com', '2022-06-23 02:42:52', 'Nam', '2001-06-23 09:42:52', '0589124207', '312345677', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Đậu Hoài Trung', 'hoaitrung0706001', '$2y$10$oHOU2GraQlJDq8Db94wq5uJJol7.KoxLwyMV8P8oXw7uc8jt620IO', 'hoaitrung0706001@gmail.com', '2022-06-23 02:42:52', 'Nam', '1989-12-15 04:06:27', '0723911400', '342887305', 7, 6, 31, '2012-07-26 04:23:00', 0, NULL, NULL, NULL, NULL, NULL),
(6, 'Lèng Sơn Hải', 'sonhai0303001', '$2y$10$FDLora9eDAEtbxXekhCKf.AdmL6KduaGUVdESaNboOuZh5CnRQzSK', 'sonhai0303001@gmail.com', '2022-06-23 02:42:52', 'Nữ', '1999-10-27 21:45:51', '0191464055', '316978338', 3, 3, 29, '2021-07-07 06:45:17', 0, NULL, NULL, NULL, NULL, NULL),
(7, 'Phí Ðức Hòa', 'Ðuchoa0406001', '$2y$10$8vlnFpwFYhCC5Figu8qBy.TLY.cffz.BhpEzcYoHjZh1yoWTeFxBi', 'Ðuchoa0406001@gmail.com', '2022-06-23 02:42:52', 'Nam', '1994-12-16 07:45:51', '0216486796', '369723809', 4, 6, 29, '2008-05-06 20:35:21', 0, NULL, NULL, NULL, NULL, NULL),
(8, 'Võ Việt Khôi', 'vietkhoi0807001', '$2y$10$3znFhnkOyHFRubKTWZEz2.zua61qFxhFCrEwhVXGlvXzj6YU/j6tm', 'vietkhoi0807001@gmail.com', '2022-06-23 02:42:52', 'Nam', '2000-05-03 15:14:00', '0826694479', '313182994', 8, 7, 21, '2016-07-03 05:29:32', 0, NULL, NULL, NULL, NULL, NULL),
(9, 'Ngạc Quang Tuấn', 'quangtuan0608001', '$2y$10$9EzA1E5X6J8do1XZnPExJugcPiwKpfGJbB9.rhdGH0c9YTnmCJGLq', 'quangtuan0608001@gmail.com', '2022-06-23 02:42:52', 'Nam', '1999-02-23 06:20:00', '0012309375', '354213929', 6, 8, 36, '2010-12-14 10:12:35', 0, NULL, NULL, NULL, NULL, NULL),
(10, 'Chế Vũ Uy', 'vuuy0805001', '$2y$10$6yNJfqG9zisTf1y/g1bf7uyQKa3xufT7CDFSnvPDxISjUfNGefc0S', 'vuuy0805001@gmail.com', '2022-06-23 02:42:52', 'Nam', '1998-01-14 03:23:25', '0332145929', '305490773', 8, 5, 27, '2009-08-14 16:43:26', 0, NULL, NULL, NULL, NULL, NULL),
(11, 'Doãn Ðình Phú', 'Ðinhphu0504001', '$2y$10$0ms8dsUEouwc8FKsw4dI5uoG1oLM3dF7cRuKtDoB0SB6xTBTc/MBm', 'Ðinhphu0504001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1982-12-08 18:31:04', '0410458713', '364318556', 5, 4, 15, '2010-04-01 04:58:37', 0, NULL, NULL, NULL, NULL, NULL),
(12, 'Bạch Ðình Tuấn', 'Ðinhtuan0502001', '$2y$10$wjTqDkeYZsg0N3IHY/gitOMateOQb72UJxI6i3UF7ljGZP6MKcrmi', 'Ðinhtuan0502001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1998-09-08 02:24:06', '0126257571', '394463891', 5, 2, 19, '2013-09-05 04:06:30', 0, NULL, NULL, NULL, NULL, NULL),
(13, 'Trác Phúc Cường', 'phuccuong0801001', '$2y$10$iXAwiSHFldK9EuYFO2.AgeF/KCBQcvJ9VZXy8tsB6uo55YSHA.Tja', 'phuccuong0801001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1997-02-03 23:38:29', '0379807765', '329062225', 8, 1, 5, '2017-11-15 21:00:45', 0, NULL, NULL, NULL, NULL, NULL),
(14, 'Phương Hữu Từ', 'huutu0301001', '$2y$10$mW0VLxvsFFutVI9KwWJ.WedPyl5WVHOfLGdmkITA9e99Syo7woR72', 'huutu0301001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1992-05-25 23:45:56', '0482874534', '374497163', 3, 1, 30, '2003-02-28 12:48:32', 0, NULL, NULL, NULL, NULL, NULL),
(15, 'Hướng Trí Dũng', 'tridung0105001', '$2y$10$tL4YOMkXSh/GUMWVxJ2Ibex9c1GgFljd8GpyMyS.7WzG9FhHX7LQG', 'tridung0105001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1993-11-14 06:50:05', '0785395249', '305310004', 1, 5, 9, '2011-08-12 21:02:16', 0, NULL, NULL, NULL, NULL, NULL),
(16, 'Ấu Quang Trung', 'quangtrung0304001', '$2y$10$gooUZZull90HRZyvYKc9uecxPJAzDnyxBZDw7m6ayiniNAo4svVBm', 'quangtrung0304001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1982-08-28 02:21:26', '0081886767', '314481677', 3, 4, 13, '2011-05-21 15:43:14', 0, NULL, NULL, NULL, NULL, NULL),
(17, 'Mạc Tạ Hiền', 'tahien0405001', '$2y$10$uhqkCKpxyZQptjHV.weOqeRW.u/0MECZy9I3tUlepRDqxknfIWT.K', 'tahien0405001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1983-07-20 10:49:04', '0048206834', '384915229', 4, 5, 9, '2015-03-18 12:57:11', 0, NULL, NULL, NULL, NULL, NULL),
(18, 'Uông Hải Thụy', 'haithuy0101001', '$2y$10$ULtUxJBNW9exK70N6bJLpuUNb.NBd2bbKIQ0DPte/LfhElHpLVypq', 'haithuy0101001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1990-02-18 01:24:42', '0512342771', '399991900', 1, 1, 31, '2022-04-05 20:19:37', 0, NULL, NULL, NULL, NULL, NULL),
(19, 'Ao Thanh Phong', 'thanhphong0208001', '$2y$10$nsFPXsQ2bdornT9xqItti./K/zea9TbjCh0Q.1WTmM6pI12Tl4A8u', 'thanhphong0208001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1987-03-20 12:23:40', '0503646802', '302795967', 2, 8, 2, '2015-04-02 21:49:01', 0, NULL, NULL, NULL, NULL, NULL),
(20, 'Liên Mạnh Dũng', 'manhdung0108001', '$2y$10$G3K/E/7T0j1mI2FtD5Cgo.WBUlxhl.8A8jexjqoerOIAhFS.2fxQe', 'manhdung0108001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1988-05-10 04:45:42', '0327285733', '371307431', 1, 8, 21, '2007-07-27 22:42:17', 0, NULL, NULL, NULL, NULL, NULL),
(21, 'Chiêm Hữu Cảnh', 'huucanh0702001', '$2y$10$AkciaXY5qJbffoMy8iL.0Ojbmg6JS2X0k5.bMPOyPyEK1RdX9QIne', 'huucanh0702001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1984-01-29 08:51:33', '0637762445', '309300093', 7, 2, 24, '2020-07-16 16:13:45', 0, NULL, NULL, NULL, NULL, NULL),
(22, 'Triệu Thành Nguyên', 'thanhnguyen0401001', '$2y$10$bb.QmjkR6R7gKPwtaCKpgezfBC899z7TDktReZ8miOHcc9uMyn6Zq', 'thanhnguyen0401001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1993-03-05 09:14:40', '0653588911', '342201950', 4, 1, 12, '2009-12-16 16:53:34', 0, NULL, NULL, NULL, NULL, NULL),
(23, 'Ứng Công Thành', 'congthanh0506001', '$2y$10$Sh9oUm4YOQYmFYR3UwUD9utqbT7X69c9jeZ4xDK43tCfFu4Tzcm9K', 'congthanh0506001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1983-12-12 02:23:25', '0633841827', '339257936', 5, 6, 16, '2007-07-04 16:45:47', 0, NULL, NULL, NULL, NULL, NULL),
(24, 'Trịnh Minh Thuận', 'minhthuan0804001', '$2y$10$N9nsip2MZt.rpOwKPXlTuOlCdPU3THKA4jXaMRI9Jmqz4MTEQsBwC', 'minhthuan0804001@gmail.com', '2022-06-23 02:42:53', 'Nam', '1997-12-09 14:27:35', '0974520009', '370267441', 8, 4, 21, '2010-03-11 21:29:35', 0, NULL, NULL, NULL, NULL, NULL),
(25, 'Đương Hoàng Ân', 'hoangan0501001', '$2y$10$9lZkXgtHois5OGrY8wa0Lux.Etg9KMpMDyBmf6mFqRakFmWRwa4pG', 'hoangan0501001@gmail.com', '2022-06-23 02:42:53', 'Nữ', '1983-09-25 10:03:05', '0064947456', '326696229', 5, 1, 16, '2015-12-27 10:03:13', 0, NULL, NULL, NULL, NULL, NULL),
(26, 'Lại Trung Hiếu', 'trunghieu0507001', '$2y$10$X5CGdHt3y6GCitzxsbCU9./sr39nzmRGiaftQBBW.HaanqTlbFK4O', 'trunghieu0507001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1983-03-26 17:52:17', '0930609791', '374529685', 5, 7, 36, '2013-01-21 09:26:35', 0, NULL, NULL, NULL, NULL, NULL),
(27, 'Mầu Công Lập', 'conglap0405001', '$2y$10$uLWfSJn.DVlzNsgM9/QCF.CgnI75g1QOncuz7X3vl1iLbuWgu/3Qa', 'conglap0405001@gmail.com', '2022-06-23 02:42:54', 'Nam', '2000-11-01 15:28:24', '0685985423', '399175834', 4, 5, 3, '2009-03-24 14:22:51', 0, NULL, NULL, NULL, NULL, NULL),
(28, 'Tấn Trung Nguyên', 'trungnguyen0806001', '$2y$10$T9U1TqZfSWIn1RvT3XXVjezluIH9IiXP/zZL82kRcHsrDmIGdgQhW', 'trungnguyen0806001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '1991-04-12 04:50:05', '0797100346', '313680535', 8, 6, 31, '2017-06-27 10:16:13', 0, NULL, NULL, NULL, NULL, NULL),
(29, 'Lã Trung Hiếu', 'trunghieu0403001', '$2y$10$F1QAgGo38qOrbkavcbS3AurTbHA7d5LXj7m0asq7EXZ4taLvnrNLG', 'trunghieu0403001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '1983-03-07 14:08:11', '0592120096', '365288526', 4, 3, 9, '2008-09-07 21:42:00', 0, NULL, NULL, NULL, NULL, NULL),
(30, 'Lý Kiên Bình', 'kienbinh0505001', '$2y$10$sxJS0zkKZkDzEXle1ROcIuRbwfc/5t6nIT/tawBCP9UGNPmqJcRwK', 'kienbinh0505001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '2001-12-14 22:49:15', '0046969843', '313762417', 5, 5, 14, '2018-12-23 10:54:36', 0, NULL, NULL, NULL, NULL, NULL),
(31, 'Mục Bình Nguyên', 'binhnguyen0104001', '$2y$10$54r5yKWIooJMd97kC3hDEesG1ZNqasM9Zd6Ojqh4aeFoVbo3.BTSS', 'binhnguyen0104001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '1998-06-22 22:44:44', '0196722932', '323402623', 1, 4, 15, '2019-07-03 09:29:42', 0, NULL, NULL, NULL, NULL, NULL),
(32, 'Đỗ Huy Thông', 'huythong0903001', '$2y$10$rG4uOKT8J67cpylLe4ztYOkUE3bIgr/8.S1DZePD./D.NZ.UkLHae', 'huythong0903001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1984-04-11 03:40:44', '0232684696', '376784592', 9, 3, 36, '2005-04-17 16:19:30', 0, NULL, NULL, NULL, NULL, NULL),
(33, 'Ánh Vạn Thắng', 'vanthang0707001', '$2y$10$absiiC3JKKjLoQGwaS6oPOlPt.bC9UyEfaeXNuQ3QTCuVE2cSu2Wy', 'vanthang0707001@gmail.com', '2022-06-23 02:42:54', 'Nam', '2000-09-27 16:49:17', '0396482124', '300754334', 7, 7, 27, '2021-12-31 03:17:16', 0, NULL, NULL, NULL, NULL, NULL),
(34, 'Tào Anh Thái', 'anhthai0104001', '$2y$10$FZiMidVY8wn/m0jcDnrM8.1QvTftvVvvg1y5Tp/FrI1CFoDJk.eFK', 'anhthai0104001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1982-07-10 14:31:45', '0286433761', '341190810', 1, 4, 30, '2021-11-08 06:30:28', 0, NULL, NULL, NULL, NULL, NULL),
(35, 'Vưu Việt Thái', 'vietthai0808001', '$2y$10$gRltdHMQfRJz3rZklLnaEuV4DJupH37PRBNL5NxLkPZ6R9D0OScba', 'vietthai0808001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '1988-12-11 08:48:14', '0773261062', '374412219', 8, 8, 35, '2009-09-12 22:36:08', 0, NULL, NULL, NULL, NULL, NULL),
(36, 'Quảng Vạn Thông', 'vanthong0808001', '$2y$10$fyUebEqlrD/zNFZqbpk41OY2jbUT.wXB3kRhZx7docQwBDQ0oztJe', 'vanthong0808001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1996-06-03 04:45:04', '0725807130', '328609885', 8, 8, 23, '2012-07-27 12:33:48', 0, NULL, NULL, NULL, NULL, NULL),
(37, 'Lạc Thành An', 'thanhan0403001', '$2y$10$efcChF6CCfeYudIIuG1RW.rrlmtZdC95ZZUyw3hHhM3xqg6Xt2a.S', 'thanhan0403001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1983-07-18 02:31:08', '0115362942', '309573201', 4, 3, 21, '2012-12-18 20:12:04', 0, NULL, NULL, NULL, NULL, NULL),
(38, 'Nhan Cao Thọ', 'caotho0906001', '$2y$10$NllAgj8cm6q6tB5jy6JmNuNXpzZp/lLGrpMv0SL9q/hs17IyNIXYO', 'caotho0906001@gmail.com', '2022-06-23 02:42:54', 'Nam', '1999-04-14 06:36:43', '0987140066', '373445343', 9, 6, 24, '2016-09-10 18:11:14', 0, NULL, NULL, NULL, NULL, NULL),
(39, 'Phương Quyết Thắng', 'quyetthang0804001', '$2y$10$FKa.YbvpC3HAtcjCQbD0QepxhQWQgI2zRo/BWKEjA/9hI1rPM7vf6', 'quyetthang0804001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '2000-11-16 18:36:22', '0058643057', '329778431', 8, 4, 36, '2004-05-08 06:58:21', 0, NULL, NULL, NULL, NULL, NULL),
(40, 'Chu Minh Quân', 'minhquan0702001', '$2y$10$KQvWnSzy4EZ8mhUNFm7yPu35b2TTx/Dt0tS7mfC.siaqVP5q6Cz/e', 'minhquan0702001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '2002-01-21 03:04:20', '0201717561', '386909048', 7, 2, 33, '2014-07-29 12:03:32', 0, NULL, NULL, NULL, NULL, NULL),
(41, 'Giáp Hồng Phát', 'hongphat0404001', '$2y$10$XvV3kqCUlc4wIUlrhVLtNOl2/q/U.nUwoScccx.MJMMOEboAfvFJO', 'hongphat0404001@gmail.com', '2022-06-23 02:42:54', 'Nữ', '2000-11-26 21:21:14', '0883286994', '333859046', 4, 4, 30, '2009-03-09 13:15:45', 0, NULL, NULL, NULL, NULL, NULL),
(42, 'Tinh Nam An', 'naman0405001', '$2y$10$rkGM5D9LeFJLYFmWcLVX/OQ72.yZw508gYjEH40APUe2FMrRZCZ0K', 'naman0405001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1999-09-28 10:41:21', '0896426669', '381470081', 4, 5, 37, '2003-11-04 18:44:11', 0, NULL, NULL, NULL, NULL, NULL),
(43, 'Tinh Thế Vinh', 'thevinh0405001', '$2y$10$gZelXt5qRBVIwlHCktmVxupX5eREXDdoNAZA8h1j6oBiX/tp8K1C6', 'thevinh0405001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '2002-05-07 09:15:13', '0737091062', '326974428', 4, 5, 10, '2019-04-16 05:27:39', 0, NULL, NULL, NULL, NULL, NULL),
(44, 'Thái Bảo Châu', 'baochau0301001', '$2y$10$VW.ZHj9WiDvhMDhVQYZIseA8HZR.UtysjnXDJfLtD5rWlAmTQP2G2', 'baochau0301001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1983-05-12 17:54:31', '0445594582', '366613430', 3, 1, 30, '2012-10-27 06:41:18', 0, NULL, NULL, NULL, NULL, NULL),
(45, 'Linh Cao Sơn', 'caoson0104001', '$2y$10$TjtBt20zStKYyUJSoOCS4unlJpvRDIxkvBp6PoFlTc3vyamtJBoBW', 'caoson0104001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1996-04-25 17:38:21', '0066823887', '330775609', 1, 4, 17, '2015-01-01 18:09:12', 0, NULL, NULL, NULL, NULL, NULL),
(46, 'Cổ Chấn Phong', 'chanphong0105001', '$2y$10$IXpArFHMXh0puUOSRbZZmOA.g7oHbhRYVhP49sEG3z/OT1DceusrC', 'chanphong0105001@gmail.com', '2022-06-23 02:42:55', 'Nam', '2000-11-29 12:04:11', '0748218925', '328083565', 1, 5, 18, '2013-05-07 07:09:40', 0, NULL, NULL, NULL, NULL, NULL),
(47, 'Ngọc Công Lý', 'congly0406001', '$2y$10$GSSXQhM1Yk5TBzsE5MwvEeHZdz0SsQ6TjqzF1TZWvBKE6lWXz6rNS', 'congly0406001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1997-07-21 10:37:43', '0599854638', '357485885', 4, 6, 10, '2012-07-02 16:15:22', 0, NULL, NULL, NULL, NULL, NULL),
(48, 'Ngạc Anh Minh', 'anhminh0501001', '$2y$10$GdUOeWBt0C2zxiKtlbfxve4VxwB49zW5NqU48JaonGxtGvQu/9y9.', 'anhminh0501001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1994-09-22 17:08:46', '0275740598', '333052649', 5, 1, 23, '2014-08-18 03:47:49', 0, NULL, NULL, NULL, NULL, NULL),
(49, 'Văn Kim Thịnh', 'kimthinh0204001', '$2y$10$JZNas1FUfqh1MkbOU3Fq5eSfBRdrJX6pSSMOOgFjrhQAC0SvAFE2y', 'kimthinh0204001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1985-10-04 14:34:48', '0556673027', '311683762', 2, 4, 27, '2006-01-16 22:28:34', 0, NULL, NULL, NULL, NULL, NULL),
(50, 'Cổ Vương Triều', 'vuongtrieu0701001', '$2y$10$pLCT0k1h.jchQk7v4ktT/ue/uL7V81A01no5INwKG5u1ncKSAVSpq', 'vuongtrieu0701001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1986-06-13 08:57:39', '0173291911', '356733207', 7, 1, 18, '2009-04-12 13:38:08', 0, NULL, NULL, NULL, NULL, NULL),
(51, 'Kiều Gia Uy', 'giauy0808001', '$2y$10$PkHc8JvRkq0RqNHTzQ.92O2BOVglGFB.8wPfJ5V5fdnpeqg.35z6.', 'giauy0808001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1992-07-18 16:21:04', '0077566517', '390686572', 8, 8, 19, '2020-07-27 04:51:39', 0, NULL, NULL, NULL, NULL, NULL),
(52, 'Hà Minh Khôi', 'minhkhoi0308001', '$2y$10$5ac9ZNaAHBUUzGnAfDaM5O/a5X1QNGzQ3zLHnHCdLcEnSWxMyURtq', 'minhkhoi0308001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1985-01-27 16:23:18', '0071292619', '390826851', 3, 8, 31, '2019-02-18 11:20:51', 0, NULL, NULL, NULL, NULL, NULL),
(53, 'Hàn Kim Thịnh', 'kimthinh0103001', '$2y$10$iKfzgDAs5iXz/1As3o7c5.rmefiASRmRxksKbd1pIbrkYUovAZ9.2', 'kimthinh0103001@gmail.com', '2022-06-23 02:42:55', 'Nữ', '1998-06-06 18:45:01', '0883664191', '352065484', 1, 3, 31, '2007-03-10 09:33:24', 0, NULL, NULL, NULL, NULL, NULL),
(54, 'Diêm Thành Tín', 'thanhtin0104001', '$2y$10$Xs8jDUNviOVK4Jm9BBK9puItxMNzL/bbZxHWSRKYC8qa8EbsPTx4W', 'thanhtin0104001@gmail.com', '2022-06-23 02:42:55', 'Nam', '1999-06-11 18:33:14', '0103020739', '308630222', 1, 4, 30, '2017-02-24 06:33:44', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_supports`
--

CREATE TABLE `user_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Chỉ mục cho bảng `user_supports`
--
ALTER TABLE `user_supports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_supports_user_id_foreign` (`user_id`),
  ADD KEY `user_supports_support_id_foreign` (`support_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT cho bảng `user_supports`
--
ALTER TABLE `user_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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

--
-- Các ràng buộc cho bảng `user_supports`
--
ALTER TABLE `user_supports`
  ADD CONSTRAINT `user_supports_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
