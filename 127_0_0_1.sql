-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 02:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admin`;

-- --------------------------------------------------------

--
-- Table structure for table `admins_1`
--

CREATE TABLE `admins_1` (
  `Serial_Number` int(4) NOT NULL,
  `Name` text NOT NULL,
  `Phone` text NOT NULL,
  `Email_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_1`
--
ALTER TABLE `admins_1`
  ADD PRIMARY KEY (`Serial_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_1`
--
ALTER TABLE `admins_1`
  MODIFY `Serial_Number` int(4) NOT NULL AUTO_INCREMENT;
--
-- Database: `admins`
--
CREATE DATABASE IF NOT EXISTS `admins` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admins`;

-- --------------------------------------------------------

--
-- Table structure for table `admins_table`
--

CREATE TABLE `admins_table` (
  `sno` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `last_session` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins_table`
--

INSERT INTO `admins_table` (`sno`, `username`, `password`, `last_session`) VALUES
(1, 'admin', 'password', '2019-10-04 17:31:10'),
(2, 'admin1', 'password1', '2019-10-04 17:58:28'),
(3, 'admin2', 'password2', '2019-10-04 17:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `Serial_number` int(100) NOT NULL,
  `Name` text NOT NULL,
  `Phone_Number` text NOT NULL,
  `Email_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`Serial_number`, `Name`, `Phone_Number`, `Email_address`) VALUES
(1, 'sahil khurana', '9384947594773', 'sahilkhurana23@gmail.com'),
(3, 'sahib', '93849475', 'sahibsingh89@gmail.com'),
(4, 'utkarsh', '9384998463', 'utkarshbhardh@gmail.com'),
(5, 'Raj', '93898367748', 'rajcool23@gmail.com'),
(6, 'supriyam singh', '9384947594773', 'supriyam7658@gmail.com'),
(7, 'sahabudin', '846692949007', 'sahabudinali97@gmail.com'),
(8, 'khurana sahab', '9384947594773', 'khurana23@gmail.com'),
(9, 'raman singh', '9384947594773', 'ramankumar7654@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins_table`
--
ALTER TABLE `admins_table`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`Serial_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins_table`
--
ALTER TABLE `admins_table`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `Serial_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `beacon`
--
CREATE DATABASE IF NOT EXISTS `beacon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `beacon`;

-- --------------------------------------------------------

--
-- Table structure for table `data_beacon`
--

CREATE TABLE `data_beacon` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `rssi` varchar(200) NOT NULL,
  `reader_address` varchar(200) NOT NULL,
  `bat` varchar(200) NOT NULL,
  `mac` varchar(200) NOT NULL,
  `failed` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `connect` varchar(200) NOT NULL,
  `a` varchar(200) NOT NULL,
  `b` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_beacon`
--

INSERT INTO `data_beacon` (`id`, `name`, `rssi`, `reader_address`, `bat`, `mac`, `failed`, `date`, `connect`, `a`, `b`) VALUES
('11669', '', '', '', '', '', '', '', '', '', ''),
('11667', '', '', '', '', '', '', '', '', '', ''),
('11674', '1674', '-54', '', '', '', '', '2019-06-08 12:44:07am', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', ''),
('11669', 'Eyro_gym', '-55', '', '', '', '', '', '', '', ''),
('4522', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_beacon`
--
ALTER TABLE `data_beacon`
  ADD KEY `idx_data_beacon_id` (`id`);
--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `demo_set`
--

CREATE TABLE `demo_set` (
  `id` text NOT NULL,
  `name` text NOT NULL,
  `rssi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_set`
--

INSERT INTO `demo_set` (`id`, `name`, `rssi`) VALUES
('100', '1200', '312');
--
-- Database: `hogwartz`
--
CREATE DATABASE IF NOT EXISTS `hogwartz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hogwartz`;

-- --------------------------------------------------------

--
-- Table structure for table `credit_form`
--

CREATE TABLE `credit_form` (
  `id` int(100) NOT NULL,
  `other` text NOT NULL,
  `Date_of_credit` text NOT NULL,
  `Name` text NOT NULL,
  `Father` text NOT NULL,
  `Payment_record` text NOT NULL,
  `Cat` text NOT NULL,
  `Payment_mode` text NOT NULL,
  `Payment_remark` text NOT NULL,
  `pay_amount` text NOT NULL,
  `Cat_des` text NOT NULL,
  `hour` text NOT NULL,
  `min` text NOT NULL,
  `sec` text NOT NULL,
  `Day` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_form`
--

INSERT INTO `credit_form` (`id`, `other`, `Date_of_credit`, `Name`, `Father`, `Payment_record`, `Cat`, `Payment_mode`, `Payment_remark`, `pay_amount`, `Cat_des`, `hour`, `min`, `sec`, `Day`) VALUES
(1, '07', '20-07-2019 06:48:00', 'Nimrit Kaur', 'Rupambir Singh', '', 'Yearly Fees_', 'CASH', 'paid', '17000', 'admission', '13', '8', '8', '20'),
(2, '07', '20-07-2019 06:48:00', 'Nimrit Kaur', 'Rupambir Singh', '', 'Tuition Fees_Q2', 'NEFT', 'utr1', '5000', '', '13', '53', '12', '20'),
(3, '07', '20-07-2019 06:48:00', 'Nimrit Kaur', 'Rupambir Singh', '', 'Yearly Fees_', 'NEFT', '', '3000', '', '13', '54', '13', '20'),
(4, '07', '20-07-2019 06:48:00', 'Ajay Soni', 'kjkjkjkk', '', 'Tuition Fees_Q1', 'NEFT', '', '5000', '', '14', '3', '30', '20'),
(5, '07', '20-07-2019 06:48:00', 'Ajay Soni', 'kjkjkjkk', '', 'Tuition Fees_Q1', '', '', '500', '', '14', '5', '33', '20'),
(6, '', '', '', '', '', '', 'CASH', '', '10000', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `roll_NO` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` varchar(200) NOT NULL,
  `e_name` text NOT NULL,
  `e_date_of_appoinment` text NOT NULL,
  `e_gender` text NOT NULL,
  `e_father` text NOT NULL,
  `e_mother` text NOT NULL,
  `e_dob` text NOT NULL,
  `e_address` text NOT NULL,
  `e_em_con_name` text NOT NULL,
  `e_em_con_no2` text NOT NULL,
  `e_edu` text NOT NULL,
  `e_salary_month` text NOT NULL,
  `e_security_amount` text NOT NULL,
  `special_remark` text NOT NULL,
  `date_of_submission` text NOT NULL,
  `id` int(20) NOT NULL,
  `e_is_delete` text NOT NULL,
  `e_day_dob` text NOT NULL,
  `e_month_dob` text NOT NULL,
  `e_year_dob` text NOT NULL,
  `e_1` text NOT NULL,
  `e_2` text NOT NULL,
  `e_3` text NOT NULL,
  `e_4` text NOT NULL,
  `e_5` text NOT NULL,
  `e_6` text NOT NULL,
  `e_7` text NOT NULL,
  `e_8` text NOT NULL,
  `e_9` text NOT NULL,
  `e_10` text NOT NULL,
  `e_11` text NOT NULL,
  `e_12` text NOT NULL,
  `e_13` text NOT NULL,
  `e_14` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_date_of_appoinment`, `e_gender`, `e_father`, `e_mother`, `e_dob`, `e_address`, `e_em_con_name`, `e_em_con_no2`, `e_edu`, `e_salary_month`, `e_security_amount`, `special_remark`, `date_of_submission`, `id`, `e_is_delete`, `e_day_dob`, `e_month_dob`, `e_year_dob`, `e_1`, `e_2`, `e_3`, `e_4`, `e_5`, `e_6`, `e_7`, `e_8`, `e_9`, `e_10`, `e_11`, `e_12`, `e_13`, `e_14`) VALUES
('EMP_2019_1', 'Ajay soni', '', 'Male', 'Satpal soni', 'Saroj Rani', '', 'Dugri', '', '', '12', '12000', '12333', '', '04-09-2019  01:22:56', 1, '', '4', '9', '2019', '200', '', '', '', '', '', '', '', '200', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `expense_table`
--

CREATE TABLE `expense_table` (
  `Date_of_Expense` text NOT NULL,
  `Category` text NOT NULL,
  `Expense_description` text NOT NULL,
  `Amount` text NOT NULL,
  `Payment_Mode` text NOT NULL,
  `Payment_Remark` text NOT NULL,
  `other` text NOT NULL,
  `day` text NOT NULL,
  `hour` text NOT NULL,
  `min` text NOT NULL,
  `id` int(100) NOT NULL,
  `sec` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_table`
--

INSERT INTO `expense_table` (`Date_of_Expense`, `Category`, `Expense_description`, `Amount`, `Payment_Mode`, `Payment_Remark`, `other`, `day`, `hour`, `min`, `id`, `sec`) VALUES
('17 08 2019', 'Petrol', '', '5000', 'CASH', '', '8', '17', '14', '11', 1, '1'),
('01 09 2019', 'Electronics', '', '1200', 'CASH', '', '9', '1', '14', '39', 2, '9'),
('01 09 2019', 'Stationery', '', '12000', 'CASH', '', '9', '1', '14', '39', 3, '21'),
('01 09 2019', 'Toilet Essentials', '', '120', 'CASH', '', '9', '1', '14', '39', 4, '32'),
('', '', '', '10000', 'NEFT', '', '', '', '', '', 5, ''),
('20 July 2019', 'Salary', 'Ajay soni', '200', '', '', 'JAN', '20', '13', '23', 6, '47');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` text NOT NULL,
  `name` text NOT NULL,
  `data_of_join` text NOT NULL,
  `gender` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `DOB` text NOT NULL,
  `class` text NOT NULL,
  `father_no` text NOT NULL,
  `mother_no` text NOT NULL,
  `b_group` text NOT NULL,
  `address` text NOT NULL,
  `em_con_name` text NOT NULL,
  `em_con_no_2` text NOT NULL,
  `mode_of_pay` text NOT NULL,
  `pay_type` text NOT NULL,
  `special_remark` text NOT NULL,
  `date_last_credit` text NOT NULL,
  `credit_des` text NOT NULL,
  `id` int(100) NOT NULL,
  `a` text NOT NULL COMMENT 'Date of submission',
  `b` text NOT NULL COMMENT 'Cheque no.',
  `s_is_delete` text NOT NULL,
  `s_day_dob` text NOT NULL,
  `s_month_dob` text NOT NULL,
  `s_year_dob` text NOT NULL,
  `s_day_of_admission` text NOT NULL,
  `s_month_of_admission` text NOT NULL,
  `s_year_of_admission` text NOT NULL,
  `Q_1_fees` text NOT NULL,
  `Q_2_fees` text NOT NULL,
  `Q_3_fees` text NOT NULL,
  `Q_4_fees` text NOT NULL,
  `Q_1_transport` text NOT NULL,
  `Q_2_transport` text NOT NULL,
  `Q_3_transport` text NOT NULL,
  `Q_4_transport` text NOT NULL,
  `extra` text NOT NULL,
  `yearly` text NOT NULL,
  `monthly` text NOT NULL,
  `yearly_decided_fees` text NOT NULL,
  `tuition_decided_fees` text NOT NULL,
  `transport_decided_fees` text NOT NULL,
  `date_of_admission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='student_form';

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `data_of_join`, `gender`, `father_name`, `mother_name`, `DOB`, `class`, `father_no`, `mother_no`, `b_group`, `address`, `em_con_name`, `em_con_no_2`, `mode_of_pay`, `pay_type`, `special_remark`, `date_last_credit`, `credit_des`, `id`, `a`, `b`, `s_is_delete`, `s_day_dob`, `s_month_dob`, `s_year_dob`, `s_day_of_admission`, `s_month_of_admission`, `s_year_of_admission`, `Q_1_fees`, `Q_2_fees`, `Q_3_fees`, `Q_4_fees`, `Q_1_transport`, `Q_2_transport`, `Q_3_transport`, `Q_4_transport`, `extra`, `yearly`, `monthly`, `yearly_decided_fees`, `tuition_decided_fees`, `transport_decided_fees`, `date_of_admission`) VALUES
('STU_2019_1', 'Nimrit Kaur', '', '', 'Rupambir Singh', 'Ruchi Singh', '17 Aug 2019 01:05:16', 'Toodlers', '9898989898', '8787878787', '', 'Dugri', '', '', '', '', '', '', '', 1, '', '', '', '17', '8', '2019', '17', '8', '2019', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '', '20000', '7500', '3000', '17 Aug 2019 01:05:16'),
('STU_2019_2', 'Ajay Soni', '', '', 'kjkjkjkk', 'jhjhjhjj', '17 Aug 2019 01:56:21', 'L.K.G', '', '', '', '', '', '', '', '', '', '', '', 2, '', '', '', '17', '8', '2019', '17', '8', '2019', '5500', '0', '0', '0', '0', '0', '0', '0', '0', '1220', '', '25000', '7500', '4500', '17 Aug 2019 01:56:21'),
('STU_2019_3', 'ajay', '', 'BOY', 'satpal soni', 'saroj rani', '25 Aug 2019 02:34:05', 'Toodlers', '', '', 'B+', '', '', '', '', '', '', '', '', 3, '', '', '', '25', '8', '2019', '25', '8', '2019', '0', '01222', '0', '0', '0', '0', '0', '0', '', '0', '', '1200', '12000', '100', '25 Aug 2019 02:34:05'),
('STU_2019_4', 'dada', '', '', '', '', '01 Oct 2019 02:39:11', '', '', '', '', '', '', '', '', '', '', '', '', 4, '', '', '', '1', '10', '2019', '1', '10', '2019', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '', '', '', '', '01 Oct 2019 02:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `bank_balance` text NOT NULL,
  `cash_in_hand` text NOT NULL,
  `w_d` text NOT NULL,
  `amount` text NOT NULL,
  `date` text NOT NULL,
  `bank_balance_` text NOT NULL,
  `cash_in_hand_` text NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`bank_balance`, `cash_in_hand`, `w_d`, `amount`, `date`, `bank_balance_`, `cash_in_hand_`, `id`) VALUES
('-1320', '10000', 'Withdraw', '', '03-09-2019 01:47:07', '-1320', '10000', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_form`
--
ALTER TABLE `credit_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD KEY `id` (`id`);

--
-- Indexes for table `expense_table`
--
ALTER TABLE `expense_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit_form`
--
ALTER TABLE `credit_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_table`
--
ALTER TABLE `expense_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `local`
--
CREATE DATABASE IF NOT EXISTS `local` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `local`;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_data_id` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'beacon', '', 'INSERT', 'INSERT INTO `data_beacon`(`id`, `c`) VALUES (\'11527\',\'\')'),
(2, 'beacon', '', 'DELETE', 'DELETE FROM `data_beacon` WHERE id=11527');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Dumping data for table `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"admins\",\"table\":\"student_record\"},{\"db\":\"admin\",\"table\":\"admins_1\"},{\"db\":\"admins\",\"table\":\"admins_table\"},{\"db\":\"demo\",\"table\":\"demo_set\"},{\"db\":\"hogwartz\",\"table\":\"employee\"},{\"db\":\"hogwartz\",\"table\":\"expense_table\"},{\"db\":\"hogwartz\",\"table\":\"credit_form\"},{\"db\":\"hogwartz\",\"table\":\"student\"},{\"db\":\"hogwartz\",\"table\":\"withdraw\"},{\"db\":\"hogwartz\",\"table\":\"expense\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'admins', 'admins_table', '{\"sorted_col\":\"`admins_table`.`username` ASC\"}', '2019-10-04 17:08:47'),
('root', 'beacon', 'data_beacon', '{\"sorted_col\":\"`data_beacon`.`reader_address` ASC\"}', '2019-06-09 14:47:48'),
('root', 'hogwartz', 'employee', '{\"sorted_col\":\"`employee`.`e_id` ASC\"}', '2019-06-26 07:31:41'),
('root', 'hogwartz', 'student', '{\"CREATE_TIME\":\"2019-07-28 15:12:17\"}', '2019-07-29 08:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-05 00:14:17', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
