-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 07:44 AM
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
-- Database: `my_api_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `boking_data`
--

CREATE TABLE `boking_data` (
  `nama` varchar(1000) NOT NULL,
  `nomor_hp` int(100) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boking_data`
--

INSERT INTO `boking_data` (`nama`, `nomor_hp`, `id`) VALUES
('a', 2, 0),
('s', 7, 0),
('z', 9, 0),
('wewe', 123, 0),
('asd', 273, 0);

-- --------------------------------------------------------

--
-- Table structure for table `boking_menu`
--

CREATE TABLE `boking_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boking_menu`
--

INSERT INTO `boking_menu` (`id_menu`, `menu`) VALUES
(1, 'halo'),
(5, 'pilih'),
(6, 'pilih'),
(7, 'pilih'),
(8, 'PERM'),
(9, 'SMOOTHING'),
(10, 'PERM'),
(11, 'SMOOTHING'),
(12, 'COLORING'),
(13, 'PERM'),
(14, 'HAIRCUT'),
(15, 'HAIRCUT'),
(16, 'HAIRCUT'),
(17, 'HAIRCUT'),
(18, 'HAIRCUT'),
(19, 'HAIRCUT'),
(20, 'HAIRCUT'),
(21, 'SMOOTHING'),
(22, 'COLORING'),
(23, 'COLORING'),
(24, 'HAIRCUT'),
(25, 'SMOOTHING'),
(26, 'PERM'),
(27, 'HAIRCUT'),
(28, 'HAIRCUT'),
(29, 'SMOOTHING'),
(30, 'PERM'),
(31, 'SMOOTHING'),
(32, 'SMOOTHING'),
(33, 'PERM'),
(34, 'SMOOTHING');

-- --------------------------------------------------------

--
-- Table structure for table `boking_menu_capster`
--

CREATE TABLE `boking_menu_capster` (
  `id` int(11) NOT NULL,
  `capster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boking_menu_capster`
--

INSERT INTO `boking_menu_capster` (`id`, `capster`) VALUES
(1, 'rohit'),
(2, 'rohit'),
(3, 'revan'),
(4, 'andre'),
(5, 'andre'),
(6, 'revan'),
(7, 'andre'),
(8, 'andre'),
(9, 'andre'),
(10, 'andre'),
(11, 'andre'),
(12, 'rohit'),
(13, 'andre'),
(14, 'revan'),
(15, 'andre'),
(16, 'andre'),
(17, 'andre'),
(18, 'andre'),
(19, 'andre'),
(20, 'andre'),
(21, 'andre'),
(22, 'rohit'),
(23, 'revan'),
(24, 'andre');

-- --------------------------------------------------------

--
-- Table structure for table `boking_tanggal`
--

CREATE TABLE `boking_tanggal` (
  `id` int(11) NOT NULL,
  `selected_date` date DEFAULT NULL,
  `selected_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boking_tanggal`
--

INSERT INTO `boking_tanggal` (`id`, `selected_date`, `selected_time`) VALUES
(1, '0000-00-00', '00:00:00'),
(2, '0000-00-00', '00:00:00'),
(3, '0000-00-00', '00:00:00'),
(4, '0000-00-00', '00:00:00'),
(5, '0000-00-00', '00:00:00'),
(6, '0000-00-00', '00:00:00'),
(7, '0000-00-00', '00:00:00'),
(8, '0000-00-00', '00:00:00'),
(9, '0000-00-00', '00:00:00'),
(10, '0000-00-00', '00:00:00'),
(11, '0000-00-00', '00:00:00'),
(12, '0000-00-00', '00:00:00'),
(13, '0000-00-00', '00:00:00'),
(14, '0000-00-00', '00:00:00'),
(15, '0000-00-00', '00:00:00'),
(16, '0000-00-00', '00:00:00'),
(17, '0000-00-00', '00:00:00'),
(18, '0000-00-00', '00:00:00'),
(19, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `alamat`) VALUES
(1, 'a', 'a', 'a'),
(2, 'z', 'z', 'z'),
(3, 'x', 'x', 'x'),
(4, 'v', 'v', 'v'),
(5, 'rohit', '123', '123'),
(6, 'd', 'd', 'd'),
(7, 'sxasx', 'xasxa', ' ass asxas'),
(8, 's', 's', 's'),
(9, 'r', 'r', 'r'),
(10, 'we', 'we', 'we'),
(11, 'vv', 'vv', 'vv'),
(12, 'yuda', '123', '123'),
(13, 'eka', '123', '123'),
(14, 'q', 'q', 'q'),
(15, 'bunda', '1', '1'),
(16, 'owit', '1', '1'),
(17, 'c', 'c', 'c'),
(18, 'h', 'h', 'h'),
(19, 'wewe', '123', '123'),
(20, 'muhammadizroil22@gmail.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boking_data`
--
ALTER TABLE `boking_data`
  ADD PRIMARY KEY (`nomor_hp`);

--
-- Indexes for table `boking_menu`
--
ALTER TABLE `boking_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `boking_menu_capster`
--
ALTER TABLE `boking_menu_capster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boking_tanggal`
--
ALTER TABLE `boking_tanggal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boking_data`
--
ALTER TABLE `boking_data`
  MODIFY `nomor_hp` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `boking_menu`
--
ALTER TABLE `boking_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `boking_menu_capster`
--
ALTER TABLE `boking_menu_capster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `boking_tanggal`
--
ALTER TABLE `boking_tanggal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
