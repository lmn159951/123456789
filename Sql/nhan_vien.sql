-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2022 lúc 10:19 AM
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
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ma_nhan_vien` bigint(20) UNSIGNED NOT NULL,
  `ten_nhan_vien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_tai_khoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmnd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_phong_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_chuc_vu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_don_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_vao_lam` datetime NOT NULL,
  `la_quan_tri` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma_nhan_vien`, `ten_nhan_vien`, `ten_tai_khoan`, `mat_khau`, `email`, `gioi_tinh`, `so_dien_thoai`, `cmnd`, `ma_phong_ban`, `ma_chuc_vu`, `ma_don_vi`, `ngay_vao_lam`, `la_quan_tri`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Meda Koch', 'medakoch2004', '$2y$10$YvgxRQuVdzj/OUsDkW/73OBdYt2cLP4Z8y33u0D.6K1bjG6ZG7jxi', 'cruickshank.isai@hotmail.com', 'Nam', '0204359797', '343300654', '4', '4', '20', '2014-10-25 06:52:13', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(2, 'Prudence Kilback', 'prudencekilback1611', '$2y$10$u447hej70Ok1WEPs2YwHZev0G/JTeCdwFDwJ3D2jhtjRNz4nEU9Z6', 'cartwright.randall@hotmail.com', 'Nam', '0594466623', '390453869', '11', '27', '16', '2020-08-22 14:14:01', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(3, 'Adrien Carter III', 'adriencarteriii2104', '$2y$10$AeMYn0MIMbZEwcxYWCdrmODsS0w17YwbNr8BXv1aTf7nI6DzSbKXS', 'verdie32@gmail.com', 'Nữ', '0103208349', '350491462', '4', '7', '21', '2011-01-19 23:29:47', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(4, 'Prof. Kadin Tromp', 'prof.kadintromp1912', '$2y$10$0WPgwtg3D7GPeR9q/SmPPOTPfU2/ym76dl8tDo5f4oflsQMijXsti', 'schamberger.antonietta@hotmail.com', 'Nam', '0778373538', '375839048', '12', '35', '19', '2007-10-15 15:28:26', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(5, 'Layla Turner PhD', 'laylaturnerphd1606', '$2y$10$YslAOwLGuFcvlXToA.6bmuus9KiYBbejqaVHtKo4x2TwQ4hhfo7Vi', 'cheller@hotmail.com', 'Nữ', '0306666003', '372031071', '6', '9', '16', '2006-10-31 04:11:57', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(6, 'Braxton Roob', 'braxtonroob1612', '$2y$10$h0WOoCfUJCQNUS.cjWxyDej91deGGjnUM5gq7xyhusTh2kQ7d4U9e', 'sarah.wilkinson@yahoo.com', 'Nữ', '0172579222', '360009666', '12', '32', '16', '2009-03-15 05:11:49', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(7, 'Myles Flatley', 'mylesflatley1607', '$2y$10$xIhHX8lPGNNtW3iyTb3v3OvNXTLoV75xeCGpxohzk45WrLyK7YaIi', 'brian.beatty@yahoo.com', 'Nữ', '0495662459', '372718716', '7', '31', '16', '2004-10-22 23:37:47', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(8, 'Janice McDermott', 'janicemcdermott2207', '$2y$10$KfYJBbUC/kZJkK29n8fcfumgLUohLZmUqQWxBMicXAyaMiSu.gaJq', 'ugoyette@hotmail.com', 'Nữ', '0943944620', '331133015', '7', '33', '22', '2015-08-30 01:15:36', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(9, 'Sammie Anderson', 'sammieanderson1611', '$2y$10$LqYXDOHd38ZAzdHtZpsRDeenIz/7zgpxTs5v.7Zn9rmcjVeoFQIM2', 'koelpin.madisen@yahoo.com', 'Nam', '0488726738', '365325442', '11', '25', '16', '2005-08-11 03:42:03', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(10, 'Eileen Von', 'eileenvon1808', '$2y$10$fvEU0JKaNja6nTfj2nuyS.JEyXi6L0B1UmyqBgZzHWe5dK3nX3M1q', 'tremblay.hosea@gmail.com', 'Nam', '0552365100', '379294082', '8', '4', '18', '2006-08-08 07:10:13', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(11, 'Cloyd O\'Conner II', 'cloydo-connerii2109', '$2y$10$DGEt25.WLwDz0ES7y.yNqO9Si9bgKyqm.nRyQkETno6E6a9qdG9DS', 'pkoch@gmail.com', 'Nam', '0656647716', '309943083', '9', '11', '21', '2004-12-16 12:21:29', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(12, 'Briana Aufderhar MD', 'brianaaufderharmd2212', '$2y$10$COTGBsaWMBq/gQ6LS7tdOeeQnJ5AG5wOAQZPPhG7PxRbU0.7.TrJi', 'larissa.dare@gmail.com', 'Nữ', '0456893734', '302758476', '12', '17', '22', '2009-09-26 06:59:17', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(13, 'Thalia Donnelly', 'thaliadonnelly1806', '$2y$10$2u/pHShVZP2R5MEl1DhBau7li9byKsPFckYhTRJFaYBtUSDhoaC12', 'tod90@yahoo.com', 'Nữ', '0992392730', '312215970', '6', '30', '18', '2004-09-10 02:23:02', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(14, 'Magdalena Stanton', 'magdalenastanton1506', '$2y$10$Uz5JNFUl4fEUvrVlMm8gCOJsMvRfoYKXx1OvWtYd.Vl83OP9WpN2e', 'reyes.schowalter@gmail.com', 'Nam', '0525958345', '368103223', '6', '24', '15', '2005-10-19 02:51:04', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(15, 'Emma Herman', 'emmaherman1711', '$2y$10$vFsEgmMy2m9r/nixS4EzVuj6wqUskPfMUqUPkOAulQeJbQB42V5R.', 'sleffler@yahoo.com', 'Nam', '0260437461', '339138820', '11', '30', '17', '2020-08-17 18:01:25', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(16, 'Dr. Ashtyn Lesch Sr.', 'dr.ashtynleschsr.1810', '$2y$10$Vbjfb/qa7162k0FFJzy5s.NWmDaU9UrrwpoYnb.S8dhxJ8T8JotO6', 'kstark@hotmail.com', 'Nam', '0787292972', '354404415', '10', '31', '18', '2015-02-25 11:13:35', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(17, 'Ottilie Johns Jr.', 'ottiliejohnsjr.2108', '$2y$10$w7aUf8c6ggl3FEn5bgYUK.5UfiypesrtZ5hXTRnXbQA8YUGbhirAC', 'golden62@hotmail.com', 'Nam', '0342973446', '340800483', '8', '29', '21', '2005-03-18 23:18:35', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(18, 'Lysanne Lynch', 'lysannelynch2212', '$2y$10$c8Yt4h5j0I6mv8WGnJk9duIYLCd3Y0S7XXK9ZosaKrRe4A0QyWqZy', 'hhuel@gmail.com', 'Nam', '0917071537', '340036178', '12', '35', '22', '2022-06-11 01:30:34', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(19, 'Samanta Jaskolski', 'samantajaskolski1912', '$2y$10$w1yE1FWhFKYJrnTS5Mo9Ou3ZZQZTOPUfPfFbIjbGfJgRYGBBy6dkW', 'justyn.johnston@gmail.com', 'Nam', '0739621222', '323201144', '12', '23', '19', '2003-09-05 03:00:40', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(20, 'Isadore Collins', 'isadorecollins2006', '$2y$10$FpCbYOo70ItT4.IFCejdOeeb6h/1KI0C1wtwXsMkI3fggg1yT35Qq', 'gerald42@hotmail.com', 'Nam', '0574087978', '307708202', '6', '14', '20', '2017-07-29 03:59:47', 0, '2022-06-16 07:58:12', '2022-06-16 07:58:12', NULL),
(21, 'Miss Rachelle Swift DDS', 'missrachelleswiftdds1907', '$2y$10$LCF/vkJvK4XZBY8dSDufTeKBd.rB6M26EAZUBNBFKKL7qG7kUElF2', 'olson.yesenia@gmail.com', 'Nữ', '0773881926', '349925373', '7', '11', '19', '2012-05-16 01:02:59', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(22, 'Dr. Maribel Tillman', 'dr.maribeltillman2110', '$2y$10$fE9aaieQnA6UdfE1By4/XeTINsO9TeN/bp9IQ87Nde5zYPi32GHWK', 'yschuppe@hotmail.com', 'Nam', '0851716194', '354362757', '10', '26', '21', '2021-11-28 20:44:14', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(23, 'Lucienne Hartmann MD', 'luciennehartmannmd2105', '$2y$10$gZ1lztXKcMc6QQTmiwfHTucsmZyR/CItilS05BrUTm0m4N.EQXPxi', 'moore.alexie@yahoo.com', 'Nam', '0769976100', '325998472', '5', '37', '21', '2008-07-04 00:26:31', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(24, 'Micheal Mante', 'michealmante1512', '$2y$10$ipxvJZYmU1IRiuP37OgLJe/iO0N/E/ASN0pxTHVIwi/oKoyeK99hO', 'harber.jaylan@hotmail.com', 'Nam', '0946565246', '340520816', '12', '8', '15', '2012-07-05 21:30:10', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(25, 'Lilyan Bogan', 'lilyanbogan1609', '$2y$10$tHxTT74/FBmEj3CrqSaIMu/ZIge7LP5.mul0nmg37GGvdX2zm.08e', 'weimann.nikko@yahoo.com', 'Nữ', '0362484718', '360465548', '9', '23', '16', '2018-12-30 13:02:21', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(26, 'Keara Toy II', 'kearatoyii1812', '$2y$10$AQx.qPahYCHIFW14zjhNyOMmeeK5Yqfua30J1lfKKQ8J4VpbnZ49K', 'tgerlach@gmail.com', 'Nữ', '0287219632', '326638691', '12', '21', '18', '2009-08-03 19:52:15', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(27, 'Murray Stamm MD', 'murraystammmd1610', '$2y$10$kULhbh2UoajGwqzd5PXGu.n611jguRsUaDBH/gYWtGnPnhm2RDWRW', 'ugreenfelder@gmail.com', 'Nữ', '0771209545', '319302814', '10', '22', '16', '2009-08-15 11:45:26', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(28, 'Mr. Ismael Goldner I', 'mr.ismaelgoldneri1904', '$2y$10$iMJktYD3u9PCcW4Gt0CU2Ozt6SEVIrl.9zM8hLS30qqmwv.4pjMdC', 'serenity02@hotmail.com', 'Nữ', '0717424474', '312184783', '4', '19', '19', '2007-11-11 08:07:13', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(29, 'Dr. Elroy Schulist DVM', 'dr.elroyschulistdvm2006', '$2y$10$jVPKQmLs3nl5KCIwPNRELeLbx6wT84AS2nVdHMqQ0DJCHKRXXgxT6', 'whoppe@hotmail.com', 'Nam', '0812957424', '350114157', '6', '33', '20', '2004-12-20 11:25:52', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(30, 'Dr. Zakary Schuppe Sr.', 'dr.zakaryschuppesr.1612', '$2y$10$nu/H3jCLrCpvv1.RBcqhhePpRoNKSy9t/hOWj19rE32d7QAaNFBTG', 'ggoodwin@yahoo.com', 'Nam', '0720037108', '393311971', '12', '20', '16', '2003-10-01 16:39:33', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(31, 'Mr. Paolo Corwin II', 'mr.paolocorwinii1504', '$2y$10$js6g6ipFZs5EHg7X3ouu0upCdzvfGzWXryv/tJhU3RQJNaybINdpm', 'candida.bergstrom@yahoo.com', 'Nam', '0173972096', '301761515', '4', '24', '15', '2016-10-11 12:55:04', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(32, 'Miss Nettie Beahan DVM', 'missnettiebeahandvm2211', '$2y$10$kNAujeemmdUlEyJp0txWU.WfAor5C8GiJ1X6Jgy/F0b.xs/Pyk1ba', 'bechtelar.madonna@hotmail.com', 'Nam', '0109837308', '323322135', '11', '7', '22', '2012-09-03 07:55:33', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(33, 'Mrs. Myrtice Kautzer MD', 'mrs.myrticekautzermd1808', '$2y$10$WxwfNSGwvhHQSrL1p3ANHemvtMhNrZmzHxzIT6r/gBSSM6F71tVTC', 'rprosacco@yahoo.com', 'Nam', '0003550479', '373477094', '8', '13', '18', '2011-11-27 07:40:37', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(34, 'Rosalinda Cronin PhD', 'rosalindacroninphd2004', '$2y$10$.L.dfxYAWg0UbXpnN.GujuOnazwsZXyqzSeOnzZAvDJ5eYYSGlP0m', 'fabiola31@hotmail.com', 'Nữ', '0933945752', '360135865', '4', '4', '20', '2020-05-05 10:19:49', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(35, 'Hortense Hessel II', 'hortensehesselii1904', '$2y$10$wUCaPR0k7pyXmRxiwKfubePoeBzFkn9/ZmSEgBWSOFnPmDpu9Y.nK', 'waters.eula@yahoo.com', 'Nam', '0459140173', '350423099', '4', '22', '19', '2010-01-25 09:40:15', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(36, 'Candido Kris V', 'candidokrisv1904', '$2y$10$gT.b.DjdTk4zxJStBWH7TeyxhDT7yx6OkKJQZnxqhNEsQ2edazPd.', 'sedrick76@yahoo.com', 'Nam', '0413068265', '334874241', '4', '31', '19', '2006-09-04 20:36:54', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(37, 'Cecilia Hessel', 'ceciliahessel2012', '$2y$10$RfxoV19GrP9M03O5WV90KemZJeLAwo1Yq77.EX0CwxDic3Oz.w8va', 'breanne.lockman@gmail.com', 'Nữ', '0586893189', '380639814', '12', '9', '20', '2012-11-04 11:33:16', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(38, 'Ilene Powlowski', 'ilenepowlowski1511', '$2y$10$GLpdCqjpUgyYaZ2pvvYbbubLBDekm/ZLXaClLMhJZyIYMJqLUutGS', 'katharina72@gmail.com', 'Nam', '0702874632', '347572714', '11', '4', '15', '2007-10-02 07:35:21', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(39, 'Prof. Meggie Prosacco Sr.', 'prof.meggieprosaccosr.2208', '$2y$10$YabhHgxAVQryN9TYzNm1ruvH7lL78AmzRdEIa.s1t/2eGNp0LY.GS', 'eliezer.casper@yahoo.com', 'Nam', '0195001058', '304395839', '8', '35', '22', '2019-10-18 12:36:46', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(40, 'Prof. Mikel Feeney MD', 'prof.mikelfeeneymd2110', '$2y$10$HeKTylGxBt9Fh4bxMJDd6.DEuPB5iP51dj0U1bw0I60wVJ4skarm2', 'hugh67@yahoo.com', 'Nam', '0170779800', '373274283', '10', '6', '21', '2016-09-08 18:22:09', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(41, 'Johan Rath', 'johanrath1710', '$2y$10$4btrUHCJ2agU1Q6exAYIueLdylMzogewNwxovVspX/AYihxiZpE4W', 'matilda.koepp@yahoo.com', 'Nam', '0809687987', '334217177', '10', '5', '17', '2009-07-03 01:11:05', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(42, 'Prof. Reba Harris DDS', 'prof.rebaharrisdds1605', '$2y$10$ZWeeJj8ZKsuuNkwPl1Hi5uE7B8kOp5sH7uML/bqp6nkPs9VGdkfe2', 'ethompson@hotmail.com', 'Nữ', '0384840908', '381262372', '5', '20', '16', '2020-03-04 18:17:16', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(43, 'Malachi Ritchie', 'malachiritchie2109', '$2y$10$k/.OedkQJxr12E5G6KEMguYTu3sJ5eGMa5T0X/uF50pukGnXscsFq', 'ukuhn@yahoo.com', 'Nam', '0004913393', '380498445', '9', '26', '21', '2003-04-28 11:53:38', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(44, 'Savannah Toy', 'savannahtoy2205', '$2y$10$9mcUF6eiTOJ1FYF.5FJRQeoUhcdrVH1DqwxsHnWepG7vpeyMTbiQu', 'georgiana.ankunding@hotmail.com', 'Nữ', '0620651431', '312448101', '5', '37', '22', '2017-07-26 07:22:40', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(45, 'Marjolaine Ruecker V', 'marjolainerueckerv1710', '$2y$10$8z410LTzSHFT6ya1u0l4E.bLZeg2uqeZ5R/RT6LjR/piMFXiBgK9u', 'isobel82@gmail.com', 'Nữ', '0676644569', '362284162', '10', '34', '17', '2020-05-04 13:56:12', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(46, 'Mellie Green IV', 'melliegreeniv2105', '$2y$10$cLlkXBLbmyPN/HdllVPzKeL6LgkviNxGI2C9G22KHUzYTVZMEsWhe', 'beatty.maddison@yahoo.com', 'Nam', '0156035941', '366456656', '5', '11', '21', '2021-05-25 15:17:20', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(47, 'Mr. Percy Strosin DDS', 'mr.percystrosindds1708', '$2y$10$WdNYaVYgzenFPJ/gkGL4JOj6Ww8Y1nJxzM8sEQOPeFxarMnSqwXlq', 'tlabadie@hotmail.com', 'Nữ', '0813908410', '399337242', '8', '33', '17', '2020-05-28 14:34:37', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(48, 'Dr. Grayce Hoeger MD', 'dr.graycehoegermd2005', '$2y$10$3lWkmj3pGaGndsnARbs85.Z3q7NmSdHeS4SbQPBV7/4/jBQZbYmj.', 'rolfson.alexandrine@gmail.com', 'Nam', '0381543884', '301520252', '5', '36', '20', '2010-05-20 05:39:43', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(49, 'Prof. Louisa Schowalter PhD', 'prof.louisaschowalterphd1508', '$2y$10$OlnPGrstAZwvzr6Z8DDBReuTSOQCosLCC82jP4iCD4UDGRAbfmDOi', 'swyman@gmail.com', 'Nam', '0680029504', '355909160', '8', '11', '15', '2019-07-18 09:04:02', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL),
(50, 'Nicolas Mueller', 'nicolasmueller1508', '$2y$10$atXNzwr0Gxb.P6c/aJqMuOu0n3tk.4ddiN0dLkSrZr5JnFhcjufvW', 'wberge@gmail.com', 'Nam', '0239364961', '370280983', '8', '15', '15', '2022-06-04 06:11:36', 0, '2022-06-16 07:58:13', '2022-06-16 07:58:13', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ma_nhan_vien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `ma_nhan_vien` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
