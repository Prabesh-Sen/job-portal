-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 07:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Biratnagar', 1),
(2, 'Dharan', 1),
(3, 'Itahari', 1),
(4, 'Birtamod', 1),
(5, 'Damak', 1),
(6, 'Urlabari', 1),
(7, 'Janakpur', 2),
(8, 'Birgunj', 2),
(9, 'Jaleshwar', 2),
(10, 'Malangawa', 2),
(11, 'Gaur', 2),
(12, 'Kalaiya', 2),
(13, 'Kathmandu', 3),
(14, 'Lalitpur', 3),
(15, 'Bhaktapur', 3),
(16, 'Hetauda', 3),
(17, 'Banepa', 3),
(18, 'Chitwan', 3),
(19, 'Pokhara', 4),
(20, 'Baglung', 4),
(21, 'Beni', 4),
(22, 'Waling', 4),
(23, 'Damauli', 4),
(24, 'Syangja', 4),
(25, 'Butwal', 5),
(26, 'Bhairahawa', 5),
(27, 'Tansen', 5),
(28, 'Kapilvastu', 5),
(29, 'Dang', 5),
(30, 'Ghorahi', 5),
(31, 'Birendranagar', 6),
(32, 'Jumla', 6),
(33, 'Manma', 6),
(34, 'Simikot', 6),
(35, 'Kalikot', 6),
(36, 'Dailekh', 6),
(37, 'Dhangadhi', 7),
(38, 'Mahendranagar', 7),
(39, 'Dipayal', 7),
(40, 'Dadeldhura', 7),
(41, 'Tikapur', 7),
(42, 'Baitadi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(1, 'Sagar Thapa', 'IT Company', 'Nepal', 'Bagmati Province', 'Kathmandu', '9200000010', 'www.example.com', 'itcompany@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'We are an IT Company', '67395d4b0f62b.png', '2024-11-17 03:04:43', 1),
(2, 'Babin Bhatta', 'Civil Engineer Company', 'Nepal', 'Sudurpaschim Province', 'Mahendranagar', '9800000011', 'www.example.com', 'cec@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'This is CE company', '67395dc3d6e2f.png', '2024-11-17 03:06:43', 1),
(3, 'Sushant Awasthi', 'Business Company', 'Nepal', 'Bagmati Province', 'Kathmandu', '9800000013', 'www.example.com', 'business@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'This is a business company', '67395e20c7e2c.png', '2024-11-17 03:08:16', 1),
(4, 'Basanta Karki', 'Consoltancy', 'Nepal', 'Gandaki Province', 'Pokhara', '9800000014', 'www.example.com', 'consoltancy@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'this is a consoltancy', '67395e833a4f3.png', '2024-11-17 03:09:55', 1),
(5, 'Sushil Kumar K.C', 'Computer Repair Shop', 'Nepal', 'Lumbini Province', 'Butwal', '9800000015', 'www.example.com', 'computerrepairshop@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'this is a computer repair shop', '67395f0e2f3c3.png', '2024-11-17 03:12:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'NP', 'Nepal', 977);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(1, 1, 'Java Programmer', '<p>We need Java programmer</p>', '10000', '50000', '2', 'Bachelors', '2024-11-17 03:48:55'),
(2, 1, 'Graphic Designer', '<p>We need a graphic designer</p>', '10000', '50000', '1', 'Bachelors', '2024-11-17 03:49:37'),
(3, 5, 'Hardware Mechanic', '<p>We need computer hardware mechanic</p>', '10000', '60000', '1', '+2', '2024-11-17 03:51:34'),
(4, 5, 'Mobile Repair Man', '<p>We need someone who can repair mobile phones&nbsp;</p>', '10000', '25000', '1', '+2', '2024-11-17 03:55:00'),
(5, 4, 'Receptionist ', '<p>We need receptionist</p>', '10000', '25000', '2', '+2', '2024-11-17 03:56:29'),
(6, 4, 'English Teacher', '<p>We need English teacher.</p>', '30000', '60000', '2', 'Bachelors', '2024-11-17 03:57:36'),
(7, 3, 'Marketing Manager', '<p>We need marketing manager.</p>', '30000', '80000', '4', 'Bachelors', '2024-11-17 03:59:28'),
(8, 3, 'Salesman', '<p>We need Salesman</p>', '20000', '50000', '2', '+2', '2024-11-17 04:00:07'),
(9, 2, 'Overseer', '<p>We need overseer</p>', '50000', '100000', '5', 'Bachelors', '2024-11-17 04:01:21'),
(10, 2, 'Accountant', '<p>We need Accountant</p>', '25000', '50000', '3', 'Bachelors', '2024-11-17 04:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id_mailbox` int(11) NOT NULL,
  `id_fromuser` int(11) NOT NULL,
  `fromuser` varchar(255) NOT NULL,
  `id_touser` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply_mailbox`
--

CREATE TABLE `reply_mailbox` (
  `id_reply` int(11) NOT NULL,
  `id_mailbox` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Province 1', 1),
(2, 'Madhesh Province', 1),
(3, 'Bagmati Province', 1),
(4, 'Gandaki Province', 1),
(5, 'Lumbini Province', 1),
(6, 'Karnali Province', 1),
(7, 'Sudurpaschim Province', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(1, 'Prabesh', 'Sen', 'senprabesh@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'kalanki', 'Kathmandu', 'Bagmati', '9800000000', 'Bachelors', 'IT', '2024-11-09', '2001-01-01', '23', 'Intern', '673962f3afd62.pdf', '5a46a1c9feec048fe7dda8cb585a06ec', 1, 'I am a student', 'IT officer'),
(2, 'Pawan', 'G.C', 'gcpawan@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'kalanki', 'Kathmandu', 'Bagmati', '9800000001', 'Bachelors', 'IT', '2024-11-01', '2002-10-11', '22', 'Intern', '67395959aa193.pdf', '901e374ca29e76d5786f29d6cd982691', 1, 'I am a student', 'IT officer'),
(3, 'Rajkumar', 'Rai', 'rairajkumar@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'kalanki', 'Kathmandu', 'Bagmati', '9800000001', 'Bachelors', 'IT', '2024-11-02', '2003-01-09', '21', 'Inter', '673959fe3e3f5.pdf', 'ebc0f420a0b8065e9f4ac865a087a77c', 1, 'I am a student', 'Programmer'),
(4, 'Shasha', ' Thapa', 'thapashasha@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'Bhangal', 'Chitwan', 'Bagmati', '9800000002', 'Bachelors', 'Hotel Management', '2024-11-07', '2003-01-04', '21', 'Manager', '67395b57a7e28.pdf', 'd0291beb76cc53ddf5b2024df6a814ca', 1, 'I am a student', 'Cooking, Front Office'),
(5, 'Pritam', 'Magar', 'magarpritam@gmail.com', 'OTlmYzI4OGJlZDcyMzhkMTZkNTY3YWE1YjNjY2Q0ZjU=', 'Srijana Chowk', 'Pokhara', 'Gandaki', '9800000005', 'Bachelors', 'Humanities', '2024-11-14', '2003-01-04', '21', 'Human Resource', '67395c787dab7.pdf', '6080d39ca0cac87c3e8104586802879a', 1, 'I am a student', 'Skilled Conversationalist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id_mailbox`);

--
-- Indexes for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  ADD PRIMARY KEY (`id_reply`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id_mailbox` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
