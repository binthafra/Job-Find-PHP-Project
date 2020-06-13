-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 11:32 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobfinds`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Accounting & Banking'),
(2, 'Construction'),
(3, 'Fashion & Style'),
(4, 'Food & Restaurant'),
(5, 'Healthcare'),
(6, 'Retail & Sales'),
(7, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category_id`, `user_id`, `type_id`, `company_name`, `title`, `description`, `city`, `state`, `contact_email`, `created`) VALUES
(1, 7, 1, 1, 'Tech Guy Computer Services', 'Senior Graphic Designer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dapibus risus at dapibus malesuada. Vestibulum euismod, velit sit amet tempor ornare, nulla augue mattis mi, nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Burlington', '/svw', 'contact@employer.com', '2014-07-14 00:00:00'),
(2, 7, 1, 1, 'Tech Guy Computer Services', 'UX Designer W', '<p>Velit sit amet tempor ornare, nulla augue mattis mi, nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Newburyport', 'MA', 'contact@employer.om', '2014-07-14 00:00:00'),
(3, 5, 2, 2, 'Harborside Healthcare', 'Registered Nurse', '<p>Nec ultricies dolor augue nec lectus. Integer bibendum enim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Brooklyn', 'NY', 'contact@employer.com', '2014-07-14 00:00:00'),
(4, 2, 3, 1, 'Smith Painting', 'House Painter', '<p>Eenim ipsum, at eleifend nisl elementum sit amet. Etiam eget magna et nunc ultrices suscipit. Duis a ligula vel nisi auctor laoreet. Morbi varius suscipit purus, sed pretium nisl sagittis id. Aliquam vel nulla tempor, luctus quam nec, egestas sem. Nulla nulla ante, faucibus fringilla blandit non, porttitor at eros.\r\n</p>\r\n<p>\r\nCras luctus cursus pretium. Fusce rhoncus tortor at lectus dignissim, sed dignissim enim euismod. Pellentesque venenatis lacus diam. Nulla aliquam turpis vel lorem viverra consequat. Curabitur vitae vehicula lacus. Fusce quis imperdiet tortor. Fusce enim massa, tincidunt vel lobortis non, mattis quis turpis. Nam lobortis, lectus vitae iaculis bibendum, felis nulla consectetur leo, nec volutpat orci elit ut lorem. Nunc sagittis mauris quis tellus ullamcorper facilisis. Sed volutpat lacus in gravida condimentum. Maecenas sit amet massa vel neque suscipit porta. In luctus odio ante, a scelerisque tellus imperdiet id. Nunc in mollis lectus. Nam lobortis dui lorem, nec lacinia erat pellentesque non. In mattis eget massa sit amet elementum.</p>', 'Boston', 'MA', 'contact@employer.com', '2014-07-14 00:00:00'),
(17, 7, 1, 2, 'Tech Guy Computer Services', 'Wordpress Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum, massa in placerat porta, dui purus placerat turpis, interdum facilisis metus velit id tellus. Nulla mattis dui id leo hendrerit eleifend in quis ligula. Curabitur eget ante massa. Cras at libero porta, rhoncus nunc a, pretium ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse facilisis massa sit amet tellus consequat, eu mattis arcu tempor. Aenean venenatis mollis enim sed vehicula. Morbi non diam enim. Fusce at luctus nisl, non pulvinar nisl. Aliquam cursus interdum erat, vitae pharetra purus egestas nec. Vivamus rhoncus rhoncus nisi, rhoncus rhoncus neque bibendum et. Aliquam nec volutpat nibh, nec volutpat risus. In mi nulla, congue quis blandit vitae, ullamcorper et dolor. Etiam vel fringilla elit. Pellentesque imperdiet eleifend blandit.', 'Merrimac', 'Massachusetts', 'brad@techguywebsolutions.com', '2014-07-15 16:18:30'),
(19, 1, 17, 1, 'Test Company', 'Test Job', '', 'Boston', 'MA', 'test@test.com', '2014-07-21 23:16:46'),
(20, 1, 21, 1, 'Test company', 'Test jon', 'Test', 'Boston', 'MA', 'e@gmail.com', '2020-05-03 16:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `color`) VALUES
(1, 'Full Time', '#81b800'),
(2, 'Part Time', '#4c9ef1'),
(3, 'Freelance', '#f4f4f4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`, `created`) VALUES
(1, 'Brad', 'Traversy', 'techguyinfo@gmail.com', 'techguy1', 'b11e69e8f791ce2ca31c906df27b95285156f9b4', 'Employer', '2014-07-14 07:46:01'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', 'janed', '2b84997dcd67aba6feacc42c86458c05d3e98b1fa573389a63', 'Employer', '2014-07-14 07:50:39'),
(3, 'John', 'Doe', 'johndoe@gmail.com', 'johnd', '2b84997dcd67aba6feacc42c86458c05d3e98b1fa573389a63', 'Job Seeker', '2014-07-14 07:51:10'),
(16, 'Jennifer', 'Sheehan', 'jen.irish@hotmail.com', 'jensheehan', 'b11e69e8f791ce2ca31c906df27b95285156f9b4', 'Job Seeker', '2014-07-15 16:04:23'),
(17, 'Brad', 'Traversy', 'techguyinfo@gmail.com', 'brad', 'b4f5a3fa0ff0e8081bc1720aebe89811dc7720ff', 'Job Seeker', '2014-07-21 22:54:02'),
(18, 'afra', 'binth', 'afra@gmail.com', 'afra1234', '12345678', 'Job Seeker', '2020-05-03 13:53:42'),
(19, 'da', 'aaaadd', 'effgweherheh@gmail.com', 'adad', 'f3cb4efdc19dbe67baa4d1f4ed7ab3580bbaf033', '', '2020-05-03 16:07:11'),
(20, 'afra', 'binth', 'afra@gmail.com', 'afra1234', '579bb8b852bd8648c337fd9ae89af33d8889d0da', 'Employer', '2020-05-03 16:12:34'),
(21, 'Karushika', 'rwr', 'karu@gmail.com', 'karu1234', 'e8263c2e50f3fe70fb700878bca765e7f3c7aa56', 'Job Seeker', '2020-05-03 16:26:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
