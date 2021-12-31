-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2021 at 03:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assisteventfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `bidtype` text DEFAULT NULL,
  `bidrate` varchar(255) DEFAULT NULL,
  `bidwishlist` int(11) DEFAULT 0,
  `bidfinalize` int(11) DEFAULT 0,
  `bidstatus` int(11) DEFAULT 0,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`id`, `eventid`, `vendorid`, `userid`, `bidtype`, `bidrate`, `bidwishlist`, `bidfinalize`, `bidstatus`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 2, 3, 2, 'Venue', '10000', 1, 0, 0, 0, '2021-12-10 11:25:50', '2021-12-10 11:41:21'),
(2, 1, 3, 2, 'Venue,Food', '10000', 0, 0, 0, 0, '2021-12-10 11:31:01', '2021-12-10 11:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) DEFAULT NULL,
  `catimg` varchar(255) DEFAULT NULL,
  `cattype` varchar(255) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `catimg`, `cattype`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Dessert', 'Images', 'Food', 0, '2021-12-10 06:32:20', '2021-12-10 08:23:51'),
(2, 'Pakistani Food', 'Images', 'Food', 0, '2021-12-10 06:33:13', '2021-12-10 06:45:37'),
(3, 'Fast Food', 'Images', 'Food', 0, '2021-12-10 06:33:23', '2021-12-10 06:33:23'),
(4, 'Chair', 'Images', 'Decoration', 0, '2021-12-10 06:33:42', '2021-12-10 06:33:42'),
(5, 'Table', 'Images', 'Decoration', 0, '2021-12-10 06:33:53', '2021-12-10 06:33:53'),
(6, 'Table', 'Images', 'Decoration', 0, '2021-12-10 06:34:54', '2021-12-10 06:34:54'),
(7, 'Dessert', 'Images', 'Food', 0, '2021-12-10 09:00:08', '2021-12-10 09:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `categoryitem`
--

CREATE TABLE `categoryitem` (
  `id` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `catItemname` text DEFAULT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoryitem`
--

INSERT INTO `categoryitem` (`id`, `catid`, `catItemname`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Kheer 1', 0, '2021-12-10 06:36:52', '2021-12-10 08:21:32'),
(2, 1, 'Zarda', 0, '2021-12-10 06:36:58', '2021-12-10 06:46:36'),
(3, 1, 'Kheer 2', 0, '2021-12-10 09:02:28', '2021-12-10 09:02:28'),
(4, 4, 'Kheer 244', 0, '2021-12-10 09:52:06', '2021-12-10 09:52:06'),
(5, 4, 'Kheer 24', 0, '2021-12-10 09:52:11', '2021-12-10 09:52:11'),
(6, 4, 'Kheer 4', 0, '2021-12-10 09:52:15', '2021-12-10 09:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `photographypackageid` int(11) DEFAULT 0,
  `videographypackageid` int(11) DEFAULT 0,
  `eventname` varchar(255) DEFAULT NULL,
  `eventtypeid` int(11) DEFAULT NULL,
  `eventguest` varchar(255) DEFAULT NULL,
  `eventdate` datetime DEFAULT NULL,
  `evenue` int(11) DEFAULT 0,
  `efood` int(11) DEFAULT 0,
  `edecoration` int(11) DEFAULT 0,
  `efloral` int(11) DEFAULT 0,
  `eaddonsdancefloor` int(11) DEFAULT 0,
  `eaddonsdisplay` int(11) DEFAULT 0,
  `eaddonssound` int(11) DEFAULT 0,
  `eaddonsphotobooth` int(11) DEFAULT 0,
  `eaddonsushers` int(11) DEFAULT 0,
  `eaddonssinger` int(11) DEFAULT 0,
  `eaddonssecurity` int(11) DEFAULT 0,
  `eaddonsgenerator` int(11) DEFAULT 0,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `userid`, `photographypackageid`, `videographypackageid`, `eventname`, `eventtypeid`, `eventguest`, `eventdate`, `evenue`, `efood`, `edecoration`, `efloral`, `eaddonsdancefloor`, `eaddonsdisplay`, `eaddonssound`, `eaddonsphotobooth`, `eaddonsushers`, `eaddonssinger`, `eaddonssecurity`, `eaddonsgenerator`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, 'Test', 1, '100', '2021-12-07 13:49:44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-12-08 07:37:48', '2021-12-08 09:10:15'),
(2, 1, 1, 1, 'Test1', 2, '100', '2021-12-07 13:49:44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 1, 1, 1, 'Test', 1, '100', '2021-12-07 13:49:44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 1, 1, 1, 'Test', 1, '100', '2021-12-07 13:49:44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 1, 1, 1, 'Test', 1, '100', '2021-12-07 13:49:44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonsdancefloor`
--

CREATE TABLE `eventaddonsdancefloor` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonsdancetype` varchar(255) DEFAULT NULL,
  `addonsdancesize` varchar(255) DEFAULT NULL,
  `addonsdancecirculartrussing` varchar(255) DEFAULT NULL,
  `addonsdanceanyspecify` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonsdancefloor`
--

INSERT INTO `eventaddonsdancefloor` (`id`, `eventid`, `addonsdancetype`, `addonsdancesize`, `addonsdancecirculartrussing`, `addonsdanceanyspecify`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'as', 'as', 'asd', 'asdas', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'as', 'as', 'asd', 'asdas', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'as', 'as', 'asd', 'asdas', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'as', 'as', 'asd', 'asdas', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'as', 'as', 'asd', 'asdas', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonsdisplay`
--

CREATE TABLE `eventaddonsdisplay` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonsprojectorsneeded` varchar(255) DEFAULT NULL,
  `addonsprojectorsize` varchar(255) DEFAULT NULL,
  `addonsprojectorqty` int(11) DEFAULT 0,
  `addonsledneeded` varchar(255) DEFAULT NULL,
  `addonsledsize` varchar(255) DEFAULT NULL,
  `addonsledqty` int(11) DEFAULT 0,
  `addonssmdplasma` varchar(255) DEFAULT NULL,
  `addonssmdsize` varchar(255) DEFAULT NULL,
  `addonssmdqty` int(11) DEFAULT 0,
  `addonsdisplayanyspecify` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonsdisplay`
--

INSERT INTO `eventaddonsdisplay` (`id`, `eventid`, `addonsprojectorsneeded`, `addonsprojectorsize`, `addonsprojectorqty`, `addonsledneeded`, `addonsledsize`, `addonsledqty`, `addonssmdplasma`, `addonssmdsize`, `addonssmdqty`, `addonsdisplayanyspecify`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asd', 'asd', 1, 'asd', 'asd', 1, 'asda', 'asdas', 0, 'asdsa', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asd', 'asd', 1, 'asd', 'asd', 1, 'asda', 'asdas', 0, 'asdsa', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asd', 'asd', 1, 'asd', 'asd', 1, 'asda', 'asdas', 0, 'asdsa', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asd', 'asd', 1, 'asd', 'asd', 1, 'asda', 'asdas', 0, 'asdsa', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asd', 'asd', 1, 'asd', 'asd', 1, 'asda', 'asdas', 0, 'asdsa', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonsgenerator`
--

CREATE TABLE `eventaddonsgenerator` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonsgeneratorkva` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonsgenerator`
--

INSERT INTO `eventaddonsgenerator` (`id`, `eventid`, `addonsgeneratorkva`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asdasdasdsa', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asdasdasdsa', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asdasdasdsa', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asdasdasdsa', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asdasdasdsa', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonsphotobooth`
--

CREATE TABLE `eventaddonsphotobooth` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonsphotobooththeme` text DEFAULT NULL,
  `addonsphotoboothbudget` int(100) DEFAULT 0,
  `addonsphotoboothimages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`addonsphotoboothimages`)),
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonsphotobooth`
--

INSERT INTO `eventaddonsphotobooth` (`id`, `eventid`, `addonsphotobooththeme`, `addonsphotoboothbudget`, `addonsphotoboothimages`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asda', 1, '\"\\\"asd\\\"\"', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asda', 1, '\"\\\"asd\\\"\"', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asda', 1, '\"\\\"asd\\\"\"', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asda', 1, '\"\\\"asd\\\"\"', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asda', 1, '\"\\\"asd\\\"\"', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonssecurity`
--

CREATE TABLE `eventaddonssecurity` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonsbouncers` varchar(255) DEFAULT NULL,
  `addonsvolunteers` varchar(255) DEFAULT NULL,
  `addonsarmedguards` varchar(255) DEFAULT NULL,
  `addonswtsates` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonssecurity`
--

INSERT INTO `eventaddonssecurity` (`id`, `eventid`, `addonsbouncers`, `addonsvolunteers`, `addonsarmedguards`, `addonswtsates`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'as', 'asd', 'asd', 'asd', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'as', 'asd', 'asd', 'asd', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'as', 'asd', 'asd', 'asd', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'as', 'asd', 'asd', 'asd', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'as', 'asd', 'asd', 'asd', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonssinger`
--

CREATE TABLE `eventaddonssinger` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonssingersintrested` text DEFAULT NULL,
  `addonsishosted` varchar(255) DEFAULT NULL,
  `addonsbudgets` varchar(255) DEFAULT NULL,
  `addonsgivebrief` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonssinger`
--

INSERT INTO `eventaddonssinger` (`id`, `eventid`, `addonssingersintrested`, `addonsishosted`, `addonsbudgets`, `addonsgivebrief`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asd', 'asd', 'asd', 'asdas', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asd', 'asd', 'asd', 'asdas', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asd', 'asd', 'asd', 'asdas', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asd', 'asd', 'asd', 'asdas', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asd', 'asd', 'asd', 'asdas', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventaddonssound`
--

CREATE TABLE `eventaddonssound` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `addonssounddescription` text DEFAULT NULL,
  `addonssoundqty` int(11) DEFAULT 0,
  `addonssoundanyspecify` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventaddonssound`
--

INSERT INTO `eventaddonssound` (`id`, `eventid`, `addonssounddescription`, `addonssoundqty`, `addonssoundanyspecify`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asd', 1, 'asd', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asd', 1, 'asd', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asd', 1, 'asd', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asd', 1, 'asd', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asd', 1, 'asd', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventdecoration`
--

CREATE TABLE `eventdecoration` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `themeevent` int(11) DEFAULT 0,
  `yourtheme` text DEFAULT NULL,
  `themereferenceimages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`themereferenceimages`)),
  `colorscheme` text DEFAULT NULL,
  `eventsegregated` int(11) DEFAULT 0,
  `decorationclassifies` int(11) DEFAULT 0,
  `decorationgenerator` int(11) DEFAULT 0,
  `decorationstage` int(11) DEFAULT 0,
  `briefaboutstage` text DEFAULT NULL,
  `decorationpackageid` int(11) DEFAULT 0,
  `createyourowndecoration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`createyourowndecoration`)),
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventdecoration`
--

INSERT INTO `eventdecoration` (`id`, `eventid`, `themeevent`, `yourtheme`, `themereferenceimages`, `colorscheme`, `eventsegregated`, `decorationclassifies`, `decorationgenerator`, `decorationstage`, `briefaboutstage`, `decorationpackageid`, `createyourowndecoration`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'asdasd', '\"\\\"1\\\"\"', 'asdasd', 1, 2, 1, 1, 'asda', 1, '[{\"id\":\"1\",\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]},\r\n{\"id\":\"2\",\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]},\r\n{\"id\":\"3\",\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]}]', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 1, 'asdasd', '\"\\\"1\\\"\"', 'asdasd', 1, 2, 1, 1, 'asda', 5, '\"\\\"1\\\"\"', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 1, 'asdasd', '\"\\\"1\\\"\"', 'asdasd', 1, 2, 1, 1, 'asda', 1, '\"\\\"1\\\"\"', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 1, 'asdasd', '\"\\\"1\\\"\"', 'asdasd', 1, 2, 1, 1, 'asda', 1, '\"\\\"1\\\"\"', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 1, 'asdasd', '\"\\\"1\\\"\"', 'asdasd', 1, 2, 3, 4, 'asda', 5, '[{\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]},\r\n{\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]},\r\n{\"foodCatName\": \"Desi\",\r\n\"foodCatImg\": \"https://hamariweb.com/recipes/images/recipeimages/3464.jpg\", \"FoodCategoryItems\": \r\n[ \"Biryani\",\"Qoram\"]}]', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventfloral`
--

CREATE TABLE `eventfloral` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `floralservices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`floralservices`)),
  `kindofflower` int(11) DEFAULT 0,
  `floralpricerange` int(11) DEFAULT 0,
  `floralspecifytheme` varchar(255) DEFAULT NULL,
  `floralexplaintheme` text DEFAULT NULL,
  `floralimages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`floralimages`)),
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventfloral`
--

INSERT INTO `eventfloral` (`id`, `eventid`, `floralservices`, `kindofflower`, `floralpricerange`, `floralspecifytheme`, `floralexplaintheme`, `floralimages`, `createdAt`, `updatedAt`) VALUES
(1, 1, '\"\\\"1\\\"\"', 25, 27, '\"1\"', 'asda', '\"\\\"1\\\"\"', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, '\"\\\"1\\\"\"', 1, 1, '\"1\"', 'asda', '\"\\\"1\\\"\"', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, '\"\\\"1\\\"\"', 1, 1, '\"1\"', 'asda', '\"\\\"1\\\"\"', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, '\"\\\"1\\\"\"', 1, 1, '\"1\"', 'asda', '\"\\\"1\\\"\"', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, '\"\\\"1\\\"\"', 1, 1, '\"1\"', 'asda', '\"\\\"1\\\"\"', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventfood`
--

CREATE TABLE `eventfood` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `menupackageid` int(11) DEFAULT 0,
  `createyourown` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`createyourown`)),
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventfood`
--

INSERT INTO `eventfood` (`id`, `eventid`, `menupackageid`, `createyourown`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, '\"1\"', 0, '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 2, '\"1\"', 0, '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 2, '\"1\"', 0, '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 2, '\"1\"', 0, '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 2, '\"1\"', 0, '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventp`
--

CREATE TABLE `eventp` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `ppackageid` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventp`
--

INSERT INTO `eventp` (`id`, `eventid`, `ppackageid`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 2, '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 2, '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 2, '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 2, '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventv`
--

CREATE TABLE `eventv` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `vpackageid` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventv`
--

INSERT INTO `eventv` (`id`, `eventid`, `vpackageid`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 2, '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 2, '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 2, '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 2, '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `eventvenue`
--

CREATE TABLE `eventvenue` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `venueservices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`venueservices`)),
  `preferredarea1` varchar(255) DEFAULT NULL,
  `preferredarea2` varchar(255) DEFAULT NULL,
  `preferredarea3` varchar(255) DEFAULT NULL,
  `starttime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `venuepricerange` varchar(255) DEFAULT '0',
  `venueanyothers` text DEFAULT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventvenue`
--

INSERT INTO `eventvenue` (`id`, `eventid`, `venueservices`, `preferredarea1`, `preferredarea2`, `preferredarea3`, `starttime`, `endtime`, `venuepricerange`, `venueanyothers`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, '\"1\"', 'Area', 'area2', 'area3', '33:58:52', '36:58:52', '6', 'ANy OTher', 0, '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, '\"1\"', 'Area', 'area2', 'area3', '33:58:52', '36:58:52', '1', 'ANy OTher', 0, '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, '\"1\"', 'Area', 'area2', 'area3', '33:58:52', '36:58:52', '1', 'ANy OTher', 0, '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, '\"1\"', 'Area', 'area2', 'area3', '33:58:52', '36:58:52', '1', 'ANy OTher', 0, '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, '\"1\"', 'Area', 'area2', 'area3', '33:58:52', '36:58:52', '1', 'ANy OTher', 0, '2021-12-08 16:24:19', '2021-12-08 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `id` int(11) NOT NULL,
  `extratype` varchar(255) DEFAULT NULL,
  `extradata` varchar(255) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`id`, `extratype`, `extradata`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Event Type', 'Weddings', 0, '2021-12-08 07:04:06', '2021-12-08 07:04:06'),
(2, 'Event Type', 'Valima', 0, '2021-12-08 07:04:06', '2021-12-08 07:04:06'),
(3, 'Event Type', 'Mendhi', 0, '2021-09-27 18:32:05', '2021-09-27 18:32:05'),
(4, 'Venue Services', 'Convention Center', 0, '2021-09-27 18:49:53', '2021-09-27 18:49:53'),
(5, 'Venue Services', 'Banquet/Marquee', 0, '2021-09-27 18:49:53', '2021-09-27 18:49:53'),
(6, 'Venue Price Range', '50K - 100K', 0, '2021-09-28 00:09:06', '2021-09-28 00:09:06'),
(7, 'Venue Price Range', '100k - 150k', 0, '2021-09-28 00:09:06', '2021-09-28 00:09:06'),
(8, 'Decoration Event Segregate', 'Yes', 0, '2021-09-28 01:12:11', '2021-09-28 01:12:11'),
(9, 'Decoration Event Segregate', 'No', 0, '2021-09-28 01:12:11', '2021-09-28 01:12:11'),
(10, 'Decoration Classifies', 'Classifies 1', 0, '2021-09-28 01:45:52', '2021-09-28 01:45:52'),
(11, 'Decoration Classifies', 'Classifies 2', 0, '2021-09-28 01:45:52', '2021-09-28 01:45:52'),
(12, 'Decoration Generator', 'Yes', 0, '2021-09-28 04:03:04', '2021-09-28 04:03:04'),
(13, 'Decoration Generator', 'No', 0, '2021-09-28 04:03:04', '2021-09-28 04:03:04'),
(14, 'Decoration Stage', 'Yes', 0, '2021-09-28 04:28:32', '2021-09-28 04:28:32'),
(15, 'Decoration Stage', 'No', 0, '2021-09-28 04:28:32', '2021-09-28 04:28:32'),
(16, 'Floral Services', 'Stage', 0, '2021-09-28 04:35:43', '2021-09-28 04:35:43'),
(17, 'Floral Services', 'Entrance', 0, '2021-09-28 04:35:43', '2021-09-28 04:35:43'),
(18, 'Floral Services', 'Centerpiece on Tables', 0, '2021-09-28 04:36:23', '2021-09-28 04:36:23'),
(19, 'Floral Services', 'Console Tables', 0, '2021-09-28 04:36:23', '2021-09-28 04:36:23'),
(20, 'Floral Services', 'Walkaway Structures\r\n', 0, '2021-09-28 04:36:59', '2021-09-28 04:36:59'),
(21, 'Floral Services', 'VIP Table Arrangments', 0, '2021-09-28 04:36:59', '2021-09-28 04:36:59'),
(22, 'Floral Services', 'Lounge Structures', 0, '2021-09-28 04:38:28', '2021-09-28 04:38:28'),
(23, 'Floral Services', 'Others', 0, '2021-09-28 04:38:28', '2021-09-28 04:38:28'),
(25, 'Floral Kind of Flowers', 'Flower 1', 0, '2021-09-28 05:21:29', '2021-09-28 05:21:29'),
(26, 'Floral Kind of Flowers', 'Flower 2', 0, '2021-09-28 05:21:29', '2021-09-28 05:21:29'),
(27, 'Floral Price Range', '50K - 100K', 0, '2021-09-28 05:35:23', '2021-09-28 05:35:23'),
(28, 'Floral Price Range', '100K - 150K', 0, '2021-09-28 05:35:23', '2021-09-28 05:35:23'),
(29, 'Floral Price Range', '150K - 200K', 0, '2021-09-28 05:36:44', '2021-09-28 05:36:44'),
(30, 'Floral Price Range', '200K - 250K', 0, '2021-09-28 05:36:44', '2021-09-28 05:36:44'),
(31, 'Dance Floor Type', 'Floor 1', 0, '2021-09-28 05:44:03', '2021-09-28 05:44:03'),
(32, 'Dance Floor Type', 'Floor 2', 0, '2021-09-28 05:44:03', '2021-09-28 05:44:03'),
(33, 'Dance Floor Size', 'Size 1', 0, '2021-09-28 06:01:41', '2021-09-28 06:01:41'),
(34, 'Dance Floor Size', 'Size 2', 0, '2021-09-28 06:01:41', '2021-09-28 06:01:41'),
(35, 'Dance Floor Circular Trussing', 'Circular Trussing 1', 0, '2021-09-28 06:06:42', '2021-09-28 06:06:42'),
(36, 'Dance Floor Circular Trussing', 'Circular Trussing 2', 0, '2021-09-28 06:06:42', '2021-09-28 06:06:42'),
(37, 'Event Type', 'Weddings', 1, '2021-12-08 15:50:11', '2021-12-08 16:01:51'),
(38, 'Event Type', 'Weddings', 0, '2021-12-08 15:57:21', '2021-12-08 15:57:21'),
(39, 'Event Type', 'Maiyat', 0, '2021-12-08 15:59:02', '2021-12-08 16:16:14'),
(43, 'Event Type', 'Valima2', 0, '2021-12-22 14:04:59', '2021-12-22 15:19:42'),
(44, 'Event Type', 'Valima3', 0, '2021-12-27 13:12:17', '2021-12-27 13:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `servicetype` varchar(255) DEFAULT NULL,
  `eventtype` int(11) DEFAULT 0,
  `packagename` varchar(255) DEFAULT NULL,
  `packageimg` text DEFAULT NULL,
  `packagedesc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`packagedesc`)),
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `servicetype`, `eventtype`, `packagename`, `packageimg`, `packagedesc`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Food', 2, 'Gold', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:18', '2021-12-10 07:55:18'),
(2, 'Videography', 2, 'Silver', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:26', '2021-12-10 07:55:26'),
(3, 'Food', 1, 'Silver', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:34', '2021-12-10 07:55:34'),
(4, 'Food', 1, 'Gold', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:38', '2021-12-10 07:55:38'),
(5, 'Decoration', 1, 'Gold', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:46', '2021-12-10 07:55:46'),
(6, 'Photography', 1, 'Silver', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:55:49', '2021-12-10 07:55:49'),
(7, 'Decoration', 2, 'Gold', 'Package Image', '\"JSON\"', 0, '2021-12-10 07:56:00', '2021-12-10 07:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userfullname` varchar(255) DEFAULT NULL,
  `userpassword` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `userphone` varchar(255) DEFAULT NULL,
  `usertoken` text DEFAULT NULL,
  `userprofileimage` longtext DEFAULT NULL,
  `userstatus` int(11) DEFAULT 0,
  `userverification` int(11) DEFAULT 0,
  `userrole` int(11) DEFAULT 0,
  `vendorcompanyname` varchar(255) DEFAULT NULL,
  `vendorcompanynumber` varchar(255) DEFAULT NULL,
  `vendorcompanylocation` varchar(255) DEFAULT NULL,
  `vendorcompanydesignation` varchar(255) DEFAULT NULL,
  `vendorservices` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`vendorservices`)),
  `vendorgalery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`vendorgalery`)),
  `vendoraboutus` text DEFAULT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userfullname`, `userpassword`, `useremail`, `userphone`, `usertoken`, `userprofileimage`, `userstatus`, `userverification`, `userrole`, `vendorcompanyname`, `vendorcompanynumber`, `vendorcompanylocation`, `vendorcompanydesignation`, `vendorservices`, `vendorgalery`, `vendoraboutus`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 'Atiq', '12345678', 'atiq@test.com', '34343', '343434', 'https://picsum.photos/200/300?random=1', 0, 0, 0, 'SenseFlow', '03008522678', 'Karachi', 'CEO', '\"\\\"\\\\\\\"\\\\\\\\\\\\\\\"1,2,3\\\\\\\\\\\\\\\"\\\\\\\"\\\"\"', '\"\\\"\\\\\\\"\\\\\\\\\\\\\\\"1,2,3\\\\\\\\\\\\\\\"\\\\\\\"\\\"\"', 'About us', 1, '2021-12-09 13:04:51', '2021-12-17 15:40:11'),
(2, 'Atiq', '123456', 'atiq1@test.com', '34343', '343434', 'https://picsum.photos/200/300?random=1', 0, 0, 0, 'SenseFlow', '03008522678', 'Karachi', 'CEO', '\"\\\"\\\\\\\"\\\\\\\\\\\\\\\"1,2,3\\\\\\\\\\\\\\\"\\\\\\\"\\\"\"', '\"\\\"\\\\\\\"\\\\\\\\\\\\\\\"1,2,3\\\\\\\\\\\\\\\"\\\\\\\"\\\"\"', 'About us', 1, '2021-12-09 13:04:51', '2021-12-18 08:36:38'),
(3, 'Atiq', '123456', 'atiq3@test.com', '34343', '343434', 'https://picsum.photos/200/300?random=1', 0, 0, 1, 'SenseFlow', '03008522678', 'Karachi', 'CEO', '\"1,2,3\"', '\"1,2,3\"', 'About us', 0, '2021-12-09 13:04:51', '2021-12-09 13:04:51'),
(4, 'Atiq', '123456', 'atiq4@test.com', '34343', '343434', 'https://picsum.photos/200/300?random=1', 0, 0, 1, 'SenseFlow', '03008522678', 'Karachi', 'CEO', '\"\\\"1,2,3\\\"\"', '\"\\\"1,2,3\\\"\"', 'About us', 0, '2021-12-09 13:04:51', '2021-12-09 12:54:47'),
(6, 'Atiq', '123456', 'atiq5@test.com', '34343', '343434', 'https://picsum.photos/200/300?random=1', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-09 13:13:07', '2021-12-09 13:13:07'),
(7, 'Atiq', '123456', 'atiq6@test.com', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-12-09 13:23:35', '2021-12-22 11:42:23'),
(8, 'Administrator', 'admin', 'admin', NULL, NULL, NULL, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-09 15:08:25', '2021-12-09 15:08:25'),
(9, 'Urooj Atiq', '12345678', 'atiq1451@hotmail.com', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 11:01:43', '2021-12-17 15:38:32'),
(10, 'Urooj Atiq', '12345678', 'atiq145@hotmail.com', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 11:01:53', '2021-12-17 15:36:05'),
(11, 'Urooj Atiq', 'Abcd@1234', 'AtiqW@hotmail.com', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 11:08:53', '2021-12-17 15:17:49'),
(12, 'Atiq', '123456', 'atiq67@test.com', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 11:20:06', '2021-12-15 11:20:06'),
(13, 'Urooj Atiq', 'Abcd@1234', 'atiq1455@hotmail.com', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-12-15 13:38:14', '2021-12-18 08:36:28'),
(15, 'Urooj Atiq', 'Abcd@1234', 'atiq14511@hotmail.com', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 13:44:23', '2021-12-17 15:17:11'),
(16, 'Urooj Atiq', 'Abcd@1234', 'atiq145111@hotmail.com', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-15 13:44:57', '2021-12-17 15:16:44'),
(78, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:08:44', '2021-12-20 09:08:44'),
(79, 'Urooj Atiq', 'Abcd@1234', 'atiq14534343@hotmail.com', '03008522678', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:10:24', '2021-12-20 09:10:24'),
(80, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.se3434nseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:10:53', '2021-12-20 09:10:53'),
(81, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen333seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:15:07', '2021-12-20 09:15:07'),
(82, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen34343443seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:15:57', '2021-12-20 09:15:57'),
(83, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen343434asda43seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:16:35', '2021-12-20 09:16:35'),
(84, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen343asdad434asda43seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:17:13', '2021-12-20 09:17:13'),
(85, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.s3434enseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:18:04', '2021-12-20 09:18:04'),
(86, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen34seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:19:17', '2021-12-20 09:19:17'),
(87, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq12.senseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:21:07', '2021-12-20 09:21:07'),
(88, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen333sefl33ow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:21:52', '2021-12-20 09:21:52'),
(89, 'Urooj Atiq', 'Abcd@1234', 'atiq145334@hotmail.com', '03008522678', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:24:16', '2021-12-20 09:24:16'),
(90, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sensefl333334ow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:24:35', '2021-12-20 09:24:35'),
(91, 'Huzaifa Jabbar', 'Abcd#2345', 'atiq.se121nseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:26:03', '2021-12-20 09:26:03'),
(92, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo3434w@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:26:45', '2021-12-20 09:26:45'),
(93, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo34343w@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:27:22', '2021-12-20 09:27:22'),
(94, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo34aa34w@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:31:27', '2021-12-20 09:31:27'),
(95, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo333w@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:34:24', '2021-12-20 09:34:24'),
(96, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo3e3ew@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:35:27', '2021-12-20 09:35:27'),
(97, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflossaw@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:37:26', '2021-12-20 09:37:26'),
(98, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflow@gmaiaal.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:39:05', '2021-12-20 09:39:05'),
(99, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseasaflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:39:40', '2021-12-20 09:39:40'),
(100, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sensasadeflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:40:50', '2021-12-20 09:40:50'),
(101, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sensefloasaw@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:44:02', '2021-12-20 09:44:02'),
(102, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflow@gm31ail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:44:48', '2021-12-20 09:44:48'),
(103, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.wsenseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:45:21', '2021-12-20 09:45:21'),
(104, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen22seflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:45:57', '2021-12-20 09:45:57'),
(105, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.se22nseflow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:47:41', '2021-12-20 09:47:41'),
(106, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflo33322w@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:51:26', '2021-12-20 09:51:26'),
(107, 'Huzaifa Jabbar', 'Abcd@1234', '107', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:53:27', '2021-12-20 09:53:27'),
(108, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseferelow@gmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 09:56:18', '2021-12-20 09:56:18'),
(109, 'Huzaifa Jabbar', 'Abcd@1234', 'ati22q.senseflow@gmail.com', '03042349015', NULL, '/Users/Atiq/Atiq Work/React Code/AssistFinal/assistback/upload/109.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 10:01:08', '2021-12-20 10:01:08'),
(110, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.senseflow@gwwmail.com', '03042349015', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 10:02:36', '2021-12-20 10:02:36'),
(111, 'Huzaifa Jabbar', 'Abcd@1234', 'atiq.sen333s3eflow@gmail.com', '030423490155', NULL, '111.png', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-20 10:02:54', '2021-12-21 15:57:05'),
(116, 'Urooj Atiq', 'Abcd@1234', 'atiq145@ho212tmail.com', '030085222678', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-12-21 14:00:51', '2021-12-27 14:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `usher`
--

CREATE TABLE `usher` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `nohrservices` varchar(255) DEFAULT NULL,
  `noushers` varchar(255) DEFAULT NULL,
  `agebracket` varchar(255) DEFAULT NULL,
  `givebrief` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usher`
--

INSERT INTO `usher` (`id`, `eventid`, `nohrservices`, `noushers`, `agebracket`, `givebrief`, `skills`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'asd', 'asd', 'asd', 'asd', 'asd', '2021-12-08 07:37:48', '2021-12-08 07:37:48'),
(2, 2, 'asd', 'asd', 'asd', 'asd', 'asd', '2021-12-08 09:11:24', '2021-12-08 09:11:24'),
(3, 3, 'asd', 'asd', 'asd', 'asd', 'asd', '2021-12-08 09:26:15', '2021-12-08 09:26:15'),
(4, 4, 'asd', 'asd', 'asd', 'asd', 'asd', '2021-12-08 09:33:32', '2021-12-08 09:33:32'),
(5, 5, 'asd', 'asd', 'asd', 'asd', 'asd', '2021-12-08 16:24:19', '2021-12-08 16:24:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`),
  ADD KEY `vendorid` (`vendorid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoryitem`
--
ALTER TABLE `categoryitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventaddonsdancefloor`
--
ALTER TABLE `eventaddonsdancefloor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonsdisplay`
--
ALTER TABLE `eventaddonsdisplay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonsgenerator`
--
ALTER TABLE `eventaddonsgenerator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonsphotobooth`
--
ALTER TABLE `eventaddonsphotobooth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonssecurity`
--
ALTER TABLE `eventaddonssecurity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonssinger`
--
ALTER TABLE `eventaddonssinger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventaddonssound`
--
ALTER TABLE `eventaddonssound`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventdecoration`
--
ALTER TABLE `eventdecoration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`),
  ADD KEY `themeevent` (`themeevent`),
  ADD KEY `eventsegregated` (`eventsegregated`),
  ADD KEY `decorationclassifies` (`decorationclassifies`),
  ADD KEY `decorationgenerator` (`decorationgenerator`),
  ADD KEY `decorationstage` (`decorationstage`);

--
-- Indexes for table `eventfloral`
--
ALTER TABLE `eventfloral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventfood`
--
ALTER TABLE `eventfood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventp`
--
ALTER TABLE `eventp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventv`
--
ALTER TABLE `eventv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `eventvenue`
--
ALTER TABLE `eventvenue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usher`
--
ALTER TABLE `usher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventid` (`eventid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoryitem`
--
ALTER TABLE `categoryitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonsdancefloor`
--
ALTER TABLE `eventaddonsdancefloor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonsdisplay`
--
ALTER TABLE `eventaddonsdisplay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonsgenerator`
--
ALTER TABLE `eventaddonsgenerator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonsphotobooth`
--
ALTER TABLE `eventaddonsphotobooth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonssecurity`
--
ALTER TABLE `eventaddonssecurity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonssinger`
--
ALTER TABLE `eventaddonssinger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventaddonssound`
--
ALTER TABLE `eventaddonssound`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventdecoration`
--
ALTER TABLE `eventdecoration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventfloral`
--
ALTER TABLE `eventfloral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventfood`
--
ALTER TABLE `eventfood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventp`
--
ALTER TABLE `eventp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventv`
--
ALTER TABLE `eventv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventvenue`
--
ALTER TABLE `eventvenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `usher`
--
ALTER TABLE `usher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidding`
--
ALTER TABLE `bidding`
  ADD CONSTRAINT `bidding_ibfk_1` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bidding_ibfk_2` FOREIGN KEY (`vendorid`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bidding_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categoryitem`
--
ALTER TABLE `categoryitem`
  ADD CONSTRAINT `categoryitem_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `eventaddonsdancefloor`
--
ALTER TABLE `eventaddonsdancefloor`
  ADD CONSTRAINT `eventaddonsdancefloor_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonsdancefloor_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonsdisplay`
--
ALTER TABLE `eventaddonsdisplay`
  ADD CONSTRAINT `eventaddonsdisplay_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonsdisplay_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonsgenerator`
--
ALTER TABLE `eventaddonsgenerator`
  ADD CONSTRAINT `eventaddonsgenerator_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonsgenerator_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonsphotobooth`
--
ALTER TABLE `eventaddonsphotobooth`
  ADD CONSTRAINT `eventaddonsphotobooth_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonsphotobooth_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonssecurity`
--
ALTER TABLE `eventaddonssecurity`
  ADD CONSTRAINT `eventaddonssecurity_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonssecurity_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonssinger`
--
ALTER TABLE `eventaddonssinger`
  ADD CONSTRAINT `eventaddonssinger_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonssinger_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventaddonssound`
--
ALTER TABLE `eventaddonssound`
  ADD CONSTRAINT `eventaddonssound_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventaddonssound_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventdecoration`
--
ALTER TABLE `eventdecoration`
  ADD CONSTRAINT `eventdecoration_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventdecoration_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventdecoration_ibfk_3` FOREIGN KEY (`themeevent`) REFERENCES `extra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventdecoration_ibfk_4` FOREIGN KEY (`eventsegregated`) REFERENCES `extra` (`id`),
  ADD CONSTRAINT `eventdecoration_ibfk_5` FOREIGN KEY (`decorationclassifies`) REFERENCES `extra` (`id`),
  ADD CONSTRAINT `eventdecoration_ibfk_6` FOREIGN KEY (`decorationgenerator`) REFERENCES `extra` (`id`),
  ADD CONSTRAINT `eventdecoration_ibfk_7` FOREIGN KEY (`decorationstage`) REFERENCES `extra` (`id`);

--
-- Constraints for table `eventfloral`
--
ALTER TABLE `eventfloral`
  ADD CONSTRAINT `eventfloral_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventfloral_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventfood`
--
ALTER TABLE `eventfood`
  ADD CONSTRAINT `eventfood_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventfood_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventp`
--
ALTER TABLE `eventp`
  ADD CONSTRAINT `eventp_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventp_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventv`
--
ALTER TABLE `eventv`
  ADD CONSTRAINT `eventv_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventv_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventvenue`
--
ALTER TABLE `eventvenue`
  ADD CONSTRAINT `eventvenue_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `eventvenue_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usher`
--
ALTER TABLE `usher`
  ADD CONSTRAINT `usher_ibfk_1` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
