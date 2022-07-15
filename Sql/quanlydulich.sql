-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2022 lúc 05:04 AM
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `agencies`
--

INSERT INTO `agencies` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-07-08 02:14:45', NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-07-08 02:14:45', NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-07-08 02:14:45', NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-07-08 02:14:45', NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-07-08 02:14:45', NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-07-08 02:14:45', NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-07-08 02:14:45', NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-07-08 02:14:45', NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin UPDATED', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-07-08 02:14:45', '2022-07-15 02:31:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agency_tours`
--

CREATE TABLE `agency_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `agency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `agency_tours`
--

INSERT INTO `agency_tours` (`id`, `created_at`, `updated_at`, `deleted_at`, `agency_id`, `tour_id`) VALUES
(1, NULL, NULL, NULL, 5, 1),
(2, NULL, NULL, NULL, 9, 1),
(3, NULL, NULL, NULL, 6, 1),
(4, NULL, NULL, NULL, 3, 2),
(5, NULL, NULL, NULL, 4, 2),
(6, NULL, NULL, NULL, 9, 2),
(7, NULL, NULL, NULL, 8, 3),
(8, NULL, NULL, NULL, 3, 4),
(9, NULL, NULL, NULL, 2, 4),
(10, NULL, NULL, NULL, 5, 4),
(11, NULL, NULL, NULL, 9, 5),
(12, NULL, NULL, NULL, 4, 6),
(13, NULL, NULL, NULL, 2, 6),
(14, NULL, NULL, NULL, 4, 7),
(15, NULL, NULL, NULL, 7, 7),
(16, NULL, NULL, NULL, 2, 7),
(17, NULL, NULL, NULL, 5, 8),
(18, NULL, NULL, NULL, 7, 8),
(19, NULL, NULL, NULL, 3, 8),
(20, NULL, NULL, NULL, 1, 9),
(21, NULL, NULL, NULL, 4, 9),
(22, NULL, NULL, NULL, 3, 9),
(23, NULL, NULL, NULL, 5, 10),
(24, NULL, NULL, NULL, 9, 10),
(25, NULL, NULL, NULL, 7, 11),
(26, NULL, NULL, NULL, 5, 11),
(27, NULL, NULL, NULL, 3, 11),
(28, NULL, NULL, NULL, 6, 12),
(29, NULL, NULL, NULL, 1, 12),
(30, NULL, NULL, NULL, 8, 13),
(31, NULL, NULL, NULL, 5, 13),
(32, NULL, NULL, NULL, 9, 13),
(33, NULL, NULL, NULL, 2, 14),
(34, NULL, NULL, NULL, 4, 14),
(35, NULL, NULL, NULL, 3, 15),
(36, NULL, NULL, NULL, 2, 15),
(37, NULL, NULL, NULL, 9, 16),
(38, NULL, NULL, NULL, 6, 16),
(39, NULL, NULL, NULL, 9, 17),
(40, NULL, NULL, NULL, 4, 18),
(41, NULL, NULL, NULL, 9, 18),
(42, NULL, NULL, NULL, 3, 18),
(43, NULL, NULL, NULL, 5, 19),
(44, NULL, NULL, NULL, 3, 19),
(45, NULL, NULL, NULL, 6, 20),
(46, NULL, NULL, NULL, 3, 20),
(47, NULL, NULL, NULL, 2, 20),
(48, NULL, NULL, NULL, 2, 21),
(49, NULL, NULL, NULL, 2, 22),
(50, NULL, NULL, NULL, 1, 22),
(51, NULL, NULL, NULL, 7, 22),
(52, NULL, NULL, NULL, 1, 23),
(53, NULL, NULL, NULL, 2, 23),
(54, NULL, NULL, NULL, 9, 24),
(55, NULL, NULL, NULL, 5, 25),
(56, NULL, NULL, NULL, 8, 25),
(57, NULL, NULL, NULL, 6, 26),
(58, NULL, NULL, NULL, 9, 26),
(59, NULL, NULL, NULL, 8, 26),
(60, NULL, NULL, NULL, 7, 27),
(61, NULL, NULL, NULL, 9, 27),
(62, NULL, NULL, NULL, 5, 28),
(63, NULL, NULL, NULL, 7, 28),
(64, NULL, NULL, NULL, 5, 29),
(65, NULL, NULL, NULL, 6, 29),
(66, NULL, NULL, NULL, 2, 30),
(67, NULL, NULL, NULL, 3, 30),
(68, NULL, NULL, NULL, 4, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Phòng kế toán', '2022-07-08 02:14:45', NULL),
(2, 'Phòng tài chính', '2022-07-08 02:14:45', NULL),
(3, 'Phòng hành chính', '2022-07-08 02:14:45', NULL),
(4, 'Phòng nhân sự', '2022-07-08 02:14:45', NULL),
(5, 'Phòng kinh doanh', '2022-07-08 02:14:45', NULL),
(6, 'Phòng mua sắm vật tư', '2022-07-08 02:14:45', NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-07-08 02:14:45', NULL),
(8, 'Phòng vận chuyển', '2022-07-08 02:14:45', NULL);

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
(9, '2022_06_29_092410_create_supports_table', 1),
(10, '2022_06_29_092432_create_tour_registrations_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nhân viên phân tích dữ liệu', '2022-07-08 02:14:45', NULL),
(2, 'Quản trị hệ thống', '2022-07-08 02:14:45', NULL),
(3, 'Lập trình viên', '2022-07-08 02:14:45', NULL),
(4, 'Kỹ sư phần mềm', '2022-07-08 02:14:45', NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-07-08 02:14:45', NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-07-08 02:14:45', NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-07-08 02:14:45', NULL),
(8, 'Người giám sát', '2022-07-08 02:14:45', NULL),
(9, 'Trưởng Nhóm', '2022-07-08 02:14:45', NULL),
(10, 'Sếp', '2022-07-08 02:14:45', NULL),
(11, 'Trợ lí giám đốc', '2022-07-08 02:14:45', NULL),
(12, 'Thư kí', '2022-07-08 02:14:45', NULL),
(13, 'Nhân viên', '2022-07-08 02:14:45', NULL),
(14, 'Cán bộ, viên chức', '2022-07-08 02:14:45', NULL),
(15, 'Tổng giám đốc', '2022-07-08 02:14:45', NULL),
(16, 'Quản lý', '2022-07-08 02:14:45', NULL),
(17, 'Giám đốc', '2022-07-08 02:14:45', NULL),
(18, 'Phó giám đốc', '2022-07-08 02:14:45', NULL),
(19, 'Hội đồng quản trị', '2022-07-08 02:14:45', NULL),
(20, 'Trưởng phòng', '2022-07-08 02:14:45', NULL),
(21, 'Phó trưởng phòng', '2022-07-08 02:14:45', NULL),
(22, 'Phó Giám đốc', '2022-07-08 02:14:45', NULL),
(23, 'Giám đốc điều hành', '2022-07-08 02:14:45', NULL),
(24, 'Giám đốc thông tin', '2022-07-08 02:14:45', NULL),
(25, 'Trưởng phòng hoạt động', '2022-07-08 02:14:45', NULL),
(26, 'Giám đốc tài chính', '2022-07-08 02:14:45', NULL),
(27, 'Phó chủ tịch', '2022-07-08 02:14:45', NULL),
(28, 'Chủ tịch', '2022-07-08 02:14:45', NULL),
(29, 'Thành viên ban quản trị', '2022-07-08 02:14:45', NULL),
(30, 'Phó phòng kinh doanh', '2022-07-08 02:14:45', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tây Bắc Bộ', '2022-07-08 02:14:45', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-07-08 02:14:45', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-07-08 02:14:45', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-07-08 02:14:45', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-07-08 02:14:45', NULL, NULL),
(6, 'Tây Nguyên', '2022-07-08 02:14:45', NULL, NULL),
(7, 'Đông Nam Bộ', '2022-07-08 02:14:45', NULL, NULL),
(8, 'Tây Nam Bộ', '2022-07-08 02:14:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(10) UNSIGNED NOT NULL,
  `start_year` smallint(6) NOT NULL,
  `end_year` smallint(6) NOT NULL,
  `min_condition` smallint(6) NOT NULL DEFAULT 0,
  `max_condition` smallint(6) NOT NULL DEFAULT 100,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supports`
--

INSERT INTO `supports` (`id`, `support_id`, `start_year`, `end_year`, `min_condition`, `max_condition`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2018, 2019, 2, 100, 1756000, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(2, 2, 2020, 2023, 0, 1, 1512000, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(3, 2, 2020, 2023, 1, 3, 3382000, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(4, 2, 2020, 2023, 3, 100, 5009000, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_people` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `registration_start_date` datetime NOT NULL,
  `registration_end_date` datetime NOT NULL,
  `tour_start_date` datetime NOT NULL,
  `tour_end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `name`, `max_people`, `price`, `image`, `description_file`, `region_id`, `registration_start_date`, `registration_end_date`, `tour_start_date`, `tour_end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inventore dicta neque voluptas dolorum quidem illum.', 40, 5159000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-01-01 23:59:59', '2022-01-31 23:59:59', '2022-02-04 23:59:59', '2022-02-12 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(2, 'Id animi laudantium qui facere iusto et.', 40, 4595000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-01-01 23:59:59', '2022-01-31 23:59:59', '2022-02-03 23:59:59', '2022-02-08 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(3, 'Optio sed provident voluptate.', 20, 1912000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 3, '2022-01-01 23:59:59', '2022-01-31 23:59:59', '2022-02-08 23:59:59', '2022-02-16 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(4, 'Dolorem aut itaque quae rerum.', 70, 3504000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-01-31 23:59:59', '2022-03-02 23:59:59', '2022-03-04 23:59:59', '2022-03-11 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(5, 'Placeat vero maxime natus ipsa optio earum quisquam.', 20, 7520000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-01-31 23:59:59', '2022-03-02 23:59:59', '2022-03-07 23:59:59', '2022-03-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(6, 'Aut inventore debitis laboriosam similique ut et et aut.', 70, 7573000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 5, '2022-01-31 23:59:59', '2022-03-02 23:59:59', '2022-03-05 23:59:59', '2022-03-08 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(7, 'Enim harum optio delectus est.', 50, 3229000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 7, '2022-03-02 23:59:59', '2022-05-01 23:59:59', '2022-05-04 23:59:59', '2022-05-11 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(8, 'Repellendus nobis ipsum ullam illum fuga impedit rerum.', 70, 2897000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 7, '2022-04-01 23:59:59', '2022-05-31 23:59:59', '2022-06-03 23:59:59', '2022-06-10 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(9, 'Nesciunt consectetur dignissimos ipsum eveniet cupiditate dolorum ratione.', 30, 781000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 7, '2022-04-01 23:59:59', '2022-05-31 23:59:59', '2022-06-07 23:59:59', '2022-06-15 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(10, 'Et aspernatur omnis praesentium enim non iure.', 60, 1820000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 6, '2022-05-01 23:59:59', '2022-05-31 23:59:59', '2022-06-03 23:59:59', '2022-06-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(11, 'Voluptatem corrupti perferendis sint iure nisi consequatur in.', 20, 3489000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-05-01 23:59:59', '2022-05-31 23:59:59', '2022-06-01 23:59:59', '2022-06-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(12, 'Laboriosam et consequuntur saepe id vel.', 70, 7230000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 2, '2022-05-31 23:59:59', '2022-07-30 23:59:59', '2022-08-07 23:59:59', '2022-08-12 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(13, 'Animi et voluptatibus et.', 40, 9433000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-05-31 23:59:59', '2022-07-30 23:59:59', '2022-08-07 23:59:59', '2022-08-11 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(14, 'Autem recusandae alias cumque molestiae.', 70, 7446000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 5, '2022-05-31 23:59:59', '2022-07-30 23:59:59', '2022-08-04 23:59:59', '2022-08-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(15, 'Non voluptatum eum facere enim sed quis nostrum non.', 30, 9286000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 2, '2022-06-30 23:59:59', '2022-07-30 23:59:59', '2022-08-01 23:59:59', '2022-08-06 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(16, 'Occaecati incidunt illo nulla qui.', 30, 4038000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-06-30 23:59:59', '2022-07-30 23:59:59', '2022-08-07 23:59:59', '2022-08-08 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(17, 'Sint itaque sapiente minima porro aspernatur.', 30, 8229000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-06-30 23:59:59', '2022-07-30 23:59:59', '2022-07-31 23:59:59', '2022-08-08 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(18, 'Quia harum aspernatur quaerat id eveniet.', 40, 9319000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-07-30 23:59:59', '2022-08-29 23:59:59', '2022-09-06 23:59:59', '2022-09-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(19, 'Deserunt voluptas minus quia velit est ut voluptatem.', 20, 2201000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 6, '2022-07-30 23:59:59', '2022-08-29 23:59:59', '2022-09-06 23:59:59', '2022-09-08 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(20, 'Qui reprehenderit dolorem eveniet occaecati veritatis temporibus molestias.', 50, 502000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 5, '2022-07-30 23:59:59', '2022-08-29 23:59:59', '2022-08-31 23:59:59', '2022-09-01 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(21, 'Id dolorum non illum.', 60, 2542000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 7, '2022-08-29 23:59:59', '2022-10-28 23:59:59', '2022-10-31 23:59:59', '2022-11-06 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(22, 'Consequatur atque aperiam et pariatur.', 70, 5370000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-08-29 23:59:59', '2022-10-28 23:59:59', '2022-10-29 23:59:59', '2022-11-03 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(23, 'Accusantium perspiciatis harum in non nesciunt aliquid doloremque tenetur.', 60, 2923000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 6, '2022-08-29 23:59:59', '2022-10-28 23:59:59', '2022-10-30 23:59:59', '2022-10-31 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(24, 'Consectetur quos vitae laboriosam ea vitae eum ullam.', 30, 2196000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 3, '2022-09-28 23:59:59', '2022-10-28 23:59:59', '2022-11-01 23:59:59', '2022-11-09 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(25, 'Dolores hic consequatur eveniet.', 60, 5191000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 7, '2022-09-28 23:59:59', '2022-10-28 23:59:59', '2022-10-29 23:59:59', '2022-11-06 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(26, 'Et facilis magni aliquam atque.', 20, 3397000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 4, '2022-10-28 23:59:59', '2022-12-27 23:59:59', '2022-12-31 23:59:59', '2023-01-01 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(27, 'Doloribus omnis ipsam sit adipisci.', 40, 2529000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 5, '2022-10-28 23:59:59', '2022-12-27 23:59:59', '2022-12-30 23:59:59', '2023-01-07 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(28, 'Velit ex illo odio et distinctio dolore.', 20, 7090000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-11-27 23:59:59', '2022-12-27 23:59:59', '2023-01-03 23:59:59', '2023-01-04 23:59:59', '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL),
(29, 'Cum et minus repudiandae error quaerat ut.', 50, 6254000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 5, '2022-12-27 00:00:00', '2023-02-25 00:00:00', '2023-03-02 00:00:00', '2023-03-03 00:00:00', '2022-07-08 02:14:49', '2022-07-15 02:45:11', NULL),
(30, 'Dương gà đông lạnh', 40, 1000, 'storage/images/1657852880.png', 'storage/files/1657853111.pdf', 1, '2022-07-11 00:00:00', '2022-07-15 00:00:00', '2022-07-16 00:00:00', '2022-07-18 00:00:00', '2022-07-11 03:43:19', '2022-07-13 01:09:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_registrations`
--

CREATE TABLE `tour_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `support_id` bigint(20) UNSIGNED DEFAULT NULL,
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

--
-- Đang đổ dữ liệu cho bảng `tour_registrations`
--

INSERT INTO `tour_registrations` (`id`, `user_id`, `tour_id`, `support_id`, `registration_date`, `relative_fullname`, `birthday`, `gender`, `relationship`, `phone`, `citizen_card`, `cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(412, 1, 13, 2, '2022-07-15 00:00:00', 'Lê Ngọc Hở', '1999-07-30 00:06:36', 'Nam', NULL, '0589124204', '312345678', 7921000, '2022-07-15 02:38:23', '2022-07-15 02:48:16', '2022-07-15 02:48:16'),
(413, 1, 13, NULL, '2022-07-15 00:00:00', 'Zola Ullrich UPDATED', '1111-11-11 00:00:00', 'Nam', 'Ba', '1223354122', '1223354122', 9433000, NULL, '2022-07-15 02:48:16', '2022-07-15 02:48:16'),
(414, 1, 16, 2, '2022-07-15 00:00:00', 'Lê Ngọc Hở', '1999-07-30 00:06:36', 'Nam', NULL, '0589124204', '312345678', 2526000, '2022-07-15 02:47:34', '2022-07-15 03:03:04', '2022-07-15 03:03:04'),
(415, 1, 16, NULL, '2022-07-15 00:00:00', 'Zola Ullrich UPDATED', '1351-02-13 00:00:00', 'Nam', 'Ba', '1651561165156', '12123', 4038000, NULL, '2022-07-15 03:03:04', '2022-07-15 03:03:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `agency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `email_verified_at`, `gender`, `birthday`, `phone`, `citizen_card`, `user_token`, `start_date`, `agency_id`, `department_id`, `position_id`, `is_admin`, `created_at`, `updated_at`, `deleted_at`, `remember_token`) VALUES
(1, 'Lê Ngọc Hở', 'ngocho123', '$2y$10$8ElLfyQjwYU1SfUZv6P43O6BwDW.ghUlhBK26T3irr1aJasklQHqi', 'ngocho123@gmail.com', '2022-07-08 02:14:45', 'Nam', '1999-07-30 00:06:36', '0589124204', '312345678', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(2, 'Bùi Thị Thùy Dương', 'thuyduong123', '$2y$10$oC2F7FH2tbgCPq.8gBkfheU.waXj3zeV6T0l/oivp9FmSwcqlEKYW', 'thuyduong123@gmail.com', '2022-07-08 02:14:45', 'Nữ', '2000-04-15 12:44:23', '0589124205', '312345675', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(3, 'Nguyễn Thị Bảo Trân', 'baotran123', '$2y$10$vsd03z/7UgCfs9wJ9WESiOLzF.AFu.AjcsqISa8kbtUQd5OjEuJCK', 'baotran123@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1996-11-26 08:25:37', '0589124206', '312345676', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(4, 'Lê Minh Nhật', 'minhnhat123', '$2y$10$ZxqZStmlyu0Q3rLVXiA7CuG/vrkcOiftCP4Sly0fX3XvFmKzivMAO', 'minhnhat123@gmail.com', '2022-07-08 02:14:46', 'Nam', '1988-02-04 15:22:00', '0589124207', '312345677', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(5, 'Trác Phúc Cường', 'phuccuong0507001', '$2y$10$kupHum7cjVJ9e4fDc6ScFOT7v5bJiAZuQXkGzxCAM06NzJVVJk2W.', 'phuccuong0507001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1981-11-08 19:05:06', '0917889152', '311958484', NULL, '2019-12-02 01:00:42', 5, 7, 15, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(6, 'Hướng Trí Dũng', 'tridung0304001', '$2y$10$Zf4tSTjw2a2S1I6gYvzQ5e70ZTaKWuoILd31RTvUzw8MtcB5kixB6', 'tridung0304001@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1984-12-22 20:46:23', '0958420962', '323321845', NULL, '2018-01-03 02:23:49', 3, 4, 13, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(7, 'Ấu Quang Trung', 'quangtrung0507002', '$2y$10$aB.7PfVJfYhjamDMrjahKOTfBDKv2ijqFsAQGj7OJ2AIBFOjpMh/6', 'quangtrung0507002@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1989-10-14 13:45:53', '0104887669', '329514758', NULL, '2021-02-14 18:06:39', 5, 7, 22, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(8, 'Mục Bình Nguyên', 'binhnguyen0705001', '$2y$10$4/G7K/qaFCz4TvaIrq8Q5u5VaBn8OayQT0ZhU7HDy1965oJzqEQVe', 'binhnguyen0705001@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1982-12-06 20:42:00', '0635191110', '389679642', NULL, '2018-02-02 23:13:06', 7, 5, 7, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(9, 'Tào Anh Thái', 'anhthai0506001', '$2y$10$ql2giISgkgjL6pmzl3RUCeBQgIsjQezb3CumUVe1JBQSXv9fzEqxK', 'anhthai0506001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1988-07-28 19:07:03', '0897800579', '375661725', NULL, '2016-11-07 11:10:43', 5, 6, 2, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(10, 'Hàn Kim Thịnh', 'kimthinh0702001', '$2y$10$5s4sVlzT2X2yQapVQyBLL.XZWgPc7t.05uXyDrD38IOQePYcJrjpK', 'kimthinh0702001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1989-06-12 02:50:54', '0075237209', '346231319', NULL, '2022-03-20 05:36:27', 7, 2, 5, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(11, 'Phương Quyết Thắng', 'quyetthang0704001', '$2y$10$uBepyRJrYLRsylJ/L5atVORCUhbhzv2HWE2X95PW9/AhPHL7zN16G', 'quyetthang0704001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1989-01-17 04:10:21', '0665856021', '373790308', NULL, '2015-09-14 00:50:48', 7, 4, 2, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(12, 'Văn Kim Thịnh', 'kimthinh0808001', '$2y$10$GtAuaSCkFnnVdsijqrEPCeN59jk.7m9fzfaa1CuQdbnq399nUBsG6', 'kimthinh0808001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1996-12-02 13:20:18', '0631730802', '356877568', NULL, '2019-07-10 16:28:04', 8, 8, 20, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(13, 'Ngạc Anh Minh', 'anhminh0101001', '$2y$10$J4jpieuqetGtS9SC0A3MlerlUBOFZIt4jotBKhP2Gw1Nrnm7dbWwy', 'anhminh0101001@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1988-07-15 11:29:08', '0135335499', '337284716', NULL, '2017-10-11 18:40:09', 1, 1, 21, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(14, 'Phí Ðức Hòa', 'Ðuchoa0402001', '$2y$10$5LTT4wJ0vISS4NA.Ff.FteGD9iOoaq/3ZnUkvJYjl1HSLHgUjzaEi', 'Ðuchoa0402001@gmail.com', '2022-07-08 02:14:46', 'Nữ', '1986-02-05 00:05:51', '0579511810', '377267234', NULL, '2021-06-04 23:32:00', 4, 2, 21, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(15, 'Thái Bảo Châu', 'baochau0408001', '$2y$10$JKOryANVxye/nNwzSYzI1Onja4Z/IH0x8asSIzBD66WpLwF4TLuCK', 'baochau0408001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1991-07-11 12:57:38', '0235044469', '377869210', NULL, '2021-12-05 17:02:28', 4, 8, 13, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(16, 'Đậu Hoài Trung', 'hoaitrung0105001', '$2y$10$6DX7rkxoe3dHOAXiYrBAZeilQavykna0nsESexF8dMemo4Dd1uAUu', 'hoaitrung0105001@gmail.com', '2022-07-08 02:14:46', 'Nam', '1988-08-20 07:40:03', '0288358125', '393717188', NULL, '2018-10-13 05:20:02', 1, 5, 8, 0, '2022-07-08 02:14:46', '2022-07-08 02:14:46', NULL, NULL),
(17, 'Mạc Tạ Hiền', 'tahien0503001', '$2y$10$8985ymy1E9JrHekeggg.P.oWs.qV0EhFseGgtcVDyy4NtvJVlAU2u', 'tahien0503001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1981-05-30 01:43:24', '0501769857', '300623631', NULL, '2022-03-23 11:44:54', 5, 3, 26, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(18, 'Mầu Công Lập', 'conglap0103001', '$2y$10$R5wCHrwzF6LlWrw8VEnvieBLeqFmCFxM/hwPeNDiHhN8d3wTzsG9m', 'conglap0103001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1982-06-19 11:47:59', '0880397173', '377915267', NULL, '2018-12-06 19:56:46', 1, 3, 15, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(19, 'Quảng Vạn Thông', 'vanthong0508001', '$2y$10$xqGcTdom6c5Jn16qh2PHEu.PkZhiogW5jrg8txbEMCFHGnxc3XRaG', 'vanthong0508001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1982-02-20 02:42:46', '0079640884', '335358970', NULL, '2017-07-31 03:55:46', 5, 8, 4, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(20, 'Chu Minh Quân', 'minhquan0503002', '$2y$10$i08PX4AX.nzBJKAalj.PY.ww8J3YaQ6Y0NfBvIa9GE21dJHKegbNq', 'minhquan0503002@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1998-06-01 00:00:01', '0139789534', '359090719', NULL, '2022-01-11 22:25:42', 5, 3, 1, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(21, 'Đỗ Huy Thông', 'huythong0401001', '$2y$10$ikNd2QrjUXvkdda8EnQGM.V7MlZJnw3pzGIE4CSJ2.pKSXXOzQDYy', 'huythong0401001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1986-11-28 07:29:33', '0548643918', '318501142', NULL, '2018-09-24 05:22:15', 4, 1, 26, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(22, 'Lý Kiên Bình', 'kienbinh0705002', '$2y$10$F3Zq2oc1lmnbNPzOdNiAOeJDKRVxRXK27qxrYV4BnGEtZcHqk9rja', 'kienbinh0705002@gmail.com', '2022-07-08 02:14:47', 'Nam', '1981-06-27 01:10:49', '0844786743', '390311601', NULL, '2021-08-03 00:51:27', 7, 5, 15, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(23, 'Ao Thanh Phong', 'thanhphong0901001', '$2y$10$C1qRsq06iHJgasQb66ZIwOzCU3zQRbjCFiYWRMzn92XfnjNpl22UW', 'thanhphong0901001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1986-08-02 05:47:36', '0850605759', '383235585', NULL, '2022-07-07 00:41:31', 9, 1, 5, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(24, 'Linh Cao Sơn', 'caoson0906001', '$2y$10$ByI8UMnr5/wT3fknGKVkN.CvJ1XC1ifdOxH3Js6S4X4C1ysSak4ei', 'caoson0906001@gmail.com', '2022-07-08 02:14:47', 'Nam', '1985-08-11 15:42:39', '0183111484', '395356286', NULL, '2018-01-26 09:32:17', 9, 6, 5, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(25, 'Kiều Gia Uy', 'giauy0803001', '$2y$10$asyQpbvltglb.NSG0g5iMeEfUH/uzn4OFFImh7PYwf85BL.FBegyK', 'giauy0803001@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1986-06-24 13:35:56', '0198169944', '339756962', NULL, '2017-07-08 06:11:46', 8, 3, 3, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(26, 'Võ Việt Khôi', 'vietkhoi0202001', '$2y$10$3XM/8AtsaT5Bm8.l2yNdaeXX9PlqOyrwV7wv9Sf3XKHJRQp4b1jFC', 'vietkhoi0202001@gmail.com', '2022-07-08 02:14:47', 'Nam', '1992-10-31 04:43:01', '0508962440', '380997265', NULL, '2017-03-26 15:06:26', 2, 2, 25, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(27, 'Lã Trung Hiếu', 'trunghieu0704002', '$2y$10$m8EKqxnm2mCDkt7Vs4Wgq.euDSu0hJgDtaKs7QseC12TVhzgtoX1O', 'trunghieu0704002@gmail.com', '2022-07-08 02:14:47', 'Nam', '1985-09-05 04:58:25', '0758619343', '340647505', NULL, '2018-01-19 12:38:46', 7, 4, 1, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(28, 'Ngạc Quang Tuấn', 'quangtuan0702002', '$2y$10$YXjK6Izwo61GusSikPSclOPOO/djYvhwrlK19VuKJcQ.11SbVxbfS', 'quangtuan0702002@gmail.com', '2022-07-08 02:14:47', 'Nữ', '1982-05-26 23:24:38', '0059628645', '327909843', NULL, '2018-09-02 09:41:31', 7, 2, 25, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(29, 'Tinh Nam An', 'naman0502001', '$2y$10$TxGWKWdT.duBVdC0zWKxIeN8GfdaShJoNtnqG1kgmiSojGYIbFWAW', 'naman0502001@gmail.com', '2022-07-08 02:14:47', 'Nam', '2000-06-12 07:15:39', '0948399011', '394685229', NULL, '2020-08-22 07:06:04', 5, 2, 20, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(30, 'Tấn Trung Nguyên', 'trungnguyen0508002', '$2y$10$0f5zLd07JRaBbhy0Hz1zl./uRWBqkQkI.5o9s1hyXb/yCzm.ZQIqy', 'trungnguyen0508002@gmail.com', '2022-07-08 02:14:47', 'Nam', '1994-06-11 11:58:20', '0931146332', '377971716', NULL, '2021-04-19 01:06:43', 5, 8, 9, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(31, 'Đương Hoàng Ân', 'hoangan0904001', '$2y$10$KE1BNe2W0EAgxuxx2wsFNu8jwdwl4nZ9sgmyRehiU2qTycB8K1S1u', 'hoangan0904001@gmail.com', '2022-07-08 02:14:47', 'Nam', '1997-04-21 13:10:40', '0015899743', '363917584', NULL, '2017-12-25 11:45:22', 9, 4, 23, 0, '2022-07-08 02:14:47', '2022-07-08 02:14:47', NULL, NULL),
(32, 'Diêm Thành Tín', 'thanhtin0406001', '$2y$10$Sg/zNuq0y.KKW/5HwVVrX.O1Wc2iUNRDfK6af1dyhDvUlN67yOx3K', 'thanhtin0406001@gmail.com', '2022-07-08 02:14:48', 'Nam', '1994-08-02 13:38:52', '0449980312', '379397051', NULL, '2021-11-04 11:43:40', 4, 6, 3, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(33, 'Ứng Công Thành', 'congthanh0403001', '$2y$10$gQ9.ec3eCH371UdEc4K6tuVOuR3PJNR6yH6FqgxiSG9PwyBqGEV0K', 'congthanh0403001@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1980-06-11 02:36:20', '0154391068', '375952792', NULL, '2020-03-26 14:06:38', 4, 3, 21, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(34, 'Ánh Vạn Thắng', 'vanthang0907005', '$2y$10$lxeMurvhd27.TDXIr1Q06e7ceZuKyAkAlYSkXGHoMDm8mANsKSJ2m', 'vanthang0907005@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1988-08-18 19:16:32', '0459631321', '305661815', NULL, '2018-07-28 16:50:19', 9, 7, 18, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(35, 'Cổ Vương Triều', 'vuongtrieu0401002', '$2y$10$iAh.C2TZwIkElRzIbKJHcObuqnBdlsgBE/gyjXzfxau/0EM2rvqnS', 'vuongtrieu0401002@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1980-10-18 17:01:37', '0816547502', '320422366', NULL, '2018-04-19 19:52:31', 4, 1, 20, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(36, 'Ngọc Công Lý', 'congly0502002', '$2y$10$Y6NAfZqA/0cGs97sZum7J.mtU0Ne7qCMMLxmT7YmOGdOms.kelFlm', 'congly0502002@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1994-06-26 07:52:27', '0563686141', '380352782', NULL, '2021-11-12 18:23:15', 5, 2, 22, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(37, 'Chế Vũ Uy', 'vuuy0606001', '$2y$10$FuDnmYp7CdL7kUAdwR.jpefu2SGRgvMINgxpnlfG4DD6lWzMO7X0.', 'vuuy0606001@gmail.com', '2022-07-08 02:14:48', 'Nam', '1992-03-29 10:24:19', '0248677282', '391061334', NULL, '2017-09-06 18:50:11', 6, 6, 3, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(38, 'Hà Minh Khôi', 'minhkhoi0704003', '$2y$10$3no3xl8/SxKp0SxJdUx/4OVSvMyuutChPiT1v771Zsvo2ZdVn014e', 'minhkhoi0704003@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1997-06-01 03:24:11', '0705435565', '393326116', NULL, '2020-08-30 04:26:59', 7, 4, 14, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(39, 'Triệu Thành Nguyên', 'thanhnguyen0203001', '$2y$10$7Z6yrH/a.3BLqvm/jrNG6OJDMlQvVmnI.cNzrd1d6HblvbsqX1mRS', 'thanhnguyen0203001@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1992-12-18 07:41:40', '0229379416', '333487480', NULL, '2016-03-13 10:08:18', 2, 3, 9, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(40, 'Giáp Hồng Phát', 'hongphat0401003', '$2y$10$qb0mMir.AWkzw0R7mdqiyO0fIFbJITMPJXZyWUdGNjN8qH0HVfa7G', 'hongphat0401003@gmail.com', '2022-07-08 02:14:48', 'Nam', '1996-09-25 18:12:32', '0996086023', '312398168', NULL, '2015-01-23 00:39:46', 4, 1, 10, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(41, 'Phương Hữu Từ', 'huutu0807001', '$2y$10$4itkkAu1hRm4DzKtFBbyge35h8nYXIyMqwDyKROAjb8vcGOXFy91C', 'huutu0807001@gmail.com', '2022-07-08 02:14:48', 'Nữ', '2000-08-30 14:14:44', '0087326110', '341404565', NULL, '2019-10-18 10:48:01', 8, 7, 18, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(42, 'Lạc Thành An', 'thanhan0804001', '$2y$10$WCrwVEWgfebcyuM0OyZ6Guu6fXg.whfBtv6Vw/uhhoqs.z.CqCHhe', 'thanhan0804001@gmail.com', '2022-07-08 02:14:48', 'Nam', '1992-02-02 10:12:14', '0979229644', '356357703', NULL, '2022-04-17 19:04:55', 8, 4, 12, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(43, 'Nhan Cao Thọ', 'caotho0702003', '$2y$10$OQ7IVgVydEiBYw9qBMkAIu.MRQAGz/J9lls0GaE7NPbJWhyCz.uP.', 'caotho0702003@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1994-07-10 12:19:18', '0735341046', '323276231', NULL, '2018-09-26 13:19:41', 7, 2, 23, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(44, 'Doãn Ðình Phú', 'Ðinhphu0203002', '$2y$10$wuOtGMBqWzUNerRSFOEYzeP7K5/R09vFGigv1GwQqRYK6L/fNx9bm', 'Ðinhphu0203002@gmail.com', '2022-07-08 02:14:48', 'Nữ', '1985-07-30 15:30:17', '0701236896', '350281895', NULL, '2015-09-19 20:43:06', 2, 3, 14, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(45, 'Uông Hải Thụy', 'haithuy0702004', '$2y$10$jDTeFNJAnJplARLxpvU3F.QwCpUcTVL45EKSeVxXPihYDoaYvYwru', 'haithuy0702004@gmail.com', '2022-07-08 02:14:48', 'Nam', '1986-05-14 12:19:58', '0619630262', '369652551', NULL, '2018-09-03 00:33:11', 7, 2, 7, 0, '2022-07-08 02:14:48', '2022-07-08 02:14:48', NULL, NULL),
(46, 'Lèng Sơn Hải', 'sonhai0105002', '$2y$10$30mD4Y1sPin/rzXjrcVDoOkE34EHNk3LYk/YB0JZCP93i4eweh8ui', 'sonhai0105002@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1988-01-23 20:35:47', '0737618561', '387486920', NULL, '2018-04-04 18:35:24', 1, 5, 16, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(47, 'Trịnh Minh Thuận', 'minhthuan0505001', '$2y$10$/EXi2aT0Ov16uEqAGz1GAOUxhCSNZT5iAjh2QoYRUu5PtX/58pDtu', 'minhthuan0505001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1994-08-28 08:23:36', '0903943791', '398433906', NULL, '2017-05-28 13:53:14', 5, 5, 11, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(48, 'Tinh Thế Vinh', 'thevinh0207001', '$2y$10$hPHtYnspny6kbNcaP1dOvee3xRcCcb.aFd6w9SGNghWOAf9FSRRpq', 'thevinh0207001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1990-11-27 09:17:34', '0759769082', '314101616', NULL, '2021-04-20 20:24:27', 2, 7, 16, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(49, 'Lại Trung Hiếu', 'trunghieu0501001', '$2y$10$umo08hqiOVxJ0z.il2oL0.I7xiBx4XiGS3xrL6nNDHRw2V1O6hfmm', 'trunghieu0501001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1982-12-24 04:23:04', '0133769203', '372899870', NULL, '2017-01-19 12:05:20', 5, 1, 15, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(50, 'Bạch Ðình Tuấn', 'Ðinhtuan0303001', '$2y$10$722SachEUfIKTcNaL.4OWOF8ksyQ7zYQLt/C9xidY58SMUzmpycHq', 'Ðinhtuan0303001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1985-10-02 07:20:04', '0174657859', '325492363', NULL, '2016-08-28 12:37:16', 3, 3, 16, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(51, 'Chiêm Hữu Cảnh', 'huucanh0206001', '$2y$10$yJHOAs/etIJ237P3hjzd/uw3.ZJStmR81YCmxQZ/cuV0e3T0lEVru', 'huucanh0206001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1990-04-13 09:06:37', '0784411064', '343018734', NULL, '2016-10-18 02:31:35', 2, 6, 25, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(52, 'Vưu Việt Thái', 'vietthai0308001', '$2y$10$c2DnOipjmnpnz/gInxlCyetq5SGyIOm2QOa3coJMOa71o6TJuMJh2', 'vietthai0308001@gmail.com', '2022-07-08 02:14:49', 'Nam', '1988-03-22 16:08:37', '0993934542', '392341839', NULL, '2018-10-16 20:42:18', 3, 8, 8, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(53, 'Liên Mạnh Dũng', 'manhdung0607001', '$2y$10$qmpSggda4PFQogzrOmKeWu1G6/tsjEY/lHQWDcveeYTk/tPmtg0lS', 'manhdung0607001@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1995-09-24 00:12:15', '0036141366', '347882228', NULL, '2021-10-12 12:00:11', 6, 7, 18, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL),
(54, 'Cổ Chấn Phong', 'chanphong0705003', '$2y$10$eLdhgvGImG.EyAXE0A4VGuXOF5DJkwhfIDOie.Z9okg9TObOVbtv.', 'chanphong0705003@gmail.com', '2022-07-08 02:14:49', 'Nữ', '1990-11-29 05:55:47', '0519954102', '353222030', NULL, '2015-11-28 12:51:31', 7, 5, 27, 0, '2022-07-08 02:14:49', '2022-07-08 02:14:49', NULL, NULL);

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
  ADD KEY `tour_registrations_tour_id_foreign` (`tour_id`),
  ADD KEY `tour_registrations_support_id_foreign` (`support_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `agency_tours`
--
ALTER TABLE `agency_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

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
  ADD CONSTRAINT `agency_tours_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `agency_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  ADD CONSTRAINT `tour_registrations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tour_registrations_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tour_registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
