-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.kimulrick.com
-- Generation Time: Oct 10, 2015 at 08:47 PM
-- Server version: 5.6.25
-- PHP Version: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spotsfordogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE IF NOT EXISTS `Categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `Dogs`
--

CREATE TABLE IF NOT EXISTS `Dogs` (
  `dog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`dog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Dogs`
--


-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE IF NOT EXISTS `Images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Images`
--


-- --------------------------------------------------------

--
-- Table structure for table `Maps`
--

CREATE TABLE IF NOT EXISTS `Maps` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `spot_id` int(11) NOT NULL,
  `primary` int(11) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `Maps`
--

INSERT INTO `Maps` (`map_id`, `spot_id`, `primary`, `latitude`, `longitude`) VALUES
(1, 1, 1, -27.880131, 153.309418),
(2, 13, 1, -27.694363, 153.259750),
(3, 14, 1, -27.948351, 153.380569),
(4, 15, 1, -27.929005, 153.406219),
(5, 16, 1, -27.893404, 153.384857),
(6, 17, 1, -27.942747, 153.334488),
(7, 18, 1, -27.903778, 153.338577),
(8, 19, 1, -27.917965, 153.330948),
(9, 20, 1, -27.918461, 153.338425),
(10, 5, 1, -27.929983, 153.187073),
(11, 11, 1, -27.921925, 153.208969),
(12, 21, 1, -27.879362, 153.330307),
(13, 22, 1, -27.911825, 153.339859),
(14, 23, 1, -27.901800, 153.328705),
(15, 24, 1, -27.899191, 153.399750),
(16, 25, 1, -27.882483, 153.361557),
(17, 26, 1, -27.777033, 153.358948),
(18, 27, 1, -27.785656, 153.361435),
(19, 28, 1, -27.779408, 153.365128),
(20, 29, 1, -27.942215, 153.394592),
(21, 30, 1, -27.780373, 153.272919),
(22, 37, 1, -27.782167, 153.231659),
(23, 38, 1, -27.896008, 153.309158),
(24, 2, 1, -27.919357, 153.320831),
(25, 39, 1, -27.924580, 153.302444),
(26, 40, 1, -27.949469, 153.366440),
(27, 41, 1, -27.932940, 153.306992),
(28, 42, 1, -27.932331, 153.302124),
(29, 43, 1, -27.882326, 153.391891),
(30, 44, 1, -27.876457, 153.399719),
(31, 48, 1, -27.818914, 153.282272),
(32, 49, 1, -27.911301, 153.391449),
(33, 50, 1, -27.925480, 153.399704),
(34, 51, 1, -27.923861, 153.393661),
(35, 52, 1, -27.897766, 153.272079),
(36, 35, 1, -27.864372, 153.294556),
(37, 4, 1, -27.897842, 153.285065),
(38, 3, 1, -27.887463, 153.282990),
(39, 53, 1, -27.915251, 153.276627),
(42, 54, 1, -27.716623, 153.353683);

-- --------------------------------------------------------

--
-- Table structure for table `Owners`
--

CREATE TABLE IF NOT EXISTS `Owners` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `url` text NOT NULL,
  `url_dog_page` text NOT NULL,
  `email` text NOT NULL,
  `content` text NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Owners`
--

INSERT INTO `Owners` (`owner_id`, `name`, `slug`, `url`, `url_dog_page`, `email`, `content`, `location_id`) VALUES
(1, 'City of Brisbane', 'city-of-brisbane', 'http://www.brisbane.qld.gov.au/', 'http://www.brisbane.qld.gov.au/facilities-recreation/parks-venues/parks/park-facilities/dog-leash-areas-dog-parks', '', '', 7),
(2, 'Gold Coast City', 'gold-coast-city', 'http://www.goldcoast.qld.gov.au/', 'http://www.goldcoast.qld.gov.au/thegoldcoast/dog-exercise-areas-972.html', '', '', 7),
(3, 'City of Ipswich', 'city-of-ipswich', 'http://www.ipswich.qld.gov.au/', 'http://www.ipswich.qld.gov.au/about_council/mayor_and_councillors/division_1/dog_parks/index.php', '', '', 7),
(4, 'Scenic Rim Region', 'scenic-rim-region', 'http://www.scenicrim.qld.gov.au/', 'http://www.scenicrim.qld.gov.au/dog-off-leash-areas', '', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Spots`
--

CREATE TABLE IF NOT EXISTS `Spots` (
  `spot_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`spot_id`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `Spots`
--

INSERT INTO `Spots` (`spot_id`, `user_id`, `owner_id`, `name`, `slug`, `content`, `address`) VALUES
(1, 1, 2, 'Damien Leeding Parkland', 'damien-leeding-parkland', '<p>This off-leash area is fairly new. If you look at it on google maps	 you''ll see that it used to be water. As a result	 it is quite barren and unpleasant to hang about in	 especially on a sunny day as there is no shade at all.</p>\n			\n<p>Some trees have been planted	 so it should improve as they grow.</p>		\n			\n<p>There is a carpark off Watersport Ln	 but it is a decent walk to where the enclosure is. If you''re up for an on-leash walk though	 the walking track around the lake is quite pleasant. The lake is used for watersports though	 so can be quite noisy at times.</p>\n', 'Water Sport Lane, Oxenford'),
(2, 1, 2, 'The Village Park', 'the-village-park', 'The village park is very large with lots of trees. Very pleasant to walk in as well as being big enough for a game of fetch.			\r\n			\r\nIt isn''t fenced	 and there is a road running along next to it. However the road isn''t very busy and there is an embankment going up to the road that acts as a barrier.		\r\n			\r\nThere are many entrances to the park from the Studio Drive side	 however the entrance at the north end of the park	 off Entertainment Drive has a carpark.', 'East of Studio Drive off Hepburn Court, Oxenford'),
(5, 1, 4, 'Youngman Family Park', 'youngman-family-park', '<p>This park is fenced but it is still very large. There are some seats shaded by trees	 but most of the park is exposed to the sun.</p>\n			\n<p>There is no car parking at the park but there is space for a few cars a short distance away on Geissmann Drive.</p>\n\n<p>The main gate has a stairway and a steep gravel slope leading to it, so may not be suitable for anyone with mobility impairment.</p>\n\n<p>There is a second gate on the western end of the park, and that entrance is a short walk from the IGA carpark.</p>', 'Geissmann Drive, North Tamborine'),
(3, 1, 2, 'Highland Reserve Park', 'highland-reserve-park', 'A fairly small fenced area. There are large trees	 but they are all on one side and outside the fence	 so there would only be shade in the afternoons.	\n			\nThe fenced area is surrounded by a larger park which has picnic tables. There is also a lake with walking paths around it for on-leash exercise.			\n			\nThere is on-street parking in Rose Valley Drive.			\n', 'Reserve Road, Upper Coomera'),
(4, 1, 2, 'John Siganto Reserve', 'john-siganto-reserve', 'This park is a good size	 but on a bit of a hill. It has lots of trees and a bbq area with picnic tables. There is a fenced children''s playground and a basketball half-court within the park.		\n			\nIt is unfenced and next to a reasonably busy road. There is parking available at the bottom of the park	 accessible via Gawler Pl.		\n			\nThere is another strip of park on the other side of Gawler Pl	 with lake access	 but strangely	 this isn''t part of the off-leash area.', 'Reserve Road, Upper Coomera'),
(11, 1, 4, 'Staffsmith Park', 'staffsmith-park', 'Fenced park for small dogs.', 'Central Avenue, Eagle Heights, Queensland'),
(12, 1, 4, 'Moriarty Park', 'moriarty-park', '', 'Coburg Road, Canungra'),
(13, 1, 2, 'August Burrow Park', 'august-burrow-park', '', 'Alberton Road, Alberton'),
(14, 1, 2, 'Collingwood Court Parklands', 'collingwood-court-parklands', '', 'Napper Road, Arundel'),
(15, 1, 2, 'Biggera Waters Beach', 'biggera-waters-beach', 'Time restrictions apply', 'Marine Parade, Biggera Waters'),
(16, 1, 2, 'Chiba Street Park', 'chiba-street-park', '', 'Chiba Street, Coombabah'),
(17, 1, 2, 'Galapagos Park', 'galapagos-park', '', 'Galapagos Way, Gaven'),
(18, 1, 2, 'Samford Court Reserve', 'samford-court-reserve', '', 'Samford Court, Helensvale'),
(19, 1, 2, 'Discovery Park', 'discovery-park', '', 'Discovery Drive, Helensvale'),
(20, 1, 2, 'Careel Reserve', 'careel-reserve', '', 'Careel Close (from Careel Close to the sewerage pump station), Helensvale'),
(21, 1, 2, 'Mangrove Jack Park', 'mangrove-jack-park', '', 'Oxenford Southport Road, Helensvale'),
(22, 1, 2, 'Salix Reserve East', 'salix-reserve-east', '', 'between Mildura Drive and the railway line, Helensvale'),
(23, 1, 2, 'Rugby Park', 'rugby-park', 'Behind kindergarten at Ashford Road to the swimming pool as signed', 'Ashford Road, Helensvale'),
(24, 1, 2, 'Bayview Park', 'bayview-park', '', 'Hyacinth Avenue and Bayview Street, Hollywell'),
(25, 1, 2, 'Saltwater Park', 'saltwater-park', '', 'Helensvale Road, Hope Island'),
(26, 1, 2, 'Dungara Park', 'dungara-park', '', 'Stapylton Jacobs Well Road and Cormorant Crescent, Jacobs Well'),
(27, 1, 2, 'Helmore Park', 'helmore-park', '', 'Helmore Road, Jacobs Well'),
(28, 1, 2, 'Reisenwebber Park', 'reisenwebber-park', '', 'Bay Drive, Jacobs Well'),
(29, 1, 1, 'Nick Pavlis Park', 'nick-pavlis-park', '', 'Brown Street, Labrador'),
(30, 1, 2, 'Maidenwell Park', 'maidenwell-park', '', 'Maidenwell Road, Ormeau'),
(35, 1, 2, 'Jacob Court Reserve', 'jacob-court-reserve', '', 'Gannon Way, Upper Coomera'),
(37, 1, 2, 'Vennor Reserve', 'vennor-reserve', '', 'Vennor Drive, Ormeau'),
(38, 1, 2, 'Gambamora Park', 'gambamora-park', '<p>A very large, unfenced park. More than big enough to go for a decent walk, and includes a picnic area and a BBQ.</p>\n\n<p>There are small waterways cutting through the park where a dog could have fun/ get very muddy if it''s been raining. Some houses that back onto the park have horses in their yards.</p>\n\n<p>There is a basketball half-court, tennis court, baseball field and children''s playground within the park but they are not part of the off-leash area.</p>', 'Riversdale Rd, Oxenford'),
(39, 1, 2, 'Weka Park', 'weka-park', '', 'Binstead Way, Oxenford'),
(40, 1, 2, 'Abbott Park', 'abbott-park', '', 'East of Parkwood Boulevard to the golf course, west of drain to Woodland Way, Parkwood'),
(41, 1, 2, 'Aquaphier Park', 'aquaphier-park', '', 'Pitcairn Way, Pacific Pines'),
(42, 1, 2, 'Flooded Gum Park', 'flooded-gum-park', '', 'McAuley Parade, Pacific Pines'),
(43, 1, 2, 'Boat Harbour Park', 'boat-harbour-park', '', 'Abalone Avenue, Paradise Point'),
(44, 1, 2, 'Paradise Point Parklands', 'paradise-point-parklands', '', 'Paradise Point'),
(45, 1, 2, 'Sun Valley Park', 'sun-valley-park', '', 'Sun Valley Drive, Ashmore'),
(46, 1, 2, 'Robina Parkway/ Boowaggan Road', 'robina-parkway-boowaggan-road', '', 'Robina Parkway and Markeri Street, Clear Island Waters'),
(48, 1, 2, 'Rufous Whistler Park', 'rufous-whistler-park', '', 'Rifle Range Road, Pimpama'),
(49, 1, 2, 'Runaway Bay Sports Complex', 'runaway-bay-sports-complex', '', 'Lae Drive (behind the basketball stadium), Runaway Bay'),
(50, 1, 2, 'O''Connell Park', 'oconnell-park', '', 'corner Morala Ave and Ocean St, Runaway Bay'),
(51, 1, 2, 'Runaway Bay Lions Club Park', 'runaway-bay-lions-club-park', '', 'Medika Street, Runaway Bay'),
(52, 1, 2, 'Baker Creek Parklands', 'baker-creek-parklands', 'A small fenced park. There is one bench inside the fence but that''s it. All the trees are outside, and it''s not big enough to do much walking around.', 'Tamborine Oxenford Rd, Upper Coomera'),
(53, 1, 2, 'Riverstone Crossing Reserve', 'riverstone-crossing-reserve', '', 'Riverstone Crossing, Upper Coomera'),
(54, 1, 2, 'Cecil Zipf Park', 'cecil-zipf-park', '', 'Rocky Point Road, Woongoolba');

-- --------------------------------------------------------

--
-- Table structure for table `spot_tag`
--

CREATE TABLE IF NOT EXISTS `spot_tag` (
  `spot_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `spot_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`spot_tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `spot_tag`
--

INSERT INTO `spot_tag` (`spot_tag_id`, `spot_id`, `tag_id`) VALUES
(77, 5, 9),
(76, 5, 5),
(75, 5, 4),
(74, 5, 3),
(6, 35, 1),
(8, 28, 1),
(9, 24, 1),
(10, 25, 1),
(11, 36, 1),
(12, 30, 1),
(16, 29, 7),
(15, 29, 1),
(17, 37, 1),
(18, 37, 7),
(19, 39, 1),
(20, 40, 1),
(21, 40, 7),
(22, 45, 7),
(23, 46, 1),
(24, 46, 7),
(58, 52, 9),
(57, 52, 5),
(56, 52, 3),
(55, 52, 2),
(54, 52, 1),
(65, 38, 11),
(64, 38, 10),
(63, 38, 8),
(62, 38, 5),
(61, 38, 4),
(60, 38, 3),
(59, 38, 2),
(73, 5, 2),
(72, 5, 1),
(91, 1, 9),
(90, 1, 7),
(89, 1, 6),
(88, 1, 5),
(87, 1, 4),
(86, 1, 3),
(85, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Tags`
--

CREATE TABLE IF NOT EXISTS `Tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Tags`
--

INSERT INTO `Tags` (`tag_id`, `name`, `slug`, `content`) VALUES
(1, 'fenced', 'fenced', ''),
(2, 'shade trees', 'shade-trees', ''),
(3, 'rubbish bins', 'rubbish-bins', ''),
(4, 'bag dispenser', 'bag-dispenser', ''),
(5, 'seating', 'seating', ''),
(6, 'drinking water', 'drinking-water', ''),
(7, 'agility equipment', 'agility-equipment', ''),
(8, 'parking', 'parking', ''),
(9, 'air-lock', 'air-lock', ''),
(10, 'toilets', 'toilets', ''),
(11, 'picnic area', 'picnic-area', '');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `username`, `first_name`, `last_name`, `location`, `email`, `password`, `content`) VALUES
(1, 'kim', 'Kim', 'Ulrick', 'Queensland', 'kimwashere@gmail.com', '', '');
