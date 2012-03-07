-- phpMyAdmin SQL Dump
-- version 3.4.10deb1.natty~ppa.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-03-2012 a las 17:36:35
-- Versión del servidor: 5.1.54
-- Versión de PHP: 5.3.8-1~ppa3~natty

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `io`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_alarms`
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
-- Estructura de tabla para la tabla `_bio`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bio_auth`
--

CREATE TABLE IF NOT EXISTS `_bio_auth` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_bio` int(11) NOT NULL DEFAULT '0',
  `auth_profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bio_auth_field`
--

CREATE TABLE IF NOT EXISTS `_bio_auth_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_alias` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bio_auth_profile`
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
-- Estructura de tabla para la tabla `_bio_auth_property`
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
-- Estructura de tabla para la tabla `_bio_block`
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
-- Estructura de tabla para la tabla `_bio_fields`
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
-- Volcado de datos para la tabla `_bio_fields`
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
-- Estructura de tabla para la tabla `_bio_friends`
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
-- Estructura de tabla para la tabla `_bio_group`
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
-- Estructura de tabla para la tabla `_bio_newsletter`
--

CREATE TABLE IF NOT EXISTS `_bio_newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_bio` int(11) NOT NULL,
  `newsletter_receive` int(11) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bio_rate`
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
-- Estructura de tabla para la tabla `_bio_store`
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
-- Estructura de tabla para la tabla `_objects`
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
-- Estructura de tabla para la tabla `_objects_type`
--

CREATE TABLE IF NOT EXISTS `_objects_type` (
  `type_id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type_order` mediumint(5) NOT NULL,
  `type_alias` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
