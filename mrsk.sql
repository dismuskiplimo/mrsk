-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 10:36 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrsk`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-10 07:28:42', '2018-04-10 07:28:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ddownload_statistics`
--

CREATE TABLE `wp_ddownload_statistics` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'success',
  `date` datetime NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varbinary(16) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_ddownload_statistics`
--

INSERT INTO `wp_ddownload_statistics` (`ID`, `status`, `date`, `post_id`, `user_id`, `user_ip`, `user_agent`) VALUES
(1, 'success', '2018-04-10 13:39:00', 84, 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider`
--

CREATE TABLE `wp_layerslider` (
  `id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(10) NOT NULL,
  `schedule_start` int(10) NOT NULL DEFAULT '0',
  `schedule_end` int(10) NOT NULL DEFAULT '0',
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_layerslider`
--

INSERT INTO `wp_layerslider` (`id`, `author`, `name`, `slug`, `data`, `date_c`, `date_m`, `schedule_start`, `schedule_end`, `flag_hidden`, `flag_deleted`) VALUES
(1, 1, 'Homepage Slider', '', '{\"properties\":{\"title\":\"Homepage Slider\",\"slug\":\"\",\"sliderVersion\":\"6.3.0\",\"status\":true,\"schedule_start\":\"\",\"schedule_end\":\"\",\"type\":\"fullwidth\",\"width\":1280,\"height\":720,\"maxwidth\":\"\",\"responsiveunder\":\"\",\"fullSizeMode\":\"normal\",\"fitScreenWidth\":true,\"allowFullscreen\":true,\"maxRatio\":\"\",\"insertMethod\":\"prependTo\",\"insertSelector\":\"\",\"clipSlideTransition\":\"disabled\",\"preventSliderClip\":true,\"hideunder\":\"\",\"hideover\":\"\",\"slideOnSwipe\":true,\"optimizeForMobile\":true,\"firstlayer\":\"1\",\"autostart\":true,\"startinviewport\":true,\"pauseonhover\":\"enabled\",\"keybnav\":true,\"touchnav\":true,\"playByScrollSpeed\":\"1\",\"loops\":\"0\",\"forceloopnum\":true,\"skin\":\"v6\",\"sliderfadeinduration\":\"350\",\"sliderstyle\":\"margin-top: -50px;\",\"backgroundcolor\":\"\",\"backgroundimageId\":\"\",\"backgroundimage\":\"\",\"globalBGRepeat\":\"no-repeat\",\"globalBGAttachment\":\"scroll\",\"globalBGPosition\":\"50% 50%\",\"globalBGSize\":\"cover\",\"navprevnext\":true,\"navstartstop\":true,\"navbuttons\":true,\"hoverprevnext\":true,\"circletimer\":true,\"thumb_nav\":\"hover\",\"thumb_container_width\":\"60%\",\"thumb_width\":\"100\",\"thumb_height\":\"60\",\"thumb_active_opacity\":\"35\",\"thumb_inactive_opacity\":\"100\",\"autoplayvideos\":true,\"autopauseslideshow\":\"auto\",\"youtubepreview\":\"maxresdefault.jpg\",\"yourlogoId\":\"\",\"yourlogo\":\"\",\"yourlogostyle\":\"left: -10px; top: -10px;\",\"yourlogolink\":\"\",\"yourlogotarget\":\"_self\",\"slideBGSize\":\"cover\",\"slideBGPosition\":\"50% 50%\",\"parallaxSensitivity\":\"10\",\"parallaxCenterLayers\":\"center\",\"parallaxCenterDegree\":\"40\",\"forceLayersOutDuration\":\"750\",\"useSrcset\":true,\"previewId\":\"\",\"preview\":\"\",\"cbinit\":\"function(element) {\\r\\n\\r\\n}\",\"cbstart\":\"function(data) {\\r\\n\\r\\n}\",\"cbstop\":\"function(data) {\\r\\n\\r\\n}\",\"cbpause\":\"function(data) {\\r\\n\\r\\n}\",\"cbanimstart\":\"function(data) {\\r\\n\\r\\n}\",\"cbanimstop\":\"function(data) {\\r\\n\\r\\n}\",\"cbprev\":\"function(data) {\\r\\n\\r\\n}\",\"cbnext\":\"function(data) {\\r\\n\\r\\n}\"},\"layers\":[{\"properties\":{\"post_offset\":\"-1\",\"3d_transitions\":\"\",\"2d_transitions\":\"\",\"custom_3d_transitions\":\"\",\"custom_2d_transitions\":\"\",\"backgroundId\":43,\"background\":\"http:\\/\\/localhost\\/mrsk\\/wp-content\\/uploads\\/2018\\/04\\/CMMS-Workshop-MMUST.jpg\",\"bgsize\":\"cover\",\"bgposition\":\"50% 50%\",\"bgcolor\":\"\",\"thumbnailId\":\"\",\"thumbnail\":\"\",\"slidedelay\":\"\",\"timeshift\":\"0\",\"transitionduration\":\"\",\"layer_link\":\"\",\"layer_link_target\":\"_self\",\"layer_link_type\":\"over\",\"deeplink\":\"\",\"skip\":false,\"overflow\":false,\"kenburnszoom\":\"disabled\",\"kenburnsscale\":\"1.2\",\"kenburnsrotate\":\"\",\"parallaxtype\":\"2d\",\"parallaxevent\":\"cursor\",\"parallaxaxis\":\"both\",\"parallaxtransformorigin\":\"50% 50% 0\",\"parallaxdurationmove\":\"1500\",\"parallaxdurationleave\":\"1200\",\"parallaxdistance\":\"10\",\"parallaxrotate\":\"10\",\"parallaxtransformperspective\":\"500\",\"backgroundThumb\":\"http:\\/\\/localhost\\/mrsk\\/wp-content\\/uploads\\/2018\\/04\\/CMMS-Workshop-MMUST-150x150.jpg\",\"post_content\":false},\"sublayers\":[{\"transition\":\"{\\\\\\\"backgroundvideo\\\\\\\":false,\\\\\\\"autoplay\\\\\\\":\\\\\\\"inherit\\\\\\\",\\\\\\\"fillmode\\\\\\\":\\\\\\\"cover\\\\\\\",\\\\\\\"volume\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"controls\\\\\\\":true,\\\\\\\"showinfo\\\\\\\":true,\\\\\\\"overlay\\\\\\\":\\\\\\\"disabled\\\\\\\",\\\\\\\"transitionin\\\\\\\":true,\\\\\\\"offsetxin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"offsetyin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"scalexin\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"scaleyin\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"widthin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"heightin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"rotatein\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"rotatexin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"rotateyin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewxin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewyin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"clipin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"delayin\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"durationin\\\\\\\":\\\\\\\"1000\\\\\\\",\\\\\\\"easingin\\\\\\\":\\\\\\\"easeInOutQuint\\\\\\\",\\\\\\\"transformoriginin\\\\\\\":\\\\\\\"50% 50% 0\\\\\\\",\\\\\\\"transformperspectivein\\\\\\\":\\\\\\\"500\\\\\\\",\\\\\\\"fadein\\\\\\\":true,\\\\\\\"colorin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"bgcolorin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"radiusin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"filterin\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"transitionout\\\\\\\":true,\\\\\\\"offsetxout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"offsetyout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"scalexout\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"scaleyout\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"widthout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"heightout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"rotateout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"rotatexout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"rotateyout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewxout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewyout\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"clipout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"startatout\\\\\\\":\\\\\\\"slidechangeonly\\\\\\\",\\\\\\\"startatouttiming\\\\\\\":\\\\\\\"slidechangeonly\\\\\\\",\\\\\\\"startatoutoperator\\\\\\\":\\\\\\\"+\\\\\\\",\\\\\\\"startatoutvalue\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"durationout\\\\\\\":\\\\\\\"1000\\\\\\\",\\\\\\\"easingout\\\\\\\":\\\\\\\"easeInOutQuint\\\\\\\",\\\\\\\"transformoriginout\\\\\\\":\\\\\\\"50% 50% 0\\\\\\\",\\\\\\\"transformperspectiveout\\\\\\\":\\\\\\\"500\\\\\\\",\\\\\\\"fadeout\\\\\\\":true,\\\\\\\"colorout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"bgcolorout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"radiusout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"filterout\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"position\\\\\\\":\\\\\\\"relative\\\\\\\",\\\\\\\"rotation\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"scaleX\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"rotationX\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"scaleY\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"rotationY\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewX\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"skewY\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"minfontsize\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"minmobilefontsize\\\\\\\":\\\\\\\"\\\\\\\"}\",\"styles\":\"{\\\\\\\"top\\\\\\\":\\\\\\\"10px\\\\\\\",\\\\\\\"left\\\\\\\":\\\\\\\"10px\\\\\\\",\\\\\\\"text-align\\\\\\\":\\\\\\\"initial\\\\\\\",\\\\\\\"font-weight\\\\\\\":\\\\\\\"400\\\\\\\",\\\\\\\"font-style\\\\\\\":\\\\\\\"normal\\\\\\\",\\\\\\\"text-decoration\\\\\\\":\\\\\\\"none\\\\\\\",\\\\\\\"wordwrap\\\\\\\":false,\\\\\\\"opacity\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"mix-blend-mode\\\\\\\":\\\\\\\"normal\\\\\\\"}\",\"media\":\"img\",\"type\":\"p\",\"imageId\":\"\",\"image\":\"\",\"html\":\"\",\"posterId\":\"\",\"poster\":\"\",\"post_text_length\":\"\",\"url\":\"\",\"target\":\"_self\",\"id\":\"\",\"class\":\"\",\"title\":\"\",\"alt\":\"\",\"rel\":\"\",\"style\":\"\",\"subtitle\":\"Layer #1\",\"hasTransforms\":false,\"meta\":[],\"innerAttributes\":[],\"outerAttributes\":[],\"locked\":false}],\"meta\":{\"activeLayers\":[0],\"undoStackIndex\":2},\"history\":[{\"cmd\":\"slide.general\",\"name\":\"Slide settings\",\"updateInfo\":{\"itemIndex\":0,\"undo\":{\"bgsize\":\"inherit\"},\"redo\":{\"bgsize\":\"cover\"}}},{\"cmd\":\"slide.general\",\"name\":\"Slide settings\",\"updateInfo\":{\"itemIndex\":0,\"undo\":{\"bgposition\":\"inherit\"},\"redo\":{\"bgposition\":\"50% 50%\"}}},{\"cmd\":\"slide.general\",\"name\":\"Slide image\",\"updateInfo\":{\"itemIndex\":0,\"undo\":{\"background\":\"\",\"backgroundId\":\"\",\"backgroundThumb\":\"\"},\"redo\":{\"background\":\"http:\\/\\/localhost\\/mrsk\\/wp-content\\/uploads\\/2018\\/04\\/CMMS-Workshop-MMUST.jpg\",\"backgroundId\":43,\"backgroundThumb\":\"http:\\/\\/localhost\\/mrsk\\/wp-content\\/uploads\\/2018\\/04\\/CMMS-Workshop-MMUST.jpg\"}}}]}]}', 1523352122, 1523352610, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider_revisions`
--

CREATE TABLE `wp_layerslider_revisions` (
  `id` int(10) NOT NULL,
  `slider_id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_c` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'siteurl', 'http://localhost/mrsk', 'yes'),
(2, 'home', 'http://localhost/mrsk', 'yes'),
(3, 'blogname', 'The Materials Research Society of Kenya', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dismuskiplimo@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:232:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:57:\"slider-locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?slider-locations=$matches[1]&feed=$matches[2]\";s:52:\"slider-locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?slider-locations=$matches[1]&feed=$matches[2]\";s:33:\"slider-locations/([^/]+)/embed/?$\";s:49:\"index.php?slider-locations=$matches[1]&embed=true\";s:45:\"slider-locations/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?slider-locations=$matches[1]&paged=$matches[2]\";s:27:\"slider-locations/([^/]+)/?$\";s:38:\"index.php?slider-locations=$matches[1]\";s:53:\"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project-type=$matches[1]&feed=$matches[2]\";s:48:\"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project-type=$matches[1]&feed=$matches[2]\";s:29:\"project-type/([^/]+)/embed/?$\";s:45:\"index.php?project-type=$matches[1]&embed=true\";s:41:\"project-type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?project-type=$matches[1]&paged=$matches[2]\";s:23:\"project-type/([^/]+)/?$\";s:34:\"index.php?project-type=$matches[1]\";s:59:\"project-attributes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?project-attributes=$matches[1]&feed=$matches[2]\";s:54:\"project-attributes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?project-attributes=$matches[1]&feed=$matches[2]\";s:35:\"project-attributes/([^/]+)/embed/?$\";s:51:\"index.php?project-attributes=$matches[1]&embed=true\";s:47:\"project-attributes/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?project-attributes=$matches[1]&paged=$matches[2]\";s:29:\"project-attributes/([^/]+)/?$\";s:40:\"index.php?project-attributes=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"home_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_slider/([^/]+)/embed/?$\";s:44:\"index.php?home_slider=$matches[1]&embed=true\";s:32:\"home_slider/([^/]+)/trackback/?$\";s:38:\"index.php?home_slider=$matches[1]&tb=1\";s:40:\"home_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&paged=$matches[2]\";s:47:\"home_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home_slider=$matches[1]&cpage=$matches[2]\";s:36:\"home_slider/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home_slider=$matches[1]&page=$matches[2]\";s:28:\"home_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"nectar_slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"nectar_slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"nectar_slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"nectar_slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"nectar_slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"nectar_slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"nectar_slider/([^/]+)/embed/?$\";s:46:\"index.php?nectar_slider=$matches[1]&embed=true\";s:34:\"nectar_slider/([^/]+)/trackback/?$\";s:40:\"index.php?nectar_slider=$matches[1]&tb=1\";s:42:\"nectar_slider/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?nectar_slider=$matches[1]&paged=$matches[2]\";s:49:\"nectar_slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?nectar_slider=$matches[1]&cpage=$matches[2]\";s:38:\"nectar_slider/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?nectar_slider=$matches[1]&page=$matches[2]\";s:30:\"nectar_slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"nectar_slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"nectar_slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"nectar_slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"nectar_slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"nectar_slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:37:\"home_slider/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?home_slider=$matches[1]&wc-api=$matches[3]\";s:43:\"home_slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"home_slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:39:\"nectar_slider/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?nectar_slider=$matches[1]&wc-api=$matches[3]\";s:45:\"nectar_slider/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"nectar_slider/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:35:\"portfolio/([^/]+)/wc-api(/(.*))?/?$\";s:50:\"index.php?portfolio=$matches[1]&wc-api=$matches[3]\";s:41:\"portfolio/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"portfolio/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:27:\"LayerSlider/layerslider.php\";i:2;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:45:\"delightful-downloads/delightful-downloads.php\";i:5;s:35:\"js_composer_salient/js_composer.php\";i:6;s:53:\"lightweight-social-icons/lightweight-social-icons.php\";i:7;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:8;s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";i:9;s:29:\"social-icons/social-icons.php\";i:10;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'salient', 'yes'),
(41, 'stylesheet', 'salient', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(79, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:10:\"CONTACT US\";s:4:\"text\";s:155:\"Multimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi\r\n\r\n<a href=\"mailto:webmaster@mrsk.or.ke\">webmaster@mrsk.or.ke</a>\r\n\r\n&nbsp;\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:12:\"USEFUL LINKS\";s:4:\"text\";s:265:\"<a href=\"https://www.iumrshq.org/National\">International Union of Materials Research Societies </a>\r\n\r\n<a href=\"http://www.nacosti.go.ke\">Commission for Science Technology and Innovation (NACOSTI)</a>\r\n\r\n<a href=\"http://www.kenet.or.ke\">Kenya Education Network</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:5:\"LINKS\";s:4:\"text\";s:221:\"<a href=\"http://localhost/mrsk/\">Home</a>\r\n\r\n<a href=\"http://localhost/mrsk/about-us/\">About Us</a>\r\n\r\n<a href=\"http://localhost/mrsk/contact-us/\">Contact Us</a>\r\n\r\n<a href=\"http://localhost/mrsk/downloads/\">Downloads</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"LayerSlider/layerslider.php\";s:29:\"layerslider_uninstall_scripts\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '14', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '34', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"page-sidebar\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}s:13:\"footer-area-1\";a:1:{i:0;s:6:\"text-2\";}s:13:\"footer-area-2\";a:1:{i:0;s:6:\"text-4\";}s:13:\"footer-area-3\";a:1:{i:0;s:6:\"text-3\";}s:13:\"footer-area-4\";a:1:{i:0;s:26:\"zoom-social-icons-widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:13:{i:1523474922;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523481233;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523491200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523518144;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523518754;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523523953;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523524433;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523539911;a:1:{s:15:\"dedo_cron_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523971911;a:1:{s:16:\"dedo_cron_weekly\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1525132800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}i:1548498985;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1548530922;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523349066;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, '_site_transient_timeout_browser_5745ee6112ac292f8b72fc01594d872e', '1523950145', 'no'),
(121, '_site_transient_browser_5745ee6112ac292f8b72fc01594d872e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"59.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(137, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(139, '_transient_timeout_plugin_slugs', '1523457753', 'no'),
(140, '_transient_plugin_slugs', 'a:14:{i:0;s:19:\"akismet/akismet.php\";i:1;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:45:\"delightful-downloads/delightful-downloads.php\";i:4;s:29:\"gravityforms/gravityforms.php\";i:5;s:9:\"hello.php\";i:6;s:27:\"LayerSlider/layerslider.php\";i:7;s:53:\"lightweight-social-icons/lightweight-social-icons.php\";i:8;s:35:\"js_composer_salient/js_composer.php\";i:9;s:45:\"search-and-replace/inpsyde-search-replace.php\";i:10;s:29:\"social-icons/social-icons.php\";i:11;s:63:\"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php\";i:12;s:27:\"woocommerce/woocommerce.php\";i:13;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'widget_black-studio-tinymce', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'current_theme', 'Salient', 'yes'),
(154, 'theme_mods_salient', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"top_nav\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(156, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(157, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"630\";s:4:\"crop\";i:1;}', 'yes'),
(158, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"130\";s:4:\"crop\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(159, 'salient_redux', 'a:349:{s:8:\"last_tab\";s:1:\"1\";s:10:\"theme-skin\";s:6:\"ascend\";s:7:\"favicon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:14:\"button-styling\";s:16:\"slightly_rounded\";s:16:\"theme-icon-style\";s:7:\"minimal\";s:16:\"overall-bg-color\";s:7:\"#ffffff\";s:18:\"overall-font-color\";s:0:\"\";s:11:\"body-border\";s:1:\"0\";s:17:\"body-border-color\";s:7:\"#ffffff\";s:16:\"body-border-size\";s:0:\"\";s:11:\"back-to-top\";s:1:\"1\";s:18:\"back-to-top-mobile\";s:1:\"0\";s:16:\"smooth-scrolling\";s:1:\"0\";s:18:\"one-page-scrolling\";s:1:\"1\";s:10:\"responsive\";s:1:\"1\";s:14:\"ext_responsive\";s:1:\"1\";s:19:\"max_container_width\";s:4:\"1425\";s:15:\"lightbox_script\";s:8:\"magnific\";s:16:\"default-lightbox\";s:1:\"0\";s:23:\"column_animation_easing\";s:12:\"easeOutCubic\";s:23:\"column_animation_timing\";s:3:\"750\";s:20:\"external-dynamic-css\";s:1:\"0\";s:16:\"google-analytics\";s:0:\"\";s:19:\"google-maps-api-key\";s:39:\"AIzaSyBSP_Qb8ksJsCdZcggTbMS6ZEtRdfwB4KM\";s:10:\"custom-css\";s:0:\"\";s:11:\"disable_tgm\";s:1:\"0\";s:22:\"disable_home_slider_pt\";s:1:\"0\";s:24:\"disable_nectar_slider_pt\";s:1:\"0\";s:12:\"accent-color\";s:7:\"#3452ff\";s:13:\"extra-color-1\";s:7:\"#ff1053\";s:13:\"extra-color-2\";s:7:\"#2AC4EA\";s:13:\"extra-color-3\";s:7:\"#333333\";s:20:\"extra-color-gradient\";a:2:{s:4:\"from\";s:7:\"#3452ff\";s:2:\"to\";s:7:\"#ff1053\";}s:22:\"extra-color-gradient-2\";a:2:{s:4:\"from\";s:7:\"#2AC4EA\";s:2:\"to\";s:7:\"#32d6ff\";}s:12:\"boxed_layout\";s:1:\"0\";s:16:\"background-color\";s:7:\"#f1f1f1\";s:16:\"background_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:17:\"background-repeat\";s:0:\"\";s:19:\"background-position\";s:0:\"\";s:21:\"background-attachment\";s:0:\"\";s:16:\"background-cover\";s:1:\"0\";s:19:\"extended-theme-font\";s:1:\"0\";s:22:\"navigation_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:31:\"navigation_dropdown_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:24:\"page_heading_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:33:\"page_heading_subtitle_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:26:\"off_canvas_nav_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:34:\"off_canvas_nav_subtext_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:16:\"body_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h1_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h2_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h3_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h4_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h5_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:14:\"h6_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:13:\"i_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:17:\"label_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:33:\"nectar_slider_heading_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:31:\"home_slider_caption_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:23:\"testimonial_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:28:\"sidebar_footer_h_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:29:\"portfolio_filters_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:29:\"portfolio_caption_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:25:\"team_member_h_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:26:\"nectar_dropcap_font_family\";a:10:{s:11:\"font-family\";s:0:\"\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-weight\";s:0:\"\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:14:\"text-transform\";s:0:\"\";s:9:\"font-size\";s:0:\"\";s:11:\"line-height\";s:0:\"\";s:14:\"letter-spacing\";s:0:\"\";}s:8:\"use-logo\";s:1:\"1\";s:4:\"logo\";a:5:{s:3:\"url\";s:61:\"http://localhost/mrsk/wp-content/uploads/2018/04/Picture1.jpg\";s:2:\"id\";s:2:\"36\";s:6:\"height\";s:3:\"322\";s:5:\"width\";s:4:\"1146\";s:9:\"thumbnail\";s:69:\"http://localhost/mrsk/wp-content/uploads/2018/04/Picture1-150x150.jpg\";}s:11:\"retina-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:11:\"logo-height\";s:2:\"40\";s:18:\"mobile-logo-height\";s:2:\"34\";s:14:\"header-padding\";s:2:\"28\";s:19:\"header-remove-fixed\";s:1:\"0\";s:19:\"header-mobile-fixed\";s:1:\"1\";s:17:\"header-box-shadow\";s:5:\"small\";s:24:\"header-menu-item-spacing\";s:2:\"10\";s:17:\"header-bg-opacity\";s:3:\"100\";s:12:\"header-color\";s:5:\"light\";s:23:\"header-background-color\";s:7:\"#ffffff\";s:17:\"header-font-color\";s:7:\"#888888\";s:23:\"header-font-hover-color\";s:7:\"#27CCC0\";s:32:\"header-dropdown-background-color\";s:7:\"#1F1F1F\";s:38:\"header-dropdown-background-hover-color\";s:7:\"#313233\";s:26:\"header-dropdown-font-color\";s:7:\"#CCCCCC\";s:32:\"header-dropdown-font-hover-color\";s:7:\"#27CCC0\";s:34:\"header-dropdown-heading-font-color\";s:7:\"#ffffff\";s:22:\"header-separator-color\";s:7:\"#eeeeee\";s:33:\"secondary-header-background-color\";s:7:\"#F8F8F8\";s:27:\"secondary-header-font-color\";s:7:\"#666666\";s:33:\"secondary-header-font-hover-color\";s:7:\"#222222\";s:45:\"header-slide-out-widget-area-background-color\";s:7:\"#27CCC0\";s:41:\"header-slide-out-widget-area-header-color\";s:7:\"#ffffff\";s:34:\"header-slide-out-widget-area-color\";s:7:\"#eefbfa\";s:40:\"header-slide-out-widget-area-hover-color\";s:7:\"#ffffff\";s:13:\"header_format\";s:7:\"default\";s:16:\"header-fullwidth\";s:1:\"0\";s:21:\"header-disable-search\";s:1:\"0\";s:26:\"header-disable-ajax-search\";s:1:\"1\";s:13:\"header_layout\";s:8:\"standard\";s:23:\"enable_social_in_header\";s:1:\"0\";s:24:\"use-facebook-icon-header\";s:0:\"\";s:23:\"use-twitter-icon-header\";s:0:\"\";s:27:\"use-google-plus-icon-header\";s:0:\"\";s:21:\"use-vimeo-icon-header\";s:0:\"\";s:24:\"use-dribbble-icon-header\";s:0:\"\";s:25:\"use-pinterest-icon-header\";s:0:\"\";s:23:\"use-youtube-icon-header\";s:0:\"\";s:22:\"use-tumblr-icon-header\";s:0:\"\";s:24:\"use-linkedin-icon-header\";s:0:\"\";s:19:\"use-rss-icon-header\";s:0:\"\";s:23:\"use-behance-icon-header\";s:0:\"\";s:25:\"use-instagram-icon-header\";s:0:\"\";s:22:\"use-flickr-icon-header\";s:0:\"\";s:23:\"use-spotify-icon-header\";s:0:\"\";s:22:\"use-github-icon-header\";s:0:\"\";s:29:\"use-stackexchange-icon-header\";s:0:\"\";s:26:\"use-soundcloud-icon-header\";s:0:\"\";s:18:\"use-vk-icon-header\";s:0:\"\";s:20:\"use-vine-icon-header\";s:0:\"\";s:18:\"transparent-header\";s:1:\"0\";s:20:\"header-starting-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:27:\"header-starting-retina-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:25:\"header-starting-logo-dark\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:32:\"header-starting-retina-logo-dark\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:21:\"header-starting-color\";s:7:\"#ffffff\";s:29:\"header-transparent-dark-color\";s:7:\"#000000\";s:28:\"header-permanent-transparent\";s:1:\"0\";s:24:\"header-inherit-row-color\";s:1:\"0\";s:20:\"header-remove-border\";s:1:\"0\";s:19:\"header-hover-effect\";s:18:\"animated_underline\";s:24:\"header-hide-until-needed\";s:0:\"\";s:23:\"header-resize-on-scroll\";s:1:\"1\";s:34:\"header-resize-on-scroll-shrink-num\";s:0:\"\";s:21:\"header-dropdown-style\";s:7:\"classic\";s:23:\"header-dropdown-opacity\";s:3:\"100\";s:21:\"header-megamenu-width\";s:9:\"contained\";s:34:\"header-megamenu-remove-transparent\";s:1:\"0\";s:34:\"header-slide-out-widget-area-style\";s:20:\"slide-out-from-right\";s:28:\"header-slide-out-widget-area\";s:1:\"0\";s:43:\"header-slide-out-widget-area-icon-animation\";s:16:\"simple-transform\";s:35:\"header-slide-out-widget-area-social\";s:1:\"0\";s:40:\"header-slide-out-widget-area-bottom-text\";s:0:\"\";s:44:\"header-slide-out-widget-area-overlay-opacity\";s:4:\"dark\";s:46:\"header-slide-out-widget-area-top-nav-in-mobile\";s:1:\"0\";s:23:\"enable-main-footer-area\";s:1:\"1\";s:14:\"footer_columns\";s:1:\"4\";s:19:\"footer-custom-color\";s:1:\"0\";s:23:\"footer-background-color\";s:7:\"#313233\";s:17:\"footer-font-color\";s:7:\"#CCCCCC\";s:27:\"footer-secondary-font-color\";s:7:\"#777777\";s:33:\"footer-copyright-background-color\";s:7:\"#1F1F1F\";s:27:\"footer-copyright-font-color\";s:7:\"#777777\";s:33:\"footer-copyright-icon-hover-color\";s:7:\"#ffffff\";s:21:\"footer-copyright-line\";s:0:\"\";s:17:\"footer-full-width\";s:1:\"0\";s:13:\"footer-reveal\";s:1:\"0\";s:20:\"footer-reveal-shadow\";s:4:\"none\";s:29:\"disable-copyright-footer-area\";s:0:\"\";s:21:\"footer-copyright-text\";s:0:\"\";s:22:\"disable-auto-copyright\";s:0:\"\";s:23:\"footer-background-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:31:\"footer-background-image-overlay\";s:3:\"0.8\";s:17:\"use-facebook-icon\";s:0:\"\";s:16:\"use-twitter-icon\";s:0:\"\";s:20:\"use-google-plus-icon\";s:0:\"\";s:14:\"use-vimeo-icon\";s:0:\"\";s:17:\"use-dribbble-icon\";s:0:\"\";s:18:\"use-pinterest-icon\";s:0:\"\";s:16:\"use-youtube-icon\";s:0:\"\";s:15:\"use-tumblr-icon\";s:0:\"\";s:17:\"use-linkedin-icon\";s:0:\"\";s:12:\"use-rss-icon\";s:0:\"\";s:16:\"use-behance-icon\";s:0:\"\";s:18:\"use-instagram-icon\";s:0:\"\";s:15:\"use-flickr-icon\";s:0:\"\";s:16:\"use-spotify-icon\";s:0:\"\";s:15:\"use-github-icon\";s:0:\"\";s:22:\"use-stackexchange-icon\";s:0:\"\";s:19:\"use-soundcloud-icon\";s:0:\"\";s:11:\"use-vk-icon\";s:0:\"\";s:13:\"use-vine-icon\";s:0:\"\";s:17:\"ajax-page-loading\";s:1:\"1\";s:17:\"transition-method\";s:8:\"standard\";s:32:\"disable-transition-fade-on-click\";s:1:\"0\";s:17:\"transition-effect\";s:8:\"standard\";s:12:\"loading-icon\";s:8:\"material\";s:19:\"loading-icon-colors\";a:2:{s:4:\"from\";s:7:\"#3452ff\";s:2:\"to\";s:7:\"#3452ff\";}s:13:\"loading-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:23:\"loading-image-animation\";s:4:\"none\";s:19:\"transition-bg-color\";s:0:\"\";s:21:\"transition-bg-color-2\";s:0:\"\";s:24:\"header-animate-in-effect\";s:4:\"none\";s:23:\"header-down-arrow-style\";s:7:\"default\";s:10:\"form-style\";s:7:\"minimal\";s:17:\"form-fancy-select\";s:1:\"0\";s:21:\"form-submit-btn-style\";s:7:\"regular\";s:8:\"cta-text\";s:0:\"\";s:7:\"cta-btn\";s:0:\"\";s:12:\"cta-btn-link\";s:0:\"\";s:20:\"cta-background-color\";s:7:\"#ECEBE9\";s:14:\"cta-text-color\";s:7:\"#4B4F52\";s:13:\"cta-btn-color\";s:12:\"accent-color\";s:21:\"main_portfolio_layout\";s:1:\"3\";s:28:\"main_portfolio_project_style\";s:1:\"1\";s:27:\"main_portfolio_item_spacing\";s:7:\"default\";s:21:\"portfolio_use_masonry\";s:1:\"0\";s:29:\"portfolio_masonry_grid_sizing\";s:7:\"default\";s:24:\"portfolio_inline_filters\";s:1:\"0\";s:20:\"portfolio_single_nav\";s:13:\"after_project\";s:27:\"portfolio_loading_animation\";s:19:\"fade_in_from_bottom\";s:24:\"portfolio_sidebar_follow\";s:1:\"0\";s:16:\"portfolio_social\";s:1:\"1\";s:22:\"portfolio_social_style\";s:7:\"default\";s:26:\"portfolio-facebook-sharing\";s:1:\"1\";s:25:\"portfolio-twitter-sharing\";s:1:\"1\";s:29:\"portfolio-google-plus-sharing\";s:1:\"1\";s:27:\"portfolio-pinterest-sharing\";s:1:\"1\";s:26:\"portfolio-linkedin-sharing\";s:1:\"1\";s:14:\"portfolio_date\";s:1:\"1\";s:20:\"portfolio_pagination\";s:1:\"0\";s:25:\"portfolio_pagination_type\";s:7:\"default\";s:26:\"portfolio_extra_pagination\";s:1:\"0\";s:27:\"portfolio_pagination_number\";s:0:\"\";s:22:\"portfolio_rewrite_slug\";s:0:\"\";s:14:\"carousel-title\";s:0:\"\";s:13:\"carousel-link\";s:0:\"\";s:23:\"portfolio-sortable-text\";s:0:\"\";s:19:\"main-portfolio-link\";s:0:\"\";s:34:\"portfolio_same_category_single_nav\";s:1:\"0\";s:9:\"blog_type\";s:16:\"std-blog-sidebar\";s:18:\"blog_standard_type\";s:7:\"classic\";s:17:\"blog_masonry_type\";s:7:\"classic\";s:22:\"blog_loading_animation\";s:4:\"none\";s:16:\"blog_header_type\";s:7:\"default\";s:17:\"blog_hide_sidebar\";s:1:\"1\";s:24:\"blog_hide_featured_image\";s:1:\"0\";s:21:\"blog_archive_bg_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:10:\"author_bio\";s:1:\"1\";s:17:\"blog_auto_excerpt\";s:1:\"0\";s:19:\"blog_excerpt_length\";s:0:\"\";s:19:\"blog_next_post_link\";s:1:\"0\";s:11:\"blog_social\";s:1:\"1\";s:17:\"blog_social_style\";s:7:\"default\";s:21:\"blog-facebook-sharing\";s:1:\"1\";s:20:\"blog-twitter-sharing\";s:1:\"1\";s:24:\"blog-google-plus-sharing\";s:1:\"1\";s:22:\"blog-pinterest-sharing\";s:1:\"1\";s:21:\"blog-linkedin-sharing\";s:1:\"1\";s:12:\"display_tags\";s:1:\"0\";s:17:\"display_full_date\";s:1:\"0\";s:20:\"blog_pagination_type\";s:7:\"default\";s:16:\"extra_pagination\";s:1:\"0\";s:18:\"recent-posts-title\";s:0:\"\";s:17:\"recent-posts-link\";s:0:\"\";s:10:\"zoom-level\";s:0:\"\";s:15:\"enable-map-zoom\";s:1:\"0\";s:10:\"center-lat\";s:0:\"\";s:10:\"center-lng\";s:0:\"\";s:14:\"use-marker-img\";s:1:\"0\";s:10:\"marker-img\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:20:\"enable-map-animation\";s:1:\"1\";s:11:\"map-point-1\";s:1:\"0\";s:9:\"latitude1\";s:0:\"\";s:10:\"longitude1\";s:0:\"\";s:9:\"map-info1\";s:0:\"\";s:11:\"map-point-2\";s:1:\"0\";s:9:\"latitude2\";s:0:\"\";s:10:\"longitude2\";s:0:\"\";s:9:\"map-info2\";s:0:\"\";s:11:\"map-point-3\";s:1:\"0\";s:9:\"latitude3\";s:0:\"\";s:10:\"longitude3\";s:0:\"\";s:9:\"map-info3\";s:0:\"\";s:11:\"map-point-4\";s:1:\"0\";s:9:\"latitude4\";s:0:\"\";s:10:\"longitude4\";s:0:\"\";s:9:\"map-info4\";s:0:\"\";s:11:\"map-point-5\";s:1:\"0\";s:9:\"latitude5\";s:0:\"\";s:10:\"longitude5\";s:0:\"\";s:9:\"map-info5\";s:0:\"\";s:11:\"map-point-6\";s:1:\"0\";s:9:\"latitude6\";s:0:\"\";s:10:\"longitude6\";s:0:\"\";s:9:\"map-info6\";s:0:\"\";s:11:\"map-point-7\";s:1:\"0\";s:9:\"latitude7\";s:0:\"\";s:10:\"longitude7\";s:0:\"\";s:9:\"map-info7\";s:0:\"\";s:11:\"map-point-8\";s:1:\"0\";s:9:\"latitude8\";s:0:\"\";s:10:\"longitude8\";s:0:\"\";s:9:\"map-info8\";s:0:\"\";s:11:\"map-point-9\";s:1:\"0\";s:9:\"latitude9\";s:0:\"\";s:10:\"longitude9\";s:0:\"\";s:9:\"map-info9\";s:0:\"\";s:12:\"map-point-10\";s:1:\"0\";s:10:\"latitude10\";s:0:\"\";s:11:\"longitude10\";s:0:\"\";s:10:\"map-info10\";s:0:\"\";s:20:\"add-remove-locations\";s:0:\"\";s:13:\"map-greyscale\";s:1:\"0\";s:9:\"map-color\";s:0:\"\";s:14:\"map-ultra-flat\";s:0:\"\";s:21:\"map-dark-color-scheme\";s:0:\"\";s:24:\"slider-caption-animation\";s:1:\"1\";s:23:\"slider-background-cover\";s:1:\"1\";s:15:\"slider-autoplay\";s:1:\"1\";s:20:\"slider-advance-speed\";s:0:\"\";s:22:\"slider-animation-speed\";s:0:\"\";s:13:\"slider-height\";s:0:\"\";s:15:\"slider-bg-color\";s:7:\"#000000\";s:24:\"sharing_btn_accent_color\";s:1:\"1\";s:12:\"facebook-url\";s:0:\"\";s:11:\"twitter-url\";s:0:\"\";s:15:\"google-plus-url\";s:0:\"\";s:9:\"vimeo-url\";s:0:\"\";s:12:\"dribbble-url\";s:0:\"\";s:13:\"pinterest-url\";s:0:\"\";s:11:\"youtube-url\";s:0:\"\";s:10:\"tumblr-url\";s:0:\"\";s:12:\"linkedin-url\";s:0:\"\";s:7:\"rss-url\";s:0:\"\";s:11:\"behance-url\";s:0:\"\";s:10:\"flickr-url\";s:0:\"\";s:11:\"spotify-url\";s:0:\"\";s:13:\"instagram-url\";s:0:\"\";s:10:\"github-url\";s:0:\"\";s:17:\"stackexchange-url\";s:0:\"\";s:14:\"soundcloud-url\";s:0:\"\";s:6:\"vk-url\";s:0:\"\";s:8:\"vine-url\";s:0:\"\";s:11:\"enable-cart\";s:1:\"1\";s:15:\"ajax-cart-style\";s:8:\"dropdown\";s:16:\"main_shop_layout\";s:10:\"no-sidebar\";s:21:\"single_product_layout\";s:10:\"no-sidebar\";s:13:\"product_style\";s:7:\"classic\";s:16:\"product_bg_color\";s:7:\"#ffffff\";s:24:\"product_archive_bg_color\";s:7:\"#f6f6f6\";s:23:\"product_hover_alt_image\";s:1:\"0\";s:27:\"single_product_gallery_type\";s:7:\"default\";s:20:\"product_tab_position\";s:10:\"in_sidebar\";s:21:\"woo-products-per-page\";s:0:\"\";s:10:\"woo_social\";s:1:\"1\";s:20:\"woo-facebook-sharing\";s:1:\"1\";s:19:\"woo-twitter-sharing\";s:1:\"1\";s:23:\"woo-google-plus-sharing\";s:1:\"1\";s:21:\"woo-pinterest-sharing\";s:1:\"1\";s:20:\"woo-linkedin-sharing\";s:1:\"0\";}', 'yes'),
(160, 'salient_redux-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:19:\"google-maps-api-key\";s:0:\"\";}s:9:\"last_save\";i:1523364540;}', 'yes'),
(161, 'widget_recent-posts-extra', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_recent-projects', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, '_transient_timeout_select2-css_style_cdn_is_up', '1523436558', 'no'),
(166, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(167, '_transient_timeout_select2-js_script_cdn_is_up', '1523436558', 'no'),
(168, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(169, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1523436559', 'no'),
(170, '_transient_ace-editor-js_script_cdn_is_up', '1', 'no'),
(175, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1523351078;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(177, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(179, 'gform_enable_background_updates', '', 'yes'),
(180, 'gf_db_version', '2.2.5.8', 'yes'),
(181, 'gform_pending_installation', '', 'yes'),
(182, 'rg_form_version', '2.2.5.8', 'yes'),
(190, 'rg_gforms_enable_akismet', '1', 'yes'),
(191, 'rg_gforms_currency', 'USD', 'yes'),
(192, 'gform_enable_toolbar_menu', '1', 'yes'),
(199, 'vc_version', '5.0.1', 'yes'),
(212, 'woocommerce_store_address', '', 'yes'),
(213, 'woocommerce_store_address_2', '', 'yes'),
(214, 'woocommerce_store_city', '', 'yes'),
(215, 'woocommerce_default_country', 'GB', 'yes'),
(216, 'woocommerce_store_postcode', '', 'yes'),
(217, 'woocommerce_allowed_countries', 'all', 'yes'),
(218, 'woocommerce_all_except_countries', '', 'yes'),
(219, 'woocommerce_specific_allowed_countries', '', 'yes'),
(220, 'woocommerce_ship_to_countries', '', 'yes'),
(221, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(222, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(223, 'woocommerce_calc_taxes', 'no', 'yes'),
(224, 'woocommerce_currency', 'GBP', 'yes'),
(225, 'woocommerce_currency_pos', 'left', 'yes'),
(226, 'woocommerce_price_thousand_sep', ',', 'yes'),
(227, 'woocommerce_price_decimal_sep', '.', 'yes'),
(228, 'woocommerce_price_num_decimals', '2', 'yes'),
(229, 'woocommerce_shop_page_id', '', 'yes'),
(230, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(231, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(232, 'woocommerce_weight_unit', 'kg', 'yes'),
(233, 'woocommerce_dimension_unit', 'cm', 'yes'),
(234, 'woocommerce_enable_reviews', 'yes', 'yes'),
(235, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(236, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(237, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(238, 'woocommerce_review_rating_required', 'yes', 'no'),
(239, 'woocommerce_manage_stock', 'yes', 'yes'),
(240, 'woocommerce_hold_stock_minutes', '60', 'no'),
(241, 'woocommerce_notify_low_stock', 'yes', 'no'),
(242, 'woocommerce_notify_no_stock', 'yes', 'no'),
(243, 'woocommerce_stock_email_recipient', 'dismuskiplimo@gmail.com', 'no'),
(244, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(245, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(246, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(247, 'woocommerce_stock_format', '', 'yes'),
(248, 'woocommerce_file_download_method', 'force', 'no'),
(249, 'woocommerce_downloads_require_login', 'no', 'no'),
(250, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(251, 'woocommerce_prices_include_tax', 'no', 'yes'),
(252, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(253, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(254, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(255, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(256, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(257, 'woocommerce_tax_display_cart', 'excl', 'no'),
(258, 'woocommerce_price_display_suffix', '', 'yes'),
(259, 'woocommerce_tax_total_display', 'itemized', 'no'),
(260, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(261, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(262, 'woocommerce_ship_to_destination', 'billing', 'no'),
(263, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(264, 'woocommerce_enable_coupons', 'yes', 'yes'),
(265, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(266, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(267, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(268, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(269, 'woocommerce_cart_page_id', '', 'yes'),
(270, 'woocommerce_checkout_page_id', '', 'yes'),
(271, 'woocommerce_terms_page_id', '', 'no'),
(272, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(273, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(274, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(275, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(276, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(277, 'woocommerce_myaccount_page_id', '', 'yes'),
(278, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(279, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(280, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(281, 'woocommerce_registration_generate_username', 'yes', 'no'),
(282, 'woocommerce_registration_generate_password', 'no', 'no'),
(283, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(284, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(285, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(286, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(287, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(288, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(289, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(290, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(291, 'woocommerce_email_from_name', 'The Materials Research Society of Kenya', 'no'),
(292, 'woocommerce_email_from_address', 'dismuskiplimo@gmail.com', 'no'),
(293, 'woocommerce_email_header_image', '', 'no'),
(294, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(295, 'woocommerce_email_base_color', '#96588a', 'no'),
(296, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(297, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(298, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(299, 'woocommerce_api_enabled', 'yes', 'yes'),
(300, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(301, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(302, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(303, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(304, 'product_cat_children', 'a:0:{}', 'yes'),
(305, 'default_product_cat', '16', 'yes'),
(308, 'woocommerce_version', '3.3.4', 'yes'),
(309, 'woocommerce_db_version', '3.3.4', 'yes'),
(310, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:14:\"template_files\";}', 'yes'),
(311, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(312, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(322, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(330, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(355, 'ls-plugin-version', '6.3.0', 'yes'),
(356, 'ls-db-version', '6.3.0', 'yes'),
(357, 'ls-installed', '1', 'yes'),
(358, 'ls-date-installed', '1523351979', 'yes'),
(360, 'widget_layerslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(361, 'ls-store-last-updated', '1523352010', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(362, 'ls-store-data', 'a:2:{s:12:\"last_updated\";s:10:\"2017-12-22\";s:7:\"sliders\";a:74:{s:20:\"catering-xmas-slider\";a:7:{s:8:\"released\";s:10:\"2017-12-22\";s:4:\"name\";s:25:\"Catering Christmas Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:29:\"premium,new,static,text,blend\";s:3:\"url\";s:72:\"https://layerslider.kreaturamedia.com/sliders/catering-christmas-slider/\";s:7:\"preview\";s:81:\"https://repository.kreaturamedia.com/v4/sliders/packages/catering-xmas-slider.jpg\";}s:20:\"discover-the-details\";a:7:{s:8:\"released\";s:10:\"2017-12-19\";s:4:\"name\";s:20:\"Discover the Details\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:50:\"premium,new,loop,parallax,blendmode,specialeffects\";s:3:\"url\";s:67:\"https://layerslider.kreaturamedia.com/sliders/discover-the-details/\";s:7:\"preview\";s:81:\"https://repository.kreaturamedia.com/v4/sliders/packages/discover-the-details.jpg\";}s:10:\"rainforest\";a:7:{s:8:\"released\";s:10:\"2017-12-17\";s:4:\"name\";s:10:\"Rainforest\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:48:\"premium,new,loop,filter,blendmode,specialeffects\";s:3:\"url\";s:57:\"https://layerslider.kreaturamedia.com/sliders/rainforest/\";s:7:\"preview\";s:71:\"https://repository.kreaturamedia.com/v4/sliders/packages/rainforest.jpg\";}s:30:\"ecommerce-global-hover-example\";a:7:{s:8:\"released\";s:10:\"2017-12-15\";s:4:\"name\";s:30:\"eCommerce Global Hover Example\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:23:\"premium,new,experiments\";s:3:\"url\";s:77:\"https://layerslider.kreaturamedia.com/sliders/ecommerce-global-hover-example/\";s:7:\"preview\";s:91:\"https://repository.kreaturamedia.com/v4/sliders/packages/ecommerce-global-hover-example.jpg\";}s:20:\"3d-canyon-experience\";a:7:{s:8:\"released\";s:10:\"2017-12-13\";s:4:\"name\";s:20:\"3D Canyon Experience\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:37:\"premium,new,parallax,experiments,text\";s:3:\"url\";s:67:\"https://layerslider.kreaturamedia.com/sliders/3d-canyon-experience/\";s:7:\"preview\";s:81:\"https://repository.kreaturamedia.com/v4/sliders/packages/3d-canyon-experience.jpg\";}s:14:\"discount-popup\";a:7:{s:8:\"released\";s:10:\"2017-12-10\";s:4:\"name\";s:14:\"Discount Popup\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:21:\"premium,premium,popup\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/discount-popup/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/discount-popup.jpg\";}s:14:\"vintage-photos\";a:7:{s:8:\"released\";s:10:\"2017-12-08\";s:4:\"name\";s:14:\"Vintage Photos\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.6.0\";s:6:\"groups\";s:47:\"premium,new,fullsize,loop,filter,specialeffects\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/vintage-photos/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/vintage-photos.jpg\";}s:18:\"social-share-popup\";a:7:{s:8:\"released\";s:10:\"2017-12-06\";s:4:\"name\";s:18:\"Social Share Popup\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:21:\"premium,new,popup,api\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/social-share-popup/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/social-share-popup.jpg\";}s:8:\"aquarium\";a:7:{s:8:\"released\";s:10:\"2017-12-04\";s:4:\"name\";s:8:\"Aquarium\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:59:\"premium,new,parallax,loop,filter,experiments,specialeffects\";s:3:\"url\";s:55:\"https://layerslider.kreaturamedia.com/sliders/aquarium/\";s:7:\"preview\";s:69:\"https://repository.kreaturamedia.com/v4/sliders/packages/aquarium.jpg\";}s:16:\"what-is-the-time\";a:7:{s:8:\"released\";s:10:\"2017-08-25\";s:4:\"name\";s:17:\"What is the time?\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:51:\"premium,new,parallax,text,blendmode,experiments,api\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/what-is-the-time/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/what-is-the-time.jpg\";}s:18:\"personal-page-pack\";a:7:{s:8:\"released\";s:10:\"2017-08-23\";s:4:\"name\";s:18:\"Personal Page PACK\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:58:\"premium,new,fullsize,fullwidth,landing,text,parallax,packs\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/personal-page-pack/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/personal-page-pack.jpg\";}s:19:\"marketing-page-pack\";a:7:{s:8:\"released\";s:10:\"2017-08-21\";s:4:\"name\";s:19:\"Marketing Page PACK\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:65:\"premium,new,fullsize,fullwidth,landing,parallax,static,loop,packs\";s:3:\"url\";s:66:\"https://layerslider.kreaturamedia.com/sliders/marketing-page-pack/\";s:7:\"preview\";s:80:\"https://repository.kreaturamedia.com/v4/sliders/packages/marketing-page-pack.jpg\";}s:14:\"dynamic-slider\";a:7:{s:8:\"released\";s:10:\"2017-08-18\";s:4:\"name\";s:14:\"Dynamic Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:36:\"premium,new,fullwidth,landing,static\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/dynamic-slider/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/dynamic-slider.jpg\";}s:14:\"colorful-cases\";a:7:{s:8:\"released\";s:10:\"2017-08-16\";s:4:\"name\";s:14:\"Colorful Cases\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:47:\"premium,new,text,loop,parallax,static,blendmode\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/colorful-cases/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/colorful-cases.jpg\";}s:16:\"beauty-shop-pack\";a:7:{s:8:\"released\";s:10:\"2017-08-14\";s:4:\"name\";s:16:\"Beauty Shop PACK\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.5\";s:6:\"groups\";s:40:\"premium,new,fullwidth,text,landing,packs\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/beauty-shop-pack/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/beauty-shop-pack.jpg\";}s:16:\"popup-guide-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:16:\"Popup Guide Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:31:\"premium,new,popup,parallax,text\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/popup-guide-demo/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-guide-demo.jpg\";}s:18:\"popup-welcome-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:18:\"Popup Welcome Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:31:\"premium,new,popup,parallax,text\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/popup-welcome-demo/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-welcome-demo.jpg\";}s:22:\"popup-transparent-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:22:\"Popup Transparent Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:31:\"premium,new,popup,parallax,loop\";s:3:\"url\";s:69:\"https://layerslider.kreaturamedia.com/sliders/popup-transparent-demo/\";s:7:\"preview\";s:83:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-transparent-demo.jpg\";}s:18:\"popup-sidebar-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:18:\"Popup Sidebar Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:40:\"premium,popup,experiments,blendmode,text\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/popup-sidebar-demo/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-sidebar-demo.jpg\";}s:19:\"popup-photo-gallery\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:19:\"Popup Photo Gallery\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:26:\"premium,new,popup,kenburns\";s:3:\"url\";s:66:\"https://layerslider.kreaturamedia.com/sliders/popup-photo-gallery/\";s:7:\"preview\";s:80:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-photo-gallery.jpg\";}s:16:\"popup-modal-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:16:\"Popup Modal Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:24:\"premium,new,popup,static\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/popup-modal-demo/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-modal-demo.jpg\";}s:18:\"popup-infobar-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:18:\"Popup Infobar Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:34:\"premium,new,popup,experiments,text\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/popup-infobar-demo/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-infobar-demo.jpg\";}s:24:\"popup-fullsize-desk-demo\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:24:\"Popup Fullsize Desk Demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:47:\"premium,new,popup,experiments,fullsize,parallax\";s:3:\"url\";s:71:\"https://layerslider.kreaturamedia.com/sliders/popup-fullsize-desk-demo/\";s:7:\"preview\";s:85:\"https://repository.kreaturamedia.com/v4/sliders/packages/popup-fullsize-desk-demo.jpg\";}s:18:\"conversation-popup\";a:7:{s:8:\"released\";s:10:\"2017-06-11\";s:4:\"name\";s:18:\"Conversation Popup\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.5.0\";s:6:\"groups\";s:29:\"premium,new,popup,experiments\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/conversation-popup/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/conversation-popup.jpg\";}s:20:\"global-hover-example\";a:7:{s:8:\"released\";s:10:\"2017-05-02\";s:4:\"name\";s:20:\"Global Hover Example\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.4.0\";s:6:\"groups\";s:52:\"premium,new,experiments,specialeffects,parallax,text\";s:3:\"url\";s:67:\"https://layerslider.kreaturamedia.com/sliders/global-hover-example/\";s:7:\"preview\";s:81:\"https://repository.kreaturamedia.com/v4/sliders/packages/global-hover-example.jpg\";}s:10:\"gastronomy\";a:7:{s:8:\"released\";s:10:\"2017-03-29\";s:4:\"name\";s:10:\"Gastronomy\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.2.2\";s:6:\"groups\";s:28:\"premium,kenburns,filter,text\";s:3:\"url\";s:57:\"https://layerslider.kreaturamedia.com/sliders/gastronomy/\";s:7:\"preview\";s:71:\"https://repository.kreaturamedia.com/v4/sliders/packages/gastronomy.jpg\";}s:13:\"police-lights\";a:7:{s:8:\"released\";s:10:\"2017-03-29\";s:4:\"name\";s:13:\"Police Lights\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.2.2\";s:6:\"groups\";s:46:\"premium,specialeffects,loop,blendmode,parallax\";s:3:\"url\";s:60:\"https://layerslider.kreaturamedia.com/sliders/police-lights/\";s:7:\"preview\";s:74:\"https://repository.kreaturamedia.com/v4/sliders/packages/police-lights.jpg\";}s:16:\"beautiful-sunset\";a:7:{s:8:\"released\";s:10:\"2017-03-29\";s:4:\"name\";s:16:\"Beautiful Sunset\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.2.2\";s:6:\"groups\";s:37:\"premium,specialeffects,loop,blendmode\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/beautiful-sunset/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/beautiful-sunset.jpg\";}s:23:\"blend-mode-experiment-1\";a:7:{s:8:\"released\";s:10:\"2017-03-29\";s:4:\"name\";s:23:\"Blend Mode Experiment 1\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.2.2\";s:6:\"groups\";s:63:\"premium,specialeffects,text,blendmode,experiments,loop,parallax\";s:3:\"url\";s:70:\"https://layerslider.kreaturamedia.com/sliders/blend-mode-experiment-1/\";s:7:\"preview\";s:84:\"https://repository.kreaturamedia.com/v4/sliders/packages/blend-mode-experiment-1.jpg\";}s:16:\"flying-banners-2\";a:7:{s:8:\"released\";s:10:\"2017-03-29\";s:4:\"name\";s:16:\"Flying Banners 2\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.1.0\";s:6:\"groups\";s:40:\"premium,parallax,specialeffects,fullsize\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/flying-banners-2/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/flying-banners-2.jpg\";}s:14:\"layerslider-v6\";a:7:{s:8:\"released\";s:10:\"2017-03-08\";s:4:\"name\";s:14:\"LayerSlider v6\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.1.6\";s:6:\"groups\";s:68:\"premium,specialeffects,parallax,fullsize,landing,loop,text,media,api\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/layerslider-v6/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/layerslider-v6.jpg\";}s:16:\"flying-banners-1\";a:7:{s:8:\"released\";s:10:\"2017-03-08\";s:4:\"name\";s:16:\"Flying Banners 1\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"6.1.0\";s:6:\"groups\";s:38:\"free,parallax,loop,text,specialeffects\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/flying-banners-1/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/flying-banners-1.jpg\";}s:18:\"anniversary-slider\";a:7:{s:8:\"released\";s:10:\"2017-03-08\";s:4:\"name\";s:18:\"Anniversary Slider\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"6.1.0\";s:6:\"groups\";s:40:\"free,parallax,experiments,specialeffects\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/anniversary-slider/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/anniversary-slider.jpg\";}s:7:\"origami\";a:7:{s:8:\"released\";s:10:\"2016-12-07\";s:4:\"name\";s:7:\"Origami\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.1.0\";s:6:\"groups\";s:47:\"premium,experiments,specialeffects,3dtransition\";s:3:\"url\";s:54:\"https://layerslider.kreaturamedia.com/sliders/origami/\";s:7:\"preview\";s:68:\"https://repository.kreaturamedia.com/v4/sliders/packages/origami.jpg\";}s:17:\"origami-buildings\";a:7:{s:8:\"released\";s:10:\"2016-12-07\";s:4:\"name\";s:17:\"Origami Buildings\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.1.0\";s:6:\"groups\";s:56:\"premium,experiments,specialeffects,kenburns,3dtransition\";s:3:\"url\";s:64:\"https://layerslider.kreaturamedia.com/sliders/origami-buildings/\";s:7:\"preview\";s:78:\"https://repository.kreaturamedia.com/v4/sliders/packages/origami-buildings.jpg\";}s:17:\"autumn-experiment\";a:7:{s:8:\"released\";s:10:\"2016-11-28\";s:4:\"name\";s:17:\"Autumn Experiment\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"6.0.4\";s:6:\"groups\";s:45:\"experiments,free,loop,parallax,specialeffects\";s:3:\"url\";s:64:\"https://layerslider.kreaturamedia.com/sliders/autumn-experiment/\";s:7:\"preview\";s:78:\"https://repository.kreaturamedia.com/v4/sliders/packages/autumn-experiment.jpg\";}s:28:\"features-parallax-experiment\";a:7:{s:8:\"released\";s:10:\"2016-11-28\";s:4:\"name\";s:32:\"Features | A Parallax Experiment\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"6.0.4\";s:6:\"groups\";s:40:\"experiments,free,parallax,specialeffects\";s:3:\"url\";s:75:\"https://layerslider.kreaturamedia.com/sliders/features-parallax-experiment/\";s:7:\"preview\";s:89:\"https://repository.kreaturamedia.com/v4/sliders/packages/features-parallax-experiment.jpg\";}s:16:\"furniture-slider\";a:7:{s:8:\"released\";s:10:\"2016-11-28\";s:4:\"name\";s:16:\"Furniture Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.4\";s:6:\"groups\";s:33:\"fullwidth,parallax,premium,static\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/furniture-slider/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/furniture-slider.jpg\";}s:15:\"room-experiment\";a:7:{s:8:\"released\";s:10:\"2016-11-28\";s:4:\"name\";s:15:\"Room Experiment\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.6\";s:6:\"groups\";s:65:\"api,experiments,media,parallax,premium,specialeffects,static,text\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/room-experiment/\";s:7:\"preview\";s:76:\"https://repository.kreaturamedia.com/v4/sliders/packages/room-experiment.jpg\";}s:11:\"drag-n-drop\";a:6:{s:4:\"name\";s:11:\"Drag & Drop\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.3\";s:6:\"groups\";s:37:\"premium,fullwidth,specialeffects,text\";s:3:\"url\";s:58:\"https://layerslider.kreaturamedia.com/sliders/drag-n-drop/\";s:7:\"preview\";s:72:\"https://repository.kreaturamedia.com/v4/sliders/packages/drag-n-drop.jpg\";}s:10:\"headphones\";a:6:{s:4:\"name\";s:10:\"Headphones\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.3\";s:6:\"groups\";s:14:\"premium,static\";s:3:\"url\";s:57:\"https://layerslider.kreaturamedia.com/sliders/headphones/\";s:7:\"preview\";s:71:\"https://repository.kreaturamedia.com/v4/sliders/packages/headphones.jpg\";}s:14:\"play-by-scroll\";a:6:{s:4:\"name\";s:19:\"Play By Scroll demo\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.4\";s:6:\"groups\";s:66:\"premium,fullsize,text,experiments,specialeffects,playbyscroll,loop\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/play-by-scroll/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/play-by-scroll.jpg\";}s:3:\"sky\";a:6:{s:4:\"name\";s:14:\"Sky Experience\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.3\";s:6:\"groups\";s:63:\"premium,fullwidth,text,experiments,parallax,specialeffects,loop\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/sky-experience/\";s:7:\"preview\";s:64:\"https://repository.kreaturamedia.com/v4/sliders/packages/sky.jpg\";}s:9:\"halloween\";a:6:{s:4:\"name\";s:16:\"Happy Halloween!\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"6.0.3\";s:6:\"groups\";s:35:\"free,fullsize,text,experiments,loop\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/happy-halloween/\";s:7:\"preview\";s:70:\"https://repository.kreaturamedia.com/v4/sliders/packages/halloween.jpg\";}s:15:\"creative-agency\";a:6:{s:4:\"name\";s:6:\"Agency\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:49:\"premium,fullsize,kenburns,parallax,landing,filter\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/creative-agency/\";s:7:\"preview\";s:76:\"https://repository.kreaturamedia.com/v4/sliders/packages/creative-agency.jpg\";}s:18:\"interactive-slider\";a:6:{s:4:\"name\";s:18:\"Interactive Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:47:\"premium,fullsize,parallax,kenburns,text,landing\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/interactive-slider/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/interactive-slider.jpg\";}s:9:\"ecommerce\";a:6:{s:4:\"name\";s:9:\"eCommerce\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:17:\"premium,fullwidth\";s:3:\"url\";s:56:\"https://layerslider.kreaturamedia.com/sliders/ecommerce/\";s:7:\"preview\";s:70:\"https://repository.kreaturamedia.com/v4/sliders/packages/ecommerce.jpg\";}s:18:\"landing-page-intro\";a:6:{s:4:\"name\";s:18:\"Landing Page Intro\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:38:\"premium,fullsize,landing,parallax,text\";s:3:\"url\";s:59:\"https://layerslider.kreaturamedia.com/sliders/landing-page/\";s:7:\"preview\";s:79:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-page-intro.jpg\";}s:6:\"hiking\";a:6:{s:4:\"name\";s:6:\"Hiking\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:17:\"premium,fullwidth\";s:3:\"url\";s:53:\"https://layerslider.kreaturamedia.com/sliders/hiking/\";s:7:\"preview\";s:67:\"https://repository.kreaturamedia.com/v4/sliders/packages/hiking.jpg\";}s:12:\"movie-slider\";a:6:{s:4:\"name\";s:12:\"Movie Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:17:\"premium,fullwidth\";s:3:\"url\";s:59:\"https://layerslider.kreaturamedia.com/sliders/movie-slider/\";s:7:\"preview\";s:73:\"https://repository.kreaturamedia.com/v4/sliders/packages/movie-slider.jpg\";}s:12:\"photo-studio\";a:6:{s:4:\"name\";s:12:\"Photo Studio\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:62:\"premium,fullsize,filter,text,parallax,specialeffects,blendmode\";s:3:\"url\";s:59:\"https://layerslider.kreaturamedia.com/sliders/photo-studio/\";s:7:\"preview\";s:73:\"https://repository.kreaturamedia.com/v4/sliders/packages/photo-studio.jpg\";}s:5:\"shoes\";a:6:{s:4:\"name\";s:5:\"Shoes\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:35:\"premium,fullwidth,parallax,carousel\";s:3:\"url\";s:52:\"https://layerslider.kreaturamedia.com/sliders/shoes/\";s:7:\"preview\";s:66:\"https://repository.kreaturamedia.com/v4/sliders/packages/shoes.jpg\";}s:11:\"mini-cooper\";a:6:{s:4:\"name\";s:18:\"Mini Cooper Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:40:\"premium,fullsize,parallax,specialeffects\";s:3:\"url\";s:65:\"https://layerslider.kreaturamedia.com/sliders/mini-cooper-slider/\";s:7:\"preview\";s:72:\"https://repository.kreaturamedia.com/v4/sliders/packages/mini-cooper.jpg\";}s:4:\"xmas\";a:6:{s:4:\"name\";s:16:\"Merry Christmas!\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:60:\"premium,parallax,filter,experiments,specialeffects,text,loop\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/merry-christmas/\";s:7:\"preview\";s:65:\"https://repository.kreaturamedia.com/v4/sliders/packages/xmas.jpg\";}s:5:\"clock\";a:6:{s:4:\"name\";s:32:\"Vintage Clock | shows valid time\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:37:\"premium,fullsize,api,experiments,loop\";s:3:\"url\";s:60:\"https://layerslider.kreaturamedia.com/sliders/vintage-clock/\";s:7:\"preview\";s:66:\"https://repository.kreaturamedia.com/v4/sliders/packages/clock.jpg\";}s:8:\"car-show\";a:6:{s:4:\"name\";s:8:\"Car Show\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:38:\"premium,fullwidth,experiments,api,loop\";s:3:\"url\";s:55:\"https://layerslider.kreaturamedia.com/sliders/car-show/\";s:7:\"preview\";s:69:\"https://repository.kreaturamedia.com/v4/sliders/packages/car-show.jpg\";}s:16:\"landing-screen-1\";a:6:{s:4:\"name\";s:16:\"Landing Screen 1\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:34:\"premium,fullwidth,landing,parallax\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-1/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-1.jpg\";}s:16:\"landing-screen-2\";a:6:{s:4:\"name\";s:16:\"Landing Screen 2\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:25:\"premium,fullwidth,landing\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-2/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-2.jpg\";}s:16:\"landing-screen-3\";a:6:{s:4:\"name\";s:16:\"Landing Screen 3\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:34:\"premium,fullwidth,landing,parallax\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-3/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-3.jpg\";}s:16:\"landing-screen-4\";a:6:{s:4:\"name\";s:16:\"Landing Screen 4\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:34:\"premium,fullwidth,landing,parallax\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-4/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-4.jpg\";}s:16:\"landing-screen-5\";a:6:{s:4:\"name\";s:16:\"Landing Screen 5\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:25:\"premium,fullwidth,landing\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-5/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-5.jpg\";}s:16:\"landing-screen-6\";a:6:{s:4:\"name\";s:16:\"Landing Screen 6\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:25:\"premium,fullwidth,landing\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-6/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-6.jpg\";}s:16:\"landing-screen-7\";a:6:{s:4:\"name\";s:16:\"Landing Screen 7\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:25:\"premium,fullwidth,landing\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/landing-screen-7/\";s:7:\"preview\";s:77:\"https://repository.kreaturamedia.com/v4/sliders/packages/landing-screen-7.jpg\";}s:8:\"carousel\";a:6:{s:4:\"name\";s:8:\"Carousel\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:13:\"free,carousel\";s:3:\"url\";s:55:\"https://layerslider.kreaturamedia.com/sliders/carousel/\";s:7:\"preview\";s:69:\"https://repository.kreaturamedia.com/v4/sliders/packages/carousel.jpg\";}s:14:\"fancy-parallax\";a:6:{s:4:\"name\";s:21:\"Fancy Parallax Slider\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:26:\"premium,fullwidth,parallax\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/parallax-slider/\";s:7:\"preview\";s:75:\"https://repository.kreaturamedia.com/v4/sliders/packages/fancy-parallax.jpg\";}s:13:\"simple-slider\";a:6:{s:4:\"name\";s:13:\"Simple Slider\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:4:\"free\";s:3:\"url\";s:60:\"https://layerslider.kreaturamedia.com/sliders/simple-slider/\";s:7:\"preview\";s:74:\"https://repository.kreaturamedia.com/v4/sliders/packages/simple-slider.jpg\";}s:12:\"image-slider\";a:6:{s:4:\"name\";s:12:\"Image Slider\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:4:\"free\";s:3:\"url\";s:62:\"https://layerslider.kreaturamedia.com/sliders/image-slideshow/\";s:7:\"preview\";s:73:\"https://repository.kreaturamedia.com/v4/sliders/packages/image-slider.jpg\";}s:19:\"client-testimonials\";a:6:{s:4:\"name\";s:19:\"Client Testimonials\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:17:\"premium,fullwidth\";s:3:\"url\";s:66:\"https://layerslider.kreaturamedia.com/sliders/client-testimonials/\";s:7:\"preview\";s:80:\"https://repository.kreaturamedia.com/v4/sliders/packages/client-testimonials.jpg\";}s:8:\"fixed-bg\";a:6:{s:4:\"name\";s:16:\"Fixed Background\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"6.0.0\";s:6:\"groups\";s:23:\"premium,fullwidth,media\";s:3:\"url\";s:63:\"https://layerslider.kreaturamedia.com/sliders/fixed-background/\";s:7:\"preview\";s:69:\"https://repository.kreaturamedia.com/v4/sliders/packages/fixed-bg.jpg\";}s:22:\"dynamic-content-slider\";a:6:{s:4:\"name\";s:22:\"Dynamic Content Slider\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:4:\"free\";s:3:\"url\";s:69:\"https://layerslider.kreaturamedia.com/sliders/dynamic-content-slider/\";s:7:\"preview\";s:83:\"https://repository.kreaturamedia.com/v4/sliders/packages/dynamic-content-slider.jpg\";}s:6:\"old-3d\";a:6:{s:4:\"name\";s:14:\"LayerSlider v4\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:23:\"free,3dtransition,media\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/3d-demo-slider/\";s:7:\"preview\";s:67:\"https://repository.kreaturamedia.com/v4/sliders/packages/old-3d.jpg\";}s:2:\"v5\";a:6:{s:4:\"name\";s:14:\"LayerSlider v5\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:19:\"free,parallax,media\";s:3:\"url\";s:61:\"https://layerslider.kreaturamedia.com/sliders/layerslider-v5/\";s:7:\"preview\";s:63:\"https://repository.kreaturamedia.com/v4/sliders/packages/v5.jpg\";}s:12:\"video-slider\";a:6:{s:4:\"name\";s:12:\"Video Slider\";s:7:\"premium\";b:0;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:10:\"free,media\";s:3:\"url\";s:59:\"https://layerslider.kreaturamedia.com/sliders/video-slider/\";s:7:\"preview\";s:73:\"https://repository.kreaturamedia.com/v4/sliders/packages/video-slider.jpg\";}s:6:\"resort\";a:6:{s:4:\"name\";s:6:\"Resort\";s:7:\"premium\";b:1;s:8:\"requires\";s:5:\"5.0.0\";s:6:\"groups\";s:17:\"premium,fullwidth\";s:3:\"url\";s:54:\"https://layerslider.kreaturamedia.com/sliders/restort/\";s:7:\"preview\";s:67:\"https://repository.kreaturamedia.com/v4/sliders/packages/resort.jpg\";}}}', 'no'),
(942, 'layerslider_update_info', 'O:8:\"stdClass\":4:{s:5:\"basic\";O:8:\"stdClass\":10:{s:4:\"slug\";s:11:\"LayerSlider\";s:6:\"plugin\";s:27:\"LayerSlider/layerslider.php\";s:7:\"version\";s:5:\"6.7.6\";s:5:\"icons\";a:3:{s:2:\"1x\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-128x128.png\";s:2:\"2x\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-256x256.png\";s:7:\"default\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-256x256.png\";}s:7:\"banners\";a:3:{s:3:\"low\";s:84:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-772x250.png\";s:4:\"high\";s:85:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-1544x500.png\";s:7:\"default\";s:85:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-1544x500.png\";}s:3:\"url\";s:79:\"http://codecanyon.net/item/layerslider-wp-the-wordpress-parallax-slider/1362246\";s:7:\"package\";s:0:\"\";s:6:\"tested\";s:3:\"5.0\";s:14:\"upgrade_notice\";s:62:\"This update contains new privacy settings for GDPR compliance.\";s:11:\"new_version\";s:5:\"6.7.6\";}s:4:\"full\";O:8:\"stdClass\":19:{s:4:\"name\";s:14:\"LayerSlider WP\";s:8:\"homepage\";s:72:\"http://kreaturamedia.com/layerslider-responsive-wordpress-slider-plugin/\";s:7:\"version\";s:5:\"6.7.6\";s:12:\"last_updated\";s:10:\"2018-05-22\";s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:3:\"5.0\";s:6:\"rating\";s:2:\"95\";s:11:\"num_ratings\";i:2806;s:14:\"upgrade_notice\";a:3:{s:6:\"stable\";s:62:\"This update contains new privacy settings for GDPR compliance.\";s:4:\"beta\";s:62:\"This update contains new privacy settings for GDPR compliance.\";s:4:\"edge\";s:62:\"This update contains new privacy settings for GDPR compliance.\";}s:6:\"author\";s:80:\"<a href=\"http://codecanyon.net/user/kreatura\" target=\"_blank\">Kreatura Media</a>\";s:3:\"url\";s:79:\"http://codecanyon.net/item/layerslider-wp-the-wordpress-parallax-slider/1362246\";s:8:\"external\";b:1;s:9:\"file_name\";s:10:\"plugin.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-128x128.png\";s:2:\"2x\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-256x256.png\";s:7:\"default\";s:79:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/icon-256x256.png\";}s:7:\"banners\";a:3:{s:3:\"low\";s:84:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-772x250.png\";s:4:\"high\";s:85:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-1544x500.png\";s:7:\"default\";s:85:\"https://repository.kreaturamedia.com/v4/updates/1362246/assets/thumbnail-1544x500.png\";}s:8:\"sections\";a:3:{s:9:\"changelog\";s:130:\"<p style=\"text-align: justify;\">\n	See the release log in the \'LayerSlider News\' section at the bottom of its main admin page.\n</p>\";s:12:\"installation\";s:456:\"<p style=\"text-align: justify;\">\n	Updating the plugin won\'t touch your sliders and settings and the new version always has backward compatibility,\n	so you don\'t have to worry about losing your work. Depending of the default settings, you may\n	have to adjust some options to get the new features. If you are experience unwanted behavior changes, it is always a\n	good idea to check your settings, there are probably new options to control these changes.\n</p>\";s:3:\"faq\";s:595:\"<p style=\"text-align: justify;\">\n	Before contacting us, please read our <a href=\"http://support.kreaturamedia.com/faq/4/layerslider-for-wordpress/\" target=\"_blank\">online FAQs</a>, or check the built-in documentation in the contextual Help menu on the top-right corner of the page. Please note, these Help menus are contextual, they will show you different content on different pages.\n</p>\n\n<p style=\"text-align: justify;\">\n	If you couldn\'t find an answer for your question, you can write us a comment at the Item\'s page on CodeCanyon, or send us an email from our CodeCanyon profile page.\n</p>\n\";}s:4:\"slug\";s:11:\"LayerSlider\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";}s:15:\"_latest_version\";s:5:\"6.7.6\";s:7:\"checked\";i:1548495391;}', 'yes'),
(951, 'delightful-downloads-version', '1.6.6', 'yes'),
(952, 'delightful-downloads', 'a:21:{s:17:\"enable_taxonomies\";s:1:\"1\";s:12:\"members_only\";s:1:\"0\";s:21:\"members_only_redirect\";s:1:\"0\";s:12:\"open_browser\";s:1:\"0\";s:12:\"block_agents\";s:48:\"Googlebot\r\nbingbot\r\nmsnbot\r\nyahoo! slurp\r\njeeves\";s:12:\"default_text\";s:8:\"Download\";s:13:\"default_style\";s:6:\"button\";s:14:\"default_button\";s:4:\"blue\";s:12:\"default_list\";s:5:\"title\";s:19:\"log_admin_downloads\";s:1:\"1\";s:12:\"grace_period\";s:1:\"1\";s:21:\"grace_period_duration\";s:1:\"3\";s:11:\"auto_delete\";s:1:\"0\";s:20:\"auto_delete_duration\";s:2:\"90\";s:10:\"enable_css\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:14:\"cache_duration\";s:2:\"15\";s:12:\"download_url\";s:9:\"ddownload\";s:16:\"upload_directory\";s:20:\"delightful-downloads\";s:17:\"folder_protection\";s:1:\"1\";s:9:\"uninstall\";s:1:\"0\";}', 'yes'),
(953, 'delightful-downloads-notices', 'a:0:{}', 'yes'),
(954, 'widget_delightful-downloads-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1125, 'ls-latest-version', '6.7.6', 'yes'),
(1151, 'widget_themegrill_social_icons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1153, 'social_icons_meta_box_errors', 'a:0:{}', 'yes'),
(1158, '_transient_timeout_wc_report_sales_by_date', '1523457138', 'no'),
(1159, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"7751d2ecfed5305cdb76e0b0898d7f7d\";a:0:{}s:32:\"aeb47e8173a7f677a0076c8eaa5066b0\";a:0:{}s:32:\"e51d1a7387917afb6a02031b4dbde496\";a:0:{}s:32:\"226b50b76cb1cbbe4d0e0d1c5aaa911a\";N;s:32:\"fa4e98ea73328e9860891c2e7f318c42\";a:0:{}s:32:\"21eac53a3954e92fc926e5768f09a33b\";a:0:{}s:32:\"a4687c21ac572e865b05fad04936abc8\";a:0:{}s:32:\"3e9fe48d2c313b902e9d3d58bc23b5ff\";a:0:{}}', 'no'),
(1160, '_transient_timeout_wc_admin_report', '1523457138', 'no'),
(1161, '_transient_wc_admin_report', 'a:1:{s:32:\"0f0ec9de5047e6e97bbbe8fa71f51bfb\";a:0:{}}', 'no'),
(1162, '_transient_timeout_wc_low_stock_count', '1525962738', 'no'),
(1163, '_transient_wc_low_stock_count', '0', 'no'),
(1164, '_transient_timeout_wc_outofstock_count', '1525962738', 'no'),
(1165, '_transient_wc_outofstock_count', '0', 'no'),
(1182, 'widget_zoom-social-icons-widget', 'a:2:{i:2;a:12:{s:5:\"title\";s:6:\"SOCIAL\";s:11:\"description\";s:0:\"\";s:16:\"show_icon_labels\";s:5:\"false\";s:12:\"open_new_tab\";s:4:\"true\";s:9:\"no_follow\";s:5:\"false\";s:17:\"icon_padding_size\";i:8;s:14:\"icon_font_size\";i:18;s:19:\"global_color_picker\";s:7:\"#1e73be\";s:25:\"global_color_picker_hover\";s:7:\"#1e73be\";s:10:\"icon_style\";s:11:\"with-canvas\";s:17:\"icon_canvas_style\";s:7:\"rounded\";s:6:\"fields\";a:3:{i:0;a:6:{s:3:\"url\";s:21:\"https://facebook.com/\";s:5:\"label\";s:8:\"Facebook\";s:4:\"icon\";s:8:\"facebook\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#3b5998\";s:18:\"color_picker_hover\";s:7:\"#3b5998\";}i:1;a:6:{s:3:\"url\";s:20:\"https://twitter.com/\";s:5:\"label\";s:7:\"Twitter\";s:4:\"icon\";s:7:\"twitter\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#55acee\";s:18:\"color_picker_hover\";s:7:\"#55acee\";}i:2;a:6:{s:3:\"url\";s:21:\"https://linkedin.com/\";s:5:\"label\";s:13:\"Default Label\";s:4:\"icon\";s:8:\"linkedin\";s:8:\"icon_kit\";s:7:\"socicon\";s:12:\"color_picker\";s:7:\"#3371b7\";s:18:\"color_picker_hover\";s:7:\"#3371b7\";}}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1204, 'widget_lsi_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1209, '_site_transient_timeout_zoom-social-pointer', '1538923390', 'no'),
(1210, '_site_transient_zoom-social-pointer', '1', 'no'),
(2544, '_transient_timeout_external_ip_address_::1', '1549100183', 'no'),
(2545, '_transient_external_ip_address_::1', '41.80.195.57', 'no'),
(2546, '_transient_timeout_GFCache_8d15c21ffc5cf0aff1b0b3c6ba54621c', '1548495420', 'no'),
(2547, '_transient_GFCache_8d15c21ffc5cf0aff1b0b3c6ba54621c', 'a:0:{}', 'no'),
(2548, '_transient_timeout_GFCache_05dfba8b46b430db89f5a4620453f2a0', '1548495420', 'no'),
(2549, '_transient_GFCache_05dfba8b46b430db89f5a4620453f2a0', 'a:0:{}', 'no'),
(2550, '_transient_doing_cron', '1548495384.3683528900146484375000', 'yes'),
(2551, '_transient_timeout_ls-slider-data-1', '1548516986', 'no'),
(2552, '_transient_ls-slider-data-1', 'a:4:{s:4:\"init\";s:560:\"<script data-cfasync=\"false\" type=\"text/javascript\">var lsjQuery = jQuery;</script><script data-cfasync=\"false\" type=\"text/javascript\">\r\nlsjQuery(document).ready(function() {\r\nif(typeof lsjQuery.fn.layerSlider == \"undefined\") {\r\nif( window._layerSlider && window._layerSlider.showNotice) { \r\nwindow._layerSlider.showNotice(\'layerslider_1\',\'jquery\');\r\n}\r\n} else {\r\nlsjQuery(\"#layerslider_1\").layerSlider({sliderVersion: \'6.3.0\', type: \'fullwidth\', skinsPath: \'http://localhost/mrsk/wp-content/plugins/LayerSlider/static/layerslider/skins/\'});\r\n}\r\n});\r\n</script>\";s:9:\"container\";s:129:\"<div id=\"layerslider_1\" class=\"ls-wp-container fitvidsignore\" style=\"width:1280px;height:720px;margin:0 auto;margin-top: -50px;\">\";s:6:\"markup\";s:708:\"<div class=\"ls-slide\" data-ls=\"bgsize:cover;bgposition:50% 50%;kenburnsscale:1.2;\"><img width=\"1365\" height=\"768\" src=\"http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST.jpg\" class=\"ls-bg\" alt=\"\" srcset=\"http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST.jpg 1365w, http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST-300x169.jpg 300w, http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST-768x432.jpg 768w, http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST-1024x576.jpg 1024w, http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST-600x338.jpg 600w\" sizes=\"(max-width: 1365px) 100vw, 1365px\" /></div></div>\";s:7:\"plugins\";a:0:{}}', 'no'),
(2553, 'auto_updater.lock', '1548495387', 'no'),
(2554, '_transient_timeout_gform_update_info', '1548581790', 'no'),
(2555, '_transient_gform_update_info', 'a:5:{s:12:\"is_valid_key\";s:1:\"0\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}}', 'no'),
(2556, '_site_transient_timeout_theme_roots', '1548497193', 'no'),
(2557, '_site_transient_theme_roots', 'a:4:{s:7:\"salient\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2558, 'core_updater.lock', '1548495396', 'no'),
(2559, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"last_checked\";i:1548495416;}', 'no');

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
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1523352397:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1523358492:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1523369642:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1523359975:1'),
(10, 12, '_edit_last', '1'),
(11, 12, '_edit_lock', '1523345889:1'),
(12, 14, '_edit_last', '1'),
(13, 14, '_edit_lock', '1523346013:1'),
(14, 16, '_edit_last', '1'),
(15, 16, '_edit_lock', '1523455581:1'),
(16, 18, '_edit_last', '1'),
(17, 18, '_edit_lock', '1523367976:1'),
(18, 20, '_edit_last', '1'),
(19, 20, '_edit_lock', '1523345968:1'),
(20, 22, '_menu_item_type', 'post_type'),
(21, 22, '_menu_item_menu_item_parent', '0'),
(22, 22, '_menu_item_object_id', '14'),
(23, 22, '_menu_item_object', 'page'),
(24, 22, '_menu_item_target', ''),
(25, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 22, '_menu_item_xfn', ''),
(27, 22, '_menu_item_url', ''),
(29, 23, '_menu_item_type', 'post_type'),
(30, 23, '_menu_item_menu_item_parent', '0'),
(31, 23, '_menu_item_object_id', '18'),
(32, 23, '_menu_item_object', 'page'),
(33, 23, '_menu_item_target', ''),
(34, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 23, '_menu_item_xfn', ''),
(36, 23, '_menu_item_url', ''),
(38, 24, '_menu_item_type', 'post_type'),
(39, 24, '_menu_item_menu_item_parent', '0'),
(40, 24, '_menu_item_object_id', '16'),
(41, 24, '_menu_item_object', 'page'),
(42, 24, '_menu_item_target', ''),
(43, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 24, '_menu_item_xfn', ''),
(45, 24, '_menu_item_url', ''),
(56, 26, '_menu_item_type', 'post_type'),
(57, 26, '_menu_item_menu_item_parent', '0'),
(58, 26, '_menu_item_object_id', '12'),
(59, 26, '_menu_item_object', 'page'),
(60, 26, '_menu_item_target', ''),
(61, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 26, '_menu_item_xfn', ''),
(63, 26, '_menu_item_url', ''),
(65, 27, '_menu_item_type', 'post_type'),
(66, 27, '_menu_item_menu_item_parent', '29'),
(67, 27, '_menu_item_object_id', '10'),
(68, 27, '_menu_item_object', 'page'),
(69, 27, '_menu_item_target', ''),
(70, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 27, '_menu_item_xfn', ''),
(72, 27, '_menu_item_url', ''),
(74, 28, '_menu_item_type', 'post_type'),
(75, 28, '_menu_item_menu_item_parent', '0'),
(76, 28, '_menu_item_object_id', '8'),
(77, 28, '_menu_item_object', 'page'),
(78, 28, '_menu_item_target', ''),
(79, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 28, '_menu_item_xfn', ''),
(81, 28, '_menu_item_url', ''),
(83, 29, '_menu_item_type', 'post_type'),
(84, 29, '_menu_item_menu_item_parent', '0'),
(85, 29, '_menu_item_object_id', '6'),
(86, 29, '_menu_item_object', 'page'),
(87, 29, '_menu_item_target', ''),
(88, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 29, '_menu_item_xfn', ''),
(90, 29, '_menu_item_url', ''),
(92, 30, '_menu_item_type', 'post_type'),
(93, 30, '_menu_item_menu_item_parent', '0'),
(94, 30, '_menu_item_object_id', '4'),
(95, 30, '_menu_item_object', 'page'),
(96, 30, '_menu_item_target', ''),
(97, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 30, '_menu_item_xfn', ''),
(99, 30, '_menu_item_url', ''),
(103, 1, '_nectar_love', '0'),
(104, 32, '_wp_attached_file', '2018/04/Picture1.png'),
(105, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:319;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2018/04/Picture1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Picture1-297x300.png\";s:5:\"width\";i:297;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"portfolio-thumb_small\";a:4:{s:4:\"file\";s:20:\"Picture1-319x269.png\";s:5:\"width\";i:319;s:6:\"height\";i:269;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:20:\"Picture1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 33, '_wp_attached_file', '2018/04/ggg.png'),
(107, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:622;s:6:\"height\";i:424;s:4:\"file\";s:15:\"2018/04/ggg.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ggg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ggg-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio-thumb\";a:4:{s:4:\"file\";s:15:\"ggg-600x403.png\";s:5:\"width\";i:600;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"portfolio-thumb_small\";a:4:{s:4:\"file\";s:15:\"ggg-400x269.png\";s:5:\"width\";i:400;s:6:\"height\";i:269;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:15:\"ggg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"wide_small\";a:4:{s:4:\"file\";s:15:\"ggg-622x335.png\";s:5:\"width\";i:622;s:6:\"height\";i:335;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"regular\";a:4:{s:4:\"file\";s:15:\"ggg-500x424.png\";s:5:\"width\";i:500;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"regular_small\";a:4:{s:4:\"file\";s:15:\"ggg-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tall\";a:4:{s:4:\"file\";s:15:\"ggg-500x424.png\";s:5:\"width\";i:500;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 34, '_wp_attached_file', '2018/04/cropped-Picture1.png'),
(109, 34, '_wp_attachment_context', 'site-icon'),
(110, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2018/04/cropped-Picture1.png\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"portfolio-thumb\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-512x403.png\";s:5:\"width\";i:512;s:6:\"height\";i:403;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"portfolio-thumb_small\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-400x269.png\";s:5:\"width\";i:400;s:6:\"height\";i:269;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"wide\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-512x500.png\";s:5:\"width\";i:512;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"wide_small\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-512x335.png\";s:5:\"width\";i:512;s:6:\"height\";i:335;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"regular\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"regular_small\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tall\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-500x512.png\";s:5:\"width\";i:500;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:28:\"cropped-Picture1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:26:\"cropped-Picture1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 35, '_edit_lock', '1523350092:1'),
(112, 35, '_wp_trash_meta_status', 'publish'),
(113, 35, '_wp_trash_meta_time', '1523350132'),
(114, 36, '_wp_attached_file', '2018/04/Picture1.jpg'),
(115, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1146;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2018/04/Picture1.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Picture1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Picture1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Picture1-768x216.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Picture1-1024x288.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portfolio-thumb\";a:4:{s:4:\"file\";s:20:\"Picture1-600x322.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"portfolio-thumb_small\";a:4:{s:4:\"file\";s:20:\"Picture1-400x269.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:20:\"Picture1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"wide\";a:4:{s:4:\"file\";s:21:\"Picture1-1000x322.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"wide_small\";a:4:{s:4:\"file\";s:20:\"Picture1-670x322.jpg\";s:5:\"width\";i:670;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"regular\";a:4:{s:4:\"file\";s:20:\"Picture1-500x322.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"regular_small\";a:4:{s:4:\"file\";s:20:\"Picture1-350x322.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tall\";a:4:{s:4:\"file\";s:20:\"Picture1-500x322.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"wide_tall\";a:4:{s:4:\"file\";s:21:\"Picture1-1000x322.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:322;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(116, 37, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Topic\n    [text* your-subject] </label>\n\n<label>How Did You Found Us?\n    [select* HowDidYouFindUs \"MRS-K Event\" \"Recommendation\" \"Journal\" \"Search engine\" \"Other\"]\n</label>\n\n<label> Company/Affiliation\n    [text company] </label>\n\n<label> Title/Position\n    [text position] </label>\n\n<label> Address\n    [text* address] </label>\n\n<label> Country\n    [text* country] </label>\n\n<label> Phone\n    [text* phone] </label>\n\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(117, 37, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:51:\"Contact Message from MRSK Website: \"[your-subject]\"\";s:6:\"sender\";s:12:\"[your-email]\";s:9:\"recipient\";s:37:\"dismuskiplimo@gmail.com, [your-email]\";s:4:\"body\";s:212:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nHow did you find us\n[HowDidYouFindUs]\n\nCompany\n[company]\n\nPosition\n[position]\n\nAddress\n[address]\n\nCountry\n[country]\n\nPhone\n[phone]\n\nMessage\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(118, 37, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:56:\"The Materials Research Society of Kenya \"[your-subject]\"\";s:6:\"sender\";s:65:\"The Materials Research Society of Kenya <dismuskiplimo@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:141:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on The Materials Research Society of Kenya (http://localhost/mrsk)\";s:18:\"additional_headers\";s:33:\"Reply-To: dismuskiplimo@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(119, 37, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(120, 37, '_additional_settings', ''),
(121, 37, '_locale', 'en_US'),
(124, 39, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(125, 40, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(126, 41, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(129, 43, '_wp_attached_file', '2018/04/CMMS-Workshop-MMUST.jpg'),
(130, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1365;s:6:\"height\";i:768;s:4:\"file\";s:31:\"2018/04/CMMS-Workshop-MMUST.jpg\";s:5:\"sizes\";a:20:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"CMMS-Workshop-MMUST-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"portfolio-thumb\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-600x403.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"portfolio-thumb_small\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-400x269.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"wide\";a:4:{s:4:\"file\";s:32:\"CMMS-Workshop-MMUST-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"wide_small\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-670x335.jpg\";s:5:\"width\";i:670;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"regular\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"regular_small\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tall\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-500x768.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"wide_tall\";a:4:{s:4:\"file\";s:32:\"CMMS-Workshop-MMUST-1000x768.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"large_featured\";a:4:{s:4:\"file\";s:32:\"CMMS-Workshop-MMUST-1365x700.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"CMMS-Workshop-MMUST-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 4, '_wp_page_template', 'default'),
(132, 4, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(133, 4, 'nectar-metabox-portfolio-display-sortable', 'off'),
(134, 4, '_nectar_full_screen_rows', 'off'),
(135, 4, '_nectar_full_screen_rows_animation', 'none'),
(136, 4, '_nectar_full_screen_rows_animation_speed', 'medium'),
(137, 4, '_nectar_full_screen_rows_overall_bg_color', ''),
(138, 4, '_nectar_full_screen_rows_anchors', 'off'),
(139, 4, '_nectar_full_screen_rows_mobile_disable', 'off'),
(140, 4, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(141, 4, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(142, 4, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(143, 4, '_nectar_full_screen_rows_footer', 'none'),
(144, 4, '_nectar_slider_bg_type', 'image_bg'),
(145, 4, '_nectar_canvas_shapes', ''),
(146, 4, '_nectar_media_upload_webm', ''),
(147, 4, '_nectar_media_upload_mp4', ''),
(148, 4, '_nectar_media_upload_ogv', ''),
(149, 4, '_nectar_slider_preview_image', ''),
(150, 4, '_nectar_header_bg', ''),
(151, 4, '_nectar_header_parallax', 'off'),
(152, 4, '_nectar_header_box_roll', 'off'),
(153, 4, '_nectar_header_bg_height', ''),
(154, 4, '_nectar_header_fullscreen', 'off'),
(155, 4, '_nectar_header_title', ''),
(156, 4, '_nectar_header_subtitle', ''),
(157, 4, '_nectar_page_header_text-effect', 'none'),
(158, 4, '_nectar_particle_rotation_timing', ''),
(159, 4, '_nectar_particle_disable_explosion', 'off'),
(160, 4, '_nectar_page_header_alignment', 'left'),
(161, 4, '_nectar_page_header_alignment_v', 'middle'),
(162, 4, '_nectar_page_header_bg_alignment', 'center'),
(163, 4, '_nectar_header_bg_color', ''),
(164, 4, '_nectar_header_font_color', ''),
(165, 4, '_nectar_header_bg_overlay_color', ''),
(166, 4, '_wpb_vc_js_status', 'true'),
(167, 4, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(168, 6, '_wp_page_template', 'default'),
(169, 6, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(170, 6, 'nectar-metabox-portfolio-display-sortable', 'off'),
(171, 6, '_nectar_full_screen_rows', 'off'),
(172, 6, '_nectar_full_screen_rows_animation', 'none'),
(173, 6, '_nectar_full_screen_rows_animation_speed', 'medium'),
(174, 6, '_nectar_full_screen_rows_overall_bg_color', ''),
(175, 6, '_nectar_full_screen_rows_anchors', 'off'),
(176, 6, '_nectar_full_screen_rows_mobile_disable', 'off'),
(177, 6, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(178, 6, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(179, 6, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(180, 6, '_nectar_full_screen_rows_footer', 'none'),
(181, 6, '_nectar_slider_bg_type', 'image_bg'),
(182, 6, '_nectar_canvas_shapes', ''),
(183, 6, '_nectar_media_upload_webm', ''),
(184, 6, '_nectar_media_upload_mp4', ''),
(185, 6, '_nectar_media_upload_ogv', ''),
(186, 6, '_nectar_slider_preview_image', ''),
(187, 6, '_nectar_header_bg', ''),
(188, 6, '_nectar_header_parallax', 'off'),
(189, 6, '_nectar_header_box_roll', 'off'),
(190, 6, '_nectar_header_bg_height', ''),
(191, 6, '_nectar_header_fullscreen', 'off'),
(192, 6, '_nectar_header_title', ''),
(193, 6, '_nectar_header_subtitle', ''),
(194, 6, '_nectar_page_header_text-effect', 'none'),
(195, 6, '_nectar_particle_rotation_timing', ''),
(196, 6, '_nectar_particle_disable_explosion', 'off'),
(197, 6, '_nectar_page_header_alignment', 'left'),
(198, 6, '_nectar_page_header_alignment_v', 'middle'),
(199, 6, '_nectar_page_header_bg_alignment', 'center'),
(200, 6, '_nectar_header_bg_color', ''),
(201, 6, '_nectar_header_font_color', ''),
(202, 6, '_nectar_header_bg_overlay_color', ''),
(203, 6, '_wpb_vc_js_status', 'true'),
(204, 6, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(205, 10, '_wp_page_template', 'default'),
(206, 10, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(207, 10, 'nectar-metabox-portfolio-display-sortable', 'off'),
(208, 10, '_nectar_full_screen_rows', 'off'),
(209, 10, '_nectar_full_screen_rows_animation', 'none'),
(210, 10, '_nectar_full_screen_rows_animation_speed', 'medium'),
(211, 10, '_nectar_full_screen_rows_overall_bg_color', ''),
(212, 10, '_nectar_full_screen_rows_anchors', 'off'),
(213, 10, '_nectar_full_screen_rows_mobile_disable', 'off'),
(214, 10, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(215, 10, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(216, 10, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(217, 10, '_nectar_full_screen_rows_footer', 'none'),
(218, 10, '_nectar_slider_bg_type', 'image_bg'),
(219, 10, '_nectar_canvas_shapes', ''),
(220, 10, '_nectar_media_upload_webm', ''),
(221, 10, '_nectar_media_upload_mp4', ''),
(222, 10, '_nectar_media_upload_ogv', ''),
(223, 10, '_nectar_slider_preview_image', ''),
(224, 10, '_nectar_header_bg', ''),
(225, 10, '_nectar_header_parallax', 'off'),
(226, 10, '_nectar_header_box_roll', 'off'),
(227, 10, '_nectar_header_bg_height', ''),
(228, 10, '_nectar_header_fullscreen', 'off'),
(229, 10, '_nectar_header_title', ''),
(230, 10, '_nectar_header_subtitle', ''),
(231, 10, '_nectar_page_header_text-effect', 'none'),
(232, 10, '_nectar_particle_rotation_timing', ''),
(233, 10, '_nectar_particle_disable_explosion', 'off'),
(234, 10, '_nectar_page_header_alignment', 'left'),
(235, 10, '_nectar_page_header_alignment_v', 'middle'),
(236, 10, '_nectar_page_header_bg_alignment', 'center'),
(237, 10, '_nectar_header_bg_color', ''),
(238, 10, '_nectar_header_font_color', ''),
(239, 10, '_nectar_header_bg_overlay_color', ''),
(240, 10, '_wpb_vc_js_status', 'true'),
(241, 10, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(242, 65, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(243, 65, '_menu_item_type', 'custom'),
(244, 65, '_menu_item_menu_item_parent', '81'),
(245, 65, '_menu_item_object_id', '65'),
(246, 65, '_menu_item_object', 'custom'),
(247, 65, '_menu_item_target', ''),
(248, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 65, '_menu_item_xfn', ''),
(250, 65, '_menu_item_url', 'https://www.iumrshq.org/'),
(252, 66, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(253, 66, '_menu_item_type', 'custom'),
(254, 66, '_menu_item_menu_item_parent', '65'),
(255, 66, '_menu_item_object_id', '66'),
(256, 66, '_menu_item_object', 'custom'),
(257, 66, '_menu_item_target', ''),
(258, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 66, '_menu_item_xfn', ''),
(260, 66, '_menu_item_url', 'http://www.nacosti.go.ke'),
(262, 67, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(263, 67, '_menu_item_type', 'custom'),
(264, 67, '_menu_item_menu_item_parent', '65'),
(265, 67, '_menu_item_object_id', '67'),
(266, 67, '_menu_item_object', 'custom'),
(267, 67, '_menu_item_target', ''),
(268, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 67, '_menu_item_xfn', ''),
(270, 67, '_menu_item_url', 'http://www.kenet.or.ke'),
(272, 30, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(273, 29, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(274, 27, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(275, 28, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(276, 22, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(277, 23, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(278, 26, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(280, 24, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(281, 69, '_wp_attached_file', '2018/04/6096188ce806c80cf30dca727fe7c237.png'),
(282, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:192;s:4:\"file\";s:44:\"2018/04/6096188ce806c80cf30dca727fe7c237.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"6096188ce806c80cf30dca727fe7c237-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:44:\"6096188ce806c80cf30dca727fe7c237-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"6096188ce806c80cf30dca727fe7c237-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"6096188ce806c80cf30dca727fe7c237-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 70, '_wp_attached_file', '2018/04/phone-icon.png'),
(284, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:192;s:4:\"file\";s:22:\"2018/04/phone-icon.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"phone-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:22:\"phone-icon-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"phone-icon-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"phone-icon-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(285, 71, '_wp_attached_file', '2018/04/343e56b9c4e10c22ceee83cb23e3ba62.png'),
(286, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:192;s:6:\"height\";i:192;s:4:\"file\";s:44:\"2018/04/343e56b9c4e10c22ceee83cb23e3ba62.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"343e56b9c4e10c22ceee83cb23e3ba62-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"portfolio-widget\";a:4:{s:4:\"file\";s:44:\"343e56b9c4e10c22ceee83cb23e3ba62-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"343e56b9c4e10c22ceee83cb23e3ba62-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"343e56b9c4e10c22ceee83cb23e3ba62-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 16, '_wp_page_template', 'default'),
(288, 16, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(289, 16, 'nectar-metabox-portfolio-display-sortable', 'off'),
(290, 16, '_nectar_full_screen_rows', 'off'),
(291, 16, '_nectar_full_screen_rows_animation', 'none'),
(292, 16, '_nectar_full_screen_rows_animation_speed', 'medium'),
(293, 16, '_nectar_full_screen_rows_overall_bg_color', ''),
(294, 16, '_nectar_full_screen_rows_anchors', 'off'),
(295, 16, '_nectar_full_screen_rows_mobile_disable', 'off'),
(296, 16, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(297, 16, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(298, 16, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(299, 16, '_nectar_full_screen_rows_footer', 'none'),
(300, 16, '_nectar_slider_bg_type', 'image_bg'),
(301, 16, '_nectar_canvas_shapes', ''),
(302, 16, '_nectar_media_upload_webm', ''),
(303, 16, '_nectar_media_upload_mp4', ''),
(304, 16, '_nectar_media_upload_ogv', ''),
(305, 16, '_nectar_slider_preview_image', ''),
(306, 16, '_nectar_header_bg', ''),
(307, 16, '_nectar_header_parallax', 'off'),
(308, 16, '_nectar_header_box_roll', 'off'),
(309, 16, '_nectar_header_bg_height', ''),
(310, 16, '_nectar_header_fullscreen', 'off'),
(311, 16, '_nectar_header_title', ''),
(312, 16, '_nectar_header_subtitle', ''),
(313, 16, '_nectar_page_header_text-effect', 'none'),
(314, 16, '_nectar_particle_rotation_timing', ''),
(315, 16, '_nectar_particle_disable_explosion', 'off'),
(316, 16, '_nectar_page_header_alignment', 'left'),
(317, 16, '_nectar_page_header_alignment_v', 'middle'),
(318, 16, '_nectar_page_header_bg_alignment', 'center'),
(319, 16, '_nectar_header_bg_color', ''),
(320, 16, '_nectar_header_font_color', ''),
(321, 16, '_nectar_header_bg_overlay_color', ''),
(322, 16, '_wpb_vc_js_status', 'true'),
(323, 16, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(324, 37, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(325, 2, '_wp_trash_meta_status', 'publish'),
(326, 2, '_wp_trash_meta_time', '1523365974'),
(327, 2, '_wp_desired_post_slug', 'sample-page'),
(328, 2, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(329, 20, '_wp_trash_meta_status', 'publish'),
(330, 20, '_wp_trash_meta_time', '1523366019'),
(331, 20, '_wp_desired_post_slug', 'useful-links'),
(332, 20, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(333, 81, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(334, 81, '_menu_item_type', 'custom'),
(335, 81, '_menu_item_menu_item_parent', '0'),
(336, 81, '_menu_item_object_id', '81'),
(337, 81, '_menu_item_object', 'custom'),
(338, 81, '_menu_item_target', ''),
(339, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 81, '_menu_item_xfn', ''),
(341, 81, '_menu_item_url', '#'),
(343, 84, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(344, 84, '_edit_last', '1'),
(345, 84, '_edit_lock', '1523367692:1'),
(346, 84, '_dedo_file_url', 'http://localhost/mrsk/wp-content/uploads/delightful-downloads/2018/04/ke019en.pdf'),
(347, 84, '_dedo_file_size', '1271225'),
(348, 84, '_dedo_file_count', '1'),
(349, 84, '_dedo_file_options', 'a:0:{}'),
(350, 18, '_wp_page_template', 'default'),
(351, 18, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(352, 18, 'nectar-metabox-portfolio-display-sortable', 'off'),
(353, 18, '_nectar_full_screen_rows', 'off'),
(354, 18, '_nectar_full_screen_rows_animation', 'none'),
(355, 18, '_nectar_full_screen_rows_animation_speed', 'medium'),
(356, 18, '_nectar_full_screen_rows_overall_bg_color', ''),
(357, 18, '_nectar_full_screen_rows_anchors', 'off'),
(358, 18, '_nectar_full_screen_rows_mobile_disable', 'off'),
(359, 18, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(360, 18, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(361, 18, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(362, 18, '_nectar_full_screen_rows_footer', 'none'),
(363, 18, '_nectar_slider_bg_type', 'image_bg'),
(364, 18, '_nectar_canvas_shapes', ''),
(365, 18, '_nectar_media_upload_webm', ''),
(366, 18, '_nectar_media_upload_mp4', ''),
(367, 18, '_nectar_media_upload_ogv', ''),
(368, 18, '_nectar_slider_preview_image', ''),
(369, 18, '_nectar_header_bg', ''),
(370, 18, '_nectar_header_parallax', 'off'),
(371, 18, '_nectar_header_box_roll', 'off'),
(372, 18, '_nectar_header_bg_height', ''),
(373, 18, '_nectar_header_fullscreen', 'off'),
(374, 18, '_nectar_header_title', ''),
(375, 18, '_nectar_header_subtitle', ''),
(376, 18, '_nectar_page_header_text-effect', 'none'),
(377, 18, '_nectar_particle_rotation_timing', ''),
(378, 18, '_nectar_particle_disable_explosion', 'off'),
(379, 18, '_nectar_page_header_alignment', 'left'),
(380, 18, '_nectar_page_header_alignment_v', 'middle'),
(381, 18, '_nectar_page_header_bg_alignment', 'center'),
(382, 18, '_nectar_header_bg_color', ''),
(383, 18, '_nectar_header_font_color', ''),
(384, 18, '_nectar_header_bg_overlay_color', ''),
(385, 18, '_wpb_vc_js_status', 'true'),
(386, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(387, 87, '_wp_attached_file', '2018/04/ke019en.pdf'),
(388, 88, '_wp_attached_file', '2018/04/ke019en-1.pdf'),
(389, 87, '_edit_lock', '1523367881:1'),
(390, 91, '_wp_attached_file', '2018/04/MRSK_membership_application_form-Final.docx'),
(391, 91, '_edit_lock', '1523368222:1'),
(392, 8, '_wp_page_template', 'default'),
(393, 8, 'nectar-metabox-portfolio-display', 'a:1:{i:0;s:3:\"all\";}'),
(394, 8, 'nectar-metabox-portfolio-display-sortable', 'off'),
(395, 8, '_nectar_full_screen_rows', 'off'),
(396, 8, '_nectar_full_screen_rows_animation', 'none'),
(397, 8, '_nectar_full_screen_rows_animation_speed', 'medium'),
(398, 8, '_nectar_full_screen_rows_overall_bg_color', ''),
(399, 8, '_nectar_full_screen_rows_anchors', 'off'),
(400, 8, '_nectar_full_screen_rows_mobile_disable', 'off'),
(401, 8, '_nectar_full_screen_rows_row_bg_animation', 'none'),
(402, 8, '_nectar_full_screen_rows_dot_navigation', 'tooltip'),
(403, 8, '_nectar_full_screen_rows_content_overflow', 'scrollbar'),
(404, 8, '_nectar_full_screen_rows_footer', 'none'),
(405, 8, '_nectar_slider_bg_type', 'image_bg'),
(406, 8, '_nectar_canvas_shapes', ''),
(407, 8, '_nectar_media_upload_webm', ''),
(408, 8, '_nectar_media_upload_mp4', ''),
(409, 8, '_nectar_media_upload_ogv', ''),
(410, 8, '_nectar_slider_preview_image', ''),
(411, 8, '_nectar_header_bg', ''),
(412, 8, '_nectar_header_parallax', 'off'),
(413, 8, '_nectar_header_box_roll', 'off'),
(414, 8, '_nectar_header_bg_height', ''),
(415, 8, '_nectar_header_fullscreen', 'off'),
(416, 8, '_nectar_header_title', ''),
(417, 8, '_nectar_header_subtitle', ''),
(418, 8, '_nectar_page_header_text-effect', 'none'),
(419, 8, '_nectar_particle_rotation_timing', ''),
(420, 8, '_nectar_particle_disable_explosion', 'off'),
(421, 8, '_nectar_page_header_alignment', 'left'),
(422, 8, '_nectar_page_header_alignment_v', 'middle'),
(423, 8, '_nectar_page_header_bg_alignment', 'center'),
(424, 8, '_nectar_header_bg_color', ''),
(425, 8, '_nectar_header_font_color', ''),
(426, 8, '_nectar_header_bg_overlay_color', ''),
(427, 8, '_wpb_vc_js_status', 'true'),
(428, 8, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(433, 95, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(434, 96, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}');

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
(1, 1, '2018-04-10 07:28:42', '2018-04-10 07:28:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-10 07:28:42', '2018-04-10 07:28:42', '', 0, 'http://localhost/mrsk/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-10 07:28:42', '2018-04-10 07:28:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/mrsk/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-10 13:12:54', '2018-04-10 13:12:54', '', 0, 'http://localhost/mrsk/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-10 07:29:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-10 07:29:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-10 07:39:21', '2018-04-10 07:39:21', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][layerslider_vc id=\"1\"][/vc_column][/vc_row]', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-10 09:27:04', '2018-04-10 09:27:04', '', 0, 'http://localhost/mrsk/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-04-10 07:39:21', '2018-04-10 07:39:21', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 07:39:21', '2018-04-10 07:39:21', '', 4, 'http://localhost/mrsk/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-10 07:39:33', '2018-04-10 07:39:33', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Governance</h3>\r\nThe Materials Research Society Kenya is governed by a Governing Council or Office Bearers constituting of:\r\n<strong>Chairman - Chairman\r\nVice - Chairman -Vice -Chairman\r\nSecretary - member\r\nTreasurer - member\r\nAssistant secretary - member\r\nEditor-in-Chief\r\nAssistant Editor-in-Chief</strong>.\r\n\r\nThe Governing council may appoint committees each committee is responsible for formulating policy and strategy issues in their specific areas for full consideration. The chairs of these committees plus the officers comprise the office bearers and selected members.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-04-10 10:11:43', '2018-04-10 10:11:43', '', 0, 'http://localhost/mrsk/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-10 07:39:33', '2018-04-10 07:39:33', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 07:39:33', '2018-04-10 07:39:33', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-10 07:39:46', '2018-04-10 07:39:46', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]MEMBERSHIP/REGISTRATION[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Membership/Registration</h3>\r\nThere shall be an entry fee and an annual membership subscription. The entry fee is payable on application for membership and is refundable in full case of unsuccessful application. The first annual membership fee is payable on admission to membership and thereafter on the first day of January in each year. Click below to download Membership application form.\r\n\r\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/MRSK_membership_application_form-Final.docx\">Download Membership Application Form</a>\r\n<h3>Member Directory</h3>\r\n<a href=\"#\">Member Directory</a>\r\n<h3>Code of Conduct</h3>\r\nMRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'MEMBERSHIP', '', 'publish', 'closed', 'closed', '', 'membership', '', '', '2018-04-10 13:58:32', '2018-04-10 13:58:32', '', 0, 'http://localhost/mrsk/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-10 07:39:46', '2018-04-10 07:39:46', '', 'MEMBERSHIP', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-10 07:39:46', '2018-04-10 07:39:46', '', 8, 'http://localhost/mrsk/2018/04/10/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-10 07:40:06', '2018-04-10 07:40:06', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'publish', 'closed', 'closed', '', 'code-of-conduct', '', '', '2018-04-10 11:16:05', '2018-04-10 11:16:05', '', 0, 'http://localhost/mrsk/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-10 07:40:06', '2018-04-10 07:40:06', '', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 07:40:06', '2018-04-10 07:40:06', '', 10, 'http://localhost/mrsk/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-10 07:40:23', '2018-04-10 07:40:23', '', 'JOURNALS', '', 'publish', 'closed', 'closed', '', 'journals', '', '', '2018-04-10 07:40:23', '2018-04-10 07:40:23', '', 0, 'http://localhost/mrsk/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-10 07:40:23', '2018-04-10 07:40:23', '', 'JOURNALS', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-10 07:40:23', '2018-04-10 07:40:23', '', 12, 'http://localhost/mrsk/2018/04/10/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-10 07:42:35', '2018-04-10 07:42:35', '', 'NEWS FEED', '', 'publish', 'closed', 'closed', '', 'news-feed', '', '', '2018-04-10 07:42:35', '2018-04-10 07:42:35', '', 0, 'http://localhost/mrsk/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-04-10 07:40:38', '2018-04-10 07:40:38', '', 'NEWS FEED', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-04-10 07:40:38', '2018-04-10 07:40:38', '', 14, 'http://localhost/mrsk/2018/04/10/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-04-10 07:42:15', '2018-04-10 07:42:15', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">CONTACT INFO</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:webmaster@mrsk.or.ke\">webmaster@mrsk.or.ke</a></p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Contact form</h3>\r\nIf you have any ideas or questions, please feel free to contact us using our info or contact form below.[/vc_column_text][contact-form-7 id=\"37\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjEwMCUyNSUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-04-10 14:46:49', '2018-04-10 14:46:49', '', 0, 'http://localhost/mrsk/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-04-10 07:41:15', '2018-04-10 07:41:15', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 07:41:15', '2018-04-10 07:41:15', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-10 07:42:24', '2018-04-10 07:42:24', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]DOWNLOADS\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>KENYAN CONSTITUTION</h3>\r\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/ke019en.pdf\">Download Kenyan Constitution</a>\r\n<h3>MINUTES</h3>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'DOWNLOADS', '', 'publish', 'closed', 'closed', '', 'downloads', '', '', '2018-04-10 13:46:43', '2018-04-10 13:46:43', '', 0, 'http://localhost/mrsk/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-04-10 07:41:29', '2018-04-10 07:41:29', '', 'DOWNLOADS', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-10 07:41:29', '2018-04-10 07:41:29', '', 18, 'http://localhost/mrsk/2018/04/10/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-10 07:41:48', '2018-04-10 07:41:48', '', 'USEFUL LINKS', '', 'trash', 'closed', 'closed', '', 'useful-links__trashed', '', '', '2018-04-10 13:13:39', '2018-04-10 13:13:39', '', 0, 'http://localhost/mrsk/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-04-10 07:41:36', '2018-04-10 07:41:36', '', 'USEFUL LINKS', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-04-10 07:41:36', '2018-04-10 07:41:36', '', 20, 'http://localhost/mrsk/2018/04/10/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-04-10 07:52:29', '2018-04-10 07:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2018-04-10 07:52:30', '2018-04-10 07:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=23', 6, 'nav_menu_item', '', 0),
(24, 1, '2018-04-10 07:52:30', '2018-04-10 07:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=24', 12, 'nav_menu_item', '', 0),
(26, 1, '2018-04-10 07:52:30', '2018-04-10 07:52:30', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=26', 7, 'nav_menu_item', '', 0),
(27, 1, '2018-04-10 07:52:29', '2018-04-10 07:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2018-04-10 07:52:29', '2018-04-10 07:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2018-04-10 07:52:29', '2018-04-10 07:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2018-04-10 07:52:29', '2018-04-10 07:52:29', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-04-10 13:14:31', '2018-04-10 13:14:31', '', 0, 'http://localhost/mrsk/?p=30', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-04-10 08:42:54', '2018-04-10 08:42:54', '', 'Picture1', '', 'inherit', 'open', 'closed', '', 'picture1', '', '', '2018-04-10 08:42:54', '2018-04-10 08:42:54', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/Picture1.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-04-10 08:45:09', '2018-04-10 08:45:09', '', 'ggg', '', 'inherit', 'open', 'closed', '', 'ggg', '', '', '2018-04-10 08:45:09', '2018-04-10 08:45:09', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/ggg.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-04-10 08:45:34', '2018-04-10 08:45:34', 'http://localhost/mrsk/wp-content/uploads/2018/04/cropped-Picture1.png', 'cropped-Picture1.png', '', 'inherit', 'open', 'closed', '', 'cropped-picture1-png', '', '', '2018-04-10 08:45:34', '2018-04-10 08:45:34', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/cropped-Picture1.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-04-10 08:48:52', '2018-04-10 08:48:52', '{\n    \"site_icon\": {\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 08:46:36\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 08:46:36\"\n    },\n    \"page_on_front\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 08:46:36\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"14\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-10 08:46:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6012bf3f-3cf8-43de-b6c9-61ebe49ceb0d', '', '', '2018-04-10 08:48:52', '2018-04-10 08:48:52', '', 0, 'http://localhost/mrsk/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2018-04-10 08:58:37', '2018-04-10 08:58:37', '', 'Picture1', '', 'inherit', 'open', 'closed', '', 'picture1-2', '', '', '2018-04-10 08:58:37', '2018-04-10 08:58:37', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/Picture1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-04-10 09:04:38', '2018-04-10 09:04:38', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Topic\r\n    [text* your-subject] </label>\r\n\r\n<label>How Did You Found Us?\r\n    [select* HowDidYouFindUs \"MRS-K Event\" \"Recommendation\" \"Journal\" \"Search engine\" \"Other\"]\r\n</label>\r\n\r\n<label> Company/Affiliation\r\n    [text company] </label>\r\n\r\n<label> Title/Position\r\n    [text position] </label>\r\n\r\n<label> Address\r\n    [text* address] </label>\r\n\r\n<label> Country\r\n    [text* country] </label>\r\n\r\n<label> Phone\r\n    [text* phone] </label>\r\n\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nContact Message from MRSK Website: \"[your-subject]\"\n[your-email]\ndismuskiplimo@gmail.com, [your-email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nHow did you find us\r\n[HowDidYouFindUs]\r\n\r\nCompany\r\n[company]\r\n\r\nPosition\r\n[position]\r\n\r\nAddress\r\n[address]\r\n\r\nCountry\r\n[country]\r\n\r\nPhone\r\n[phone]\r\n\r\nMessage\r\n[your-message]\nReply-To: [your-email]\n\n\n\n\nThe Materials Research Society of Kenya \"[your-subject]\"\nThe Materials Research Society of Kenya <dismuskiplimo@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on The Materials Research Society of Kenya (http://localhost/mrsk)\nReply-To: dismuskiplimo@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-10 13:12:26', '2018-04-10 13:12:26', '', 0, 'http://localhost/mrsk/?post_type=wpcf7_contact_form&#038;p=37', 0, 'wpcf7_contact_form', '', 0),
(39, 1, '2018-04-10 09:14:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 09:14:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?post_type=nectar_slider&p=39', 0, 'nectar_slider', '', 0),
(40, 1, '2018-04-10 09:15:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 09:15:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?post_type=nectar_slider&p=40', 0, 'nectar_slider', '', 0),
(41, 1, '2018-04-10 09:16:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 09:16:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?post_type=home_slider&p=41', 0, 'home_slider', '', 0),
(43, 1, '2018-04-10 09:24:44', '2018-04-10 09:24:44', '', 'CMMS Workshop MMUST', '', 'inherit', 'open', 'closed', '', 'cmms-workshop-mmust', '', '', '2018-04-10 09:24:44', '2018-04-10 09:24:44', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/CMMS-Workshop-MMUST.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-04-10 09:26:39', '2018-04-10 09:26:39', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2018-04-10 09:26:39', '2018-04-10 09:26:39', '', 4, 'http://localhost/mrsk/2018/04/10/4-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2018-04-10 09:27:04', '2018-04-10 09:27:04', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][layerslider_vc id=\"1\"][/vc_column][/vc_row]', 'HOME', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 09:27:04', '2018-04-10 09:27:04', '', 4, 'http://localhost/mrsk/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-04-10 09:40:48', '2018-04-10 09:40:48', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:40:48', '2018-04-10 09:40:48', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-10 10:05:45', '2018-04-10 10:05:45', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\n\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\n<h3>Mission</h3>\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\n<h3>Vision</h3>\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\n<h3>Core Values</h3>\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\n<ul>\n 	<li><strong>Partnerships and collaborations</strong>\nWe shall nurture partnerships and collaborations of value to our members</li>\n 	<li><strong>Promoting technical excellence\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\n 	<li><strong>Inclusive and egalitarian\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\n 	<li><strong>Research Ethics and Sustainability\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\n 	<li><strong>Open access\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\n</ul>\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\n\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n\n[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2018-04-10 10:05:45', '2018-04-10 10:05:45', '', 6, 'http://localhost/mrsk/2018/04/10/6-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2018-04-10 09:45:33', '2018-04-10 09:45:33', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:45:33', '2018-04-10 09:45:33', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-10 09:47:50', '2018-04-10 09:47:50', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:47:50', '2018-04-10 09:47:50', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2018-04-10 09:50:11', '2018-04-10 09:50:11', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"33\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:50:11', '2018-04-10 09:50:11', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-04-10 09:52:16', '2018-04-10 09:52:16', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:52:16', '2018-04-10 09:52:16', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-10 09:54:03', '2018-04-10 09:54:03', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:54:03', '2018-04-10 09:54:03', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-04-10 09:57:59', '2018-04-10 09:57:59', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][fancy-ul icon_type=\"standard_dash\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations:</strong> We shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence:</strong> We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian:</strong> We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability:</strong> We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access:</strong> We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 09:57:59', '2018-04-10 09:57:59', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-10 10:01:15', '2018-04-10 10:01:15', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations:</strong> We shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence:</strong> We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian:</strong> We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability:</strong> We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access:</strong> We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:01:15', '2018-04-10 10:01:15', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-10 10:02:33', '2018-04-10 10:02:33', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:02:33', '2018-04-10 10:02:33', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-04-10 10:03:27', '2018-04-10 10:03:27', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:03:27', '2018-04-10 10:03:27', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-10 10:06:05', '2018-04-10 10:06:05', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Governance</h3>\r\nThe Materials Research Society Kenya is governed by a Governing Council or Office Bearers constituting of: Chairman –Chairman; Vice-Chairman-Vice- Chairman; Secretary-member; Treasurer –member; Assistant secretary-member; Editor-in-Chief; Assistant Editor-in-Chief as elected. The Governing council may appoint committees each committee is responsible for formulating policy and strategy issues in their specific areas for full consideration. The chairs of these committees plus the officers comprise the office bearers and selected members.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:06:05', '2018-04-10 10:06:05', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-10 10:08:03', '2018-04-10 10:08:03', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Governance</h3>\r\nThe Materials Research Society Kenya is governed by a Governing Council or Office Bearers constituting of:\r\n\r\n<strong>Chairman –Chairman; Vice-Chairman-Vice- Chairman; Secretary-member; Treasurer –member; Assistant secretary-member; Editor-in-Chief; Assistant Editor-in-Chief</strong> as elected.\r\n\r\nThe Governing council may appoint committees each committee is responsible for formulating policy and strategy issues in their specific areas for full consideration. The chairs of these committees plus the officers comprise the office bearers and selected members.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:08:03', '2018-04-10 10:08:03', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(59, 1, '2018-04-10 10:10:47', '2018-04-10 10:10:47', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]ABOUT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]The Materials Research Society of Kenya was established in 2018 by a visionary group of scientists who shared the belief that their professional interests were broader in scope than existing single-discipline societies and that a new interdisciplinary organization was needed. These were drawn from Kenya Education Network(KENET) (<a href=\"http://www.kenet.or.ke\">www.kenet.or.ke</a>) /Industry /universities/ , National Commission for Science Technology and Innovation (NACOSTI) (<a href=\"http://www.nacosti.go.ke\">www.nacosti.go.ke</a>) converged to develop domestic new material research using wide variety of knowledge in Physics, Chemistry, Nanoscience and nanotechnology, Geology, Geochemistry, Geophysics, Metallurgy, Nuclear Physics, Nanomedicine, Mineralogy, Computational Materials broadly classified as Material Science. This was aimed at building Kenya’s capacity to engage in as well as activation of industry-university technology exchange in materials science and engineering fields.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"32\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"5/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Mission</h3>\r\nTo promote interdisciplinary knowledge and innovation exchange through Materials Research for technology transfer and industrialization.\r\n<h3>Vision</h3>\r\nTo be a dynamic, interactive and multidisciplinary scientific community of technical excellence for innovation ignition and technology transfer.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Core Values</h3>\r\nIn order to achieve the vision and mission, we will be guided by the following core values[/vc_column_text][fancy-ul icon_type=\"font_icon\" icon=\"icon-ok-sign\" color=\"Accent-Color\" alignment=\"left\"]\r\n<ul>\r\n 	<li><strong>Partnerships and collaborations</strong>\r\nWe shall nurture partnerships and collaborations of value to our members</li>\r\n 	<li><strong>Promoting technical excellence\r\n</strong>We shall foster excellence through advocating for research infrastructure in training institutions leading to Innovation.</li>\r\n 	<li><strong>Inclusive and egalitarian\r\n</strong>We shall promote gender, ethnic and university diversity in the recruitment of employees, capacity development and governance.</li>\r\n 	<li><strong>Research Ethics and Sustainability\r\n</strong>We embrace professionalism in our work and relationships and foster transparent and participative decision-making, accountability for decisions and ethical behaviour.</li>\r\n 	<li><strong>Open access\r\n</strong>We shall be guided by the principles of open access in the products and services we provide or promote.</li>\r\n</ul>\r\n[/fancy-ul][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Governance</h3>\r\nThe Materials Research Society Kenya is governed by a Governing Council or Office Bearers constituting of:\r\n\r\n<strong>Chairman - Chairman\r\nVice - Chairman -Vice -Chairman\r\nSecretary - member\r\nTreasurer - member\r\nAssistant secretary - member\r\nEditor-in-Chief\r\nAssistant Editor-in-Chief</strong>.\r\n\r\nThe Governing council may appoint committees each committee is responsible for formulating policy and strategy issues in their specific areas for full consideration. The chairs of these committees plus the officers comprise the office bearers and selected members.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"2/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-10 10:10:47', '2018-04-10 10:10:47', '', 6, 'http://localhost/mrsk/2018/04/10/6-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-10 11:15:53', '2018-04-10 11:15:53', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\n\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\n\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\n\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-04-10 11:15:53', '2018-04-10 11:15:53', '', 10, 'http://localhost/mrsk/2018/04/10/10-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-10 11:12:40', '2018-04-10 11:12:40', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 11:12:40', '2018-04-10 11:12:40', '', 10, 'http://localhost/mrsk/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-10 11:13:37', '2018-04-10 11:13:37', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"3/4\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/4\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 11:13:37', '2018-04-10 11:13:37', '', 10, 'http://localhost/mrsk/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-04-10 11:14:46', '2018-04-10 11:14:46', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 11:14:46', '2018-04-10 11:14:46', '', 10, 'http://localhost/mrsk/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-04-10 11:16:05', '2018-04-10 11:16:05', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CODE OF CONDUCT[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]MRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'CODE OF CONDUCT', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-10 11:16:05', '2018-04-10 11:16:05', '', 10, 'http://localhost/mrsk/2018/04/10/10-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-04-10 11:37:39', '2018-04-10 11:37:39', '', 'International Union of Materials Research Societies', '', 'publish', 'closed', 'closed', '', 'international-union-of-materials-research-societies', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=65', 9, 'nav_menu_item', '', 0),
(66, 1, '2018-04-10 11:37:39', '2018-04-10 11:37:39', '', 'National Commission for Science Technology and Innovation (NACOSTI)', '', 'publish', 'closed', 'closed', '', 'national-commission-for-science-technology-and-innovation-nacosti', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2018-04-10 11:37:39', '2018-04-10 11:37:39', '', 'Kenya Education Network', '', 'publish', 'closed', 'closed', '', 'kenya-education-network', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=67', 11, 'nav_menu_item', '', 0),
(68, 1, '2018-04-10 12:51:32', '2018-04-10 12:51:32', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\n\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\n<h3 style=\"text-align: center;\">LOCATION</h3>\n<p style=\"text-align: center;\">Multimedia University Of Kenya\nDepartment Of Chemistry\n\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\n<h3 style=\"text-align: center;\">PHONE</h3>\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\n\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\n<h3 style=\"text-align: center;\">ADDRESS</h3>\n<p style=\"text-align: center;\">MRS-K Website Administrator\nMultimedia University Of Kenya\nDepartment Of Chemistry\nP.O. Box 30305 Nairobi\n\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjYwMCUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"37\"][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2018-04-10 12:51:32', '2018-04-10 12:51:32', '', 16, 'http://localhost/mrsk/2018/04/10/16-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-10 11:50:39', '2018-04-10 11:50:39', '', '6096188ce806c80cf30dca727fe7c237', '', 'inherit', 'open', 'closed', '', '6096188ce806c80cf30dca727fe7c237', '', '', '2018-04-10 11:50:39', '2018-04-10 11:50:39', '', 16, 'http://localhost/mrsk/wp-content/uploads/2018/04/6096188ce806c80cf30dca727fe7c237.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2018-04-10 11:50:41', '2018-04-10 11:50:41', '', 'phone-icon', '', 'inherit', 'open', 'closed', '', 'phone-icon', '', '', '2018-04-10 11:50:41', '2018-04-10 11:50:41', '', 16, 'http://localhost/mrsk/wp-content/uploads/2018/04/phone-icon.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2018-04-10 11:50:43', '2018-04-10 11:50:43', '', '343e56b9c4e10c22ceee83cb23e3ba62', '', 'inherit', 'open', 'closed', '', '343e56b9c4e10c22ceee83cb23e3ba62', '', '', '2018-04-10 11:50:43', '2018-04-10 11:50:43', '', 16, 'http://localhost/mrsk/wp-content/uploads/2018/04/343e56b9c4e10c22ceee83cb23e3ba62.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-04-10 11:52:46', '2018-04-10 11:52:46', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 11:52:46', '2018-04-10 11:52:46', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-04-10 11:54:56', '2018-04-10 11:54:56', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi[/vc_column_text][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 11:54:56', '2018-04-10 11:54:56', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-04-10 11:58:38', '2018-04-10 11:58:38', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 11:58:38', '2018-04-10 11:58:38', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-04-10 12:01:35', '2018-04-10 12:01:35', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 12:01:35', '2018-04-10 12:01:35', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-04-10 12:17:01', '2018-04-10 12:17:01', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 12:17:01', '2018-04-10 12:17:01', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-04-10 12:45:50', '2018-04-10 12:45:50', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"37\"][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 12:45:50', '2018-04-10 12:45:50', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-04-10 12:47:22', '2018-04-10 12:47:22', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][nectar_gmap zoom=\"1\" marker_style=\"default\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"37\"][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 12:47:22', '2018-04-10 12:47:22', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2018-04-10 12:51:46', '2018-04-10 12:51:46', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjEwMCUyNSUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"37\"][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 12:51:46', '2018-04-10 12:51:46', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-04-10 13:12:54', '2018-04-10 13:12:54', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/mrsk/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-10 13:12:54', '2018-04-10 13:12:54', '', 2, 'http://localhost/mrsk/2018/04/10/2-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 'USEFUL LINKS', '', 'publish', 'closed', 'closed', '', 'useful-links', '', '', '2018-04-10 13:14:32', '2018-04-10 13:14:32', '', 0, 'http://localhost/mrsk/?p=81', 8, 'nav_menu_item', '', 0),
(82, 1, '2018-04-10 13:15:26', '2018-04-10 13:15:26', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi\r\n\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][contact-form-7 id=\"37\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjEwMCUyNSUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 13:15:26', '2018-04-10 13:15:26', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-04-10 13:16:48', '2018-04-10 13:16:48', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">PHONE</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Contact form</h3>\r\nIf you have any ideas or questions, please feel free to contact us using our info or contact form below.[/vc_column_text][contact-form-7 id=\"37\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjEwMCUyNSUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 13:16:48', '2018-04-10 13:16:48', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-04-10 13:36:11', '2018-04-10 13:36:11', '', 'Kenya Constitution', '', 'publish', 'closed', 'closed', '', 'kenya-constitution', '', '', '2018-04-10 13:36:11', '2018-04-10 13:36:11', '', 0, 'http://localhost/mrsk/?post_type=dedo_download&#038;p=84', 0, 'dedo_download', '', 0),
(85, 1, '2018-04-10 13:46:29', '2018-04-10 13:46:29', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]DOWNLOADS\n\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]KENYAN CONSTITUTION\n\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/ke019en.pdf\">Download Kenyan Constitution</a>[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'DOWNLOADS', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2018-04-10 13:46:29', '2018-04-10 13:46:29', '', 18, 'http://localhost/mrsk/2018/04/10/18-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2018-04-10 13:38:44', '2018-04-10 13:38:44', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]DOWNLOADS\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]KENYAN CONSTITUTION\r\n\r\n<code>[ddownload id=\"84\"]</code>[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'DOWNLOADS', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-10 13:38:44', '2018-04-10 13:38:44', '', 18, 'http://localhost/mrsk/2018/04/10/18-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-04-10 13:45:26', '2018-04-10 13:45:26', '', 'ke019en', '', 'inherit', 'open', 'closed', '', 'ke019en', '', '', '2018-04-10 13:45:26', '2018-04-10 13:45:26', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/ke019en.pdf', 0, 'attachment', 'application/pdf', 0),
(88, 1, '2018-04-10 13:45:37', '2018-04-10 13:45:37', '', 'ke019en', '', 'inherit', 'open', 'closed', '', 'ke019en-2', '', '', '2018-04-10 13:45:37', '2018-04-10 13:45:37', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/ke019en-1.pdf', 0, 'attachment', 'application/pdf', 0),
(89, 1, '2018-04-10 13:46:43', '2018-04-10 13:46:43', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]DOWNLOADS\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>KENYAN CONSTITUTION</h3>\r\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/ke019en.pdf\">Download Kenyan Constitution</a>\r\n<h3>MINUTES</h3>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'DOWNLOADS', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-10 13:46:43', '2018-04-10 13:46:43', '', 18, 'http://localhost/mrsk/2018/04/10/18-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-04-10 13:58:27', '2018-04-10 13:58:27', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]MEMBERSHIP/REGISTRATION[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\n<h3>Membership/Registration</h3>\nThere shall be an entry fee and an annual membership subscription. The entry fee is payable on application for membership and is refundable in full case of unsuccessful application. The first annual membership fee is payable on admission to membership and thereafter on the first day of January in each year. Click below to download Membership application form.\n\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/MRSK_membership_application_form-Final.docx\">Download Membership Application Form</a>\n<h3>Member Directory</h3>\n<a href=\"#\">Member Directory</a>\n<h3>Code of Conduct</h3>\nMRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\n\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\n\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\n\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'MEMBERSHIP', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-04-10 13:58:27', '2018-04-10 13:58:27', '', 8, 'http://localhost/mrsk/2018/04/10/8-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2018-04-10 13:52:28', '2018-04-10 13:52:28', '', 'MRSK_membership_application_form -Final', '', 'inherit', 'open', 'closed', '', 'mrsk_membership_application_form-final', '', '', '2018-04-10 13:52:28', '2018-04-10 13:52:28', '', 0, 'http://localhost/mrsk/wp-content/uploads/2018/04/MRSK_membership_application_form-Final.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(92, 1, '2018-04-10 13:58:32', '2018-04-10 13:58:32', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]MEMBERSHIP/REGISTRATION[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"4/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Membership/Registration</h3>\r\nThere shall be an entry fee and an annual membership subscription. The entry fee is payable on application for membership and is refundable in full case of unsuccessful application. The first annual membership fee is payable on admission to membership and thereafter on the first day of January in each year. Click below to download Membership application form.\r\n\r\n<a href=\"http://localhost/mrsk/wp-content/uploads/2018/04/MRSK_membership_application_form-Final.docx\">Download Membership Application Form</a>\r\n<h3>Member Directory</h3>\r\n<a href=\"#\">Member Directory</a>\r\n<h3>Code of Conduct</h3>\r\nMRSK members and event participants are expected to foster an inclusive, cooperative environment where all are welcomed, open dialogue is encouraged and all perspectives are appreciated.\r\n\r\nEvery member and event participant is expected to act in a professional, responsible and courteous manner while engaged in MRS events and activities. Unprofessional behavior, including disparaging comments and unwelcome conduct related to sex, race, color, ethnicity, gender, age, disability, orientation or religion, will not be tolerated.\r\n\r\nIf any member or event participant engages in unprofessional behaviour, MRSK Governing Council may take any action it deems appropriate, ranging from a simple warning to the offender to expulsion from current and future MRSK activities.\r\n\r\nMRSK’s intent is to foster the respectful behaviour embodied in the Code of Conduct and constitution. MRSK staff will be happy to help event participants contact venue authorities and otherwise assist with Code of Conduct concerns.[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/6\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][/vc_column][/vc_row]', 'MEMBERSHIP', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-10 13:58:32', '2018-04-10 13:58:32', '', 8, 'http://localhost/mrsk/2018/04/10/8-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-04-10 14:36:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 14:36:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?post_type=social_icon&p=95', 0, 'social_icon', '', 0),
(96, 1, '2018-04-10 14:37:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 14:37:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/mrsk/?post_type=social_icon&p=96', 0, 'social_icon', '', 0),
(97, 1, '2018-04-10 14:46:49', '2018-04-10 14:46:49', '[vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/1\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][heading]CONTACT US\r\n\r\n[/heading][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"69\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">LOCATION</h3>\r\n<p style=\"text-align: center;\">Multimedia University Of Kenya\r\nDepartment Of Chemistry</p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"70\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">CONTACT INFO</h3>\r\n<p style=\"text-align: center;\">+245 72X XXX XXX</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:webmaster@mrsk.or.ke\">webmaster@mrsk.or.ke</a></p>\r\n[/vc_column_text][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/3\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][image_with_animation image_url=\"71\" alignment=\"center\" animation=\"Fade In\" box_shadow=\"none\" max_width=\"100%\"][vc_column_text]\r\n<h3 style=\"text-align: center;\">ADDRESS</h3>\r\n<p style=\"text-align: center;\">MRS-K Website Administrator\r\nMultimedia University Of Kenya\r\nDepartment Of Chemistry\r\nP.O. Box 30305 Nairobi</p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row type=\"in_container\" full_screen_row_position=\"middle\" scene_position=\"center\" text_color=\"dark\" text_align=\"left\" overlay_strength=\"0.3\"][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_column_text]\r\n<h3>Contact form</h3>\r\nIf you have any ideas or questions, please feel free to contact us using our info or contact form below.[/vc_column_text][contact-form-7 id=\"37\"][/vc_column][vc_column column_padding=\"no-extra-padding\" column_padding_position=\"all\" background_color_opacity=\"1\" background_hover_color_opacity=\"1\" column_shadow=\"none\" width=\"1/2\" tablet_text_alignment=\"default\" phone_text_alignment=\"default\" column_border_width=\"none\" column_border_style=\"solid\"][vc_raw_html]JTNDaWZyYW1lJTIwc3JjJTNEJTIyaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlLmNvbSUyRm1hcHMlMkZlbWJlZCUzRnBiJTNEJTIxMW0xOCUyMTFtMTIlMjExbTMlMjExZDM5ODguNjU4MTIyMzc1ODYwMyUyMTJkMzYuNzY2NzYxNjE0NzUzOTc1JTIxM2QtMS4zODE3NzU5OTg5OTIyMjUlMjEybTMlMjExZjAlMjEyZjAlMjEzZjAlMjEzbTIlMjExaTEwMjQlMjEyaTc2OCUyMTRmMTMuMSUyMTNtMyUyMTFtMiUyMTFzMHgxODJmMDU5YmE1M2NjMjUzJTI1M0EweDg0ZjY1NDEzMzcxYmViYiUyMTJzTXVsdGltZWRpYSUyQlVuaXZlcnNpdHklMkJvZiUyQktlbnlhJTIxNWUwJTIxM20yJTIxMXNlbiUyMTJza2UlMjE0djE1MjMzNjQ2MjA1ODIlMjIlMjB3aWR0aCUzRCUyMjEwMCUyNSUyMiUyMGhlaWdodCUzRCUyMjQ1MCUyMiUyMGZyYW1lYm9yZGVyJTNEJTIyMCUyMiUyMHN0eWxlJTNEJTIyYm9yZGVyJTNBMCUyMiUyMGFsbG93ZnVsbHNjcmVlbiUzRSUzQyUyRmlmcmFtZSUzRQ==[/vc_raw_html][/vc_column][/vc_row]', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-10 14:46:49', '2018-04-10 14:46:49', '', 16, 'http://localhost/mrsk/2018/04/10/16-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE `wp_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'Main Menu', 'main-menu', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Uncategorized', 'uncategorized', 0);

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
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(81, 2, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0);

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
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"712e2bbf14fd773b0d2afee2c8a040fb07cea54eb9b68ac555cc6a481c3ed956\";a:4:{s:10:\"expiration\";i:1524554943;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0\";s:5:\"login\";i:1523345343;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1523369779'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(24, 1, 'ls-store-last-viewed', '2018-04-10'),
(25, 1, 'layerslider_help_wp_pointer', '1'),
(26, 1, 'nav_menu_recently_edited', '2');

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
(1, 'admin', '$P$Bc1QQqDL0REfD2KB1FX4SWbGze.zDj0', 'admin', 'dismuskiplimo@gmail.com', '', '2018-04-10 07:28:42', '', 0, 'admin');

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

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:711:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"dismuskiplimo@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1523524514);

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
-- Indexes for table `wp_ddownload_statistics`
--
ALTER TABLE `wp_ddownload_statistics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_layerslider_revisions`
--
ALTER TABLE `wp_layerslider_revisions`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rg_form_meta`
--
ALTER TABLE `wp_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_incomplete_submissions`
--
ALTER TABLE `wp_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_rg_lead_detail_long`
--
ALTER TABLE `wp_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

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
  ADD KEY `order_id` (`order_id`);

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
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

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
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_ddownload_statistics`
--
ALTER TABLE `wp_ddownload_statistics`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_layerslider_revisions`
--
ALTER TABLE `wp_layerslider_revisions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2560;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
