-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2022 lúc 05:47 AM
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `agencies`
--

INSERT INTO `agencies` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-29 02:27:45', NULL, NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-29 02:27:45', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-29 02:27:45', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-29 02:27:45', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-29 02:27:45', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-29 02:27:45', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-29 02:27:45', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-29 02:27:45', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-29 02:27:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `agency_tours`
--

CREATE TABLE `agency_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `agency_id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `agency_tours`
--

INSERT INTO `agency_tours` (`id`, `created_at`, `updated_at`, `deleted_at`, `agency_id`, `tour_id`) VALUES
(1, NULL, NULL, NULL, 5, 1),
(2, NULL, NULL, NULL, 4, 1),
(3, NULL, NULL, NULL, 5, 2),
(4, NULL, NULL, NULL, 2, 3),
(5, NULL, NULL, NULL, 5, 3),
(6, NULL, NULL, NULL, 8, 4),
(7, NULL, NULL, NULL, 9, 4),
(8, NULL, NULL, NULL, 9, 5),
(9, NULL, NULL, NULL, 8, 6),
(10, NULL, NULL, NULL, 4, 7),
(11, NULL, NULL, NULL, 7, 7),
(12, NULL, NULL, NULL, 2, 8),
(13, NULL, NULL, NULL, 7, 8),
(14, NULL, NULL, NULL, 8, 8),
(15, NULL, NULL, NULL, 5, 9),
(16, NULL, NULL, NULL, 3, 10),
(17, NULL, NULL, NULL, 2, 10),
(18, NULL, NULL, NULL, 3, 11),
(19, NULL, NULL, NULL, 2, 11),
(20, NULL, NULL, NULL, 7, 11),
(21, NULL, NULL, NULL, 4, 12),
(22, NULL, NULL, NULL, 2, 12),
(23, NULL, NULL, NULL, 1, 13),
(24, NULL, NULL, NULL, 4, 13),
(25, NULL, NULL, NULL, 3, 14),
(26, NULL, NULL, NULL, 8, 15),
(27, NULL, NULL, NULL, 5, 16),
(28, NULL, NULL, NULL, 7, 16),
(29, NULL, NULL, NULL, 6, 16),
(30, NULL, NULL, NULL, 6, 17),
(31, NULL, NULL, NULL, 7, 17),
(32, NULL, NULL, NULL, 1, 17),
(33, NULL, NULL, NULL, 8, 18),
(34, NULL, NULL, NULL, 2, 18),
(35, NULL, NULL, NULL, 1, 18),
(36, NULL, NULL, NULL, 7, 19),
(37, NULL, NULL, NULL, 5, 19),
(38, NULL, NULL, NULL, 3, 19),
(39, NULL, NULL, NULL, 6, 20),
(40, NULL, NULL, NULL, 5, 21),
(41, NULL, NULL, NULL, 2, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phòng kế toán', '2022-06-29 02:27:45', NULL, NULL),
(2, 'Phòng tài chính', '2022-06-29 02:27:45', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-29 02:27:45', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-29 02:27:45', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-29 02:27:45', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-29 02:27:45', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-29 02:27:45', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-29 02:27:45', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nhân viên phân tích dữ liệu', '2022-06-29 02:27:45', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-29 02:27:45', NULL, NULL),
(3, 'Lập trình viên', '2022-06-29 02:27:45', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-29 02:27:45', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-29 02:27:45', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-29 02:27:45', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-29 02:27:45', NULL, NULL),
(8, 'Người giám sát', '2022-06-29 02:27:45', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-29 02:27:45', NULL, NULL),
(10, 'Sếp', '2022-06-29 02:27:45', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-29 02:27:45', NULL, NULL),
(12, 'Thư kí', '2022-06-29 02:27:45', NULL, NULL),
(13, 'Nhân viên', '2022-06-29 02:27:45', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-29 02:27:45', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-29 02:27:45', NULL, NULL),
(16, 'Quản lý', '2022-06-29 02:27:45', NULL, NULL),
(17, 'Giám đốc', '2022-06-29 02:27:45', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-29 02:27:45', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-29 02:27:45', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-29 02:27:45', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-29 02:27:45', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-29 02:27:45', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-29 02:27:45', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-29 02:27:45', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-29 02:27:45', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-29 02:27:45', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-29 02:27:45', NULL, NULL),
(28, 'Chủ tịch', '2022-06-29 02:27:45', NULL, NULL),
(29, 'Thành viên ban quản trị', '2022-06-29 02:27:45', NULL, NULL),
(30, 'Phó phòng kinh doanh', '2022-06-29 02:27:45', NULL, NULL);

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
(1, 'Tây Bắc Bộ', '2022-06-29 02:27:45', NULL, NULL),
(2, 'Đông Bắc bộ', '2022-06-29 02:27:45', NULL, NULL),
(3, 'Đồng bằng sông Hồng', '2022-06-29 02:27:45', NULL, NULL),
(4, 'Bắc Trung Bộ', '2022-06-29 02:27:45', NULL, NULL),
(5, 'Nam Trung Bộ', '2022-06-29 02:27:45', NULL, NULL),
(6, 'Tây Nguyên', '2022-06-29 02:27:45', NULL, NULL),
(7, 'Đông Nam Bộ', '2022-06-29 02:27:45', NULL, NULL),
(8, 'Tây Nam Bộ', '2022-06-29 02:27:45', NULL, NULL);

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
  `max_condition` smallint(6) NOT NULL DEFAULT 99,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supports`
--

INSERT INTO `supports` (`id`, `support_id`, `start_year`, `end_year`, `min_condition`, `max_condition`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2015, 2018, 3, 99, 1749000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(2, 2, 2019, 2021, 0, 1, 1022000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(3, 2, 2019, 2021, 1, 2, 2167000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(4, 2, 2019, 2021, 2, 99, 3807000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(5, 3, 2022, 2023, 0, 1, 1392000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(6, 3, 2022, 2023, 1, 99, 2912000, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `name`, `image`, `description_file`, `tour_start_date`, `tour_end_date`, `registration_start_date`, `registration_end_date`, `price`, `max_people`, `created_at`, `updated_at`, `deleted_at`, `region_id`) VALUES
(1, 'Unde alias voluptatum autem rem ducimus laudantium omnis.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2018-02-04 23:59:59', '2018-02-10 23:59:59', '2018-01-01 23:59:59', '2018-01-31 23:59:59', 8186000, 70, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 5),
(2, 'Aut sed optio enim.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2018-07-04 23:59:59', '2018-07-10 23:59:59', '2018-05-01 23:59:59', '2018-06-30 23:59:59', 7294000, 60, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 3),
(3, 'Natus error tenetur velit amet officia id nesciunt.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2018-11-03 23:59:59', '2018-11-04 23:59:59', '2018-08-29 23:59:59', '2018-10-28 23:59:59', 4558000, 70, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 6),
(4, 'Ipsam iure eos omnis consequatur non.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2019-03-05 23:59:59', '2019-03-06 23:59:59', '2019-01-26 23:59:59', '2019-02-25 23:59:59', 4176000, 80, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 6),
(5, 'Mollitia modi necessitatibus voluptates et.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2019-03-01 23:59:59', '2019-03-04 23:59:59', '2019-01-26 23:59:59', '2019-02-25 23:59:59', 1433000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 8),
(6, 'Quas sit et deleniti.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2019-07-31 23:59:59', '2019-08-08 23:59:59', '2019-05-26 23:59:59', '2019-07-25 23:59:59', 7304000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 8),
(7, 'Cum et quidem voluptates dolore.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2019-07-31 23:59:59', '2019-08-03 23:59:59', '2019-05-26 23:59:59', '2019-07-25 23:59:59', 9024000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 3),
(8, 'Dolorem sunt eligendi numquam qui laborum qui omnis.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2019-12-29 23:59:59', '2020-01-02 23:59:59', '2019-10-23 23:59:59', '2019-12-22 23:59:59', 5284000, 70, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 5),
(9, 'Nesciunt doloremque repellendus quod mollitia voluptas dignissimos.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2019-12-29 23:59:59', '2020-01-06 23:59:59', '2019-10-23 23:59:59', '2019-12-22 23:59:59', 9450000, 20, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 7),
(10, 'Et excepturi est ipsum laborum reprehenderit.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2020-03-25 23:59:59', '2020-03-29 23:59:59', '2020-02-20 23:59:59', '2020-03-21 23:59:59', 8866000, 40, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 8),
(11, 'Consectetur inventore mollitia veniam.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-03-25 23:59:59', '2020-03-27 23:59:59', '2020-02-20 23:59:59', '2020-03-21 23:59:59', 8463000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 8),
(12, 'Sint optio non quisquam nostrum est soluta.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-03-22 23:59:59', '2020-03-27 23:59:59', '2020-02-20 23:59:59', '2020-03-21 23:59:59', 2592000, 30, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 1),
(13, 'Corporis deleniti voluptatem voluptatem facilis ut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-08-22 23:59:59', '2020-08-24 23:59:59', '2020-07-19 23:59:59', '2020-08-18 23:59:59', 3470000, 80, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 4),
(14, 'Quisquam distinctio quis veniam sed quod.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2020-12-22 23:59:59', '2020-12-24 23:59:59', '2020-11-16 23:59:59', '2020-12-16 23:59:59', 9777000, 60, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 1),
(15, 'Mollitia nemo rerum voluptas voluptatum voluptas id suscipit ullam.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-12-19 23:59:59', '2020-12-25 23:59:59', '2020-11-16 23:59:59', '2020-12-16 23:59:59', 8819000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 3),
(16, 'Accusamus distinctio aliquam rerum eveniet voluptatem.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2021-06-22 23:59:59', '2021-06-23 23:59:59', '2021-04-15 23:59:59', '2021-06-14 23:59:59', 7140000, 70, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 5),
(17, 'Quis odit rerum et iure.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2021-09-18 23:59:59', '2021-09-20 23:59:59', '2021-08-13 23:59:59', '2021-09-12 23:59:59', 2311000, 30, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 1),
(18, 'Unde consequuntur ut sed in veniam officia aut possimus.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2021-09-16 23:59:59', '2021-09-20 23:59:59', '2021-08-13 23:59:59', '2021-09-12 23:59:59', 2224000, 50, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 4),
(19, 'Et ea aspernatur at.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-03-18 23:59:59', '2022-03-23 23:59:59', '2022-01-10 23:59:59', '2022-03-11 23:59:59', 7941000, 30, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 1),
(20, 'Earum qui eaque et ut est ipsa repudiandae.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2022-07-11 23:59:59', '2022-07-15 23:59:59', '2022-06-09 23:59:59', '2022-07-09 23:59:59', 3343000, 70, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 6),
(21, 'Voluptatibus culpa quasi veniam facere dolores aut.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2023-01-06 23:59:59', '2023-01-12 23:59:59', '2022-11-06 23:59:59', '2023-01-05 23:59:59', 5833000, 80, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_registrations`
--

CREATE TABLE `tour_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_date` datetime NOT NULL,
  `relative_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `support_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour_registrations`
--

INSERT INTO `tour_registrations` (`id`, `registration_date`, `relative_fullname`, `birthday`, `gender`, `relationship`, `phone`, `citizen_card`, `cost`, `user_id`, `tour_id`, `support_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2022-11-06 09:27:49', 'Ánh Vạn Thắng', '1988-01-02 09:38:55', 'Nam', 'USER', '0391746608', '312850866', 2921000, 12, 21, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(2, '2022-11-06 09:27:49', 'Cổ Chấn Phong', '2000-08-25 12:38:29', 'Nam', 'USER', '0774177059', '325677546', 2921000, 22, 21, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(3, '2022-11-06 09:27:49', 'Levi Conn', '1980-09-26 17:14:19', 'Nam', 'RELATIONSHIP', '0534737666', '313713835', 5833000, 22, 21, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(4, '2022-11-06 09:27:49', 'Lý Kiên Bình', '1987-10-23 01:14:01', 'Nam', 'USER', '0808616897', '366183894', 2921000, 26, 21, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(5, '2022-11-06 09:27:49', 'Linh Cao Sơn', '1999-12-12 17:35:19', 'Nam', 'USER', '0035650313', '319417639', 4441000, 48, 21, 5, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(6, '2022-11-06 09:27:49', 'Prof. Eliseo Murray', '1981-02-23 05:27:59', 'Nam', 'RELATIONSHIP', '0568785009', '378170675', 5833000, 48, 21, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(7, '2022-11-06 09:27:49', 'Mr. Jovanny Kirlin', '1996-07-10 04:56:41', 'Nữ', 'RELATIONSHIP', '0562312240', '341041511', 5833000, 48, 21, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(8, '2022-11-06 09:27:49', 'Ứng Công Thành', '1980-06-20 02:14:17', 'Nam', 'USER', '0696841324', '391067993', 4441000, 33, 21, 5, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(9, '2022-11-06 09:27:49', 'Rogelio Breitenberg', '1980-07-25 14:08:24', 'Nữ', 'RELATIONSHIP', '0391367119', '385687522', 5833000, 33, 21, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(10, '2022-11-06 09:27:49', 'Emmet Rice', '1996-09-25 04:11:17', 'Nam', 'RELATIONSHIP', '0365396445', '353196676', 5833000, 33, 21, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(11, '2022-06-09 09:27:49', 'Phương Hữu Từ', '1983-01-05 06:27:32', 'Nam', 'USER', '0899037628', '327626778', 1951000, 5, 20, 5, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(12, '2022-06-09 09:27:49', 'Jocelyn Haley', '1994-03-15 09:31:31', 'Nam', 'RELATIONSHIP', '0444341609', '389527485', 3343000, 5, 20, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(13, '2022-06-09 09:27:49', 'Laura Parisian', '1986-10-14 06:59:49', 'Nam', 'RELATIONSHIP', '0729199635', '379966899', 3343000, 5, 20, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(14, '2022-06-09 09:27:49', 'Ao Thanh Phong', '1999-10-08 10:38:14', 'Nam', 'USER', '0262821612', '317654347', 431000, 20, 20, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(15, '2022-06-09 09:27:49', 'Camron Simonis', '1991-08-08 19:26:30', 'Nam', 'RELATIONSHIP', '0486574859', '301560320', 3343000, 20, 20, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(16, '2022-06-09 09:27:49', 'Cara Hahn', '1990-11-23 03:37:13', 'Nữ', 'RELATIONSHIP', '0387805951', '392849420', 3343000, 20, 20, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(17, '2022-06-09 09:27:49', 'Trác Phúc Cường', '1980-10-29 08:36:04', 'Nữ', 'USER', '0589752157', '390195331', 1951000, 47, 20, 5, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(18, '2022-06-09 09:27:49', 'Margarette Corkery', '1981-08-10 20:01:34', 'Nữ', 'RELATIONSHIP', '0186546968', '343411542', 3343000, 47, 20, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(19, '2022-01-10 09:27:49', 'Thái Bảo Châu', '1999-09-28 04:15:30', 'Nam', 'USER', '0275049638', '350338441', 5029000, 25, 19, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(20, '2022-01-10 09:27:49', 'Scarlett Moore', '2000-03-19 05:54:26', 'Nam', 'RELATIONSHIP', '0859051630', '382276827', 7941000, 25, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(21, '2022-01-10 09:27:49', 'Lý Kiên Bình', '1987-10-23 01:14:01', 'Nam', 'USER', '0808616897', '366183894', 7941000, 26, 19, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(22, '2022-01-10 09:27:49', 'Amely Zemlak', '1981-07-14 06:17:13', 'Nữ', 'RELATIONSHIP', '0133336034', '360258381', 7941000, 26, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(23, '2022-01-10 09:27:49', 'Đậu Hoài Trung', '1991-03-26 11:32:27', 'Nữ', 'USER', '0353779017', '386453648', 6549000, 39, 19, 5, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(24, '2022-01-10 09:27:49', 'Alexie VonRueden', '1992-06-02 12:48:50', 'Nam', 'RELATIONSHIP', '0271186753', '398572784', 7941000, 39, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(25, '2022-01-10 09:27:49', 'Ấu Quang Trung', '1994-09-15 17:52:05', 'Nữ', 'USER', '0317605457', '336036112', 5029000, 43, 19, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(26, '2022-01-10 09:27:49', 'Jamel Hirthe', '1994-10-07 11:09:39', 'Nữ', 'RELATIONSHIP', '0569562157', '337796901', 7941000, 43, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(27, '2022-01-10 09:27:49', 'Terence Labadie', '1980-09-16 17:34:54', 'Nữ', 'RELATIONSHIP', '0587773755', '361445922', 7941000, 43, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(28, '2022-01-10 09:27:49', 'Đương Hoàng Ân', '1998-03-21 14:40:50', 'Nam', 'USER', '0980241574', '381056957', 5029000, 51, 19, 6, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(29, '2022-01-10 09:27:49', 'Kiana Wilkinson', '1989-09-24 12:48:16', 'Nữ', 'RELATIONSHIP', '0500696116', '363289430', 7941000, 51, 19, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(30, '2021-08-13 09:27:49', 'Trịnh Minh Thuận', '1992-06-23 13:15:53', 'Nữ', 'USER', '0582691814', '354734691', -1496000, 8, 17, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(31, '2021-08-13 09:27:49', 'Ao Thanh Phong', '1999-10-08 10:38:14', 'Nam', 'USER', '0262821612', '317654347', -1496000, 20, 17, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(32, '2021-08-13 09:27:49', 'Mạc Tạ Hiền', '1991-06-06 01:12:18', 'Nữ', 'USER', '0885586592', '364630229', -1496000, 32, 17, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(33, '2021-08-13 09:27:49', 'Dr. Salvador Ortiz', '1998-07-14 18:51:19', 'Nữ', 'RELATIONSHIP', '0707364132', '350642894', 2311000, 32, 17, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(34, '2021-08-13 09:27:49', 'Toney Keeling', '1981-10-28 18:08:18', 'Nữ', 'RELATIONSHIP', '0650410423', '321068458', 2311000, 32, 17, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(35, '2021-08-13 09:27:49', 'Diêm Thành Tín', '1999-12-02 11:19:23', 'Nam', 'USER', '0223811611', '362240764', -1496000, 37, 17, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(36, '2021-08-13 09:27:49', 'Mrs. Alessia Skiles', '1987-07-10 22:35:20', 'Nam', 'RELATIONSHIP', '0544166514', '362006337', 2311000, 37, 17, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(37, '2021-08-13 09:27:49', 'Trác Phúc Cường', '1980-10-29 08:36:04', 'Nữ', 'USER', '0589752157', '390195331', 1289000, 47, 17, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(38, '2021-08-13 09:27:49', 'Mục Bình Nguyên', '1997-09-10 11:46:11', 'Nam', 'USER', '0567252896', '398396094', 1289000, 49, 17, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(39, '2021-08-13 09:27:49', 'Nhan Cao Thọ', '1987-07-17 23:59:22', 'Nữ', 'USER', '0845121371', '322413990', 1289000, 14, 17, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(40, '2021-08-13 09:27:49', 'Cydney Wisozk III', '1999-01-21 16:53:43', 'Nam', 'RELATIONSHIP', '0509940745', '350629496', 2311000, 14, 17, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(41, '2021-08-13 09:27:49', 'Nhan Cao Thọ', '1987-07-17 23:59:22', 'Nữ', 'USER', '0845121371', '322413990', 2224000, 14, 18, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(42, '2021-08-13 09:27:49', 'Myriam Connelly', '1981-01-30 23:44:56', 'Nữ', 'RELATIONSHIP', '0022508041', '349623462', 2224000, 14, 18, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(43, '2021-08-13 09:27:49', 'Uông Hải Thụy', '1986-02-10 20:12:57', 'Nữ', 'USER', '0228231822', '313563189', -1583000, 28, 18, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(44, '2021-08-13 09:27:49', 'Miss Agnes Murazik', '1996-06-13 10:06:26', 'Nam', 'RELATIONSHIP', '0928886959', '384032236', 2224000, 28, 18, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(45, '2021-08-13 09:27:49', 'Bạch Ðình Tuấn', '1989-06-27 11:15:08', 'Nam', 'USER', '0384470222', '307951426', -1583000, 34, 18, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(46, '2021-08-13 09:27:49', 'Dr. Felicia Doyle Jr.', '1980-08-24 00:53:22', 'Nữ', 'RELATIONSHIP', '0267946215', '358906827', 2224000, 34, 18, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(47, '2021-08-13 09:27:49', 'Phương Quyết Thắng', '1990-09-01 10:28:48', 'Nữ', 'USER', '0507365371', '340974065', -1583000, 53, 18, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(48, '2021-08-13 09:27:49', 'Vernice Hansen IV', '1982-01-18 15:44:48', 'Nam', 'RELATIONSHIP', '0145227223', '330571261', 2224000, 53, 18, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(49, '2021-04-15 09:27:49', 'Ánh Vạn Thắng', '1988-01-02 09:38:55', 'Nam', 'USER', '0391746608', '312850866', 3333000, 12, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(50, '2021-04-15 09:27:49', 'Cổ Chấn Phong', '2000-08-25 12:38:29', 'Nam', 'USER', '0774177059', '325677546', 3333000, 22, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(51, '2021-04-15 09:27:49', 'Modesta Metz', '1996-10-31 02:25:52', 'Nữ', 'RELATIONSHIP', '0044856336', '313367609', 7140000, 22, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(52, '2021-04-15 09:27:49', 'Lại Trung Hiếu', '1996-10-22 19:31:38', 'Nam', 'USER', '0646067788', '398660661', 3333000, 31, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(53, '2021-04-15 09:27:49', 'Dr. Jacques Rolfson', '1999-09-09 17:19:44', 'Nữ', 'RELATIONSHIP', '0527605910', '381721661', 7140000, 31, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(54, '2021-04-15 09:27:49', 'Đậu Hoài Trung', '1991-03-26 11:32:27', 'Nữ', 'USER', '0353779017', '386453648', 6118000, 39, 16, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(55, '2021-04-15 09:27:49', 'Lèng Sơn Hải', '1988-11-10 10:10:27', 'Nam', 'USER', '0033054224', '361775455', 3333000, 54, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(56, '2021-04-15 09:27:49', 'Jason Hartmann', '1982-04-23 21:10:44', 'Nữ', 'RELATIONSHIP', '0914200513', '304331348', 7140000, 54, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(57, '2021-04-15 09:27:49', 'Mục Bình Nguyên', '1997-09-10 11:46:11', 'Nam', 'USER', '0567252896', '398396094', 7140000, 49, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(58, '2021-04-15 09:27:49', 'Phương Hữu Từ', '1983-01-05 06:27:32', 'Nam', 'USER', '0899037628', '327626778', 6118000, 5, 16, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(59, '2021-04-15 09:27:49', 'Mr. Dorcas Mohr IV', '1984-02-04 07:44:46', 'Nữ', 'RELATIONSHIP', '0483073820', '345980721', 7140000, 5, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(60, '2021-04-15 09:27:49', 'Trịnh Minh Thuận', '1992-06-23 13:15:53', 'Nữ', 'USER', '0582691814', '354734691', 7140000, 8, 16, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(61, '2021-04-15 09:27:49', 'Prof. Chadrick Stracke', '1998-03-18 22:12:37', 'Nữ', 'RELATIONSHIP', '0506011692', '352226887', 7140000, 8, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(62, '2021-04-15 09:27:49', 'Houston Bosco', '1994-07-17 21:30:58', 'Nam', 'RELATIONSHIP', '0295760781', '395796113', 7140000, 8, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(63, '2021-04-15 09:27:49', 'Tinh Nam An', '1986-01-31 21:41:52', 'Nữ', 'USER', '0309548044', '384650642', 4973000, 10, 16, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(64, '2021-04-15 09:27:49', 'Ao Thanh Phong', '1999-10-08 10:38:14', 'Nam', 'USER', '0262821612', '317654347', 7140000, 20, 16, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(65, '2021-04-15 09:27:49', 'Mạc Tạ Hiền', '1991-06-06 01:12:18', 'Nữ', 'USER', '0885586592', '364630229', 7140000, 32, 16, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(66, '2021-04-15 09:27:49', 'Bradley Wolf', '1997-07-22 08:44:24', 'Nam', 'RELATIONSHIP', '0237746872', '306541108', 7140000, 32, 16, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(67, '2021-04-15 09:27:49', 'Lã Trung Hiếu', '1993-04-19 05:19:04', 'Nữ', 'USER', '0961428793', '339080513', 3333000, 50, 16, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(68, '2020-11-16 09:27:49', 'Quảng Vạn Thông', '1985-12-13 11:05:46', 'Nam', 'USER', '0513009259', '315237758', 7610000, 6, 14, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(69, '2020-11-16 09:27:49', 'Ozella Franecki', '1997-10-04 20:15:20', 'Nam', 'RELATIONSHIP', '0322525090', '372418805', 9777000, 6, 14, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(70, '2020-11-16 09:27:49', 'Ngạc Quang Tuấn', '1989-07-05 06:19:36', 'Nam', 'USER', '0484010241', '377567618', 8755000, 11, 14, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(71, '2020-11-16 09:27:49', 'Tào Anh Thái', '1986-02-25 22:19:33', 'Nữ', 'USER', '0510836445', '366549641', 8755000, 36, 14, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(72, '2020-11-16 09:27:49', 'Dr. Ezra Steuber DVM', '1988-09-11 17:38:16', 'Nam', 'RELATIONSHIP', '0111683862', '356005102', 9777000, 36, 14, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(73, '2020-11-16 09:27:49', 'Đương Hoàng Ân', '1998-03-21 14:40:50', 'Nam', 'USER', '0980241574', '381056957', 8755000, 51, 14, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(74, '2020-11-16 09:27:49', 'Bernie Lynch', '1999-10-12 04:16:10', 'Nữ', 'RELATIONSHIP', '0358133754', '355904802', 9777000, 51, 14, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(75, '2020-11-16 09:27:49', 'Hướng Trí Dũng', '1981-11-15 13:35:12', 'Nam', 'USER', '0489983985', '321406681', 7797000, 7, 15, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(76, '2020-11-16 09:27:49', 'Tấn Trung Nguyên', '1981-09-05 20:54:36', 'Nam', 'USER', '0141822669', '368402423', 7797000, 13, 15, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(77, '2020-11-16 09:27:49', 'Era Kemmer', '1987-11-10 05:19:26', 'Nữ', 'RELATIONSHIP', '0696571330', '353808220', 8819000, 13, 15, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(78, '2020-11-16 09:27:49', 'Triệu Thành Nguyên', '1991-07-02 22:51:02', 'Nữ', 'USER', '0671249566', '394551895', 5012000, 18, 15, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(79, '2020-11-16 09:27:49', 'Dr. Lacy Reinger', '1997-01-31 00:34:47', 'Nam', 'RELATIONSHIP', '0011211386', '395145139', 8819000, 18, 15, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(80, '2020-11-16 09:27:49', 'Genoveva Krajcik', '1989-05-20 23:45:32', 'Nam', 'RELATIONSHIP', '0444233502', '387390439', 8819000, 18, 15, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(81, '2020-07-19 09:27:49', 'Vưu Việt Thái', '1993-05-17 13:01:38', 'Nữ', 'USER', '0941891691', '333341504', -337000, 30, 13, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(82, '2020-07-19 09:27:49', 'Bạch Ðình Tuấn', '1989-06-27 11:15:08', 'Nam', 'USER', '0384470222', '307951426', 3470000, 34, 13, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(83, '2020-07-19 09:27:49', 'Dr. Mortimer Kihn Sr.', '1992-11-20 22:10:05', 'Nữ', 'RELATIONSHIP', '0556343583', '322174827', 3470000, 34, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(84, '2020-07-19 09:27:49', 'Ms. Rachel Kovacek', '1992-09-05 01:41:08', 'Nam', 'RELATIONSHIP', '0561429064', '377600578', 3470000, 34, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(85, '2020-07-19 09:27:49', 'Doãn Ðình Phú', '1999-02-14 20:53:22', 'Nữ', 'USER', '0870605469', '358122220', 2448000, 9, 13, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(86, '2020-07-19 09:27:49', 'Izaiah Schroeder', '1986-07-10 16:51:02', 'Nam', 'RELATIONSHIP', '0319684637', '310436337', 3470000, 9, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(87, '2020-07-19 09:27:49', 'Carson Miller', '1987-08-07 01:58:49', 'Nữ', 'RELATIONSHIP', '0447793209', '386722736', 3470000, 9, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(88, '2020-07-19 09:27:49', 'Phí Ðức Hòa', '1992-06-14 04:27:10', 'Nam', 'USER', '0019756340', '311012830', 2448000, 21, 13, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(89, '2020-07-19 09:27:49', 'Prof. Leopoldo Abernathy', '1995-08-26 17:39:23', 'Nam', 'RELATIONSHIP', '0313402668', '333250260', 3470000, 21, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(90, '2020-07-19 09:27:49', 'Dina Mohr III', '1992-08-30 17:06:57', 'Nữ', 'RELATIONSHIP', '0011199755', '338769209', 3470000, 21, 13, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(91, '2020-02-20 09:27:49', 'Quảng Vạn Thông', '1985-12-13 11:05:46', 'Nam', 'USER', '0513009259', '315237758', 8866000, 6, 10, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(92, '2020-02-20 09:27:49', 'Ngạc Quang Tuấn', '1989-07-05 06:19:36', 'Nam', 'USER', '0484010241', '377567618', 8866000, 11, 10, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(93, '2020-02-20 09:27:49', 'Gerson Roob', '1986-12-10 01:44:19', 'Nữ', 'RELATIONSHIP', '0494668869', '349499092', 8866000, 11, 10, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(94, '2020-02-20 09:27:49', 'Tinh Thế Vinh', '1995-04-26 08:02:54', 'Nam', 'USER', '0921895545', '378135140', 6699000, 27, 10, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(95, '2020-02-20 09:27:49', 'Derek Durgan Sr.', '1982-07-26 11:32:22', 'Nam', 'RELATIONSHIP', '0521476876', '384693059', 8866000, 27, 10, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(96, '2020-02-20 09:27:49', 'Đương Hoàng Ân', '1998-03-21 14:40:50', 'Nam', 'USER', '0980241574', '381056957', 8866000, 51, 10, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(97, '2020-02-20 09:27:49', 'Mầu Công Lập', '1991-01-24 14:45:55', 'Nữ', 'USER', '0533863873', '311673248', 7844000, 17, 10, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(98, '2020-02-20 09:27:49', 'Ứng Công Thành', '1980-06-20 02:14:17', 'Nam', 'USER', '0696841324', '391067993', 7844000, 33, 10, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(99, '2020-02-20 09:27:49', 'Uriel Walsh', '1998-12-27 14:49:32', 'Nữ', 'RELATIONSHIP', '0512309756', '373956051', 8866000, 33, 10, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(100, '2020-02-20 09:27:49', 'Miss Cathryn Boyer', '1994-11-21 05:30:56', 'Nam', 'RELATIONSHIP', '0801071420', '310141748', 8866000, 33, 10, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(101, '2020-02-20 09:27:49', 'Quảng Vạn Thông', '1985-12-13 11:05:46', 'Nam', 'USER', '0513009259', '315237758', 8463000, 6, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(102, '2020-02-20 09:27:49', 'Ms. Hortense Leuschke', '1994-11-04 12:03:49', 'Nam', 'RELATIONSHIP', '0033849276', '306196682', 8463000, 6, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(103, '2020-02-20 09:27:49', 'Boris Leuschke', '1982-06-04 15:11:20', 'Nam', 'RELATIONSHIP', '0634627043', '372221066', 8463000, 6, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(104, '2020-02-20 09:27:49', 'Ngạc Quang Tuấn', '1989-07-05 06:19:36', 'Nam', 'USER', '0484010241', '377567618', 8463000, 11, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(105, '2020-02-20 09:27:49', 'Kyra Murphy', '1981-03-08 12:49:29', 'Nữ', 'RELATIONSHIP', '0989315162', '349669540', 8463000, 11, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(106, '2020-02-20 09:27:49', 'Jazmyne Baumbach', '1995-04-23 19:33:52', 'Nam', 'RELATIONSHIP', '0291477199', '396088195', 8463000, 11, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(107, '2020-02-20 09:27:49', 'Tinh Thế Vinh', '1995-04-26 08:02:54', 'Nam', 'USER', '0921895545', '378135140', 8463000, 27, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(108, '2020-02-20 09:27:49', 'Tào Anh Thái', '1986-02-25 22:19:33', 'Nữ', 'USER', '0510836445', '366549641', 8463000, 36, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(109, '2020-02-20 09:27:49', 'Đương Hoàng Ân', '1998-03-21 14:40:50', 'Nam', 'USER', '0980241574', '381056957', 8463000, 51, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(110, '2020-02-20 09:27:49', 'Moshe Crona', '1987-08-04 07:59:59', 'Nữ', 'RELATIONSHIP', '0125252528', '334292773', 8463000, 51, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(111, '2020-02-20 09:27:49', 'Mầu Công Lập', '1991-01-24 14:45:55', 'Nữ', 'USER', '0533863873', '311673248', 8463000, 17, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(112, '2020-02-20 09:27:49', 'Garnett Howe', '1984-08-11 15:02:05', 'Nam', 'RELATIONSHIP', '0944796255', '375357637', 8463000, 17, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(113, '2020-02-20 09:27:49', 'Prof. Jovan Lueilwitz IV', '1991-08-23 15:05:14', 'Nữ', 'RELATIONSHIP', '0599930410', '389860453', 8463000, 17, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(114, '2020-02-20 09:27:49', 'Ứng Công Thành', '1980-06-20 02:14:17', 'Nam', 'USER', '0696841324', '391067993', 8463000, 33, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(115, '2020-02-20 09:27:49', 'Miss Christiana Fay I', '1987-03-19 01:16:38', 'Nam', 'RELATIONSHIP', '0554360726', '349770708', 8463000, 33, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(116, '2020-02-20 09:27:49', 'Thái Bảo Châu', '1999-09-28 04:15:30', 'Nam', 'USER', '0275049638', '350338441', 7441000, 25, 11, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(117, '2020-02-20 09:27:49', 'Halie Halvorson PhD', '1997-01-22 21:05:43', 'Nữ', 'RELATIONSHIP', '0529166116', '351519034', 8463000, 25, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(118, '2020-02-20 09:27:49', 'Annette Ward', '1980-03-08 14:46:34', 'Nữ', 'RELATIONSHIP', '0077182748', '367401950', 8463000, 25, 11, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(119, '2020-02-20 09:27:49', 'Doãn Ðình Phú', '1999-02-14 20:53:22', 'Nữ', 'USER', '0870605469', '358122220', 2592000, 9, 12, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(120, '2020-02-20 09:27:49', 'Miss Eliza Krajcik DDS', '1990-03-22 09:26:04', 'Nữ', 'RELATIONSHIP', '0410012151', '308536413', 2592000, 9, 12, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(121, '2020-02-20 09:27:49', 'Cổ Vương Triều', '1989-11-14 22:32:28', 'Nam', 'USER', '0496988172', '323932753', 1570000, 19, 12, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(122, '2020-02-20 09:27:49', 'Prof. Raymond Blick', '1989-05-16 06:39:35', 'Nữ', 'RELATIONSHIP', '0447109181', '367719627', 2592000, 19, 12, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(123, '2020-02-20 09:27:49', 'Linwood Bechtelar', '1990-08-24 03:17:14', 'Nam', 'RELATIONSHIP', '0220226476', '384252433', 2592000, 19, 12, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(124, '2020-02-20 09:27:49', 'Ứng Công Thành', '1980-06-20 02:14:17', 'Nam', 'USER', '0696841324', '391067993', 2592000, 33, 12, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(125, '2019-10-23 09:27:49', 'Mầu Công Lập', '1991-01-24 14:45:55', 'Nữ', 'USER', '0533863873', '311673248', 5284000, 17, 8, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(126, '2019-10-23 09:27:49', 'Kiley Carroll', '1987-02-14 16:46:52', 'Nam', 'RELATIONSHIP', '0405899835', '327713572', 5284000, 17, 8, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(127, '2019-10-23 09:27:49', 'Savion Collins', '1989-08-01 11:01:32', 'Nữ', 'RELATIONSHIP', '0130163485', '398167302', 5284000, 17, 8, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(128, '2019-10-23 09:27:49', 'Chu Minh Quân', '1986-04-17 16:21:58', 'Nam', 'USER', '0908057308', '350859705', 4262000, 38, 8, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(129, '2019-10-23 09:27:49', 'Triệu Thành Nguyên', '1991-07-02 22:51:02', 'Nữ', 'USER', '0671249566', '394551895', 5284000, 18, 8, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(130, '2019-10-23 09:27:49', 'Estevan Koss I', '1989-04-04 19:12:48', 'Nam', 'RELATIONSHIP', '0254838478', '390215070', 5284000, 18, 8, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(131, '2019-10-23 09:27:49', 'Ánh Vạn Thắng', '1988-01-02 09:38:55', 'Nam', 'USER', '0391746608', '312850866', 9450000, 12, 9, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(132, '2019-10-23 09:27:49', 'Cổ Chấn Phong', '2000-08-25 12:38:29', 'Nam', 'USER', '0774177059', '325677546', 9450000, 22, 9, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(133, '2019-10-23 09:27:49', 'Avis Donnelly I', '2000-11-10 16:41:38', 'Nam', 'RELATIONSHIP', '0591381001', '343684728', 9450000, 22, 9, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(134, '2019-10-23 09:27:49', 'Hailie Johnston', '1998-02-06 15:25:41', 'Nam', 'RELATIONSHIP', '0943431347', '364521116', 9450000, 22, 9, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(135, '2019-10-23 09:27:49', 'Lý Kiên Bình', '1987-10-23 01:14:01', 'Nam', 'USER', '0808616897', '366183894', 5643000, 26, 9, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(136, '2019-05-26 09:27:49', 'Hướng Trí Dũng', '1981-11-15 13:35:12', 'Nam', 'USER', '0489983985', '321406681', 7304000, 7, 6, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(137, '2019-05-26 09:27:49', 'Triệu Thành Nguyên', '1991-07-02 22:51:02', 'Nữ', 'USER', '0671249566', '394551895', 7304000, 18, 6, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(138, '2019-05-26 09:27:49', 'Thái Bảo Châu', '1999-09-28 04:15:30', 'Nam', 'USER', '0275049638', '350338441', 9024000, 25, 7, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(139, '2019-05-26 09:27:49', 'Chu Minh Quân', '1986-04-17 16:21:58', 'Nam', 'USER', '0908057308', '350859705', 9024000, 38, 7, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(140, '2019-05-26 09:27:49', 'Mục Bình Nguyên', '1997-09-10 11:46:11', 'Nam', 'USER', '0567252896', '398396094', 9024000, 49, 7, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(141, '2019-01-26 09:27:49', 'Lê Ngọc Hở', '2001-06-29 09:27:45', 'Nam', 'USER', '0589124204', '312345678', 369000, 1, 4, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(142, '2019-01-26 09:27:49', 'Lê Minh Nhật', '2001-06-29 09:27:45', 'Nam', 'USER', '0589124207', '312345677', 369000, 4, 4, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(143, '2019-01-26 09:27:49', 'Văn Kim Thịnh', '1981-04-07 07:11:36', 'Nam', 'USER', '0690487988', '388955107', 3154000, 45, 4, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(144, '2019-01-26 09:27:49', 'Lorenza Kilback', '1995-02-13 00:48:34', 'Nam', 'RELATIONSHIP', '0620261220', '391079771', 4176000, 45, 4, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(145, '2019-01-26 09:27:49', 'Lê Ngọc Hở', '2001-06-29 09:27:45', 'Nam', 'USER', '0589124204', '312345678', 1433000, 1, 5, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(146, '2019-01-26 09:27:49', 'Margie Yost', '1996-06-27 04:25:36', 'Nam', 'RELATIONSHIP', '0050047244', '317351223', 1433000, 1, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(147, '2019-01-26 09:27:49', 'Janice Mante', '1988-08-27 18:44:11', 'Nữ', 'RELATIONSHIP', '0083802988', '388575486', 1433000, 1, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(148, '2019-01-26 09:27:49', 'Bùi Thị Thùy Dương', '2001-06-29 09:27:45', 'Nữ', 'USER', '0589124205', '312345675', -2374000, 2, 5, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(149, '2019-01-26 09:27:49', 'Zackary Reichel', '1986-05-14 03:48:25', 'Nam', 'RELATIONSHIP', '0170618050', '328962060', 1433000, 2, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(150, '2019-01-26 09:27:49', 'Nguyễn Thị Bảo Trân', '2001-06-29 09:27:45', 'Nữ', 'USER', '0589124206', '312345676', -2374000, 3, 5, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(151, '2019-01-26 09:27:49', 'Mr. Davonte Monahan DVM', '1998-04-09 19:23:19', 'Nữ', 'RELATIONSHIP', '0690820242', '300675847', 1433000, 3, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(152, '2019-01-26 09:27:49', 'Prof. Rowland Sauer Sr.', '1995-07-23 19:06:32', 'Nam', 'RELATIONSHIP', '0355175240', '309336619', 1433000, 3, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(153, '2019-01-26 09:27:49', 'Võ Việt Khôi', '1988-05-26 17:28:24', 'Nam', 'USER', '0867699567', '359907419', -734000, 15, 5, 3, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(154, '2019-01-26 09:27:49', 'Kristofer Smitham', '1988-10-17 08:39:31', 'Nam', 'RELATIONSHIP', '0774578422', '326235654', 1433000, 15, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(155, '2019-01-26 09:27:49', 'Ngọc Công Lý', '1987-12-28 15:51:01', 'Nữ', 'USER', '0279949229', '372665929', -2374000, 16, 5, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(156, '2019-01-26 09:27:49', 'Đỗ Huy Thông', '1999-05-30 22:31:48', 'Nữ', 'USER', '0548635252', '331457302', 411000, 29, 5, 2, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(157, '2019-01-26 09:27:49', 'Chế Vũ Uy', '1999-06-29 11:26:05', 'Nữ', 'USER', '0518357466', '324545192', -2374000, 42, 5, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(158, '2019-01-26 09:27:49', 'Hertha Pfannerstill', '1988-11-14 03:13:56', 'Nữ', 'RELATIONSHIP', '0673672939', '348463534', 1433000, 42, 5, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(159, '2018-08-29 09:27:49', 'Mầu Công Lập', '1991-01-24 14:45:55', 'Nữ', 'USER', '0533863873', '311673248', 4558000, 17, 3, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(160, '2018-08-29 09:27:49', 'Dr. Stephania Trantow', '1986-12-16 07:34:12', 'Nam', 'RELATIONSHIP', '0048565353', '397282791', 4558000, 17, 3, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(161, '2018-08-29 09:27:49', 'Ms. Vicenta Leannon IV', '1985-02-13 03:43:15', 'Nam', 'RELATIONSHIP', '0852288989', '397785983', 4558000, 17, 3, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(162, '2018-08-29 09:27:49', 'Lại Trung Hiếu', '1996-10-22 19:31:38', 'Nam', 'USER', '0646067788', '398660661', 4558000, 31, 3, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(163, '2018-08-29 09:27:49', 'Dan Jast', '1996-07-10 03:27:32', 'Nam', 'RELATIONSHIP', '0683170314', '343161876', 4558000, 31, 3, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(164, '2018-08-29 09:27:49', 'Linh Cao Sơn', '1999-12-12 17:35:19', 'Nam', 'USER', '0035650313', '319417639', 4558000, 48, 3, 4, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(165, '2018-05-01 09:27:49', 'Lý Kiên Bình', '1987-10-23 01:14:01', 'Nam', 'USER', '0808616897', '366183894', 5545000, 26, 2, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(166, '2018-05-01 09:27:49', 'Lại Trung Hiếu', '1996-10-22 19:31:38', 'Nam', 'USER', '0646067788', '398660661', 7294000, 31, 2, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(167, '2018-05-01 09:27:49', 'Wilma Daniel MD', '1981-03-18 02:07:48', 'Nam', 'RELATIONSHIP', '0979469481', '304101758', 7294000, 31, 2, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(168, '2018-05-01 09:27:49', 'Miss Margaretta Kemmer', '1983-12-02 03:47:49', 'Nữ', 'RELATIONSHIP', '0205544237', '336963677', 7294000, 31, 2, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(169, '2018-05-01 09:27:49', 'Đậu Hoài Trung', '1991-03-26 11:32:27', 'Nữ', 'USER', '0353779017', '386453648', 7294000, 39, 2, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(170, '2018-01-01 09:27:49', 'Cổ Chấn Phong', '2000-08-25 12:38:29', 'Nam', 'USER', '0774177059', '325677546', 8186000, 22, 1, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(171, '2018-01-01 09:27:49', 'Lý Kiên Bình', '1987-10-23 01:14:01', 'Nam', 'USER', '0808616897', '366183894', 8186000, 26, 1, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(172, '2018-01-01 09:27:49', 'Dr. Nils White IV', '1987-04-02 21:09:46', 'Nam', 'RELATIONSHIP', '0099444539', '302509986', 8186000, 26, 1, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(173, '2018-01-01 09:27:49', 'Hope Heathcote', '1984-10-10 10:40:53', 'Nam', 'RELATIONSHIP', '0721982063', '395747820', 8186000, 26, 1, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(174, '2018-01-01 09:27:49', 'Lèng Sơn Hải', '1988-11-10 10:10:27', 'Nam', 'USER', '0033054224', '361775455', 8186000, 54, 1, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(175, '2018-01-01 09:27:49', 'Edythe Hickle', '1987-07-11 22:39:30', 'Nữ', 'RELATIONSHIP', '0488123983', '382650707', 8186000, 54, 1, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(176, '2018-01-01 09:27:49', 'Phí Ðức Hòa', '1992-06-14 04:27:10', 'Nam', 'USER', '0019756340', '311012830', 8186000, 21, 1, 1, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL),
(177, '2018-01-01 09:27:49', 'Christ Mohr DVM', '1997-09-21 22:11:46', 'Nữ', 'RELATIONSHIP', '0385596611', '350036861', 8186000, 21, 1, NULL, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL);

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
  `birthday` datetime DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizen_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `agency_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Lê Ngọc Hở', 'ngocho123', '$2y$10$FTZ/dIUMiQjosjVojpn74.uhb1Ip3q9Mo2UPqtrExFMwi9yogZ/J.', 'ngocho123@gmail.com', '2022-06-29 02:27:45', 'Nam', '2001-06-29 09:27:45', '0589124204', '312345678', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(2, 'Bùi Thị Thùy Dương', 'thuyduong123', '$2y$10$otXhDQxLf2zP93fogmR6tu8CC8HzNbdL.uEmNU0wVz7bTRN5zCLL6', 'thuyduong123@gmail.com', '2022-06-29 02:27:45', 'Nữ', '2001-06-29 09:27:45', '0589124205', '312345675', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(3, 'Nguyễn Thị Bảo Trân', 'baotran123', '$2y$10$Vncv.sCmW1DIFnnxOKMpOuu7nJ2YoidPXtAjus74dy32nL1X/7Jyu', 'baotran123@gmail.com', '2022-06-29 02:27:45', 'Nữ', '2001-06-29 09:27:45', '0589124206', '312345676', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(4, 'Lê Minh Nhật', 'minhnhat123', '$2y$10$1fVYU8H5j4btTnlTsDD4/.8aOYJwmkR1dveuo5oBeKHQgLtMQZoTu', 'minhnhat123@gmail.com', '2022-06-29 02:27:45', 'Nam', '2001-06-29 09:27:45', '0589124207', '312345677', NULL, '2022-06-13 00:00:00', 9, 7, 3, 1, NULL, NULL, NULL, NULL),
(5, 'Phương Hữu Từ', 'huutu0601001', '$2y$10$usI4TuhYDA5LunQpTnQkbuj2TeVWXo6AnjMspR3kMkXZNE8yYaRli', 'huutu0601001@gmail.com', '2022-06-29 02:27:45', 'Nam', '1983-01-05 06:27:32', '0899037628', '327626778', NULL, '2020-11-19 10:38:17', 6, 1, 19, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(6, 'Quảng Vạn Thông', 'vanthong0304001', '$2y$10$RFYxTi6Lfzxv4c8S4AU9nebPgRfoedkGvTcrp76gOJQ9hhbriIQKW', 'vanthong0304001@gmail.com', '2022-06-29 02:27:45', 'Nam', '1985-12-13 11:05:46', '0513009259', '315237758', NULL, '2018-01-04 05:29:28', 3, 4, 28, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(7, 'Hướng Trí Dũng', 'tridung0804001', '$2y$10$jrKNg//et9.gj.qw.dzAB.u0BuLqHsm9vIxJCNSECFMqGdaQvG1Ye', 'tridung0804001@gmail.com', '2022-06-29 02:27:45', 'Nam', '1981-11-15 13:35:12', '0489983985', '321406681', NULL, '2020-12-29 01:08:01', 8, 4, 10, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(8, 'Trịnh Minh Thuận', 'minhthuan0608001', '$2y$10$E0Tdg4YQ7mP.a7yDQZAsQeqC04UKdtylTIvVVnYm4hZafXya1AwhG', 'minhthuan0608001@gmail.com', '2022-06-29 02:27:45', 'Nữ', '1992-06-23 13:15:53', '0582691814', '354734691', NULL, '2016-04-12 08:02:04', 6, 8, 7, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(9, 'Doãn Ðình Phú', 'Ðinhphu0402001', '$2y$10$87qrwZzJPmHeQG79bkddAuPBfEJD08hp3J0HrGTWvr.D2T1vVaj7C', 'Ðinhphu0402001@gmail.com', '2022-06-29 02:27:45', 'Nữ', '1999-02-14 20:53:22', '0870605469', '358122220', NULL, '2019-07-24 20:17:55', 4, 2, 22, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(10, 'Tinh Nam An', 'naman0606001', '$2y$10$U7dSgfWYm.IR0flkx.nejOoDaoVDCWz1zkm.hI2pJzf4Ff3iy3VLW', 'naman0606001@gmail.com', '2022-06-29 02:27:45', 'Nữ', '1986-01-31 21:41:52', '0309548044', '384650642', NULL, '2019-02-09 00:09:23', 6, 6, 11, 0, '2022-06-29 02:27:45', '2022-06-29 02:27:45', NULL, NULL),
(11, 'Ngạc Quang Tuấn', 'quangtuan0307001', '$2y$10$2K7Fz1hfVXPzws3ZDtZStO8bTo0WQSafdaWXAh2E0YVOezt.U/e8S', 'quangtuan0307001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1989-07-05 06:19:36', '0484010241', '377567618', NULL, '2020-09-21 12:52:22', 3, 7, 6, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(12, 'Ánh Vạn Thắng', 'vanthang0504001', '$2y$10$LS3V07hVujjHXSuaJXnQhORv1ISEe.5xPKcVoPCT46gY/uk4hDEcy', 'vanthang0504001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1988-01-02 09:38:55', '0391746608', '312850866', NULL, '2016-04-09 03:19:50', 5, 4, 26, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(13, 'Tấn Trung Nguyên', 'trungnguyen0806001', '$2y$10$Tj/218eWskAgZFaElMV07OresOrcMtsad2BF2hKyg4GmX43lvKqX6', 'trungnguyen0806001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1981-09-05 20:54:36', '0141822669', '368402423', NULL, '2020-02-28 09:32:39', 8, 6, 30, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(14, 'Nhan Cao Thọ', 'caotho0108001', '$2y$10$HBV4bZmnBSy/USjhZclumO6ZUr1z/p3DakMeetRO288dt8JNSy/Li', 'caotho0108001@gmail.com', '2022-06-29 02:27:46', 'Nữ', '1987-07-17 23:59:22', '0845121371', '322413990', NULL, '2021-02-02 00:44:53', 1, 8, 23, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(15, 'Võ Việt Khôi', 'vietkhoi0903001', '$2y$10$JxkFXMzdp5aFJyoXZaZyFOcQqrc/x7Is4JI9mVE5CEuHkl6DGFHWS', 'vietkhoi0903001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1988-05-26 17:28:24', '0867699567', '359907419', NULL, '2017-01-24 09:25:55', 9, 3, 4, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(16, 'Ngọc Công Lý', 'congly0901001', '$2y$10$LndfLsWQ.9yVNb/SCkj66u/Eu8/tQlwJQY.oqjR/hnhfoafxmspBS', 'congly0901001@gmail.com', '2022-06-29 02:27:46', 'Nữ', '1987-12-28 15:51:01', '0279949229', '372665929', NULL, '2015-01-28 09:28:11', 9, 1, 5, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(17, 'Mầu Công Lập', 'conglap0203001', '$2y$10$fBhiFjXwesdWmmRDFpr8UuFvlq/eOahr5HftesgA8StlvcEybRHHO', 'conglap0203001@gmail.com', '2022-06-29 02:27:46', 'Nữ', '1991-01-24 14:45:55', '0533863873', '311673248', NULL, '2019-06-05 03:45:49', 2, 3, 29, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(18, 'Triệu Thành Nguyên', 'thanhnguyen0808001', '$2y$10$sHiRNhqqrNiUcnfC2LDsIui3WKOxgfZtw3FnNFR6557o6XTNUpSdm', 'thanhnguyen0808001@gmail.com', '2022-06-29 02:27:46', 'Nữ', '1991-07-02 22:51:02', '0671249566', '394551895', NULL, '2016-10-29 02:57:17', 8, 8, 2, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(19, 'Cổ Vương Triều', 'vuongtrieu0407001', '$2y$10$1LP00whjed.r5Tu1uyrH9.M.0rHpbpyfF02dsJt2UoLp5NpNnmQGK', 'vuongtrieu0407001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1989-11-14 22:32:28', '0496988172', '323932753', NULL, '2018-08-09 02:41:25', 4, 7, 26, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(20, 'Ao Thanh Phong', 'thanhphong0606002', '$2y$10$eGooLbJE1PXEL/umhmZ6YeLxD42vrwisHqlTe4KPi8LOmROYUOQC2', 'thanhphong0606002@gmail.com', '2022-06-29 02:27:46', 'Nam', '1999-10-08 10:38:14', '0262821612', '317654347', NULL, '2018-04-06 14:12:44', 6, 6, 15, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(21, 'Phí Ðức Hòa', 'Ðuchoa0403001', '$2y$10$5cn9fwdySLOiyA1Ee4rr1uYAMPwX8hgJYVk/bt3if9wnDu06KfgDm', 'Ðuchoa0403001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1992-06-14 04:27:10', '0019756340', '311012830', NULL, '2020-06-26 17:19:24', 4, 3, 7, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(22, 'Cổ Chấn Phong', 'chanphong0503001', '$2y$10$k3ZhXtAD5IysU895s/Bk4uZUWX6gSmbfxxlkG1XWFdVsX7nbZ775.', 'chanphong0503001@gmail.com', '2022-06-29 02:27:46', 'Nam', '2000-08-25 12:38:29', '0774177059', '325677546', NULL, '2017-07-10 11:11:30', 5, 3, 6, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(23, 'Ngạc Anh Minh', 'anhminh0901002', '$2y$10$xAfOwhVsasgCHu./tZw.POyM1AAwSpWZh7sHFJAKLR.GHmQeHl0vS', 'anhminh0901002@gmail.com', '2022-06-29 02:27:46', 'Nam', '1988-07-16 13:37:32', '0806788724', '301434483', NULL, '2020-05-06 02:39:11', 9, 1, 30, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(24, 'Kiều Gia Uy', 'giauy0908001', '$2y$10$CI2kYBGyucoH4VUKJ0xKg.FeRq2yb60smwtM3560zM30.qNNHTIVy', 'giauy0908001@gmail.com', '2022-06-29 02:27:46', 'Nam', '1984-06-21 06:43:54', '0052844423', '399642504', NULL, '2022-04-29 23:01:54', 9, 8, 23, 0, '2022-06-29 02:27:46', '2022-06-29 02:27:46', NULL, NULL),
(25, 'Thái Bảo Châu', 'baochau0701001', '$2y$10$.H1rkpyKsLylXID4lJhZ7ON3g1wcw1wUB8q7nsko3g9eT3EFBrqHu', 'baochau0701001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1999-09-28 04:15:30', '0275049638', '350338441', NULL, '2018-07-16 23:16:21', 7, 1, 6, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(26, 'Lý Kiên Bình', 'kienbinh0505001', '$2y$10$I3cLRAfHdqtS.dbwjACQwexlD549OR1qTSOZKe/ACPuUVzwbQipEq', 'kienbinh0505001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1987-10-23 01:14:01', '0808616897', '366183894', NULL, '2015-03-28 09:44:30', 5, 5, 19, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(27, 'Tinh Thế Vinh', 'thevinh0302001', '$2y$10$NRpbLyu1btdi9MvTwS1Iqe0qi3D122UQbk2G.Fug7NyLNpXAQ7.Gq', 'thevinh0302001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1995-04-26 08:02:54', '0921895545', '378135140', NULL, '2017-06-26 16:14:11', 3, 2, 6, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(28, 'Uông Hải Thụy', 'haithuy0101001', '$2y$10$p2l1t.nBdNgSDA0mlFrN/eRYCt8zy5qvJg3gxBEG8ele7pjliT0ne', 'haithuy0101001@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1986-02-10 20:12:57', '0228231822', '313563189', NULL, '2017-03-24 04:43:08', 1, 1, 16, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(29, 'Đỗ Huy Thông', 'huythong0903002', '$2y$10$i5wZpBvcgzzplYis/4nHluw9OJyCJ1Mnh3BhUSL78gqc3WuBIWR1u', 'huythong0903002@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1999-05-30 22:31:48', '0548635252', '331457302', NULL, '2018-09-19 04:44:09', 9, 3, 14, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(30, 'Vưu Việt Thái', 'vietthai0101002', '$2y$10$.XY.NcUU6mdzRzSDii45muW38YOLclcSlwEydvctCTQ.5YboO.ygO', 'vietthai0101002@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1993-05-17 13:01:38', '0941891691', '333341504', NULL, '2017-01-28 14:18:11', 1, 1, 7, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(31, 'Lại Trung Hiếu', 'trunghieu0504002', '$2y$10$mbgNPRHjlogRXmjwtLsAMOJ2bBvqGJVV2wF44GrmAYdcmWw2vbCfO', 'trunghieu0504002@gmail.com', '2022-06-29 02:27:47', 'Nam', '1996-10-22 19:31:38', '0646067788', '398660661', NULL, '2016-04-14 09:22:44', 5, 4, 28, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(32, 'Mạc Tạ Hiền', 'tahien0604001', '$2y$10$uDYzxwnpC3Jpld5rzOga2eJIXDHq79MacOS62.8YlZcEHJcrvvTSm', 'tahien0604001@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1991-06-06 01:12:18', '0885586592', '364630229', NULL, '2016-08-27 15:27:23', 6, 4, 18, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(33, 'Ứng Công Thành', 'congthanh0206001', '$2y$10$WWRwUBqM82OSAbH5lcW/p.GtyQp2ModSBOnykjfhriPbG8KxphOkW', 'congthanh0206001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1980-06-20 02:14:17', '0696841324', '391067993', NULL, '2021-07-26 06:13:48', 2, 6, 14, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(34, 'Bạch Ðình Tuấn', 'Ðinhtuan0106001', '$2y$10$7fx4nXVwMx0sePUEINbZc.IISM.EPxOCmkyeBigmLyCB6AOot0ojC', 'Ðinhtuan0106001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1989-06-27 11:15:08', '0384470222', '307951426', NULL, '2016-02-28 03:08:50', 1, 6, 8, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(35, 'Lạc Thành An', 'thanhan0107001', '$2y$10$4WJsPncQYTjS24MKbPPhue5TFCbdO8aprPg4592y1xcpmJ0W1UONq', 'thanhan0107001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1999-12-12 04:05:38', '0118845309', '349365210', NULL, '2019-03-23 05:38:45', 1, 7, 8, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(36, 'Tào Anh Thái', 'anhthai0307002', '$2y$10$Lg8cGez9LPik38Xikqa5WONaiB8H/IEQIMymwPWtVwj60DZS0RsTq', 'anhthai0307002@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1986-02-25 22:19:33', '0510836445', '366549641', NULL, '2021-07-28 18:46:25', 3, 7, 5, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(37, 'Diêm Thành Tín', 'thanhtin0603001', '$2y$10$5uiI0U5wxIE2.DUIyvGvtegu5zepXPk6wYlypZyTrLXsW1Kn5L68m', 'thanhtin0603001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1999-12-02 11:19:23', '0223811611', '362240764', NULL, '2016-02-12 23:33:44', 6, 3, 25, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(38, 'Chu Minh Quân', 'minhquan0708001', '$2y$10$k//cg98flwbd1HOBYd7x9uGjXvaKxpiG.6lttulQ6M8riSiWcEJXK', 'minhquan0708001@gmail.com', '2022-06-29 02:27:47', 'Nam', '1986-04-17 16:21:58', '0908057308', '350859705', NULL, '2019-09-08 22:14:42', 7, 8, 16, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(39, 'Đậu Hoài Trung', 'hoaitrung0504003', '$2y$10$wdt1SWE8RK7nDIrw469II.QiVrBtDQ/XZUMzA8zopUTjghHQOLaNS', 'hoaitrung0504003@gmail.com', '2022-06-29 02:27:47', 'Nữ', '1991-03-26 11:32:27', '0353779017', '386453648', NULL, '2020-08-24 15:41:34', 5, 4, 20, 0, '2022-06-29 02:27:47', '2022-06-29 02:27:47', NULL, NULL),
(40, 'Chiêm Hữu Cảnh', 'huucanh0408001', '$2y$10$qZnX67ZXHnHGeaquW5ahVeQwrWeDjCcSPRBbrKtR.cnELRAHMkxRG', 'huucanh0408001@gmail.com', '2022-06-29 02:27:48', 'Nam', '1984-02-27 20:07:29', '0984660749', '306950483', NULL, '2022-06-23 22:07:14', 4, 8, 20, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(41, 'Hà Minh Khôi', 'minhkhoi0908002', '$2y$10$hh08HFN.aAV4nJfpz8ZU6u0ERJrmq6zPNYONf4GQRRjyQ8RBuERG.', 'minhkhoi0908002@gmail.com', '2022-06-29 02:27:48', 'Nam', '1988-07-12 08:25:49', '0535752848', '346346233', NULL, '2018-02-16 19:59:09', 9, 8, 4, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(42, 'Chế Vũ Uy', 'vuuy0906001', '$2y$10$o9qkKOBS8gCTlimOgxdb5u8Qzcd/c89uPBODn.9dCjm/RjOKoZAsC', 'vuuy0906001@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1999-06-29 11:26:05', '0518357466', '324545192', NULL, '2022-04-25 00:10:36', 9, 6, 10, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(43, 'Ấu Quang Trung', 'quangtrung0307003', '$2y$10$4wXd4hOWyq3bmSjRRKU73ubn3DdikJUrQL7iaelXEesIuWh8Kjvmq', 'quangtrung0307003@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1994-09-15 17:52:05', '0317605457', '336036112', NULL, '2018-02-19 19:49:21', 3, 7, 12, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(44, 'Hàn Kim Thịnh', 'kimthinh0603002', '$2y$10$A9b8u6O.Gr3WMLSeusbIVehIwqeXWUsFISA2x4B5pLnGtNfhuB0ca', 'kimthinh0603002@gmail.com', '2022-06-29 02:27:48', 'Nam', '1993-01-05 15:58:13', '0095557734', '332900024', NULL, '2019-03-08 14:51:47', 6, 3, 18, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(45, 'Văn Kim Thịnh', 'kimthinh0908003', '$2y$10$JQQ1F8zeFlXmRq1kLtxW0eQNi5WBV8Ja3jyDrMiewatyHmeL6O./m', 'kimthinh0908003@gmail.com', '2022-06-29 02:27:48', 'Nam', '1981-04-07 07:11:36', '0690487988', '388955107', NULL, '2018-09-19 12:26:12', 9, 8, 22, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(46, 'Liên Mạnh Dũng', 'manhdung0904001', '$2y$10$5OpMhWuMztUZrr8s0I0NLe4i7TTc5rmMEFqvmrenWRoCly/O4Hu0.', 'manhdung0904001@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1992-01-02 02:13:11', '0394206246', '398748606', NULL, '2017-08-29 16:48:16', 9, 4, 12, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(47, 'Trác Phúc Cường', 'phuccuong0605001', '$2y$10$vi0Du2P.rI5E5I/ePfDrY.NLc3.jC8uD8wasRprcqeos3AEJStlPa', 'phuccuong0605001@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1980-10-29 08:36:04', '0589752157', '390195331', NULL, '2021-05-25 17:28:09', 6, 5, 21, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(48, 'Linh Cao Sơn', 'caoson0508001', '$2y$10$ITazOg36lqQzP0lANNZLh.uACBtVABNV1jGzu7WGgVGtvPLbLKzW6', 'caoson0508001@gmail.com', '2022-06-29 02:27:48', 'Nam', '1999-12-12 17:35:19', '0035650313', '319417639', NULL, '2021-08-10 01:23:38', 5, 8, 25, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(49, 'Mục Bình Nguyên', 'binhnguyen0703001', '$2y$10$okdRnIHM1DSdV3XB04VOWu2xjDOrWyz4s4h/25oXXPrnKeGmPVHFe', 'binhnguyen0703001@gmail.com', '2022-06-29 02:27:48', 'Nam', '1997-09-10 11:46:11', '0567252896', '398396094', NULL, '2020-08-04 12:36:29', 7, 3, 24, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(50, 'Lã Trung Hiếu', 'trunghieu0608002', '$2y$10$WS3Ridpd0ueqgnb/Z4c1zOeg2NGm4nBKJcTOQVmBqrulxUfD/g2eG', 'trunghieu0608002@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1993-04-19 05:19:04', '0961428793', '339080513', NULL, '2015-08-23 15:39:31', 6, 8, 14, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(51, 'Đương Hoàng Ân', 'hoangan0304002', '$2y$10$u4ES.ZIXDL9lLy9vaC1FweYpAdh9lnRAdQ/mhUs.SaZcIA1OwLLnS', 'hoangan0304002@gmail.com', '2022-06-29 02:27:48', 'Nam', '1998-03-21 14:40:50', '0980241574', '381056957', NULL, '2019-08-25 16:05:52', 3, 4, 16, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(52, 'Giáp Hồng Phát', 'hongphat0907005', '$2y$10$gHBbWJUPhSuMO0A5OFyA1OELhI4DzluL6oEdAnItZygsFPVyDnaAy', 'hongphat0907005@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1991-10-17 04:27:52', '0027270100', '389346811', NULL, '2018-01-18 06:49:36', 9, 7, 19, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(53, 'Phương Quyết Thắng', 'quyetthang0108002', '$2y$10$MYa2o1fjc2jqvK/DvHgOSeD1cY89zpC9UpEEqEmL6qshSOaLFIMwO', 'quyetthang0108002@gmail.com', '2022-06-29 02:27:48', 'Nữ', '1990-09-01 10:28:48', '0507365371', '340974065', NULL, '2015-03-08 12:41:01', 1, 8, 17, 0, '2022-06-29 02:27:48', '2022-06-29 02:27:48', NULL, NULL),
(54, 'Lèng Sơn Hải', 'sonhai0507001', '$2y$10$ZPp0hpRI9TxBNdVT2j5l0e6z9VGENSvHoPcnUlYqNLnQm2knxlI.W', 'sonhai0507001@gmail.com', '2022-06-29 02:27:49', 'Nam', '1988-11-10 10:10:27', '0033054224', '361775455', NULL, '2017-02-13 09:53:54', 5, 7, 5, 0, '2022-06-29 02:27:49', '2022-06-29 02:27:49', NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

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
  ADD CONSTRAINT `tour_registrations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE,
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
