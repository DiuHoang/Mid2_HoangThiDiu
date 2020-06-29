-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2020 lúc 03:46 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(6, 6, '2020-06-24', 28, 'COD', 'aaaaaaaaaaaaa', '2020-06-24 03:18:47.0', '2020-06-24 03:18:47.0'),
(12, 12, '2020-06-24', 28, 'COD', 'f', '2020-06-24 03:29:39.0', '2020-06-24 03:29:39.0'),
(13, 13, '2020-06-24', 6, 'COD', 'fgf', '2020-06-24 03:30:26.0', '2020-06-24 03:30:26.0'),
(14, 14, '2020-06-24', 5, 'COD', 'bbbbb', '2020-06-24 03:32:56.0', '2020-06-24 03:32:56.0'),
(15, 15, '2020-06-24', 6, 'ATM', 'huong', '2020-06-24 03:36:28.0', '2020-06-24 03:36:28.0'),
(16, 16, '2020-06-24', 10, 'COD', 'Hien Honhg Diu', '2020-06-24 03:50:05.0', '2020-06-24 03:50:05.0'),
(17, 17, '2020-06-26', 10, 'COD', 'Friends', '2020-06-26 06:40:06.0', '2020-06-26 06:40:06.0'),
(18, 18, '2020-06-26', 7, 'ATM', 'Quan', '2020-06-26 06:43:46.0', '2020-06-26 06:43:46.0'),
(19, 19, '2020-06-29', 16, 'ATM', 'Alone', '2020-06-29 01:26:46.0', '2020-06-29 01:26:46.0'),
(20, 20, '2020-06-29', 5, 'ATM', 'a', '2020-06-29 01:31:33.0', '2020-06-29 01:31:33.0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_bill` bigint(20) UNSIGNED NOT NULL,
  `quanity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id`, `id_product`, `id_bill`, `quanity`, `unit_price`, `created_at`, `updated_at`) VALUES
(3, 1, 13, 1, 1, '2020-06-24 03:30:26.0', '2020-06-24 03:30:26.0'),
(5, 7, 15, 1, 5, '2020-06-24 03:36:28.0', '2020-06-24 03:36:28.0'),
(6, 4, 16, 1, 1, '2020-06-24 03:50:05.0', '2020-06-24 03:50:05.0'),
(7, 5, 16, 1, 4, '2020-06-24 03:50:05.0', '2020-06-24 03:50:05.0'),
(11, 7, 17, 1, 5, '2020-06-26 06:40:07.0', '2020-06-26 06:40:07.0'),
(12, 3, 18, 1, 6, '2020-06-26 06:43:46.0', '2020-06-26 06:43:46.0'),
(13, 9, 19, 1, 7, '2020-06-29 01:26:46.0', '2020-06-29 01:26:46.0'),
(17, 5, 20, 1, 4, '2020-06-29 01:31:33.0', '2020-06-29 01:31:33.0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(6, 'Diu', 'nữ', 'diuhoang2018@gmail.com', 'Quang Binh', '1234567890', 'aaaaaaaaaaaaa', '2020-06-24 03:18:47.0', '2020-06-24 03:18:47.0'),
(12, 'My Love', 'nam', 'fhickle@gmail.com', 'Hue', '1234567890', 'f', '2020-06-24 03:29:39.0', '2020-06-24 03:29:39.0'),
(13, 'Anh', 'nam', 'anh2018@gmail.com', 'Quang Binh', '1234567890', 'fgf', '2020-06-24 03:30:26.0', '2020-06-24 03:30:26.0'),
(14, 'Dfg', 'nữ', 'hborer@prohaska.com', 'Quang Binh', '1234567890', 'bbbbb', '2020-06-24 03:32:56.0', '2020-06-24 03:32:56.0'),
(15, 'Huong', 'nam', 'huong@gmail.com', 'Quang Binh', '1234567890', 'huong', '2020-06-24 03:36:28.0', '2020-06-24 03:36:28.0'),
(16, 'Hien Hoang', 'nữ', 'hienhoang@gmail.com', 'Le Thuy - Quang Binh', '0931378560', 'Hien Honhg Diu', '2020-06-24 03:50:05.0', '2020-06-24 03:50:05.0'),
(17, 'Friends', 'nam', 'diuhoang2018@gmail.com', 'Quang Binh', '1234567890', 'Friends', '2020-06-26 06:40:06.0', '2020-06-26 06:40:06.0'),
(18, 'Quan', 'nữ', 'quan@gmail.com', 'Hue', '0931378560', 'Quan', '2020-06-26 06:43:46.0', '2020-06-26 06:43:46.0'),
(19, 'Alone', 'nữ', 'hoang@gmail.com', 'Quang Binh', '1234567890', 'Alone', '2020-06-29 01:26:46.0', '2020-06-29 01:26:46.0'),
(20, '2', 'nam', 'hoang@gmail.com', 'Hue', '1234567890', 'a', '2020-06-29 01:31:33.0', '2020-06-29 01:31:33.0');

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
(25, '2020_06_08_094007_create_news_table', 1),
(26, '2020_06_08_094059_create_users_table', 1),
(27, '2020_06_08_094136_create_slides_table', 1),
(28, '2020_06_08_094231_create_customers_table', 1),
(29, '2020_06_08_094301_create_bills_table', 1),
(30, '2020_06_08_094349_create_type_products_table', 1),
(31, '2020_06_08_094424_create_products_table', 1),
(32, '2020_06_08_094602_create_bill_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `promotion_price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Elenor Krajcik Sr.', 6, 'Ad ratione eum eligendi accusamus. Esse laborum deleniti doloribus.', 8.00, 1.00, '1.jpg', 1, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(2, 'Ronaldo Torphy', 11, 'Iure et architecto accusamus consequatur. Corporis omnis voluptatem atque rerum rerum perferendis. Doloribus qui commodi voluptatem ipsam voluptatem aut.', 9.00, 7.00, '2.jpg', 0, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(3, 'Turner Gleason I', 6, 'Voluptatibus quos cumque consequatur consequatur eius illo tenetur non. Doloremque cupiditate culpa et. In aut tenetur quae quis corporis quae qui. Et ex sunt incidunt error. Id dicta qui sunt esse.', 2.00, 6.00, '3.jpg', 1, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(4, 'Jamie Satterfield', 2, 'Corporis illum eaque ut autem ducimus quis voluptas. Quo sint molestiae iure delectus rem culpa. Non maxime quae et labore magnam mollitia. Quis animi molestiae dolorem et est doloribus placeat.', 0.00, 1.00, '4.jpg', 1, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(5, 'Estrella Grimes', 10, 'Minima ad commodi corporis id. Quasi mollitia autem ut quia. Rerum voluptatem aperiam id. Ab illo eveniet rem nulla et. Est aut asperiores perferendis eum. At maxime quo et nihil.', 4.00, 4.00, '5.jpg', 1, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(6, 'Jared Lebsack', 4, 'Beatae dolorem quibusdam pariatur asperiores dignissimos sequi. Itaque exercitationem voluptatem error maxime voluptatum ut. Aut assumenda et odio. Eveniet tenetur voluptatem eveniet non.', 2.00, 9.00, '6.jpg', 0, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(7, 'Dr. Ignatius Howe', 12, 'Quod consequatur expedita recusandae enim quam atque. Officiis excepturi quia autem ut alias. Similique et architecto debitis et.', 5.00, 5.00, '7.jpg', 1, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(8, 'Katlynn Casper', 8, 'Tempora deserunt dicta quaerat ut. Placeat omnis libero aut. Non assumenda ex tempora quis consequatur eaque. Quae quo consequatur perferendis.', 1.00, 9.00, '8.jpg', 0, '2020-06-24 03:03:13.0', '2020-06-24 03:03:13.0'),
(9, 'Prof. Otilia Ratke', 6, 'Sint esse maiores eligendi harum. Animi soluta est ut consequatur delectus quae nihil. Cumque totam ut illo.', 7.00, 7.00, '9.jpg', 0, '2020-06-24 03:03:14.0', '2020-06-24 03:03:14.0'),
(10, 'Frank Fritsch', 4, 'Eos quaerat voluptas quia nam. Sint voluptates rem aut ipsam occaecati reprehenderit ab culpa. Sed laudantium tenetur pariatur animi veniam iure. Velit mollitia dignissimos aut aut numquam unde et.', 4.00, 7.00, '10.jpg', 0, '2020-06-24 03:03:14.0', '2020-06-24 03:03:14.0'),
(11, 'Loma Dooley', 1, 'Iste fugiat iusto doloribus ut ut. Enim molestiae quis repellendus nam. Ut sint sunt reiciendis veritatis nulla tempore eos. Impedit ducimus impedit sapiente vel ea natus.', 4.00, 4.00, '11.jpg', 0, '2020-06-24 03:03:14.0', '2020-06-24 03:03:14.0'),
(12, 'Tremaine Boehm', 8, 'Sed quis fugit molestiae in recusandae ducimus deserunt aliquam. Delectus perferendis quo illo mollitia facere. Recusandae velit mollitia eum molestiae.', 8.00, 4.00, '12.jpg', 0, '2020-06-24 03:03:14.0', '2020-06-24 03:03:14.0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nisi amet occaecati cumque ut ut et magni.', 'banner1.jpg', NULL, NULL),
(2, 'Voluptatem vel sint dolorem optio quia.', 'banner2.jpg', NULL, NULL),
(3, 'Dolor delectus qui autem aliquam est.', 'banner3.jpg', NULL, NULL),
(4, 'Ut veritatis qui eveniet eos non deleniti itaque.', 'banner4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Reyes Pacocha DVM', 'Numquam ut repellat est numquam odio provident et fuga. Pariatur repudiandae aut qui ullam. Culpa quod ut architecto accusamus blanditiis. Nesciunt temporibus rem est ex aut.', '1.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(2, 'Angela Mohr', 'Commodi quia et et est minus et animi. Rerum et quaerat enim sequi quia mollitia omnis.', '2.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(3, 'Kenton Bergstrom I', 'Consectetur quidem quam quisquam id. Dignissimos et ea asperiores impedit. Provident iste alias impedit voluptatem vel consequuntur. Voluptas commodi velit numquam nostrum.', '3.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(4, 'Ms. Hollie Kohler', 'Delectus reprehenderit aut asperiores hic saepe ea nemo. Tempore harum alias laborum voluptatem sed voluptatibus.', '4.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(5, 'Maritza Medhurst', 'Doloribus quis impedit eos harum quaerat. Doloribus delectus nobis nisi aut enim enim nobis. Nostrum dolor et quod asperiores quas atque.', '5.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(6, 'Titus Tremblay', 'Labore velit natus dolor repudiandae qui quam non. Qui et facere harum quos voluptatem. Qui voluptas enim non reprehenderit.', '6.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(7, 'Miss Carli Haag', 'Sunt et vel reprehenderit ipsum dolorum earum dolorem. Eos possimus voluptas tempora officia debitis. Aut commodi sunt laudantium.', '7.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(8, 'Tyson Hermann', 'Ipsum et laboriosam sunt nihil dolor. Quidem illo ex quis eos quis incidunt fugit quis. Nihil laudantium inventore provident aut accusamus dolorum. Et nulla quae quidem officiis ut ab quis.', '8.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(9, 'Miss Aditya Connelly', 'Aut repellendus temporibus asperiores itaque libero. Neque velit magnam dignissimos illum. Eligendi temporibus autem nostrum ea nemo.', '9.jpg', '2020-06-24 03:03:12', '2020-06-24 03:03:12'),
(10, 'Jermaine Torphy', 'Enim sint quia qui quisquam incidunt rerum ducimus. Sint fuga consequatur voluptas rerum sunt voluptatem. Et doloremque consequatur itaque explicabo quis aut.', '10.jpg', '2020-06-24 03:03:13', '2020-06-24 03:03:13'),
(11, 'Una Bruen', 'Doloremque natus voluptatibus voluptatem doloribus enim officiis aliquam atque. Maiores nesciunt et perspiciatis ut harum. Porro dolorem nihil a ipsam accusantium quae. Dolore dolor qui repudiandae.', '11.jpg', '2020-06-24 03:03:13', '2020-06-24 03:03:13'),
(12, 'Izaiah Kilback', 'Assumenda est in in ab quia voluptate in aliquam. Illum distinctio cupiditate delectus necessitatibus assumenda necessitatibus reiciendis. Aperiam sint architecto doloribus omnis eveniet.', '12.jpg', '2020-06-24 03:03:13', '2020-06-24 03:03:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Thuat Thuat', 'thuat@gmail.com', '$2y$10$ceS.QyBoag5pwvV0cxjkz.PQ1GctuSAgP6I19sVf63bxwe3z6rrEi', 'thuatthuat', '2020-06-26 07:41:25.0', '2020-06-26 07:41:25.0'),
(7, 'Hoang Thi Diu', 'hoang@gmail.com', '$2y$10$tjb7sAN7m/AmMfC9MzbqTuIqhoDgOzhi85eWgHjy6vfjibbvg47Oe', 'hoangdiu123', '2020-06-26 07:54:08.0', '2020-06-26 07:54:08.0'),
(8, 'Hien Hoang', 'hienhoang@gmail.com', '$2y$10$bh0dMzulyUjLAZ3N7E6pFuWGZ0ECXcdanIKtbxSHdurdfkP8uB0Iy', 'hienhoang000', '2020-06-26 08:10:59.0', '2020-06-26 08:10:59.0'),
(9, 'Hoang Thi Diu', 'diuhoang2018@gmail.com', '$2y$10$3UJCwCvxJonAA8KpIn5nS.Vj/GXQX9pwClWDWMVvZbe8s0vbvib.K', 'hoangdiu000', '2020-06-29 01:22:47.0', '2020-06-29 01:22:47.0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_id_customer_foreign` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_details_id_product_foreign` (`id_product`),
  ADD KEY `bill_details_id_bill_foreign` (`id_bill`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_id_bill_foreign` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_details_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
