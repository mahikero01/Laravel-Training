-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2014 at 08:59 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `odot`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_09_152014_create_todo_lists_table', 1),
('2014_10_10_140212_create_todo_items_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `todo_items`
--

CREATE TABLE IF NOT EXISTS `todo_items` (
`id` int(10) unsigned NOT NULL,
  `todo_list_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed_on` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `todo_items`
--

INSERT INTO `todo_items` (`id`, `todo_list_id`, `content`, `completed_on`, `created_at`, `updated_at`) VALUES
(1, 6, 'wash car', NULL, '2014-10-10 06:40:09', '2014-10-10 06:40:09'),
(2, 6, 'house', NULL, '2014-10-10 06:40:28', '2014-10-10 06:40:28'),
(3, 9, 'dinner', NULL, '2014-10-10 06:54:35', '2014-10-10 06:54:35'),
(4, 9, 'frt', NULL, '2014-10-10 06:54:35', '2014-10-10 06:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `todo_lists`
--

CREATE TABLE IF NOT EXISTS `todo_lists` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `todo_lists`
--

INSERT INTO `todo_lists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'another', '2014-10-10 00:28:29', '2014-10-10 00:28:29'),
(9, 'prima', '2014-10-10 01:53:13', '2014-10-10 01:53:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo_items`
--
ALTER TABLE `todo_items`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `todo_items_content_unique` (`content`);

--
-- Indexes for table `todo_lists`
--
ALTER TABLE `todo_lists`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `todo_lists_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo_items`
--
ALTER TABLE `todo_items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `todo_lists`
--
ALTER TABLE `todo_lists`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
