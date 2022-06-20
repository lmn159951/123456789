-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 17, 2022 lúc 08:41 AM
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
(1, 'Trụ sở chính', 'Nhà Internet, Lô 2A, Làng Quốc Tế Thăng Long, Dịch Vọng, Cầu Giấy, Hà Nội', '2022-06-16 23:27:51', NULL, NULL),
(2, 'Tổng công ty dịch vụ viễn thông (VNPT-VinaPhone)', 'Tòa nhà VNPT, số 57 Phố Huỳnh Thúc Kháng, Phường Láng Hạ, Quận Đống Đa, Thành phố Hà Nội, Việt Nam', '2022-06-16 23:27:51', NULL, NULL),
(3, 'Tổng công ty hạ tầng mạng (VNPT-Net)', 'Số 30, đường Phạm Hùng, phường Mỹ Đình 1, quận Nam Từ Liêm, thành phố Hà Nội', '2022-06-16 23:27:51', NULL, NULL),
(4, 'Chi nhánh Miền Nam', 'Tầng 4, toà nhà VNPT, 42 Phạm Ngọc Thạch, phường 6, quận 3, thành phố Hồ Chí Minh', '2022-06-16 23:27:51', NULL, NULL),
(5, 'Chi nhánh Miền Trung', 'Số 24 Lê Thánh Tôn, thành phố Đà Nẵng', '2022-06-16 23:27:51', NULL, NULL),
(6, 'Tổng công ty truyền thông (VNPT-Media)', '21 Hồ Văn Huê, Phường 9, Phú Nhuận, Thành phố Hồ Chí Minh', '2022-06-16 23:27:51', NULL, NULL),
(7, 'Công ty Công nghệ thông tin VNPT(VNPT-IT)', '57 Huỳnh Thúc Kháng, Đống Đa, Hà Nội', '2022-06-16 23:27:51', NULL, NULL),
(8, 'Công ty CP Công nghệ Công nghiệp Bưu chính Viễn thông (VNPT-Technology)', 'Khu CNC1,Khu CNC Hòa Lạc, Nạ Bằng, Thạch Thất, Hà Nội', '2022-06-16 23:27:51', NULL, NULL),
(9, 'Trường Trung học Bưu chính Viễn thông và Công nghệ thông tin', '9C32+RHM, Tân Mỹ Chánh, Thành phố Mỹ Tho, Tiền Giang', '2022-06-16 23:27:51', NULL, NULL);

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
(1, 'Phòng kế toán', '2022-06-16 23:27:51', NULL, NULL),
(2, 'Phòng tài chín', '2022-06-16 23:27:51', NULL, NULL),
(3, 'Phòng hành chính', '2022-06-16 23:27:51', NULL, NULL),
(4, 'Phòng nhân sự', '2022-06-16 23:27:51', NULL, NULL),
(5, 'Phòng kinh doanh', '2022-06-16 23:27:51', NULL, NULL),
(6, 'Phòng mua sắm vật tư', '2022-06-16 23:27:51', NULL, NULL),
(7, 'Phòng nghiên cứu và phát triển', '2022-06-16 23:27:51', NULL, NULL),
(8, 'Phòng vận chuyển', '2022-06-16 23:27:51', NULL, NULL);

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
(1, 'Nhân viên phân tích dữ liệu', '2022-06-17 04:27:52', NULL, NULL),
(2, 'Quản trị hệ thống', '2022-06-17 04:27:52', NULL, NULL),
(3, 'Lập trình viên', '2022-06-17 04:27:52', NULL, NULL),
(4, 'Kỹ sư phần mềm', '2022-06-17 04:27:52', NULL, NULL),
(5, 'Nhân viên phân tích hệ thống', '2022-06-17 04:27:52', NULL, NULL),
(6, 'Chuyên viên hỗ trợ kỹ thuật/ người sử dụng cuối cùng', '2022-06-17 04:27:52', NULL, NULL),
(7, 'Thiết kế web/ dịch vụ Internet', '2022-06-17 04:27:52', NULL, NULL),
(8, 'Người giám sát', '2022-06-17 04:27:52', NULL, NULL),
(9, 'Trưởng Nhóm', '2022-06-17 04:27:52', NULL, NULL),
(10, 'Sếp', '2022-06-17 04:27:52', NULL, NULL),
(11, 'Trợ lí giám đốc', '2022-06-17 04:27:52', NULL, NULL),
(12, 'Thư kí', '2022-06-17 04:27:52', NULL, NULL),
(13, 'Nhân viên', '2022-06-17 04:27:52', NULL, NULL),
(14, 'Cán bộ, viên chức', '2022-06-17 04:27:52', NULL, NULL),
(15, 'Tổng giám đốc', '2022-06-17 04:27:52', NULL, NULL),
(16, 'Quản lý', '2022-06-17 04:27:52', NULL, NULL),
(17, 'Giám đốc', '2022-06-17 04:27:52', NULL, NULL),
(18, 'Phó giám đốc', '2022-06-17 04:27:52', NULL, NULL),
(19, 'Hội đồng quản trị', '2022-06-17 04:27:52', NULL, NULL),
(20, 'Trưởng phòng', '2022-06-17 04:27:52', NULL, NULL),
(21, 'Phó trưởng phòng', '2022-06-17 04:27:52', NULL, NULL),
(22, 'Phó Giám đốc', '2022-06-17 04:27:52', NULL, NULL),
(23, 'Giám đốc điều hành', '2022-06-17 04:27:52', NULL, NULL),
(24, 'Giám đốc thông tin', '2022-06-17 04:27:52', NULL, NULL),
(25, 'Trưởng phòng hoạt động', '2022-06-17 04:27:52', NULL, NULL),
(26, 'Giám đốc tài chính', '2022-06-17 04:27:52', NULL, NULL),
(27, 'Phó chủ tịch', '2022-06-17 04:27:52', NULL, NULL),
(28, 'Trưởng Bộ phận', '2022-06-17 04:27:52', NULL, NULL),
(29, 'Trưởng phòng nhân sự', '2022-06-17 04:27:52', NULL, NULL),
(30, 'Trưởng phòng tài chính', '2022-06-17 04:27:52', NULL, NULL),
(31, 'Trưởng phòng kế toán', '2022-06-17 04:27:52', NULL, NULL),
(32, 'Trưởng phòng sản xuất', '2022-06-17 04:27:52', NULL, NULL),
(33, 'Trưởng phòng marketing', '2022-06-17 04:27:52', NULL, NULL),
(34, 'Chủ tịch', '2022-06-17 04:27:52', NULL, NULL),
(35, 'Thành viên ban quản trị', '2022-06-17 04:27:52', NULL, NULL),
(36, 'Thư kín', '2022-06-17 04:27:52', NULL, NULL),
(37, 'Phó phòng kinh doanh', '2022-06-17 04:27:52', NULL, NULL);

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
(6, 'Tây Nguyên', '2022-06-16 19:45:55', NULL, NULL),
(7, 'Đông Nam Bộ', '2022-06-16 19:45:55', NULL, NULL),
(8, 'Tây Nam Bộ', '2022-06-16 19:45:55', NULL, NULL);

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
  `region_id` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `name`, `image`, `description_file`, `tour_start_date`, `tour_end_date`, `registration_start_date`, `registration_end_date`, `price`, `max_people`, `region_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Molestiae similique perspiciatis non assumenda est.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-11-08 01:50:53', '2020-11-10 01:50:53', '2020-06-14 01:50:53', '2020-12-11 01:50:53', 2487000, 30, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(2, 'Ut qui voluptatibus id quos.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2013-11-16 21:27:31', '2013-11-21 21:27:31', '2013-11-05 21:27:31', '2013-12-05 21:27:31', 5884000, 50, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(3, 'Et delectus voluptas est officia provident qui blanditiis veritatis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2012-10-19 18:45:06', '2012-10-26 18:45:06', '2012-09-28 18:45:06', '2012-10-28 18:45:06', 6643000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(4, 'Dolores aut voluptates molestiae odit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-06-09 13:01:20', '2015-06-16 13:01:20', '2015-05-03 13:01:20', '2015-08-31 13:01:20', 5641000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(5, 'Est eos autem a iusto.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2019-12-17 07:03:19', '2019-12-23 07:03:19', '2019-08-21 07:03:19', '2019-12-19 07:03:19', 4690000, 80, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(6, 'Expedita qui ut quis voluptas sequi quae quidem.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2021-07-13 00:25:43', '2021-07-21 00:25:43', '2021-04-07 00:25:43', '2021-08-05 00:25:43', 9093000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(7, 'Et laborum ut repudiandae eum impedit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-04-03 20:39:14', '2020-04-06 20:39:14', '2020-01-20 20:39:14', '2020-06-18 20:39:14', 7244000, 90, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(8, 'Aut dolore odit ipsa.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2017-06-14 16:27:59', '2017-06-19 16:27:59', '2017-04-14 16:27:59', '2017-08-12 16:27:59', 1707000, 60, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(9, 'Amet exercitationem quasi magnam ducimus accusantium velit quisquam.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2018-05-26 09:36:49', '2018-05-31 09:36:49', '2018-01-23 09:36:49', '2018-06-22 09:36:49', 4948000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(10, 'Esse voluptas animi quia est esse omnis sed voluptas.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2016-08-14 02:50:46', '2016-08-21 02:50:46', '2016-07-07 02:50:46', '2016-10-05 02:50:46', 2079000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(11, 'Ratione explicabo ullam minima ea minima est nihil.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2014-07-10 23:16:51', '2014-07-12 23:16:51', '2014-06-28 23:16:51', '2014-07-28 23:16:51', 2260000, 70, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(12, 'Voluptas consequatur ut blanditiis quo.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2019-09-08 15:42:22', '2019-09-14 15:42:22', '2019-05-17 15:42:22', '2019-09-14 15:42:22', 1949000, 90, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(13, 'Est qui ut deserunt distinctio repellat eos dolorum ipsum.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2017-12-18 13:38:37', '2017-12-23 13:38:37', '2017-12-03 13:38:37', '2018-02-01 13:38:37', 2098000, 50, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(14, 'Expedita consequatur modi distinctio dolorum quisquam rerum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-09-09 03:17:14', '2020-09-15 03:17:14', '2020-04-06 03:17:14', '2020-10-03 03:17:14', 2155000, 70, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(15, 'Sit recusandae vel aut molestiae illum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-03-13 18:43:06', '2020-03-18 18:43:06', '2019-11-30 18:43:06', '2020-03-29 18:43:06', 2682000, 60, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(16, 'Vel rem laudantium ab fugiat tenetur.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2017-06-01 23:17:57', '2017-06-07 23:17:57', '2017-05-02 23:17:57', '2017-07-01 23:17:57', 3558000, 20, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(17, 'Beatae suscipit perspiciatis sint amet eos dolores.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2015-12-28 06:25:50', '2015-12-31 06:25:50', '2015-12-24 06:25:50', '2016-01-23 06:25:50', 8838000, 30, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(18, 'Ratione qui quo sunt nam nam.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-05-17 01:54:55', '2022-05-24 01:54:55', '2022-05-10 01:54:55', '2022-06-09 01:54:55', 5359000, 20, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(19, 'Explicabo aperiam consequuntur neque voluptatibus aut repudiandae id consequatur.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2015-11-09 22:50:29', '2015-11-15 22:50:29', '2015-09-10 22:50:29', '2015-12-09 22:50:29', 7080000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(20, 'Doloremque animi quia unde.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2015-06-27 07:47:52', '2015-07-02 07:47:52', '2015-04-19 07:47:52', '2015-07-18 07:47:52', 6532000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(21, 'Fugiat numquam laboriosam dolores commodi eaque.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2020-05-07 14:08:43', '2020-05-15 14:08:43', '2020-03-26 14:08:43', '2020-06-24 14:08:43', 8622000, 50, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(22, 'Non iste doloremque consequatur inventore unde.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2020-05-25 16:31:00', '2020-06-02 16:31:00', '2020-04-29 16:31:00', '2020-10-26 16:31:00', 2120000, 20, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(23, 'Est excepturi recusandae neque sit tenetur nihil.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2014-12-23 18:17:36', '2014-12-29 18:17:36', '2014-10-11 18:17:36', '2015-01-09 18:17:36', 1220000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(24, 'Soluta iure ab rerum ut ut rerum et ut.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2016-09-01 12:06:36', '2016-09-04 12:06:36', '2016-05-08 12:06:36', '2016-10-05 12:06:36', 7289000, 80, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(25, 'Labore voluptate eligendi doloremque ad molestias.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2019-12-07 23:47:20', '2019-12-12 23:47:20', '2019-10-28 23:47:20', '2019-12-27 23:47:20', 3098000, 50, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(26, 'Molestias blanditiis incidunt occaecati nemo quia.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2021-08-21 11:44:30', '2021-08-28 11:44:30', '2021-08-17 11:44:30', '2022-02-13 11:44:30', 4877000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(27, 'Maxime eveniet animi doloribus qui fugiat maxime.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-04-24 15:35:14', '2019-05-01 15:35:14', '2019-04-15 15:35:14', '2019-05-15 15:35:14', 2447000, 40, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(28, 'Dolorem qui expedita enim.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2017-12-19 09:28:21', '2017-12-24 09:28:21', '2017-10-11 09:28:21', '2018-04-09 09:28:21', 891000, 40, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(29, 'Totam ea dolore nisi voluptatum voluptas.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2020-10-24 00:52:40', '2020-10-31 00:52:40', '2020-10-03 00:52:40', '2020-12-02 00:52:40', 981000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(30, 'Eaque pariatur error facere inventore temporibus illo et.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-09-15 21:40:40', '2019-09-23 21:40:40', '2019-06-25 21:40:40', '2019-12-22 21:40:40', 9640000, 50, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(31, 'Aliquam aut quae error aut nisi dolore voluptatem aut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2017-09-07 11:02:35', '2017-09-14 11:02:35', '2017-08-21 11:02:35', '2017-09-20 11:02:35', 7286000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(32, 'Inventore facilis vel consequuntur laudantium dolore ipsum.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2021-07-04 01:37:04', '2021-07-12 01:37:04', '2021-04-19 01:37:04', '2021-07-18 01:37:04', 6111000, 80, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(33, 'Veritatis non voluptas illo quia quia sit fuga.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2018-02-24 20:56:38', '2018-02-26 20:56:38', '2018-02-10 20:56:38', '2018-03-12 20:56:38', 2292000, 60, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(34, 'Voluptatem iusto et ad corrupti accusamus eum.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-05-05 15:09:47', '2022-05-09 15:09:47', '2022-02-17 15:09:47', '2022-06-17 15:09:47', 8429000, 40, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(35, 'Dicta quaerat qui quae asperiores laudantium ut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2016-06-06 11:32:41', '2016-06-10 11:32:41', '2016-04-08 11:32:41', '2016-10-05 11:32:41', 5904000, 70, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(36, 'Tenetur et officiis repellat provident odio.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2014-06-24 17:51:51', '2014-06-28 17:51:51', '2014-05-14 17:51:51', '2014-11-10 17:51:51', 9491000, 30, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(37, 'Provident saepe reiciendis iusto labore voluptatum itaque et consequatur.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2017-09-01 20:19:09', '2017-09-05 20:19:09', '2017-08-30 20:19:09', '2018-02-26 20:19:09', 3598000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(38, 'Quo dolorum qui provident nihil numquam.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2017-09-28 22:52:30', '2017-10-02 22:52:30', '2017-09-25 22:52:30', '2017-12-24 22:52:30', 752000, 90, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(39, 'Est laborum nemo eveniet quaerat.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-05-16 07:30:16', '2015-05-18 07:30:16', '2015-04-06 07:30:16', '2015-06-05 07:30:16', 2635000, 40, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(40, 'Eos aut ipsa iusto beatae aut.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2020-12-10 16:20:20', '2020-12-15 16:20:20', '2020-11-05 16:20:20', '2021-01-04 16:20:20', 7007000, 40, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(41, 'Expedita voluptatum rem beatae alias perferendis iure eos.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2021-02-10 18:17:43', '2021-02-12 18:17:43', '2020-11-21 18:17:43', '2021-03-21 18:17:43', 2896000, 40, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(42, 'Est voluptate enim officiis repellendus quidem ullam impedit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2017-03-17 04:53:20', '2017-03-24 04:53:20', '2016-12-22 04:53:20', '2017-06-20 04:53:20', 3359000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(43, 'Qui illum praesentium quia sed est.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2018-10-05 03:18:15', '2018-10-10 03:18:15', '2018-08-18 03:18:15', '2019-02-14 03:18:15', 6531000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(44, 'Aliquid autem consequatur ratione et cumque sequi odio.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2014-08-29 07:44:35', '2014-09-01 07:44:35', '2014-06-20 07:44:35', '2014-09-18 07:44:35', 4585000, 50, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(45, 'Non ullam quo inventore minus esse eius cumque qui.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2015-03-08 21:48:52', '2015-03-12 21:48:52', '2014-10-14 21:48:52', '2015-04-12 21:48:52', 4619000, 40, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(46, 'Sed molestiae eum consectetur aliquam labore.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2022-04-13 11:23:12', '2022-04-19 11:23:12', '2022-03-10 11:23:12', '2022-05-09 11:23:12', 5573000, 70, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(47, 'Itaque sint officiis facere aut inventore et alias.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-01-08 14:24:07', '2016-01-10 14:24:07', '2015-11-01 14:24:07', '2016-01-30 14:24:07', 5747000, 70, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(48, 'Et doloribus praesentium velit iure rerum dolores.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-03-22 11:17:29', '2022-03-25 11:17:29', '2022-03-04 11:17:29', '2022-04-03 11:17:29', 4706000, 50, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(49, 'Consequatur enim voluptas ipsum eligendi dolorem et voluptates.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2022-08-06 22:10:44', '2022-08-12 22:10:44', '2022-05-08 22:10:44', '2022-08-06 22:10:44', 7114000, 30, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(50, 'Quibusdam ut et deleniti amet impedit illum.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2020-04-04 02:37:11', '2020-04-06 02:37:11', '2020-03-06 02:37:11', '2020-04-05 02:37:11', 7997000, 70, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(51, 'Deserunt minus est quis vitae harum.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2021-08-18 06:39:29', '2021-08-26 06:39:29', '2021-07-04 06:39:29', '2021-12-01 06:39:29', 2433000, 60, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(52, 'Nihil velit possimus ipsam eum minima quis.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2017-06-07 17:52:46', '2017-06-09 17:52:46', '2017-05-03 17:52:46', '2017-07-02 17:52:46', 1404000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(53, 'Animi similique nemo incidunt dolorem ipsa accusamus.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2020-09-01 22:24:48', '2020-09-07 22:24:48', '2020-06-01 22:24:48', '2020-09-29 22:24:48', 7624000, 60, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(54, 'Voluptas reiciendis ut dolorum enim.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2013-05-15 05:26:18', '2013-05-17 05:26:18', '2013-05-14 05:26:18', '2013-10-11 05:26:18', 2975000, 60, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(55, 'Neque saepe sint et.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2020-11-12 23:26:14', '2020-11-18 23:26:14', '2020-10-22 23:26:14', '2021-01-20 23:26:14', 6637000, 60, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(56, 'Sed suscipit et quasi aut atque debitis eveniet.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2016-01-26 16:57:53', '2016-01-31 16:57:53', '2016-01-07 16:57:53', '2016-06-05 16:57:53', 3092000, 40, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(57, 'Saepe et numquam qui explicabo earum.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2018-12-25 05:11:54', '2018-12-30 05:11:54', '2018-10-08 05:11:54', '2019-04-06 05:11:54', 6548000, 70, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(58, 'Consequatur amet repellendus voluptatem.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2015-08-13 14:30:19', '2015-08-19 14:30:19', '2015-05-20 14:30:19', '2015-10-17 14:30:19', 8959000, 80, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(59, 'Quia velit sit ipsa ut.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-10-13 23:33:43', '2020-10-18 23:33:43', '2020-08-09 23:33:43', '2021-01-06 23:33:43', 8397000, 20, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(60, 'Non ut molestiae quis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2021-03-14 23:07:50', '2021-03-18 23:07:50', '2021-02-14 23:07:50', '2021-04-15 23:07:50', 2547000, 30, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(61, 'Ut iusto maiores molestias dolores veritatis.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-10-31 02:19:52', '2020-11-07 02:19:52', '2020-10-18 02:19:52', '2020-11-17 02:19:52', 5450000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(62, 'Debitis sit quibusdam minus placeat quo.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2015-03-19 20:43:46', '2015-03-23 20:43:46', '2015-02-20 20:43:46', '2015-03-22 20:43:46', 1793000, 80, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(63, 'Sit consequatur distinctio est sunt temporibus.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2017-02-18 19:13:58', '2017-02-26 19:13:58', '2017-02-05 19:13:58', '2017-03-07 19:13:58', 3735000, 60, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(64, 'Possimus fugiat architecto voluptates eos inventore.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2021-01-30 10:57:46', '2021-02-02 10:57:46', '2020-10-27 10:57:46', '2021-02-24 10:57:46', 2143000, 20, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(65, 'Vitae nisi ipsa beatae.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2014-01-03 17:42:02', '2014-01-09 17:42:02', '2013-12-17 17:42:02', '2014-01-16 17:42:02', 6910000, 30, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(66, 'Molestiae voluptatibus qui temporibus nisi necessitatibus molestiae perspiciatis illum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2016-01-15 21:14:59', '2016-01-18 21:14:59', '2016-01-07 21:14:59', '2016-03-07 21:14:59', 9194000, 70, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(67, 'Dolores molestiae sunt quia at.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2018-03-02 16:09:05', '2018-03-05 16:09:05', '2017-09-14 16:09:05', '2018-03-13 16:09:05', 3453000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(68, 'Quos et ducimus quibusdam ut eaque.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2020-01-18 23:34:28', '2020-01-26 23:34:28', '2019-12-21 23:34:28', '2020-03-20 23:34:28', 9677000, 50, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(69, 'Ut eius ipsa veritatis quis in voluptatum qui.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2016-01-15 02:38:33', '2016-01-21 02:38:33', '2015-10-28 02:38:33', '2016-01-26 02:38:33', 1372000, 40, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(70, 'Magnam mollitia laboriosam sit autem vitae vel dolorem quae.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2021-12-21 21:25:57', '2021-12-26 21:25:57', '2021-11-22 21:25:57', '2022-02-20 21:25:57', 3190000, 90, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(71, 'Ut omnis recusandae alias.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2016-11-28 08:33:29', '2016-12-04 08:33:29', '2016-10-21 08:33:29', '2016-12-20 08:33:29', 7380000, 30, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(72, 'Aliquam ea nesciunt voluptatem eos hic.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2017-07-17 11:50:00', '2017-07-24 11:50:00', '2017-06-17 11:50:00', '2017-07-17 11:50:00', 973000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(73, 'Ratione quod et deleniti mollitia mollitia eum.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-01-24 21:15:32', '2016-01-31 21:15:32', '2015-08-17 21:15:32', '2016-02-13 21:15:32', 9870000, 60, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(74, 'Laudantium accusantium veniam quis ipsum voluptas velit.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2021-10-04 10:51:28', '2021-10-07 10:51:28', '2021-07-15 10:51:28', '2021-11-12 10:51:28', 6885000, 30, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(75, 'Expedita quis non cupiditate corrupti sit.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2020-10-23 01:09:13', '2020-10-28 01:09:13', '2020-09-06 01:09:13', '2020-12-05 01:09:13', 5518000, 70, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(76, 'Omnis voluptas quibusdam vitae.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2018-05-08 12:09:37', '2018-05-14 12:09:37', '2018-03-13 12:09:37', '2018-06-11 12:09:37', 5672000, 60, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(77, 'Cupiditate facere in et qui.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2012-12-29 10:50:56', '2013-01-01 10:50:56', '2012-09-30 10:50:56', '2012-12-29 10:50:56', 5801000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(78, 'Quis beatae eos possimus laborum voluptatibus blanditiis expedita.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2018-12-15 09:24:27', '2018-12-22 09:24:27', '2018-12-06 09:24:27', '2019-01-05 09:24:27', 1166000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(79, 'Neque ipsum repellendus voluptatum sit nemo.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2013-09-12 00:49:02', '2013-09-19 00:49:02', '2013-09-11 00:49:02', '2013-10-11 00:49:02', 3611000, 30, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(80, 'Eum delectus atque provident autem aspernatur nostrum.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-03-08 21:39:09', '2015-03-16 21:39:09', '2015-01-12 21:39:09', '2015-05-12 21:39:09', 5664000, 60, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(81, 'Fuga placeat omnis quasi temporibus sed voluptates nihil rem.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2016-10-20 20:14:31', '2016-10-25 20:14:31', '2016-07-29 20:14:31', '2016-12-26 20:14:31', 861000, 60, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(82, 'Ut omnis qui quia voluptate.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2018-11-14 06:22:01', '2018-11-18 06:22:01', '2018-10-25 06:22:01', '2018-11-24 06:22:01', 1107000, 60, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(83, 'Maxime nobis molestiae est at.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-02-14 05:11:52', '2022-02-22 05:11:52', '2022-01-29 05:11:52', '2022-02-28 05:11:52', 1527000, 60, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(84, 'Ut iure dolores vero.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2018-06-12 23:56:53', '2018-06-20 23:56:53', '2018-05-08 23:56:53', '2018-09-05 23:56:53', 9641000, 80, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(85, 'Eius quod et similique ut sed id non.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-05-02 10:18:15', '2022-05-04 10:18:15', '2022-03-16 10:18:15', '2022-05-15 10:18:15', 7335000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(86, 'Provident sequi natus esse id ut officiis ipsum.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2014-02-03 22:17:51', '2014-02-06 22:17:51', '2013-12-12 22:17:51', '2014-04-11 22:17:51', 4890000, 30, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(87, 'Alias consequatur vel doloremque sit quis cumque.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2015-03-13 17:31:14', '2015-03-17 17:31:14', '2014-12-26 17:31:14', '2015-03-26 17:31:14', 3380000, 50, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(88, 'Minima non libero ut.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-01-01 06:42:53', '2015-01-07 06:42:53', '2014-12-18 06:42:53', '2015-01-17 06:42:53', 7707000, 60, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(89, 'Quia non maiores dolorum id nesciunt.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2020-08-18 07:07:14', '2020-08-26 07:07:14', '2020-08-03 07:07:14', '2020-10-02 07:07:14', 8352000, 60, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(90, 'Natus cum numquam quas repellat.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2013-12-25 13:44:39', '2013-12-30 13:44:39', '2013-12-09 13:44:39', '2014-05-08 13:44:39', 6997000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(91, 'Eius dolorum voluptatem placeat libero.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2019-04-21 17:16:35', '2019-04-25 17:16:35', '2019-01-22 17:16:35', '2019-06-21 17:16:35', 6331000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(92, 'Tempora ipsum sit vel est reprehenderit soluta aliquid.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2013-01-15 06:58:21', '2013-01-20 06:58:21', '2012-11-04 06:58:21', '2013-03-04 06:58:21', 2392000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(93, 'Qui voluptate culpa consequatur sunt laudantium autem.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2013-01-26 21:07:21', '2013-01-29 21:07:21', '2012-12-07 21:07:21', '2013-04-06 21:07:21', 6062000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(94, 'Eligendi velit consequatur odit sunt quis et consequatur nihil.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2015-10-18 00:46:33', '2015-10-21 00:46:33', '2015-06-09 00:46:33', '2015-12-06 00:46:33', 4917000, 70, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(95, 'Dolor laboriosam ut ipsam dolorum dolores eaque.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-02-24 17:37:42', '2022-03-01 17:37:42', '2022-02-06 17:37:42', '2022-03-08 17:37:42', 621000, 50, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(96, 'Ducimus architecto eligendi quae sapiente commodi voluptatem dolorem.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2013-03-09 12:26:44', '2013-03-16 12:26:44', '2012-10-28 12:26:44', '2013-03-27 12:26:44', 6803000, 30, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(97, 'Mollitia commodi aut vero natus.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-04-24 00:45:27', '2019-04-30 00:45:27', '2019-03-10 00:45:27', '2019-08-07 00:45:27', 9480000, 20, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(98, 'Perferendis sequi vero itaque.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2019-08-17 14:49:11', '2019-08-23 14:49:11', '2019-07-27 14:49:11', '2019-09-25 14:49:11', 2524000, 20, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(99, 'Eum qui vel delectus nihil incidunt.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-03-05 01:27:03', '2015-03-07 01:27:03', '2015-02-14 01:27:03', '2015-03-16 01:27:03', 724000, 20, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(100, 'Sed est ea impedit qui.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-04-06 07:19:33', '2022-04-12 07:19:33', '2022-03-18 07:19:33', '2022-04-17 07:19:33', 8466000, 30, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(101, 'Voluptatem nam commodi sit alias aliquam nesciunt.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2018-04-24 00:08:48', '2018-04-30 00:08:48', '2018-04-08 00:08:48', '2018-06-07 00:08:48', 1786000, 20, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(102, 'Recusandae a iusto harum.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2020-11-29 16:01:39', '2020-12-05 16:01:39', '2020-11-03 16:01:39', '2021-01-02 16:01:39', 2582000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(103, 'Sed nihil et dolorem quam quam alias ducimus est.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2022-07-02 07:50:56', '2022-07-04 07:50:56', '2022-04-14 07:50:56', '2022-08-12 07:50:56', 8622000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(104, 'Et quibusdam quidem dolor cupiditate ipsa dolor quo.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-10-29 17:20:23', '2019-11-01 17:20:23', '2019-10-23 17:20:23', '2019-12-22 17:20:23', 6510000, 20, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(105, 'Modi a molestiae nisi nobis fugiat omnis.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2013-05-01 07:16:48', '2013-05-07 07:16:48', '2013-04-22 07:16:48', '2013-07-21 07:16:48', 2962000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(106, 'Consequatur eos vitae perferendis at hic fugit voluptas.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2017-08-02 22:12:09', '2017-08-09 22:12:09', '2017-03-12 22:12:09', '2017-08-09 22:12:09', 2381000, 40, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(107, 'Ea maiores sunt sint voluptas odit.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-08-08 04:12:30', '2022-08-15 04:12:30', '2022-05-05 04:12:30', '2022-09-02 04:12:30', 875000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(108, 'In assumenda voluptatem optio in totam.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-09-19 18:42:04', '2020-09-23 18:42:04', '2020-07-21 18:42:04', '2020-09-19 18:42:04', 6072000, 80, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(109, 'Iure expedita perspiciatis rem reiciendis ut ipsa.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2016-05-14 12:19:34', '2016-05-20 12:19:34', '2016-05-04 12:19:34', '2016-09-01 12:19:34', 4049000, 40, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(110, 'Aut nisi fugiat quis sunt soluta voluptatem officia et.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2014-08-25 14:33:03', '2014-08-31 14:33:03', '2014-06-01 14:33:03', '2014-08-30 14:33:03', 6649000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(111, 'Sed quae possimus et iste magni.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2017-01-23 12:36:00', '2017-01-27 12:36:00', '2016-12-15 12:36:00', '2017-03-15 12:36:00', 4918000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(112, 'Neque qui et aut laboriosam laboriosam totam voluptatum veritatis.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-06-26 13:06:40', '2019-06-28 13:06:40', '2019-05-12 13:06:40', '2019-07-11 13:06:40', 1185000, 30, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(113, 'Velit rerum saepe laudantium et alias dicta.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2015-11-26 11:01:18', '2015-12-04 11:01:18', '2015-08-17 11:01:18', '2015-12-15 11:01:18', 2612000, 40, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(114, 'Eligendi qui non perspiciatis.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2017-07-31 00:31:54', '2017-08-04 00:31:54', '2017-05-03 00:31:54', '2017-09-30 00:31:54', 3362000, 30, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(115, 'Voluptatibus voluptatum velit odit id rem sint.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2014-06-18 07:30:01', '2014-06-26 07:30:01', '2014-05-23 07:30:01', '2014-07-22 07:30:01', 3172000, 70, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(116, 'Earum dolor consequatur placeat corrupti laboriosam perspiciatis quis.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2017-11-26 16:00:04', '2017-12-01 16:00:04', '2017-09-18 16:00:04', '2018-01-16 16:00:04', 5610000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(117, 'Vel pariatur dolor autem et.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2015-09-04 22:45:20', '2015-09-11 22:45:20', '2015-05-26 22:45:20', '2015-09-23 22:45:20', 7894000, 20, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(118, 'Autem impedit architecto dolores aspernatur iure numquam accusamus natus.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2018-11-19 14:34:31', '2018-11-23 14:34:31', '2018-10-18 14:34:31', '2019-02-15 14:34:31', 9540000, 80, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(119, 'Totam architecto culpa impedit rerum eum.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2017-08-07 17:19:57', '2017-08-09 17:19:57', '2017-06-25 17:19:57', '2017-09-23 17:19:57', 9188000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(120, 'Et vel exercitationem alias perferendis.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2018-07-02 03:22:33', '2018-07-08 03:22:33', '2018-06-15 03:22:33', '2018-07-15 03:22:33', 8276000, 60, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(121, 'Vitae ut autem suscipit earum ut perspiciatis.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-05-06 10:48:20', '2016-05-13 10:48:20', '2016-04-12 10:48:20', '2016-06-11 10:48:20', 6381000, 60, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(122, 'Distinctio cum sapiente non aut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2019-06-29 05:45:03', '2019-07-07 05:45:03', '2019-04-07 05:45:03', '2019-07-06 05:45:03', 8260000, 70, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(123, 'Vero numquam et excepturi quia quaerat.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2014-06-24 19:16:16', '2014-06-29 19:16:16', '2014-05-02 19:16:16', '2014-07-01 19:16:16', 8931000, 20, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(124, 'Perspiciatis nostrum culpa omnis aliquid sit.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2022-02-25 16:40:29', '2022-03-03 16:40:29', '2022-02-01 16:40:29', '2022-07-31 16:40:29', 2499000, 70, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(125, 'Laboriosam et nisi dolorum nesciunt non.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2013-05-28 09:32:24', '2013-05-30 09:32:24', '2013-01-07 09:32:24', '2013-06-06 09:32:24', 1623000, 50, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(126, 'Consequuntur ex inventore aut quia est molestias.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2021-10-25 17:24:31', '2021-10-28 17:24:31', '2021-07-05 17:24:31', '2021-12-02 17:24:31', 4116000, 60, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(127, 'In voluptas consequatur voluptatem aut ipsum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2013-09-14 11:27:40', '2013-09-21 11:27:40', '2013-06-02 11:27:40', '2013-10-30 11:27:40', 7589000, 50, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(128, 'Fuga dolores ut consequatur expedita.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2019-11-11 13:06:12', '2019-11-14 13:06:12', '2019-10-18 13:06:12', '2019-11-17 13:06:12', 2290000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(129, 'Qui totam adipisci dolorem maxime.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2021-10-23 02:20:13', '2021-10-25 02:20:13', '2021-10-01 02:20:13', '2021-10-31 02:20:13', 3532000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(130, 'Et sed quam rerum vitae dolorum sint.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2019-07-06 18:13:58', '2019-07-11 18:13:58', '2019-02-16 18:13:58', '2019-07-16 18:13:58', 2719000, 80, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(131, 'Tenetur alias fugit voluptate totam voluptatem.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2020-04-14 10:46:23', '2020-04-20 10:46:23', '2020-04-04 10:46:23', '2020-10-01 10:46:23', 8480000, 80, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(132, 'Magnam quos dolorum expedita amet aut dolor.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2021-05-22 22:10:18', '2021-05-27 22:10:18', '2021-01-22 22:10:18', '2021-05-22 22:10:18', 6058000, 50, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(133, 'Quidem iste asperiores ad.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2019-03-13 20:06:51', '2019-03-21 20:06:51', '2019-01-07 20:06:51', '2019-05-07 20:06:51', 937000, 60, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(134, 'Quia numquam dolorum odio consectetur repudiandae error.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2017-04-13 18:39:06', '2017-04-20 18:39:06', '2017-04-08 18:39:06', '2017-05-08 18:39:06', 2404000, 90, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(135, 'Nam cumque sunt id voluptatibus eos quae sequi aperiam.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2018-04-13 09:06:35', '2018-04-16 09:06:35', '2018-03-21 09:06:35', '2018-05-20 09:06:35', 1980000, 50, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(136, 'Et dolor vel qui magnam voluptatem.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2018-12-27 12:20:48', '2019-01-04 12:20:48', '2018-12-04 12:20:48', '2019-04-03 12:20:48', 2907000, 40, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(137, 'Possimus enim ut asperiores voluptates tenetur qui ut.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2018-09-03 05:29:08', '2018-09-07 05:29:08', '2018-07-18 05:29:08', '2018-09-16 05:29:08', 1054000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(138, 'Error saepe quo hic.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2016-01-05 07:39:26', '2016-01-12 07:39:26', '2015-12-10 07:39:26', '2016-02-08 07:39:26', 1414000, 50, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(139, 'Eaque tempore nostrum reiciendis iusto labore quidem reiciendis.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2020-05-13 14:48:57', '2020-05-19 14:48:57', '2020-04-04 14:48:57', '2020-06-03 14:48:57', 8202000, 80, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(140, 'Voluptatum omnis officia nihil voluptas beatae quia id ut.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2021-09-14 03:03:04', '2021-09-20 03:03:04', '2021-09-11 03:03:04', '2021-12-10 03:03:04', 4651000, 80, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(141, 'Et dolores quam odio explicabo et.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2016-05-17 04:41:22', '2016-05-23 04:41:22', '2016-05-13 04:41:22', '2016-06-12 04:41:22', 7053000, 90, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(142, 'Numquam officia et non omnis.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2019-01-19 10:43:24', '2019-01-23 10:43:24', '2018-12-09 10:43:24', '2019-04-08 10:43:24', 7983000, 80, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(143, 'Illo itaque reprehenderit dolorem dolores facilis ad inventore.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2015-11-06 01:24:48', '2015-11-13 01:24:48', '2015-06-27 01:24:48', '2015-11-24 01:24:48', 3488000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(144, 'In maxime sapiente eum sapiente ipsam.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2019-08-09 21:08:36', '2019-08-15 21:08:36', '2019-04-18 21:08:36', '2019-08-16 21:08:36', 9807000, 30, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(145, 'Officia aut molestias quo facere consequatur temporibus est.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2018-10-09 17:08:32', '2018-10-11 17:08:32', '2018-09-14 17:08:32', '2018-12-13 17:08:32', 2033000, 40, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(146, 'Sit ut officia amet.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2012-09-07 09:37:42', '2012-09-15 09:37:42', '2012-07-10 09:37:42', '2012-09-08 09:37:42', 8442000, 80, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(147, 'Sint quia et quo est.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2012-08-04 07:31:59', '2012-08-12 07:31:59', '2012-08-03 07:31:59', '2012-11-01 07:31:59', 6691000, 50, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(148, 'Optio cum sint deserunt earum minima autem et.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2017-08-26 14:08:58', '2017-09-02 14:08:58', '2017-07-21 14:08:58', '2017-10-19 14:08:58', 2409000, 80, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(149, 'Voluptas veritatis repellendus non eligendi harum qui et accusantium.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-02-13 14:37:45', '2016-02-18 14:37:45', '2015-12-19 14:37:45', '2016-05-17 14:37:45', 6636000, 30, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(150, 'Repellat est rerum deserunt voluptas.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2021-10-20 18:58:31', '2021-10-23 18:58:31', '2021-08-25 18:58:31', '2021-12-23 18:58:31', 8157000, 20, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(151, 'Placeat omnis quia ut blanditiis sit officiis.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2012-09-17 06:13:20', '2012-09-19 06:13:20', '2012-07-15 06:13:20', '2012-10-13 06:13:20', 3175000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(152, 'Et numquam fugit nulla beatae numquam enim.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2021-02-11 23:04:18', '2021-02-18 23:04:18', '2021-02-07 23:04:18', '2021-07-07 23:04:18', 3643000, 30, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(153, 'Consequatur molestiae doloremque incidunt ex.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2016-10-14 19:45:34', '2016-10-17 19:45:34', '2016-09-14 19:45:34', '2016-12-13 19:45:34', 9203000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(154, 'Dicta reprehenderit vitae voluptatem a facere officia cupiditate.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2021-05-17 04:51:52', '2021-05-25 04:51:52', '2021-02-27 04:51:52', '2021-07-27 04:51:52', 5699000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(155, 'Alias provident sapiente quaerat et aut harum.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2020-06-28 13:28:37', '2020-07-01 13:28:37', '2020-05-08 13:28:37', '2020-07-07 13:28:37', 5447000, 50, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(156, 'Consequatur deserunt expedita aperiam itaque.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2021-02-07 22:59:42', '2021-02-11 22:59:42', '2020-12-07 22:59:42', '2021-03-07 22:59:42', 5457000, 90, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(157, 'Velit repudiandae quibusdam illum iusto sit voluptas.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2019-07-04 22:45:38', '2019-07-06 22:45:38', '2019-05-29 22:45:38', '2019-07-28 22:45:38', 9920000, 30, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(158, 'Quos cum eum perspiciatis itaque esse dolores doloribus.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2014-07-03 11:43:10', '2014-07-06 11:43:10', '2014-03-16 11:43:10', '2014-07-14 11:43:10', 8359000, 60, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(159, 'Voluptas qui quis facere ex.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2013-04-20 00:12:37', '2013-04-27 00:12:37', '2013-01-21 00:12:37', '2013-04-21 00:12:37', 4945000, 70, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(160, 'Et officiis consequuntur ut et sit qui sed.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-04-06 01:30:58', '2016-04-08 01:30:58', '2016-02-12 01:30:58', '2016-04-12 01:30:58', 1715000, 20, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(161, 'Vel reprehenderit asperiores at magni et.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2020-08-01 11:41:58', '2020-08-03 11:41:58', '2020-05-26 11:41:58', '2020-09-23 11:41:58', 1660000, 20, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(162, 'Sit consequatur facilis et reprehenderit qui laborum.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2019-11-30 22:26:31', '2019-12-04 22:26:31', '2019-08-28 22:26:31', '2019-12-26 22:26:31', 4915000, 30, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(163, 'Quae sit voluptas amet nobis incidunt omnis.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2013-01-12 14:43:53', '2013-01-20 14:43:53', '2012-12-16 14:43:53', '2013-01-15 14:43:53', 6393000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(164, 'Laborum error sapiente autem.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2015-09-16 13:10:00', '2015-09-24 13:10:00', '2015-05-12 13:10:00', '2015-10-09 13:10:00', 5355000, 40, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(165, 'Dolorem architecto libero recusandae iste.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2017-04-05 22:18:31', '2017-04-07 22:18:31', '2016-12-21 22:18:31', '2017-05-20 22:18:31', 5880000, 20, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(166, 'Aperiam velit distinctio ut modi voluptatem.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-10-13 21:52:53', '2020-10-17 21:52:53', '2020-07-17 21:52:53', '2020-12-14 21:52:53', 9235000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(167, 'Dicta et est aut.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2019-12-21 08:17:47', '2019-12-27 08:17:47', '2019-12-09 08:17:47', '2020-01-08 08:17:47', 3014000, 60, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(168, 'Est voluptatem accusantium sed est.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2016-06-30 05:01:03', '2016-07-05 05:01:03', '2016-06-14 05:01:03', '2016-10-12 05:01:03', 2127000, 20, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(169, 'Maiores est dolores corporis molestiae.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2017-03-09 22:03:26', '2017-03-13 22:03:26', '2016-12-14 22:03:26', '2017-03-14 22:03:26', 8992000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(170, 'Vel consectetur deleniti recusandae qui laboriosam perspiciatis.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2019-08-18 22:55:43', '2019-08-20 22:55:43', '2019-04-13 22:55:43', '2019-10-10 22:55:43', 2056000, 90, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(171, 'At eius a dolores ullam.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2015-03-20 04:58:20', '2015-03-22 04:58:20', '2015-03-08 04:58:20', '2015-05-07 04:58:20', 539000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(172, 'Nulla aliquam sed veritatis at tempora.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2021-06-06 16:55:16', '2021-06-13 16:55:16', '2021-01-22 16:55:16', '2021-07-21 16:55:16', 1910000, 60, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(173, 'Qui sunt sed atque quos.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-09-15 16:01:05', '2020-09-18 16:01:05', '2020-08-25 16:01:05', '2020-10-24 16:01:05', 4700000, 90, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(174, 'Temporibus aut natus autem eaque.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2016-12-13 06:03:24', '2016-12-16 06:03:24', '2016-11-27 06:03:24', '2017-04-26 06:03:24', 9092000, 80, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(175, 'Sit dolorem ipsum occaecati consequuntur et.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2020-09-25 09:55:22', '2020-09-28 09:55:22', '2020-09-05 09:55:22', '2020-12-04 09:55:22', 1244000, 60, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL);
INSERT INTO `tours` (`id`, `name`, `image`, `description_file`, `tour_start_date`, `tour_end_date`, `registration_start_date`, `registration_end_date`, `price`, `max_people`, `region_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(176, 'Quis eum accusamus et quos eveniet inventore.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2014-05-12 10:34:59', '2014-05-14 10:34:59', '2014-04-10 10:34:59', '2014-09-07 10:34:59', 2785000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(177, 'Ratione qui error non incidunt cum quas labore est.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2018-05-13 08:43:45', '2018-05-15 08:43:45', '2018-04-14 08:43:45', '2018-08-12 08:43:45', 2928000, 70, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(178, 'Dolorum molestiae quia et dolorem.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2016-02-28 14:44:11', '2016-03-07 14:44:11', '2016-02-23 14:44:11', '2016-03-24 14:44:11', 4825000, 20, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(179, 'Provident aut hic dolorem aut.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-11-25 01:26:09', '2020-12-02 01:26:09', '2020-11-19 01:26:09', '2020-12-19 01:26:09', 3612000, 40, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(180, 'Fuga totam tenetur labore reiciendis velit distinctio.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2022-06-14 05:29:02', '2022-06-20 05:29:02', '2022-05-09 05:29:02', '2022-10-06 05:29:02', 3152000, 70, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(181, 'Quia quos consequatur cumque dolore quo culpa ipsa.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2019-05-27 05:32:35', '2019-05-31 05:32:35', '2019-04-05 05:32:35', '2019-07-04 05:32:35', 2191000, 20, 2, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(182, 'Optio sit cumque et similique.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2014-12-07 01:03:50', '2014-12-14 01:03:50', '2014-07-12 01:03:50', '2015-01-08 01:03:50', 1865000, 60, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(183, 'Sed distinctio harum nostrum sequi.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2013-05-15 21:05:10', '2013-05-18 21:05:10', '2013-03-02 21:05:10', '2013-06-30 21:05:10', 4441000, 70, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(184, 'Deleniti facere sint expedita enim officiis et.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2013-08-15 12:53:22', '2013-08-21 12:53:22', '2013-07-25 12:53:22', '2013-08-24 12:53:22', 4539000, 60, 6, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(185, 'Et asperiores qui praesentium unde at a aut.', 'https://source.unsplash.com/random/outdoors', 'description_file.docx', '2016-01-19 20:29:59', '2016-01-23 20:29:59', '2016-01-14 20:29:59', '2016-02-13 20:29:59', 6372000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(186, 'Nulla asperiores dolorum ad autem corporis vel.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2018-02-28 03:22:11', '2018-03-02 03:22:11', '2018-02-27 03:22:11', '2018-03-29 03:22:11', 5558000, 60, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(187, 'Explicabo saepe corrupti ut assumenda veritatis aut totam.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-06-09 12:14:20', '2020-06-17 12:14:20', '2020-02-02 12:14:20', '2020-07-31 12:14:20', 6399000, 20, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(188, 'Repudiandae consequatur ut non temporibus.', 'https://source.unsplash.com/random/outdoor', 'description_file.docx', '2020-09-05 22:53:21', '2020-09-09 22:53:21', '2020-08-17 22:53:21', '2020-09-16 22:53:21', 7077000, 80, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(189, 'Sit numquam earum repellat ex provident.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2020-05-26 04:09:04', '2020-05-31 04:09:04', '2020-03-23 04:09:04', '2020-08-20 04:09:04', 3569000, 60, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(190, 'Voluptatem blanditiis repellendus omnis dignissimos corporis ipsa suscipit recusandae.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2020-04-06 23:16:10', '2020-04-11 23:16:10', '2020-01-27 23:16:10', '2020-05-26 23:16:10', 3551000, 80, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(191, 'Doloremque qui repudiandae modi.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2013-02-17 22:07:41', '2013-02-20 22:07:41', '2013-01-25 22:07:41', '2013-03-26 22:07:41', 8980000, 20, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(192, 'Voluptatem iure eos dignissimos impedit.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2015-02-15 05:04:02', '2015-02-18 05:04:02', '2014-12-22 05:04:02', '2015-06-20 05:04:02', 4415000, 60, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(193, 'Ut accusantium tempora quam sint.', 'https://source.unsplash.com/random/mountains', 'description_file.docx', '2016-11-24 19:48:16', '2016-11-26 19:48:16', '2016-10-02 19:48:16', '2016-12-01 19:48:16', 3876000, 40, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(194, 'Laboriosam eum delectus eum voluptatem expedita explicabo.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2013-03-29 10:11:46', '2013-04-05 10:11:46', '2013-03-04 10:11:46', '2013-08-31 10:11:46', 2310000, 40, 4, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(195, 'Suscipit rerum blanditiis molestiae unde rerum.', 'https://source.unsplash.com/random/lake', 'description_file.docx', '2015-11-14 12:41:39', '2015-11-21 12:41:39', '2015-11-11 12:41:39', '2016-05-09 12:41:39', 6510000, 90, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(196, 'Optio omnis ab dolores dolorum perspiciatis tenetur.', 'https://source.unsplash.com/random/Landscape', 'description_file.docx', '2014-01-02 16:05:59', '2014-01-08 16:05:59', '2013-09-22 16:05:59', '2014-01-20 16:05:59', 9452000, 40, 5, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(197, 'Unde et at eius atque provident autem dolorem.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2022-06-28 01:40:19', '2022-07-01 01:40:19', '2022-05-29 01:40:19', '2022-07-28 01:40:19', 6906000, 40, 3, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(198, 'Velit modi mollitia ratione harum et ut esse maiores.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2017-04-01 01:19:43', '2017-04-05 01:19:43', '2017-03-20 01:19:43', '2017-04-19 01:19:43', 6431000, 20, 7, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(199, 'Iure inventore exercitationem sint doloremque dolor velit debitis dolore.', 'https://source.unsplash.com/random/beach', 'description_file.docx', '2012-08-27 11:16:17', '2012-09-01 11:16:17', '2012-07-28 11:16:17', '2012-11-25 11:16:17', 755000, 50, 1, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL),
(200, 'Sapiente optio consectetur distinctio quae.', 'https://source.unsplash.com/random/nature', 'description_file.docx', '2013-07-31 18:10:53', '2013-08-02 18:10:53', '2013-04-30 18:10:53', '2013-08-28 18:10:53', 9966000, 60, 8, '2022-06-17 04:28:00', '2022-06-17 04:28:00', NULL);

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
(1, 'Laurie Skiles', 'laurieskiles0601', '$2y$10$/vGI9QkZZWiP.F.ikfMRkO98TIi.jV1syUhNzxv7nBmzzuTJ.mEgS', 'laurieskiles0601@gmail.com', '2022-06-17 04:27:52', 'Nam', '0720001546', '378074447', 6, 1, 28, '2003-03-30 10:40:54', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '3Zxrq1n8hv'),
(2, 'Golda Barton II', 'goldabartonii0406', '$2y$10$HUcmVdVGFz714AjZhpd7o.VwhTbPt42EnmY0WJ.5l4Lp0StJrAUey', 'goldabartonii0406@gmail.com', '2022-06-17 04:27:52', 'Nữ', '0187025430', '324289552', 4, 6, 34, '2021-05-17 03:02:21', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'mQsClH5giv'),
(3, 'Susanna Kiehn', 'susannakiehn0701', '$2y$10$yIODAr2/I2GpKaZtg1MIC..p.oULQF0/CDS2SeIQBVmu8mkC88gUG', 'susannakiehn0701@gmail.com', '2022-06-17 04:27:52', 'Nam', '0523137430', '392104961', 7, 1, 16, '2022-02-05 19:08:10', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'F1jB01qfk9'),
(4, 'Mr. Brice Frami DVM', 'mr.briceframidvm0507', '$2y$10$q1g5fsJvVS7mvZ5oBlY5OOWpTKIXOP6Fzr2GvGvQvQHUoOtwMQvZe', 'mr.briceframidvm0507@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0477327641', '324169583', 5, 7, 6, '2011-09-29 19:54:03', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'smdoMxssjZ'),
(5, 'Bridgette McGlynn II', 'bridgettemcglynnii0304', '$2y$10$fYsDMoeE.bpEwoaXySOEWOW1W8Av8NkYvJcbfKOliBA5lpO5z9ktq', 'bridgettemcglynnii0304@gmail.com', '2022-06-17 04:27:53', 'Nam', '0954460118', '356527225', 3, 4, 20, '2021-03-01 12:31:37', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'rWa7hZotX5'),
(6, 'Lola Emmerich', 'lolaemmerich0703', '$2y$10$sOmMlZH5.oAyZGsP5LhG6uzQrqmbnAgApw.0ix8aVFPu5cUDGgTne', 'lolaemmerich0703@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0304686932', '348759335', 7, 3, 30, '2015-09-11 10:26:25', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'afNpGJrUPl'),
(7, 'Selina Sauer', 'selinasauer0904', '$2y$10$wu9A5ZhF5ZAYilIMqKv4eOD3yyLR2i1iqgEWw98rgjQawQ0LR1.SS', 'selinasauer0904@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0807937199', '342400984', 9, 4, 33, '2021-10-28 17:33:05', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'WoflEVlVen'),
(8, 'Brian Tremblay', 'briantremblay0502', '$2y$10$gugKiTcWAIEUhhQE1Oe8I.Wa8nt/hcVQbilUqNwKRdBciVOc95hvK', 'briantremblay0502@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0536943294', '388761908', 5, 2, 32, '2007-11-09 14:09:21', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '3oGSDf35d7'),
(9, 'Johnpaul Lynch', 'johnpaullynch0303', '$2y$10$MN/h4TauF1Q4WCN.d.UAOOea6SSGFyLEzHu4ChUN4D9yy1v5Ba3GK', 'johnpaullynch0303@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0928480427', '330945768', 3, 3, 22, '2010-08-01 11:42:54', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'Az2mXn68Pv'),
(10, 'Al Johns', 'aljohns0905', '$2y$10$nuWR250kn8Om6m4G8C7YEe5qv4LswwVHw6Ig8dbxZ.aMxS/1lTD4u', 'aljohns0905@gmail.com', '2022-06-17 04:27:53', 'Nam', '0081645504', '325328998', 9, 5, 28, '2010-12-01 19:12:38', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'dVkI0psOP8'),
(11, 'Stephany Conroy', 'stephanyconroy0507', '$2y$10$2b1tw8FZk6QC5T8FOw0.Puv9gpgsyKq7PMNI9ak24Z6xT0.bIMFkS', 'stephanyconroy0507@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0849878888', '362373220', 5, 7, 15, '2014-01-27 07:15:54', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'zuozR7apJ1'),
(12, 'Enrico Kerluke', 'enricokerluke0408', '$2y$10$iNS.B01w558geV1/nYkgierquoSuyQ8UsfScKyBX53J./ZNiZG2EK', 'enricokerluke0408@gmail.com', '2022-06-17 04:27:53', 'Nam', '0304212750', '312189743', 4, 8, 20, '2007-06-10 03:05:35', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'R28RHwAqj6'),
(13, 'Otilia Jacobi PhD', 'otiliajacobiphd0905', '$2y$10$HiptNchmyqAPNk3lo/fd.ebGUQ4q8VqKzH/JwrNvQaW4xjBCpBU/m', 'otiliajacobiphd0905@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0578317431', '334799732', 9, 5, 23, '2021-09-19 17:47:59', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'DTe1W35HSc'),
(14, 'Dr. Wilhelm McClure III', 'dr.wilhelmmcclureiii0202', '$2y$10$U07brGi8xJqp3JdRM1Vk9.4a/NHfA4pG5qicHZjwWG/1jhLPfK7We', 'dr.wilhelmmcclureiii0202@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0490518220', '365452052', 2, 2, 26, '2019-12-14 15:30:54', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'a2mIxo9jXI'),
(15, 'Prof. Mario Nader III', 'prof.marionaderiii0708', '$2y$10$2t8NdArWWN1s77I2N5vBQO6upfqtIDE48iWX0hOfqJaNRoAvzD7ZG', 'prof.marionaderiii0708@gmail.com', '2022-06-17 04:27:53', 'Nam', '0673273021', '314829063', 7, 8, 36, '2003-07-01 18:42:08', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'rVC1UjGo6E'),
(16, 'Dr. Kylee Fay I', 'dr.kyleefayi0202', '$2y$10$..RTUB5haY0d7lfRg7r7AeqCgySl6LRpWuVLykxgu0e6KnfqEc9RC', 'dr.kyleefayi0202@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0304548957', '337723478', 2, 2, 7, '2018-04-30 12:00:57', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'WQ2wPwJzwl'),
(17, 'Lavon Huels', 'lavonhuels0403', '$2y$10$bmXUOhNibUu.FpRakTFtB.tjlwa.2LmHrA8XcvmYVDnJBwNUgbN3e', 'lavonhuels0403@gmail.com', '2022-06-17 04:27:53', 'Nữ', '0935024908', '317805516', 4, 3, 32, '2007-06-11 03:20:20', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'YyI48LGC3W'),
(18, 'Ernest Gleichner', 'ernestgleichner0201', '$2y$10$QkrE2A8DbPwGxWxQW75X5OpPd7eEJwS.J4s9x2WdGb1H4PoI6TDky', 'ernestgleichner0201@gmail.com', '2022-06-17 04:27:54', 'Nam', '0048255111', '382712083', 2, 1, 25, '2018-07-01 12:31:27', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'CXHpqKhN1Z'),
(19, 'Franz Mayert', 'franzmayert0903', '$2y$10$t5n7me.eey3B5llqMpHxUugPAQZ3zwnkmX6mOZxdEsRX47MF1Ds/6', 'franzmayert0903@gmail.com', '2022-06-17 04:27:54', 'Nam', '0870702069', '369666955', 9, 3, 28, '2016-01-28 23:34:52', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'UHREeUtQyM'),
(20, 'Dr. Raegan Hagenes PhD', 'dr.raeganhagenesphd0101', '$2y$10$To32YlkY5APVeF77j/QVHOxZfLV4qeNKk08839POTaoGazQZ1p5sy', 'dr.raeganhagenesphd0101@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0358247804', '313484896', 1, 1, 2, '2013-10-27 21:47:20', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'KjS2K0Xopf'),
(21, 'Autumn Watsica', 'autumnwatsica0308', '$2y$10$YV8CME/5MaFcPP4i.GMHPe3cSlqCRD4yZBz55Yk6fhyhwXNRt2THG', 'autumnwatsica0308@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0112958089', '328208270', 3, 8, 1, '2011-07-01 23:43:02', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'Wy9Bp85ktS'),
(22, 'Miss Angeline Roob', 'missangelineroob0801', '$2y$10$xBybv/vux5E1wT8QofvvleWKYd1B/5jRGgVdd..yvcbNVliIyzmH2', 'missangelineroob0801@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0946257258', '324236816', 8, 1, 10, '2014-01-13 01:40:17', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'zlgyvLnsNi'),
(23, 'Warren Lynch', 'warrenlynch0107', '$2y$10$DPJcSF0rg5Wd6IJW/qJ3mOumI2JyDeFjbtim8bU3hGCQYgpT9mv22', 'warrenlynch0107@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0216913623', '346479894', 1, 7, 3, '2012-07-03 19:10:27', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'Fb6U3Mm7jn'),
(24, 'Rodger Considine', 'rodgerconsidine0405', '$2y$10$P6T4l6M9XmnWI9qepdqTb.K5Vg9WbtWMS24RhVOjhC2oY0odMaNMi', 'rodgerconsidine0405@gmail.com', '2022-06-17 04:27:54', 'Nam', '0910477542', '318439997', 4, 5, 5, '2006-10-16 21:18:03', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'uBv1qIVita'),
(25, 'Chadrick Reilly', 'chadrickreilly0106', '$2y$10$sSWowxdJyFS7SB73xI5YZOd/mLBxoT/W6nhV2H4j8WfBa.pzH3eMa', 'chadrickreilly0106@gmail.com', '2022-06-17 04:27:54', 'Nam', '0715057450', '352230471', 1, 6, 31, '2007-03-13 14:50:13', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '3WfewRRHEv'),
(26, 'Mr. Danny Bechtelar V', 'mr.dannybechtelarv0105', '$2y$10$m0280NagdI5QCi/bJsId.OqQW9/JXeYJ6zBC5HDrcPK4I9yqR4AZK', 'mr.dannybechtelarv0105@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0688682612', '367006764', 1, 5, 17, '2019-07-31 13:43:40', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'PS0U7fNY8o'),
(27, 'Kole Medhurst V', 'kolemedhurstv0507', '$2y$10$5yBfH89UM0SEdrsQwTY14.XnXCcLUgTrh8yL6L919ZW.51q02oWUm', 'kolemedhurstv0507@gmail.com', '2022-06-17 04:27:54', 'Nam', '0574339293', '330898771', 5, 7, 18, '2003-12-08 16:40:16', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '475X8AM7YE'),
(28, 'Milton Haley', 'miltonhaley0905', '$2y$10$aavHWg5WWepZ3P7KyaSJE.ESDiOdmoLK7VC4DQDFr8gBYToAN.slq', 'miltonhaley0905@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0016739734', '380723590', 9, 5, 7, '2009-09-04 18:20:29', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '4GOYKrvAAp'),
(29, 'Mr. Eloy Nolan', 'mr.eloynolan0801', '$2y$10$Q6SYa84HgLx7I7p.66wWau3JssTjXObGshyAJuzOK5j/R.yiZlPpu', 'mr.eloynolan0801@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0083665809', '351075669', 8, 1, 25, '2009-08-15 07:37:45', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'JehGCURzl2'),
(30, 'Malvina Smitham', 'malvinasmitham0301', '$2y$10$bH7ylYpXklqrFB.z0XKIDevvLv.mt/bOq5iPUow71JmlikOLSu3Fy', 'malvinasmitham0301@gmail.com', '2022-06-17 04:27:54', 'Nam', '0895560337', '386623680', 3, 1, 27, '2007-06-03 20:02:44', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'U3FPfZ2Q0f'),
(31, 'Billie Keebler', 'billiekeebler0905', '$2y$10$tBRmp1XEjE1fJtTyDFkxGOWiA7Je3qyRjkWdnP.inrQY58zrnU0ja', 'billiekeebler0905@gmail.com', '2022-06-17 04:27:54', 'Nam', '0016793977', '300316565', 9, 5, 1, '2017-05-13 06:18:17', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'm2gLHyiAei'),
(32, 'Claude Nolan IV', 'claudenolaniv0701', '$2y$10$twZq14Mq3zpwULzk6DKXPemrjiQ.cAjdeRLsfmyksh2gPDoBPGiW6', 'claudenolaniv0701@gmail.com', '2022-06-17 04:27:54', 'Nữ', '0967759196', '351890207', 7, 1, 27, '2017-01-13 06:45:33', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '40ki2MeA1P'),
(33, 'Dr. Narciso Barton PhD', 'dr.narcisobartonphd0607', '$2y$10$LlzHwHJNMlv77y4ozd2Z4.Uweok/rkh0FpCjs2LhCWgfIw4zu9bau', 'dr.narcisobartonphd0607@gmail.com', '2022-06-17 04:27:55', 'Nam', '0470128725', '360668694', 6, 7, 34, '2015-04-02 19:46:15', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'AGXs0q0K1x'),
(34, 'Bernard Erdman V', 'bernarderdmanv0303', '$2y$10$qEsaWMqIfEQIdwyb0yEi7.gHvGyo.u9z6/XCg.11PaCUxWa6eyw8m', 'bernarderdmanv0303@gmail.com', '2022-06-17 04:27:55', 'Nam', '0038299641', '329443468', 3, 3, 21, '2017-05-24 05:48:39', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'IrRWTiK5yl'),
(35, 'Dr. Shaun Becker', 'dr.shaunbecker0504', '$2y$10$9dO.vS5EA.GrGQk6CfiyNu4x/e3sXbNEWp.p.8pH5Pglcn..NxSKS', 'dr.shaunbecker0504@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0724032926', '393089553', 5, 4, 16, '2016-04-04 05:58:10', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'QRVze607n0'),
(36, 'Geraldine Stoltenberg', 'geraldinestoltenberg0506', '$2y$10$IbzFXt5nbLSLSSAV3ROMWe2lbsfQV1aDca9EbBdKNJKYB9hlzXN4K', 'geraldinestoltenberg0506@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0809581671', '395969869', 5, 6, 10, '2014-11-15 08:57:04', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'EvFh8LLXVQ'),
(37, 'Dr. Giovanny Reynolds IV', 'dr.giovannyreynoldsiv0507', '$2y$10$oI24AVN3Uv6ivDByV1fPX.ZbsCLkMP444RCPt2VcTA7UuIfPg2RsO', 'dr.giovannyreynoldsiv0507@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0428379151', '317999883', 5, 7, 23, '2017-09-09 03:10:38', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '5bvqx93xe9'),
(38, 'Ms. Norma Berge DVM', 'ms.normabergedvm0805', '$2y$10$rk8cDG8p8UpxcqcXXei.nOLvxJoxiT6GrYMa8OSgWNqlmn1IBC4MC', 'ms.normabergedvm0805@gmail.com', '2022-06-17 04:27:55', 'Nam', '0974061546', '370496066', 8, 5, 17, '2013-06-01 00:21:04', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'JAnI69BpdB'),
(39, 'Mr. Dale Tremblay', 'mr.daletremblay0506', '$2y$10$KXcw10ZULY00rTXBfZcXf.hjkjHrWRB6IJ0cT2m7CMA8VeJBfmi7.', 'mr.daletremblay0506@gmail.com', '2022-06-17 04:27:55', 'Nam', '0884865105', '301930864', 5, 6, 16, '2005-08-21 19:33:45', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'dUQqHu4Bvt'),
(40, 'Prof. Mikayla Botsford', 'prof.mikaylabotsford0302', '$2y$10$.X9Jo4e/bfzb1mo5fBKrY.LYYlIWQRbmfZ4sm2DdequeKXHTMnTeC', 'prof.mikaylabotsford0302@gmail.com', '2022-06-17 04:27:55', 'Nam', '0334874723', '305804788', 3, 2, 5, '2013-07-13 06:31:00', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '54cTRfkjmp'),
(41, 'Clement Swaniawski', 'clementswaniawski0402', '$2y$10$SDsGUQ9AcMklRHIpBhXloON4mf4HbS8VJn3pR3yBOZKA7S4Hv2hsS', 'clementswaniawski0402@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0602734862', '380745879', 4, 2, 7, '2005-11-14 09:08:15', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '0eEIHbJEVs'),
(42, 'Mrs. Jaunita Mante DDS', 'mrs.jaunitamantedds0808', '$2y$10$FSAuPeQ.XgpkwZD2FmGRb.Nvnk6ojCNFr/iAWQ1wrvO/XxrIoQ3..', 'mrs.jaunitamantedds0808@gmail.com', '2022-06-17 04:27:55', 'Nam', '0267017860', '337585795', 8, 8, 1, '2006-06-02 04:13:02', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'hOJhvvCQHo'),
(43, 'Mrs. Eveline Gleichner', 'mrs.evelinegleichner0805', '$2y$10$PXy0/TJqlxtYK.VqmkZxvOZ02GI6Zj5t3BggtyXgSXuhu.ktZxok6', 'mrs.evelinegleichner0805@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0442278838', '334087422', 8, 5, 24, '2015-09-13 12:56:05', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '1nqePZFNZp'),
(44, 'Anabelle Welch', 'anabellewelch0308', '$2y$10$rFh7kAbRs07JrLAXqisHc.HZ1lkw17wfLx7HXgIpYD7iucIHXmn.S', 'anabellewelch0308@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0210972178', '339901835', 3, 8, 13, '2005-07-21 07:18:34', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'QzkQ1y9TcU'),
(45, 'Trinity Predovic', 'trinitypredovic0704', '$2y$10$P93zjNBEpM57PEqRQTbpkOIIR/8GrFoheMomkay1WtkWwaKe9wUme', 'trinitypredovic0704@gmail.com', '2022-06-17 04:27:55', 'Nữ', '0295074814', '330411478', 7, 4, 24, '2017-10-16 23:15:29', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '5NuUlnQBty'),
(46, 'Dr. Preston Tromp Sr.', 'dr.prestontrompsr.0505', '$2y$10$UMJFNU4o9R5ibIa4akyorO8Zj61VGvznyszMbFr6mQohMn45WigqW', 'dr.prestontrompsr.0505@gmail.com', '2022-06-17 04:27:55', 'Nam', '0086625562', '302157620', 5, 5, 15, '2021-02-27 17:57:57', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'hMTQIt0iff'),
(47, 'Sierra Lang', 'sierralang0501', '$2y$10$AxFWH9Ai8VIbA/uxx/5houtMQDndGoDSIAwX6gvqKoCMUSOaOugZ6', 'sierralang0501@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0466261493', '321465243', 5, 1, 5, '2018-10-17 11:07:50', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'vvkZXzeBRk'),
(48, 'Aiden Muller', 'aidenmuller0703', '$2y$10$ECUHfVF1ffDVLJ4YUkCJP.JoDYBFH3yo6xkyFU1cKw6YwInwWPgyO', 'aidenmuller0703@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0823970244', '318501643', 7, 3, 12, '2016-07-24 20:32:39', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'LDv5N0J54J'),
(49, 'Abbey Ward', 'abbeyward0407', '$2y$10$NAqQ599WG5aPVEmsCpd6IOoD8nP8ZUXay47xavBUscTf04ANqepjy', 'abbeyward0407@gmail.com', '2022-06-17 04:27:56', 'Nam', '0756154866', '364991380', 4, 7, 29, '2015-03-07 07:50:43', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'xyJRbkMo2Y'),
(50, 'Mrs. Hanna Luettgen I', 'mrs.hannaluettgeni0802', '$2y$10$Hk9eAYz2uDMEIaInPdEDLeAhdUTBa.nrW6FpWx9nMyf1xhpaYcrya', 'mrs.hannaluettgeni0802@gmail.com', '2022-06-17 04:27:56', 'Nam', '0155376631', '351873531', 8, 2, 7, '2008-08-18 21:34:59', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'HGaLJRd2sl'),
(51, 'Breanne Bins IV', 'breannebinsiv0402', '$2y$10$v14EFxEjW8FMYVpUcQdp6ey1wqetz39YZJNuqPU6wP/EDSX1mC0Zy', 'breannebinsiv0402@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0531136626', '325639712', 4, 2, 14, '2022-01-11 07:01:13', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'VbEBvOOXKd'),
(52, 'Mr. Clint Spinka', 'mr.clintspinka0507', '$2y$10$NP/wDqWYc.MRrdvXXcPSuOzv7Znad.zleeJt84bhj0xP7h6IAN0uq', 'mr.clintspinka0507@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0175448302', '349195823', 5, 7, 33, '2020-09-26 03:38:16', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'gdSQpOLhpE'),
(53, 'Ona Huels', 'onahuels0808', '$2y$10$UmRZdId90P7NeV5pkegl.OMF3eFuihknCoHD0wejQ6w8L4e.Vo2Ym', 'onahuels0808@gmail.com', '2022-06-17 04:27:56', 'Nam', '0086306305', '397738464', 8, 8, 37, '2015-09-18 00:28:02', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '60IrbIgpre'),
(54, 'Valentine Kub', 'valentinekub0408', '$2y$10$7O1O.nAqF3cTUhK5Ax3Ce.oodbaIt9ZfojYvmc/.g1j3jxB/gM3WW', 'valentinekub0408@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0056131557', '365451030', 4, 8, 25, '2022-04-04 10:12:23', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'oiqJPHJQZo'),
(55, 'Amir Herzog', 'amirherzog0406', '$2y$10$67lBSsehZqZ0LRNT0PHToO2g5mKIPL1pNpUmK7Sm11uJpcdcEUl7S', 'amirherzog0406@gmail.com', '2022-06-17 04:27:56', 'Nam', '0846927102', '328358135', 4, 6, 4, '2004-11-06 21:32:46', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '9xCz2g6cuv'),
(56, 'Prof. Favian Hauck', 'prof.favianhauck0202', '$2y$10$U05DNp6QBnYGWOuy6zk0EejSPyUASxzl1mNSij22QV8kO8gPWby9i', 'prof.favianhauck0202@gmail.com', '2022-06-17 04:27:56', 'Nam', '0594760189', '334810512', 2, 2, 15, '2016-11-28 14:14:05', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '41tDmHL12k'),
(57, 'Dr. Nelle Kohler Jr.', 'dr.nellekohlerjr.0106', '$2y$10$nXEQAhqeWkEbClJ1gKyyn.GhGoTCHAJsekxHM8uUD7kCrD0bCOC1i', 'dr.nellekohlerjr.0106@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0150649552', '375598615', 1, 6, 36, '2013-12-07 13:04:15', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'uUQzVWwB2u'),
(58, 'Kailey Glover', 'kaileyglover0208', '$2y$10$LnA2hObUiiox8mBgltej0.EUWdcwkefhelFxfgzGDy/7LOwKI7IX2', 'kaileyglover0208@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0204504182', '365340283', 2, 8, 34, '2008-10-07 16:11:55', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'zEZ2T7FGed'),
(59, 'Mrs. Joanny Wiegand PhD', 'mrs.joannywiegandphd0108', '$2y$10$yaVpxOeq/ybEpbP73TgM/uXz8iAzRCYxaxbGQoObeW6D9QcdPjUo.', 'mrs.joannywiegandphd0108@gmail.com', '2022-06-17 04:27:56', 'Nam', '0742417147', '358522901', 1, 8, 29, '2021-03-22 18:04:27', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'CFihcMTYPt'),
(60, 'Aurelia Olson DDS', 'aureliaolsondds0202', '$2y$10$LRyXTwneZz9g1WJD2EnoAeSs9/LHgRAHF3LxMih2KZDyuTT31yP3a', 'aureliaolsondds0202@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0372789894', '354444262', 2, 2, 9, '2008-05-24 16:15:46', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'rs0jvkVIKJ'),
(61, 'Carole Wiegand PhD', 'carolewiegandphd0102', '$2y$10$OvBxj7z9gH52HaLP3ixwje.N5Xlys3VN7FBOfYCuPJ1DS.l2akG22', 'carolewiegandphd0102@gmail.com', '2022-06-17 04:27:56', 'Nữ', '0084573125', '310665389', 1, 2, 23, '2019-05-31 18:55:51', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'YfLq6FRqV6'),
(62, 'Madonna Mohr I', 'madonnamohri0707', '$2y$10$gw.kPLkc1UdBvYT/nfggGufUXoiN2O9JnigsiKy9Brh10Szu6tdjW', 'madonnamohri0707@gmail.com', '2022-06-17 04:27:57', 'Nam', '0385876673', '350384894', 7, 7, 13, '2008-06-18 03:20:06', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'zGqTF8jwAU'),
(63, 'Sherman Schmeler', 'shermanschmeler0905', '$2y$10$c.ACH5Ky7oVo26Z9y83BUu4T/6lGKfl2Egf0P4jnMOHfsEfhBLhdm', 'shermanschmeler0905@gmail.com', '2022-06-17 04:27:57', 'Nam', '0206611461', '312818005', 9, 5, 6, '2012-01-25 11:16:43', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'QuFgHEWK48'),
(64, 'Drake Wolf', 'drakewolf0301', '$2y$10$SokrYey2966c.tly7vZ9SuYCDuj.MwOfD1s8aOF/TTnYJLT13.hg.', 'drakewolf0301@gmail.com', '2022-06-17 04:27:57', 'Nam', '0939558575', '354631813', 3, 1, 24, '2020-10-17 20:14:20', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'DbjtdMXzVW'),
(65, 'Haleigh Windler', 'haleighwindler0104', '$2y$10$0YcZaI7TUoz8dzZk7rfKDuBvy0ap.mLxk/tVo.1zsWUUMwTvi2hOu', 'haleighwindler0104@gmail.com', '2022-06-17 04:27:57', 'Nam', '0991307626', '311079237', 1, 4, 11, '2012-04-15 18:37:07', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'kfdQG9mx9F'),
(66, 'Virginia Hegmann II', 'virginiahegmannii0804', '$2y$10$qmbmXTyj/DUOGFfStoRwauPHGM9Lu.2ghsiXJSp57L2yfeRjsf7MO', 'virginiahegmannii0804@gmail.com', '2022-06-17 04:27:57', 'Nữ', '0041822828', '342744093', 8, 4, 21, '2020-04-14 18:38:30', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'c3ZrGtnbHY'),
(67, 'Skyla DuBuque', 'skyladubuque0104', '$2y$10$8z4Vni/RsoR08OTTdbJ2xOIIl57kul.iPn7M3r7aVVT58mKaLnesa', 'skyladubuque0104@gmail.com', '2022-06-17 04:27:57', 'Nữ', '0290641183', '387713134', 1, 4, 26, '2021-04-22 19:10:13', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'onqsaZsafe'),
(68, 'Sharon O\'Reilly II', 'sharono-reillyii0803', '$2y$10$CBZKCBIk0I0z2ec/sykKqul4DvyqR2sy.5/IJAIxmZ6gIQwuByIba', 'sharono-reillyii0803@gmail.com', '2022-06-17 04:27:57', 'Nam', '0634770438', '317101150', 8, 3, 10, '2016-04-21 18:10:36', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '3xZMXySb4B'),
(69, 'Reta Mante', 'retamante0908', '$2y$10$HDY0CyhJV1sBkgNjcu9K7.Ywn8tUiE4uRsh3zPHqT8NdjIKj7DR/G', 'retamante0908@gmail.com', '2022-06-17 04:27:57', 'Nam', '0124296585', '316477098', 9, 8, 21, '2010-09-18 00:19:10', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'tuJ4MOBsQS'),
(70, 'Aron Orn', 'aronorn0306', '$2y$10$RFKM15PGvc//1QGCAv1gVuO9Bw1YEonidp4YwhwOwUG.aro1N9o/W', 'aronorn0306@gmail.com', '2022-06-17 04:27:57', 'Nam', '0505106566', '361131769', 3, 6, 37, '2011-04-25 10:58:19', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'bUYGhi2gY0'),
(71, 'Priscilla Anderson V', 'priscillaandersonv0703', '$2y$10$8kke.ul.6ePVSw4TDvV91egaFMHLPqmkJVpYwfay5ivJQQ.4qWwMK', 'priscillaandersonv0703@gmail.com', '2022-06-17 04:27:57', 'Nam', '0966721444', '319176881', 7, 3, 31, '2015-10-11 07:25:34', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'jHDP8CPn5W'),
(72, 'Emilio Lakin', 'emiliolakin0905', '$2y$10$cpNkU6qMJO9wL7JeZoR4pef2qWxXsREJYMObqZr1kQLsV2ds7N62W', 'emiliolakin0905@gmail.com', '2022-06-17 04:27:57', 'Nữ', '0037417107', '345630327', 9, 5, 14, '2006-04-06 01:08:13', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'nQGaHc6cGX'),
(73, 'Cleve Lubowitz Sr.', 'clevelubowitzsr.0506', '$2y$10$fGiKyyu297Yuf6UBDpMrCOtNHLZMJ.Me7.G096k9P/j/D5DxaMPcW', 'clevelubowitzsr.0506@gmail.com', '2022-06-17 04:27:57', 'Nam', '0554184723', '328371804', 5, 6, 24, '2003-01-01 07:52:03', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ROFJ4DnK80'),
(74, 'America McDermott', 'americamcdermott0107', '$2y$10$BFxIqZFHPCPmxGiukzYE1OPXuqnWB9uUIv0ltl0QJA8tVy4dzWqZi', 'americamcdermott0107@gmail.com', '2022-06-17 04:27:57', 'Nam', '0768814086', '387851632', 1, 7, 30, '2013-05-31 13:47:11', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '9WGtf3H6T1'),
(75, 'Dr. Josefa Connelly Jr.', 'dr.josefaconnellyjr.0106', '$2y$10$48s/y2O/zAMX74Q8.PwgCuB0POJ1yIsCx/x1iHvc3F3bCztjC9hTi', 'dr.josefaconnellyjr.0106@gmail.com', '2022-06-17 04:27:57', 'Nam', '0314474515', '365798610', 1, 6, 26, '2016-05-28 04:00:44', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'X0cvklIEu4'),
(76, 'Leatha Smith', 'leathasmith0508', '$2y$10$5/b2u/0uUVGglSigzLZIt.AnC1G0BxcbYhWOuBdQl8O09lUZEL8vm', 'leathasmith0508@gmail.com', '2022-06-17 04:27:57', 'Nữ', '0178231171', '343752321', 5, 8, 28, '2012-04-16 04:04:23', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'JAWJBgSvPF'),
(77, 'Ms. Lucie Bartell IV', 'ms.luciebartelliv0206', '$2y$10$Bj/4p5TjVgbZDPTM8nNj.uGz/t3iGjqMFvujsKz4kGsJco7SGwuE.', 'ms.luciebartelliv0206@gmail.com', '2022-06-17 04:27:58', 'Nam', '0552425951', '396213899', 2, 6, 12, '2009-01-21 20:25:07', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'pU31UfmeOf'),
(78, 'Erna Dach', 'ernadach0602', '$2y$10$nJv1hU.IXs19uQTCoqHGeuFHlL97xxDm9doeH/5wcyDFGJlw6vZ.m', 'ernadach0602@gmail.com', '2022-06-17 04:27:58', 'Nữ', '0856733418', '314490650', 6, 2, 29, '2015-12-18 21:50:58', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'HERZWk75KZ'),
(79, 'Mr. Jadon Blick', 'mr.jadonblick0306', '$2y$10$sWn7WxrxLe9xPEOTsibmDuISaWDvqRzNWSW5P8wpIAa0AiZrrAxk.', 'mr.jadonblick0306@gmail.com', '2022-06-17 04:27:58', 'Nữ', '0697385856', '391935301', 3, 6, 17, '2019-09-12 11:55:18', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ivNKVZQwjs'),
(80, 'Morton Ruecker', 'mortonruecker0306', '$2y$10$a6LigDpNdfmexN7N03tG0OKMpBLuB4mVaoTgSkNIWkAFm1DRCXhQS', 'mortonruecker0306@gmail.com', '2022-06-17 04:27:58', 'Nam', '0099196250', '300178239', 3, 6, 1, '2020-03-24 23:16:52', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'h5OkZoXQgE'),
(81, 'Kali Tromp', 'kalitromp0206', '$2y$10$ZySdk5PzaTEV/A29.pyFVuqPmyX0KBv5KNwu7QmGGQodP6mLX9zJG', 'kalitromp0206@gmail.com', '2022-06-17 04:27:58', 'Nữ', '0610821339', '322863251', 2, 6, 29, '2011-10-29 05:10:33', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'kvdItSEiGe'),
(82, 'Dr. Hertha Beahan MD', 'dr.herthabeahanmd0106', '$2y$10$XypuJh2L9bNi.UgrpRFL8.jL1Q5dtWSVT7Lu1QgtctPjdNU6ptFNC', 'dr.herthabeahanmd0106@gmail.com', '2022-06-17 04:27:58', 'Nam', '0113073835', '346562288', 1, 6, 22, '2016-12-17 22:30:48', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ZB9jCSLkOE'),
(83, 'Deron Wilkinson', 'deronwilkinson0904', '$2y$10$xPfbbKwKYZEcp6kKJTYMde3cRsQV6RvgJp3Lkun9uPBBmnlu.Pele', 'deronwilkinson0904@gmail.com', '2022-06-17 04:27:58', 'Nam', '0596971841', '384577436', 9, 4, 4, '2007-02-22 23:04:32', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'hpW3gtF5zs'),
(84, 'Marcia Satterfield', 'marciasatterfield0506', '$2y$10$TO6ZVnavRnlV9KXafPzBiephxjJKAqviVYLyKf.9Udr4t71hf74uy', 'marciasatterfield0506@gmail.com', '2022-06-17 04:27:58', 'Nữ', '0363689523', '344515370', 5, 6, 14, '2002-10-29 07:26:12', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'xTu58CB2vI'),
(85, 'Dr. Haley Stamm', 'dr.haleystamm0408', '$2y$10$aZidHIZ6/r84YbGLHm7E7Oa7ed6dVs8qLSTv7fbCpWWerdG0o3jq2', 'dr.haleystamm0408@gmail.com', '2022-06-17 04:27:58', 'Nữ', '0529711288', '337429621', 4, 8, 2, '2010-08-09 10:40:55', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'kH0o3xXmp8'),
(86, 'Emma Frami', 'emmaframi0706', '$2y$10$3PXixDJ2xHHNRI6wm9PcMu91EIhSUD61PqshUW8600FZMMLT7Adoy', 'emmaframi0706@gmail.com', '2022-06-17 04:27:58', 'Nam', '0061149304', '326636654', 7, 6, 20, '2008-01-17 17:37:52', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'dx8OD4Lx8I'),
(87, 'Lupe Schmeler', 'lupeschmeler0102', '$2y$10$mApVHYekqiu9fx4bvwJCR.rj/Ha9l/MWe.T/9Cxe/72xwXG/Zclk2', 'lupeschmeler0102@gmail.com', '2022-06-17 04:27:58', 'Nam', '0974218815', '399606217', 1, 2, 35, '2012-10-25 15:36:39', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'mGDaCm9IiI'),
(88, 'Caroline Murray', 'carolinemurray0101', '$2y$10$nHnaiWIkqbjVUGWAqeO4YeNamTzMlNG.OiKDnqFzyguWgU3WJRw0u', 'carolinemurray0101@gmail.com', '2022-06-17 04:27:58', 'Nam', '0687041282', '395622241', 1, 1, 2, '2003-07-26 18:12:42', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ZMfJ6VRuyR'),
(89, 'Mr. Baylee Dickens', 'mr.bayleedickens0204', '$2y$10$nI4/Z7wqs255bStl0R304OSzCpLQn/6iGBs9PTi.Oie/IJhx40JFW', 'mr.bayleedickens0204@gmail.com', '2022-06-17 04:27:58', 'Nam', '0280873792', '364492227', 2, 4, 30, '2007-08-26 22:16:16', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 's6AuzBiBT1'),
(90, 'Francesco Gusikowski Jr.', 'francescogusikowskijr.0508', '$2y$10$2giyZpYatmNG5H3iAdHfH.fMod3wAnIXLzirUdtjcz4LPM4vdBVnC', 'francescogusikowskijr.0508@gmail.com', '2022-06-17 04:27:59', 'Nữ', '0833009680', '363669919', 5, 8, 4, '2006-02-13 09:34:15', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'R3j0atBx1B'),
(91, 'Delfina Leffler DDS', 'delfinalefflerdds0902', '$2y$10$VP.E6/BRNakwYatvPUsX6Oe9CI8NK4RQhUbPpglYbj8Fqr5YeOXWi', 'delfinalefflerdds0902@gmail.com', '2022-06-17 04:27:59', 'Nam', '0821140941', '334514119', 9, 2, 31, '2003-09-10 07:23:53', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'nlxZpQtcSi'),
(92, 'Tyreek Corkery', 'tyreekcorkery0803', '$2y$10$Gqjplk9Fb8hmskJWabZmBOjWO50ZkOBmJQHhb5rIJyRZca2OyqrWq', 'tyreekcorkery0803@gmail.com', '2022-06-17 04:27:59', 'Nam', '0791558360', '364771543', 8, 3, 19, '2020-08-04 08:07:37', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '14vJwxL0je'),
(93, 'Waino Fay', 'wainofay0402', '$2y$10$Lk/0SbA04rjpf5mMXIMLQ.DFmfpNc6vrkxeuiDCcDDZlfRMLu1XO.', 'wainofay0402@gmail.com', '2022-06-17 04:27:59', 'Nam', '0425979529', '391305733', 4, 2, 14, '2020-01-09 23:38:10', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'eB4Jmzs76j'),
(94, 'Dean Mayert', 'deanmayert0604', '$2y$10$PVJJlY4lsmcx2j4PYZndieeMFWjVnRH2s7WOWnZY41fdwoukpvlmm', 'deanmayert0604@gmail.com', '2022-06-17 04:27:59', 'Nữ', '0089177825', '386644602', 6, 4, 27, '2019-09-26 14:11:29', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'txo2D7Hmcl'),
(95, 'Dr. Nico Mosciski', 'dr.nicomosciski0507', '$2y$10$SZ7t5T9KvfRSTwup1FTOJeecuY9mIMjutoH35C1i.QEwXb8l5gWGG', 'dr.nicomosciski0507@gmail.com', '2022-06-17 04:27:59', 'Nam', '0689018205', '337797871', 5, 7, 31, '2003-05-21 05:34:18', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'zKLxE6QPfb'),
(96, 'Heloise Larson', 'heloiselarson0705', '$2y$10$3CIRaqKprQdCPcdlxUqPkuXWbSG8W7XK1uKKcEHEL5n50Eh0q01Ai', 'heloiselarson0705@gmail.com', '2022-06-17 04:27:59', 'Nam', '0078854747', '399394828', 7, 5, 11, '2013-01-12 04:51:32', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '121iVvbEze'),
(97, 'Sydnee Weber V', 'sydneeweberv0305', '$2y$10$HPXZUTLwHKHXaX.zJ16SyusY4no5n8xMUtWXpySE7lVlRJr4BdE2i', 'sydneeweberv0305@gmail.com', '2022-06-17 04:27:59', 'Nữ', '0201693801', '336010579', 3, 5, 13, '2008-06-13 20:38:36', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, '1dkLKgU5iD'),
(98, 'Dr. Lucius Wehner IV', 'dr.luciuswehneriv0902', '$2y$10$L.aq0FoLP0BlGbVq7fhcCOKFAUs9rMLQe.HCNvOUcID85ENgljGiK', 'dr.luciuswehneriv0902@gmail.com', '2022-06-17 04:27:59', 'Nữ', '0076856083', '388519449', 9, 2, 23, '2017-03-02 17:17:15', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'TDlSGjY5f0'),
(99, 'Josiane Kunde', 'josianekunde0902', '$2y$10$LIfqUNG0XluOUvZTJ.IHhehIVo2ACIl2Sz1VUFKWtWoPEuZyKFwU.', 'josianekunde0902@gmail.com', '2022-06-17 04:27:59', 'Nam', '0557828250', '386608458', 9, 2, 28, '2005-10-16 10:07:59', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ahNm8dSoHu'),
(100, 'Sarah Olson', 'saraholson0508', '$2y$10$p4qphXSsVr/qpfNZwUWbXudyBsT6xFDFtnAUyNtfNc8bn1HQ4lGBq', 'saraholson0508@gmail.com', '2022-06-17 04:27:59', 'Nữ', '0555041647', '359864005', 5, 8, 7, '2003-05-08 07:22:22', 0, '2022-06-17 04:27:59', '2022-06-17 04:27:59', NULL, 'ZXX7XVoR4f'),
(101, 'Lê Ngọc Hở', 'lengocho1106', '$2y$10$ZN5iObVJvLKRB8Si/PN6hOpFue33OQ6Dh4anXrXJJeQ72J4AoPiwi', 'johnsmith2001it@gmail.com', NULL, 'Nam', '0589124204', '058912420', 1, 1, 15, '2022-06-12 00:00:00', 0, '2022-06-17 06:36:49', '2022-06-17 06:36:49', NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `tour_registrations`
--
ALTER TABLE `tour_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
