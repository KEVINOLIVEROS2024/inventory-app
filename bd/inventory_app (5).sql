-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2024 a las 17:00:13
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
  `numero_activo` varchar(255) NOT NULL,
  `serial_activo` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `fecha_compra` date NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `estados_id` bigint(20) UNSIGNED NOT NULL,
  `sedes_id` bigint(20) UNSIGNED NOT NULL,
  `ubicaciones_id` bigint(20) UNSIGNED NOT NULL,
  `sububicaciones_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `categorias_id` bigint(20) UNSIGNED NOT NULL,
  `proveedores_id` bigint(20) UNSIGNED NOT NULL,
  `garantia` date DEFAULT NULL,
  `mantenimientos` varchar(255) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `tipo_de_activo`, `numero_activo`, `serial_activo`, `marca`, `modelo`, `fecha_lanzamiento`, `fecha_compra`, `valor`, `estados_id`, `sedes_id`, `ubicaciones_id`, `sububicaciones_id`, `users_id`, `categorias_id`, `proveedores_id`, `garantia`, `mantenimientos`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 'laptop', '1', '1', 'Lenovo', 'E14', '2020-12-12', '2021-01-30', 8000000.00, 2, 2, 4, 11, 2, 1, 2, '2024-12-12', '1', 'no', '2024-08-13 02:06:41', '2024-08-13 19:56:06'),
(2, 'impresora', '2', '2', 'HP', 'HP1990', '2020-12-12', '2021-01-30', 10000000.00, 4, 2, 1, 6, 1, 2, 1, '2024-12-12', '1', 'no', '2024-08-13 19:54:36', '2024-08-13 19:54:36');

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
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1723558987),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1723558987;', 1723558987);

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
(1, 'Laptop', '2024-08-12 23:57:41', '2024-08-12 23:57:41'),
(2, 'Impresora', '2024-08-12 23:58:00', '2024-08-12 23:58:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activo_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `activo_id`, `comment`, `created_at`, `updated_at`) VALUES
(20, 2, 'compra', '2024-08-13 19:54:36', '2024-08-13 19:54:36'),
(22, 2, 'Mantenimiento 1', '2024-08-13 19:56:28', '2024-08-13 19:56:28'),
(23, 1, '1', '2024-08-13 19:58:36', '2024-08-13 19:58:36'),
(24, 1, '2', '2024-08-13 19:58:36', '2024-08-13 19:58:36'),
(25, 1, '3', '2024-08-13 19:58:36', '2024-08-13 19:58:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Activo', '2024-08-12 23:57:11', '2024-08-12 23:57:11'),
(2, 'Inactivo', '2024-08-12 23:58:11', '2024-08-12 23:58:11'),
(3, 'En Uso', '2024-08-12 23:58:17', '2024-08-12 23:58:17'),
(4, 'Dañado', '2024-08-12 23:58:29', '2024-08-12 23:58:29'),
(5, 'En bodega', '2024-08-12 23:58:34', '2024-08-12 23:58:34'),
(6, 'Renting', '2024-08-12 23:58:42', '2024-08-12 23:58:42');

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
(10, '2024_08_12_174321_create_estados_table', 1),
(11, '2024_08_12_182601_create_activos_table', 1),
(12, '2024_08_12_193855_change_mantenimientos_column_type_in_activos_table', 2),
(13, '2024_08_12_201218_remove_serial_activo_and_numero_activo_from_activos_table', 3),
(14, '2024_08_12_201509_add_serial_activo_and_numero_activo_to_activos_table', 4),
(15, '2024_08_12_202230_add_serial_activo_and_numero_activo_to_activos_table', 5),
(16, '2024_08_12_210322_create_activos_table', 6),
(17, '2024_08_12_210606_change_mantenimientos_column_type_in_activos_table', 7),
(18, '2024_08_12_215139_create_comentarios_table', 8);

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
(1, 'QUALITY', 'NORTE', '3', 'QUALITY.COM', 'https://www.qccolombia.com/helpdesk/soporte-tecnico-4/submit', '2024-08-12 23:59:11', '2024-08-12 23:59:11'),
(2, 'Lenovo', 'USA', '3', 'lenovosporte@lenovo.com', 'www.lenovo.com', '2024-08-12 23:59:41', '2024-08-12 23:59:41');

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
(1, 'Florencia', 'Florencia', 'Florencia', '1', '2024-08-12 23:59:56', '2024-08-12 23:59:56'),
(2, 'Bogota', 'Campus Norte', 'Calle209 ', '3', '2024-08-13 00:00:04', '2024-08-13 00:00:04'),
(3, 'Mocoa', 'Mocoa', 'Mocoa', '3', '2024-08-13 00:00:14', '2024-08-13 00:00:14');

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
('2JOIsiUEZGyApALj7BeoyPSfbmCfDE0h1Ta0utvC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMzRCQ0prdUJqUlVmZWQycnhZQlJjYVYxdFVpYnBVcnZ1eW11SXpNQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYWN0aXZvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQuT28yTjNvNUJsMjVMdk0vLmNQdmwuZDc1YTZ4Tk11cnVOY1FkV2VqYUlDakxnRk80SGVzUyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1723561188);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sububicaciones`
--

CREATE TABLE `sububicaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sububicacion` varchar(255) NOT NULL,
  `ubicacion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sububicaciones`
--

INSERT INTO `sububicaciones` (`id`, `sububicacion`, `ubicacion_id`, `created_at`, `updated_at`) VALUES
(1, 'Rectoria', 1, '2024-08-13 00:01:00', '2024-08-13 00:01:00'),
(2, 'Sala Sistemas', 3, '2024-08-13 00:01:18', '2024-08-13 00:42:44'),
(3, 'Salon 214B', 3, '2024-08-13 00:01:35', '2024-08-13 00:01:35'),
(4, 'Lab Sistemas', 3, '2024-08-13 00:01:48', '2024-08-13 00:01:48'),
(5, 'Salon 209A', 2, '2024-08-13 00:02:04', '2024-08-13 00:02:04'),
(6, 'Vicerrectoria', 1, '2024-08-13 00:02:13', '2024-08-13 00:02:13'),
(7, 'Soporte Sistemas', 3, '2024-08-13 00:02:28', '2024-08-13 00:02:28'),
(8, 'Gestion Humana', 1, '2024-08-13 00:02:37', '2024-08-13 00:02:37'),
(9, 'Primero Piso', 4, '2024-08-13 00:02:48', '2024-08-13 00:02:48'),
(10, 'Segundo Piso', 4, '2024-08-13 00:02:55', '2024-08-13 00:02:55'),
(11, 'Tercer Piso', 4, '2024-08-13 00:03:05', '2024-08-13 00:03:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `tipo` enum('edificio','bloque') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`id`, `ubicacion`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Edificio Administrativo', 'edificio', '2024-08-13 00:00:25', '2024-08-13 00:00:25'),
(2, 'Bloque A', 'bloque', '2024-08-13 00:00:31', '2024-08-13 00:00:31'),
(3, 'Bloque B', 'bloque', '2024-08-13 00:00:39', '2024-08-13 00:00:39'),
(4, 'Biblioteca', 'edificio', '2024-08-13 00:00:49', '2024-08-13 00:00:49');

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
(1, 'kevin', 'kevin@emp.com', NULL, '$2y$12$.Oo2N3o5Bl25LvM/.cPvl.d75a6xNMuruNcQdWejaICjLgFO4HesS', NULL, '2024-08-12 23:56:51', '2024-08-12 23:56:51'),
(2, 'Pedro', 'pedro@emp.com', NULL, '$2y$12$o5MwiGHHI7MN8EgFKCanYOhI3nRCjfRFM4tay6teCU5MbNGgQOFuW', NULL, '2024-08-13 19:55:37', '2024-08-13 19:55:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activos_estados_id_foreign` (`estados_id`),
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
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_activo_id_foreign` (`activo_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `sububicaciones_ubicacion_id_foreign` (`ubicacion_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sububicaciones`
--
ALTER TABLE `sububicaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activos`
--
ALTER TABLE `activos`
  ADD CONSTRAINT `activos_categorias_id_foreign` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_estados_id_foreign` FOREIGN KEY (`estados_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_proveedores_id_foreign` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_sedes_id_foreign` FOREIGN KEY (`sedes_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_sububicaciones_id_foreign` FOREIGN KEY (`sububicaciones_id`) REFERENCES `sububicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_ubicaciones_id_foreign` FOREIGN KEY (`ubicaciones_id`) REFERENCES `ubicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activos_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_activo_id_foreign` FOREIGN KEY (`activo_id`) REFERENCES `activos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sububicaciones`
--
ALTER TABLE `sububicaciones`
  ADD CONSTRAINT `sububicaciones_ubicacion_id_foreign` FOREIGN KEY (`ubicacion_id`) REFERENCES `ubicaciones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
