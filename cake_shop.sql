-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2025 at 03:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`id`, `name`, `price`, `image`) VALUES
(3, 'strawberry cake', 125.00, '/uploads/cakes/1764114735829.jpg'),
(4, 'Chocolate Dream', 100.00, '/uploads/cakes/1764152524582.jpg'),
(5, 'Vanilla Bliss', 150.00, '/uploads/cakes/1764152934589.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `items`, `total_price`, `payment_id`, `payment_status`, `email`, `created_at`) VALUES
(14, '[{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1},{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1}]', 250.00, 'cs_test_b1IU526xZ9WXHchBA66wQ3h360Zinmbjcp4JJDc7ZCQLwCM2RC8hpkmRKs', 'paid', 'jack@gmail.com', '2025-12-06 12:17:49'),
(15, '[{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1},{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1}]', 250.00, 'cs_test_b1NWGlwPR4Ik0X1QkBJ3LEDIRqrMmyrMAvTOC4SqcctX4VlDnkNcqWgmot', 'paid', 'jack@gmail.com', '2025-12-06 12:28:21'),
(16, '[{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1},{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1}]', 250.00, 'cs_test_b1gcciKtoOBtI5zqqoEDl4fgczQc1wmotpkIP9otF9s4IG5JZm7O2UNcix', 'paid', 'jack@gmail.com', '2025-12-06 12:50:09'),
(17, '[{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1},{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1}]', 250.00, 'cs_test_b1mnpWW7vKvze8DjqZnzBSWRhCtO9gyQ4yS3BwhP753VRKYKqIf4RCKuVi', 'paid', 'jack@gmail.com', '2025-12-06 12:58:27'),
(18, '[{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1},{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1}]', 250.00, 'cs_test_b1InEuONyZxMCC74GUAIFw3z1qapQ7SlJU14Ot834Tc8k2aI4oq4T053Jr', 'paid', 'jack@gmail.com', '2025-12-06 13:14:28'),
(19, '[{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1}]', 150.00, 'cs_test_a1gVwsFnG2DpvtPrvxT6XZoqgyVU8gq3lcOBonwDfN7hR5s0N8C1JhOefY', 'paid', 'jack@gmail.com', '2025-12-06 13:19:29'),
(20, '[{\"name\":\"Vanilla Bliss\",\"price\":150,\"quantity\":1},{\"name\":\"Chocolate Dream\",\"price\":100,\"quantity\":1}]', 250.00, 'cs_test_b1le8Ip5UuxDU7tRfBYnCBsOOUOLK31arEAVrifjNIAHACYrkPGSmDwEkx', 'paid', 'jone@gmail.com', '2025-12-19 13:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `password`, `role`) VALUES
(29, 'joyel Dilshan', '07456618598', 'joyeldilshan@gmail.com', '$2b$10$s9glBfVsm8GaxjbAUf5bc.DK4MjcmNBiKQKi8QOF5lv4EagiJwZPW', 'admin'),
(30, 'joyel', '756520619', 'joyelbruce@gmail.com', '$2b$10$kw3XMOiWKCtTzzqB7nfNoeq/qST4WLOnaHgVQzxmSdJ6wZfchWQJi', 'user'),
(32, 'jack', '123456789', 'jack@gmail.com', '$2b$10$2Al8JZ4MbD6kogCTKH9UgOh0/ub3r8b6RBvsPqWFi.67uwbPbp8wi', 'user'),
(34, 'benita', '776913413', 'benita@gmail.com', '$2b$10$0leEm9FCiPVBh6eRKVHKVeivzE60RzsCm7.mENefRAfMsYz6Txtpy', 'user'),
(36, 'jone', '756520619', 'jone@gmail.com', '$2b$10$ubvY0XmOVAgtBl5xrQOVlez8p0BltFbkFuyKRlcCy9IRos.YdrW9G', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake`
--
ALTER TABLE `cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
