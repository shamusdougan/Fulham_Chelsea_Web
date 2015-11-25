-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 02:38 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fulham_chelsea`
--

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_assets`
--

CREATE TABLE IF NOT EXISTS `af8ks_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `af8ks_assets`
--

INSERT INTO `af8ks_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 524, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 76, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 77, 78, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 79, 80, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 81, 82, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 83, 84, 1, 'com_login', 'com_login', '{}'),
(13, 1, 85, 86, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 87, 88, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 89, 90, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 91, 92, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 93, 94, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 95, 130, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 131, 134, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 135, 136, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 137, 138, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 139, 140, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 141, 142, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 143, 144, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(26, 1, 145, 146, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 55, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 132, 133, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 8, 56, 65, 2, 'com_content.category.7', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(33, 27, 21, 22, 3, 'com_content.article.1', 'Module Variations', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 27, 23, 24, 3, 'com_content.article.4', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 27, 25, 26, 3, 'com_content.article.5', 'Dummy Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 27, 27, 28, 3, 'com_content.article.6', 'Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 27, 29, 30, 3, 'com_content.article.7', 'X2 Joomla Template', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 32, 57, 58, 3, 'com_content.article.8', 'Joomla Templates', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 32, 59, 60, 3, 'com_content.article.10', 'Joomla Themes', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 7, 16, 17, 2, 'com_contact.category.8', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(59, 1, 502, 503, 1, 'com_finder', 'com_finder', '{"core.admin":[],"core.manage":[]}'),
(64, 8, 66, 71, 2, 'com_content.category.10', 'template', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(65, 27, 37, 38, 3, 'com_content.article.24', 'Module Positions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 32, 63, 64, 3, 'com_content.article.23', 'JoomlaPlates', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 27, 39, 40, 3, 'com_content.article.13', 'Widgetkit / Slider / Lightbox', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 64, 67, 68, 3, 'com_content.article.28', 'Theme Configuration', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 8, 72, 73, 2, 'com_content.category.11', 'Article for Slider', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(77, 8, 74, 75, 2, 'com_content.category.12', 'Sample Tabs', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(87, 1, 508, 509, 1, 'com_k2', 'com_k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(89, 1, 510, 511, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.delete":{"6":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 64, 69, 70, 3, 'com_content.article.43', 'Slitslider Module for J3.x & J2.5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 27, 41, 42, 3, 'com_content.article.44', 'Mosaic Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 27, 43, 44, 3, 'com_content.article.45', 'RokSprocket Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 1, 512, 513, 1, 'com_tags', 'com_tags', '{}'),
(97, 1, 514, 515, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(98, 1, 516, 517, 1, 'com_ajax', 'com_ajax', '{}'),
(99, 1, 518, 519, 1, 'com_postinstall', 'com_postinstall', '{}'),
(100, 18, 96, 97, 2, 'com_modules.module.175', 'FREE Version', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(101, 18, 98, 99, 2, 'com_modules.module.176', 'PRO Version', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 18, 100, 101, 2, 'com_modules.module.152', 'Newsletter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 27, 45, 46, 3, 'com_content.article.46', 'Left / Content / Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 27, 47, 48, 3, 'com_content.article.47', 'Left / Right / Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 27, 49, 50, 3, 'com_content.article.48', 'Content / Left / Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 18, 102, 103, 2, 'com_modules.module.141', 'Top A - Projects', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(107, 18, 104, 105, 2, 'com_modules.module.142', 'Top A - About Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(108, 18, 106, 107, 2, 'com_modules.module.144', 'Top A - Testimonials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(109, 1, 520, 521, 1, 'com_widgetkit', 'Widgetkit', '{}'),
(110, 18, 108, 109, 2, 'com_modules.module.38', 'Logo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(111, 18, 110, 111, 2, 'com_modules.module.183', 'top_contact', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(112, 18, 112, 113, 2, 'com_modules.module.61', 'Top Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(113, 27, 51, 52, 3, 'com_content.article.49', 'About Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(114, 18, 114, 115, 2, 'com_modules.module.177', 'Google Map', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(115, 18, 116, 117, 2, 'com_modules.module.180', 'Bottom A Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(117, 18, 118, 119, 2, 'com_modules.module.185', 'Memberships', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(118, 18, 120, 121, 2, 'com_modules.module.97', 'Slidetop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(120, 18, 122, 123, 2, 'com_modules.module.186', 'Send us an email', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(121, 18, 124, 125, 2, 'com_modules.module.187', 'Testimonials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(124, 1, 522, 523, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(125, 18, 126, 127, 2, 'com_modules.module.189', 'Projects', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(126, 27, 53, 54, 3, 'com_content.article.50', 'Project Images', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(127, 18, 128, 129, 2, 'com_modules.module.32', 'Footer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_associations`
--

CREATE TABLE IF NOT EXISTS `af8ks_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_banners`
--

CREATE TABLE IF NOT EXISTS `af8ks_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_banner_clients`
--

CREATE TABLE IF NOT EXISTS `af8ks_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `af8ks_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_categories`
--

CREATE TABLE IF NOT EXISTS `af8ks_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `af8ks_categories`
--

INSERT INTO `af8ks_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 721, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 721, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 721, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 721, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 721, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 721, '2011-05-02 11:42:21', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 56, 1, 13, 14, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', '', 1, 42, '2012-01-23 15:30:29', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 721, '2011-11-18 16:32:10', 42, '2011-11-18 16:32:13', 0, '*', 1),
(10, 64, 1, 17, 18, 1, 'template', 'com_content', 'template', 'template', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 721, '2013-06-21 21:20:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(11, 73, 1, 19, 20, 1, 'article-for-slider', 'com_content', 'Article for Slider', 'article-for-slider', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 721, '2013-06-30 21:39:05', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 77, 1, 21, 22, 1, 'sample-tabs', 'com_content', 'Sample Tabs', 'sample-tabs', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 721, '2013-07-01 00:41:52', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_contact_details`
--

CREATE TABLE IF NOT EXISTS `af8ks_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `af8ks_contact_details`
--

INSERT INTO `af8ks_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'John Q. Public', 'john-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2011-11-18 16:33:47', 721, '', '2012-01-23 15:36:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5),
(2, 'Jane Q. Public', 'jane-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2011-11-18 16:35:05', 721, '', '2012-01-19 16:37:23', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_content`
--

CREATE TABLE IF NOT EXISTS `af8ks_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `af8ks_content`
--

INSERT INTO `af8ks_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 33, 'Module Variations', 'module-variations', '<p>This theme comes with different module styles, badges and icons. For each module you can pick a style and combine it with an icon or badge to create your own unique look. Here is a list of the available options:</p>\r\n\r\n<table class="zebra">\r\n <tbody>\r\n   <tr class="odd">\r\n      <td class="bold">Styles</td>\r\n      <td>Box</td>\r\n    </tr>\r\n   <tr>\r\n      <td class="bold">Badges</td>\r\n      <td>Hot, New, Free, Top</td>\r\n    </tr>\r\n   <tr class="odd">\r\n      <td class="bold">Icons</td>\r\n     <td>Download, Twitter, Mail, Bubble, Login, Cart</td>\r\n   </tr>\r\n </tbody>\r\n</table>', '', 0, 2, '2011-05-02 11:45:23', 721, '', '2011-05-02 13:45:48', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:45:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 453, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 36, 'Typography', 'typography', '<p>You can create some beautiful content by using some simple HTML elements. The Warp theme framework offers some neat styles for all HTML elements and a great set of CSS classes to style your content. Basic HTML is very easy to learn and this small guide shows you how to use all styles provided by the Warp framework.</p>\r\n<h2>Basic HTML Elements</h2>\r\n<p>Here is a short demonstration of text-level semanticts. The &lt;p&gt; element creates a new paragraph. It will have some space before and after itself. To turn your text into hypertext just use the <a href="#">&lt;a&gt; element</a>.</p>\r\n<h3>Text-Level Semantics</h3>\r\n<p>You can emphasize text using the <em>&lt;em&gt; element</em> or to imply any extra importance the <strong>&lt;strong&gt; element</strong>. Highlight text with no semantic meaning using the &lt;mark&gt; element. Markup document changes like inserted or deleted text with the <del>&lt;del&gt; element</del> or <ins>&lt;ins&gt; element</ins>. To define an abbreviation use the <abbr title="Abbreviation Element">&lt;abbr&gt; element</abbr> and to define a definition term use the <dfn title="Defines a definition term">&lt;dfn&gt; element</dfn>.</p>\r\n<h3>Quotations and Code</h3>\r\n<p>Inline quotations can be defined by using the <q>&lt;q&gt; element</q>.</p>\r\n<blockquote>The &lt;blockquote&gt; element defines a long quotation which also creates a new block by inserting white space before and after the blockquote element.</blockquote>\r\n<p>To define a short inline computer code use the <code>&lt;code&gt; element</code>. For a larger code snippet use the &lt;pre&gt; element which defines preformatted text. It creates a new text block which preserves both spaces and line breaks.</p>\r\n<pre>pre {\r\n    margin: 15px 0;\r\n    padding: 10px;\r\n    font-family: "Courier New", Courier, monospace;\r\n    font-size: 12px;\r\n    line-height: 18px;\r\n    white-space: pre-wrap;\r\n}\r\n</pre>\r\n<p><small>Use the &lt;small&gt; element for side comments and small print.</small></p>\r\n<hr />\r\n<h2>Useful CSS Classes</h2>\r\n<p>Here is a short demonstration of all style related CSS classes provided by the Warp framework.</p>\r\n<h3>Highlight Content</h3>\r\n<p class="dropcap">Drop caps are the first letter of a paragraph which are displayed bigger than the rest of the text. You can create a drop cap using the CSS class <code>dropcap</code>. To emphasize text with some small boxes use <em class="box">&lt;em&gt; element</em> with the CSS class <code>box</code>.</p>\r\n<div class="box-content">This simple box is intended to group large parts of your content using the CSS class <code>box-content</code>.</div>\r\n<div class="box-note">This is a simple box to highlight some text using the CSS class <code>box-note</code>.</div>\r\n<div class="box-info">This is a simple box with useful information using the CSS class <code>box-info</code>.</div>\r\n<div class="box-warning">This is a simple box with important notes and warnings using the CSS class <code>box-warning</code>.</div>\r\n<div class="box-hint">This is a simple box with additional hints using the CSS class <code>box-hint</code>.</div>\r\n<div class="box-download">This is a simple box with download information using the CSS class <code>box-download</code>.</div>\r\n<p>Use the CSS class <code>dotted</code> to create a dotted horizontal rule.</p>\r\n<hr class="dotted" />\r\n<h3>Tables</h3>\r\n<p>Create a zebra stripped table using using the CSS class <code>zebra</code>.</p>\r\n<table class="zebra"><caption>Table caption</caption>\r\n<thead>\r\n<tr><th>Table Heading</th><th>Table Heading</th><th class="center">Table Heading</th></tr>\r\n</thead>\r\n<tfoot>\r\n<tr>\r\n<td>Table Footer</td>\r\n<td>Table Footer</td>\r\n<td class="center">Table Footer</td>\r\n</tr>\r\n</tfoot>\r\n<tbody>\r\n<tr class="odd">\r\n<td>Table Data</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n<tr>\r\n<td class="bold">Data Bold</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n<tr class="odd">\r\n<td>Table Data</td>\r\n<td>Table Data</td>\r\n<td class="center">Data Centered</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Definition Lists</h3>\r\n<p>Create a nice looking definition list separated with a line by using the CSS class <code>separator</code>.</p>\r\n<dl class="separator"><dt>Definition List</dt><dd>A definition list is a list of terms and corresponding definitions. To create a definition list use the &lt;dl&gt; element in conjunction with &lt;dt&gt; to define the definition term and &lt;dd&gt; to define the definition description.</dd><dt>Definition Term</dt><dd>This is a definition description.</dd><dt>Definition Term</dt><dd>This is a definition description.</dd><dd>This is another definition description.</dd></dl>\r\n<h3>Forms</h3>\r\n<p>Create a clearly arranged form layout with fieldset boxes using the CSS class <code>box</code>.</p>\r\n<form class="box style" action="#"><fieldset><legend>Form legend</legend>\r\n<div><label for="f1">Text input:</label> <input id="f1" type="text" value="input text" /></div>\r\n<div><label for="f2">Radio input:</label> <input id="f2" type="radio" /></div>\r\n<div><label for="f3">Checkbox input:</label> <input id="f3" type="checkbox" /></div>\r\n<div><label for="f4">Select field:</label><select id="f4">\r\n<option>Option 01</option>\r\n<option>Option 02</option>\r\n</select></div>\r\n<div><label for="f5">Textarea:</label><br /><textarea id="f5" rows="5" cols="30">Textarea text</textarea></div>\r\n</fieldset><button>Button</button> <input type="button" value="Input Button" /></form>', '', 0, 2, '2011-05-02 11:47:45', 721, '', '2013-06-22 19:09:32', 667, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 5, '', '', 1, 93, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 37, 'Dummy Content', 'dummy-content', '<p><img class="size-auto" src="images/joomlaplates/demo-002.jpg" border="0" alt="Warp Theme Framework" title="Theme Framework" width="100%" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, 2, '2011-05-02 11:48:08', 721, '', '2013-09-20 21:02:24', 668, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 6, '', '', 1, 59, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 38, 'Features', 'features', '<p>This theme utilizes the latest features of the fast and slick Warp theme framework. It comes with a broad range of layout and <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103">module variations</a> as well as a neat <a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=104">typography</a> to style your content. Read on to learn more about this theme and its features:</p>\r\n<ul class="check">\r\n<li>Available for Joomla and WordPress</li>\r\n<li>5 style variations available</li>\r\n<li>Choose from 5 colors and 8 fonts</li>\r\n<li>3 module style combinable with 4 badges and 6 icons</li>\r\n<li>Flexible template and column widths</li>\r\n<li>All Warp framework features are available</li>\r\n</ul>\r\n<h2>Theme Styles</h2>\r\n<p>We provide different style variations of the default theme. In addition to these styles we added several other style settings like colors and fonts. Combining the different style options allows you to create your own unique theme design.</p>\r\n<p><img class="size-auto" src="images/joomlaplates/features_style_settings.png" border="0" alt="Combinable Styles" title="" width="675" height="215" /></p>', '', -2, 2, '2011-05-02 11:48:41', 721, '', '2013-06-22 19:44:41', 667, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 7, '', '', 1, 247, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 39, 'X2 Joomla Template', 'x2-joomla-template', '<p><strong>X2</strong> is a modern, dynamic, high-quality <strong>OnePage Joomla Theme</strong>.   Following the trends in design, we tried to create, first of all,   convenient and functional product that will not take a lot of time to   configure and setup. And most importantly, it will fit almost everyone. <strong>Flat design, simple and expressive animation</strong> will make your content unique. One can go to talk about all the   advantages and opportunities of the template, but enough to see the live   preview and everything will be understandable to you.\r\n<br /><br /></p>\r\n<p><img src="images/joomlaplates/jp-x2.png" border="0" alt="" style="display: block; margin-left: auto; margin-right: auto;" /></p>', '', 0, 2, '2011-05-02 11:49:24', 721, '', '2014-09-08 22:18:50', 617, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 65, 7, '', '', 1, 7523, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 40, 'Joomla Templates', 'joomla-templates', '<p><img class="size-auto" src="images/joomlaplates/demo-002.jpg" border="0" alt="Warp Theme Framework" title="Theme Framework" width="100%" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, 7, '2012-04-12 11:50:02', 721, '', '2013-09-20 21:01:30', 668, 0, '0000-00-00 00:00:00', '2012-04-12 11:50:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 35, 1, '', '', 1, 78, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 42, 'Joomla Themes', 'joomla-themes', '<p><img class="size-auto" src="images/joomlaplates/demo-001.jpg" border="0" alt="Warp Theme Framework" title="Theme Framework" width="100%" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, 7, '2012-03-20 11:50:55', 721, '', '2013-09-20 21:02:41', 668, 0, '0000-00-00 00:00:00', '2012-03-20 11:50:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 2, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 67, 'Widgetkit / Slider / Lightbox', 'widgetkit', '<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more. All widgets make use of modern web technologies like HTML5 markup, CSS3 features and jQuery based JavaScripts. Widgetkit is fully responsive and all widgets and their effects adapt perfectly for all device resolutions. It supports touch gestures and makes use of smooth CSS3 animations. Here is a short feature roundup:</p>\r\n<h2>How It Works</h2>\r\n<p>Widgetkit basically acts as a platform for all our widgets. It installs as a single component in Joomla or as a plugin in WordPress. The Widgetkit dashboard presents you an overview of all widgets. You can create, edit or delete all widgets and their content in one place. And after you have created the content for your first widget you can either use a shortcode or a module to display your widget anywhere on your website. In fact you can do both because once have you created a widget you are able to display it multiple times and reuse it on different parts of your website.</p>', '', 0, 2, '2011-06-08 11:15:54', 721, '', '2013-11-30 01:48:04', 668, 0, '0000-00-00 00:00:00', '2011-06-08 11:15:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 25, 3, '', '', 1, 161, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 66, 'JoomlaPlates', 'joomlaplates', '<p><img class="size-auto" src="images/joomlaplates/demo-003.jpg" border="0" alt="Warp Theme Framework" title="Theme Framework" width="100%" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0, 7, '2012-03-13 11:50:55', 721, '', '2013-09-20 21:02:57', 668, 0, '0000-00-00 00:00:00', '2012-03-13 11:50:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 4, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 65, 'Module Positions', 'module-positions', '<h2>Module Layout</h2>\r\n<p><img class="size-auto img-polaroid" src="images/joomlaplates/features_module_layouts.png" border="0" alt="module-layout" align="left" style="margin: 0 20px 20px 0;" /></p>\r\n<p>This theme comes with 62 module positions. The <strong>blue</strong> module positions allow to choose a module layout which defines the module alignment and proportions:</p>\r\n<p><em>equal, double or stack.</em></p>\r\n<p class="clearfix"> </p>\r\n<h2>Column Layout</h2>\r\n<p><img class="size-auto img-polaroid" src="images/joomlaplates/features_column_layouts.png" border="0" alt="module-layout" align="left" style="margin: 0 20px 20px 0;" /></p>\r\n<p>The two available sidebars, highlighted in<strong> red</strong>, can be switched to the left or right side and their widths can easily be set in the theme administration.</p>\r\n<p>For modules in the<strong> blue and red</strong> positions you can choose different module styles. Take a look at the module variations page to get an overview.</p>\r\n<p class="clearfix"> </p>\r\n<h2> Module Positions</h2>\r\n<p><img class="size-auto img-polaroid" src="images/joomlaplates/features_module_positions.png" border="0" alt="module-layout" align="left" /></p>', '', 0, 2, '2013-06-21 21:21:23', 721, '', '2013-06-26 20:56:38', 667, 0, '0000-00-00 00:00:00', '2013-06-21 21:21:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 2, '', '', 1, 114, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 71, 'Theme Configuration', 'theme-configuration', '<h2>Profiles</h2>\r\n<p>A profile can define different settings which are sorted into three main groups: Style, Content and Layout. You can create new profiles, edit already existing ones and assign them to any menu item. Yes, you read it right. Assign any profile to any menu item directly from your theme configuration with just a few clicks. That''s not all, profiles have the ability to inherit defined settings from the default profile. This way you can easily make small changes or tweaks and apply them to a page or section of your website! Learn more <a href="https://www.yootheme.com/themes/documentation/getting-started/how-to-use-profiles">here</a></p>\r\n<h3>Style Settings</h3>\r\n<p>The style settings are all about the overall look and feel of your website you can choose from the different styles, colors and fonts.</p>\r\n<h3>Content Settings</h3>\r\n<p>This settings group lets you change content related things like date or the to-top scroller. It also allows you to hide the main system output, this is really great if you want to build a page which only uses modules or widgets!</p>\r\n<h3>Layout Settings</h3>\r\n<p>The layout settings panel is all about the theme''s sizes and positioning! You can set the overall width and the sidebars'' width and ordering as well. Also the module layouts can be set here, as we have mentioned before you can position equally sized modules right next to each other or stack them on top of each other.</p>\r\n\r\n<p><a data-lightbox="group:mygroup" href="images/joomlaplates/config-001.jpg"> <img class="screenshots" src="images/joomlaplates/config-001.jpg" border="0" alt="Demo Image" width="200px" /> </a> <a data-lightbox="group:mygroup" href="images/joomlaplates/config-002.jpg"> <img class="screenshots" src="images/joomlaplates/config-002.jpg" border="0" alt="Demo Image" width="200px" /> </a> <a data-lightbox="group:mygroup" href="images/joomlaplates/config-003.jpg"> <img class="screenshots" src="images/joomlaplates/config-003.jpg" border="0" alt="Demo Image" width="200px" /> </a> <a data-lightbox="group:mygroup" href="images/joomlaplates/config-004.jpg"> <img class="screenshots" src="images/joomlaplates/config-004.jpg" border="0" alt="Demo Image" width="200px" /> </a></p>', '', 0, 10, '2013-06-26 23:26:17', 721, '', '2014-09-07 19:26:51', 617, 0, '0000-00-00 00:00:00', '2013-06-26 23:26:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 1, '', '', 1, 42, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(43, 92, 'Slitslider Module for J3.x & J2.5', 'slitslider-module-for-j3-x-j2-5', '<h1 style="font-size: 50px;">Slitslider Module for J3.x &amp; J2.5</h1>\r\n<p><strong>The Slit Slider Joomla module is a slideshow with a twist:</strong><br />The idea is to slice open the current slide when navigating to the next or previous one. <br />Using jQuery and CSS animations we can create unique slide transitions for the content elements.</p>\r\n<div style="width: 55%; float: left;"><img src="images/joomlaplates/slitslider.png" border="0" alt="Setcard" width="542" height="421" /></div>\r\n<div style="width: 45%; float: right;">\r\n<ul class="check" style="margin-top: 20px;">\r\n<li>Joomla 3.x and Joomla 2.5 module</li>\r\n<li>5 full size Image Slides with different content</li>\r\n<li>Many different effects for the headline, images and text.</li>\r\n<li>Easy to setup with many options, see instructions below</li>\r\n<li>Sliding Images only, text only or text with images</li>\r\n<li>Sliding Images with Headlines and so on..</li>\r\n<li>Responsive and mobile ready view</li>\r\n<li>Lightweight, modern and very fast-loading</li>\r\n</ul>\r\n<a class="button-default" href="http://demo.joomlaplates.com/#__slitslider/" target="_blank" style="margin-top: 40px;">More Infos &amp; Config Screens</a></div>\r\n<p> </p>\r\n<hr style="clear: both;" />\r\n<p> </p>\r\n<div style="width: 50%; float: left;"><img class="img-shadow" src="images/joomlaplates/slitslider.jpg" border="0" alt="Slitslider" /></div>\r\n<div style="width: 45%; float: right;">\r\n<p><em>You can set the "SlitSlider" to full screen height or pixel height. See green marked part on the left image.</em></p>\r\n<p>If you set the slider to "full height" the slider has automatically the height of your screen. Same as shown at our "HOME" ( Startpage). Here we have assigned the Slitslider on Home Page only.</p>\r\n<p>All other pages has the same SlitSlider module but here we have set the height in pixel ( 600px) and assigned on all other menu items except "HOME"</p>\r\n<div class="box-info">No extra costs, the SlitSlider module is included!</div>\r\n</div>', '', -2, 10, '2013-12-01 20:06:10', 721, '', '2013-12-23 16:55:11', 668, 0, '0000-00-00 00:00:00', '2013-12-01 20:06:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 29, 0, '', '', 1, 51, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 94, 'Mosaic Module', 'mosaic-module', '<p>Mosiac</p>', '', -2, 2, '2013-12-21 21:49:37', 721, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-12-21 21:49:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 95, 'RokSprocket Module', 'roksprocket-module', '<p>This is just a sample article to show you the amazing mosaic function of the <em>free</em> content module <a href="http://www.rockettheme.com/extensions-joomla/roksprocket" target="_blank">RokSprocket</a>.<br /><br />The module itself calles "RokSprocket" and it is a revolutionary new extension for Joomla 2.5/3.0 designed to give you an incredible level of control over how you present your content. Sophisticated content filters, robust layout modes and options, integration with multiple content providers, and a streamlined no-nonsense interface all contribute to a powerful yet user friendly experience from start to finish.<br /><br />The module <a href="http://www.rockettheme.com/extensions-joomla/roksprocket" target="_blank">RokSprocket</a> has multiple layout modes to display your content:</p>\r\n<p><strong> Features ( Slideshow), Tabs, Lists, Mosaic &amp; Headlines.<br /><br /></strong></p>\r\n<p><img class="img-border" src="images/joomlaplates/mosaic.jpg" border="0" alt="Demo RokSprocket" /></p>\r\n<p> </p>\r\n<div class="box-info">Extension Download, Forum Support and Readme, <a href="http://www.rockettheme.com/extensions-joomla/roksprocket" target="_blank">click here</a></div>\r\n<p>Thank you <a href="http://www.rockettheme.com/" target="_blank">Rockettheme</a> for this amazing Joomla module</p>', '', -2, 2, '2013-12-22 19:30:01', 721, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-12-22 19:30:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 103, 'Left / Content / Right', 'x2-joomla-template-2', '<p><strong>X2</strong> is a modern, dynamic, high-quality <strong>OnePage Joomla Theme</strong>.   Following the trends in design, we tried to create, first of all,   convenient and functional product that will not take a lot of time to   configure and setup. And most importantly, it will fit almost everyone. <strong>Flat design, simple and expressive animation</strong> will make your content unique. One can go to talk about all the   advantages and opportunities of the template, but enough to see the live   preview and everything will be understandable to you.\r\n<br /><br /></p>\r\n<p><img src="images/joomlaplates/jp-x2.png" border="0" alt="" style="display: block; margin-left: auto; margin-right: auto;" /></p>', '', 0, 2, '2011-05-02 11:49:24', 721, '', '2014-09-21 14:08:56', 617, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 66, 8, '', '', 1, 7202, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 104, 'Left / Right / Content', 'x2-joomla-template-3', '<p><strong>X2</strong> is a modern, dynamic, high-quality <strong>OnePage Joomla Theme</strong>.   Following the trends in design, we tried to create, first of all,   convenient and functional product that will not take a lot of time to   configure and setup. And most importantly, it will fit almost everyone. <strong>Flat design, simple and expressive animation</strong> will make your content unique. One can go to talk about all the   advantages and opportunities of the template, but enough to see the live   preview and everything will be understandable to you.\r\n<br /><br /></p>\r\n<p><img src="images/joomlaplates/jp-x2.png" border="0" alt="" style="display: block; margin-left: auto; margin-right: auto;" /></p>', '', 0, 2, '2011-05-02 11:49:24', 721, '', '2014-09-21 14:09:17', 617, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 66, 9, '', '', 1, 7202, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 105, 'Content / Left / Right', 'x2-joomla-template-4', '<p><strong>X2</strong> is a modern, dynamic, high-quality <strong>OnePage Joomla Theme</strong>.   Following the trends in design, we tried to create, first of all,   convenient and functional product that will not take a lot of time to   configure and setup. And most importantly, it will fit almost everyone. <strong>Flat design, simple and expressive animation</strong> will make your content unique. One can go to talk about all the   advantages and opportunities of the template, but enough to see the live   preview and everything will be understandable to you.\r\n<br /><br /></p>\r\n<p><img src="images/joomlaplates/jp-x2.png" border="0" alt="" style="display: block; margin-left: auto; margin-right: auto;" /></p>', '', 0, 2, '2011-05-02 11:49:24', 721, '', '2014-09-21 14:09:33', 617, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 66, 10, '', '', 1, 7202, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 113, 'About Us', 'about-us', '<p><a name="about-us"></a></p>\r\n<h1 class="title">About Us</h1>\r\n<p>Fulham and Chelsea Building Services have over 15 years’ experience in the Building trade.  We offer a complete end to end service, covering construction, maintenance, renovations and repairs.  We are backed by a reliable and skilled team to complete your job professionally and to your satisfaction.</p>\r\n<p>Justin Seabrook heads the business which is based in Coburg, Victoria.  Justin is a registered builder who started in the trade over 15 years ago in Melbourne.  He immigrated to the UK for 5 years where he established his business, undertaking an extensive range of projects and developing a broad knowledge and skill base across all building practices.  Justin has relocated back to Melbourne and has already undertaken several key projects, further extending his experience and portfolio of works.</p>\r\n<p>Fulham and Chelsea Building Services is committed to providing clients with quality, affordability and reliability.</p>\r\n<p> </p>\r\n<h1 class="title">Memberships</h1>\r\n<div style="float: left; width: 40%;">\r\n<p><img src="images/Building Commision Logo.jpg" alt="" width="311" height="117" /></p>\r\nFulham &amp; Chelsea Building Services is a registered Building Practitioner with the Building Commission of Victoria.</div>\r\n<div style="float: left; width: 40%; padding-left: 10px; padding-top: 15px;"><img src="images/Master builders logo watermark 003.png" alt="" width="127" height="115" /></div>\r\n<div style="float: left; width: 40%; padding-left: 10px; padding-top: 15px;">Fulham &amp; Chelsea Building Services is a Member of the Master Builders Association.</div>', '', 1, 2, '2015-11-24 21:21:33', 721, '', '2015-11-25 00:14:48', 721, 0, '0000-00-00 00:00:00', '2015-11-24 21:21:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 1, '', '', 1, 352, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(50, 126, 'Project Images', 'project-images', '', '', 1, 2, '2015-11-25 02:06:34', 721, '', '2015-11-25 02:06:34', 0, 0, '0000-00-00 00:00:00', '2015-11-25 02:06:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `af8ks_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `af8ks_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_content_frontpage`
--

INSERT INTO `af8ks_content_frontpage` (`content_id`, `ordering`) VALUES
(9, 3),
(11, 2),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_content_rating`
--

CREATE TABLE IF NOT EXISTS `af8ks_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_content_types`
--

CREATE TABLE IF NOT EXISTS `af8ks_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10005 ;

--
-- Dumping data for table `af8ks_content_types`
--

INSERT INTO `af8ks_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10000, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10001, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10002, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(10003, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10004, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `af8ks_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_djimageslider`
--

CREATE TABLE IF NOT EXISTS `af8ks_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_extensions`
--

CREATE TABLE IF NOT EXISTS `af8ks_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10089 ;

--
-- Dumping data for table `af8ks_extensions`
--

INSERT INTO `af8ks_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"1","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"1","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"0","show_autosuggest":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"porter_en"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"lts","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"62817505f72226605f0d4b585386ad92"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 0, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet","extended_elements":",@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `af8ks_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"name":"Widgetkit","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"mod_widgetkit"}', '{"widget_id":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Widgetkit Twitter', 'module', 'mod_widgetkit_twitter', '', 0, 1, 0, 0, '{"name":"Widgetkit Twitter","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"mod_widgetkit_twitter"}', '{"style_":"list","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"5","image_size":"48","show_image":"1","show_author":"1","show_date":"1","consumer_key":"","consumer_secret":"","access_token":"","access_token_secret":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'System - Widgetkit', 'plugin', 'widgetkit_system', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_system"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'Content - Widgetkit', 'plugin', 'widgetkit_content', 'content', 0, 1, 1, 0, '{"name":"Content - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"August 2013","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2013 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.0","description":"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_zoo"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'System - Widgetkit Joomla', 'plugin', 'widgetkit_joomla', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit Joomla","type":"plugin","creationDate":"December 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'Widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"name":"Widgetkit","type":"component","creationDate":"June 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.5.6","description":"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit"}', '{"mediaplayer_enable":"0","mediaplayer_selector":"video,audio"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'COM_K2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":"","filename":"k2"}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"244","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"2","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","antispam":"0","recaptchaForRegistered":"1","akismetForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"1","redirect":"101","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","akismetApiKey":"","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"PLG_FINDER_K2_DESCRIPTION","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":"","filename":"k2"}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2category"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2item"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"MOD_K2_COMMENTS_DESCRIPTION","group":"","filename":"mod_k2_comments.j25"}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":"","filename":"mod_k2_content.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_TOOLS","group":"","filename":"mod_k2_tools.j25"}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":"","filename":"mod_k2_users.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USER_DESCRIPTION","group":"","filename":"mod_k2_user.j25"}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":"","filename":"mod_k2_quickicons.j25"}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":"","filename":"mod_k2_stats.j25"}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'definitions', 'plugin', 'definitions', 'josetta_ext', 0, 1, 1, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10064, 'fields_common', 'plugin', 'fields_common', 'josetta_ext', 0, 1, 1, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10065, 'definitions', 'plugin', 'definitions', 'josetta_ext', 0, 1, 1, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10066, 'fields_common', 'plugin', 'fields_common', 'josetta_ext', 0, 1, 1, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10075, 'Content - RokInjectModule', 'plugin', 'rokinjectmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - RokInjectModule","type":"plugin","creationDate":"April 22, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5","description":"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10078, 'JP-X2', 'template', 'jp-x2', '', 0, 1, 1, 0, '{"legacy":false,"name":"JP-X2","type":"template","creationDate":"Sept 2014","author":"JoomlaPlates","copyright":"Copyright (C) JoomlaPlates","authorEmail":"info@JoomlaPlates.com","authorUrl":"http:\\/\\/www.JoomlaPlates","version":"1.0.002","description":"JP X2 Theme by JoomlaPlates!","group":""}', '{"config":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'SP Quick Contact', 'module', 'mod_sp_quickcontact', '', 0, 1, 0, 0, '{"name":"SP Quick Contact","type":"module","creationDate":"Aug 2011","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2012 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.4","description":"SP Quick Contact - Ajax based Quick Contact Module for Joomla!","group":"","filename":"mod_sp_quickcontact"}', '{"email":"","success":"Email was sent successfully.","failed":"Email could not be sent.","formcaptcha":"1","captcha_question":"3 + 4 = ?","captcha_answer":"7","failed_captcha":"You have entered wrong captcha. Please try again.","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"May 2015","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"DJ-ImageSlider Module","group":"","filename":"mod_djimageslider"}', '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"0","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\t.djex-info { padding: 20px 30px 10px; margin: 0 0 20px 0; background: #ac00d4; color: #fff; border: 1px solid #81009f; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: normal; -webkit-border-radius: 4px; border-radius: 4px; }\\n\\t\\t\\t.djex-title { text-transform: uppercase; font-weight: bold; font-size: 14px; }\\n\\t\\t\\t.djex-info a:link, .djex-info a:visited, .djex-info a:hover { color:#fff; text-decoration:underline; font-weight: 600; }\\t\\n\\t\\t\\t.djex-info img { float: left; margin: 0 30px 10px 0; }\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"djex-info\\">\\n\\t\\t\\t<a href=\\"index.php?option=com_djimageslider\\"><img src=\\"components\\/com_djimageslider\\/assets\\/ex_slider.png\\" \\/><\\/a>\\n\\t\\t\\t<p class=\\"djex-title\\">Thank you for installing DJ-ImageSlider!<\\/p>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display slideshows containing slides with title and short description linked to any menu item, article or custom url address. \\n\\t\\t\\tIf you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/faq\\">FAQ section<\\/a><\\/p>\\n\\t\\t\\t<p>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t\\t<div style=\\"clear:both\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t","group":"","filename":"pkg_dj-imageslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_filters`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `af8ks_finder_links`
--

INSERT INTO `af8ks_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(13, 'index.php?option=com_k2&view=item&id=61', 'index.php?option=com_k2&view=item&id=61:k2-sample-item-1&Itemid=195', 'K2 Sample Item 1', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:29:36', '2db0159a530a07cdf8740c3de19020ae', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223631223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d31223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a32393a3336223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2231223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236313a6b322d73616d706c652d6974656d2d31223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a36393a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d73696e676c652d6974656d2f6974656d2f36312d6b322d73616d706c652d6974656d2d31223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3631223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36313a6b322d73616d706c652d6974656d2d31264974656d69643d313935223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2031223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(14, 'index.php?option=com_k2&view=item&id=62', 'index.php?option=com_k2&view=item&id=62:k2-sample-item-2&Itemid=196', 'K2 Sample Item 2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:29:49', '75558ee1ad1416c1066fd051f6aad45a', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-02 21:12:48', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223632223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d32223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a32393a3439223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2232223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236323a6b322d73616d706c652d6974656d2d32223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d63617465676f72792d766965772f6974656d2f36322d6b322d73616d706c652d6974656d2d32223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3632223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36323a6b322d73616d706c652d6974656d2d32264974656d69643d313936223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2032223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30322032313a31323a3438223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `af8ks_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(15, 'index.php?option=com_k2&view=item&id=63', 'index.php?option=com_k2&view=item&id=63:k2-sample-item-3&Itemid=196', 'K2 Sample Item 3', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:30:01', '107f04996a789c734de0110b4483eabc', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-02 21:31:06', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223633223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d33223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a33303a3031223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2233223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236333a6b322d73616d706c652d6974656d2d33223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d63617465676f72792d766965772f6974656d2f36332d6b322d73616d706c652d6974656d2d33223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3633223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36333a6b322d73616d706c652d6974656d2d33264974656d69643d313936223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2033223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30322032313a33313a3036223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(16, 'index.php?option=com_k2&view=item&id=64', 'index.php?option=com_k2&view=item&id=64:k2-sample-item-4&Itemid=196', 'K2 Sample Item 4', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:30:12', '3143c1d9b2fbd72b8a819c0fe423a3d6', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-02 21:31:36', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223634223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d34223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a33303a3132223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2234223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236343a6b322d73616d706c652d6974656d2d34223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d63617465676f72792d766965772f6974656d2f36342d6b322d73616d706c652d6974656d2d34223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3634223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36343a6b322d73616d706c652d6974656d2d34264974656d69643d313936223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2034223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30322032313a33313a3336223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `af8ks_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(17, 'index.php?option=com_k2&view=item&id=65', 'index.php?option=com_k2&view=item&id=65:k2-sample-item-5&Itemid=196', 'K2 Sample Item 5', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:30:24', '5c89f11e32878696a44c26f214e21e6a', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-03 17:34:16', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223635223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d35223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a33303a3234223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2235223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236353a6b322d73616d706c652d6974656d2d35223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d63617465676f72792d766965772f6974656d2f36352d6b322d73616d706c652d6974656d2d35223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3635223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36353a6b322d73616d706c652d6974656d2d35264974656d69643d313936223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2035223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30332031373a33343a3136223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(18, 'index.php?option=com_k2&view=item&id=66', 'index.php?option=com_k2&view=item&id=66:k2-sample-item-6&Itemid=196', 'K2 Sample Item 6', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,', '2014-09-11 00:30:35', 'f7d2fde1789a191dd13d0e6932c249d5', 1, 1, 1, '*', '2013-04-02 21:11:24', '0000-00-00 00:00:00', '2013-04-03 17:35:49', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a323a223636223b733a353a22616c696173223b733a31363a226b322d73616d706c652d6974656d2d36223b733a373a2273756d6d617279223b733a3837373a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e3c2f703e0d0a3c703e446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e3c2f703e0d0a3c703e41656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a323a223135223b733a31303a22637265617465645f6279223b733a333a22363138223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d31302032323a33303a3335223b733a31313a226d6f6469666965645f6279223b733a333a22363137223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3135363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3872656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323434223b733a31303a226974656d496d6167654d223b733a333a22343030223b733a31303a226974656d496d6167654c223b733a333a22363030223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a363a224d656469756d223b733a383a22636f6d6d656e7473223b733a313a2232223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2231223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a383a22616e74697370616d223b733a313a2230223b733a32323a22726563617074636861466f7252656769737465726564223b733a313a2231223b733a32303a22616b69736d6574466f7252656769737465726564223b733a313a2231223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a32333a226b32476f6f676c65536561726368436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a31313a224b325573657247726f7570223b733a313a2231223b733a383a227265646972656374223b733a333a22313031223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a393a226b325461674e6f726d223b733a313a2230223b733a31333a226b325461674e6f726d43617365223b733a353a226c6f776572223b733a33313a226b325461674e6f726d4164646974696f6e616c5265706c6163656d656e7473223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a22616b69736d65744170694b6579223b733a303a22223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a32323a22656e666f7263655345465265706c6163656d656e7473223b733a313a2230223b733a31353a225345465265706c6163656d656e7473223b733a323736383a22c3807c412c20c3817c412c20c3827c412c20c3837c412c20c3847c412c20c3857c412c20c3a07c612c20c3a17c612c20c3a27c612c20c3a37c612c20c3a47c612c20c3a57c612c20c4807c412c20c4817c612c20c4827c412c20c4837c612c20c4847c412c20c4857c612c20c3877c432c20c3a77c632c20c4867c432c20c4877c632c20c4887c432c20c4897c632c20c48a7c432c20c48b7c632c20c48c7c432c20c48d7c632c20c3907c442c20c3b07c642c20c48e7c442c20c48f7c642c20c4907c442c20c4917c642c20c3887c452c20c3897c452c20c38a7c452c20c38b7c452c20c3a87c652c20c3a97c652c20c3aa7c652c20c3ab7c652c20c4927c452c20c4937c652c20c4947c452c20c4957c652c20c4967c452c20c4977c652c20c4987c452c20c4997c652c20c49a7c452c20c49b7c652c20c49c7c472c20c49d7c672c20c49e7c472c20c49f7c672c20c4a07c472c20c4a17c672c20c4a27c472c20c4a37c672c20c4a47c482c20c4a57c682c20c4a67c482c20c4a77c682c20c38c7c492c20c38d7c492c20c38e7c492c20c38f7c492c20c3ac7c692c20c3ad7c692c20c3ae7c692c20c3af7c692c20c4a87c492c20c4a97c692c20c4aa7c492c20c4ab7c692c20c4ac7c492c20c4ad7c692c20c4ae7c492c20c4af7c692c20c4b07c492c20c4b17c692c20c4b47c4a2c20c4b57c6a2c20c4b67c4b2c20c4b77c6b2c20c4b87c6b2c20c4b97c4c2c20c4ba7c6c2c20c4bb7c4c2c20c4bc7c6c2c20c4bd7c4c2c20c4be7c6c2c20c4bf7c4c2c20c5807c6c2c20c5817c4c2c20c5827c6c2c20c3917c4e2c20c3b17c6e2c20c5837c4e2c20c5847c6e2c20c5857c4e2c20c5867c6e2c20c5877c4e2c20c5887c6e2c20c5897c6e2c20c58a7c4e2c20c58b7c6e2c20c3927c4f2c20c3937c4f2c20c3947c4f2c20c3957c4f2c20c3967c4f2c20c3987c4f2c20c3b27c6f2c20c3b37c6f2c20c3b47c6f2c20c3b57c6f2c20c3b67c6f2c20c3b87c6f2c20c58c7c4f2c20c58d7c6f2c20c58e7c4f2c20c58f7c6f2c20c5907c4f2c20c5917c6f2c20c5947c522c20c5957c722c20c5967c522c20c5977c722c20c5987c522c20c5997c722c20c59a7c532c20c59b7c732c20c59c7c532c20c59d7c732c20c59e7c532c20c59f7c732c20c5a07c532c20c5a17c732c20c5bf7c732c20c5a27c542c20c5a37c742c20c5a47c542c20c5a57c742c20c5a67c542c20c5a77c742c20c3997c552c20c39a7c552c20c39b7c552c20c39c7c552c20c3b97c752c20c3ba7c752c20c3bb7c752c20c3bc7c752c20c5a87c552c20c5a97c752c20c5aa7c552c20c5ab7c752c20c5ac7c552c20c5ad7c752c20c5ae7c552c20c5af7c752c20c5b07c552c20c5b17c752c20c5b27c552c20c5b37c752c20c5b47c572c20c5b57c772c20c39d7c592c20c3bd7c792c20c3bf7c792c20c5b67c592c20c5b77c792c20c5b87c592c20c5b97c5a2c20c5ba7c7a2c20c5bb7c5a2c20c5bc7c7a2c20c5bd7c5a2c20c5be7c7a2c20ceb17c612c20ceb27c622c20ceb37c672c20ceb47c642c20ceb57c652c20ceb67c7a2c20ceb77c682c20ceb87c74682c20ceb97c692c20ceba7c6b2c20cebb7c6c2c20cebc7c6d2c20cebd7c6e2c20cebe7c782c20cebf7c6f2c20cf807c702c20cf817c722c20cf837c732c20cf847c742c20cf857c792c20cf867c662c20cf877c63682c20cf887c70732c20cf897c772c20ce917c412c20ce927c422c20ce937c472c20ce947c442c20ce957c452c20ce967c5a2c20ce977c482c20ce987c54682c20ce997c492c20ce9a7c4b2c20ce9b7c4c2c20ce9c7c4d2c20ce9e7c582c20ce9f7c4f2c20cea07c502c20cea17c522c20cea37c532c20cea47c542c20cea57c592c20cea67c462c20cea77c43682c20cea87c50732c20cea97c572c20ceac7c612c20cead7c652c20ceae7c682c20ceaf7c692c20cf8c7c6f2c20cf8d7c792c20cf8e7c772c20ce867c412c20ce887c452c20ce897c482c20ce8a7c492c20ce8c7c4f2c20ce8e7c592c20ce8f7c572c20cf8a7c692c20ce907c692c20cf8b7c792c20cf827c732c20d0907c412c20d3907c412c20d3927c412c20d3987c452c20d39a7c452c20d3947c452c20d0917c422c20d0927c562c20d0937c472c20d2907c472c20d0837c472c20d2927c472c20d3b67c472c20797c592c20d0947c442c20d0957c452c20d0807c452c20d0817c594f2c20d3967c452c20d2bc7c452c20d2be7c452c20d0847c59452c20d0967c5a482c20d3817c445a482c20d2967c5a482c20d39c7c445a482c20d0977c5a2c20d2987c5a2c20d39e7c445a2c20d3a07c445a2c20d0857c445a2c20d0987c492c20d08d7c492c20d3a47c492c20d3a27c492c20d0867c492c20d0877c4a492c20d3807c492c20d0997c592c20d28a7c592c20d0887c4a2c20d09a7c4b2c20d29a7c512c20d29e7c512c20d2a07c4b2c20d3837c512c20d29c7c4b2c20d09b7c4c2c20d3857c4c2c20d0897c4c2c20d09c7c4d2c20d38d7c4d2c20d09d7c4e2c20d3897c4e2c20d2a27c4e2c20d3877c4e2c20d2a47c4e2c20d08a7c4e2c20d09e7c4f2c20d3a67c4f2c20d3a87c4f2c20d3aa7c4f2c20d2a87c4f2c20d09f7c502c20d2a67c50462c20d0a07c502c20d28e7c502c20d0a17c532c20d2aa7c532c20d0a27c542c20d2ac7c54482c20d08b7c542c20d08c7c4b2c20d0a37c552c20d08e7c552c20d3b27c552c20d3b07c552c20d3ae7c552c20d2ae7c552c20d2b07c552c20d0a47c462c20d0a57c482c20d2b27c482c20d2ba7c482c20d0a67c54532c20d2b47c54532c20d0a77c43482c20d3b47c43482c20d2b67c43482c20d38b7c43482c20d2b87c43482c20d08f7c445a2c20d0a87c53482c20d0a97c5348542c20d0aa7c412c20d0ab7c592c20d3b87c592c20d0ac7c592c20d28c7c592c20d0ad7c452c20d3ac7c452c20d0ae7c59552c20d0af7c59412c20d0b07c612c20d3917c612c20d3937c612c20d3997c652c20d39b7c652c20d3957c652c20d0b17c622c20d0b27c762c20d0b37c672c20d2917c672c20d1937c672c20d2937c672c20d3b77c672c20797c792c20d0b47c642c20d0b57c652c20d1907c652c20d1917c796f2c20d3977c652c20d2bd7c652c20d2bf7c652c20d1947c79652c20d0b67c7a682c20d3827c647a682c20d2977c7a682c20d39d7c647a682c20d0b77c7a2c20d2997c7a2c20d39f7c647a2c20d3a17c647a2c20d1957c647a2c20d0b87c692c20d19d7c692c20d3a57c692c20d3a37c692c20d1967c692c20d1977c6a692c20d3807c692c20d0b97c792c20d28b7c792c20d1987c6a2c20d0ba7c6b2c20d29b7c712c20d29f7c712c20d2a17c6b2c20d3847c712c20d29d7c6b2c20d0bb7c6c2c20d3867c6c2c20d1997c6c2c20d0bc7c6d2c20d38e7c6d2c20d0bd7c6e2c20d38a7c6e2c20d2a37c6e2c20d3887c6e2c20d2a57c6e2c20d19a7c6e2c20d0be7c6f2c20d3a77c6f2c20d3a97c6f2c20d3ab7c6f2c20d2a97c6f2c20d0bf7c702c20d2a77c70662c20d1807c702c20d28f7c702c20d1817c732c20d2ab7c732c20d1827c742c20d2ad7c74682c20d19b7c742c20d19c7c6b2c20d1837c752c20d19e7c752c20d3b37c752c20d3b17c752c20d3af7c752c20d2af7c752c20d2b17c752c20d1847c662c20d1857c682c20d2b37c682c20d2bb7c682c20d1867c74732c20d2b57c74732c20d1877c63682c20d3b57c63682c20d2b77c63682c20d38c7c63682c20d2b97c63682c20d19f7c647a2c20d1887c73682c20d1897c7368742c20d18a7c612c20d18b7c792c20d3b97c792c20d18c7c792c20d28d7c792c20d18d7c652c20d3ad7c652c20d18e7c79752c20d18f7c7961223b733a353a226b32536566223b733a313a2230223b733a31333a226b325365664c6162656c436174223b733a373a22636f6e74656e74223b733a31333a226b325365664c6162656c546167223b733a333a22746167223b733a31343a226b325365664c6162656c55736572223b733a363a22617574686f72223b733a31363a226b325365664c6162656c536561726368223b733a363a22736561726368223b733a31343a226b325365664c6162656c44617465223b733a343a2264617465223b733a31343a226b325365664c6162656c4974656d223b733a313a2230223b733a32363a226b325365664c6162656c4974656d437573746f6d507265666978223b733a303a22223b733a31373a226b32536566496e736572744974656d4964223b733a313a2231223b733a32343a226b325365664974656d49645469746c65416c696173536570223b733a343a2264617368223b733a32323a226b325365665573654974656d5469746c65416c696173223b733a313a2231223b733a31363a226b32536566496e736572744361744964223b733a313a2231223b733a32333a226b3253656643617449645469746c65416c696173536570223b733a343a2264617368223b733a32313a226b325365665573654361745469746c65416c696173223b733a313a2231223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2236223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31383a224b322053616d706c652043617465676f7279223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2236363a6b322d73616d706c652d6974656d2d36223b733a373a22636174736c7567223b733a32313a2231353a6b322d73616d706c652d63617465676f7279223b733a363a22617574686f72223b733a31323a224a6f6f6d6c61506c61746573223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068702f323031332d30372d32312d32312d33312d34342f6b322d63617465676f72792d766965772f6974656d2f36362d6b322d73616d706c652d6974656d2d36223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31323a224a6f6f6d6c61506c61746573223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a224a6f6f6d6c61506c61746573223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31383a224b322053616d706c652043617465676f7279223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31383a224b322053616d706c652043617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d3636223b733a353a22726f757465223b733a36373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36363a6b322d73616d706c652d6974656d2d36264974656d69643d313936223b733a353a227469746c65223b733a31363a224b322053616d706c65204974656d2036223b733a31313a226465736372697074696f6e223b733a3835343a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742e2041656e65616e20636f6d6d6f646f206c6967756c61206567657420646f6c6f722e2041656e65616e206d617373612e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973206469732070617274757269656e74206d6f6e7465732c206e61736365747572207269646963756c7573206d75732e20446f6e6563207175616d2066656c69732c20756c74726963696573206e65632c2070656c6c656e7465737175652065752c207072657469756d20717569732c2073656d2e204e756c6c6120636f6e736571756174206d61737361207175697320656e696d2e20446f6e65632070656465206a7573746f2c206672696e67696c6c612076656c2c20616c6971756574206e65632c2076756c70757461746520656765742c20617263752e20496e20656e696d206a7573746f2c2072686f6e6375732075742c20696d7065726469657420612c2076656e656e617469732076697461652c206a7573746f2e204e756c6c616d2064696374756d2066656c69732065752070656465206d6f6c6c6973207072657469756d2e20496e74656765722074696e636964756e742e204372617320646170696275732e20566976616d757320656c656d656e74756d2073656d706572206e6973692e2041656e65616e2076756c70757461746520656c656966656e642074656c6c75732e2041656e65616e206c656f206c6967756c612c20706f72747469746f722065752c20636f6e7365717561742076697461652c20656c656966656e642061632c20656e696d2e20416c697175616d206c6f72656d20616e74652c206461706962757320696e2c207669766572726120717569732c206665756769617420612c2074656c6c75732e2050686173656c6c75732076697665727261206e756c6c61207574206d6574757320766172697573206c616f726565742e20517569737175652072757472756d2e2041656e65616e20696d706572646965742e20457469616d20756c74726963696573206e6973692076656c2061756775652e2043757261626974757220756c6c616d636f7270657220756c74726963696573206e6973692e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031332d30342d30322032313a31313a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031332d30342d30332031373a33353a3439223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms0`
--

INSERT INTO `af8ks_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(13, 4, 0.09338),
(14, 4, 0.09338),
(15, 4, 0.09338),
(16, 4, 0.09338),
(17, 4, 0.09338),
(18, 4, 0.09338),
(13, 5, 0.88669),
(14, 5, 0.88669),
(15, 5, 0.88669),
(16, 5, 0.88669),
(17, 5, 0.88669),
(18, 5, 0.88669),
(13, 6, 1.12),
(14, 6, 1.12),
(15, 6, 1.12),
(16, 6, 1.12),
(17, 6, 1.12),
(18, 6, 1.12),
(13, 7, 0.95669),
(14, 7, 0.95669),
(15, 7, 0.95669),
(16, 7, 0.95669),
(17, 7, 0.95669),
(18, 7, 0.95669),
(13, 8, 1.09669),
(14, 8, 1.09669),
(15, 8, 1.09669),
(16, 8, 1.09669),
(17, 8, 1.09669),
(18, 8, 1.09669),
(13, 9, 0.09331),
(14, 9, 0.09331),
(15, 9, 0.09331),
(16, 9, 0.09331),
(17, 9, 0.09331),
(18, 9, 0.09331),
(13, 10, 0.86331),
(14, 10, 0.86331),
(15, 10, 0.86331),
(16, 10, 0.86331),
(17, 10, 0.86331),
(18, 10, 0.86331),
(13, 11, 1.05),
(14, 11, 1.05),
(15, 11, 1.05),
(16, 11, 1.05),
(17, 11, 1.05),
(18, 11, 1.05),
(13, 12, 0.46669),
(14, 12, 0.46669),
(15, 12, 0.46669),
(16, 12, 0.46669),
(17, 12, 0.46669),
(18, 12, 0.46669),
(13, 13, 1.05),
(14, 13, 1.05),
(15, 13, 1.05),
(16, 13, 1.05),
(17, 13, 1.05),
(18, 13, 1.05),
(13, 14, 1.21331),
(14, 14, 1.21331),
(15, 14, 1.21331),
(16, 14, 1.21331),
(17, 14, 1.21331),
(18, 14, 1.21331),
(13, 15, 1.4),
(14, 15, 1.4),
(15, 15, 1.4),
(16, 15, 1.4),
(17, 15, 1.4),
(18, 15, 1.4),
(13, 16, 1.02669),
(14, 16, 1.02669),
(15, 16, 1.02669),
(16, 16, 1.02669),
(17, 16, 1.02669),
(18, 16, 1.02669),
(13, 17, 1.19),
(14, 17, 1.19),
(15, 17, 1.19),
(16, 17, 1.19),
(17, 17, 1.19),
(18, 17, 1.19),
(13, 18, 1.07331),
(14, 18, 1.07331),
(15, 18, 1.07331),
(16, 18, 1.07331),
(17, 18, 1.07331),
(18, 18, 1.07331),
(13, 19, 1.21331),
(14, 19, 1.21331),
(15, 19, 1.21331),
(16, 19, 1.21331),
(17, 19, 1.21331),
(18, 19, 1.21331),
(13, 20, 0.93331),
(14, 20, 0.93331),
(15, 20, 0.93331),
(16, 20, 0.93331),
(17, 20, 0.93331),
(18, 20, 0.93331),
(13, 21, 1.09669),
(14, 21, 1.09669),
(15, 21, 1.09669),
(16, 21, 1.09669),
(17, 21, 1.09669),
(18, 21, 1.09669),
(13, 22, 0.98),
(14, 22, 0.98),
(15, 22, 0.98),
(16, 22, 0.98),
(17, 22, 0.98),
(18, 22, 0.98),
(13, 23, 1.07331),
(14, 23, 1.07331),
(15, 23, 1.07331),
(16, 23, 1.07331),
(17, 23, 1.07331),
(18, 23, 1.07331),
(13, 24, 1.07331),
(14, 24, 1.07331),
(15, 24, 1.07331),
(16, 24, 1.07331),
(17, 24, 1.07331),
(18, 24, 1.07331),
(13, 25, 1.28331),
(14, 25, 1.28331),
(15, 25, 1.28331),
(16, 25, 1.28331),
(17, 25, 1.28331),
(18, 25, 1.28331),
(13, 26, 0.32669),
(14, 26, 0.32669),
(15, 26, 0.32669),
(16, 26, 0.32669),
(17, 26, 0.32669),
(18, 26, 0.32669),
(13, 27, 1.00331),
(14, 27, 1.00331),
(15, 27, 1.00331),
(16, 27, 1.00331),
(17, 27, 1.00331),
(18, 27, 1.00331),
(13, 28, 1.12),
(14, 28, 1.12),
(15, 28, 1.12),
(16, 28, 1.12),
(17, 28, 1.12),
(18, 28, 1.12),
(13, 29, 0.32669),
(14, 29, 0.32669),
(15, 29, 0.32669),
(16, 29, 0.32669),
(17, 29, 0.32669),
(18, 29, 0.32669),
(13, 30, 0.95669),
(14, 30, 0.95669),
(15, 30, 0.95669),
(16, 30, 0.95669),
(17, 30, 0.95669),
(18, 30, 0.95669),
(13, 31, 1.19),
(14, 31, 1.19),
(15, 31, 1.19),
(16, 31, 1.19),
(17, 31, 1.19),
(18, 31, 1.19),
(13, 32, 0.18669),
(14, 32, 0.18669),
(15, 32, 0.18669),
(16, 32, 0.18669),
(17, 32, 0.18669),
(18, 32, 0.18669),
(13, 33, 1.09669),
(14, 33, 1.09669),
(15, 33, 1.09669),
(16, 33, 1.09669),
(17, 33, 1.09669),
(18, 33, 1.09669),
(13, 34, 1.35331),
(14, 34, 1.35331),
(15, 34, 1.35331),
(16, 34, 1.35331),
(17, 34, 1.35331),
(18, 34, 1.35331),
(13, 35, 0.18669),
(14, 35, 0.18669),
(15, 35, 0.18669),
(16, 35, 0.18669),
(17, 35, 0.18669),
(18, 35, 0.18669),
(13, 36, 0.98),
(14, 36, 0.98),
(15, 36, 0.98),
(16, 36, 0.98),
(17, 36, 0.98),
(18, 36, 0.98),
(13, 37, 1.05),
(14, 37, 1.05),
(15, 37, 1.05),
(16, 37, 1.05),
(17, 37, 1.05),
(18, 37, 1.05),
(13, 38, 0.18669),
(14, 38, 0.18669),
(15, 38, 0.18669),
(16, 38, 0.18669),
(17, 38, 0.18669),
(18, 38, 0.18669),
(13, 39, 0.86331),
(14, 39, 0.86331),
(15, 39, 0.86331),
(16, 39, 0.86331),
(17, 39, 0.86331),
(18, 39, 0.86331),
(13, 40, 0.98),
(14, 40, 0.98),
(15, 40, 0.98),
(16, 40, 0.98),
(17, 40, 0.98),
(18, 40, 0.98),
(13, 41, 0.23331),
(14, 41, 0.23331),
(15, 41, 0.23331),
(16, 41, 0.23331),
(17, 41, 0.23331),
(18, 41, 0.23331),
(13, 42, 1.05),
(14, 42, 1.05),
(15, 42, 1.05),
(16, 42, 1.05),
(17, 42, 1.05),
(18, 42, 1.05),
(13, 43, 1.33),
(14, 43, 1.33),
(15, 43, 1.33),
(16, 43, 1.33),
(17, 43, 1.33),
(18, 43, 1.33),
(13, 271, 1.96),
(14, 271, 1.96),
(15, 271, 1.96),
(16, 271, 1.96),
(17, 271, 1.96),
(18, 271, 1.96),
(13, 272, 1.8),
(14, 272, 1.8),
(15, 272, 1.8),
(16, 272, 1.8),
(17, 272, 1.8),
(18, 272, 1.8),
(13, 273, 5.05679),
(14, 273, 5.05679),
(15, 273, 5.05679),
(16, 273, 5.05679),
(17, 273, 5.05679),
(18, 273, 5.05679),
(13, 274, 5.30321),
(13, 275, 0.14),
(14, 275, 0.14),
(15, 275, 0.14),
(16, 275, 0.14),
(17, 275, 0.14),
(18, 275, 0.14),
(13, 276, 0.91),
(14, 276, 0.91),
(15, 276, 0.91),
(16, 276, 0.91),
(17, 276, 0.91),
(18, 276, 0.91),
(13, 277, 1.14331),
(14, 277, 1.14331),
(15, 277, 1.14331),
(16, 277, 1.14331),
(17, 277, 1.14331),
(18, 277, 1.14331),
(13, 278, 0.28),
(14, 278, 0.28),
(15, 278, 0.28),
(16, 278, 0.28),
(17, 278, 0.28),
(18, 278, 0.28),
(13, 279, 0.95669),
(14, 279, 0.95669),
(15, 279, 0.95669),
(16, 279, 0.95669),
(17, 279, 0.95669),
(18, 279, 0.95669),
(13, 280, 1.12),
(14, 280, 1.12),
(15, 280, 1.12),
(16, 280, 1.12),
(17, 280, 1.12),
(18, 280, 1.12),
(13, 281, 0.14),
(14, 281, 0.14),
(15, 281, 0.14),
(16, 281, 0.14),
(17, 281, 0.14),
(18, 281, 0.14),
(13, 282, 0.88669),
(14, 282, 0.88669),
(15, 282, 0.88669),
(16, 282, 0.88669),
(17, 282, 0.88669),
(18, 282, 0.88669),
(13, 283, 1.19),
(14, 283, 1.19),
(15, 283, 1.19),
(16, 283, 1.19),
(17, 283, 1.19),
(18, 283, 1.19),
(13, 284, 0.28),
(14, 284, 0.28),
(15, 284, 0.28),
(16, 284, 0.28),
(17, 284, 0.28),
(18, 284, 0.28),
(13, 285, 1.02669),
(14, 285, 1.02669),
(15, 285, 1.02669),
(16, 285, 1.02669),
(17, 285, 1.02669),
(18, 285, 1.02669),
(13, 286, 1.26),
(14, 286, 1.26),
(15, 286, 1.26),
(16, 286, 1.26),
(17, 286, 1.26),
(18, 286, 1.26),
(14, 515, 5.30321),
(15, 522, 5.30321),
(16, 529, 5.30321),
(17, 536, 5.30321),
(18, 543, 5.30321);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms1`
--

INSERT INTO `af8ks_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(13, 3, 0.34),
(14, 513, 0.34),
(15, 520, 0.34),
(16, 527, 0.34),
(17, 534, 0.34),
(18, 540, 0.37),
(18, 541, 0.34);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms2`
--

INSERT INTO `af8ks_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(13, 164, 0.32669),
(14, 164, 0.32669),
(15, 164, 0.32669),
(16, 164, 0.32669),
(17, 164, 0.32669),
(18, 164, 0.32669),
(13, 165, 1.05),
(14, 165, 1.05),
(15, 165, 1.05),
(16, 165, 1.05),
(17, 165, 1.05),
(18, 165, 1.05),
(13, 166, 1.21331),
(14, 166, 1.21331),
(15, 166, 1.21331),
(16, 166, 1.21331),
(17, 166, 1.21331),
(18, 166, 1.21331),
(13, 167, 0.14),
(14, 167, 0.14),
(15, 167, 0.14),
(16, 167, 0.14),
(17, 167, 0.14),
(18, 167, 0.14),
(13, 168, 0.93331),
(14, 168, 0.93331),
(15, 168, 0.93331),
(16, 168, 0.93331),
(17, 168, 0.93331),
(18, 168, 0.93331),
(13, 169, 1.16669),
(14, 169, 1.16669),
(15, 169, 1.16669),
(16, 169, 1.16669),
(17, 169, 1.16669),
(18, 169, 1.16669),
(13, 170, 0.56),
(14, 170, 0.56),
(15, 170, 0.56),
(16, 170, 0.56),
(17, 170, 0.56),
(18, 170, 0.56),
(13, 171, 0.95669),
(14, 171, 0.95669),
(15, 171, 0.95669),
(16, 171, 0.95669),
(17, 171, 0.95669),
(18, 171, 0.95669),
(13, 172, 1.09669),
(14, 172, 1.09669),
(15, 172, 1.09669),
(16, 172, 1.09669),
(17, 172, 1.09669),
(18, 172, 1.09669),
(13, 173, 1.07331),
(14, 173, 1.07331),
(15, 173, 1.07331),
(16, 173, 1.07331),
(17, 173, 1.07331),
(18, 173, 1.07331),
(13, 174, 1.14331),
(14, 174, 1.14331),
(15, 174, 1.14331),
(16, 174, 1.14331),
(17, 174, 1.14331),
(18, 174, 1.14331),
(13, 175, 0.46662),
(14, 175, 0.46662),
(15, 175, 0.46662),
(16, 175, 0.46662),
(17, 175, 0.46662),
(18, 175, 0.46662),
(13, 176, 0.93331),
(14, 176, 0.93331),
(15, 176, 0.93331),
(16, 176, 0.93331),
(17, 176, 0.93331),
(18, 176, 0.93331),
(13, 177, 1.12),
(14, 177, 1.12),
(15, 177, 1.12),
(16, 177, 1.12),
(17, 177, 1.12),
(18, 177, 1.12),
(13, 178, 0.95669),
(14, 178, 0.95669),
(15, 178, 0.95669),
(16, 178, 0.95669),
(17, 178, 0.95669),
(18, 178, 0.95669),
(13, 179, 1.09669),
(14, 179, 1.09669),
(15, 179, 1.09669),
(16, 179, 1.09669),
(17, 179, 1.09669),
(18, 179, 1.09669);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms3`
--

INSERT INTO `af8ks_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(13, 152, 0.69993),
(14, 152, 0.69993),
(15, 152, 0.69993),
(16, 152, 0.69993),
(17, 152, 0.69993),
(18, 152, 0.69993),
(13, 153, 1.05),
(14, 153, 1.05),
(15, 153, 1.05),
(16, 153, 1.05),
(17, 153, 1.05),
(18, 153, 1.05),
(13, 154, 1.14331),
(14, 154, 1.14331),
(15, 154, 1.14331),
(16, 154, 1.14331),
(17, 154, 1.14331),
(18, 154, 1.14331),
(13, 155, 0.98),
(14, 155, 0.98),
(15, 155, 0.98),
(16, 155, 0.98),
(17, 155, 0.98),
(18, 155, 0.98),
(13, 156, 1.14331),
(14, 156, 1.14331),
(15, 156, 1.14331),
(16, 156, 1.14331),
(17, 156, 1.14331),
(18, 156, 1.14331),
(13, 157, 1.00331),
(14, 157, 1.00331),
(15, 157, 1.00331),
(16, 157, 1.00331),
(17, 157, 1.00331),
(18, 157, 1.00331),
(13, 158, 1.07331),
(14, 158, 1.07331),
(15, 158, 1.07331),
(16, 158, 1.07331),
(17, 158, 1.07331),
(18, 158, 1.07331),
(13, 547, 1.92),
(14, 547, 1.92),
(15, 547, 1.92),
(16, 547, 1.92),
(17, 547, 1.92),
(18, 547, 1.92);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms4`
--

INSERT INTO `af8ks_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(13, 44, 0.63996),
(14, 44, 0.63996),
(15, 44, 0.63996),
(16, 44, 0.63996),
(17, 44, 0.63996),
(18, 44, 0.63996),
(13, 45, 0.32669),
(14, 45, 0.32669),
(15, 45, 0.32669),
(16, 45, 0.32669),
(17, 45, 0.32669),
(18, 45, 0.32669),
(13, 46, 1.02669),
(14, 46, 1.02669),
(15, 46, 1.02669),
(16, 46, 1.02669),
(17, 46, 1.02669),
(18, 46, 1.02669),
(13, 47, 1.14331),
(14, 47, 1.14331),
(15, 47, 1.14331),
(16, 47, 1.14331),
(17, 47, 1.14331),
(18, 47, 1.14331),
(13, 48, 0.56),
(14, 48, 0.56),
(15, 48, 0.56),
(16, 48, 0.56),
(17, 48, 0.56),
(18, 48, 0.56),
(13, 49, 1.23669),
(14, 49, 1.23669),
(15, 49, 1.23669),
(16, 49, 1.23669),
(17, 49, 1.23669),
(18, 49, 1.23669),
(13, 50, 1.35331),
(14, 50, 1.35331),
(15, 50, 1.35331),
(16, 50, 1.35331),
(17, 50, 1.35331),
(18, 50, 1.35331),
(13, 51, 0.84),
(14, 51, 0.84),
(15, 51, 0.84),
(16, 51, 0.84),
(17, 51, 0.84),
(18, 51, 0.84),
(13, 52, 1.05),
(14, 52, 1.05),
(15, 52, 1.05),
(16, 52, 1.05),
(17, 52, 1.05),
(18, 52, 1.05),
(13, 53, 1.16669),
(14, 53, 1.16669),
(15, 53, 1.16669),
(16, 53, 1.16669),
(17, 53, 1.16669),
(18, 53, 1.16669),
(13, 54, 1.05),
(14, 54, 1.05),
(15, 54, 1.05),
(16, 54, 1.05),
(17, 54, 1.05),
(18, 54, 1.05),
(13, 55, 1.26),
(14, 55, 1.26),
(15, 55, 1.26),
(16, 55, 1.26),
(17, 55, 1.26),
(18, 55, 1.26),
(13, 56, 0.18669),
(14, 56, 0.18669),
(15, 56, 0.18669),
(16, 56, 0.18669),
(17, 56, 0.18669),
(18, 56, 0.18669),
(13, 57, 0.98),
(14, 57, 0.98),
(15, 57, 0.98),
(16, 57, 0.98),
(17, 57, 0.98),
(18, 57, 0.98),
(13, 58, 1.16669),
(14, 58, 1.16669),
(15, 58, 1.16669),
(16, 58, 1.16669),
(17, 58, 1.16669),
(18, 58, 1.16669),
(13, 59, 0.14),
(14, 59, 0.14),
(15, 59, 0.14),
(16, 59, 0.14),
(17, 59, 0.14),
(18, 59, 0.14),
(13, 60, 0.93331),
(14, 60, 0.93331),
(15, 60, 0.93331),
(16, 60, 0.93331),
(17, 60, 0.93331),
(18, 60, 0.93331),
(13, 61, 1.12),
(14, 61, 1.12),
(15, 61, 1.12),
(16, 61, 1.12),
(17, 61, 1.12),
(18, 61, 1.12),
(13, 62, 0.42),
(14, 62, 0.42),
(15, 62, 0.42),
(16, 62, 0.42),
(17, 62, 0.42),
(18, 62, 0.42),
(13, 63, 1.19),
(14, 63, 1.19),
(15, 63, 1.19),
(16, 63, 1.19),
(17, 63, 1.19),
(18, 63, 1.19),
(13, 64, 1.4),
(14, 64, 1.4),
(15, 64, 1.4),
(16, 64, 1.4),
(17, 64, 1.4),
(18, 64, 1.4),
(13, 262, 0.32669),
(14, 262, 0.32669),
(15, 262, 0.32669),
(16, 262, 0.32669),
(17, 262, 0.32669),
(18, 262, 0.32669),
(13, 263, 0.93331),
(14, 263, 0.93331),
(15, 263, 0.93331),
(16, 263, 0.93331),
(17, 263, 0.93331),
(18, 263, 0.93331),
(13, 264, 1.16669),
(14, 264, 1.16669),
(15, 264, 1.16669),
(16, 264, 1.16669),
(17, 264, 1.16669),
(18, 264, 1.16669),
(13, 265, 0.42),
(14, 265, 0.42),
(15, 265, 0.42),
(16, 265, 0.42),
(17, 265, 0.42),
(18, 265, 0.42),
(13, 266, 1.00331),
(14, 266, 1.00331),
(15, 266, 1.00331),
(16, 266, 1.00331),
(17, 266, 1.00331),
(18, 266, 1.00331),
(13, 267, 1.14331),
(14, 267, 1.14331),
(15, 267, 1.14331),
(16, 267, 1.14331),
(17, 267, 1.14331),
(18, 267, 1.14331),
(13, 268, 0.28),
(14, 268, 0.28),
(15, 268, 0.28),
(16, 268, 0.28),
(17, 268, 0.28),
(18, 268, 0.28),
(13, 269, 1.00331),
(14, 269, 1.00331),
(15, 269, 1.00331),
(16, 269, 1.00331),
(17, 269, 1.00331),
(18, 269, 1.00331),
(13, 270, 1.23669),
(14, 270, 1.23669),
(15, 270, 1.23669),
(16, 270, 1.23669),
(17, 270, 1.23669),
(18, 270, 1.23669);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms6`
--

INSERT INTO `af8ks_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(13, 180, 0.28),
(14, 180, 0.28),
(15, 180, 0.28),
(16, 180, 0.28),
(17, 180, 0.28),
(18, 180, 0.28),
(13, 181, 0.93331),
(14, 181, 0.93331),
(15, 181, 0.93331),
(16, 181, 0.93331),
(17, 181, 0.93331),
(18, 181, 0.93331),
(13, 182, 1.19),
(14, 182, 1.19),
(15, 182, 1.19),
(16, 182, 1.19),
(17, 182, 1.19),
(18, 182, 1.19),
(13, 183, 0.46662),
(14, 183, 0.46662),
(15, 183, 0.46662),
(16, 183, 0.46662),
(17, 183, 0.46662),
(18, 183, 0.46662),
(13, 184, 0.91),
(14, 184, 0.91),
(15, 184, 0.91),
(16, 184, 0.91),
(17, 184, 0.91),
(18, 184, 0.91),
(13, 185, 1.07331),
(14, 185, 1.07331),
(15, 185, 1.07331),
(16, 185, 1.07331),
(17, 185, 1.07331),
(18, 185, 1.07331),
(13, 186, 0.93331),
(14, 186, 0.93331),
(15, 186, 0.93331),
(16, 186, 0.93331),
(17, 186, 0.93331),
(18, 186, 0.93331),
(13, 187, 1.05),
(14, 187, 1.05),
(15, 187, 1.05),
(16, 187, 1.05),
(17, 187, 1.05),
(18, 187, 1.05),
(13, 188, 0.23331),
(14, 188, 0.23331),
(15, 188, 0.23331),
(16, 188, 0.23331),
(17, 188, 0.23331),
(18, 188, 0.23331),
(13, 189, 0.98),
(14, 189, 0.98),
(15, 189, 0.98),
(16, 189, 0.98),
(17, 189, 0.98),
(18, 189, 0.98),
(13, 190, 1.16669),
(14, 190, 1.16669),
(15, 190, 1.16669),
(16, 190, 1.16669),
(17, 190, 1.16669),
(18, 190, 1.16669),
(13, 191, 0.28),
(14, 191, 0.28),
(15, 191, 0.28),
(16, 191, 0.28),
(17, 191, 0.28),
(18, 191, 0.28),
(13, 192, 1.02669),
(14, 192, 1.02669),
(15, 192, 1.02669),
(16, 192, 1.02669),
(17, 192, 1.02669),
(18, 192, 1.02669),
(13, 193, 1.21331),
(14, 193, 1.21331),
(15, 193, 1.21331),
(16, 193, 1.21331),
(17, 193, 1.21331),
(18, 193, 1.21331),
(13, 194, 0.28),
(14, 194, 0.28),
(15, 194, 0.28),
(16, 194, 0.28),
(17, 194, 0.28),
(18, 194, 0.28),
(13, 195, 1.05),
(14, 195, 1.05),
(15, 195, 1.05),
(16, 195, 1.05),
(17, 195, 1.05),
(18, 195, 1.05),
(13, 196, 1.28331),
(14, 196, 1.28331),
(15, 196, 1.28331),
(16, 196, 1.28331),
(17, 196, 1.28331),
(18, 196, 1.28331),
(13, 197, 0.14),
(14, 197, 0.14),
(15, 197, 0.14),
(16, 197, 0.14),
(17, 197, 0.14),
(18, 197, 0.14),
(13, 198, 0.91),
(14, 198, 0.91),
(15, 198, 0.91),
(16, 198, 0.91),
(17, 198, 0.91),
(18, 198, 0.91),
(13, 199, 1.02669),
(14, 199, 1.02669),
(15, 199, 1.02669),
(16, 199, 1.02669),
(17, 199, 1.02669),
(18, 199, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms7`
--

INSERT INTO `af8ks_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(13, 200, 0.37331),
(14, 200, 0.37331),
(15, 200, 0.37331),
(16, 200, 0.37331),
(17, 200, 0.37331),
(18, 200, 0.37331),
(13, 201, 1.12),
(14, 201, 1.12),
(15, 201, 1.12),
(16, 201, 1.12),
(17, 201, 1.12),
(18, 201, 1.12),
(13, 202, 1.21331),
(14, 202, 1.21331),
(15, 202, 1.21331),
(16, 202, 1.21331),
(17, 202, 1.21331),
(18, 202, 1.21331),
(13, 203, 0.32669),
(14, 203, 0.32669),
(15, 203, 0.32669),
(16, 203, 0.32669),
(17, 203, 0.32669),
(18, 203, 0.32669),
(13, 204, 1.09669),
(14, 204, 1.09669),
(15, 204, 1.09669),
(16, 204, 1.09669),
(17, 204, 1.09669),
(18, 204, 1.09669),
(13, 205, 1.16669),
(14, 205, 1.16669),
(15, 205, 1.16669),
(16, 205, 1.16669),
(17, 205, 1.16669),
(18, 205, 1.16669),
(13, 206, 0.28),
(14, 206, 0.28),
(15, 206, 0.28),
(16, 206, 0.28),
(17, 206, 0.28),
(18, 206, 0.28),
(13, 207, 1.07331),
(14, 207, 1.07331),
(15, 207, 1.07331),
(16, 207, 1.07331),
(17, 207, 1.07331),
(18, 207, 1.07331),
(13, 208, 1.14331),
(14, 208, 1.14331),
(15, 208, 1.14331),
(16, 208, 1.14331),
(17, 208, 1.14331),
(18, 208, 1.14331),
(13, 209, 1.00331),
(14, 209, 1.00331),
(15, 209, 1.00331),
(16, 209, 1.00331),
(17, 209, 1.00331),
(18, 209, 1.00331),
(13, 210, 1.12),
(14, 210, 1.12),
(15, 210, 1.12),
(16, 210, 1.12),
(17, 210, 1.12),
(18, 210, 1.12),
(13, 211, 0.56007),
(14, 211, 0.56007),
(15, 211, 0.56007),
(16, 211, 0.56007),
(17, 211, 0.56007),
(18, 211, 0.56007),
(13, 212, 0.95669),
(14, 212, 0.95669),
(15, 212, 0.95669),
(16, 212, 0.95669),
(17, 212, 0.95669),
(18, 212, 0.95669),
(13, 213, 1.19),
(14, 213, 1.19),
(15, 213, 1.19),
(16, 213, 1.19),
(17, 213, 1.19),
(18, 213, 1.19),
(13, 214, 0.88669),
(14, 214, 0.88669),
(15, 214, 0.88669),
(16, 214, 0.88669),
(17, 214, 0.88669),
(18, 214, 0.88669),
(13, 215, 1.02669),
(14, 215, 1.02669),
(15, 215, 1.02669),
(16, 215, 1.02669),
(17, 215, 1.02669),
(18, 215, 1.02669),
(13, 216, 0.46662),
(14, 216, 0.46662),
(15, 216, 0.46662),
(16, 216, 0.46662),
(17, 216, 0.46662),
(18, 216, 0.46662),
(13, 217, 1.05),
(14, 217, 1.05),
(15, 217, 1.05),
(16, 217, 1.05),
(17, 217, 1.05),
(18, 217, 1.05),
(13, 218, 1.19),
(14, 218, 1.19),
(15, 218, 1.19),
(16, 218, 1.19),
(17, 218, 1.19),
(18, 218, 1.19),
(13, 219, 0.88669),
(14, 219, 0.88669),
(15, 219, 0.88669),
(16, 219, 0.88669),
(17, 219, 0.88669),
(18, 219, 0.88669),
(13, 220, 1.02669),
(14, 220, 1.02669),
(15, 220, 1.02669),
(16, 220, 1.02669),
(17, 220, 1.02669),
(18, 220, 1.02669),
(13, 221, 0.28),
(14, 221, 0.28),
(15, 221, 0.28),
(16, 221, 0.28),
(17, 221, 0.28),
(18, 221, 0.28),
(13, 222, 1.00331),
(14, 222, 1.00331),
(15, 222, 1.00331),
(16, 222, 1.00331),
(17, 222, 1.00331),
(18, 222, 1.00331),
(13, 223, 1.14331),
(14, 223, 1.14331),
(15, 223, 1.14331),
(16, 223, 1.14331),
(17, 223, 1.14331),
(18, 223, 1.14331),
(13, 249, 0.18669),
(14, 249, 0.18669),
(15, 249, 0.18669),
(16, 249, 0.18669),
(17, 249, 0.18669),
(18, 249, 0.18669),
(13, 250, 0.93331),
(14, 250, 0.93331),
(15, 250, 0.93331),
(16, 250, 0.93331),
(17, 250, 0.93331),
(18, 250, 0.93331),
(13, 251, 1.16669),
(14, 251, 1.16669),
(15, 251, 1.16669),
(16, 251, 1.16669),
(17, 251, 1.16669),
(18, 251, 1.16669),
(13, 252, 0.56007),
(14, 252, 0.56007),
(15, 252, 0.56007),
(16, 252, 0.56007),
(17, 252, 0.56007),
(18, 252, 0.56007),
(13, 253, 0.91),
(14, 253, 0.91),
(15, 253, 0.91),
(16, 253, 0.91),
(17, 253, 0.91),
(18, 253, 0.91),
(13, 254, 1.05),
(14, 254, 1.05),
(15, 254, 1.05),
(16, 254, 1.05),
(17, 254, 1.05),
(18, 254, 1.05),
(13, 255, 0.98),
(14, 255, 0.98),
(15, 255, 0.98),
(16, 255, 0.98),
(17, 255, 0.98),
(18, 255, 0.98),
(13, 256, 1.02669),
(14, 256, 1.02669),
(15, 256, 1.02669),
(16, 256, 1.02669),
(17, 256, 1.02669),
(18, 256, 1.02669),
(13, 257, 0.88669),
(14, 257, 0.88669),
(15, 257, 0.88669),
(16, 257, 0.88669),
(17, 257, 0.88669),
(18, 257, 0.88669),
(13, 258, 1.02669),
(14, 258, 1.02669),
(15, 258, 1.02669),
(16, 258, 1.02669),
(17, 258, 1.02669),
(18, 258, 1.02669),
(13, 259, 0.32669),
(14, 259, 0.32669),
(15, 259, 0.32669),
(16, 259, 0.32669),
(17, 259, 0.32669),
(18, 259, 0.32669),
(13, 260, 1.02669),
(14, 260, 1.02669),
(15, 260, 1.02669),
(16, 260, 1.02669),
(17, 260, 1.02669),
(18, 260, 1.02669),
(13, 261, 1.19),
(14, 261, 1.19),
(15, 261, 1.19),
(16, 261, 1.19),
(17, 261, 1.19),
(18, 261, 1.19),
(13, 295, 0.51331),
(14, 295, 0.51331),
(15, 295, 0.51331),
(16, 295, 0.51331),
(17, 295, 0.51331),
(18, 295, 0.51331),
(13, 296, 1.19),
(14, 296, 1.19),
(15, 296, 1.19),
(16, 296, 1.19),
(17, 296, 1.19),
(18, 296, 1.19),
(13, 297, 1.30669),
(14, 297, 1.30669),
(15, 297, 1.30669),
(16, 297, 1.30669),
(17, 297, 1.30669),
(18, 297, 1.30669),
(13, 298, 1.26),
(14, 298, 1.26),
(15, 298, 1.26),
(16, 298, 1.26),
(17, 298, 1.26),
(18, 298, 1.26),
(13, 299, 1.00331),
(14, 299, 1.00331),
(15, 299, 1.00331),
(16, 299, 1.00331),
(17, 299, 1.00331),
(18, 299, 1.00331),
(13, 300, 1.30669),
(14, 300, 1.30669),
(15, 300, 1.30669),
(16, 300, 1.30669),
(17, 300, 1.30669),
(18, 300, 1.30669),
(13, 301, 2.05338),
(14, 301, 2.05338),
(15, 301, 2.05338),
(16, 301, 2.05338),
(17, 301, 2.05338),
(18, 301, 2.05338),
(13, 302, 1.12),
(14, 302, 1.12),
(15, 302, 1.12),
(16, 302, 1.12),
(17, 302, 1.12),
(18, 302, 1.12),
(13, 303, 0.18662),
(14, 303, 0.18662),
(15, 303, 0.18662),
(16, 303, 0.18662),
(17, 303, 0.18662),
(18, 303, 0.18662),
(13, 304, 0.98),
(14, 304, 0.98),
(15, 304, 0.98),
(16, 304, 0.98),
(17, 304, 0.98),
(18, 304, 0.98),
(13, 305, 1.02669),
(14, 305, 1.02669),
(15, 305, 1.02669),
(16, 305, 1.02669),
(17, 305, 1.02669),
(18, 305, 1.02669),
(13, 306, 0.88669),
(14, 306, 0.88669),
(15, 306, 0.88669),
(16, 306, 0.88669),
(17, 306, 0.88669),
(18, 306, 0.88669),
(13, 307, 1.05),
(14, 307, 1.05),
(15, 307, 1.05),
(16, 307, 1.05),
(17, 307, 1.05),
(18, 307, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms8`
--

INSERT INTO `af8ks_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(13, 65, 0.65338),
(14, 65, 0.65338),
(15, 65, 0.65338),
(16, 65, 0.65338),
(17, 65, 0.65338),
(18, 65, 0.65338),
(13, 66, 0.93331),
(14, 66, 0.93331),
(15, 66, 0.93331),
(16, 66, 0.93331),
(17, 66, 0.93331),
(18, 66, 0.93331),
(13, 67, 1.12),
(14, 67, 1.12),
(15, 67, 1.12),
(16, 67, 1.12),
(17, 67, 1.12),
(18, 67, 1.12),
(13, 68, 1.05),
(14, 68, 1.05),
(15, 68, 1.05),
(16, 68, 1.05),
(17, 68, 1.05),
(18, 68, 1.05),
(13, 69, 1.28331),
(14, 69, 1.28331),
(15, 69, 1.28331),
(16, 69, 1.28331),
(17, 69, 1.28331),
(18, 69, 1.28331),
(13, 70, 0.28),
(14, 70, 0.28),
(15, 70, 0.28),
(16, 70, 0.28),
(17, 70, 0.28),
(18, 70, 0.28),
(13, 71, 0.98),
(14, 71, 0.98),
(15, 71, 0.98),
(16, 71, 0.98),
(17, 71, 0.98),
(18, 71, 0.98),
(13, 72, 1.05),
(14, 72, 1.05),
(15, 72, 1.05),
(16, 72, 1.05),
(17, 72, 1.05),
(18, 72, 1.05),
(13, 73, 0.14),
(14, 73, 0.14),
(15, 73, 0.14),
(16, 73, 0.14),
(17, 73, 0.14),
(18, 73, 0.14),
(13, 74, 1.02669),
(14, 74, 1.02669),
(15, 74, 1.02669),
(16, 74, 1.02669),
(17, 74, 1.02669),
(18, 74, 1.02669),
(13, 75, 1.19),
(14, 75, 1.19),
(15, 75, 1.19),
(16, 75, 1.19),
(17, 75, 1.19),
(18, 75, 1.19),
(13, 76, 0.46662),
(14, 76, 0.46662),
(15, 76, 0.46662),
(16, 76, 0.46662),
(17, 76, 0.46662),
(18, 76, 0.46662),
(13, 77, 0.98),
(14, 77, 0.98),
(15, 77, 0.98),
(16, 77, 0.98),
(17, 77, 0.98),
(18, 77, 0.98),
(13, 78, 1.12),
(14, 78, 1.12),
(15, 78, 1.12),
(16, 78, 1.12),
(17, 78, 1.12),
(18, 78, 1.12),
(13, 79, 0.91),
(14, 79, 0.91),
(15, 79, 0.91),
(16, 79, 0.91),
(17, 79, 0.91),
(18, 79, 0.91),
(13, 80, 1.02669),
(14, 80, 1.02669),
(15, 80, 1.02669),
(16, 80, 1.02669),
(17, 80, 1.02669),
(18, 80, 1.02669),
(13, 81, 0.46662),
(14, 81, 0.46662),
(15, 81, 0.46662),
(16, 81, 0.46662),
(17, 81, 0.46662),
(18, 81, 0.46662),
(13, 82, 0.93331),
(14, 82, 0.93331),
(15, 82, 0.93331),
(16, 82, 0.93331),
(17, 82, 0.93331),
(18, 82, 0.93331),
(13, 83, 1.07331),
(14, 83, 1.07331),
(15, 83, 1.07331),
(16, 83, 1.07331),
(17, 83, 1.07331),
(18, 83, 1.07331),
(13, 84, 0.93331),
(14, 84, 0.93331),
(15, 84, 0.93331),
(16, 84, 0.93331),
(17, 84, 0.93331),
(18, 84, 0.93331),
(13, 85, 1.07331),
(14, 85, 1.07331),
(15, 85, 1.07331),
(16, 85, 1.07331),
(17, 85, 1.07331),
(18, 85, 1.07331),
(13, 122, 0.46662),
(14, 122, 0.46662),
(15, 122, 0.46662),
(16, 122, 0.46662),
(17, 122, 0.46662),
(18, 122, 0.46662),
(13, 123, 0.88669),
(14, 123, 0.88669),
(15, 123, 0.88669),
(16, 123, 0.88669),
(17, 123, 0.88669),
(18, 123, 0.88669),
(13, 124, 1.00331),
(14, 124, 1.00331),
(15, 124, 1.00331),
(16, 124, 1.00331),
(17, 124, 1.00331),
(18, 124, 1.00331),
(13, 125, 1.05),
(14, 125, 1.05),
(15, 125, 1.05),
(16, 125, 1.05),
(17, 125, 1.05),
(18, 125, 1.05),
(13, 126, 1.14331),
(14, 126, 1.14331),
(15, 126, 1.14331),
(16, 126, 1.14331),
(17, 126, 1.14331),
(18, 126, 1.14331),
(13, 127, 0.32669),
(14, 127, 0.32669),
(15, 127, 0.32669),
(16, 127, 0.32669),
(17, 127, 0.32669),
(18, 127, 0.32669),
(13, 128, 0.91),
(14, 128, 0.91),
(15, 128, 0.91),
(16, 128, 0.91),
(17, 128, 0.91),
(18, 128, 0.91),
(13, 129, 1.07331),
(14, 129, 1.07331),
(15, 129, 1.07331),
(16, 129, 1.07331),
(17, 129, 1.07331),
(18, 129, 1.07331),
(13, 130, 0.42),
(14, 130, 0.42),
(15, 130, 0.42),
(16, 130, 0.42),
(17, 130, 0.42),
(18, 130, 0.42),
(13, 131, 1.00331),
(14, 131, 1.00331),
(15, 131, 1.00331),
(16, 131, 1.00331),
(17, 131, 1.00331),
(18, 131, 1.00331),
(13, 132, 1.19),
(14, 132, 1.19),
(15, 132, 1.19),
(16, 132, 1.19),
(17, 132, 1.19),
(18, 132, 1.19),
(13, 133, 0.84),
(14, 133, 0.84),
(15, 133, 0.84),
(16, 133, 0.84),
(17, 133, 0.84),
(18, 133, 0.84),
(13, 134, 0.95669),
(14, 134, 0.95669),
(15, 134, 0.95669),
(16, 134, 0.95669),
(17, 134, 0.95669),
(18, 134, 0.95669),
(13, 135, 1.19),
(14, 135, 1.19),
(15, 135, 1.19),
(16, 135, 1.19),
(17, 135, 1.19),
(18, 135, 1.19),
(13, 136, 1.05),
(14, 136, 1.05),
(15, 136, 1.05),
(16, 136, 1.05),
(17, 136, 1.05),
(18, 136, 1.05),
(13, 137, 1.28331),
(14, 137, 1.28331),
(15, 137, 1.28331),
(16, 137, 1.28331),
(17, 137, 1.28331),
(18, 137, 1.28331),
(13, 138, 0.18662),
(14, 138, 0.18662),
(15, 138, 0.18662),
(16, 138, 0.18662),
(17, 138, 0.18662),
(18, 138, 0.18662),
(13, 139, 0.86331),
(14, 139, 0.86331),
(15, 139, 0.86331),
(16, 139, 0.86331),
(17, 139, 0.86331),
(18, 139, 0.86331),
(13, 140, 1.00331),
(14, 140, 1.00331),
(15, 140, 1.00331),
(16, 140, 1.00331),
(17, 140, 1.00331),
(18, 140, 1.00331),
(13, 141, 0.93331),
(14, 141, 0.93331),
(15, 141, 0.93331),
(16, 141, 0.93331),
(17, 141, 0.93331),
(18, 141, 0.93331),
(13, 142, 1.05),
(14, 142, 1.05),
(15, 142, 1.05),
(16, 142, 1.05),
(17, 142, 1.05),
(18, 142, 1.05),
(13, 143, 0.6666),
(14, 143, 0.6666),
(15, 143, 0.6666),
(16, 143, 0.6666),
(17, 143, 0.6666),
(18, 143, 0.6666),
(13, 144, 0.32669),
(14, 144, 0.32669),
(15, 144, 0.32669),
(16, 144, 0.32669),
(17, 144, 0.32669),
(18, 144, 0.32669),
(13, 145, 1.09669),
(14, 145, 1.09669),
(15, 145, 1.09669),
(16, 145, 1.09669),
(17, 145, 1.09669),
(18, 145, 1.09669),
(13, 146, 1.21331),
(14, 146, 1.21331),
(15, 146, 1.21331),
(16, 146, 1.21331),
(17, 146, 1.21331),
(18, 146, 1.21331),
(13, 147, 0.23331),
(14, 147, 0.23331),
(15, 147, 0.23331),
(16, 147, 0.23331),
(17, 147, 0.23331),
(18, 147, 0.23331),
(13, 148, 0.95669),
(14, 148, 0.95669),
(15, 148, 0.95669),
(16, 148, 0.95669),
(17, 148, 0.95669),
(18, 148, 0.95669),
(13, 149, 1.05),
(14, 149, 1.05),
(15, 149, 1.05),
(16, 149, 1.05),
(17, 149, 1.05),
(18, 149, 1.05),
(13, 150, 1.30683),
(14, 150, 1.30683),
(15, 150, 1.30683),
(16, 150, 1.30683),
(17, 150, 1.30683),
(18, 150, 1.30683),
(13, 151, 4.44),
(13, 159, 0.81313),
(14, 159, 0.81313),
(15, 159, 0.81313),
(16, 159, 0.81313),
(17, 159, 0.81313),
(18, 159, 0.81313),
(13, 160, 1.47996),
(14, 160, 1.47996),
(15, 160, 1.47996),
(16, 160, 1.47996),
(17, 160, 1.47996),
(18, 160, 1.47996),
(13, 161, 6.37),
(14, 161, 6.37),
(15, 161, 6.37),
(16, 161, 6.37),
(17, 161, 6.37),
(18, 161, 6.37),
(13, 162, 1.92),
(14, 162, 1.92),
(15, 162, 1.92),
(16, 162, 1.92),
(17, 162, 1.92),
(18, 162, 1.92),
(13, 163, 5.42679),
(14, 163, 5.42679),
(15, 163, 5.42679),
(16, 163, 5.42679),
(17, 163, 5.42679),
(18, 163, 5.42679),
(13, 224, 0.46669),
(14, 224, 0.46669),
(15, 224, 0.46669),
(16, 224, 0.46669),
(17, 224, 0.46669),
(18, 224, 0.46669),
(13, 225, 1.09669),
(14, 225, 1.09669),
(15, 225, 1.09669),
(16, 225, 1.09669),
(17, 225, 1.09669),
(18, 225, 1.09669),
(13, 226, 1.30669),
(14, 226, 1.30669),
(15, 226, 1.30669),
(16, 226, 1.30669),
(17, 226, 1.30669),
(18, 226, 1.30669),
(13, 227, 0.37338),
(14, 227, 0.37338),
(15, 227, 0.37338),
(16, 227, 0.37338),
(17, 227, 0.37338),
(18, 227, 0.37338),
(13, 228, 0.93331),
(14, 228, 0.93331),
(15, 228, 0.93331),
(16, 228, 0.93331),
(17, 228, 0.93331),
(18, 228, 0.93331),
(13, 229, 1.16669),
(14, 229, 1.16669),
(15, 229, 1.16669),
(16, 229, 1.16669),
(17, 229, 1.16669),
(18, 229, 1.16669),
(13, 230, 0.95669),
(14, 230, 0.95669),
(15, 230, 0.95669),
(16, 230, 0.95669),
(17, 230, 0.95669),
(18, 230, 0.95669),
(13, 231, 1.14331),
(14, 231, 1.14331),
(15, 231, 1.14331),
(16, 231, 1.14331),
(17, 231, 1.14331),
(18, 231, 1.14331),
(13, 232, 0.56),
(14, 232, 0.56),
(15, 232, 0.56),
(16, 232, 0.56),
(17, 232, 0.56),
(18, 232, 0.56),
(13, 233, 1.05),
(14, 233, 1.05),
(15, 233, 1.05),
(16, 233, 1.05),
(17, 233, 1.05),
(18, 233, 1.05),
(13, 234, 1.23669),
(14, 234, 1.23669),
(15, 234, 1.23669),
(16, 234, 1.23669),
(17, 234, 1.23669),
(18, 234, 1.23669),
(13, 235, 0.42),
(14, 235, 0.42),
(15, 235, 0.42),
(16, 235, 0.42),
(17, 235, 0.42),
(18, 235, 0.42),
(13, 236, 0.98),
(14, 236, 0.98),
(15, 236, 0.98),
(16, 236, 0.98),
(17, 236, 0.98),
(18, 236, 0.98),
(13, 237, 1.14331),
(14, 237, 1.14331),
(15, 237, 1.14331),
(16, 237, 1.14331),
(17, 237, 1.14331),
(18, 237, 1.14331),
(13, 238, 0.42),
(14, 238, 0.42),
(15, 238, 0.42),
(16, 238, 0.42),
(17, 238, 0.42),
(18, 238, 0.42),
(13, 239, 1.09669),
(14, 239, 1.09669),
(15, 239, 1.09669),
(16, 239, 1.09669),
(17, 239, 1.09669),
(18, 239, 1.09669),
(13, 240, 1.23669),
(14, 240, 1.23669),
(15, 240, 1.23669),
(16, 240, 1.23669),
(17, 240, 1.23669),
(18, 240, 1.23669),
(13, 241, 0.42),
(14, 241, 0.42),
(15, 241, 0.42),
(16, 241, 0.42),
(17, 241, 0.42),
(18, 241, 0.42),
(13, 242, 0.98),
(14, 242, 0.98),
(15, 242, 0.98),
(16, 242, 0.98),
(17, 242, 0.98),
(18, 242, 0.98),
(13, 243, 1.21331),
(14, 243, 1.21331),
(15, 243, 1.21331),
(16, 243, 1.21331),
(17, 243, 1.21331),
(18, 243, 1.21331),
(13, 244, 0.65338),
(14, 244, 0.65338),
(15, 244, 0.65338),
(16, 244, 0.65338),
(17, 244, 0.65338),
(18, 244, 0.65338),
(13, 245, 1.05),
(14, 245, 1.05),
(15, 245, 1.05),
(16, 245, 1.05),
(17, 245, 1.05),
(18, 245, 1.05),
(13, 246, 1.28331),
(14, 246, 1.28331),
(15, 246, 1.28331),
(16, 246, 1.28331),
(17, 246, 1.28331),
(18, 246, 1.28331),
(13, 247, 0.98),
(14, 247, 0.98),
(15, 247, 0.98),
(16, 247, 0.98),
(17, 247, 0.98),
(18, 247, 0.98),
(13, 248, 1.07331),
(14, 248, 1.07331),
(15, 248, 1.07331),
(16, 248, 1.07331),
(17, 248, 1.07331),
(18, 248, 1.07331),
(14, 514, 4.44),
(15, 521, 4.44),
(16, 528, 4.44),
(17, 535, 4.44),
(18, 542, 4.44);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_terms9`
--

INSERT INTO `af8ks_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(13, 308, 0.28),
(14, 308, 0.28),
(15, 308, 0.28),
(16, 308, 0.28),
(17, 308, 0.28),
(18, 308, 0.28),
(13, 309, 1.02669),
(14, 309, 1.02669),
(15, 309, 1.02669),
(16, 309, 1.02669),
(17, 309, 1.02669),
(18, 309, 1.02669),
(13, 310, 1.21331),
(14, 310, 1.21331),
(15, 310, 1.21331),
(16, 310, 1.21331),
(17, 310, 1.21331),
(18, 310, 1.21331),
(13, 311, 0.28),
(14, 311, 0.28),
(15, 311, 0.28),
(16, 311, 0.28),
(17, 311, 0.28),
(18, 311, 0.28),
(13, 312, 0.95669),
(14, 312, 0.95669),
(15, 312, 0.95669),
(16, 312, 0.95669),
(17, 312, 0.95669),
(18, 312, 0.95669),
(13, 313, 1.05),
(14, 313, 1.05),
(15, 313, 1.05),
(16, 313, 1.05),
(17, 313, 1.05),
(18, 313, 1.05),
(13, 314, 0.91),
(14, 314, 0.91),
(15, 314, 0.91),
(16, 314, 0.91),
(17, 314, 0.91),
(18, 314, 0.91),
(13, 315, 1.14331),
(14, 315, 1.14331),
(15, 315, 1.14331),
(16, 315, 1.14331),
(17, 315, 1.14331),
(18, 315, 1.14331),
(13, 316, 0.42),
(14, 316, 0.42),
(15, 316, 0.42),
(16, 316, 0.42),
(17, 316, 0.42),
(18, 316, 0.42),
(13, 317, 1.05),
(14, 317, 1.05),
(15, 317, 1.05),
(16, 317, 1.05),
(17, 317, 1.05),
(18, 317, 1.05),
(13, 318, 1.19),
(14, 318, 1.19),
(15, 318, 1.19),
(16, 318, 1.19),
(17, 318, 1.19),
(18, 318, 1.19),
(13, 319, 0.46662),
(14, 319, 0.46662),
(15, 319, 0.46662),
(16, 319, 0.46662),
(17, 319, 0.46662),
(18, 319, 0.46662),
(13, 320, 1.02669),
(14, 320, 1.02669),
(15, 320, 1.02669),
(16, 320, 1.02669),
(17, 320, 1.02669),
(18, 320, 1.02669),
(13, 321, 1.09669),
(14, 321, 1.09669),
(15, 321, 1.09669),
(16, 321, 1.09669),
(17, 321, 1.09669),
(18, 321, 1.09669),
(13, 322, 0.95669),
(14, 322, 0.95669),
(15, 322, 0.95669),
(16, 322, 0.95669),
(17, 322, 0.95669),
(18, 322, 0.95669),
(13, 323, 1.12),
(14, 323, 1.12),
(15, 323, 1.12),
(16, 323, 1.12),
(17, 323, 1.12),
(18, 323, 1.12),
(13, 324, 0.32669),
(14, 324, 0.32669),
(15, 324, 0.32669),
(16, 324, 0.32669),
(17, 324, 0.32669),
(18, 324, 0.32669),
(13, 325, 1.09669),
(14, 325, 1.09669),
(15, 325, 1.09669),
(16, 325, 1.09669),
(17, 325, 1.09669),
(18, 325, 1.09669),
(13, 326, 1.26),
(14, 326, 1.26),
(15, 326, 1.26),
(16, 326, 1.26),
(17, 326, 1.26),
(18, 326, 1.26),
(13, 327, 0.65338),
(14, 327, 0.65338),
(15, 327, 0.65338),
(16, 327, 0.65338),
(17, 327, 0.65338),
(18, 327, 0.65338),
(13, 328, 1.00331),
(14, 328, 1.00331),
(15, 328, 1.00331),
(16, 328, 1.00331),
(17, 328, 1.00331),
(18, 328, 1.00331),
(13, 329, 1.07331),
(14, 329, 1.07331),
(15, 329, 1.07331),
(16, 329, 1.07331),
(17, 329, 1.07331),
(18, 329, 1.07331),
(13, 330, 0.98),
(14, 330, 0.98),
(15, 330, 0.98),
(16, 330, 0.98),
(17, 330, 0.98),
(18, 330, 0.98),
(13, 331, 1.16669),
(14, 331, 1.16669),
(15, 331, 1.16669),
(16, 331, 1.16669),
(17, 331, 1.16669),
(18, 331, 1.16669),
(13, 332, 0.84),
(14, 332, 0.84),
(15, 332, 0.84),
(16, 332, 0.84),
(17, 332, 0.84),
(18, 332, 0.84),
(13, 333, 1.02669),
(14, 333, 1.02669),
(15, 333, 1.02669),
(16, 333, 1.02669),
(17, 333, 1.02669),
(18, 333, 1.02669),
(13, 334, 1.14331),
(14, 334, 1.14331),
(15, 334, 1.14331),
(16, 334, 1.14331),
(17, 334, 1.14331),
(18, 334, 1.14331),
(13, 335, 1.12),
(14, 335, 1.12),
(15, 335, 1.12),
(16, 335, 1.12),
(17, 335, 1.12),
(18, 335, 1.12),
(13, 336, 1.28331),
(14, 336, 1.28331),
(15, 336, 1.28331),
(16, 336, 1.28331),
(17, 336, 1.28331),
(18, 336, 1.28331);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_termsa`
--

INSERT INTO `af8ks_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(16, 526, 0.37);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_termsc`
--

INSERT INTO `af8ks_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(13, 2, 0.37),
(14, 512, 0.37);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_termsd`
--

INSERT INTO `af8ks_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_links_termse`
--

INSERT INTO `af8ks_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(13, 86, 0.37338),
(14, 86, 0.37338),
(15, 86, 0.37338),
(16, 86, 0.37338),
(17, 86, 0.37338),
(18, 86, 0.37338),
(13, 87, 0.91),
(14, 87, 0.91),
(15, 87, 0.91),
(16, 87, 0.91),
(17, 87, 0.91),
(18, 87, 0.91),
(13, 88, 0.98),
(14, 88, 0.98),
(15, 88, 0.98),
(16, 88, 0.98),
(17, 88, 0.98),
(18, 88, 0.98),
(13, 89, 0.93331),
(14, 89, 0.93331),
(15, 89, 0.93331),
(16, 89, 0.93331),
(17, 89, 0.93331),
(18, 89, 0.93331),
(13, 90, 1.09669),
(14, 90, 1.09669),
(15, 90, 1.09669),
(16, 90, 1.09669),
(17, 90, 1.09669),
(18, 90, 1.09669),
(13, 91, 0.74662),
(14, 91, 0.74662),
(15, 91, 0.74662),
(16, 91, 0.74662),
(17, 91, 0.74662),
(18, 91, 0.74662),
(13, 92, 0.95669),
(14, 92, 0.95669),
(15, 92, 0.95669),
(16, 92, 0.95669),
(17, 92, 0.95669),
(18, 92, 0.95669),
(13, 93, 1.07331),
(14, 93, 1.07331),
(15, 93, 1.07331),
(16, 93, 1.07331),
(17, 93, 1.07331),
(18, 93, 1.07331),
(13, 94, 1.05),
(14, 94, 1.05),
(15, 94, 1.05),
(16, 94, 1.05),
(17, 94, 1.05),
(18, 94, 1.05),
(13, 95, 1.21331),
(14, 95, 1.21331),
(15, 95, 1.21331),
(16, 95, 1.21331),
(17, 95, 1.21331),
(18, 95, 1.21331),
(13, 96, 0.42),
(14, 96, 0.42),
(15, 96, 0.42),
(16, 96, 0.42),
(17, 96, 0.42),
(18, 96, 0.42),
(13, 97, 1.07331),
(14, 97, 1.07331),
(15, 97, 1.07331),
(16, 97, 1.07331),
(17, 97, 1.07331),
(18, 97, 1.07331),
(13, 98, 1.19),
(14, 98, 1.19),
(15, 98, 1.19),
(16, 98, 1.19),
(17, 98, 1.19),
(18, 98, 1.19),
(13, 99, 0.18669),
(14, 99, 0.18669),
(15, 99, 0.18669),
(16, 99, 0.18669),
(17, 99, 0.18669),
(18, 99, 0.18669),
(13, 100, 0.95669),
(14, 100, 0.95669),
(15, 100, 0.95669),
(16, 100, 0.95669),
(17, 100, 0.95669),
(18, 100, 0.95669),
(13, 101, 1.14331),
(14, 101, 1.14331),
(15, 101, 1.14331),
(16, 101, 1.14331),
(17, 101, 1.14331),
(18, 101, 1.14331),
(13, 102, 0.56007),
(14, 102, 0.56007),
(15, 102, 0.56007),
(16, 102, 0.56007),
(17, 102, 0.56007),
(18, 102, 0.56007),
(13, 103, 0.98),
(14, 103, 0.98),
(15, 103, 0.98),
(16, 103, 0.98),
(17, 103, 0.98),
(18, 103, 0.98),
(13, 104, 1.12),
(14, 104, 1.12),
(15, 104, 1.12),
(16, 104, 1.12),
(17, 104, 1.12),
(18, 104, 1.12),
(13, 105, 0.93331),
(14, 105, 0.93331),
(15, 105, 0.93331),
(16, 105, 0.93331),
(17, 105, 0.93331),
(18, 105, 0.93331),
(13, 106, 1.05),
(14, 106, 1.05),
(15, 106, 1.05),
(16, 106, 1.05),
(17, 106, 1.05),
(18, 106, 1.05),
(13, 107, 0.93331),
(14, 107, 0.93331),
(15, 107, 0.93331),
(16, 107, 0.93331),
(17, 107, 0.93331),
(18, 107, 0.93331),
(13, 108, 1.12),
(14, 108, 1.12),
(15, 108, 1.12),
(16, 108, 1.12),
(17, 108, 1.12),
(18, 108, 1.12),
(13, 109, 0.09331),
(14, 109, 0.09331),
(15, 109, 0.09331),
(16, 109, 0.09331),
(17, 109, 0.09331),
(18, 109, 0.09331),
(13, 110, 0.91),
(14, 110, 0.91),
(15, 110, 0.91),
(16, 110, 0.91),
(17, 110, 0.91),
(18, 110, 0.91),
(13, 111, 1.00331),
(14, 111, 1.00331),
(15, 111, 1.00331),
(16, 111, 1.00331),
(17, 111, 1.00331),
(18, 111, 1.00331),
(13, 112, 0.23331),
(14, 112, 0.23331),
(15, 112, 0.23331),
(16, 112, 0.23331),
(17, 112, 0.23331),
(18, 112, 0.23331),
(13, 113, 1.05),
(14, 113, 1.05),
(15, 113, 1.05),
(16, 113, 1.05),
(17, 113, 1.05),
(18, 113, 1.05),
(13, 114, 1.16669),
(14, 114, 1.16669),
(15, 114, 1.16669),
(16, 114, 1.16669),
(17, 114, 1.16669),
(18, 114, 1.16669),
(13, 115, 0.27993),
(14, 115, 0.27993),
(15, 115, 0.27993),
(16, 115, 0.27993),
(17, 115, 0.27993),
(18, 115, 0.27993),
(13, 116, 0.98),
(14, 116, 0.98),
(15, 116, 0.98),
(16, 116, 0.98),
(17, 116, 0.98),
(18, 116, 0.98),
(13, 117, 1.12),
(14, 117, 1.12),
(15, 117, 1.12),
(16, 117, 1.12),
(17, 117, 1.12),
(18, 117, 1.12),
(13, 118, 0.86331),
(14, 118, 0.86331),
(15, 118, 0.86331),
(16, 118, 0.86331),
(17, 118, 0.86331),
(18, 118, 0.86331),
(13, 119, 1.02669),
(14, 119, 1.02669),
(15, 119, 1.02669),
(16, 119, 1.02669),
(17, 119, 1.02669),
(18, 119, 1.02669),
(13, 120, 0.93331),
(14, 120, 0.93331),
(15, 120, 0.93331),
(16, 120, 0.93331),
(17, 120, 0.93331),
(18, 120, 0.93331),
(13, 121, 1.05),
(14, 121, 1.05),
(15, 121, 1.05),
(16, 121, 1.05),
(17, 121, 1.05),
(18, 121, 1.05),
(13, 287, 0.56),
(14, 287, 0.56),
(15, 287, 0.56),
(16, 287, 0.56),
(17, 287, 0.56),
(18, 287, 0.56),
(13, 288, 1.00331),
(14, 288, 1.00331),
(15, 288, 1.00331),
(16, 288, 1.00331),
(17, 288, 1.00331),
(18, 288, 1.00331),
(13, 289, 1.09669),
(14, 289, 1.09669),
(15, 289, 1.09669),
(16, 289, 1.09669),
(17, 289, 1.09669),
(18, 289, 1.09669),
(13, 290, 1.07331),
(14, 290, 1.07331),
(15, 290, 1.07331),
(16, 290, 1.07331),
(17, 290, 1.07331),
(18, 290, 1.07331),
(13, 291, 1.26),
(14, 291, 1.26),
(15, 291, 1.26),
(16, 291, 1.26),
(17, 291, 1.26),
(18, 291, 1.26),
(13, 292, 0.42),
(14, 292, 0.42),
(15, 292, 0.42),
(16, 292, 0.42),
(17, 292, 0.42),
(18, 292, 0.42),
(13, 293, 1.02669),
(14, 293, 1.02669),
(15, 293, 1.02669),
(16, 293, 1.02669),
(17, 293, 1.02669),
(18, 293, 1.02669),
(13, 294, 1.21331),
(14, 294, 1.21331),
(15, 294, 1.21331),
(16, 294, 1.21331),
(17, 294, 1.21331),
(18, 294, 1.21331),
(15, 519, 0.37),
(17, 533, 0.37);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `af8ks_finder_taxonomy`
--

INSERT INTO `af8ks_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'K2 Item', 1, 1, 0),
(4, 1, 'K2 Category', 1, 1, 0),
(5, 4, 'K2 Sample Category', 1, 1, 0),
(6, 1, 'Language', 1, 1, 0),
(7, 6, '*', 1, 1, 0),
(8, 1, 'Author', 1, 1, 0),
(9, 8, 'JoomlaPlates', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_taxonomy_map`
--

INSERT INTO `af8ks_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(13, 3),
(13, 5),
(13, 7),
(13, 9),
(14, 3),
(14, 5),
(14, 7),
(14, 9),
(15, 3),
(15, 5),
(15, 7),
(15, 9),
(16, 3),
(16, 5),
(16, 7),
(16, 9),
(17, 3),
(17, 5),
(17, 7),
(17, 9),
(18, 3),
(18, 5),
(18, 7),
(18, 9);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_terms`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=548 ;

--
-- Dumping data for table `af8ks_finder_terms`
--

INSERT INTO `af8ks_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '', '', 0, 0, 0, '', 24, ''),
(2, '1', '1', 0, 0, 0.1, '', 4, ''),
(3, '61', '61', 0, 0, 0.2, '', 4, ''),
(4, 'a', 'a', 0, 0, 0.0667, 'A000', 24, ''),
(5, 'a tellus', 'a tellus', 0, 1, 1.2667, 'A342', 24, ''),
(6, 'a tellus phasellus', 'a tellus phasellus', 0, 1, 1.6, 'A3421242', 24, ''),
(7, 'a venenatis', 'a venenatis', 0, 1, 1.3667, 'A1532', 24, ''),
(8, 'a venenatis vitae', 'a venenatis vitae', 0, 1, 1.5667, 'A153213', 24, ''),
(9, 'ac', 'ac', 0, 0, 0.1333, 'A200', 24, ''),
(10, 'ac enim', 'ac enim', 0, 1, 1.2333, 'A250', 24, ''),
(11, 'ac enim aliquam', 'ac enim aliquam', 0, 1, 1.5, 'A25425', 24, ''),
(12, 'adipiscing', 'adipisc', 0, 0, 0.6667, 'A31252', 24, ''),
(13, 'adipiscing elit', 'adipisc elit', 0, 1, 1.5, 'A3125243', 24, ''),
(14, 'adipiscing elit aenean', 'adipisc elit aenean', 0, 1, 1.7333, 'A31252435', 24, ''),
(15, 'aenean', 'aenean', 0, 0, 0.4, 'A500', 24, ''),
(16, 'aenean commodo', 'aenean commodo', 0, 1, 1.4667, 'A5253', 24, ''),
(17, 'aenean commodo ligula', 'aenean commodo ligula', 0, 1, 1.7, 'A5253424', 24, ''),
(18, 'aenean imperdiet', 'aenean imperdiet', 0, 1, 1.5333, 'A5163', 24, ''),
(19, 'aenean imperdiet etiam', 'aenean imperdiet etiam', 0, 1, 1.7333, 'A51635', 24, ''),
(20, 'aenean leo', 'aenean leo', 0, 1, 1.3333, 'A540', 24, ''),
(21, 'aenean leo ligula', 'aenean leo ligula', 0, 1, 1.5667, 'A5424', 24, ''),
(22, 'aenean massa', 'aenean massa', 0, 1, 1.4, 'A520', 24, ''),
(23, 'aenean massa cum', 'aenean massa cum', 0, 1, 1.5333, 'A525', 24, ''),
(24, 'aenean vulputate', 'aenean vulputate', 0, 1, 1.5333, 'A51413', 24, ''),
(25, 'aenean vulputate eleifend', 'aenean vulputate eleifend', 0, 1, 1.8333, 'A514134153', 24, ''),
(26, 'aliquam', 'aliquam', 0, 0, 0.4667, 'A425', 24, ''),
(27, 'aliquam lorem', 'aliquam lorem', 0, 1, 1.4333, 'A425465', 24, ''),
(28, 'aliquam lorem ante', 'aliquam lorem ante', 0, 1, 1.6, 'A4254653', 24, ''),
(29, 'aliquet', 'aliquet', 0, 0, 0.4667, 'A423', 24, ''),
(30, 'aliquet nec', 'aliquet nec', 0, 1, 1.3667, 'A42352', 24, ''),
(31, 'aliquet nec vulputate', 'aliquet nec vulputate', 0, 1, 1.7, 'A423521413', 24, ''),
(32, 'amet', 'amet', 0, 0, 0.2667, 'A530', 24, ''),
(33, 'amet consectetuer', 'amet consectetuer', 0, 1, 1.5667, 'A5325236', 24, ''),
(34, 'amet consectetuer adipiscing', 'amet consectetuer adipiscing', 0, 1, 1.9333, 'A532523631252', 24, ''),
(35, 'ante', 'ant', 0, 0, 0.2667, 'A530', 24, ''),
(36, 'ante dapibus', 'ant dapibus', 0, 1, 1.4, 'A5312', 24, ''),
(37, 'ante dapibus in', 'ant dapibus in', 0, 1, 1.5, 'A53125', 24, ''),
(38, 'arcu', 'arcu', 0, 0, 0.2667, 'A620', 24, ''),
(39, 'arcu in', 'arcu in', 0, 1, 1.2333, 'A625', 24, ''),
(40, 'arcu in enim', 'arcu in enim', 0, 1, 1.4, 'A625', 24, ''),
(41, 'augue', 'augu', 0, 0, 0.3333, 'A200', 24, ''),
(42, 'augue curabitur', 'augu curabitur', 0, 1, 1.5, 'A26136', 24, ''),
(43, 'augue curabitur ullamcorper', 'augu curabitur ullamcorper', 0, 1, 1.9, 'A26136452616', 24, ''),
(44, 'category', 'categori', 0, 0, 0.5333, 'C326', 24, ''),
(45, 'commodo', 'commodo', 0, 0, 0.4667, 'C530', 24, ''),
(46, 'commodo ligula', 'commodo ligula', 0, 1, 1.4667, 'C53424', 24, ''),
(47, 'commodo ligula eget', 'commodo ligula eget', 0, 1, 1.6333, 'C5342423', 24, ''),
(48, 'consectetuer', 'consectetu', 0, 0, 0.8, 'C5236', 24, ''),
(49, 'consectetuer adipiscing', 'consectetu adipiscing', 0, 1, 1.7667, 'C523631252', 24, ''),
(50, 'consectetuer adipiscing elit', 'consectetu adipiscing elit', 0, 1, 1.9333, 'C52363125243', 24, ''),
(51, 'consequat', 'consequat', 0, 0, 0.6, 'C523', 24, ''),
(52, 'consequat massa', 'consequat massa', 0, 1, 1.5, 'C52352', 24, ''),
(53, 'consequat massa quis', 'consequat massa quis', 0, 1, 1.6667, 'C52352', 24, ''),
(54, 'consequat vitae', 'consequat vitae', 0, 1, 1.5, 'C52313', 24, ''),
(55, 'consequat vitae eleifend', 'consequat vitae eleifend', 0, 1, 1.8, 'C523134153', 24, ''),
(56, 'cras', 'cra', 0, 0, 0.2667, 'C620', 24, ''),
(57, 'cras dapibus', 'cra dapibus', 0, 1, 1.4, 'C62312', 24, ''),
(58, 'cras dapibus vivamus', 'cra dapibus vivamus', 0, 1, 1.6667, 'C62312152', 24, ''),
(59, 'cum', 'cum', 0, 0, 0.2, 'C500', 24, ''),
(60, 'cum sociis', 'cum sociis', 0, 1, 1.3333, 'C520', 24, ''),
(61, 'cum sociis natoque', 'cum sociis natoque', 0, 1, 1.6, 'C52532', 24, ''),
(62, 'curabitur', 'curabitur', 0, 0, 0.6, 'C6136', 24, ''),
(63, 'curabitur ullamcorper', 'curabitur ullamcorper', 0, 1, 1.7, 'C6136452616', 24, ''),
(64, 'curabitur ullamcorper ultricies', 'curabitur ullamcorper ultricies', 0, 1, 2, 'C61364526164362', 24, ''),
(65, 'dapibus', 'dapibu', 0, 0, 0.4667, 'D120', 24, ''),
(66, 'dapibus in', 'dapibu in', 0, 1, 1.3333, 'D125', 24, ''),
(67, 'dapibus in viverra', 'dapibu in viverra', 0, 1, 1.6, 'D12516', 24, ''),
(68, 'dapibus vivamus', 'dapibu vivamus', 0, 1, 1.5, 'D12152', 24, ''),
(69, 'dapibus vivamus elementum', 'dapibu vivamus elementum', 0, 1, 1.8333, 'D121524535', 24, ''),
(70, 'dictum', 'dictum', 0, 0, 0.4, 'D235', 24, ''),
(71, 'dictum felis', 'dictum felis', 0, 1, 1.4, 'D235142', 24, ''),
(72, 'dictum felis eu', 'dictum felis eu', 0, 1, 1.5, 'D235142', 24, ''),
(73, 'dis', 'di', 0, 0, 0.2, 'D200', 24, ''),
(74, 'dis parturient', 'di parturient', 0, 1, 1.4667, 'D2163653', 24, ''),
(75, 'dis parturient montes', 'di parturient montes', 0, 1, 1.7, 'D2163653532', 24, ''),
(76, 'dolor', 'dolor', 0, 0, 0.3333, 'D460', 24, ''),
(77, 'dolor aenean', 'dolor aenean', 0, 1, 1.4, 'D465', 24, ''),
(78, 'dolor aenean massa', 'dolor aenean massa', 0, 1, 1.6, 'D4652', 24, ''),
(79, 'dolor sit', 'dolor sit', 0, 1, 1.3, 'D4623', 24, ''),
(80, 'dolor sit amet', 'dolor sit amet', 0, 1, 1.4667, 'D462353', 24, ''),
(81, 'donec', 'donec', 0, 0, 0.3333, 'D520', 24, ''),
(82, 'donec pede', 'donec pede', 0, 1, 1.3333, 'D5213', 24, ''),
(83, 'donec pede justo', 'donec pede justo', 0, 1, 1.5333, 'D521323', 24, ''),
(84, 'donec quam', 'donec quam', 0, 1, 1.3333, 'D525', 24, ''),
(85, 'donec quam felis', 'donec quam felis', 0, 1, 1.5333, 'D525142', 24, ''),
(86, 'eget', 'eget', 0, 0, 0.2667, 'E230', 24, ''),
(87, 'eget arcu', 'eget arcu', 0, 1, 1.3, 'E2362', 24, ''),
(88, 'eget arcu in', 'eget arcu in', 0, 1, 1.4, 'E23625', 24, ''),
(89, 'eget dolor', 'eget dolor', 0, 1, 1.3333, 'E2346', 24, ''),
(90, 'eget dolor aenean', 'eget dolor aenean', 0, 1, 1.5667, 'E23465', 24, ''),
(91, 'eleifend', 'eleifend', 0, 0, 0.5333, 'E4153', 24, ''),
(92, 'eleifend ac', 'eleifend ac', 0, 1, 1.3667, 'E41532', 24, ''),
(93, 'eleifend ac enim', 'eleifend ac enim', 0, 1, 1.5333, 'E415325', 24, ''),
(94, 'eleifend tellus', 'eleifend tellus', 0, 1, 1.5, 'E415342', 24, ''),
(95, 'eleifend tellus aenean', 'eleifend tellus aenean', 0, 1, 1.7333, 'E4153425', 24, ''),
(96, 'elementum', 'elementum', 0, 0, 0.6, 'E4535', 24, ''),
(97, 'elementum semper', 'elementum semper', 0, 1, 1.5333, 'E45352516', 24, ''),
(98, 'elementum semper nisi', 'elementum semper nisi', 0, 1, 1.7, 'E4535251652', 24, ''),
(99, 'elit', 'elit', 0, 0, 0.2667, 'E430', 24, ''),
(100, 'elit aenean', 'elit aenean', 0, 1, 1.3667, 'E435', 24, ''),
(101, 'elit aenean commodo', 'elit aenean commodo', 0, 1, 1.6333, 'E435253', 24, ''),
(102, 'enim', 'enim', 0, 0, 0.2667, 'E500', 24, ''),
(103, 'enim aliquam', 'enim aliquam', 0, 1, 1.4, 'E5425', 24, ''),
(104, 'enim aliquam lorem', 'enim aliquam lorem', 0, 1, 1.6, 'E5425465', 24, ''),
(105, 'enim donec', 'enim donec', 0, 1, 1.3333, 'E5352', 24, ''),
(106, 'enim donec pede', 'enim donec pede', 0, 1, 1.5, 'E535213', 24, ''),
(107, 'enim justo', 'enim justo', 0, 1, 1.3333, 'E523', 24, ''),
(108, 'enim justo rhoncus', 'enim justo rhoncus', 0, 1, 1.6, 'E523652', 24, ''),
(109, 'et', 'et', 0, 0, 0.1333, 'E300', 24, ''),
(110, 'et magnis', 'et magnis', 0, 1, 1.3, 'E35252', 24, ''),
(111, 'et magnis dis', 'et magnis dis', 0, 1, 1.4333, 'E3525232', 24, ''),
(112, 'etiam', 'etiam', 0, 0, 0.3333, 'E350', 24, ''),
(113, 'etiam ultricies', 'etiam ultricies', 0, 1, 1.5, 'E354362', 24, ''),
(114, 'etiam ultricies nisi', 'etiam ultricies nisi', 0, 1, 1.6667, 'E35436252', 24, ''),
(115, 'eu', 'eu', 0, 0, 0.1333, 'E000', 24, ''),
(116, 'eu consequat', 'eu consequat', 0, 1, 1.4, 'E2523', 24, ''),
(117, 'eu consequat vitae', 'eu consequat vitae', 0, 1, 1.6, 'E252313', 24, ''),
(118, 'eu pede', 'eu pede', 0, 1, 1.2333, 'E130', 24, ''),
(119, 'eu pede mollis', 'eu pede mollis', 0, 1, 1.4667, 'E13542', 24, ''),
(120, 'eu pretium', 'eu pretium', 0, 1, 1.3333, 'E1635', 24, ''),
(121, 'eu pretium quis', 'eu pretium quis', 0, 1, 1.5, 'E16352', 24, ''),
(122, 'felis', 'feli', 0, 0, 0.3333, 'F420', 24, ''),
(123, 'felis eu', 'feli eu', 0, 1, 1.2667, 'F420', 24, ''),
(124, 'felis eu pede', 'feli eu pede', 0, 1, 1.4333, 'F4213', 24, ''),
(125, 'felis ultricies', 'feli ultricies', 0, 1, 1.5, 'F424362', 24, ''),
(126, 'felis ultricies nec', 'feli ultricies nec', 0, 1, 1.6333, 'F42436252', 24, ''),
(127, 'feugiat', 'feugiat', 0, 0, 0.4667, 'F230', 24, ''),
(128, 'feugiat a', 'feugiat a', 0, 1, 1.3, 'F230', 24, ''),
(129, 'feugiat a tellus', 'feugiat a tellus', 0, 1, 1.5333, 'F2342', 24, ''),
(130, 'fringilla', 'fringilla', 0, 0, 0.6, 'F6524', 24, ''),
(131, 'fringilla vel', 'fringilla vel', 0, 1, 1.4333, 'F652414', 24, ''),
(132, 'fringilla vel aliquet', 'fringilla vel aliquet', 0, 1, 1.7, 'F65241423', 24, ''),
(133, 'imperdiet', 'imperdiet', 0, 0, 0.6, 'I5163', 24, ''),
(134, 'imperdiet a', 'imperdiet a', 0, 1, 1.3667, 'I5163', 24, ''),
(135, 'imperdiet a venenatis', 'imperdiet a venenatis', 0, 1, 1.7, 'I51631532', 24, ''),
(136, 'imperdiet etiam', 'imperdiet etiam', 0, 1, 1.5, 'I51635', 24, ''),
(137, 'imperdiet etiam ultricies', 'imperdiet etiam ultricies', 0, 1, 1.8333, 'I516354362', 24, ''),
(138, 'in', 'in', 0, 0, 0.1333, 'I500', 24, ''),
(139, 'in enim', 'in enim', 0, 1, 1.2333, 'I500', 24, ''),
(140, 'in enim justo', 'in enim justo', 0, 1, 1.4333, 'I523', 24, ''),
(141, 'in viverra', 'in viverra', 0, 1, 1.3333, 'I516', 24, ''),
(142, 'in viverra quis', 'in viverra quis', 0, 1, 1.5, 'I5162', 24, ''),
(143, 'index', 'index', 0, 0, 0.3333, 'I532', 24, ''),
(144, 'integer', 'integ', 0, 0, 0.4667, 'I5326', 24, ''),
(145, 'integer tincidunt', 'integ tincidunt', 0, 1, 1.5667, 'I5326352353', 24, ''),
(146, 'integer tincidunt cras', 'integ tincidunt cras', 0, 1, 1.7333, 'I5326352353262', 24, ''),
(147, 'ipsum', 'ipsum', 0, 0, 0.3333, 'I125', 24, ''),
(148, 'ipsum dolor', 'ipsum dolor', 0, 1, 1.3667, 'I125346', 24, ''),
(149, 'ipsum dolor sit', 'ipsum dolor sit', 0, 1, 1.5, 'I12534623', 24, ''),
(150, 'item', 'item', 0, 0, 0.2667, 'I350', 24, ''),
(151, 'item 1', 'item 1', 0, 1, 1.2, 'I350', 4, ''),
(152, 'justo', 'justo', 0, 0, 0.3333, 'J300', 24, ''),
(153, 'justo fringilla', 'justo fringilla', 0, 1, 1.5, 'J316524', 24, ''),
(154, 'justo fringilla vel', 'justo fringilla vel', 0, 1, 1.6333, 'J31652414', 24, ''),
(155, 'justo nullam', 'justo nullam', 0, 1, 1.4, 'J3545', 24, ''),
(156, 'justo nullam dictum', 'justo nullam dictum', 0, 1, 1.6333, 'J35453235', 24, ''),
(157, 'justo rhoncus', 'justo rhoncus', 0, 1, 1.4333, 'J3652', 24, ''),
(158, 'justo rhoncus ut', 'justo rhoncus ut', 0, 1, 1.5333, 'J36523', 24, ''),
(159, 'k2', 'k2', 0, 0, 0.1333, 'K000', 24, ''),
(160, 'k2 item', 'k2 item', 0, 1, 1.2333, 'K350', 24, ''),
(161, 'k2 sample', 'k2 sample', 0, 1, 1.3, 'K514', 24, ''),
(162, 'k2 sample category', 'k2 sample category', 0, 1, 1.6, 'K5142326', 24, ''),
(163, 'k2 sample item', 'k2 sample item', 0, 1, 1.4667, 'K51435', 24, ''),
(164, 'laoreet', 'laoreet', 0, 0, 0.4667, 'L630', 24, ''),
(165, 'laoreet quisque', 'laoreet quisque', 0, 1, 1.5, 'L632', 24, ''),
(166, 'laoreet quisque rutrum', 'laoreet quisque rutrum', 0, 1, 1.7333, 'L6326365', 24, ''),
(167, 'leo', 'leo', 0, 0, 0.2, 'L000', 24, ''),
(168, 'leo ligula', 'leo ligula', 0, 1, 1.3333, 'L240', 24, ''),
(169, 'leo ligula porttitor', 'leo ligula porttitor', 0, 1, 1.6667, 'L241636', 24, ''),
(170, 'ligula', 'ligula', 0, 0, 0.4, 'L240', 24, ''),
(171, 'ligula eget', 'ligula eget', 0, 1, 1.3667, 'L2423', 24, ''),
(172, 'ligula eget dolor', 'ligula eget dolor', 0, 1, 1.5667, 'L242346', 24, ''),
(173, 'ligula porttitor', 'ligula porttitor', 0, 1, 1.5333, 'L241636', 24, ''),
(174, 'ligula porttitor eu', 'ligula porttitor eu', 0, 1, 1.6333, 'L241636', 24, ''),
(175, 'lorem', 'lorem', 0, 0, 0.3333, 'L650', 24, ''),
(176, 'lorem ante', 'lorem ante', 0, 1, 1.3333, 'L653', 24, ''),
(177, 'lorem ante dapibus', 'lorem ante dapibus', 0, 1, 1.6, 'L65312', 24, ''),
(178, 'lorem ipsum', 'lorem ipsum', 0, 1, 1.3667, 'L65125', 24, ''),
(179, 'lorem ipsum dolor', 'lorem ipsum dolor', 0, 1, 1.5667, 'L65125346', 24, ''),
(180, 'magnis', 'magni', 0, 0, 0.4, 'M252', 24, ''),
(181, 'magnis dis', 'magni dis', 0, 1, 1.3333, 'M25232', 24, ''),
(182, 'magnis dis parturient', 'magni dis parturient', 0, 1, 1.7, 'M25232163653', 24, ''),
(183, 'massa', 'massa', 0, 0, 0.3333, 'M200', 24, ''),
(184, 'massa cum', 'massa cum', 0, 1, 1.3, 'M250', 24, ''),
(185, 'massa cum sociis', 'massa cum sociis', 0, 1, 1.5333, 'M252', 24, ''),
(186, 'massa quis', 'massa quis', 0, 1, 1.3333, 'M200', 24, ''),
(187, 'massa quis enim', 'massa quis enim', 0, 1, 1.5, 'M250', 24, ''),
(188, 'metus', 'metu', 0, 0, 0.3333, 'M320', 24, ''),
(189, 'metus varius', 'metu varius', 0, 1, 1.4, 'M32162', 24, ''),
(190, 'metus varius laoreet', 'metu varius laoreet', 0, 1, 1.6667, 'M32162463', 24, ''),
(191, 'mollis', 'molli', 0, 0, 0.4, 'M420', 24, ''),
(192, 'mollis pretium', 'molli pretium', 0, 1, 1.4667, 'M421635', 24, ''),
(193, 'mollis pretium integer', 'molli pretium integer', 0, 1, 1.7333, 'M421635326', 24, ''),
(194, 'montes', 'mont', 0, 0, 0.4, 'M320', 24, ''),
(195, 'montes nascetur', 'mont nascetur', 0, 1, 1.5, 'M325236', 24, ''),
(196, 'montes nascetur ridiculus', 'mont nascetur ridiculus', 0, 1, 1.8333, 'M3252363242', 24, ''),
(197, 'mus', 'mu', 0, 0, 0.2, 'M200', 24, ''),
(198, 'mus donec', 'mu donec', 0, 1, 1.3, 'M2352', 24, ''),
(199, 'mus donec quam', 'mu donec quam', 0, 1, 1.4667, 'M23525', 24, ''),
(200, 'nascetur', 'nascetur', 0, 0, 0.5333, 'N236', 24, ''),
(201, 'nascetur ridiculus', 'nascetur ridiculus', 0, 1, 1.6, 'N2363242', 24, ''),
(202, 'nascetur ridiculus mus', 'nascetur ridiculus mus', 0, 1, 1.7333, 'N236324252', 24, ''),
(203, 'natoque', 'natoqu', 0, 0, 0.4667, 'N320', 24, ''),
(204, 'natoque penatibus', 'natoqu penatibus', 0, 1, 1.5667, 'N3215312', 24, ''),
(205, 'natoque penatibus et', 'natoqu penatibus et', 0, 1, 1.6667, 'N32153123', 24, ''),
(206, 'nec', 'nec', 0, 0, 0.2, 'N200', 24, ''),
(207, 'nec pellentesque', 'nec pellentesque', 0, 1, 1.5333, 'N214532', 24, ''),
(208, 'nec pellentesque eu', 'nec pellentesque eu', 0, 1, 1.6333, 'N214532', 24, ''),
(209, 'nec vulputate', 'nec vulputate', 0, 1, 1.4333, 'N21413', 24, ''),
(210, 'nec vulputate eget', 'nec vulputate eget', 0, 1, 1.6, 'N2141323', 24, ''),
(211, 'nisi', 'nisi', 0, 0, 0.2667, 'N200', 24, ''),
(212, 'nisi aenean', 'nisi aenean', 0, 1, 1.3667, 'N250', 24, ''),
(213, 'nisi aenean vulputate', 'nisi aenean vulputate', 0, 1, 1.7, 'N251413', 24, ''),
(214, 'nisi vel', 'nisi vel', 0, 1, 1.2667, 'N214', 24, ''),
(215, 'nisi vel augue', 'nisi vel augue', 0, 1, 1.4667, 'N2142', 24, ''),
(216, 'nulla', 'nulla', 0, 0, 0.3333, 'N400', 24, ''),
(217, 'nulla consequat', 'nulla consequat', 0, 1, 1.5, 'N42523', 24, ''),
(218, 'nulla consequat massa', 'nulla consequat massa', 0, 1, 1.7, 'N4252352', 24, ''),
(219, 'nulla ut', 'nulla ut', 0, 1, 1.2667, 'N430', 24, ''),
(220, 'nulla ut metus', 'nulla ut metus', 0, 1, 1.4667, 'N43532', 24, ''),
(221, 'nullam', 'nullam', 0, 0, 0.4, 'N450', 24, ''),
(222, 'nullam dictum', 'nullam dictum', 0, 1, 1.4333, 'N453235', 24, ''),
(223, 'nullam dictum felis', 'nullam dictum felis', 0, 1, 1.6333, 'N453235142', 24, ''),
(224, 'parturient', 'parturi', 0, 0, 0.6667, 'P63653', 24, ''),
(225, 'parturient montes', 'parturi montes', 0, 1, 1.5667, 'P63653532', 24, ''),
(226, 'parturient montes nascetur', 'parturi montes nascetur', 0, 1, 1.8667, 'P636535325236', 24, ''),
(227, 'pede', 'pede', 0, 0, 0.2667, 'P300', 24, ''),
(228, 'pede justo', 'pede justo', 0, 1, 1.3333, 'P323', 24, ''),
(229, 'pede justo fringilla', 'pede justo fringilla', 0, 1, 1.6667, 'P32316524', 24, ''),
(230, 'pede mollis', 'pede mollis', 0, 1, 1.3667, 'P3542', 24, ''),
(231, 'pede mollis pretium', 'pede mollis pretium', 0, 1, 1.6333, 'P35421635', 24, ''),
(232, 'pellentesque', 'pellentesqu', 0, 0, 0.8, 'P4532', 24, ''),
(233, 'pellentesque eu', 'pellentesqu eu', 0, 1, 1.5, 'P4532', 24, ''),
(234, 'pellentesque eu pretium', 'pellentesqu eu pretium', 0, 1, 1.7667, 'P45321635', 24, ''),
(235, 'penatibus', 'penatibu', 0, 0, 0.6, 'P5312', 24, ''),
(236, 'penatibus et', 'penatibu et', 0, 1, 1.4, 'P53123', 24, ''),
(237, 'penatibus et magnis', 'penatibu et magnis', 0, 1, 1.6333, 'P531235252', 24, ''),
(238, 'phasellus', 'phasellu', 0, 0, 0.6, 'P242', 24, ''),
(239, 'phasellus viverra', 'phasellu viverra', 0, 1, 1.5667, 'P24216', 24, ''),
(240, 'phasellus viverra nulla', 'phasellu viverra nulla', 0, 1, 1.7667, 'P2421654', 24, ''),
(241, 'porttitor', 'porttitor', 0, 0, 0.6, 'P636', 24, ''),
(242, 'porttitor eu', 'porttitor eu', 0, 1, 1.4, 'P636', 24, ''),
(243, 'porttitor eu consequat', 'porttitor eu consequat', 0, 1, 1.7333, 'P6362523', 24, ''),
(244, 'pretium', 'pretium', 0, 0, 0.4667, 'P635', 24, ''),
(245, 'pretium integer', 'pretium integer', 0, 1, 1.5, 'P635326', 24, ''),
(246, 'pretium integer tincidunt', 'pretium integer tincidunt', 0, 1, 1.8333, 'P635326352353', 24, ''),
(247, 'pretium quis', 'pretium quis', 0, 1, 1.4, 'P6352', 24, ''),
(248, 'pretium quis sem', 'pretium quis sem', 0, 1, 1.5333, 'P63525', 24, ''),
(249, 'quam', 'quam', 0, 0, 0.2667, 'Q500', 24, ''),
(250, 'quam felis', 'quam felis', 0, 1, 1.3333, 'Q5142', 24, ''),
(251, 'quam felis ultricies', 'quam felis ultricies', 0, 1, 1.6667, 'Q51424362', 24, ''),
(252, 'quis', 'qui', 0, 0, 0.2667, 'Q000', 24, ''),
(253, 'quis enim', 'qui enim', 0, 1, 1.3, 'Q500', 24, ''),
(254, 'quis enim donec', 'qui enim donec', 0, 1, 1.5, 'Q5352', 24, ''),
(255, 'quis feugiat', 'qui feugiat', 0, 1, 1.4, 'Q123', 24, ''),
(256, 'quis feugiat a', 'qui feugiat a', 0, 1, 1.4667, 'Q123', 24, ''),
(257, 'quis sem', 'qui sem', 0, 1, 1.2667, 'Q500', 24, ''),
(258, 'quis sem nulla', 'qui sem nulla', 0, 1, 1.4667, 'Q540', 24, ''),
(259, 'quisque', 'quisqu', 0, 0, 0.4667, 'Q000', 24, ''),
(260, 'quisque rutrum', 'quisqu rutrum', 0, 1, 1.4667, 'Q6365', 24, ''),
(261, 'quisque rutrum aenean', 'quisqu rutrum aenean', 0, 1, 1.7, 'Q6365', 24, ''),
(262, 'rhoncus', 'rhoncu', 0, 0, 0.4667, 'R520', 24, ''),
(263, 'rhoncus ut', 'rhoncu ut', 0, 1, 1.3333, 'R523', 24, ''),
(264, 'rhoncus ut imperdiet', 'rhoncu ut imperdiet', 0, 1, 1.6667, 'R5235163', 24, ''),
(265, 'ridiculus', 'ridiculu', 0, 0, 0.6, 'R3242', 24, ''),
(266, 'ridiculus mus', 'ridiculu mus', 0, 1, 1.4333, 'R324252', 24, ''),
(267, 'ridiculus mus donec', 'ridiculu mus donec', 0, 1, 1.6333, 'R324252352', 24, ''),
(268, 'rutrum', 'rutrum', 0, 0, 0.4, 'R365', 24, ''),
(269, 'rutrum aenean', 'rutrum aenean', 0, 1, 1.4333, 'R365', 24, ''),
(270, 'rutrum aenean imperdiet', 'rutrum aenean imperdiet', 0, 1, 1.7667, 'R365163', 24, ''),
(271, 'sample', 'sampl', 0, 0, 0.4, 'S514', 24, ''),
(272, 'sample category', 'sampl category', 0, 1, 1.5, 'S5142326', 24, ''),
(273, 'sample item', 'sampl item', 0, 1, 1.3667, 'S51435', 24, ''),
(274, 'sample item 1', 'sampl item 1', 0, 1, 1.4333, 'S51435', 4, ''),
(275, 'sem', 'sem', 0, 0, 0.2, 'S500', 24, ''),
(276, 'sem nulla', 'sem nulla', 0, 1, 1.3, 'S540', 24, ''),
(277, 'sem nulla consequat', 'sem nulla consequat', 0, 1, 1.6333, 'S542523', 24, ''),
(278, 'semper', 'semper', 0, 0, 0.4, 'S516', 24, ''),
(279, 'semper nisi', 'semper nisi', 0, 1, 1.3667, 'S51652', 24, ''),
(280, 'semper nisi aenean', 'semper nisi aenean', 0, 1, 1.6, 'S516525', 24, ''),
(281, 'sit', 'sit', 0, 0, 0.2, 'S300', 24, ''),
(282, 'sit amet', 'sit amet', 0, 1, 1.2667, 'S353', 24, ''),
(283, 'sit amet consectetuer', 'sit amet consectetuer', 0, 1, 1.7, 'S35325236', 24, ''),
(284, 'sociis', 'socii', 0, 0, 0.4, 'S000', 24, ''),
(285, 'sociis natoque', 'socii natoque', 0, 1, 1.4667, 'S532', 24, ''),
(286, 'sociis natoque penatibus', 'socii natoque penatibus', 0, 1, 1.8, 'S53215312', 24, ''),
(287, 'tellus', 'tellu', 0, 0, 0.4, 'T420', 24, ''),
(288, 'tellus aenean', 'tellu aenean', 0, 1, 1.4333, 'T425', 24, ''),
(289, 'tellus aenean leo', 'tellu aenean leo', 0, 1, 1.5667, 'T4254', 24, ''),
(290, 'tellus phasellus', 'tellu phasellus', 0, 1, 1.5333, 'T421242', 24, ''),
(291, 'tellus phasellus viverra', 'tellu phasellus viverra', 0, 1, 1.8, 'T42124216', 24, ''),
(292, 'tincidunt', 'tincidunt', 0, 0, 0.6, 'T52353', 24, ''),
(293, 'tincidunt cras', 'tincidunt cras', 0, 1, 1.4667, 'T52353262', 24, ''),
(294, 'tincidunt cras dapibus', 'tincidunt cras dapibus', 0, 1, 1.7333, 'T52353262312', 24, ''),
(295, 'ullamcorper', 'ullamcorp', 0, 0, 0.7333, 'U452616', 24, ''),
(296, 'ullamcorper ultricies', 'ullamcorp ultricies', 0, 1, 1.7, 'U4526164362', 24, ''),
(297, 'ullamcorper ultricies nisi', 'ullamcorp ultricies nisi', 0, 1, 1.8667, 'U452616436252', 24, ''),
(298, 'ultricies', 'ultrici', 0, 0, 0.6, 'U4362', 24, ''),
(299, 'ultricies nec', 'ultrici nec', 0, 1, 1.4333, 'U436252', 24, ''),
(300, 'ultricies nec pellentesque', 'ultrici nec pellentesque', 0, 1, 1.8667, 'U43625214532', 24, ''),
(301, 'ultricies nisi', 'ultrici nisi', 0, 1, 1.4667, 'U436252', 24, ''),
(302, 'ultricies nisi vel', 'ultrici nisi vel', 0, 1, 1.6, 'U43625214', 24, ''),
(303, 'ut', 'ut', 0, 0, 0.1333, 'U300', 24, ''),
(304, 'ut imperdiet', 'ut imperdiet', 0, 1, 1.4, 'U35163', 24, ''),
(305, 'ut imperdiet a', 'ut imperdiet a', 0, 1, 1.4667, 'U35163', 24, ''),
(306, 'ut metus', 'ut metus', 0, 1, 1.2667, 'U3532', 24, ''),
(307, 'ut metus varius', 'ut metus varius', 0, 1, 1.5, 'U3532162', 24, ''),
(308, 'varius', 'variu', 0, 0, 0.4, 'V620', 24, ''),
(309, 'varius laoreet', 'variu laoreet', 0, 1, 1.4667, 'V62463', 24, ''),
(310, 'varius laoreet quisque', 'variu laoreet quisque', 0, 1, 1.7333, 'V624632', 24, ''),
(311, 'vel', 'vel', 0, 0, 0.2, 'V400', 24, ''),
(312, 'vel aliquet', 'vel aliquet', 0, 1, 1.3667, 'V423', 24, ''),
(313, 'vel aliquet nec', 'vel aliquet nec', 0, 1, 1.5, 'V42352', 24, ''),
(314, 'vel augue', 'vel augue', 0, 1, 1.3, 'V420', 24, ''),
(315, 'vel augue curabitur', 'vel augue curabitur', 0, 1, 1.6333, 'V426136', 24, ''),
(316, 'venenatis', 'venenati', 0, 0, 0.6, 'V532', 24, ''),
(317, 'venenatis vitae', 'venenati vitae', 0, 1, 1.5, 'V53213', 24, ''),
(318, 'venenatis vitae justo', 'venenati vitae justo', 0, 1, 1.7, 'V5321323', 24, ''),
(319, 'vitae', 'vita', 0, 0, 0.3333, 'V300', 24, ''),
(320, 'vitae eleifend', 'vita eleifend', 0, 1, 1.4667, 'V34153', 24, ''),
(321, 'vitae eleifend ac', 'vita eleifend ac', 0, 1, 1.5667, 'V341532', 24, ''),
(322, 'vitae justo', 'vita justo', 0, 1, 1.3667, 'V323', 24, ''),
(323, 'vitae justo nullam', 'vita justo nullam', 0, 1, 1.6, 'V323545', 24, ''),
(324, 'vivamus', 'vivamu', 0, 0, 0.4667, 'V520', 24, ''),
(325, 'vivamus elementum', 'vivamu elementum', 0, 1, 1.5667, 'V524535', 24, ''),
(326, 'vivamus elementum semper', 'vivamu elementum semper', 0, 1, 1.8, 'V5245352516', 24, ''),
(327, 'viverra', 'viverra', 0, 0, 0.4667, 'V600', 24, ''),
(328, 'viverra nulla', 'viverra nulla', 0, 1, 1.4333, 'V654', 24, ''),
(329, 'viverra nulla ut', 'viverra nulla ut', 0, 1, 1.5333, 'V6543', 24, ''),
(330, 'viverra quis', 'viverra quis', 0, 1, 1.4, 'V620', 24, ''),
(331, 'viverra quis feugiat', 'viverra quis feugiat', 0, 1, 1.6667, 'V62123', 24, ''),
(332, 'vulputate', 'vulput', 0, 0, 0.6, 'V413', 24, ''),
(333, 'vulputate eget', 'vulput eget', 0, 1, 1.4667, 'V41323', 24, ''),
(334, 'vulputate eget arcu', 'vulput eget arcu', 0, 1, 1.6333, 'V4132362', 24, ''),
(335, 'vulputate eleifend', 'vulput eleifend', 0, 1, 1.6, 'V4134153', 24, ''),
(336, 'vulputate eleifend tellus', 'vulput eleifend tellus', 0, 1, 1.8333, 'V413415342', 24, ''),
(512, '2', '2', 0, 0, 0.1, '', 4, ''),
(513, '62', '62', 0, 0, 0.2, '', 4, ''),
(514, 'item 2', 'item 2', 0, 1, 1.2, 'I350', 4, ''),
(515, 'sample item 2', 'sampl item 2', 0, 1, 1.4333, 'S51435', 4, ''),
(519, '3', '3', 0, 0, 0.1, '', 4, ''),
(520, '63', '63', 0, 0, 0.2, '', 4, ''),
(521, 'item 3', 'item 3', 0, 1, 1.2, 'I350', 4, ''),
(522, 'sample item 3', 'sampl item 3', 0, 1, 1.4333, 'S51435', 4, ''),
(526, '4', '4', 0, 0, 0.1, '', 4, ''),
(527, '64', '64', 0, 0, 0.2, '', 4, ''),
(528, 'item 4', 'item 4', 0, 1, 1.2, 'I350', 4, ''),
(529, 'sample item 4', 'sampl item 4', 0, 1, 1.4333, 'S51435', 4, ''),
(533, '5', '5', 0, 0, 0.1, '', 4, ''),
(534, '65', '65', 0, 0, 0.2, '', 4, ''),
(535, 'item 5', 'item 5', 0, 1, 1.2, 'I350', 4, ''),
(536, 'sample item 5', 'sampl item 5', 0, 1, 1.4333, 'S51435', 4, ''),
(540, '6', '6', 0, 0, 0.1, '', 4, ''),
(541, '66', '66', 0, 0, 0.2, '', 4, ''),
(542, 'item 6', 'item 6', 0, 1, 1.2, 'I350', 4, ''),
(543, 'sample item 6', 'sampl item 6', 0, 1, 1.4333, 'S51435', 4, ''),
(547, 'joomlaplates', 'joomlapl', 0, 0, 0.8, 'J541432', 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_finder_terms_common`
--

INSERT INTO `af8ks_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_finder_types`
--

CREATE TABLE IF NOT EXISTS `af8ks_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `af8ks_finder_types`
--

INSERT INTO `af8ks_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'K2 Item', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_flexicontact_log`
--

CREATE TABLE IF NOT EXISTS `af8ks_flexicontact_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `admin_email` varchar(60) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `status_main` varchar(255) NOT NULL DEFAULT '',
  `status_copy` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `browser_id` tinyint(4) NOT NULL DEFAULT '0',
  `browser_string` varchar(20) NOT NULL DEFAULT '',
  `list_choice` varchar(60) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `DATETIME` (`datetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_comments`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(11) NOT NULL,
  `itemid` int(10) unsigned NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `published` tinyint(3) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `custom` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jos_fss_kb_comment_FKIndex1` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_data`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_data` (
  `table` varchar(50) NOT NULL,
  `prikey` varchar(250) NOT NULL,
  PRIMARY KEY (`table`,`prikey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_emails`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_emails` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `tmpl` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `description` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `ishtml` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tmpl` (`tmpl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `af8ks_fst_emails`
--

INSERT INTO `af8ks_fst_emails` (`id`, `tmpl`, `body`, `description`, `subject`, `ishtml`) VALUES
(1, 'comment', '{title} has been added. {moderated_start}This requires moderation.{moderated_end}\n\n{article_type} : {article}\n{name_start}Name: {name}\n{name_end}{email_start}EMail: {email}\n{email_end}{website_start}Website: {website}\n{website_end}{customfields_start}{customfields}\n{customfields_end}Comment Body: \n{body}\n\n{linkmod_start}This comment can be found for moderation {linkmod}.\n\n{linkmod_end}The article for this comment can be viewed {linkart}.', 'Comment or Testimonial submitted', '{title} has been added.{moderated_start} Moderation is required{moderated_end}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_field`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `default` varchar(250) NOT NULL,
  `allprods` int(11) NOT NULL,
  `alldepts` int(11) NOT NULL,
  `required` int(11) NOT NULL,
  `grouping` varchar(250) NOT NULL,
  `permissions` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `basicsearch` int(11) NOT NULL,
  `advancedsearch` int(11) NOT NULL,
  `inlist` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `ident` int(11) NOT NULL,
  `peruser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_field_dept`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_field_dept` (
  `field_id` int(11) NOT NULL,
  `ticket_dept_id` int(11) NOT NULL,
  PRIMARY KEY (`field_id`,`ticket_dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_field_prod`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_field_prod` (
  `field_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`field_id`,`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_field_values`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_field_values` (
  `field_id` int(11) NOT NULL,
  `value` varchar(250) NOT NULL,
  PRIMARY KEY (`field_id`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_prod`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_prod` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `image` varchar(250) DEFAULT NULL,
  `extratext` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `ordering` int(10) unsigned DEFAULT NULL,
  `inkb` int(11) NOT NULL,
  `insupport` int(11) NOT NULL,
  `intest` int(11) NOT NULL,
  `import_id` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `import_id` (`import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_settings`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_settings` (
  `setting` varchar(50) NOT NULL,
  `value` varchar(250) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_fst_settings`
--

INSERT INTO `af8ks_fst_settings` (`setting`, `value`) VALUES
('version', '1.12.5'),
('fsj_username', ''),
('fsj_apikey', ''),
('jquery_include', 'auto'),
('perm_mod_joomla', '0'),
('perm_article_joomla', '0'),
('captcha_type', 'none'),
('recaptcha_public', ''),
('recaptcha_private', ''),
('recaptcha_theme', 'red'),
('comments_moderate', '0'),
('comments_hide_add', '1'),
('email_on_comment', '0'),
('comments_who_can_add', '0'),
('test_use_email', '1'),
('test_use_website', '1'),
('commnents_use_email', '0'),
('commnents_use_website', '0'),
('hide_powered', '0'),
('announce_use_content_plugins', '0'),
('announce_use_content_plugins_list', '0'),
('announce_comments_allow', '0'),
('announce_comments_per_page', '0'),
('announce_per_page', '0'),
('kb_rate', '0'),
('kb_comments', '0'),
('kb_view_top', '0'),
('kb_show_views', '0'),
('kb_show_recent', '0'),
('kb_show_recent_stats', '0'),
('kb_show_viewed', '0'),
('kb_show_viewed_stats', '0'),
('kb_show_rated', '0'),
('kb_show_rated_stats', '0'),
('kb_show_dates', '0'),
('kb_use_content_plugins', '0'),
('kb_show_art_related', '0'),
('kb_show_art_products', '0'),
('kb_show_art_attach', '0'),
('kb_contents', '0'),
('kb_smaller_subcat_images', '0'),
('kb_comments_per_page', '0'),
('kb_prod_per_page', '0'),
('kb_art_per_page', '0'),
('kb_print', '0'),
('test_moderate', 'all'),
('test_email_on_submit', ''),
('test_allow_no_product', '1'),
('test_who_can_add', 'moderators'),
('test_hide_empty_prod', '1'),
('test_comments_per_page', '0'),
('skin_style', '0'),
('support_entire_row', '0'),
('support_autoassign', '0'),
('support_assign_open', '0'),
('support_assign_reply', '0'),
('support_user_attach', '0'),
('support_lock_time', '0'),
('support_show_msg_counts', '0'),
('support_reference', '0'),
('support_custom_register', '0'),
('support_no_logon', '0'),
('support_no_register', '0'),
('support_info_cols', '0'),
('support_actions_as_buttons', '0'),
('support_choose_handler', '0'),
('support_dont_check_dupe', '0'),
('support_admin_refresh', '0'),
('support_only_admin_open', '0'),
('support_user_reply_width', '0'),
('support_admin_reply_width', '0'),
('support_admin_reply_height', '0'),
('ticket_label_width', '0'),
('support_next_prod_click', '0'),
('support_subject_size', '0'),
('support_subject_message_hide', '0'),
('support_filename', '0'),
('support_subject_at_top', '0'),
('support_tabs_allopen', '0'),
('support_tabs_allclosed', '0'),
('support_tabs_all', '0'),
('ticket_prod_per_page', '0'),
('ticket_per_page', '0'),
('support_restrict_prod', '0'),
('css_hl', '#f0f0f0'),
('css_tb', '#ffffff'),
('css_bo', '#e0e0e0'),
('use_joomla_page_title_setting', '0'),
('title_prefix', '1'),
('content_unpublished_color', '#FFF0F0'),
('support_email_on_create', '0'),
('support_email_handler_on_create', '0'),
('support_email_on_reply', '0'),
('support_email_handler_on_reply', '0'),
('support_email_handler_on_forward', '0'),
('support_email_on_close', '0'),
('support_email_all_admins', '0'),
('support_email_all_admins_only_unassigned', '0'),
('support_email_all_admins_ignore_auto', '0'),
('support_email_all_admins_can_view', '0'),
('support_user_can_close', '0'),
('support_user_can_reopen', '0'),
('support_advanced', '0'),
('support_allow_unreg', '0'),
('support_delete', '0'),
('support_advanced_default', '0'),
('support_sceditor', '0'),
('support_altcat', '0'),
('support_cronlog_keep', '0'),
('support_hide_priority', '0'),
('support_hide_handler', '0'),
('support_hide_users_tickets', '0'),
('support_hide_tags', '0'),
('support_email_unassigned', '0'),
('support_email_admincc', '0'),
('support_email_from_name', '0'),
('support_email_from_address', '0'),
('support_email_site_name', '0'),
('support_ea_check', '0'),
('support_ea_all', '0'),
('support_ea_reply', '0'),
('support_ea_type', '0'),
('support_ea_host', '0'),
('support_ea_port', '0'),
('support_ea_username', '0'),
('support_ea_password', '0'),
('support_ea_mailbox', '0'),
('support_user_message', '#c0c0ff'),
('support_admin_message', '#c0ffc0'),
('support_private_message', '#ffc0c0'),
('support_basic_name', '0'),
('support_basic_username', '0'),
('support_basic_email', '0'),
('support_basic_messages', '0'),
('glossary_faqs', '0'),
('glossary_kb', '0'),
('glossary_announce', '0'),
('glossary_link', '0'),
('glossary_title', '0'),
('glossary_use_content_plugins', '0'),
('glossary_ignore', '0'),
('glossary_exclude', '0'),
('faq_popup_width', '0'),
('faq_popup_height', '0'),
('faq_popup_inner_width', '0'),
('faq_use_content_plugins', '0'),
('faq_use_content_plugins_list', '0'),
('faq_per_page', '0'),
('faq_cat_prefix', '0'),
('date_dt_short', ''),
('date_dt_long', ''),
('date_d_short', ''),
('date_d_long', ''),
('timezone_offset', '0'),
('mainmenu_moderate', '0'),
('mainmenu_support', '0');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_settings_big`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_settings_big` (
  `setting` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_settings_view`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_settings_view` (
  `setting` varchar(250) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_templates`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_templates` (
  `template` varchar(50) NOT NULL,
  `tpltype` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`template`,`tpltype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_fst_templates`
--

INSERT INTO `af8ks_fst_templates` (`template`, `tpltype`, `value`) VALUES
('comments_general', 3, '<div class=''fst_comment'' id=''{divid}'' {modcolor}>\n	<div class=''fst_comment_left''>\n	<div class=''fst_comment_name''>{name}</div>\n	{if,website}\n	<div class=''fst_comment_website''>{website}</div>\n	{endif}\n	<div class=''fst_comment_created''>{created_nice}</div>\n	</div>\n	{moderation}\n	{if,custom}\n	<div class=''fst_comment_custom''>{custom}</div>\n	{endif}\n	<div class=''fst_comment_comment''>{body}</div>\n  <div class=''fst_clear''></div>\n</div>\n<div class=''fst_clear''></div>'),
('comments_test', 3, '<div class=''fst_comment'' id=''{divid}'' {modcolor}>\n	<div class=''fst_comment_left''>\n	<div class=''fst_comment_name''>{name}</div>\n	{if,website}\n	<div class=''fst_comment_website''>{website}</div>\n	{endif}\n	<div class=''fst_comment_created''>{created_nice}</div>\n	</div>\n	{moderation}\n	{if,custom}\n	<div class=''fst_comment_custom''>{custom}</div>\n	{endif}\n	<div class=''fst_comment_comment''>{body}</div>\n  <div class=''fst_clear''></div>\n</div>\n<div class=''fst_clear''></div>'),
('comments_testmod', 3, '<div class=''fst_comment'' id=''fst_comment_{uid}_{id}'' {modcolor}>\n  <div class=''fst_comment_name''>{name}</div>\n  {if,website}\n  <div class=''fst_comment_website''>{website}</div>\n  {endif}\n  <div class=''fst_comment_created''>{created_nice}</div>\n  {moderation}\n  {if,custom}\n  <div class=''fst_comment_custom''>{custom}</div>\n  {endif}\n  <div class=''fst_comment_commentmod''>{body}</div>\n  <div class=''fst_clear''></div>\n</div>\n<div class=''fst_clear''></div>');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_fst_user`
--

CREATE TABLE IF NOT EXISTS `af8ks_fst_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kb` int(11) NOT NULL,
  `mod_test` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seeownonly` int(11) NOT NULL,
  `autoassignexc` int(11) NOT NULL,
  `allprods` int(11) NOT NULL,
  `allcats` int(11) NOT NULL,
  `alldepts` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `signature` text NOT NULL,
  `artperm` int(11) NOT NULL,
  `groups` int(11) NOT NULL,
  `settings` text NOT NULL,
  `assignperms` int(11) NOT NULL,
  `allprods_a` int(11) NOT NULL,
  `alldepts_a` int(11) NOT NULL,
  `allcats_a` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_categories`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `af8ks_k2_categories`
--

INSERT INTO `af8ks_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(8, 'Articles for Slider', 'articles-for-slider', '', 0, 0, -2, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(10, 'JP Modern', 'jp-modern', '<p>The <strong>"JP - Modern"</strong> template is an awesome clean 3 column Joomla template. It has some features like: MooSlider, MooMenu andMoo Slimbox native integrated.  All module positions are collapsible, play with the demo for more information.</p>\r\n<table style="border-collapse: collapse;" width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="left" valign="top" width="240">\r\n<p><a href="images/template/template.gif" title="Jp Modern" rel="lightbox"><img class="imgborder" src="images/template/tn_template.gif" border="0" align="left" /></a></p>\r\n</td>\r\n<td align="left" valign="top">\r\n<ul class="arrow">\r\n<li><strong>Native Joomla 1.5 / 1.6 / 1.7 Template</strong></li>\r\n<li>Flexible Left and Right Module Width</li>\r\n<li>Flexible Template Layout ( left-main-right ect)</li>\r\n<li>Compatible >IE7 / 8, Firefox 1,2,3, Google Chrome, Safari</li>\r\n<li>Table-Less Layout / left-main-right, main-left-right</li>\r\n<li>Many different Module Styles</li>\r\n<li>Native Dropdown Moo Menu & Slimbox</li>\r\n<li>Native Module Slider included</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 0, -2, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(11, 'Article for Slider', 'article-for-slider', '', 0, 0, -2, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(12, 'theme', 'theme', '', 0, 0, -2, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(13, 'Template Configuration', 'template-configuration', '', 0, 0, -2, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(2, 'Uncategorised', 'uncategorised', '', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(7, 'Template', 'template', '', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(9, 'blog', 'blog', '\r\n', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(14, 'Demo Article', 'demo-article', '', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(15, 'K2 Sample Category', 'k2-sample-category', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"2","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"244","itemImageM":"335","itemImageL":"684","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"50","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_comments`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_items`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `af8ks_k2_items`
--

INSERT INTO `af8ks_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(61, 'K2 Sample Item 1', 'k2-sample-item-1', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-02 21:11:24', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:29:36', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, 'Demo Image Caption', '', '', '', 89, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(62, 'K2 Sample Item 2', 'k2-sample-item-2', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-02 21:12:48', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:29:49', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 11, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(63, 'K2 Sample Item 3', 'k2-sample-item-3', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-02 21:31:06', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:30:01', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 10, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(64, 'K2 Sample Item 4', 'k2-sample-item-4', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-02 21:31:36', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:30:12', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 15, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(65, 'K2 Sample Item 5', 'k2-sample-item-5', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-03 17:34:16', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:30:24', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 11, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(66, 'K2 Sample Item 6', 'k2-sample-item-6', 15, 1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>\r\n<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.</p>', '', NULL, NULL, '[]', '', '2013-04-03 17:35:49', 618, '', 0, '0000-00-00 00:00:00', '2014-09-10 22:30:35', 617, '2013-04-02 21:11:24', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 14, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_rating`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_k2_rating`
--

INSERT INTO `af8ks_k2_rating` (`itemID`, `rating_sum`, `rating_count`, `lastip`) VALUES
(57, 5, 1, '127.0.0.1'),
(61, 5, 1, '127.0.0.1'),
(62, 5, 1, '127.0.0.1'),
(64, 5, 1, '127.0.0.1'),
(66, 5, 1, '127.0.0.1'),
(65, 5, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_tags`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `af8ks_k2_tags`
--

INSERT INTO `af8ks_k2_tags` (`id`, `name`, `published`) VALUES
(2, 'Template', 1),
(3, 'Joomla 25', 1),
(4, 'Joomla 3', 1),
(5, 'Business', 1),
(6, 'Interior', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `af8ks_k2_tags_xref`
--

INSERT INTO `af8ks_k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(205, 4, 61),
(204, 3, 61),
(203, 2, 61),
(208, 4, 62),
(207, 3, 62),
(206, 2, 62),
(211, 4, 63),
(210, 3, 63),
(209, 2, 63),
(214, 4, 64),
(213, 3, 64),
(212, 2, 64),
(217, 4, 65),
(216, 3, 65),
(215, 2, 65),
(220, 2, 66),
(219, 5, 66),
(218, 6, 66);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_users`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `af8ks_k2_users`
--

INSERT INTO `af8ks_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(3, 617, 'Super User', 'm', '', NULL, NULL, 1, '', '127.0.0.1', 'Kuhlmann-PC', '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `af8ks_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `af8ks_k2_user_groups`
--

INSERT INTO `af8ks_k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","inheritance":0,"categories":"all"}'),
(2, 'Site Owner', '{"comment":"1","frontEdit":"1","add":"1","editOwn":"1","editAll":"1","publish":"1","inheritance":1,"categories":"all"}'),
(3, 'Administrator (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(4, 'Author (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(5, 'Editor (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(6, 'Manager (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(7, 'Public (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(8, 'Publisher (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(9, 'Registered (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}'),
(10, 'Super Users (Imported from Joomla!)', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","editPublished":"0","inheritance":0,"categories":"all"}');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_languages`
--

CREATE TABLE IF NOT EXISTS `af8ks_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `af8ks_languages`
--

INSERT INTO `af8ks_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_menu`
--

CREATE TABLE IF NOT EXISTS `af8ks_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=266 ;

--
-- Dumping data for table `af8ks_menu`
--

INSERT INTO `af8ks_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 215, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 119, 124, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 120, 121, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 122, 123, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 125, 130, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 126, 127, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 128, 129, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 131, 136, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 132, 133, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 134, 135, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 139, 140, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 137, 138, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 117, 118, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 113, 114, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=49', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(102, 'mainmenu', 'Features', 'features', '', 'features', '', 'separator', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 13, 26, 0, '*', 0),
(103, 'mainmenu', 'Module Variations', 'module-variations', '', 'features/module-variations', 'index.php?option=com_content&view=article&id=1', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(104, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_content&view=article&id=4', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(105, 'mainmenu', 'Icons', 'icons', '', 'icons', 'index.php?option=com_content&view=article&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(106, 'mainmenu', 'ZOO', 'zoo', '', 'zoo', 'index.php?option=com_content&view=article&id=3', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 115, 116, 0, '*', 0),
(107, 'mainmenu', 'Joomla || Icons Possible', 'joomla', '', 'joomla', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/joomlaplates\\/menu\\/icon_joomla.png","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 102, 0, '*', 0),
(124, 'mainmenu', 'Content||All com_content views', 'contentall-comcontent-views', '', 'joomla/contentall-comcontent-views', '', 'separator', -2, 107, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 76, 83, 0, '*', 0),
(125, 'mainmenu', 'Other Components||Remaining component views', 'other-componentsremaining-component-views', '', 'joomla/other-componentsremaining-component-views', '', 'separator', -2, 107, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 90, 101, 0, '*', 0),
(126, 'mainmenu', 'Category List', 'category-list', '', 'joomla/contentall-comcontent-views/category-list', 'index.php?option=com_content&view=category&id=7', 'component', -2, 124, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(127, 'mainmenu', 'Category Blog', 'category-blog', '', 'joomla/contentall-comcontent-views/category-blog', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', -2, 124, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(128, 'mainmenu', 'Featured Articles', 'featured-articles', '', 'joomla/contentall-comcontent-views/featured-articles', 'index.php?option=com_content&view=featured', 'component', -2, 124, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(129, 'mainmenu', 'Login', 'login', '', 'joomla/other-componentsremaining-component-views/login', 'index.php?option=com_users&view=login', 'component', -2, 125, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Login","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(130, 'mainmenu', 'Registration', 'registration', '', 'joomla/other-componentsremaining-component-views/registration', 'index.php?option=com_users&view=registration', 'component', -2, 125, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Registration","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(132, 'mainmenu', 'Widgetkit / Slideshow', 'widgetkit', '', 'features/widgetkit', 'index.php?option=com_content&view=article&id=13', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(150, 'mainmenu', 'Contact || All com_contact views', 'contact--all-comcontact-views', '', 'joomla/contact--all-comcontact-views', '', 'separator', -2, 107, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 84, 89, 0, '*', 0),
(151, 'mainmenu', 'Contact Category', 'contact-category', '', 'joomla/contact--all-comcontact-views/contact-category', 'index.php?option=com_contact&view=category&id=8', 'component', -2, 150, 3, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_items":"","show_pagination_limit":"","show_headings":"","show_position_headings":"","show_email_headings":"","show_telephone_headings":"","show_mobile_headings":"","show_fax_headings":"","show_suburb_headings":"","show_state_headings":"","show_country_headings":"","show_pagination":"","show_pagination_results":"","initial_sort":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(152, 'mainmenu', 'Contact Item', 'contact-item', '', 'joomla/contact--all-comcontact-views/contact-item', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 150, 3, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(153, 'mainmenu', 'Remind', 'remind', '', 'joomla/other-componentsremaining-component-views/remind', 'index.php?option=com_users&view=remind', 'component', -2, 125, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Forgot your Username?","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(154, 'mainmenu', 'Reset', 'reset', '', 'joomla/other-componentsremaining-component-views/reset', 'index.php?option=com_users&view=reset', 'component', -2, 125, 3, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Forgot your Password?","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(155, 'mainmenu', 'Web Links', 'web-links', '', 'joomla/other-componentsremaining-component-views/web-links', 'index.php?option=com_weblinks&view=categories&id=0', 'component', -2, 125, 3, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"We are regularly out on the Web. When we find a great site we list it.","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Web Links","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(173, 'mainmenu', 'Module Positions', 'module-positions', '', 'features/module-positions', 'index.php?option=com_content&view=article&id=24', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(174, 'mainmenu', 'Custom Error Page', 'custom-error-page', '', 'features/custom-error-page', 'index.php?option=com_error', 'url', -2, 102, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 24, 25, 0, '*', 0),
(175, 'mainmenu', 'Styles', 'styles', '', 'styles', 'index.php?option=com_content&view=article&id=7', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 46, 0, '*', 0),
(176, 'mainmenu', 'Red Color', '2013-06-22-21-23-33', '', 'colors/2013-06-22-21-23-33', '?profile=red', 'url', -2, 220, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 52, 53, 0, '*', 0),
(177, 'mainmenu', 'Blue Color', '2013-06-22-21-23-34', '', 'colors/2013-06-22-21-23-34', '?profile=blue', 'url', -2, 220, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 58, 59, 0, '*', 0),
(178, 'mainmenu', 'Without Slideshow', '2014-09-07-21-02-47', '', 'styles/2014-09-07-21-02-47', 'index.php?Itemid=', 'alias', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"175","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 40, 41, 0, '*', 0),
(179, 'mainmenu', 'Theme Configuration', 'theme-configuration', '', 'features/theme-configuration', 'index.php?option=com_content&view=article&id=28', 'component', -2, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 23, 0, '*', 0),
(181, 'mainmenu', 'Extensions', '2013-07-21-00-48-04', '', '2013-07-21-00-48-04', '#', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 103, 110, 0, '*', 0),
(182, 'mainmenu', 'RokSprocket / Mosaic', 'roksprocket-mosaic', '', '2013-07-21-00-48-04/roksprocket-mosaic', 'index.php?option=com_content&view=article&id=31', 'component', -2, 181, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"0","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 104, 105, 0, '*', 0),
(194, 'mainmenu', 'K2 Sample || Subtitle Possible', '2013-07-21-21-31-44', '', '2013-07-21-21-31-44', '', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 173, 180, 0, '*', 0),
(195, 'mainmenu', 'K2 Single Item', 'k2-single-item', '', '2013-07-21-21-31-44/k2-single-item', 'index.php?option=com_k2&view=item&layout=item&id=61', 'component', -2, 194, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 174, 175, 0, '*', 0),
(196, 'mainmenu', 'K2 Category View', 'k2-category-view', '', '2013-07-21-21-31-44/k2-category-view', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=15', 'component', -2, 194, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["15"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 176, 177, 0, '*', 0),
(197, 'mainmenu', 'K2 Tag View', 'k2-tag-view', '', '2013-07-21-21-31-44/k2-tag-view', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=Joomla+3&task=tag', 'component', -2, 194, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 178, 179, 0, '*', 0),
(199, 'mainmenu', 'Bright Menu Style', 'bright-menu-style', '', 'styles/bright-menu-style', 'index.php?option=com_content&view=article&id=41', 'component', -2, 175, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(200, 'mainmenu', 'SlitSlider Module', 'slitslider-module', '', '2013-07-21-00-48-04/slitslider-module', 'index.php?option=com_content&view=article&id=43', 'component', -2, 181, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 106, 107, 0, '*', 0),
(202, 'mainmenu', 'map', '2013-12-15-19-46-01', '', '2013-12-15-19-46-01', '#bottom-a', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 181, 182, 0, '*', 0),
(203, 'mainmenu', 'Mosaic Module', 'mosaic-module', '', '2013-07-21-00-48-04/mosaic-module', 'index.php?option=com_content&view=article&id=45', 'component', -2, 181, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 108, 109, 0, '*', 0),
(205, 'mainmenu', 'Blue Color (2)', '2013-06-22-21-23-36', '', 'styles/2013-06-22-21-23-36', '?profile=blue', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 44, 45, 0, '*', 0),
(206, 'mainmenu', 'Green Color', '2013-06-22-21-23-37', '', 'colors/2013-06-22-21-23-37', '?profile=green', 'url', -2, 220, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 54, 55, 0, '*', 0),
(207, 'mainmenu', 'Black Color', '2013-06-22-21-23-38', '', 'colors/2013-06-22-21-23-38', '?profile=black', 'url', -2, 220, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 56, 57, 0, '*', 0),
(208, 'mainmenu', 'Menubar Transparent 100%', '2013-06-22-21-23-39', '', 'styles/2013-06-22-21-23-39', '?profile=menutrans100', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 28, 29, 0, '*', 0),
(209, 'mainmenu', 'Menubar White', '2013-06-22-21-23-40', '', 'styles/2013-06-22-21-23-40', '?profile=menuwhite', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 32, 33, 0, '*', 0),
(210, 'mainmenu', 'Menubar Dark', '2013-06-22-21-23-41', '', 'styles/2013-06-22-21-23-41', '?profile=menudark', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 34, 35, 0, '*', 0),
(211, 'mainmenu', 'Image Overlay = On', '2013-06-22-21-23-42', '', 'styles/2013-06-22-21-23-42', '?profile=overlay-yes', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 36, 37, 0, '*', 0),
(212, 'mainmenu', 'Image Overlay = Off', '2013-06-22-21-23-43', '', 'styles/2013-06-22-21-23-43', '?profile=overlay-no', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 38, 39, 0, '*', 0),
(213, 'mainmenu', 'SmoothScroll', 'smoothscroll', '', 'smoothscroll', '', 'separator', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 61, 74, 0, '*', 0),
(214, 'mainmenu', 'Scroll to #main', '2014-09-07-21-09-12', '', 'smoothscroll/2014-09-07-21-09-12', '#main', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 62, 63, 0, '*', 0),
(215, 'mainmenu', 'Scroll to #bottom-a', '2014-09-07-21-09-13', '', 'smoothscroll/2014-09-07-21-09-13', '#bottom-a', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 64, 65, 0, '*', 0),
(216, 'mainmenu', 'Scroll to #bottom-b', '2014-09-07-21-09-14', '', 'smoothscroll/2014-09-07-21-09-14', '#bottom-b', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 66, 67, 0, '*', 0),
(217, 'mainmenu', 'Scroll to #bottom-c', '2014-09-07-21-09-15', '', 'smoothscroll/2014-09-07-21-09-15', '#bottom-c', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 68, 69, 0, '*', 0),
(218, 'mainmenu', 'Scroll to #bottom-d', '2014-09-07-21-09-16', '', 'smoothscroll/2014-09-07-21-09-16', '#bottom-d', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 70, 71, 0, '*', 0),
(219, 'mainmenu', 'Scroll to #top-a', '2014-09-07-21-09-17', '', 'smoothscroll/2014-09-07-21-09-17', '#top-a', 'url', -2, 213, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 72, 73, 0, '*', 0),
(220, 'mainmenu', 'Colors', 'colors', '', 'colors', '', 'separator', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 51, 60, 0, '*', 0),
(221, 'mainmenu', 'Menubar Transparent 70%', '2013-06-22-21-23-44', '', 'styles/2013-06-22-21-23-44', '?profile=menutrans70', 'url', -2, 175, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 30, 31, 0, '*', 0),
(222, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(223, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 49, 50, 0, '*', 1),
(236, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10047, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '{}', 183, 204, 0, '', 1),
(237, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 184, 185, 0, '', 1),
(238, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 186, 187, 0, '', 1),
(239, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 188, 189, 0, '', 1),
(240, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 190, 191, 0, '', 1),
(241, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 192, 193, 0, '', 1),
(242, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 194, 195, 0, '', 1),
(243, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 196, 197, 0, '', 1),
(244, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 198, 199, 0, '', 1),
(245, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 200, 201, 0, '', 1),
(246, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 236, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 202, 203, 0, '', 1),
(247, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10029, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_widgetkit/images/widgetkit_16.png', 0, '{}', 205, 206, 0, '', 1),
(248, 'mainmenu', 'Projects', 'projects', '', 'projects', 'index.php?option=com_content&view=article&id=48', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 207, 208, 0, '*', 0),
(263, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10086, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '{}', 209, 214, 0, '', 1),
(264, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 263, 2, 10086, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '{}', 210, 211, 0, '', 1),
(265, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 263, 2, 10086, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 212, 213, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_menu_types`
--

CREATE TABLE IF NOT EXISTS `af8ks_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `af8ks_menu_types`
--

INSERT INTO `af8ks_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_messages`
--

CREATE TABLE IF NOT EXISTS `af8ks_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `af8ks_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_modules`
--

CREATE TABLE IF NOT EXISTS `af8ks_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Dumping data for table `af8ks_modules`
--

INSERT INTO `af8ks_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 0, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 0, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(19, 0, 'Top C', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-download</code></p>', 2, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-download","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(20, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-twitter</code>', 2, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"icon-twitter","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(21, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-mail</code>', 4, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"icon-mail","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(22, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-bubble</code>', 5, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"icon-bubble","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(27, 0, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>badge-hot</code>', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"badge-hot","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 0, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>badge-new</code>', 2, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"badge-new","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 0, 'Bottom C', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>badge-free</code></p>', 3, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Bottom C', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>badge-top</code></p>', 4, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-top","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(32, 127, 'Footer', '', '<p style="text-align: right;">Built with HTML5 and CSS3 | Copyright © 2015 <a href="http://www.sapient-tech.com.au">Sapient Technology Solutions</a></p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(34, 0, 'Top C', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-login</code></p>', 2, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean icon-login","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(35, 0, 'Top C', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Module Class Suffix <code>icon-cart</code></p>', 1, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"icon-cart","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(36, 0, 'Inner Top', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, 'innertop', 721, '2015-11-24 05:14:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(38, 110, 'Logo', '', '<h1 class="logostyle"><img src="images/FClogo.jpg" alt="" width="358" height="102" /></h1>', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(39, 0, 'Login || Module Position', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 0, 'Search', '', '', 0, 'search', 721, '2015-11-24 05:21:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(41, 0, 'Sub Menu', '', '', 15, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(43, 0, 'Sidebar A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 0, 'Sidebar A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 8, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(45, 0, 'List Line', '', '<p>Use the CSS class <code>line</code> to create this list style.</p>\r\n<ul class="line">\r\n<li>Item 1</li>\r\n<li>Item 2</li>\r\n<li>Item 3</li>\r\n<li>Item 4</li>\r\n<li>Item 5</li>\r\n</ul>', 11, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(46, 0, 'List Zebra', '', '<p>Use the CSS class <code>zebra</code> to create this list style.</p>\r\n<ul class="zebra">\r\n<li class="odd">Item 1</li>\r\n<li>Item 2</li>\r\n<li class="odd">Item 3</li>\r\n<li>Item 4</li>\r\n<li class="odd">Item 5</li>\r\n</ul>', 13, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(47, 0, 'List Check', '', '<p>Use the CSS class <code>check</code> to create this list style.</p>\r\n\r\n<ul class="check">\r\n <li>Item 1</li>\r\n <li>Item 2</li>\r\n <li>Item 3</li>\r\n <li>Item 4</li>\r\n <li>Item 5</li>\r\n</ul>', 14, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(57, 0, 'Sidebar B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(58, 0, 'Sidebar B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(59, 0, 'Sidebar B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(62, 0, 'Top A || Subtitle Possible', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-clean1</code></p>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 0, 'Top A || Subtitle Possible', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-clean2</code></p>', 2, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(64, 0, 'Top A || Subtitle Possible', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-clean3</code></p>', 3, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean3","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(66, 0, 'Icons Shipping', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_shipping.png" alt="Shipping Icons" />\r\n    <figcaption>Shipping Icons</figcaption>\r\n </figure>\r\n</a>', 5, 'top-a', 721, '2015-11-24 05:19:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 0, 'Icons E-Commerce', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n  <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_ecommerce.png" alt="E-Commerce Icons" />\r\n   <figcaption>E-Commerce Icons</figcaption>\r\n </figure>\r\n</a>', 6, 'top-a', 721, '2015-11-24 05:19:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 0, 'Icons Action', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_actions.png" alt="Action Icons" />\r\n   <figcaption>Action Icons</figcaption>\r\n </figure>\r\n</a>', 8, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 0, 'Icons Box', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n  <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_box.png" alt="Box Icons" />\r\n    <figcaption>Box Icons</figcaption>\r\n  </figure>\r\n</a>', 9, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(71, 0, 'Top B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-border</code></p>', 1, 'top-b', 721, '2015-11-24 05:05:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-border","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(72, 0, 'Top B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-shadow</code></p>', 2, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-shadow","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 0, 'Top B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-box</code></p>', 3, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-box","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(80, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(81, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(89, 0, 'Icons Blog', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n  <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_blog.png" alt="Blog Icons" />\r\n    <figcaption>Blog Icons</figcaption>\r\n </figure>\r\n</a>', 7, 'top-a', 721, '2015-11-24 05:19:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 0, 'Icons Space', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n  <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_space.png" alt="Space Icons" />\r\n    <figcaption>Space Icons</figcaption>\r\n  </figure>\r\n</a>', 8, 'top-a', 721, '2015-11-24 05:19:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 0, 'Icons Halloween', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n  <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_halloween.png" alt="Halloween Icons" />\r\n    <figcaption>Halloween Icons</figcaption>\r\n  </figure>\r\n</a>', 11, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 0, 'Icons Credit Cards', '', '<a href="http://www.yootheme.com/icons" target="_blank" class="display-block text-center">\r\n <figure class="remove-margin">\r\n    <img class="size-auto" height="120" width="180" src="images/yootheme/icons_creditcards.png" alt="Credit Cards Icons" />\r\n   <figcaption>Credit Cards Icons</figcaption>\r\n </figure>\r\n</a>', 10, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-free","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 0, 'Buttons', '', '<p>Use the CSS classes <code>button-default</code> to create nice buttons.</p>\r\n<p><a class="button-default" href="../#__setcard/">Default</a></p>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(95, 0, 'Widgetkit', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 1, '', 0, '*'),
(96, 0, 'Widgetkit Twitter', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit_twitter', 1, 1, '', 0, '*'),
(97, 118, 'Slidetop', '', '', 1, 'slidetop', 721, '2015-11-24 23:29:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit', 1, 0, '{"widget_id":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 0, 'Sample Content Slider', '', '', 1, 'innerbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 1, '{"widget_id":"2","moduleclass_sfx":"mod-shadow"}', 0, '*'),
(105, 0, 'Socials', '', '<p><a href="index.php" title="Social"><img src="images/joomlaplates/socials.png" border="0" alt="" style="display: block; margin-left: auto; margin-right: auto;" /></a></p>', 1, 'socials', 721, '2015-11-24 05:26:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 0, 'Home Image Bottom B', '', '<h1><img src="images/joomlaplates/guy.png" border="0" alt="Demo" width="114" height="169" style="float: left; margin-right: 10px;" />Best Joomla Template!</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 0, 'Sample Lightbox || Subtitle Possible', '', '<p><a data-lightbox="on" class="spotlight" href="images/joomlaplates/demo-001.jpg" data-demo="group:mygroup1" data-spotlight="on"> <img src="images/joomlaplates/demo-001.jpg" border="0" alt="demo" width="98" /></a> <a data-lightbox="on" class="spotlight" href="images/joomlaplates/demo-002.jpg" data-demo="group:mygroup1" data-spotlight="on"> <img src="images/joomlaplates/demo-002.jpg" border="0" alt="demo" width="98" /></a> <a data-lightbox="on" class="spotlight" href="images/joomlaplates/demo-003.jpg" data-demo="group:mygroup1" data-spotlight="on"> <img src="images/joomlaplates/demo-003.jpg" border="0" alt="demo" width="98" /></a> <a data-lightbox="on" class="spotlight" href="images/joomlaplates/demo-004.jpg" data-demo="group:mygroup1" data-spotlight="on"> <img src="images/joomlaplates/demo-004.jpg" border="0" alt="demo" width="98" /></a></p>', 7, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 0, 'Banner Position', '', '<p><a href="index.php"><img src="images/joomlaplates/sample-banner.jpg" border="0" alt="Sample banner" /></a></p>', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(127, 0, 'Module Styles || Subtitle Possible', '', '<p>This theme comes with different module styles, badges and icons. For each module you can pick a style and combine it with an icon or badge to create your own unique look. Here is a list of the available options:</p>\r\n<p><a class="button-default" href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103">Read more..</a></p>', 6, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 0, 'Module Features', '', '<ul class="check">\r\n<li>Multiple layout options: Features, Tabs, Lists, Mosaic &amp; Headlines</li>\r\n<li>7 supported content providers: Joomla, <a class="external" href="http://getk2.org/" target="_blank">K2</a>, <a class="external" href="http://www.seblod.com/" target="_blank">Seblod</a>, <a class="external" href="http://stackideas.com/easyblog.html" target="_blank">EasyBlog</a>, <a class="external" href="http://crosstec.de/en/extensions/joomla-cck-download.html" target="_blank">Content Builder</a>, <a class="external" href="http://www.fieldsattach.com/" target="_blank">FieldsAttach</a>, &amp; <a href="http://www.yootheme.com/zoo/">Zoo</a></li>\r\n<li>Advanced cumulative filters: specific and dynamic filters</li>\r\n<li>Advanced sorting rules: automatic, manual, mixed or random</li>\r\n<li>Individual article display and configuration</li>\r\n<li>Inline article previews</li>\r\n<li>Inline article details and editing</li>\r\n<li>RokGallery/MediaManager support</li>\r\n<li>Dynamic settings / configurations</li>\r\n<li>Module shortcodes</li>\r\n</ul>', 5, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(131, 0, 'K2 Tools', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_tools', 1, 1, '', 0, '*'),
(132, 0, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(133, 0, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_user', 1, 1, '', 0, '*'),
(134, 0, 'K2 Quick Icons (admin)', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(135, 0, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(136, 0, 'Latest K2 Content', '', '', 4, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","catfilter":"0","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"0","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"10","itemImage":"1","itemImgSize":"Medium","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"0","itemDateCreated":"0","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"0","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*'),
(140, 0, 'Fullsize & Responsive Slit Slider', '', '<h1 style="text-align: center; font-size: 60px;">Responsive WidgetKit Slider</h1>\r\n<p style="text-align: center;">The WidgetKit Slider provides a simple and user-friendly way to enrich your websites experience <br /> with slideshows, galleries, lightboxes and much more. <br /> <br /><em>No extra costs, the Slideshow is included!</em></p>\r\n<p style="text-align: center;"><a class="button-default" href="index.php?option=com_content&amp;view=article&amp;id=13&amp;Itemid=132">More info about the WidgetKit Slider</a></p>', 1, 'top-b', 721, '2015-11-24 23:25:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 106, 'Top A - Projects', '', '<div style="text-align: center;"><a title="Projects" href="#projects"><span class="ico">)</span></a>\r\n<h3><a title="Projects" href="#projects">Projects</a></h3>\r\n<p>Proof is in the results....</p>\r\n<p>Don''t just take our word for it, look through our recently finished projects to see what you think for yourself</p>\r\n</div>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 107, 'Top A - About Us', '', '<div style="text-align: center;"><a title="About Us" href="#about-us"><span class="ico">=</span></a>\r\n<h3><a title="About Us" href="#about-us">About Us</a></h3>\r\n<p>Fulham &amp; Chelsea Building Services provide quality yet affordable building and renovation services.</p>\r\n<p>Based in Melbourne, our extensive services cover all domestic extensions, kitchens, bathrooms, decks, verandahs, tiling, plastering, plumbing, electrical, painting and maintenance</p>\r\n</div>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 0, 'Bottom A Home', '', '<div style="text-align: center;"><span class="ico">W</span>\r\n<h3>Slit Slider</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p><a class="button-default" href="#">Learn more</a></p>\r\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(144, 108, 'Top A - Testimonials', '', '<div style="text-align: center;"><a title="Testimonials" href="#testimonials"><span class="ico">l</span></a>\r\n<h3><a title="Testimonials" href="#testimonials">Testimonials</a></h3>\r\n<p>With sixteen years experience we only work with trusted professionals who are a pleasure to work with.</p>\r\n<p>The key to our success is attention to detail and the satisfaction of our clients.</p>\r\n</div>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(150, 0, 'Business Hours', '', '<div class="textwidget">\r\n<p>Our support Hotline is available 24 Hours a day: (49) 176.2356951</p>\r\n<ul>\r\n<li><strong>Mo-Sa: </strong>9am to 5pm</li>\r\n<li><strong>Sunday: </strong>closed</li>\r\n</ul>\r\n</div>', 4, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(151, 0, 'Helpfull Links', '', '<ul>\r\n<li><a href="http://www.joomlaplates.com/" target="_blank">JoomlaPlates.com</a></li>\r\n<li><a href="http://demo.joomlaplates.com/#__slitslider/" target="_blank">Responsive SlitSlider</a></li>\r\n<li><a href="https://www.yootheme.com/themes/warp-framework" target="_blank">Warp Framework</a></li>\r\n<li><a href="http://forum.joomla.org/index.php?board=14.0" target="_blank">Joomla Forum</a></li>\r\n</ul>', 1, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(152, 102, 'Newsletter', '', '<p>Join our newsletter and get <strong><em>20%</em></strong> off for all subscriptions!</p>\r\n<p><input style="padding: 6px; margin-right: 10px;" type="text" name="name" value="email" size="12" maxlength="30" /><a class="button-default" href="#">SEND</a></p>', 1, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(153, 0, 'Contact us', '', '<p>If you have a question about our themes, please feel free to contact us!</p>\r\n<p><em>support[at]joomlaplates.com</em></p>', 1, 'bottom-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(154, 0, 'Chat Support || Hotline is available 24 Hours a day', '', '<p><a href="http://www.joomlaplates.com/" target="_blank" data-spotlight="on;"><img class="size-auto" src="images/joomlaplates/demo-007.jpg" border="0" alt="" /></a></p>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-clean1 icon-bubble","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(157, 0, 'Top D', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-border-left</code></p>', 1, 'top-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-border-left","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(158, 0, 'Top D', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-border-bottom</code></p>', 1, 'top-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-border-bottom","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(159, 0, 'Top D', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-border-top</code></p>', 1, 'top-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-border-top","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(160, 0, 'Top D', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /><strong>Module Class Suffix</strong> <code>mod-border-right</code></p>', 1, 'top-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-border-right","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(161, 0, 'Google Map', '', '<p><iframe style="max-width: 100%; color: #222!important;" src="https://maps.google.de/maps?f=q&amp;source=s_q&amp;hl=de&amp;geocode=&amp;q=JoomlaPlates,+Robert-Koch-Stra%C3%9Fe,+Stockstadt&amp;aq=0&amp;oq=joomlaplates&amp;sll=48.917413,11.407993&amp;sspn=8.066155,15.325928&amp;ie=UTF8&amp;hq=JoomlaPlates,&amp;hnear=Robert-Koch-Stra%C3%9Fe,+63811+Stockstadt&amp;filter=0&amp;update=1&amp;t=m&amp;ll=49.973112,9.0693&amp;spn=0.00552,0.021222&amp;z=16&amp;iwloc=A&amp;output=embed" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="100%" height="400"></iframe></p>', 1, 'map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(165, 0, 'My Skills || I cant stop design pages', '', '<div class="skillbar clearfix " data-percent="65%">\r\n<div class="skillbar-title" style="background: #88cd2a;"><span>HTML5</span></div>\r\n<div class="skillbar-bar" style="background: #88cd2a;"> </div>\r\n<div class="skill-bar-percent">65%</div>\r\n</div>\r\n<div class="skillbar clearfix " data-percent="90%">\r\n<div class="skillbar-title" style="background: #f7a53b;"><span>CSS3</span></div>\r\n<div class="skillbar-bar" style="background: #f7a53b;"> </div>\r\n<div class="skill-bar-percent">90%</div>\r\n</div>\r\n<div class="skillbar clearfix " data-percent="98%">\r\n<div class="skillbar-title" style="background: #6adcfa;"><span>Joomla</span></div>\r\n<div class="skillbar-bar" style="background: #6adcfa;"> </div>\r\n<div class="skill-bar-percent">98%</div>\r\n</div>\r\n<div class="skillbar clearfix " data-percent="85%">\r\n<div class="skillbar-title" style="background: #fa6e6e;"><span>PHP</span></div>\r\n<div class="skillbar-bar" style="background: #fa6e6e;"> </div>\r\n<div class="skill-bar-percent">85%</div>\r\n</div>\r\n<div class="skillbar clearfix " data-percent="50%">\r\n<div class="skillbar-title" style="background: #336699;"><span>jQuery</span></div>\r\n<div class="skillbar-bar" style="background: #336699;"> </div>\r\n<div class="skill-bar-percent">50%</div>\r\n</div>\r\n<p>I create custom Joomla themes that suit your specific needs, whether is a blog/website/shop, a project with custom features or if you just need your design coded into beautiful and valid HTML/CSS, i´ve got you covered.</p>', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(167, 0, 'Showcase || Some samples of my work', '', '', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_widgetkit', 1, 1, '{"widget_id":"3","moduleclass_sfx":""}', 0, '*'),
(168, 0, 'Features', '', '<ul class="check">\r\n<li>Available for Joomla and WordPress</li>\r\n<li>All widgets are fully responsive</li>\r\n<li>Use shortcodes to show widgets anywhere</li>\r\n<li>Clean and lightweight code</li>\r\n<li>Semantic HTML5 markup</li>\r\n<li>Asset file minification and compression</li>\r\n<li>Supports touch gestures for mobile devices</li>\r\n<li>Uses hardware accelerated CSS3 animations</li>\r\n<li>Built with HTML5, CSS3, PHP 5.2+, latest jQuery version</li>\r\n</ul>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(172, 0, 'Module Features', '', '<ul class="check">\r\n<li>Multiple layout options: Features, Tabs, Lists, Mosaic &amp; Headlines</li>\r\n<li>7 supported content providers: Joomla, <a class="external" href="http://getk2.org/" target="_blank">K2</a>, <a class="external" href="http://www.seblod.com/" target="_blank">Seblod</a>, <a class="external" href="http://stackideas.com/easyblog.html" target="_blank">EasyBlog</a>, <a class="external" href="http://crosstec.de/en/extensions/joomla-cck-download.html" target="_blank">Content Builder</a>, <a class="external" href="http://www.fieldsattach.com/" target="_blank">FieldsAttach</a>, &amp; <a href="http://www.yootheme.com/zoo/">Zoo</a></li>\r\n<li>Advanced cumulative filters: specific and dynamic filters</li>\r\n<li>Advanced sorting rules: automatic, manual, mixed or random</li>\r\n<li>Individual article display and configuration</li>\r\n<li>Inline article previews</li>\r\n<li>Inline article details and editing</li>\r\n<li>RokGallery/MediaManager support</li>\r\n<li>Dynamic settings / configurations</li>\r\n<li>Module shortcodes</li>\r\n</ul>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(173, 0, 'Slidebottom', '', '', 1, 'slidebottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_widgetkit', 1, 0, '{"widget_id":"4","moduleclass_sfx":""}', 0, '*'),
(174, 0, 'Language Demo', '', '<select title="Language Select">\r\n<option>Select your Language</option>\r\n<option>German</option>\r\n<option>English</option>\r\n<option>Spain</option>\r\n</select>', 1, 'toolbar-l', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(175, 100, 'FREE Version', '', '<ul style="padding-left: 0;">\r\n<li class="yes">Responsive Layout</li>\r\n<li class="yes">Slideshow / WidgetKit</li>\r\n<li class="yes">Personal Website</li>\r\n<li class="no">Commercial Websites</li>\r\n<li class="no">Video Background</li>\r\n<li class="no">K2 Theme included</li>\r\n<li class="no">Personal Email Support</li>\r\n<li class="no">Quickstart Package included</li>\r\n</ul>\r\n<p><a class="button-default" href="#">DOWNLOAD</a></p>', 1, 'innerbottom', 721, '2015-11-24 05:14:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-free color","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(176, 101, 'PRO Version', '', '<ul style="padding-left: 0;">\r\n<li class="yes">Responsive Layout</li>\r\n<li class="yes">Slideshow / WidgetKit</li>\r\n<li class="yes">Personal Website</li>\r\n<li class="yes">Commercial Websites</li>\r\n<li class="yes">Video Background</li>\r\n<li class="yes">K2 Theme included</li>\r\n<li class="yes">Personal Email Support</li>\r\n<li class="yes">Quickstart Package included</li>\r\n</ul>\r\n<form class="paypal" action="http://www.joomlaplates.com/paypal_ipn/ipn/process.php" method="post" target="_blank">\r\n<input type="hidden" name="item_number" value="117"/>\r\n<input type="submit" class="button-default" name="submit" value="BUY NOW - 25.- &euro;" title="Click here to buy the Template!" alt="Make payments with PayPal - it''s fast, free and secure!"/>\r\n</form>\r\n', 1, 'innerbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"badge-top","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(177, 114, 'Google Map', '', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.2486813704427!2d144.9780943158542!3d-37.737309737446466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad644c3b258199b%3A0x1179c8ce597ee87c!2s23+Connolly+Ave%2C+Coburg+VIC+3058!5e0!3m2!1sen!2sau!4v1448401249939" width="100%" height="450" frameborder="0" allowfullscreen=""></iframe></p>', 1, 'map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(178, 0, 'Top C Home', '', '<p><img class="shadow-img size-auto" style="float:left;margin-right:40px" src="images/joomlaplates/top-c.jpg" width="464" alt="" /><p>\r\n<h1 style="font-size:40px;line-height:100%;padding-top:30px">Easy Customization with Admin User Interface</h1>\r\n<h2 style="line-height:1.2;color:#999">A clearly arranged user interface focused on simplicity\r\nwhich integrates perfectly with Warp6 based Joomla Templates</h2>', 3, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(179, 0, 'Top D Home', '', '<p><img class="shadow-img size-auto" style="float:right;margin-left:40px" src="images/joomlaplates/top-d.jpg" width="464" alt="Demo" /><p>\r\n<h1 style="font-size:40px;line-height:100%;padding-top:30px">Flexible Layout System & Responsive Design</h1>\r\n<h2 style="line-height:1.2;color:#999">A fully responsive layout that adapts perfectly for all\r\ndevice resolutions like mobiles, tablets and desktops</h2>', 3, 'top-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(180, 115, 'Bottom A Home', '', '<h1 class="title">Contact Us</h1>', 3, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(181, 0, 'Bottom B Home', '', '<p><img class="shadow-img size-auto" style="float:right;margin-left:40px" src="images/joomlaplates/bottom-b.jpg" width="464" alt="" /><p>\r\n<h1 style="font-size:40px;line-height:100%;padding-top:30px">Transparent Menubar & FullSize Background with modern Overlay</h1>\r\n<h2 style="line-height:1.2;color:#999">Setup the style you like! You can select many different Menubar & Background Overlay Styles comfortable from Template backend parameter.</h2>\r\n', 3, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `af8ks_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(182, 0, 'Bottom C Home', '', '<p><img class="size-auto" style="float:left;margin-right:40px" src="images/joomlaplates/bottom-c.jpg" width="464" alt="" /><p>\r\n<h1 style="font-size:40px;line-height:100%;padding-top:30px">Flexible Sidebar and Module Layouts</h1>\r\n<h2 style="line-height:1.2;color:#999">Sidebar Layouts</h2>\r\n<p>The two available sidebars, highlighted in red, can be switched to the left or right side and their widths can easily be set in the theme administration.</p>\r\n<h2 style="line-height:1.2;color:#999">Module Style</h2>\r\n<p>For modules in the blue and red positions you can choose different module styles.</p>', 3, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"mod-blank","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(183, 111, 'top_contact', '', '<div class="sap_top_contact">\r\n<div class="sap_phone_number"><img src="images/mobile.png" alt="" /></div>\r\n<div class="sap_top_icons"><a href="#contact-form"><img src="images/email.png" alt="" /> </a> </div>\r\n</div>', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(185, 117, 'Memberships', '', '<h1 class="title">Memberships</h1>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(186, 120, 'Send us an email', '', '', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_quickcontact', 1, 0, '{"email":"shamus.dougan@sapient-tech.com.au","success":"Email was sent successfully.","failed":"Email could not be sent.","formcaptcha":"1","captcha_question":"3 + 4 = ?","captcha_answer":"7","failed_captcha":"You have entered wrong captcha. Please try again.","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"6","header_tag":"h1","header_class":"title","style":"0"}', 0, '*'),
(187, 121, 'Testimonials', '', '', 1, 'bottom-a', 721, '2015-11-25 00:45:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit', 1, 1, '{"widget_id":"2","moduleclass_sfx":"sap_testimonials","module_tag":"div","bootstrap_size":"0","header_tag":"h1","header_class":"title","style":"0"}', 0, '*'),
(189, 125, 'Projects', '', '', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 1, '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/projects","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"1","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"1","space_between_images":"10","max_images":"50","sort_by":"0","css3":"1","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"2","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"sap_testimonials","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_modules_menu`
--

CREATE TABLE IF NOT EXISTS `af8ks_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_modules_menu`
--

INSERT INTO `af8ks_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 0),
(19, 103),
(20, 103),
(21, 103),
(22, 103),
(27, 103),
(28, 103),
(29, 103),
(30, 103),
(31, 0),
(32, 0),
(34, 103),
(35, 103),
(36, 103),
(38, 0),
(39, 0),
(40, 0),
(41, 102),
(41, 104),
(41, 107),
(41, 123),
(41, 124),
(41, 125),
(41, 126),
(41, 127),
(41, 128),
(41, 129),
(41, 130),
(41, 150),
(41, 151),
(41, 152),
(41, 153),
(41, 154),
(41, 155),
(42, 101),
(42, 103),
(42, 107),
(42, 108),
(42, 109),
(42, 110),
(42, 111),
(42, 112),
(42, 113),
(42, 114),
(42, 115),
(42, 116),
(42, 117),
(42, 118),
(42, 119),
(42, 120),
(42, 121),
(42, 122),
(42, 123),
(42, 124),
(42, 126),
(42, 127),
(42, 128),
(42, 129),
(42, 130),
(42, 150),
(42, 151),
(42, 152),
(42, 153),
(42, 154),
(42, 155),
(43, 103),
(44, 103),
(45, 104),
(45, 173),
(46, 104),
(46, 173),
(47, 104),
(57, 103),
(58, 103),
(59, 103),
(61, 0),
(62, 103),
(63, 103),
(64, 103),
(66, 105),
(67, 105),
(68, 105),
(69, 105),
(71, 103),
(72, 103),
(73, 103),
(80, 0),
(81, 0),
(89, 105),
(90, 105),
(91, 105),
(92, 105),
(93, 104),
(97, 0),
(103, 132),
(105, 0),
(115, 101),
(118, 101),
(118, 132),
(118, 175),
(120, 0),
(127, 101),
(127, 175),
(128, 182),
(134, 0),
(135, 0),
(136, 195),
(136, 196),
(136, 197),
(140, 101),
(140, 199),
(141, 101),
(142, 101),
(143, 101),
(144, 101),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 101),
(154, 111),
(154, 112),
(154, 113),
(154, 114),
(154, 115),
(154, 116),
(154, 117),
(154, 118),
(154, 119),
(154, 120),
(154, 121),
(154, 122),
(154, 123),
(154, 128),
(157, 103),
(158, 103),
(159, 103),
(160, 103),
(161, 101),
(165, 101),
(167, 101),
(168, 132),
(172, 203),
(173, 0),
(174, 103),
(174, 173),
(175, 101),
(176, 101),
(177, 0),
(178, 101),
(179, 101),
(180, 101),
(181, 101),
(182, 101),
(183, 0),
(185, 0),
(186, 0),
(187, 0),
(189, 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `af8ks_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_overrider`
--

CREATE TABLE IF NOT EXISTS `af8ks_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `af8ks_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `af8ks_postinstall_messages`
--

INSERT INTO `af8ks_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(4, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(5, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(6, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_redirect_links`
--

CREATE TABLE IF NOT EXISTS `af8ks_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `af8ks_redirect_links`
--

INSERT INTO `af8ks_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://127.0.0.1/joomla/j2/#__setcard/index.php/joomla/other-componentsremaining-component-views/index.php', '', 'http://127.0.0.1/joomla/j2/#__setcard/index.php/joomla/other-componentsremaining-component-views/registration', '', 3, 0, '2013-06-16 20:34:07', '0000-00-00 00:00:00', 301),
(2, 'http://127.0.0.1/joomla/j2/#__setcard/index.php/icons', '', 'http://127.0.0.1/joomla/j2/#__setcard/index.php/widgetkit', '', 1, 0, '2013-06-21 12:06:52', '0000-00-00 00:00:00', 301),
(3, 'http://127.0.0.1/joomla/j2/#__setcard/index.php/features/custom-error-page', '', 'http://127.0.0.1/joomla/j2/#__setcard/', '', 2, 0, '2013-06-22 19:12:27', '0000-00-00 00:00:00', 301),
(4, 'http://127.0.0.1/joomla/j2/#__setcard/index.php/component/error/?Itemid=174', '', 'http://127.0.0.1/joomla/j2/#__setcard/', '', 2, 0, '2013-06-22 19:15:27', '0000-00-00 00:00:00', 301),
(5, 'http://127.0.0.1/joomla/j2/#__setcard/index.php?profile=blue&Itemid=177', '', 'http://127.0.0.1/joomla/j2/#__setcard/index.php?profile=pink', '', 2, 0, '2013-06-22 21:25:20', '0000-00-00 00:00:00', 301),
(6, 'http://127.0.0.1/joomla/j2/#__magazine-warp/index.php?option=com_content&view=article&id=26?profile=pink&Itemid=176', '', 'http://127.0.0.1/joomla/j2/#__magazine-warp/', '', 3, 0, '2013-07-21 00:01:07', '0000-00-00 00:00:00', 301),
(7, 'http://127.0.0.1/joomla/j2/#__magazine-warp/index.php?option=com_error&Itemid=174', '', '', '', 2, 0, '2013-07-21 22:01:32', '0000-00-00 00:00:00', 301),
(8, 'http://127.0.0.1/joomla/j2/#__simple/index.php?option=com_content&view=article&id=26?profile=pink&Itemid=176', '', 'http://127.0.0.1/joomla/j2/#__simple/index.php?option=com_content&view=article&id=1&Itemid=103', '', 1, 0, '2013-12-12 21:34:17', '0000-00-00 00:00:00', 301),
(9, 'http://127.0.0.1/joomla/j2/#__qbar/index.php/theme-styles/bright-menu-style', '', 'http://127.0.0.1/joomla/j2/#__qbar/', '', 1, 0, '2014-09-02 19:45:52', '0000-00-00 00:00:00', 301),
(10, 'http://127.0.0.1/joomla/j2/#__qbar/index.php/component/error/?Itemid=174', '', 'http://127.0.0.1/joomla/j2/#__qbar/index.php/features/theme-configuration', '', 1, 0, '2014-09-06 23:09:35', '0000-00-00 00:00:00', 301),
(11, 'http://127.0.0.1/joomla/j2/#__qbar/index.php/features/index.php', '', 'http://127.0.0.1/joomla/j2/#__qbar/index.php/features/theme-configuration', '', 4, 0, '2014-09-07 19:40:58', '0000-00-00 00:00:00', 301),
(12, 'http://local.fcbuildingservices.com.au/', '', '', '', 5, 0, '2015-11-24 05:35:00', '0000-00-00 00:00:00', 301);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_schemas`
--

CREATE TABLE IF NOT EXISTS `af8ks_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_schemas`
--

INSERT INTO `af8ks_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10086, '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_session`
--

CREATE TABLE IF NOT EXISTS `af8ks_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_session`
--

INSERT INTO `af8ks_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('b6er1mqnd1vl5ha6eudk01n6k0', 1, 0, '1448422058', '__default|a:8:{s:15:"session.counter";i:76;s:19:"session.timer.start";i:1448420119;s:18:"session.timer.last";i:1448422056;s:17:"session.timer.now";i:1448422058;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:1:"1";s:8:"position";s:0:"";s:6:"module";s:0:"";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:10:"com_config";O:8:"stdClass":1:{s:6:"config";O:8:"stdClass":1:{s:6:"global";O:8:"stdClass":1:{s:4:"data";a:91:{s:7:"offline";s:1:"0";s:15:"offline_message";s:70:"This site is down for maintenance.<br /> Please check back again soon.";s:23:"display_offline_message";s:1:"1";s:13:"offline_image";s:0:"";s:8:"sitename";s:39:"Fulham Chelsea Building Services.com.au";s:6:"editor";s:7:"tinymce";s:7:"captcha";s:1:"0";s:10:"list_limit";s:2:"20";s:6:"access";s:1:"1";s:5:"debug";s:1:"0";s:10:"debug_lang";s:1:"0";s:6:"dbtype";s:6:"mysqli";s:4:"host";s:9:"localhost";s:4:"user";s:16:"fulhamchelsea_us";s:8:"password";s:16:"2VftuvMZ8zKZ6sVr";s:2:"db";s:14:"fulham_chelsea";s:8:"dbprefix";s:6:"af8ks_";s:9:"live_site";s:0:"";s:6:"secret";s:16:"Q7z6VWLF6AMXbNex";s:4:"gzip";s:1:"0";s:15:"error_reporting";s:7:"default";s:7:"helpurl";s:90:"https://help.joomla.org/proxy/index.php?option=com_help&keyref=Help{major}{minor}:{keyref}";s:8:"ftp_host";s:0:"";s:8:"ftp_port";s:0:"";s:8:"ftp_user";s:0:"";s:8:"ftp_pass";s:0:"";s:8:"ftp_root";s:0:"";s:10:"ftp_enable";s:1:"0";s:6:"offset";s:3:"UTC";s:10:"mailonline";s:1:"1";s:6:"mailer";s:8:"sendmail";s:8:"mailfrom";s:33:"webpage@fcbuildingservices.com.au";s:8:"fromname";s:39:"Fulham Chelsea Building Services.com.au";s:8:"sendmail";s:18:"/usr/sbin/sendmail";s:8:"smtpauth";s:1:"0";s:8:"smtpuser";s:0:"";s:8:"smtppass";s:0:"";s:8:"smtphost";s:9:"localhost";s:10:"smtpsecure";s:4:"none";s:8:"smtpport";s:2:"25";s:7:"caching";s:1:"0";s:13:"cache_handler";s:4:"file";s:9:"cachetime";s:2:"15";s:8:"MetaDesc";s:0:"";s:8:"MetaKeys";s:0:"";s:9:"MetaTitle";s:1:"1";s:10:"MetaAuthor";s:1:"1";s:11:"MetaVersion";s:1:"0";s:6:"robots";s:0:"";s:3:"sef";s:1:"1";s:11:"sef_rewrite";s:1:"0";s:10:"sef_suffix";s:1:"0";s:12:"unicodeslugs";s:1:"0";s:10:"feed_limit";s:2:"10";s:8:"log_path";s:41:"D:\\xampp_projects\\Fulham_Chelsea_Web/logs";s:8:"tmp_path";s:40:"D:\\xampp_projects\\Fulham_Chelsea_Web/tmp";s:8:"lifetime";s:2:"15";s:15:"session_handler";s:8:"database";s:8:"asset_id";i:1;s:7:"filters";a:9:{i:1;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:9;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:6;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:7;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:2;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:3;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:4;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:5;a:3:{s:11:"filter_type";s:2:"BL";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}i:8;a:3:{s:11:"filter_type";s:4:"NONE";s:11:"filter_tags";s:0:"";s:17:"filter_attributes";s:0:"";}}s:12:"frontediting";s:1:"1";s:10:"feed_email";s:6:"author";s:10:"MetaRights";s:0:"";s:19:"sitename_pagetitles";s:1:"0";s:13:"cookie_domain";s:0:"";s:11:"cookie_path";s:0:"";s:16:"memcache_persist";s:1:"1";s:17:"memcache_compress";s:1:"0";s:20:"memcache_server_host";s:9:"localhost";s:20:"memcache_server_port";s:5:"11211";s:17:"memcached_persist";s:1:"1";s:18:"memcached_compress";s:1:"0";s:21:"memcached_server_host";s:9:"localhost";s:21:"memcached_server_port";s:5:"11211";s:13:"redis_persist";s:1:"1";s:17:"redis_server_host";s:9:"localhost";s:17:"redis_server_port";s:4:"6379";s:17:"redis_server_auth";s:0:"";s:15:"redis_server_db";s:1:"0";s:28:"session_memcache_server_host";s:9:"localhost";s:28:"session_memcache_server_port";s:5:"11211";s:29:"session_memcached_server_host";s:9:"localhost";s:29:"session_memcached_server_port";s:5:"11211";s:9:"force_ssl";s:1:"0";s:12:"proxy_enable";s:1:"0";s:10:"proxy_host";s:0:"";s:10:"proxy_port";s:0:"";s:10:"proxy_user";s:0:"";s:10:"proxy_pass";s:0:"";s:11:"massmailoff";s:1:"1";s:5:"rules";a:10:{s:15:"core.login.site";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:1:"1";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:16:"core.login.admin";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:18:"core.login.offline";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:0:"";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:10:"core.admin";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:0:"";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:1:"1";}s:11:"core.manage";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:0:"";i:7;s:1:"1";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:11:"core.create";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:1:"1";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:11:"core.delete";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}s:9:"core.edit";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:1:"1";i:5;s:0:"";i:8;s:0:"";}s:15:"core.edit.state";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:1:"1";i:8;s:0:"";}s:13:"core.edit.own";a:9:{i:1;s:0:"";i:9;s:0:"";i:6;s:1:"1";i:7;s:0:"";i:2;s:0:"";i:3;s:1:"1";i:4;s:0:"";i:5;s:0:"";i:8;s:0:"";}}}}}}s:9:"com_menus";O:8:"stdClass":1:{s:5:"items";O:8:"stdClass":3:{s:8:"menutype";s:7:"topmenu";s:10:"limitstart";i:0;s:4:"list";a:4:{s:9:"direction";s:3:"asc";s:5:"limit";i:20;s:8:"ordering";s:5:"a.lft";s:5:"start";d:0;}}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":29:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"721";s:4:"name";s:10:"Super User";s:8:"username";s:7:"fcadmin";s:5:"email";s:33:"shamus.dougan@sapient-tech.com.au";s:8:"password";s:60:"$2y$10$WkHhG9iCJKi0ziTnksoD6.PKbLj67adNDFgWqvOHkylZ8/NkvrZqa";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-11-04 23:51:26";s:13:"lastvisitDate";s:19:"2015-11-24 21:44:46";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:3:"gid";i:1000;}s:13:"session.token";s:32:"6017fa08b47658fba185f622b916057e";}', 721, 'fcadmin'),
('gct439fu850l83rg46lnvmg452', 0, 1, '1448422064', '__default|a:7:{s:15:"session.counter";i:48;s:19:"session.timer.start";i:1448420066;s:18:"session.timer.last";i:1448422062;s:17:"session.timer.now";i:1448422064;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;i:1;}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:1:{i:0;i:1;}s:14:"\\0\\0\\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_tags`
--

CREATE TABLE IF NOT EXISTS `af8ks_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `af8ks_tags`
--

INSERT INTO `af8ks_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 721, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_template_styles`
--

CREATE TABLE IF NOT EXISTS `af8ks_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `af8ks_template_styles`
--

INSERT INTO `af8ks_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(18, 'jp-x2', 0, '1', 'JP-X2 - Default', '{"config":""}'),
(19, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(20, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_ucm_base`
--

CREATE TABLE IF NOT EXISTS `af8ks_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_ucm_content`
--

CREATE TABLE IF NOT EXISTS `af8ks_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_ucm_history`
--

CREATE TABLE IF NOT EXISTS `af8ks_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_updates`
--

CREATE TABLE IF NOT EXISTS `af8ks_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `af8ks_updates`
--

INSERT INTO `af8ks_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 6, 0, 'RokSprocket Module', '', 'mod_roksprocket', 'module', '', 0, '2.1.9', '0802', 'http://updates.rockettheme.com/joomla/138/b61e70db', '', ''),
(2, 6, 0, 'RokGallery Extension', '', 'mod_rokgallery', 'module', '', 0, '2.31', '0802', 'http://updates.rockettheme.com/joomla/286/21ffe006', '', ''),
(3, 6, 0, 'RokBooster Plugin', '', 'rokbooster', 'plugin', 'system', 0, '1.1.15', '0802', 'http://updates.rockettheme.com/joomla/287/cb577720', '', ''),
(4, 6, 0, 'RokAjaxSearch Module', '', 'mod_rokajaxsearch', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/290/1d5a0af1', '', ''),
(5, 6, 0, 'RokWeather Module', '', 'mod_rokweather', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/292/a0cbba72', '', ''),
(6, 6, 0, 'RokStock Module', '', 'mod_rokstock', 'module', '', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/295/87c1121c', '', ''),
(7, 6, 0, 'RokFeatureTable Module', '', 'mod_rokfeaturetable', 'module', '', 0, '1.7', '0802', 'http://updates.rockettheme.com/joomla/296/fb9111b3', '', ''),
(8, 6, 0, 'RokMiniEvents3 Module', '', 'mod_rokminievents3', 'module', '', 0, '3.0.2', '0802', 'http://updates.rockettheme.com/joomla/297/1686051690', '', ''),
(9, 6, 0, 'RokQuickCart Extension', '', 'com_rokquickcart', 'component', '', 1, '2.1.4', '0802', 'http://updates.rockettheme.com/joomla/298/ddfa10eb', '', ''),
(10, 6, 0, 'RokPad Plugin', '', 'rokpad', 'plugin', 'editors', 0, '2.1.9', '0802', 'http://updates.rockettheme.com/joomla/299/e07875c9', '', ''),
(11, 6, 0, 'RokNavMenu Module', '', 'mod_roknavmenu', 'module', '', 0, '2.0.8', '0802', 'http://updates.rockettheme.com/joomla/300/5a9aa468', '', ''),
(12, 6, 0, 'RokBox Plugin', '', 'rokbox', 'plugin', 'system', 0, '2.0.11', '0802', 'http://updates.rockettheme.com/joomla/301/dfc993d8', '', ''),
(13, 6, 0, 'RokCandy Extension', '', 'rokcandy', 'plugin', 'system', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/302/2df8a4e2', '', ''),
(14, 6, 0, 'RokComments Plugin', '', 'rokcomments', 'plugin', 'content', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/303/d1fd7b76', '', ''),
(15, 6, 0, 'RokSocialButtons Plugin', '', 'roksocialbuttons', 'plugin', 'content', 0, '1.5.3', '0802', 'http://updates.rockettheme.com/joomla/381/269989291', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_update_sites`
--

CREATE TABLE IF NOT EXISTS `af8ks_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `af8ks_update_sites`
--

INSERT INTO `af8ks_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1448421716, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1448421716, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(5, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1448421715, ''),
(6, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1448421715, ''),
(7, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1448421715, ''),
(9, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 1448421715, '');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `af8ks_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `af8ks_update_sites_extensions`
--

INSERT INTO `af8ks_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(5, 10047),
(6, 10075),
(7, 28),
(9, 10088);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_usergroups`
--

CREATE TABLE IF NOT EXISTS `af8ks_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `af8ks_usergroups`
--

INSERT INTO `af8ks_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_users`
--

CREATE TABLE IF NOT EXISTS `af8ks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=722 ;

--
-- Dumping data for table `af8ks_users`
--

INSERT INTO `af8ks_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(721, 'Super User', 'fcadmin', 'shamus.dougan@sapient-tech.com.au', '$2y$10$WkHhG9iCJKi0ziTnksoD6.PKbLj67adNDFgWqvOHkylZ8/NkvrZqa', 0, 1, '2015-11-04 23:51:26', '2015-11-25 02:55:35', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_user_keys`
--

CREATE TABLE IF NOT EXISTS `af8ks_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_user_notes`
--

CREATE TABLE IF NOT EXISTS `af8ks_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_user_profiles`
--

CREATE TABLE IF NOT EXISTS `af8ks_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `af8ks_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `af8ks_user_usergroup_map`
--

INSERT INTO `af8ks_user_usergroup_map` (`user_id`, `group_id`) VALUES
(721, 8);

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_viewlevels`
--

CREATE TABLE IF NOT EXISTS `af8ks_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `af8ks_viewlevels`
--

INSERT INTO `af8ks_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `af8ks_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `af8ks_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `af8ks_widgetkit_widget`
--

INSERT INTO `af8ks_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(1, 'slideshow', 'default', 'SlideTop', '{"type":"slideshow","id":1,"name":"SlideTop","settings":{"style":"default","autoplay":0,"interval":9000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":1,"buttons":1,"slices":3,"animated":"scroll","caption_animation_duration":300},"style":"default","items":{"51a7b80758645":{"title":"Slider 1","content":"<p><img class=\\"size-auto op-effect\\" src=\\"images\\/top-slider\\/slider-001.png\\" alt=\\"Demo Image\\" width=\\"941\\" height=\\"540\\" border=\\"0\\" \\/><\\/p>","caption":""},"51a7b85c9a3f9":{"title":"Slider 2","content":"<p><img class=\\"size-auto op-effect\\" src=\\"images\\/top-slider\\/slider-002.png\\" alt=\\"Demo Image\\" width=\\"941\\" height=\\"540\\" border=\\"0\\" \\/><\\/p>","caption":""}}}', '2013-05-30 20:37:19', '2015-11-25 03:02:29'),
(8, 'slideshow', '', '', '{"type":"slideshow","id":null,"name":null,"settings":null,"style":null,"items":[]}', '2015-11-25 02:55:36', '2015-11-25 02:55:36'),
(2, 'slideshow', 'default', 'Testimonials', '{"type":"slideshow","id":2,"name":"Testimonials","settings":{"style":"default","autoplay":1,"interval":50000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":1,"buttons":1,"slices":3,"animated":"scroll","caption_animation_duration":500},"style":"default","items":{"5655076f396f6":{"title":"mark white  ","content":"<p><em>\\"Justin was contracted to complete a major renovation and extension to my property in Yarraville finishing in 2012.<\\/em><\\/p>\\r\\n<p><em>As the house was heritage listed the front was restored and the extension was finished in a modern finish. To both ends Justin excelled.<\\/em><\\/p>\\r\\n<p><em>There were many challenges especially with the ground works to which Justin walked us through with the best result we could have hoped for. He has a great team allways friendly and easy to communicate with. I would highly recommened him for any building work.\\"<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>Mark White<\\/strong><\\/p>","caption":""},"51c4f1b9a90b9":{"title":"Toula -  Gordon Street ","content":"<p><em>\\"This was my first experience with a renovation. I found Justin by browsing the net and the references from previous clients were very encouraging. <\\/em><\\/p>\\r\\n<p><em>I was immediately impressed with Justins professionalism and straight talking. I had a good idea of what I wanted in my renovation and Justin contributed to the plans by advising and recommending stylish, functional and practical solutions. <\\/em><\\/p>\\r\\n<p><em>The project started and finished on time and the variations to the project were within my estimates. <\\/em><\\/p>\\r\\n<p><em>He always checked with me before proceeding with any variations. I was able to visit the site on a regular basis and always found Justin pleasant to deal with and often good humoured! <\\/em><\\/p>\\r\\n<p><em>The final result is outstanding. My renovation experience was enjoyable! My family and friends are of the same opinion, and many have asked for Justins contact details. I would recommend Justin to anyone that is in the market for a home renovation\\"<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>Toula -\\u00a0 Gordon Street<\\/strong><\\/p>","caption":""},"565500694bcef":{"title":"Dr Joanne Brown","content":"<p><em>\\"I employed Fulham and Chelsea Building Services in February 2010 to complete a major renovation of my Victorian style home. <\\/em><\\/p>\\r\\n<p><em>The renovation was quite complicated and involved recycling of all building materials, installation of a complex grey water recycling system and authentic building practices consistent with the period of the building. <\\/em><\\/p>\\r\\n<p><em>Further complications include me residing at the property throughout the renovation period. <\\/em><\\/p>\\r\\n<p><em>I can fully recommend Fulham and Chelsea building services, as they were professional, kept me well informed and discussed any additional or unexpected situations with me as they arose. <\\/em><\\/p>\\r\\n<p><em>The co-ordination of different trades was exemplary and there was almost no down time. They were able to work around my schedules and when on site were always respectful. I have no hesitation in recommending them for any similar building works, and would certainly use them again for any future works.\\"<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>Dr Joanne Brown<\\/strong><\\/p>","caption":""},"565505c85a663":{"title":"Reymond Langton Design Ltd ","content":"<p><em>\\"Justin Seabrook completed five excellent refurbishment projects from 2004 to 2008. <\\/em><\\/p>\\r\\n<p><em>Justin''s role was project manager and co-ordinator of the five projects including: - 1 bedroom flat, South Kensington, London - 1 bedroom flat, Lancaster Gate, London - 2 bedroom flat converted into luxury showroom, Kew Gardens, Surrey - 2 bedroom luxury grade 1 listed apartment, Hampton, Surrey - Commercial premises, Kew Gardens, Surrey.<\\/em><\\/p>\\r\\n<p><em> Over the years that we worked with Justin we developed a very good relationship and can confidently confirm that he was at all times professional, hard working, personable and efficient. He was always enthusiastic, when carrying out interior design projects and was determined to deliver the highest quality finish which always added value to the properties. We were sad to see him leave the UK but wish him all the very best in his endeavours.\\"<\\/em><\\/p>\\r\\n<div class=\\"dp-sig-nametitle-item\\">\\u00a0<\\/div>\\r\\n<div class=\\"dp-sig-nametitle-item\\"><strong>Reymond Langton Design Ltd<\\/strong><\\/div>\\r\\n<div class=\\"dp-sig-nametitle-item\\"><strong>Surrey, UK<\\/strong><\\/div>","caption":""},"5655064fc7014":{"title":"Jade Seabrook","content":"<p><em>\\"Justin Seabrook has completed and assisted with various renovations and just recently a large extension on my older weather board home located in Huntingdale. <\\/em><\\/p>\\r\\n<p><em>Justin works in a very professional manner is reliable, trust worthy and takes pride in his work. <\\/em><\\/p>\\r\\n<p><em>Before knowing that Justin was my brother, other contracted trades being used on my extension, commented on his ability, commitment and the quality of his work. I would highly Recommend Justin to any person interested in contracting him for work.\\"<\\/em><\\/p>\\r\\n<div class=\\"dp-testimonial-signature\\">\\r\\n<div class=\\"dp-sig-nametitle\\">\\r\\n<div class=\\"dp-sig-nametitle-item\\">\\u00a0<\\/div>\\r\\n<div class=\\"dp-sig-nametitle-item\\"><strong>Jade Seabrook<\\/strong><\\/div>\\r\\n<div class=\\"dp-sig-nametitle-item\\"><strong>Huntingdale, Victoria<\\/strong><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","caption":""},"565506ac1aec8":{"title":"Kenneth Judge South Kensington","content":"<p><em>\\"I am pleased to provide this reference in connection with extensive building renovation works Fulham &amp; Chelsea Building Services executed at my apartment at 18 Brechin Place, South Kensington, London following my purchase in 2008. <\\/em><\\/p>\\r\\n<p><em>Mr. Seabrook was recommended to me by a friend of long standing who had used Mr. Seabrook.s services on another project in London.<\\/em><\\/p>\\r\\n<p><em>Finding reliable, good quality trades people, especially builders in central London is nothing short of a nightmare for any home owner contemplating significant renovations. It was therefore a great relief to be recommended an Australian builder for my works as by reputation, Australian trades people in London are well thought of and Mr. Seabrook proved to be justifiably well recommended. <\\/em><\\/p>\\r\\n<p><em>I am delighted with the significant renovation work Mr. Seabrook did at my apartment which was executed on time and remarkably, within budget. I would be very happy to recommend Mr. Seabrook for work here in Australia.\\"<\\/em><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>Kenneth Judge <\\/strong><\\/p>\\r\\n<p><strong>South Kensington, London<\\/strong><\\/p>","caption":""}}}', '2013-06-22 00:40:07', '2015-11-25 01:05:09'),
(3, 'slideshow', 'default', 'Content Slider (Copy)', '{"type":"slideshow","id":3,"name":"Content Slider (Copy)","settings":{"style":"default","autoplay":1,"interval":5000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":1,"buttons":0,"slices":3,"animated":"fade","caption_animation_duration":500},"style":"default","items":{"51c4f1b9a90b9":{"title":"Sample Content I","content":"<a data-lightbox=\\"on\\" href=\\"images\\/joomlaplates\\/demo-001.jpg\\" data-spotlight=\\"on\\"><img class=\\"size-auto\\" src=\\"images\\/joomlaplates\\/demo-001.jpg\\" border=\\"0\\" alt=\\"Demo\\" \\/><\\/a>\\r\\n<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more.<\\/p>","caption":""},"51c4f1bad7ff7":{"title":"Sample 2","content":"<a data-lightbox=\\"on\\" href=\\"images\\/joomlaplates\\/demo-002.jpg\\" data-spotlight=\\"on\\"><img class=\\"size-auto\\" src=\\"images\\/joomlaplates\\/demo-002.jpg\\" border=\\"0\\" alt=\\"Demo\\" \\/><\\/a>\\r\\n<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more.<\\/p>","caption":""},"51cb58fec3233":{"title":"Sample 3","content":"<a data-lightbox=\\"on\\" href=\\"images\\/joomlaplates\\/demo-003.jpg\\" data-spotlight=\\"on\\"><img class=\\"size-auto\\" src=\\"images\\/joomlaplates\\/demo-003.jpg\\" border=\\"0\\" alt=\\"Demo\\" \\/><\\/a>\\r\\n<p>Widgetkit is the next generation tool set for Joomla and WordPress. This toolkit is the first of its kind! It provides a simple and user-friendly way to enrich your websites experience with slideshows, galleries, lightboxes and much more.<\\/p>","caption":""}}}', '2013-11-29 22:53:49', '2013-11-29 23:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_assets`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `bak_af8ks_assets`
--

INSERT INTO `bak_af8ks_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 107, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 74, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 75, 78, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 79, 80, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 81, 82, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 83, 84, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 85, 86, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 87, 90, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 91, 92, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 76, 77, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 88, 89, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 93, 94, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 95, 96, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 97, 98, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 99, 100, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 101, 102, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 103, 104, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 70, 71, 2, 'com_modules.module.88', 'Widgetkit Twitter', '{}'),
(55, 1, 105, 106, 1, 'com_widgetkit', 'Widgetkit', '{}'),
(56, 18, 72, 73, 2, 'com_modules.module.89', 'slideshow', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_associations`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_banners`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_categories`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bak_af8ks_categories`
--

INSERT INTO `bak_af8ks_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_content`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_content_types`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `bak_af8ks_content_types`
--

INSERT INTO `bak_af8ks_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10008 ;

--
-- Dumping data for table `bak_af8ks_extensions`
--

INSERT INTO `bak_af8ks_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"36f621a957be40e63ddacc940f12f1a6"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":",@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_af8ks_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'JP-X2', 'template', 'jp-x2', '', 0, 1, 1, 0, '{"name":"JP-X2","type":"template","creationDate":"Okt 2014","author":"JoomlaPlates","copyright":"Copyright (C) JoomlaPlates","authorEmail":"info@JoomlaPlates.com","authorUrl":"http:\\/\\/www.JoomlaPlates","version":"1.0.004","description":"JP X2 Theme by JoomlaPlates! Not for commercial use!","group":"","filename":"templateDetails"}', '{"config":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"name":"Widgetkit","type":"component","creationDate":"June 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.5.6","description":"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"name":"Widgetkit","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"mod_widgetkit"}', '{"widget_id":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Widgetkit Twitter', 'module', 'mod_widgetkit_twitter', '', 0, 1, 0, 0, '{"name":"Widgetkit Twitter","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"mod_widgetkit_twitter"}', '{"style_":"list","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"5","image_size":"48","show_image":"1","show_author":"1","show_date":"1","consumer_key":"","consumer_secret":"","access_token":"","access_token_secret":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'System - Widgetkit', 'plugin', 'widgetkit_system', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_system"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Content - Widgetkit', 'plugin', 'widgetkit_content', 'content', 0, 1, 1, 0, '{"name":"Content - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"August 2013","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2013 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.0","description":"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_zoo"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'System - Widgetkit Joomla', 'plugin', 'widgetkit_joomla', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit Joomla","type":"plugin","creationDate":"December 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":"","filename":"widgetkit_joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_af8ks_finder_taxonomy`
--

INSERT INTO `bak_af8ks_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_af8ks_finder_terms_common`
--

INSERT INTO `bak_af8ks_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_finder_types`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_languages`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_af8ks_languages`
--

INSERT INTO `bak_af8ks_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_menu`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `bak_af8ks_menu`
--

INSERT INTO `bak_af8ks_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 45, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_widgetkit/images/widgetkit_16.png', 0, '{}', 43, 44, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_af8ks_menu_types`
--

INSERT INTO `bak_af8ks_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_messages`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_modules`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `bak_af8ks_modules`
--

INSERT INTO `bak_af8ks_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'Widgetkit', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit', 1, 1, '', 0, '*'),
(88, 54, 'Widgetkit Twitter', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit_twitter', 1, 1, '', 0, '*'),
(89, 56, 'slideshow', '', '', 1, 'headerbar', 441, '2015-11-04 23:12:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_widgetkit', 1, 1, '{"widget_id":"1","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_af8ks_modules_menu`
--

INSERT INTO `bak_af8ks_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_overrider`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bak_af8ks_postinstall_messages`
--

INSERT INTO `bak_af8ks_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_schemas`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_af8ks_schemas`
--

INSERT INTO `bak_af8ks_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_session`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_af8ks_session`
--

INSERT INTO `bak_af8ks_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('6muh8s4e8geg6s38av6os4oo41', 1, 0, '1446678764', '__default|a:8:{s:15:"session.counter";i:62;s:19:"session.timer.start";i:1446676238;s:18:"session.timer.last";i:1446678762;s:17:"session.timer.now";i:1446678763;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":4:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:1:{i:0;i:89;}}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:13:"com_templates";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:5:"style";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":28:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"441";s:4:"name";s:10:"Super User";s:8:"username";s:7:"fcadmin";s:5:"email";s:33:"shamus.dougan@sapient-tech.com.au";s:8:"password";s:60:"$2y$10$4Ij2JlAMuQKM6HGXUm8rQuSJ2WLBipmFszYG7baFAjxbznaOxuN..";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-11-04 22:15:29";s:13:"lastvisitDate";s:19:"0000-00-00 00:00:00";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"f2bb242aed861fbdd697f1bf4de84ae1";}', 441, 'fcadmin'),
('opmttnubb435kaf23n2nf63b35', 0, 1, '1446678770', '__default|a:7:{s:15:"session.counter";i:18;s:19:"session.timer.start";i:1446676921;s:18:"session.timer.last";i:1446678768;s:17:"session.timer.now";i:1446678770;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_tags`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_af8ks_tags`
--

INSERT INTO `bak_af8ks_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_template_styles`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bak_af8ks_template_styles`
--

INSERT INTO `bak_af8ks_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'jp-x2', 0, '1', 'JP-X2 - Default', '{"config":""}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_ucm_base`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_ucm_content`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_ucm_history`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_updates`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=55 ;

--
-- Dumping data for table `bak_af8ks_updates`
--

INSERT INTO `bak_af8ks_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(2, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(3, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(4, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(5, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(6, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(7, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(8, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(9, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(10, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(11, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(12, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(13, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(14, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(15, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(16, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(17, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(18, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(19, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(20, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(21, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(22, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(23, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(24, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(25, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(26, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(27, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(28, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(29, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(30, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(31, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(32, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(33, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(34, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(35, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(36, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(37, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(38, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(39, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(40, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(41, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(42, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(43, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(44, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(45, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(46, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(47, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(48, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(49, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(50, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(51, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(52, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(53, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(54, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/tk-TM_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_update_sites`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bak_af8ks_update_sites`
--

INSERT INTO `bak_af8ks_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1446676263, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1446676263, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1446676262, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1446676262, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `bak_af8ks_update_sites_extensions`
--

INSERT INTO `bak_af8ks_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_usergroups`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bak_af8ks_usergroups`
--

INSERT INTO `bak_af8ks_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_users`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=442 ;

--
-- Dumping data for table `bak_af8ks_users`
--

INSERT INTO `bak_af8ks_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(441, 'Super User', 'fcadmin', 'shamus.dougan@sapient-tech.com.au', '$2y$10$4Ij2JlAMuQKM6HGXUm8rQuSJ2WLBipmFszYG7baFAjxbznaOxuN..', 0, 1, '2015-11-04 22:15:29', '2015-11-04 22:30:59', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_user_keys`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_user_notes`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_af8ks_user_usergroup_map`
--

INSERT INTO `bak_af8ks_user_usergroup_map` (`user_id`, `group_id`) VALUES
(441, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bak_af8ks_viewlevels`
--

INSERT INTO `bak_af8ks_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `bak_af8ks_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `bak_af8ks_widgetkit_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_af8ks_widgetkit_widget`
--

INSERT INTO `bak_af8ks_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(1, 'slideshow', 'default', 'Frontpage', '{"type":"slideshow","id":1,"name":"Frontpage","settings":{"style":"default","autoplay":1,"interval":5000,"width":"auto","height":"auto","duration":500,"index":0,"order":"default","navigation":1,"buttons":1,"slices":20,"animated":"fade","caption_animation_duration":500},"style":"default","items":{"563a90841ccac":{"title":"Video test","content":"test","caption":""}}}', '2015-11-04 23:12:03', '2015-11-04 23:12:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
