-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 01:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ConfirmPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `password`, `ConfirmPassword`) VALUES
(36, 'Shubham sharma', 'shubham1@gmail.com', '$2y$10$r0EWB.k75D/87XK1GSGFUu.2qkWucBlbnKfe.n.uT5KhAGH49Q8DW', ''),
(38, 'Pavan', 'pavan@gmail.com', '$2y$10$j9euyAnV07btF/VfOqtcCu9uDDn2MXSSvxItOU7ExRmVj9x6z82BO', ''),
(39, 'Pavan', 'pavan@gmail.com', '$2y$10$VcDroWBzr8E0q7L.5DIDUedzr7A5KSixGltW17kw2cjbccDWrkMM6', ''),
(40, 'Shubham', 'shubham1@gmail.com', '$2y$10$zr42DF4xB7OO4riBNGx2jev7ndELypsF0cYbgRVhHJR3t6196d3ru', ''),
(41, 'Shubham', 'shubham1@gmail.com', '$2y$10$hmkTYo32flKZFu08tn0QrORi.x9CVVz33b5.6r6cmOm9/zFedXMty', ''),
(42, 'Shubham', 'shubham1@gmail.com', '$2y$10$fr6oCpqfXhCSbBMkSAudAOSovnGyjNCrcH8CPIcc4kKfdDJ3fn2RK', ''),
(43, 'Shubham', 'shubham1@gmail.com', '$2y$10$xGrY9atA/a0ymMKKKKR7keYcnLH900L7fAyAwCZCM4OCRGcrpJGf6', ''),
(44, 'Shubham', 'shubham1@gmail.com', '$2y$10$a8LUc5zJiMaABukmj6LoH.f4uSOnPFiYnAV0WOW0ps9HOD/LvBRg6', ''),
(45, 'Shubham', 'shubham1@gmail.com', '$2y$10$Ra9beDiuvlVBM7A5c1RP2.n1H7H3LfCl1tFc1shaWN04tm54i2B5e', ''),
(46, 's', 'shubham1@gmail.com', '$2y$10$ouS4vl4v5QbHPXIG/yFr5OPVUJftSpB92V2Gy2/zPCLd62aC1w3sS', ''),
(47, 's', 'shubham1@gmail.com', '$2y$10$7jLt52dWmXX42v7KGrF4RetYp3x/NndKFhJMUUsh4qNpz.sh2jChm', ''),
(48, 'aman', 'aman@gmail.com', '$2y$10$VpyiG90LA8cV77Q0XYH1fesuyLQZdVlieO0G.8tO8.ZiltpENs85C', ''),
(49, 'aman', 'aman@gmail.com', '$2y$10$0ytWysc8w8HNsbSSgCf3NuCqPmc93lRRtB1gpF7XjSfVXr.zLlTPa', ''),
(50, 'Shubham sharma', 'shubham1@gmail.com', '$2y$10$6aUMwGOMe.51ItsNQKdWKOJlYP7/OwqPOrPk7olKMYbtYqnw6Khwi', ''),
(51, 'Shubham sharma', 'shubham1@gmail.com', '$2y$10$Qfim0ztca1uhbgdmQGNOS.D2NFKbK.hYfamP/57YePoQUYfhp5Mhq', ''),
(52, 'rajesh', 'rajesh@gmail.com', '$2y$10$Ff0WZNcyvPY0.BhqQPZMa.XvfRjflWMfuYGBYyNGr4KP/9YS4vCnW', ''),
(53, 'rajesh', 'rajesh@gmail.com', '$2y$10$whEpxwQuKhyv2ZCAYQ2S3uZd.ddi1AyLZ7MTNHt.InwrDnrEgPe6e', ''),
(54, 'Shubham sharma', 'rajesh@gmail.com', '$2y$10$/2ZgdJNXbiRfIcs3/YuUY.VGJGhdP1BBVya9WlcTfG98Dg.LNS6vK', ''),
(55, 'Shubham sharma', 'rajesh@gmail.com', '$2y$10$eQh4NVB5Kfz5/Kua8SOZrOm2M2A7K5dUOYg.9fGlGmk9p2rEfaOPW', ''),
(56, 'Suraj sir', 'suraj@gmail.com', '$2y$10$tMkuBk.1iyQLIhoKVPqG/uopLK1s0h/uVgxFPt/MReUOUI2Nm6Ze2', ''),
(57, 'Suraj sir', 'suraj@gmail.com', '$2y$10$E8EQnf289nDy0GMbYnR6cuC4BmYJFUKSZp1nna42X/5r1O/1FI9J2', ''),
(58, 'kirti', 'kirti@gmail.com', '0201Ca221069@', ''),
(59, 'kirti', 'kirti@gmail.com', '0201Ca221069@', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
