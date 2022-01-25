-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 09:33 PM
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
-- Database: `mordana`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `image`, `status`) VALUES
(1, 'App 01', 'portfolio-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `status`) VALUES
(1, 'Web Development', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'bx bx-file', 1),
(2, 'Digital Marketing', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'bx bxl-dribbble', 1),
(3, 'Unlimited Support', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'bx bx-tachometer', 1),
(4, 'WordPress Website', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 'bx bx-world', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `status`) VALUES
(1, 'Nazmul Islam', 'nazmul.cse67@gmail.com', '01940475267', '$2y$10$BjvS/1vWUto9vQOYAC6CgedAlCt3BarwtrcFNZzbRA/w3vRYz4.IG', 1),
(2, 'Nazmul Talukder', 'nazmulns8989@gmail.com', '01889687828', '$2y$10$a8YCmWV6kX.BYV8LcRkSF.5EcJ1TeFMIylvflK2oyNNn1QnpB02JW', 1),
(3, 'Farabi Islam', 'nazmulsn@gmail.com', '01638096733', '$2y$10$TgakP8cP4uGLY34DLtHqLOtTc4vYElf4OZCQ87FxqoiJL8K9axFlS', 1),
(4, 'Farhan', 'nazmul.islam.spi33@gmail.com', '01795528329', '$2y$10$bB4CRt8V.HeLgA9giHIS4.rkEo3.o0QD3xxlCrvseMNrWqdi9xpV6', 1),
(5, 'Hafizur Rahman', 'nazmul@gmail.com', '01775653568', '$2y$10$sNjt/3.xN0xxSxqIiu6.b.qAIpMN5ej7.0gEwL2M2JjjVneInjMCW', 1),
(6, 'Alamin Sheak', 'alamin@gmail.com', '01920952727', '$2y$10$eDdvlBPit41FQeHplQD6E.AjinQEuNNrp.et.2U1TpTT6H.Z0RlJS', 1),
(7, 'Taher Jony', 'taherjs@gmail.com', '01776011973', '$2y$10$DSk7IbCjnlGEidPVaNV15OAGqzQPogTRNVIZf8HoNvNVYsuzt4Q5q', 1),
(8, 'Uzzal Ahmed', 'uzzal@gmail.com', '01795952800', '$2y$10$ZdnWs2V9E/isUQvGJNHCWutxSj.zHiGePK2eFtjnu9f2klqUnKdxm', 1),
(9, 'Labonno', 'laboni@gmail.com', '0123456789', '$2y$10$k010VkwWQGAk5ohpSJ6JAO46vfcwuxn7.chy9QnpVBiciuw1bKauy', 1),
(11, 'Nazmul Talukder', 'nazmulit@gmail.com', '01940475267', '$2y$10$3UcmL5VmpHqqUHkHeyRkV.m4GfCkB91hnfNwNz9xaZiBghXGvDX22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `image`, `url`, `status`) VALUES
(1, 'blog-recent-3.jpg', 'https://www.youtube.com/watch?v=ItaJ3GY319I', 1);

-- --------------------------------------------------------

--
-- Table structure for table `whyus`
--

CREATE TABLE `whyus` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whyus`
--

INSERT INTO `whyus` (`id`, `title`, `icon`, `category`, `status`) VALUES
(2, 'Nemo Enim', 'bx bx-gift', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', 1),
(3, 'Nazmul Islam', 'bx bx-fingerprint', 'Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whyus`
--
ALTER TABLE `whyus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whyus`
--
ALTER TABLE `whyus`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
