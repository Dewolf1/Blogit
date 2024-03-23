-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 01:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogit`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(27, 'sumit', 'sumiy@gmail.com', '999966666', 'vcxvx', '2024-03-02 23:25:44'),
(28, 'jkjlkj', 'jiklhkoijh@gm.com', 'nkjhijko', 'jhuihgiuhgui', '2024-03-04 15:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `tagline` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `img_file` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `slug`, `date`, `img_file`) VALUES
(1, 'Learn about Stocks', 'it\'s incredible', '\'February is officially in the books, and it was a very strong month. The S&P 500 hit new all-time highs ending up over 5% bringing YTD gains to 6.8%. Tech continued to outperform with both the NYSE FANG+ and ICE Semiconductor indices up around 10% for the month. However, there was broad participation with the Russell 2k and S&P 400 Mid cap indices also ending higher by >5% (see performance tables below). Overnight China PMIs were probably a little better than feared with improvement in services. The final PMIs in the rest of Asia were mixed while there were upward revisions in Europe. Like yesterday’s country level CPI data in Europe, the Eurozone CPI report continued to point to disinflation but came in a touch ahead of market expectations\'\'\'\'\'\'\'', 'first-post', '2024-03-23 00:28:46', 'post-bg.jpg'),
(2, 'GDP', 'it\'s amazing', ' \' \'As of 04 Mar 2024, the Gross Domestic Product (GDP) is a monetary measure of the market value of all the final goods and services produced in a specific time period by a country or countries. It is often used by the government of a single country to measure its economic health. However, due to its complex and subjective nature, GDP is often revised before being considered a reliable indicator.1 In the United States, GDP is a comprehensive measure of economic activity and measures the value of the final goods and services produced in the country without double counting the intermediate goods and services used up to produce them. Changes in GDP are the most popular indicator of the nation\'s overall economic health.\'\'', 'second-post', '2024-03-23 00:25:49', 'gdp-bg.jpg'),
(3, 'Stars', 'Stars are amaszing', ' \' \'A star is a luminous spheroid of plasma held together by self-gravity. The nearest star to Earth is the Sun. Many other stars are visible to the naked eye at night; their immense distances from Earth make them appear as fixed points of light. The most prominent stars have been categorised into constellations and asterisms, and many of the brightest stars have proper names. Astronomers have assembled star catalogues that identify the known stars and provide standardized stellar designations. The observable universe contains an estimated 1022 to 1024 stars. Only about 4,000 of these stars are visible to the naked eye—all within the Milky Way galaxy.[1]\r\n\r\nA star\'s life begins with the gravitational collapse of a gaseous nebula of material largely comprising hydrogen, helium, and trace heavier elements. Its total mass mainly determines its evolution and eventual fate. A star shines for most of its active life due to the thermonuclear fusion of hydrogen into helium in its core. This process releases energy that traverses the star\'s interior and radiates into outer space. At the end of a star\'s lifetime as a fusor, its core becomes a stellar remnant: a white dwarf, a neutron star, or—if it is sufficiently massive—a black hole.\'\'', 'third-post', '2024-03-23 00:25:54', 'stars-bg.jpg'),
(4, 'Moon', 'Moon is amazing', 'The Moon is Earth\'s only natural satellite. It orbits at an average distance of 384,400 km (238,900 mi), about 30 times Earth\'s diameter. The Moon always presents the same side to Earth, because gravitational pull has locked its rotation to the planet. This results in the lunar day of 29.5 Earth days matching the lunar month. The Moon\'s gravitational pull – and to a lesser extent the Sun\'s – are the main drivers of the tides.\r\n\r\nThe Moon is in geophysical terms a planetary-mass object or satellite planet. It has a mass that amounts to 1.2% of Earth\'s, and a diameter that is roughly one-quarter of Earth\'s or with 3,474 km (2,159 mi) about as wide as Australia.[17] Within the Solar System it is the most massive and largest satellite in relation to its parent planet, the fifth most massive and largest moon overall, and more massive and larger than all known dwarf planets.[18] Its surface gravity is about one sixth of Earth\'s, about half of that of Mars, and after Jupiter\'s moon Io the second highest among all Solar System moons. The body of the Moon is differentiated and terrestrial, with no significant hydrosphere, atmosphere, or magnetic field. It formed 4.51 billion years ago, not long after Earth\'s formation, out of the debris from a giant impact between Earth and a hypothesized Mars-sized body called Theia.', 'fourth-post', '2024-03-04 16:51:39', 'moon-bg.jpg'),
(5, 'Milky Way', 'Milky way is Vast', 'The Milky Way[c] is the galaxy that includes the Solar System, with the name describing the galaxy\'s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye. The term Milky Way is a translation of the Latin via lactea, from the Greek γαλαξίας κύκλος (galaxías kýklos), meaning \"milky circle\".[26][27] From Earth, the Milky Way appears as a band because its disk-shaped structure is viewed from within. Galileo Galilei first resolved the band of light into individual stars with his telescope in 1610. Until the early 1920s, most astronomers thought that the Milky Way contained all the stars in the Universe.[28] Following the 1920 Great Debate between the astronomers Harlow Shapley and Heber Doust Curtis,[29] observations by Edwin Hubble showed that the Milky Way is just one of many galaxies.', 'fifth-post', '2024-03-04 16:53:49', 'milkyway-bg.'),
(6, 'galaxies', 'galaxies', 'A galaxy is a system of stars, stellar remnants, interstellar gas, dust, and dark matter bound together by gravity.[1][2] The word is derived from the Greek galaxias (γαλαξίας), literally \'milky\', a reference to the Milky Way galaxy that contains the Solar System. Galaxies, averaging an estimated 100 billion stars,[3] range in size from dwarfs with less than a hundred million stars, to the largest galaxies known – supergiants with one hundred trillion stars, each orbiting its galaxy\'s center of mass. Most of the mass in a typical galaxy is in the form of dark matter, with only a few percent of that mass visible in the form of stars and nebulae. Supermassive black holes are a common feature at the centres of galaxies.', 'sixth-post', '2024-03-04 16:55:08', 'galaxy-bg.jp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
