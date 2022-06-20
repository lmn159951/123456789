-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2022 lúc 08:02 AM
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
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-20 01:01:21', NULL, NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-20 01:01:21', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-20 01:01:21', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-20 01:01:21', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-20 01:01:21', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-20 01:01:21', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-20 01:01:21', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-20 01:01:21', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-20 01:01:21', NULL, NULL);

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
(1, 1, 1, NULL, NULL, NULL),
(2, 7, 1, NULL, NULL, NULL),
(3, 9, 1, NULL, NULL, NULL),
(4, 4, 2, NULL, NULL, NULL),
(5, 6, 3, NULL, NULL, NULL),
(6, 9, 3, NULL, NULL, NULL),
(7, 1, 4, NULL, NULL, NULL),
(8, 6, 4, NULL, NULL, NULL),
(9, 5, 5, NULL, NULL, NULL),
(10, 9, 5, NULL, NULL, NULL),
(11, 1, 5, NULL, NULL, NULL),
(12, 6, 6, NULL, NULL, NULL),
(13, 9, 6, NULL, NULL, NULL),
(14, 3, 7, NULL, NULL, NULL),
(15, 9, 7, NULL, NULL, NULL),
(16, 5, 8, NULL, NULL, NULL),
(17, 3, 8, NULL, NULL, NULL),
(18, 4, 9, NULL, NULL, NULL),
(19, 3, 9, NULL, NULL, NULL),
(20, 3, 10, NULL, NULL, NULL),
(21, 2, 11, NULL, NULL, NULL),
(22, 4, 12, NULL, NULL, NULL),
(23, 3, 12, NULL, NULL, NULL),
(24, 5, 12, NULL, NULL, NULL),
(25, 3, 13, NULL, NULL, NULL),
(26, 4, 14, NULL, NULL, NULL),
(27, 4, 15, NULL, NULL, NULL),
(28, 7, 16, NULL, NULL, NULL),
(29, 1, 16, NULL, NULL, NULL),
(30, 8, 17, NULL, NULL, NULL),
(31, 6, 17, NULL, NULL, NULL),
(32, 1, 17, NULL, NULL, NULL),
(33, 5, 18, NULL, NULL, NULL),
(34, 3, 18, NULL, NULL, NULL),
(35, 9, 19, NULL, NULL, NULL),
(36, 7, 19, NULL, NULL, NULL),
(37, 1, 19, NULL, NULL, NULL),
(38, 9, 20, NULL, NULL, NULL),
(39, 6, 21, NULL, NULL, NULL),
(40, 2, 21, NULL, NULL, NULL),
(41, 5, 21, NULL, NULL, NULL),
(42, 7, 22, NULL, NULL, NULL),
(43, 9, 22, NULL, NULL, NULL),
(44, 7, 23, NULL, NULL, NULL),
(45, 9, 23, NULL, NULL, NULL),
(46, 5, 23, NULL, NULL, NULL),
(47, 5, 24, NULL, NULL, NULL),
(48, 1, 24, NULL, NULL, NULL),
(49, 8, 25, NULL, NULL, NULL),
(50, 7, 25, NULL, NULL, NULL),
(51, 1, 25, NULL, NULL, NULL),
(52, 1, 26, NULL, NULL, NULL),
(53, 7, 26, NULL, NULL, NULL),
(54, 4, 27, NULL, NULL, NULL),
(55, 6, 27, NULL, NULL, NULL),
(56, 9, 27, NULL, NULL, NULL),
(57, 5, 28, NULL, NULL, NULL),
(58, 3, 28, NULL, NULL, NULL),
(59, 1, 28, NULL, NULL, NULL),
(60, 7, 29, NULL, NULL, NULL),
(61, 1, 29, NULL, NULL, NULL),
(62, 8, 30, NULL, NULL, NULL),
(63, 4, 30, NULL, NULL, NULL),
(64, 1, 30, NULL, NULL, NULL),
(65, 7, 31, NULL, NULL, NULL),
(66, 6, 31, NULL, NULL, NULL),
(67, 5, 31, NULL, NULL, NULL),
(68, 9, 32, NULL, NULL, NULL),
(69, 3, 32, NULL, NULL, NULL),
(70, 2, 32, NULL, NULL, NULL),
(71, 4, 33, NULL, NULL, NULL),
(72, 2, 34, NULL, NULL, NULL),
(73, 7, 34, NULL, NULL, NULL),
(74, 9, 35, NULL, NULL, NULL),
(75, 1, 35, NULL, NULL, NULL),
(76, 8, 36, NULL, NULL, NULL),
(77, 2, 37, NULL, NULL, NULL),
(78, 6, 37, NULL, NULL, NULL),
(79, 7, 37, NULL, NULL, NULL),
(80, 4, 38, NULL, NULL, NULL),
(81, 3, 38, NULL, NULL, NULL),
(82, 2, 39, NULL, NULL, NULL),
(83, 7, 40, NULL, NULL, NULL),
(84, 1, 40, NULL, NULL, NULL),
(85, 1, 41, NULL, NULL, NULL),
(86, 2, 41, NULL, NULL, NULL),
(87, 6, 41, NULL, NULL, NULL),
(88, 7, 42, NULL, NULL, NULL),
(89, 4, 42, NULL, NULL, NULL),
(90, 3, 42, NULL, NULL, NULL),
(91, 5, 43, NULL, NULL, NULL),
(92, 1, 43, NULL, NULL, NULL),
(93, 3, 43, NULL, NULL, NULL),
(94, 3, 44, NULL, NULL, NULL),
(95, 8, 44, NULL, NULL, NULL),
(96, 7, 44, NULL, NULL, NULL),
(97, 9, 45, NULL, NULL, NULL),
(98, 5, 45, NULL, NULL, NULL),
(99, 2, 46, NULL, NULL, NULL),
(100, 8, 46, NULL, NULL, NULL),
(101, 3, 47, NULL, NULL, NULL),
(102, 4, 48, NULL, NULL, NULL),
(103, 7, 48, NULL, NULL, NULL),
(104, 5, 48, NULL, NULL, NULL),
(105, 9, 49, NULL, NULL, NULL),
(106, 1, 49, NULL, NULL, NULL);

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
(1, 'Phòng kế toán', '2022-06-20 01:01:21', NULL, NULL),
(2, 'Phòng tài chín', '2022-06-20 01:01:21', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-20 01:01:21', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-20 01:01:21', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-20 01:01:21', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-20 01:01:21', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-20 01:01:21', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-20 01:01:21', NULL, NULL);

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
(1, 'Nhân viên phân tích dữ liệu', '2022-06-20 06:01:22', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-20 06:01:22', NULL, NULL),
(3, 'Lập trình viên', '2022-06-20 06:01:22', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-20 06:01:22', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-20 06:01:22', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-20 06:01:22', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-20 06:01:22', NULL, NULL),
(8, 'Người giám sát', '2022-06-20 06:01:22', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-20 06:01:22', NULL, NULL),
(10, 'Sếp', '2022-06-20 06:01:22', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-20 06:01:22', NULL, NULL),
(12, 'Thư kí', '2022-06-20 06:01:22', NULL, NULL),
(13, 'Nhân viên', '2022-06-20 06:01:22', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-20 06:01:22', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-20 06:01:22', NULL, NULL),
(16, 'Quản lý', '2022-06-20 06:01:22', NULL, NULL),
(17, 'Giám đốc', '2022-06-20 06:01:22', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-20 06:01:22', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-20 06:01:22', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-20 06:01:22', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-20 06:01:22', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-20 06:01:22', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-20 06:01:22', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-20 06:01:22', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-20 06:01:22', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-20 06:01:22', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-20 06:01:22', NULL, NULL),
(28, 'Trưởng Bộ phận', '2022-06-20 06:01:22', NULL, NULL),
(29, 'Trưởng phòng nhân sự', '2022-06-20 06:01:22', NULL, NULL),
(30, 'Trưởng phòng tài chính', '2022-06-20 06:01:22', NULL, NULL),
(31, 'Trưởng phòng kế toán', '2022-06-20 06:01:22', NULL, NULL),
(32, 'Trưởng phòng sản xuất', '2022-06-20 06:01:22', NULL, NULL),
(33, 'Trưởng phòng marketing', '2022-06-20 06:01:22', NULL, NULL),
(34, 'Chủ tịch', '2022-06-20 06:01:22', NULL, NULL),
(35, 'Thành viên ban quản trị', '2022-06-20 06:01:22', NULL, NULL),
(36, 'Thư kín', '2022-06-20 06:01:22', NULL, NULL),
(37, 'Phó phòng kinh doanh', '2022-06-20 06:01:22', NULL, NULL);

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
(1, 'Tây Bắc Bộ', '2022-06-20 01:01:21', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-06-20 01:01:21', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-06-20 01:01:21', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-06-20 01:01:21', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-06-20 01:01:21', NULL, NULL),
(6, 'Tây Nguyên', '2022-06-20 01:01:21', NULL, NULL),
(7, 'Đông Nam Bộ', '2022-06-20 01:01:21', NULL, NULL),
(8, 'Tây Nam Bộ', '2022-06-20 01:01:21', NULL, NULL);

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
(1, 2000, 2001, NULL, 2, 5775000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(2, 2000, 2001, 2, 3, 9344000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(3, 2000, 2001, 3, NULL, 6074000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(4, 2002, 2004, NULL, 2, 6371000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(5, 2002, 2004, 2, NULL, 8427000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(6, 2005, 2008, NULL, 2, 9926000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(7, 2005, 2008, 2, 4, 1532000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(8, 2005, 2008, 4, NULL, 7758000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(9, 2009, 2011, 3, NULL, 5628000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(10, 2012, 2014, NULL, 2, 4886000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(11, 2012, 2014, 2, NULL, 7724000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(12, 2015, 2017, NULL, 2, 7080000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(13, 2015, 2017, 2, 4, 4931000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(14, 2015, 2017, 4, NULL, 814000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(15, 2018, 2021, NULL, 1, 9957000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(16, 2018, 2021, 1, 2, 8064000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(17, 2018, 2021, 2, NULL, 5746000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(18, 2022, 2024, NULL, 1, 6905000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(19, 2022, 2024, 1, 3, 9017000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(20, 2022, 2024, 3, NULL, 5536000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(21, 2025, 2027, NULL, 2, 4102000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(22, 2025, 2027, 2, NULL, 4380000, '2022-06-20 06:01:26', '2022-06-20 06:01:26'),
(23, 2028, 2030, 3, NULL, 9175000, '2022-06-20 06:01:26', '2022-06-20 06:01:26');

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
(1, 'Facilis quas quia sunt corporis sit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2023-01-15 22:23:47', '2023-01-18 22:23:47', '2022-07-17 22:23:47', '2023-01-13 22:23:47', 8392000, 70, 5, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(2, 'Qui et accusamus possimus beatae.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-28 18:37:02', '2022-09-30 18:37:02', '2022-06-24 18:37:02', '2022-09-22 18:37:02', 7821000, 50, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(3, 'Ab illo et nemo vel.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-10-20 08:17:31', '2022-10-25 08:17:31', '2022-07-16 08:17:31', '2022-10-14 08:17:31', 4229000, 90, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(4, 'Aut voluptate itaque porro quod nam.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-05 13:06:36', '2022-08-10 13:06:36', '2022-06-29 13:06:36', '2022-07-29 13:06:36', 8265000, 80, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(5, 'Voluptas repellendus molestiae eligendi eveniet enim nobis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-08-27 03:56:51', '2022-09-02 03:56:51', '2022-06-21 03:56:51', '2022-08-20 03:56:51', 4505000, 30, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(6, 'Temporibus alias quis expedita ipsam ut omnis corporis facere.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-07-21 14:40:59', '2022-07-27 14:40:59', '2022-05-20 14:40:59', '2022-07-19 14:40:59', 5102000, 20, 8, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(7, 'Modi cum exercitationem laboriosam inventore nam.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-10-30 17:34:44', '2022-11-03 17:34:44', '2022-06-28 17:34:44', '2022-10-26 17:34:44', 1065000, 80, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(8, 'Eveniet sed beatae sit.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-07-08 11:17:58', '2022-07-10 11:17:58', '2022-05-31 11:17:58', '2022-06-30 11:17:58', 7629000, 30, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(9, 'Quia officiis tempora qui non.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-09-06 21:13:07', '2022-09-12 21:13:07', '2022-07-03 21:13:07', '2022-09-01 21:13:07', 1792000, 40, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(10, 'Dolor molestiae laboriosam repudiandae accusantium voluptate sed.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-06-24 22:02:41', '2022-07-02 22:02:41', '2022-05-20 22:02:41', '2022-06-19 22:02:41', 619000, 20, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(11, 'Perferendis id amet suscipit commodi.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-09-24 05:43:18', '2022-09-27 05:43:18', '2022-06-22 05:43:18', '2022-09-20 05:43:18', 7704000, 80, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(12, 'Labore odio in labore laborum ut sint aspernatur.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-12-25 09:26:29', '2022-12-27 09:26:29', '2022-06-24 09:26:29', '2022-12-21 09:26:29', 6699000, 30, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(13, 'Perferendis id odit et.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-08-31 08:03:10', '2022-09-07 08:03:10', '2022-05-25 08:03:10', '2022-08-23 08:03:10', 7409000, 70, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(14, 'Alias et blanditiis amet perspiciatis omnis.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-06-23 12:59:09', '2022-06-27 12:59:09', '2022-05-21 12:59:09', '2022-06-20 12:59:09', 2194000, 50, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(15, 'Repudiandae mollitia earum repellat quidem porro voluptatem.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-06-29 16:48:01', '2022-07-06 16:48:01', '2022-05-24 16:48:01', '2022-06-23 16:48:01', 3915000, 30, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(16, 'Recusandae iste dolores iusto libero ipsa eaque voluptas.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-12-27 17:14:19', '2023-01-04 17:14:19', '2022-06-24 17:14:19', '2022-12-21 17:14:19', 2403000, 60, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(17, 'Pariatur soluta veniam voluptatem sequi iste dolore.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-08-07 18:30:42', '2022-08-12 18:30:42', '2022-05-31 18:30:42', '2022-07-30 18:30:42', 3095000, 50, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(18, 'Et dolorem dolorem molestiae voluptatem.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-12-13 02:53:36', '2022-12-21 02:53:36', '2022-07-10 02:53:36', '2022-12-07 02:53:36', 7421000, 90, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(19, 'Amet assumenda ut debitis dolores iusto blanditiis.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-08-03 14:14:51', '2022-08-08 14:14:51', '2022-06-29 14:14:51', '2022-07-29 14:14:51', 7502000, 60, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(20, 'Officiis excepturi in architecto.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-12-09 21:36:20', '2022-12-11 21:36:20', '2022-06-06 21:36:20', '2022-12-03 21:36:20', 5386000, 90, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(21, 'Ipsam facilis minus suscipit molestiae deleniti.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-12-23 22:25:36', '2022-12-27 22:25:36', '2022-06-21 22:25:36', '2022-12-18 22:25:36', 554000, 30, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(22, 'Commodi exercitationem aperiam reiciendis quas ratione omnis qui porro.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-07-15 12:38:49', '2022-07-20 12:38:49', '2022-06-10 12:38:49', '2022-07-10 12:38:49', 2072000, 80, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(23, 'Atque labore blanditiis eveniet quae rerum.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-12-14 13:56:06', '2022-12-21 13:56:06', '2022-06-13 13:56:06', '2022-12-10 13:56:06', 5950000, 70, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(24, 'Rerum assumenda aut sit ipsam excepturi impedit.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-28 05:04:18', '2022-09-02 05:04:18', '2022-06-21 05:04:18', '2022-08-20 05:04:18', 5627000, 20, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(25, 'Doloribus ex molestiae sunt aut ut excepturi.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-10-27 23:40:31', '2022-11-02 23:40:31', '2022-05-24 23:40:31', '2022-10-21 23:40:31', 7942000, 90, 8, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(26, 'Veritatis consequatur atque dolores facilis neque.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-11-14 13:52:20', '2022-11-17 13:52:20', '2022-07-12 13:52:20', '2022-11-09 13:52:20', 9178000, 60, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(27, 'Quibusdam at non hic eos.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-08-06 15:33:08', '2022-08-13 15:33:08', '2022-07-01 15:33:08', '2022-07-31 15:33:08', 9727000, 30, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(28, 'Sit aliquam saepe tempore rerum iure dolor earum praesentium.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-03 17:46:51', '2022-08-05 17:46:51', '2022-06-27 17:46:51', '2022-07-27 17:46:51', 6512000, 60, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(29, 'Quasi itaque minus delectus impedit.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-09-08 21:56:07', '2022-09-10 21:56:07', '2022-06-08 21:56:07', '2022-09-06 21:56:07', 6552000, 70, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(30, 'Quis corporis ducimus et quo dicta.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-08-31 07:58:16', '2022-09-04 07:58:16', '2022-05-30 07:58:16', '2022-08-28 07:58:16', 2694000, 50, 8, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(31, 'Facere laborum debitis doloremque aut dignissimos nihil reprehenderit ducimus.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-12-01 08:59:52', '2022-12-05 08:59:52', '2022-06-29 08:59:52', '2022-11-26 08:59:52', 9299000, 90, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(32, 'Veniam dolores numquam quisquam dolor ipsum rerum consequuntur.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2023-01-18 02:05:34', '2023-01-21 02:05:34', '2022-07-20 02:05:34', '2023-01-16 02:05:34', 7879000, 90, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(33, 'Expedita placeat sit ut totam.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2023-01-01 03:58:27', '2023-01-09 03:58:27', '2022-07-03 03:58:27', '2022-12-30 03:58:27', 3995000, 30, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(34, 'Praesentium voluptates iure sit eos dolor aut ipsum.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-09-01 16:22:18', '2022-09-09 16:22:18', '2022-06-01 16:22:18', '2022-08-30 16:22:18', 1164000, 40, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(35, 'Ipsum repellendus eum nam cumque voluptates aut corporis.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-08-02 11:13:00', '2022-08-04 11:13:00', '2022-06-26 11:13:00', '2022-07-26 11:13:00', 1559000, 80, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(36, 'Quo blanditiis temporibus assumenda velit expedita.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-10-06 05:08:59', '2022-10-12 05:08:59', '2022-06-03 05:08:59', '2022-10-01 05:08:59', 7798000, 70, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(37, 'Id dignissimos aliquam ipsa omnis.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-12-31 07:31:45', '2023-01-06 07:31:45', '2022-06-29 07:31:45', '2022-12-26 07:31:45', 2990000, 80, 4, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(38, 'Enim molestiae ducimus eaque quis voluptates et alias.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-11-26 07:08:33', '2022-11-29 07:08:33', '2022-06-21 07:08:33', '2022-11-18 07:08:33', 7912000, 60, 7, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(39, 'Molestiae unde ut aperiam autem.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-11-26 07:42:34', '2022-12-04 07:42:34', '2022-06-22 07:42:34', '2022-11-19 07:42:34', 7518000, 50, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(40, 'Autem ea nihil voluptatem repellat sed et.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-06-30 14:44:01', '2022-07-06 14:44:01', '2022-05-29 14:44:01', '2022-06-28 14:44:01', 4298000, 20, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(41, 'Vel blanditiis consequatur debitis doloremque consequatur explicabo omnis sint.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-09-07 00:43:38', '2022-09-09 00:43:38', '2022-06-01 00:43:38', '2022-08-30 00:43:38', 5586000, 80, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(42, 'Quas repellendus sequi non voluptatum aut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-07 02:21:47', '2022-08-11 02:21:47', '2022-07-01 02:21:47', '2022-07-31 02:21:47', 7496000, 80, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(43, 'Et rem id qui rerum et quo facilis ullam.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-10-16 03:27:58', '2022-10-22 03:27:58', '2022-07-16 03:27:58', '2022-10-14 03:27:58', 1052000, 50, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(44, 'Sapiente aperiam quod voluptates nobis ut in ab.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-08-03 12:24:55', '2022-08-11 12:24:55', '2022-07-02 12:24:55', '2022-08-01 12:24:55', 7709000, 50, 3, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(45, 'Omnis rerum aut consequatur a laudantium aut.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2023-01-10 07:15:39', '2023-01-14 07:15:39', '2022-07-09 07:15:39', '2023-01-05 07:15:39', 9062000, 80, 8, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(46, 'Vitae qui qui velit esse ipsa sit cupiditate cupiditate.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-10-10 23:20:02', '2022-10-14 23:20:02', '2022-07-05 23:20:02', '2022-10-03 23:20:02', 7101000, 80, 1, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(47, 'Sed amet aut velit suscipit odit soluta et.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-11-04 13:42:35', '2022-11-09 13:42:35', '2022-06-02 13:42:35', '2022-10-30 13:42:35', 2475000, 80, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(48, 'Perspiciatis earum et harum et inventore.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-09-22 13:00:13', '2022-09-24 13:00:13', '2022-06-21 13:00:13', '2022-09-19 13:00:13', 2881000, 50, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(49, 'Sed possimus voluptatibus consequuntur.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-08-21 21:25:35', '2022-08-24 21:25:35', '2022-06-15 21:25:35', '2022-08-14 21:25:35', 4584000, 20, 2, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL),
(50, 'Architecto ut omnis fuga.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-04 12:00:49', '2022-08-09 12:00:49', '2022-07-02 12:00:49', '2022-08-01 12:00:49', 554000, 50, 6, '2022-06-20 06:01:25', '2022-06-20 06:01:25', NULL);

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
(1, 'Lê Ngọc Hở', 'ngocho123', '$2y$10$vBa0o4DMoD3H0Oy1eROknOxWhaV8WyiY4DT./ExJPQbWJG2K2QA5a', 'ngocho123@gmail.com', '2022-06-20 06:01:22', 'Nam', '0589124204', '312345678', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(2, 'Bùi Thị Thuỳ Dương', 'thuyduong123', '$2y$10$s0vAWgoDRNusVaBdtjNyTeHjyXZjRw4Du98QbUJMb0f38.v1bazsW', 'thuyduong123@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0589124205', '312345675', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(3, 'Nguyễn Thị Bảo Trân', 'baotran123', '$2y$10$yBREC0flzXjSmyCJ/CgCKuPWxTrp88OWHmC0xQ/tfM4wlwzSFbQQK', 'baotran123@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0589124206', '312345676', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(4, 'Lê Minh Nhật', 'minhnhat123', '$2y$10$cyyUSSv7PVCJDG730Iaj.e0KLGmJQzBA8fhFY1WRCZ9ZT3GR0Tf96', 'minhnhat123@gmail.com', '2022-06-20 06:01:22', 'Nam', '0589124207', '312345677', 9, 7, 3, '2022-06-13 00:00:00', 1, NULL, NULL, NULL, NULL),
(5, 'Doãn Ðình Phú', 'Ðinh phu0208001', '$2y$10$oYaIDAVO8m8eNDY1/rKj..mxZGRM.QZijGxe2pDCxXuKsxBKQzt7e', 'Ðinh phu0208001@gmail.com', '2022-06-20 06:01:22', 'Nam', '0289972925', '311301614', 2, 8, 28, '2012-05-10 08:44:55', 0, NULL, NULL, NULL, NULL),
(6, 'Phương Hữu Từ', 'huu tu0901001', '$2y$10$JOchRrJlnngwGzGZbHq4oOYM6ZFIGavGh1pEibPnU5B/.L0RJFZme', 'huu tu0901001@gmail.com', '2022-06-20 06:01:22', 'Nam', '0839379576', '342999195', 9, 1, 19, '2013-05-21 18:36:01', 0, NULL, NULL, NULL, NULL),
(7, 'Ngọc Công Lý', 'cong ly0103001', '$2y$10$LiNOmevMsaDEnYN1nE37B.yTo6mHlprtNhhz6NYkwuxxDfM5QeCV6', 'cong ly0103001@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0206915961', '379458244', 1, 3, 21, '2012-04-02 01:30:04', 0, NULL, NULL, NULL, NULL),
(8, 'Quảng Vạn Thông', 'van thong0205001', '$2y$10$9RbZZThKSBVBE15OzJstwemBm78u/7QYcTa.ugXQno3h/Q4wPs/8O', 'van thong0205001@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0112555674', '394576116', 2, 5, 20, '2002-08-12 22:09:08', 0, NULL, NULL, NULL, NULL),
(9, 'Ao Thanh Phong', 'thanh phong0902001', '$2y$10$KBcAeBMtVVHuRUESSOwmIO4sXYM7M0vSTYD.3tUaNKsPF2GW/4Gki', 'thanh phong0902001@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0781275348', '341811646', 9, 2, 14, '2014-12-27 20:04:14', 0, NULL, NULL, NULL, NULL),
(10, 'Tinh Nam An', 'nam an0802001', '$2y$10$O.KGWM21h9YTH/ZXeRuSBuAE3vMwO9WIsKHJ42bv9iD2Ony2wEuOy', 'nam an0802001@gmail.com', '2022-06-20 06:01:22', 'Nam', '0813921431', '345986286', 8, 2, 23, '2005-07-19 17:11:36', 0, NULL, NULL, NULL, NULL),
(11, 'Mầu Công Lập', 'cong lap0608001', '$2y$10$TzvsXg9OkV6bv38NhxWHzuxUg.eN0EXi56a8STEO5rIdjkC2geTly', 'cong lap0608001@gmail.com', '2022-06-20 06:01:22', 'Nữ', '0274560998', '353833511', 6, 8, 25, '2017-10-05 08:49:02', 0, NULL, NULL, NULL, NULL),
(12, 'Cổ Vương Triều', 'vuong trieu0707001', '$2y$10$ItzXmQbqv1akYlcxcYEGvuWQSku13PnDvgAQAkP25m0r8uDWFOH1u', 'vuong trieu0707001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0788988078', '322960000', 7, 7, 24, '2012-07-09 12:36:09', 0, NULL, NULL, NULL, NULL),
(13, 'Linh Cao Sơn', 'cao son0203001', '$2y$10$zJ8MeQPR8diBPx.02v6pZeUOwKSX0xAIRYlkgK6/6025xWSLDrTPm', 'cao son0203001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0133955563', '324766774', 2, 3, 32, '2014-02-17 01:32:47', 0, NULL, NULL, NULL, NULL),
(14, 'Chế Vũ Uy', 'vu uy0401001', '$2y$10$qJGoW3tzDt.UoKRyMvwYQObRSAylSLyUWSIceRuyU5gxUm8a/swXq', 'vu uy0401001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0318893086', '371785637', 4, 1, 13, '2007-05-05 23:49:56', 0, NULL, NULL, NULL, NULL),
(15, 'Liên Mạnh Dũng', 'manh dung0201001', '$2y$10$kuj4wLJ73SFEwlGL6rR.Quxz5Tj0FLZWJBDCzE5y938q.UUQqlF.i', 'manh dung0201001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0104444109', '345206381', 2, 1, 13, '2012-08-10 14:34:06', 0, NULL, NULL, NULL, NULL),
(16, 'Trác Phúc Cường', 'phuc cuong0508001', '$2y$10$dIh5HTBnJXBX9wZbs4ye/.NxCkSIAQdoUGLSpC1pmBMmrnT3YQb7S', 'phuc cuong0508001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0377418469', '356772344', 5, 8, 31, '2022-01-12 01:24:13', 0, NULL, NULL, NULL, NULL),
(17, 'Cổ Chấn Phong', 'chan phong0201001', '$2y$10$pMu/yK6RYQ6/AxFmFuGWNugre/dec7xrFqLqt8sr3mnLLTAWQG45C', 'chan phong0201001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0303117329', '390609331', 2, 1, 16, '2008-06-19 02:42:24', 0, NULL, NULL, NULL, NULL),
(18, 'Phí Ðức Hòa', 'Ðuc hoa0908001', '$2y$10$ijG3NsEbbFfqu1nLICx5luDyBJztXlpWzhpelNj6WRT34EPvhZH1G', 'Ðuc hoa0908001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0018756059', '391095336', 9, 8, 8, '2015-02-01 12:30:39', 0, NULL, NULL, NULL, NULL),
(19, 'Đương Hoàng Ân', 'hoang an0304001', '$2y$10$dd0P97H22AVjmaL5mI6U4OfHXExR1r7t/DSBvvARFQmkzEB7oi.eO', 'hoang an0304001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0913600484', '373324226', 3, 4, 17, '2007-07-20 11:16:55', 0, NULL, NULL, NULL, NULL),
(20, 'Triệu Thành Nguyên', 'thanh nguyen0703001', '$2y$10$Ayo6dFz2jzF/B4KZuNQ1be7PS/gDEEVb9cO86JyaTC9L8a9jj6EPO', 'thanh nguyen0703001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0019599007', '345098930', 7, 3, 7, '2006-06-16 10:24:45', 0, NULL, NULL, NULL, NULL),
(21, 'Bạch Ðình Tuấn', 'Ðinh tuan0805001', '$2y$10$R69NmBrSPx/P8NQIeSwFH.CAOxISmbGC9YTyfFKb80qkVVwIF.VjG', 'Ðinh tuan0805001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0378687149', '321574785', 8, 5, 11, '2007-03-03 02:16:38', 0, NULL, NULL, NULL, NULL),
(22, 'Ứng Công Thành', 'cong thanh0208001', '$2y$10$ODMOKTBQDo6TxJxk7Ck8ye6rk6vjkQq2NgBWg8BnrGh7SJKPCbaHq', 'cong thanh0208001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0221101674', '375548179', 2, 8, 34, '2012-06-28 12:04:56', 0, NULL, NULL, NULL, NULL),
(23, 'Chu Minh Quân', 'minh quan0904001', '$2y$10$iRQbuX6rr4KlYq22QF4gzueNuCIbWaps7W9xR3RnIwUKJC2GLKdle', 'minh quan0904001@gmail.com', '2022-06-20 06:01:23', 'Nam', '0252322043', '394512858', 9, 4, 16, '2010-07-28 06:54:16', 0, NULL, NULL, NULL, NULL),
(24, 'Thái Bảo Châu', 'bao chau0108001', '$2y$10$ian2Qd/NFt2RGeFM3N9GL.4qQxxU2Rifj9IWa4ZjZJLria3sYrFjK', 'bao chau0108001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0607581972', '336148161', 1, 8, 27, '2017-12-17 01:37:42', 0, NULL, NULL, NULL, NULL),
(25, 'Ngạc Quang Tuấn', 'quang tuan0302001', '$2y$10$7G9W3foLafRMllpPCp0VdOK5lJ.szQj9hcE5D013fN7pLAIBMDUcu', 'quang tuan0302001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0824600909', '365911328', 3, 2, 18, '2014-01-18 07:54:15', 0, NULL, NULL, NULL, NULL),
(26, 'Trịnh Minh Thuận', 'minh thuan0305001', '$2y$10$tSu2MMjj/.2pBetGEkc00.tAiUyfmpItDe36FpUcNx43p7/gqV5Xe', 'minh thuan0305001@gmail.com', '2022-06-20 06:01:23', 'Nữ', '0084941019', '398292884', 3, 5, 19, '2020-06-14 04:45:24', 0, NULL, NULL, NULL, NULL),
(27, 'Hàn Kim Thịnh', 'kim thinh0106001', '$2y$10$9/foQlnfGK1AntMrjbLZ3.VL.mxuH5inPpRz6Z3U7cM58GUCFQdNa', 'kim thinh0106001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0096869086', '344809964', 1, 6, 16, '2018-03-19 00:48:44', 0, NULL, NULL, NULL, NULL),
(28, 'Lại Trung Hiếu', 'trung hieu0103001', '$2y$10$qPU2heZ5v4OM7s/Qv4d.V.m.mXsu4DfxVu6L12Ls07gCn0uzmb8gG', 'trung hieu0103001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0428797411', '358341625', 1, 3, 8, '2008-03-29 04:41:36', 0, NULL, NULL, NULL, NULL),
(29, 'Đậu Hoài Trung', 'hoai trung0901001', '$2y$10$MGsUU4X2lROe7CuDbLu1X.OLmgTT/RSC0huDJSR49H05lKiIWhdHe', 'hoai trung0901001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0567056125', '353714537', 9, 1, 33, '2014-03-12 09:52:52', 0, NULL, NULL, NULL, NULL),
(30, 'Võ Việt Khôi', 'viet khoi0801001', '$2y$10$IqvSyj32k.WBCeF/uSPIYeVKA72Cf3daM3KG63DTW6LpVxzZ/Yibe', 'viet khoi0801001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0795157428', '320700962', 8, 1, 26, '2005-09-23 08:37:33', 0, NULL, NULL, NULL, NULL),
(31, 'Tinh Thế Vinh', 'the vinh0806001', '$2y$10$flpSbWeIk1KOKNWwzog1Du4fpzqQ8kAhgUMqsQBh7My4cQpGaKhQ2', 'the vinh0806001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0377960420', '312769424', 8, 6, 2, '2007-01-07 13:21:25', 0, NULL, NULL, NULL, NULL),
(32, 'Giáp Hồng Phát', 'hong phat0308001', '$2y$10$FlO19FnFW3DmZ0wEv47cfuI6P9i7ai20SnrcZbXES3GoeIsZmU3mC', 'hong phat0308001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0309695944', '387194189', 3, 8, 37, '2013-07-24 16:55:31', 0, NULL, NULL, NULL, NULL),
(33, 'Tào Anh Thái', 'anh thai0506001', '$2y$10$ywXdyMEaMXGIkic/JFBzMuyC1PFbZ/YZOtIgXngV4MsdYdjBphMp6', 'anh thai0506001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0238986165', '302713228', 5, 6, 21, '2004-04-17 01:11:01', 0, NULL, NULL, NULL, NULL),
(34, 'Lèng Sơn Hải', 'son hai0505001', '$2y$10$YkTAPf01ZOqPkiZp.TUFx.PthEJIwFG40HRNI851M81v8W0z6lvNK', 'son hai0505001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0634707682', '303762887', 5, 5, 7, '2013-01-08 15:18:37', 0, NULL, NULL, NULL, NULL),
(35, 'Ngạc Anh Minh', 'anh minh0608001', '$2y$10$lu0sqU3R2klMV1nUQyt/c.VZSv5.c30LnzQbPGFcSJW/pjr0VziTO', 'anh minh0608001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0069515311', '348914587', 6, 8, 35, '2004-04-11 09:37:30', 0, NULL, NULL, NULL, NULL),
(36, 'Ấu Quang Trung', 'quang trung0102001', '$2y$10$15TlK8JXoc6P00rsn4gvqexL4UGhoAWwdf4Y2ojNWqALMVKWe1xYa', 'quang trung0102001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0523988024', '317317156', 1, 2, 23, '2020-06-16 05:40:36', 0, NULL, NULL, NULL, NULL),
(37, 'Mạc Tạ Hiền', 'ta hien0507001', '$2y$10$2j8OffgpmAy0keuYVo50Qum2hO6mLnW3avnHQLMbv.7dhcF/ADw3y', 'ta hien0507001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0411208027', '317786534', 5, 7, 29, '2016-02-19 05:12:26', 0, NULL, NULL, NULL, NULL),
(38, 'Phương Quyết Thắng', 'quyet thang0407001', '$2y$10$PHkKJv6HD..9fXjmUwbxfuM091nTYBvG/P5F3tVT06xp059HzW5Sq', 'quyet thang0407001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0045717748', '346545815', 4, 7, 7, '2014-12-15 19:28:37', 0, NULL, NULL, NULL, NULL),
(39, 'Tấn Trung Nguyên', 'trung nguyen0302001', '$2y$10$JCCU271jcrnaVuBqMe4r0ODOESFklJZgwI9GQH2I182PVrsdsZ9da', 'trung nguyen0302001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0973087478', '342624265', 3, 2, 21, '2021-09-18 06:12:36', 0, NULL, NULL, NULL, NULL),
(40, 'Chiêm Hữu Cảnh', 'huu canh0507001', '$2y$10$pdntWcth6u/FIu10dqiay.tt27h6mXtycsNCROXGxycQ9cBkeT2Uu', 'huu canh0507001@gmail.com', '2022-06-20 06:01:24', 'Nam', '0230611256', '368229437', 5, 7, 10, '2010-03-05 03:48:25', 0, NULL, NULL, NULL, NULL),
(41, 'Mục Bình Nguyên', 'binh nguyen0205001', '$2y$10$72AFoNTYQEamOIIFt3uMxeAY5djtTXkJii6y.kPNV/dfJThNvhM5K', 'binh nguyen0205001@gmail.com', '2022-06-20 06:01:24', 'Nữ', '0311009131', '324453419', 2, 5, 2, '2004-06-28 09:53:51', 0, NULL, NULL, NULL, NULL),
(42, 'Uông Hải Thụy', 'hai thuy0504001', '$2y$10$ZfJgLm5XC6o2QXh2qCbomOw3PWI3sM57qbfGqDIz9dSl2EAlVwRR.', 'hai thuy0504001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0667045205', '380385540', 5, 4, 10, '2009-01-14 14:48:04', 0, NULL, NULL, NULL, NULL),
(43, 'Diêm Thành Tín', 'thanh tin0505001', '$2y$10$UpL0xnSUt.k7kZCFHRbqJ.tqd8l96zEmLhyDV.RMH2PRFFa.xf32W', 'thanh tin0505001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0886806708', '306235911', 5, 5, 25, '2020-09-12 23:59:16', 0, NULL, NULL, NULL, NULL),
(44, 'Văn Kim Thịnh', 'kim thinh0302001', '$2y$10$RT3g3KbcR67o5NLh7L/glu6aqJ8u8NsPG7/S5heMxQ1E6fMxBEwQa', 'kim thinh0302001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0916375187', '380715157', 3, 2, 12, '2007-11-08 13:12:01', 0, NULL, NULL, NULL, NULL),
(45, 'Vưu Việt Thái', 'viet thai0206001', '$2y$10$P6UIVHSf2cA2OG2X/DgFJeJZ.gbbS45587TkPCHE2/U5oSjYUXmsW', 'viet thai0206001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0020633177', '374172806', 2, 6, 31, '2011-06-08 13:04:29', 0, NULL, NULL, NULL, NULL),
(46, 'Lã Trung Hiếu', 'trung hieu0905001', '$2y$10$GfQT8ykJaQDTppF1hxmzGuZotYKuNtIqbKePVBLtW0DB4cpk8yFdO', 'trung hieu0905001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0714894065', '315537012', 9, 5, 30, '2008-05-06 14:10:24', 0, NULL, NULL, NULL, NULL),
(47, 'Nhan Cao Thọ', 'cao tho0507001', '$2y$10$0lEyDyKixmqJ8k295aH86.SpiGXtuSFztXrFcML1EUolupbwnWwxS', 'cao tho0507001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0254601163', '307384765', 5, 7, 5, '2005-10-29 10:09:57', 0, NULL, NULL, NULL, NULL),
(48, 'Lạc Thành An', 'thanh an0604001', '$2y$10$7IeesBEMznLTKCSC0fBkkuqeRFEg2wG6GLWA0TsPLH/Gm0AKJtHem', 'thanh an0604001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0871515771', '385730927', 6, 4, 22, '2002-08-07 16:01:28', 0, NULL, NULL, NULL, NULL),
(49, 'Lý Kiên Bình', 'kien binh0905001', '$2y$10$vqMRc9KGpxHCj8sHh4iNX./.FXgMasKs3b0PaUnJfbJMMdfVdWYhG', 'kien binh0905001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0810311833', '301722670', 9, 5, 8, '2019-11-08 09:38:26', 0, NULL, NULL, NULL, NULL),
(50, 'Đỗ Huy Thông', 'huy thong0906001', '$2y$10$RWyIhFyka2Ywm1AsSizlK.y4LD5EzzOov3daOeKoM.zTtduQrZHIe', 'huy thong0906001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0347450208', '336801171', 9, 6, 32, '2003-09-25 12:11:40', 0, NULL, NULL, NULL, NULL),
(51, 'Ánh Vạn Thắng', 'van thang0603001', '$2y$10$7N6IIqnZ31Xxsb4Q32aVt..Ox7lZxoa7knU336EIJ2PbrvWe3m4.C', 'van thang0603001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0973261576', '324312222', 6, 3, 12, '2022-03-01 15:17:46', 0, NULL, NULL, NULL, NULL),
(52, 'Hướng Trí Dũng', 'tri dung0404001', '$2y$10$8M11.HMosNJgWGr3kG1zxeAB2nW4gK18HLwJXP2opYCIo02y6OfFG', 'tri dung0404001@gmail.com', '2022-06-20 06:01:25', 'Nam', '0141472962', '355351649', 4, 4, 7, '2016-06-30 13:20:46', 0, NULL, NULL, NULL, NULL),
(53, 'Kiều Gia Uy', 'gia uy0902001', '$2y$10$G0r9MJcmCI9wfcpwCqolcuwqgJaDZg6E96lTeqPckRAWoWXGMIk4S', 'gia uy0902001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0438419535', '326367304', 9, 2, 25, '2012-09-06 00:36:39', 0, NULL, NULL, NULL, NULL),
(54, 'Hà Minh Khôi', 'minh khoi0505001', '$2y$10$VRKl8P.2NhzMW9bxrz64J.yHvsZ/Ex6idNXSXNhw.nJHqcUT/UjUy', 'minh khoi0505001@gmail.com', '2022-06-20 06:01:25', 'Nữ', '0922162331', '390235517', 5, 5, 36, '2014-02-28 20:05:48', 0, NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
