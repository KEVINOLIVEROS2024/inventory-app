-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2024 a las 17:33:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventory_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_de_activo` varchar(255) NOT NULL,
  `numero_activo` bigint(20) NOT NULL,
  `serial_activo` text NOT NULL,
  `marca` text NOT NULL,
  `modelo` text NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `fecha_compra` date NOT NULL,
  `valor` bigint(20) NOT NULL,
  `estado` text NOT NULL,
  `sedes_id` bigint(20) UNSIGNED NOT NULL,
  `ubicaciones_id` bigint(20) UNSIGNED NOT NULL,
  `sububicaciones_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `categorias_id` bigint(20) UNSIGNED NOT NULL,
  `proveedores_id` bigint(20) UNSIGNED NOT NULL,
  `garantia` date NOT NULL,
  `notas_activos` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `tipo_de_activo`, `numero_activo`, `serial_activo`, `marca`, `modelo`, `fecha_lanzamiento`, `fecha_compra`, `valor`, `estado`, `sedes_id`, `ubicaciones_id`, `sububicaciones_id`, `users_id`, `categorias_id`, `proveedores_id`, `garantia`, `notas_activos`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '1', '1', '1', '0001-01-01', '0001-01-01', 1, '1', 3, 1, 1, 1, 1, 1, '0001-01-01', 'aASAS', '2024-08-09 02:42:49', '2024-08-09 02:42:49'),
(2, '1', 1, '1', '1', '1', '0001-01-01', '0001-01-01', 1, '1', 3, 1, 1, 1, 1, 1, '0001-01-01', 'aASAS', '2024-08-09 02:43:27', '2024-08-09 02:43:27'),
(3, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:45:34', '2024-08-09 02:45:34'),
(4, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:46:27', '2024-08-09 02:46:27'),
(5, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:46:42', '2024-08-09 02:46:42'),
(6, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 2, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:54:38', '2024-08-09 02:54:38'),
(7, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:55:19', '2024-08-09 02:55:19'),
(8, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 02:59:43', '2024-08-09 02:59:43'),
(9, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:00:12', '2024-08-09 03:00:12'),
(10, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:00:39', '2024-08-09 03:00:39'),
(11, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:00:56', '2024-08-09 03:00:56'),
(12, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:01:13', '2024-08-09 03:01:13'),
(13, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:01:43', '2024-08-09 03:01:43'),
(14, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:03:53', '2024-08-09 03:03:53'),
(15, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:04:12', '2024-08-09 03:04:12'),
(16, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:04:34', '2024-08-09 03:04:34'),
(17, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:05:21', '2024-08-09 03:05:21'),
(18, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:07:49', '2024-08-09 03:07:49'),
(19, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:08:39', '2024-08-09 03:08:39'),
(20, 'x', 12123, 'x', 'x', 'x', '2021-05-24', '2020-05-05', 16, '122121', 3, 1, 1, 1, 1, 1, '2025-07-24', 's', '2024-08-09 03:10:26', '2024-08-09 03:10:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1723142943),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1723142943;', 1723142943);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2024-08-08 23:59:39', '2024-08-08 23:59:39');

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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_29_194721_create_products_table', 1),
(5, '2024_08_05_203429_create_sedes_table', 1),
(6, '2024_08_05_203452_create_ubicaciones_table', 1),
(7, '2024_08_05_203515_create_sububicaciones_table', 1),
(8, '2024_08_05_203555_create_categorias_table', 1),
(9, '2024_08_05_203610_create_proveedores_table', 1),
(10, '2024_08_08_181054_create_activos_table', 1),
(11, '2024_08_08_184338_add_fecha_lanzamiento_to_activos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proveedor` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `paginaweb` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `proveedor`, `direccion`, `telefono`, `correo`, `paginaweb`, `created_at`, `updated_at`) VALUES
(1, 'QUALITY', 'NORTE', '3022085076', 'QUALITY.COM', 'https://www.qccolombia.com/helpdesk/soporte-tecnico-4/submit', '2024-08-08 23:48:32', '2024-08-08 23:48:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `sede` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `ciudad`, `sede`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'Putumayo', 'Mocoa', 'Mocoa', '1', '2024-08-08 23:51:05', '2024-08-08 23:51:05'),
(2, 'Bogota', 'Campus Norte', 'Bogota', '2', '2024-08-08 23:51:26', '2024-08-08 23:51:26'),
(3, 'Florencia', 'Florencia', 'Florencia', '3', '2024-08-08 23:51:47', '2024-08-08 23:51:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KhaP2lt1DrkW9sawKoYDsN4xX2r4xWfSWP3uBn8A', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNUVYdUlsVkR3dmIxcnN1dGgzekF3Z2RhSmtDTDk1U1FSSTIwOWVTMiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYWN0aXZvcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkeDRmNmpOSzBvYmRSV1FEUDZQc2tydUpmdmxQSjNTLkFhd2l3Nm9MUzVrckguWXBHYk1hcGEiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1723155028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sububicaciones`
--

CREATE TABLE `sububicaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sububicacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sububicaciones`
--

INSERT INTO `sububicaciones` (`id`, `sububicacion`, `created_at`, `updated_at`) VALUES
(1, 'Salon 109 ', '2024-08-08 23:57:24', '2024-08-08 23:57:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`id`, `ubicacion`, `created_at`, `updated_at`) VALUES
(1, 'Bloque A', '2024-08-08 23:55:35', '2024-08-08 23:55:35');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kevin', 'kevin@uni.com', NULL, '$2y$12$x4f6jNK0obdRWQDP6PskruJfvlPJ3S.Aawiw6oLS5krH.YpGbMapa', NULL, '2024-08-08 23:47:23', '2024-08-08 23:47:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activos_sedes_id_foreign` (`sedes_id`),
  ADD KEY `activos_ubicaciones_id_foreign` (`ubicaciones_id`),
  ADD KEY `activos_sububicaciones_id_foreign` (`sububicaciones_id`),
  ADD KEY `activos_users_id_foreign` (`users_id`),
  ADD KEY `activos_categorias_id_foreign` (`categorias_id`),
  ADD KEY `activos_proveedores_id_foreign` (`proveedores_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sububicaciones`
--
ALTER TABLE `sububicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sububicaciones`
--
ALTER TABLE `sububicaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activos`
--
ALTER TABLE `activos`
  ADD CONSTRAINT `activos_categorias_id_foreign` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_proveedores_id_foreign` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_sedes_id_foreign` FOREIGN KEY (`sedes_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_sububicaciones_id_foreign` FOREIGN KEY (`sububicaciones_id`) REFERENCES `sububicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_ubicaciones_id_foreign` FOREIGN KEY (`ubicaciones_id`) REFERENCES `ubicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
