-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 06:27 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scholario`
--

-- --------------------------------------------------------

--
-- Table structure for table `anc`
--

CREATE TABLE IF NOT EXISTS `anc` (
  `anc_id` varchar(10) NOT NULL DEFAULT '',
  `anc_title` varchar(30) DEFAULT NULL,
  `anc_author` varchar(10) DEFAULT NULL,
  `anc_art` longtext,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE IF NOT EXISTS `campus` (
  `campus_id` varchar(10) NOT NULL,
  `campus_code` char(2) NOT NULL,
  `campus_name` varchar(30) NOT NULL,
  `campus_addr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`campus_id`, `campus_code`, `campus_name`, `campus_addr`) VALUES
('01', 'MN', 'PUP - Sta. Mesa, Manila', 'Sta. Mesa, Manila'),
('04', 'SJ', 'PUP - San Juan', 'Addition Hills, San Juan City');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE IF NOT EXISTS `college` (
`college_id` int(1) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `campus_id` varchar(10) NOT NULL,
  `college_code` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `c_name`, `campus_id`, `college_code`) VALUES
(1, 'College of Accountancy and Finance', '', 'CAF'),
(2, 'College of Architecture and Fine Arts', '', 'CAFA'),
(3, 'College of Arts and Letters', '', 'CAL'),
(4, 'College of Business Administration', '', 'CBA'),
(5, 'College of Computer and Information Sciences', '', 'CCIS'),
(6, 'College of Engineering', '', 'CE'),
(7, 'College of Human Kinetics', '', 'CHK'),
(8, 'College of Law', '', 'CL'),
(9, 'College of Communication', '', 'COC'),
(10, 'College of Education', '', 'COED'),
(11, 'College of Political Science and Public Administration', '', 'CPSPA'),
(12, 'College of Science', '', 'CS'),
(13, 'College of Social Sciences and Development', '', 'CSSD'),
(14, 'College of Tourism, Hospitality and Transportation Management', '', 'CTHTM'),
(15, 'Institute of Technology', '', 'ITECH');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
`course_id` int(1) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_desc` varchar(100) DEFAULT NULL,
  `campus_id` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_code`, `course_desc`, `campus_id`) VALUES
(1, 'BSA', 'Bachelor of Science in Accountancy', '01'),
(2, 'BSA', 'Bachelor of Science in Accountancy', '04');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` varchar(10) NOT NULL,
  `dir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE IF NOT EXISTS `personalinfo` (
  `p_info_id` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contactNo` varchar(20) NOT NULL,
  `telNo` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `bDate` date NOT NULL,
  `gender` char(1) NOT NULL,
  `noOfSisters` int(11) NOT NULL,
  `noOfBrothers` int(11) NOT NULL,
  `houseNo` int(11) NOT NULL,
  `street` varchar(30) NOT NULL,
  `barangay` varchar(30) NOT NULL,
  `town` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `province` varchar(30) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `H_sch_name` varchar(50) NOT NULL,
  `H_sch_add` varchar(50) NOT NULL,
  `honors` varchar(30) NOT NULL,
  `gwa` float NOT NULL,
  `totalGradNo` int(11) NOT NULL,
  `g_name` varchar(40) NOT NULL,
  `g_address` varchar(40) NOT NULL,
  `g_occupation` varchar(40) NOT NULL,
  `g_rel` varchar(40) NOT NULL,
  `g_contactNo` int(11) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `m_addr` varchar(50) NOT NULL,
  `m_occupation` varchar(20) NOT NULL,
  `m_emp_addr` varchar(50) NOT NULL,
  `m_income_anum` float NOT NULL,
  `f_name` varchar(40) NOT NULL,
  `f_addr` varchar(40) NOT NULL,
  `f_occupation` varchar(20) NOT NULL,
  `f_emp_addr` varchar(50) NOT NULL,
  `f_income_anum` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE IF NOT EXISTS `requirements` (
  `req_id` varchar(10) NOT NULL,
  `req_list` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE IF NOT EXISTS `scholarship` (
  `schlr_id` varchar(10) NOT NULL,
  `schlr_type` char(1) NOT NULL,
  `schlr_name` varchar(40) NOT NULL,
  `schlr_status` char(1) NOT NULL,
  `schlr_sponsor` varchar(10) NOT NULL,
  `schlr_req` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_status`
--

CREATE TABLE IF NOT EXISTS `scholarship_status` (
  `schlr_status_id` varchar(1) NOT NULL,
  `schlr_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_type`
--

CREATE TABLE IF NOT EXISTS `scholarship_type` (
  `schlr_type` varchar(10) NOT NULL,
  `schlr_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `sponsor_id` varchar(10) NOT NULL,
  `sponsor_type` char(1) NOT NULL,
  `s_fname` varchar(30) NOT NULL,
  `s_mname` varchar(30) NOT NULL,
  `s_lname` varchar(30) NOT NULL,
  `s_company` varchar(50) NOT NULL,
  `s_addr` varchar(50) NOT NULL,
  `s_province` varchar(50) NOT NULL,
  `s_contry` varchar(30) NOT NULL,
  `s_tel` varchar(9) NOT NULL,
  `s_phone` varchar(7) NOT NULL,
  `s_email` varchar(30) NOT NULL,
  `ref_person` varchar(50) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `letter` varchar(10) NOT NULL,
  `s_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_type`
--

CREATE TABLE IF NOT EXISTS `sponsor_type` (
  `s_type_id` char(1) NOT NULL,
  `s_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` char(1) NOT NULL,
  `statusDesc` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `st_num` char(15) NOT NULL,
  `p_info_id` varchar(10) NOT NULL,
  `stud_info_id` varchar(10) NOT NULL,
  `schlr_id` varchar(10) NOT NULL,
  `status_id` char(1) NOT NULL,
  `college_info` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `campus_id` varchar(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gwa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(10) NOT NULL DEFAULT '',
  `username` varchar(25) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `userfname` varchar(50) DEFAULT NULL,
  `contact` varchar(9) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `u_type_id` char(1) NOT NULL,
  `user_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anc`
--
ALTER TABLE `anc`
 ADD PRIMARY KEY (`anc_id`), ADD KEY `anc_author` (`anc_author`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
 ADD PRIMARY KEY (`campus_id`), ADD KEY `campus_code` (`campus_code`), ADD KEY `campus_code_2` (`campus_code`), ADD KEY `campus_code_3` (`campus_code`), ADD KEY `campus_code_4` (`campus_code`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
 ADD PRIMARY KEY (`college_id`), ADD KEY `campus_id` (`campus_id`), ADD KEY `college_code` (`college_code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`course_id`), ADD KEY `campus_code` (`campus_id`), ADD KEY `campus_code_2` (`campus_id`), ADD KEY `campus_code_3` (`campus_id`), ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
 ADD PRIMARY KEY (`p_info_id`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
 ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
 ADD PRIMARY KEY (`schlr_id`), ADD KEY `schlr_type` (`schlr_type`,`schlr_status`,`schlr_sponsor`,`schlr_req`), ADD KEY `schlr_status` (`schlr_status`), ADD KEY `schlr_sponsor` (`schlr_sponsor`), ADD KEY `schlr_req` (`schlr_req`);

--
-- Indexes for table `scholarship_status`
--
ALTER TABLE `scholarship_status`
 ADD PRIMARY KEY (`schlr_status_id`);

--
-- Indexes for table `scholarship_type`
--
ALTER TABLE `scholarship_type`
 ADD PRIMARY KEY (`schlr_type`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
 ADD PRIMARY KEY (`sponsor_id`), ADD KEY `sponsor_type` (`sponsor_type`,`letter`), ADD KEY `letter` (`letter`);

--
-- Indexes for table `sponsor_type`
--
ALTER TABLE `sponsor_type`
 ADD PRIMARY KEY (`s_type_id`), ADD KEY `s_type_id` (`s_type_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`st_num`), ADD KEY `p_info_id` (`p_info_id`), ADD KEY `status_id` (`status_id`), ADD KEY `schlr_id` (`schlr_id`), ADD KEY `college_info` (`college_info`), ADD KEY `campus_id` (`campus_id`), ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
 ADD PRIMARY KEY (`u_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
MODIFY `college_id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
MODIFY `course_id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `anc`
--
ALTER TABLE `anc`
ADD CONSTRAINT `anc_ibfk_1` FOREIGN KEY (`anc_author`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`u_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
