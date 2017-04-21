-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2017 at 03:49 PM
-- Server version: 5.6.30-1~bpo8+1
-- PHP Version: 5.6.23-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `missabig_abigailcouture`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Category') CHARACTER SET utf8 DEFAULT 'Category',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `GalleryPageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `SortOrder`, `GalleryPageID`) VALUES
(1, 'Category', '2017-04-12 16:44:55', '2017-04-02 04:52:49', 'Leah & Stathie', 3, 6),
(5, 'Category', '2017-04-12 16:44:55', '2017-04-10 11:17:59', 'Abby & Johnny', 1, 6),
(6, 'Category', '2017-04-12 16:44:55', '2017-04-10 11:18:34', 'Fiona & Anthony', 2, 6),
(7, 'Category', '2017-04-12 16:27:05', '2017-04-11 14:09:11', 'F Rock', 5, 11),
(8, 'Category', '2017-04-12 10:51:57', '2017-04-11 14:09:26', 'The Sevens', 3, 11),
(9, 'Category', '2017-04-12 10:51:57', '2017-04-11 14:09:43', 'Wellington Fashion Week', 4, 11),
(10, 'Category', '2017-04-12 10:51:57', '2017-04-11 14:09:59', 'Fashion in the field', 1, 11),
(11, 'Category', '2017-04-12 10:51:57', '2017-04-11 14:10:15', 'WOW', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox`
--

CREATE TABLE IF NOT EXISTS `EditableCheckbox` (
`ID` int(11) NOT NULL,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox_Live`
--

CREATE TABLE IF NOT EXISTS `EditableCheckbox_Live` (
`ID` int(11) NOT NULL,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCheckbox_versions`
--

CREATE TABLE IF NOT EXISTS `EditableCheckbox_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule_Live`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableCustomRule_versions`
--

CREATE TABLE IF NOT EXISTS `EditableCustomRule_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableCustomRule') CHARACTER SET utf8 DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') CHARACTER SET utf8 DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `FieldValue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField`
--

CREATE TABLE IF NOT EXISTS `EditableDateField` (
`ID` int(11) NOT NULL,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableDateField`
--

INSERT INTO `EditableDateField` (`ID`, `DefaultToToday`) VALUES
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableDateField_Live` (
`ID` int(11) NOT NULL,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableDateField_Live`
--

INSERT INTO `EditableDateField_Live` (`ID`, `DefaultToToday`) VALUES
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EditableDateField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableDateField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableDateField_versions`
--

INSERT INTO `EditableDateField_versions` (`ID`, `RecordID`, `Version`, `DefaultToToday`) VALUES
(1, 5, 3, 0),
(2, 5, 4, 0),
(3, 5, 5, 0),
(4, 5, 6, 0),
(5, 5, 9, 0),
(6, 5, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown`
--

CREATE TABLE IF NOT EXISTS `EditableDropdown` (
`ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown_Live`
--

CREATE TABLE IF NOT EXISTS `EditableDropdown_Live` (
`ID` int(11) NOT NULL,
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableDropdown_versions`
--

CREATE TABLE IF NOT EXISTS `EditableDropdown_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `UseEmptyString` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EmptyString` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableEmailField`
--

CREATE TABLE IF NOT EXISTS `EditableEmailField` (
`ID` int(11) NOT NULL,
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableEmailField`
--

INSERT INTO `EditableEmailField` (`ID`, `Placeholder`) VALUES
(3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EditableEmailField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableEmailField_Live` (
`ID` int(11) NOT NULL,
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableEmailField_Live`
--

INSERT INTO `EditableEmailField_Live` (`ID`, `Placeholder`) VALUES
(3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EditableEmailField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableEmailField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableEmailField_versions`
--

INSERT INTO `EditableEmailField_versions` (`ID`, `RecordID`, `Version`, `Placeholder`) VALUES
(1, 3, 3, NULL),
(2, 3, 4, NULL),
(3, 3, 5, NULL),
(4, 3, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup` (
`ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup_Live` (
`ID` int(11) NOT NULL,
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFieldGroup_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFieldGroup_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EndID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField`
--

CREATE TABLE IF NOT EXISTS `EditableFileField` (
`ID` int(11) NOT NULL,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFileField_Live` (
`ID` int(11) NOT NULL,
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFileField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFileField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MaxFileSizeMB` float NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField`
--

CREATE TABLE IF NOT EXISTS `EditableFormField` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField`
--

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ShowInSummary`, `Version`, `ParentID`) VALUES
(1, 'EditableFormStep', '2017-04-02 04:09:13', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3, 3),
(2, 'EditableTextField', '2017-04-02 04:09:13', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 6, 3),
(3, 'EditableEmailField', '2017-04-02 04:09:13', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 5, 3),
(4, 'EditableTextField', '2017-04-04 10:58:57', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 5, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 10, 3),
(5, 'EditableTextField', '2017-04-10 20:11:42', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField_Live`
--

INSERT INTO `EditableFormField_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ShowInSummary`, `Version`, `ParentID`) VALUES
(1, 'EditableFormStep', '2017-04-12 16:40:25', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3, 3),
(2, 'EditableTextField', '2017-04-12 16:40:25', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 6, 3),
(3, 'EditableEmailField', '2017-04-12 16:40:25', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 5, 3),
(4, 'EditableTextField', '2017-04-12 16:40:25', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 5, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 10, 3),
(5, 'EditableTextField', '2017-04-12 16:40:25', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFormField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext CHARACTER SET utf8,
  `RightTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ShowInSummary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableFormField_versions`
--

INSERT INTO `EditableFormField_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ShowInSummary`, `ParentID`) VALUES
(1, 1, 1, 0, 1, 0, 'EditableFormStep', '2017-04-02 03:58:04', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0),
(2, 1, 2, 1, 1, 1, 'EditableFormStep', '2017-04-02 03:58:04', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(3, 2, 1, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:12', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0),
(4, 2, 2, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:12', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', NULL, NULL, 2, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(5, 3, 1, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:19', '2017-04-02 03:58:19', 'EditableTextField_12e31', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0),
(6, 3, 2, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:19', '2017-04-02 03:58:19', 'EditableTextField_12e31', NULL, NULL, 3, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(7, 4, 1, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:20', '2017-04-02 03:58:20', 'EditableTextField_766b7', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0),
(8, 4, 2, 0, 1, 0, 'EditableTextField', '2017-04-02 03:58:20', '2017-04-02 03:58:20', 'EditableTextField_766b7', NULL, NULL, 4, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(9, 2, 3, 1, 1, 1, 'EditableTextField', '2017-04-02 03:58:31', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', NULL, NULL, 2, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(10, 3, 3, 1, 1, 1, 'EditableEmailField', '2017-04-02 03:58:31', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(11, 4, 3, 1, 1, 1, 'EditableTextField', '2017-04-02 03:58:31', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(12, 2, 4, 1, 1, 1, 'EditableTextField', '2017-04-02 03:58:44', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(13, 2, 5, 1, 1, 1, 'EditableTextField', '2017-04-02 03:58:56', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 1, 'Required', NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(14, 3, 4, 1, 1, 1, 'EditableEmailField', '2017-04-02 03:59:02', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 1, 'Required', NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(15, 4, 4, 1, 1, 1, 'EditableTextField', '2017-04-02 03:59:09', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(16, 1, 3, 1, 1, 1, 'EditableFormStep', '2017-04-02 04:09:13', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(17, 1, 4, 0, 1, 0, 'EditableFormStep', '2017-04-02 04:09:13', '2017-04-02 03:58:04', 'EditableFormStep_67d06', 'First Page', NULL, 1, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(18, 2, 6, 1, 1, 1, 'EditableTextField', '2017-04-02 04:09:13', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(19, 2, 7, 0, 1, 0, 'EditableTextField', '2017-04-02 04:09:13', '2017-04-02 03:58:12', 'EditableTextField_3ba8a', 'Name', NULL, 2, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(20, 3, 5, 1, 1, 1, 'EditableEmailField', '2017-04-02 04:09:13', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(21, 3, 6, 0, 1, 0, 'EditableEmailField', '2017-04-02 04:09:13', '2017-04-02 03:58:19', 'EditableTextField_12e31', 'Email', NULL, 3, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(22, 4, 5, 1, 1, 1, 'EditableTextField', '2017-04-02 04:09:13', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(23, 4, 6, 0, 1, 0, 'EditableTextField', '2017-04-02 04:09:13', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(24, 4, 7, 0, 1, 0, 'EditableTextField', '2017-04-04 08:56:33', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(25, 4, 8, 0, 1, 0, 'EditableTextField', '2017-04-04 10:57:41', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(26, 4, 9, 0, 1, 0, 'EditableTextField', '2017-04-04 10:58:26', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(27, 4, 10, 1, 1, 1, 'EditableTextField', '2017-04-04 10:58:57', '2017-04-02 03:58:20', 'EditableTextField_766b7', 'Message', NULL, 4, 1, 'Required', NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(28, 5, 1, 0, 2, 0, 'EditableTextField', '2017-04-08 07:25:48', '2017-04-08 07:25:48', 'EditableTextField_7780b', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 0),
(29, 5, 2, 0, 2, 0, 'EditableTextField', '2017-04-08 07:25:48', '2017-04-08 07:25:48', 'EditableTextField_7780b', NULL, NULL, 5, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(30, 5, 3, 1, 2, 2, 'EditableDateField', '2017-04-08 07:26:03', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Preferred appointment date', NULL, 5, 0, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 3),
(31, 5, 4, 1, 2, 2, 'EditableDateField', '2017-04-08 07:26:15', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Preferred appointment date', NULL, 5, 0, NULL, NULL, NULL, 0, NULL, '(Optional)', 1, 0, 3),
(32, 5, 5, 1, 1, 1, 'EditableDateField', '2017-04-08 08:24:25', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Preferred appointment date', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, '(Optional)', 1, 0, 3),
(33, 5, 6, 0, 1, 0, 'EditableDateField', '2017-04-08 08:24:25', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Preferred appointment date', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, '(Optional)', 1, 0, 3),
(34, 5, 7, 1, 1, 1, 'EditableTextField', '2017-04-10 20:08:10', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, '(Optional)', 1, 0, 3),
(35, 5, 8, 0, 1, 0, 'EditableTextField', '2017-04-10 20:09:28', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, '(Optional)', 1, 0, 3),
(36, 5, 9, 1, 1, 1, 'EditableDateField', '2017-04-10 20:10:15', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(37, 5, 10, 0, 1, 0, 'EditableDateField', '2017-04-10 20:10:31', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3),
(38, 5, 11, 1, 1, 1, 'EditableTextField', '2017-04-10 20:11:42', '2017-04-08 07:25:48', 'EditableTextField_7780b', 'Phone Number', NULL, 4, 0, NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading`
--

CREATE TABLE IF NOT EXISTS `EditableFormHeading` (
`ID` int(11) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading_Live`
--

CREATE TABLE IF NOT EXISTS `EditableFormHeading_Live` (
`ID` int(11) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableFormHeading_versions`
--

CREATE TABLE IF NOT EXISTS `EditableFormHeading_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField`
--

CREATE TABLE IF NOT EXISTS `EditableLiteralField` (
`ID` int(11) NOT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableLiteralField_Live` (
`ID` int(11) NOT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableLiteralField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableLiteralField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField`
--

CREATE TABLE IF NOT EXISTS `EditableMemberListField` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableMemberListField_Live` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableMemberListField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableMemberListField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField`
--

CREATE TABLE IF NOT EXISTS `EditableNumericField` (
`ID` int(11) NOT NULL,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableNumericField_Live` (
`ID` int(11) NOT NULL,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableNumericField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableNumericField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption`
--

CREATE TABLE IF NOT EXISTS `EditableOption` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_Live`
--

CREATE TABLE IF NOT EXISTS `EditableOption_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableOption_versions`
--

CREATE TABLE IF NOT EXISTS `EditableOption_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField`
--

CREATE TABLE IF NOT EXISTS `EditableTextField` (
`ID` int(11) NOT NULL,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField`
--

INSERT INTO `EditableTextField` (`ID`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`, `Autocomplete`) VALUES
(2, 0, 0, 1, NULL, 'off'),
(3, 0, 0, 1, NULL, NULL),
(4, 0, 0, 8, NULL, 'off'),
(5, 0, 0, 1, NULL, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField_Live`
--

CREATE TABLE IF NOT EXISTS `EditableTextField_Live` (
`ID` int(11) NOT NULL,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField_Live`
--

INSERT INTO `EditableTextField_Live` (`ID`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`, `Autocomplete`) VALUES
(2, 0, 0, 1, NULL, 'off'),
(4, 0, 0, 8, NULL, 'off'),
(5, 0, 0, 1, NULL, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `EditableTextField_versions`
--

CREATE TABLE IF NOT EXISTS `EditableTextField_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Autocomplete` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EditableTextField_versions`
--

INSERT INTO `EditableTextField_versions` (`ID`, `RecordID`, `Version`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`, `Autocomplete`) VALUES
(1, 2, 1, 0, 0, 1, NULL, NULL),
(2, 2, 2, 0, 0, 1, NULL, NULL),
(3, 3, 1, 0, 0, 1, NULL, NULL),
(4, 3, 2, 0, 0, 1, NULL, NULL),
(5, 4, 1, 0, 0, 1, NULL, NULL),
(6, 4, 2, 0, 0, 1, NULL, NULL),
(7, 2, 3, 0, 0, 1, NULL, NULL),
(8, 4, 3, 0, 0, 1, NULL, NULL),
(9, 2, 4, 0, 0, 1, NULL, NULL),
(10, 2, 5, 0, 0, 1, NULL, 'off'),
(11, 4, 4, 0, 0, 1, NULL, 'off'),
(12, 2, 6, 0, 0, 1, NULL, 'off'),
(13, 2, 7, 0, 0, 1, NULL, 'off'),
(14, 4, 5, 0, 0, 1, NULL, 'off'),
(15, 4, 6, 0, 0, 1, NULL, 'off'),
(16, 4, 7, 0, 0, 10, NULL, 'off'),
(17, 4, 8, 0, 0, 10, NULL, 'off'),
(18, 4, 9, 0, 0, 8, NULL, 'off'),
(19, 4, 10, 0, 0, 8, NULL, 'off'),
(20, 5, 1, 0, 0, 1, NULL, NULL),
(21, 5, 2, 0, 0, 1, NULL, NULL),
(22, 5, 7, 0, 0, 1, NULL, NULL),
(23, 5, 8, 0, 0, 1, NULL, 'off'),
(24, 5, 11, 0, 0, 1, NULL, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
`ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2017-04-02 04:09:57', '2017-04-02 04:09:57', 'Gallery', 'Gallery', 'assets/Gallery/', NULL, 1, 0, 1),
(2, 'Image', '2017-04-02 04:09:57', '2017-04-02 04:09:57', '0b1893ed-f09c-401a-9839-092cffedf549-f9b74840.jpg', '0b1893ed f09c 401a 9839 092cffedf549 f9b74840', 'assets/Gallery/0b1893ed-f09c-401a-9839-092cffedf549-f9b74840.jpg', NULL, 1, 1, 1),
(3, 'Image', '2017-04-02 04:10:33', '2017-04-02 04:10:33', '2b6e4534-3171-4c54-8fc9-23976187eebf-2b49a64d.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 2b49a64d', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-2b49a64d.jpg', NULL, 1, 1, 1),
(4, 'Image', '2017-04-02 04:10:44', '2017-04-02 04:10:44', '2b6e4534-3171-4c54-8fc9-23976187eebf-9e9705e1.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 9e9705e1', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-9e9705e1.jpg', NULL, 1, 1, 1),
(5, 'Image', '2017-04-02 04:22:00', '2017-04-02 04:22:00', '2b6e4534-3171-4c54-8fc9-23976187eebf-75a180bd.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 75a180bd', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-75a180bd.jpg', NULL, 1, 1, 1),
(6, 'Image', '2017-04-02 04:22:18', '2017-04-02 04:22:18', 'b6b81891-5e76-4421-84d6-71832e2a6e82-6bf1abf6.jpg', 'b6b81891 5e76 4421 84d6 71832e2a6e82 6bf1abf6', 'assets/Gallery/b6b81891-5e76-4421-84d6-71832e2a6e82-6bf1abf6.jpg', NULL, 1, 1, 1),
(7, 'Folder', '2017-04-02 04:38:54', '2017-04-02 04:38:54', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 1),
(9, 'Image', '2017-04-02 04:54:40', '2017-04-02 04:54:40', '0b1893ed-f09c-401a-9839-092cffedf549-64706843.jpg', '0b1893ed f09c 401a 9839 092cffedf549 64706843', 'assets/Gallery/0b1893ed-f09c-401a-9839-092cffedf549-64706843.jpg', NULL, 1, 1, 1),
(10, 'Image', '2017-04-02 04:54:54', '2017-04-02 04:54:54', '2b6e4534-3171-4c54-8fc9-23976187eebf-2b49a64d2.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 2b49a64d2', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-2b49a64d2.jpg', NULL, 1, 1, 1),
(11, 'Image', '2017-04-02 04:55:06', '2017-04-02 04:55:06', '2b6e4534-3171-4c54-8fc9-23976187eebf-86bb2326.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 86bb2326', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-86bb2326.jpg', NULL, 1, 1, 1),
(12, 'Image', '2017-04-02 04:55:19', '2017-04-02 04:55:19', '2b6e4534-3171-4c54-8fc9-23976187eebf-7b7cd65d.jpg', '2b6e4534 3171 4c54 8fc9 23976187eebf 7b7cd65d', 'assets/Gallery/2b6e4534-3171-4c54-8fc9-23976187eebf-7b7cd65d.jpg', NULL, 1, 1, 1),
(13, 'Image', '2017-04-02 04:55:30', '2017-04-02 04:55:30', '0b1893ed-f09c-401a-9839-092cffedf549-0b50832a.jpg', '0b1893ed f09c 401a 9839 092cffedf549 0b50832a', 'assets/Gallery/0b1893ed-f09c-401a-9839-092cffedf549-0b50832a.jpg', NULL, 1, 1, 1),
(14, 'Image', '2017-04-02 04:55:50', '2017-04-02 04:55:50', '9f7ca0bd-5167-4179-bcb1-0216e62db1da-95be3c1c.jpg', '9f7ca0bd 5167 4179 bcb1 0216e62db1da 95be3c1c', 'assets/Gallery/9f7ca0bd-5167-4179-bcb1-0216e62db1da-95be3c1c.jpg', NULL, 1, 1, 1),
(15, 'Folder', '2017-04-04 10:25:14', '2017-04-04 10:25:14', 'HomepageSlides', 'HomepageSlides', 'assets/HomepageSlides/', NULL, 1, 0, 1),
(16, 'Image', '2017-04-04 10:25:14', '2017-04-04 10:25:14', '3fb4a686-ffd0-47fe-a795-774f8a46545f-1853da55.jpg', '3fb4a686 ffd0 47fe a795 774f8a46545f 1853da55', 'assets/HomepageSlides/3fb4a686-ffd0-47fe-a795-774f8a46545f-1853da55.jpg', NULL, 1, 15, 1),
(17, 'Image', '2017-04-04 10:25:29', '2017-04-04 10:25:29', 'b6b81891-5e76-4421-84d6-71832e2a6e82-829da218.jpg', 'b6b81891 5e76 4421 84d6 71832e2a6e82 829da218', 'assets/HomepageSlides/b6b81891-5e76-4421-84d6-71832e2a6e82-829da218.jpg', NULL, 1, 15, 1),
(18, 'Image', '2017-04-04 10:26:03', '2017-04-04 10:26:03', '3fb4a686-ffd0-47fe-a795-774f8a46545f-b2f6e6f4.jpg', '3fb4a686 ffd0 47fe a795 774f8a46545f b2f6e6f4', 'assets/HomepageSlides/3fb4a686-ffd0-47fe-a795-774f8a46545f-b2f6e6f4.jpg', NULL, 1, 15, 1),
(19, 'Image', '2017-04-07 14:16:42', '2017-04-07 14:16:42', 'Leah-and-Stathie-152.jpg', 'Leah and Stathie 152', 'assets/Gallery/Leah-and-Stathie-152.jpg', NULL, 1, 1, 2),
(20, 'Image', '2017-04-08 07:37:52', '2017-04-08 07:37:52', 'missabigail-logo.png', 'missabigail logo', 'assets/Uploads/missabigail-logo.png', NULL, 1, 7, 2),
(21, 'Image', '2017-04-08 08:31:08', '2017-04-08 08:31:08', 'KS4A0775.jpg', 'KS4A0775', 'assets/HomepageSlides/KS4A0775.jpg', NULL, 1, 15, 1),
(22, 'Folder', '2017-04-08 10:00:22', '2017-04-08 10:00:22', 'BackgroundImages', 'BackgroundImages', 'assets/BackgroundImages/', NULL, 1, 0, 1),
(23, 'Image', '2017-04-08 10:00:22', '2017-04-08 10:00:22', 'KS4A8662.jpg', 'KS4A8662', 'assets/BackgroundImages/KS4A8662.jpg', NULL, 1, 22, 1),
(24, 'Image', '2017-04-08 10:51:03', '2017-04-08 10:51:03', 'KS4A1504.jpg', 'KS4A1504', 'assets/HomepageSlides/KS4A1504.jpg', NULL, 1, 15, 1),
(25, 'Image', '2017-04-08 10:52:17', '2017-04-08 10:52:17', 'KS4A9239.jpg', 'KS4A9239', 'assets/HomepageSlides/KS4A9239.jpg', NULL, 1, 15, 1),
(26, 'Image', '2017-04-08 10:52:34', '2017-04-08 10:52:34', 'KS4A9415.jpg', 'KS4A9415', 'assets/HomepageSlides/KS4A9415.jpg', NULL, 1, 15, 1),
(27, 'Image', '2017-04-08 10:52:51', '2017-04-08 10:52:51', 'KS4A9906.jpg', 'KS4A9906', 'assets/HomepageSlides/KS4A9906.jpg', NULL, 1, 15, 1),
(28, 'Image', '2017-04-08 10:53:29', '2017-04-08 10:53:29', 'missabigail-logo2.png', 'missabigail logo2', 'assets/Uploads/missabigail-logo2.png', NULL, 1, 7, 1),
(29, 'Image', '2017-04-08 12:24:19', '2017-04-08 12:24:19', 'KS4A0458.jpg', 'KS4A0458', 'assets/HomepageSlides/KS4A0458.jpg', NULL, 1, 15, 1),
(30, 'Image', '2017-04-08 12:24:38', '2017-04-08 12:24:38', 'KS4A1505.jpg', 'KS4A1505', 'assets/HomepageSlides/KS4A1505.jpg', NULL, 1, 15, 1),
(31, 'Image', '2017-04-08 12:25:50', '2017-04-08 12:25:50', 'KS4A8662.jpg', 'KS4A8662', 'assets/HomepageSlides/KS4A8662.jpg', NULL, 1, 15, 1),
(32, 'Image', '2017-04-08 12:26:09', '2017-04-08 12:26:09', 'KS4A8672.jpg', 'KS4A8672', 'assets/HomepageSlides/KS4A8672.jpg', NULL, 1, 15, 1),
(33, 'Image', '2017-04-08 12:26:27', '2017-04-08 12:26:27', 'KS4A8708.jpg', 'KS4A8708', 'assets/HomepageSlides/KS4A8708.jpg', NULL, 1, 15, 1),
(34, 'Image', '2017-04-08 12:26:37', '2017-04-08 12:26:37', 'KS4A8709.jpg', 'KS4A8709', 'assets/HomepageSlides/KS4A8709.jpg', NULL, 1, 15, 1),
(35, 'Image', '2017-04-08 12:26:55', '2017-04-08 12:26:55', 'KS4A8731.jpg', 'KS4A8731', 'assets/HomepageSlides/KS4A8731.jpg', NULL, 1, 15, 1),
(36, 'Image', '2017-04-08 12:27:13', '2017-04-08 12:27:13', 'KS4A8816.jpg', 'KS4A8816', 'assets/HomepageSlides/KS4A8816.jpg', NULL, 1, 15, 1),
(37, 'Image', '2017-04-08 12:27:29', '2017-04-08 12:27:29', 'KS4A8823.jpg', 'KS4A8823', 'assets/HomepageSlides/KS4A8823.jpg', NULL, 1, 15, 1),
(38, 'Image', '2017-04-08 12:27:50', '2017-04-08 12:27:50', 'KS4A8826.jpg', 'KS4A8826', 'assets/HomepageSlides/KS4A8826.jpg', NULL, 1, 15, 1),
(39, 'Image', '2017-04-08 12:27:58', '2017-04-08 12:27:58', 'KS4A8827.jpg', 'KS4A8827', 'assets/HomepageSlides/KS4A8827.jpg', NULL, 1, 15, 1),
(40, 'Image', '2017-04-08 12:28:16', '2017-04-08 12:28:16', 'KS4A9082.jpg', 'KS4A9082', 'assets/HomepageSlides/KS4A9082.jpg', NULL, 1, 15, 1),
(41, 'Image', '2017-04-08 12:28:31', '2017-04-08 12:28:31', 'KS4A9521.jpg', 'KS4A9521', 'assets/HomepageSlides/KS4A9521.jpg', NULL, 1, 15, 1),
(42, 'Image', '2017-04-08 12:30:12', '2017-04-08 12:30:12', 'Leah-and-Stathie-161.jpg', 'Leah and Stathie 161', 'assets/Gallery/Leah-and-Stathie-161.jpg', NULL, 1, 1, 1),
(43, 'Image', '2017-04-08 12:30:34', '2017-04-08 12:30:34', 'Leah-and-Stathie-307.jpg', 'Leah and Stathie 307', 'assets/Gallery/Leah-and-Stathie-307.jpg', NULL, 1, 1, 1),
(44, 'Image', '2017-04-08 12:30:53', '2017-04-08 12:30:53', 'Leah-and-Stathie-385.jpg', 'Leah and Stathie 385', 'assets/Gallery/Leah-and-Stathie-385.jpg', NULL, 1, 1, 1),
(45, 'Image', '2017-04-08 12:31:12', '2017-04-08 12:31:12', 'Leah-and-Stathie-387.jpg', 'Leah and Stathie 387', 'assets/Gallery/Leah-and-Stathie-387.jpg', NULL, 1, 1, 1),
(46, 'Image', '2017-04-08 12:31:40', '2017-04-08 12:31:40', 'Leah-and-Stathie-682.jpg', 'Leah and Stathie 682', 'assets/Gallery/Leah-and-Stathie-682.jpg', NULL, 1, 1, 1),
(47, 'Image', '2017-04-08 12:35:00', '2017-04-08 12:35:00', 'Leah-and-Stathie-745.jpg', 'Leah and Stathie 745', 'assets/Gallery/Leah-and-Stathie-745.jpg', NULL, 1, 1, 1),
(48, 'Image', '2017-04-08 12:35:26', '2017-04-08 12:35:26', 'Leah-and-Stathie-749.jpg', 'Leah and Stathie 749', 'assets/Gallery/Leah-and-Stathie-749.jpg', NULL, 1, 1, 1),
(50, 'Image', '2017-04-10 10:48:25', '2017-04-10 10:48:25', 'KS4A9980.jpg', 'KS4A9980', 'assets/Gallery/KS4A9980.jpg', NULL, 1, 1, 1),
(51, 'Image', '2017-04-10 11:09:02', '2017-04-10 10:57:50', 'KS4A9499.jpg', 'KS4A9499', 'assets/Gallery/KS4A9499.jpg', NULL, 1, 1, 1),
(52, 'Image', '2017-04-10 11:11:17', '2017-04-10 10:57:51', 'KS4A9521-1.jpg', 'KS4A9521 1', 'assets/Gallery/KS4A9521-1.jpg', NULL, 1, 1, 1),
(53, 'Image', '2017-04-10 11:08:54', '2017-04-10 10:57:52', 'KS4A9906.jpg', 'KS4A9906', 'assets/KS4A9906.jpg', NULL, 1, 0, 1),
(54, 'Image', '2017-04-10 11:09:09', '2017-04-10 10:58:39', 'KS4A9485.jpg', 'KS4A9485', 'assets/Gallery/KS4A9485.jpg', NULL, 1, 1, 1),
(55, 'Image', '2017-04-10 11:08:58', '2017-04-10 10:58:47', 'KS4A9852.jpg', 'KS4A9852', 'assets/Gallery/KS4A9852.jpg', NULL, 1, 1, 1),
(56, 'Image', '2017-04-10 11:09:23', '2017-04-10 10:58:51', 'KS4A9431.jpg', 'KS4A9431', 'assets/Gallery/KS4A9431.jpg', NULL, 1, 1, 1),
(57, 'Image', '2017-04-10 11:11:10', '2017-04-10 10:59:30', 'KS4A9367.jpg', 'KS4A9367', 'assets/Gallery/KS4A9367.jpg', NULL, 1, 1, 1),
(58, 'Image', '2017-04-10 11:11:13', '2017-04-10 10:59:52', 'KS4A9415.jpg', 'KS4A9415', 'assets/Gallery/KS4A9415.jpg', NULL, 1, 1, 1),
(59, 'Image', '2017-04-10 11:09:25', '2017-04-10 10:59:57', 'KS4A9402.jpg', 'KS4A9402', 'assets/Gallery/KS4A9402.jpg', NULL, 1, 1, 1),
(60, 'Image', '2017-04-10 11:09:44', '2017-04-10 11:00:35', 'KS4A8652.jpg', 'KS4A8652', 'assets/Gallery/KS4A8652.jpg', NULL, 1, 1, 1),
(61, 'Image', '2017-04-10 11:09:34', '2017-04-10 11:01:27', 'KS4A8662.jpg', 'KS4A8662', 'assets/Gallery/KS4A8662.jpg', NULL, 1, 1, 1),
(62, 'Image', '2017-04-10 11:09:41', '2017-04-10 11:01:36', 'KS4A8654.jpg', 'KS4A8654', 'assets/Gallery/KS4A8654.jpg', NULL, 1, 1, 1),
(63, 'Image', '2017-04-10 11:09:54', '2017-04-10 11:02:11', 'KS4A0781.jpg', 'KS4A0781', 'assets/Gallery/KS4A0781.jpg', NULL, 1, 1, 1),
(64, 'Image', '2017-04-10 11:10:02', '2017-04-10 11:02:35', 'KS4A0765.jpg', 'KS4A0765', 'assets/Gallery/KS4A0765.jpg', NULL, 1, 1, 1),
(65, 'Image', '2017-04-10 11:09:58', '2017-04-10 11:02:48', 'KS4A0778.jpg', 'KS4A0778', 'assets/Gallery/KS4A0778.jpg', NULL, 1, 1, 1),
(66, 'Image', '2017-04-10 11:10:15', '2017-04-10 11:03:11', 'KS4A0481.jpg', 'KS4A0481', 'assets/Gallery/KS4A0481.jpg', NULL, 1, 1, 1),
(67, 'Image', '2017-04-10 11:09:47', '2017-04-10 11:03:12', 'KS4A1504.jpg', 'KS4A1504', 'assets/Gallery/KS4A1504.jpg', NULL, 1, 1, 1),
(68, 'Image', '2017-04-10 11:10:07', '2017-04-10 11:03:50', 'KS4A0525.jpg', 'KS4A0525', 'assets/Gallery/KS4A0525.jpg', NULL, 1, 1, 1),
(69, 'Image', '2017-04-10 11:10:17', '2017-04-10 11:03:51', 'KS4A0436.jpg', 'KS4A0436', 'assets/Gallery/KS4A0436.jpg', NULL, 1, 1, 1),
(70, 'Image', '2017-04-10 11:09:30', '2017-04-10 11:03:52', 'KS4A9239.jpg', 'KS4A9239', 'assets/Gallery/KS4A9239.jpg', NULL, 1, 1, 1),
(71, 'File', '2017-04-10 11:05:23', '2017-04-10 11:05:23', 'Fiona-Anthony.zip', 'Fiona Anthony', 'assets/Gallery/Fiona-Anthony.zip', NULL, 1, 1, 1),
(72, 'Image', '2017-04-10 11:10:22', '2017-04-10 11:08:29', '7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2048.jpg', '7ea97338f5bd845d978988ac4cee3ef68e6f5932 res2048', 'assets/Gallery/7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2048.jpg', NULL, 1, 1, 1),
(73, 'Image', '2017-04-10 11:10:43', '2017-04-10 11:08:31', '7b4bbbb0c83f09f0448858471b33399a4c42a4ee-res2048.jpg', '7b4bbbb0c83f09f0448858471b33399a4c42a4ee res2048', 'assets/Gallery/7b4bbbb0c83f09f0448858471b33399a4c42a4ee-res2048.jpg', NULL, 1, 1, 1),
(74, 'Image', '2017-04-10 11:10:32', '2017-04-10 11:08:32', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2048.jpg', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523 res2048', 'assets/Gallery/c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2048.jpg', NULL, 1, 1, 1),
(75, 'Image', '2017-04-10 11:10:37', '2017-04-10 11:08:32', '7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f-res2048.jpg', '7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f res2048', 'assets/Gallery/7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f-res2048.jpg', NULL, 1, 1, 1),
(76, 'Image', '2017-04-10 11:11:00', '2017-04-10 11:08:33', '22ea2c870b4cdd4e509ae6759ef56909dbe73b9d-res2048.jpg', '22ea2c870b4cdd4e509ae6759ef56909dbe73b9d res2048', 'assets/Gallery/22ea2c870b4cdd4e509ae6759ef56909dbe73b9d-res2048.jpg', NULL, 1, 1, 1),
(77, 'Image', '2017-04-10 11:10:56', '2017-04-10 11:08:35', 'ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e-res2048.jpg', 'ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e res2048', 'assets/Gallery/ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e-res2048.jpg', NULL, 1, 1, 1),
(78, 'Image', '2017-04-10 11:22:33', '2017-04-10 11:22:33', 'Leah-and-Stathie-515.jpg', 'Leah and Stathie 515', 'assets/HomepageSlides/Leah-and-Stathie-515.jpg', NULL, 1, 15, 1),
(79, 'Image', '2017-04-10 11:23:20', '2017-04-10 11:23:20', 'Leah-and-Stathie-749.jpg', 'Leah and Stathie 749', 'assets/HomepageSlides/Leah-and-Stathie-749.jpg', NULL, 1, 15, 1),
(80, 'Image', '2017-04-10 11:25:01', '2017-04-10 11:25:01', '7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2048.jpg', '7ea97338f5bd845d978988ac4cee3ef68e6f5932 res2048', 'assets/HomepageSlides/7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2048.jpg', NULL, 1, 15, 1),
(81, 'Image', '2017-04-10 19:36:24', '2017-04-10 19:36:24', '7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2049.jpg', '7ea97338f5bd845d978988ac4cee3ef68e6f5932 res2049', 'assets/Gallery/7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2049.jpg', NULL, 1, 1, 1),
(82, 'Image', '2017-04-10 19:37:42', '2017-04-10 19:37:42', '7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2050.jpg', '7ea97338f5bd845d978988ac4cee3ef68e6f5932 res2050', 'assets/Gallery/7ea97338f5bd845d978988ac4cee3ef68e6f5932-res2050.jpg', NULL, 1, 1, 1),
(83, 'Image', '2017-04-10 19:38:08', '2017-04-10 19:38:08', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2049.jpg', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523 res2049', 'assets/Gallery/c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2049.jpg', NULL, 1, 1, 1),
(84, 'Image', '2017-04-10 19:39:11', '2017-04-10 19:39:11', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2050.jpg', 'c22bb1dada3cffc728d87f6626277d3ed0eb8523 res2050', 'assets/Gallery/c22bb1dada3cffc728d87f6626277d3ed0eb8523-res2050.jpg', NULL, 1, 1, 1),
(85, 'Image', '2017-04-10 19:39:44', '2017-04-10 19:39:44', '7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f-res2049.jpg', '7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f res2049', 'assets/Gallery/7ebe9a0bceb5c22856b3cd0753dbcdb863239a8f-res2049.jpg', NULL, 1, 1, 1),
(86, 'Image', '2017-04-10 19:40:54', '2017-04-10 19:40:54', '7b4bbbb0c83f09f0448858471b33399a4c42a4ee-res2049.jpg', '7b4bbbb0c83f09f0448858471b33399a4c42a4ee res2049', 'assets/Gallery/7b4bbbb0c83f09f0448858471b33399a4c42a4ee-res2049.jpg', NULL, 1, 1, 1),
(87, 'Image', '2017-04-10 19:41:20', '2017-04-10 19:41:20', '22ea2c870b4cdd4e509ae6759ef56909dbe73b9d-res2049.jpg', '22ea2c870b4cdd4e509ae6759ef56909dbe73b9d res2049', 'assets/Gallery/22ea2c870b4cdd4e509ae6759ef56909dbe73b9d-res2049.jpg', NULL, 1, 1, 1),
(88, 'Image', '2017-04-10 19:41:58', '2017-04-10 19:41:58', 'ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e-res2049.jpg', 'ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e res2049', 'assets/Gallery/ddcd9ed19256901c5fc2ae955c8f5e15bc15bd0e-res2049.jpg', NULL, 1, 1, 1),
(89, 'Image', '2017-04-10 20:00:52', '2017-04-10 20:00:52', '65b8eee3-20e7-43dc-b998-87d268445827-bef0a02d.jpg', '65b8eee3 20e7 43dc b998 87d268445827 bef0a02d', 'assets/Uploads/65b8eee3-20e7-43dc-b998-87d268445827-bef0a02d.jpg', NULL, 1, 7, 1),
(90, 'Image', '2017-04-10 22:13:59', '2017-04-10 22:13:59', 'KS4A9981.jpg', 'KS4A9981', 'assets/Gallery/KS4A9981.jpg', NULL, 1, 1, 1),
(91, 'Image', '2017-04-10 22:15:29', '2017-04-10 22:15:29', 'KS4A9853.jpg', 'KS4A9853', 'assets/Gallery/KS4A9853.jpg', NULL, 1, 1, 1),
(92, 'Image', '2017-04-10 22:15:39', '2017-04-10 22:15:39', 'KS4A9906.jpg', 'KS4A9906', 'assets/Gallery/KS4A9906.jpg', NULL, 1, 1, 1),
(93, 'Image', '2017-04-10 22:15:57', '2017-04-10 22:15:57', 'KS4A9521-2.jpg', 'KS4A9521 2', 'assets/Gallery/KS4A9521-2.jpg', NULL, 1, 1, 1),
(94, 'Image', '2017-04-10 22:16:27', '2017-04-10 22:16:27', 'KS4A9500.jpg', 'KS4A9500', 'assets/Gallery/KS4A9500.jpg', NULL, 1, 1, 1),
(95, 'Image', '2017-04-10 22:18:27', '2017-04-10 22:18:27', 'KS4A9486.jpg', 'KS4A9486', 'assets/Gallery/KS4A9486.jpg', NULL, 1, 1, 1),
(96, 'Image', '2017-04-10 22:19:04', '2017-04-10 22:19:04', 'KS4A9432.jpg', 'KS4A9432', 'assets/Gallery/KS4A9432.jpg', NULL, 1, 1, 1),
(97, 'Image', '2017-04-10 22:19:57', '2017-04-10 22:19:57', 'KS4A9416.jpg', 'KS4A9416', 'assets/Gallery/KS4A9416.jpg', NULL, 1, 1, 1),
(98, 'Image', '2017-04-10 22:20:46', '2017-04-10 22:20:46', 'KS4A9403.jpg', 'KS4A9403', 'assets/Gallery/KS4A9403.jpg', NULL, 1, 1, 1),
(99, 'Image', '2017-04-10 22:21:26', '2017-04-10 22:21:26', 'KS4A9368.jpg', 'KS4A9368', 'assets/Gallery/KS4A9368.jpg', NULL, 1, 1, 1),
(100, 'Image', '2017-04-10 22:22:02', '2017-04-10 22:22:02', 'KS4A9240.jpg', 'KS4A9240', 'assets/Gallery/KS4A9240.jpg', NULL, 1, 1, 1),
(101, 'Image', '2017-04-10 22:23:22', '2017-04-10 22:23:22', 'KS4A8663.jpg', 'KS4A8663', 'assets/Gallery/KS4A8663.jpg', NULL, 1, 1, 1),
(102, 'Image', '2017-04-10 22:24:12', '2017-04-10 22:24:12', 'KS4A8655.jpg', 'KS4A8655', 'assets/Gallery/KS4A8655.jpg', NULL, 1, 1, 1),
(103, 'Image', '2017-04-10 22:24:56', '2017-04-10 22:24:56', 'KS4A8653.jpg', 'KS4A8653', 'assets/Gallery/KS4A8653.jpg', NULL, 1, 1, 1),
(104, 'Image', '2017-04-10 22:25:52', '2017-04-10 22:25:52', 'KS4A1505.jpg', 'KS4A1505', 'assets/Gallery/KS4A1505.jpg', NULL, 1, 1, 1),
(105, 'Image', '2017-04-10 22:26:44', '2017-04-10 22:26:44', 'KS4A782.jpg', 'KS4A782', 'assets/Gallery/KS4A782.jpg', NULL, 1, 1, 1),
(106, 'Image', '2017-04-10 22:27:39', '2017-04-10 22:27:39', 'KS4A779.jpg', 'KS4A779', 'assets/Gallery/KS4A779.jpg', NULL, 1, 1, 1),
(107, 'Image', '2017-04-10 22:28:14', '2017-04-10 22:28:14', 'KS4A766.jpg', 'KS4A766', 'assets/Gallery/KS4A766.jpg', NULL, 1, 1, 1),
(108, 'Image', '2017-04-10 22:28:57', '2017-04-10 22:28:57', 'KS4A526.jpg', 'KS4A526', 'assets/Gallery/KS4A526.jpg', NULL, 1, 1, 1),
(109, 'Image', '2017-04-10 22:29:24', '2017-04-10 22:29:24', 'KS4A482.jpg', 'KS4A482', 'assets/Gallery/KS4A482.jpg', NULL, 1, 1, 1),
(110, 'Image', '2017-04-10 22:30:01', '2017-04-10 22:30:01', 'KS4A437.jpg', 'KS4A437', 'assets/Gallery/KS4A437.jpg', NULL, 1, 1, 1),
(111, 'Image', '2017-04-10 22:34:19', '2017-04-10 22:34:19', 'KS4A780.jpg', 'KS4A780', 'assets/Gallery/KS4A780.jpg', NULL, 1, 1, 1),
(112, 'Image', '2017-04-10 22:34:21', '2017-04-10 22:34:21', 'KS4A781.jpg', 'KS4A781', 'assets/Gallery/KS4A781.jpg', NULL, 1, 1, 1),
(113, 'Image', '2017-04-10 22:35:46', '2017-04-10 22:35:46', 'KS4A9487.jpg', 'KS4A9487', 'assets/Gallery/KS4A9487.jpg', NULL, 1, 1, 1),
(114, 'Image', '2017-04-10 22:36:22', '2017-04-10 22:36:22', 'KS4A767.jpg', 'KS4A767', 'assets/Gallery/KS4A767.jpg', NULL, 1, 1, 1),
(115, 'Image', '2017-04-10 22:42:28', '2017-04-10 22:42:28', 'KS4A9907.jpg', 'KS4A9907', 'assets/Gallery/KS4A9907.jpg', NULL, 1, 1, 1),
(116, 'Image', '2017-04-11 12:39:40', '2017-04-11 12:39:40', 'fashion-in-the-field-logo.png', 'fashion in the field logo', 'assets/Uploads/fashion-in-the-field-logo.png', NULL, 1, 7, 1),
(117, 'Image', '2017-04-11 12:41:58', '2017-04-11 12:41:58', 'fashion-in-the-field-logo2.png', 'fashion in the field logo2', 'assets/Uploads/fashion-in-the-field-logo2.png', NULL, 1, 7, 1),
(118, 'Image', '2017-04-11 12:44:27', '2017-04-11 12:44:27', 'sevens.png', 'sevens', 'assets/Uploads/sevens.png', NULL, 1, 7, 1),
(119, 'Image', '2017-04-11 12:44:38', '2017-04-11 12:44:38', 'wow.png', 'wow', 'assets/Uploads/wow.png', NULL, 1, 7, 1),
(120, 'Image', '2017-04-11 12:44:58', '2017-04-11 12:44:58', 'wfw.png', 'wfw', 'assets/Uploads/wfw.png', NULL, 1, 7, 1),
(121, 'Image', '2017-04-11 12:45:09', '2017-04-11 12:45:09', 'frock.png', 'frock', 'assets/Uploads/frock.png', NULL, 1, 7, 1),
(122, 'Image', '2017-04-11 12:56:22', '2017-04-11 12:56:22', 'barbie-ken.jpg', 'barbie ken', 'assets/HomepageSlides/barbie-ken.jpg', NULL, 1, 15, 1),
(123, 'Image', '2017-04-11 13:03:09', '2017-04-11 13:03:09', 'barbie-ken2.jpg', 'barbie ken2', 'assets/HomepageSlides/barbie-ken2.jpg', NULL, 1, 15, 1),
(124, 'Image', '2017-04-11 13:03:28', '2017-04-11 13:03:28', '377195-315473415138206-315262305159317-1251227-879243485-n-1.jpg', '377195 315473415138206 315262305159317 1251227 879243485 n 1', 'assets/HomepageSlides/377195-315473415138206-315262305159317-1251227-879243485-n-1.jpg', NULL, 1, 15, 1),
(125, 'Image', '2017-04-11 13:03:44', '2017-04-11 13:03:44', 'Platinum-Homes-Wellington-Cup-1-.jpeg', 'Platinum Homes Wellington Cup 1 ', 'assets/HomepageSlides/Platinum-Homes-Wellington-Cup-1-.jpeg', NULL, 1, 15, 1),
(126, 'Image', '2017-04-11 13:04:31', '2017-04-11 13:04:31', 'DSC-0927.jpg', 'DSC 0927', 'assets/HomepageSlides/DSC-0927.jpg', NULL, 1, 15, 1),
(127, 'Image', '2017-04-11 13:13:10', '2017-04-11 13:13:10', 'barbie-ken.jpg', 'barbie ken', 'assets/Gallery/barbie-ken.jpg', NULL, 1, 1, 1),
(128, 'Image', '2017-04-11 13:13:33', '2017-04-11 13:13:33', '377195-315473415138206-315262305159317-1251227-879243485-n-1.jpg', '377195 315473415138206 315262305159317 1251227 879243485 n 1', 'assets/Gallery/377195-315473415138206-315262305159317-1251227-879243485-n-1.jpg', NULL, 1, 1, 1),
(129, 'Image', '2017-04-11 13:13:47', '2017-04-11 13:13:47', 'Platinum-Homes-Wellington-Cup-1-.jpeg', 'Platinum Homes Wellington Cup 1 ', 'assets/Gallery/Platinum-Homes-Wellington-Cup-1-.jpeg', NULL, 1, 1, 1),
(130, 'Image', '2017-04-11 13:14:44', '2017-04-11 13:14:44', 'DSC-0927.jpg', 'DSC 0927', 'assets/Gallery/DSC-0927.jpg', NULL, 1, 1, 1),
(131, 'Image', '2017-04-11 13:15:58', '2017-04-11 13:15:58', 'DSC-0546.JPG', 'DSC 0546', 'assets/Gallery/DSC-0546.JPG', NULL, 1, 1, 1),
(132, 'Image', '2017-04-11 13:16:45', '2017-04-11 13:16:45', 'DSC-0536.jpg', 'DSC 0536', 'assets/Gallery/DSC-0536.jpg', NULL, 1, 1, 1),
(133, 'Image', '2017-04-11 13:17:32', '2017-04-11 13:17:32', 'DSC-0537.jpg', 'DSC 0537', 'assets/Gallery/DSC-0537.jpg', NULL, 1, 1, 1),
(134, 'Image', '2017-04-11 13:18:30', '2017-04-11 13:18:30', 'DSC-0555.jpg', 'DSC 0555', 'assets/Gallery/DSC-0555.jpg', NULL, 1, 1, 1),
(135, 'Image', '2017-04-11 14:12:26', '2017-04-11 14:12:26', '36595-423975327631149-223305051031512-91937753-1511100994-n.jpg', '36595 423975327631149 223305051031512 91937753 1511100994 n', 'assets/Gallery/36595-423975327631149-223305051031512-91937753-1511100994-n.jpg', NULL, 1, 1, 1),
(136, 'Image', '2017-04-11 14:12:49', '2017-04-11 14:12:49', '564264-423975720964443-223305051031512-91937758-1009229173-n.jpg', '564264 423975720964443 223305051031512 91937758 1009229173 n', 'assets/Gallery/564264-423975720964443-223305051031512-91937758-1009229173-n.jpg', NULL, 1, 1, 1),
(137, 'Image', '2017-04-11 14:13:06', '2017-04-11 14:13:06', '561927-423976717631010-223305051031512-91937775-867845394-n.jpg', '561927 423976717631010 223305051031512 91937775 867845394 n', 'assets/Gallery/561927-423976717631010-223305051031512-91937775-867845394-n.jpg', NULL, 1, 1, 1),
(138, 'Image', '2017-04-11 14:13:22', '2017-04-11 14:13:22', '36561-423977497630932-223305051031512-91937784-1910333731-n.jpg', '36561 423977497630932 223305051031512 91937784 1910333731 n', 'assets/Gallery/36561-423977497630932-223305051031512-91937784-1910333731-n.jpg', NULL, 1, 1, 1),
(139, 'Image', '2017-04-11 14:13:39', '2017-04-11 14:13:39', '575139-423978754297473-223305051031512-91937799-1882818127-n.jpg', '575139 423978754297473 223305051031512 91937799 1882818127 n', 'assets/Gallery/575139-423978754297473-223305051031512-91937799-1882818127-n.jpg', NULL, 1, 1, 1),
(140, 'Image', '2017-04-11 14:14:00', '2017-04-11 14:14:00', '579306-423979040964111-223305051031512-91937801-2032679067-n.jpg', '579306 423979040964111 223305051031512 91937801 2032679067 n', 'assets/Gallery/579306-423979040964111-223305051031512-91937801-2032679067-n.jpg', NULL, 1, 1, 1),
(141, 'Image', '2017-04-11 14:14:17', '2017-04-11 14:14:17', '533905-423979140964101-223305051031512-91937802-1214777327-n.jpg', '533905 423979140964101 223305051031512 91937802 1214777327 n', 'assets/Gallery/533905-423979140964101-223305051031512-91937802-1214777327-n.jpg', NULL, 1, 1, 1),
(142, 'Image', '2017-04-11 14:14:34', '2017-04-11 14:14:34', '527294-423979250964090-223305051031512-91937803-1308207492-n.jpg', '527294 423979250964090 223305051031512 91937803 1308207492 n', 'assets/Gallery/527294-423979250964090-223305051031512-91937803-1308207492-n.jpg', NULL, 1, 1, 1),
(143, 'Image', '2017-04-11 14:14:51', '2017-04-11 14:14:51', '529114-423979364297412-223305051031512-91937804-1432585956-n.jpg', '529114 423979364297412 223305051031512 91937804 1432585956 n', 'assets/Gallery/529114-423979364297412-223305051031512-91937804-1432585956-n.jpg', NULL, 1, 1, 1),
(144, 'Image', '2017-04-11 14:15:30', '2017-04-11 14:15:30', '527294-423979250964090-223305051031512-91937803-1308207492-n2.jpg', '527294 423979250964090 223305051031512 91937803 1308207492 n2', 'assets/Gallery/527294-423979250964090-223305051031512-91937803-1308207492-n2.jpg', NULL, 1, 1, 1),
(145, 'Image', '2017-04-11 14:15:47', '2017-04-11 14:15:47', '529114-423979364297412-223305051031512-91937804-1432585956-n2.jpg', '529114 423979364297412 223305051031512 91937804 1432585956 n2', 'assets/Gallery/529114-423979364297412-223305051031512-91937804-1432585956-n2.jpg', NULL, 1, 1, 1),
(146, 'Image', '2017-04-11 14:16:02', '2017-04-11 14:16:02', '552782-423979474297401-223305051031512-91937805-16858131-n.jpg', '552782 423979474297401 223305051031512 91937805 16858131 n', 'assets/Gallery/552782-423979474297401-223305051031512-91937805-16858131-n.jpg', NULL, 1, 1, 1),
(147, 'Image', '2017-04-11 14:17:12', '2017-04-11 14:17:12', 'IMG-0529.JPG', 'IMG 0529', 'assets/Gallery/IMG-0529.JPG', NULL, 1, 1, 1),
(148, 'Image', '2017-04-11 14:17:39', '2017-04-11 14:17:39', 'IMG-0524.JPG', 'IMG 0524', 'assets/Gallery/IMG-0524.JPG', NULL, 1, 1, 1),
(149, 'Image', '2017-04-11 15:47:31', '2017-04-11 15:47:31', 'missabigail-logo3.png', 'missabigail logo3', 'assets/Uploads/missabigail-logo3.png', NULL, 1, 7, 1),
(150, 'Image', '2017-04-12 11:21:46', '2017-04-12 11:21:46', '377195-315473415138206-315262305159317-1251227-879243485-n.jpg', '377195 315473415138206 315262305159317 1251227 879243485 n', 'assets/Gallery/377195-315473415138206-315262305159317-1251227-879243485-n.jpg', NULL, 1, 1, 1),
(151, 'Image', '2017-04-15 19:35:57', '2017-04-15 19:35:57', 'marlowe-pic-cropped.png', 'marlowe pic cropped', 'assets/HomepageSlides/marlowe-pic-cropped.png', NULL, 1, 15, 1),
(152, 'Image', '2017-04-15 19:42:16', '2017-04-15 19:42:16', 'abby-homepage-dress.png', 'abby homepage dress', 'assets/HomepageSlides/abby-homepage-dress.png', NULL, 1, 15, 1),
(153, 'Image', '2017-04-15 19:42:53', '2017-04-15 19:42:53', 'abby-homepage-dress2.png', 'abby homepage dress2', 'assets/HomepageSlides/abby-homepage-dress2.png', NULL, 1, 15, 1),
(154, 'Image', '2017-04-15 19:46:14', '2017-04-15 19:46:14', 'abby-bk-drs-homepage.png', 'abby bk drs homepage', 'assets/HomepageSlides/abby-bk-drs-homepage.png', NULL, 1, 15, 1),
(155, 'Image', '2017-04-15 19:53:07', '2017-04-15 19:53:07', 'leah-drs-home-page.png', 'leah drs home page', 'assets/HomepageSlides/leah-drs-home-page.png', NULL, 1, 15, 1),
(156, 'Image', '2017-04-15 20:00:16', '2017-04-15 20:00:16', 'abby-bhridesmaids.png', 'abby bhridesmaids', 'assets/Gallery/abby-bhridesmaids.png', NULL, 1, 1, 1),
(157, 'Image', '2017-04-15 20:00:32', '2017-04-15 20:00:32', 'abby-drs.png', 'abby drs', 'assets/Gallery/abby-drs.png', NULL, 1, 1, 1),
(158, 'Image', '2017-04-15 20:02:42', '2017-04-15 20:02:42', 'abby-bhridesmaids2.png', 'abby bhridesmaids2', 'assets/Gallery/abby-bhridesmaids2.png', NULL, 1, 1, 1),
(159, 'Image', '2017-04-15 20:04:32', '2017-04-15 20:04:32', 'KS4A9521-3.jpg', 'KS4A9521 3', 'assets/Gallery/KS4A9521-3.jpg', NULL, 1, 1, 1),
(160, 'Image', '2017-04-15 20:05:03', '2017-04-15 20:05:03', 'KS4A9501.jpg', 'KS4A9501', 'assets/Gallery/KS4A9501.jpg', NULL, 1, 1, 1),
(161, 'Image', '2017-04-17 12:01:35', '2017-04-17 12:01:35', 'the-sevens.zip', 'the sevens', 'assets/HomepageSlides/the-sevens.zip', NULL, 1, 15, 1),
(162, 'Image', '2017-04-17 12:01:56', '2017-04-17 12:01:56', 'Marlowe-3.jpg', 'Marlowe 3', 'assets/HomepageSlides/Marlowe-3.jpg', NULL, 1, 15, 1),
(163, 'Image', '2017-04-19 12:03:38', '2017-04-19 12:03:38', 'KS4A9499-1.jpg', 'KS4A9499 1', 'assets/Gallery/KS4A9499-1.jpg', NULL, 1, 1, 1),
(164, 'Image', '2017-04-19 12:04:04', '2017-04-19 12:04:04', 'KS4A9521-4.jpg', 'KS4A9521 4', 'assets/Gallery/KS4A9521-4.jpg', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `FooterCategory`
--

CREATE TABLE IF NOT EXISTS `FooterCategory` (
`ID` int(11) NOT NULL,
  `ClassName` enum('FooterCategory') CHARACTER SET utf8 DEFAULT 'FooterCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `AlternativeTitle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FooterLink`
--

CREATE TABLE IF NOT EXISTS `FooterLink` (
`ID` int(11) NOT NULL,
  `ClassName` enum('FooterLink') CHARACTER SET utf8 DEFAULT 'FooterLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FooterText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `FooterTextTitle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `FooterPageLink` int(11) NOT NULL DEFAULT '0',
  `FooterColumn` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ConfigSettingsID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FooterLink`
--

INSERT INTO `FooterLink` (`ID`, `ClassName`, `LastEdited`, `Created`, `FooterText`, `SortID`, `ParentID`, `PageLinkID`, `FooterTextTitle`, `FooterPageLink`, `FooterColumn`, `Bold`, `ConfigSettingsID`) VALUES
(1, 'FooterLink', '2017-04-11 08:17:34', '2017-04-02 04:39:09', 'Contact', 6, 0, 3, NULL, 3, 'Column1', 0, 0),
(3, 'FooterLink', '2017-04-11 08:17:34', '2017-04-10 19:47:04', 'Home', 1, 0, 0, NULL, 1, 'Column1', 0, 0),
(4, 'FooterLink', '2017-04-11 08:17:34', '2017-04-10 19:47:21', 'About', 2, 0, 0, NULL, 2, 'Column1', 0, 0),
(5, 'FooterLink', '2017-04-11 08:17:34', '2017-04-11 08:17:08', 'Gallery', 3, 0, 0, NULL, 6, 'Column1', 0, 0),
(6, 'FooterLink', '2017-04-11 08:17:34', '2017-04-11 08:17:17', 'Styling', 4, 0, 0, NULL, 7, 'Column1', 0, 0),
(7, 'FooterLink', '2017-04-11 08:17:34', '2017-04-11 08:17:26', 'Media', 5, 0, 0, NULL, 8, 'Column1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FormSubmission`
--

CREATE TABLE IF NOT EXISTS `FormSubmission` (
`ID` int(11) NOT NULL,
  `ClassName` enum('FormSubmission') CHARACTER SET utf8 DEFAULT 'FormSubmission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FormData` mediumtext CHARACTER SET utf8,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GalleryItem`
--

CREATE TABLE IF NOT EXISTS `GalleryItem` (
`ID` int(11) NOT NULL,
  `ClassName` enum('GalleryItem') CHARACTER SET utf8 DEFAULT 'GalleryItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext CHARACTER SET utf8,
  `ColWidth` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `GalleryPageID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Orientation` enum('Portrait','Landscape') CHARACTER SET utf8 DEFAULT 'Portrait'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GalleryItem`
--

INSERT INTO `GalleryItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ColWidth`, `SortOrder`, `PageID`, `ImageID`, `GalleryPageID`, `CategoryID`, `Orientation`) VALUES
(12, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-07 14:16:46', NULL, 'Double', 2, 0, 19, 6, 1, 'Portrait'),
(13, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:30:15', NULL, 'Single', 5, 0, 42, 6, 1, 'Portrait'),
(14, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:30:36', NULL, 'Double', 7, 0, 43, 6, 1, 'Portrait'),
(15, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:30:57', NULL, 'Double', 1, 0, 44, 6, 1, 'Portrait'),
(16, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:31:15', NULL, 'Double', 4, 0, 45, 6, 1, 'Portrait'),
(17, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:31:40', NULL, 'Double', 3, 0, 47, 6, 1, 'Portrait'),
(18, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-08 12:35:28', NULL, 'Single', 6, 0, 48, 6, 1, 'Portrait'),
(22, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:37:46', NULL, 'Double', 8, 0, 82, 6, 6, 'Portrait'),
(23, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:38:11', NULL, 'Double', 11, 0, 83, 6, 6, 'Portrait'),
(25, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:39:48', NULL, 'Double', 12, 0, 85, 6, 6, 'Portrait'),
(26, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:41:05', NULL, 'Double', 13, 0, 86, 6, 6, 'Portrait'),
(27, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:41:42', NULL, 'Single', 9, 0, 87, 6, 6, 'Portrait'),
(28, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 19:42:11', NULL, 'Single', 10, 0, 88, 6, 6, 'Portrait'),
(29, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:14:27', NULL, 'Double', 24, 0, 90, 6, 5, 'Portrait'),
(31, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:15:32', NULL, 'Single', 23, 0, 91, 6, 5, 'Portrait'),
(34, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:18:29', NULL, 'Single', 18, 0, 96, 6, 5, 'Portrait'),
(35, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:20:09', NULL, 'Single', 19, 0, 97, 6, 5, 'Portrait'),
(36, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:20:49', NULL, 'Double', 21, 0, 98, 6, 5, 'Portrait'),
(37, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:21:32', NULL, 'Double', 20, 0, 99, 6, 5, 'Portrait'),
(38, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:22:42', NULL, 'Double', 22, 0, 100, 6, 5, 'Portrait'),
(39, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:23:32', NULL, 'Double', 15, 0, 101, 6, 5, 'Portrait'),
(40, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:24:14', NULL, 'Single', 16, 0, 102, 6, 5, 'Portrait'),
(41, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:25:07', NULL, 'Double', 25, 0, 103, 6, 5, 'Portrait'),
(42, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:25:54', NULL, 'Single', 28, 0, 104, 6, 5, 'Portrait'),
(43, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:26:46', NULL, 'Single', 27, 0, 105, 6, 5, 'Portrait'),
(45, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:28:59', NULL, 'Single', 26, 0, 108, 6, 5, 'Portrait'),
(46, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:29:29', NULL, 'Single', 31, 0, 109, 6, 5, 'Portrait'),
(47, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:30:06', NULL, 'Double', 32, 0, 110, 6, 5, 'Portrait'),
(48, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:33:08', NULL, 'Single', 33, 0, 112, 6, 5, 'Portrait'),
(49, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:35:48', NULL, 'Single', 30, 0, 113, 6, 5, 'Portrait'),
(50, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:36:33', NULL, 'Single', 34, 0, 114, 6, 5, 'Portrait'),
(51, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-10 22:42:31', NULL, 'Single', 29, 0, 115, 6, 5, 'Portrait'),
(52, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:13:23', NULL, 'Double', 6, 0, 127, 11, 8, 'Portrait'),
(54, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:13:52', NULL, 'Single', 1, 0, 129, 11, 10, 'Portrait'),
(55, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:14:48', NULL, 'Single', 2, 0, 130, 11, 10, 'Portrait'),
(57, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:16:48', NULL, 'Single', 4, 0, 132, 11, 11, 'Portrait'),
(58, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:17:54', NULL, 'Single', 3, 0, 133, 11, 11, 'Portrait'),
(59, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 13:18:34', NULL, 'Single', 5, 0, 134, 11, 11, 'Portrait'),
(60, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:12:29', NULL, 'Single', 8, 0, 135, 11, 9, 'Portrait'),
(61, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:12:55', NULL, 'Single', 9, 0, 136, 11, 9, 'Portrait'),
(62, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:13:09', NULL, 'Single', 11, 0, 137, 11, 9, 'Portrait'),
(63, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:13:24', NULL, 'Single', 12, 0, 138, 11, 9, 'Portrait'),
(64, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:13:42', NULL, 'Single', 10, 0, 139, 11, 9, 'Portrait'),
(65, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:14:02', NULL, 'Single', 13, 0, 140, 11, 9, 'Portrait'),
(66, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:14:20', NULL, 'Single', 7, 0, 141, 11, 9, 'Portrait'),
(67, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:14:37', NULL, 'Single', 14, 0, 142, 11, 9, 'Portrait'),
(68, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:15:03', NULL, 'Single', 15, 0, 143, 11, 9, 'Portrait'),
(71, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:16:05', NULL, 'Single', 16, 0, 146, 11, 9, 'Portrait'),
(72, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:17:14', NULL, 'Double', 18, 0, 147, 11, 9, 'Portrait'),
(73, 'GalleryItem', '2017-04-12 11:19:42', '2017-04-11 14:17:41', NULL, 'Double', 17, 0, 148, 11, 9, 'Portrait'),
(74, 'GalleryItem', '2017-04-12 11:21:54', '2017-04-12 11:21:53', NULL, 'Single', 19, 0, 150, 11, 7, 'Portrait'),
(80, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-19 12:03:42', NULL, 'Single', 17, 0, 163, 6, 5, 'Portrait'),
(81, 'GalleryItem', '2017-04-21 14:35:44', '2017-04-19 12:04:06', NULL, 'Single', 14, 0, 164, 6, 5, 'Portrait');

-- --------------------------------------------------------

--
-- Table structure for table `GalleryPage`
--

CREATE TABLE IF NOT EXISTS `GalleryPage` (
`ID` int(11) NOT NULL,
  `ShowFilter` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GalleryPage`
--

INSERT INTO `GalleryPage` (`ID`, `ShowFilter`) VALUES
(6, 0),
(8, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `GalleryPage_Live`
--

CREATE TABLE IF NOT EXISTS `GalleryPage_Live` (
`ID` int(11) NOT NULL,
  `ShowFilter` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GalleryPage_Live`
--

INSERT INTO `GalleryPage_Live` (`ID`, `ShowFilter`) VALUES
(6, 0),
(8, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `GalleryPage_versions`
--

CREATE TABLE IF NOT EXISTS `GalleryPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ShowFilter` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GalleryPage_versions`
--

INSERT INTO `GalleryPage_versions` (`ID`, `RecordID`, `Version`, `ShowFilter`) VALUES
(2, 6, 8, 1),
(3, 6, 9, 1),
(4, 6, 10, 1),
(5, 8, 2, 0),
(6, 8, 3, 0),
(7, 8, 4, 0),
(8, 6, 11, 0),
(9, 11, 1, 0),
(10, 11, 2, 0),
(11, 11, 3, 0),
(12, 8, 5, 0),
(13, 11, 4, 0),
(14, 11, 5, 0),
(15, 11, 6, 0),
(16, 11, 7, 1),
(17, 8, 6, 0),
(18, 11, 8, 1),
(19, 11, 9, 0),
(20, 11, 10, 1),
(21, 11, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
`ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2017-04-21 14:33:08', '2017-04-02 00:20:21', 'Default Admin', NULL, 'missabigail', '72e8a8370d94687ad738df5202c08c55e85815da', '2017-04-24 14:33:08', NULL, NULL, 15, '2017-04-21 15:48:52', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
`ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Module`
--

CREATE TABLE IF NOT EXISTS `Module` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Module') CHARACTER SET utf8 DEFAULT 'Module',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext CHARACTER SET utf8,
  `LinkText` mediumtext CHARACTER SET utf8,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  `LinkImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE IF NOT EXISTS `Page` (
`ID` int(11) NOT NULL,
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  `ExcludeFromSitemap` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `BackgroundImageID`, `ExcludeFromSitemap`) VALUES
(2, 23, 0),
(3, 23, 0),
(6, 23, 0),
(7, 23, 0),
(8, 23, 0),
(10, 0, 0),
(11, 23, 0),
(12, 0, 0),
(13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

CREATE TABLE IF NOT EXISTS `Page_Live` (
`ID` int(11) NOT NULL,
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  `ExcludeFromSitemap` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `BackgroundImageID`, `ExcludeFromSitemap`) VALUES
(2, 23, 0),
(3, 23, 0),
(6, 23, 0),
(7, 23, 0),
(8, 23, 0),
(10, 0, 0),
(11, 23, 0),
(12, 0, 0),
(13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page_Testimonials`
--

CREATE TABLE IF NOT EXISTS `Page_Testimonials` (
`ID` int(11) NOT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  `TestimonialID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_Testimonials`
--

INSERT INTO `Page_Testimonials` (`ID`, `PageID`, `TestimonialID`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

CREATE TABLE IF NOT EXISTS `Page_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  `ExcludeFromSitemap` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `BackgroundImageID`, `ExcludeFromSitemap`) VALUES
(1, 2, 5, 0, 0),
(2, 6, 8, 0, 0),
(3, 3, 8, 0, 0),
(4, 3, 9, 0, 0),
(5, 2, 6, 23, 0),
(6, 2, 7, 23, 0),
(7, 2, 8, 23, 0),
(8, 6, 9, 0, 0),
(9, 7, 4, 0, 0),
(10, 7, 5, 23, 0),
(11, 6, 10, 23, 0),
(12, 3, 10, 23, 0),
(13, 7, 6, 23, 0),
(14, 7, 7, 23, 0),
(15, 8, 1, 0, 0),
(16, 8, 2, 0, 0),
(17, 8, 3, 0, 0),
(18, 8, 4, 0, 0),
(19, 9, 1, 0, 0),
(20, 9, 2, 0, 0),
(21, 6, 11, 23, 0),
(22, 2, 9, 23, 0),
(23, 2, 10, 23, 0),
(24, 2, 11, 23, 0),
(25, 2, 12, 23, 0),
(26, 2, 13, 23, 0),
(27, 2, 14, 23, 0),
(28, 10, 1, 0, 0),
(29, 10, 2, 0, 0),
(30, 10, 3, 0, 0),
(31, 10, 4, 0, 0),
(32, 2, 15, 23, 0),
(33, 2, 16, 23, 0),
(34, 11, 1, 0, 0),
(35, 11, 2, 0, 0),
(36, 11, 3, 0, 0),
(37, 2, 17, 23, 0),
(38, 2, 18, 23, 0),
(39, 2, 19, 23, 0),
(40, 2, 20, 23, 0),
(41, 8, 5, 0, 0),
(42, 11, 4, 0, 0),
(43, 2, 21, 23, 0),
(44, 2, 22, 23, 0),
(45, 2, 23, 23, 0),
(46, 2, 24, 23, 0),
(47, 11, 5, 23, 0),
(48, 11, 6, 101, 0),
(49, 2, 25, 23, 0),
(50, 2, 26, 23, 0),
(51, 2, 27, 23, 0),
(52, 2, 28, 23, 0),
(53, 2, 29, 23, 0),
(54, 2, 30, 23, 0),
(55, 2, 31, 23, 0),
(56, 11, 7, 101, 0),
(57, 3, 11, 23, 0),
(58, 3, 12, 23, 0),
(59, 3, 13, 23, 0),
(60, 3, 14, 23, 0),
(61, 3, 15, 23, 0),
(62, 3, 16, 23, 0),
(63, 3, 17, 23, 0),
(64, 2, 32, 23, 0),
(65, 2, 33, 23, 0),
(66, 2, 34, 23, 0),
(67, 2, 35, 23, 0),
(68, 2, 36, 23, 0),
(69, 8, 6, 23, 0),
(70, 11, 8, 23, 0),
(71, 11, 9, 23, 0),
(72, 11, 10, 23, 0),
(73, 11, 11, 23, 0),
(74, 2, 37, 23, 0),
(75, 2, 38, 23, 0),
(76, 2, 39, 23, 0),
(77, 7, 8, 23, 0),
(78, 12, 1, 0, 0),
(79, 13, 1, 0, 0),
(80, 12, 2, 0, 0),
(81, 12, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage`
--

INSERT INTO `RedirectorPage` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(10, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage_Live`
--

INSERT INTO `RedirectorPage_Live` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(10, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RedirectorPage_versions`
--

INSERT INTO `RedirectorPage_versions` (`ID`, `RecordID`, `Version`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(1, 9, 2, 'Internal', NULL, 0),
(2, 10, 1, 'Internal', NULL, 0),
(3, 10, 2, 'Internal', NULL, 0),
(4, 10, 3, 'Internal', NULL, 0),
(5, 10, 4, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `DebugToolsDisabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EmulateUserDisabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AdminToEmails` mediumtext CHARACTER SET utf8,
  `AdminFromEmail` mediumtext CHARACTER SET utf8,
  `Phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Address` mediumtext CHARACTER SET utf8,
  `Facebook` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Twitter` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Instagram` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `Pinterest` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `DebugToolsDisabled`, `EmulateUserDisabled`, `AdminToEmails`, `AdminFromEmail`, `Phone`, `Email`, `Address`, `Facebook`, `Twitter`, `Instagram`, `LogoID`, `Pinterest`, `Mobile`) VALUES
(1, 'SiteConfig', '2017-04-12 16:23:17', '2017-04-02 00:20:22', 'Miss Abigail', 'Couture', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 1, 1, NULL, NULL, '04 472 2483', 'enquiries@missabigail.co.nz', '387 Ohariu Valley Road,\r\nOhariu Valley\r\nWellington 6037\r\nNew Zealand', 'https://www.facebook.com/MissAbigailCouture/', NULL, 'https://www.instagram.com/missabigailcouture/', 149, NULL, '022 052 7390');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','GalleryPage','HomePage','HTMLSitemap','XMLSitemap','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2017-04-04 10:22:51', '2017-04-02 00:20:21', 'home', 'Home', NULL, '<p>Full page slideshow of own dress</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2017-04-21 14:41:16', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-decoration: underline;"> </p><p style="text-decoration: underline;">Below is a list of awards Abigail has won over her career:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 39, 0),
(3, 'UserDefinedForm', '2017-04-12 16:40:24', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"> </h2>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 17, 0),
(4, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'GalleryPage', '2017-04-11 08:27:09', '2017-04-02 03:55:23', 'gallery', 'Gallery', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(7, 'Page', '2017-04-21 14:48:17', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span> </span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0),
(8, 'GalleryPage', '2017-04-13 08:24:22', '2017-04-10 20:13:07', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(10, 'RedirectorPage', '2017-04-11 13:06:24', '2017-04-11 12:53:38', 'awards-redirector-page', 'awards Redirector Page', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 1, NULL, 'LoggedInUsers', 'Inherit', 4, 2),
(11, 'GalleryPage', '2017-04-13 08:32:18', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 11, 0),
(12, 'HTMLSitemap', '2017-04-21 15:28:18', '2017-04-21 15:20:45', 'html-sitemap', 'HTML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10000, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(13, 'XMLSitemap', '2017-04-21 15:20:46', '2017-04-21 15:20:46', 'sitemap', 'XML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10001, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

INSERT INTO `SiteTree_ImageTracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`) VALUES
(726, 2, 117, 'Content'),
(727, 2, 119, 'Content'),
(728, 2, 118, 'Content'),
(729, 2, 120, 'Content'),
(730, 2, 121, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','GalleryPage','HomePage','HTMLSitemap','XMLSitemap','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2017-04-04 10:22:51', '2017-04-02 00:20:21', 'home', 'Home', NULL, '<p>Full page slideshow of own dress</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2017-04-21 14:41:17', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-decoration: underline;"> </p><p style="text-decoration: underline;">Below is a list of awards Abigail has won over her career:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 39, 0),
(3, 'UserDefinedForm', '2017-04-12 16:40:24', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"> </h2>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 17, 0),
(4, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'GalleryPage', '2017-04-11 08:27:09', '2017-04-02 03:55:23', 'gallery', 'Gallery', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(7, 'Page', '2017-04-21 14:48:18', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span> </span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0),
(8, 'GalleryPage', '2017-04-13 08:24:23', '2017-04-10 20:13:07', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(10, 'RedirectorPage', '2017-04-11 13:06:24', '2017-04-11 12:53:38', 'awards-redirector-page', 'awards Redirector Page', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 1, NULL, 'LoggedInUsers', 'Inherit', 4, 2),
(11, 'GalleryPage', '2017-04-13 08:32:19', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 11, 0),
(12, 'HTMLSitemap', '2017-04-21 15:28:19', '2017-04-21 15:20:45', 'html-sitemap', 'HTML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10000, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(13, 'XMLSitemap', '2017-04-21 15:20:46', '2017-04-21 15:20:46', 'sitemap', 'XML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10001, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','GalleryPage','HomePage','HTMLSitemap','XMLSitemap','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2017-04-02 00:20:21', '2017-04-02 00:20:21', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2017-04-02 00:20:22', '2017-04-02 00:20:22', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 6, 1, 0, 1, 0, 'Page', '2017-04-02 03:55:23', '2017-04-02 03:55:23', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 2, 1, 1, 1, 'Page', '2017-04-02 03:55:30', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 3, 1, 1, 1, 'GalleryPage', '2017-04-02 03:57:17', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 4, 1, 1, 1, 'GalleryPage', '2017-04-02 03:57:20', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 7, 1, 0, 1, 0, 'Page', '2017-04-02 03:57:31', '2017-04-02 03:57:31', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 7, 2, 1, 1, 1, 'Page', '2017-04-02 03:57:38', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 7, 3, 1, 1, 1, 'Page', '2017-04-02 03:57:42', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 2, 2, 0, 1, 0, 'Page', '2017-04-02 03:57:45', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 2, 3, 1, 1, 1, 'Page', '2017-04-02 03:57:53', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 3, 2, 1, 1, 1, 'UserDefinedForm', '2017-04-02 03:58:04', '2017-04-02 00:20:22', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 3, 3, 1, 1, 1, 'UserDefinedForm', '2017-04-02 03:58:31', '2017-04-02 00:20:22', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 3, 4, 1, 1, 1, 'UserDefinedForm', '2017-04-02 03:59:41', '2017-04-02 00:20:22', 'contact-us', 'Contact Us', NULL, '<p>Phone</p><p>Email</p><p>To make an appointment please send me a message via the form.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 1, 2, 1, 1, 1, 'Page', '2017-04-02 04:00:02', '2017-04-02 00:20:21', 'home', 'Home', NULL, '<p>Full page slideshow of own dress</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 2, 4, 1, 1, 1, 'Page', '2017-04-02 04:00:30', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, '<p>2 cols</p><p>text and images</p><p>If multiple images, show as slider</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(20, 6, 5, 1, 1, 1, 'GalleryPage', '2017-04-02 04:00:53', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, '<p>4 col images</p><p>filter by category</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 6, 6, 1, 1, 1, 'GalleryPage', '2017-04-02 04:01:00', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, '<p>4 col images</p><p>filter by category</p><p>filter hide/show</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(22, 6, 7, 1, 1, 1, 'GalleryPage', '2017-04-02 04:53:24', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, '<p>4 col images</p><p>filter by category</p><p>filter hide/show</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(23, 3, 5, 1, 1, 1, 'UserDefinedForm', '2017-04-04 08:53:12', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<p>Phone</p><p>Email</p><p>To make an appointment please send me a message via the form.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(24, 1, 3, 1, 1, 1, 'HomePage', '2017-04-04 10:22:51', '2017-04-02 00:20:21', 'home', 'Home', NULL, '<p>Full page slideshow of own dress</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(25, 3, 6, 1, 1, 1, 'UserDefinedForm', '2017-04-04 11:04:03', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<p>Phone</p><p>Email</p><p>To make an appointment please send me a message via the form.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(26, 3, 7, 1, 1, 1, 'UserDefinedForm', '2017-04-04 11:04:18', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<p>Or send enquiries through the form below</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(27, 2, 5, 1, 2, 2, 'Page', '2017-04-08 07:24:44', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, '<p>2 cols</p><p>text and images</p><p>If multiple images, show as slider</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(28, 6, 8, 1, 2, 2, 'GalleryPage', '2017-04-08 07:25:09', '2017-04-02 03:55:23', 'gallery-page', 'Gallery Page', NULL, '<p>4 col images</p><p>filter by category</p><p>filter hide/show</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(29, 3, 8, 1, 2, 2, 'UserDefinedForm', '2017-04-08 07:25:43', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<p>Or send enquiries through the form below</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(30, 3, 9, 1, 2, 2, 'UserDefinedForm', '2017-04-08 07:31:40', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(31, 2, 6, 1, 1, 1, 'Page', '2017-04-08 10:00:25', '2017-04-02 00:20:22', 'about-us', 'About Us', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(32, 2, 7, 1, 1, 1, 'Page', '2017-04-08 10:50:05', '2017-04-02 00:20:22', 'about', 'About', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(33, 2, 8, 1, 1, 1, 'Page', '2017-04-08 10:50:30', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit. Phasellus sit amet pharetra nisi. Nullam aliquam ac diam in suscipit. Aenean maximus ipsum eget commodo scelerisque. Phasellus eu tristique dui. Nullam congue eu massa vitae consectetur. Nam in ultrices dui, ullamcorper accumsan lorem.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed at mollis orci, a malesuada leo. Proin id placerat erat. Nunc id erat a nunc lacinia pulvinar eu eget velit. Curabitur erat nulla, auctor non ullamcorper sit amet, vulputate a nibh.</p><p>Maecenas sodales rutrum quam, eget venenatis purus accumsan vitae. Fusce vitae arcu id est faucibus accumsan ac id mi. Suspendisse vitae pellentesque metus. Nam semper non risus ac tincidunt. Curabitur eu magna sit amet purus accumsan aliquam. Integer vel lorem risus. Cras a interdum ex. Aliquam nec molestie lectus, a tempor lacus.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(34, 6, 9, 1, 1, 1, 'GalleryPage', '2017-04-08 11:20:53', '2017-04-02 03:55:23', 'gallery', 'Gallery', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(35, 7, 4, 1, 1, 1, 'Page', '2017-04-08 12:23:25', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(36, 7, 5, 1, 1, 1, 'Page', '2017-04-08 12:23:43', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit.</span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 6, 10, 1, 1, 1, 'GalleryPage', '2017-04-08 12:29:23', '2017-04-02 03:55:23', 'gallery', 'Gallery', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 3, 10, 1, 1, 1, 'UserDefinedForm', '2017-04-08 14:39:38', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 7, 6, 1, 1, 1, 'Page', '2017-04-10 19:49:14', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit.</span></p><p> </p><p><a href="[sitetree_link,id=3]"><span>Contact me</span></a></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(40, 7, 7, 1, 1, 1, 'Page', '2017-04-10 19:55:06', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc leo orci, bibendum sit amet luctus nec, tristique nec velit.</span></p><p> </p><p><a style="border: 1px solid red; padding: 8px 10px;" href="[sitetree_link,id=3]"><span>Contact me</span></a></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(41, 8, 1, 0, 1, 0, 'Page', '2017-04-10 20:13:07', '2017-04-10 20:13:07', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(42, 8, 2, 1, 1, 1, 'GalleryPage', '2017-04-10 20:16:49', '2017-04-10 20:13:07', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(43, 8, 3, 1, 1, 1, 'GalleryPage', '2017-04-10 20:17:10', '2017-04-10 20:13:07', 'new-page', 'Media', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(44, 8, 4, 1, 1, 1, 'GalleryPage', '2017-04-10 20:18:18', '2017-04-10 20:13:07', 'new-page', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(45, 9, 1, 0, 1, 0, 'VirtualPage', '2017-04-11 08:18:25', '2017-04-11 08:18:25', 'new-virtual-page', 'New Virtual Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, NULL, 'Inherit', 'Inherit', 6),
(46, 9, 2, 0, 1, 0, 'RedirectorPage', '2017-04-11 08:19:10', '2017-04-11 08:18:25', 'new-virtual-page', 'New Virtual Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, NULL, 'Inherit', 'Inherit', 6),
(47, 6, 11, 1, 1, 1, 'GalleryPage', '2017-04-11 08:27:09', '2017-04-02 03:55:23', 'gallery', 'Gallery', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(48, 2, 9, 1, 1, 1, 'Page', '2017-04-11 12:46:26', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> </p><p><img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"></p><p><img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"></p><p><img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"></p><p><img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(49, 2, 10, 1, 1, 1, 'Page', '2017-04-11 12:50:50', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">                        <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">                       <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">                    <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">                           <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 2, 11, 1, 1, 1, 'Page', '2017-04-11 12:51:10', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">                      <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">                     <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">                  <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">                         <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(51, 2, 12, 1, 1, 1, 'Page', '2017-04-11 12:52:17', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">            <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">          <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">                    <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(52, 2, 13, 1, 1, 1, 'Page', '2017-04-11 12:52:36', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">            <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">          <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(53, 2, 14, 1, 1, 1, 'Page', '2017-04-11 12:53:03', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay.</p><p> </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney.</p><p> </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington.</p><p> </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range.</p><p> </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise.</p><p> </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">              <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">          <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(54, 10, 1, 0, 1, 0, 'RedirectorPage', '2017-04-11 12:53:38', '2017-04-11 12:53:38', 'new-redirector-page', 'New Redirector Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(55, 10, 2, 1, 1, 1, 'RedirectorPage', '2017-04-11 12:54:16', '2017-04-11 12:53:38', 'awards-redirector-page', 'awards Redirector Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(56, 10, 3, 1, 1, 1, 'RedirectorPage', '2017-04-11 13:06:13', '2017-04-11 12:53:38', 'awards-redirector-page', 'awards Redirector Page', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 1, NULL, 'LoggedInUsers', 'Inherit', 0),
(57, 10, 4, 1, 1, 1, 'RedirectorPage', '2017-04-11 13:06:24', '2017-04-11 12:53:38', 'awards-redirector-page', 'awards Redirector Page', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 1, NULL, 'LoggedInUsers', 'Inherit', 2),
(58, 2, 15, 1, 1, 1, 'Page', '2017-04-11 13:07:04', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100">              <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100">          <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100">               <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(59, 2, 16, 1, 1, 1, 'Page', '2017-04-11 13:09:03', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(60, 11, 1, 0, 1, 0, 'GalleryPage', '2017-04-11 13:11:33', '2017-04-11 13:11:33', 'new-gallery-page', 'New Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(61, 11, 2, 1, 1, 1, 'GalleryPage', '2017-04-11 13:12:19', '2017-04-11 13:11:33', 'new-gallery-page', 'New Gallery Page', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'LoggedInUsers', 'LoggedInUsers', 0),
(62, 11, 3, 1, 1, 1, 'GalleryPage', '2017-04-11 13:12:43', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'LoggedInUsers', 'LoggedInUsers', 0),
(63, 2, 17, 1, 1, 1, 'Page', '2017-04-11 13:20:26', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links below:</p><p> </p><p>WINNER Contemporary lady of the day at Wellington Cup 2014</p><p>BEST DRESSED couple The Sevens 2014 (Barbie and Ken)</p><p>WINNER 2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week 2012 Museum Hotel Award</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(64, 2, 18, 1, 1, 1, 'Page', '2017-04-11 13:22:38', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(65, 2, 19, 1, 1, 1, 'Page', '2017-04-11 13:32:07', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the links:</p><p>WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(66, 2, 20, 1, 1, 1, 'Page', '2017-04-11 14:08:15', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the photo gallery:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(67, 8, 5, 1, 1, 1, 'GalleryPage', '2017-04-11 14:11:55', '2017-04-10 20:13:07', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(68, 11, 4, 1, 1, 1, 'GalleryPage', '2017-04-11 14:19:18', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(69, 2, 21, 1, 1, 1, 'Page', '2017-04-11 14:21:05', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the <a href="[sitetree_link,id=11]"><span class="pink-text">photo gallery</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(70, 2, 22, 1, 1, 1, 'Page', '2017-04-11 14:23:46', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the <a href="[sitetree_link,id=11]"><span class="pink-text">photo gallery</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 11),
(71, 2, 23, 1, 1, 1, 'Page', '2017-04-11 15:43:31', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career, check out the <a href="[sitetree_link,id=11]"><span class="pink-text">photo gallery</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(72, 2, 24, 1, 1, 1, 'Page', '2017-04-12 10:50:16', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p>For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(73, 11, 5, 1, 1, 1, 'GalleryPage', '2017-04-12 10:54:16', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(74, 11, 6, 1, 1, 1, 'GalleryPage', '2017-04-12 11:03:24', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(75, 2, 25, 1, 1, 1, 'Page', '2017-04-12 11:05:00', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">Title here</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p align="center"> </p><p>For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(76, 2, 26, 1, 1, 1, 'Page', '2017-04-12 11:07:34', '2017-04-02 00:20:22', 'about', 'About', NULL, '<h1 class="script-font-burgundy">The designer</h1><p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p align="center"> </p><p>For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(77, 2, 27, 1, 1, 1, 'Page', '2017-04-12 11:08:38', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p><br class="Apple-interchange-newline">Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p align="center"> </p><p>For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(78, 2, 28, 1, 1, 1, 'Page', '2017-04-12 11:08:53', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p align="center"> </p><p>For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p> WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(79, 2, 29, 1, 1, 1, 'Page', '2017-04-12 11:10:11', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="pink-text">PHOTO GALLERY</span></a>:</p><p>WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(80, 2, 30, 1, 1, 1, 'Page', '2017-04-12 11:11:47', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=]"><span class="burgundy-text">photo gallery</span></a>:</p><p>WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(81, 2, 31, 1, 1, 1, 'Page', '2017-04-12 11:13:10', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="burgundy-text">photo gallery</span></a>:</p><p>WINNER Contemporary lady of the day, Wellington Cup 2014</p><p>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</p><p>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</p><p>WINNER Wellington Fashion Week Museum Hotel Award 2012</p><p>WINNER of F.rock fashion in Sydney 2006 </p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(82, 11, 7, 1, 1, 1, 'GalleryPage', '2017-04-12 11:17:09', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(83, 3, 11, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:35:25', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<p>test</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(84, 3, 12, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:38:16', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h1 class="script-font"><em><strong>Head Office (by appt only)</strong></em></h1>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(85, 3, 13, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:38:44', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font">Head Office (by appt only)</h2>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(86, 3, 14, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:39:00', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"><em>Head Office (by appt only)</em></h2>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(87, 3, 15, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:39:16', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"><em>Head Office (by appt only)</em></h2><p> </p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(88, 3, 16, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:40:05', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"><em>Head Office (by appointment only)</em></h2><p> </p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(89, 3, 17, 1, 1, 1, 'UserDefinedForm', '2017-04-12 16:40:24', '2017-04-02 00:20:22', 'contact', 'Contact', NULL, '<h2 class="script-font"> </h2>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(90, 2, 32, 1, 1, 1, 'Page', '2017-04-12 16:46:17', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">For more detail on the numerous awards she has won over her career,</p><p>Check out the <a href="[sitetree_link,id=11]"><span class="burgundy-text">photo gallery</span></a>:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(91, 2, 33, 1, 1, 1, 'Page', '2017-04-12 16:47:27', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">For more detail on the numerous awards she has won over her career,</p><p>Check out the <a class="pink-text" href="[sitetree_link,id=11]"><span class="burgundy-text">photo gallery</span></a>:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(92, 2, 34, 1, 1, 1, 'Page', '2017-04-13 07:47:53', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">Below is a list of awards Abigail has won over her career,</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(93, 2, 35, 1, 1, 1, 'Page', '2017-04-13 07:49:08', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-align: left;" align="center">Below is a list of awards Abigail has won over her career,</p><p style="text-align: left;" align="center"> </p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(94, 2, 36, 1, 1, 1, 'Page', '2017-04-13 07:49:55', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p class="burgundy-text" align="center"> </p><p style="text-align: left;" align="center">Below is a list of awards Abigail has won over her career: </p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(95, 8, 6, 1, 1, 1, 'GalleryPage', '2017-04-13 08:24:22', '2017-04-10 20:13:07', 'media', 'Media', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(96, 11, 8, 1, 1, 1, 'GalleryPage', '2017-04-13 08:24:56', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(97, 11, 9, 1, 1, 1, 'GalleryPage', '2017-04-13 08:29:03', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(98, 11, 10, 1, 1, 1, 'GalleryPage', '2017-04-13 08:31:35', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(99, 11, 11, 1, 1, 1, 'GalleryPage', '2017-04-13 08:32:18', '2017-04-11 13:11:33', 'award-photos', 'award photos', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'LoggedInUsers', 0),
(100, 2, 37, 1, 1, 1, 'Page', '2017-04-13 12:08:29', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p class="burgundy-text" style="text-align: left;" align="center"><span style="text-align: left; color: #000000;"><span style="text-decoration: underline;">Below is a list of awards Abigail has won over her career:</span> </span></p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(101, 2, 38, 1, 1, 1, 'Page', '2017-04-13 18:05:14', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-decoration: underline;">Below is a list of awards Abigail has won over her career:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(102, 2, 39, 1, 1, 1, 'Page', '2017-04-21 14:41:16', '2017-04-02 00:20:22', 'about', 'About', NULL, '<p>Abigail has worked in the fashion industry for over 15 years, she was born in the UK then moved to Sydney at a young age, finding school “boring”, sewing and art was about all Abigail was interested in, she went straight from school to study Fashion knowing this is where her passion lay. </p><p>She moved on to selling her new label “Miss Abigail” to retailers throughout Australia whilst having her own boutique in Sydney. </p><p>In 2011 Abigail packed up everything and moved back to the UK to explore and work in London, shortly into her travels she was interrupted by a boy (now her husband) and packed up and moved to Wellington. </p><p>Once arriving in Wellington she opened a successful boutique “Design Cartel” located in central Wellington, specialising in New Zealand designer clothing and accessories including the “Miss Abigail” range. </p><p>She then moved onto teaching at NZ Institute of Fashion Technology and inspired students with her industry expertise. </p><p>Abigail now runs the business from the family lifestyle block with her little family including her lovely one year old daughter, Marlowe.</p><p>Having designed and created numerous bridesmaid and flower girl dresses, Abigail embraced her passion in bridal and couture after making her own wedding dress.</p><p>Abigail is a perfectionist when it comes to attention to detail, she researches materials in the global market and ensures that all fabrics are high end and of quality, which results in a superior outcome.</p><p class="burgundy-text" align="center">“Abigail’s passion in life is to make things beautiful”</p><p style="text-decoration: underline;"> </p><p style="text-decoration: underline;">Below is a list of awards Abigail has won over her career:</p><p><strong>WINNER Contemporary lady of the day, Wellington Cup 2014</strong></p><p><strong>WINNER Best dressed couple (Barbie and Ken) The Sevens 2014</strong></p><p><strong>WINNER  2<sup>nd</sup> place WOW Window dressing competition 2013</strong></p><p><strong>WINNER Wellington Fashion Week Museum Hotel Award 2012</strong></p><p><strong>WINNER of F.rock fashion in Sydney 2006 </strong></p><p><img class="leftAlone" title="" src="assets/Uploads/fashion-in-the-field-logo2.png" alt="fashion in the field logo2" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wow.png" alt="wow" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/sevens.png" alt="sevens" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/wfw.png" alt="wfw" width="100" height="100"> <img class="leftAlone" title="" src="assets/Uploads/frock.png" alt="frock" width="100" height="100"></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(103, 7, 8, 1, 1, 1, 'Page', '2017-04-21 14:48:17', '2017-04-02 03:57:31', 'styling', 'Styling', NULL, '<p><span> </span></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(104, 12, 1, 1, 1, 1, 'HTMLSitemap', '2017-04-21 15:20:45', '2017-04-21 15:20:45', 'html-sitemap', 'HTML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10000, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(105, 13, 1, 1, 1, 1, 'XMLSitemap', '2017-04-21 15:20:46', '2017-04-21 15:20:46', 'sitemap', 'XML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10001, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(106, 12, 2, 1, 1, 1, 'HTMLSitemap', '2017-04-21 15:24:05', '2017-04-21 15:20:45', 'html-sitemap', 'HTML Sitemap', NULL, NULL, NULL, NULL, 1, 1, 10000, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(107, 12, 3, 1, 1, 1, 'HTMLSitemap', '2017-04-21 15:28:09', '2017-04-21 15:20:45', 'html-sitemap', 'HTML Sitemap', NULL, NULL, NULL, NULL, 0, 1, 10000, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Slide`
--

CREATE TABLE IF NOT EXISTS `Slide` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Slide') CHARACTER SET utf8 DEFAULT 'Slide',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `SlideImgID` int(11) NOT NULL DEFAULT '0',
  `HomePageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Slide`
--

INSERT INTO `Slide` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `SortOrder`, `SlideImgID`, `HomePageID`, `PageID`) VALUES
(5, 'Slide', '2017-04-08 10:51:11', '2017-04-08 10:51:07', NULL, 1, 24, 0, 2),
(6, 'Slide', '2017-04-19 12:06:35', '2017-04-08 10:52:21', NULL, 5, 25, 0, 1),
(7, 'Slide', '2017-04-19 12:06:35', '2017-04-08 10:52:37', NULL, 2, 26, 0, 1),
(9, 'Slide', '2017-04-08 12:24:23', '2017-04-08 12:24:22', NULL, 1, 29, 0, 7),
(10, 'Slide', '2017-04-08 12:25:33', '2017-04-08 12:25:32', NULL, 2, 30, 0, 7),
(11, 'Slide', '2017-04-08 12:25:55', '2017-04-08 12:25:53', NULL, 3, 31, 0, 7),
(12, 'Slide', '2017-04-08 12:26:12', '2017-04-08 12:26:11', NULL, 4, 32, 0, 7),
(13, 'Slide', '2017-04-08 12:26:40', '2017-04-08 12:26:27', NULL, 5, 34, 0, 7),
(14, 'Slide', '2017-04-08 12:26:59', '2017-04-08 12:26:58', NULL, 6, 35, 0, 7),
(15, 'Slide', '2017-04-08 12:27:16', '2017-04-08 12:27:15', NULL, 7, 36, 0, 7),
(16, 'Slide', '2017-04-08 12:27:33', '2017-04-08 12:27:32', NULL, 8, 37, 0, 7),
(17, 'Slide', '2017-04-08 12:28:01', '2017-04-08 12:27:48', NULL, 9, 39, 0, 7),
(18, 'Slide', '2017-04-08 12:28:20', '2017-04-08 12:28:18', NULL, 10, 40, 0, 7),
(19, 'Slide', '2017-04-08 12:28:34', '2017-04-08 12:28:33', NULL, 11, 41, 0, 7),
(22, 'Slide', '2017-04-19 12:06:35', '2017-04-10 11:25:05', NULL, 3, 80, 0, 1),
(23, 'Slide', '2017-04-11 13:03:15', '2017-04-11 13:03:14', NULL, 1, 123, 0, 10),
(24, 'Slide', '2017-04-11 13:03:33', '2017-04-11 13:03:31', NULL, 2, 124, 0, 10),
(25, 'Slide', '2017-04-11 13:03:47', '2017-04-11 13:03:46', NULL, 3, 125, 0, 10),
(26, 'Slide', '2017-04-11 13:04:36', '2017-04-11 13:04:35', NULL, 4, 126, 0, 10),
(28, 'Slide', '2017-04-19 12:06:35', '2017-04-15 19:42:12', NULL, 4, 0, 0, 1),
(32, 'Slide', '2017-04-19 12:06:35', '2017-04-17 12:01:58', NULL, 1, 162, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFileField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFileField` (
`ID` int(11) NOT NULL,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedForm`
--

CREATE TABLE IF NOT EXISTS `SubmittedForm` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SubmittedForm') CHARACTER SET utf8 DEFAULT 'SubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubmittedForm`
--

INSERT INTO `SubmittedForm` (`ID`, `ClassName`, `LastEdited`, `Created`, `SubmittedByID`, `ParentID`) VALUES
(1, 'SubmittedForm', '2017-04-08 07:36:00', '2017-04-08 07:36:00', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `SubmittedFormField`
--

CREATE TABLE IF NOT EXISTS `SubmittedFormField` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SubmittedFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubmittedFormField`
--

INSERT INTO `SubmittedFormField` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Value`, `Title`, `ParentID`) VALUES
(1, 'SubmittedFormField', '2017-04-08 07:36:00', '2017-04-08 07:36:00', 'EditableTextField_3ba8a', 'Emma', 'Name', 1),
(2, 'SubmittedFormField', '2017-04-08 07:36:00', '2017-04-08 07:36:00', 'EditableTextField_12e31', 'ecbaker82@gmail.com', 'Email', 1),
(3, 'SubmittedFormField', '2017-04-08 07:36:00', '2017-04-08 07:36:00', 'EditableTextField_7780b', '2017-04-10', 'Preferred appointment date', 1),
(4, 'SubmittedFormField', '2017-04-08 07:36:00', '2017-04-08 07:36:00', 'EditableTextField_766b7', 'Testing', 'Message', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Testimonial`
--

CREATE TABLE IF NOT EXISTS `Testimonial` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Testimonial') CHARACTER SET utf8 DEFAULT 'Testimonial',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Quote` mediumtext CHARACTER SET utf8,
  `Author` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Testimonial`
--

INSERT INTO `Testimonial` (`ID`, `ClassName`, `LastEdited`, `Created`, `Quote`, `Author`, `SortOrder`) VALUES
(1, 'Testimonial', '2017-04-10 10:54:09', '2017-04-08 12:22:45', 'Your wedding was absolutely incredible, my favourite & most beautiful of the season hands down!', 'Chelsea Stevenson - Ruby & Wolf Photography', 0),
(2, 'Testimonial', '2017-04-10 10:54:45', '2017-04-10 10:54:45', 'Abby has a real talent for creating dresses that tick all the boxes - flattering, stylish, quality and comfortable. I love my bridesmaid dress and will definitely wear it again', 'Emma Randall', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm` (
`ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm`
--

INSERT INTO `UserDefinedForm` (`ID`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(3, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipient`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipient` (
`ID` int(11) NOT NULL,
  `ClassName` enum('UserDefinedForm_EmailRecipient') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipient',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `EmailBodyHtml` mediumtext CHARACTER SET utf8,
  `EmailTemplate` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomRulesCondition` enum('And','Or') CHARACTER SET utf8 DEFAULT 'And',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_EmailRecipient`
--

INSERT INTO `UserDefinedForm_EmailRecipient` (`ID`, `ClassName`, `LastEdited`, `Created`, `EmailAddress`, `EmailSubject`, `EmailFrom`, `EmailReplyTo`, `EmailBody`, `EmailBodyHtml`, `EmailTemplate`, `SendPlain`, `HideFormData`, `CustomRulesCondition`, `FormID`, `SendEmailFromFieldID`, `SendEmailToFieldID`, `SendEmailSubjectFieldID`) VALUES
(1, 'UserDefinedForm_EmailRecipient', '2017-04-08 08:23:24', '2017-04-08 07:32:34', 'enquiries@missabigail.co.nz, abigailsarahmoir@gmail.com', 'Email from Miss Abigail Couture', 'noreply@missabigail.co.nz', 'noreply@missabigail.co.nz', NULL, '<h3>Enquiry received through Miss Abigail website.</h3>', 'SubmittedFormEmail', 0, 0, 'Or', 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_EmailRecipientCondition`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_EmailRecipientCondition` (
`ID` int(11) NOT NULL,
  `ClassName` enum('UserDefinedForm_EmailRecipientCondition') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipientCondition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals') CHARACTER SET utf8 DEFAULT 'IsBlank',
  `ConditionValue` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_Live`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_Live` (
`ID` int(11) NOT NULL,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_Live`
--

INSERT INTO `UserDefinedForm_Live` (`ID`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(3, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDefinedForm_versions`
--

CREATE TABLE IF NOT EXISTS `UserDefinedForm_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDefinedForm_versions`
--

INSERT INTO `UserDefinedForm_versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`) VALUES
(7, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(8, 3, 9, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(9, 3, 10, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(10, 3, 11, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(11, 3, 12, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(12, 3, 13, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(13, 3, 14, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(14, 3, 15, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(15, 3, 16, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0),
(16, 3, 17, 'Send', NULL, '<h3>Thank you for your enquiry.</h3><p>I will be in touch shortly.</p><p>Kind Regards,<br>Abigail</p>', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualPage`
--

INSERT INTO `VirtualPage` (`ID`, `VersionID`, `CopyContentFromID`) VALUES
(9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualPage_versions`
--

INSERT INTO `VirtualPage_versions` (`ID`, `RecordID`, `Version`, `VersionID`, `CopyContentFromID`) VALUES
(1, 9, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
 ADD PRIMARY KEY (`ID`), ADD KEY `GalleryPageID` (`GalleryPageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableCheckbox`
--
ALTER TABLE `EditableCheckbox`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCheckbox_Live`
--
ALTER TABLE `EditableCheckbox_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableCheckbox_versions`
--
ALTER TABLE `EditableCheckbox_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableCustomRule_versions`
--
ALTER TABLE `EditableCustomRule_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableDateField`
--
ALTER TABLE `EditableDateField`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDateField_Live`
--
ALTER TABLE `EditableDateField_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDateField_versions`
--
ALTER TABLE `EditableDateField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableDropdown`
--
ALTER TABLE `EditableDropdown`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDropdown_Live`
--
ALTER TABLE `EditableDropdown_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableDropdown_versions`
--
ALTER TABLE `EditableDropdown_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableEmailField`
--
ALTER TABLE `EditableEmailField`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableEmailField_Live`
--
ALTER TABLE `EditableEmailField_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableEmailField_versions`
--
ALTER TABLE `EditableEmailField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
 ADD PRIMARY KEY (`ID`), ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFieldGroup_versions`
--
ALTER TABLE `EditableFieldGroup_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `EndID` (`EndID`);

--
-- Indexes for table `EditableFileField`
--
ALTER TABLE `EditableFileField`
 ADD PRIMARY KEY (`ID`), ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFileField_Live`
--
ALTER TABLE `EditableFileField_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFileField_versions`
--
ALTER TABLE `EditableFileField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `FolderID` (`FolderID`);

--
-- Indexes for table `EditableFormField`
--
ALTER TABLE `EditableFormField`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableFormField_versions`
--
ALTER TABLE `EditableFormField_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableFormHeading`
--
ALTER TABLE `EditableFormHeading`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableFormHeading_Live`
--
ALTER TABLE `EditableFormHeading_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableFormHeading_versions`
--
ALTER TABLE `EditableFormHeading_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableLiteralField`
--
ALTER TABLE `EditableLiteralField`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableLiteralField_Live`
--
ALTER TABLE `EditableLiteralField_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableLiteralField_versions`
--
ALTER TABLE `EditableLiteralField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableMemberListField`
--
ALTER TABLE `EditableMemberListField`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableMemberListField_Live`
--
ALTER TABLE `EditableMemberListField_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableMemberListField_versions`
--
ALTER TABLE `EditableMemberListField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `EditableNumericField`
--
ALTER TABLE `EditableNumericField`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableNumericField_Live`
--
ALTER TABLE `EditableNumericField_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableNumericField_versions`
--
ALTER TABLE `EditableNumericField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `EditableOption`
--
ALTER TABLE `EditableOption`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableOption_versions`
--
ALTER TABLE `EditableOption_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `EditableTextField`
--
ALTER TABLE `EditableTextField`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableTextField_Live`
--
ALTER TABLE `EditableTextField_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EditableTextField_versions`
--
ALTER TABLE `EditableTextField_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `OwnerID` (`OwnerID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `FooterCategory`
--
ALTER TABLE `FooterCategory`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageLinkID` (`PageLinkID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `FooterLink`
--
ALTER TABLE `FooterLink`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `PageLinkID` (`PageLinkID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `ConfigSettingsID` (`ConfigSettingsID`);

--
-- Indexes for table `FormSubmission`
--
ALTER TABLE `FormSubmission`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageID` (`PageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `GalleryItem`
--
ALTER TABLE `GalleryItem`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageID` (`PageID`), ADD KEY `ImageID` (`ImageID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `GalleryPageID` (`GalleryPageID`), ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `GalleryPage`
--
ALTER TABLE `GalleryPage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GalleryPage_Live`
--
ALTER TABLE `GalleryPage_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GalleryPage_versions`
--
ALTER TABLE `GalleryPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
 ADD PRIMARY KEY (`ID`), ADD KEY `Email` (`Email`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Module`
--
ALTER TABLE `Module`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageID` (`PageID`), ADD KEY `BackgroundImageID` (`BackgroundImageID`), ADD KEY `LinkImageID` (`LinkImageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
 ADD PRIMARY KEY (`ID`), ADD KEY `BackgroundImageID` (`BackgroundImageID`);

--
-- Indexes for table `Page_Live`
--
ALTER TABLE `Page_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `BackgroundImageID` (`BackgroundImageID`);

--
-- Indexes for table `Page_Testimonials`
--
ALTER TABLE `Page_Testimonials`
 ADD PRIMARY KEY (`ID`), ADD KEY `PageID` (`PageID`), ADD KEY `TestimonialID` (`TestimonialID`);

--
-- Indexes for table `Page_versions`
--
ALTER TABLE `Page_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `BackgroundImageID` (`BackgroundImageID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `Code` (`Code`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoleID` (`RoleID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `LogoID` (`LogoID`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `Slide`
--
ALTER TABLE `Slide`
 ADD PRIMARY KEY (`ID`), ADD KEY `SlideImgID` (`SlideImgID`), ADD KEY `ClassName` (`ClassName`), ADD KEY `HomePageID` (`HomePageID`), ADD KEY `PageID` (`PageID`);

--
-- Indexes for table `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
 ADD PRIMARY KEY (`ID`), ADD KEY `UploadedFileID` (`UploadedFileID`);

--
-- Indexes for table `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
 ADD PRIMARY KEY (`ID`), ADD KEY `SubmittedByID` (`SubmittedByID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Testimonial`
--
ALTER TABLE `Testimonial`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
 ADD PRIMARY KEY (`ID`), ADD KEY `FormID` (`FormID`), ADD KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`), ADD KEY `SendEmailToFieldID` (`SendEmailToFieldID`), ADD KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ConditionFieldID` (`ConditionFieldID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserDefinedForm_versions`
--
ALTER TABLE `UserDefinedForm_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `EditableCheckbox`
--
ALTER TABLE `EditableCheckbox`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableCheckbox_Live`
--
ALTER TABLE `EditableCheckbox_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableCheckbox_versions`
--
ALTER TABLE `EditableCheckbox_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableCustomRule`
--
ALTER TABLE `EditableCustomRule`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableCustomRule_Live`
--
ALTER TABLE `EditableCustomRule_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableCustomRule_versions`
--
ALTER TABLE `EditableCustomRule_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableDateField`
--
ALTER TABLE `EditableDateField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableDateField_Live`
--
ALTER TABLE `EditableDateField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableDateField_versions`
--
ALTER TABLE `EditableDateField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `EditableDropdown`
--
ALTER TABLE `EditableDropdown`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableDropdown_Live`
--
ALTER TABLE `EditableDropdown_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableDropdown_versions`
--
ALTER TABLE `EditableDropdown_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableEmailField`
--
ALTER TABLE `EditableEmailField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `EditableEmailField_Live`
--
ALTER TABLE `EditableEmailField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `EditableEmailField_versions`
--
ALTER TABLE `EditableEmailField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `EditableFieldGroup`
--
ALTER TABLE `EditableFieldGroup`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFieldGroup_Live`
--
ALTER TABLE `EditableFieldGroup_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFieldGroup_versions`
--
ALTER TABLE `EditableFieldGroup_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFileField`
--
ALTER TABLE `EditableFileField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFileField_Live`
--
ALTER TABLE `EditableFileField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFileField_versions`
--
ALTER TABLE `EditableFileField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFormField`
--
ALTER TABLE `EditableFormField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableFormField_Live`
--
ALTER TABLE `EditableFormField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableFormField_versions`
--
ALTER TABLE `EditableFormField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `EditableFormHeading`
--
ALTER TABLE `EditableFormHeading`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFormHeading_Live`
--
ALTER TABLE `EditableFormHeading_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableFormHeading_versions`
--
ALTER TABLE `EditableFormHeading_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableLiteralField`
--
ALTER TABLE `EditableLiteralField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableLiteralField_Live`
--
ALTER TABLE `EditableLiteralField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableLiteralField_versions`
--
ALTER TABLE `EditableLiteralField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableMemberListField`
--
ALTER TABLE `EditableMemberListField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableMemberListField_Live`
--
ALTER TABLE `EditableMemberListField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableMemberListField_versions`
--
ALTER TABLE `EditableMemberListField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableNumericField`
--
ALTER TABLE `EditableNumericField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableNumericField_Live`
--
ALTER TABLE `EditableNumericField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableNumericField_versions`
--
ALTER TABLE `EditableNumericField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableOption`
--
ALTER TABLE `EditableOption`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableOption_Live`
--
ALTER TABLE `EditableOption_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableOption_versions`
--
ALTER TABLE `EditableOption_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EditableTextField`
--
ALTER TABLE `EditableTextField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableTextField_Live`
--
ALTER TABLE `EditableTextField_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `EditableTextField_versions`
--
ALTER TABLE `EditableTextField_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `FooterCategory`
--
ALTER TABLE `FooterCategory`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FooterLink`
--
ALTER TABLE `FooterLink`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `FormSubmission`
--
ALTER TABLE `FormSubmission`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GalleryItem`
--
ALTER TABLE `GalleryItem`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `GalleryPage`
--
ALTER TABLE `GalleryPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `GalleryPage_Live`
--
ALTER TABLE `GalleryPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `GalleryPage_versions`
--
ALTER TABLE `GalleryPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Module`
--
ALTER TABLE `Module`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Page_Live`
--
ALTER TABLE `Page_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Page_Testimonials`
--
ALTER TABLE `Page_Testimonials`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Page_versions`
--
ALTER TABLE `Page_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=731;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Slide`
--
ALTER TABLE `Slide`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `SubmittedFileField`
--
ALTER TABLE `SubmittedFileField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SubmittedForm`
--
ALTER TABLE `SubmittedForm`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SubmittedFormField`
--
ALTER TABLE `SubmittedFormField`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Testimonial`
--
ALTER TABLE `Testimonial`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `UserDefinedForm`
--
ALTER TABLE `UserDefinedForm`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `UserDefinedForm_EmailRecipient`
--
ALTER TABLE `UserDefinedForm_EmailRecipient`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UserDefinedForm_EmailRecipientCondition`
--
ALTER TABLE `UserDefinedForm_EmailRecipientCondition`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserDefinedForm_Live`
--
ALTER TABLE `UserDefinedForm_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `UserDefinedForm_versions`
--
ALTER TABLE `UserDefinedForm_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
