-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 01:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `Sno` int(11) NOT NULL,
  `task-name` varchar(200) NOT NULL,
  `task-desc` text NOT NULL,
  `due-date` timestamp NULL DEFAULT current_timestamp(),
  `priority` int(10) DEFAULT 4,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`Sno`, `task-name`, `task-desc`, `due-date`, `priority`, `timestamp`, `user-id`) VALUES
(1, 'Complete the Project Report', 'prepare PPT, write project report, add screenshots of the website', '2025-01-12 18:29:00', 4, '2025-01-12 11:59:09', 1),
(2, 'Host OrganizeU on Render', 'host this application on render', '2025-01-12 18:29:00', 1, '2025-01-12 11:59:53', 1),
(3, 'Bug Fixes in the ecommerce website', 'The bugs are still crawling around in my system. I swear I will fix them, but my procrastination is winning right now. 😬', '2025-01-12 18:29:00', 3, '2025-01-12 12:00:56', 1),
(4, 'Prepare for finals', 'Stop studying one day before exam, and start actual studies', '2025-02-20 18:29:00', 1, '2025-01-12 12:03:57', 1),
(5, 'Code Review Session', 'Got to go through the code for that new feature.', '2025-02-13 18:29:00', 2, '2025-01-12 12:05:13', 1),
(6, 'Project Presentation Preparation', 'Time to prepare slides and rehearse the presentation.', '2025-01-28 18:29:00', 2, '2025-01-12 12:06:30', 1),
(7, 'Start Learning React Native', ' I need to get into mobile app development. Hopefully, this will stop me from coding for hours without building anything. 📱💻', '2025-03-13 18:29:00', 3, '2025-01-12 12:07:54', 1),
(8, 'Register for eduSkills intership', 'Login and register for cohort 11', '2025-01-13 18:29:00', 4, '2025-01-12 12:09:31', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'admin@gmail.com', 'admin', '$2y$10$BGNMIJ.AClGYKWGHgetJpOeqz7tyean1V9b9bS23RH1HVesywxUf2', '2025-01-12 17:27:31');

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
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
