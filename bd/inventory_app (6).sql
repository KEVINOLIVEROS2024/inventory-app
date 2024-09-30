-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:57:38
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
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'updated', 'App\\Models\\Activos', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"1\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":2,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":1,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"},\"old\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"1\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":2,\"sedes_id\":2,\"ubicaciones_id\":4,\"sububicaciones_id\":11,\"users_id\":1,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"}}', NULL, '2024-08-14 20:59:26', '2024-08-14 20:59:26'),
(2, 'default', 'updated', 'App\\Models\\Activos', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"1\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":2,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":2,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"},\"old\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"1\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":2,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":1,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"}}', NULL, '2024-08-15 00:00:23', '2024-08-15 00:00:23'),
(3, 'default', 'deleted', 'App\\Models\\Activos', 'deleted', 2, 'App\\Models\\User', 1, '{\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"2\",\"serial_activo\":\"2\",\"marca\":\"HP\",\"modelo\":\"HP1990\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"10000000.00\",\"estados_id\":4,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":6,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"Da\\u00f1o\"}}', NULL, '2024-08-15 20:01:12', '2024-08-15 20:01:12'),
(4, 'default', 'created', 'App\\Models\\Activos', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":2,\"sububicaciones_id\":5,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":2,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-08-15 20:44:50', '2024-08-15 20:44:50'),
(5, 'default', 'updated', 'App\\Models\\Activos', 'updated', 1, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"19999\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":5,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"},\"old\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"1\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":2,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":2,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"}}', NULL, '2024-08-15 20:50:20', '2024-08-15 20:50:20'),
(6, 'default', 'deleted', 'App\\Models\\Activos', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"tipo_de_activo\":\"laptop\",\"numero_activo\":\"19999\",\"serial_activo\":\"1\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-01-30\",\"valor\":\"8000000.00\",\"estados_id\":5,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":1,\"proveedores_id\":2,\"garantia\":\"2024-12-12\",\"mantenimientos\":\"1\",\"observaciones\":\"no\"}}', NULL, '2024-08-15 20:52:45', '2024-08-15 20:52:45'),
(7, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 2, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":2,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":2,\"sububicaciones_id\":5,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":2,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-08-15 23:44:55', '2024-08-15 23:44:55'),
(8, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"loenovo24\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":3,\"ubicaciones_id\":3,\"sububicaciones_id\":7,\"users_id\":2,\"categorias_id\":1,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":2,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-11 23:20:19', '2024-09-11 23:20:19'),
(9, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"loenovo24\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":3,\"ubicaciones_id\":3,\"sububicaciones_id\":7,\"users_id\":2,\"categorias_id\":1,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-12 02:19:04', '2024-09-12 02:19:04'),
(10, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 2, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":6,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-12 22:58:29', '2024-09-12 22:58:29'),
(11, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 2, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":6,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-12 22:58:38', '2024-09-12 22:58:38'),
(12, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-13 01:23:24', '2024-09-13 01:23:24'),
(13, 'default', 'updated', 'App\\Models\\Activos', 'updated', 3, 'App\\Models\\User', 1, '{\"attributes\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":8,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null},\"old\":{\"tipo_de_activo\":\"impresora\",\"numero_activo\":\"23124\",\"serial_activo\":\"324324g\",\"marca\":\"Lenovo\",\"modelo\":\"E14\",\"fecha_lanzamiento\":\"2020-12-12\",\"fecha_compra\":\"2021-12-12\",\"valor\":\"5000000.00\",\"estados_id\":1,\"sedes_id\":2,\"ubicaciones_id\":1,\"sububicaciones_id\":1,\"users_id\":1,\"categorias_id\":2,\"proveedores_id\":1,\"garantia\":\"2023-12-21\",\"mantenimientos\":\"1\",\"observaciones\":null}}', NULL, '2024-09-13 01:52:31', '2024-09-13 01:52:31');

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
(3, 'impresora', '23124', '324324g', 'Lenovo', 'E14', '2020-12-12', '2021-12-12', 5000000.00, 1, 2, 1, 8, 1, 2, 1, '2023-12-21', '1', NULL, '2024-08-15 20:44:50', '2024-09-13 01:52:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `auditable_type` varchar(255) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 1, '{\"name\":\"kevin\"}', '{\"name\":\"Kevin Oliveros\"}', 'http://192.168.14.246:8000/livewire/update', '192.168.14.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-13 01:50:59', '2024-09-13 01:50:59'),
(2, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Activos', 3, '{\"sububicaciones_id\":1}', '{\"sububicaciones_id\":\"8\"}', 'http://192.168.14.246:8000/livewire/update', '192.168.14.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-13 01:52:31', '2024-09-13 01:52:31');

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
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:150:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"view_any_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"create_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"update_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"restore_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"restore_any_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"replicate_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"reorder_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:14:\"delete_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"delete_any_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:20:\"force_delete_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:24:\"force_delete_any_activos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:3:{s:1:\"a\";i:13;s:1:\"b\";s:15:\"view_categorias\";s:1:\"c\";s:3:\"web\";}i:13;a:3:{s:1:\"a\";i:14;s:1:\"b\";s:19:\"view_any_categorias\";s:1:\"c\";s:3:\"web\";}i:14;a:3:{s:1:\"a\";i:15;s:1:\"b\";s:17:\"create_categorias\";s:1:\"c\";s:3:\"web\";}i:15;a:3:{s:1:\"a\";i:16;s:1:\"b\";s:17:\"update_categorias\";s:1:\"c\";s:3:\"web\";}i:16;a:3:{s:1:\"a\";i:17;s:1:\"b\";s:18:\"restore_categorias\";s:1:\"c\";s:3:\"web\";}i:17;a:3:{s:1:\"a\";i:18;s:1:\"b\";s:22:\"restore_any_categorias\";s:1:\"c\";s:3:\"web\";}i:18;a:3:{s:1:\"a\";i:19;s:1:\"b\";s:20:\"replicate_categorias\";s:1:\"c\";s:3:\"web\";}i:19;a:3:{s:1:\"a\";i:20;s:1:\"b\";s:18:\"reorder_categorias\";s:1:\"c\";s:3:\"web\";}i:20;a:3:{s:1:\"a\";i:21;s:1:\"b\";s:17:\"delete_categorias\";s:1:\"c\";s:3:\"web\";}i:21;a:3:{s:1:\"a\";i:22;s:1:\"b\";s:21:\"delete_any_categorias\";s:1:\"c\";s:3:\"web\";}i:22;a:3:{s:1:\"a\";i:23;s:1:\"b\";s:23:\"force_delete_categorias\";s:1:\"c\";s:3:\"web\";}i:23;a:3:{s:1:\"a\";i:24;s:1:\"b\";s:27:\"force_delete_any_categorias\";s:1:\"c\";s:3:\"web\";}i:24;a:3:{s:1:\"a\";i:25;s:1:\"b\";s:13:\"view_comments\";s:1:\"c\";s:3:\"web\";}i:25;a:3:{s:1:\"a\";i:26;s:1:\"b\";s:17:\"view_any_comments\";s:1:\"c\";s:3:\"web\";}i:26;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"create_comments\";s:1:\"c\";s:3:\"web\";}i:27;a:3:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"update_comments\";s:1:\"c\";s:3:\"web\";}i:28;a:3:{s:1:\"a\";i:29;s:1:\"b\";s:16:\"restore_comments\";s:1:\"c\";s:3:\"web\";}i:29;a:3:{s:1:\"a\";i:30;s:1:\"b\";s:20:\"restore_any_comments\";s:1:\"c\";s:3:\"web\";}i:30;a:3:{s:1:\"a\";i:31;s:1:\"b\";s:18:\"replicate_comments\";s:1:\"c\";s:3:\"web\";}i:31;a:3:{s:1:\"a\";i:32;s:1:\"b\";s:16:\"reorder_comments\";s:1:\"c\";s:3:\"web\";}i:32;a:3:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"delete_comments\";s:1:\"c\";s:3:\"web\";}i:33;a:3:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"delete_any_comments\";s:1:\"c\";s:3:\"web\";}i:34;a:3:{s:1:\"a\";i:35;s:1:\"b\";s:21:\"force_delete_comments\";s:1:\"c\";s:3:\"web\";}i:35;a:3:{s:1:\"a\";i:36;s:1:\"b\";s:25:\"force_delete_any_comments\";s:1:\"c\";s:3:\"web\";}i:36;a:3:{s:1:\"a\";i:37;s:1:\"b\";s:11:\"view_estado\";s:1:\"c\";s:3:\"web\";}i:37;a:3:{s:1:\"a\";i:38;s:1:\"b\";s:15:\"view_any_estado\";s:1:\"c\";s:3:\"web\";}i:38;a:3:{s:1:\"a\";i:39;s:1:\"b\";s:13:\"create_estado\";s:1:\"c\";s:3:\"web\";}i:39;a:3:{s:1:\"a\";i:40;s:1:\"b\";s:13:\"update_estado\";s:1:\"c\";s:3:\"web\";}i:40;a:3:{s:1:\"a\";i:41;s:1:\"b\";s:14:\"restore_estado\";s:1:\"c\";s:3:\"web\";}i:41;a:3:{s:1:\"a\";i:42;s:1:\"b\";s:18:\"restore_any_estado\";s:1:\"c\";s:3:\"web\";}i:42;a:3:{s:1:\"a\";i:43;s:1:\"b\";s:16:\"replicate_estado\";s:1:\"c\";s:3:\"web\";}i:43;a:3:{s:1:\"a\";i:44;s:1:\"b\";s:14:\"reorder_estado\";s:1:\"c\";s:3:\"web\";}i:44;a:3:{s:1:\"a\";i:45;s:1:\"b\";s:13:\"delete_estado\";s:1:\"c\";s:3:\"web\";}i:45;a:3:{s:1:\"a\";i:46;s:1:\"b\";s:17:\"delete_any_estado\";s:1:\"c\";s:3:\"web\";}i:46;a:3:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"force_delete_estado\";s:1:\"c\";s:3:\"web\";}i:47;a:3:{s:1:\"a\";i:48;s:1:\"b\";s:23:\"force_delete_any_estado\";s:1:\"c\";s:3:\"web\";}i:48;a:3:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"view_permission\";s:1:\"c\";s:3:\"web\";}i:49;a:3:{s:1:\"a\";i:50;s:1:\"b\";s:19:\"view_any_permission\";s:1:\"c\";s:3:\"web\";}i:50;a:3:{s:1:\"a\";i:51;s:1:\"b\";s:17:\"create_permission\";s:1:\"c\";s:3:\"web\";}i:51;a:3:{s:1:\"a\";i:52;s:1:\"b\";s:17:\"update_permission\";s:1:\"c\";s:3:\"web\";}i:52;a:3:{s:1:\"a\";i:53;s:1:\"b\";s:18:\"restore_permission\";s:1:\"c\";s:3:\"web\";}i:53;a:3:{s:1:\"a\";i:54;s:1:\"b\";s:22:\"restore_any_permission\";s:1:\"c\";s:3:\"web\";}i:54;a:3:{s:1:\"a\";i:55;s:1:\"b\";s:20:\"replicate_permission\";s:1:\"c\";s:3:\"web\";}i:55;a:3:{s:1:\"a\";i:56;s:1:\"b\";s:18:\"reorder_permission\";s:1:\"c\";s:3:\"web\";}i:56;a:3:{s:1:\"a\";i:57;s:1:\"b\";s:17:\"delete_permission\";s:1:\"c\";s:3:\"web\";}i:57;a:3:{s:1:\"a\";i:58;s:1:\"b\";s:21:\"delete_any_permission\";s:1:\"c\";s:3:\"web\";}i:58;a:3:{s:1:\"a\";i:59;s:1:\"b\";s:23:\"force_delete_permission\";s:1:\"c\";s:3:\"web\";}i:59;a:3:{s:1:\"a\";i:60;s:1:\"b\";s:27:\"force_delete_any_permission\";s:1:\"c\";s:3:\"web\";}i:60;a:3:{s:1:\"a\";i:61;s:1:\"b\";s:12:\"view_product\";s:1:\"c\";s:3:\"web\";}i:61;a:3:{s:1:\"a\";i:62;s:1:\"b\";s:16:\"view_any_product\";s:1:\"c\";s:3:\"web\";}i:62;a:3:{s:1:\"a\";i:63;s:1:\"b\";s:14:\"create_product\";s:1:\"c\";s:3:\"web\";}i:63;a:3:{s:1:\"a\";i:64;s:1:\"b\";s:14:\"update_product\";s:1:\"c\";s:3:\"web\";}i:64;a:3:{s:1:\"a\";i:65;s:1:\"b\";s:15:\"restore_product\";s:1:\"c\";s:3:\"web\";}i:65;a:3:{s:1:\"a\";i:66;s:1:\"b\";s:19:\"restore_any_product\";s:1:\"c\";s:3:\"web\";}i:66;a:3:{s:1:\"a\";i:67;s:1:\"b\";s:17:\"replicate_product\";s:1:\"c\";s:3:\"web\";}i:67;a:3:{s:1:\"a\";i:68;s:1:\"b\";s:15:\"reorder_product\";s:1:\"c\";s:3:\"web\";}i:68;a:3:{s:1:\"a\";i:69;s:1:\"b\";s:14:\"delete_product\";s:1:\"c\";s:3:\"web\";}i:69;a:3:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"delete_any_product\";s:1:\"c\";s:3:\"web\";}i:70;a:3:{s:1:\"a\";i:71;s:1:\"b\";s:20:\"force_delete_product\";s:1:\"c\";s:3:\"web\";}i:71;a:3:{s:1:\"a\";i:72;s:1:\"b\";s:24:\"force_delete_any_product\";s:1:\"c\";s:3:\"web\";}i:72;a:3:{s:1:\"a\";i:73;s:1:\"b\";s:16:\"view_proveedores\";s:1:\"c\";s:3:\"web\";}i:73;a:3:{s:1:\"a\";i:74;s:1:\"b\";s:20:\"view_any_proveedores\";s:1:\"c\";s:3:\"web\";}i:74;a:3:{s:1:\"a\";i:75;s:1:\"b\";s:18:\"create_proveedores\";s:1:\"c\";s:3:\"web\";}i:75;a:3:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"update_proveedores\";s:1:\"c\";s:3:\"web\";}i:76;a:3:{s:1:\"a\";i:77;s:1:\"b\";s:19:\"restore_proveedores\";s:1:\"c\";s:3:\"web\";}i:77;a:3:{s:1:\"a\";i:78;s:1:\"b\";s:23:\"restore_any_proveedores\";s:1:\"c\";s:3:\"web\";}i:78;a:3:{s:1:\"a\";i:79;s:1:\"b\";s:21:\"replicate_proveedores\";s:1:\"c\";s:3:\"web\";}i:79;a:3:{s:1:\"a\";i:80;s:1:\"b\";s:19:\"reorder_proveedores\";s:1:\"c\";s:3:\"web\";}i:80;a:3:{s:1:\"a\";i:81;s:1:\"b\";s:18:\"delete_proveedores\";s:1:\"c\";s:3:\"web\";}i:81;a:3:{s:1:\"a\";i:82;s:1:\"b\";s:22:\"delete_any_proveedores\";s:1:\"c\";s:3:\"web\";}i:82;a:3:{s:1:\"a\";i:83;s:1:\"b\";s:24:\"force_delete_proveedores\";s:1:\"c\";s:3:\"web\";}i:83;a:3:{s:1:\"a\";i:84;s:1:\"b\";s:28:\"force_delete_any_proveedores\";s:1:\"c\";s:3:\"web\";}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:3:{s:1:\"a\";i:91;s:1:\"b\";s:10:\"view_sedes\";s:1:\"c\";s:3:\"web\";}i:91;a:3:{s:1:\"a\";i:92;s:1:\"b\";s:14:\"view_any_sedes\";s:1:\"c\";s:3:\"web\";}i:92;a:3:{s:1:\"a\";i:93;s:1:\"b\";s:12:\"create_sedes\";s:1:\"c\";s:3:\"web\";}i:93;a:3:{s:1:\"a\";i:94;s:1:\"b\";s:12:\"update_sedes\";s:1:\"c\";s:3:\"web\";}i:94;a:3:{s:1:\"a\";i:95;s:1:\"b\";s:13:\"restore_sedes\";s:1:\"c\";s:3:\"web\";}i:95;a:3:{s:1:\"a\";i:96;s:1:\"b\";s:17:\"restore_any_sedes\";s:1:\"c\";s:3:\"web\";}i:96;a:3:{s:1:\"a\";i:97;s:1:\"b\";s:15:\"replicate_sedes\";s:1:\"c\";s:3:\"web\";}i:97;a:3:{s:1:\"a\";i:98;s:1:\"b\";s:13:\"reorder_sedes\";s:1:\"c\";s:3:\"web\";}i:98;a:3:{s:1:\"a\";i:99;s:1:\"b\";s:12:\"delete_sedes\";s:1:\"c\";s:3:\"web\";}i:99;a:3:{s:1:\"a\";i:100;s:1:\"b\";s:16:\"delete_any_sedes\";s:1:\"c\";s:3:\"web\";}i:100;a:3:{s:1:\"a\";i:101;s:1:\"b\";s:18:\"force_delete_sedes\";s:1:\"c\";s:3:\"web\";}i:101;a:3:{s:1:\"a\";i:102;s:1:\"b\";s:22:\"force_delete_any_sedes\";s:1:\"c\";s:3:\"web\";}i:102;a:3:{s:1:\"a\";i:103;s:1:\"b\";s:19:\"view_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:103;a:3:{s:1:\"a\";i:104;s:1:\"b\";s:23:\"view_any_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:104;a:3:{s:1:\"a\";i:105;s:1:\"b\";s:21:\"create_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:105;a:3:{s:1:\"a\";i:106;s:1:\"b\";s:21:\"update_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:106;a:3:{s:1:\"a\";i:107;s:1:\"b\";s:22:\"restore_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:107;a:3:{s:1:\"a\";i:108;s:1:\"b\";s:26:\"restore_any_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:108;a:3:{s:1:\"a\";i:109;s:1:\"b\";s:24:\"replicate_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:109;a:3:{s:1:\"a\";i:110;s:1:\"b\";s:22:\"reorder_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:110;a:3:{s:1:\"a\";i:111;s:1:\"b\";s:21:\"delete_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:111;a:3:{s:1:\"a\";i:112;s:1:\"b\";s:25:\"delete_any_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:112;a:3:{s:1:\"a\";i:113;s:1:\"b\";s:27:\"force_delete_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:113;a:3:{s:1:\"a\";i:114;s:1:\"b\";s:31:\"force_delete_any_sububicaciones\";s:1:\"c\";s:3:\"web\";}i:114;a:3:{s:1:\"a\";i:115;s:1:\"b\";s:16:\"view_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:115;a:3:{s:1:\"a\";i:116;s:1:\"b\";s:20:\"view_any_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:116;a:3:{s:1:\"a\";i:117;s:1:\"b\";s:18:\"create_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:117;a:3:{s:1:\"a\";i:118;s:1:\"b\";s:18:\"update_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:118;a:3:{s:1:\"a\";i:119;s:1:\"b\";s:19:\"restore_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:119;a:3:{s:1:\"a\";i:120;s:1:\"b\";s:23:\"restore_any_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:120;a:3:{s:1:\"a\";i:121;s:1:\"b\";s:21:\"replicate_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:121;a:3:{s:1:\"a\";i:122;s:1:\"b\";s:19:\"reorder_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:122;a:3:{s:1:\"a\";i:123;s:1:\"b\";s:18:\"delete_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:123;a:3:{s:1:\"a\";i:124;s:1:\"b\";s:22:\"delete_any_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:124;a:3:{s:1:\"a\";i:125;s:1:\"b\";s:24:\"force_delete_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:125;a:3:{s:1:\"a\";i:126;s:1:\"b\";s:28:\"force_delete_any_ubicaciones\";s:1:\"c\";s:3:\"web\";}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:16:\"view_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:20:\"view_any_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:18:\"create_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:18:\"update_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:19:\"restore_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:23:\"restore_any_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:21:\"replicate_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:19:\"reorder_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:18:\"delete_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:22:\"delete_any_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:24:\"force_delete_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:28:\"force_delete_any_activitylog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"VistaActivos\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"panel_user\";s:1:\"c\";s:3:\"web\";}}}', 1726778961);

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
(30, 3, 'heehe', '2024-08-15 20:44:50', '2024-08-15 20:44:50'),
(32, 3, 'ffghj', '2024-09-11 23:20:19', '2024-09-11 23:20:19'),
(33, 3, 'Se actualiza ', '2024-09-12 02:19:04', '2024-09-12 02:19:04');

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
(18, '2024_08_12_215139_create_comentarios_table', 8),
(20, '2024_08_13_174844_create_permission_tables', 9),
(21, '2024_08_13_211449_create_activity_log_table', 10),
(22, '2024_08_13_211450_add_event_column_to_activity_log_table', 10),
(23, '2024_08_13_211451_add_batch_uuid_column_to_activity_log_table', 10),
(24, '2024_09_12_194724_create_audits_table', 11),
(25, '2024_09_12_203058_create_audits_table', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

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
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(2, 'view_any_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(3, 'create_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(4, 'update_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(5, 'restore_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(6, 'restore_any_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(7, 'replicate_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(8, 'reorder_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(9, 'delete_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(10, 'delete_any_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(11, 'force_delete_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(12, 'force_delete_any_activos', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(13, 'view_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(14, 'view_any_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(15, 'create_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(16, 'update_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(17, 'restore_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(18, 'restore_any_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(19, 'replicate_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(20, 'reorder_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(21, 'delete_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(22, 'delete_any_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(23, 'force_delete_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(24, 'force_delete_any_categorias', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(25, 'view_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(26, 'view_any_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(27, 'create_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(28, 'update_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(29, 'restore_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(30, 'restore_any_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(31, 'replicate_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(32, 'reorder_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(33, 'delete_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(34, 'delete_any_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(35, 'force_delete_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(36, 'force_delete_any_comments', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(37, 'view_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(38, 'view_any_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(39, 'create_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(40, 'update_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(41, 'restore_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(42, 'restore_any_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(43, 'replicate_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(44, 'reorder_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(45, 'delete_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(46, 'delete_any_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(47, 'force_delete_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(48, 'force_delete_any_estado', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(49, 'view_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(50, 'view_any_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(51, 'create_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(52, 'update_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(53, 'restore_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(54, 'restore_any_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(55, 'replicate_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(56, 'reorder_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(57, 'delete_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(58, 'delete_any_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(59, 'force_delete_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(60, 'force_delete_any_permission', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(61, 'view_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(62, 'view_any_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(63, 'create_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(64, 'update_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(65, 'restore_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(66, 'restore_any_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(67, 'replicate_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(68, 'reorder_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(69, 'delete_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(70, 'delete_any_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(71, 'force_delete_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(72, 'force_delete_any_product', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(73, 'view_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(74, 'view_any_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(75, 'create_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(76, 'update_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(77, 'restore_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(78, 'restore_any_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(79, 'replicate_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(80, 'reorder_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(81, 'delete_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(82, 'delete_any_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(83, 'force_delete_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(84, 'force_delete_any_proveedores', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(85, 'view_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(86, 'view_any_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(87, 'create_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(88, 'update_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(89, 'delete_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(90, 'delete_any_role', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(91, 'view_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(92, 'view_any_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(93, 'create_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(94, 'update_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(95, 'restore_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(96, 'restore_any_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(97, 'replicate_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(98, 'reorder_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(99, 'delete_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(100, 'delete_any_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(101, 'force_delete_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(102, 'force_delete_any_sedes', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(103, 'view_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(104, 'view_any_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(105, 'create_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(106, 'update_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(107, 'restore_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(108, 'restore_any_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(109, 'replicate_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(110, 'reorder_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(111, 'delete_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(112, 'delete_any_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(113, 'force_delete_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(114, 'force_delete_any_sububicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(115, 'view_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(116, 'view_any_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(117, 'create_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(118, 'update_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(119, 'restore_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(120, 'restore_any_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(121, 'replicate_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(122, 'reorder_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(123, 'delete_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(124, 'delete_any_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(125, 'force_delete_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(126, 'force_delete_any_ubicaciones', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(127, 'view_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(128, 'view_any_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(129, 'create_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(130, 'update_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(131, 'restore_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(132, 'restore_any_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(133, 'replicate_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(134, 'reorder_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(135, 'delete_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(136, 'delete_any_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(137, 'force_delete_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(138, 'force_delete_any_user', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(139, 'view_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(140, 'view_any_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(141, 'create_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(142, 'update_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(143, 'restore_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(144, 'restore_any_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(145, 'replicate_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(146, 'reorder_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(147, 'delete_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(148, 'delete_any_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(149, 'force_delete_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53'),
(150, 'force_delete_any_activitylog', 'web', '2024-08-14 02:44:53', '2024-08-14 02:44:53');

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
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-08-14 01:30:02', '2024-08-14 01:30:02'),
(2, 'VistaActivos', 'web', '2024-08-14 01:33:16', '2024-08-14 21:42:56'),
(3, 'panel_user', 'web', '2024-08-14 01:57:02', '2024-08-14 01:57:02'),
(5, 'rolecreate', 'web', '2024-09-13 00:36:36', '2024-09-13 00:36:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1);

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
('AeErXftKDb5P8ABJrr2FnnDdNVqA1nv3OdjORZkz', NULL, '192.168.14.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmdRc05QcFh1RXpTS21mbUtkME1kM0hOOUdVR09Rb1o0Y0Fhb0piSCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0ODoiaHR0cDovLzE5Mi4xNjguMTQuMjQ2OjgwMDAvYWRtaW4vYWN0aXZpdHlsb2dzLzEzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xOTIuMTY4LjE0LjI0Njo4MDAwL2FkbWluL2FjdGl2aXR5bG9ncy8xMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726236561),
('dbrlUOf8OoCBharK4gGb2aN6ZFHiB0E15vVZvEWo', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY2FUQnp6Y3l1U1BQWXBXek4yYnd6aFNRcFU0TXFtT2NmbElid0hoNSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYWN0aXZvcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQuT28yTjNvNUJsMjVMdk0vLmNQdmwuZDc1YTZ4Tk11cnVOY1FkV2VqYUlDakxnRk80SGVzUyI7fQ==', 1726692569),
('Esb30JDF7GeVG452wpMHjkEujWHmGSq5FTu4hrVq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXhPY3JxeldvVndQbDJncVJERmhHRDhvYldoZFI4RjhlMXEyeHM5dyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726687153),
('HBMq4rs1YBOablvVfYRnZ2NVBh6LDsVmTFxkzZ4h', 1, '192.168.14.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZXB6SlVqOW5BZjd4M0xBNWVjTENyeWp1TVhTUlUxVUNUS2xURFpJaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xOTIuMTY4LjE0LjI0Njo4MDAwL2FkbWluL2FjdGl2aXR5bG9ncy8xMyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQuT28yTjNvNUJsMjVMdk0vLmNQdmwuZDc1YTZ4Tk11cnVOY1FkV2VqYUlDakxnRk80SGVzUyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1726177418);

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
(1, 'Kevin Oliveros', 'kevin@emp.com', NULL, '$2y$12$.Oo2N3o5Bl25LvM/.cPvl.d75a6xNMuruNcQdWejaICjLgFO4HesS', NULL, '2024-08-12 23:56:51', '2024-09-13 01:50:59'),
(2, 'Pedro', 'pedro@emp.com', NULL, '$2y$12$o5MwiGHHI7MN8EgFKCanYOhI3nRCjfRFM4tay6teCU5MbNGgQOFuW', NULL, '2024-08-13 19:55:37', '2024-08-13 19:55:37'),
(3, 'Test User', 'test@example.com', '2024-09-11 23:12:27', '$2y$12$RnlzbHKuPM2JktAU9Ko41O8iyw2agnbIjVEWGNl4s.hN0Yl0xd1hC', '0HZUvgbSG7', '2024-09-11 23:12:27', '2024-09-11 23:12:27'),
(4, 'jose', 'jose@emp.com', NULL, '$2y$12$7WiZt.g5m2QExKKF/N/6JuetgJS4wsTgaPsxRPSZ9PsMPYsBYt.X2', NULL, '2024-09-12 02:55:10', '2024-09-12 02:55:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

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
-- Indices de la tabla `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

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
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `audits`
--
ALTER TABLE `audits`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sububicaciones`
--
ALTER TABLE `sububicaciones`
  ADD CONSTRAINT `sububicaciones_ubicacion_id_foreign` FOREIGN KEY (`ubicacion_id`) REFERENCES `ubicaciones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
