-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 03:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vines origin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(1, 2, 'jordan 1', 3758.00, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order date` date NOT NULL DEFAULT current_timestamp(),
  `product name` varchar(55) NOT NULL,
  `total product` varchar(255) NOT NULL,
  `total price` float(8,2) NOT NULL,
  `order status` char(55) NOT NULL DEFAULT 'pending',
  `payment method` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order date`, `product name`, `total product`, `total price`, `order status`, `payment method`) VALUES
(1, 2, '2024-03-02', 'jordan 1', '1', 3758.00, 'pending', 'cash on delivery'),
(2, 2, '2024-03-03', 'nike air jordan', '1', 3758.00, 'pending', 'gcash');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` float(8,2) NOT NULL,
  `stock` int(55) NOT NULL,
  `image` varchar(55) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a' COMMENT 'a - active\r\ni - inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `name`, `description`, `price`, `stock`, `image`, `status`) VALUES
(1, 'Jordan 1', 'The Air Jordan 1 is a legendary basketball shoe designed by Peter Moore for Nike and first released ', 3758.00, 100, '', 'a'),
(2, 'nike air jordan', 'cgga9tjg hiwugfljdp 9rqytioiy08F LJ3PU0IF JHoitio 3hoiot2ofq', 3758.00, 100, '', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `names` varchar(65) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `user_type` char(1) NOT NULL DEFAULT 'u' COMMENT 'u - user\r\na - admin',
  `user_status` char(1) NOT NULL DEFAULT 'a' COMMENT 'a - active\r\ni - inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `names`, `gender`, `email`, `password`, `user_type`, `user_status`) VALUES
(1, 'mark froy', 'male', 'froy@gmail.com', 'imissyou', 'a', 'a'),
(2, 'eric', 'male', 'coda@gmail.com', 'imissyou2', 'u', 'a'),
(3, 'divine', 'female', 'divine@gmail.com', 'divine', 'a', 'a'),
(4, 'john jayvick', 'male', 'johnjayvick@gmail.com', 'vicky', 'a', 'a'),
(5, 'axel', 'male', 'axela@gmail.com', 'axel69', 'a', 'a'),
(6, 'jojo', 'male', 'jojo@gmail.com', 'jojolea', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
