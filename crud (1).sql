-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2014 at 06:49 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `puesto` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `fechan` date NOT NULL,
  `edad` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `puesto`, `area`, `fechan`, `edad`) VALUES
(1, 'qeqwewq', 'qwewqewqeqw', 'qweqwewq', '0000-00-00', 85),
(2, 'qeqwewq', 'qwewqewqeqw', 'qweqwewq', '0000-00-00', 85),
(3, 'asdsadad', 'adsqweqwe', 'adsasdqe', '0000-00-00', 54),
(4, 'los aldeano', 'mtk', 'cobra', '1985-10-20', 45),
(5, 'eduardo', 'sistemas', 'sistemas', '1931-02-02', 25),
(6, 'mauricio', 'becario', 'sitemas', '1931-02-02', 45),
(7, 'asd asd asd', 'adf dfg', 'ewr', '2005-09-28', 2),
(8, 'adsad', 'asdas', 'asdasd', '1936-04-03', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
