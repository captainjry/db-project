-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2018 at 09:05 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `author_email` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `ISBN` int(11) NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `book_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `author_name`, `publisher_name`, `book_info`, `title`, `year`, `price`, `img_url`) VALUES
(1, 'โตมร ศุขปรีชา\r\n\r\n', 'สำนักพิมพ์แซลมอน\r\n', 'สารคดีกึ่งนิยายของ ‘โตมร ศุขปรีชา’ ว่าด้วยการเดินทางเพื่อเข้าถึงจิตวิญญาณภายในและวิธีคิดของคนญี่ปุ่น ผ่านการเก็บข้อมูลจากคำบอกเล่าของบุคคล บันทึกประวัติศาสตร์ และศิลปะวัฒนธรรม\r\n', 'ย่องเบาเข้าญี่ปุ่น', 2008, 285, 'img/1.jpg'),
(3, 'ธนชาติ ศิริภัทราชัย\r\n', 'สำนักพิมพ์แซลมอน', '‘NEW YORK 1st TIME นิวยอร์กตอนแรกๆ...’ หนังสือเล่มแรกของ เบ๊น—ธนชาติ ศิริภัทราชัย ผู้ช่วยผู้กำกับภาพยนตร์เรื่อง ลุงบุญมีระลึกชาติ ที่จับเครื่องบินไปเรียนถ่ายภาพในนครนิวยอร์ก และแคปเจอร์เหตุการณ์ครั้งแรกในชีวิตมาร่วมแชร์ อย่างเหตุการณ์โดนปล้นครั้งแรก มีแฟนเป็นชาวต่างชาติครั้งแรก และความอดทนแปลกๆ กับครั้งแรกที่ต้องยืนต่อแถวนานกว่าแปดชั่วโมง\r\n\r\n', 'NEW YORK 1ST TIME นิวยอร์กตอนแรกๆ...\r\n', 2008, 243, 'img/2.png'),
(4, 'ธนชาติ ศิริภัทราชัย', 'สำนักพิมพ์แซลมอน', 'เมื่อนิวยอร์กร้อนเป็นไฟ ธนชาติ ศิริภัทราชัย จึงจับเครื่องบินมุ่งตรงสู่อลาสก้า ดินแดนที่ขึ้นชื่อว่าหนาวสุดขีด (แต่ดันไปตอนฤดูร้อน...) เพื่อไปพักชมวิวที่ไม่มีทางพบเห็นในเมืองหลวง ทั้งเดินเข้าป่าที่ทรหด ล่องเรือไปเพลินวาฬ พูดคุยกับ ‘กลุ่มคน’ ที่ต่างก็มีเหตุผลว่าทำไมอลาสก้าถึงน่าอยู่และทำไมเมืองนี้ถึงมา ‘ครั้งเดียว’ แล้วไม่เคยพอ', 'THE REAL ALASKA อลาสก้าล้านเปอร์เซ็นต์', 2008, 243, 'img/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_password` int(11) NOT NULL,
  `customer_fname` varchar(200) NOT NULL,
  `customer_lname` varchar(200) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_cardno` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` set('yes','no') NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_confirm` set('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) DEFAULT NULL,
  `publisher_email` varchar(255) DEFAULT NULL,
  `publisher_phone` varchar(255) DEFAULT NULL,
  `publisher_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_Fname` varchar(255) DEFAULT NULL,
  `staff_Lname` varchar(255) DEFAULT NULL,
  `staff_address` varchar(255) DEFAULT NULL,
  `staff_username` varchar(255) DEFAULT NULL,
  `staff_password` varchar(255) DEFAULT NULL,
  `staff_email` varchar(255) DEFAULT NULL,
  `staff_phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`,`customer_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`,`customer_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ISBN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
