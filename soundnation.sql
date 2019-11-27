-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 12:35 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soundnation`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Everyday Life', 1, 4, 'assets/images/artwork/EL.jpg'),
(2, 'Alas Ka Pedh', 2, 5, 'assets/images/artwork/AKP.jpeg'),
(3, 'Vaaqif', 2, 5, 'assets/images/artwork/VQF.jpg'),
(4, 'TIM', 3, 7, 'assets/images/artwork/TIM.jpg'),
(5, 'Nucleya Mix', 4, 7, 'assets/images/artwork/NCL.jpeg'),
(6, 'Dangerous Women', 5, 2, 'assets/images/artwork/AG.png');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Coldplay'),
(2, 'The Local Train'),
(3, 'Avicii'),
(4, 'Nucleya'),
(5, 'Ariana Grande');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop'),
(4, 'Piano Rock'),
(5, 'Indie Rock'),
(6, 'Classical'),
(7, 'EDM'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(3, 'Rock', 'prabal', '2019-11-18 00:00:00'),
(4, 'My Favourites', 'prabal', '2019-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 13, 4, 0),
(8, 10, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Everyday Life', 1, 1, 4, '4:20', 'assets/music/Coldplay/Coldplay-Everyday Life.mp3', 1, 21),
(2, 'Manzil', 2, 2, 5, '4:20', 'assets/music/The Local Train/Aalas Ka Pedh/01 Manzil.mp3', 1, 22),
(3, 'Aaoge Tum Kabhi', 2, 2, 5, '5:13', 'assets/music/The Local Train/Aalas Ka Pedh/02 Aaoge Tum Kabhi.mp3', 2, 12),
(4, 'Bandey', 2, 2, 5, '5.05', 'assets/music/The Local Train/Aalas Ka Pedh/03 Bandey.mp3', 3, 22),
(5, 'Choo Lo', 2, 2, 5, '3:53', 'assets/music/The Local Train/Aalas Ka Pedh/04 Choo Lo.mp3', 4, 19),
(6, 'Kaisey Jiyun', 2, 2, 5, '3:59', 'assets/music/The Local Train/Aalas Ka Pedh/05 Kaisey Jiyun.mp3', 5, 11),
(7, 'Yeh Zindagi Hai', 2, 2, 5, '4:09', 'assets/music/The Local Train/Aalas Ka Pedh/06 Yeh Zindagi Hai.mp3', 6, 11),
(8, 'Dil Mere', 2, 2, 5, '3:31', 'assets/music/The Local Train/Aalas Ka Pedh/07 Dil Mere.mp3', 7, 13),
(9, 'Kaisey Jiyun (Acoustic)', 2, 2, 5, '3:39', 'assets/music/The Local Train/Aalas Ka Pedh/08 Kaisey Jiyun (Acoustic).mp3', 8, 12),
(10, 'Aaftaab', 2, 3, 5, '0:09', 'assets/music/The Local Train/Vaaqif/Aaftaab.mp3', 1, 41),
(11, 'Aakhri Salaam', 2, 3, 5, '4:44', 'assets/music/The Local Train/Vaaqif/Aakhri Salaam.mp3', 2, 18),
(12, 'Dilnawaz', 2, 3, 5, '3:27', 'assets/music/The Local Train/Vaaqif/Dilnawaz.mp3', 3, 21),
(13, 'Gustaakh', 2, 3, 5, '3:06', 'assets/music/The Local Train/Vaaqif/Aakhri Salaam.mp3', 4, 21),
(14, 'Khudi', 2, 3, 5, '4:57', 'assets/music/The Local Train/Vaaqif/Khudi.mp3', 5, 19),
(15, 'Mere Yaar', 2, 3, 5, '4:52', 'assets/music/The Local Train/Vaaqif/Mere Yaar.mp3', 6, 16),
(16, 'Mizaaj', 2, 3, 5, '4:25', 'assets/music/The Local Train/Vaaqif/Aakhri Salaam.mp3', 7, 9),
(17, 'Vaaqif', 2, 3, 5, '6:26', 'assets/music/The Local Train/Vaaqif/Vaaqif.mp3', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` date NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Prabal17r', 'Prabal', 'Shetty', 'Prabal17shetty@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', '2019-10-29', 'assets/images/profile-pics/head_emerald.png'),
(9, 'prabal', 'Prabal', 'Shetty', 'Prabal@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2019-11-03', 'assets/images/profile-pics/head_emerald.png'),
(10, 'qwerty', 'Qwert', 'Qwert', 'Qwert@gmail.com', '8c32e5048bc4fbfc5dc53c89a36c0812', '2019-11-18', 'assets/images/profile-pics/head_emerald.png'),
(11, 'davor', 'Davor', 'John', 'Davorjd02@gmail.com', '013b39b1430bb88657bb8e3fbe40ccab', '2019-11-18', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
