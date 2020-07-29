-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2019 at 11:41 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retail`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `user` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `name`, `email`, `address`, `user`, `username`, `password`) VALUES
(1, 'Rama Devi Ravipati', 'rravipa1@emich.edu', '516 SAINT JOHN apt 204', '', 'rravipa1', 'qwerty'),
(2, 'rama', 'ravipa1@gmail.com', 'st jihn', 'admin', 'rama', 'qwerty'),
(3, 'Raja ', 'rveliche@emich.edu', '516 SAINT JOHN apt 204 Ypsilanti Michigan', 'user', 'rveliche', 'qwerty'),
(4, 'Rama Devi Ravipati', 'ravipatiramadevi02@gmail.com', '516 SAINT JOHN apt 204', 'user', 'sravipati10', 'qwerty'),
(5, 'satya sri ravipati', 'satya@gmail.com', '516 SAINT JOHN apt 204', 'user', 'sravipati', 'qwerty'),
(6, 'yashu', 'ykavadap@emich.edu', '516 SAINT JOHN apt 204', 'user', 'yashu', 'qwerty'),
(7, 'nikki', 'nikki@emich.edu', '516 SAINT JOHN apt 204', 'user', 'nikki', 'qwerty'),
(8, 'ammu', 'rravipa1@emich.edu', '516 SAINT JOHN apt 204', 'user', 'rravipa1', 'asdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(120) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `quantity`) VALUES
(4, 'Iphone XR', 'A Product from Apple company', 256, 'iphonexs.jpg', '5'),
(5, 'Iphone XS Max', 'A Product from Apple company', 568, 'iphonexsmax.jpg', '-7'),
(6, 'Iphone X', 'A Product from Apple company', 268, 'iphonex.jpg', '1'),
(7, 'Iphone 8', 'A Product from Apple company', 23, 'iphone8.jpg', '-12'),
(8, 'Ipad', 'A Product from Apple company', 668, 'ipad.jpg', '120'),
(9, 'Ipad mini', 'A Product from Apple company', 568, 'ipadmini.jpg', '142'),
(10, 'Ipad 6', 'A Product from Apple company', 258, 'ipad6.jpg', '122'),
(11, 'Airpods', 'A Product from Apple company', 258, 'airpods.jpg', '162'),
(12, 'Apple tv', 'A Product from Apple company', 568, 'earpods.jpg', '166'),
(24, 'iphone', 'apple product', 456, 'image.jpg', '-44');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseditems`
--

CREATE TABLE `purchaseditems` (
  `orderid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchaseditems`
--

INSERT INTO `purchaseditems` (`orderid`, `purchaseid`, `productid`, `quantity`) VALUES
(10, 12, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchaseid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchaseid`, `userid`, `price`, `date`) VALUES
(12, 3, 2535, '2019-12-14 21:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `purchaseditems`
--
ALTER TABLE `purchaseditems`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchaseid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchaseditems`
--
ALTER TABLE `purchaseditems`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
