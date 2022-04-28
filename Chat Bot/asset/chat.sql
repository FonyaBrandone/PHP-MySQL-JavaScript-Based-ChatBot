-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2022 at 05:03 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

DROP TABLE IF EXISTS `chatbot`;
CREATE TABLE IF NOT EXISTS `chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queries` varchar(100) NOT NULL,
  `replies` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'Hello|Hi|Hey there|Good morning|Good day|Good Evening|', 'Hello!'),
(2, 'how', 'Fine and You Too ?'),
(3, 'who are you', 'i am a Chat bot, build by Amin lab projects'),
(4, 'where are you located', 'I am located in an AI processor'),
(5, 'what do you do', 'I help answer business specific questions when web Admin is not around. Hahaha'),
(6, 'good day', 'Hello, Good Day!'),
(7, 'where are you located', 'This Enterprise is Located in Yaoundé, Cameroon'),
(8, 'thank you', 'You are welcome'),
(9, 'Bye', 'Good bye'),
(10, 'hi, I am Brandon', 'Hello!, how can I help you ?'),
(11, 'your contact', 'You can contact us through our Email: aminbrandone10@gmail.com or Call us on: +237678356198'),
(12, 'Hi, i am Nina', 'Hello Nina'),
(13, 'what is your name', 'I am Amin AI Chatbot!, how can i help you?'),
(14, 'who is your creator | who created you | who is your founder | your origin', 'My algorithm was created by Fonya Brandone'),
(15, 'how can i create an account ?', 'Accounts can be created at the sign in section of the platform'),
(16, 'Hi, i am Amin', 'Hello Amin');

-- --------------------------------------------------------

--
-- Table structure for table `learn`
--

DROP TABLE IF EXISTS `learn`;
CREATE TABLE IF NOT EXISTS `learn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questions` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learn`
--

INSERT INTO `learn` (`id`, `questions`) VALUES
(1, ' hi'),
(2, ' ghjk'),
(3, 'hey there'),
(4, 'hey'),
(5, 'helo'),
(6, 'good'),
(7, 'good morning'),
(8, 'Good Morning'),
(9, 'Good morning'),
(10, 'hi'),
(11, 'Hi'),
(12, 'what is your name'),
(13, 'what is your name'),
(14, 'fuck'),
(15, 'why were you built'),
(16, 'ok'),
(17, 'what is your name'),
(18, 'hi, i am louis'),
(19, 'what is your name'),
(20, 'location'),
(21, 'are you tempted'),
(22, 'what is your name'),
(23, 'your founder'),
(24, 'who created you'),
(25, 'how do i create'),
(26, 'how do i create an account'),
(27, 'How are you'),
(28, '    '),
(29, 'what can you do');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
