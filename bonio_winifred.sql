-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2026 at 05:11 AM
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
-- Database: `bonio_winifred`
-- CREATE DATABASE bonio_winifred;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `membership_level` varchar(50) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES
(1, 'Alice', 'Cebu', 'Gold', '2025-01-10 00:00:00'),
(2, 'Bob', 'Bohol', 'Silver', '2025-01-15 00:00:00'),
(3, 'Charlie', 'Cebu', 'Bronze', '2025-02-10 00:00:00'),
(4, 'Diana', 'Tagbilaran', 'Gold', '2025-02-12 00:00:00'),
(5, 'Ethan', 'Bohol', 'Silver', '2025-03-01 00:00:00'),
(6, 'Fiona', 'Cebu', 'Gold', '2025-03-05 00:00:00'),
(7, 'George', 'Tagbilaran', 'Bronze', '2025-03-08 00:00:00'),
(8, 'Hannah', 'Cebu', 'Silver', '2025-04-01 00:00:00'),
(9, 'Ian', 'Bohol', 'Gold', '2025-04-10 00:00:00'),
(10, 'Julia', 'Cebu', 'Bronze', '2025-04-15 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

1. SELECT * FROM ‘customer’ WHERE city = ‘Cebu’;

2. SELECT * FROM ‘customer’ WHERE membership_level = ‘Gold’;

3. SELECT * FROM ‘customer’ WHERE customer_name LIKE ‘A%’ OR customer_name LIKE ‘D%’;

4.  SELECT * FROM ‘customer’ WHERE  city = ‘Cebu’ AND membership_level IN(‘Silver’, ‘Gold’);

5. SELECT * FROM ‘customer’ WHERE join_date BETWEEN ‘2025-02-01’ AND ‘2025-03-31’;

6. SELECT * FROM ‘customer’ WHERE city IN(‘Bohol’, ‘Tagbilaran’) AND membership_level = ‘Bronze’;

7. SELECT * FROM ‘customer’ WHERE customer_name LIKE ‘%a%’;

8. SELECT * FROM ‘customer’ WHERE city = ‘Cebu’ AND membership_level = ‘Gold’ AND join_date < ‘2025-03-01’;

9. SELECT * FROM ‘customer’ WHERE city IN(‘Bohol’, ‘Tagbilaran’) AND join_date < ‘2025-02-01’ AND membership_level IN(‘Silver’, ‘Bronze’);

10. SELECT * FROM ‘customer’ WHERE customer_id NOT IN(1, 4, 6) AND join__date > ‘2025-02-01’;

11. SELECT * FROM ‘customer’ WHERE join_date BETWEEN ‘2025-04-01’ AND ‘2025-04-30’ AND city IN(‘Cebu’, ‘Bohol’) AND membership_level IN(‘Silver’, ‘Gold’);
