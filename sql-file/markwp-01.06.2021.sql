-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 04:25 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `markwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(1, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-31 05:39:27', '2020-12-31 05:39:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609393167;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609393167;}', 0, 1, '2020-12-31 05:40:17', '2020-12-31 05:40:17', 0, NULL),
(2, 'action_scheduler/migration_hook', 'pending', '2020-12-31 06:24:19', '2020-12-31 06:24:19', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609395859;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609395859;}', 1, 0, '2021-06-01 14:19:32', '2021-06-01 14:19:32', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 1, 'action created', '2020-12-31 05:39:27', '2020-12-31 05:39:27'),
(2, 1, 'action started via Async Request', '2020-12-31 05:40:15', '2020-12-31 05:40:15'),
(3, 1, 'action complete via Async Request', '2020-12-31 05:40:17', '2020-12-31 05:40:17'),
(4, 2, 'action created', '2020-12-31 06:24:19', '2020-12-31 06:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-02 04:55:20', '2020-04-02 04:55:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'Rayhan Uddin Chowdhury', 'rayhanctg4@gmail.com', 'http://localhost/markwp', '::1', '2020-05-05 22:32:24', '2020-05-05 22:32:24', 'dfdfds', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20201231_markwp', '5e83ed7b633a06a03133_20201231065437', 100, '2020-12-31 06:55:38', 'unknown', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-12-31 06:54:37\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.4\";s:9:\"VersionDB\";s:7:\"10.1.36\";s:10:\"VersionPHP\";s:6:\"7.2.11\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:15:\"20201231_markwp\";s:4:\"Hash\";s:35:\"5e83ed7b633a06a03133_20201231065437\";s:8:\"NameHash\";s:51:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:61:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:11:\"411.14 sec.\";s:7:\"ExeSize\";s:7:\"61.29KB\";s:7:\"ZipSize\";s:8:\"113.46MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:63:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:22:\"D:/xampp/htdocs/markwp\";s:4:\"Size\";i:118969223;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:6241;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:31:\"D:/xampp/htdocs/markwp/wp-admin\";i:1;s:41:\"D:/xampp/htdocs/markwp/wp-content/uploads\";i:2;s:43:\"D:/xampp/htdocs/markwp/wp-content/languages\";i:3;s:40:\"D:/xampp/htdocs/markwp/wp-content/themes\";i:4;s:34:\"D:/xampp/htdocs/markwp/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:22:\"D:/xampp/htdocs/markwp\";i:1;s:33:\"D:/xampp/htdocs/markwp/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:34:\"D:/xampp/htdocs/markwp/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:65:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437_installer.php\";s:4:\"Size\";i:62757;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:1061404;s:4:\"File\";s:64:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:13:\"collationList\";a:2:{i:0;s:18:\"utf8mb4_unicode_ci\";i:1;s:17:\"latin1_swedish_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:6:\"markwp\";s:15:\"tablesBaseCount\";i:41;s:16:\"tablesFinalCount\";i:41;s:14:\"tablesRowCount\";s:5:\"1,495\";s:16:\"tablesSizeOnDisk\";s:6:\"3.38MB\";s:18:\"varLowerCaseTables\";s:1:\"1\";s:7:\"version\";s:7:\"10.1.36\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:18:\"tableWiseRowCounts\";a:40:{s:26:\"wp_actionscheduler_actions\";s:1:\"2\";s:25:\"wp_actionscheduler_claims\";s:1:\"0\";s:25:\"wp_actionscheduler_groups\";s:1:\"1\";s:23:\"wp_actionscheduler_logs\";s:1:\"4\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"2\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:11:\"wp_postmeta\";s:3:\"678\";s:8:\"wp_posts\";s:3:\"176\";s:21:\"wp_term_relationships\";s:2:\"68\";s:16:\"wp_term_taxonomy\";s:2:\"34\";s:11:\"wp_termmeta\";s:2:\"16\";s:8:\"wp_terms\";s:2:\"34\";s:11:\"wp_usermeta\";s:2:\"56\";s:8:\"wp_users\";s:1:\"1\";s:24:\"wp_wc_admin_note_actions\";s:1:\"4\";s:17:\"wp_wc_admin_notes\";s:1:\"3\";s:18:\"wp_wc_download_log\";s:1:\"0\";s:25:\"wp_wc_order_coupon_lookup\";s:1:\"0\";s:26:\"wp_wc_order_product_lookup\";s:1:\"0\";s:17:\"wp_wc_order_stats\";s:1:\"0\";s:22:\"wp_wc_order_tax_lookup\";s:1:\"0\";s:25:\"wp_wc_product_meta_lookup\";s:2:\"32\";s:22:\"wp_wc_tax_rate_classes\";s:1:\"2\";s:14:\"wp_wc_webhooks\";s:1:\"0\";s:23:\"wp_woocommerce_api_keys\";s:1:\"0\";s:35:\"wp_woocommerce_attribute_taxonomies\";s:1:\"2\";s:47:\"wp_woocommerce_downloadable_product_permissions\";s:1:\"0\";s:18:\"wp_woocommerce_log\";s:1:\"0\";s:29:\"wp_woocommerce_order_itemmeta\";s:1:\"0\";s:26:\"wp_woocommerce_order_items\";s:1:\"0\";s:32:\"wp_woocommerce_payment_tokenmeta\";s:1:\"0\";s:29:\"wp_woocommerce_payment_tokens\";s:1:\"0\";s:23:\"wp_woocommerce_sessions\";s:1:\"1\";s:38:\"wp_woocommerce_shipping_zone_locations\";s:1:\"0\";s:36:\"wp_woocommerce_shipping_zone_methods\";s:1:\"0\";s:29:\"wp_woocommerce_shipping_zones\";s:1:\"0\";s:33:\"wp_woocommerce_tax_rate_locations\";s:1:\"0\";s:24:\"wp_woocommerce_tax_rates\";s:1:\"0\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:119:\"D:/xampp/htdocs/markwp/wp-content/backups-dup-lite/tmp/20201231_markwp_5e83ed7b633a06a03133_20201231065437_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-12-31 06:54:37\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.4\";s:9:\"VersionDB\";s:7:\"10.1.36\";s:10:\"VersionPHP\";s:6:\"7.2.11\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:15:\"20201231_markwp\";s:4:\"Hash\";s:35:\"5e83ed7b633a06a03133_20201231065437\";s:8:\"NameHash\";s:51:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:88;s:13:\"BuildProgress\";r:161;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/markwp', 'yes'),
(2, 'home', 'http://localhost/markwp', 'yes'),
(3, 'blogname', 'markwp', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rayhanctg4@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:171:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"section/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"section/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"section/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"section/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"section/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"section/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"section/([^/]+)/embed/?$\";s:40:\"index.php?section=$matches[1]&embed=true\";s:28:\"section/([^/]+)/trackback/?$\";s:34:\"index.php?section=$matches[1]&tb=1\";s:36:\"section/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?section=$matches[1]&paged=$matches[2]\";s:43:\"section/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?section=$matches[1]&cpage=$matches[2]\";s:33:\"section/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?section=$matches[1]&wc-api=$matches[3]\";s:39:\"section/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"section/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"section/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?section=$matches[1]&page=$matches[2]\";s:24:\"section/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"section/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"section/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"section/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"section/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"section/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=25&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:25:\"duplicator/duplicator.php\";i:2;s:33:\"mark-companion/mark-companion.php\";i:3;s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mark', 'yes'),
(41, 'stylesheet', 'mark', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:223:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur amet porro ut tempora veniam, ab vero saepe omnis nam nemo?\r\n\r\nFonsectetur adipisicing elit. Pariatur amet porro ut tempora veniam, ab vero saepe omnis nam.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '239', 'yes'),
(84, 'page_on_front', '25', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1624945064', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"footer-left\";a:2:{i:0;s:6:\"text-2\";i:1;s:17:\"tb_social_icons-2\";}s:13:\"footer-middle\";a:1:{i:0;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:12:\"footer-right\";a:4:{i:0;s:10:\"archives-4\";i:1;s:10:\"calendar-2\";i:2;s:11:\"tag_cloud-3\";i:3;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:16:{i:1622557164;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1622557591;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622557673;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622559012;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1622559346;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1622562288;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622566524;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622592000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622609722;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622609748;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622609755;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622627098;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622637888;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622782523;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1622972748;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:2:{i:3;a:3:{s:5:\"title\";s:3:\"Tag\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:11:\"QUICK LINKS\";s:8:\"nav_menu\";i:33;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609396067;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:10:\"archives-4\";i:1;s:10:\"calendar-2\";i:2;s:11:\"tag_cloud-3\";i:3;s:10:\"nav_menu-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:6:\"text-2\";i:1;s:17:\"tb_social_icons-2\";}}}s:16:\"background_color\";s:3:\"fff\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:34;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.4-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.4-rollback-0.zip\";}s:7:\"current\";s:5:\"5.4.4\";s:7:\"version\";s:5:\"5.4.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1622544318;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":6,\"critical\":2}', 'yes'),
(148, 'current_theme', 'Mark Onepage Theme', 'yes'),
(149, 'theme_mods_mark', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:34;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1588717134;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"footer-left\";a:2:{i:0;s:6:\"text-2\";i:1;s:17:\"tb_social_icons-2\";}s:13:\"footer-middle\";a:1:{i:0;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:12:\"footer-right\";a:2:{i:0;s:11:\"tag_cloud-3\";i:1;s:10:\"nav_menu-2\";}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(178, '_cs_options', 'a:101:{s:14:\"color_picker_1\";s:7:\"#3498db\";s:8:\"number_1\";s:2:\"10\";s:13:\"unique_text_4\";s:30:\"some default value bla bla bla\";s:13:\"unique_text_9\";s:15:\"info@domain.com\";s:14:\"unique_text_10\";s:5:\"Hello\";s:17:\"unique_textarea_4\";s:30:\"some default value bla bla bla\";s:17:\"unique_checkbox_2\";b:1;s:17:\"unique_checkbox_5\";s:3:\"bmw\";s:17:\"unique_checkbox_6\";a:3:{i:0;s:5:\"green\";i:1;s:6:\"yellow\";i:2;s:3:\"red\";}s:14:\"unique_radio_2\";s:7:\"nothing\";s:15:\"unique_select_4\";s:8:\"tertiary\";s:15:\"unique_select_7\";a:3:{i:0;s:3:\"bmw\";i:1;s:8:\"mercedes\";i:2;s:4:\"opel\";}s:17:\"unique_switcher_4\";b:1;s:15:\"unique_number_4\";s:2:\"10\";s:13:\"unique_icon_4\";s:11:\"fa fa-check\";s:14:\"unique_group_2\";a:2:{i:0;a:3:{s:19:\"unique_group_2_text\";s:9:\"Some text\";s:23:\"unique_group_2_switcher\";b:1;s:23:\"unique_group_2_textarea\";s:12:\"Some content\";}i:1;a:3:{s:19:\"unique_group_2_text\";s:11:\"Some text 2\";s:23:\"unique_group_2_switcher\";b:1;s:23:\"unique_group_2_textarea\";s:14:\"Some content 2\";}}s:15:\"unique_upload_4\";s:16:\"screenshot-1.png\";s:19:\"unique_background_3\";a:5:{s:5:\"image\";s:13:\"something.png\";s:6:\"repeat\";s:8:\"repeat-x\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:5:\"fixed\";s:5:\"color\";s:7:\"#ffbc00\";}s:19:\"unique_background_4\";a:1:{s:5:\"color\";s:4:\"#222\";}s:21:\"unique_color_picker_1\";s:7:\"#dd3333\";s:21:\"unique_color_picker_5\";s:21:\"rgba(0, 0, 255, 0.25)\";s:21:\"unique_color_picker_6\";s:21:\"rgba(0, 255, 0, 0.75)\";s:21:\"unique_image_select_2\";s:7:\"value-2\";s:21:\"unique_image_select_3\";s:7:\"value-3\";s:21:\"unique_image_select_4\";s:7:\"value-2\";s:21:\"unique_image_select_5\";a:4:{i:0;s:7:\"value-3\";i:1;s:7:\"value-4\";i:2;s:7:\"value-5\";i:3;s:7:\"value-6\";}s:19:\"unique_typography_1\";a:3:{s:6:\"family\";s:9:\"Open Sans\";s:4:\"font\";s:6:\"google\";s:7:\"variant\";s:3:\"800\";}s:19:\"unique_typography_2\";a:2:{s:6:\"family\";s:6:\"Ubuntu\";s:4:\"font\";s:6:\"google\";}s:19:\"unique_typography_3\";a:2:{s:6:\"family\";s:5:\"Arial\";s:4:\"font\";s:7:\"websafe\";}s:8:\"sorter_1\";a:2:{s:7:\"enabled\";a:3:{s:3:\"bmw\";s:3:\"BMW\";s:8:\"mercedes\";s:8:\"Mercedes\";s:10:\"volkswagen\";s:10:\"Volkswagen\";}s:8:\"disabled\";a:2:{s:7:\"ferrari\";s:7:\"Ferrari\";s:7:\"mustang\";s:7:\"Mustang\";}}s:8:\"sorter_2\";a:2:{s:7:\"enabled\";a:6:{s:4:\"blue\";s:4:\"Blue\";s:5:\"green\";s:5:\"Green\";s:3:\"red\";s:3:\"Red\";s:6:\"yellow\";s:6:\"Yellow\";s:6:\"orange\";s:6:\"Orange\";s:5:\"ocean\";s:5:\"Ocean\";}s:8:\"disabled\";a:2:{s:5:\"black\";s:5:\"Black\";s:5:\"white\";s:5:\"White\";}}s:10:\"fieldset_2\";a:3:{s:15:\"fieldset_2_text\";s:5:\"Hello\";s:19:\"fieldset_2_checkbox\";b:1;s:19:\"fieldset_2_textarea\";s:8:\"Do stuff\";}s:15:\"validate_text_1\";s:15:\"info@domain.com\";s:14:\"numeric_text_1\";s:6:\"123456\";s:15:\"required_text_1\";s:11:\"lorem ipsum\";s:5:\"dep_4\";s:3:\"yes\";s:9:\"dep_6_alt\";s:4:\"gray\";s:5:\"dep_7\";s:4:\"gray\";s:9:\"dep_7_alt\";s:4:\"gray\";s:6:\"text_1\";s:0:\"\";s:10:\"textarea_1\";s:0:\"\";s:10:\"switcher_1\";b:0;s:10:\"checkbox_1\";b:0;s:14:\"image_select_1\";s:0:\"\";s:6:\"text_2\";s:0:\"\";s:10:\"textarea_2\";s:0:\"\";s:13:\"unique_text_1\";s:0:\"\";s:13:\"unique_text_2\";s:0:\"\";s:13:\"unique_text_3\";s:0:\"\";s:13:\"unique_text_5\";s:0:\"\";s:13:\"unique_text_6\";s:0:\"\";s:13:\"unique_text_7\";s:0:\"\";s:13:\"unique_text_8\";s:0:\"\";s:14:\"unique_text_11\";s:0:\"\";s:14:\"unique_text_12\";s:0:\"\";s:14:\"unique_text_13\";s:0:\"\";s:17:\"unique_textarea_1\";s:0:\"\";s:19:\"unique_textarea_1_1\";s:0:\"\";s:17:\"unique_textarea_2\";s:0:\"\";s:17:\"unique_textarea_3\";s:0:\"\";s:17:\"unique_textarea_5\";s:0:\"\";s:17:\"unique_textarea_6\";s:0:\"\";s:17:\"unique_textarea_7\";s:0:\"\";s:17:\"unique_textarea_8\";s:0:\"\";s:18:\"unique_textarea_13\";s:0:\"\";s:17:\"unique_checkbox_1\";b:0;s:17:\"unique_checkbox_3\";b:0;s:17:\"unique_checkbox_4\";b:0;s:17:\"unique_checkbox_7\";b:0;s:17:\"unique_checkbox_8\";b:0;s:17:\"unique_checkbox_9\";b:0;s:18:\"unique_checkbox_10\";b:0;s:18:\"unique_checkbox_11\";b:0;s:18:\"unique_checkbox_12\";b:0;s:18:\"unique_checkbox_13\";b:0;s:18:\"unique_checkbox_14\";b:0;s:17:\"unique_switcher_1\";b:0;s:17:\"unique_switcher_2\";b:0;s:17:\"unique_switcher_3\";b:0;s:14:\"unique_group_1\";s:0:\"\";s:14:\"unique_group_3\";s:0:\"\";s:14:\"unique_group_4\";s:0:\"\";s:21:\"unique_image_select_1\";s:0:\"\";s:20:\"unique_others_text_1\";s:0:\"\";s:20:\"unique_others_text_2\";s:0:\"\";s:20:\"unique_others_text_3\";s:0:\"\";s:20:\"unique_others_text_4\";s:0:\"\";s:20:\"unique_others_text_5\";s:0:\"\";s:20:\"unique_others_text_6\";s:0:\"\";s:20:\"unique_others_text_7\";s:0:\"\";s:20:\"unique_others_text_8\";s:0:\"\";s:20:\"unique_others_text_9\";s:0:\"\";s:14:\"sanitie_text_1\";s:0:\"\";s:18:\"sanitie_textarea_1\";s:0:\"\";s:5:\"dep_1\";s:0:\"\";s:5:\"dep_2\";b:0;s:5:\"dep_5\";b:0;s:5:\"dep_6\";s:0:\"\";s:6:\"dep_10\";s:0:\"\";s:6:\"dep_11\";s:0:\"\";s:6:\"dep_12\";b:0;}', 'yes'),
(185, 'recently_activated', 'a:2:{s:25:\"fakerpress/fakerpress.php\";i:1609395856;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1609395856;}', 'yes'),
(212, 'recovery_mode_email_last_sent', '1588498014', 'yes'),
(626, 'action_scheduler_hybrid_store_demarkation', '88', 'yes'),
(627, 'schema-ActionScheduler_StoreSchema', '3.0.1587979462', 'yes'),
(628, 'schema-ActionScheduler_LoggerSchema', '2.0.1587979463', 'yes'),
(631, 'woocommerce_store_address', 'Haildher, Anowara, Chittagong', 'yes'),
(632, 'woocommerce_store_address_2', '', 'yes'),
(633, 'woocommerce_store_city', 'Chittagong', 'yes'),
(634, 'woocommerce_default_country', 'BD:BD-10', 'yes'),
(635, 'woocommerce_store_postcode', '7692', 'yes'),
(636, 'woocommerce_allowed_countries', 'all', 'yes'),
(637, 'woocommerce_all_except_countries', '', 'yes'),
(638, 'woocommerce_specific_allowed_countries', '', 'yes'),
(639, 'woocommerce_ship_to_countries', '', 'yes'),
(640, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(641, 'woocommerce_default_customer_address', 'base', 'yes'),
(642, 'woocommerce_calc_taxes', 'no', 'yes'),
(643, 'woocommerce_enable_coupons', 'yes', 'yes'),
(644, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(645, 'woocommerce_currency', 'BDT', 'yes'),
(646, 'woocommerce_currency_pos', 'left', 'yes'),
(647, 'woocommerce_price_thousand_sep', ',', 'yes'),
(648, 'woocommerce_price_decimal_sep', '.', 'yes'),
(649, 'woocommerce_price_num_decimals', '0', 'yes'),
(650, 'woocommerce_shop_page_id', '92', 'yes'),
(651, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(652, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(653, 'woocommerce_placeholder_image', '91', 'yes'),
(654, 'woocommerce_weight_unit', 'kg', 'yes'),
(655, 'woocommerce_dimension_unit', 'cm', 'yes'),
(656, 'woocommerce_enable_reviews', 'yes', 'yes'),
(657, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(658, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(659, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(660, 'woocommerce_review_rating_required', 'yes', 'no'),
(661, 'woocommerce_manage_stock', 'yes', 'yes'),
(662, 'woocommerce_hold_stock_minutes', '60', 'no'),
(663, 'woocommerce_notify_low_stock', 'yes', 'no'),
(664, 'woocommerce_notify_no_stock', 'yes', 'no'),
(665, 'woocommerce_stock_email_recipient', 'rayhanctg4@gmail.com', 'no'),
(666, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(667, 'woocommerce_notify_no_stock_amount', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(668, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(669, 'woocommerce_stock_format', '', 'yes'),
(670, 'woocommerce_file_download_method', 'force', 'no'),
(671, 'woocommerce_downloads_require_login', 'no', 'no'),
(672, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(673, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(674, 'woocommerce_prices_include_tax', 'no', 'yes'),
(675, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(676, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(677, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(678, 'woocommerce_tax_classes', '', 'yes'),
(679, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(680, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(681, 'woocommerce_price_display_suffix', '', 'yes'),
(682, 'woocommerce_tax_total_display', 'itemized', 'no'),
(683, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(684, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(685, 'woocommerce_ship_to_destination', 'billing', 'no'),
(686, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(687, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(688, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(689, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(690, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(691, 'woocommerce_registration_generate_username', 'yes', 'no'),
(692, 'woocommerce_registration_generate_password', 'yes', 'no'),
(693, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(694, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(695, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(696, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(697, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(698, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(699, 'woocommerce_trash_pending_orders', '', 'no'),
(700, 'woocommerce_trash_failed_orders', '', 'no'),
(701, 'woocommerce_trash_cancelled_orders', '', 'no'),
(702, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(703, 'woocommerce_email_from_name', 'markwp', 'no'),
(704, 'woocommerce_email_from_address', 'rayhanctg4@gmail.com', 'no'),
(705, 'woocommerce_email_header_image', '', 'no'),
(706, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(707, 'woocommerce_email_base_color', '#96588a', 'no'),
(708, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(709, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(710, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(711, 'woocommerce_cart_page_id', '93', 'no'),
(712, 'woocommerce_checkout_page_id', '94', 'no'),
(713, 'woocommerce_myaccount_page_id', '95', 'no'),
(714, 'woocommerce_terms_page_id', '', 'no'),
(715, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(716, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(717, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(718, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(719, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(720, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(721, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(722, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(723, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(724, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(725, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(726, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(727, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(728, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(729, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(730, 'woocommerce_api_enabled', 'no', 'yes'),
(731, 'woocommerce_allow_tracking', 'no', 'no'),
(732, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(733, 'woocommerce_single_image_width', '600', 'yes'),
(734, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(735, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(736, 'woocommerce_demo_store', 'no', 'no'),
(737, 'action_scheduler_lock_async-request-runner', '1622556294', 'yes'),
(738, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(741, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"PcBksaWyEPD8ASVI2I6SsAPgM2Moflee\";}', 'yes'),
(742, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(743, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(744, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(745, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(746, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(747, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(748, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(749, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(750, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(751, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(752, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(753, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(754, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(755, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(756, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(761, 'current_theme_supports_woocommerce', 'no', 'yes'),
(762, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(763, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:7:\"plugins\";s:7:\"skipped\";s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:5:\"other\";}}s:13:\"product_types\";a:1:{i:0;s:9:\"downloads\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:4:\"mark\";}', 'yes'),
(766, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(770, 'woocommerce_admin_version', '1.0.3', 'yes'),
(775, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(776, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(799, 'default_product_cat', '15', 'yes'),
(813, '_transient_woocommerce_reports-transient-version', '1587981737', 'yes'),
(874, 'woocommerce_version', '4.0.1', 'yes'),
(875, 'woocommerce_db_version', '4.0.1', 'yes'),
(877, 'woocommerce_setup_ab_wc_admin_onboarding', 'b', 'yes'),
(887, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(923, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(1037, '_transient_product_query-transient-version', '1609393072', 'yes'),
(1038, '_transient_product-transient-version', '1588065760', 'yes'),
(1064, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1609393216;}', 'no'),
(1066, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'yes'),
(1068, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(2018, 'widget_tb_social_icons', 'a:2:{i:2;a:14:{s:5:\"title\";s:9:\"FOLLOW US\";s:9:\"classname\";s:19:\"footer-social-links\";s:8:\"facebook\";s:20:\"https://fb.me/rayhan\";s:7:\"twitter\";s:19:\"https://t.tw/rayhan\";s:6:\"github\";s:19:\"https://g.gh/rayhan\";s:9:\"pinterset\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:11:\"google-plus\";s:25:\"https://google.com/rayhan\";s:7:\"youtube\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:7:\"dribble\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"behance\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2273, 'widget_recent-posts-widget-with-thumbnails', 'a:2:{i:2;a:36:{s:5:\"title\";s:11:\"LATEST NEWS\";s:11:\"default_url\";s:96:\"http://localhost/markwp/wp-content/plugins/recent-posts-widget-with-thumbnails/default_thumb.gif\";s:16:\"thumb_dimensions\";s:6:\"custom\";s:12:\"category_ids\";a:1:{i:0;i:0;}s:14:\"excerpt_length\";i:55;s:12:\"number_posts\";i:3;s:17:\"post_title_length\";i:1000;s:12:\"thumb_height\";i:50;s:11:\"thumb_width\";i:50;s:17:\"hide_current_post\";b:0;s:17:\"only_sticky_posts\";b:0;s:17:\"hide_sticky_posts\";b:0;s:10:\"hide_title\";b:0;s:17:\"keep_aspect_ratio\";b:0;s:11:\"keep_sticky\";b:0;s:12:\"only_1st_img\";b:0;s:12:\"random_order\";b:0;s:11:\"show_author\";b:0;s:15:\"show_categories\";b:0;s:20:\"show_comments_number\";b:0;s:9:\"show_date\";b:0;s:12:\"show_excerpt\";b:1;s:14:\"ignore_excerpt\";b:0;s:27:\"ignore_post_content_excerpt\";b:0;s:16:\"set_more_as_link\";b:0;s:11:\"try_1st_img\";b:0;s:11:\"use_default\";b:0;s:16:\"use_default_only\";b:0;s:15:\"open_new_window\";b:0;s:21:\"print_post_categories\";b:0;s:17:\"set_cats_as_links\";b:0;s:14:\"use_inline_css\";b:0;s:10:\"use_no_css\";b:0;s:10:\"show_thumb\";b:1;s:12:\"excerpt_more\";s:0:\"\";s:14:\"category_label\";s:2:\"In\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(2339, 'category_children', 'a:0:{}', 'yes'),
(2405, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(2510, '_transient_shipping-transient-version', '1588577149', 'yes'),
(2750, 'theme_mods_mark-blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:34;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609396044;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:10:\"archives-4\";i:1;s:10:\"calendar-2\";}s:11:\"footer-left\";a:2:{i:0;s:6:\"text-2\";i:1;s:17:\"tb_social_icons-2\";}s:13:\"footer-middle\";a:1:{i:0;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:12:\"footer-right\";a:2:{i:0;s:11:\"tag_cloud-3\";i:1;s:10:\"nav_menu-2\";}}}}', 'yes'),
(2763, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:8:\"approved\";s:1:\"2\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(3028, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1622544319;s:7:\"checked\";a:4:{s:4:\"mark\";s:3:\"1.5\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(3081, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622544319;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:25:\"duplicator/duplicator.php\";s:8:\"1.3.40.1\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"mark-companion/mark-companion.php\";s:3:\"1.0\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:5:\"7.0.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.0.1\";}s:8:\"response\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:8:\"1.3.40.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/duplicator.1.3.40.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/recent-posts-widget-with-thumbnails\";s:4:\"slug\";s:35:\"recent-posts-widget-with-thumbnails\";s:6:\"plugin\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:11:\"new_version\";s:5:\"7.0.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/recent-posts-widget-with-thumbnails/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/recent-posts-widget-with-thumbnails.7.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-256x256.png?rev=1063492\";s:2:\"1x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-128x128.png?rev=1063492\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-1544x500.png?rev=1063492\";s:2:\"1x\";s:90:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-772x250.png?rev=1063492\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(3082, 'duplicator_settings', 'a:17:{s:7:\"version\";s:8:\"1.3.40.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(3083, 'duplicator_lite_inst_hash_notice', '1', 'yes'),
(3084, 'duplicator_version_plugin', '1.3.40.1', 'yes'),
(3111, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-12-31 06:54:37\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.4\";s:9:\"VersionDB\";s:7:\"10.1.36\";s:10:\"VersionPHP\";s:6:\"7.2.11\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:15:\"20201231_markwp\";s:4:\"Hash\";s:35:\"5e83ed7b633a06a03133_20201231065437\";s:8:\"NameHash\";s:51:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:61:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:22:\"D:/xampp/htdocs/markwp\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-12-31 06:54:37\";s:7:\"Version\";s:8:\"1.3.40.1\";s:9:\"VersionWP\";s:3:\"5.4\";s:9:\"VersionDB\";s:7:\"10.1.36\";s:10:\"VersionPHP\";s:6:\"7.2.11\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:15:\"20201231_markwp\";s:4:\"Hash\";s:35:\"5e83ed7b633a06a03133_20201231065437\";s:8:\"NameHash\";s:51:\"20201231_markwp_5e83ed7b633a06a03133_20201231065437\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:31:\"D:/xampp/htdocs/markwp/wp-admin\";i:1;s:41:\"D:/xampp/htdocs/markwp/wp-content/uploads\";i:2;s:43:\"D:/xampp/htdocs/markwp/wp-content/languages\";i:3;s:40:\"D:/xampp/htdocs/markwp/wp-content/themes\";i:4;s:34:\"D:/xampp/htdocs/markwp/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:22:\"D:/xampp/htdocs/markwp\";i:1;s:33:\"D:/xampp/htdocs/markwp/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:96;s:13:\"BuildProgress\";r:126;}', 'yes'),
(3127, '_transient_timeout_as-post-store-dependencies-met', '1622630687', 'no'),
(3128, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(3129, '_transient_timeout_wc_product_loop_4b2fc05a117d51f8a705cc39ae856047', '1625136292', 'no'),
(3130, '_transient_wc_product_loop_4b2fc05a117d51f8a705cc39ae856047', 'a:2:{s:7:\"version\";s:10:\"1609393072\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:145;i:1;i:144;i:2;i:98;i:3;i:97;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(3131, '_transient_timeout_wc_product_children_97', '1625136294', 'no'),
(3132, '_transient_wc_product_children_97', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(3133, '_transient_timeout_wc_var_prices_97', '1625136294', 'no'),
(3134, '_transient_wc_var_prices_97', '{\"version\":\"1588065760\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(3136, '_transient_timeout__woocommerce_helper_subscriptions', '1622545219', 'no'),
(3137, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(3138, '_site_transient_timeout_theme_roots', '1622546119', 'no'),
(3139, '_site_transient_theme_roots', 'a:5:{s:4:\"mark\";s:7:\"/themes\";s:11:\"public_html\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(3140, '_transient_timeout__woocommerce_helper_updates', '1622587519', 'no'),
(3141, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1622544319;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 19, '_edit_last', '1'),
(4, 19, '_edit_lock', '1588425638:1'),
(5, 19, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:6:\"banner\";}'),
(6, 20, '_edit_last', '1'),
(7, 20, '_edit_lock', '1586607265:1'),
(8, 20, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:7:\"mission\";}'),
(10, 25, '_edit_lock', '1588601424:1'),
(11, 25, '_wp_page_template', 'page-templates/landing.php'),
(12, 2, '_edit_lock', '1586357679:1'),
(13, 25, '_edit_last', '1'),
(14, 25, 'mark-page-section', 'a:1:{s:8:\"sections\";a:17:{i:2;a:1:{s:7:\"section\";s:2:\"19\";}i:1;a:1:{s:7:\"section\";s:2:\"20\";}i:3;a:1:{s:7:\"section\";s:2:\"32\";}i:4;a:1:{s:7:\"section\";s:2:\"49\";}i:5;a:1:{s:7:\"section\";s:2:\"51\";}i:6;a:1:{s:7:\"section\";s:2:\"53\";}i:7;a:1:{s:7:\"section\";s:2:\"56\";}i:8;a:1:{s:7:\"section\";s:2:\"60\";}i:9;a:1:{s:7:\"section\";s:2:\"63\";}i:10;a:1:{s:7:\"section\";s:2:\"65\";}i:11;a:1:{s:7:\"section\";s:2:\"66\";}i:12;a:1:{s:7:\"section\";s:2:\"69\";}i:13;a:1:{s:7:\"section\";s:2:\"87\";}i:14;a:1:{s:7:\"section\";s:3:\"135\";}i:15;a:1:{s:7:\"section\";s:3:\"146\";}i:16;a:1:{s:7:\"section\";s:3:\"151\";}i:17;a:1:{s:7:\"section\";s:3:\"157\";}}}'),
(15, 19, 'mark-section-banner', 'a:7:{s:5:\"image\";s:2:\"30\";s:7:\"heading\";s:26:\"One Giant Leap For Mankind\";s:11:\"sub-heading\";s:18:\"Banner Description\";s:16:\"button-one-label\";s:10:\"Start Demo\";s:14:\"button-one-url\";s:0:\"\";s:16:\"button-two-label\";s:10:\"Button two\";s:14:\"button-two-url\";s:0:\"\";}'),
(18, 30, '_wp_attached_file', '2020/04/breather-163397-scaled.jpg'),
(19, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:34:\"2020/04/breather-163397-scaled.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"breather-163397-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"breather-163397-scaled-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"breather-163397-scaled-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"breather-163397-scaled-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:35:\"breather-163397-scaled-1400x934.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:34:\"breather-163397-scaled-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 30, '_edit_lock', '1586532361:1'),
(21, 20, 'mark-section-mission', 'a:3:{s:7:\"heading\";s:15:\"Here We Are For\";s:11:\"sub-heading\";s:60:\"Our mission is very simple. we just wanna dominate our space\";s:19:\"mission-description\";s:414:\"Suscipit risus nec eleifend. <strong>Pellentesque</strong> eu quam sem, ac malesuada leo sem quam pellente. Awesome sliders give you the opportunity to showcase your content. Advanced theme options panel to easily customize your website.\r\n\r\nPhasellus fringilla suscipit risus nec eleifend. Pellentesque eu quam sem, ac malesuada leo sem quam pellente. Advanced theme options panel to easily customize your website.\";}'),
(22, 32, '_edit_last', '1'),
(23, 32, '_edit_lock', '1586947142:1'),
(24, 32, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:8:\"features\";}'),
(25, 32, 'mark-section-banner', 'a:7:{s:5:\"image\";s:0:\"\";s:7:\"heading\";s:25:\"Gain the beautiful result\";s:11:\"sub-heading\";s:49:\"Unlocking the next dimension in business analysis\";s:16:\"button-one-label\";s:14:\"LETS START NOW\";s:14:\"button-one-url\";s:0:\"\";s:16:\"button-two-label\";s:12:\"PURCHASE NOW\";s:14:\"button-two-url\";s:0:\"\";}'),
(26, 33, '_wp_attached_file', '2020/04/breather-181282-scaled.jpg'),
(27, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:34:\"2020/04/breather-181282-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"breather-181282-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"breather-181282-scaled-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"breather-181282-scaled-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"breather-181282-scaled-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:35:\"breather-181282-scaled-1400x934.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"breather-181282-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-181282-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 32, 'mark-features-section', 'a:1:{s:8:\"features\";a:4:{i:1;a:3:{s:7:\"heading\";s:22:\"Maecenas sodales augue\";s:4:\"icon\";s:2:\"44\";s:11:\"description\";s:158:\"Suspendisse consectetur accumsan dapibus. Vestibulum sed luctus augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\";}i:2;a:3:{s:7:\"heading\";s:21:\"Sodales aliquam justo\";s:4:\"icon\";s:2:\"45\";s:11:\"description\";s:158:\"Suspendisse consectetur accumsan dapibus. Vestibulum sed luctus augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\";}i:3;a:3:{s:7:\"heading\";s:17:\"Commodo facilisis\";s:4:\"icon\";s:2:\"46\";s:11:\"description\";s:112:\"Cras aliquet malesuada lectus, vitae blandit neque malesuada eu. Aliquam sodales, neque vitae commodo facilisis.\";}i:4;a:3:{s:7:\"heading\";s:28:\"Nullam blandit nisi at dolor\";s:4:\"icon\";s:2:\"44\";s:11:\"description\";s:133:\" Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus commodo, justo in vestibulum accumsan,\";}}}'),
(29, 34, '_wp_attached_file', '2020/04/tim-gouw-79563.jpg'),
(30, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1910;s:6:\"height\";i:1276;s:4:\"file\";s:26:\"2020/04/tim-gouw-79563.jpg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"tim-gouw-79563-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"tim-gouw-79563-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"tim-gouw-79563-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:27:\"tim-gouw-79563-1400x935.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:935;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"tim-gouw-79563-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"tim-gouw-79563-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 35, '_wp_attached_file', '2020/04/oscar-nilsson-13605.jpg'),
(32, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1965;s:6:\"height\";i:1229;s:4:\"file\";s:31:\"2020/04/oscar-nilsson-13605.jpg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"oscar-nilsson-13605-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"oscar-nilsson-13605-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"oscar-nilsson-13605-1536x961.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:961;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:32:\"oscar-nilsson-13605-1400x876.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:876;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"oscar-nilsson-13605-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"oscar-nilsson-13605-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 36, '_wp_attached_file', '2020/04/photo-scaled.jpg'),
(34, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/04/photo-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"photo-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"photo-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"photo-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"photo-scaled-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"photo-scaled-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"photo-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"photo-scaled-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"photo-scaled-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"photo-scaled-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:25:\"photo-scaled-1400x934.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:24:\"photo-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:24:\"photo-scaled-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"photo-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"photo-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"photo-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 37, '_wp_attached_file', '2020/04/cathryn-lavery-67851.jpg'),
(36, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:32:\"2020/04/cathryn-lavery-67851.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cathryn-lavery-67851-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cathryn-lavery-67851-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"cathryn-lavery-67851-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"cathryn-lavery-67851-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:33:\"cathryn-lavery-67851-1400x933.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:933;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"cathryn-lavery-67851-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cathryn-lavery-67851-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 38, '_wp_attached_file', '2020/04/jesus-kiteque-224069-scaled.jpg'),
(38, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1704;s:4:\"file\";s:39:\"2020/04/jesus-kiteque-224069-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"jesus-kiteque-224069-scaled-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"jesus-kiteque-224069-scaled-1536x1022.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:41:\"jesus-kiteque-224069-scaled-2048x1363.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:40:\"jesus-kiteque-224069-scaled-1400x932.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:932;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"jesus-kiteque-224069-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 39, '_wp_attached_file', '2020/04/kelly-brito-328447-scaled.jpg'),
(40, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:37:\"2020/04/kelly-brito-328447-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"kelly-brito-328447-scaled-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"kelly-brito-328447-scaled-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:39:\"kelly-brito-328447-scaled-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:39:\"kelly-brito-328447-scaled-1366x2048.jpg\";s:5:\"width\";i:1366;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:39:\"kelly-brito-328447-scaled-1400x2100.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:2100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-192x288.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"kelly-brito-328447-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 40, '_wp_attached_file', '2020/04/ramiro-mendes-237525-scaled.jpg'),
(42, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:39:\"2020/04/ramiro-mendes-237525-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"ramiro-mendes-237525-scaled-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"ramiro-mendes-237525-scaled-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:41:\"ramiro-mendes-237525-scaled-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:41:\"ramiro-mendes-237525-scaled-1400x1400.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:1400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"ramiro-mendes-237525-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 41, '_wp_attached_file', '2020/04/breather-163395-scaled.jpg'),
(44, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1667;s:4:\"file\";s:34:\"2020/04/breather-163395-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"breather-163395-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-600x391.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:391;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"breather-163395-scaled-1024x667.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-768x500.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"breather-163395-scaled-1536x1000.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1000;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:36:\"breather-163395-scaled-2048x1334.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:35:\"breather-163395-scaled-1400x912.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:912;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-192x125.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"breather-163395-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-600x391.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:391;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"breather-163395-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 42, '_wp_attached_file', '2020/04/breather-181282-1-scaled.jpg'),
(46, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:36:\"2020/04/breather-181282-1-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"breather-181282-1-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"breather-181282-1-scaled-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"breather-181282-1-scaled-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:38:\"breather-181282-1-scaled-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:37:\"breather-181282-1-scaled-1400x934.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"breather-181282-1-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"breather-181282-1-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 43, '_wp_attached_file', '2020/04/gabriel-beaudry-253365-scaled.jpg'),
(48, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2050;s:6:\"height\";i:2560;s:4:\"file\";s:41:\"2020/04/gabriel-beaudry-253365-scaled.jpg\";s:5:\"sizes\";a:15:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-600x749.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:749;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"gabriel-beaudry-253365-scaled-820x1024.jpg\";s:5:\"width\";i:820;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-768x959.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:959;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"gabriel-beaudry-253365-scaled-1230x1536.jpg\";s:5:\"width\";i:1230;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:43:\"gabriel-beaudry-253365-scaled-1640x2048.jpg\";s:5:\"width\";i:1640;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"mark-fullsize\";a:4:{s:4:\"file\";s:43:\"gabriel-beaudry-253365-scaled-1400x1748.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:1748;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-600x749.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:749;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"gabriel-beaudry-253365-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 44, '_wp_attached_file', '2020/04/icon-1.jpg'),
(50, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:55;s:6:\"height\";i:50;s:4:\"file\";s:18:\"2020/04/icon-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 45, '_wp_attached_file', '2020/04/icon-2.jpg'),
(52, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:49;s:6:\"height\";i:59;s:4:\"file\";s:18:\"2020/04/icon-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 46, '_wp_attached_file', '2020/04/icon-3.jpg'),
(54, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:55;s:6:\"height\";i:48;s:4:\"file\";s:18:\"2020/04/icon-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 49, '_edit_last', '1'),
(56, 49, '_edit_lock', '1586948572:1'),
(57, 49, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:5:\"about\";}'),
(58, 49, 'mark-section-about', 'a:7:{s:7:\"heading\";s:8:\"About Us\";s:11:\"about-image\";s:2:\"35\";s:11:\"sub-heading\";s:16:\"WE ARE WORKHOLIC\";s:17:\"about-description\";s:211:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, amet at atque, aut deserunt dignissimos dolor dolorum error facere id laboriosam minima molestias, neque numquam provident quam quod sint temporibus.\";s:18:\"about-button-label\";s:9:\"Read More\";s:16:\"about-button-url\";s:1:\"#\";s:20:\"about-button-display\";b:0;}'),
(59, 51, '_edit_last', '1'),
(60, 51, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:8:\"services\";}'),
(61, 51, '_edit_lock', '1587088025:1'),
(62, 51, 'mark-services-section', 'a:2:{s:15:\"section-heading\";s:8:\"Services\";s:8:\"services\";a:6:{i:1;a:3:{s:7:\"heading\";s:12:\"Web Solution\";s:4:\"icon\";s:10:\"bi-article\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}i:2;a:3:{s:7:\"heading\";s:18:\"Corporate Branding\";s:4:\"icon\";s:12:\"bi-money-bag\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}i:3;a:3:{s:7:\"heading\";s:12:\"Web Security\";s:4:\"icon\";s:9:\"bi-globe3\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}i:4;a:3:{s:7:\"heading\";s:15:\"App Development\";s:4:\"icon\";s:9:\"bi-tablet\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}i:5;a:3:{s:7:\"heading\";s:26:\"Search Engine Optimization\";s:4:\"icon\";s:9:\"bi-search\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}i:6;a:3:{s:7:\"heading\";s:13:\"Data Analysis\";s:4:\"icon\";s:12:\"bi-alien-gun\";s:11:\"description\";s:123:\"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latinin contaversy.\";}}}'),
(63, 53, '_edit_last', '1'),
(64, 53, '_edit_lock', '1587140828:1'),
(65, 53, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:8:\"benefits\";}'),
(66, 53, 'mark-section-benefits', 'a:4:{s:5:\"image\";s:2:\"54\";s:7:\"heading\";s:8:\"Benefits\";s:20:\"benefits-description\";s:150:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet, nostrum, porro! Cum ducimus ea eaque ex explicabo facilis impedit ipsum laborum maxime\";s:8:\"benefits\";a:5:{i:1;a:2:{s:8:\"benefits\";s:49:\"Nam libero tempore, cum soluta nobis est eligendi\";s:13:\"benefits-icon\";s:7:\"fa-grav\";}i:2;a:2:{s:8:\"benefits\";s:36:\"Optio cumque nihil impedit quo minus\";s:13:\"benefits-icon\";s:15:\"fa-hand-o-right\";}i:3;a:2:{s:8:\"benefits\";s:49:\"Uam libero tempore, cum soluta nobis est eligendi\";s:13:\"benefits-icon\";s:14:\"fa-arrow-right\";}i:5;a:2:{s:8:\"benefits\";s:63:\"Aptio cumque nihil impedit quo minus id placeat facere possimus\";s:13:\"benefits-icon\";s:14:\"fa-arrow-right\";}i:6;a:2:{s:8:\"benefits\";s:28:\"impedit ipsum laborum maxime\";s:13:\"benefits-icon\";s:0:\"\";}}}'),
(67, 54, '_wp_attached_file', '2020/04/diagram.png'),
(68, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:330;s:4:\"file\";s:19:\"2020/04/diagram.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"diagram-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"diagram-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"diagram-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"diagram-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:19:\"diagram-192x127.png\";s:5:\"width\";i:192;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"diagram-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"diagram-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 56, '_edit_last', '1'),
(70, 56, '_edit_lock', '1587187468:1'),
(71, 56, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:12:\"testimonials\";}'),
(72, 56, 'mark-testimonials-section', 'a:2:{s:15:\"section-heading\";s:12:\"Testimonials\";s:12:\"testimonials\";a:3:{i:1;a:3:{s:5:\"title\";s:8:\"Jony Doe\";s:5:\"photo\";s:2:\"57\";s:11:\"testimonial\";s:62:\"Sed sed ipsum faucibus, vestibulum erat sit amet, auctor nisi.\";}i:2;a:3:{s:5:\"title\";s:9:\"Maria Doe\";s:5:\"photo\";s:2:\"58\";s:11:\"testimonial\";s:62:\"Sed sed ipsum faucibus, vestibulum erat sit amet, auctor nisi.\";}i:3;a:3:{s:5:\"title\";s:9:\"Nagin Doe\";s:5:\"photo\";s:2:\"59\";s:11:\"testimonial\";s:62:\"Sed sed ipsum faucibus, vestibulum erat sit amet, auctor nisi.\";}}}'),
(73, 57, '_wp_attached_file', '2020/04/a2.jpg'),
(74, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:194;s:4:\"file\";s:14:\"2020/04/a2.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"a2-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 58, '_wp_attached_file', '2020/04/a0.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(76, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:232;s:6:\"height\";i:232;s:4:\"file\";s:14:\"2020/04/a0.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"a0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"a0-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 59, '_wp_attached_file', '2020/04/a1.jpg'),
(78, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:193;s:4:\"file\";s:14:\"2020/04/a1.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"a1-192x191.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 60, '_edit_last', '1'),
(80, 60, '_edit_lock', '1587188491:1'),
(81, 60, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:10:\"image_info\";}'),
(82, 60, 'mark-section-imageinfo', 'a:3:{s:7:\"heading\";s:50:\"One small step for man, one giant leap for mankind\";s:11:\"description\";s:285:\"Vestibulum sed luctus augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras aliquet malesuada lectus, vitae blandit neque malesuada eu. Aliquam sodales, neque vitae commodo facilisis, felis erat vehicula nibh, eu iaculis metus felis id ex.\";s:5:\"image\";s:0:\"\";}'),
(83, 63, '_edit_last', '1'),
(84, 63, '_edit_lock', '1587323296:1'),
(85, 63, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:7:\"counter\";}'),
(86, 63, 'mark-counters-section', 'a:1:{s:8:\"counters\";a:3:{i:1;a:2:{s:5:\"title\";s:10:\"One Column\";s:6:\"number\";s:4:\"1234\";}i:2;a:2:{s:5:\"title\";s:10:\"Two Column\";s:6:\"number\";s:4:\"5678\";}i:3;a:2:{s:5:\"title\";s:12:\"Three Column\";s:6:\"number\";s:5:\"91086\";}}}'),
(87, 65, '_edit_last', '1'),
(88, 65, '_edit_lock', '1587399763:1'),
(89, 65, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:3:\"cta\";}'),
(90, 65, 'mark-section-cta', 'a:7:{s:5:\"image\";s:0:\"\";s:7:\"heading\";s:18:\"Are You Impressed?\";s:11:\"sub-heading\";s:36:\"OR WANT TO KNOW MORE BEFORE PURCHASE\";s:16:\"button-one-label\";s:14:\"LETS START NOW\";s:14:\"button-one-url\";s:1:\"#\";s:16:\"button-two-label\";s:12:\"PURCHASE NOW\";s:14:\"button-two-url\";s:1:\"#\";}'),
(91, 66, '_edit_last', '1'),
(92, 66, '_edit_lock', '1587634873:1'),
(93, 66, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:4:\"team\";}'),
(94, 66, 'mark-team-section', 'a:3:{s:7:\"heading\";s:4:\"Team\";s:11:\"sub-heading\";s:144:\"Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.                \r\n\";s:4:\"team\";a:3:{i:1;a:4:{s:4:\"name\";s:8:\"John Doe\";s:5:\"image\";s:2:\"57\";s:5:\"title\";s:3:\"CEO\";s:13:\"social_fields\";a:3:{s:8:\"facebook\";s:1:\"f\";s:7:\"youtube\";s:1:\"y\";s:7:\"twitter\";s:0:\"\";}}i:2;a:4:{s:4:\"name\";s:8:\"Jane Doe\";s:5:\"image\";s:2:\"58\";s:5:\"title\";s:3:\"CTO\";s:13:\"social_fields\";a:3:{s:8:\"facebook\";s:1:\"f\";s:7:\"youtube\";s:1:\"y\";s:7:\"twitter\";s:1:\"t\";}}i:3;a:4:{s:4:\"name\";s:12:\"Komola Halen\";s:5:\"image\";s:2:\"59\";s:5:\"title\";s:9:\"Developer\";s:13:\"social_fields\";a:3:{s:8:\"facebook\";s:1:\"f\";s:7:\"youtube\";s:1:\"y\";s:7:\"twitter\";s:1:\"t\";}}}}'),
(95, 69, '_edit_last', '1'),
(96, 69, '_edit_lock', '1588856372:1'),
(97, 69, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:9:\"portfolio\";}'),
(98, 70, '_wp_attached_file', '2020/04/1.jpg'),
(99, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2020/04/1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"1-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 71, '_wp_attached_file', '2020/04/2.jpg'),
(101, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:13:\"2020/04/2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"2-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"2-192x144.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 72, '_wp_attached_file', '2020/04/3.jpg'),
(103, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2020/04/3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"3-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"3-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"3-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 73, '_wp_attached_file', '2020/04/4.jpg'),
(105, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:13:\"2020/04/4.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"4-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"4-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"4-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"4-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 74, '_wp_attached_file', '2020/04/5.jpg'),
(107, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:13:\"2020/04/5.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"5-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"5-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"5-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"5-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 75, '_wp_attached_file', '2020/04/6.jpg'),
(109, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2020/04/6.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"6-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"6-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"6-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"6-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 76, '_wp_attached_file', '2020/04/7.jpg'),
(111, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:13:\"2020/04/7.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"7-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"7-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"7-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"7-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(112, 77, '_wp_attached_file', '2020/04/8.jpg'),
(113, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2020/04/8.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"8-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"8-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"8-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"8-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 78, '_wp_attached_file', '2020/04/9.jpg'),
(115, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:13:\"2020/04/9.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"9-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:13:\"9-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:13:\"9-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"9-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 79, '_wp_attached_file', '2020/04/10.jpg'),
(117, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2020/04/10.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"10-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"10-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"10-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"10-192x144.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"10-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 80, '_wp_attached_file', '2020/04/11.jpg'),
(119, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2020/04/11.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"11-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"11-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"11-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"11-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 81, '_wp_attached_file', '2020/04/12.jpg'),
(121, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2020/04/12.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"12-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"12-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"12-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"12-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"12-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 82, '_wp_attached_file', '2020/04/13.jpg'),
(123, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2020/04/13.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"13-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"13-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"13-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"13-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"13-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 83, '_wp_attached_file', '2020/04/14.jpg'),
(125, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2020/04/14.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"14-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"14-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"14-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"14-192x240.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"14-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 84, '_wp_attached_file', '2020/04/15.jpg'),
(127, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2020/04/15.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"15-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"15-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"15-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"15-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"15-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 85, '_wp_attached_file', '2020/04/16.jpg'),
(129, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2020/04/16.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"16-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"16-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:14:\"16-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:14:\"16-192x120.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"16-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 69, 'mark-portfolio-section', 'a:2:{s:7:\"heading\";s:9:\"Our Works\";s:9:\"portfolio\";a:6:{i:1;a:3:{s:5:\"title\";s:11:\"Image Title\";s:6:\"filter\";s:7:\"filter1\";s:5:\"image\";s:2:\"81\";}i:2;a:3:{s:5:\"title\";s:12:\"Image Title2\";s:6:\"filter\";s:16:\"filter1, filter2\";s:5:\"image\";s:2:\"82\";}i:3;a:3:{s:5:\"title\";s:12:\"Image Title3\";s:6:\"filter\";s:16:\"filter1, filter3\";s:5:\"image\";s:2:\"85\";}i:4;a:3:{s:5:\"title\";s:13:\"Image Title 4\";s:6:\"filter\";s:16:\"filter5, filter6\";s:5:\"image\";s:2:\"84\";}i:5;a:3:{s:5:\"title\";s:12:\"Image Title6\";s:6:\"filter\";s:16:\"filter7, filter8\";s:5:\"image\";s:2:\"83\";}i:6;a:3:{s:5:\"title\";s:13:\"Image Title 7\";s:6:\"filter\";s:16:\"filter7, filter1\";s:5:\"image\";s:2:\"80\";}}}'),
(131, 87, '_edit_last', '1'),
(132, 87, '_edit_lock', '1587979524:1'),
(133, 87, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:7:\"pricing\";}'),
(134, 87, 'mark-pricing-section', 'a:3:{s:7:\"heading\";s:16:\"Choose Your Plan\";s:11:\"sub-heading\";s:49:\"Nam libero tempore cum soluta nobis est eligendi.\";s:5:\"plans\";a:3:{i:1;a:7:{s:7:\"heading\";s:5:\"Basic\";s:5:\"price\";s:2:\"29\";s:6:\"tenure\";s:5:\"month\";s:7:\"options\";s:66:\"24/7 Tech Support\r\n Advanced Options\r\n10GB Storage\r\n1 GB Bandwidth\";s:12:\"button-label\";s:12:\"Purchase Now\";s:10:\"button-url\";s:1:\"#\";s:17:\"recommended-label\";s:0:\"\";}i:2;a:8:{s:7:\"heading\";s:8:\"Standard\";s:5:\"price\";s:2:\"59\";s:6:\"tenure\";s:4:\"YEAR\";s:7:\"options\";s:65:\"24/7 Tech Support\r\nAdvanced Options\r\n10GB Storage\r\n1 GB Bandwidth\";s:12:\"button-label\";s:12:\"Purchase Now\";s:10:\"button-url\";s:1:\"#\";s:11:\"recommended\";s:1:\"1\";s:17:\"recommended-label\";s:11:\"Recommended\";}i:3;a:8:{s:7:\"heading\";s:7:\"Premium\";s:5:\"price\";s:2:\"99\";s:6:\"tenure\";s:4:\"YEAR\";s:7:\"options\";s:65:\"24/7 Tech Support\r\nAdvanced Options\r\n10GB Storage\r\n1 GB Bandwidth\";s:12:\"button-label\";s:12:\"Purchase Now\";s:10:\"button-url\";s:1:\"#\";s:11:\"recommended\";s:1:\"1\";s:17:\"recommended-label\";s:14:\"Recommended ++\";}}}'),
(135, 91, '_wp_attached_file', 'woocommerce-placeholder.png'),
(136, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-583x383.png\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 96, '_wp_attached_file', '2020/04/sample_products.csv'),
(138, 96, '_wp_attachment_context', 'import'),
(139, 97, '_sku', 'woo-vneck-tee'),
(140, 97, 'total_sales', '0'),
(141, 97, '_tax_status', 'taxable'),
(142, 97, '_tax_class', ''),
(143, 97, '_manage_stock', 'no'),
(144, 97, '_backorders', 'no'),
(145, 97, '_sold_individually', 'no'),
(146, 97, '_virtual', 'no'),
(147, 97, '_downloadable', 'no'),
(148, 97, '_download_limit', '0'),
(149, 97, '_download_expiry', '0'),
(150, 97, '_stock', NULL),
(151, 97, '_stock_status', 'outofstock'),
(152, 97, '_wc_average_rating', '0'),
(153, 97, '_wc_review_count', '0'),
(154, 97, '_product_version', '4.0.1'),
(156, 98, '_sku', 'woo-hoodie'),
(157, 98, 'total_sales', '0'),
(158, 98, '_tax_status', 'taxable'),
(159, 98, '_tax_class', ''),
(160, 98, '_manage_stock', 'no'),
(161, 98, '_backorders', 'no'),
(162, 98, '_sold_individually', 'no'),
(163, 98, '_virtual', 'no'),
(164, 98, '_downloadable', 'no'),
(165, 98, '_download_limit', '0'),
(166, 98, '_download_expiry', '0'),
(167, 98, '_stock', NULL),
(168, 98, '_stock_status', 'instock'),
(169, 98, '_wc_average_rating', '0'),
(170, 98, '_wc_review_count', '0'),
(171, 98, '_product_version', '4.0.1'),
(565, 124, '_wp_attached_file', '2020/04/vneck-tee-2.jpg'),
(566, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2020/04/vneck-tee-2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 125, '_wp_attached_file', '2020/04/vneck-tee-2-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(568, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2020/04/vneck-tee-2-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"vneck-tee-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"vneck-tee-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"vneck-tee-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 125, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(570, 126, '_wp_attached_file', '2020/04/vnech-tee-green-1.jpg'),
(571, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2020/04/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(572, 126, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(575, 128, '_wp_attached_file', '2020/04/vnech-tee-blue-1.jpg'),
(576, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/04/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 128, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(578, 97, '_wpcom_is_markdown', '1'),
(579, 97, '_wp_old_slug', 'import-placeholder-for-44'),
(580, 97, '_product_image_gallery', '126,128'),
(581, 97, '_thumbnail_id', '125'),
(582, 97, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(583, 130, '_wp_attached_file', '2020/04/hoodie-2-1.jpg'),
(584, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2020/04/hoodie-2-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"hoodie-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"hoodie-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"hoodie-2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(585, 130, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(586, 131, '_wp_attached_file', '2020/04/hoodie-blue-1.jpg'),
(587, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2020/04/hoodie-blue-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 131, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(589, 132, '_wp_attached_file', '2020/04/hoodie-green-1.jpg'),
(590, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2020/04/hoodie-green-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(591, 133, '_wp_attached_file', '2020/04/hoodie-green-1-1.jpg'),
(592, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/04/hoodie-green-1-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"hoodie-green-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-green-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(593, 133, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(594, 134, '_wp_attached_file', '2020/04/hoodie-with-logo-2.jpg'),
(595, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2020/04/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(596, 134, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(597, 98, '_wpcom_is_markdown', '1'),
(598, 98, '_wp_old_slug', 'import-placeholder-for-45'),
(599, 98, '_product_image_gallery', '131,133,134'),
(600, 98, '_thumbnail_id', '130'),
(601, 98, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
(602, 135, '_edit_last', '1'),
(603, 135, '_edit_lock', '1588064506:1'),
(604, 135, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:4:\"shop\";}'),
(609, 139, '_sku', 'woo-hoodie-with-logo'),
(610, 139, 'total_sales', '0'),
(611, 139, '_tax_status', 'taxable'),
(612, 139, '_tax_class', ''),
(613, 139, '_manage_stock', 'no'),
(614, 139, '_backorders', 'no'),
(615, 139, '_sold_individually', 'no'),
(616, 139, '_virtual', 'no'),
(617, 139, '_downloadable', 'no'),
(618, 139, '_download_limit', '-1'),
(619, 139, '_download_expiry', '-1'),
(620, 139, '_stock', NULL),
(621, 139, '_stock_status', 'instock'),
(622, 139, '_wc_average_rating', '0'),
(623, 139, '_wc_review_count', '0'),
(624, 139, '_product_version', '4.0.1'),
(625, 139, '_original_id', '46'),
(626, 140, '_sku', 'woo-tshirt'),
(627, 140, 'total_sales', '0'),
(628, 140, '_tax_status', 'taxable'),
(629, 140, '_tax_class', ''),
(630, 140, '_manage_stock', 'no'),
(631, 140, '_backorders', 'no'),
(632, 140, '_sold_individually', 'no'),
(633, 140, '_virtual', 'no'),
(634, 140, '_downloadable', 'no'),
(635, 140, '_download_limit', '-1'),
(636, 140, '_download_expiry', '-1'),
(637, 140, '_stock', NULL),
(638, 140, '_stock_status', 'instock'),
(639, 140, '_wc_average_rating', '0'),
(640, 140, '_wc_review_count', '0'),
(641, 140, '_product_version', '4.0.1'),
(642, 140, '_original_id', '47'),
(643, 141, '_sku', 'woo-beanie'),
(644, 141, 'total_sales', '0'),
(645, 141, '_tax_status', 'taxable'),
(646, 141, '_tax_class', ''),
(647, 141, '_manage_stock', 'no'),
(648, 141, '_backorders', 'no'),
(649, 141, '_sold_individually', 'no'),
(650, 141, '_virtual', 'no'),
(651, 141, '_downloadable', 'no'),
(652, 141, '_download_limit', '-1'),
(653, 141, '_download_expiry', '-1'),
(654, 141, '_stock', NULL),
(655, 141, '_stock_status', 'instock'),
(656, 141, '_wc_average_rating', '0'),
(657, 141, '_wc_review_count', '0'),
(658, 141, '_product_version', '4.0.1'),
(659, 141, '_original_id', '48'),
(660, 142, '_sku', 'woo-belt'),
(661, 142, 'total_sales', '0'),
(662, 142, '_tax_status', 'taxable'),
(663, 142, '_tax_class', ''),
(664, 142, '_manage_stock', 'no'),
(665, 142, '_backorders', 'no'),
(666, 142, '_sold_individually', 'no'),
(667, 142, '_virtual', 'no'),
(668, 142, '_downloadable', 'no'),
(669, 142, '_download_limit', '-1'),
(670, 142, '_download_expiry', '-1'),
(671, 142, '_stock', NULL),
(672, 142, '_stock_status', 'instock'),
(673, 142, '_wc_average_rating', '0'),
(674, 142, '_wc_review_count', '0'),
(675, 142, '_product_version', '4.0.1'),
(676, 142, '_original_id', '58'),
(677, 143, '_sku', 'woo-cap'),
(678, 143, 'total_sales', '0'),
(679, 143, '_tax_status', 'taxable'),
(680, 143, '_tax_class', ''),
(681, 143, '_manage_stock', 'no'),
(682, 143, '_backorders', 'no'),
(683, 143, '_sold_individually', 'no'),
(684, 143, '_virtual', 'no'),
(685, 143, '_downloadable', 'no'),
(686, 143, '_download_limit', '-1'),
(687, 143, '_download_expiry', '-1'),
(688, 143, '_stock', NULL),
(689, 143, '_stock_status', 'instock'),
(690, 143, '_wc_average_rating', '0'),
(691, 143, '_wc_review_count', '0'),
(692, 143, '_product_version', '4.0.1'),
(693, 135, 'mark-section-shop', 'a:5:{s:7:\"heading\";s:8:\"Our Shop\";s:18:\"number-of-products\";s:1:\"6\";s:10:\"link-label\";s:10:\"Go To Shop\";s:8:\"link-url\";s:1:\"#\";s:8:\"benefits\";s:0:\"\";}'),
(694, 98, '_edit_lock', '1588064510:1'),
(695, 93, '_edit_lock', '1588064635:1'),
(696, 98, '_edit_last', '1'),
(697, 98, '_regular_price', '645'),
(698, 98, '_sale_price', '580'),
(699, 98, '_price', '580'),
(700, 144, '_edit_last', '1'),
(701, 144, '_regular_price', '100'),
(702, 144, '_sale_price', '83'),
(703, 144, 'total_sales', '0'),
(704, 144, '_tax_status', 'taxable'),
(705, 144, '_tax_class', ''),
(706, 144, '_manage_stock', 'no'),
(707, 144, '_backorders', 'no'),
(708, 144, '_sold_individually', 'no'),
(709, 144, '_virtual', 'no'),
(710, 144, '_downloadable', 'no'),
(711, 144, '_download_limit', '-1'),
(712, 144, '_download_expiry', '-1'),
(713, 144, '_stock', NULL),
(714, 144, '_stock_status', 'instock'),
(715, 144, '_wc_average_rating', '0'),
(716, 144, '_wc_review_count', '0'),
(717, 144, '_product_version', '4.0.1'),
(718, 144, '_price', '83'),
(719, 144, '_edit_lock', '1588064737:1'),
(720, 144, '_thumbnail_id', '71'),
(721, 144, '_product_image_gallery', '71,72,70'),
(722, 145, '_edit_last', '1'),
(723, 145, '_edit_lock', '1588070698:1'),
(724, 145, '_thumbnail_id', '78'),
(725, 145, '_regular_price', '80'),
(726, 145, '_sale_price', '70'),
(727, 145, 'total_sales', '0'),
(728, 145, '_tax_status', 'taxable'),
(729, 145, '_tax_class', ''),
(730, 145, '_manage_stock', 'no'),
(731, 145, '_backorders', 'no'),
(732, 145, '_sold_individually', 'no'),
(733, 145, '_virtual', 'no'),
(734, 145, '_downloadable', 'no'),
(735, 145, '_download_limit', '-1'),
(736, 145, '_download_expiry', '-1'),
(737, 145, '_stock', NULL),
(738, 145, '_stock_status', 'instock'),
(739, 145, '_wc_average_rating', '0'),
(740, 145, '_wc_review_count', '0'),
(741, 145, '_product_version', '4.0.1'),
(742, 145, '_price', '70'),
(743, 146, '_edit_last', '1'),
(744, 146, '_edit_lock', '1588091276:1'),
(745, 146, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:4:\"blog\";}'),
(746, 1, '_edit_lock', '1588547848:1'),
(751, 149, '_edit_lock', '1588745097:1'),
(754, 1, '_thumbnail_id', '34'),
(755, 129, '_edit_lock', '1588113357:1'),
(756, 151, '_edit_last', '1'),
(757, 151, '_edit_lock', '1588350147:1'),
(758, 151, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:7:\"clients\";}'),
(759, 152, '_wp_attached_file', '2020/05/c4.jpg'),
(760, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:169;s:6:\"height\";i:70;s:4:\"file\";s:14:\"2020/05/c4.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"c4-100x70.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"c4-150x70.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"c4-100x70.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 153, '_wp_attached_file', '2020/05/c1.jpg'),
(762, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:68;s:4:\"file\";s:14:\"2020/05/c1.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"c1-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"c1-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"c1-100x68.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 154, '_wp_attached_file', '2020/05/c2.jpg'),
(764, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:118;s:4:\"file\";s:14:\"2020/05/c2.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"c2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"c2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 155, '_wp_attached_file', '2020/05/c3.jpg'),
(766, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:73;s:4:\"file\";s:14:\"2020/05/c3.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"c3-100x73.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"c3-150x73.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"c3-100x73.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:73;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(767, 151, 'mark-clients-section', 'a:1:{s:7:\"clients\";a:4:{i:1;a:3:{s:5:\"title\";s:10:\"Client One\";s:4:\"logo\";s:3:\"155\";s:3:\"url\";s:1:\"#\";}i:2;a:3:{s:5:\"title\";s:10:\"Client Two\";s:4:\"logo\";s:3:\"154\";s:3:\"url\";s:1:\"#\";}i:3;a:3:{s:5:\"title\";s:12:\"Client Three\";s:4:\"logo\";s:3:\"153\";s:3:\"url\";s:1:\"#\";}i:4;a:3:{s:5:\"title\";s:11:\"Client Four\";s:4:\"logo\";s:3:\"152\";s:3:\"url\";s:1:\"#\";}}}'),
(768, 157, '_edit_last', '1'),
(769, 157, '_edit_lock', '1588350662:1'),
(770, 157, 'mark-section-type', 'a:1:{s:12:\"section-type\";s:12:\"subscription\";}'),
(771, 157, 'mark-section-subscription', 'a:3:{s:7:\"heading\";s:13:\"Subscribe Now\";s:3:\"url\";s:94:\"https://gmail.us3.list-manage.com/subscribe/post?u=1e078ce635c94ff1838ce2fc2&amp;id=c04689029d\";s:12:\"button-label\";s:12:\"subscription\";}'),
(773, 161, '_wp_attached_file', '2020/05/f054eb13-33e6-3d5b-b274-10fb5f6dfd61.jpg'),
(774, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1048;s:6:\"height\";i:698;s:4:\"file\";s:48:\"2020/05/f054eb13-33e6-3d5b-b274-10fb5f6dfd61.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"f054eb13-33e6-3d5b-b274-10fb5f6dfd61-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(775, 161, 'fakerpress_flag', '1'),
(776, 161, '_fakerpress_orginal_url', 'https://picsum.photos/1048/698/?random'),
(779, 163, '_wp_attached_file', '2020/05/abbc5c3c-ebc3-330d-a1d6-0fb73db8177e.png'),
(780, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:473;s:6:\"height\";i:378;s:4:\"file\";s:48:\"2020/05/abbc5c3c-ebc3-330d-a1d6-0fb73db8177e.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-192x153.png\";s:5:\"width\";i:192;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"abbc5c3c-ebc3-330d-a1d6-0fb73db8177e-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(781, 163, 'fakerpress_flag', '1'),
(782, 163, '_fakerpress_orginal_url', 'http://placehold.it/473x378/'),
(784, 164, '_wp_attached_file', '2020/05/ebfdb33b-2d60-33a8-8df9-51c65ec7aff9.jpg'),
(785, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1047;s:6:\"height\";i:698;s:4:\"file\";s:48:\"2020/05/ebfdb33b-2d60-33a8-8df9-51c65ec7aff9.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"ebfdb33b-2d60-33a8-8df9-51c65ec7aff9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(786, 164, 'fakerpress_flag', '1'),
(787, 164, '_fakerpress_orginal_url', 'https://picsum.photos/1047/698/?random'),
(789, 166, '_wp_attached_file', '2020/05/c3689bdf-2e53-3066-99a4-52e94c90a077.png'),
(790, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:575;s:6:\"height\";i:460;s:4:\"file\";s:48:\"2020/05/c3689bdf-2e53-3066-99a4-52e94c90a077.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-575x383.png\";s:5:\"width\";i:575;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-192x154.png\";s:5:\"width\";i:192;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"c3689bdf-2e53-3066-99a4-52e94c90a077-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(791, 166, 'fakerpress_flag', '1'),
(792, 166, '_fakerpress_orginal_url', 'http://placehold.it/575x460/'),
(795, 168, '_wp_attached_file', '2020/05/055a22bb-75d5-3f48-b0c8-df384a095e17.png'),
(796, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:332;s:6:\"height\";i:265;s:4:\"file\";s:48:\"2020/05/055a22bb-75d5-3f48-b0c8-df384a095e17.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-300x265.png\";s:5:\"width\";i:300;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-192x153.png\";s:5:\"width\";i:192;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-300x265.png\";s:5:\"width\";i:300;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"055a22bb-75d5-3f48-b0c8-df384a095e17-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(797, 168, 'fakerpress_flag', '1'),
(798, 168, '_fakerpress_orginal_url', 'http://placehold.it/332x265/'),
(800, 169, '_wp_attached_file', '2020/05/45d5c606-5714-3f75-850f-0cbb810dd452.png'),
(801, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:555;s:6:\"height\";i:444;s:4:\"file\";s:48:\"2020/05/45d5c606-5714-3f75-850f-0cbb810dd452.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-555x383.png\";s:5:\"width\";i:555;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-192x154.png\";s:5:\"width\";i:192;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"45d5c606-5714-3f75-850f-0cbb810dd452-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(802, 169, 'fakerpress_flag', '1'),
(803, 169, '_fakerpress_orginal_url', 'http://placehold.it/555x444/'),
(804, 170, '_wp_attached_file', '2020/05/9aac4fef-00ce-3dbe-9313-a2e0d0c800c3.jpg'),
(805, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:897;s:4:\"file\";s:48:\"2020/05/9aac4fef-00ce-3dbe-9313-a2e0d0c800c3.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"9aac4fef-00ce-3dbe-9313-a2e0d0c800c3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(806, 170, 'fakerpress_flag', '1'),
(807, 170, '_fakerpress_orginal_url', 'https://picsum.photos/1346/897/?random'),
(809, 172, '_wp_attached_file', '2020/05/39977377-44b8-3113-a376-547c63d3fddf.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(810, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:575;s:6:\"height\";i:460;s:4:\"file\";s:48:\"2020/05/39977377-44b8-3113-a376-547c63d3fddf.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-575x383.png\";s:5:\"width\";i:575;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-192x154.png\";s:5:\"width\";i:192;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"39977377-44b8-3113-a376-547c63d3fddf-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(811, 172, 'fakerpress_flag', '1'),
(812, 172, '_fakerpress_orginal_url', 'http://placehold.it/575x460/'),
(814, 173, '_wp_attached_file', '2020/05/85c30ce7-0512-3805-a4bc-f826cf69dbba.jpg'),
(815, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1174;s:6:\"height\";i:782;s:4:\"file\";s:48:\"2020/05/85c30ce7-0512-3805-a4bc-f826cf69dbba.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"85c30ce7-0512-3805-a4bc-f826cf69dbba-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(816, 173, 'fakerpress_flag', '1'),
(817, 173, '_fakerpress_orginal_url', 'https://picsum.photos/1174/782/?random'),
(818, 174, '_wp_attached_file', '2020/05/5e14c01c-0a4e-345d-be2e-a1f48e783a20.png'),
(819, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:598;s:6:\"height\";i:478;s:4:\"file\";s:48:\"2020/05/5e14c01c-0a4e-345d-be2e-a1f48e783a20.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-583x383.png\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-192x153.png\";s:5:\"width\";i:192;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"5e14c01c-0a4e-345d-be2e-a1f48e783a20-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(820, 174, 'fakerpress_flag', '1'),
(821, 174, '_fakerpress_orginal_url', 'http://placehold.it/598x478/'),
(823, 176, '_wp_attached_file', '2020/05/3727fd80-bd07-30d7-9c86-34b4e5241b69.jpg'),
(824, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1189;s:6:\"height\";i:792;s:4:\"file\";s:48:\"2020/05/3727fd80-bd07-30d7-9c86-34b4e5241b69.jpg\";s:5:\"sizes\";a:3:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"3727fd80-bd07-30d7-9c86-34b4e5241b69-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"3727fd80-bd07-30d7-9c86-34b4e5241b69-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"3727fd80-bd07-30d7-9c86-34b4e5241b69-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(825, 176, 'fakerpress_flag', '1'),
(826, 176, '_fakerpress_orginal_url', 'https://picsum.photos/1189/792/?random'),
(828, 177, '_wp_attached_file', '2020/05/600d4a65-3517-36d3-8136-575f4941c65c.jpg'),
(829, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1035;s:6:\"height\";i:690;s:4:\"file\";s:48:\"2020/05/600d4a65-3517-36d3-8136-575f4941c65c.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"600d4a65-3517-36d3-8136-575f4941c65c-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"600d4a65-3517-36d3-8136-575f4941c65c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(830, 177, 'fakerpress_flag', '1'),
(831, 177, '_fakerpress_orginal_url', 'https://picsum.photos/1035/690/?random'),
(832, 178, '_wp_attached_file', '2020/05/6db8a10d-f0eb-3a27-8aae-d37276a03e67.png'),
(833, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:547;s:6:\"height\";i:437;s:4:\"file\";s:48:\"2020/05/6db8a10d-f0eb-3a27-8aae-d37276a03e67.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-547x383.png\";s:5:\"width\";i:547;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-192x153.png\";s:5:\"width\";i:192;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"6db8a10d-f0eb-3a27-8aae-d37276a03e67-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(834, 178, 'fakerpress_flag', '1'),
(835, 178, '_fakerpress_orginal_url', 'http://placehold.it/547x437/'),
(836, 179, '_wp_attached_file', '2020/05/0172c2b9-0e39-3c52-98a7-015deec1519e.jpg'),
(837, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1083;s:6:\"height\";i:722;s:4:\"file\";s:48:\"2020/05/0172c2b9-0e39-3c52-98a7-015deec1519e.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"0172c2b9-0e39-3c52-98a7-015deec1519e-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mark-landscape-one\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-583x383.jpg\";s:5:\"width\";i:583;s:6:\"height\";i:383;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-192x128.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"0172c2b9-0e39-3c52-98a7-015deec1519e-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(838, 179, 'fakerpress_flag', '1'),
(839, 179, '_fakerpress_orginal_url', 'https://picsum.photos/1083/722/?random'),
(841, 181, '_wp_attached_file', '2020/05/40c844ae-4dc9-3b51-a8a2-2e3dc12b5219.png'),
(842, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:461;s:6:\"height\";i:368;s:4:\"file\";s:48:\"2020/05/40c844ae-4dc9-3b51-a8a2-2e3dc12b5219.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"mark-client-logo\";a:4:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-192x153.png\";s:5:\"width\";i:192;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"40c844ae-4dc9-3b51-a8a2-2e3dc12b5219-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(843, 181, 'fakerpress_flag', '1'),
(844, 181, '_fakerpress_orginal_url', 'http://placehold.it/461x368/'),
(870, 189, '_edit_lock', '1588547838:1'),
(873, 189, '_thumbnail_id', '179'),
(874, 191, '_edit_lock', '1588547828:1'),
(877, 191, '_thumbnail_id', '177'),
(879, 191, '_edit_last', '1'),
(882, 189, '_edit_last', '1'),
(885, 1, '_edit_last', '1'),
(888, 194, '_menu_item_type', 'post_type'),
(889, 194, '_menu_item_menu_item_parent', '0'),
(890, 194, '_menu_item_object_id', '25'),
(891, 194, '_menu_item_object', 'page'),
(892, 194, '_menu_item_target', ''),
(893, 194, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(894, 194, '_menu_item_xfn', ''),
(895, 194, '_menu_item_url', ''),
(896, 194, '_menu_item_orphaned', '1588548195'),
(897, 195, '_menu_item_type', 'post_type'),
(898, 195, '_menu_item_menu_item_parent', '0'),
(899, 195, '_menu_item_object_id', '149'),
(900, 195, '_menu_item_object', 'page'),
(901, 195, '_menu_item_target', ''),
(902, 195, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(903, 195, '_menu_item_xfn', ''),
(904, 195, '_menu_item_url', ''),
(905, 195, '_menu_item_orphaned', '1588548195'),
(906, 196, '_menu_item_type', 'post_type'),
(907, 196, '_menu_item_menu_item_parent', '0'),
(908, 196, '_menu_item_object_id', '93'),
(909, 196, '_menu_item_object', 'page'),
(910, 196, '_menu_item_target', ''),
(911, 196, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(912, 196, '_menu_item_xfn', ''),
(913, 196, '_menu_item_url', ''),
(914, 196, '_menu_item_orphaned', '1588548196'),
(915, 197, '_menu_item_type', 'post_type'),
(916, 197, '_menu_item_menu_item_parent', '0'),
(917, 197, '_menu_item_object_id', '94'),
(918, 197, '_menu_item_object', 'page'),
(919, 197, '_menu_item_target', ''),
(920, 197, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(921, 197, '_menu_item_xfn', ''),
(922, 197, '_menu_item_url', ''),
(923, 197, '_menu_item_orphaned', '1588548197'),
(924, 198, '_menu_item_type', 'post_type'),
(925, 198, '_menu_item_menu_item_parent', '0'),
(926, 198, '_menu_item_object_id', '95'),
(927, 198, '_menu_item_object', 'page'),
(928, 198, '_menu_item_target', ''),
(929, 198, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(930, 198, '_menu_item_xfn', ''),
(931, 198, '_menu_item_url', ''),
(932, 198, '_menu_item_orphaned', '1588548197'),
(933, 199, '_menu_item_type', 'post_type'),
(934, 199, '_menu_item_menu_item_parent', '0'),
(935, 199, '_menu_item_object_id', '2'),
(936, 199, '_menu_item_object', 'page'),
(937, 199, '_menu_item_target', ''),
(938, 199, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(939, 199, '_menu_item_xfn', ''),
(940, 199, '_menu_item_url', ''),
(941, 199, '_menu_item_orphaned', '1588548198'),
(942, 200, '_menu_item_type', 'post_type'),
(943, 200, '_menu_item_menu_item_parent', '0'),
(944, 200, '_menu_item_object_id', '92'),
(945, 200, '_menu_item_object', 'page'),
(946, 200, '_menu_item_target', ''),
(947, 200, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(948, 200, '_menu_item_xfn', ''),
(949, 200, '_menu_item_url', ''),
(950, 200, '_menu_item_orphaned', '1588548198'),
(951, 201, '_menu_item_type', 'post_type'),
(952, 201, '_menu_item_menu_item_parent', '0'),
(953, 201, '_menu_item_object_id', '95'),
(954, 201, '_menu_item_object', 'page'),
(955, 201, '_menu_item_target', ''),
(956, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(957, 201, '_menu_item_xfn', ''),
(958, 201, '_menu_item_url', ''),
(960, 202, '_menu_item_type', 'post_type'),
(961, 202, '_menu_item_menu_item_parent', '0'),
(962, 202, '_menu_item_object_id', '94'),
(963, 202, '_menu_item_object', 'page'),
(964, 202, '_menu_item_target', ''),
(965, 202, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(966, 202, '_menu_item_xfn', ''),
(967, 202, '_menu_item_url', ''),
(969, 203, '_menu_item_type', 'post_type'),
(970, 203, '_menu_item_menu_item_parent', '0'),
(971, 203, '_menu_item_object_id', '93'),
(972, 203, '_menu_item_object', 'page'),
(973, 203, '_menu_item_target', ''),
(974, 203, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(975, 203, '_menu_item_xfn', ''),
(976, 203, '_menu_item_url', ''),
(978, 204, '_menu_item_type', 'post_type'),
(979, 204, '_menu_item_menu_item_parent', '0'),
(980, 204, '_menu_item_object_id', '92'),
(981, 204, '_menu_item_object', 'page'),
(982, 204, '_menu_item_target', ''),
(983, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(984, 204, '_menu_item_xfn', ''),
(985, 204, '_menu_item_url', ''),
(987, 205, '_menu_item_type', 'post_type'),
(988, 205, '_menu_item_menu_item_parent', '0'),
(989, 205, '_menu_item_object_id', '2'),
(990, 205, '_menu_item_object', 'page'),
(991, 205, '_menu_item_target', ''),
(992, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(993, 205, '_menu_item_xfn', ''),
(994, 205, '_menu_item_url', ''),
(996, 206, '_menu_item_type', 'post_type'),
(997, 206, '_menu_item_menu_item_parent', '0'),
(998, 206, '_menu_item_object_id', '25'),
(999, 206, '_menu_item_object', 'page'),
(1000, 206, '_menu_item_target', ''),
(1001, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1002, 206, '_menu_item_xfn', ''),
(1003, 206, '_menu_item_url', ''),
(1068, 214, '_edit_lock', '1588576886:1'),
(1069, 216, '_edit_lock', '1588577029:1'),
(1070, 217, '_edit_lock', '1588577203:1'),
(1071, 218, '_edit_lock', '1588577080:1'),
(1072, 219, '_edit_lock', '1588577236:1'),
(1073, 220, '_edit_lock', '1588577104:1'),
(1074, 221, '_edit_lock', '1588577230:1'),
(1075, 227, '_edit_lock', '1588577479:1'),
(1076, 228, '_edit_lock', '1588577475:1'),
(1077, 230, '_edit_lock', '1588577358:1'),
(1078, 231, '_edit_lock', '1588577804:1'),
(1079, 232, '_edit_lock', '1588577804:1'),
(1080, 233, '_edit_lock', '1588577803:1'),
(1081, 238, '_edit_lock', '1588577799:1'),
(1082, 239, '_edit_lock', '1588745025:1'),
(1083, 241, '_edit_lock', '1588577792:1'),
(1084, 240, '_edit_lock', '1588577642:1'),
(1085, 242, '_edit_lock', '1588577638:1'),
(1221, 265, '_menu_item_type', 'post_type'),
(1222, 265, '_menu_item_menu_item_parent', '0'),
(1223, 265, '_menu_item_object_id', '157'),
(1224, 265, '_menu_item_object', 'section'),
(1225, 265, '_menu_item_target', ''),
(1226, 265, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1227, 265, '_menu_item_xfn', ''),
(1228, 265, '_menu_item_url', ''),
(1230, 266, '_menu_item_type', 'post_type'),
(1231, 266, '_menu_item_menu_item_parent', '0'),
(1232, 266, '_menu_item_object_id', '151'),
(1233, 266, '_menu_item_object', 'section'),
(1234, 266, '_menu_item_target', ''),
(1235, 266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1236, 266, '_menu_item_xfn', ''),
(1237, 266, '_menu_item_url', ''),
(1239, 267, '_menu_item_type', 'post_type'),
(1240, 267, '_menu_item_menu_item_parent', '0'),
(1241, 267, '_menu_item_object_id', '146'),
(1242, 267, '_menu_item_object', 'section'),
(1243, 267, '_menu_item_target', ''),
(1244, 267, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1245, 267, '_menu_item_xfn', ''),
(1246, 267, '_menu_item_url', ''),
(1248, 268, '_menu_item_type', 'post_type'),
(1249, 268, '_menu_item_menu_item_parent', '0'),
(1250, 268, '_menu_item_object_id', '135'),
(1251, 268, '_menu_item_object', 'section'),
(1252, 268, '_menu_item_target', ''),
(1253, 268, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1254, 268, '_menu_item_xfn', ''),
(1255, 268, '_menu_item_url', ''),
(1257, 269, '_menu_item_type', 'post_type'),
(1258, 269, '_menu_item_menu_item_parent', '0'),
(1259, 269, '_menu_item_object_id', '87'),
(1260, 269, '_menu_item_object', 'section'),
(1261, 269, '_menu_item_target', ''),
(1262, 269, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1263, 269, '_menu_item_xfn', ''),
(1264, 269, '_menu_item_url', ''),
(1266, 270, '_menu_item_type', 'post_type'),
(1267, 270, '_menu_item_menu_item_parent', '0'),
(1268, 270, '_menu_item_object_id', '69'),
(1269, 270, '_menu_item_object', 'section'),
(1270, 270, '_menu_item_target', ''),
(1271, 270, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1272, 270, '_menu_item_xfn', ''),
(1273, 270, '_menu_item_url', ''),
(1275, 271, '_menu_item_type', 'post_type'),
(1276, 271, '_menu_item_menu_item_parent', '0'),
(1277, 271, '_menu_item_object_id', '66'),
(1278, 271, '_menu_item_object', 'section'),
(1279, 271, '_menu_item_target', ''),
(1280, 271, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1281, 271, '_menu_item_xfn', ''),
(1282, 271, '_menu_item_url', ''),
(1284, 272, '_menu_item_type', 'post_type'),
(1285, 272, '_menu_item_menu_item_parent', '0'),
(1286, 272, '_menu_item_object_id', '65'),
(1287, 272, '_menu_item_object', 'section'),
(1288, 272, '_menu_item_target', ''),
(1289, 272, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1290, 272, '_menu_item_xfn', ''),
(1291, 272, '_menu_item_url', ''),
(1293, 273, '_menu_item_type', 'post_type'),
(1294, 273, '_menu_item_menu_item_parent', '0'),
(1295, 273, '_menu_item_object_id', '63'),
(1296, 273, '_menu_item_object', 'section'),
(1297, 273, '_menu_item_target', ''),
(1298, 273, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1299, 273, '_menu_item_xfn', ''),
(1300, 273, '_menu_item_url', ''),
(1302, 274, '_menu_item_type', 'post_type'),
(1303, 274, '_menu_item_menu_item_parent', '0'),
(1304, 274, '_menu_item_object_id', '60'),
(1305, 274, '_menu_item_object', 'section'),
(1306, 274, '_menu_item_target', ''),
(1307, 274, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1308, 274, '_menu_item_xfn', ''),
(1309, 274, '_menu_item_url', ''),
(1311, 275, '_menu_item_type', 'post_type'),
(1312, 275, '_menu_item_menu_item_parent', '0'),
(1313, 275, '_menu_item_object_id', '56'),
(1314, 275, '_menu_item_object', 'section'),
(1315, 275, '_menu_item_target', ''),
(1316, 275, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1317, 275, '_menu_item_xfn', ''),
(1318, 275, '_menu_item_url', ''),
(1320, 276, '_menu_item_type', 'post_type'),
(1321, 276, '_menu_item_menu_item_parent', '0'),
(1322, 276, '_menu_item_object_id', '53'),
(1323, 276, '_menu_item_object', 'section'),
(1324, 276, '_menu_item_target', ''),
(1325, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1326, 276, '_menu_item_xfn', ''),
(1327, 276, '_menu_item_url', ''),
(1329, 277, '_menu_item_type', 'post_type'),
(1330, 277, '_menu_item_menu_item_parent', '0'),
(1331, 277, '_menu_item_object_id', '51'),
(1332, 277, '_menu_item_object', 'section'),
(1333, 277, '_menu_item_target', ''),
(1334, 277, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1335, 277, '_menu_item_xfn', ''),
(1336, 277, '_menu_item_url', ''),
(1338, 278, '_menu_item_type', 'post_type'),
(1339, 278, '_menu_item_menu_item_parent', '0'),
(1340, 278, '_menu_item_object_id', '49'),
(1341, 278, '_menu_item_object', 'section'),
(1342, 278, '_menu_item_target', ''),
(1343, 278, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1344, 278, '_menu_item_xfn', ''),
(1345, 278, '_menu_item_url', ''),
(1347, 279, '_menu_item_type', 'post_type'),
(1348, 279, '_menu_item_menu_item_parent', '0'),
(1349, 279, '_menu_item_object_id', '32'),
(1350, 279, '_menu_item_object', 'section'),
(1351, 279, '_menu_item_target', ''),
(1352, 279, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1353, 279, '_menu_item_xfn', ''),
(1354, 279, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-02 04:55:20', '2020-04-02 04:55:20', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus. Nam libero tempore, cum soluta nobis est eligendi optio cumque', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-05-03 23:17:26', '2020-05-03 23:17:26', '', 0, 'http://localhost/markwp/?p=1', 0, 'post', '', 2),
(2, 1, '2020-04-02 04:55:20', '2020-04-02 04:55:20', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/markwp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-02 04:55:20', '2020-04-02 04:55:20', '', 0, 'http://localhost/markwp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-02 04:55:20', '2020-04-02 04:55:20', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/markwp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-02 04:55:20', '2020-04-02 04:55:20', '', 0, 'http://localhost/markwp/?page_id=3', 0, 'page', '', 0),
(19, 1, '2020-04-07 09:37:05', '2020-04-07 09:37:05', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2020-04-10 15:22:40', '2020-04-10 15:22:40', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=19', 0, 'section', '', 0),
(20, 1, '2020-04-07 09:37:27', '2020-04-07 09:37:27', '', 'Mission', '', 'publish', 'closed', 'closed', '', 'mission', '', '', '2020-04-11 12:14:22', '2020-04-11 12:14:22', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=20', 0, 'section', '', 0),
(25, 1, '2020-04-08 14:06:25', '2020-04-08 14:06:25', '', 'Landing Page', '', 'publish', 'closed', 'closed', '', 'landing-page', '', '', '2020-05-01 16:33:19', '2020-05-01 16:33:19', '', 0, 'http://localhost/markwp/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-04-08 14:06:25', '2020-04-08 14:06:25', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-04-08 14:06:25', '2020-04-08 14:06:25', '', 25, 'http://localhost/markwp/2020/04/08/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-04-10 14:36:00', '2020-04-10 14:36:00', '', 'breather-163397', '', 'inherit', 'open', 'closed', '', 'breather-163397', '', '', '2020-04-10 14:36:00', '2020-04-10 14:36:00', '', 19, 'http://localhost/markwp/wp-content/uploads/2020/04/breather-163397.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-04-14 17:32:21', '2020-04-14 17:32:21', '', 'Features', '', 'publish', 'closed', 'closed', '', 'feature', '', '', '2020-04-15 10:35:09', '2020-04-15 10:35:09', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=32', 0, 'section', '', 0),
(33, 1, '2020-04-14 17:34:06', '2020-04-14 17:34:06', '', 'breather-181282', '', 'inherit', 'open', 'closed', '', 'breather-181282', '', '', '2020-04-14 17:34:06', '2020-04-14 17:34:06', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/breather-181282.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-04-14 17:36:52', '2020-04-14 17:36:52', '', 'tim-gouw-79563', '', 'inherit', 'open', 'closed', '', 'tim-gouw-79563', '', '', '2020-04-14 17:36:52', '2020-04-14 17:36:52', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/tim-gouw-79563.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-04-14 17:37:00', '2020-04-14 17:37:00', '', 'oscar-nilsson-13605', '', 'inherit', 'open', 'closed', '', 'oscar-nilsson-13605', '', '', '2020-04-14 17:37:00', '2020-04-14 17:37:00', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/oscar-nilsson-13605.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-04-14 17:37:09', '2020-04-14 17:37:09', '', 'photo', '', 'inherit', 'open', 'closed', '', 'photo', '', '', '2020-04-14 17:37:09', '2020-04-14 17:37:09', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/photo.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-04-14 17:37:27', '2020-04-14 17:37:27', '', 'cathryn-lavery-67851', '', 'inherit', 'open', 'closed', '', 'cathryn-lavery-67851', '', '', '2020-04-14 17:37:27', '2020-04-14 17:37:27', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/cathryn-lavery-67851.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-04-14 17:37:37', '2020-04-14 17:37:37', '', 'jesus-kiteque-224069', '', 'inherit', 'open', 'closed', '', 'jesus-kiteque-224069', '', '', '2020-04-14 17:37:37', '2020-04-14 17:37:37', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/jesus-kiteque-224069.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-04-14 17:37:58', '2020-04-14 17:37:58', '', 'kelly-brito-328447', '', 'inherit', 'open', 'closed', '', 'kelly-brito-328447', '', '', '2020-04-14 17:37:58', '2020-04-14 17:37:58', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/kelly-brito-328447.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-04-14 17:38:28', '2020-04-14 17:38:28', '', 'ramiro-mendes-237525', '', 'inherit', 'open', 'closed', '', 'ramiro-mendes-237525', '', '', '2020-04-14 17:38:28', '2020-04-14 17:38:28', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/ramiro-mendes-237525.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-04-14 17:38:59', '2020-04-14 17:38:59', '', 'breather-163395', '', 'inherit', 'open', 'closed', '', 'breather-163395', '', '', '2020-04-14 17:38:59', '2020-04-14 17:38:59', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/breather-163395.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-04-14 17:39:37', '2020-04-14 17:39:37', '', 'breather-181282', '', 'inherit', 'open', 'closed', '', 'breather-181282-2', '', '', '2020-04-14 17:39:37', '2020-04-14 17:39:37', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/breather-181282-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-04-14 17:43:48', '2020-04-14 17:43:48', '', 'gabriel-beaudry-253365', '', 'inherit', 'open', 'closed', '', 'gabriel-beaudry-253365', '', '', '2020-04-14 17:43:48', '2020-04-14 17:43:48', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/gabriel-beaudry-253365.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-04-14 18:00:43', '2020-04-14 18:00:43', '', 'icon-1', '', 'inherit', 'open', 'closed', '', 'icon-1', '', '', '2020-04-14 18:00:43', '2020-04-14 18:00:43', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/icon-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-04-14 18:00:45', '2020-04-14 18:00:45', '', 'icon-2', '', 'inherit', 'open', 'closed', '', 'icon-2', '', '', '2020-04-14 18:00:45', '2020-04-14 18:00:45', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/icon-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-04-14 18:00:48', '2020-04-14 18:00:48', '', 'icon-3', '', 'inherit', 'open', 'closed', '', 'icon-3', '', '', '2020-04-14 18:00:48', '2020-04-14 18:00:48', '', 32, 'http://localhost/markwp/wp-content/uploads/2020/04/icon-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-04-15 09:53:54', '2020-04-15 09:53:54', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-04-15 11:02:50', '2020-04-15 11:02:50', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=49', 0, 'section', '', 0),
(50, 1, '2020-04-15 10:41:45', '2020-04-15 10:41:45', '', 'About', '', 'inherit', 'closed', 'closed', '', '49-autosave-v1', '', '', '2020-04-15 10:41:45', '2020-04-15 10:41:45', '', 49, 'http://localhost/markwp/2020/04/15/49-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2020-04-16 10:22:27', '2020-04-16 10:22:27', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-04-16 14:14:32', '2020-04-16 14:14:32', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=51', 0, 'section', '', 0),
(53, 1, '2020-04-17 07:33:40', '2020-04-17 07:33:40', '', 'Benefits', '', 'publish', 'closed', 'closed', '', 'benefits', '', '', '2020-04-17 15:11:17', '2020-04-17 15:11:17', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=53', 0, 'section', '', 0),
(54, 1, '2020-04-17 07:53:06', '2020-04-17 07:53:06', '', 'diagram', '', 'inherit', 'open', 'closed', '', 'diagram', '', '', '2020-04-17 07:53:06', '2020-04-17 07:53:06', '', 53, 'http://localhost/markwp/wp-content/uploads/2020/04/diagram.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-04-17 16:29:47', '2020-04-17 16:29:47', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2020-04-17 18:06:40', '2020-04-17 18:06:40', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=56', 0, 'section', '', 0),
(57, 1, '2020-04-17 17:58:44', '2020-04-17 17:58:44', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2', '', '', '2020-04-17 17:58:44', '2020-04-17 17:58:44', '', 56, 'http://localhost/markwp/wp-content/uploads/2020/04/a2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-04-17 17:58:46', '2020-04-17 17:58:46', '', 'a0', '', 'inherit', 'open', 'closed', '', 'a0', '', '', '2020-04-17 17:58:46', '2020-04-17 17:58:46', '', 56, 'http://localhost/markwp/wp-content/uploads/2020/04/a0.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-04-17 17:58:47', '2020-04-17 17:58:47', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2020-04-17 17:58:47', '2020-04-17 17:58:47', '', 56, 'http://localhost/markwp/wp-content/uploads/2020/04/a1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-04-18 05:24:55', '2020-04-18 05:24:55', '', 'Image Info', '', 'publish', 'closed', 'closed', '', 'image-info', '', '', '2020-04-18 05:41:29', '2020-04-18 05:41:29', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=60', 0, 'section', '', 0),
(63, 1, '2020-04-19 09:56:42', '2020-04-19 09:56:42', '', 'Fun Factors', '', 'publish', 'closed', 'closed', '', 'counter', '', '', '2020-04-19 17:45:20', '2020-04-19 17:45:20', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=63', 0, 'section', '', 0),
(65, 1, '2020-04-20 15:24:09', '2020-04-20 15:24:09', '', 'Call To Action', '', 'publish', 'closed', 'closed', '', 'call-to-action', '', '', '2020-04-20 16:22:24', '2020-04-20 16:22:24', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=65', 0, 'section', '', 0),
(66, 1, '2020-04-21 16:17:14', '2020-04-21 16:17:14', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2020-04-23 09:41:10', '2020-04-23 09:41:10', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=66', 0, 'section', '', 0),
(69, 1, '2020-04-24 22:46:27', '2020-04-24 22:46:27', '', 'Our Works', '', 'publish', 'closed', 'closed', '', 'our-works', '', '', '2020-04-25 13:24:13', '2020-04-25 13:24:13', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=69', 0, 'section', '', 0),
(70, 1, '2020-04-25 06:56:48', '2020-04-25 06:56:48', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-04-25 06:56:48', '2020-04-25 06:56:48', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-04-25 06:56:53', '2020-04-25 06:56:53', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-04-25 06:56:53', '2020-04-25 06:56:53', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-04-25 06:56:57', '2020-04-25 06:56:57', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-04-25 06:56:57', '2020-04-25 06:56:57', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-04-25 06:57:00', '2020-04-25 06:57:00', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2020-04-25 06:57:00', '2020-04-25 06:57:00', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-04-25 06:57:04', '2020-04-25 06:57:04', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2020-04-25 06:57:04', '2020-04-25 06:57:04', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-04-25 06:57:08', '2020-04-25 06:57:08', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2020-04-25 06:57:08', '2020-04-25 06:57:08', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-04-25 06:57:12', '2020-04-25 06:57:12', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2020-04-25 06:57:12', '2020-04-25 06:57:12', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-04-25 06:57:16', '2020-04-25 06:57:16', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2020-04-25 06:57:16', '2020-04-25 06:57:16', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-04-25 06:57:19', '2020-04-25 06:57:19', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2020-04-25 06:57:19', '2020-04-25 06:57:19', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-04-25 06:57:23', '2020-04-25 06:57:23', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2020-04-25 06:57:23', '2020-04-25 06:57:23', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-04-25 06:57:26', '2020-04-25 06:57:26', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2020-04-25 06:57:26', '2020-04-25 06:57:26', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-04-25 06:57:30', '2020-04-25 06:57:30', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2020-04-25 06:57:30', '2020-04-25 06:57:30', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-04-25 06:57:35', '2020-04-25 06:57:35', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2020-04-25 06:57:35', '2020-04-25 06:57:35', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-04-25 06:57:39', '2020-04-25 06:57:39', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2020-04-25 06:57:39', '2020-04-25 06:57:39', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/14.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-04-25 06:57:44', '2020-04-25 06:57:44', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2020-04-25 06:57:44', '2020-04-25 06:57:44', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/15.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-04-25 06:57:49', '2020-04-25 06:57:49', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2020-04-25 06:57:49', '2020-04-25 06:57:49', '', 69, 'http://localhost/markwp/wp-content/uploads/2020/04/16.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-04-26 11:11:32', '2020-04-26 11:11:32', '', 'Pricing Table', '', 'publish', 'closed', 'closed', '', 'pricing-table', '', '', '2020-04-27 07:28:40', '2020-04-27 07:28:40', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=87', 0, 'section', '', 0),
(91, 1, '2020-04-27 09:34:41', '2020-04-27 09:34:41', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-04-27 09:34:41', '2020-04-27 09:34:41', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2020-04-27 10:02:17', '2020-04-27 10:02:17', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-04-27 10:02:17', '2020-04-27 10:02:17', '', 0, 'http://localhost/markwp/shop/', 0, 'page', '', 0),
(93, 1, '2020-04-27 10:02:17', '2020-04-27 10:02:17', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-04-27 10:02:17', '2020-04-27 10:02:17', '', 0, 'http://localhost/markwp/cart/', 0, 'page', '', 0),
(94, 1, '2020-04-27 10:02:17', '2020-04-27 10:02:17', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-04-27 10:02:17', '2020-04-27 10:02:17', '', 0, 'http://localhost/markwp/checkout/', 0, 'page', '', 0),
(95, 1, '2020-04-27 10:02:17', '2020-04-27 10:02:17', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-04-27 10:02:17', '2020-04-27 10:02:17', '', 0, 'http://localhost/markwp/my-account/', 0, 'page', '', 0),
(96, 1, '2020-04-27 10:48:57', '2020-04-27 10:48:57', 'http://localhost/markwp/wp-content/uploads/2020/04/sample_products.csv', 'sample_products.csv', '', 'private', 'open', 'closed', '', 'sample_products-csv', '', '', '2020-04-27 10:48:57', '2020-04-27 10:48:57', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/04/sample_products.csv', 0, 'attachment', 'text/csv', 0),
(97, 1, '2020-04-27 10:50:52', '2020-04-27 10:50:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2020-04-28 05:40:59', '2020-04-28 05:40:59', '', 0, 'http://localhost/markwp/product/import-placeholder-for-44/', 0, 'product', '', 0),
(98, 1, '2020-04-27 10:50:57', '2020-04-27 10:50:57', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2020-04-28 07:13:30', '2020-04-28 07:13:30', '', 0, 'http://localhost/markwp/product/import-placeholder-for-45/', 0, 'product', '', 0),
(124, 1, '2020-04-27 11:17:32', '2020-04-27 11:17:32', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2020-04-27 11:17:32', '2020-04-27 11:17:32', '', 97, 'http://localhost/markwp/wp-content/uploads/2020/04/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2020-04-27 11:31:18', '2020-04-27 11:31:18', '', 'vneck-tee-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-1-jpg', '', '', '2020-04-27 11:31:18', '2020-04-27 11:31:18', '', 97, 'http://localhost/markwp/wp-content/uploads/2020/04/vneck-tee-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2020-04-27 11:31:23', '2020-04-27 11:31:23', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2020-04-27 11:31:23', '2020-04-27 11:31:23', '', 97, 'http://localhost/markwp/wp-content/uploads/2020/04/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2020-04-27 11:39:17', '2020-04-27 11:39:17', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2020-04-27 11:39:17', '2020-04-27 11:39:17', '', 97, 'http://localhost/markwp/wp-content/uploads/2020/04/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2020-04-27 11:39:28', '2020-04-27 11:39:28', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2020-04-27 11:39:28', '2020-04-27 11:39:28', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-04-27 13:11:24', '2020-04-27 13:11:24', '', 'hoodie-2-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-1-jpg', '', '', '2020-04-27 13:11:24', '2020-04-27 13:11:24', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2020-04-27 13:11:31', '2020-04-27 13:11:31', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2020-04-27 13:11:31', '2020-04-27 13:11:31', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2020-04-27 13:11:38', '2020-04-27 13:11:38', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2020-04-27 13:11:38', '2020-04-27 13:11:38', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2020-04-27 13:57:04', '2020-04-27 13:57:04', '', 'hoodie-green-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-1-jpg', '', '', '2020-04-27 13:57:04', '2020-04-27 13:57:04', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-green-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2020-04-27 13:57:16', '2020-04-27 13:57:16', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2020-04-27 13:57:16', '2020-04-27 13:57:16', '', 98, 'http://localhost/markwp/wp-content/uploads/2020/04/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-04-28 05:25:30', '2020-04-28 05:25:30', '', 'Our Shop', '', 'publish', 'closed', 'closed', '', 'our-shop', '', '', '2020-04-28 05:48:20', '2020-04-28 05:48:20', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=135', 0, 'section', '', 0),
(139, 1, '2020-04-28 05:46:28', '2020-04-28 05:46:28', '', 'Import placeholder for 46', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-46', '', '', '2020-04-28 05:46:28', '2020-04-28 05:46:28', '', 0, 'http://localhost/markwp/product/import-placeholder-for-46/', 0, 'product', '', 0),
(140, 1, '2020-04-28 05:46:33', '2020-04-28 05:46:33', '', 'Import placeholder for 47', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-47', '', '', '2020-04-28 05:46:33', '2020-04-28 05:46:33', '', 0, 'http://localhost/markwp/product/import-placeholder-for-47/', 0, 'product', '', 0),
(141, 1, '2020-04-28 05:46:38', '2020-04-28 05:46:38', '', 'Import placeholder for 48', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-48', '', '', '2020-04-28 05:46:38', '2020-04-28 05:46:38', '', 0, 'http://localhost/markwp/product/import-placeholder-for-48/', 0, 'product', '', 0),
(142, 1, '2020-04-28 05:46:42', '2020-04-28 05:46:42', '', 'Import placeholder for 58', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-58', '', '', '2020-04-28 05:46:42', '2020-04-28 05:46:42', '', 0, 'http://localhost/markwp/product/import-placeholder-for-58/', 0, 'product', '', 0),
(143, 1, '2020-04-28 05:46:46', '2020-04-28 05:46:46', '', 'Import placeholder for 60', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-60', '', '', '2020-04-28 05:46:46', '2020-04-28 05:46:46', '', 0, 'http://localhost/markwp/product/import-placeholder-for-60/', 0, 'product', '', 0),
(144, 1, '2020-04-28 08:13:10', '2020-04-28 08:13:10', '100 Things to do Before High School', 'Something', 'This is  description', 'publish', 'open', 'closed', '', 'something', '', '', '2020-04-28 09:05:34', '2020-04-28 09:05:34', '', 0, 'http://localhost/markwp/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2020-04-28 09:22:37', '2020-04-28 09:22:37', '', 'Bag', '', 'publish', 'open', 'closed', '', 'bag', '', '', '2020-04-28 09:22:39', '2020-04-28 09:22:39', '', 0, 'http://localhost/markwp/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2020-04-28 10:44:18', '2020-04-28 10:44:18', '', 'Blog Sections', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-28 10:48:40', '2020-04-28 10:48:40', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=146', 0, 'section', '', 0),
(147, 1, '2020-04-28 12:11:56', '2020-04-28 12:11:56', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Hmm. We’re having trouble finding that site.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-28 12:11:56', '2020-04-28 12:11:56', '', 1, 'http://localhost/markwp/2020/04/28/1-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2020-04-28 12:12:40', '2020-04-28 12:12:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus. Nam libero tempore, cum soluta nobis est eligendi optio cumque', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-28 12:12:40', '2020-04-28 12:12:40', '', 1, 'http://localhost/markwp/2020/04/28/1-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2020-04-28 13:12:38', '2020-04-28 13:12:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-28 13:12:38', '2020-04-28 13:12:38', '', 0, 'http://localhost/markwp/?page_id=149', 0, 'page', '', 0),
(150, 1, '2020-04-28 13:12:38', '2020-04-28 13:12:38', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2020-04-28 13:12:38', '2020-04-28 13:12:38', '', 149, 'http://localhost/markwp/2020/04/28/149-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2020-05-01 12:58:07', '2020-05-01 12:58:07', '', 'Clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2020-05-01 14:01:30', '2020-05-01 14:01:30', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=151', 0, 'section', '', 0),
(152, 1, '2020-05-01 13:32:01', '2020-05-01 13:32:01', '', 'c4', '', 'inherit', 'open', 'closed', '', 'c4', '', '', '2020-05-01 13:32:01', '2020-05-01 13:32:01', '', 151, 'http://localhost/markwp/wp-content/uploads/2020/05/c4.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2020-05-01 13:32:05', '2020-05-01 13:32:05', '', 'c1', '', 'inherit', 'open', 'closed', '', 'c1', '', '', '2020-05-01 13:32:05', '2020-05-01 13:32:05', '', 151, 'http://localhost/markwp/wp-content/uploads/2020/05/c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2020-05-01 13:32:08', '2020-05-01 13:32:08', '', 'c2', '', 'inherit', 'open', 'closed', '', 'c2', '', '', '2020-05-01 13:32:08', '2020-05-01 13:32:08', '', 151, 'http://localhost/markwp/wp-content/uploads/2020/05/c2.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2020-05-01 13:32:12', '2020-05-01 13:32:12', '', 'c3', '', 'inherit', 'open', 'closed', '', 'c3', '', '', '2020-05-01 13:32:12', '2020-05-01 13:32:12', '', 151, 'http://localhost/markwp/wp-content/uploads/2020/05/c3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2020-05-01 16:28:03', '2020-05-01 16:28:03', '', 'Subscription', '', 'publish', 'closed', 'closed', '', 'subscription', '', '', '2020-05-01 16:30:57', '2020-05-01 16:30:57', '', 0, 'http://localhost/markwp/?post_type=section&#038;p=157', 0, 'section', '', 0),
(158, 1, '2020-05-01 16:29:01', '2020-05-01 16:29:01', '', 'Subscription', '', 'inherit', 'closed', 'closed', '', '157-autosave-v1', '', '', '2020-05-01 16:29:01', '2020-05-01 16:29:01', '', 157, 'http://localhost/markwp/2020/05/01/157-autosave-v1/', 0, 'revision', '', 0),
(161, 1, '2020-05-03 16:46:09', '2020-05-03 16:46:09', '', 'f054eb13-33e6-3d5b-b274-10fb5f6dfd61', '', 'inherit', 'open', 'closed', '', 'f054eb13-33e6-3d5b-b274-10fb5f6dfd61', '', '', '2020-05-03 16:46:09', '2020-05-03 16:46:09', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/f054eb13-33e6-3d5b-b274-10fb5f6dfd61.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2020-05-03 16:46:20', '2020-05-03 16:46:20', '', 'abbc5c3c-ebc3-330d-a1d6-0fb73db8177e', '', 'inherit', 'open', 'closed', '', 'abbc5c3c-ebc3-330d-a1d6-0fb73db8177e', '', '', '2020-05-03 16:46:20', '2020-05-03 16:46:20', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/abbc5c3c-ebc3-330d-a1d6-0fb73db8177e.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2020-05-03 16:46:34', '2020-05-03 16:46:34', '', 'ebfdb33b-2d60-33a8-8df9-51c65ec7aff9', '', 'inherit', 'open', 'closed', '', 'ebfdb33b-2d60-33a8-8df9-51c65ec7aff9', '', '', '2020-05-03 16:46:34', '2020-05-03 16:46:34', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/ebfdb33b-2d60-33a8-8df9-51c65ec7aff9.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2020-05-03 16:46:48', '2020-05-03 16:46:48', '', 'c3689bdf-2e53-3066-99a4-52e94c90a077', '', 'inherit', 'open', 'closed', '', 'c3689bdf-2e53-3066-99a4-52e94c90a077', '', '', '2020-05-03 16:46:48', '2020-05-03 16:46:48', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/c3689bdf-2e53-3066-99a4-52e94c90a077.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2020-05-03 16:46:51', '2020-05-03 16:46:51', '', '055a22bb-75d5-3f48-b0c8-df384a095e17', '', 'inherit', 'open', 'closed', '', '055a22bb-75d5-3f48-b0c8-df384a095e17', '', '', '2020-05-03 16:46:51', '2020-05-03 16:46:51', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/055a22bb-75d5-3f48-b0c8-df384a095e17.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2020-05-03 16:46:53', '2020-05-03 16:46:53', '', '45d5c606-5714-3f75-850f-0cbb810dd452', '', 'inherit', 'open', 'closed', '', '45d5c606-5714-3f75-850f-0cbb810dd452', '', '', '2020-05-03 16:46:53', '2020-05-03 16:46:53', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/45d5c606-5714-3f75-850f-0cbb810dd452.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2020-05-03 16:46:59', '2020-05-03 16:46:59', '', '9aac4fef-00ce-3dbe-9313-a2e0d0c800c3', '', 'inherit', 'open', 'closed', '', '9aac4fef-00ce-3dbe-9313-a2e0d0c800c3', '', '', '2020-05-03 16:46:59', '2020-05-03 16:46:59', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/9aac4fef-00ce-3dbe-9313-a2e0d0c800c3.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2020-05-03 16:47:14', '2020-05-03 16:47:14', '', '39977377-44b8-3113-a376-547c63d3fddf', '', 'inherit', 'open', 'closed', '', '39977377-44b8-3113-a376-547c63d3fddf', '', '', '2020-05-03 16:47:14', '2020-05-03 16:47:14', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/39977377-44b8-3113-a376-547c63d3fddf.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2020-05-03 16:47:30', '2020-05-03 16:47:30', '', '85c30ce7-0512-3805-a4bc-f826cf69dbba', '', 'inherit', 'open', 'closed', '', '85c30ce7-0512-3805-a4bc-f826cf69dbba', '', '', '2020-05-03 16:47:30', '2020-05-03 16:47:30', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/85c30ce7-0512-3805-a4bc-f826cf69dbba.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2020-05-03 16:47:41', '2020-05-03 16:47:41', '', '5e14c01c-0a4e-345d-be2e-a1f48e783a20', '', 'inherit', 'open', 'closed', '', '5e14c01c-0a4e-345d-be2e-a1f48e783a20', '', '', '2020-05-03 16:47:41', '2020-05-03 16:47:41', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/5e14c01c-0a4e-345d-be2e-a1f48e783a20.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2020-05-03 16:47:56', '2020-05-03 16:47:56', '', '3727fd80-bd07-30d7-9c86-34b4e5241b69', '', 'inherit', 'open', 'closed', '', '3727fd80-bd07-30d7-9c86-34b4e5241b69', '', '', '2020-05-03 16:47:56', '2020-05-03 16:47:56', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/3727fd80-bd07-30d7-9c86-34b4e5241b69.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2020-05-03 16:48:16', '2020-05-03 16:48:16', '', '600d4a65-3517-36d3-8136-575f4941c65c', '', 'inherit', 'open', 'closed', '', '600d4a65-3517-36d3-8136-575f4941c65c', '', '', '2020-05-03 16:48:16', '2020-05-03 16:48:16', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/600d4a65-3517-36d3-8136-575f4941c65c.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2020-05-03 16:48:34', '2020-05-03 16:48:34', '', '6db8a10d-f0eb-3a27-8aae-d37276a03e67', '', 'inherit', 'open', 'closed', '', '6db8a10d-f0eb-3a27-8aae-d37276a03e67', '', '', '2020-05-03 16:48:34', '2020-05-03 16:48:34', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/6db8a10d-f0eb-3a27-8aae-d37276a03e67.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2020-05-03 16:48:40', '2020-05-03 16:48:40', '', '0172c2b9-0e39-3c52-98a7-015deec1519e', '', 'inherit', 'open', 'closed', '', '0172c2b9-0e39-3c52-98a7-015deec1519e', '', '', '2020-05-03 16:48:40', '2020-05-03 16:48:40', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/0172c2b9-0e39-3c52-98a7-015deec1519e.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2020-05-03 16:48:52', '2020-05-03 16:48:52', '', '40c844ae-4dc9-3b51-a8a2-2e3dc12b5219', '', 'inherit', 'open', 'closed', '', '40c844ae-4dc9-3b51-a8a2-2e3dc12b5219', '', '', '2020-05-03 16:48:52', '2020-05-03 16:48:52', '', 0, 'http://localhost/markwp/wp-content/uploads/2020/05/40c844ae-4dc9-3b51-a8a2-2e3dc12b5219.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2020-05-03 16:55:55', '2020-05-03 16:55:55', '<!-- wp:paragraph -->\n<p> Aliquam ornare cursus urna</p>\n<!-- /wp:paragraph -->', 'Sed fringilla arcu', '', 'publish', 'open', 'open', '', 'sed-fringilla-arcu', '', '', '2020-05-03 23:17:16', '2020-05-03 23:17:16', '', 0, 'http://localhost/markwp/?p=189', 0, 'post', '', 0),
(190, 1, '2020-05-03 16:55:55', '2020-05-03 16:55:55', '<!-- wp:paragraph -->\n<p> Aliquam ornare cursus urna</p>\n<!-- /wp:paragraph -->', 'Sed fringilla arcu', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2020-05-03 16:55:55', '2020-05-03 16:55:55', '', 189, 'http://localhost/markwp/2020/05/03/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2020-05-03 17:01:19', '2020-05-03 17:01:19', '<!-- wp:paragraph -->\n<p>Vestibulum ante ipsum primis</p>\n<!-- /wp:paragraph -->', 'Maecenas sodales augue', '', 'publish', 'open', 'open', '', 'maecenas-sodales-augue', '', '', '2020-05-03 23:17:06', '2020-05-03 23:17:06', '', 0, 'http://localhost/markwp/?p=191', 0, 'post', '', 0),
(192, 1, '2020-05-03 17:01:19', '2020-05-03 17:01:19', '<!-- wp:paragraph -->\n<p>Vestibulum ante ipsum primis</p>\n<!-- /wp:paragraph -->', 'Maecenas sodales augue', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2020-05-03 17:01:19', '2020-05-03 17:01:19', '', 191, 'http://localhost/markwp/2020/05/03/191-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2020-05-03 23:23:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=194', 1, 'nav_menu_item', '', 0),
(195, 1, '2020-05-03 23:23:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=195', 1, 'nav_menu_item', '', 0),
(196, 1, '2020-05-03 23:23:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=196', 1, 'nav_menu_item', '', 0),
(197, 1, '2020-05-03 23:23:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=197', 1, 'nav_menu_item', '', 0),
(198, 1, '2020-05-03 23:23:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=198', 1, 'nav_menu_item', '', 0),
(199, 1, '2020-05-03 23:23:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=199', 1, 'nav_menu_item', '', 0),
(200, 1, '2020-05-03 23:23:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-03 23:23:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/markwp/?p=200', 1, 'nav_menu_item', '', 0),
(201, 1, '2020-05-03 23:26:50', '2020-05-03 23:26:50', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2020-05-03 23:31:39', '2020-05-03 23:31:39', '', 0, 'http://localhost/markwp/?p=201', 2, 'nav_menu_item', '', 0),
(202, 1, '2020-05-03 23:26:50', '2020-05-03 23:26:50', ' ', '', '', 'publish', 'closed', 'closed', '', '202', '', '', '2020-05-03 23:31:39', '2020-05-03 23:31:39', '', 0, 'http://localhost/markwp/?p=202', 3, 'nav_menu_item', '', 0),
(203, 1, '2020-05-03 23:26:51', '2020-05-03 23:26:51', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2020-05-03 23:31:39', '2020-05-03 23:31:39', '', 0, 'http://localhost/markwp/?p=203', 4, 'nav_menu_item', '', 0),
(204, 1, '2020-05-03 23:26:51', '2020-05-03 23:26:51', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2020-05-03 23:31:39', '2020-05-03 23:31:39', '', 0, 'http://localhost/markwp/?p=204', 5, 'nav_menu_item', '', 0),
(205, 1, '2020-05-03 23:26:51', '2020-05-03 23:26:51', ' ', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2020-05-03 23:31:40', '2020-05-03 23:31:40', '', 0, 'http://localhost/markwp/?p=205', 6, 'nav_menu_item', '', 0),
(206, 1, '2020-05-03 23:31:39', '2020-05-03 23:31:39', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2020-05-03 23:31:39', '2020-05-03 23:31:39', '', 0, 'http://localhost/markwp/?p=206', 1, 'nav_menu_item', '', 0),
(214, 1, '2020-05-04 07:23:27', '2020-05-04 07:23:27', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2020-05-04 07:23:27', '2020-05-04 07:23:27', '', 0, 'http://localhost/markwp/?page_id=214', 0, 'page', '', 0),
(215, 1, '2020-05-04 07:23:27', '2020-05-04 07:23:27', '', 'Banner', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2020-05-04 07:23:27', '2020-05-04 07:23:27', '', 214, 'http://localhost/markwp/2020/05/04/214-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-05-04 07:25:09', '2020-05-04 07:25:09', '', 'Mission', '', 'publish', 'closed', 'closed', '', 'mission', '', '', '2020-05-04 07:25:09', '2020-05-04 07:25:09', '', 0, 'http://localhost/markwp/?page_id=216', 0, 'page', '', 0),
(217, 1, '2020-05-04 07:26:28', '2020-05-04 07:26:28', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2020-05-04 07:26:29', '2020-05-04 07:26:29', '', 0, 'http://localhost/markwp/?page_id=217', 0, 'page', '', 0),
(218, 1, '2020-05-04 07:27:08', '2020-05-04 07:27:08', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-05-04 07:27:08', '2020-05-04 07:27:08', '', 0, 'http://localhost/markwp/?page_id=218', 0, 'page', '', 0),
(219, 1, '2020-05-04 07:28:45', '2020-05-04 07:28:45', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2020-05-04 07:28:45', '2020-05-04 07:28:45', '', 0, 'http://localhost/markwp/?page_id=219', 0, 'page', '', 0),
(220, 1, '2020-05-04 07:27:29', '2020-05-04 07:27:29', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-05-04 07:27:29', '2020-05-04 07:27:29', '', 0, 'http://localhost/markwp/?page_id=220', 0, 'page', '', 0),
(221, 1, '2020-05-04 07:28:16', '2020-05-04 07:28:16', '', 'Benefits', '', 'publish', 'closed', 'closed', '', 'benefits', '', '', '2020-05-04 07:28:16', '2020-05-04 07:28:16', '', 0, 'http://localhost/markwp/?page_id=221', 0, 'page', '', 0),
(222, 1, '2020-05-04 07:25:09', '2020-05-04 07:25:09', '', 'Mission', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2020-05-04 07:25:09', '2020-05-04 07:25:09', '', 216, 'http://localhost/markwp/2020/05/04/216-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2020-05-04 07:26:29', '2020-05-04 07:26:29', '', 'Features', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2020-05-04 07:26:29', '2020-05-04 07:26:29', '', 217, 'http://localhost/markwp/2020/05/04/217-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2020-05-04 07:27:08', '2020-05-04 07:27:08', '', 'About', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2020-05-04 07:27:08', '2020-05-04 07:27:08', '', 218, 'http://localhost/markwp/2020/05/04/218-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2020-05-04 07:27:29', '2020-05-04 07:27:29', '', 'Services', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2020-05-04 07:27:29', '2020-05-04 07:27:29', '', 220, 'http://localhost/markwp/2020/05/04/220-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2020-05-04 07:28:16', '2020-05-04 07:28:16', '', 'Benefits', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2020-05-04 07:28:16', '2020-05-04 07:28:16', '', 221, 'http://localhost/markwp/2020/05/04/221-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2020-05-04 07:29:32', '2020-05-04 07:29:32', '', 'Image info', '', 'publish', 'closed', 'closed', '', 'image-info', '', '', '2020-05-04 07:29:32', '2020-05-04 07:29:32', '', 0, 'http://localhost/markwp/?page_id=227', 0, 'page', '', 0),
(228, 1, '2020-05-04 07:30:11', '2020-05-04 07:30:11', '', 'Fun Factor', '', 'publish', 'closed', 'closed', '', 'fun-factor', '', '', '2020-05-04 07:30:11', '2020-05-04 07:30:11', '', 0, 'http://localhost/markwp/?page_id=228', 0, 'page', '', 0),
(229, 1, '2020-05-04 07:28:45', '2020-05-04 07:28:45', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2020-05-04 07:28:45', '2020-05-04 07:28:45', '', 219, 'http://localhost/markwp/2020/05/04/219-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2020-05-04 07:30:42', '2020-05-04 07:30:42', '', 'CTA', '', 'publish', 'closed', 'closed', '', 'cta', '', '', '2020-05-04 07:30:42', '2020-05-04 07:30:42', '', 0, 'http://localhost/markwp/?page_id=230', 0, 'page', '', 0),
(231, 1, '2020-05-04 07:31:37', '2020-05-04 07:31:37', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2020-05-04 07:31:37', '2020-05-04 07:31:37', '', 0, 'http://localhost/markwp/?page_id=231', 0, 'page', '', 0),
(232, 1, '2020-05-04 07:32:32', '2020-05-04 07:32:32', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2020-05-04 07:32:32', '2020-05-04 07:32:32', '', 0, 'http://localhost/markwp/?page_id=232', 0, 'page', '', 0),
(233, 1, '2020-05-04 07:32:55', '2020-05-04 07:32:55', '', 'Pricing plan', '', 'publish', 'closed', 'closed', '', 'pricing-plan', '', '', '2020-05-04 07:32:55', '2020-05-04 07:32:55', '', 0, 'http://localhost/markwp/?page_id=233', 0, 'page', '', 0),
(234, 1, '2020-05-04 07:29:32', '2020-05-04 07:29:32', '', 'Image info', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2020-05-04 07:29:32', '2020-05-04 07:29:32', '', 227, 'http://localhost/markwp/2020/05/04/227-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2020-05-04 07:30:11', '2020-05-04 07:30:11', '', 'Fun Factor', '', 'inherit', 'closed', 'closed', '', '228-revision-v1', '', '', '2020-05-04 07:30:11', '2020-05-04 07:30:11', '', 228, 'http://localhost/markwp/2020/05/04/228-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2020-05-04 07:30:42', '2020-05-04 07:30:42', '', 'CTA', '', 'inherit', 'closed', 'closed', '', '230-revision-v1', '', '', '2020-05-04 07:30:42', '2020-05-04 07:30:42', '', 230, 'http://localhost/markwp/2020/05/04/230-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2020-05-04 07:31:37', '2020-05-04 07:31:37', '', 'Team', '', 'inherit', 'closed', 'closed', '', '231-revision-v1', '', '', '2020-05-04 07:31:37', '2020-05-04 07:31:37', '', 231, 'http://localhost/markwp/2020/05/04/231-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(238, 1, '2020-05-04 07:35:16', '2020-05-04 07:35:16', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop-2', '', '', '2020-05-04 07:35:16', '2020-05-04 07:35:16', '', 0, 'http://localhost/markwp/?page_id=238', 0, 'page', '', 0),
(239, 1, '2020-05-04 07:35:27', '2020-05-04 07:35:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2020-05-04 07:35:27', '2020-05-04 07:35:27', '', 0, 'http://localhost/markwp/?page_id=239', 0, 'page', '', 0),
(240, 1, '2020-05-04 07:35:56', '2020-05-04 07:35:56', '', 'Subscription', '', 'publish', 'closed', 'closed', '', 'subscription', '', '', '2020-05-04 07:35:56', '2020-05-04 07:35:56', '', 0, 'http://localhost/markwp/?page_id=240', 0, 'page', '', 0),
(241, 1, '2020-05-04 07:35:43', '2020-05-04 07:35:43', '', 'Clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2020-05-04 07:35:43', '2020-05-04 07:35:43', '', 0, 'http://localhost/markwp/?page_id=241', 0, 'page', '', 0),
(242, 1, '2020-05-04 07:36:11', '2020-05-04 07:36:11', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-05-04 07:36:11', '2020-05-04 07:36:11', '', 0, 'http://localhost/markwp/?page_id=242', 0, 'page', '', 0),
(243, 1, '2020-05-04 07:32:32', '2020-05-04 07:32:32', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '232-revision-v1', '', '', '2020-05-04 07:32:32', '2020-05-04 07:32:32', '', 232, 'http://localhost/markwp/2020/05/04/232-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2020-05-04 07:32:55', '2020-05-04 07:32:55', '', 'Pricing plan', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2020-05-04 07:32:55', '2020-05-04 07:32:55', '', 233, 'http://localhost/markwp/2020/05/04/233-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2020-05-04 07:35:16', '2020-05-04 07:35:16', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2020-05-04 07:35:16', '2020-05-04 07:35:16', '', 238, 'http://localhost/markwp/2020/05/04/238-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2020-05-04 07:35:27', '2020-05-04 07:35:27', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2020-05-04 07:35:27', '2020-05-04 07:35:27', '', 239, 'http://localhost/markwp/2020/05/04/239-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2020-05-04 07:35:43', '2020-05-04 07:35:43', '', 'Clients', '', 'inherit', 'closed', 'closed', '', '241-revision-v1', '', '', '2020-05-04 07:35:43', '2020-05-04 07:35:43', '', 241, 'http://localhost/markwp/2020/05/04/241-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2020-05-04 07:35:56', '2020-05-04 07:35:56', '', 'Subscription', '', 'inherit', 'closed', 'closed', '', '240-revision-v1', '', '', '2020-05-04 07:35:56', '2020-05-04 07:35:56', '', 240, 'http://localhost/markwp/2020/05/04/240-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2020-05-04 07:36:11', '2020-05-04 07:36:11', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2020-05-04 07:36:11', '2020-05-04 07:36:11', '', 242, 'http://localhost/markwp/2020/05/04/242-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2020-05-04 08:25:55', '2020-05-04 08:25:55', ' ', '', '', 'publish', 'closed', 'closed', '', '265', '', '', '2020-05-04 08:25:55', '2020-05-04 08:25:55', '', 0, 'http://localhost/markwp/?p=265', 1, 'nav_menu_item', '', 0),
(266, 1, '2020-05-04 08:25:55', '2020-05-04 08:25:55', ' ', '', '', 'publish', 'closed', 'closed', '', '266', '', '', '2020-05-04 08:25:55', '2020-05-04 08:25:55', '', 0, 'http://localhost/markwp/?p=266', 2, 'nav_menu_item', '', 0),
(267, 1, '2020-05-04 08:25:56', '2020-05-04 08:25:56', ' ', '', '', 'publish', 'closed', 'closed', '', '267', '', '', '2020-05-04 08:25:56', '2020-05-04 08:25:56', '', 0, 'http://localhost/markwp/?p=267', 3, 'nav_menu_item', '', 0),
(268, 1, '2020-05-04 08:25:56', '2020-05-04 08:25:56', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2020-05-04 08:25:56', '2020-05-04 08:25:56', '', 0, 'http://localhost/markwp/?p=268', 4, 'nav_menu_item', '', 0),
(269, 1, '2020-05-04 08:25:56', '2020-05-04 08:25:56', ' ', '', '', 'publish', 'closed', 'closed', '', '269', '', '', '2020-05-04 08:25:56', '2020-05-04 08:25:56', '', 0, 'http://localhost/markwp/?p=269', 5, 'nav_menu_item', '', 0),
(270, 1, '2020-05-04 08:25:57', '2020-05-04 08:25:57', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2020-05-04 08:25:57', '2020-05-04 08:25:57', '', 0, 'http://localhost/markwp/?p=270', 6, 'nav_menu_item', '', 0),
(271, 1, '2020-05-04 08:25:57', '2020-05-04 08:25:57', ' ', '', '', 'publish', 'closed', 'closed', '', '271', '', '', '2020-05-04 08:25:57', '2020-05-04 08:25:57', '', 0, 'http://localhost/markwp/?p=271', 7, 'nav_menu_item', '', 0),
(272, 1, '2020-05-04 08:25:58', '2020-05-04 08:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '272', '', '', '2020-05-04 08:25:58', '2020-05-04 08:25:58', '', 0, 'http://localhost/markwp/?p=272', 8, 'nav_menu_item', '', 0),
(273, 1, '2020-05-04 08:25:58', '2020-05-04 08:25:58', ' ', '', '', 'publish', 'closed', 'closed', '', '273', '', '', '2020-05-04 08:25:58', '2020-05-04 08:25:58', '', 0, 'http://localhost/markwp/?p=273', 9, 'nav_menu_item', '', 0),
(274, 1, '2020-05-04 08:25:59', '2020-05-04 08:25:59', ' ', '', '', 'publish', 'closed', 'closed', '', '274', '', '', '2020-05-04 08:25:59', '2020-05-04 08:25:59', '', 0, 'http://localhost/markwp/?p=274', 10, 'nav_menu_item', '', 0),
(275, 1, '2020-05-04 08:25:59', '2020-05-04 08:25:59', ' ', '', '', 'publish', 'closed', 'closed', '', '275', '', '', '2020-05-04 08:25:59', '2020-05-04 08:25:59', '', 0, 'http://localhost/markwp/?p=275', 11, 'nav_menu_item', '', 0),
(276, 1, '2020-05-04 08:25:59', '2020-05-04 08:25:59', ' ', '', '', 'publish', 'closed', 'closed', '', '276', '', '', '2020-05-04 08:25:59', '2020-05-04 08:25:59', '', 0, 'http://localhost/markwp/?p=276', 12, 'nav_menu_item', '', 0),
(277, 1, '2020-05-04 08:26:00', '2020-05-04 08:26:00', ' ', '', '', 'publish', 'closed', 'closed', '', '277', '', '', '2020-05-04 08:26:00', '2020-05-04 08:26:00', '', 0, 'http://localhost/markwp/?p=277', 13, 'nav_menu_item', '', 0),
(278, 1, '2020-05-04 08:26:00', '2020-05-04 08:26:00', ' ', '', '', 'publish', 'closed', 'closed', '', '278', '', '', '2020-05-04 08:26:00', '2020-05-04 08:26:00', '', 0, 'http://localhost/markwp/?p=278', 14, 'nav_menu_item', '', 0),
(279, 1, '2020-05-04 08:26:00', '2020-05-04 08:26:00', ' ', '', '', 'publish', 'closed', 'closed', '', '279', '', '', '2020-05-04 08:26:00', '2020-05-04 08:26:00', '', 0, 'http://localhost/markwp/?p=279', 15, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '2'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 20, 'order', '0'),
(7, 21, 'order', '0'),
(8, 17, 'product_count_product_cat', '1'),
(9, 16, 'product_count_product_cat', '2'),
(10, 22, 'order_pa_color', '0'),
(11, 23, 'order_pa_color', '0'),
(12, 24, 'order_pa_color', '0'),
(13, 25, 'order_pa_size', '0'),
(14, 26, 'order_pa_size', '0'),
(15, 27, 'order_pa_size', '0'),
(16, 18, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Music', 'music', 0),
(21, 'Decor', 'decor', 0),
(22, 'Blue', 'blue', 0),
(23, 'Green', 'green', 0),
(24, 'Red', 'red', 0),
(25, 'Large', 'large', 0),
(26, 'Medium', 'medium', 0),
(27, 'Small', 'small', 0),
(28, 'Something', 'some', 0),
(29, 'Tag2', 'tag2', 0),
(30, 'Tag3', 'tag3', 0),
(31, 'Tag4', 'tag4', 0),
(32, 'Tag5', 'tag5', 0),
(33, 'Footer Menu', 'footer-menu', 0),
(34, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(97, 4, 0),
(97, 8, 0),
(97, 9, 0),
(97, 17, 0),
(97, 22, 0),
(97, 23, 0),
(97, 24, 0),
(97, 25, 0),
(97, 26, 0),
(97, 27, 0),
(98, 2, 0),
(98, 18, 0),
(98, 22, 0),
(98, 23, 0),
(98, 24, 0),
(139, 2, 0),
(139, 15, 0),
(140, 2, 0),
(140, 15, 0),
(141, 2, 0),
(141, 15, 0),
(142, 2, 0),
(142, 15, 0),
(143, 2, 0),
(143, 15, 0),
(144, 2, 0),
(144, 15, 0),
(145, 2, 0),
(145, 15, 0),
(189, 1, 0),
(189, 28, 0),
(189, 29, 0),
(189, 30, 0),
(189, 31, 0),
(189, 32, 0),
(191, 1, 0),
(191, 28, 0),
(191, 29, 0),
(191, 30, 0),
(191, 31, 0),
(191, 32, 0),
(201, 33, 0),
(202, 33, 0),
(203, 33, 0),
(204, 33, 0),
(205, 33, 0),
(206, 33, 0),
(265, 34, 0),
(266, 34, 0),
(267, 34, 0),
(268, 34, 0),
(269, 34, 0),
(270, 34, 0),
(271, 34, 0),
(272, 34, 0),
(273, 34, 0),
(274, 34, 0),
(275, 34, 0),
(276, 34, 0),
(277, 34, 0),
(278, 34, 0),
(279, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 1),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 1),
(18, 18, 'product_cat', '', 16, 1),
(19, 19, 'product_cat', '', 16, 0),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'pa_color', '', 0, 2),
(23, 23, 'pa_color', '', 0, 2),
(24, 24, 'pa_color', '', 0, 2),
(25, 25, 'pa_size', '', 0, 1),
(26, 26, 'pa_size', '', 0, 1),
(27, 27, 'pa_size', '', 0, 1),
(28, 28, 'post_tag', 'dfdfjdkfjds', 0, 3),
(29, 29, 'post_tag', '', 0, 3),
(30, 30, 'post_tag', '', 0, 3),
(31, 31, 'post_tag', '', 0, 3),
(32, 32, 'post_tag', '', 0, 3),
(33, 33, 'nav_menu', '', 0, 6),
(34, 34, 'nav_menu', '', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'markwp'),
(2, 1, 'first_name', 'Rayhan Uddin'),
(3, 1, 'last_name', 'Chowdhury'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"792a9021023c4e014eb0196a403e8710f08f1898e0c72e659ee1ed3623941eae\";a:4:{s:10:\"expiration\";i:1609565839;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1609393039;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '280'),
(18, 1, 'closedpostboxes_section', 'a:0:{}'),
(19, 1, 'metaboxhidden_section', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 1, 'meta-box-order_section', 'a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_section', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1588423804'),
(24, 1, 'wc_last_active', '1609372800'),
(26, 1, '_woocommerce_tracks_anon_id', 'woo:gV5iF5PmlwGVg0yMm/bYUn1f'),
(27, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(28, 1, '_order_count', '0'),
(30, 1, 'wp_product_import_error_log', 'a:23:{i:0;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:99;s:3:\"sku\";s:20:\"woo-hoodie-with-logo\";s:3:\"row\";s:49:\"Hoodie with Logo, ID 99, SKU woo-hoodie-with-logo\";}}}i:1;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:100;s:3:\"sku\";s:10:\"woo-tshirt\";s:3:\"row\";s:31:\"T-Shirt, ID 100, SKU woo-tshirt\";}}}i:2;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:101;s:3:\"sku\";s:10:\"woo-beanie\";s:3:\"row\";s:30:\"Beanie, ID 101, SKU woo-beanie\";}}}i:3;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:102;s:3:\"sku\";s:8:\"woo-belt\";s:3:\"row\";s:26:\"Belt, ID 102, SKU woo-belt\";}}}i:4;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:103;s:3:\"sku\";s:7:\"woo-cap\";s:3:\"row\";s:24:\"Cap, ID 103, SKU woo-cap\";}}}i:5;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:104;s:3:\"sku\";s:14:\"woo-sunglasses\";s:3:\"row\";s:38:\"Sunglasses, ID 104, SKU woo-sunglasses\";}}}i:6;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:105;s:3:\"sku\";s:22:\"woo-hoodie-with-pocket\";s:3:\"row\";s:54:\"Hoodie with Pocket, ID 105, SKU woo-hoodie-with-pocket\";}}}i:7;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:106;s:3:\"sku\";s:22:\"woo-hoodie-with-zipper\";s:3:\"row\";s:54:\"Hoodie with Zipper, ID 106, SKU woo-hoodie-with-zipper\";}}}i:8;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:108;s:3:\"sku\";s:19:\"woo-long-sleeve-tee\";s:3:\"row\";s:48:\"Long Sleeve Tee, ID 108, SKU woo-long-sleeve-tee\";}}}i:9;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:109;s:3:\"sku\";s:8:\"woo-polo\";s:3:\"row\";s:26:\"Polo, ID 109, SKU woo-polo\";}}}i:10;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:110;s:3:\"sku\";s:9:\"woo-album\";s:3:\"row\";s:28:\"Album, ID 110, SKU woo-album\";}}}i:11;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:111;s:3:\"sku\";s:10:\"woo-single\";s:3:\"row\";s:30:\"Single, ID 111, SKU woo-single\";}}}i:12;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:112;s:3:\"sku\";s:17:\"woo-vneck-tee-red\";s:3:\"row\";s:51:\"V-Neck T-Shirt - Red, ID 112, SKU woo-vneck-tee-red\";}}}i:13;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:113;s:3:\"sku\";s:19:\"woo-vneck-tee-green\";s:3:\"row\";s:55:\"V-Neck T-Shirt - Green, ID 113, SKU woo-vneck-tee-green\";}}}i:14;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:114;s:3:\"sku\";s:18:\"woo-vneck-tee-blue\";s:3:\"row\";s:53:\"V-Neck T-Shirt - Blue, ID 114, SKU woo-vneck-tee-blue\";}}}i:15;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:115;s:3:\"sku\";s:14:\"woo-hoodie-red\";s:3:\"row\";s:44:\"Hoodie - Red, No, ID 115, SKU woo-hoodie-red\";}}}i:16;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:116;s:3:\"sku\";s:16:\"woo-hoodie-green\";s:3:\"row\";s:48:\"Hoodie - Green, No, ID 116, SKU woo-hoodie-green\";}}}i:17;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:81;s:3:\"sku\";s:15:\"woo-hoodie-blue\";s:3:\"row\";s:45:\"Hoodie - Blue, No, ID 81, SKU woo-hoodie-blue\";}}}i:18;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:119;s:3:\"sku\";s:15:\"Woo-tshirt-logo\";s:3:\"row\";s:46:\"T-Shirt with Logo, ID 119, SKU Woo-tshirt-logo\";}}}i:19;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:120;s:3:\"sku\";s:15:\"Woo-beanie-logo\";s:3:\"row\";s:45:\"Beanie with Logo, ID 120, SKU Woo-beanie-logo\";}}}i:20;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:121;s:3:\"sku\";s:15:\"logo-collection\";s:3:\"row\";s:44:\"Logo Collection, ID 121, SKU logo-collection\";}}}i:21;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:122;s:3:\"sku\";s:10:\"wp-pennant\";s:3:\"row\";s:41:\"WordPress Pennant, ID 122, SKU wp-pennant\";}}}i:22;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:123;s:3:\"sku\";s:20:\"woo-hoodie-blue-logo\";s:3:\"row\";s:52:\"Hoodie - Blue, Yes, ID 123, SKU woo-hoodie-blue-logo\";}}}}'),
(31, 1, 'closedpostboxes_product', 'a:0:{}'),
(32, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(34, 1, 'billing_first_name', 'Rayhan Uddin'),
(35, 1, 'billing_last_name', 'Chowdhury'),
(36, 1, 'billing_company', ''),
(37, 1, 'billing_address_1', ''),
(38, 1, 'billing_address_2', ''),
(39, 1, 'billing_city', ''),
(40, 1, 'billing_postcode', ''),
(41, 1, 'billing_country', ''),
(42, 1, 'billing_state', ''),
(43, 1, 'billing_phone', ''),
(44, 1, 'billing_email', 'rayhanctg4@gmail.com'),
(45, 1, 'shipping_first_name', ''),
(46, 1, 'shipping_last_name', ''),
(47, 1, 'shipping_company', ''),
(48, 1, 'shipping_address_1', ''),
(49, 1, 'shipping_address_2', ''),
(50, 1, 'shipping_city', ''),
(51, 1, 'shipping_postcode', ''),
(52, 1, 'shipping_country', ''),
(53, 1, 'shipping_state', ''),
(54, 1, 'last_update', '1588075457'),
(57, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(58, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(59, 1, 'nav_menu_recently_edited', '34'),
(60, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(62, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'markwp', '$P$BWO0fXUV/DfPf32YB2fepXLlpLm3fS/', 'markwp', 'rayhanctg4@gmail.com', 'http://localhost/markwp', '2020-04-02 04:55:19', '', 0, 'Rayhan Uddin Chowdhury');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-27 09:27:48', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-27 09:27:48', NULL, 0),
(3, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-04-27 09:45:23', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(2, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'continue-profiler', 'Continue Store Setup', 'http://localhost/markwp/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(4, 3, 'skip-profiler', 'Skip Setup', 'http://localhost/markwp/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(97, 'woo-vneck-tee', 0, 0, '0.0000', '0.0000', 0, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(98, 'woo-hoodie', 0, 0, '580.0000', '580.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, 'woo-hoodie-with-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(100, 'woo-tshirt', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, 'woo-beanie', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(102, 'woo-belt', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(103, 'woo-cap', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(104, 'woo-sunglasses', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(105, 'woo-hoodie-with-pocket', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(106, 'woo-hoodie-with-zipper', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(108, 'woo-long-sleeve-tee', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(109, 'woo-polo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(110, 'woo-album', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(111, 'woo-single', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(112, 'woo-vneck-tee-red', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(113, 'woo-vneck-tee-green', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(114, 'woo-vneck-tee-blue', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(115, 'woo-hoodie-red', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(116, 'woo-hoodie-green', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(117, 'woo-hoodie-blue', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(119, 'Woo-tshirt-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(120, 'Woo-beanie-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(121, 'logo-collection', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(122, 'wp-pennant', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(123, 'woo-hoodie-blue-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(139, 'woo-hoodie-with-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(140, 'woo-tshirt', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(141, 'woo-beanie', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(142, 'woo-belt', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(143, 'woo-cap', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(144, '', 0, 0, '83.0000', '83.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(145, '', 0, 0, '70.0000', '70.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6733;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3167;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
