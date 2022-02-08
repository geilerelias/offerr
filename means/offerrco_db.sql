-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2021 at 12:51 PM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offerrco_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_path_cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_path_profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_acronym` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_subcategory` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `business_path_cover_image`, `business_path_profile_image`, `business_name`, `business_acronym`, `business_email`, `business_phone`, `business_website`, `business_department`, `business_city`, `business_address`, `business_subcategory`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'business/business-image-cover-1627099945.jpg', 'business/business-image-profile-1627099945.jpg', 'Comercio #1', 'undefined', 'comercio1@mail.com', '17651765113', 'null', 'Colombia', 'Barrancabermeja', 'calle 31 # 23 - 45', 'null', 1, 1, '2021-06-24 09:12:06', '2021-07-24 04:12:25'),
(2, NULL, NULL, 'Comercio #2', 'undefined', 'comercio2@mail.com', '191691689869', NULL, 'Colombia', 'Riohacha', 'CALLE 32 # 23-45', NULL, 1, 2, '2021-06-24 09:14:09', '2021-06-24 09:14:09'),
(3, 'business/business-image-cover-1625015386.png', 'business/business-image-profile-1625015386.jpg', 'kjhghj', 'undefined', 'q@gmail.com', '1204578', 'null', 'Colombia', 'Valledupar', 'cll23', NULL, 2, 1, '2021-06-25 10:35:56', '2021-06-30 01:09:46'),
(4, 'business/business-image-cover-1624667746.jpg', 'business/business-image-profile-1624667746.jpg', 'Coma rico', 'undefined', 'Ivanmejia-07@hotmail.com', '3002789024', 'Comarico. Co', 'Colombia', 'Barranquilla', 'Udjdkkdkd', NULL, 3, 1, '2021-06-26 00:34:20', '2021-06-26 00:35:47'),
(5, 'null', 'business/business-image-profile-1630841907.jpg', 'Ufudjdidid', 'undefined', 'Ivanmejia-07@hotmail.com', '1263', 'Yuiii', 'Amazonas', 'Leticia', 'Ydydjzizizozoz', '[]', 3, 4, '2021-07-29 15:13:56', '2021-09-05 11:38:28'),
(6, NULL, NULL, 'Tecnosistem', 'undefined', 'tecnosistem@gmail.com', '5803070', NULL, 'Cesar', 'Agustín Codazzi', 'cll 8# 34b 20', '[]', 2, 5, '2021-09-04 12:55:31', '2021-09-04 12:55:31'),
(7, NULL, NULL, 'comercio23', 'undefined', 'comercio23@gmail.com', '3214567890', NULL, 'Arauca', 'Fortul', 'cll23', '[]', 2, 4, '2021-09-23 01:26:39', '2021-09-23 01:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_path_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_path_images`, `created_at`, `updated_at`) VALUES
(1, 3, 6, 'Tjkl', '3558', '2', NULL, '2021-06-26 00:48:52', '2021-06-26 00:48:52'),
(2, 3, 6, 'Tjkl', '3558', '2', NULL, '2021-06-26 00:48:57', '2021-06-26 00:48:57'),
(3, 3, 5, 'Tjkl', '3558', '1', NULL, '2021-06-26 00:54:43', '2021-06-26 00:54:43'),
(4, 3, 4, 'Pizza', '30000', '2', NULL, '2021-06-26 20:53:09', '2021-06-26 20:53:09'),
(5, 3, 4, 'Pizza', '30000', '2', NULL, '2021-06-26 22:18:17', '2021-06-26 22:18:17'),
(6, 3, 4, 'Pizza', '30000', '2', NULL, '2021-06-26 22:18:17', '2021-06-26 22:18:17'),
(7, 3, 4, 'Pizza', '30000', '2', NULL, '2021-06-26 22:18:17', '2021-06-26 22:18:17'),
(8, 3, 4, 'Pizza', '30000', '3', NULL, '2021-06-28 01:56:54', '2021-06-28 01:56:54'),
(9, 2, 3, 'pizza jamon queso mix', '15000', '1', NULL, '2021-06-29 19:51:55', '2021-06-29 19:51:55'),
(10, 2, 2, 'producto #2', '10000', '2', NULL, '2021-06-29 19:52:43', '2021-06-29 19:52:43'),
(11, 2, 1, 'example', '154645', '1', NULL, '2021-06-29 19:53:14', '2021-06-29 19:53:14'),
(12, 2, 4, 'Pizza', '30000', '4', NULL, '2021-06-30 01:03:18', '2021-06-30 01:03:18'),
(13, 3, 4, 'Pizza', '30000', '1', NULL, '2021-06-30 02:43:29', '2021-06-30 02:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_subcategories` tinyint(4) DEFAULT NULL,
  `category_path_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_subcategories`, `category_path_image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Moda', 'esta categoría de moda', NULL, 'category/category-image-1624507862.jpg', 1, '2021-06-24 09:11:02', '2021-06-24 09:11:02'),
(2, 'Electrodomestico', 'Esta es una categoría de electrodomésticos caseros', NULL, 'category/category-image-1624508001.jpg', 1, '2021-06-24 09:13:21', '2021-06-24 09:13:21'),
(3, 'Muebles y Colchones', 'esta es la categoría mas cómoda', NULL, 'category/category-image-1624994233.jpg', 1, '2021-06-29 19:17:13', '2021-06-29 19:17:13'),
(4, 'Restaurantes', 'Esta es una categoría dedicada a los restaurantes', NULL, 'category/category-image-1624994293.jpg', 1, '2021-06-29 19:18:13', '2021-06-29 19:18:13'),
(5, 'Tecnología', 'Esta es una categoría dedicada a la tecnología', NULL, 'category/category-image-1624994359.jpg', 1, '2021-06-29 19:19:19', '2021-06-29 19:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2021_05_12_123613_create_sessions_table', 1),
(9, '2021_05_18_215512_create_posts_table', 1),
(10, '2021_05_18_225512_create_categories_table', 1),
(11, '2021_05_18_231506 _create_businesses_table', 1),
(12, '2021_05_18_231606_create_subcategories_table', 1),
(13, '2021_06_02_020545_create_products_table', 1),
(14, '2021_06_07_172942_create_favorites_table', 1),
(15, '2021_06_13_115433_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_path_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`, `product_stock`, `product_path_image`, `product_due_date`, `business_id`, `subcategory_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'example', 'este es un ejemplo de producto', '154645', '16', NULL, NULL, 1, 1, 1, '2021-06-24 17:45:13', '2021-06-24 17:45:13'),
(2, 'producto #2', 'este es un ejemplo de producto', '10000', '25', NULL, NULL, 2, 2, 1, '2021-06-24 17:52:54', '2021-06-24 17:52:54'),
(3, 'pizza jamon queso mix', 'fgshfhthcd', '15000', '14', NULL, NULL, 3, 3, 2, '2021-06-25 10:41:33', '2021-06-25 10:41:33'),
(4, 'Pizza', 'Ujkoll', '30000', '51', '[\"product\\/product-image-01624667913.jpg\",\"product\\/product-image-11624667913.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:38:34', '2021-06-26 00:38:34'),
(5, 'Tjkl', 'Uuioooo', '3558', '72', '[\"product\\/product-image-01624668451.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:47:35', '2021-06-26 00:47:35'),
(6, 'Tjkl', 'Uuioooo', '3558', '72', '[\"product\\/product-image-01624668461.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:47:45', '2021-06-26 00:47:45'),
(11, 'perro ranchero', 'hjfghmnc', '18000', '8', NULL, NULL, 3, 5, 2, '2021-06-30 01:19:13', '2021-06-30 01:19:13'),
(12, 'perro mixto', 'cvnxcccv', '25000', '7', '[\"product\\/product-image-01625018245.jpg\"]', NULL, 3, 5, 2, '2021-06-30 01:57:28', '2021-06-30 01:57:28'),
(15, 'nevera', 'nevera blanca con capacidad de 400L', '1200000', '13', NULL, NULL, 6, 7, 2, '2021-09-04 13:02:39', '2021-09-04 13:02:39'),
(16, 'mfofksdkfpok', 'mvdfnvdvmdo', '4000000', '6', NULL, NULL, 4, 4, 3, '2021-09-05 11:40:02', '2021-09-05 11:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('190yhfzvK8mEf17uij0S6V0pT6uqUGBFKFDwPFFo', NULL, '186.1.141.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmFGYXZJN0hoZVVvTHhQQVMyaDhwMkZLenEyVzI0U0dLZTRsQWJXUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9vZmZlcnIuY29tLmNvL3N0b3JhZ2UvY2F0ZWdvcnkvY2F0ZWdvcnktaW1hZ2UtMTYyNDUwODAwMS5qcGciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1636893660),
('LVJiGLaLFsCBdNIU5AhC8D37JAa9LzjyWFeYx63c', NULL, '186.1.141.149', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1ZmaFNIR05kdG9GZXgyT2tRQVZvR29mTE5ENWF1RGo5bGlud1NmaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9vZmZlcnIuY29tLmNvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1636894229);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_path_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `subcategory_description`, `subcategory_path_image`, `user_id`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'SUB CATEGORIA #1', 'ESTA ES UNA SUBCATEGORIA', NULL, 1, 1, '2021-06-24 09:16:05', '2021-06-24 09:16:05'),
(2, 'subcategoría #2', 'Este es un ejemplo de subcategoría', NULL, 1, 2, '2021-06-24 17:52:10', '2021-06-24 17:52:10'),
(3, 'jamon y queso', 'asdfeg', NULL, 2, 3, '2021-06-25 10:39:42', '2021-06-25 10:39:42'),
(4, 'Pizza', 'Ghkollll', NULL, 3, 4, '2021-06-26 00:37:26', '2021-06-26 00:37:26'),
(5, 'perros calientes', 'vmzxklvmzlzm', 'subcategory/subcategory-image-1625015770.jpg', 2, 3, '2021-06-30 01:16:10', '2021-06-30 01:16:10'),
(6, 'Zapatos', 'Jzkzllxlx', NULL, 3, 4, '2021-07-03 02:55:03', '2021-07-03 02:55:03'),
(7, 'Linea Blanca', 'todo lo relacionado a los servicios en el hogar', 'subcategory/subcategory-image-1630760482.jfif', 2, 6, '2021-09-04 13:01:22', '2021-09-04 13:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Geiler\'s Team', 1, '2021-06-24 09:10:16', '2021-06-24 09:10:16'),
(2, 2, 'Jorge\'s Team', 1, '2021-06-25 10:34:01', '2021-06-25 10:34:01'),
(3, 3, 'Iván\'s Team', 1, '2021-06-26 00:32:39', '2021-06-26 00:32:39'),
(4, 4, 'JUAN\'s Team', 1, '2021-07-13 13:45:31', '2021-07-13 13:45:31'),
(5, 5, 'ivan\'s Team', 1, '2021-07-28 00:48:41', '2021-07-28 00:48:41'),
(6, 6, 'José\'s Team', 1, '2021-08-24 14:09:25', '2021-08-24 14:09:25'),
(7, 7, 'Iván\'s Team', 1, '2021-08-27 21:03:20', '2021-08-27 21:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Geiler Elias Radillo', 'geilerelias@gmail.com', NULL, '$2y$10$DLogq0fkumIN0ADOFj7pEuN01YNiYvWWLjY0gQb6MxN/5SCJWe3NW', NULL, NULL, NULL, 1, NULL, '2021-06-24 09:10:16', '2021-06-24 09:10:17'),
(2, 'Jorge', 'jorgeluisdiz@gmail.com', NULL, '$2y$10$KM1.7V.LK8Kr90y2PGpYq.czUAmOaMad9oJDvfJY3V7ENfknRHbR.', NULL, NULL, 'jquFPX7G75CDO8vx0u0ODKZ2zppU5XIGOQ7YCxuYUL5tExfRaVHLXHWBeaqS', 2, NULL, '2021-06-25 10:34:01', '2021-06-25 10:34:02'),
(3, 'Iván Mejia', 'ivanmejia-07@hotmail.com', NULL, '$2y$10$TrIwrKSTD4KZt7KK8NqKKeP5YaAxbr5cTgPQu2VFdl023esecy/W2', NULL, NULL, NULL, 3, NULL, '2021-06-26 00:32:39', '2021-06-26 00:32:39'),
(4, 'JUAN MEJIA', 'juan-mejia92@hotmail.com', NULL, '$2y$10$oSa75iKmj/iwfy6SK6T2BunD/zSSEAKV06L4KKSbHi2SbfldwNYvu', NULL, NULL, NULL, 4, NULL, '2021-07-13 13:45:31', '2021-07-13 13:45:31'),
(5, 'ivan', 'ivan@hotmail.com', NULL, '$2y$10$ehr7I/90o9DCzKncw3Hdvu6FpP5qRdLfRitikKGKpKQmoZkxlMvpu', NULL, NULL, NULL, 5, NULL, '2021-07-28 00:48:41', '2021-07-28 00:48:41'),
(6, 'José', 'mejiameloivanjose@gmail.com', NULL, '$2y$10$ptAcYzJfMTpymih5irl4NeqoVLwgQZej8LPfwzYLB9HCE4hQPCNoi', NULL, NULL, NULL, 6, NULL, '2021-08-24 14:09:25', '2021-08-24 14:09:26'),
(7, 'Iván mejia', 'Rolandojosep@hotmail.com', NULL, '$2y$10$nNSSbPtRYUq2lfwDxndfdeFQ8IuxebSSScc7zaf6wgVUV5M0aEoy2', NULL, NULL, NULL, 7, NULL, '2021-08-27 21:03:20', '2021-08-27 21:03:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businesses_user_id_foreign` (`user_id`),
  ADD KEY `businesses_category_id_foreign` (`category_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_business_id_foreign` (`business_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_business_id_foreign` (`business_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_user_id_foreign` (`user_id`),
  ADD KEY `subcategories_business_id_foreign` (`business_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `businesses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `businesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  ADD CONSTRAINT `subcategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
