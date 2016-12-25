-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2016 at 05:36 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ehr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addpatreport`
--

CREATE TABLE `tbl_addpatreport` (
  `apr_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `doctor` varchar(225) NOT NULL,
  `health_issuse` varchar(225) NOT NULL,
  `test` varchar(225) NOT NULL,
  `result` varchar(225) NOT NULL,
  `prescription` varchar(225) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addpatreport`
--

INSERT INTO `tbl_addpatreport` (`apr_id`, `date`, `doctor`, `health_issuse`, `test`, `result`, `prescription`, `comment`) VALUES
(1, '2016-12-01', 'Dr.Gulati', 'Gatrics', 'Sucessful', '1st stage', 'Cetamol', 'it will recover fast it taken proper care');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard`
--

CREATE TABLE `tbl_dashboard` (
  `d_id` int(255) NOT NULL,
  `d_components` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dashboard`
--

INSERT INTO `tbl_dashboard` (`d_id`, `d_components`) VALUES
(1, 'View Patients'),
(2, 'Add Patients'),
(3, 'Doctors'),
(4, 'Reports'),
(5, 'Appointment'),
(6, 'Help & Support');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_docdetail`
--

CREATE TABLE `tbl_docdetail` (
  `doc_id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `age` int(25) NOT NULL,
  `field` varchar(225) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `con_number` bigint(225) NOT NULL,
  `hospital` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_docdetail`
--

INSERT INTO `tbl_docdetail` (`doc_id`, `name`, `age`, `field`, `gender`, `con_number`, `hospital`, `address`) VALUES
(1, 'Dr.Gulati', 45, 'medical field', 'Male', 980980223, 'Modela Hospital', 'balkhu, Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_helpsupport`
--

CREATE TABLE `tbl_helpsupport` (
  `he_id` int(20) NOT NULL,
  `he_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patreport`
--

CREATE TABLE `tbl_patreport` (
  `ptr_id` int(255) NOT NULL,
  `date` date NOT NULL,
  `health_issue` varchar(225) NOT NULL,
  `cheked_by` varchar(225) NOT NULL,
  `report` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_patreport`
--

INSERT INTO `tbl_patreport` (`ptr_id`, `date`, `health_issue`, `cheked_by`, `report`) VALUES
(1, '2015-03-25', 'gastritis', 'Dr RamaDev', 'positive'),
(2, '2016-12-07', 'gastritis', 'Dr Anjuli Suwal', 'positive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reportdetail`
--

CREATE TABLE `tbl_reportdetail` (
  `rd_id` int(225) NOT NULL,
  `date` varchar(255) NOT NULL,
  `checked_by` varchar(225) NOT NULL,
  `health_issue` varchar(225) NOT NULL,
  `test` varchar(225) NOT NULL,
  `result` varchar(225) NOT NULL,
  `prescription` varchar(225) NOT NULL,
  `doctors_comment` text NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reportdetail`
--

INSERT INTO `tbl_reportdetail` (`rd_id`, `date`, `checked_by`, `health_issue`, `test`, `result`, `prescription`, `doctors_comment`, `pid`) VALUES
(1, '2062/03/25', 'Neha', 'Gastricis', 'Positive', 'Success', 'Paradox', 'anything', 1),
(2, '2012/03/15', 'Anib', 'Influenza', 'Positive', 'On Process', 'Injections', 'thik cha', 2),
(3, '', '', '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_viewpatients`
--

CREATE TABLE `tbl_viewpatients` (
  `pid` int(255) NOT NULL,
  `pname` varchar(225) NOT NULL,
  `date_of_admit` varchar(255) NOT NULL,
  `p_age` int(3) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address` varchar(225) NOT NULL,
  `appointment` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_viewpatients`
--

INSERT INTO `tbl_viewpatients` (`pid`, `pname`, `date_of_admit`, `p_age`, `gender`, `contact`, `blood_group`, `address`, `appointment`) VALUES
(1, 'Sanil Shrestha', '2062/03/02', 19, 'Male', '9849622334', 'A+', 'Kirtipur', 'Active'),
(2, 'Gautam', '2012/02/11', 16, 'Male', '9808564895', 'O+', 'Kirtipur', 'Not Active'),
(3, 's,dskjd', 'joiji', 12, 'jgdghdu', '1234567gghhhhh', 'sdkjsf', 'kjihughjmk', 'sadfg'),
(4, 'aman shakya', '1999/12/12', 18, 'male', '9860123923', 'O+ve', 'khasibajar', 'teeth'),
(5, 'sidant', '1997\\02\\05', 17, 'male', '9843555100', 'A+ve', 'lalitpur', '3:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_addpatreport`
--
ALTER TABLE `tbl_addpatreport`
  ADD PRIMARY KEY (`apr_id`);

--
-- Indexes for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `tbl_docdetail`
--
ALTER TABLE `tbl_docdetail`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `tbl_helpsupport`
--
ALTER TABLE `tbl_helpsupport`
  ADD PRIMARY KEY (`he_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_patreport`
--
ALTER TABLE `tbl_patreport`
  ADD PRIMARY KEY (`ptr_id`);

--
-- Indexes for table `tbl_reportdetail`
--
ALTER TABLE `tbl_reportdetail`
  ADD PRIMARY KEY (`rd_id`),
  ADD KEY `rd_id` (`rd_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tbl_viewpatients`
--
ALTER TABLE `tbl_viewpatients`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_addpatreport`
--
ALTER TABLE `tbl_addpatreport`
  MODIFY `apr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  MODIFY `d_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_docdetail`
--
ALTER TABLE `tbl_docdetail`
  MODIFY `doc_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_helpsupport`
--
ALTER TABLE `tbl_helpsupport`
  MODIFY `he_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_patreport`
--
ALTER TABLE `tbl_patreport`
  MODIFY `ptr_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_reportdetail`
--
ALTER TABLE `tbl_reportdetail`
  MODIFY `rd_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_viewpatients`
--
ALTER TABLE `tbl_viewpatients`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_reportdetail`
--
ALTER TABLE `tbl_reportdetail`
  ADD CONSTRAINT `tbl_reportdetail_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `tbl_viewpatients` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
