-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2022 at 09:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ics`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `salary` bigint(20) NOT NULL,
  `join_date` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_09_15_121918_create_roles_table', 1),
(11, '2022_09_15_124315_add_foreign_keys_to_user_role_table', 1),
(12, '2022_10_07_134645_create_employees_table', 1),
(13, '2022_10_11_130559_create_routepermissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('008484f26cd26d7783f22fd0d0e1d9e0785301ab7f492bfeffa5fc240ca883f09f1abcb51b5fe1b8', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:42:21', '2022-11-01 08:42:22', '2023-11-01 14:12:21'),
('049dc3d0f3fbf9cf27a94db18c217ce60a2fe0485a040862ea538c89715fca5e474e9b5025a81aa5', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:29:29', '2022-11-01 02:29:29', '2023-11-01 07:59:29'),
('13cc3e4688987a07f8f8e09d385b7557b504e7cd336557d8ab44838b7e42cfd7dfb4ab2b031abc3e', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 06:52:02', '2022-11-01 06:52:03', '2023-11-01 12:22:02'),
('1879aac53d604c808a5026394f20b800e74d62ccde12fa1186320bdca745e296727eb2950454f3bf', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 1, '2022-11-01 02:22:17', '2022-11-01 02:26:25', '2023-11-01 07:52:17'),
('1cd305841ef84eabcc000d56745e614db473ddceb1e20d3c367730c86a2f38b49ab3c290ab00eb9b', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:16:16', '2022-11-01 02:16:16', '2023-11-01 07:46:16'),
('1e9b6c21260f94474073b6acae843fed18d8557b8461d835c2980306da1370c51eff584c414b0329', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:29:20', '2022-11-01 02:29:20', '2023-11-01 07:59:20'),
('29db2786b4297119f34de6b3966c66e991b8817d70f43a2fc82cf81663da363708e04b09e68927a7', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 1, '2022-11-01 02:29:58', '2022-11-01 02:30:11', '2023-11-01 07:59:58'),
('2a00a9735184290a51ff2b175e55e397a4097d50e636f329a33fb30c0378befef247249d564969f9', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:29:18', '2022-11-01 08:29:18', '2023-11-01 13:59:18'),
('2b672b306df8a6a5bf7157ca96fb86e2915e6fbe4d7da365ee0c23dae8905c6445eb8845a87cadd2', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:21:24', '2022-11-01 02:21:25', '2023-11-01 07:51:24'),
('3371bc0eecf59b76ec5e0797b1f165793e4600c66e7fd80c3877e36e3718a11f6cf41ef45b719ee5', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:42:15', '2022-11-01 08:42:15', '2023-11-01 14:12:15'),
('5950b446b1da55b97ec897575d18cefc006fd9a58bd3d21abdf1e6929bd1b957d98fb380650a7d94', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:14:51', '2022-11-01 02:14:52', '2023-11-01 07:44:51'),
('5c820e81d7b3ba6a426deb4688c6f264327297fc177ce123881fba0210541ea918eab524a50b7c8f', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:29:48', '2022-11-01 02:29:48', '2023-11-01 07:59:48'),
('6988d5c3f0d32562036ffee822e28d62debe1506387ae3601bb6ddcac8f499fb384957eb92a4a523', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:21:35', '2022-11-01 02:21:35', '2023-11-01 07:51:35'),
('721a55693397ae4c782d31602dc6fe48ca393c91ff52e75526e8aad93a0ec9d96476e2b080c199ff', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 06:00:30', '2022-11-01 06:00:30', '2023-11-01 11:30:30'),
('790c09ef8ecbd7cd69e7d4a31811100bff538c3a2164d676a04a5f1667f66e2682856f6f4d9ed7f0', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:42:28', '2022-11-01 08:42:28', '2023-11-01 14:12:28'),
('7e54a446a3582ad70c5eacb0ae34f7c6b40c79c2ab4ccce88ec462a1a6cf90f1776f952576402655', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:29:14', '2022-11-01 08:29:15', '2023-11-01 13:59:14'),
('820adfccdbfc9a7b04f0a01c38192be59d274338b89d726ee86d6ae01609f694ebc5dfff40f4a974', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:29:39', '2022-11-01 08:29:39', '2023-11-01 13:59:39'),
('8d7dcf6365526aa33b6078bd1578b0d7277c4c2e4a897c9b6074d04c913358a2409fd36ae1bfb5d7', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:42:54', '2022-11-01 08:42:54', '2023-11-01 14:12:54'),
('9fe6620563e28682889a6491e628c0e6f1051d2dacc4c800b700d02212f02f28a78698a9fd658d41', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:42:32', '2022-11-01 08:42:32', '2023-11-01 14:12:32'),
('a2c90add9d915385b0d1a4b928e682df4ba3acebb360011b700b7085d3d5d005b8f40578d369a7c1', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:43:00', '2022-11-01 08:43:00', '2023-11-01 14:13:00'),
('a9cc7ca45152f4609bccfea789c862bebf0bfb307f8876a25be4c24af7ba459fcabca8a5041f6079', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 03:59:48', '2022-11-01 03:59:48', '2023-11-01 09:29:48'),
('aa1d74d8d0c048d75e19f16ea783b7ff6f7a7104ed8544e6acc3a73ba3da9c5cd36ce88cbdf1a5f9', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:32:20', '2022-11-01 02:32:20', '2023-11-01 08:02:20'),
('ac1097b4bc54a104be3df567017e720356d50036633970eed760e3fa4293ef7332e4b9f998d510f9', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:31:48', '2022-11-01 02:31:48', '2023-11-01 08:01:48'),
('b16c07185460690bf8a1d1cb5bc69a4a53288203436110df47b44349544ad3068e522e2e8a2926f8', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 1, '2022-11-01 08:42:06', '2022-11-01 08:42:13', '2023-11-01 14:12:06'),
('b75808cfc31752e50c605a92c05efa84fd5aff3829998def87e3755ee21d2d8807c5b66ed27c3977', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:30:12', '2022-11-01 02:30:13', '2023-11-01 08:00:12'),
('be235922e4b6750733f9b672468313560e01ab0f0cf730e4b3905b1ecd9197d44d758e3b2fa46ed2', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:40:42', '2022-11-01 08:40:42', '2023-11-01 14:10:42'),
('be3390a98d4d43e1341a5b70594df9a33b1480f52664b5d257c866689ed3f49163f97e97bfc58eeb', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 08:40:58', '2022-11-01 08:40:58', '2023-11-01 14:10:58'),
('be569f0e6cdff12d64b427f038a2e567a44c1036796bfdbbeb6c9f7356cca4dc2ede1c6a3737ae44', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:29:18', '2022-11-01 02:29:19', '2023-11-01 07:59:18'),
('cc41049661793fd22bb651c55dc888b9fdbf07bd9968f16b755a515a6cd7d8263455c060d47a09ff', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:26:26', '2022-11-01 02:26:26', '2023-11-01 07:56:26'),
('d429a6e746c90b2bbf6078569a26da528d916097b908a3b85808e04fe792f5f1374a85c73adf0afb', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:32:07', '2022-11-01 02:32:07', '2023-11-01 08:02:07'),
('f5eb08d07e28282c28b30b2ec12254bfe209bd4a2fabca093dfe1853dbcea3820dbd63ed8258bda5', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:05:12', '2022-11-01 02:05:12', '2023-11-01 07:35:12'),
('f9320a7ba8faae1f8b5b2b8f97e24413aa13219ca05ca442002faef627c579bc9aaf5328eb58ac7b', 4, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', 'authToken', '[]', 0, '2022-11-01 02:32:05', '2022-11-01 02:32:05', '2023-11-01 08:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('97a3938a-b7d2-422e-a5fa-42d07f46e33f', NULL, 'Laravel Personal Access Client', '5EM0HlxDFyOH7YcSsdw4C4ScBsvJCX4IccYI3G6l', NULL, 'http://localhost', 1, 0, 0, '2022-11-01 02:05:08', '2022-11-01 02:05:08'),
('97a3938a-ffbb-4ad5-b6ae-352c38b78133', NULL, 'Laravel Password Grant Client', 'ze0weansfZRuQdox3VcFGZEtr2Cze2zOL3JZwJxy', 'users', 'http://localhost', 0, 1, 0, '2022-11-01 02:05:08', '2022-11-01 02:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '97a3938a-b7d2-422e-a5fa-42d07f46e33f', '2022-11-01 02:05:08', '2022-11-01 02:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Superadmin', NULL, NULL),
(2, 2, 'Admin', NULL, NULL),
(3, 3, 'Users', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routepermissions`
--

CREATE TABLE `routepermissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routepermissions`
--

INSERT INTO `routepermissions` (`id`, `route`, `slug`, `name`, `icon`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, '/dashboard', 'home', 'Home', 'home', 0, 1, NULL, NULL),
(2, '/about', 'about', 'About', 'visibility', 0, 0, NULL, NULL),
(3, '/logout', 'logout', 'Logout', 'logout', NULL, 1, NULL, NULL),
(4, '', 'users', 'Users', 'people', 0, 1, NULL, NULL),
(5, '/list_users', 'users_list', 'Users List', 'person', 4, 1, NULL, NULL),
(6, '/list_employee', 'employee', 'Employee', 'badge', 4, 1, NULL, NULL),
(7, '/list_outsource_employee', 'outsource_employee', 'Outsource Employee', 'person', 4, 1, NULL, NULL),
(8, '/list_customer', 'customer', 'Customer', 'person', 4, 1, NULL, NULL),
(9, '/list_suplier', 'supplier', 'Supplier', 'person', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', NULL, 1, '$2y$10$sOcHmOtCBSIR44LwETpFSun3ev9SoMTHfq6kFX2c1jeMaXS/6uv2u', NULL, NULL, '2022-11-01 08:23:33', NULL),
(2, 'Admin', 'accountadmin@gmail.com', NULL, 2, '$2y$10$g.jImY2ciBPJGmjXii/Il.YVX9BwM/2w0LkVb3JHqbBV46D0C9Jga', NULL, NULL, NULL, NULL),
(3, 'Users', 'projectadmin@gmail.com', NULL, 3, '$2y$10$owIxsF/i7P3/UcP3AvuHUewCpqcU31PPcR02MgzLU2gVNkbnccdJ6', NULL, NULL, NULL, NULL),
(4, 'Seena', 'admin@example.com', NULL, 3, '$2y$10$IE.GgJ8q462Za.rPSOyBeOmAG6M.3E49yNdX5Sl5iS3tVxUhhmKw.', NULL, NULL, '2022-11-01 08:23:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_id_unique` (`role_id`);

--
-- Indexes for table `routepermissions`
--
ALTER TABLE `routepermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routepermissions`
--
ALTER TABLE `routepermissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
