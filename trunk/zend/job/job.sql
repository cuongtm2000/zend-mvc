-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2012 at 06:27 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `glt_files`
--

CREATE TABLE IF NOT EXISTS `glt_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_url` varchar(45) NOT NULL,
  `glt_jobs_job_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `fk_glt_files_glt_jobs` (`glt_jobs_job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `glt_history`
--

CREATE TABLE IF NOT EXISTS `glt_history` (
  `id_job` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `glt_jobs`
--

CREATE TABLE IF NOT EXISTS `glt_jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` timestamp NULL DEFAULT NULL,
  `last_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `reciever` varchar(45) NOT NULL,
  `glt_usernames_username` varchar(45) NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `fk_glt_jobs_glt_usernames1` (`glt_usernames_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Table structure for table `glt_usernames`
--

CREATE TABLE IF NOT EXISTS `glt_usernames` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `group` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `glt_usernames`
--

INSERT INTO `glt_usernames` (`username`, `password`, `email`, `create_date`, `group`, `enable`) VALUES
('groupitsoft', '670b14728ad9902aecba32e22fa4f6bd', 'groupitsoft@gmail.com', '2011-09-22 02:58:11', 'member', 1),
('hadesign', '6fb42da0e32e07b61c9f0251fe627a9c', 'ruacon907@yahoo.com', '2011-09-22 02:44:02', 'member', 1),
('hongvietsoft', 'cafaa18efcc58e9c99e4cdd79fb7672d', 'info@thuonghoi.com', '2011-09-29 03:39:02', 'member', 1),
('thanhansoft', '670b14728ad9902aecba32e22fa4f6bd', 'thanhansoft@gmail.com', '2011-06-14 16:01:05', 'administrator', 1),
('thuongcoder', 'fe7a35a47f53b2fb877932d9dd5425aa', 'thuongem_tb1988@yahoo.com.vn', '2011-09-28 01:58:00', 'member', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `glt_files`
--
ALTER TABLE `glt_files`
  ADD CONSTRAINT `fk_glt_files_glt_jobs` FOREIGN KEY (`glt_jobs_job_id`) REFERENCES `glt_jobs` (`job_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `glt_jobs`
--
ALTER TABLE `glt_jobs`
  ADD CONSTRAINT `fk_glt_jobs_glt_usernames1` FOREIGN KEY (`glt_usernames_username`) REFERENCES `glt_usernames` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
