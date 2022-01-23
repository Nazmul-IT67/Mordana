-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 03:17 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `php`
--

CREATE TABLE `php` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `php`
--

INSERT INTO `php` (`id`, `name`, `email`, `phone`, `password`, `status`) VALUES
(1, 'Nazmul Islam', 'nazmulns8989@gmail.com', '01940475267', '$2y$10$ywWf1FqgYy32tvzUpkWlPOgajNernHg84BmtW33/GEGZwHL.2xH5a', 1),
(2, 'Nazmul Islam', 'nazmul@gmail.com', '01940475267', '$2y$10$m7V8FmZiMQOzSF1iV8HVZ.hm.Ipf1tEwePhTlY.M5Pckn7JroJNha', 1),
(3, 'Hafizur Rahman', 'hafizur@gmail.com', '01940475267', '$2y$10$ODXTvPKgZZYhlFx9U41sR.poFV2QLgdTZy/9g1kwFU/Q7npAejSge', 1),
(4, 'Alamin', 'alamin1@gmail.com', '01940475267', '$2y$10$Q0qW31dv5.aiaAMhCyT6EuMQl/YMguZrPHP0DQC0FfW1wFMIUsnza', 1),
(5, 'Farabi Islam', 'farabi@gmail.com', '01940475267', '$2y$10$GMvs76XDi05GQbfkSyOQx.ruJiy8jBDU2PmNWQJr0IhX8t6fhPmHa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `description`, `image`, `featured`, `status`, `category`) VALUES
(1, 'HAMBLE TRIANGLE', 'More Information', 'joanna-kosinska-RE-8WswW95o-unsplash.jpg', NULL, 1, 'Design'),
(2, 'DARK BEAUTY', 'More Information', 'alex-padurariu-tXYg4Zx7kSU-unsplash.jpg', NULL, 1, 'Marketing'),
(3, 'IPSUM WHICH', 'More Information', 'igor-miske-Px3iBXV-4TU-unsplash.jpg', NULL, 1, 'Marketing'),
(4, 'Web Development', 'More Information', 'fabian-irsara-67l-QujB14w-unsplash.jpg', NULL, 1, 'Marketing'),
(5, 'WordPress', 'More Information', 'firmbee-com-ir5lIkVFqC4-unsplash.jpg', NULL, 1, 'Marketing'),
(6, 'Web Developer', 'More Information', 'FB_IMG_1628064047504.jpg', NULL, 1, 'Nazmul Islam');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `summary` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `summary`, `icon`, `status`) VALUES
(1, 'WordPress Web Designer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-headphones', 1),
(2, 'Web Development With PHP & Laravel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-suitcase', 1),
(5, 'Theme Customization', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-shower', 1),
(6, 'SEO Optimaization', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-plug', 1),
(7, '24/7 Support', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-rocket', 1),
(8, 'Digital Marketing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat, libero vel luctus finibus, sem eros porta augue, sit amet tristique sem erat a dolor. Proin ornare odio volutpat', '', 'fa fa-truck', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `php`
--
ALTER TABLE `php`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `php`
--
ALTER TABLE `php`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
