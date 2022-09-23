-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2022 at 07:03 AM
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
(11, '2022_09_15_124315_add_foreign_keys_to_user_role_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
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
('044b11eef160c49c32677bf7f47a75d776c9a48e4597a687f36906b0e26651b5bc6dcfdb2242ddfb', 4, 1, 'authToken', '[]', 1, '2022-09-21 02:31:20', '2022-09-21 02:31:20', '2023-09-21 08:01:20'),
('06c8871cebfb6a355e16bbdf0a28becc137364128e6825a9a8c6a142cde10b70cbb28a9b62235d4e', 4, 1, 'authToken', '[]', 1, '2022-09-22 04:51:16', '2022-09-22 04:51:16', '2023-09-22 10:21:16'),
('09a26d12c97194eace2190841012dd81a5c7131318b45ee4b303677bc1d4693d831bd4b0e058267e', 1, 1, 'authToken', '[]', 0, '2022-09-20 06:30:53', '2022-09-20 06:30:53', '2023-09-20 12:00:53'),
('0f8c27fd391c6ced664285f51b9c7731aa3ebd6292af213dd8cc968f10f3027b2d2c73396cb8f4b3', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:46:35', '2022-09-20 23:46:35', '2023-09-21 05:16:35'),
('1706a2073755af9e720194345a079fc5c44283bed5bd680111c0687e15bbe1b37cf78dcff0fe7a13', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:42:23', '2022-09-20 23:42:23', '2023-09-21 05:12:23'),
('1bfd275d4e873b340409022debb0192a1417894d10ca445c3e8f80bb937a281f257270ff2bba49f5', 4, 1, 'authToken', '[]', 0, '2022-09-22 01:52:40', '2022-09-22 01:52:40', '2023-09-22 07:22:40'),
('1d3872ea49456c61ac933b8d2e829b0c43784c0b7b9d7a2eccd13e80ab0fce30d6060a9a142c54ce', 4, 1, 'authToken', '[]', 1, '2022-09-21 06:03:22', '2022-09-21 06:03:22', '2023-09-21 11:33:22'),
('1d72ab50b72a26d6937ea3a83cd2937145b3ed40fe78e046be7e79acebebb7c964a23210c5beec2f', 4, 1, 'authToken', '[]', 0, '2022-09-22 03:35:30', '2022-09-22 03:35:30', '2023-09-22 09:05:30'),
('1f312bb6608fceea9cb3537fc363fdaac1920aaa6de9b182908298c1630aafd1ca5f36e1a04d58c8', 4, 1, 'authToken', '[]', 1, '2022-09-20 23:53:55', '2022-09-20 23:53:55', '2023-09-21 05:23:55'),
('20b5502aca00637483bc642b36442bfb210c7afbd78376b9acb08ffdf2ac52b4b38216153e5395a8', 4, 1, 'authToken', '[]', 0, '2022-09-22 04:51:31', '2022-09-22 04:51:31', '2023-09-22 10:21:31'),
('2109016e65b823d2723c1be293c621df8cb3be50439f10f80d38e3e11db8ab5a0f2d6cb473d4c9e7', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:39:54', '2022-09-22 01:39:54', '2023-09-22 07:09:54'),
('245443937a80b9c35f42794e71e8618dd19f30b0a81786f18af8ad9be2089e14009cfb9e6ab86f30', 4, 1, 'authToken', '[]', 0, '2022-09-22 02:03:56', '2022-09-22 02:03:56', '2023-09-22 07:33:56'),
('271c90e4f2d41e94f03613e585b12e01bd7f882dab866ad019709f509bfa25828e467a3a3217d55b', 4, 1, 'authToken', '[]', 1, '2022-09-21 02:31:14', '2022-09-21 02:31:14', '2023-09-21 08:01:14'),
('276cff33b80b3b4a58d2d3ff369730dad48b18f7b85ccf92a03acf11b3e4fad9c5604826c0100344', 4, 1, 'authToken', '[]', 1, '2022-09-22 00:43:18', '2022-09-22 00:43:18', '2023-09-22 06:13:18'),
('27a9502374bb94faba1dd0dc88f124a4cedaa82c945244590b417a74970cc0eb50ed4c49cd84ca2b', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:37:16', '2022-09-21 23:37:16', '2023-09-22 05:07:16'),
('27c54f74b50608c36988b7e3decb150c1c84a49d2c3ddd675b99af5a5302b57a2aa853b72976445c', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:32:40', '2022-09-22 01:32:40', '2023-09-22 07:02:40'),
('29260b9e2608174792d27615984caad507ecbc3c42a2eec0c69031621e52d3885de7143770079acb', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:32:21', '2022-09-22 01:32:21', '2023-09-22 07:02:21'),
('29d7d7229838461cd4674a09dd5ceecb9b96fdfed3529dea2cf14870fd771ada8f84aa90e7275919', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:02:06', '2022-09-21 23:02:06', '2023-09-22 04:32:06'),
('2b6d77fd14af202cd14257e58b518fdbec16ca7928387e38f3d7c1a5853ff554596d7bcef48a3880', 4, 1, 'authToken', '[]', 1, '2022-09-22 08:36:15', '2022-09-22 08:36:15', '2023-09-22 14:06:15'),
('2ca49efacfe5e63f731f7bcb3e9748bdc33ddc2d69895a85374be9646df8d0dc79fe8023681a49b4', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:11:20', '2022-09-22 01:11:20', '2023-09-22 06:41:20'),
('2edffacc784e59564a0038cf59e2f0b902a2a84bd62c5fb6b02476d049cab13dcab39e616209b867', 4, 1, 'authToken', '[]', 1, '2022-09-21 08:37:18', '2022-09-21 08:37:18', '2023-09-21 14:07:18'),
('33bce496ba900ad6cebf778392d46ca929ff901c633bbd27638e5a0c4ba93a0f497d93d89b4749a6', 4, 1, 'authToken', '[]', 1, '2022-09-21 04:28:59', '2022-09-21 04:28:59', '2023-09-21 09:58:59'),
('3875174900d765b269ae42a0ea9e095c9983b562ced58c067f325c93d009401641d70fbd45b64cb5', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:43:30', '2022-09-20 23:43:30', '2023-09-21 05:13:30'),
('3ce6ce0912e1193750f0d037fc19d3c0e24945c08a2d55fa040cf928f41d2a704ce3ea765ffe669c', 4, 1, 'authToken', '[]', 1, '2022-09-21 05:55:28', '2022-09-21 05:55:28', '2023-09-21 11:25:28'),
('3efcd0b9899222ebc3c969c5d7791768d5f8f37958c9ecf65490e1c4ee7ca1585d6f040f7a8bfabf', 4, 1, 'authToken', '[]', 1, '2022-09-22 05:05:12', '2022-09-22 05:05:12', '2023-09-22 10:35:12'),
('43bdacdaec8a08478a6e07224c732bb03565664cd26a6bbce918259e277d45add82f73d6354c1a80', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:19:10', '2022-09-20 23:19:10', '2023-09-21 04:49:10'),
('470456fd4efac6c568f7e775c51f87fec99d1bb4879a9ac191e2e32aa09f916682499f28786693d6', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:45:34', '2022-09-20 23:45:34', '2023-09-21 05:15:34'),
('55cff03e62d0214d6e06b1245cf0d10f4b919e42d540214de8a8fca649f9980501080bcd47881848', 4, 1, 'authToken', '[]', 0, '2022-09-22 04:10:28', '2022-09-22 04:10:28', '2023-09-22 09:40:28'),
('623f15399e4be46c5b13fac9d65e75ea9da7fa850166b738fb9af8672cb681ac23b7b110e0152e8b', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:40:52', '2022-09-21 23:40:52', '2023-09-22 05:10:52'),
('75362e491109039d41689eb8ff8c7f024176b7c68894cf616fec7c0d9e2deeb6842c6abfe81b8bb6', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:45:49', '2022-09-20 23:45:49', '2023-09-21 05:15:49'),
('7bc577dddd68ad1eb5fe53f010b8c1331be5221e54710b339a4187555a60754983da8a7c2975f123', 4, 1, 'authToken', '[]', 0, '2022-09-22 05:06:05', '2022-09-22 05:06:05', '2023-09-22 10:36:05'),
('822165e3f26a07ab33d3c0313e9887818f66948f18bc071d5bbf4ac4b2355150cde650296b1312c9', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:01:36', '2022-09-21 23:01:36', '2023-09-22 04:31:36'),
('84dfd4215d32b3040a056647a7b56a7ab8940d7aeb45a8554d6c2fab3eb9bd0a151a791b4364957c', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:42:19', '2022-09-20 23:42:19', '2023-09-21 05:12:19'),
('86265085dba86edbe29677ea726274d5cdf4f8f8cf75d04e70b0fce629778af72e31d3f014300205', 4, 1, 'authToken', '[]', 1, '2022-09-21 02:31:08', '2022-09-21 02:31:08', '2023-09-21 08:01:08'),
('87457bb76c4a2aef1ecee3a0306b67afdc10ac24ff554ad4c8ecba09de3886ebe59bce3ebb50aa58', 4, 1, 'authToken', '[]', 1, '2022-09-22 03:47:25', '2022-09-22 03:47:25', '2023-09-22 09:17:25'),
('890d676c394973610181f6f81eeaec8ce58573fa84941b52a4ec8804665f6a2a34f64a59096ce05e', 4, 1, 'authToken', '[]', 1, '2022-09-20 23:49:31', '2022-09-20 23:49:31', '2023-09-21 05:19:31'),
('92fcdbd94c71aefb3f68e7f7c865ea74577258efa76c555f79cd202fff380da3ae6a51a7d5a3d199', 4, 1, 'authToken', '[]', 1, '2022-09-22 00:02:15', '2022-09-22 00:02:15', '2023-09-22 05:32:15'),
('9e9beefb732c2bb72b3865619a7cd18185e36815b39213bd5ede49e0b21b2b89995f43eac9aa95b1', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:38:42', '2022-09-21 23:38:42', '2023-09-22 05:08:42'),
('a35c630bfdc660ab4ba2ffa6753e1004e68d6c688a5bddefefbbd9ab0670beb48078f3de899c4304', 4, 1, 'authToken', '[]', 1, '2022-09-22 02:34:12', '2022-09-22 02:34:12', '2023-09-22 08:04:12'),
('a8e683fed97720f613368b1ea2781e5dbdaeeeabe9bacb9ff3e114fecdd690d97751c5c43cdfedd1', 4, 1, 'authToken', '[]', 0, '2022-09-22 03:29:18', '2022-09-22 03:29:18', '2023-09-22 08:59:18'),
('a921114f0e5a1abe9479a4ce519ffee775b6744e237ba2abe0e74c000b3e72597018e0679ab67d29', 4, 1, 'authToken', '[]', 1, '2022-09-21 04:07:30', '2022-09-21 04:07:30', '2023-09-21 09:37:30'),
('ad08242d718dd578097773a527f52d1483a9f5478a83e84e9e01d8a8059be68b02d8dac99f6de4e8', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:45:35', '2022-09-21 23:45:35', '2023-09-22 05:15:35'),
('b065acc803a8f005b80f6365e94facebf0e9e1a0a6caaa6d00938de3e2aa14681d0d96d992c41f06', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:48:17', '2022-09-20 23:48:17', '2023-09-21 05:18:17'),
('b0f33ad2948ef5412ee0481c105ee99eae1d474559b5d29b69a4b3974c1469d69c0ae0b0ecd71fb7', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:34:23', '2022-09-22 01:34:23', '2023-09-22 07:04:23'),
('ba289a37e17313a2bc9dbe04035f24c1d80731a059ffb61f0e22db742ea17da511b780359fff9698', 4, 1, 'authToken', '[]', 1, '2022-09-22 03:35:31', '2022-09-22 03:35:31', '2023-09-22 09:05:31'),
('be4f12ff593b04495c24201ad1578af9d6978f26c1ed1a92ddc58096e173fd5fd4d587fc3df42f6a', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:43:15', '2022-09-22 01:43:15', '2023-09-22 07:13:15'),
('c3334734eea792fa942475edb1641c7834d9e90e6bf0cea84dd5f0b5287b42a5cf2f415bbb2cdb40', 1, 1, 'authToken', '[]', 0, '2022-09-20 06:30:36', '2022-09-20 06:30:36', '2023-09-20 12:00:36'),
('c35477c03e2c344051927d760d4517102d713de2936a4e63f75209a5cd4d4a0f281b34222eda0847', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:42:30', '2022-09-20 23:42:30', '2023-09-21 05:12:30'),
('c465dd0c72037009acd1c62c6519c0ddf85d90797ecbae3dbf2b8ef09a611ab31f0e37c0d18de4b5', 4, 1, 'authToken', '[]', 0, '2022-09-21 05:57:05', '2022-09-21 05:57:05', '2023-09-21 11:27:05'),
('d197193d4ce47f41d408fae99d3a9370c451994155fb3bb6e420fa01c94db9d18122a14bdcd91466', 4, 1, 'authToken', '[]', 0, '2022-09-20 23:43:06', '2022-09-20 23:43:06', '2023-09-21 05:13:06'),
('d2a8d32a95fc69faeeb2f543bf555a01440b66c64577156ecbc517f8f3d502d6742cc20f2e18a547', 4, 1, 'authToken', '[]', 1, '2022-09-22 01:45:04', '2022-09-22 01:45:04', '2023-09-22 07:15:04'),
('dc5c19ae30f2f9b0d879617a9784aae79eefb293ca8bb89652decf992a6caaa1d498049c7e98e918', 4, 1, 'authToken', '[]', 1, '2022-09-21 04:00:17', '2022-09-21 04:00:17', '2023-09-21 09:30:17'),
('e14369ce55e5e10dd1b690df06eb9a04bb7b8b523a12a79915df3ecdf040cad042873ff4f390c503', 4, 1, 'authToken', '[]', 1, '2022-09-20 23:53:11', '2022-09-20 23:53:11', '2023-09-21 05:23:11'),
('e179625d0e3644789962ec567d109b9ef5a27b627cfd25ad7f82947524817897328e28aaa39a56aa', 4, 1, 'authToken', '[]', 1, '2022-09-21 23:36:44', '2022-09-21 23:36:44', '2023-09-22 05:06:44'),
('e5ff3f3d29bc61ec3653149f986e2df9dd82948b836a0a8e42594b4b0e614991c090d9e57adeb3e3', 4, 1, 'authToken', '[]', 1, '2022-09-22 02:02:09', '2022-09-22 02:02:09', '2023-09-22 07:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'W5FvDQfEIU5YPDuWP2DtbaeG6NaSjLqgZxVhB2yW', NULL, 'http://localhost', 1, 0, 0, '2022-09-20 06:30:19', '2022-09-20 06:30:19'),
(2, NULL, 'Laravel Password Grant Client', 'eA5bQmvSi0P25YiLv0TggRTYsiEr0KtjB7PYMfTO', 'users', 'http://localhost', 0, 1, 0, '2022-09-20 06:30:19', '2022-09-20 06:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-09-20 06:30:19', '2022-09-20 06:30:19');

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
(1, 'Super Admin', 'superadmin@gmail.com', NULL, 1, '$2y$10$yLWv8oVf45otE9RIwkiSTei.pLqUWh9gJa8LbKB76eKIqWDUWscfe', NULL, NULL, NULL, NULL),
(2, 'Admin', 'accountadmin@gmail.com', NULL, 2, '$2y$10$ennX7XGJjWJiDEY6.F0GH.XkBOR1Y3rTFIOdpoKZvxuY3GS2YiMNC', NULL, NULL, NULL, NULL),
(3, 'Users', 'projectadmin@gmail.com', NULL, 3, '$2y$10$6thRvTA9SpQH25vGRciIcO4OOaYE45Q8MczkokJiLVy/W.gfkuoXO', NULL, NULL, NULL, NULL),
(4, 'Anees Ahmed', 'admin@example.com', NULL, 1, '$2y$10$yLWv8oVf45otE9RIwkiSTei.pLqUWh9gJa8LbKB76eKIqWDUWscfe', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
