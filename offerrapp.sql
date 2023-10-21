-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2023 a las 06:08:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `offerrapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_path_cover_image` varchar(255) DEFAULT NULL,
  `business_path_profile_image` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_acronym` varchar(255) DEFAULT NULL,
  `business_email` varchar(255) NOT NULL,
  `business_phone` varchar(255) NOT NULL,
  `business_website` varchar(255) DEFAULT NULL,
  `business_address` varchar(255) NOT NULL,
  `business_city` varchar(255) NOT NULL,
  `business_department` varchar(255) NOT NULL,
  `business_subcategory` tinytext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `businesses`
--

INSERT INTO `businesses` (`id`, `business_path_cover_image`, `business_path_profile_image`, `business_name`, `business_acronym`, `business_email`, `business_phone`, `business_website`, `business_address`, `business_city`, `business_department`, `business_subcategory`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'business/business-image-cover-1627099945.jpg', 'business/business-image-profile-1627099945.jpg', 'Comercio #1', 'undefined', 'comercio1@mail.com', '17651765113', 'null', 'calle 31 # 23 - 45', 'Barrancabermeja', 'Colombia', NULL, 1, 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(2, 'business/business-image-cover-1649437603.jpeg', 'business/business-image-profile-1649437603.jpg', 'Comercio #2', 'undefined', 'comercio2@mail.com', '3106947004', 'null', 'CALLE 32 # 23-45', 'Riohacha', 'Colombia', 'null', 1, 2, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(3, 'business/business-image-cover-1625015386.png', 'business/business-image-profile-1625015386.jpg', 'kjhghj', 'undefined', 'q@gmail.com', '1204578', NULL, 'cll23', 'Valledupar', 'Colombia', NULL, 2, 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(4, 'business / business - image - cover - 1624667746.jpg', 'business/business - image - profile - 1624667746.jpg', 'Coma rico', 'undefined', 'Ivanmejia-07@hotmail.com', '3002789024', 'Comarico.Co', 'Udjdkkdkd', 'Barranquilla', 'Colombia', NULL, 3, 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(5, NULL, 'business / business - image - profile - 1630841907.jpg', 'Ufudjdidid', 'undefined', 'Ivanmejia - 07@hotmail . com', '1263', 'Yuiii', 'Ydydjzizizozoz', 'Leticia', 'Amazonas', NULL, 3, 4, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(6, NULL, NULL, 'Tecnosistem', 'undefined', 'tecnosistem@gmail.com', '5803070', NULL, 'cll 8# 34b 20', 'Agustín Codazzi', 'Cesar', NULL, 2, 5, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(7, NULL, NULL, 'comercio23', 'undefined', 'comercio23@gmail . com', '3214567890', NULL, 'cll23', 'Fortul', 'Arauca', NULL, 2, 4, '2022-06-13 02:11:55', '2022-06-13 02:11:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `category_subcategories` tinytext DEFAULT NULL,
  `category_path_image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_subcategories`, `category_path_image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Moda', 'esta categoría de moda', NULL, 'category/category-image-1624507862.jpg', 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(2, 'Electrodoméstico', 'Esta es una categoría de electrodomésticos caseros', NULL, 'category/category-image-1624508001.jpg', 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(3, 'Muebles y Colchones', 'esta es la categoría mas cómoda', NULL, 'category/category-image-1624994233.jpg', 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(4, 'Restaurantes', 'Esta es una categoría dedicada a los restaurantes', NULL, 'category/category-image-1624994293.jpg', 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(5, 'Tecnología', 'Esta es una categoría dedicada a la tecnología', NULL, 'category/category-image-1624994359.jpg', 1, '2022-06-13 02:11:55', '2022-06-13 02:11:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `followers`
--

INSERT INTO `followers` (`id`, `score`, `review`, `business_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Muy buen comercio', 1, 1, '2022-06-13 18:51:43', '2022-06-13 22:01:19'),
(2, NULL, NULL, 1, 3, '2022-06-14 02:12:39', '2022-06-14 02:12:39'),
(3, 5, 'Me parece super genial', 1, 8, '2022-06-14 02:59:28', '2022-06-14 03:00:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(120, '2014_10_12_000000_create_users_table', 1),
(121, '2014_10_12_100000_create_password_resets_table', 1),
(122, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(123, '2019_08_19_000000_create_failed_jobs_table', 1),
(124, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(125, '2020_05_21_100000_create_teams_table', 1),
(126, '2020_05_21_200000_create_team_user_table', 1),
(127, '2021_05_12_123613_create_sessions_table', 1),
(128, '2021_05_18_215512_create_posts_table', 1),
(129, '2021_05_18_225512_create_categories_table', 1),
(130, '2021_05_18_231506 _create_businesses_table', 1),
(131, '2021_05_18_231606_create_subcategories_table', 1),
(132, '2021_06_02_020545_create_products_table', 1),
(133, '2021_06_13_115433_create_carts_table', 1),
(134, '2021_06_25_190418_create_orders_table', 1),
(135, '2021_06_27_212138_create_followers_table', 1),
(136, '2021_06_28_211637_create_favorites_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_stock` varchar(255) NOT NULL,
  `product_path_image` varchar(255) DEFAULT NULL,
  `product_due_date` varchar(255) DEFAULT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`, `product_stock`, `product_path_image`, `product_due_date`, `business_id`, `subcategory_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'example', 'este es un ejemplo de producto', '154645', '16', 'NULL', NULL, 1, 1, 1, '2021-06-24 17:45:13', '2021-06-24 17:45:13'),
(2, 'producto #2', 'este es un ejemplo de producto', '10000', '25', 'NULL', NULL, 2, 2, 1, '2021-06-24 17:52:54', '2021-06-24 17:52:54'),
(3, 'pizza jamon', ' pizza jamon queso mix	fgshfhthcd', '15000', '14', NULL, NULL, 3, 3, 2, '2021-06-25 10:41:33', '2021-06-25 10:41:33'),
(4, 'Pizza', 'Ujkoll', '30000', '51', '[\"product\\/product-image-01624667913.jpg\",\"product\\/product-image-11624667913.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:38:34', '2021-06-26 00:38:34'),
(5, 'Tjkl', 'Uuioooo', '3558', '72', '[\"product\\/product-image-01624668451.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:47:35', '2021-06-26 00:47:35'),
(6, 'Example', 'Example Uuioooo', '3858', '72', '[\"product\\/product-image-01624668461.jpg\"]', NULL, 4, 4, 3, '2021-06-26 00:47:45', '2021-06-26 00:47:45'),
(11, 'perro ranchero', 'hjfghmnc', '18000', '8', 'NULL', NULL, 3, 5, 2, '2021-06-30 01:19:13', '2021-06-30 01:19:13'),
(12, 'perro mixto', 'cvnxcccv', '25000', '7', '[\"product\\/product-image-01625018245.jpg\"]', NULL, 3, 5, 2, '2021-06-30 01:57:28', '2021-06-30 01:57:28'),
(15, 'nevera', 'nevera blanca con capacidad de 400L', '1200000', '13', 'NULL', NULL, 6, 7, 2, '2021-09-04 13:02:39', '2021-09-04 13:02:39'),
(16, 'mfofksdkfpok', 'mvdfnvdvmdo', '4000000', '6', 'NULL', NULL, 4, 4, 3, '2021-09-05 11:40:02', '2021-09-05 11:40:02'),
(17, 'Maquina de cocer', 'esta es una maquina de cocer', '64000', '10', '[\"product\\/product-image-01648478384.png\",\"product\\/product-image-11648478384.jpg\",\"product\\/product-image-21648478384.jpg\",\"product\\/product-image-31648478384.jpg\",\"product\\/product-image-41648478384.jpg\"]', NULL, 1, 1, 1, '2022-03-28 19:39:44', '2022-03-28 19:39:44'),
(18, 'Vestido Corto', 'Vestido corto para playa, vestido casual fresco', '35500', '10', '[\"product\\/product-image-01648479317.png\",\"product\\/product-image-11648479317.jpg\",\"product\\/product-image-21648479317.jpg\",\"product\\/product-image-31648479317.jpg\",\"product\\/product-image-41648479317.jpg\"]', NULL, 1, 1, 1, '2022-03-28 19:55:17', '2022-03-28 19:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Zc2RCPEc3jlVKTmqo6M3cEuu7IZAw6AQcQQzAs42', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkxGdWcxTUJPNndXdGt5eGx3T1lUaG9NaTZWUXAyeHFvU1ROb2RacSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yYWdlL2NhdGVnb3J5L2NhdGVnb3J5LWltYWdlLTE2MjQ5OTQyOTMuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1657072491);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_description` varchar(255) NOT NULL,
  `subcategory_path_image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `subcategory_description`, `subcategory_path_image`, `user_id`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'SUB CATEGORIA #1', 'ESTA ES UNA SUBCATEGORIA', NULL, 1, 1, '2021-06-24 14:16:05', '2021-06-24 14:16:05'),
(2, 'subcategoría #2', 'Este es un ejemplo de subcategoría', NULL, 1, 2, '2021-06-24 22:52:10', '2021-06-24 22:52:10'),
(3, 'jamon y queso', 'asdfeg', NULL, 2, 3, '2021-06-25 15:39:42', '2021-06-25 15:39:42'),
(4, 'Pizza', 'Ghkollll', NULL, 3, 4, '2021-06-26 05:37:26', '2021-06-26 05:37:26'),
(5, 'perros calientes', 'vmzxklvmzlzm', 'subcategory/subcategory-image-1625015770.jpg', 2, 3, '2021-06-30 06:16:10', '2021-06-30 06:16:10'),
(6, 'Zapatos', 'Jzkzllxlx', NULL, 3, 4, '2021-07-03 07:55:03', '2021-07-03 07:55:03'),
(7, 'Linea Blanca', 'todo lo relacionado a los servicios en el hogar', 'subcategory/subcategory-image-1630760482.jfif', 2, 6, '2021-09-04 18:01:22', '2021-09-04 18:01:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Geiler Elias Radillo Sarmiento', 'geilerelias@gmail.com', NULL, '$2y$10$JlhYZ7XfDrX3Tz99GWKu0eZhtWL3hZpBmNioOWp96y2X1/dVsgOO.', NULL, NULL, 'zjQEARQ6kjaTEeU9fEvGGrGWK9Tq4WohTePB9OaMOC9mIOlQDs8jf9Y41CoQ', NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(2, 'Jorge', 'jorgeluisdiz@gmail.com', NULL, '$2y$10$pqGBvwxqD/8U8zyzgL9mAeB2tYYu4YjzW5idOExrIYNXilLs0OOC2', NULL, NULL, NULL, NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(3, 'Iván Mejia', 'ivanmejia-07@hotmail.com', NULL, '$2y$10$4bkhK38A/PygecTDcbFjielZd9Z4soNP0.eLpysALxMkD4H9WygMS', NULL, NULL, 'XKMrWu3871bv8CuHPxJWe3XbTGnDFjrvfOMuaNQsylSvUFj7waP26Tj5ts5f', NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(4, 'JUAN MEJIA', 'juan-mejia92@hotmail.com', NULL, '$2y$10$SFPlnGnyUKQQNAz/W7w.i./sOHH9FCW4wWDeAlRH6dYAplkVAObqW', NULL, NULL, NULL, NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(5, 'ivan', 'ivan@hotmail.com', NULL, '$2y$10$tVNIgFC3wf46IKgIEkKml.oFN.b5kv9LPuBCiQVbU2Gco1qzrkd1O', NULL, NULL, NULL, NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(6, 'José', 'mejiameloivanjose@gmail.com', NULL, '$2y$10$Pi7L9yejUW0ieX8YvHATiOfXJVyWm8tM26lOhznpGCuso4DE84ty2', NULL, NULL, 'WQjSjyUz5QEIzNbtHaQZx6FRM3Y3WpzTfzYmSKHEL61zFe9MY7VNyEs4LY90', NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(7, 'Iván mejia', 'Rolandojosep@hotmail.com', NULL, '$2y$10$vYNnGEwNWq6PH.2Vp6kDvuVNVw9Md49ycrpZlzaWNOCyAkGPaXZcC', NULL, NULL, NULL, NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55'),
(8, 'Ledis Beatriz Sarmiento', 'ledisbersage@gmail.com', NULL, '$2y$10$Kcb8XGCuWheSqDvQDm.nsePTRtN9iBJIuJiSjiTrStHN2E87rzdde', NULL, NULL, 'nhOPJEYOLgfUJaYp0yHsiGzngdmT0086pP8GWqoAMCWRJi75mx4d4B3fGJvy', NULL, NULL, '2022-06-13 02:11:55', '2022-06-13 02:11:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businesses_user_id_foreign` (`user_id`),
  ADD KEY `businesses_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_business_id_foreign` (`business_id`),
  ADD KEY `followers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_business_id_foreign` (`business_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_user_id_foreign` (`user_id`),
  ADD KEY `subcategories_business_id_foreign` (`business_id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `businesses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `businesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  ADD CONSTRAINT `followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`),
  ADD CONSTRAINT `subcategories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
