-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 02:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniqa_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$nvuKE/lEupX3W065ewlKhO1g61e0291Xte/NYYnDyXB8k7Zsykibi');

-- --------------------------------------------------------

--
-- Table structure for table `admin_address`
--

CREATE TABLE `admin_address` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line_1` text COLLATE utf8_unicode_ci NOT NULL,
  `line_2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_address`
--

INSERT INTO `admin_address` (`id`, `company_name`, `line_1`, `line_2`, `city`, `zip`, `state`, `country`, `admin_id`) VALUES
(1, 'W3engineers Ltd.', '4th floor, Tayamun Centre, Upper Jessore Rd', 'null', 'Khulna', '9001', 'Khulna', 'Bangladesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admob`
--

CREATE TABLE `admob` (
  `id` int(11) NOT NULL,
  `banner_status` int(11) NOT NULL,
  `banner_id` varchar(100) NOT NULL,
  `banner_unit_id` varchar(100) NOT NULL,
  `interstitial_status` int(11) NOT NULL,
  `interstitial_id` varchar(100) NOT NULL,
  `interstitial_unit_id` varchar(100) NOT NULL,
  `video_status` int(11) NOT NULL,
  `video_id` varchar(100) NOT NULL,
  `video_unit_id` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admob`
--

INSERT INTO `admob` (`id`, `banner_status`, `banner_id`, `banner_unit_id`, `interstitial_status`, `interstitial_id`, `interstitial_unit_id`, `video_status`, `video_id`, `video_unit_id`, `admin_id`) VALUES
(1, 1, 'ca-app-pub-3940256099942544~3347511713', 'ca-app-pub-3940256099942544/6300978111', 1, 'ca-app-pub-3940256099942544~3347511713', 'ca-app-pub-3940256099942544/8691691433', 1, 'ca-app-pub-4761500786576152~8215465788', 'ca-app-pub-3940256099942544/5224354917', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `admin_id`, `title`) VALUES
(1, 1, 'Size'),
(2, 1, 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `attribute` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `admin_id`, `attribute`, `title`) VALUES
(1, 1, 1, 'XS'),
(2, 1, 1, 'S'),
(3, 1, 1, 'M'),
(4, 1, 1, 'L'),
(5, 1, 1, 'XL'),
(6, 1, 1, 'XXL'),
(7, 1, 2, 'Black'),
(8, 1, 2, 'White'),
(9, 1, 2, 'Red'),
(10, 1, 2, 'Green'),
(11, 1, 2, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_resolution` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `admin_id`, `status`, `title`, `image_name`, `image_resolution`) VALUES
(3, 1, 1, 'Women', 'kd615i0jfkg8ko40.jpg', '680:680'),
(4, 1, 1, 'Men', '8e2nsqakljk8408s.jpg', '500:500'),
(5, 1, 1, 'Kids', 'b9eess8k1k0k0ksg.jpg', '1000:1000'),
(6, 1, 1, 'Accesories', '791rj7vf65sswkcc.jpg', '600:600'),
(7, 1, 1, 'Men Shoe', 'baz0e28gts848wcg.jpg', '600:600'),
(8, 1, 1, 'Men Backpack', 'bag-21_ee71ceb7-ea15-4981-8fc7-2f4e9d05d518.progressive.jpg', '500:500'),
(9, 1, 1, 'Men Watches', '2z7pgm538dicc8gw.jpg', '500:500'),
(10, 1, 1, 'Men Shirt', 'popular_11_400x500.jpg', '400:400');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`id`, `item_id`, `user_id`, `admin_id`) VALUES
(1, 9, 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_banner`
--

CREATE TABLE `home_banner` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolution` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_1` int(11) NOT NULL,
  `category_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_banner`
--

INSERT INTO `home_banner` (`id`, `admin_id`, `image_name`, `resolution`, `tag`, `category_1`, `category_2`) VALUES
(4, 1, 'bwtcllqbv9c0808s.png', '540:222', 'banner_1', 3, 4),
(5, 1, 'ojieb6w02lcgk8k0.png', '540:228', 'banner_2', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product`, `quantity`, `attributes`) VALUES
(6, 6, 100, '1-1'),
(7, 6, 100, '1-2'),
(8, 6, 100, '1-3'),
(9, 7, 100, NULL),
(10, 8, 99, NULL),
(11, 9, 99, NULL),
(12, 10, 100, NULL),
(13, 11, 100, NULL),
(14, 12, 100, NULL),
(15, 13, 99, NULL),
(16, 14, 100, NULL),
(17, 15, 100, NULL),
(18, 16, 100, '1-1'),
(19, 16, 100, '1-2'),
(20, 16, 100, '1-3'),
(21, 16, 100, '1-4'),
(22, 16, 100, '1-5'),
(23, 16, 100, '1-6'),
(24, 17, 100, NULL),
(25, 18, 100, NULL),
(26, 19, 100, NULL),
(27, 20, 100, NULL),
(28, 21, 100, '1-1'),
(29, 21, 100, '1-2'),
(30, 21, 100, '1-3'),
(31, 21, 100, '1-4'),
(32, 21, 100, '1-5'),
(33, 21, 100, '1-6');

-- --------------------------------------------------------

--
-- Table structure for table `item_image`
--

CREATE TABLE `item_image` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `resolution` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_image`
--

INSERT INTO `item_image` (`id`, `item_id`, `image_name`, `resolution`, `admin_id`) VALUES
(7, 11, 'watches-13.progressive.jpg', '500:500', 1),
(8, 10, 'shoes12.progressive.jpg', '600:600', 1),
(9, 9, 'fj9xuygi860c4koc.jpg', '500:500', 1),
(10, 8, 'shoe.progressive.jpg', '600:605', 1),
(11, 7, 'o3hi7f2v35co8cw8.jpg', '600:600', 1),
(12, 6, 'tso8nyvlwv4gc0wo.jpg', '1000:1000', 1),
(13, 20, 'HTB17JhKBsyYBuNkSnfoq6AWgVXag.jpg', '800:800', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product`
--

CREATE TABLE `ordered_product` (
  `id` int(11) NOT NULL,
  `product_order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `price` float NOT NULL,
  `revenue` float NOT NULL DEFAULT '0',
  `inventory` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordered_product`
--

INSERT INTO `ordered_product` (`id`, `product_order`, `product`, `price`, `revenue`, `inventory`, `quantity`) VALUES
(1, 1, 8, 200, 100, 10, 1),
(2, 2, 9, 200, 50, 11, 1),
(3, 3, 13, 200, 100, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `user` int(11) NOT NULL,
  `address` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `notification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `admin_id`, `method`, `amount`, `user`, `address`, `time`, `status`, `notification`) VALUES
(1, 1, 'Credit Card', 260, 3, 1, '2019-05-10 12:51:38', 0, 0),
(2, 1, 'Credit Card', 260, 4, 2, '2019-05-10 12:52:09', 0, 0),
(3, 1, 'Paypal Account', 260, 3, 1, '2019-05-10 12:53:55', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `admin_id`, `environment`, `merchant_id`, `public_key`, `private_key`) VALUES
(1, 1, 'sandbox', 'k2dk75vhbmd8wthg', 'ktb9336dmpq6c266', '47affb07fa413ffb9a6d12d8e5ddf209');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_resolution` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL,
  `purchase_price` float NOT NULL,
  `prev_price` float DEFAULT NULL,
  `current_price` float NOT NULL,
  `featured` int(11) NOT NULL,
  `sell` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `status`, `admin_id`, `category`, `title`, `image_name`, `image_resolution`, `description`, `tags`, `purchase_price`, `prev_price`, `current_price`, `featured`, `sell`) VALUES
(6, 1, 1, 3, 'Women Top', 'igru9h9oqpwgsk4k.jpg', '381:381', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, recent, slider_1, banner_1', 300, 400, 350, 2, 0),
(7, 1, 1, 6, 'Sofa Pillow', 'g7he29v9a144k08w.jpg', '700:700', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, banner_2, slider_2, recent', 55, 110, 85, 2, 0),
(8, 1, 1, 4, 'Men Backpack', 'product-info-bag-2.progressive.jpg', '600:600', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, slider_3, banner_1, recent', 100, 230, 200, 1, 0),
(9, 1, 1, 4, 'Men Tshirt', '8iiyjyb4srs48ssc.jpg', '500:500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, recent, slider_2, banner_2', 150, 250, 200, 1, 0),
(10, 1, 1, 4, 'Men Shoe', 'j2l7ytm4hhc0wcgs.jpg', '500:505', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, banner_1, slider_3, recent', 400, 550, 450, 2, 0),
(11, 1, 1, 4, 'Men Stylist Watch', 'qup4ag2vji80o0oc.jpg', '600:605', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, recent, banner_1, slider_3', 300, 500, 450, 2, 0),
(12, 1, 1, 3, 'Stylist Necklace', 'oc9ctukj2sgk0wko.jpg', '800:800', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, banner_1,banner_2', 150, 430, 250, 2, 0),
(13, 1, 1, 6, 'Stylist Umbrella', '2frnqon1gmqs0ws8.jpg', '870:870', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_1, slider_3', 100, 130, 200, 1, 0),
(14, 1, 1, 4, 'Men Stylist hat', 'acessories_570x.jpg', '383:383', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, banner_1, slider_1', 40, 120, 100, 1, 0),
(15, 1, 1, 6, 'Leather Travel Bag', 'cat-bag-5-546x546_570x.jpg', '524:524', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'new, recent, banner_2, slider_2', 300, 550, 450, 2, 0),
(16, 1, 1, 4, 'Men Black Tshirt', 'clothing_570x.jpg', '410:410', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_3, slider_3, new', 50, 130, 100, 1, 0),
(17, 1, 1, 3, 'Women Bag', 'handbag_570x.jpg', '396:396', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_2, slider_2, new, recent, women', 300, 550, 350, 2, 0),
(18, 1, 1, 6, 'Stylist Chair', 'Untitled-2.jpg', '627:627', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_2, slider_3', 100, 300, 250, 2, 0),
(19, 1, 1, 7, 'Men Snicker', 'Untitled-1.jpg', '475:475', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_3, new', 100, 250, 200, 2, 0),
(20, 1, 1, 3, 'Diamond Earring', 'sa3xvuebh8g0g080.jpeg', '225:225', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_3, slider_3', 400, 660, 550, 2, 0),
(21, 1, 1, 7, 'Stylist Leather Shoe', 'shoes-13.progressive.jpg', '600:605', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'banner_3, slider_2', 300, 550, 450, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `push_notification`
--

CREATE TABLE `push_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `message` mediumtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `push_notification`
--

INSERT INTO `push_notification` (`id`, `title`, `message`, `admin_id`) VALUES
(1, 'Videon', 'This is Description', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review_image`
--

CREATE TABLE `review_image` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolution` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `api_token` varchar(100) NOT NULL,
  `currency_name` varchar(100) NOT NULL,
  `currency_font` varchar(10) NOT NULL,
  `tax` float NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `api_token`, `currency_name`, `currency_font`, `tax`, `admin_id`) VALUES
(2, 'www', 'Dollar', '$', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tag_line` varchar(100) NOT NULL,
  `firebase_auth` mediumtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `image_name`, `title`, `tag_line`, `firebase_auth`, `admin_id`) VALUES
(1, 'ic_splash_logo.png', 'Uniqa', 'An android eCommerce app with admin panel', 'AAAA1lHJRqU:APA91bH0n2WlP4M5I1MMYzHQkFJvCQ11fznZEv8fSuNfuHttCQupG-IboR88c_kYbUjmsxURfc2gYtrnWwkfKqAQ8mqFvkvfYB0YqJ8f4RJTAeG-5PkqRQYCmPCsq8T4APqogHS_D1g-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider_image`
--

CREATE TABLE `slider_image` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolution` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider_image`
--

INSERT INTO `slider_image` (`id`, `tag`, `image_name`, `resolution`, `admin_id`) VALUES
(16, 'Slider_1', 'bkxemy7rzp4wks4o.png', '540:222', 1),
(18, 'slider_2', 'r82ib2exo74w4wok.PNG', '540:222', 1),
(19, 'slider_3', '895kcqpt9z0gokc4.jpg', '540:222', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_config`
--

CREATE TABLE `smtp_config` (
  `id` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `encryption` varchar(10) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smtp_config`
--

INSERT INTO `smtp_config` (`id`, `host`, `sender_email`, `username`, `password`, `port`, `encryption`, `admin_id`) VALUES
(1, 'smtp.gmail.com', 'johnruggles63@gmail.com', 'johnruggles63@gmail.com', 'BaPk9YljlX', 587, 'tls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` mediumtext NOT NULL,
  `type` int(11) NOT NULL,
  `social_id` varchar(50) DEFAULT NULL,
  `verification_token` varchar(10) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_resolution` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `type`, `social_id`, `verification_token`, `status`, `image_name`, `image_resolution`, `admin_id`) VALUES
(1, 'Jordan Elmore', 'jordan.elmore23@gmail.com', '$2y$10$rZvZw53Ly5FKjX5ECzgBdOweLl3pDnxHDGqCVSx30XNbcr0gxhZO.', 3, '1.1419876941415e20', '2058', NULL, 'profile_default.jpg', '500:500', 1),
(2, 'JackÃ±', 'a', '$2y$10$t4NXmahHkURoIe5II6GWMukdk4pw9qvsxi2.PyfbSPGcObCgEUoL2', 2, '827642734259720', '1583', NULL, 'profile_default.jpg', '500:500', 1),
(3, 'Jibon', 'a', '$2y$10$dWZr1J1ON.jVmoZRFzZw7OOv.6.In8SpxYuWZHUFi1t9cSElE8EJi', 2, '814607685563320', '1020', NULL, 'profile_default.jpg', '500:500', 1),
(4, 'Sandy Polianna', 'sandy.polianna@gmail.com', '$2y$10$Zd7a87zxwvasfCk.9Vgc9OaftQF72iH0FN5rCRwX/nVUZMr4VUv5i', 3, '1.0720807845148e20', '7575', NULL, '1554807621705.jpg', '195:260', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `line_1` text NOT NULL,
  `line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user`, `line_1`, `line_2`, `city`, `zip`, `state`, `country`) VALUES
(1, 3, 'xyyd', 'dye', 'gzdh', '8368', 'xhxh', 'dgdy'),
(2, 4, 'cjcjfi', 'dhduf', 'dhfu', '6565', 'hfuf', 'gkg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_address`
--
ALTER TABLE `admin_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admob`
--
ALTER TABLE `admob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banner`
--
ALTER TABLE `home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_image`
--
ALTER TABLE `item_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification`
--
ALTER TABLE `push_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_image`
--
ALTER TABLE `review_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_image`
--
ALTER TABLE `slider_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_config`
--
ALTER TABLE `smtp_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_address`
--
ALTER TABLE `admin_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admob`
--
ALTER TABLE `admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_banner`
--
ALTER TABLE `home_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `item_image`
--
ALTER TABLE `item_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordered_product`
--
ALTER TABLE `ordered_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `push_notification`
--
ALTER TABLE `push_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_image`
--
ALTER TABLE `review_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_image`
--
ALTER TABLE `slider_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `smtp_config`
--
ALTER TABLE `smtp_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
