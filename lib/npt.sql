-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2012 at 09:38 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `npt`
--

-- --------------------------------------------------------

--
-- Table structure for table `_alarms`
--

CREATE TABLE IF NOT EXISTS `_alarms` (
  `alarm_id` int(11) NOT NULL AUTO_INCREMENT,
  `alarm_bio` int(11) NOT NULL,
  `alarm_start` int(11) NOT NULL,
  `alarm_end` int(11) NOT NULL,
  `alarm_bubble` int(11) NOT NULL,
  `alarm_email` tinyint(1) NOT NULL,
  PRIMARY KEY (`alarm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio`
--

CREATE TABLE IF NOT EXISTS `_bio` (
  `bio_id` int(11) NOT NULL AUTO_INCREMENT,
  `bio_type` mediumint(5) NOT NULL DEFAULT '0',
  `bio_level` tinyint(2) NOT NULL DEFAULT '0',
  `bio_active` tinyint(1) NOT NULL DEFAULT '0',
  `bio_alias` varchar(25) NOT NULL DEFAULT '',
  `bio_name` varchar(25) NOT NULL DEFAULT '',
  `bio_first` varchar(50) NOT NULL DEFAULT '',
  `bio_last` varchar(50) NOT NULL DEFAULT '',
  `bio_key` varchar(100) NOT NULL DEFAULT '',
  `bio_address` int(11) NOT NULL DEFAULT '0',
  `bio_gender` tinyint(1) NOT NULL DEFAULT '0',
  `bio_birth` varchar(8) NOT NULL DEFAULT '',
  `bio_birthlast` tinyint(4) NOT NULL DEFAULT '0',
  `bio_regip` varchar(25) NOT NULL DEFAULT '0',
  `bio_regdate` int(11) NOT NULL DEFAULT '0',
  `bio_session_time` int(11) NOT NULL DEFAULT '0',
  `bio_lastpage` varchar(255) NOT NULL DEFAULT '0',
  `bio_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `bio_dst` tinyint(1) NOT NULL DEFAULT '0',
  `bio_dateformat` varchar(14) NOT NULL DEFAULT '',
  `bio_lang` varchar(2) NOT NULL DEFAULT '',
  `bio_country` int(11) NOT NULL DEFAULT '0',
  `bio_avatar` varchar(100) NOT NULL DEFAULT '',
  `bio_actkey` varchar(25) NOT NULL DEFAULT '',
  `bio_recovery` int(11) NOT NULL DEFAULT '0',
  `bio_fails` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `_bio`
--

INSERT INTO `_bio` (`bio_id`, `bio_type`, `bio_level`, `bio_active`, `bio_alias`, `bio_name`, `bio_first`, `bio_last`, `bio_key`, `bio_address`, `bio_gender`, `bio_birth`, `bio_birthlast`, `bio_regip`, `bio_regdate`, `bio_session_time`, `bio_lastpage`, `bio_timezone`, `bio_dst`, `bio_dateformat`, `bio_lang`, `bio_country`, `bio_avatar`, `bio_actkey`, `bio_recovery`, `bio_fails`) VALUES
(1, 0, 0, 0, 'guest', 'Guest', '', '', '', 0, 0, '', 0, '0', 0, 0, '0', 0.00, 0, '', '', 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_bio_auth`
--

CREATE TABLE IF NOT EXISTS `_bio_auth` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_bio` int(11) NOT NULL DEFAULT '0',
  `auth_profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_auth_field`
--

CREATE TABLE IF NOT EXISTS `_bio_auth_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_alias` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `_bio_auth_field`
--

INSERT INTO `_bio_auth_field` (`field_id`, `field_alias`, `field_name`) VALUES
(1, 'home', 'home'),
(2, 'ext', 'ext'),
(3, 'sign', 'sign');

-- --------------------------------------------------------

--
-- Table structure for table `_bio_auth_profile`
--

CREATE TABLE IF NOT EXISTS `_bio_auth_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_active` int(11) NOT NULL DEFAULT '0',
  `profile_alias` varchar(50) NOT NULL DEFAULT '',
  `profile_name` varchar(50) NOT NULL DEFAULT '',
  `profile_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_auth_property`
--

CREATE TABLE IF NOT EXISTS `_bio_auth_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `property_profile` int(11) NOT NULL DEFAULT '0',
  `property_field` int(11) NOT NULL DEFAULT '0',
  `property_data` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_block`
--

CREATE TABLE IF NOT EXISTS `_bio_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `block_assoc` int(11) NOT NULL,
  `block_bio` int(11) NOT NULL,
  `block_time` int(11) NOT NULL,
  `block_message` text NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_fields`
--

CREATE TABLE IF NOT EXISTS `_bio_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_alias` varchar(25) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_required` tinyint(1) NOT NULL,
  `field_show` tinyint(1) NOT NULL,
  `field_type` varchar(25) NOT NULL,
  `field_relation` varchar(50) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `_bio_fields`
--

INSERT INTO `_bio_fields` (`field_id`, `field_alias`, `field_name`, `field_required`, `field_show`, `field_type`, `field_relation`) VALUES
(1, 'email_0', 'Email', 0, 1, 'text', ''),
(2, 'icq', 'ICQ', 0, 1, 'text', ''),
(3, 'blog', 'Blog', 0, 1, 'text', ''),
(4, 'website', 'Sitio web', 0, 1, 'text', ''),
(5, 'location', 'Ubicaci&oacute;n', 0, 1, 'text', ''),
(6, 'wlive', 'Windows Live', 0, 1, 'text', ''),
(7, 'lastfm', 'Last FM', 0, 1, 'text', ''),
(8, 'occ', 'Ocupaci&oacute;n', 0, 1, 'text', ''),
(9, 'interests', 'Intereses', 0, 1, 'text', ''),
(10, 'os', 'Sistema operativo', 0, 1, 'text', ''),
(11, 'fgenres', 'G&eacute;neros musicales', 0, 1, 'text', ''),
(12, 'fartists', 'Artistas favoritos', 0, 1, 'text', '');

-- --------------------------------------------------------

--
-- Table structure for table `_bio_friends`
--

CREATE TABLE IF NOT EXISTS `_bio_friends` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `friend_assoc` int(11) NOT NULL,
  `friend_bio` int(11) NOT NULL,
  `friend_pending` tinyint(1) NOT NULL,
  `friend_time` int(11) NOT NULL,
  `friend_message` varchar(255) NOT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_group`
--

CREATE TABLE IF NOT EXISTS `_bio_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_assoc` int(11) NOT NULL,
  `group_bio` int(11) NOT NULL,
  `group_time` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_newsletter`
--

CREATE TABLE IF NOT EXISTS `_bio_newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_bio` int(11) NOT NULL,
  `newsletter_receive` int(11) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_profile`
--

CREATE TABLE IF NOT EXISTS `_bio_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_bio` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_rate`
--

CREATE TABLE IF NOT EXISTS `_bio_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_assoc` int(11) NOT NULL,
  `rate_bio` int(11) NOT NULL,
  `rate_value` tinyint(2) NOT NULL,
  `rate_time` int(11) NOT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_bio_store`
--

CREATE TABLE IF NOT EXISTS `_bio_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_bio` int(11) NOT NULL,
  `store_field` int(11) NOT NULL,
  `store_value` text NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_config`
--

CREATE TABLE IF NOT EXISTS `_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_config`
--

INSERT INTO `_config` (`config_name`, `config_value`) VALUES
('address', 'http://www.io.com/'),
('cookie_domain', 'io.com'),
('cookie_name', 'npt'),
('cookie_path', '/'),
('cron_enabled', '1'),
('default_email', 'info@nopticon.com'),
('domain', 'io.com'),
('email_gretting', 'Buen d&iacute;a'),
('mail_port', '110'),
('mail_server', ''),
('mail_ticket_key', ''),
('mail_ticket_login', ''),
('max_login_attempts', '5'),
('session_gc', '3600'),
('session_last_gc', '1332192193'),
('session_length', '3600'),
('signin_pop', '0'),
('site_address', '//www.io.com/'),
('site_lang', 'es'),
('site_title', 'Ideas y Oportunidades'),
('xs_auto_compile', '1'),
('xs_check_switches', '0'),
('xs_def_template', ''),
('xs_use_cache', '0'),
('xs_warn_includes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `_modules`
--

CREATE TABLE IF NOT EXISTS `_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_active` tinyint(1) NOT NULL,
  `module_alias` varchar(100) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_path` varchar(100) NOT NULL,
  `module_basename` varchar(100) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `_modules`
--

INSERT INTO `_modules` (`module_id`, `module_active`, `module_alias`, `module_name`, `module_path`, `module_basename`) VALUES
(1, 1, 'home', 'Principal', './', '_home.php'),
(2, 1, 'ext', 'Resources', './', '_ext.php'),
(3, 1, 'sign', 'Usuario', './', '_sign.php');

-- --------------------------------------------------------

--
-- Table structure for table `_objects`
--

CREATE TABLE IF NOT EXISTS `_objects` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` mediumint(5) NOT NULL,
  `object_parent` int(11) NOT NULL,
  `object_subject` varchar(255) NOT NULL,
  `object_content` text NOT NULL,
  `object_time` int(11) NOT NULL,
  `object_ip` varchar(100) NOT NULL,
  `object_bio` int(11) NOT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_objects_type`
--

CREATE TABLE IF NOT EXISTS `_objects_type` (
  `type_id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type_order` mediumint(5) NOT NULL,
  `type_alias` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_sessions`
--

CREATE TABLE IF NOT EXISTS `_sessions` (
  `session_id` varchar(50) NOT NULL DEFAULT '',
  `session_bio_id` mediumint(5) NOT NULL DEFAULT '0',
  `session_last_visit` int(11) NOT NULL DEFAULT '0',
  `session_start` int(11) NOT NULL DEFAULT '0',
  `session_time` int(11) NOT NULL DEFAULT '0',
  `session_ip` varchar(40) NOT NULL DEFAULT '',
  `session_browser` varchar(255) NOT NULL,
  `session_page` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_sessions`
--

INSERT INTO `_sessions` (`session_id`, `session_bio_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_page`) VALUES
('37f54a9fa37eb5b0f58f0533ea590172', 1, 1332188681, 1332188681, 1332188681, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', 'http://www.io.com/'),
('188c638adba4ab1e33847dd6ad204231', 1, 1332188681, 1332188681, 1332188681, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('f342f4fca0a92b9e0fd70aa716539dab', 1, 1332188775, 1332188775, 1332188775, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', 'http://www.io.com/'),
('8f3f172977628468ec297b170d876b94', 1, 1332188775, 1332188775, 1332188775, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('859ada20d2ef1192e800d447a0ccd53f', 1, 1332188775, 1332188775, 1332188775, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('aa9253dd8f17b4a8b2c81330a2a96d9a', 1, 1332189287, 1332189287, 1332189287, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', 'http://www.io.com/signin/'),
('b0da381d37fd822ffd6197059389d380', 1, 1332189287, 1332189287, 1332189287, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('169f3d9770d7d4a1c432b53f75f3ae88', 1, 1332189287, 1332189287, 1332189287, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('9914c9189c978b0fce1840b374c6639f', 1, 1332189307, 1332189307, 1332189307, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', 'http://www.io.com/signin/'),
('df34b19beb0388827ba3ae01ace3a9ec', 1, 1332189307, 1332189307, 1332189307, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('41d260b443a7bacec38a13cffecb6fe9', 1, 1332189329, 1332189329, 1332189329, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', 'http://www.io.com/'),
('848a8b000ec13ec33702553f1f83707f', 1, 1332189307, 1332189307, 1332189307, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('de9c0664a25c31539b1f5bd1a313eab5', 1, 1332189329, 1332189329, 1332189329, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('344a9aa0465f69babee6202b72d7eb3d', 1, 1332189329, 1332189329, 1332189329, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('bb47477ca5e3090ff078398023f04a3e', 1, 1332189329, 1332189329, 1332189329, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.79 Safari/535.11', ''),
('2432730d8abde1734322619e1d17b4a0', 1, 1332192193, 1332192193, 1332192193, '172.20.10.5', 'Mozilla/5.0 (Windows NT 5.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', 'http://172.20.10.2/npt/assets/'),
('661a529afad1632402f6887fbf050b4f', 1, 1332192232, 1332192232, 1332192232, '172.20.10.5', 'Mozilla/5.0 (Windows NT 5.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', 'http://172.20.10.2/npt/assets/'),
('9c1300aa2d2330fc8b9230bb78d7b068', 1, 1332192255, 1332192255, 1332192255, '172.20.10.5', 'Mozilla/5.0 (Windows NT 5.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', 'http://172.20.10.2/npt/assets/'),
('b3a0ce5aed2db9ba4c0d5d799c8a2f84', 1, 1332192257, 1332192257, 1332192257, '172.20.10.5', 'Mozilla/5.0 (Windows NT 5.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', 'http://172.20.10.2/npt/assets/'),
('da7ac5a8eedad22589b12685f108e7f5', 1, 1332192277, 1332192277, 1332192277, '172.20.10.5', 'Mozilla/5.0 (Windows NT 5.1; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', 'http://172.20.10.2/npt/assets/');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
