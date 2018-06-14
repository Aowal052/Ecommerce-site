-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 05:17 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Baby'),
(4, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_ids` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '1',
  `amount` varchar(255) NOT NULL,
  `shipping_address` text NOT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `bkash_transection_id` varchar(255) DEFAULT NULL,
  `token_no` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `product_ids`, `order_status`, `amount`, `shipping_address`, `bkash_number`, `bkash_transection_id`, `token_no`, `date`) VALUES
(5, 1, '8', 2, '8000', 'Raj', '01740483311', '1122334455', '825', '2017-11-25 16:32:00'),
(6, 2, '6,8', 2, '29000', 'raj', '01740483311', '11111111111111111', '508', '2017-11-25 16:55:06'),
(7, 2, '1', 2, '4000', 'Dhaka', '01777777777', '11111111111', '274', '2017-11-26 10:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_cat_id` int(11) NOT NULL,
  `product_details` text NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_price`, `product_cat_id`, `product_details`, `product_image`) VALUES
(1, 'Product three', 4000, 1, 'lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor ', '57a206e40eeaaa7693b41e6ce347f150.jpg'),
(2, 'Product Two', 3000, 2, 'lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor ', '57a206e40eeaaa7693b41e6ce347f150.jpg'),
(3, 'Product One', 2000, 4, 'lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor lorem Ipsum Dolor ', '57a206e40eeaaa7693b41e6ce347f150.jpg'),
(4, 'Product Four', 5000, 3, 'Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum', '7fb16ffffc422b79110132d9155f4df5.jpg'),
(5, 'Product Five', 6000, 2, 'Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum', '3ad822e826691a2a18727634e6ae2657.jpg'),
(6, 'Product Six', 7000, 1, '    -webkit-animation: bounce 2s ease infinite;\r\n    animation: bounce 2s ease infinite;    -webkit-animation: bounce 2s ease infinite;\r\n    animation: bounce 2s ease infinite;    -webkit-animation: bounce 2s ease infinite;\r\n    animation: bounce 2s ease infinite;    -webkit-animation: bounce 2s ease infinite;\r\n    animation: bounce 2s ease infinite;', '5d48f7533bbc0c72d601f664adf34f4b.jpg'),
(8, 'Product Seven', 8000, 1, 'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem ', 'c9d1df852457f0a06c09e98cc55f20d4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `image` text NOT NULL,
  `DOB` date NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `fullname`, `password`, `role`, `image`, `DOB`, `address`) VALUES
(1, 'admin@gmail.com', 'Mr.Admin', '12345', 1, '471e96c198825e61a6af47dd29b9b708.jpg', '1994-10-02', 'Raj'),
(2, 'user@gmail.com', 'Mr.User', '12345', 2, 'ce8ecdddd2fb1cadf6e67a4758f4ba8c.jpg', '1992-02-22', 'Rajshahi'),
(3, 'rk@gmail.com', 'rk', '12345', 2, '', '0000-00-00', ''),
(4, 'rkreza24@gmail.com', 'RK Reza', '12345', 2, '', '0000-00-00', ''),
(5, 'azadaowal@gmail.com', 'Abdul Aowal', '12345', 2, '', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
