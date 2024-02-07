-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 08:33 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Samsung', '1'),
(13, 'HP', '1'),
(14, 'Huawei', '1'),
(15, 'Microsoft Corporation', '1'),
(16, 'Adobe', '1'),
(17, 'Apple', '1'),
(18, 'Avira', '1'),
(20, 'mitsubishi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 0, 'Electronics', '1'),
(2, 0, 'Software', '1'),
(5, 1, 'Mobiles', '1'),
(7, 1, 'Laptop', '1'),
(9, 2, 'Antivirus', '1'),
(10, 0, 'Gadgets', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(25, 'MMM', '0000-00-00', 60000, 10800, 500, 70300, 70300, 0, 'Cash'),
(26, 'ggg', '0000-00-00', 300000, 54000, 2500, 351500, 351500, 0, 'Cash'),
(27, 'Rdfgacs ', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(28, '', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(29, 'Rizwan', '2018-11-02', 60000, 10800, 12, 70788, 70788, 0, 'Cash'),
(30, 'I am Cus', '2018-11-02', 65000, 11700, 500, 76200, 76200, 0, 'Cash'),
(31, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(32, 'Arjun', '2018-01-03', 29000, 5220, 55, 34165, 34165, 0, 'Cash'),
(33, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(34, 'Rizwan', '2018-01-03', 94500, 17010, 1500, 110010, 110010, 0, 'Cash'),
(35, 'Rizwan', '2018-01-03', 154000, 27720, 550, 181170, 181170, 0, 'Cash'),
(36, 'Rizwan', '2018-01-03', 154500, 27810, 2500, 179810, 179810, 0, 'Cash'),
(37, 'Tyson', '2018-01-03', 90000, 16200, 25.5, 106174.5, 106174.5, 0, 'Cash'),
(38, 'Rajdhani', '2018-01-03', 89500, 16110, 750.5, 104859.5, 104859.5, 0, 'Cash'),
(39, 'Kapoor & Son', '2018-01-03', 89500, 16110, 25, 105585, 105585, 0, 'Cash'),
(40, 'Ajay', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(41, 'Jayanta', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(42, 'Ajay Kant', '2018-01-03', 65500, 11790, 0, 77290, 77290, 0, 'Cash'),
(43, 'Egjdks', '2018-01-03', 125500, 22590, 5000, 143090, 143090, 0, 'Cash'),
(44, 'Tyson', '2018-01-03', 275000, 49500, 4950, 319550, 319550, 0, 'Cash'),
(45, 'Hndksks', '2018-01-03', 59000, 10620, 0, 69620, 69620, 0, 'Cash'),
(46, 'deepak', '0000-00-00', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(47, 'deepak', '0000-00-00', 120000, 21600, 0, 141600, 141600, 0, 'Cash'),
(48, 'deepak', '0000-00-00', 29000, 5220, 0, 34220, 105020, 34220, 'Cash'),
(49, 'hhhghhh', '0000-00-00', 60000, 10800, 0, 70800, 300, 70500, 'Cash'),
(50, 'deepak', '0000-00-00', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(51, 'deepak', '0000-00-00', 159000, 28620, 5000, 182620, 182620, 0, 'Card'),
(52, 'dfdsfsdfsf', '0000-00-00', 29000, 5220, 0, 34220, 34220, 0, 'Cash'),
(53, 'deepak', '0000-00-00', 65000, 11700, 0, 76700, 70800, 5900, 'Cash'),
(54, 'deepak', '0000-00-00', 65000, 11700, 0, 76700, 70800, 5900, 'Cash'),
(55, 'deepak', '2022-03-04', 94000, 16920, 0, 110920, 110920, 0, 'Cash'),
(56, 'deepak', '2022-03-04', 29000, 5220, 0, 34220, 34220, 0, 'Cash'),
(57, 'deepak', '2022-08-04', 29000, 5220, 0, 34220, 34220, 0, 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(1, 25, 'Samsung Galaxy S8', 60000, 1),
(2, 28, 'Samsung Galaxy S8', 60000, 5),
(3, 29, 'Samsung Galaxy S8', 60000, 1),
(4, 30, 'Iphone 8', 65000, 1),
(5, 31, 'Samsung Galaxy S8', 60000, 1),
(6, 32, 'Honor 9i', 29000, 1),
(7, 33, 'Samsung Galaxy S8', 60000, 1),
(8, 34, 'Avira Antivirus', 500, 1),
(9, 34, 'Iphone 8', 65000, 1),
(10, 34, 'Honor 9i', 29000, 1),
(11, 35, 'Samsung Galaxy S8', 60000, 1),
(12, 35, 'Honor 9i', 29000, 1),
(13, 35, 'Iphone 8', 65000, 1),
(14, 36, 'Samsung Galaxy S8', 60000, 1),
(15, 36, 'Honor 9i', 29000, 1),
(16, 36, 'Iphone 8', 65000, 1),
(17, 36, 'Avira Antivirus', 500, 1),
(18, 37, 'Samsung Galaxy S8', 60000, 1),
(19, 37, 'Honor 9i', 29000, 1),
(20, 37, 'Avira Antivirus', 500, 2),
(21, 38, 'Samsung Galaxy S8', 60000, 1),
(22, 38, 'Honor 9i', 29000, 1),
(23, 38, 'Avira Antivirus', 500, 1),
(24, 39, 'Samsung Galaxy S8', 60000, 1),
(25, 39, 'Honor 9i', 29000, 1),
(26, 39, 'Avira Antivirus', 500, 1),
(27, 40, 'Samsung Galaxy S8', 60000, 1),
(28, 40, 'Honor 9i', 29000, 1),
(29, 41, 'Samsung Galaxy S8', 60000, 1),
(30, 41, 'Honor 9i', 29000, 1),
(31, 42, 'Iphone 8', 65000, 1),
(32, 42, 'Avira Antivirus', 500, 1),
(33, 43, 'Samsung Galaxy S8', 60000, 1),
(34, 43, 'Avira Antivirus', 500, 1),
(35, 43, 'Iphone 8', 65000, 1),
(36, 44, 'Honor 9i', 29000, 5),
(37, 44, 'Iphone 8', 65000, 2),
(38, 45, 'Honor 9i', 29000, 2),
(39, 45, 'Avira Antivirus', 500, 2),
(40, 46, 'Samsung Galaxy S8', 60000, 1),
(41, 48, 'Honor 9i', 29000, 1),
(42, 49, 'Samsung Galaxy S8', 60000, 1),
(43, 50, 'Samsung Galaxy S8', 60000, 1),
(44, 51, 'Honor 9i', 29000, 1),
(45, 51, 'Iphone 8', 65000, 1),
(46, 51, 'Iphone 8', 65000, 1),
(47, 52, 'Honor 9i', 29000, 1),
(48, 53, 'Iphone 8', 65000, 1),
(49, 54, 'Iphone 8', 65000, 1),
(50, 55, 'Honor 9i', 29000, 1),
(51, 55, 'Iphone 8', 65000, 1),
(52, 56, 'Honor 9i', 29000, 1),
(53, 57, 'Honor 9i', 29000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(15, 5, 1, 'Samsung Galaxy S8', 60000, 981, '2022-03-24', '1'),
(16, 5, 14, 'Honor 9i', 29000, 4978, '2022-03-24', '1'),
(17, 5, 17, 'Iphone 8', 65000, 1189, '2022-03-24', '1'),
(18, 9, 18, 'Avira Antivirus', 500, 2990, '2022-03-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(9, 'shivam', 'jshivam2015@gmail.com', '$2y$08$Jl8kTuCsBX482AcuW9qQm.gdPy4jFDKMsne/UVcQ4GT72cmUlAsnS', 'Other', '2022-03-22', '2022-04-08 01:04:39', ''),
(10, '', '', '$2y$08$XXG8ODGSF.lhMKAsp3YI0ORBFGtobUlRrTwpIjtfyvCTcoy.aWK9C', 'Admin', '2022-04-02', '2022-04-02 00:00:00', ''),
(11, 'Shubham Singh', 'shubham@gmail.com', '$2y$08$jPuOo7HuQHpviREK7vi7deqRU6hUcVFR5l.OROeBWvC21jCpFLzSa', 'Admin', '2022-04-05', '2022-04-05 05:04:28', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
