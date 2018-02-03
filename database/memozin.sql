-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2017 at 01:14 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memozin`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `empid` varchar(80) NOT NULL,
  `att_time` time NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`empid`, `att_time`, `date`, `remark`) VALUES
('EMP16', '14:07:34', '2017-09-16', 'walkin'),
('EMP19', '14:17:31', '2017-09-16', 'walkin'),
('EMP19', '14:17:45', '2017-09-16', 'walkout'),
('EMP16', '15:30:43', '2017-09-16', 'walkout'),
('EMP5', '15:31:05', '2017-09-16', 'walkin'),
('EMP5', '15:33:41', '2017-09-16', 'walkout'),
('sadmin', '15:33:58', '2017-09-16', 'walkin'),
('sadmin', '16:06:38', '2017-09-16', 'walkout'),
('admin', '21:52:47', '2017-09-20', 'walkin'),
('admin', '22:07:39', '2017-09-20', 'walkout'),
('EMP19', '23:54:34', '2017-09-20', 'walkin'),
('EMP19', '00:03:25', '2017-09-21', 'walkin'),
('EMP16', '00:15:57', '2017-09-21', 'walkin'),
('admin', '00:48:31', '2017-09-21', 'walkin'),
('EMP5', '00:56:11', '2017-09-21', 'walkin'),
('admin', '01:18:32', '2017-09-21', 'walkout'),
('EMP19', '01:22:21', '2017-09-21', 'walkout'),
('EMP5', '01:25:00', '2017-09-21', 'walkout'),
('EMP5', '10:08:54', '2017-09-22', 'walkin'),
('EMP19', '10:22:45', '2017-09-22', 'walkin'),
('EMP16', '10:22:56', '2017-09-22', 'walkin'),
('EMP5', '10:38:12', '2017-09-22', 'walkout'),
('EMP2', '00:25:02', '2017-09-23', 'walkin'),
('EMP19', '00:57:46', '2017-09-23', 'walkin'),
('admin', '01:10:50', '2017-09-23', 'walkin'),
('EMP16', '01:46:48', '2017-09-23', 'walkin'),
('admin', '02:17:16', '2017-09-23', 'walkout'),
('sadmin', '13:51:12', '2017-09-23', 'walkin'),
('sadmin', '14:03:50', '2017-09-23', 'walkout'),
('EMP16', '14:48:51', '2017-09-23', 'walkout'),
('EMP19', '17:36:50', '2017-09-23', 'walkout'),
('admin', '18:15:05', '2017-10-01', 'walkin'),
('admin', '18:16:09', '2017-10-01', 'walkout'),
('EMP19', '18:16:33', '2017-10-01', 'walkin'),
('EMP19', '18:17:11', '2017-10-01', 'walkout'),
('admin', '09:40:15', '2017-10-06', 'walkin'),
('sadmin', '09:47:23', '2017-10-06', 'walkin'),
('sadmin', '10:01:15', '2017-10-06', 'walkout'),
('EMP19', '10:03:39', '2017-10-06', 'walkin'),
('EMP16', '10:13:08', '2017-10-06', 'walkin'),
('EMP16', '12:45:59', '2017-10-06', 'walkout'),
('admin', '21:53:22', '2017-10-06', 'walkout'),
('EMP19', '23:42:43', '2017-10-06', 'walkout'),
('sadmin', '01:39:21', '2017-10-07', 'walkout'),
('EMP19', '01:39:38', '2017-10-07', 'walkin'),
('EMP19', '02:22:37', '2017-10-07', 'walkout'),
('EMP2', '02:22:54', '2017-10-07', 'walkin'),
('admin', '16:01:58', '2017-10-13', 'walkin'),
('sadmin', '16:05:44', '2017-10-13', 'walkin'),
('EMP19', '00:00:00', '2017-10-31', 'leave'),
('EMP16', '16:22:55', '2017-10-13', 'walkin'),
('EMP19', '16:24:25', '2017-10-13', 'walkin'),
('EMP16', '00:00:00', '2017-10-19', 'leave'),
('EMP16', '00:00:00', '2017-10-20', 'leave'),
('EMP19', '16:25:13', '2017-10-13', 'walkout'),
('EMP16', '16:42:11', '2017-10-13', 'walkout'),
('EMP5', '00:00:00', '2017-10-19', 'UNPLANNED LEAVE'),
('EMP19', '00:00:00', '2017-10-24', 'UNPLANNED LEAVE'),
('sadmin', '17:07:59', '2017-10-13', 'walkout'),
('EMP5', '17:08:19', '2017-10-13', 'walkin'),
('EMP5', '17:09:48', '2017-10-13', 'walkout'),
('admin', '17:10:47', '2017-10-13', 'walkout'),
('EMP2', '17:14:35', '2017-10-13', 'walkin'),
('EMP2', '17:39:16', '2017-10-13', 'walkout'),
('sadmin', '00:31:30', '2017-11-09', 'walkin'),
('EMP5', '01:01:58', '2017-11-09', 'walkin'),
('EMP5', '15:03:16', '2017-11-09', 'walkout'),
('EMP2', '15:03:29', '2017-11-09', 'walkin'),
('EMP2', '15:04:17', '2017-11-09', 'walkout'),
('admin', '15:11:27', '2017-11-09', 'walkin'),
('admin', '13:39:21', '2017-11-11', 'walkin'),
('sadmin', '13:51:11', '2017-11-11', 'walkin'),
('EMP19', '13:52:49', '2017-11-11', 'walkin'),
('EMP5', '14:01:33', '2017-11-11', 'walkin'),
('EMP19', '16:50:04', '2017-11-11', 'walkout'),
('sadmin', '17:29:01', '2017-11-11', 'walkout'),
('admin', '17:29:23', '2017-11-11', 'walkout'),
('EMP5', '17:39:46', '2017-11-11', 'walkout');

-- --------------------------------------------------------

--
-- Table structure for table `curr_id`
--

CREATE TABLE `curr_id` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curr_id`
--

INSERT INTO `curr_id` (`id`, `pid`) VALUES
(20, 94);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department` varchar(100) NOT NULL,
  `subdepartment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department`, `subdepartment`) VALUES
('Developer', 'PHP Developer'),
('Developer', '.Net Developer'),
('Developer', 'Android Developer'),
('Developer', 'iOS Developer'),
('Developer', 'Java Developer'),
('Designer', 'Graphics Designer'),
('Designer', 'UI/Web Designer'),
('Data Operator', ''),
('Business Developer', ''),
('HR', ''),
('SEO', ''),
('Tele Marketing', '');

-- --------------------------------------------------------

--
-- Table structure for table `emptask`
--

CREATE TABLE `emptask` (
  `taskid` varchar(50) NOT NULL,
  `pid` varchar(60) NOT NULL,
  `task_name` varchar(60) NOT NULL,
  `complexity` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `assignee` varchar(60) NOT NULL,
  `assigned_by` varchar(60) NOT NULL,
  `alloted_hours` int(11) NOT NULL,
  `actual_hours` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `task_detail` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'submitted',
  `reviewer` varchar(40) DEFAULT NULL,
  `interested_party` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emptask`
--

INSERT INTO `emptask` (`taskid`, `pid`, `task_name`, `complexity`, `priority`, `type`, `assignee`, `assigned_by`, `alloted_hours`, `actual_hours`, `date`, `time`, `task_detail`, `status`, `reviewer`, `interested_party`) VALUES
('SAD0', 'BL76', 'fhei', 'high', 'urgent', 'development', 'EMP10', 'sadmin', 789, 0, '2017-08-22', '21:18:17', ' r3uhurhu', 'submitted', 'NULL', NULL),
('SAD0', 'DE93', '123', 'medium', 'medium', 'development', 'EMP5', 'sadmin', 20, 20, '2017-11-11', '09:28:18', ' 789', 'InProgress', 'NULL', NULL),
('SAD0', 'EK87', '123', 'high', 'urgent', 'development', 'EMP16', 'sadmin', 123, 0, '2017-08-31', '08:26:05', ' 123', 'submitted', 'NULL', NULL),
('SAD0', 'EM79', 'web', 'high', 'urgent', 'development', 'EMP15', 'sadmin', 10, 0, '2017-08-25', '11:05:34', ' 789456', 'submitted', 'NULL', NULL),
('SAD0', 'IM35', 'jkjkjk', 'high', 'urgent', 'development', '', 'sadmin', 11, 0, '2017-07-29', '10:11:33', ' ioioioio', 'Submitted', 'NULL', ''),
('SAD0', 'IN55', 'a', 'high', 'urgent', 'development', 'EMP3', 'sadmin', 50, 0, '2017-08-12', '10:30:47', ' qwert', 'InProgress', 'NULL', ''),
('SAD0', 'IN56', 'h', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 10, 0, '2017-08-12', '10:34:47', ' dfh', 'submitted', 'NULL', 'Harshit/1540,'),
('SAD0', 'IN72', '753', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 78, 0, '2017-08-14', '23:14:47', ' qwertyuiop', 'submitted', 'NULL', NULL),
('SAD0', 'IN73', '123', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 1, 0, '2017-08-15', '11:18:59', ' 4*5*6*9', 'submitted', 'NULL', NULL),
('SAD0', 'I_54', 'qwer', 'high', 'urgent', 'development', '1520', 'sadmin', 75, 0, '2017-08-11', '21:06:57', ' qwertyuiop', 'submitted', 'NULL', 'zzzz'),
('SAD0', 'JQ89', 'create', 'high', 'urgent', 'development', 'EMP19', 'sadmin', 10, 246, '2017-09-16', '12:21:22', ' create a jquery event to list all the employees', 'InProgress', 'NULL', NULL),
('SAD0', 'KK74', 'kkkk', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 75, 0, '2017-08-17', '16:35:25', ' kkkkkkkkk', 'submitted', 'NULL', NULL),
('SAD0', 'ME28', 'FrontEnd', 'high', 'urgent', 'development', '', 'sadmin', 10, 0, '2017-07-01', '16:07:31', ' Do this by images.h', 'InProgress', 'NULL', ''),
('SAD0', 'NE29', 'Trask2', 'high', 'urgent', 'development', '1520', 'sadmin', 50, 0, '2017-07-02', '22:17:25', ' This is new task', 'Submitted', 'NULL', ''),
('SAD0', 'NE31', 'it is a emp5', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 10, 50, '2017-07-28', '20:41:29', ' you r emp5', 'InProgress', 'NULL', ''),
('SAD0', 'NE32', 'emp2', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 10, 0, '2017-07-28', '20:45:42', ' dpdpd', 'submitted', 'NULL', ''),
('SAD0', 'NO92', 'dev', 'medium', 'low', 'development', 'EMP5', 'sadmin', 15, 0, '2017-11-11', '09:25:53', ' code to produce', 'submitted', 'NULL', NULL),
('SAD0', 'PR33', 'hjk', 'high', 'urgent', 'development', 'E', 'sadmin', 20, 0, '2017-07-29', '10:03:07', ' erty', 'submitted', 'NULL', ''),
('SAD0', 'PR34', 'hjkuui', 'high', 'urgent', 'development', 'E', 'sadmin', 22, 0, '2017-07-29', '10:07:58', ' weewewew', 'submitted', 'NULL', ''),
('SAD0', 'QD90', 'hjk', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 15, 80, '2017-09-16', '12:23:43', ' bnkoiuyhkl', 'InProgress', 'NULL', NULL),
('SAD0', 'QW78', 'ertyu', 'high', 'urgent', 'development', 'EMP7', 'sadmin', 123, 0, '2017-08-23', '18:41:46', ' tfgybjknj', 'submitted', 'NULL', NULL),
('SAD0', 'RT50', 'rghn', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 48, 0, '2017-08-11', '13:34:34', ' tyuio', 'submitted', 'NULL', 'harshit gujral/1520, '),
('SAD0', 'ST75', 'cs', 'high', 'urgent', 'development', '1520', 'sadmin', 10, 0, '2017-08-17', '21:07:46', ' 789456', 'submitted', 'NULL', NULL),
('SAD0', 'ZA45', 'side bar', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 50, 0, '2017-08-12', '10:23:37', ' create a side bar for navigation', 'submitted', 'NULL', 'harshit gujral/1520'),
('SAD0', 'ZA48', 'hakuna', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 100, 0, '2017-08-10', '16:59:21', ' qwertyuiop', 'submitted', 'NULL', 'zzzzz'),
('SAD1', 'DE93', '456', 'low', 'urgent', 'ongoing', 'EMP2', 'sadmin', 30, 0, '2017-11-11', '09:28:18', ' 741', 'submitted', 'NULL', NULL),
('SAD1', 'EM79', 'development', 'high', 'urgent', 'development', 'EMP16', 'sadmin', 20, 0, '2017-08-25', '11:05:34', ' 123654', 'Submitted', 'NULL', NULL),
('SAD1', 'IM35', 'nmnmnm', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 22, 0, '2017-07-29', '10:11:33', ' yuyuyuyu', 'Review', 'NULL', ''),
('SAD1', 'IN55', 'b', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 75, 0, '2017-08-12', '10:30:48', ' asdfgg', 'submitted', 'NULL', 'harshit gujral/1520,'),
('SAD1', 'IN56', 'b', 'high', 'urgent', 'development', '1520', 'sadmin', 20, 0, '2017-08-12', '10:34:48', ' iop', 'InProgress', 'NULL', 'Harshit/1540,zzzz'),
('SAD1', 'IN72', '159', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 98, 0, '2017-08-14', '23:14:47', ' zxcvbnm', 'submitted', 'NULL', NULL),
('SAD1', 'IN73', '456', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 2, 0, '2017-08-15', '11:18:59', ' 7*8*9*6', 'submitted', 'NULL', NULL),
('SAD1', 'I_54', 'asdf', 'high', 'urgent', 'development', '1530', 'sadmin', 65, 0, '2017-08-11', '21:06:57', ' asdfghjkl', 'submitted', 'NULL', 'harshit gujral/1520, harshit/1530, '),
('SAD1', 'KK74', 'kkkk', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 758, 0, '2017-08-17', '16:36:03', ' lkkkkkkk', 'submitted', 'NULL', NULL),
('SAD1', 'PR33', 'yui', 'high', 'urgent', 'development', 'M', 'sadmin', 30, 0, '2017-07-29', '10:03:07', ' vbnm', 'submitted', 'NULL', ''),
('SAD1', 'PR34', 'asasas', 'high', 'urgent', 'development', 'M', 'sadmin', 33, 0, '2017-07-29', '10:07:58', ' cvcvcvcvv', 'submitted', 'NULL', ''),
('SAD1', 'QW78', 'ghjk', 'high', 'urgent', 'development', 'EMP8', 'sadmin', 520, 0, '2017-08-23', '18:41:46', ' bjnjnnk', 'submitted', 'NULL', NULL),
('SAD1', 'RT50', 'efb', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 56, 0, '2017-08-11', '13:34:34', ' ythnmklp', 'submitted', 'NULL', 'harshit gujral/1520, '),
('SAD1', 'ST75', 'it', 'high', 'urgent', 'development', '1540', 'sadmin', 20, 0, '2017-08-17', '21:07:46', ' 246810', 'submitted', 'NULL', NULL),
('SAD1', 'ZA48', 'matata', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 120, 0, '2017-08-10', '16:59:22', ' asdfghjkl', 'submitted', 'NULL', 'harshit gujral/1520, Harshit/1540, harshit/1530, '),
('SAD2', 'IN55', 'c', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 100, 0, '2017-08-12', '10:30:48', ' zxcvbn', 'submitted', 'NULL', 'harshit gujral/1520, harshit/1530, '),
('SAD2', 'IN73', '789', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 8, 0, '2017-08-15', '11:20:42', ' 1*2*3*4', 'submitted', 'NULL', NULL),
('SAD2', 'I_54', 'man', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 56, 0, '2017-08-11', '21:09:45', ' mangomore', 'submitted', 'NULL', 'kkkk'),
('SAD2', 'KK74', 'kkkk', 'high', 'urgent', 'development', 'EMP2', 'sadmin', 758, 0, '2017-08-17', '16:36:03', ' lkkkkkkk', 'submitted', 'NULL', NULL),
('SAD2', 'QW78', 'ouijk', 'high', 'urgent', 'development', 'EMP9', 'sadmin', 789, 0, '2017-08-23', '18:41:46', ' uknl', 'submitted', 'NULL', NULL),
('SAD2', 'ST75', 'ec', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 30, 0, '2017-08-17', '21:07:46', ' 3691215', 'submitted', 'NULL', NULL),
('SAD3', 'IN55', 'd', 'high', 'urgent', 'development', 'EMP3', 'sadmin', 125, 0, '2017-08-12', '10:31:36', 'poiuy ', 'submitted', 'NULL', 'harshit gujral/1520, harshit/1530, '),
('SAD3', 'ST75', 'bio', 'high', 'urgent', 'development', 'EMP5', 'sadmin', 40, 0, '2017-08-17', '21:07:46', ' 48121620', 'submitted', 'NULL', NULL),
('SAD4', 'ST75', 'mtech', 'high', 'urgent', 'development', 'EMP4', 'sadmin', 69, 0, '2017-08-17', '21:09:04', ' 75369541', 'submitted', 'NULL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `emp_code` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(12) DEFAULT NULL,
  `past_salary` varchar(12) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `company_address` varchar(400) DEFAULT NULL,
  `company_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`emp_code`, `company`, `start_date`, `end_date`, `past_salary`, `designation`, `company_address`, `company_description`) VALUES
('1520', 'webque', '09/05/2017', '22/06/2017', '2000', 'developer', '', ''),
('1530', 'memo', '05/02/2017', '06/07/2017', '40', 'dldldl', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `interested_party`
--

CREATE TABLE `interested_party` (
  `pid` varchar(100) DEFAULT NULL,
  `taskid` varchar(100) DEFAULT NULL,
  `empid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interested_party`
--

INSERT INTO `interested_party` (`pid`, `taskid`, `empid`) VALUES
('KA65', 'KA65', '1520'),
('KA65', 'KA65', '1530'),
('KA65', 'KA65', '1540'),
('KA66', 'KA66', '1520'),
('KA66', 'KA66', '1530'),
('KA66', 'KA66', '1540'),
('KA67', 'KA67', '1520'),
('KA67', 'KA67', '1530'),
('KA67', 'KA67', '1540'),
('SA68', 'SA68', '1520'),
('SA68', 'SA68', '1530'),
('SA69', 'SA69', '1520'),
('SA69', 'SA69', '1530'),
('SA70', 'SA70', '1520'),
('SA70', 'SA70', '1530'),
('SA71', 'SA71', '1520'),
('SA71', 'SA71', '1530'),
('IN72', 'IN72', '1520'),
('IN72', 'IN72', '1530'),
('IN72', 'IN72', '1540'),
('IN72', 'SAD1', '1520'),
('IN72', 'SAD1', '1530'),
('IN72', 'SAD1', '1540'),
('IN72', 'SAD1', 'EMP2'),
('IN73', 'IN73', '1520'),
('IN73', 'IN73', '1540'),
('IN73', 'SAD0', '1520'),
('IN73', 'SAD0', '1540'),
('IN73', 'SAD0', 'admin'),
('IN73', 'SAD1', '1520'),
('IN73', 'SAD1', '1540'),
('IN73', 'SAD1', ''),
('IN73', 'SAD2', '1520'),
('IN73', 'SAD2', '1540'),
('IN73', 'SAD2', 'sadmin'),
('KK74', 'KK74', '1520'),
('KK74', 'KK74', '1540'),
('KK74', 'SAD0', '1520'),
('KK74', 'SAD1', '1520'),
('KK74', 'SAD1', '1540'),
('KK74', 'SAD2', '1520'),
('KK74', 'SAD2', '1540'),
('ST75', 'ST75', 'EMP2'),
('ST75', 'ST75', 'EMP3'),
('ST75', 'SAD0', 'EMP2'),
('ST75', 'SAD0', 'EMP3'),
('ST75', 'SAD1', 'EMP2'),
('ST75', 'SAD1', 'EMP3'),
('ST75', 'SAD2', 'EMP2'),
('ST75', 'SAD2', 'EMP3'),
('ST75', 'SAD3', 'EMP2'),
('ST75', 'SAD3', 'EMP3'),
('ST75', 'SAD4', 'EMP2'),
('ST75', 'SAD4', 'EMP3'),
('ST75', 'SAD4', 'EMP2'),
('BL76', 'BL76', '1540'),
('BL76', 'SAD0', '1540'),
('ML77', 'ML77', '1520'),
('ML77', 'ML77', '1530'),
('ML77', 'ML77', '1540'),
('QW78', 'QW78', '1520'),
('QW78', 'QW78', 'EMP11'),
('QW78', 'SAD0', '1520'),
('QW78', 'SAD0', 'EMP11'),
('QW78', 'SAD0', 'admin'),
('QW78', 'SAD1', '1520'),
('QW78', 'SAD2', '1520'),
('QW78', 'SAD2', 'EMP11'),
('EM79', 'EM79', 'EMP17'),
('EM79', 'EM79', 'EMP18'),
('EM79', 'SAD0', 'EMP17'),
('EM79', 'SAD0', 'EMP18'),
('EM79', 'SAD1', 'EMP17'),
('GV80', 'GV80', 'EMP16'),
('VG81', 'VG81', 'EMP19'),
('VG81', 'VG81', 'EMP18'),
('CF82', 'CF82', 'EMP19'),
('CF83', 'CF83', 'EMP19'),
('CF84', 'CF84', 'EMP19'),
('HJ85', 'HJ85', 'EMP11'),
('BG86', 'BG86', 'EMP11'),
('EK87', 'EK87', 'EMP19'),
('EK87', 'SAD0', 'EMP19'),
('JQ88', 'JQ88', 'EMP16'),
('JQ88', 'JQ88', 'EMP5'),
('JQ89', 'JQ89', 'EMP5'),
('JQ89', 'JQ89', 'EMP16'),
('JQ89', 'SAD0', 'EMP5'),
('JQ89', 'SAD0', 'EMP16'),
('QD90', 'QD90', 'EMP5'),
('QD90', 'SAD0', 'EMP5'),
('GH91', 'GH91', 'EMP10'),
('NO92', 'SAD0', 'EMP19'),
('DE93', 'SAD0', 'EMP5'),
('DE93', 'SAD1', 'EMP5');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `applicant` varchar(20) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `reason` text NOT NULL,
  `send_to` varchar(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`applicant`, `leave_from`, `leave_to`, `type`, `reason`, `send_to`, `status`) VALUES
('EMP5', '2017-09-12', '2017-09-14', 'sick leave', 'qqqqqq', 'EMP2', 0),
('EMP5', '2017-08-24', '2017-09-11', '7', 'qqq', 'EMP5', 0),
('EMP5', '2017-08-09', '2017-09-17', '6', 'asddf', 'ADMIN', 1),
('EMP5', '2017-08-21', '2017-09-13', 'STUDY LEAVE', 'qweryy', 'EMP2', 1),
('EMP5', '2017-08-21', '2017-09-13', 'STUDY LEAVE', 'qweryy', 'EMP2', 1),
('EMP5', '2017-08-22', '2017-09-24', 'MATERNITY LEAVE', 'asdfghj', 'ADMIN', 1),
('EMP5', '2017-08-08', '2017-09-12', 'RELIGIOUS HOLIDAYS', 'as', 'ADMIN', 1),
('EMP5', '2017-08-09', '2017-09-14', 'MATERNITY LEAVE', 'asdfghj', 'EMP2', 1),
('EMP2', '2017-08-09', '2017-09-26', 'STUDY LEAVE', 'qwertyuiop[', 'EMP2', 1),
('emp2', '2017-09-27', '2017-09-30', 'FAMILY RESPONSIBILITY', 'asdfghjkl;', 'ADMIN', 1),
('EMP16', '2017-08-24', '2017-09-25', 'FAMILY RESPONSIBILITY', 'I have a function at home', 'EMP19', 1),
('EMP16', '2017-08-24', '2017-09-28', 'ANNUAL LEAVE', 'My leaves are pending.', 'EMP19', 1),
('EMP16', '2017-08-23', '2017-09-26', 'ANNUAL LEAVE', 'My leaves are Pending.', 'EMP19', -1),
('EMP16', '2017-08-31', '2017-10-02', 'RELIGIOUS HOLIDAYS', 'Durga Pooja', 'EMP19', -1),
('EMP19', '2017-08-30', '2017-09-01', 'STUDY LEAVE', 'Exam preperation', 'admin,', 0),
('EMP19', '2017-09-24', '2017-09-25', 'RELIGIOUS HOLIDAYS', 'Pooja Durga', 'admin,', 0),
('EMP19', '2017-09-24', '2017-09-25', 'RELIGIOUS HOLIDAYS', 'Pooja Durga', 'admin,', 0),
('EMP19', '2017-09-24', '2017-09-25', 'RELIGIOUS HOLIDAYS', 'Pooja Durga', 'admin', 1),
('EMP19', '2017-09-24', '2017-09-25', 'RELIGIOUS HOLIDAYS', 'Ganesh Chaturti', 'admin', 1),
('EMP19', '2017-10-07', '2017-10-07', 'ANNUAL LEAVE', 'xcyubun', 'admin', 1),
('EMP19', '2017-10-08', '2017-10-08', 'FAMILY RESPONSIBILITY', 'kuch bhi karlo', 'admin', 1),
('EMP19', '2017-10-09', '2017-10-09', 'MATERNITY LEAVE', 'Shaadi mein jana hai', 'admin', -1),
('EMP16', '2017-10-10', '2017-10-10', 'RELIGIOUS HOLIDAYS', 'pooja hai ghar pe', 'admin', 1),
('EMP19', '2017-10-16', '2017-10-16', 'STUDY LEAVE', 'padhna hai', 'admin', 1),
('EMP16', '2017-10-10', '2017-10-10', 'MATERNITY LEAVE', 'jaunga me toh', 'admin', 1),
('EMP16', '2017-10-15', '2017-10-15', 'STUDY LEAVE', 'economics', 'admin', 1),
('EMP19', '2017-10-09', '2017-10-09', 'MATERNITY LEAVE', 'Bhai ki shaadi', 'admin', -1),
('EMP16', '2017-10-13', '2017-10-13', 'FAMILY RESPONSIBILITY', 'My son is sick.', 'admin', 1),
('EMP19', '2017-10-31', '2017-10-31', 'ANNUAL LEAVE', 'tirath yatra', 'admin', 1),
('EMP19', '2017-10-23', '2017-10-17', 'ANNUAL LEAVE', 'vbkjbjkbkjbuk', 'admin', 0),
('EMP16', '2017-10-15', '2017-10-16', 'RELIGIOUS HOLIDAYS', 'Diwali', 'EMP19', 0),
('EMP16', '2017-10-19', '2017-10-20', 'FAMILY RESPONSIBILITY', 'KKKKKK', 'EMP19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logtable`
--

CREATE TABLE `logtable` (
  `taskid` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `assignee` varchar(20) NOT NULL,
  `asigned_by` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `transfer_remark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logtable`
--

INSERT INTO `logtable` (`taskid`, `pid`, `date`, `time`, `assignee`, `asigned_by`, `status`, `transfer_remark`) VALUES
('SAD0', 'AA92', '2017-11-10', '18:47:18', 'EMP9', 'sadmin', '', ''),
('SAD0', 'QQ93', '2017-11-10', '18:55:54', 'EMP5', 'sadmin', '', ''),
('SAD0', 'QQ93', '2017-11-10', '18:58:33', 'EMP2', 'EMP5', '', ''),
('SAD0', '1196', '2017-11-10', '19:14:42', '1540', 'sadmin', 'fresh task', 'NULL'),
('SAD0', '1297', '2017-11-10', '19:19:19', 'EMP5', 'sadmin', 'fresh task', 'NULL'),
('SAD0', '1294', '2017-11-10', '19:20:32', 'EMP16', 'EMP5', 'ReviewInProgress', 'asdfghjkl'),
('SAD0', 'NO92', '2017-11-11', '09:25:53', 'EMP5', 'sadmin', 'fresh task', 'NULL'),
('SAD0', 'DE93', '2017-11-11', '09:28:18', 'EMP19', 'sadmin', 'fresh task', 'NULL'),
('SAD1', 'DE93', '2017-11-11', '09:28:18', 'EMP2', 'sadmin', 'fresh task', 'NULL'),
('SAD0', 'DE93', '2017-11-11', '09:29:34', 'EMP5', 'EMP19', 'InProgress', 'Completed the backen');

-- --------------------------------------------------------

--
-- Table structure for table `new_employee`
--

CREATE TABLE `new_employee` (
  `full_name` varchar(50) DEFAULT NULL,
  `empid` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `ephone` varchar(12) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `marital` varchar(12) DEFAULT NULL,
  `spouse_name` varchar(50) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `sub_department` varchar(50) DEFAULT NULL,
  `joining` varchar(12) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `voter` varchar(20) DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL,
  `cur_address` varchar(100) DEFAULT NULL,
  `cur_city` varchar(50) DEFAULT NULL,
  `cur_state` varchar(50) DEFAULT NULL,
  `cur_pin` varchar(20) DEFAULT NULL,
  `per_address` varchar(100) DEFAULT NULL,
  `per_city` varchar(50) DEFAULT NULL,
  `per_state` varchar(50) DEFAULT NULL,
  `per_pin` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `refer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_employee`
--

INSERT INTO `new_employee` (`full_name`, `empid`, `email`, `phone`, `ephone`, `father_name`, `dob`, `sex`, `marital`, `spouse_name`, `blood_group`, `department`, `sub_department`, `joining`, `pan`, `aadhar`, `voter`, `salary`, `cur_address`, `cur_city`, `cur_state`, `cur_pin`, `per_address`, `per_city`, `per_state`, `per_pin`, `nationality`, `refer`) VALUES
('harshit', '', 'harsh@gm.com', '1234567896', '1234567896', 'dkdkkd', '21/06/2017', 'male', 'unmarried', '', 'B+', 'Designer', 'Graphics Designer', '06/06/2017', 'ldldl45632', '', '', '4563', 'ddlddl', 'ddlddl', 'Himachal Pradesh', '456321', 'dlldld', 'blty', 'Haryana', '456321', '', ''),
('harshit gujral', '1520', 'harshitgujral12@gmail.com', '4563214578', '1234567896', 'J Gujral', '17/06/1997', 'male', 'unmarried', '', 'B+', 'Developer', 'PHP Developer', '03/06/1997', '1234567896', '', '', '50000', 'abcsd', 'blyo', 'Uttar Pradesh', '243001', 'iopj', 'blyd', 'Uttar Pradesh', '542301', '', ''),
('harshit', '1530', 'princejain17dec@gmail.com', '1234567896', '1234567896', 'fhfh', '07/06/2017', 'male', 'married', 'jfjfj ssp', 'B+', 'Developer', 'iOS Developer', '05/06/2017', 'abcd123652', '', '', '45632', 'jdjdj', 'lflflf', 'Jammu and Kashmir', '123456', 'kfkfkfk', 'ababba', 'Haryana', '456321', '', ''),
('Harshit', '1540', 'hg@gm.com', '1234567896', '1234567896', 'J Gujral', '07/06/2017', 'male', 'unmarried', '', 'B+', 'Developer', '.Net Developer', '06/06/2017', '1234563321', '', '', '4563', 'tupdo', 'blyl', 'Karnataka', '412365', 'opskl', 'bare', 'Jammu and Kashmir', '243021', '', ''),
('zyz', 'admin', 'harshith@gm.com', '1234567896', '1234567896', 'fkfkf', '21/06/2017', 'male', 'unmarried', '', 'B+', 'Developer', '.Net Developer', '06/06/2017', 'abc4563213', '', '', '4563', 'dkdkdl', 'dkdkdl', 'Uttar Pradesh', '456325', 'dkdkdl', 'dkdkdl', 'Uttar Pradesh', '456321', '', ''),
('rj', 'EMP10', 'rj@rj', '7412589630', '7412589630', 'kl', '01/08/2007', 'male', 'unmarried', '', 'jk', 'Developer', 'PHP Developer', '01/08/2017', '7412589630', '789456123123', '789456123123', '75698', '7815', 'sdede', 'Delhi', '741258', 'wewe', 'eeee', 'Goa', '789456', '', ''),
('Pulkit Jain', 'EMP11', 'pulkitjain17dec@gmail.com', '8506844373', '7011671298', 'R.K Jain', '17/12/1995', 'male', 'unmarried', '', 'A+', 'Developer', '.Net Developer', '01/08/2017', '7894561230', '741852963741', '741852963123', '2000', 'H.No 4358', 'KosiKalan', 'Uttar Pradesh', '281403', 'H.No 4358, Baldev Ganj', 'KosiKalan', 'Uttar Pradesh', '281403', 'Indian', ''),
('', 'EMP12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' ', '', '', '', ' ', '', '', ''),
('', 'EMP13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' ', '', '', '', ' ', '', '', ''),
('pj', 'EMP14', 'pj@pj', '7412589630', '7539678451', 'RK Jain', '01/08/2017', 'male', 'unmarried', '', 'A+', 'Developer', '.Net Developer', '23/08/2017', '7894561230', '741258967894', '123654789654', '2000', 'jkko', 'hjhj', 'Jammu and Kashmir', '201309', 'fddyd', 'Noida', 'Uttar Pradesh', '201309', 'indian', ''),
('erty', 'EMP15', 'qw@er', '1234567890', '0987654321', 'rgh', '01/01/2000', 'male', 'unmarried', '', 'A+', 'Developer', '.Net Developer', '01/08/2017', '1234567890', '123456789098', '123456789098', '800', 'kiom', 'thyu', 'Arunachal Pradesh', '201309', 'yuio', 'tyhju', 'Daman and Diu', '412563', 'indian', ''),
('Pulkit Jain', 'EMP16', 'pk@kg', '8506844373', '4563210789', 'klj', '01/01/2005', 'male', 'unmarried', '', 'A+', 'Developer', '.Net Developer', '01/05/2008', '7845935698', '', '', '2005', 'H.No 4358', 'KosiKalan', 'Uttar Pradesh', '281403', 'H.No 4358, Baldev Ganj', 'fghk', 'Lakshadweep', '741258', 'indian', ''),
('pklo', 'EMP17', 'hj@ty', '7894561230', '1032564789', 'df', '01/08/2000', 'male', 'unmarried', '', 'A+', 'Developer', 'iOS Developer', '01/08/2017', '7896541230', '789456123456', '789456123789', '2000', 'H.No 4358', 'KosiKalan', 'Daman and Diu', '281403', 'H.No 4358, Baldev Ganj', 'KosiKalan', 'Uttar Pradesh', '281403', 'Indian', ''),
('piklo', 'EMP18', 'piklo@yahoo', '8965741230', '4563217890', 'Bulma', '01/01/2001', 'male', 'unmarried', '', 'A+', 'HR', '', '22/07/2017', '4563210789', '123654789632', '125478963023', '500', 'tyui', 'hjkl', 'Daman and Diu', '345678', 'rtyu', 'bnmv', 'Lakshadweep', '325698', 'Indian', ''),
('Pulkit Jain', 'EMP19', 'princejain17dec@gmail.com', '8506844373', '1236547890', 'gdjsn', '01/08/2002', 'male', 'unmarried', '', 'A+', 'Developer', 'PHP Developer', '17/08/2017', '4563210789', '', '', '2500', 'H.No 4358', 'KosiKalan', 'Uttar Pradesh', '281403', 'H.No 4358, Baldev Ganj', 'KosiKalan', 'Uttar Pradesh', '281403', 'India', ''),
('hahah', 'EMP2', 'ahhaahh@haha.com', '1234563321', '1234563321', 'dkdk', '14/06/2017', 'male', 'unmarried', '', 'B+', 'Business Developer', '', '05/06/2017', 'alsls56322', '', '', '896', 'dlss', 'dlss', 'Karnataka', '123654', 'dlss', 'dlss', 'Haryana', '456321', '', ''),
('dkgdkjhcs', 'EMP20', 'edcou@cjxncsjl', '4684468464', '4684668684', 'bbiu', '01/08/2000', 'male', 'unmarried', '', 'A+', 'Developer', 'PHP Developer', '12/02/2000', '1230546987', '', '', '2500', 'kiom', 'KosiKalan', 'Gujarat', '120369', '4569', '1230', 'Kerala', '456321', 'Indian', ''),
('hahah', 'EMP3', 'ahhaahh@haha.com', '1234563321', '1234563321', 'dkdk', '14/06/2017', 'male', 'unmarried', '', 'B+', 'Business Developer', '', '05/06/2017', 'alsls56322', '', '', '896', 'dlss', 'dlss', 'Karnataka', '123654', 'dlss', 'dlss', 'Haryana', '456321', '', ''),
('hahah', 'EMP4', 'ahhaahh@haha.com', '1234563321', '1234563321', 'dkdk', '14/06/2017', 'male', 'unmarried', '', 'B+', 'Business Developer', '', '05/06/2017', 'alsls56322', '', '', '896', 'dlss', 'dlss', 'Karnataka', '123654', 'dlss', 'dlss', 'Haryana', '456321', '', ''),
('hahah', 'EMP5', 'ahhaahh@haha.com', '1234563321', '1234563321', 'dkdk', '14/06/2017', 'male', 'unmarried', '', 'B+', 'Business Developer', '', '05/06/2017', 'alsls56322', '', '', '896', 'dlss', 'dlss', 'Karnataka', '123654', 'dlss', 'dlss', 'Haryana', '456321', '', ''),
('Pulkit Jain', 'EMP6', 'princejain17dec@gmail.com', '8506844373', '4437378945', 'RK Jain', '17/12/1995', 'male', 'unmarried', '', 'A+', 'Developer', 'PHP Developer', '22/07/2017', '7894561237', '789456123789', '789456123789', '10000', 'H.No 4358', 'KosiKalan', 'Uttar Pradesh', '281403', 'H.No 4358, Baldev Ganj', 'KosiKalan', 'Uttar Pradesh', '281403', 'India', ''),
('fjfddo', 'EMP7', 'xjzxjoz@xozk', '7418644138', '5414848443', 'ccm', '01/08/2017', 'male', 'unmarried', '', 'mk', 'Developer', 'PHP Developer', '18/08/2017', '7412589632', '486484664864', '789945562223', '744154', 'jkmv', 'vfvvf', 'Kerala', '741258', 'ffrfr', 'edse', 'Jammu and Kashmir', '441313', 'indian', ''),
('dewded', 'EMP8', 'deed@frf', '7894561230', '7816846868', '4848', '01/08/2017', 'male', 'unmarried', '', 'lk', 'Developer', 'Java Developer', '12/08/2017', '7186484681', '789456123055', '555555555555', '555', 'mmmmm', 'kkkkkk', 'Kerala', '895626', 'mkmkm', 'zzzzz', 'Karnataka', '777777', 'indian', ''),
('qwerty', 'EMP9', 'qwerty@qwerty', '7894561230', '7412589630', 'hjkll', '01/08/2017', 'male', 'unmarried', '', 'A+', 'Developer', 'PHP Developer', '19/08/2017', '7894561230', '789456123025', '753694123658', '1022', 'dxdd', 'cdddcd', 'Kerala', '789654', 'ddddd', 'ddddd', 'Kerala', '741258', 'indian', ''),
('abcd xyz', 'sadmin', 'hsr@gm.com', '1234567896', '4563214789', 'Jdud', '29/06/2017', 'male', 'unmarried', '', 'B+', 'HR', '', '14/06/2017', 'abcd456321', '', '', '78965', 'dhdhdh', 'dhdhdh', 'Karnataka', '456321', 'dhdhdh', 'dhdhdh', 'Gujarat', '456321', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` varchar(60) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `startdate` date NOT NULL,
  `deadline` date NOT NULL,
  `closingdate` date NOT NULL,
  `task_count` int(11) NOT NULL DEFAULT '0',
  `interested_party` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `pname`, `startdate`, `deadline`, `closingdate`, `task_count`, `interested_party`) VALUES
('AL43', 'alto', '2017-08-22', '2017-09-21', '0000-00-00', 0, 'Harshit/1540, hahah/EMP2, '),
('AL44', 'alz', '2017-08-10', '2017-08-31', '0000-00-00', 0, 'harshit/1530, hahah/EMP2, '),
('BG86', 'bghidl', '2017-08-01', '2017-08-31', '0000-00-00', 0, 'Pulkit Jain/EMP11, '),
('BL76', 'Blood Donation', '2017-08-01', '2017-08-31', '0000-00-00', 1, 'Harshit/1540, '),
('CF82', 'cfthn', '2017-07-01', '2017-07-15', '0000-00-00', 0, 'Pulkit Jain/EMP19, '),
('CF83', 'cfthn', '2017-07-01', '2017-07-15', '0000-00-00', 0, 'Pulkit Jain/EMP19, '),
('CF84', 'cfthn', '2017-07-01', '2017-07-15', '0000-00-00', 0, 'Pulkit Jain/EMP19, '),
('DE93', 'december', '2017-12-01', '2017-11-15', '0000-00-00', 2, ''),
('EK87', 'ek', '2017-08-01', '2017-08-31', '0000-00-00', 1, 'Pulkit Jain/EMP19, '),
('EM79', 'EMEMOZIN', '2017-08-25', '2017-08-31', '0000-00-00', 2, 'pklo/EMP17, piklo/EMP18, '),
('GH91', 'ghjk', '2017-10-06', '2017-10-07', '0000-00-00', 0, 'rj/EMP10, '),
('GV80', 'gvvgrbgr', '2017-08-01', '2017-08-31', '0000-00-00', 0, 'Pulkit Jain/EMP16, '),
('HJ85', 'hjkljnkooj', '2017-08-01', '2017-08-31', '0000-00-00', 0, 'Pulkit Jain/EMP11, '),
('HO7', 'hosps', '2017-06-06', '2017-06-30', '0000-00-00', 0, ''),
('IM35', 'important', '2017-07-31', '2017-10-24', '0000-00-00', 2, ''),
('IM41', 'imp', '2017-08-24', '2017-09-14', '0000-00-00', 0, ''),
('IM42', 'impz', '2017-08-22', '2017-09-21', '0000-00-00', 0, ''),
('IM52', 'impr', '2017-08-24', '2017-08-31', '0000-00-00', 0, 'harshit gujral/1520, '),
('IN55', 'information', '2017-08-13', '2017-08-31', '0000-00-00', 4, 'harshit gujral/1520, harshit/1530, '),
('IN56', 'info', '2017-08-18', '2017-08-31', '0000-00-00', 2, 'Harshit/1540,'),
('IN72', 'internshipzzz', '2017-08-16', '2017-08-31', '0000-00-00', 2, ''),
('IN73', 'intern', '2017-08-15', '2017-08-31', '0000-00-00', 3, 'harshit gujral/1520, Harshit/1540, '),
('I_54', 'i_quit', '2017-08-12', '2017-08-31', '0000-00-00', 3, 'harshit gujral/1520, harshit/1530, '),
('JD19', 'jdpd', '2017-07-05', '2017-07-29', '0000-00-00', 0, ''),
('JQ88', 'JQuery', '2017-09-16', '2017-09-28', '0000-00-00', 0, 'Pulkit Jain/EMP16, hahah/EMP5, '),
('JQ89', 'JQuery1', '2017-09-16', '2017-09-30', '0000-00-00', 1, 'hahah/EMP5, Pulkit Jain/EMP16, '),
('KA58', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA59', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA60', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA61', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA62', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA63', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA64', 'katrina', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA65', 'kaif', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA66', 'kaif', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KA67', 'kaif', '2017-08-16', '2017-08-31', '0000-00-00', 0, ''),
('KD11', 'kdopd', '2017-06-14', '2017-06-24', '0000-00-00', 0, ''),
('KD12', 'kdosp', '2017-06-06', '2017-06-30', '0000-00-00', 0, ''),
('KD14', 'kdops', '2017-06-14', '2017-06-24', '0000-00-00', 0, ''),
('KD16', 'kdpd', '2017-07-11', '2017-07-31', '0000-00-00', 0, ''),
('KD18', 'kdopd', '2017-07-04', '2017-07-04', '0000-00-00', 0, ''),
('KD22', 'kdod', '2017-07-04', '2017-07-19', '0000-00-00', 3, ''),
('KD23', 'kdops', '2017-07-05', '2017-07-31', '0000-00-00', 1, ''),
('KD24', 'kdopd', '2017-07-26', '2017-07-29', '0000-00-00', 1, ''),
('KD6', 'kdips', '2017-06-07', '2017-06-30', '0000-00-00', 0, ''),
('KF26', 'kfkf', '2017-07-04', '2017-07-31', '0000-00-00', 0, ''),
('KK74', 'kkkkkk', '2017-08-17', '2017-08-31', '0000-00-00', 3, 'harshit gujral/1520, Harshit/1540, '),
('KO20', 'kops', '2017-07-05', '2017-07-29', '0000-00-00', 0, ''),
('KO21', 'kops', '2017-07-12', '2017-07-31', '0000-00-00', 0, ''),
('KO38', 'kops', '2017-08-03', '2017-08-02', '0000-00-00', 0, ''),
('KO39', 'kops', '2017-08-03', '2017-08-02', '0000-00-00', 0, ''),
('KS13', 'ksps', '2017-06-07', '2017-06-30', '0000-00-00', 0, ''),
('KS4', 'ksosps', '2017-06-06', '2017-06-30', '0000-00-00', 0, ''),
('KS8', 'kspps', '2017-06-07', '2017-06-24', '0000-00-00', 0, ''),
('KS9', 'kspps', '2017-06-07', '2017-06-24', '0000-00-00', 0, ''),
('KY40', 'kyu', '2017-08-16', '2017-08-24', '0000-00-00', 0, ''),
('LD5', 'ldodps', '2017-06-15', '2017-06-30', '0000-00-00', 0, ''),
('LO10', 'losdp', '2017-06-14', '2017-06-23', '0000-00-00', 0, ''),
('LO37', 'lops', '2017-07-29', '2017-07-19', '0000-00-00', 0, ''),
('ME2', 'memozin', '2017-06-15', '2017-09-22', '0000-00-00', 0, ''),
('ME25', 'memozin', '2017-07-05', '2017-02-28', '0000-00-00', 1, ''),
('ME27', 'memozin', '2017-07-04', '2017-07-31', '0000-00-00', 0, ''),
('ME28', 'memozin', '2017-07-11', '2017-07-31', '0000-00-00', 1, ''),
('ME30', 'memozinn', '2017-07-18', '2017-07-31', '0000-00-00', 0, ''),
('ME36', 'memozin', '2017-07-28', '2017-11-29', '0000-00-00', 0, ''),
('ML77', 'mlml', '2017-08-01', '2017-08-03', '0000-00-00', 0, 'harshit gujral/1520, harshit/1530, Harshit/1540, '),
('NE29', 'newpro', '2017-07-04', '2017-07-27', '0000-00-00', 1, ''),
('NE31', 'newpro', '2017-07-27', '2017-07-19', '0000-00-00', 1, ''),
('NE32', 'new2', '2017-07-27', '2017-07-31', '0000-00-00', 1, ''),
('NO92', 'november', '2017-11-01', '2017-11-30', '0000-00-00', 1, ''),
('OP3', 'opes', '2017-06-06', '2017-06-30', '0000-00-00', 0, ''),
('OP51', 'opkl', '2017-08-12', '2017-08-31', '0000-00-00', 0, 'harshit/1530, '),
('PR33', 'Pro', '2017-07-31', '2017-10-09', '0000-00-00', 2, ''),
('PR34', 'projj', '2017-07-30', '2017-11-15', '0000-00-00', 2, ''),
('QD90', 'qdvbhi', '2017-09-16', '2017-09-17', '0000-00-00', 1, 'hahah/EMP5, '),
('QW49', 'qwerty', '2017-08-31', '2017-08-25', '0000-00-00', 0, 'harshit gujral/1520, '),
('QW78', 'qweu', '2017-08-01', '2017-08-31', '0000-00-00', 3, 'harshit gujral/1520, Pulkit Jain/EMP11, '),
('RE53', 'retro', '2017-08-12', '2017-08-31', '0000-00-00', 0, 'harshit gujral/1520, '),
('RT50', 'rtyu', '2017-08-23', '2017-08-31', '0000-00-00', 2, 'harshit gujral/1520, '),
('SA68', 'salma', '2017-08-15', '2017-08-31', '0000-00-00', 0, ''),
('SA69', 'salma', '2017-08-15', '2017-08-31', '0000-00-00', 0, ''),
('SA70', 'salma', '2017-08-15', '2017-08-31', '0000-00-00', 0, ''),
('SA71', 'salma', '2017-08-15', '2017-08-31', '0000-00-00', 0, ''),
('SH57', 'Shraukh', '2017-08-15', '2017-08-31', '0000-00-00', 0, 'harshit gujral/1520, harshit/1530, Harshit/1540, '),
('ST75', 'Study Material', '2017-08-18', '2017-08-31', '0000-00-00', 5, 'hahah/EMP2, hahah/EMP3, '),
('VG81', 'vgyjm', '2017-08-01', '2017-08-29', '0000-00-00', 0, 'Pulkit Jain/EMP19, piklo/EMP18, '),
('ZA45', 'zaku', '2017-08-30', '2017-09-28', '0000-00-00', 1, 'harshit gujral/1520, harshit/1530, '),
('ZA46', 'zaku', '2017-08-30', '2017-09-28', '0000-00-00', 0, 'harshit gujral/1520, harshit/1530, '),
('ZA47', 'zaku1', '2017-08-30', '2017-09-28', '0000-00-00', 0, 'harshit gujral/1520, harshit/1530, '),
('ZA48', 'zaku100', '2017-08-16', '2017-08-16', '0000-00-00', 2, 'harshit gujral/1520, Harshit/1540, harshit/1530, ');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `uid` int(10) DEFAULT NULL,
  `10thschool` varchar(50) NOT NULL,
  `10thyear` int(10) NOT NULL,
  `10thpercentage` int(10) NOT NULL,
  `12thschool` varchar(50) NOT NULL,
  `12thyear` int(10) NOT NULL,
  `12thpercentage` int(10) NOT NULL,
  `gradschool` varchar(50) NOT NULL,
  `gradyear` int(10) NOT NULL,
  `gradpercentage` int(10) NOT NULL,
  `postschool` varchar(50) NOT NULL,
  `postyear` int(10) NOT NULL,
  `postpercentage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`uid`, `10thschool`, `10thyear`, `10thpercentage`, `12thschool`, `12thyear`, `12thpercentage`, `gradschool`, `gradyear`, `gradpercentage`, `postschool`, `postyear`, `postpercentage`) VALUES
(12345, '343', 3546, 123, '2234', 45, 67, 'wsfsd23', 435, 66, 'dvfg', 77, 454),
(12, 'asdff', 1234, 23, 'ADSDS', 234, 90, 'QWEE', 556, 90, 'XCVB', 789, 66),
(1234, 'ABCD', 2016, 89, 'ASDF', 678, 987, 'ZXCVB', 112, 78, 'AASSDF', 24, 67),
(4567, '12344', 56787, 566, 'asdfghj', 345, 567, 'sdfg', 678, 222, 'gh', 1111, 1111),
(1223, 'qwwer', 1234, 6789, 'assdf', 899, 45, 'sdff', 455, 77, 'ads', 900, 777);

-- --------------------------------------------------------

--
-- Table structure for table `remark_history`
--

CREATE TABLE `remark_history` (
  `pid` varchar(50) NOT NULL,
  `taskid` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `remark_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark_history`
--

INSERT INTO `remark_history` (`pid`, `taskid`, `remark`, `date`, `time`, `remark_by`) VALUES
('ME28', 'SAD0', ' hey', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' I am new to this', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' i am new', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' i am new opsls', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', 'new one to this', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', 'this is new update', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' I am new entry', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', 'I am new entry', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' I am new', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', 'again', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' i am', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', 'its working', '2017-07-01', '16:07:31', 'hahah'),
('ME28', 'SAD0', ' Ajax Post call', '2017-07-01', '16:07:31', 'hahah'),
('NE29', 'SAD0', ' Ok I will take this task', '2017-07-02', '22:17:25', 'hahah'),
('NE29', 'SAD0', ' I am here', '2017-07-02', '22:17:25', 'hahah'),
('NE29', 'SAD0', ' This is one isios', '2017-07-02', '22:17:25', 'hahah'),
('NE31', 'SAD0', ' hey ai ', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'test mail', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' hey I am ', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' hey I am here', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'haha ', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' hey', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' I am here', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'This is new', '2017-07-28', '20:41:29', 'hahah'),
('IM35', 'SAD0', ' I am here', '2017-07-29', '10:11:33', 'hahah'),
('IM35', 'SAD0', ' I am ehhe', '2017-07-29', '10:11:33', 'hahah'),
('IM35', 'SAD1', ' ', '2017-07-29', '10:11:33', 'hahah'),
('NE32', 'SAD0', ' ', '2017-07-28', '20:45:42', 'hahah'),
('NE31', 'SAD0', 'nnkk', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' ', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'mcc', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' me', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'know', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'you', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'wanna', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'see', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'more', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'hi', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'hu', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'hi9', '2017-07-28', '20:41:29', 'hahah'),
('IM35', 'SAD1', ' hey', '2017-07-29', '10:11:33', 'abcd xyz'),
('IM35', 'SAD1', ' i am uninque', '2017-07-29', '10:11:33', 'abcd xyz'),
('IM35', 'SAD1', ' ', '2017-07-29', '10:11:33', 'abcd xyz'),
('IM35', 'SAD1', ' ', '2017-07-29', '10:11:33', 'abcd xyz'),
('IM35', 'SAD1', 'this is new comment', '2017-07-29', '10:11:33', 'abcd xyz'),
('IM35', 'SAD1', ' ', '2017-07-29', '10:11:33', 'abcd xyz'),
('NE32', 'SAD0', ' ', '2017-07-28', '20:45:42', 'hahah'),
('NE31', 'SAD0', ' hi', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'my name is p.', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'wanna be your frnd.', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', 'wanna go out some time for the coffe.', '2017-07-28', '20:41:29', 'hahah'),
('NE31', 'SAD0', ' hi guys,', '2017-07-30', '05:36:16', 'hahah'),
('NE31', 'SAD0', 'i am new.', '2017-07-30', '05:36:23', 'hahah'),
('NE31', 'SAD0', 'to this place', '2017-07-30', '05:36:31', 'hahah'),
('NE31', 'SAD0', 'wanna make some friends', '2017-07-30', '05:36:44', 'hahah'),
('NE31', 'SAD0', 'will you be mine', '2017-07-30', '05:36:53', 'hahah'),
('NE32', 'SAD0', ' hello gorgeous.', '2017-07-30', '05:43:59', 'hahah'),
('NE32', 'SAD0', 'whats your poison', '2017-07-30', '05:44:10', 'hahah'),
('NE31', 'SAD0', ' ', '2017-07-30', '05:47:19', 'hahah'),
('NE31', 'SAD0', 'j', '2017-07-30', '05:47:26', 'hahah'),
('NE31', 'SAD0', 'n', '2017-07-30', '05:47:35', 'hahah'),
('NE31', 'SAD0', 'k', '2017-07-30', '05:47:40', 'hahah'),
('NE31', 'SAD0', ' j', '2017-07-30', '05:48:02', 'hahah'),
('NE31', 'SAD0', 'n', '2017-07-30', '05:48:13', 'hahah'),
('NE31', 'SAD0', 'k', '2017-07-30', '05:48:17', 'hahah'),
('NE31', 'SAD0', ' ', '2017-07-30', '05:48:40', 'hahah'),
('NE31', 'SAD0', 'j', '2017-07-30', '05:48:46', 'hahah'),
('NE31', 'SAD0', ' hello', '2017-08-02', '10:04:32', 'hahah'),
('NE31', 'SAD0', ' ', '2017-08-02', '10:10:51', 'hahah'),
('NE31', 'SAD0', 'kyu nhi kyu nhi', '2017-08-02', '10:11:24', 'hahah'),
('NE31', 'SAD0', ' ', '2017-08-02', '01:15:40', 'hahah'),
('NE31', 'SAD0', 'ddc', '2017-08-02', '01:15:56', 'hahah'),
('NE31', 'SAD0', 'hello', '2017-08-02', '01:16:49', 'hahah'),
('NE31', 'SAD0', 'my name is pulkit', '2017-08-02', '01:17:02', 'hahah'),
('NE31', 'SAD0', 'i want to make some friends', '2017-08-02', '01:17:17', 'hahah'),
('NE31', 'SAD0', 'ghghgh', '2017-08-02', '01:17:27', 'hahah'),
('NE31', 'SAD0', 'dhud', '2017-08-02', '01:20:50', 'hahah'),
('NE31', 'SAD0', ' hello', '2017-08-02', '01:39:23', 'hahah'),
('NE31', 'SAD0', ' ghghgh', '2017-08-02', '01:45:21', 'hahah'),
('NE31', 'SAD0', 'fghgg', '2017-08-02', '01:45:30', 'hahah'),
('NE31', 'SAD0', 'rtrtrt', '2017-08-02', '01:45:40', 'hahah'),
('NE31', 'SAD0', 'turyru', '2017-08-02', '01:45:49', 'hahah'),
('NE31', 'SAD0', ' kyu nhi ', '2017-08-02', '03:08:29', 'hahah'),
('NE31', 'SAD0', 'hello', '2017-08-02', '03:09:31', 'hahah'),
('NE31', 'SAD0', 'hello', '2017-08-02', '03:10:07', 'hahah'),
('NE31', 'SAD0', 'kundi mt khadkao raja', '2017-08-02', '03:10:24', 'hahah'),
('NE31', 'SAD0', ' kuch kam roshan hai roshni', '2017-08-02', '03:28:57', 'hahah'),
('NE31', 'SAD0', ' maut da intezar kara', '2017-08-02', '03:41:49', 'hahah'),
('NE31', 'SAD0', 'hoshwalon ko khabar kya ', '2017-08-02', '03:57:37', 'hahah'),
('RT50', 'SAD1', ' hello', '2017-08-12', '02:11:17', 'hahah'),
('RT50', 'SAD1', 'dont let me down', '2017-08-12', '04:42:36', 'hahah'),
('RT50', 'SAD1', 'cheap thrills', '2017-08-12', '04:42:46', 'hahah'),
('ZA48', 'SAD1', ' i am losing my mind now.', '2017-08-12', '04:43:04', 'hahah'),
('I_54', 'SAD2', ' what do you want', '2017-08-12', '04:43:17', 'hahah'),
('I_54', 'SAD2', 'choclate', '2017-08-12', '04:43:28', 'hahah'),
('ZA45', 'SAD0', ' i will do it sir.', '2017-08-12', '13:57:41', 'hahah'),
('IN55', 'SAD2', ' ghjkl', '2017-08-12', '14:02:30', 'hahah'),
('ST75', 'SAD3', ' hello my name is pulkit.', '2017-08-18', '20:00:59', 'hahah'),
('IN56', 'SAD1', ' jgtgjg', '2017-08-23', '00:43:40', 'hahah'),
('ST75', 'SAD1', ' lnlknl', '2017-08-23', '00:51:19', 'hahah'),
('RT50', 'SAD1', ' fgukhihjlij', '2017-08-23', '22:13:07', 'hahah'),
('EK87', 'SAD0', ' lmnop', '2017-08-31', '13:32:57', 'EMP16'),
('EK87', 'SAD0', ' lets meet some time', '2017-08-31', '13:35:45', 'EMP19'),
('EK87', 'SAD0', ' ronaldo footballer', '2017-08-31', '13:45:29', 'EMP16'),
('EK87', 'SAD0', 'hello rajesh', '2017-08-31', '13:46:47', 'EMP16'),
('EK87', 'SAD0', ' hello pulkit', '2017-08-31', '13:50:19', 'EMP19'),
('EK87', 'SAD0', 'what are you doing next saturday...', '2017-08-31', '13:57:35', 'EMP19'),
('EK87', 'SAD0', ' on the rocks', '2017-09-11', '19:39:49', 'EMP16'),
('EK87', 'SAD0', ' nhi chaiye bhai', '2017-09-11', '19:41:35', 'EMP19'),
('IN72', 'SAD1', ' hello', '2017-09-14', '18:50:15', 'EMP5'),
('EK87', 'SAD0', ' hello world', '2017-09-14', '19:01:00', 'EMP16'),
('EK87', 'SAD0', 'aati kya khandala', '2017-09-14', '19:01:12', 'EMP16'),
('IN72', 'SAD1', ' hello', '2017-09-15', '00:18:39', 'EMP2'),
('IN72', 'SAD1', 'hhh', '2017-09-15', '00:20:22', 'EMP2'),
('IN72', 'SAD1', ' hk', '2017-09-15', '00:25:06', 'EMP2'),
('IN72', 'SAD1', 'what happened', '2017-09-15', '00:25:36', 'EMP2'),
('EM79', 'SAD1', ' hello', '2017-09-15', '00:34:25', 'EMP16'),
('EK87', 'SAD0', ' hi', '2017-09-15', '02:07:56', 'EMP16'),
('EK87', 'SAD0', ' rrr', '2017-09-15', '02:09:05', 'EMP16'),
('EK87', 'SAD0', ' hi', '2017-09-15', '03:08:46', 'EMP16'),
('EK87', 'SAD0', 'what are you doing', '2017-09-15', '03:08:56', 'EMP16'),
('EK87', 'SAD0', 'hi', '2017-09-15', '03:09:32', 'EMP16'),
('EK87', 'SAD0', 'ooo', '2017-09-15', '03:09:48', 'EMP16'),
('EK87', 'SAD0', 'qwerty', '2017-09-15', '03:11:17', 'EMP16'),
('EK87', 'SAD0', 'rupay card', '2017-09-15', '09:45:41', 'EMP16'),
('EK87', 'SAD0', ' hello', '2017-09-15', '09:51:44', 'EMP16'),
('EK87', 'SAD0', ' lol', '2017-09-15', '10:23:51', 'EMP19'),
('EK87', 'SAD0', ' tumse naa ho payega', '2017-09-15', '10:51:53', 'EMP19'),
('EK87', 'SAD0', 'r u dere', '2017-09-15', '10:52:27', 'EMP19'),
('EK87', 'SAD0', 'hello', '2017-09-15', '10:53:14', 'EMP19'),
('EK87', 'SAD0', ' you', '2017-09-15', '10:55:13', 'EMP19'),
('EK87', 'SAD0', 'you kidding me', '2017-09-15', '10:55:39', 'EMP19'),
('EK87', 'SAD0', ' hakuna', '2017-09-15', '16:42:50', 'EMP19'),
('EK87', 'SAD0', 'r u sure?\n', '2017-09-15', '16:45:48', 'EMP19'),
('EK87', 'SAD0', 'i will check now', '2017-09-15', '16:48:32', 'EMP19'),
('EK87', 'SAD0', 'what are you doing?', '2017-09-15', '16:49:30', 'EMP19'),
('EK87', 'SAD0', 'abcthu', '2017-09-15', '16:51:10', 'EMP19'),
('EK87', 'SAD0', 'hello', '2017-09-15', '16:54:03', 'EMP19'),
('EK87', 'SAD0', 'my name is pulkit', '2017-09-15', '16:54:29', 'EMP19'),
('EK87', 'SAD0', 'how aere you?', '2017-09-15', '16:54:34', 'EMP19'),
('EK87', 'SAD0', 'r', '2017-09-15', '16:55:03', 'EMP19'),
('EK87', 'SAD0', 'r', '2017-09-15', '16:55:07', 'EMP19'),
('EK87', 'SAD0', 'rr', '2017-09-15', '16:55:12', 'EMP19'),
('EK87', 'SAD0', 'hello', '2017-09-15', '16:57:25', 'EMP19'),
('EK87', 'SAD0', 'r', '2017-09-15', '16:58:03', 'EMP19'),
('EK87', 'SAD0', 'j', '2017-09-15', '16:58:06', 'EMP19'),
('EK87', 'SAD0', 'k', '2017-09-15', '16:58:12', 'EMP19'),
('EK87', 'SAD0', 'l', '2017-09-15', '16:58:55', 'EMP19'),
('EK87', 'SAD0', 'k', '2017-09-15', '16:58:58', 'EMP19'),
('EK87', 'SAD0', 'r', '2017-09-15', '16:59:21', 'EMP19'),
('EK87', 'SAD0', 'e', '2017-09-15', '16:59:30', 'EMP19'),
('EK87', 'SAD0', 'e', '2017-09-15', '16:59:33', 'EMP19'),
('EK87', 'SAD0', 'h', '2017-09-15', '16:59:37', 'EMP19'),
('EK87', 'SAD0', ' v', '2017-09-15', '16:59:40', 'EMP19'),
('EK87', 'SAD0', 'b', '2017-09-15', '16:59:44', 'EMP19'),
('EK87', 'SAD0', 'b', '2017-09-15', '16:59:47', 'EMP19'),
('EK87', 'SAD0', 'm', '2017-09-15', '16:59:50', 'EMP19'),
('EK87', 'SAD0', 'k', '2017-09-15', '16:59:52', 'EMP19'),
('EK87', 'SAD0', 'h', '2017-09-15', '16:59:56', 'EMP19'),
('EK87', 'SAD0', ' hi', '2017-09-15', '17:10:01', 'EMP19'),
('EK87', 'SAD0', '???', '2017-09-15', '17:10:24', 'EMP19'),
('EK87', 'SAD0', 'dere?', '2017-09-15', '17:11:34', 'EMP19'),
('EK87', 'SAD0', 'kkk', '2017-09-15', '17:14:08', 'EMP19'),
('EK87', 'SAD0', '???', '2017-09-15', '17:14:58', 'EMP19'),
('EK87', 'SAD0', 'lmnop', '2017-09-15', '17:15:21', 'EMP19'),
('EK87', 'SAD0', 'mnop', '2017-09-15', '17:16:41', 'EMP19'),
('EK87', 'SAD0', 'klop', '2017-09-15', '17:16:45', 'EMP19'),
('EK87', 'SAD0', 'u dere?', '2017-09-15', '17:20:43', 'EMP19'),
('EK87', 'SAD0', '????', '2017-09-15', '17:21:17', 'EMP19'),
('EK87', 'SAD0', 'mkl', '2017-09-15', '17:23:04', 'EMP19'),
('EK87', 'SAD0', 'hello', '2017-09-15', '17:29:20', 'EMP19'),
('EK87', 'SAD0', 'kkk', '2017-09-15', '17:29:35', 'EMP19'),
('EK87', 'SAD0', '????', '2017-09-15', '17:29:45', 'EMP19'),
('EK87', 'SAD0', 'mnop', '2017-09-15', '17:32:31', 'EMP19'),
('EK87', 'SAD0', 'klk', '2017-09-15', '17:33:30', 'EMP19'),
('EK87', 'SAD0', ' hello world', '2017-09-16', '13:24:51', 'EMP16'),
('EK87', 'SAD0', 'hi', '2017-09-16', '13:25:04', 'EMP16'),
('EK87', 'SAD0', 'hello', '2017-09-16', '13:28:46', 'EMP16'),
('EK87', 'SAD0', 'jkl', '2017-09-16', '13:29:26', 'EMP16'),
('EK87', 'SAD0', 'kya', '2017-09-16', '13:29:49', 'EMP16'),
('EK87', 'SAD0', 'kr', '2017-09-16', '13:29:52', 'EMP16'),
('EK87', 'SAD0', 'rhi', '2017-09-16', '13:29:55', 'EMP16'),
('EK87', 'SAD0', 'ho', '2017-09-16', '13:29:59', 'EMP16'),
('EK87', 'SAD0', 'r u sure', '2017-09-16', '13:30:20', 'EMP16'),
('EK87', 'SAD0', 'i am done', '2017-09-16', '13:30:25', 'EMP16'),
('EK87', 'SAD0', 'wanna', '2017-09-16', '13:30:30', 'EMP16'),
('EK87', 'SAD0', 'do', '2017-09-16', '13:30:33', 'EMP16'),
('EK87', 'SAD0', 'it', '2017-09-16', '13:30:36', 'EMP16'),
('EK87', 'SAD0', 'again', '2017-09-16', '13:30:40', 'EMP16'),
('EK87', 'SAD0', ' i am sending message', '2017-09-16', '13:31:41', 'EMP19'),
('EK87', 'SAD0', 'did u receive it?\n', '2017-09-16', '13:31:47', 'EMP19'),
('EK87', 'SAD0', 'www', '2017-09-16', '13:31:53', 'EMP19'),
('EK87', 'SAD0', 'qqq', '2017-09-16', '13:31:57', 'EMP19'),
('EK87', 'SAD0', 'ccc', '2017-09-16', '13:32:01', 'EMP19'),
('EK87', 'SAD0', 'ccc', '2017-09-16', '13:32:04', 'EMP19'),
('EK87', 'SAD0', 'vvv', '2017-09-16', '13:32:07', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-16', '14:52:05', 'EMP19'),
('EK87', 'SAD0', 'hdishcin', '2017-09-16', '14:52:14', 'EMP19'),
('EK87', 'SAD0', 'dnivln', '2017-09-16', '14:52:24', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-21', '00:17:07', 'EMP16'),
('EK87', 'SAD0', 'i need you', '2017-09-21', '00:18:07', 'EMP16'),
('EK87', 'SAD0', 'R u Sure', '2017-09-21', '00:18:18', 'EMP16'),
('EK87', 'SAD0', ' Hey Pulkit here', '2017-09-21', '00:18:59', 'EMP19'),
('JQ89', 'SAD0', ' hello', '2017-09-21', '01:27:25', 'EMP16'),
('JQ89', 'SAD0', 'aata kya khandala', '2017-09-21', '01:27:46', 'EMP16'),
('JQ89', 'SAD0', ' iklj', '2017-09-21', '01:29:54', 'EMP19'),
('EK87', 'SAD0', ' kkk', '2017-09-22', '10:24:49', 'EMP19'),
('EK87', 'SAD0', 'zzz', '2017-09-22', '10:26:35', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-22', '10:40:48', 'EMP19'),
('EK87', 'SAD0', 'r u sure', '2017-09-22', '10:41:18', 'EMP19'),
('EK87', 'SAD0', 'kahan chaal', '2017-09-22', '10:43:16', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-22', '10:49:46', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-22', '10:51:53', 'EMP19'),
('EK87', 'SAD0', ' hj', '2017-09-22', '23:06:11', 'EMP19'),
('EK87', 'SAD0', ' hello', '2017-09-22', '23:25:29', 'EMP19'),
('EK87', 'SAD0', 'kkk', '2017-09-22', '23:27:52', 'EMP19'),
('EK87', 'SAD0', ' kkk', '2017-09-22', '23:28:34', 'EMP19'),
('EK87', 'SAD0', 'jjk', '2017-09-22', '23:29:34', 'EMP19'),
('EK87', 'SAD0', 'kjl', '2017-09-22', '23:31:07', 'EMP19'),
('EK87', 'SAD0', 'hello', '2017-09-22', '23:50:48', 'EMP19'),
('JQ89', 'SAD0', ' kkk', '2017-09-23', '01:46:59', 'EMP16'),
('JQ89', 'SAD0', 'dere', '2017-09-23', '01:47:36', 'EMP16'),
('JQ89', 'SAD0', 'not working', '2017-09-23', '01:47:50', 'EMP16'),
('JQ89', 'SAD0', 'rrr', '2017-09-23', '01:48:58', 'EMP16'),
('JQ89', 'SAD0', 'kkk', '2017-09-23', '01:50:57', 'EMP16'),
('JQ89', 'SAD0', 'jk', '2017-09-23', '01:52:02', 'EMP16'),
('JQ89', 'SAD0', 'rrr', '2017-09-23', '01:59:04', 'EMP16'),
('JQ89', 'SAD0', 'bbc', '2017-09-23', '02:02:24', 'EMP16'),
('JQ89', 'SAD0', 'rrf', '2017-09-23', '02:04:10', 'EMP16'),
('JQ89', 'SAD0', 'rr2', '2017-09-23', '02:06:47', 'EMP16'),
('JQ89', 'SAD0', 'bbc', '2017-09-23', '02:07:43', 'EMP16'),
('JQ89', 'SAD0', 'jjk', '2017-09-23', '02:10:18', 'EMP16'),
('JQ89', 'SAD0', 'bbc', '2017-09-23', '02:42:00', 'EMP16'),
('EK87', 'SAD0', ' memozin', '2017-09-23', '13:46:05', 'EMP16'),
('EK87', 'SAD0', ' kkk', '2017-09-23', '13:49:39', 'EMP16'),
('EK87', 'SAD0', ' dere', '2017-09-23', '14:05:06', 'EMP16'),
('EK87', 'SAD0', ' yes', '2017-09-23', '14:05:18', 'EMP19'),
('EK87', 'SAD0', 'I cant see u', '2017-09-23', '14:05:41', 'EMP16'),
('DE93', 'SAD0', ' fg', '2017-11-11', '17:29:09', 'EMP5');

-- --------------------------------------------------------

--
-- Table structure for table `task_history`
--

CREATE TABLE `task_history` (
  `taskid` varchar(50) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `fromstate` varchar(50) NOT NULL,
  `tostate` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `changedby` varchar(50) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_history`
--

INSERT INTO `task_history` (`taskid`, `pid`, `fromstate`, `tostate`, `date`, `time`, `changedby`, `remark`) VALUES
('KD22', 'SAD2', 'old', 'Review', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'inprogress', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'submitted', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'inprogress', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'submitted', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'inprogress', '2017-07-01', '00:00:00', 'EMP5', ''),
('KD22', 'SAD2', 'old', 'submitted', '2017-07-01', '00:00:10', 'EMP5', 'hello'),
('0', 'KD22', 'old', 'KD22-0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'old', 'KD22-SAD0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'old', 'KD22-SAD1-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'old', 'KD22-SAD2-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'old', 'KD22-0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'old', 'KD22-SAD0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'old', 'KD22-SAD1-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'old', 'KD22-SAD2-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'submitted', 'KD22-0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'submitted', 'KD22-SAD0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'submitted', 'KD22-SAD1-inprogress', '2017-07-01', '00:00:11', 'EMP5', 'new remark'),
('SAD2', 'KD22', 'submitted', 'KD22-SAD2-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'submitted', 'KD22-0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'submitted', 'KD22-SAD0-inprogress', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'submitted', 'KD22-SAD1-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'submitted', 'KD22-SAD2-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'KD22-0-submitted', 'KD22-0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'KD22-SAD0-inprogress', 'KD22-SAD0-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'KD22-SAD1-submitted', 'KD22-SAD1-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'KD22-SAD2-submitted', 'KD22-SAD2-submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'KD22-0-submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'KD22-SAD0-submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'KD22-SAD1-submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'KD22-SAD2-submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'Review', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Review', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'Review', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('0', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Review', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD1', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '00:00:11', 'EMP5', ''),
('SAD0', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '11:40:13', 'EMP5', ''),
('SAD1', 'KD22', 'InProgress', 'InProgress', '2017-07-01', '11:40:48', 'EMP5', ''),
('SAD0', 'KD22', 'Submitted', 'Review', '2017-07-01', '11:45:31', 'EMP5', ''),
('SAD2', 'KD22', 'Submitted', 'Review', '2017-07-01', '11:46:01', 'EMP5', 'newstatus'),
('0', 'KD22', 'Submitted', 'InProgress', '2017-07-01', '11:48:09', 'EMP5', 'changed'),
('SAD0', 'KD22', 'Review', 'Submitted', '2017-07-01', '11:49:59', 'EMP5', 'hj'),
('SAD2', 'KD22', 'Review', 'InProgress', '2017-07-01', '11:50:24', 'EMP5', ''),
('0', 'KD22', 'InProgress', 'Submitted', '2017-07-01', '12:02:44', 'EMP5', ''),
('SAD0', 'ME25', 'submitted', 'InProgress', '2017-07-01', '12:07:35', 'EMP5', ''),
('SAD0', 'ME25', 'InProgress', 'InProgress', '2017-07-01', '12:07:51', 'EMP5', 'I am in progress'),
('0', 'KD22', 'Submitted', 'Review', '2017-07-01', '12:29:43', 'EMP5', ''),
('SAD0', 'ME28', 'submitted', 'InProgress', '2017-07-02', '22:16:00', 'EMP5', 'hello'),
('SAD0', 'NE29', 'submitted', 'InProgress', '2017-07-02', '22:24:55', 'EMP5', 'I am starting it'),
('SAD0', 'NE29', 'submitted', 'InProgress', '2017-07-02', '22:25:23', 'EMP5', 'I am starting it'),
('SAD0', 'NE29', 'InProgress', 'Submitted', '2017-07-24', '22:05:45', 'EMP5', 'hhjkjk'),
('SAD0', 'NE31', 'submitted', 'Review', '2017-07-29', '07:47:42', 'EMP5', 'this is transfer remark'),
('SAD1', 'IM35', 'submitted', 'Review', '2017-07-29', '10:16:20', 'EMP5', 'yo'),
('SAD0', 'IM35', 'Review', 'Review', '2017-07-29', '10:47:31', 'EMP2', 'I am'),
('SAD0', 'IM35', 'Review', 'Submitted', '2017-07-29', '11:32:21', 'EMP5', ''),
('SAD1', 'IN56', 'submitted', 'InProgress', '2017-08-22', '21:14:49', 'EMP5', ''),
('SAD0', 'IN55', 'submitted', 'InProgress', '2017-08-23', '19:00:14', 'EMP2', 'tfgk'),
('SAD0', 'IN55', 'submitted', 'InProgress', '2017-08-23', '19:00:26', 'EMP2', 'tfgk'),
('SAD1', 'EM79', 'submitted', 'InProgress', '2017-08-25', '12:36:08', 'EMP16', ''),
('SAD1', 'EM79', 'submitted', 'Submitted', '2017-08-25', '12:38:02', 'EMP5', ''),
('SAD0', 'JQ89', 'submitted', 'InProgress', '2017-10-06', '22:38:45', 'EMP19', 'hogya mera'),
('SAD0', 'JQ89', 'submitted', 'InProgress', '2017-10-06', '22:44:57', 'EMP19', 'hogya mera'),
('SAD0', 'QD90', 'submitted', 'InProgress', '2017-10-06', '22:45:41', 'EMP19', 'nmkl'),
('SAD0', 'JQ89', 'submitted', 'InProgress', '2017-10-06', '22:53:50', 'EMP2', 'bhjjui'),
('SAD0', 'NE31', 'submitted', 'InProgress', '2017-10-13', '13:49:14', 'EMP2', 'kk'),
('SAD0', 'DE93', 'InProgress', 'InProgress', '2017-11-11', '09:29:34', 'EMP19', 'Completed the backend');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('EMP5', '83a75f0b31435193bafd3b9c5fd45aec'),
('sadmin', 'c5edac1b8c1d58bad90a246d8f08f53b'),
('EMP2', '83a75f0b31435193bafd3b9c5fd45aec'),
('1540', '83a75f0b31435193bafd3b9c5fd45aec'),
('1520', '83a75f0b31435193bafd3b9c5fd45aec'),
('EMP4', '83a75f0b31435193bafd3b9c5fd45aec'),
('EMP3', '83a75f0b31435193bafd3b9c5fd45aec'),
('EMP6', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP9', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP10', '9a9af43c15771eaf3b2db8bb28a2829d'),
('EMP11', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP12', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP12', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP13', 'EMP13default'),
('EMP14', 'EMP14default'),
('EMP15', 'EMP15default'),
('EMP16', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP17', 'dff6017deddbe5e1b3022375ffb5937f'),
('', 'default'),
('EMP18', 'd3b1737643926a68451e82d17a24c8f4'),
('', 'default'),
('EMP19', 'dff6017deddbe5e1b3022375ffb5937f'),
('EMP20', 'EMP20default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emptask`
--
ALTER TABLE `emptask`
  ADD PRIMARY KEY (`taskid`,`pid`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `new_employee`
--
ALTER TABLE `new_employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `Experience_ibfk_1` FOREIGN KEY (`emp_code`) REFERENCES `new_employee` (`empid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
