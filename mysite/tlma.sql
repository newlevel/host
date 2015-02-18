-- phpMyAdmin SQL Dump
-- version 4.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 18, 2015 at 07:48 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tlma`
--

-- --------------------------------------------------------

--
-- Table structure for table `adodb_logsql`
--

CREATE TABLE `adodb_logsql` (
  `created` datetime NOT NULL,
  `sql0` varchar(250) NOT NULL,
  `sql1` text NOT NULL,
  `params` text NOT NULL,
  `tracer` text NOT NULL,
  `timer` decimal(16,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adodb_logsql`
--

INSERT INTO `adodb_logsql` (`created`, `sql0`, `sql1`, `params`, `tracer`, `timer`) VALUES
('2015-02-18 19:19:31', '121.2248367168', 'ALTER TABLE `contentcache` CHANGE `cc_content` `cc_content` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ', '', '<br>localhost:8888/index.php', 0.075753);

-- --------------------------------------------------------

--
-- Table structure for table `auth_token`
--

CREATE TABLE `auth_token` (
  `token` varchar(40) NOT NULL,
  `userid` int(11) NOT NULL,
  `lastused` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_token`
--

INSERT INTO `auth_token` (`token`, `userid`, `lastused`) VALUES
('OX6chkBn644VB48P', 1, 1423455619),
('vsKzM7xxIQ4MNere', 1, 1422410124);

-- --------------------------------------------------------

--
-- Table structure for table `contentcache`
--

CREATE TABLE `contentcache` (
  `cc_url` varchar(255) NOT NULL DEFAULT '',
  `cc_userid` int(11) NOT NULL DEFAULT '0',
  `cc_content` longtext NOT NULL,
  `cc_cached` int(11) NOT NULL DEFAULT '0',
  `cc_expires` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cropdata`
--

CREATE TABLE `cropdata` (
  `hash` varchar(40) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE `eventlog` (
  `eventlogid` int(11) NOT NULL,
  `el_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `el_code` varchar(100) NOT NULL,
  `el_desc` text NOT NULL,
  `el_importance` enum('critical','high','normal','low','very low') NOT NULL DEFAULT 'normal',
  `el_shortdesc` varchar(255) NOT NULL DEFAULT '',
  `el_userid` int(11) NOT NULL DEFAULT '0',
  `el_username` varchar(255) NOT NULL DEFAULT '',
  `el_ip` varchar(255) NOT NULL DEFAULT '',
  `el_uri` varchar(255) NOT NULL DEFAULT '',
  `el_referer` varchar(255) NOT NULL DEFAULT '',
  `el_browser` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`eventlogid`, `el_datetime`, `el_code`, `el_desc`, `el_importance`, `el_shortdesc`, `el_userid`, `el_username`, `el_ip`, `el_uri`, `el_referer`, `el_browser`) VALUES
(1, '2015-02-18 19:20:42', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(2, '2015-02-18 19:20:42', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(3, '2015-02-18 19:20:42', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(4, '2015-02-18 19:33:51', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(5, '2015-02-18 19:33:51', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(6, '2015-02-18 19:33:51', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', 'admin/eventlog', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(7, '2015-02-18 19:34:51', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', '', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(8, '2015-02-18 19:34:51', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', '', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(9, '2015-02-18 19:34:51', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', '', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(10, '2015-02-18 19:34:51', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', '', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(11, '2015-02-18 19:35:15', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', 'admin/edit/page', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(12, '2015-02-18 19:35:15', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', 'admin/edit/page', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(13, '2015-02-18 19:35:15', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', 'admin/edit/page', 'http://localhost:8888/admin/eventlog/', 'mozilla'),
(14, '2015-02-18 19:35:56', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(15, '2015-02-18 19:35:56', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(16, '2015-02-18 19:35:56', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow', 'http://localhost:8888/admin/edit/page/', 'mozilla'),
(17, '2015-02-18 19:36:03', 'PHP Error', 'Error No: 2048\nDescription: Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php\nLine: 66\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/t1_slideshow.php "Declaration of Jojo_Plugin_t1_slideshow::_getContent() should be compatible with Jojo_Plugin::_getContent()" line 66', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow_slide', 'http://localhost:8888/admin/edit/t1_slideshow/', 'mozilla'),
(18, '2015-02-18 19:36:03', 'PHP Error', 'Error No: 2048\nDescription: Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php\nLine: 11\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4_plugins/t1_slideshow/global.php "Non-static method Jojo_Plugin_t1_slideshow::_getContent() should not be called statically" line 11', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow_slide', 'http://localhost:8888/admin/edit/t1_slideshow/', 'mozilla'),
(19, '2015-02-18 19:36:03', 'PHP Error', 'Error No: 2048\nDescription: call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically\nFile: /Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php\nLine: 1650\n', 'high', '/Volumes/Seagate/Sites2/PumpCMS_4.1.1/plugins/jojo_core/classes/Jojo.php "call_user_func_array() expects parameter 1 to be a valid callback, non-static method Jojo_Plugin_t1_slideshow::contentFilter() should not be called statically" line 1650', 1, '', '127.0.0.1', 'admin/edit/t1_slideshow_slide', 'http://localhost:8888/admin/edit/t1_slideshow/', 'mozilla');

-- --------------------------------------------------------

--
-- Table structure for table `fielddata`
--

CREATE TABLE `fielddata` (
  `fielddataid` int(11) NOT NULL,
  `fd_table` varchar(255) NOT NULL DEFAULT '',
  `fd_field` varchar(255) NOT NULL DEFAULT '',
  `fd_name` varchar(255) NOT NULL DEFAULT '',
  `fd_sqltype` varchar(100) NOT NULL DEFAULT '',
  `fd_type` varchar(255) NOT NULL DEFAULT '',
  `fd_options` text,
  `fd_required` enum('yes','no') NOT NULL DEFAULT 'no',
  `fd_readonly` tinyint(1) DEFAULT '0',
  `fd_showlabel` enum('yes','no') NOT NULL DEFAULT 'yes',
  `fd_default` varchar(255) NOT NULL DEFAULT '',
  `fd_maxvalue` varchar(20) NOT NULL DEFAULT '',
  `fd_minvalue` varchar(20) NOT NULL DEFAULT '',
  `fd_size` varchar(20) NOT NULL DEFAULT '0',
  `fd_rows` varchar(20) NOT NULL DEFAULT '0',
  `fd_cols` varchar(20) NOT NULL DEFAULT '0',
  `fd_help` text,
  `fd_nulls` enum('yes','no') NOT NULL DEFAULT 'yes',
  `fd_order` int(11) NOT NULL DEFAULT '0',
  `fd_tabname` varchar(255) NOT NULL DEFAULT '',
  `fd_m2m_linktable` varchar(255) NOT NULL DEFAULT '',
  `fd_m2m_linkitemid` varchar(255) NOT NULL DEFAULT '',
  `fd_m2m_linkcatid` varchar(255) NOT NULL DEFAULT '',
  `fd_m2m_cattable` varchar(255) NOT NULL DEFAULT '',
  `fd_maxsize` int(11) NOT NULL DEFAULT '0',
  `fd_units` varchar(100) NOT NULL DEFAULT '',
  `fd_autoupdate` enum('yes','no') NOT NULL DEFAULT 'yes',
  `fd_flags` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1776 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fielddata`
--

INSERT INTO `fielddata` (`fielddataid`, `fd_table`, `fd_field`, `fd_name`, `fd_sqltype`, `fd_type`, `fd_options`, `fd_required`, `fd_readonly`, `fd_showlabel`, `fd_default`, `fd_maxvalue`, `fd_minvalue`, `fd_size`, `fd_rows`, `fd_cols`, `fd_help`, `fd_nulls`, `fd_order`, `fd_tabname`, `fd_m2m_linktable`, `fd_m2m_linkitemid`, `fd_m2m_linkcatid`, `fd_m2m_cattable`, `fd_maxsize`, `fd_units`, `fd_autoupdate`, `fd_flags`) VALUES
(1, 'auth_token', 'token', 'Token', 'varchar(40)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(2, 'auth_token', 'userid', 'Userid', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(3, 'auth_token', 'lastused', 'Lastused', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(4, 'contentcache', 'cc_url', 'URL', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(5, 'contentcache', 'cc_userid', 'Userid', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(6, 'contentcache', 'cc_content', 'Content', 'longtext', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(7, 'contentcache', 'cc_cached', 'Cached', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(8, 'contentcache', 'cc_expires', 'Expires', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(9, 'cropdata', 'hash', 'Hash', 'varchar(40)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(10, 'cropdata', 'filename', 'Filename', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(11, 'cropdata', 'x', 'X', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(12, 'cropdata', 'y', 'Y', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(13, 'eventlog', 'eventlogid', 'Eventlogid', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(14, 'eventlog', 'el_datetime', 'Date / Time', 'datetime', 'text', '', 'no', 0, 'yes', '0000-00-00 00:00:00', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(15, 'eventlog', 'el_code', 'Code', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(16, 'eventlog', 'el_desc', 'Description', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(17, 'eventlog', 'el_importance', 'Importance', 'enum(''critical'',''high'',''normal'',''low'',''very low'')', 'combobox', 'critical:Critical\r\nhigh:High\r\nnormal:Normal\r\nlow:Low\r\nvery low:Very low', 'no', 0, 'yes', 'normal', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(18, 'eventlog', 'el_shortdesc', 'Shortdesc', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(19, 'eventlog', 'el_userid', 'Userid', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(20, 'eventlog', 'el_username', 'Username', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(21, 'eventlog', 'el_ip', 'Ip', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(22, 'eventlog', 'el_uri', 'Uri', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(23, 'eventlog', 'el_referer', 'Referer', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(24, 'eventlog', 'el_browser', 'Browser', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(25, 'fielddata', 'fielddataid', 'ID', 'int(11)', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID, automatically assigned by the system', 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(26, 'fielddata', 'fd_table', 'Table', 'varchar(255)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(27, 'fielddata', 'fd_field', 'Field', 'varchar(255)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, '', '', '', '', '', 0, '', 'yes', ''),
(28, 'fielddata', 'fd_name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 4, '', '', '', '', '', 0, '', 'yes', ''),
(29, 'fielddata', 'fd_sqltype', 'SQL Type', 'varchar(100)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 5, '', '', '', '', '', 0, '', 'yes', ''),
(30, 'fielddata', 'fd_type', 'Type', 'varchar(255)', 'fieldtype', '', 'no', 0, 'yes', 'text', '', '', '0', '0', '0', NULL, 'yes', 6, '', '', '', '', '', 0, '', 'yes', ''),
(31, 'fielddata', 'fd_options', 'Options', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '20', NULL, 'yes', 7, '', '', '', '', '', 0, '', 'yes', ''),
(32, 'fielddata', 'fd_required', 'Required', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 9, '', '', '', '', '', 0, '', 'yes', ''),
(33, 'fielddata', 'fd_readonly', 'Read Only', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 9, '', '', '', '', '', 0, '', 'yes', ''),
(34, 'fielddata', 'fd_showlabel', 'Show Label', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 4, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(35, 'fielddata', 'fd_default', 'Default', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', NULL, 'yes', 10, '', '', '', '', '', 0, '', 'yes', ''),
(36, 'fielddata', 'fd_maxvalue', 'Maximum value', 'varchar(20)', 'text', '', 'no', 0, 'yes', '', '', '', '10', '0', '0', NULL, 'yes', 2, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(37, 'fielddata', 'fd_minvalue', 'Minimum value', 'varchar(20)', 'text', '', 'no', 0, 'yes', '', '', '', '10', '0', '0', NULL, 'yes', 3, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(38, 'fielddata', 'fd_size', 'Size', 'varchar(20)', 'integer', '', 'no', 0, 'yes', '0', '', '', '5', '0', '0', NULL, 'yes', 11, '', '', '', '', '', 0, '', 'yes', ''),
(39, 'fielddata', 'fd_rows', 'Rows', 'varchar(20)', 'integer', '', 'no', 0, 'yes', '0', '', '', '5', '0', '0', NULL, 'yes', 12, '', '', '', '', '', 0, '', 'yes', ''),
(40, 'fielddata', 'fd_cols', 'Columns', 'varchar(20)', 'integer', '', 'no', 0, 'yes', '0', '', '', '5', '0', '0', NULL, 'yes', 13, '', '', '', '', '', 0, '', 'yes', ''),
(41, 'fielddata', 'fd_help', 'Help Info', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '5', '40', NULL, 'yes', 17, '', '', '', '', '', 0, '', 'yes', ''),
(42, 'fielddata', 'fd_nulls', 'Nulls', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 5, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(43, 'fielddata', 'fd_order', 'Order', 'int(11)', 'order', '', 'no', 0, 'yes', '0', '', '', '5', '0', '0', NULL, 'yes', 14, '', '', '', '', '', 0, '', 'yes', ''),
(44, 'fielddata', 'fd_tabname', 'Tab Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 8, '', '', '', '', '', 0, '', 'yes', ''),
(45, 'fielddata', 'fd_m2m_linktable', 'Link Table', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 1, 'Many-to-many', '', '', '', '', 0, '', 'yes', ''),
(46, 'fielddata', 'fd_m2m_linkitemid', 'Link Item Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 2, 'Many-to-many', '', '', '', '', 0, '', 'yes', ''),
(47, 'fielddata', 'fd_m2m_linkcatid', 'Link Category Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 3, 'Many-to-many', '', '', '', '', 0, '', 'yes', ''),
(48, 'fielddata', 'fd_m2m_cattable', 'Link Category Table', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 4, 'Many-to-many', '', '', '', '', 0, '', 'yes', ''),
(49, 'fielddata', 'fd_maxsize', 'Max Size', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '5', '0', '0', NULL, 'yes', 1, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(50, 'fielddata', 'fd_units', 'Units', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 15, '', '', '', '', '', 0, '', 'yes', ''),
(51, 'fielddata', 'fd_autoupdate', 'Auto Update', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 6, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(52, 'fielddata', 'fd_flags', 'Flags', 'text', 'text', '', 'no', 0, 'yes', '', '', '', '50', '0', '0', NULL, 'yes', 16, '', '', '', '', '', 0, '', 'yes', ''),
(53, 'fielddata_flags', 'flag', 'Flag', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(54, 'fielddata_flags', 'name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(55, 'fielddata_flags', 'description', 'Description', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(56, 'form', 'form_id', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, 'Details', '', '', '', '', 0, '', 'yes', ''),
(57, 'form', 'form_name', 'Form Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '60', '0', '0', 'The name of the form.', 'yes', 1, 'Details', '', '', '', '', 0, '', 'yes', ''),
(58, 'form', 'form_subject', 'Form Subject', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'The subject line to use in emails.', 'yes', 1, 'Response', '', '', '', '', 0, '', 'yes', ''),
(59, 'form', 'form_page_id', 'Form Page', 'int(11)', 'dbpluginpagelist', 'jojo_plugin_jojo_contact', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'The page the form should be displayed on.', 'yes', 2, 'Details', '', '', '', '', 0, '', 'yes', ''),
(60, 'form', 'form_captcha', 'Contact CAPTCHA', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'A CAPTCHA image helps prevent contact form spam, which is becoming more and more common.', 'yes', 9, 'Details', '', '', '', '', 0, '', 'yes', ''),
(61, 'form', 'form_fieldsets', 'Show Fieldset Names', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'Display Fieldset names (if used)', 'yes', 10, 'Details', '', '', '', '', 0, '', 'yes', ''),
(62, 'form', 'form_submit', 'Submit Button', 'varchar(255)', 'text', '', 'no', 0, 'yes', 'Submit', '', '', '30', '0', '0', 'The text to use on the submit button.', 'yes', 11, 'Details', '', '', '', '', 0, '', 'yes', ''),
(63, 'form', 'form_submit_label', 'Put submit button label padding in?', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'Do you want a label element put before the submit button? Pick no if you are using placeholder instead of labels for your fields.', 'yes', 12, 'Details', '', '', '', '', 0, '', 'yes', ''),
(64, 'form', 'form_tracking_code_analytics', 'Google Analytics Goal Settings: Virtual page name for contact thankyou page', 'text', 'text', 'formfield', 'no', 0, 'yes', '/contact-via-contact-form', '', '', '60', '0', '0', 'Since both the contact and thankyou page have the same url, give the thankyou page a virtual page name. Use as "Goal URL". Set-up "Define Funnel" as /contact/ to track  % of people that view your contact page to the number that send a contact.', 'yes', 4, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(65, 'form', 'form_tracking_code', 'Contact conversion tracking code', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '58', 'HTML code for conversion tracking enquiries via the contact form. Eg Google Adwords.', 'yes', 6, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(66, 'form', 'form_success_message', 'Success message', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '57', 'Customize the message that is displayed to the user after a successful contact form submission. Default message is *Your message was sent successfully.*', 'yes', 0, 'Response', '', '', '', '', 0, '', 'yes', ''),
(67, 'form', 'form_webmaster_copy', 'Send contact emails to webmaster', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'If this option is set, the webmaster will receive a copy of all enquiries from the contact form.', 'yes', 0, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(68, 'form', 'form_to', 'Destination Email', 'varchar(255)', 'email', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'What email address should this form be sent to', 'yes', 3, 'Details', '', '', '', '', 0, '', 'yes', ''),
(69, 'form', 'form_send', 'Send', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'Send the form on submit (or just store it in the database)?', 'yes', 8, 'Details', '', '', '', '', 0, '', 'yes', ''),
(70, 'form', 'form_choice', 'or Provide a choice of destinations', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'If yes this will give the contact form a drop down box so the user can choose who the enquiry goes to. This will not work if the Choice List if left blank.', 'yes', 4, 'Details', '', '', '', '', 0, '', 'yes', ''),
(71, 'form', 'form_choice_list', 'Choice List of who enquiry can go to', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '58', 'List the people and email addresses of who can be contacted. Enter the name of person then , email address , then next person etc. For Example: Marketing Manager,marketing@domain.com\nSales Manager,sales@domain.com\nCustomer Support,support@domain.com', 'yes', 5, 'Details', '', '', '', '', 0, '', 'yes', ''),
(72, 'form', 'form_choice_multiple', 'Choice List as Multiple', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Show Choice List as a multiple select list box rather than a single choice dropdown', 'yes', 6, 'Details', '', '', '', '', 0, '', 'yes', ''),
(73, 'form', 'form_choice_cc', 'CC Destination for Multiple ', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Copy email to Destination Email as well as sending to the chosen multiple', 'yes', 7, 'Details', '', '', '', '', 0, '', 'yes', ''),
(74, 'form', 'form_autoreply', 'Send confirmation email', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'If this option is set, the enquirer will recieve a confirmation email.', 'yes', 2, 'Response', '', '', '', '', 0, '', 'yes', ''),
(75, 'form', 'form_autoreply_body', 'Autoreply Content', 'text', 'texteditor', 'form_autoreply_bodycode', 'no', 0, 'yes', '', '', '', '0', '10', '50', 'The text for the autoreply email.', 'yes', 3, 'Response', '', '', '', '', 0, '', 'yes', ''),
(76, 'form', 'form_autoreply_bodycode', 'Body', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, 'Response', '', '', '', '', 0, '', 'yes', ''),
(77, 'form', 'form_action_url', 'Submit form to', 'varchar(255)', 'text', 'formfield', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Url that the form will be submitted to. Defaults to self or ''submit-form/'' for filtered forms.', 'yes', 7, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(78, 'form', 'form_redirect_url', 'Redirect here after processing', 'varchar(255)', 'text', 'formfield', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Url that will be redirected to after processing. Defaults to self or referring url for filtered forms.', 'yes', 8, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(79, 'form', 'form_hideonsuccess', 'Hide form on submit', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'If yes this will hide the form after submit and just display the success message.', 'yes', 1, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(80, 'form', 'form_thank_you_uri', 'Thank you page URI', 'varchar(255)', 'internalurl', '', 'no', 0, 'yes', '', '', '', '', '0', '0', 'If entered, the visitor will be redirected to this URI after a successful form submission.', 'yes', 5, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(81, 'form', 'form_multipage', 'Display fieldsets as multiple pages with nav', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'If yes, the form will use js to hide all but the first fieldset and add navigation to show the rest.', 'yes', 9, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(82, 'form', 'form_submit_end', 'Show submit button with final page', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'If yes this only show the submit button when the final page is viewable (only applies to on non-multipage forms).', 'yes', 10, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(83, 'form', 'form_horizontal', 'Horizontal-style form', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Display label / field groups horizontally (rather than stacked). Requires Bootstrap forms option to be enabled', 'yes', 3, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(84, 'form', 'form_uploadfolder', 'Upload folder', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Put files uploaded from the form in a folder called this (will use the form ID if left blank)', 'yes', 11, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(85, 'form', 'form_class', 'Form Class', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'A CSS class for this form (so forms or groups of forms can be styled independently)', 'yes', 2, 'Xtras', '', '', '', '', 0, '', 'yes', ''),
(86, 'formfield', 'formfield_id', 'Formfield_id', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(87, 'formfield', 'ff_form_id', 'Form', 'int(11)', 'dblist', 'form', 'yes', 0, 'yes', '', '', '', '60', '0', '0', 'The form this formfield belongs to.', 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(88, 'formfield', 'ff_fieldset', 'Fieldset', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'The field group this field belongs to. Leave blank unless beginning a new group.', 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(89, 'formfield', 'ff_fieldname', 'FormField Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'The formname of the formfield - use generic names where possible like ''firstname'',''email'' for users autocomplete to work.', 'yes', 4, '', '', '', '', '', 0, '', 'yes', ''),
(90, 'formfield', 'ff_display', 'Display Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '60', '0', '0', 'The display name of the formfield.', 'yes', 3, '', '', '', '', '', 0, '', 'yes', ''),
(91, 'formfield', 'ff_placeholder', 'Placeholder Text', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Placeholder/hint text eg ''John Smith'' - only displayed by some browsers, and possibly of questionable UI value, but there if you want it', 'yes', 5, '', '', '', '', '', 0, '', 'yes', ''),
(92, 'formfield', 'ff_required', 'Required', 'tinyint(1)', 'yesno', '', 'yes', 0, 'yes', '1', '', '', '0', '0', '0', 'Is this a required field?', 'yes', 7, '', '', '', '', '', 0, '', 'yes', ''),
(93, 'formfield', 'ff_validation', 'Validation', 'enum(''email'',''url'',''text'',''number'',''date'')', 'list', 'email:Email\nurl:Url\ntext:Text\nnumber:Integer\ndate:Date', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'The type of validation to be used - options are ''email'', ''url'', ''text'', ''integer'' or leave blank for no validation.', 'yes', 8, '', '', '', '', '', 0, '', 'yes', ''),
(94, 'formfield', 'ff_type', 'Type', 'enum(''text'',''textarea'',''checkboxes'',''radio'',''select'',''list'',''date'',''emailwithconfirmation'',''hidden'',', 'list', 'text:Text\ntextarea:Textarea\ncheckboxes:Checkboxes\nradio:Radio Buttons\nselect:Select Box\nlist:List Box\ndate:Date\nemailwithconfirmation:Email With Confirmation\nhidden:Hidden\nheading:Heading\nnote:Note\nupload:File Upload\nprivateupload:Private File Upload\nattachment:Attachment', 'yes', 0, 'yes', '', '', '', '60', '0', '0', 'The type of input - use text (single line), textarea (multiple lines), checkboxes (multiple selections), radio buttons (single selection), select (drop down menu), list (multiple selects), emailwithconfirmation is an email field with a confirmation field below it, heading or note.', 'yes', 9, '', '', '', '', '', 0, '', 'yes', ''),
(95, 'formfield', 'ff_size', 'Size', 'int(11)', 'integer', '', 'no', 0, 'yes', '30', '', '', '0', '0', '0', 'Used for ''text'' type fields - the size of the input.', 'yes', 14, '', '', '', '', '', 0, '', 'yes', ''),
(96, 'formfield', 'ff_prependvalue', 'Prepend Value', 'text', 'text', '', 'no', 0, 'yes', '', '', '', '10', '0', '0', 'Display in front of the value - eg $', 'yes', 11, '', '', '', '', '', 0, '', 'yes', ''),
(97, 'formfield', 'ff_value', 'Default Value', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '2', '58', 'A default value if any.', 'yes', 12, '', '', '', '', '', 0, '', 'yes', ''),
(98, 'formfield', 'ff_appendvalue', 'Append Value', 'text', 'text', '', 'no', 0, 'yes', '', '', '', '10', '0', '0', 'Display after the value - eg cm', 'yes', 13, '', '', '', '', '', 0, '', 'yes', ''),
(99, 'formfield', 'ff_options', 'Options', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '58', 'An array of options separated by new lines. Required for ''checkboxes'' and ''select'' types.', 'yes', 10, '', '', '', '', '', 0, '', 'yes', ''),
(100, 'formfield', 'ff_rows', 'Rows (Textarea)', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Number of rows - only needed for textareas.', 'yes', 15, '', '', '', '', '', 0, '', 'yes', ''),
(101, 'formfield', 'ff_cols', 'Columns  (Textarea)', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Number of columns - only needed for textareas.', 'yes', 16, '', '', '', '', '', 0, '', 'yes', ''),
(102, 'formfield', 'ff_description', 'Description', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '58', 'A short description to be shown below the field, to explain the field to the user.', 'yes', 6, '', '', '', '', '', 0, '', 'yes', ''),
(103, 'formfield', 'ff_class', 'CSS Class', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'A style class for the form element (if needed).', 'yes', 18, '', '', '', '', '', 0, '', 'yes', ''),
(104, 'formfield', 'ff_displayonly', 'Display online only', 'tinyint(1)', 'yesno', '', 'yes', 0, 'yes', '0', '', '', '0', '0', '0', 'Show online but don''t add to email printouts', 'yes', 21, '', '', '', '', '', 0, '', 'yes', ''),
(105, 'formfield', 'ff_is_email', 'Is E-Mail field?', 'tinyint(1)', 'yesno', '', 'yes', 0, 'yes', '0', '', '', '0', '0', '0', 'Is this field the e-mail address that should be used as the senders e-mail address?', 'yes', 20, '', '', '', '', '', 0, '', 'yes', ''),
(106, 'formfield', 'ff_is_name', 'Is part of the name?', 'tinyint(1)', 'yesno', '', 'yes', 0, 'yes', '0', '', '', '0', '0', '0', 'Is this field part of the name that should be used as the senders name?', 'yes', 19, '', '', '', '', '', 0, '', 'yes', ''),
(107, 'formfield', 'ff_showlabel', 'Show Label?', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'Show the label name for this field (or just the input)', 'yes', 22, '', '', '', '', '', 0, '', 'yes', ''),
(108, 'formfield', 'ff_padlabel', 'Pad (empty) Label?', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Pad the label space for this field (if it''s set to not show)', 'yes', 23, '', '', '', '', '', 0, '', 'yes', ''),
(109, 'formfield', 'ff_order', 'Order', 'int(11)', 'order', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'The order in which the formfields should be displayed in the form. Lower numbers are displayed before higher numbers', 'yes', 17, '', '', '', '', '', 0, '', 'yes', ''),
(110, 'formsubmission', 'formsubmissionid', 'Formsubmissionid', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(111, 'formsubmission', 'form_id', 'Form_id', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(112, 'formsubmission', 'submitted', 'Submitted', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(113, 'formsubmission', 'success', 'Success', 'tinyint(1)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(114, 'formsubmission', 'to_name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(115, 'formsubmission', 'to_email', 'Email', 'varchar(255)', 'email', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(116, 'formsubmission', 'subject', 'Subject', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(117, 'formsubmission', 'from_name', 'From_name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(118, 'formsubmission', 'from_email', 'From_email', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(119, 'formsubmission', 'content', 'Content', 'mediumtext', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(120, 'lang_country', 'lc_id', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID for this section - automatically assigned by the system', 'yes', 1, 'Content', '', '', '', '', 0, '', 'yes', ''),
(121, 'lang_country', 'lc_code', 'Short Code', 'varchar(10)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The url code for this section (eg: en, fr, ca, nz )', 'yes', 2, 'Content', '', '', '', '', 0, '', 'yes', ''),
(122, 'lang_country', 'lc_name', 'Local Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The localised name for this section (used for display)', 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(123, 'lang_country', 'lc_englishname', 'English Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The name of the section in English', 'yes', 5, 'Content', '', '', '', '', 0, '', 'yes', ''),
(124, 'lang_country', 'lc_root', 'Root Page', 'int(11)', 'dblist', 'page', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'The root page for this section, this is normally the parent of the home page', 'yes', 7, 'Content', '', '', '', '', 0, '', 'yes', ''),
(125, 'lang_country', 'lc_home', 'Home Page', 'int(11)', 'dblist', 'page', 'no', 0, 'yes', '1', '', '', '0', '0', '0', 'The home page for this section', 'yes', 6, 'Content', '', '', '', '', 0, '', 'yes', ''),
(126, 'lang_country', 'lc_longcode', 'Long Code', 'varchar(50)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Optional long url code for this section', 'yes', 3, 'Content', '', '', '', '', 0, '', 'yes', ''),
(127, 'lang_country', 'lc_defaultlang', 'Default Language', 'varchar(10)', 'dblist', 'language', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The default language to use for this section', 'yes', 9, 'Content', '', '', '', '', 0, '', 'yes', ''),
(128, 'lang_country', 'displayorder', 'Display Order', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Order in which this section appears in the listing', 'yes', 8, 'Content', '', '', '', '', 0, '', 'yes', ''),
(129, 'lang_country', 'default', 'Default', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Is this the default section for the whole site? THERE CAN BE ONLY ONE', 'yes', 12, 'Content', '', '', '', '', 0, '', 'yes', ''),
(130, 'lang_country', 'active', 'Active', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Is this section active and in use?', 'yes', 12, 'Content', '', '', '', '', 0, '', 'yes', ''),
(131, 'language', 'languagetableid', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID for this langauge - automatically assigned by the system', 'yes', 2, 'Content', '', '', '', '', 0, '', 'yes', ''),
(132, 'language', 'languageid', 'Short Code', 'varchar(10)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The two letter code for this language', 'yes', 3, 'Content', '', '', '', '', 0, '', 'yes', ''),
(133, 'language', 'name', 'Local Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The localised name for this langauge', 'yes', 5, 'Content', '', '', '', '', 0, '', 'yes', ''),
(134, 'language', 'english_name', 'English Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The name of the language in English', 'yes', 6, 'Content', '', '', '', '', 0, '', 'yes', ''),
(135, 'language', 'displayorder', 'Display Order', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Order in which the language appears in the listing', 'yes', 7, 'Content', '', '', '', '', 0, '', 'yes', ''),
(136, 'language', 'charset', 'Character Set', 'varchar(15)', 'text', '', 'no', 0, 'yes', 'utf-8', '', '', '0', '0', '0', NULL, 'yes', 8, 'Content', '', '', '', '', 0, '', 'yes', ''),
(137, 'language', 'ISOcode', 'ISO language code', 'varchar(15)', 'text', '', 'no', 0, 'yes', 'en_US', '', '', '0', '0', '0', NULL, 'yes', 9, 'Content', '', '', '', '', 0, '', 'yes', ''),
(138, 'language', 'direction', 'Text Direction', 'varchar(3)', 'radio', 'ltr:Left To Right\nrtl:Right to Left', 'no', 0, 'yes', 'ltr', '', '', '0', '0', '0', 'Text Direction', 'yes', 10, 'Content', '', '', '', '', 0, '', 'yes', ''),
(139, 'language', 'longcode', 'Long Code', 'varchar(50)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Optional long code for this language', 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(140, 'language', 'active', 'Active', 'tinyint(1)', 'yesno', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Is this language active and in use?', 'yes', 12, 'Content', '', '', '', '', 0, '', 'yes', ''),
(141, 'option', 'op_name', 'Name', 'varchar(50)', 'text', '', 'yes', 0, 'yes', '', '', '', '40', '0', '0', NULL, 'yes', 8, '', '', '', '', '', 0, '', 'yes', ''),
(142, 'option', 'op_value', 'Value', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '4', '30', NULL, 'yes', 9, '', '', '', '', '', 0, '', 'yes', ''),
(143, 'option', 'op_category', 'Category', 'varchar(50)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(144, 'option', 'op_type', 'Type', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(145, 'option', 'op_options', 'Options', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, '', '', '', '', '', 0, '', 'yes', ''),
(146, 'option', 'op_default', 'Default', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, '', '', '', '', '', 0, '', 'yes', ''),
(147, 'option', 'op_plugin', 'Plugin', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 5, '', '', '', '', '', 0, '', 'yes', ''),
(148, 'option', 'op_description', 'Description', 'text', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, '', '', '', '', '', 0, '', 'yes', ''),
(149, 'option', 'op_displayname', 'Displayname', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 7, '', '', '', '', '', 0, '', 'yes', ''),
(150, 'page', 'pageid', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID for this page - automatically assigned by the system', 'yes', 1, 'Content', '', '', '', '', 0, '', 'yes', ''),
(151, 'page', 'pg_title', 'Page Heading', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '60', '0', '0', 'The heading is an important page element. As well as being the page H1 heading, it will become the default title, button text and URL if other fields are not specified.', 'yes', 2, 'Content', '', '', '', '', 0, '', 'yes', ''),
(152, 'page', 'pg_menutitle', 'Menu Title', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', 'If the page heading is too long to fit on the menu buttons, enter some shorter text here. If this field is left blank, the heading text will be used by default.', 'yes', 3, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(153, 'page', 'pg_desc', 'Button Rollover', 'varchar(255)', 'text', 'rollover', 'no', 0, 'yes', '', '', '', '50', '0', '0', 'A one-sentence description of the page content. This appears as a tooltip on the navigation, and is helpful to users (and maybe search engines too). It is recommended that this field is completed.', 'yes', 4, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(154, 'page', 'pg_seotitle', 'SEO Title', 'varchar(255)', 'text', 'seotitle', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Search Engine Optimised text for the title bar. Start with your preferred search phrase, and try to keep this within 70 characters', 'yes', 3, 'Content', '', '', '', '', 0, '', 'yes', ''),
(155, 'page', 'pg_url', 'Page URL', 'varchar(255)', 'internalurl', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', 'Set the URL for a page. Choose a URL that is logical and is unlikely to change. If this does change for any reason, be sure to setup a redirect to prevent losing traffic.', 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(156, 'page', 'pg_body_code', 'Body Content', 'text', 'texteditor', 'pg_body', 'no', 0, 'yes', '', '', '', '0', '10', '50', 'The page body content in BBCode format. If you prefer to use the WYSIWYG editor, be sure to leave this field blank.', 'yes', 5, 'Content', '', '', '', '', 0, '', 'yes', ''),
(157, 'page', 'pg_body', 'Body Content', 'text', 'hidden', '', 'no', 0, 'no', '', '', '', '0', '0', '0', NULL, 'yes', 6, 'Content', '', '', '', '', 0, '', 'yes', ''),
(158, 'page', 'pg_head', 'Head content', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '6', '60', 'Any HEAD elements to include in the page, such as Javascript and CSS. For sitewide additions, use a .js or .css file instead.', 'yes', 3, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(159, 'page', 'pg_link', 'Plugin Link', 'varchar(255)', 'plugin', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'If the page is controlled by a PHP plugin, select the plugin/class here.', 'yes', 2, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(160, 'page', 'pg_order', 'Order', 'int(11)', 'order', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'The order in which the page appears on the menu. A lower number means the page will appear near the top of the list.', 'yes', 2, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(161, 'page', 'pg_parent', 'Parent Page', 'int(11)', 'dbpagelist', 'page', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'If this is a sub-item of another page, the parent field indicates where this page will sit on the menu. Top level pages (eg Home) do not need a parent.', 'yes', 1, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(162, 'page', 'pg_status', 'Page Status', 'enum(''active'',''inactive'',''hidden'')', 'radio', 'active:Active\ninactive:Inactive\nhidden:Hidden', 'no', 0, 'yes', 'active', '', '', '0', '0', '0', 'Inactive pages will not show on the menu or be available via direct navigation', 'yes', 3, 'Scheduling', '', '', '', '', 0, '', 'yes', ''),
(163, 'page', 'pg_ssl', 'SSL Secure', 'enum(''yes'',''no'')', 'radio', 'yes\nno', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', 'If a secure certificate is installed on the site, this option determines whether a page is served securely or not.', 'yes', 4, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(164, 'page', 'pg_index', 'Index', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Setting this option to NO will help prevent search engines from indexing this page by using a meta noindex tag and an entry in robots.txt - USE WITH CAUTION!', 'yes', 15, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(165, 'page', 'pg_followto', 'Follow to', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Prevent link juice from flowing to this page by nofollowing all navigation links to the page. Useful for low-search-value pages on the site such as privacy policy and terms pages.', 'yes', 16, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(166, 'page', 'pg_followfrom', 'Follow from', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Prevent spiders from following any links on this page by inserting a nofollow meta tag.', 'yes', 17, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(167, 'page', 'pg_metakeywords', 'META Keywords', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '3', '60', 'A space separated list of keywords / phrases to help search engines index the site. If you leave this field empty, meta keywords are generated automatically, which is the recommended behaviour.', 'yes', 10, 'Content', '', '', '', '', 0, '', 'yes', ''),
(168, 'page', 'pg_contentcache', 'Content Cache', 'enum(''yes'',''no'',''auto'')', 'radio', 'yes\nno\nauto', 'no', 0, 'yes', 'auto', '', '', '0', '0', '0', 'Caches content to improve performance, however pages that change often should not be cached.', 'yes', 5, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(169, 'page', 'pg_metadesc', 'Meta Description', 'text', 'textarea', 'metadescription', 'no', 0, 'yes', '', '', '', '0', '3', '60', 'A good sales oriented description of the page for the Search Engine snippet. Try to keep this within 155 characters, as anything larger will be chopped from the snippet.', 'yes', 9, 'Content', '', '', '', '', 0, '', 'yes', ''),
(170, 'page', 'pg_mainnav', 'Main Nav', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Will this page show on the main navigation?', 'yes', 5, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(171, 'page', 'pg_mainnavalways', 'Main Nav Intl', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', 'When Internationalisation (Multi Language) is on, show page on all menus.', 'yes', 6, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(172, 'page', 'pg_secondarynav', '2nd Nav', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', 'Will this page show on the secondary navigation?', 'yes', 7, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(173, 'page', 'pg_breadcrumbnav', 'Breadcrumbs', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Will this page show on the breadcrumb trail? (Not all sites have breadcrumb navigation)', 'yes', 8, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(174, 'page', 'pg_footernav', 'Footer Nav', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', 'Will this page show on the footer navigation?', 'yes', 9, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(175, 'page', 'pg_sitemapnav', 'Sitemap', 'enum(''yes'',''no'')', 'checkbox', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Will this page show on the visitor sitemap? (assuming this plugin is installed)', 'yes', 10, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(176, 'page', 'pg_xmlsitemapnav', 'XML Sitemap', 'enum(''yes'',''no'')', 'checkbox', 'yes:yes:pg_xmlsitemap_lastmod,pg_xmlsitemap_changefreq,pg_xmlsitemap_priority\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Will this page show on the XML sitemap?', 'yes', 11, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(177, 'page', 'pg_livedate', 'Go-Live Date', 'int(11)', 'unixdate', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'The page will not appear on the site until this date', 'yes', 1, 'Scheduling', '', '', '', '', 0, '', 'yes', ''),
(178, 'page', 'pg_expirydate', 'Expiry Date', 'int(11)', 'unixdate', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'The page will be removed from the site after this date', 'yes', 2, 'Scheduling', '', '', '', '', 0, '', 'yes', ''),
(179, 'page', 'pg_updated', 'Last Updated', 'timestamp', 'timestamp', '', 'no', 0, 'yes', 'CURRENT_TIMESTAMP', '', '', '0', '0', '0', NULL, 'yes', 1, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(180, 'page', 'pg_permissions', 'Permissions', 'text', 'permissions', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 18, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(181, 'page', 'pg_language', 'Language/Country', 'varchar(10)', 'hidden', 'lang_country', 'no', 0, 'yes', 'en', '', '', '0', '0', '0', 'The language/country this page is written for', 'yes', 7, 'Content', '', '', '', '', 0, '', 'yes', ''),
(182, 'page', 'pg_htmllang', 'HTML Language', 'varchar(10)', 'dblist', 'language', 'no', 0, 'yes', 'en', '', '', '0', '0', '0', 'The language this page is written in (if not the default language for the language/country chosen above', 'yes', 8, 'Content', '', '', '', '', 0, '', 'yes', ''),
(183, 'page', 'pg_xmlsitemap_lastmod', 'XML Sitemap show lastmod?', 'enum(''yes'',''no'')', 'radio', 'yes\nno', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'XML Sitemap - show the lastmod date of the page? Some pages may be generated by a plugin and have dynamic content. Best to not show date for these', 'yes', 12, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(184, 'page', 'pg_xmlsitemap_priority', 'XML Sitemap Priority', 'enum(''1.0'',''0.9'',''0.8'',''0.7'',''0.6'',''0.5'',''0.4'',''0.3'',''0.2'',''0.1'',''0.0'','''')', 'list', ':default\n1.0:1.0 highest priority\n0.9\n0.8\n0.7\n0.6\n0.5\n0.4\n0.3\n0.2\n0.1\n0.0:0.0 lowest priority', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'XML Sitemap priority of pages ranging 0.0 to 1.0', 'yes', 14, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(185, 'page', 'pg_xmlsitemap_changefreq', 'XML Sitemap ChangeFreq', 'enum('''',''always'',''hourly'',''daily'',''weekly'',''monthly'',''yearly'',''never'')', 'list', 'active:default\nalways\nhourly\ndaily\nweekly\nmonthly\nyearly\nnever', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'XML Sitemap - how often the content changes - don''t show field, or add the options', 'yes', 13, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(186, 'plugin', 'name', 'Name', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(187, 'plugin', 'majorversion', 'Majorversion', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(188, 'plugin', 'minorversion', 'Minorversion', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(189, 'plugin', 'revision', 'Revision', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(190, 'plugin', 'active', 'Active', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(191, 'plugin', 'priority', 'Priority', 'int(11)', 'integer', '', 'no', 0, 'yes', '99', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(192, 'sessiondata', 'session_id', 'Session_id', 'varchar(32)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(193, 'sessiondata', 'session_lastmodified', 'Session_lastmodified', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(194, 'sessiondata', 'session_data', 'Session_data', 'longblob', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(195, 'snippet', 'snippetid', 'Snippetid', 'int(11)', 'integer', '', 'no', 1, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(196, 'snippet', 'name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(197, 'snippet', 'snippet', 'Snippet', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, '', '', '', '', '', 0, '', 'yes', ''),
(198, 'snippet', 'snippet_code', 'Snippet', 'text', 'texteditor', 'snippet', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, '', '', '', '', '', 0, '', 'yes', ''),
(199, 'snippet', 'section', 'Section', 'varchar(100)', 'hidden', '', 'no', 0, 'yes', 'en', '', '', '0', '0', '0', NULL, 'yes', 5, '', '', '', '', '', 0, '', 'yes', ''),
(200, 'tabledata', 'tabledataid', 'ID', 'int(11)', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID, automatically assigned by the system', 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(201, 'tabledata', 'td_name', 'Database Table Name', 'varchar(255)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(202, 'tabledata', 'td_displayname', 'Display name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', 'The name of the table as you want it displayed to the user', 'yes', 3, '', '', '', '', '', 0, '', 'yes', ''),
(203, 'tabledata', 'td_primarykey', 'Primary key field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '20', '0', '0', 'Primary key of the table. Default is (TABLENAME)id', 'yes', 4, '', '', '', '', '', 0, '', 'yes', ''),
(204, 'tabledata', 'td_displayfield', 'Display field(s)', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The field to display in the record list eg name. Feel free to concatenate fields eg CONCAT(firstname, '' '', lastname)', 'yes', 5, '', '', '', '', '', 0, '', 'yes', ''),
(205, 'tabledata', 'td_parentfield', 'Parent Field', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The name of the parent column if this table references itself through a parent field. This is used to create a fully nested tree structure.', 'yes', 6, '', '', '', '', '', 0, '', 'yes', ''),
(206, 'tabledata', 'td_plugin', 'Table Plugin Name', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The classname of the main plugin that uses the table', 'yes', 18, '', '', '', '', '', 0, '', 'yes', ''),
(207, 'tabledata', 'td_categorytable', 'Category table', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', 'Enter the name of another database table the provides categories for rows in this table.', 'yes', 1, 'Categories', '', '', '', '', 0, '', 'yes', ''),
(208, 'tabledata', 'td_categoryfield', 'Category field', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', 'Enter the name of the column in this table that matches up with the Category Table.', 'yes', 2, 'Categories', '', '', '', '', 0, '', 'yes', ''),
(209, 'tabledata', 'td_m2mcategoryfield', 'M2M field', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', 'Enter the name of the column in this table that is the primary Many2Many field.', 'yes', 3, 'Categories', '', '', '', '', 0, '', 'yes', ''),
(210, 'tabledata', 'td_rolloverfield', 'Rollover field(s)', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The field to be used in a rollover of the record list tree', 'yes', 7, '', '', '', '', '', 0, '', 'yes', ''),
(211, 'tabledata', 'td_filter', 'Filter', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 1, 'Legacy Options', '', '', '', '', 0, '', 'yes', ''),
(212, 'tabledata', 'td_orderbyfields', 'Order by field(s)', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'SQL for ordering the record list eg name,date', 'yes', 8, '', '', '', '', '', 0, '', 'yes', ''),
(213, 'tabledata', 'td_deleteoption', 'Delete option', 'enum(''yes'',''no'')', 'checkbox', 'yes:Yes\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Displays a delete button in the user interface', 'yes', 9, '', '', '', '', '', 0, '', 'yes', ''),
(214, 'tabledata', 'td_addsimilar', 'Add similar option', 'enum(''yes'',''no'')', 'checkbox', 'yes:Yes\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Displays an add similar button in the user interface', 'yes', 10, '', '', '', '', '', 0, '', 'yes', ''),
(215, 'tabledata', 'td_menutype', 'Menu type', 'varchar(255)', 'list', 'tree:Tree\nsearchabletree:Searchable Tree\nlist:List\n', 'no', 0, 'yes', 'tree', '', '', '0', '0', '0', 'The type of list to use in the user interface', 'yes', 11, '', '', '', '', '', 0, '', 'yes', ''),
(216, 'tabledata', 'td_group1', 'Group 1 field', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', 'A column name to group results by. This is used to create 1 level tree like structure using only one table.', 'yes', 1, 'Grouping', '', '', '', '', 0, '', 'yes', ''),
(217, 'tabledata', 'td_help', 'Description', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '10', '40', NULL, 'yes', 12, '', '', '', '', '', 0, '', 'yes', '');
INSERT INTO `fielddata` (`fielddataid`, `fd_table`, `fd_field`, `fd_name`, `fd_sqltype`, `fd_type`, `fd_options`, `fd_required`, `fd_readonly`, `fd_showlabel`, `fd_default`, `fd_maxvalue`, `fd_minvalue`, `fd_size`, `fd_rows`, `fd_cols`, `fd_help`, `fd_nulls`, `fd_order`, `fd_tabname`, `fd_m2m_linktable`, `fd_m2m_linkitemid`, `fd_m2m_linkcatid`, `fd_m2m_cattable`, `fd_maxsize`, `fd_units`, `fd_autoupdate`, `fd_flags`) VALUES
(218, 'tabledata', 'td_group2', 'Group 2 field', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', 'A second column name to group results by. This is used along with "Group 1 field" to create 2 level tree like structure using only one table.', 'yes', 2, 'Grouping', '', '', '', '', 0, '', 'yes', ''),
(219, 'tabledata', 'td_filterby', 'Filterby', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', NULL, 'yes', 2, 'Legacy Options', '', '', '', '', 0, '', 'yes', ''),
(220, 'tabledata', 'td_groupowner', 'Groupowner', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, 'Table Permissions', '', '', '', '', 0, '', 'yes', ''),
(221, 'tabledata', 'td_userowner', 'Userowner', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '30', '0', '0', NULL, 'yes', 3, 'Table Permissions', '', '', '', '', 0, '', 'yes', ''),
(222, 'tabledata', 'td_golivefield', 'Go Live Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The name of the UnixDate field that indicates the go live date of this content (optional)', 'yes', 13, '', '', '', '', '', 0, '', 'yes', ''),
(223, 'tabledata', 'td_expiryfield', 'Expiry Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The name of the UnixDate field that indicates the expiry date of this content (optional)', 'yes', 14, '', '', '', '', '', 0, '', 'yes', ''),
(224, 'tabledata', 'td_activefield', 'Active Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', NULL, 'yes', 15, '', '', '', '', '', 0, '', 'yes', ''),
(225, 'tabledata', 'td_privacyfield', 'Privacy Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The name of the TEXT field that contains privacy data for this record (optional)', 'yes', 16, '', '', '', '', '', 0, '', 'yes', ''),
(226, 'tabledata', 'td_languagefield', 'Language Field', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', 'The name of the TEXT field that contains language data for this record (optional)', 'yes', 16, '', '', '', '', '', 0, '', 'yes', ''),
(227, 'tabledata', 'td_autoupdate', 'Auto Update', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', 'Should this table''s option be automatically updated from autoupdate_tablename files when setup is run?', 'yes', 17, '', '', '', '', '', 0, '', 'yes', ''),
(228, 'tabledata', 'td_defaultpermissions', 'Defaultpermissions', 'text', 'tablepermissions', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, 'Table Permissions', '', '', '', '', 0, '', 'yes', ''),
(229, 'theme', 'name', 'Name', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(230, 'theme', 'majorversion', 'Majorversion', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(231, 'theme', 'minorversion', 'Minorversion', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(232, 'theme', 'revision', 'Revision', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(233, 'theme', 'active', 'Active', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(234, 'user', 'userid', 'Userid', 'int(11)', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID, automatically assigned by the system', 'yes', 1, 'Base', '', '', '', '', 0, '', 'yes', ''),
(235, 'user', 'us_login', 'Login', 'varchar(100)', 'text', '', 'yes', 0, 'yes', '', '', '', '20', '0', '0', 'Username for logging into the system', 'yes', 2, 'Base', '', '', '', '', 0, '', 'yes', 'REGISTER'),
(236, 'user', 'us_password', 'Password', 'varchar(255)', 'password', 'us_salt', 'yes', 0, 'yes', '', '', '', '30', '0', '0', 'Password must be at least 8 characters and contain at least 1 number', 'yes', 6, 'Base', '', '', '', '', 0, '', 'yes', 'REGISTER'),
(237, 'user', 'us_salt', 'Salt', 'varchar(16)', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 9, 'Base', '', '', '', '', 0, '', 'yes', ''),
(238, 'user', 'us_lastfailure', 'Lastfailure', 'datetime', 'hidden', '', 'no', 0, 'yes', '0000-00-00 00:00:00', '', '', '0', '0', '0', NULL, 'yes', 10, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(239, 'user', 'us_failures', 'Failures', 'int(11)', 'hidden', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 12, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(240, 'user', 'us_locked', 'Locked', 'int(11)', 'radio', '1:Yes\n0:No', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 13, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(241, 'user', 'us_firstname', 'First Name', 'varchar(100)', 'text', '', 'yes', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 3, 'Base', '', '', '', '', 0, '', 'yes', 'REGISTER,PROFILE,PRIVACY'),
(242, 'user', 'us_lastname', 'Last Name', 'varchar(100)', 'text', '', 'yes', 0, 'yes', '', '', '', '20', '0', '0', NULL, 'yes', 4, 'Base', '', '', '', '', 0, '', 'yes', 'REGISTER,PROFILE,PRIVACY'),
(243, 'user', 'us_email', 'Email', 'varchar(100)', 'email', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 5, 'Base', '', '', '', '', 0, '', 'yes', 'REGISTER,PROFILE,PRIVACY,PRIVATE'),
(244, 'user', 'us_reminder', 'Password Reminder', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '40', '0', '0', NULL, 'yes', 7, 'Base', '', '', '', '', 0, '', 'yes', ''),
(245, 'user', 'us_reset', 'Reset', 'varchar(255)', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 14, 'Technical', '', '', '', '', 0, '', 'yes', ''),
(246, 'user', 'us_timezone', 'Timezone', 'int(11)', 'integer', '', 'no', 0, 'yes', '12', '', '', '5', '0', '0', 'The timezone offset for this user (NZ is 12)', 'yes', 8, 'Base', '', '', '', '', 0, 'GMT offset', 'yes', ''),
(247, 'user', 'us_groups', 'Groups', 'varchar(255)', 'many2many', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 11, 'Base', 'usergroup_membership', 'userid', 'groupid', 'usergroups', 0, '', 'yes', ''),
(248, 'usergroup_membership', 'userid', 'Userid', 'int(11)', 'integer', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(249, 'usergroup_membership', 'groupid', 'Groupid', 'varchar(20)', 'text', '', 'no', 0, 'yes', '0', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(250, 'usergroups', 'groupid', 'Groupid', 'varchar(20)', 'text', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'Lowercase, all one word', 'yes', 1, '', '', '', '', '', 0, '', 'yes', ''),
(251, 'usergroups', 'gr_name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '30', '0', '0', 'A friendly name for the group - keep short and meaningful.', 'yes', 2, '', '', '', '', '', 0, '', 'yes', ''),
(252, 'page', 'pg_css', 'CSS Classes', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'Any classes entered here will be added to the BODY tag of the page. (Classes seperated by space)', 'yes', 6, 'Content', '', '', '', '', 255, '', 'yes', ''),
(1195, 'jojo_slideshow', 'slideshowid', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID, automatically assigned by the system', 'yes', 1, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1196, 'jojo_slideshow', 'name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '30', '0', '0', 'A unique name for the slideshow - no spaces or special characters', 'yes', 2, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1197, 'jojo_slideshow', 'width', 'Width', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Width in pixels for the slideshow', 'yes', 3, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1198, 'jojo_slideshow', 'height', 'Height', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Height in pixels for the slideshow', 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1199, 'jojo_slideshow', 'delay', 'Delay', 'varchar(10)', 'list', '0:default\n500:0.5 seconds\n1000:1 second\n1500:1.5 seconds\n2000:2 seconds\n3000:3 seconds\n4000:4 seconds\n5000:5 seconds\n6000:6 seconds\n7000:7 seconds\n8000:8 seconds\n9000:9 seconds\n10000:10 seconds\n15000:15 seconds\n20000:20 seconds\n30000:30 seconds\n60000:60 seconds', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The length of the pause between each image change', 'yes', 5, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1200, 'jojo_slideshow', 'fadespeed', 'Fade speed', 'varchar(10)', 'list', '0:default\n100:1/10 second\n250:1/4 second\n500:1/2 second\n1000:1 second\n1500:1.5 seconds\n2000:2 seconds', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The speed of the fade between images', 'yes', 6, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1201, 'jojo_slideshowimage', 'slideshowimageid', 'ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'A unique ID, automatically assigned by the system', 'yes', 1, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1202, 'jojo_slideshowimage', 'name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '30', '0', '0', 'A short name describing this image', 'yes', 2, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1203, 'jojo_slideshowimage', 'image', 'Image', 'varchar(255)', 'fileupload', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1204, 'jojo_slideshowimage', 'title', 'Title', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', 'An optional title or caption for the image', 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1205, 'jojo_slideshowimage', 'slideshowid', 'Slideshow', 'int(11)', 'dblist', 'jojo_slideshow', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'The slideshow this image will be used in', 'yes', 5, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1206, 'jojo_slideshowimage', 'displayorder', 'Order', 'int(11)', 'order', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1207, 'jojo_slideshowimage', 'url', 'URL', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'This field is currently disabled', 'yes', 7, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1208, 'page', 'pg_h1', 'Show H1 tag?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 4, 'Content', '', '', '', '', 0, '', 'yes', ''),
(1267, 'page', 'pg_t1_navigation_image', 'Menu Image', 'varchar(255)', 'fileupload', 't1_navigation', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Upload an Image to use in the Navigation menu', 'yes', 3, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(1268, 'page', 'pg_t1_navigation_hover', 'Menu Hover Image', 'varchar(255)', 'fileupload', 't1_navigation', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Upload an Hover Image to use in the Navigation menu', 'yes', 3, 'Navigation', '', '', '', '', 0, '', 'yes', ''),
(1328, 'page', 'pg_t1_sidebar_left', 'Left Sidebar', 'int(11)', 'dblist', 't1_sidebar', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Choose the Sidebar you want to display on the Left', 'yes', 1, 'Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1329, 'page', 'pg_t1_sidebar_right', 'Right Sidebar', 'int(11)', 'dblist', 't1_sidebar', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Choose the Sidebar you want to display on the Right', 'yes', 2, 'Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1330, 't1_sidebar', 'sidebar_ID', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1331, 't1_sidebar', 'sb_name', 'Embed Code', 'varchar(32)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Code to use for embeding this sidebar', 'yes', 3, ' Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1332, 't1_sidebar', 'sb_title', 'Display Name', 'varchar(32)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Name of Sidebar', 'yes', 2, ' Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1333, 't1_sidebar_linking', 'link_ID', 'Link ID', 'int(11)', 'int(11) NOT NULL', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Links', '', '', '', '', 0, '', 'yes', ''),
(1334, 't1_sidebar_linking', 'link_widget_ID', 'Link Widget ID', 'int(11)', 'int(11) NOT NULL', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, ' Links', '', '', '', '', 0, '', 'yes', ''),
(1335, 't1_sidebar_linking', 'link_sidebar_ID', 'Link Sidebar ID', 'int(11)', 'int(11) NOT NULL', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, ' Links', '', '', '', '', 0, '', 'yes', ''),
(1336, 't1_sidebar_widget', 'widget_ID', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1337, 't1_sidebar_widget', 'sidebarid', 'Sidebar', 'int(11)', 'dblist', 't1_sidebar', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'Choose the Sidebar you want to display this Widget in', 'yes', 2, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1338, 't1_sidebar_widget', 'wg_name', 'Title', 'varchar(32)', 'text', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'Title of Widget', 'yes', 3, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1339, 't1_sidebar_widget', 'wg_type', 'Type', 'enum(''editor'',''subpages'',''siblingpages'',''slideshow'',''snippet'',''gallery'',''articles'',''products'')', 'radio', 'editor:Editor\r\nsubpages:Subpages\r\nsiblingpages:Siblingpages\r\nslideshow:Slideshow\r\nsnippet:Snippet\r\ngallery:Gallery\r\narticles:Articles\r\nproducts:Products', 'yes', 0, 'yes', 'editor', '', '', '0', '0', '0', 'Type of Widget', 'yes', 4, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1582, 't1_sidebar_widget', 'wg_class', 'CSS Class', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'CSS Class Names', 'yes', 5, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1583, 't1_sidebar_widget', 'wg_order', 'Order', 'int(11)', 'order', '', 'yes', 0, 'yes', '0', '', '', '0', '0', '0', 'Order to Display Widget within Sidebar', 'yes', 6, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1584, 't1_sidebar_widget', 'wg_title', 'Show Title?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'yes', 0, 'yes', 'no', '', '', '0', '0', '0', 'Show Title within Widget?', 'yes', 7, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1585, 't1_sidebar_widget', 'wg_promoted', 'Promoted?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'yes', 0, 'yes', 'no', '', '', '0', '0', '0', 'Promote your Widget with unique colours', 'yes', 8, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1586, 't1_sidebar_widget', 'wg_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'yes', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 9, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1587, 't1_sidebar_widget', 'wg_content_code', 'Editor', 'text', 'texteditor', 'wg_content', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Content of the Widget', 'yes', 10, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1588, 't1_sidebar_widget', 'wg_content', 'Editor', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 11, ' Widget', '', '', '', '', 0, '', 'yes', ''),
(1589, 't1_sidebar_widget', 'wg_slideshow', 'Slideshow Name', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'If this is a Slideshow widget, enter the Name the Slideshow you want to display', 'yes', 12, 'Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1590, 't1_sidebar_widget', 'wg_plugin', 'Plugin Link', 'varchar(255)', 'plugin', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 13, 'Plugin Link', '', '', '', '', 0, '', 'yes', ''),
(1591, 't1_sidebar_widget', 'wg_subpage_filler', 'Stop filler nav items showing?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', 'To stop the subpage plugin from finding more nav items to display', 'yes', 14, 'Subpage', '', '', '', '', 0, '', 'yes', ''),
(1592, 't1_sidebar_widget', 'wg_products_subs', 'Show Sub Categories', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 15, 'Products', '', '', '', '', 0, '', 'yes', ''),
(1593, 't1_sidebar_widget', 'wg_products_products', 'Show Products', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 16, 'Products', '', '', '', '', 0, '', 'yes', ''),
(1594, 't1_sidebar_widget', 'wg_snippet', 'Snippet', 'int(11)', '', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'Choose snippet you want to display this Widget in', 'yes', 17, 'Snippet', '', '', '', '', 0, '', 'yes', ''),
(1701, 't1_product', 'product_ID', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1702, 't1_product', 'product_category_ID', 'Product Category', 'int(11)', 'dblist', 't1_product_category', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1703, 't1_product', 'product_name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '60', '0', '0', NULL, 'yes', 3, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1704, 't1_product', 'product_seo', 'SEO Title', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', NULL, 'yes', 5, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1705, 't1_product', 'product_code', 'Code', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '60', '0', '0', NULL, 'yes', 7, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1706, 't1_product', 'product_price', 'Price', 'decimal(10,2)', 'decimal', '', 'no', 0, 'yes', '0.00', '', '', '0', '0', '0', NULL, 'yes', 8, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1707, 't1_product', 'product_url', 'URL', 'varchar(255)', 'internalurl', 'products/category', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1708, 't1_product', 'product_content', 'Content', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 9, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1709, 't1_product', 'product_content_code', 'Content', 'text', 'texteditor', 'product_content', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 10, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1710, 't1_product', 'product_meta', 'Meta Description', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 15, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1711, 't1_product', 'product_order', 'Display Order', 'int(5)', 'order', '', 'no', 0, 'yes', '', '', '', '5', '0', '0', NULL, 'yes', 4, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1712, 't1_product', 'product_photo', 'Photo', 'varchar(255)', 'fileupload', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 11, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1713, 't1_product', 'product_gallery', 'Photo Gallery', 'int(5)', 'text', 'gallery3', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 12, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1714, 't1_product', 'product_youtube', 'Youtube Video', 'varchar(255)', 'url', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 13, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1715, 't1_product', 'product_buy_url', 'Buy Now URL', 'varchar(255)', 'url', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 16, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1716, 't1_product', 'product_info_url', 'More Info URL', 'varchar(255)', 'url', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 17, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1717, 't1_product', 'product_file', 'Downloadable File', 'varchar(255)', 'fileupload', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 14, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1718, 't1_product', 'product_size', 'Size', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 18, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1719, 't1_product', 'product_colour', 'Colour', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 19, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1720, 't1_product', 'product_preorder', 'Pre-Order?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 20, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1721, 't1_product', 'product_takeaway', 'Takeaway?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 21, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1722, 't1_product', 'product_promoted', 'Promoted?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 22, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1723, 't1_product', 'product_outofstock', 'Out of Stock?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 23, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1724, 't1_product', 'product_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 24, ' Product', '', '', '', '', 0, '', 'yes', ''),
(1725, 't1_product_category', 'pcategory_ID', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1726, 't1_product_category', 'pcategory_parent', 'Parent Category', 'int(11)', 'dblist', 't1_product_category', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1727, 't1_product_category', 'pcategory_name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1728, 't1_product_category', 'pcategory_url', 'URL', 'varchar(255)', 'internalurl', 'products', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1729, 't1_product_category', 'pcategory_style', 'Style', 'enum(''none'',''menu'')', 'radio', 'none:None\r\nmenu:Menu', 'no', 0, 'yes', 'none', '', '', '0', '0', '0', NULL, 'yes', 5, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1730, 't1_product_category', 'pcategory_description', 'Brief Description', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1731, 't1_product_category', 'pcategory_content', 'Content', 'text', 'hidden', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 8, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1732, 't1_product_category', 'pcategory_content_code', 'Content', 'text', 'texteditor', 'pcategory_content', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 9, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1733, 't1_product_category', 'pcategory_order', 'Display Order', 'int(5)', 'order', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 10, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1734, 't1_product_category', 'pcategory_layout', 'Layout', 'enum(''1column'',''2column'')', 'radio', '1column:1column\r\n2column:2column', 'no', 0, 'yes', '1column', '', '', '0', '0', '0', 'Defines the layout for the Section, 2column will split the section into 2 columns', 'yes', 11, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1735, 't1_product_category', 'pcategory_image', 'Image', 'varchar(255)', 'fileupload', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 7, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1736, 't1_product_category', 'pcategory_price', 'Price', 'decimal(6,2)', 'decimal', '', 'no', 0, 'yes', '0.00', '', '', '0', '0', '0', 'Can be used to override all the prices for the Section', 'yes', 12, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1737, 't1_product_category', 'pcategory_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 14, ' Product Category', '', '', '', '', 0, '', 'yes', ''),
(1738, 't1_product_category', 'pcategory_css', 'CSS Class Names', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 13, 'Advanced', '', '', '', '', 0, '', 'yes', ''),
(1739, 't1_product_option', 'productoptionid', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 8, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1740, 't1_product_option', 'productid', 'Product', 'int(11)', 'dblist', 't1_product', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1741, 't1_product_option', 'poption_name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1742, 't1_product_option', 'poption_price', 'Price', 'decimal(6,2)', 'decimal', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Difference in Price for this Option, can be Negative', 'yes', 3, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1743, 't1_product_option', 'poption_note', 'Notes', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Any extra notes or information about this Product Option (appears after Price)', 'yes', 4, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1744, 't1_product_option', 'poption_order', 'Display Order', 'int(5)', 'order', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1745, 't1_product_option', 'poption_display', 'Display Name?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 5, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1746, 't1_product_option', 'poption_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 7, ' Product Option', '', '', '', '', 0, '', 'yes', ''),
(1747, 't1_product_tag', 'producttagid', 'Unique Name', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Unique name for the Tag (no spaces)', 'yes', 1, ' Product Tag', '', '', '', '', 0, '', 'yes', ''),
(1748, 't1_product_tag', 'ptag_name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 2, ' Product Tag', '', '', '', '', 0, '', 'yes', ''),
(1749, 't1_product_tag', 'ptag_symbol', 'Symbol', 'varchar(10)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Optional, defines a text symbol to be displayed next to the Label', 'yes', 3, ' Product Tag', '', '', '', '', 0, '', 'yes', ''),
(1750, 't1_product_tag', 'ptag_image', 'Image', 'varchar(255)', 'fileupload', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'Upload an Icon to represent your Tag', 'yes', 4, ' Product Tag', '', '', '', '', 0, '', 'yes', ''),
(1751, 't1_product_tag', 'ptag_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 5, ' Product Tag', '', '', '', '', 0, '', 'yes', ''),
(1752, 't1_product_tag_link', 'producttagid', 'Producttagid', 'varchar(100)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(1753, 't1_product_tag_link', 'productid', 'Productid', 'int(11)', 'integer', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 0, '', '', '', '', '', 0, '', 'yes', ''),
(1754, 't1_product_type', 'producttypeid', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, ' Product Type', '', '', '', '', 0, '', 'yes', ''),
(1755, 't1_product_type', 'ptype_name', 'Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Product Type', '', '', '', '', 0, '', 'yes', ''),
(1756, 't1_product_type', 'ptype_active', 'Active?', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 2, ' Product Type', '', '', '', '', 0, '', 'yes', ''),
(1757, 'page', 'pg_t1_slideshow', 'Slideshow', 'int(11)', 'dblist', 't1_slideshow', 'no', 0, 'yes', '0', '', '', '0', '0', '0', 'Choose the Slideshow you want to display on the page', 'yes', 1, 'Sidebars', '', '', '', '', 0, '', 'yes', ''),
(1758, 't1_slideshow', 'slideshowid', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1759, 't1_slideshow', 'sh_name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'A unique name for the slideshow - no spaces or special characters', 'yes', 2, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1760, 't1_slideshow', 'sh_width', 'Width', 'int(5)', 'integer', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1761, 't1_slideshow', 'sh_height', 'Height', 'int(5)', 'integer', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1762, 't1_slideshow', 'sh_delay', 'Delay', 'int(6)', 'list', '0:default\n500:0.5 seconds\n1000:1 second\n1500:1.5 seconds\n2000:2 seconds\n3000:3 seconds\n4000:4 seconds\n5000:5 seconds\n6000:6 seconds\n7000:7 seconds\n8000:8 seconds\n9000:9 seconds\n10000:10 seconds\n15000:15 seconds\n20000:20 seconds\n30000:30 seconds\n60000:60 seconds', 'no', 0, 'yes', '3000', '', '', '0', '0', '0', 'The length of the pause between each image change', 'yes', 5, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1763, 't1_slideshow', 'sh_fadespeed', 'Fade Speed', 'int(5)', 'list', '0:default\n100:1/10 second\n250:1/4 second\n500:1/2 second\n1000:1 second\n1500:1.5 seconds\n2000:2 seconds', 'no', 0, 'yes', '200', '', '', '0', '0', '0', 'The speed of the fade between images', 'yes', 6, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1764, 't1_slideshow', 'sh_force', 'Force Image Dimensions', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'yes', '', '', '0', '0', '0', NULL, 'yes', 7, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1765, 't1_slideshow', 'sh_tabs', 'Show Tab Controls', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 8, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1766, 't1_slideshow', 'sh_arrows', 'Show Arrows', 'enum(''yes'',''no'')', 'radio', 'yes:Yes\r\nno:No', 'no', 0, 'yes', 'no', '', '', '0', '0', '0', NULL, 'yes', 9, ' Slideshow', '', '', '', '', 0, '', 'yes', ''),
(1767, 't1_slideshow_slide', 'slideid', 'Unique ID', 'int(11)', 'readonly', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 9, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1768, 't1_slideshow_slide', 'slideshowid', 'Slideshow', 'int(11)', 'dblist', 't1_slideshow', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 1, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1769, 't1_slideshow_slide', 'sl_name', 'Name', 'varchar(255)', 'text', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', 'A short name describing this image', 'yes', 2, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1770, 't1_slideshow_slide', 'sl_image', 'Image', 'varchar(255)', 'fileupload', '', 'yes', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 3, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1771, 't1_slideshow_slide', 'sl_url', 'URL', 'varchar(255)', 'url', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 4, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1772, 't1_slideshow_slide', 'sl_title', 'Title', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', 'An optional title or caption for the image', 'yes', 5, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1773, 't1_slideshow_slide', 'sl_test', 'Testimonial', 'text', 'textarea', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 6, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1774, 't1_slideshow_slide', 'sl_test_name', 'Testimonial Name', 'varchar(255)', 'text', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 7, ' Slide', '', '', '', '', 0, '', 'yes', ''),
(1775, 't1_slideshow_slide', 'sl_order', 'Order', 'int(4)', 'order', '', 'no', 0, 'yes', '', '', '', '0', '0', '0', NULL, 'yes', 8, ' Slide', '', '', '', '', 0, '', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `fielddata_flags`
--

CREATE TABLE `fielddata_flags` (
  `flag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fielddata_flags`
--

INSERT INTO `fielddata_flags` (`flag`, `name`, `description`) VALUES
('PRIVACY', 'Privacy Option', 'Shows the option to keep this data private'),
('PRIVATE', 'Private by default', 'Will set this field to be private by default (requires the PRIVACY flag)'),
('PROFILE', 'Show on Profile', 'This field will be editable on the user profile page.'),
('REGISTER', 'Show on Register', 'This field will be shown on the register page');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `form_subject` varchar(255) NOT NULL,
  `form_page_id` int(11) DEFAULT NULL,
  `form_captcha` tinyint(1) NOT NULL DEFAULT '1',
  `form_fieldsets` tinyint(1) NOT NULL DEFAULT '1',
  `form_submit` varchar(255) NOT NULL,
  `form_submit_label` tinyint(1) NOT NULL DEFAULT '1',
  `form_tracking_code_analytics` text NOT NULL,
  `form_tracking_code` text NOT NULL,
  `form_success_message` text NOT NULL,
  `form_webmaster_copy` tinyint(1) NOT NULL DEFAULT '1',
  `form_to` varchar(255) NOT NULL DEFAULT '',
  `form_send` tinyint(1) NOT NULL DEFAULT '1',
  `form_choice` tinyint(1) NOT NULL DEFAULT '0',
  `form_choice_list` text NOT NULL,
  `form_choice_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `form_choice_cc` tinyint(1) NOT NULL DEFAULT '0',
  `form_autoreply` tinyint(1) NOT NULL DEFAULT '0',
  `form_autoreply_body` text,
  `form_autoreply_bodycode` text,
  `form_action_url` varchar(255) DEFAULT NULL,
  `form_redirect_url` varchar(255) DEFAULT NULL,
  `form_hideonsuccess` tinyint(1) NOT NULL DEFAULT '0',
  `form_thank_you_uri` varchar(255) NOT NULL,
  `form_multipage` tinyint(1) NOT NULL DEFAULT '0',
  `form_submit_end` tinyint(1) NOT NULL DEFAULT '1',
  `form_horizontal` tinyint(1) NOT NULL DEFAULT '0',
  `form_uploadfolder` varchar(255) NOT NULL,
  `form_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `form_name`, `form_subject`, `form_page_id`, `form_captcha`, `form_fieldsets`, `form_submit`, `form_submit_label`, `form_tracking_code_analytics`, `form_tracking_code`, `form_success_message`, `form_webmaster_copy`, `form_to`, `form_send`, `form_choice`, `form_choice_list`, `form_choice_multiple`, `form_choice_cc`, `form_autoreply`, `form_autoreply_body`, `form_autoreply_bodycode`, `form_action_url`, `form_redirect_url`, `form_hideonsuccess`, `form_thank_you_uri`, `form_multipage`, `form_submit_end`, `form_horizontal`, `form_uploadfolder`, `form_class`) VALUES
(1, 'Contact Form', '', 0, 1, 1, '', 1, '', '', '', 1, '', 1, 0, '', 0, 0, 0, NULL, NULL, NULL, NULL, 0, '', 0, 1, 0, '', ''),
(2, 'test', '', 0, 1, 1, 'Submit', 1, '/contact-via-contact-form', '', '', 1, '', 1, 0, '', 0, 0, 0, '[editor:html]\n ', ' ', '', '', 0, '', 0, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `formfield`
--

CREATE TABLE `formfield` (
  `formfield_id` int(11) NOT NULL,
  `ff_form_id` int(11) NOT NULL,
  `ff_fieldset` varchar(255) NOT NULL,
  `ff_fieldname` varchar(255) NOT NULL,
  `ff_display` varchar(255) NOT NULL,
  `ff_placeholder` varchar(255) NOT NULL,
  `ff_required` tinyint(1) NOT NULL DEFAULT '0',
  `ff_validation` enum('email','url','text','number','date') NOT NULL,
  `ff_type` enum('text','textarea','checkboxes','radio','select','list','date','emailwithconfirmation','hidden','heading','note','upload','privateupload','attachment') NOT NULL,
  `ff_size` int(11) NOT NULL,
  `ff_prependvalue` text NOT NULL,
  `ff_value` text NOT NULL,
  `ff_appendvalue` text NOT NULL,
  `ff_options` text NOT NULL,
  `ff_rows` int(11) NOT NULL,
  `ff_cols` int(11) NOT NULL,
  `ff_description` text NOT NULL,
  `ff_class` varchar(100) NOT NULL DEFAULT '',
  `ff_displayonly` tinyint(1) NOT NULL DEFAULT '0',
  `ff_is_email` tinyint(1) NOT NULL DEFAULT '0',
  `ff_is_name` tinyint(1) NOT NULL DEFAULT '0',
  `ff_showlabel` tinyint(1) NOT NULL DEFAULT '1',
  `ff_padlabel` tinyint(1) NOT NULL DEFAULT '0',
  `ff_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formfield`
--

INSERT INTO `formfield` (`formfield_id`, `ff_form_id`, `ff_fieldset`, `ff_fieldname`, `ff_display`, `ff_placeholder`, `ff_required`, `ff_validation`, `ff_type`, `ff_size`, `ff_prependvalue`, `ff_value`, `ff_appendvalue`, `ff_options`, `ff_rows`, `ff_cols`, `ff_description`, `ff_class`, `ff_displayonly`, `ff_is_email`, `ff_is_name`, `ff_showlabel`, `ff_padlabel`, `ff_order`) VALUES
(1000, 1, '', 'firstname', 'First Name', '', 1, '', 'text', 30, '', '', '', '', 0, 0, '', '', 0, 0, 1, 1, 0, 0),
(1001, 1, '', 'lastname', 'Last Name', '', 1, '', 'text', 30, '', '', '', '', 0, 0, '', '', 0, 0, 1, 1, 0, 1),
(1002, 1, '', 'email', 'Email', '', 1, 'email', 'text', 30, '', '', '', '', 0, 0, '', '', 0, 1, 0, 1, 0, 2),
(1003, 1, '', '', 'Message', '', 1, 'text', 'textarea', 0, '', '', '', '', 15, 29, '', '', 0, 0, 0, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `formsubmission`
--

CREATE TABLE `formsubmission` (
  `formsubmissionid` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `submitted` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  `to_name` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jojo_slideshow`
--

CREATE TABLE `jojo_slideshow` (
  `slideshowid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `delay` varchar(10) NOT NULL,
  `fadespeed` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jojo_slideshow`
--

INSERT INTO `jojo_slideshow` (`slideshowid`, `name`, `width`, `height`, `delay`, `fadespeed`) VALUES
(1, 't', 200, 200, '0', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `jojo_slideshowimage`
--

CREATE TABLE `jojo_slideshowimage` (
  `slideshowimageid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slideshowid` int(11) NOT NULL,
  `displayorder` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jojo_slideshowimage`
--

INSERT INTO `jojo_slideshowimage` (`slideshowimageid`, `name`, `image`, `title`, `slideshowid`, `displayorder`, `url`) VALUES
(1000, 's', 'IMG_1052.jpg', '', 1, 2, ''),
(1001, 'ss', 'IMG_1051.jpg', '', 1, 1, ''),
(1002, 'ssss', 'IMG_1041.JPG', '', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `languagetableid` int(11) NOT NULL,
  `languageid` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `english_name` varchar(255) NOT NULL DEFAULT '',
  `displayorder` int(11) NOT NULL DEFAULT '1',
  `charset` varchar(15) NOT NULL DEFAULT '',
  `ISOcode` varchar(15) NOT NULL DEFAULT '',
  `direction` varchar(3) NOT NULL DEFAULT 'ltr',
  `longcode` varchar(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`languagetableid`, `languageid`, `name`, `english_name`, `displayorder`, `charset`, `ISOcode`, `direction`, `longcode`, `active`) VALUES
(1, 'en', 'English', 'English', 1, 'utf-8', '', 'ltr', 'english', 0),
(2, 'fr', 'Français', 'French', 1, 'utf-8', '', 'ltr', 'francais', 0),
(3, 'ru', 'Русский', 'Russian', 1, 'utf-8', '', 'ltr', 'russkiy', 0),
(4, 'zh', '中文', 'Chinese', 1, 'utf-8', '', 'ltr', 'zhongwen', 0),
(5, 'ja', '日本語', 'Japanese', 1, 'utf-8', '', 'ltr', 'nihongo', 0),
(6, 'es', 'Español', 'Spanish', 1, 'utf-8', '', 'ltr', 'espanol', 0),
(7, 'pl', 'Polski', 'Polish', 1, 'utf-8', '', 'ltr', 'polski', 0),
(8, 'ko', '한국어', 'Korean', 1, 'utf-8', '', 'ltr', 'hangugeo', 0),
(9, 'ar', 'العربية', 'Arabic', 1, 'utf-8', '', 'rtl', 'araby', 0),
(10, 'th', 'ไทย', 'Thai', 1, 'utf-8', '', 'ltr', 'thai', 0),
(11, 'cz', 'Čeština', 'Czech', 1, 'utf-8', '', 'ltr', 'czech', 0),
(12, 'de', 'Deutsch', 'German', 1, 'utf-8', '', 'ltr', 'deutch', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lang_country`
--

CREATE TABLE `lang_country` (
  `lc_id` int(11) NOT NULL,
  `lc_code` varchar(10) NOT NULL,
  `lc_name` varchar(255) NOT NULL,
  `lc_englishname` varchar(255) NOT NULL,
  `lc_root` int(11) NOT NULL DEFAULT '0',
  `lc_home` int(11) NOT NULL DEFAULT '0',
  `lc_longcode` varchar(50) DEFAULT NULL,
  `lc_defaultlang` varchar(10) NOT NULL,
  `displayorder` int(11) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang_country`
--

INSERT INTO `lang_country` (`lc_id`, `lc_code`, `lc_name`, `lc_englishname`, `lc_root`, `lc_home`, `lc_longcode`, `lc_defaultlang`, `displayorder`, `default`, `active`) VALUES
(1, 'en', 'Global', 'Global', 0, 1, 'english', 'en', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `op_name` varchar(50) NOT NULL DEFAULT '',
  `op_value` text NOT NULL,
  `op_category` varchar(50) NOT NULL DEFAULT '',
  `op_type` varchar(255) NOT NULL DEFAULT '',
  `op_options` varchar(255) NOT NULL DEFAULT '',
  `op_default` varchar(255) NOT NULL DEFAULT '',
  `op_plugin` varchar(255) NOT NULL DEFAULT '',
  `op_description` text NOT NULL,
  `op_displayname` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`op_name`, `op_value`, `op_category`, `op_type`, `op_options`, `op_default`, `op_plugin`, `op_description`, `op_displayname`) VALUES
('allowed_fileupload_extensions', 'jpg,jpeg,gif,pdf,ip,txt,doc,docx,ppt,pptx,psd,png,html,swf,mp3,mp4,xml,xls', 'HTML Editor', 'text', '', 'jpg,jpeg,gif,pdf,ip,txt,doc,docx,ppt,pptx,psd,png,html,swf,mp3,mp4,xml,xls', 'jojo_core', 'sets the allowed file link file types - comma separated list of file extensions', 'File Upload Types'),
('allowed_imageupload_extensions', 'jpg,gif,png,jpeg', 'Images', 'text', '', 'jpg,gif,png,jpeg', 'jojo_core', 'sets the allowed image upload file types - comma separated list of file extensions', 'Image Upload Types'),
('allow_email_login', 'no', 'Security', 'radio', 'yes,no', 'no', 'jojo_core', 'If YES, allows users to login with their email address or username.', 'Allow login with email'),
('analyticscode', '', 'Google Analytics', 'text', '', '', 'jojo_core', 'The number provided by Google Analytics for tracking site traffic - eg UA-XXXXX-X', 'Analytics Code'),
('analyticscodetype', 'async', 'Google Analytics', 'radio', 'universal,async,ga', 'universal', 'jojo_core', 'The type of Google analytics code - universal, asynchronous or ga.js. If you use the async code, then it will be put into the head and the top/bottom option will be ignored.', 'Analytics Code Type'),
('analyticsposition', 'bottom', 'Google Analytics', 'radio', 'top,bottom', 'bottom', 'jojo_core', 'Default at the bottom, but when you need to track events within a page, you need Analytics at the top of the HTML', 'Google analytics at the top or bottom'),
('assetdomains', '', 'Config', 'textarea', '', '', 'jojo_core', 'A new-line seperated list of domains that can be used for hosting images and CSS. See the documentation for details on Assets.', 'Asset domains'),
('boilerplate_htmltag', 'yes', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'Add browser conditionals to html tag', 'Boilerplate Html tag'),
('breadcrumbs_sep', '', 'Navigation', 'text', '', '', 'jojo_core', 'Default is to use Bootstrap styling which includes its own separator. Include a custom separator here if needed', 'Breadcrumb separation character'),
('captcha_num_chars', '3', 'Config', 'integer', '', '3', 'jojo_core', 'Number of characters to display on the CAPTCHA image', 'CAPTCHA numer of characters'),
('columnbreaks', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'If enabled, content will be checked for columnbreak filters and split into fluid spans.', 'Columns filter'),
('commonjs_head', 'yes', 'JS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Load common javascript file from the head (slows page load but required if in-page scripts are used on the site).', 'Common.js in head'),
('contactaddress', '', 'Contacts', 'text', '', '', 'jojo_core', 'The email address of the person who will be receiving any enquiries from the site. If empty, the values in FROM ADDRESS or WEBMASTER ADDRESS will be used instead.', 'Contact address'),
('contactname', '', 'Contacts', 'text', '', '', 'jojo_core', 'The name of the person who will be receiving any enquiries from the site. If empty, the values in FROM NAME or WEBMASTER NAME will be used instead.', 'Contact name'),
('contentcache', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'If enabled, HTML content will be cached for a period of time to reduce server CPU and loading time for visitors.', 'Content cache'),
('contentcachetime', '28800', 'Config', 'integer', '', '28800', 'jojo_core', 'The maximum amount of time in seconds content will be cached for, if CONTENTCACHE is enabled. Default 8 hours.', 'Content cache time'),
('contentcachetime_resources', '604800', 'Config', 'integer', '', '604800', 'jojo_core', 'The maximum amount of time in seconds images, js and css will be cached for. Default 7 days.', 'Resources cache time'),
('crossdomainanalytics', 'no', 'Google Analytics', 'radio', 'yes,no', 'no', 'jojo_core', 'Allow Google analytics to track between http and https servers of the same domain, and between domains.', 'Cross Domain Analytics'),
('css', '', 'CSS', 'textarea', '', '', 'jojo_core', 'Any additional CSS required by the site can be added here. This may be easier and quicker than editing the CSS file and uploading via FTP.', 'CSS'),
('css-email', '', 'CSS', 'textarea', '', '', 'jojo_core', 'CSS styles to be applied to emails', 'Inline CSS for email'),
('css-handheld', '', 'CSS', 'textarea', '', '', 'jojo_core', 'Any additional CSS specifically for handheld devices and PDAs required by the site can be added here. This may be easier and quicker than editing the CSS file and uploading via FTP.', 'CSS for handhelds'),
('css-print', '', 'CSS', 'textarea', '', '', 'jojo_core', 'Any additional CSS specifically for printouts required by the site can be added here. This may be easier and quicker than editing the CSS file and uploading via FTP.', 'CSS for print'),
('css_imports', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Have Jojo include CSS @imports on the server to save the browser using extra HTTP requests.', 'Server side CSS Imports'),
('customfoot', '', 'Config', 'textarea', '', '', 'jojo_core', 'Anything added here will be added to the end of the document foot on all pages', 'Global customfoot'),
('customhead', '', 'Config', 'textarea', '', '', 'jojo_core', 'Anything added here will be added to the end of the document head on all pages', 'Global customhead'),
('defaultgroup', 'registered', 'Security', 'text', '', '', 'jojo_core', 'If a user registers on the site, they are automatically added to this group. This is used to give some automatic extra permissions to registered users. Available groups: admin, notloggedin, registered, sysinstall, t1client', 'Default group'),
('developer', 'T1', 'Contacts', 'text', '', '', 'jojo_core', 'The name of the company developing the site. Used in meta data.', 'Developer'),
('dev_domains', 'http://localhost\nhttp://127.0.0.1', 'Config', 'textarea', '', 'http://localhost\nhttp://127.0.0.1', 'jojo_core', 'A newline separated list of local development domains. Certain functions of Jojo will be disabled (such as pinging external services) when you are developing on a test server. Please include http://', 'Development domains'),
('doctype', 'html5', 'Config', 'radio', 'xhtml,html5', 'html5', 'jojo_core', 'Declare Doctype as XHTML or HTML5.', 'Doctype'),
('enablegzip', 'yes', 'Config', 'radio', '0,1', '0', 'jojo_core', 'Gzipping website content is a way of compressing HTML pages so they are faster to download. This should usually be enabled, but is not supported on some web hosts.', 'Enable GZip'),
('eventlog_email_notification', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'A daily email will be sent to the webmaster detailing any high priority eventlog entries in the last 24 hours.', 'Eventlog email notification'),
('facebook_admins', '', 'Social Networking', 'text', '', '', 'jojo_core', 'Comma separated list of Facebook Admin Ids (used for registering your site on your FB page)', 'Facebook Admin Ids'),
('facebook_link', '', 'Social Networking', 'text', '', '', 'jojo_core', 'the full url of your Facebook page', 'Facebook link'),
('fromaddress', '', 'Contacts', 'text', '', '', 'jojo_core', 'The website will send out various emails - such as followups to comments, and site reports. This address is used when sending mail from the site.', 'From Address'),
('fromname', 'test', 'Contacts', 'text', '', '', 'jojo_core', 'The name that is used for sending out mail from the website.', 'From Name'),
('googleajaxlibs', 'yes', 'JS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Load jQuery from the Google Ajax Librarys site.', 'Google Hosted Javascript'),
('googleplus_link', '', 'Social Networking', 'text', '', '', 'jojo_core', 'the full url of your Google+ page', 'Google+ link'),
('image_filters', '', 'Images', 'textarea', '', '', 'jojo_core', 'A newline separated list of php imagefilters in the format [name(a-z)]:[image_filter name],[arg1],[arg2].. e.g. blueduo:IMG_FILTER_DUOTONE,0,121,193 images can then be called by url including the filter name images/[resize][filtername]/[filepath] e.g. ima', 'Image Filters'),
('image_padbackground', '0xFF,0xFF,0xFF', 'Images', 'text', '', '0xFF,0xFF,0xFF', 'jojo_core', 'Background colour for padded images as r,g,b -  integers between 0 and 255 or hexadecimals between 0x00 and 0xFF', 'Pad Background'),
('image_sharpen', '18', 'Images', 'integer', '', '18', 'jojo_core', 'Sharpen images after auto-resizing. 20=light, 10=aggressive, 0=none', 'Sharpen'),
('initialscale', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'Include "Initial Scale = 1" in the head. Set to yes for sites you don''t want scaled to fit on smaller screens.', 'Initial Scale'),
('instagram_link', '', 'Social Networking', 'text', '', '', 'jojo_core', 'the full url of your Instagram channel', 'Instagram link'),
('jpeg_quality', '100', 'Images', 'integer', '', '85', 'jojo_core', 'This is the quality percentage used when jpeg images are resized (1-100). Higher quality images are larger and slower to download.', 'JPEG Quality'),
('jquery_head', 'yes', 'JS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Load jQuery from the head (slows page load but required if in-page scripts are used on the site).', 'jQuery in head'),
('jquery_touch', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Load jQuery Mobile touch event code (for triggering swipe and tap events etc). Requires jQuery 1.8+', 'jQuery Mobile Touch'),
('jquery_ui', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Load jQuery UI code.', 'jQuery UI'),
('jquery_useanytime', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Load jQuery Anytime for datepicker popups.', 'jQuery Anytime Datepicker'),
('jquery_version', '1.9.1', 'JS', 'radio', '1.7.2,1.9.1,1.11.1', '1.9.1', 'jojo_core', 'Which version of jQ to use.', 'jQuery version'),
('last_maintenance', '1424219025', 'System', 'integer', '', '1', 'jojo_core', 'The date/time when auto-maintenance was last run on the system', 'Last maintenance time'),
('linkedin_link', '', 'Social Networking', 'text', '', '', 'jojo_core', 'the full url of your LinkedIn page', 'LinkedIn link'),
('lowercase_internalurl', 'yes', 'Config', 'radio', 'yes,no', 'yes', 'jojo_core', 'Force lowercase of internal URLs', 'Internal URLs lowercase'),
('max_fileupload_size', '5000', 'HTML Editor', 'text', '', '5000', 'jojo_core', 'sets the maximum file upload size', 'Maximum File Upload Size'),
('max_imageupload_size', '3000', 'Images', 'text', '', '3000', 'jojo_core', 'sets the maximum image upload size', 'Maximum Image Upload Size'),
('mobile_site', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'Serve .mob.tpl files (if available) to mobile browsers. Note your theme will need to support this.', 'Mobile site enabled'),
('modernizr', 'no', 'JS', 'radio', 'yes,no,custom', 'no', 'jojo_core', 'Add modernizr script classes to html tag. Yes uses v2.6.2 minimal included in Jojo. Custom uses modernizr.min.js in the theme/external directory', 'Use Modernizr'),
('multilanguage', 'no', 'Config', 'radio', 'yes,no', 'no', 'jojo_core', 'This will enable additional multilanguage features if set to YES. Please run SETUP after changing this option.', 'Multilanguage'),
('multilanguage-default', 'en', 'Config', 'select', 'en', 'en', 'jojo_core', 'Default sub-section for this site', 'Default Section'),
('nav_footernav', '0', 'Navigation', 'integer', '', '0', 'jojo_core', 'How many levels of sub-navigation to include below the footernav. 0 = just the top level', 'Footernav levels'),
('nav_mainnav', '2', 'Navigation', 'integer', '', '0', 'jojo_core', 'How many levels of sub-navigation to include below the mainnav. 0 = just the top level. Disables separate subnav if >0 ', 'Mainnav levels'),
('nav_subnav', '2', 'Navigation', 'integer', '', '2', 'jojo_core', 'How many levels of sub-navigation to include below the subnav. 0 = just the top level. Disabled if mainnav not 0', 'Subnav levels'),
('nofollow_list', '', 'SEO', 'textarea', '', '', 'jojo_core', 'A newline separated list of domains that will be nofollowed. Any links within the site to any of the domains in this list will be automatically nofollowed. Please include http://', 'Nofollow list'),
('normalize_cssreset', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Add normalize.css (reset, media etc) to style.css', 'Normalize CSS Reset'),
('ogdata', 'no', 'SEO', 'radio', 'yes,no', 'no', 'jojo_core', 'When this option is enabled meta og:: tags, used by Facebook et al, will be included in the head', 'OpenGraph meta tags'),
('page_meta_keywords', 'no', 'SEO', 'radio', 'yes,no', 'no', 'jojo_core', 'When this option is enabled, meta keywords can be edited via edit pages. Disable this option if you are not going to be editing meta keywords (or consider them worthless)', 'Page-specific meta keywords'),
('password_cost', '10', 'Security', 'text', '', '10', 'jojo_core', 'The cost of hashing user passwords. Higher is harder to crack, but will cause a slight delay as users sign in', 'Password Cost'),
('password_email', 'no', 'Security', 'radio', 'yes,no', 'no', 'jojo_core', 'If enabled, new passwords set using the Change Password form will be emailed to the user.', 'Email Passwords'),
('php_errors', 'yes', 'Config', 'radio', 'yes,no', 'yes', 'jojo_core', 'If enabled, PHP warnings and errors will be displayed, even when DEBUG mode is off', 'PHP Errors'),
('preferrededitor', 'wysiwyg', 'HTML Editor', 'radio', 'bbcode,wysiwyg', 'wysiwyg', 'jojo_core', 'The default content editor for new pages.', 'Preferred Editor'),
('pseudobreaks', 'no', 'HTML Editor', 'radio', 'yes,no', 'no', 'jojo_core', 'if yes headings will be checked for //, converted for inline use and stripped for SEO titles', 'Convert // pseudo-breaks in headings etc to <br />'),
('robots.txt', '', 'SEO', 'textarea', '', '', 'jojo_robots', 'Jojo provides a basic robots.txt file for your site. If you wish to use your own, enter your robots.txt data here. DO NOT change this option if you are unsure of what you are doing.', 'robots.txt'),
('robots_odp', 'yes', 'SEO', 'radio', 'yes,no', 'yes', 'jojo_core', 'If enabled, Search Engines use your description, etc instead of the Open Directory Project description if it exists.', 'Open Directory Project'),
('robots_ydir', 'no', 'SEO', 'radio', 'yes,no', 'no', 'jojo_core', 'If enabled, Search Engines use your description, etc instead of the Yahoo Directory description if it exists.', 'Yahoo Directory'),
('rss_full_description', 'yes', 'RSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'If YES, a full copy of the item is provided in the RSS feed. If NO, the RSS feed only includes content before the snip filter tag.', 'Full RSS Description'),
('rss_num_items', '15', 'RSS', 'integer', '', '15', 'jojo_core', 'The number of items to be displayed in the RSS feed (more will use more bandwidth))', 'Number of RSS items'),
('rss_sitedesc', '', 'RSS', 'textarea', '', '', 'jojo_core', 'A one sentence unique description of what the site is about. Included in RSS feeds.', 'Site description'),
('rss_source_link', 'yes', 'RSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Appends a source link to the bottom of each item in the RSS feed. This is to ensure scraper sites are providing a link back to the original event.', 'Append source link to RSS feed'),
('rss_truncate', '800', 'RSS', 'integer', '', '800', 'jojo_core', 'If Full Description is set to No above, truncate events with no embedded snip filter tag to this length', 'RSS default truncation'),
('secureurl', '', 'Config', 'text', '', '', 'jojo_core', 'If there is a SSL version of the site, enter the URL here, including the https:// but not the trailing slash.', 'Secure URL'),
('servertimezone', '0', 'Config', 'integer', '', '0', 'jojo_core', 'eg 12 for New Zealand. This option is used by some plugins to autocalculate times correctly for users if the server is not in their timezone.', 'Server timezone'),
('shorttitle', '', 'Site', 'text', '', '', 'jojo_core', 'If there is a logical abbreviation for the site, this can be used instead of the full title where space is limited.', 'Short Title'),
('shorttitlebranding', 'no', 'SEO', 'radio', 'yes,no', 'no', 'jojo_core', 'If this option is set, the site title will be left off page titles, if adding it would cause the whole title to be longer than the length of a Google title. Enabling this is good for SEO, but can mean some inconsistencies in branding across the titles of ', 'Short title branding'),
('sitetimezone', 'Pacific/Auckland', 'Config', 'text', '', 'Pacific/Auckland', 'jojo_core', 'The timezone of the site will be deployed in. Causes all times (modified, go live etc) to be calculated in this timezone.', 'Site Timezone'),
('sitetitle', 'testing', 'Site', 'text', '', 'SITETITLE', 'jojo_core', 'The site title is displayed in the title bar of all pages, and is the default for outgoing emails and communications from the site. This should be the name of the website or business.', 'Site Title'),
('siteurl', 'http://localhost:8888', 'Config', 'text', '', '', 'jojo_core', 'This option is set automatically. This is the URL that is used for the site. Where several domains are available for a site, they will all be redirected to the URL specified here. NO TRAILING SLASH.', 'Site URL'),
('site_country_name', '', 'Site', 'text', '', '', 'jojo_core', 'Country of this location (if applicable)', 'Country'),
('site_email', '', 'Site', 'text', '', '', 'jojo_core', 'Publishable contact email for the site (if applicable)', 'Email'),
('site_fax_number', '', 'Site', 'text', '', '', 'jojo_core', 'Publishable contact fax number for the site (if applicable)', 'Fax Number'),
('site_geolocation', '', 'Site', 'text', '', '', 'jojo_core', 'the latitude,longitude of this location (if applicable)', 'Geo Coordinates'),
('site_locality', '', 'Site', 'text', '', '', 'jojo_core', 'Locality/Suburb/City of this location (if applicable)', 'Locality'),
('site_logo', '', 'Site', 'text', '', '', 'jojo_core', 'the url for the site logo', 'Site Logo'),
('site_phone_number', '', 'Site', 'text', '', '', 'jojo_core', 'Publishable contact phone number for the site (if applicable)', 'Phone Number'),
('site_postal_code', '', 'Site', 'text', '', '', 'jojo_core', 'Post Code of this location (if applicable)', 'Post Code'),
('site_region', '', 'Site', 'text', '', '', 'jojo_core', 'Region/State of this location (if applicable)', 'Region'),
('site_street_address', '', 'Site', 'text', '', '', 'jojo_core', 'Street address of this location (if applicable)', 'Street Address'),
('slideshow_filter', 'both', 'Slideshow', 'radio', 'content,template,both', 'both', 'jojo_slideshow', 'The plugin can check for the filter text in templates or body content, or run twice to check both. (force refresh to update the api.txt after changing this option)', 'Filter for maps in'),
('smtp_mail_enabled', 'no', 'Email', 'radio', 'yes,no', 'no', 'jojo_core', 'Enables sending mail using SMTP. If enabled, please ensure other options for host, port etc are set.', 'SMTP Email'),
('smtp_mail_host', '', 'Email', 'text', '', '', 'jojo_core', 'SMTP Hostname to use for sending mail eg smtp.domain.com', 'SMTP Email Hostname'),
('smtp_mail_pass', '', 'Email', 'text', '', '', 'jojo_core', 'Password, if required by the SMTP server.', 'SMTP Email Password'),
('smtp_mail_port', '25', 'Email', 'text', '', '25', 'jojo_core', 'Port to connect to for sending SMTP mail.', 'SMTP Email Port'),
('smtp_mail_user', '', 'Email', 'text', '', '', 'jojo_core', 'Username, if required by the SMTP server.', 'SMTP Email Username'),
('t1_global_options', 'yes', 'T1 Global', 'radio', 'yes,no', 'no', 't1_global', 'If changed to "no" then all applicable JOJO Options will be reset to the T1 Defaults', 'Has the Initial Setup been run to Set the Default Options?'),
('t1_sidebar_left_default', 't1', 'T1 Sidebar', 'text', '', 't1', 't1_sidebar2', 'If no sidebar is selected for a page, show this one', 'Left Sidebar default ID'),
('t1_sidebar_right_default', 'r2', 'T1 Sidebar', 'text', '', 'r2', 't1_sidebar2', 'If no sidebar is selected for a page, show this one', 'Right Sidebar default ID'),
('t1_smartMenu_enabled', 'yes', 'T1 smartMenu', 'radio', 'yes,no', 'yes', 't1_smartMenu', 'Enables this plugin', 'Enable the T1 smartMenu Navigation?'),
('t1_smartMenu_menu_disable_sublevels', 'no', 'T1 smartMenu', 'radio', 'yes,no', 'no', 't1_smartMenu', 'Enable if you only want to see the first level of Navigation', 'Disable Sub levels?'),
('t1_smartMenu_menu_width', '60', 'T1 smartMenu', 'integer', '', '60', 't1_smartMenu', 'Determines how many characters can fit on one line, before wrapping the Menu', 'Width of Menu (em)'),
('t1_smartMenu_parent_links', 'yes', 'T1 smartMenu', 'radio', 'yes,no', 'yes', 't1_smartMenu', 'Should the Parent pages of dropdowns have a link?', 'Should the Parent pages of dropdowns have a link?'),
('t1_smartMenu_style', 'smartMenu', 'T1 smartMenu', 'radio', 'smartMenu,newCSSHoz', 'smartMenu', 't1_smartMenu', 'smartMenu = Smart Menu | newCSSHoz = New CSS3 Horizontal menu ', 'The style of Navigation menu to use'),
('t1_smartMenu_theme_CSS', 'sm-clean', 'T1 smartMenu', 'radio', 'sm-clean,sm-simple,sm-blue,sm-mint', 'sm-clean', 't1_smartMenu', 'sm-clean = clean | sm-simple = simple | sm-blue = Blue | sm-mint = Mint ', 'smartMenu theme'),
('t1_smartMenu_theme_Horizontal', 'sm-horizontal', 'T1 smartMenu', 'radio', 'sm-horizontal,sm-vertical', 'sm-horizontal', 't1_smartMenu', 'sm-horizontal = Drop down | sm-vertical = vertical menu ', 'smartMenu - horizontal or Vertical?'),
('t1_smartMenu_theme_use_bootstrap', 'no', 'T1 smartMenu', 'radio', 'yes,no', 'no', 't1_smartMenu', 'Enable if you only want to use the optional bootstrap menu plug', 'smartMenu - Use the Boostrap3 add on:'),
('tbootstrap_bass_forms', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Form element and button formatting - used by Contact, Cart etc', 'Bootstrap Forms & Buttons'),
('tbootstrap_bass_labels', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Highlight items by adding a badge or label to links, navs, and more', 'Bootstrap Labels and badges'),
('tbootstrap_bass_media', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'A layout contruct for snippets - used by Article indexes, Search results etc', 'Bootstrap Media'),
('tbootstrap_bass_sprites', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Glyphicons icon set', 'Bootstrap Icons'),
('tbootstrap_bass_tables', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Table formatting - used by Cart etc. Can be combined with Panels', 'Bootstrap Tables'),
('tbootstrap_bass_type', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Typography formatting for headings, lists, code etc', 'Bootstrap Headings, body, etc'),
('tbootstrap_components_alerts', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Include Twitter Bootstap''s alerts.less file', 'Bootstrap Alerts'),
('tbootstrap_components_breadcrumbs', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Breadcrumb formatting, with CSS separators', 'Bootstrap Breadcrumbs'),
('tbootstrap_components_buttongroups', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Group a series of buttons together on a single line with the button group. Add on optional radio and checkbox style behavior with the Buttons JS option.', 'Bootstrap Button groups'),
('tbootstrap_components_herounit', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Now called a Jumbotron.. A lightweight, flexible component that can optionally extend the entire viewport to showcase key content on your site.', 'Bootstrap Hero unit'),
('tbootstrap_components_navbar', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s navbar.less file', 'Bootstrap Navbar'),
('tbootstrap_components_navs', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s navs.less file', 'Bootstrap Navs, tabs, and pills'),
('tbootstrap_components_pagination', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Pagination styling for Articles etc. Includes standard and "Pager" formats', 'Bootstrap Pagination'),
('tbootstrap_components_progressbars', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s progress-bars.less file', 'Bootstrap Progress bars'),
('tbootstrap_components_thumbnails', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Display grids of images, videos, text, and more.', 'Bootstrap Thumbnails'),
('tbootstrap_js_affix', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-affix.js file into common.js', 'Bootstrap Affix plugin'),
('tbootstrap_js_alert', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-alert.js file into common.js', 'Bootstrap Alert messages'),
('tbootstrap_js_button', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-button.js file into common.js', 'Bootstrap Buttons'),
('tbootstrap_js_carousel', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-carousel.js file into common.js', 'Bootstrap Carousel'),
('tbootstrap_js_collapse', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-collapse.js file into common.js. This will automatically be included if CSS Navbar and responsive navbar are included', 'Bootstrap Collapse'),
('tbootstrap_js_dropdown', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-dropdown.js file into common.js', 'Bootstrap Dropdowns'),
('tbootstrap_js_modal', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-modal.js file into common.js', 'Bootstrap Modals'),
('tbootstrap_js_popover', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-popover.js file into common.js, this will also include  Tooltips', 'Bootstrap Popovers'),
('tbootstrap_js_scrollspy', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-scrollspy.js file into common.js', 'Bootstrap Scrollspy'),
('tbootstrap_js_tab', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-tab.js file into common.js', 'Bootstrap Togglable tabs'),
('tbootstrap_js_tooltip', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-tooltip.js file into common.js', 'Bootstrap Tooltips'),
('tbootstrap_js_typeahead', 'no', 'JS', 'radio', 'yes,no', 'no', 'jojo_core', 'Include Twitter Bootstap''s bootstrap-typeahead.js file into common.js', 'Bootstrap Typeahead'),
('tbootstrap_miscellaneous_close', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Close X icon for use with Modals, Alerts etc', 'Bootstrap Close icon'),
('tbootstrap_miscellaneous_listgroups', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Advanced list styling - can be combined with Panels', 'Bootstrap List Groups'),
('tbootstrap_miscellaneous_panels', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'Block content formatting - also used for accordians (with Collapse)', 'Bootstrap Panels'),
('tbootstrap_miscellaneous_wells', 'no', 'CSS', 'radio', 'yes,no', 'no', 'jojo_core', 'A simple content block style.', 'Bootstrap Wells'),
('tbootstrap_scaffolding_grid', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'A responsive mobile-first grid system.', 'Bootstrap Grid System'),
('tbootstrap_variables', 'yes', 'CSS', 'radio', 'yes,no', 'yes', 'jojo_core', 'Bootstap''s base files: variables, mixins, scaffolding and utilities.', 'Bootstrap Base'),
('templateengine', 'dwoo', 'Config', 'radio', 'dwoo,smarty', 'dwoo', 'jojo_core', 'Which template engine to use when rendering pages. Smarty is the older one, Dwoo is newer and faster but some older templates may not work in it.', 'Template Engine'),
('titlebranding', 'last', 'SEO', 'radio', 'first,last', 'last', 'jojo_core', 'The name of the site is automatically appended to titles of all pages. This can be placed at the start or end of the title - ie branding first, or branding last.', 'Title branding'),
('title_separator', ' | ', 'SEO', 'text', '', ' | ', 'jojo_core', 'This option controls the character used to separate the page title and the company name/branding. Usually a pipe or dash. Do include spaces either side of the character if you need them.', 'Title separator'),
('twitter_id', '', 'Social Networking', 'text', '', '', 'jojo_core', 'Your Twitter ID', 'Twitter ID'),
('users_require_unique_email', 'yes', 'Security', 'radio', 'yes,no', 'yes', 'jojo_core', 'When this option is enabled, all user accounts require a unique email address. When disabled, users can register multiple account s on one email address.', 'Users require unique email address'),
('use_secondary_nav', 'yes', 'Navigation', 'radio', 'yes,no', 'yes', 'jojo_core', 'Enables / disables the Secondary Nav field on Edit pages. It is recommended this is set to NO unless it is specifically used by the site. Please run SETUP after changing this option.', 'Use secondary navigation'),
('webmasteraddress', 'domains@t1.co.nz', 'Contacts', 'text', '', '', 'jojo_core', 'The email address of the webmaster. Is displayed on 404 pages and other places on the site. It is usually obfuscated to prevent spam, though some plugins may not do this.', 'Webmaster Address'),
('webmastername', 't1', 'Contacts', 'text', '', '', 'jojo_core', 'The full name of the webmaster. Is displayed on 404 pages and other places on the site.', 'Webmaster Name'),
('wysiwyg', 'xinha', 'HTML Editor', 'radio', 'xinha', 'xinha', 'jojo_core', 'If there are several WYSIWYG editors available, this option sets the preference for the site. Currently, only XINHA is available.', 'WYSIWYG Editor'),
('wysiwyg_style', 'inline', 'HTML Editor', 'radio', 'inline,popup', 'inline', 'jojo_core', 'Show the WYSIWYG editor inline, or as a popup window (does not apply to BB Editor).', 'WYSIWYG Editor Style'),
('xinha_allowstyling', 'no', 'HTML Editor', 'radio', 'yes,no', 'no', 'jojo_core', 'if yes the editor wil allow the use of font face/size/colour styling.', 'Allow font styling in Xinha'),
('xinha_strip_href', 'yes', 'HTML Editor', 'radio', 'yes,no', 'yes', 'jojo_core', 'if yes the baseHref will be removed from links. that means you will get relative links, not absolute-links.', 'Strip Base Href in Xinha'),
('xinha_viewtype', 'thumbview', 'HTML Editor', 'radio', 'thumbview,listview', 'thumbview', 'jojo_core', 'Set the default view for image and file libraries to either thumbnail or plain list (much faster for large libraries)', 'Default image/file library view'),
('youtube_link', '', 'Social Networking', 'text', '', '', 'jojo_core', 'the full url of your Youtube channel', 'YouTube link');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `pageid` int(11) NOT NULL,
  `pg_title` varchar(255) NOT NULL DEFAULT '',
  `pg_menutitle` varchar(100) NOT NULL DEFAULT '',
  `pg_desc` varchar(255) NOT NULL DEFAULT '',
  `pg_seotitle` varchar(255) NOT NULL DEFAULT '',
  `pg_url` varchar(255) NOT NULL DEFAULT '',
  `pg_body_code` text,
  `pg_body` text,
  `pg_head` text,
  `pg_link` varchar(255) NOT NULL DEFAULT '',
  `pg_order` int(11) NOT NULL DEFAULT '0',
  `pg_parent` int(11) NOT NULL DEFAULT '0',
  `pg_status` enum('active','inactive','hidden') NOT NULL DEFAULT 'active',
  `pg_ssl` enum('yes','no') NOT NULL DEFAULT 'no',
  `pg_index` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_followto` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_followfrom` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_metakeywords` text,
  `pg_contentcache` enum('yes','no','auto') NOT NULL DEFAULT 'auto',
  `pg_metadesc` text,
  `pg_mainnav` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_mainnavalways` enum('yes','no') NOT NULL DEFAULT 'no',
  `pg_secondarynav` enum('yes','no') NOT NULL DEFAULT 'no',
  `pg_breadcrumbnav` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_footernav` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_sitemapnav` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_xmlsitemapnav` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_livedate` int(11) NOT NULL DEFAULT '0',
  `pg_expirydate` int(11) NOT NULL DEFAULT '0',
  `pg_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pg_permissions` text,
  `pg_language` varchar(10) NOT NULL DEFAULT 'en',
  `pg_htmllang` varchar(10) NOT NULL DEFAULT '',
  `pg_xmlsitemap_lastmod` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_xmlsitemap_priority` enum('1.0','0.9','0.8','0.7','0.6','0.5','0.4','0.3','0.2','0.1','0.0','') DEFAULT NULL,
  `pg_xmlsitemap_changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL,
  `pg_css` varchar(255) DEFAULT NULL,
  `pg_h1` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pg_t1_navigation_image` varchar(255) DEFAULT '',
  `pg_t1_navigation_hover` varchar(255) DEFAULT '',
  `pg_t1_sidebar_left` int(11) DEFAULT '0',
  `pg_t1_sidebar_right` int(11) DEFAULT '0',
  `pg_t1_slideshow` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=482 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pageid`, `pg_title`, `pg_menutitle`, `pg_desc`, `pg_seotitle`, `pg_url`, `pg_body_code`, `pg_body`, `pg_head`, `pg_link`, `pg_order`, `pg_parent`, `pg_status`, `pg_ssl`, `pg_index`, `pg_followto`, `pg_followfrom`, `pg_metakeywords`, `pg_contentcache`, `pg_metadesc`, `pg_mainnav`, `pg_mainnavalways`, `pg_secondarynav`, `pg_breadcrumbnav`, `pg_footernav`, `pg_sitemapnav`, `pg_xmlsitemapnav`, `pg_livedate`, `pg_expirydate`, `pg_updated`, `pg_permissions`, `pg_language`, `pg_htmllang`, `pg_xmlsitemap_lastmod`, `pg_xmlsitemap_priority`, `pg_xmlsitemap_changefreq`, `pg_css`, `pg_h1`, `pg_t1_navigation_image`, `pg_t1_navigation_hover`, `pg_t1_sidebar_left`, `pg_t1_sidebar_right`, `pg_t1_slideshow`) VALUES
(1, 'Home', '', '', '', '', '[editor:html]\n<p>Coming soon...</p> \r\n[[snippet:sub]]\r\n[[t1_snippet:testSnip]] \r\n[[slideshow:test]]\r\n\r\n[[slideshow:t]]\r\n<!--[[videoembed:http://www.youtube.com/v/fYTJ9v2vsaE&#93;&#93]]-->', '<p>Coming soon...</p> \r\n[[snippet:sub]]\r\n[[t1_snippet:testSnip]] \r\n[[slideshow:test]]\r\n\r\n[[slideshow:t]]\r\n<!--[[videoembed:http://www.youtube.com/v/fYTJ9v2vsaE&#93;&#93]]-->', '', 'jojo_plugin_index', 0, 0, 'active', 'no', 'yes', 'yes', 'yes', '', 'no', '', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-17 09:16:04', '', 'en', 'en', 'yes', '', '', '', 'yes', '', '', 0, 0, 0),
(2, 'Admin Root', 'Admin', '', '', 'admin/root', NULL, NULL, NULL, 'jojo_plugin_admin_root', 6, 0, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 0, 0, '2015-02-05 10:44:14', 'everyone.show = 0\neveryone.view = 0\nadmin.show = 1\nadmin.view = 1', 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(3, 'Admin', '', '', '', 'admin', NULL, NULL, NULL, 'jojo_plugin_admin', 6, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:40:17', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(4, 'Content', '', '', '', 'admin/content', NULL, NULL, NULL, 'jojo_plugin_admin_content', 2, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'no', 'yes', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(5, 'Reports', '', '', '', 'admin/reports', NULL, NULL, NULL, 'jojo_plugin_admin_reports', 3, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'no', 'yes', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(6, 'Customize', '', '', '', 'admin/customize', NULL, NULL, NULL, 'jojo_plugin_admin_customize', 4, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(7, 'Configuration', '', '', '', 'admin/configuration', NULL, NULL, NULL, 'jojo_plugin_admin_configuration', 5, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(8, 'Edit Pages', '', '', '', 'admin/edit/page', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 1, 2, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:40:17', NULL, 'en', '', 'yes', NULL, '', 'pages', 'yes', '', '', 0, 0, 0),
(10, 'Users', '', '', '', 'admin/edit/user', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 12, 7, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(11, 'Usergroups', '', '', '', 'admin/edit/usergroups', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 13, 7, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(12, 'Event Log', '', '', '', 'admin/eventlog', NULL, NULL, NULL, 'jojo_plugin_admin_eventlog', 12, 5, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(13, 'Plugins', '', 'Install plugins to enhance the functionality of the website', '', 'admin/plugins', NULL, NULL, NULL, 'jojo_plugin_admin_plugins', 3, 6, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(14, 'Themes', '', 'Install themes to customise the look of the website', '', 'admin/themes', NULL, NULL, NULL, 'jojo_plugin_admin_themes', 4, 6, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(15, 'Languages', '', 'Manage site languages for multi-language sites', '', 'admin/edit/language', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 5, 6, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(16, 'Sub-sections', '', 'Manage site regions/languages/countries for multi-sectioned sites', '', 'admin/edit/lang_country', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 5, 6, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(17, 'Options', '', '', '', 'admin/options', NULL, NULL, NULL, 'jojo_plugin_admin_options', 100, 6, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(18, 'Login', '', '', '', 'login', NULL, NULL, NULL, 'jojo_plugin_login', 7, 0, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-02-05 10:44:14', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(19, 'Logout', '', '', '', 'logout', NULL, NULL, NULL, 'jojo_plugin_logout', 100, 2, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', 'notloggedin.show = 1\neveryone.view = 1', 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(20, 'Tabledata', '', '', '', 'admin/edit/tabledata', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 100, 7, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(21, 'Fielddata', '', '', '', 'admin/edit/fielddata', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 100, 7, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(22, 'Not on Menu', '', '', '', '', NULL, NULL, NULL, '', 8, 0, 'inactive', 'no', 'no', 'yes', 'yes', NULL, 'auto', NULL, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 0, 0, '2015-02-05 10:44:14', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(23, 'Submit Form', '', '', '', 'submit-form', NULL, '', NULL, 'jojo_plugin_submit_form', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(24, 'Submit Form', '', '', '', 'redirect', NULL, '', NULL, 'jojo_plugin_post_redirect', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(25, 'CSS Handler', '', '', '', 'css', NULL, '', NULL, 'jojo_plugin_core_css', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(26, 'JSON Handler', '', '', '', 'json', NULL, '', NULL, 'jojo_plugin_core_json', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(27, 'Frajax Request Handler', '', '', '', 'actions', NULL, '', NULL, 'jojo_plugin_core_action', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(28, 'Image Handler', '', '', '', 'images', NULL, '', NULL, 'jojo_plugin_core_image', 0, 22, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(29, 'External File Handler', '', '', '', 'external', NULL, '', NULL, 'jojo_plugin_core_external', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(30, 'Javascript Handler', '', '', '', 'js', NULL, '', NULL, 'jojo_plugin_core_js', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(31, 'Download Handler', '', '', '', 'downloads', NULL, '', NULL, 'jojo_plugin_core_download', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(32, 'Plugin File Handler', '', '', '', 'files', NULL, '', NULL, 'jojo_plugin_core_file', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(33, 'Plugin Inline File Handler', '', '', '', 'inline', NULL, '', NULL, 'jojo_plugin_core_inline', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(34, 'Favicon Handler', '', '', '', 'favicon.ico', NULL, '', NULL, 'jojo_plugin_core_favicon', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(35, 'Forgot Password', '', '', '', 'forgot-password', NULL, '', NULL, 'jojo_plugin_forgot_password', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(36, 'Change Password', '', '', '', 'change-password', NULL, '', NULL, 'jojo_plugin_change_password', 0, 22, 'active', 'no', 'no', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(37, 'Style Guide', '', '', '', 'styles', '[editor:html]\n    <p>This page is a guide to show the various text styles available and their usage hierarchy.\nTry to break text information up into sections with headings and styles wherever possible for easy skim reading.\n</p>\n<p>Heading 1 is used automatically to display the title used in the Page Heading field for each page and\n<strong>should not be used again in the page content</strong>. &lt;- Strong text (Normal + B)\n</p>\n<h2>Section Heading or Subtitle (Heading 2) <span class="note">Title Addendum (selected text + .note style)</span></h2>\n<p>Body text (Normal). <a href="#">Link Text with Hover effect</a>. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<h3>Sub Section Heading (Heading 3)</h3>\n<p><img title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Default Inserted Image &gt; Text handling. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p><em>Emphasis text</em> (Normal + I). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n<br />\n</p>\n<ul>\n<li>Bulleted List Lorem ipsum dolor sit amet</li>\n</ul>\n<ol></ol>\n<ul>\n<li>consectetur adipisicing elit, sed do eiusmod tempor</li>\n<li>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip </li>\n</ul>\n<h4>Minor Heading (Heading 4)</h4>\n<p><img class="float-right" title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Styled Inserted Image &gt; Text handling (selected image + .float-right style). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="note">Note Text (Normal + .note style) Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="date">Dates (Normal + .date style) Added: 27 June 2007</p>\n<h4>Minor Heading (Heading 4) <span class="note">Title Addendum (selected text +.note style)</span></h4>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n</p>\n<blockquote>Blockquote Text (Increase Indent). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.</blockquote>\n<p class="credit">Credits (Normal + .credit style)</p>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<h5>Paragraph Title (Heading 5)</h5>\n<p>Soft line breaks (Shift+Return),\n<br />consectetur adipisicing elit,\n<br />sed do eiusmod tempor incididunt\n<br />ut labore et dolore magna aliqua. (Return)\n<br />\n</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>This page is a guide to show the various text styles available and their usage hierarchy.\nTry to break text information up into sections with headings and styles wherever possible for easy skim reading.\n</p>\n<p>Heading 1 is used automatically to display the title used in the Page Heading field for each page and\n<strong>should not be used again in the page content</strong>. &lt;- Strong text (Normal + B)\n</p>\n<h2>Section Heading or Subtitle (Heading 2) <span class="note">Title Addendum (selected text + .note style)</span></h2>\n<p>Body text (Normal). <a href="#">Link Text with Hover effect</a>. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<h3>Sub Section Heading (Heading 3)</h3>\n<p><img title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Default Inserted Image &gt; Text handling. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p><em>Emphasis text</em> (Normal + I). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n<br />\n</p>\n<ul>\n<li>Bulleted List Lorem ipsum dolor sit amet</li>\n</ul>\n<ol></ol>\n<ul>\n<li>consectetur adipisicing elit, sed do eiusmod tempor</li>\n<li>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip </li>\n</ul>\n<h4>Minor Heading (Heading 4)</h4>\n<p><img class="float-right" title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Styled Inserted Image &gt; Text handling (selected image + .float-right style). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="note">Note Text (Normal + .note style) Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="date">Dates (Normal + .date style) Added: 27 June 2007</p>\n<h4>Minor Heading (Heading 4) <span class="note">Title Addendum (selected text +.note style)</span></h4>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n</p>\n<blockquote>Blockquote Text (Increase Indent). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.</blockquote>\n<p class="credit">Credits (Normal + .credit style)</p>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<h5>Paragraph Title (Heading 5)</h5>\n<p>Soft line breaks (Shift+Return),\n<br />consectetur adipisicing elit,\n<br />sed do eiusmod tempor incididunt\n<br />ut labore et dolore magna aliqua. (Return)\n<br />\n</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, '', 0, 1, 'active', 'no', 'no', 'no', 'yes', NULL, 'auto', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 0, 0, '2015-01-12 05:25:27', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(38, 'Forms', '', '', '', 'admin/edit/form', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 3, 4, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:40:17', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(39, 'Form Fields', '', '', '', 'admin/edit/formfield', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 1, 38, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:40:17', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(40, 'Contact Log', '', '', '', 'admin/contactlog', NULL, NULL, NULL, 'jojo_plugin_admin_contactlog', 12, 5, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(41, 'Robots.txt', '', '', '', 'robots.txt', NULL, '', NULL, 'jojo_plugin_jojo_robots', 0, 22, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 0, 0, '2015-01-04 03:40:17', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(42, 'Sitemap', '', 'A simple listing of all pages on this website', '', 'sitemap', NULL, NULL, NULL, 'jojo_plugin_jojo_sitemap', 5, 0, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-02-05 10:44:14', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(43, 'XML Sitemap', '', '', '', 'sitemap.xml', NULL, '', NULL, 'jojo_plugin_jojo_sitemapxml', 0, 22, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(44, 'Google_Sitemap_Style.xsl', '', '', '', 'google_sitemap_style.xsl', NULL, '', NULL, 'jojo_plugin_jojo_sitemapxsl', 0, 22, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 0, 0, '2015-01-04 03:34:43', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(45, 'Style Guide', '', '', '', 'styleguide', '[editor:html]\n    <p>This page is a guide to show the various text styles available and their usage hierarchy.\nTry to break text information up into sections with headings and styles wherever possible for easy skim reading.\n</p>\n<p>Heading 1 is used automatically to display the title used in the Page Heading field for each page and\n<strong>should not be used again in the page content</strong>. &lt;- Strong text (Normal + B)\n</p>\n<h2>Section Heading or Subtitle (Heading 2) <span class="note">Title Addendum (selected text + .note style)</span></h2>\n<p>Body text (Normal). <a href="#">Link Text with Hover effect</a>. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<h3>Sub Section Heading (Heading 3)</h3>\n<p><img title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Default Inserted Image &gt; Text handling. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p><em>Emphasis text</em> (Normal + I). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n<br />\n</p>\n<ul>\n<li>Bulleted List Lorem ipsum dolor sit amet</li>\n</ul>\n<ol></ol>\n<ul>\n<li>consectetur adipisicing elit, sed do eiusmod tempor</li>\n<li>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip </li>\n</ul>\n<h4>Minor Heading (Heading 4)</h4>\n<p><img class="float-right" title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Styled Inserted Image &gt; Text handling (selected image + .float-right style). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="note">Note Text (Normal + .note style) Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="date">Dates (Normal + .date style) Added: 27 June 2007</p>\n<h4>Minor Heading (Heading 4) <span class="note">Title Addendum (selected text +.note style)</span></h4>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n</p>\n<blockquote>Blockquote Text (Increase Indent). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.</blockquote>\n<p class="credit">Credits (Normal + .credit style)</p>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<h5>Paragraph Title (Heading 5)</h5>\n<p>Soft line breaks (Shift+Return),\n<br />consectetur adipisicing elit,\n<br />sed do eiusmod tempor incididunt\n<br />ut labore et dolore magna aliqua. (Return)\n<br />\n</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>This page is a guide to show the various text styles available and their usage hierarchy.\nTry to break text information up into sections with headings and styles wherever possible for easy skim reading.\n</p>\n<p>Heading 1 is used automatically to display the title used in the Page Heading field for each page and\n<strong>should not be used again in the page content</strong>. &lt;- Strong text (Normal + B)\n</p>\n<h2>Section Heading or Subtitle (Heading 2) <span class="note">Title Addendum (selected text + .note style)</span></h2>\n<p>Body text (Normal). <a href="#">Link Text with Hover effect</a>. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<h3>Sub Section Heading (Heading 3)</h3>\n<p><img title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Default Inserted Image &gt; Text handling. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p><em>Emphasis text</em> (Normal + I). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n<br />\n</p>\n<ul>\n<li>Bulleted List Lorem ipsum dolor sit amet</li>\n</ul>\n<ol></ol>\n<ul>\n<li>consectetur adipisicing elit, sed do eiusmod tempor</li>\n<li>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip </li>\n</ul>\n<h4>Minor Heading (Heading 4)</h4>\n<p><img class="float-right" title="roll-over text for image" alt="logo" src="images/v8000/logo.png" />Styled Inserted Image &gt; Text handling (selected image + .float-right style). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="note">Note Text (Normal + .note style) Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.\n</p>\n<p class="date">Dates (Normal + .date style) Added: 27 June 2007</p>\n<h4>Minor Heading (Heading 4) <span class="note">Title Addendum (selected text +.note style)</span></h4>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n</p>\n<blockquote>Blockquote Text (Increase Indent). Lorem ipsum dolor sit amet, consectetur adipisicing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris\nnisi ut aliquip ex ea commodo consequat.</blockquote>\n<p class="credit">Credits (Normal + .credit style)</p>\n<p>Body text (Normal). Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<h5>Paragraph Title (Heading 5)</h5>\n<p>Soft line breaks (Shift+Return),\n<br />consectetur adipisicing elit,\n<br />sed do eiusmod tempor incididunt\n<br />ut labore et dolore magna aliqua. (Return)\n<br />\n</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, '', 1, 0, 'active', 'no', 'no', 'no', 'yes', NULL, 'auto', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 0, 0, '2015-01-17 09:16:04', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(311, 'Snippets', '', '', '', 'admin/edit/snippet', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 5, 4, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-09 01:40:03', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(367, 'jojo', '', '', '', 'jojo', '[editor:html]\nAbout the "Powered by Jojo CMS" link\r\n====================================\r\nHundreds of hours of work have gone into producing Jojo, and many more\r\nhours are being spent improving and maintaining the system. We give\r\nJojo away completely free, but we do kindly ask that you keep the link\r\nbelow intact as a sign of good faith. While there is no legal requirement\r\nwithin the license to keep the link, it''s one of the few ways we get "paid"\r\nfor our work, and it costs you nothing to leave it there.\r\nIf you are still wanting to remove the link, please consider one of the\r\nfollowing options before deleting the link outright...\r\n\r\n- providing a simple homepage only link instead of a sitewide link\r\n- placing the link on a subpage of the site (we prefer homepage links,\r\nbut don''t insist)\r\n- adding rel="nofollow'' to the link to prevent any pagerank from passing,\r\nbut visitors can still follow the link\r\n- donating US$100 (or a donation of your choice) towards the project', 'About the "Powered by Jojo CMS" link\r\n====================================\r\nHundreds of hours of work have gone into producing Jojo, and many more\r\nhours are being spent improving and maintaining the system. We give\r\nJojo away completely free, but we do kindly ask that you keep the link\r\nbelow intact as a sign of good faith. While there is no legal requirement\r\nwithin the license to keep the link, it''s one of the few ways we get "paid"\r\nfor our work, and it costs you nothing to leave it there.\r\nIf you are still wanting to remove the link, please consider one of the\r\nfollowing options before deleting the link outright...\r\n\r\n- providing a simple homepage only link instead of a sitewide link\r\n- placing the link on a subpage of the site (we prefer homepage links,\r\nbut don''t insist)\r\n- adding rel="nofollow'' to the link to prevent any pagerank from passing,\r\nbut visitors can still follow the link\r\n- donating US$100 (or a donation of your choice) towards the project', '', '', 2, 0, 'active', 'no', 'yes', 'yes', 'yes', '', 'auto', '', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 0, 0, '2015-01-17 09:16:04', '', 'en', 'en', 'yes', '', '', '', 'yes', '', '', 0, 0, 0),
(380, 'test2', '', '', '', '', '[editor:html]\n', '', '', '', 3, 0, 'active', 'no', 'yes', 'yes', 'yes', '', 'auto', '', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 0, 0, '2015-01-17 09:16:04', '', 'en', 'en', 'yes', '', '', '', 'yes', '', '', 0, 0, 0),
(395, 'Edit Sidebars', '', '', '', 'admin/edit/t1_sidebar', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 2, 4, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-18 00:01:34', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(396, 'Edit Widgets', '', '', '', 'admin/edit/t1_sidebar_widget', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 1, 395, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-18 00:01:34', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(397, 'Edit Widget links', '', '', '', 'admin/edit/t1_sidebar_linking', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 3, 395, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-01-18 00:01:34', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(462, 'Edit Slideshows', '', '', '', 'admin/edit/t1_slideshow', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 4, 4, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-02-12 02:35:20', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0),
(463, 'Edit Slides', '', '', '', 'admin/edit/t1_slideshow_slide', NULL, NULL, NULL, 'jojo_plugin_admin_edit', 1, 462, 'active', 'no', 'yes', 'yes', 'yes', NULL, 'no', NULL, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 0, 0, '2015-02-12 02:35:20', NULL, 'en', '', 'yes', NULL, '', NULL, 'yes', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE `plugin` (
  `name` varchar(100) NOT NULL,
  `majorversion` int(11) NOT NULL DEFAULT '0',
  `minorversion` int(11) NOT NULL DEFAULT '0',
  `revision` int(11) NOT NULL DEFAULT '0',
  `active` enum('yes','no') NOT NULL DEFAULT 'no',
  `priority` int(11) NOT NULL DEFAULT '99'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugin`
--

INSERT INTO `plugin` (`name`, `majorversion`, `minorversion`, `revision`, `active`, `priority`) VALUES
('jojo_contact', 0, 0, 0, 'yes', 99),
('jojo_core', 0, 0, 0, 'yes', 100),
('jojo_robots', 0, 0, 0, 'yes', 99),
('jojo_sitemap', 0, 0, 0, 'yes', 99),
('jojo_slideshow', 0, 0, 0, 'yes', 99),
('t1_global', 0, 0, 0, 'yes', 99),
('t1_navigation_2', 0, 0, 0, 'yes', 99),
('t1_sidebar2', 0, 0, 0, 'yes', 99),
('t1_slideshow', 0, 0, 0, 'yes', 99),
('t1_smartMenu', 0, 0, 0, 'yes', 99);

-- --------------------------------------------------------

--
-- Table structure for table `sessiondata`
--

CREATE TABLE `sessiondata` (
  `session_id` varchar(32) NOT NULL,
  `session_lastmodified` int(11) NOT NULL,
  `session_data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessiondata`
--

INSERT INTO `sessiondata` (`session_id`, `session_lastmodified`, `session_data`) VALUES
('1383e834d3e95a126ddb493314c85f50', 1424232385, ''),
('358613385bd7d70343135f6a1190f4b5', 1424219094, 0x6c6f6767696e67696e7c623a313b7573657269647c733a313a2231223b73686f7768696464656e7c623a313b58696e68613a4261636b656e644b65797c733a31373a224b65795f35346533646239336334663663223b61646d696e747765616b737c613a313a7b733a353a227468656d65223b733a31303a226d792032636f6c756d6e223b7d),
('6659af5bcf5082628c8b0cfeea652b0c', 1424241291, 0x6c6f6767696e67696e7c623a313b7573657269647c733a313a2231223b73686f7768696464656e7c623a313b58696e68613a4261636b656e644b65797c733a31373a224b65795f35346534306665636137666336223b61646d696e747765616b737c613a313a7b733a353a227468656d65223b733a31303a226d792032636f6c756d6e223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `snippet`
--

CREATE TABLE `snippet` (
  `snippetid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `snippet` text NOT NULL,
  `snippet_code` text NOT NULL,
  `section` varchar(100) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `snippet`
--

INSERT INTO `snippet` (`snippetid`, `name`, `snippet`, `snippet_code`, `section`) VALUES
(1, 'sub', '<br />The Sublime Text Power User eBook teaches you how to work smarter and faster using Sublime Text<br /><br />Want to speed up development, write better code, and save 30 minutes every day?<br /><br />Good, I have something just for you :-)', '[editor:html]\n<br />The Sublime Text Power User eBook teaches you how to work smarter and faster using Sublime Text<br /><br />Want to speed up development, write better code, and save 30 minutes every day?<br /><br />Good, I have something just for you :-)', 'en'),
(2, 'sfdfsfg', 'sdfdsdfgfdssdfgsdfg', '[editor:html]\nsdfdsdfgfdssdfgsdfg', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `t1_product`
--

CREATE TABLE `t1_product` (
  `product_ID` int(11) NOT NULL,
  `product_category_ID` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `product_seo` varchar(255) NOT NULL DEFAULT '',
  `product_code` varchar(100) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_url` varchar(255) NOT NULL DEFAULT '',
  `product_content` text NOT NULL,
  `product_content_code` text NOT NULL,
  `product_meta` text NOT NULL,
  `product_order` int(5) NOT NULL,
  `product_photo` varchar(255) NOT NULL DEFAULT '',
  `product_gallery` int(5) NOT NULL,
  `product_youtube` varchar(255) NOT NULL DEFAULT '',
  `product_buy_url` varchar(255) NOT NULL DEFAULT '',
  `product_info_url` varchar(255) NOT NULL DEFAULT '',
  `product_file` varchar(255) NOT NULL DEFAULT '',
  `product_size` varchar(255) NOT NULL DEFAULT '',
  `product_colour` varchar(100) NOT NULL DEFAULT '',
  `product_preorder` enum('yes','no') NOT NULL DEFAULT 'yes',
  `product_takeaway` enum('yes','no') NOT NULL DEFAULT 'yes',
  `product_promoted` enum('yes','no') NOT NULL DEFAULT 'no',
  `product_outofstock` enum('yes','no') NOT NULL DEFAULT 'no',
  `product_active` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t1_product`
--

INSERT INTO `t1_product` (`product_ID`, `product_category_ID`, `product_name`, `product_seo`, `product_code`, `product_price`, `product_url`, `product_content`, `product_content_code`, `product_meta`, `product_order`, `product_photo`, `product_gallery`, `product_youtube`, `product_buy_url`, `product_info_url`, `product_file`, `product_size`, `product_colour`, `product_preorder`, `product_takeaway`, `product_promoted`, `product_outofstock`, `product_active`) VALUES
(1, 2, 'testProduct1', '', '12345', 0.00, 'testproduct1', '<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Nihil hic munitissimus habendi senatus locus, nihil horum? Tu quoque, Brute, fili mi, nihil timor populi, nihil! Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Quae vero auctorem tractata ab fiducia dicuntur.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ab illo tempore, ab est sed immemorabili. Morbi fringilla convallis sapien, id pulvinar odio volutpat. Quisque placerat facilisis egestas cillum dolore. Etiam habebis sem dicantur magna mollis euismod.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Inmensae subtilitatis, obscuris et malesuada fames. Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Tityre, tu patulae recubans sub tegmine fagi  dolor.</p>', '[editor:html]\n<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Nihil hic munitissimus habendi senatus locus, nihil horum? Tu quoque, Brute, fili mi, nihil timor populi, nihil! Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Quae vero auctorem tractata ab fiducia dicuntur.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ab illo tempore, ab est sed immemorabili. Morbi fringilla convallis sapien, id pulvinar odio volutpat. Quisque placerat facilisis egestas cillum dolore. Etiam habebis sem dicantur magna mollis euismod.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Inmensae subtilitatis, obscuris et malesuada fames. Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Tityre, tu patulae recubans sub tegmine fagi  dolor.</p>', '', 0, 'Calliope_Shiraz.jpg', 0, '', '', '', '', '', '', 'yes', 'yes', 'no', 'no', 'yes'),
(2, 2, 'testProduct2', '', '4567', 0.00, 'testproduct2', '<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Nihil hic munitissimus habendi senatus locus, nihil horum? Tu quoque, Brute, fili mi, nihil timor populi, nihil! Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Quae vero auctorem tractata ab fiducia dicuntur.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ab illo tempore, ab est sed immemorabili. Morbi fringilla convallis sapien, id pulvinar odio volutpat. Quisque placerat facilisis egestas cillum dolore. Etiam habebis sem dicantur magna mollis euismod.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Inmensae subtilitatis, obscuris et malesuada fames. Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Tityre, tu patulae recubans sub tegmine fagi  dolor.</p>', '[editor:html]\n<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Nihil hic munitissimus habendi senatus locus, nihil horum? Tu quoque, Brute, fili mi, nihil timor populi, nihil! Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Quae vero auctorem tractata ab fiducia dicuntur.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ab illo tempore, ab est sed immemorabili. Morbi fringilla convallis sapien, id pulvinar odio volutpat. Quisque placerat facilisis egestas cillum dolore. Etiam habebis sem dicantur magna mollis euismod.</p><p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Contra legem facit qui id facit quod lex prohibet. Inmensae subtilitatis, obscuris et malesuada fames. Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Tityre, tu patulae recubans sub tegmine fagi  dolor.</p>', '', 1, 'Calliope_Durif_2010.jpg', 0, '', '', '', '', '', '', 'yes', 'yes', 'no', 'no', 'yes'),
(3, 1, 'testProduct3', '', '', 0.00, 'testproduct3', '', '[editor:html]\n', '', 2, 'Bev_Cab_Sauv_large_NV_(1).jpg', 0, '', '', '', '', '', '', 'yes', 'yes', 'no', 'no', 'yes'),
(4, 1, 'testProduct4', '', '', 0.00, 'testproduct4', '', '[editor:html]\n', '', 3, 'pngnvBev_Sem_Sauv_Blanc_(2).png', 0, '', '', '', '', '', '', 'yes', 'yes', 'no', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t1_product_category`
--

CREATE TABLE `t1_product_category` (
  `pcategory_ID` int(11) NOT NULL,
  `pcategory_parent` int(11) NOT NULL,
  `pcategory_name` varchar(255) NOT NULL DEFAULT '',
  `pcategory_url` varchar(255) NOT NULL DEFAULT '',
  `pcategory_style` enum('none','menu') NOT NULL DEFAULT 'none',
  `pcategory_description` text NOT NULL,
  `pcategory_content` text NOT NULL,
  `pcategory_content_code` text NOT NULL,
  `pcategory_order` int(5) NOT NULL,
  `pcategory_layout` enum('1column','2column') NOT NULL DEFAULT '1column',
  `pcategory_image` varchar(255) NOT NULL DEFAULT '',
  `pcategory_price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `pcategory_active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `pcategory_css` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t1_product_category`
--

INSERT INTO `t1_product_category` (`pcategory_ID`, `pcategory_parent`, `pcategory_name`, `pcategory_url`, `pcategory_style`, `pcategory_description`, `pcategory_content`, `pcategory_content_code`, `pcategory_order`, `pcategory_layout`, `pcategory_image`, `pcategory_price`, `pcategory_active`, `pcategory_css`) VALUES
(1, 0, 'Category 2', 'cat02', 'none', '', '', '[editor:html]\n', 1, '1column', '', 0.00, 'yes', ''),
(2, 0, 'Category 1', 'cat01', 'none', '', '', '', 0, '1column', '', 0.00, 'yes', ''),
(3, 1, 'Category 2s', 'cat02s', 'none', '', '', '[editor:html]\n', 0, '1column', '', 0.00, 'no', ''),
(4, 2, 'Category 1s', 'cat01s', 'none', '', '', '[editor:html]\n', 0, '1column', '', 0.00, 'no', ''),
(5, 1, 'Category 2s2', 'cat02s2', 'none', '', '', '[editor:html]\n', 1, '1column', '', 0.00, 'no', ''),
(6, 2, 'Category 1s2', 'cat01s2', 'none', '', '', '[editor:html]\n', 1, '1column', '', 0.00, 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `t1_product_option`
--

CREATE TABLE `t1_product_option` (
  `productoptionid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `poption_name` varchar(255) NOT NULL DEFAULT '',
  `poption_price` decimal(6,2) NOT NULL,
  `poption_note` varchar(255) NOT NULL DEFAULT '',
  `poption_order` int(5) NOT NULL,
  `poption_display` enum('yes','no') NOT NULL DEFAULT 'yes',
  `poption_active` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_product_tag`
--

CREATE TABLE `t1_product_tag` (
  `producttagid` varchar(100) NOT NULL,
  `ptag_name` varchar(255) NOT NULL DEFAULT '',
  `ptag_symbol` varchar(10) NOT NULL DEFAULT '',
  `ptag_image` varchar(255) NOT NULL DEFAULT '',
  `ptag_active` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_product_tag_link`
--

CREATE TABLE `t1_product_tag_link` (
  `producttagid` varchar(100) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_product_type`
--

CREATE TABLE `t1_product_type` (
  `producttypeid` int(11) NOT NULL,
  `ptype_name` varchar(255) NOT NULL DEFAULT '',
  `ptype_active` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t1_product_type`
--

INSERT INTO `t1_product_type` (`producttypeid`, `ptype_name`, `ptype_active`) VALUES
(1, 'Food', 'yes'),
(2, 'Drink', 'yes'),
(3, 'Platter', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t1_sidebar`
--

CREATE TABLE `t1_sidebar` (
  `sidebar_ID` int(11) NOT NULL,
  `sb_name` varchar(32) NOT NULL,
  `sb_title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_sidebar_linking`
--

CREATE TABLE `t1_sidebar_linking` (
  `link_ID` int(11) NOT NULL,
  `link_widget_ID` int(11) NOT NULL,
  `link_sidebar_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_sidebar_widget`
--

CREATE TABLE `t1_sidebar_widget` (
  `widget_ID` int(11) NOT NULL,
  `sidebarid` int(11) NOT NULL,
  `wg_name` varchar(32) NOT NULL,
  `wg_type` enum('editor','subpages','siblingpages','slideshow','snippet','gallery','articles','products') NOT NULL DEFAULT 'editor',
  `wg_class` varchar(100) NOT NULL DEFAULT '',
  `wg_order` int(11) NOT NULL DEFAULT '0',
  `wg_title` enum('yes','no') NOT NULL DEFAULT 'no',
  `wg_promoted` enum('yes','no') NOT NULL DEFAULT 'no',
  `wg_active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `wg_content_code` text NOT NULL,
  `wg_content` text NOT NULL,
  `wg_slideshow` varchar(100) NOT NULL DEFAULT '',
  `wg_plugin` varchar(255) NOT NULL DEFAULT '',
  `wg_subpage_filler` enum('yes','no') NOT NULL DEFAULT 'no',
  `wg_products_subs` enum('yes','no') NOT NULL DEFAULT 'no',
  `wg_products_products` enum('yes','no') NOT NULL DEFAULT 'no',
  `wg_snippet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t1_slideshow`
--

CREATE TABLE `t1_slideshow` (
  `slideshowid` int(11) NOT NULL,
  `sh_name` varchar(255) NOT NULL DEFAULT '',
  `sh_width` int(5) NOT NULL,
  `sh_height` int(5) NOT NULL,
  `sh_delay` int(6) NOT NULL DEFAULT '3000',
  `sh_fadespeed` int(5) NOT NULL DEFAULT '200',
  `sh_force` enum('yes','no') NOT NULL DEFAULT 'yes',
  `sh_tabs` enum('yes','no') NOT NULL DEFAULT 'no',
  `sh_arrows` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t1_slideshow`
--

INSERT INTO `t1_slideshow` (`slideshowid`, `sh_name`, `sh_width`, `sh_height`, `sh_delay`, `sh_fadespeed`, `sh_force`, `sh_tabs`, `sh_arrows`) VALUES
(1, 'banner', 960, 250, 0, 0, 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t1_slideshow_slide`
--

CREATE TABLE `t1_slideshow_slide` (
  `slideid` int(11) NOT NULL,
  `slideshowid` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL DEFAULT '',
  `sl_image` varchar(255) NOT NULL DEFAULT '',
  `sl_url` varchar(255) NOT NULL DEFAULT '',
  `sl_title` text NOT NULL,
  `sl_test` text NOT NULL,
  `sl_test_name` varchar(255) NOT NULL DEFAULT '',
  `sl_order` int(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t1_slideshow_slide`
--

INSERT INTO `t1_slideshow_slide` (`slideid`, `slideshowid`, `sl_name`, `sl_image`, `sl_url`, `sl_title`, `sl_test`, `sl_test_name`, `sl_order`) VALUES
(1, 1, 's1', 'IMG_1053.JPG', '', '', '', '', 2),
(2, 1, 's2', 'IMG_1044.JPG', '', '', '', '', 1),
(3, 1, 's3', 'IMG_1041.JPG', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabledata`
--

CREATE TABLE `tabledata` (
  `tabledataid` int(11) NOT NULL,
  `td_name` varchar(255) NOT NULL DEFAULT '',
  `td_displayname` varchar(255) NOT NULL DEFAULT '',
  `td_primarykey` varchar(255) NOT NULL DEFAULT '',
  `td_displayfield` varchar(255) NOT NULL DEFAULT '',
  `td_parentfield` varchar(100) NOT NULL DEFAULT '',
  `td_plugin` varchar(100) NOT NULL DEFAULT '',
  `td_categorytable` varchar(100) NOT NULL DEFAULT '',
  `td_categoryfield` varchar(100) NOT NULL DEFAULT '',
  `td_m2mcategoryfield` varchar(100) NOT NULL DEFAULT '',
  `td_rolloverfield` varchar(100) NOT NULL DEFAULT '',
  `td_filter` enum('yes','no') NOT NULL DEFAULT 'no',
  `td_orderbyfields` varchar(255) NOT NULL DEFAULT '',
  `td_deleteoption` enum('yes','no') NOT NULL DEFAULT 'no',
  `td_addsimilar` enum('yes','no') NOT NULL DEFAULT 'yes',
  `td_menutype` varchar(255) NOT NULL DEFAULT 'auto',
  `td_group1` varchar(100) NOT NULL DEFAULT '',
  `td_help` text,
  `td_group2` varchar(100) NOT NULL DEFAULT '',
  `td_filterby` varchar(255) NOT NULL DEFAULT '',
  `td_groupowner` varchar(255) NOT NULL DEFAULT '',
  `td_userowner` varchar(255) NOT NULL DEFAULT '',
  `td_golivefield` varchar(255) NOT NULL DEFAULT '',
  `td_expiryfield` varchar(255) NOT NULL DEFAULT '',
  `td_activefield` varchar(255) NOT NULL DEFAULT '',
  `td_privacyfield` varchar(255) NOT NULL DEFAULT '',
  `td_languagefield` varchar(255) NOT NULL DEFAULT '',
  `td_autoupdate` enum('yes','no') NOT NULL DEFAULT 'yes',
  `td_defaultpermissions` text
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabledata`
--

INSERT INTO `tabledata` (`tabledataid`, `td_name`, `td_displayname`, `td_primarykey`, `td_displayfield`, `td_parentfield`, `td_plugin`, `td_categorytable`, `td_categoryfield`, `td_m2mcategoryfield`, `td_rolloverfield`, `td_filter`, `td_orderbyfields`, `td_deleteoption`, `td_addsimilar`, `td_menutype`, `td_group1`, `td_help`, `td_group2`, `td_filterby`, `td_groupowner`, `td_userowner`, `td_golivefield`, `td_expiryfield`, `td_activefield`, `td_privacyfield`, `td_languagefield`, `td_autoupdate`, `td_defaultpermissions`) VALUES
(1, 'auth_token', '', 'token', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(2, 'contentcache', '', 'contentcacheid', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(3, 'cropdata', '', 'hash', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(4, 'eventlog', '', 'eventlogid', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(5, 'fielddata', 'Field Data', 'fielddataid', 'fd_field', '', '', '', '', '', 'fd_name', 'no', 'fd_table,fd_order,fd_field', 'no', 'no', 'tree', 'fd_table', NULL, 'fd_tabname', '', '', '', '', '', '', '', '', 'yes', 'everyone.show=1\neveryone.view=1\neveryone.edit=1\neveryone.add=1\neveryone.delete=1\nadmin.show=1\nadmin.view=1\nadmin.edit=1\nadmin.add=1\nadmin.delete=1\nnotloggedin.show=1\nnotloggedin.view=1\nnotloggedin.edit=1\nnotloggedin.add=1\nnotloggedin.delete=1\nregistered.show=1\nregistered.view=1\nregistered.edit=1\nregistered.add=1\nregistered.delete=1\nsysinstall.show=1\nsysinstall.view=1\nsysinstall.edit=1\nsysinstall.add=1\nsysinstall.delete=1\n'),
(6, 'fielddata_flags', '', 'flag', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(7, 'form', 'Forms', 'form_id', 'form_name', '', 'Jojo_contact', '', '', '', '', 'no', 'form_id', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', 'everyone.show=1\neveryone.view=1\neveryone.edit=1\neveryone.add=1\neveryone.delete=1\nadmin.show=1\nadmin.view=1\nadmin.edit=1\nadmin.add=1\nadmin.delete=1\nnotloggedin.show=1\nnotloggedin.view=1\nnotloggedin.edit=1\nnotloggedin.add=1\nnotloggedin.delete=1\nregistered.show=1\nregistered.view=1\nregistered.edit=1\nregistered.add=1\nregistered.delete=1\nsysinstall.show=1\nsysinstall.view=1\nsysinstall.edit=1\nsysinstall.add=1\nsysinstall.delete=1\n'),
(8, 'formfield', 'Form Fields', 'formfield_id', 'ff_display', '', '', 'form', 'ff_form_id', '', '', 'no', 'ff_order', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', 'everyone.show=1\neveryone.view=1\neveryone.edit=1\neveryone.add=1\neveryone.delete=1\nadmin.show=1\nadmin.view=1\nadmin.edit=1\nadmin.add=1\nadmin.delete=1\nnotloggedin.show=1\nnotloggedin.view=1\nnotloggedin.edit=1\nnotloggedin.add=1\nnotloggedin.delete=1\nregistered.show=1\nregistered.view=1\nregistered.edit=1\nregistered.add=1\nregistered.delete=1\nsysinstall.show=1\nsysinstall.view=1\nsysinstall.edit=1\nsysinstall.add=1\nsysinstall.delete=1\n'),
(9, 'formsubmission', '', 'formsubmissionid', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(10, 'lang_country', 'Site Sub-Section', 'lc_code', 'IF(lc_englishname!='''',lc_englishname,lc_name)', '', '', '', '', '', '', 'no', 'displayorder, lc_englishname, lc_name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(11, 'language', 'Language', 'languageid', 'IF(english_name!='''',english_name,name)', '', '', '', '', '', '', 'no', 'displayorder, english_name, name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(12, 'option', '', 'op_name', 'op_name', '', '', '', '', '', 'op_value', 'no', 'op_name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(13, 'page', '', 'pageid', 'IF(pg_menutitle!='''',pg_menutitle,pg_title)', 'pg_parent', 'Core', '', '', '', 'IF(pg_menutitle!='''',pg_title,'''')', 'no', 'pg_order,pg_title', 'yes', 'yes', 'tree', '', '"Edit pages" is a core part of the site. Pages can be added and edited, and any changes will appear immediately after saving.<br/><br/>All pages must have a title. The title will be used as the main heading on the page, so it is important the title is relevant and contains the right keywords for the Search Engines. If the title is too long to fit on the menu, then enter a "Menu Title" as well, which will be used on the button. The "SEO Title" is a search engine optimised title for the blue bar at the top of the screen. It will often be the title that Google uses for it''s listings.<br/><br/>Pages can be set to display on the menu, or can be linked to from other pages directly. A privacy policy page is a common example of a page that would not be displayed on the menu, but usually linked from the bottom of the page instead.<br/>', '', '', '', '', 'pg_livedate', 'pg_expirydate', 'pg_status', '', 'pg_language', 'yes', 'everyone.show=1\neveryone.view=1\nadmin.add=1\nadmin.edit=1\nadmin.delete=1'),
(14, 'plugin', '', 'name', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(15, 'sessiondata', '', 'session_id', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(16, 'snippet', '', 'snippetid', 'name', '', '', '', '', '', '', 'no', '', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', 'section', 'yes', 'everyone.show=1\neveryone.view=1\neveryone.edit=1\neveryone.add=1\neveryone.delete=1\nadmin.show=1\nadmin.view=1\nadmin.edit=1\nadmin.add=1\nadmin.delete=1\nnewsletter.show=1\nnewsletter.view=1\nnewsletter.edit=1\nnewsletter.add=1\nnewsletter.delete=1\nnotloggedin.show=1\nnotloggedin.view=1\nnotloggedin.edit=1\nnotloggedin.add=1\nnotloggedin.delete=1\nregistered.show=1\nregistered.view=1\nregistered.edit=1\nregistered.add=1\nregistered.delete=1\nsysinstall.show=1\nsysinstall.view=1\nsysinstall.edit=1\nsysinstall.add=1\nsysinstall.delete=1\n'),
(17, 'tabledata', 'Table Data', 'tabledataid', 'td_name', '', '', '', '', '', 'td_displayname', 'no', 'td_name', 'no', 'no', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(18, 'theme', '', 'name', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(19, 'user', '', 'userid', 'if(CHAR_LENGTH(us_login) > 0, us_login, us_email)', '', '', '', '', '', 'CONCAT(us_firstname,'' '',us_lastname)', 'no', 'us_login', 'no', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(20, 'usergroup_membership', '', 'usergroup_membershipid', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(21, 'usergroups', '', 'groupid', 'gr_name', '', '', '', '', '', 'gr_name', 'no', 'gr_name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(166, 'jojo_slideshow', 'Slideshow', 'slideshowid', 'name', '', '', '', '', '', '', 'yes', 'name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(167, 'jojo_slideshowimage', 'Slideshow image', 'slideshowimageid', 'name', '', '', 'jojo_slideshow', 'slideshowid', '', '', 'yes', 'displayorder, name', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(180, 't1_sidebar', 'Sidebar', 'sidebar_ID', 'sb_title', '', 't1_sidebar', '', '', '', '', 'no', 'sb_title', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(181, 't1_sidebar_linking', 'Sidebar Linking', 'link_ID', '', '', '', '', '', '', '', 'no', 'link_sidebar_ID', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(182, 't1_sidebar_widget', 'Sidebar Widget', 'widget_ID', 'wg_name', '', '', 't1_sidebar', 'sidebarid', '', '', 'no', 'wg_order', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(201, 't1_product', 'Product', 'product_ID', 'product_name', '', '', '', '', '', '', 'no', 'product_order', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(202, 't1_product_category', 'Product Category', 'pcategory_ID', 'pcategory_name', 'pcategory_parent', '', 't1_product', 'pcategory_ID', '', '', 'no', 'pcategory_order', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(203, 't1_product_option', 'Product Option', 'productoptionid', 'poption_name', '', '', 't1_product', 'productid', '', '', 'no', 'poption_order', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', 'poption_active', '', '', 'yes', NULL),
(204, 't1_product_tag', 'Product Tag', 'producttagid', 'ptag_name', '', '', '', '', '', '', 'no', 'ptag_name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', 'ptag_active', '', '', 'yes', NULL),
(205, 't1_product_tag_link', '', 't1_product_tag_linkid', '', '', '', '', '', '', '', 'no', '', 'no', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(206, 't1_product_type', 'Product Type', 'producttypeid', 'ptype_name', '', '', '', '', '', '', 'no', 'ptype_name', 'yes', 'yes', 'list', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(207, 't1_slideshow', 'Slideshow', 'slideshowid', 'sh_name', '', '', '', '', '', '', 'no', 'sh_name', 'yes', 'yes', 'auto', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL),
(208, 't1_slideshow_slide', 'Slideshow Slide', 'slideid', 'sl_name', '', '', 't1_slideshow', 'slideshowid', '', '', 'no', 'sl_order, sl_name', 'yes', 'yes', 'tree', '', NULL, '', '', '', '', '', '', '', '', '', 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `name` varchar(100) NOT NULL,
  `majorversion` int(11) NOT NULL DEFAULT '0',
  `minorversion` int(11) NOT NULL DEFAULT '0',
  `revision` int(11) NOT NULL DEFAULT '0',
  `active` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`name`, `majorversion`, `minorversion`, `revision`, `active`) VALUES
('2column', 0, 0, 0, 'no'),
('my 2column', 0, 0, 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `us_login` varchar(100) NOT NULL DEFAULT '',
  `us_password` varchar(255) NOT NULL DEFAULT '',
  `us_salt` varchar(16) NOT NULL DEFAULT '',
  `us_lastfailure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `us_failures` int(11) NOT NULL DEFAULT '0',
  `us_locked` int(11) NOT NULL DEFAULT '0',
  `us_firstname` varchar(100) NOT NULL DEFAULT '',
  `us_lastname` varchar(100) NOT NULL DEFAULT '',
  `us_email` varchar(100) NOT NULL DEFAULT '',
  `us_reminder` varchar(255) NOT NULL DEFAULT '',
  `us_reset` varchar(255) NOT NULL DEFAULT '',
  `us_timezone` int(11) NOT NULL DEFAULT '12',
  `us_groups` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `us_login`, `us_password`, `us_salt`, `us_lastfailure`, `us_failures`, `us_locked`, `us_firstname`, `us_lastname`, `us_email`, `us_reminder`, `us_reset`, `us_timezone`, `us_groups`) VALUES
(1, 't1', '$2a$10$DaF.GVdJqVEK5ueHxQ4CT.XO40EtcwKXJBwTj8yeKHNBaATe0VVJO', '', '0000-00-00 00:00:00', 0, 0, 'T1', 'Ltd', 'domains@t1.co.nz', '', '', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `groupid` varchar(20) NOT NULL DEFAULT '',
  `gr_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`groupid`, `gr_name`) VALUES
('admin', 'Administrators'),
('notloggedin', 'Not Logged In'),
('registered', 'Registered Users'),
('sysinstall', 'System Installers'),
('t1client', 'T1 Client');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup_membership`
--

CREATE TABLE `usergroup_membership` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `groupid` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroup_membership`
--

INSERT INTO `usergroup_membership` (`userid`, `groupid`) VALUES
(1, 'admin'),
(1, 'registered'),
(1, 'sysinstall'),
(1, 't1client'),
(2, 't1client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `contentcache`
--
ALTER TABLE `contentcache`
  ADD PRIMARY KEY (`cc_url`,`cc_userid`);

--
-- Indexes for table `cropdata`
--
ALTER TABLE `cropdata`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `eventlog`
--
ALTER TABLE `eventlog`
  ADD PRIMARY KEY (`eventlogid`), ADD KEY `el_code` (`el_code`), ADD KEY `el_datetime` (`el_datetime`), ADD KEY `el_importance` (`el_importance`);

--
-- Indexes for table `fielddata`
--
ALTER TABLE `fielddata`
  ADD PRIMARY KEY (`fielddataid`), ADD KEY `fd_table` (`fd_table`), ADD KEY `fd_field` (`fd_field`);

--
-- Indexes for table `fielddata_flags`
--
ALTER TABLE `fielddata_flags`
  ADD PRIMARY KEY (`flag`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `formfield`
--
ALTER TABLE `formfield`
  ADD PRIMARY KEY (`formfield_id`);

--
-- Indexes for table `formsubmission`
--
ALTER TABLE `formsubmission`
  ADD PRIMARY KEY (`formsubmissionid`);

--
-- Indexes for table `jojo_slideshow`
--
ALTER TABLE `jojo_slideshow`
  ADD PRIMARY KEY (`slideshowid`), ADD KEY `name` (`name`);

--
-- Indexes for table `jojo_slideshowimage`
--
ALTER TABLE `jojo_slideshowimage`
  ADD PRIMARY KEY (`slideshowimageid`), ADD KEY `slideshowid` (`slideshowid`), ADD KEY `displayorder` (`displayorder`), ADD KEY `name` (`name`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`languagetableid`), ADD KEY `active` (`active`), ADD KEY `languageid` (`languageid`);

--
-- Indexes for table `lang_country`
--
ALTER TABLE `lang_country`
  ADD PRIMARY KEY (`lc_id`), ADD KEY `active` (`active`), ADD KEY `lc_code` (`lc_code`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`op_name`), ADD KEY `category` (`op_category`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pageid`), ADD KEY `pg_language` (`pg_language`), ADD KEY `pg_url` (`pg_url`), ADD KEY `pg_link` (`pg_link`), ADD KEY `pg_parent` (`pg_parent`), ADD KEY `pg_mainnav` (`pg_mainnav`), ADD KEY `pg_mainnavalways` (`pg_mainnavalways`), ADD KEY `pg_secondarynav` (`pg_secondarynav`), ADD KEY `pg_footernav` (`pg_footernav`), ADD KEY `pg_order` (`pg_order`), ADD KEY `pg_sitemapnav` (`pg_sitemapnav`), ADD KEY `pg_index` (`pg_index`), ADD KEY `pg_status` (`pg_status`), ADD KEY `pg_mainnav_2` (`pg_mainnav`,`pg_mainnavalways`), ADD KEY `pg_livedate` (`pg_livedate`,`pg_expirydate`), ADD FULLTEXT KEY `title` (`pg_title`), ADD FULLTEXT KEY `body` (`pg_title`,`pg_desc`,`pg_body`);

--
-- Indexes for table `plugin`
--
ALTER TABLE `plugin`
  ADD PRIMARY KEY (`name`), ADD KEY `active` (`active`);

--
-- Indexes for table `sessiondata`
--
ALTER TABLE `sessiondata`
  ADD PRIMARY KEY (`session_id`), ADD KEY `session_lastmodified` (`session_lastmodified`);

--
-- Indexes for table `snippet`
--
ALTER TABLE `snippet`
  ADD PRIMARY KEY (`snippetid`);

--
-- Indexes for table `t1_product`
--
ALTER TABLE `t1_product`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `t1_product_category`
--
ALTER TABLE `t1_product_category`
  ADD PRIMARY KEY (`pcategory_ID`);

--
-- Indexes for table `t1_product_option`
--
ALTER TABLE `t1_product_option`
  ADD PRIMARY KEY (`productoptionid`);

--
-- Indexes for table `t1_product_tag`
--
ALTER TABLE `t1_product_tag`
  ADD PRIMARY KEY (`producttagid`);

--
-- Indexes for table `t1_product_type`
--
ALTER TABLE `t1_product_type`
  ADD PRIMARY KEY (`producttypeid`);

--
-- Indexes for table `t1_sidebar`
--
ALTER TABLE `t1_sidebar`
  ADD PRIMARY KEY (`sidebar_ID`);

--
-- Indexes for table `t1_sidebar_linking`
--
ALTER TABLE `t1_sidebar_linking`
  ADD PRIMARY KEY (`link_ID`);

--
-- Indexes for table `t1_sidebar_widget`
--
ALTER TABLE `t1_sidebar_widget`
  ADD PRIMARY KEY (`widget_ID`);

--
-- Indexes for table `t1_slideshow`
--
ALTER TABLE `t1_slideshow`
  ADD PRIMARY KEY (`slideshowid`), ADD KEY `sh_name` (`sh_name`);

--
-- Indexes for table `t1_slideshow_slide`
--
ALTER TABLE `t1_slideshow_slide`
  ADD PRIMARY KEY (`slideid`);

--
-- Indexes for table `tabledata`
--
ALTER TABLE `tabledata`
  ADD PRIMARY KEY (`tabledataid`), ADD KEY `td_name` (`td_name`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`name`), ADD KEY `active` (`active`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`), ADD KEY `us_login` (`us_login`), ADD KEY `us_email` (`us_email`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `usergroup_membership`
--
ALTER TABLE `usergroup_membership`
  ADD PRIMARY KEY (`userid`,`groupid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventlog`
--
ALTER TABLE `eventlog`
  MODIFY `eventlogid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fielddata`
--
ALTER TABLE `fielddata`
  MODIFY `fielddataid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1776;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `formfield`
--
ALTER TABLE `formfield`
  MODIFY `formfield_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1004;
--
-- AUTO_INCREMENT for table `formsubmission`
--
ALTER TABLE `formsubmission`
  MODIFY `formsubmissionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jojo_slideshow`
--
ALTER TABLE `jojo_slideshow`
  MODIFY `slideshowid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jojo_slideshowimage`
--
ALTER TABLE `jojo_slideshowimage`
  MODIFY `slideshowimageid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1003;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `languagetableid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lang_country`
--
ALTER TABLE `lang_country`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `pageid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `snippet`
--
ALTER TABLE `snippet`
  MODIFY `snippetid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t1_product`
--
ALTER TABLE `t1_product`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t1_product_category`
--
ALTER TABLE `t1_product_category`
  MODIFY `pcategory_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t1_product_option`
--
ALTER TABLE `t1_product_option`
  MODIFY `productoptionid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t1_product_type`
--
ALTER TABLE `t1_product_type`
  MODIFY `producttypeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t1_sidebar`
--
ALTER TABLE `t1_sidebar`
  MODIFY `sidebar_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t1_sidebar_linking`
--
ALTER TABLE `t1_sidebar_linking`
  MODIFY `link_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t1_sidebar_widget`
--
ALTER TABLE `t1_sidebar_widget`
  MODIFY `widget_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t1_slideshow`
--
ALTER TABLE `t1_slideshow`
  MODIFY `slideshowid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t1_slideshow_slide`
--
ALTER TABLE `t1_slideshow_slide`
  MODIFY `slideid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tabledata`
--
ALTER TABLE `tabledata`
  MODIFY `tabledataid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
