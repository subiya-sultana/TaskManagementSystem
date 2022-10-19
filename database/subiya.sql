-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 02:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subiya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `Sno` int(11) NOT NULL,
  `task-name` varchar(200) NOT NULL,
  `task-desc` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`Sno`, `task-name`, `task-desc`, `timestamp`, `user-id`) VALUES
(4, 'finally i made login logout sytem', 'hhhhhhhhhhhh', '2022-09-30 00:49:22', 36),
(11, '2nd user added this task', 'hiii 2nd user ', '2022-10-07 15:40:56', 36),
(17, 'do this', '', '2022-10-07 16:10:03', 36),
(18, 'is it working now??', 'yeahhhh', '2022-10-07 16:22:49', 36),
(53, 'heloooooooooo', 'all data got wiped', '2022-10-08 17:22:20', 38),
(54, 'i AM BaCkKKK', 'hheehee', '2022-10-08 17:22:31', 38),
(62, 'is it working now??', 'ypppppppppp', '2022-10-08 18:18:44', 38),
(67, 'all tasks here', '', '2022-10-12 22:55:56', 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(36, 'mohdshakerali0@gmail.com', 'subiyaaa', '$2y$10$gzqIvsEHGqP17crllQhm3uqwiarz8I9g9FnHY9gwUFFSIvyxWOwJO', '2022-10-07 15:40:19'),
(38, 'mohammedsadiqali029@gmail.com', 'subiya', '$2y$10$xW8Uk4Rxg6H1NIJW6wWSTeZT0iqiRuASY/UAAAv.6ZfaWHtWc8o/W', '2022-10-08 17:21:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`Sno`),
  ADD KEY `user-id` (`user-id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
