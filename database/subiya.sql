-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 09:21 PM
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
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `priority` int(10) DEFAULT 4,
  `user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`Sno`, `task-name`, `task-desc`, `timestamp`, `priority`, `user-id`) VALUES
(53, 'hellooo', 'all data got wipedd', '2022-10-08 11:52:20', 4, 38),
(62, 'is it working now??', 'yooooo', '2022-10-08 12:48:44', 4, 38),
(67, 'all tasks here', 'is it happening', '2022-10-12 17:25:56', 4, 38),
(83, 'today task', '', '2022-10-21 16:45:51', 4, 38),
(84, 'another task added today', '', '2022-10-21 16:46:08', 4, 38),
(109, 'is it working now??', '', '2022-10-22 12:21:45', 4, 36),
(110, 'fghmj,', '', '2022-10-22 12:21:49', 4, 36),
(111, 'adding this now', '', '2022-10-22 15:46:57', 4, 38),
(112, 'is it working now??', '', '2022-10-22 17:04:53', 4, 38),
(113, 'zzzzzzzzzz', '', '2022-10-22 17:04:57', 4, 38),
(114, 'aaaaaaaaaaaa', '', '2022-10-22 17:05:02', 4, 38),
(115, 'last added task', '', '2022-10-22 17:05:10', 4, 38),
(116, '', '', '2022-10-22 17:28:50', 4, 38),
(117, '', '', '2022-10-22 19:43:19', 4, 38),
(118, 'is it working now??', '    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n', '2022-10-22 20:13:34', 4, 38),
(119, 'fghmj,', '    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n    border: 2px solid yellow;\r\n', '2022-10-22 20:13:45', 4, 38),
(120, 'is it working now??    border: 2px solid yellow;    border: 2px solid yellow;    border: 2px solid yellow;    border: 2px solid yellow;    border: 2px solid yellow;    border: 2px solid yellow;    bor', '', '2022-10-22 20:14:05', 4, 38),
(121, 'another task', '', '2022-10-22 20:15:10', 2, 38),
(122, 'new  task', '', '2022-10-22 20:15:21', 1, 38),
(123, 'new task', '', '2022-10-22 20:15:35', 1, 38),
(124, 'adding new taskkkkkkk with 2nd priority', '', '2022-10-22 20:59:39', 4, 38),
(125, 'new task', '', '2022-10-22 21:01:15', 4, 38),
(126, 'new task', '', '2022-10-22 21:01:27', 4, 38),
(127, 'my priority is 3rd', '', '2022-10-22 21:02:44', 3, 38),
(128, 'sdfghjk', '', '2022-10-23 10:57:57', 1, 38),
(129, 'taskkkkkkkk', '', '2022-10-23 12:17:58', 1, 38),
(130, 'first priotity', '', '2022-10-23 12:21:37', 1, 38),
(131, '', '', '2022-10-23 12:35:34', 3, 38),
(132, 'is it working now??', '', '2022-10-23 12:59:15', 2, 38),
(133, 'is it working now??', '', '2022-10-23 12:59:22', 2, 38);

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
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `test` FOREIGN KEY (`user-id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
