-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2015 at 12:18 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




--
-- Database: `547`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(16, 'Slideshow2', 1),
(15, 'Slideshow1', 1),
(14, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(169, 14, 'index.php?route=product/product&amp;product_id=48', 'catalog/banner-2.jpg', 2),
(168, 14, 'index.php?route=product/product&amp;product_id=49', 'catalog/banner-1.jpg', 1),
(182, 15, '', 'catalog/slide-3.jpg', 3),
(181, 15, '', 'catalog/slide-2.jpg', 2),
(180, 15, '', 'catalog/slide-1.jpg', 1),
(179, 16, '', 'catalog/slide2-3.jpg', 3),
(178, 16, '', 'catalog/slide2-2.jpg', 2),
(177, 16, '', 'catalog/slide2-1.jpg', 1),
(170, 14, 'index.php?route=product/product&amp;product_id=47', 'catalog/banner-3.jpg', 3),
(171, 14, 'index.php?route=product/product&amp;product_id=46', 'catalog/banner-4.jpg', 4),
(172, 14, 'index.php?route=product/product&amp;product_id=45', 'catalog/banner-5.jpg', 5),
(173, 14, 'index.php?route=product/product&amp;product_id=44', 'catalog/banner-6.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(171, 2, 14, 'banner-4', '&lt;span class=&quot;name-banner&quot;&gt;Building Sets&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(171, 3, 14, 'banner-4', '&lt;span class=&quot;name-banner&quot;&gt;Building Sets&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(172, 1, 14, 'banner-5', '&lt;span class=&quot;name-banner&quot;&gt;Baby Shop&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(170, 2, 14, 'banner-3', '&lt;span class=&quot;name-banner&quot;&gt;Games &amp; Puzzles&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(170, 3, 14, 'banner-3', '&lt;span class=&quot;name-banner&quot;&gt;Games &amp; Puzzles&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(171, 1, 14, 'banner-4', '&lt;span class=&quot;name-banner&quot;&gt;Building Sets&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(170, 1, 14, 'banner-3', '&lt;span class=&quot;name-banner&quot;&gt;Games &amp; Puzzles&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(169, 3, 14, 'banner-2', '&lt;span class=&quot;name-banner&quot;&gt;Arts Supplies&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(169, 1, 14, 'banner-2', '&lt;span class=&quot;name-banner&quot;&gt;Arts Supplies&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(169, 2, 14, 'banner-2', '&lt;span class=&quot;name-banner&quot;&gt;Arts Supplies&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(177, 1, 16, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cillum dolore eu fugiat &lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(182, 3, 15, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cupidatat non proident&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=47&quot;&gt;Shop now!&lt;/a&gt;'),
(182, 2, 15, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cupidatat non proident&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=47&quot;&gt;Shop now!&lt;/a&gt;'),
(182, 1, 15, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cupidatat non proident&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=47&quot;&gt;Shop now!&lt;/a&gt;'),
(168, 3, 14, 'banner-1', '&lt;span class=&quot;name-banner&quot;&gt;Riding Toys&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(168, 2, 14, 'banner-1', '&lt;span class=&quot;name-banner&quot;&gt;Riding Toys&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(168, 1, 14, 'banner-1', '&lt;span class=&quot;name-banner&quot;&gt;Riding Toys&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(172, 2, 14, 'banner-5', '&lt;span class=&quot;name-banner&quot;&gt;Baby Shop&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(172, 3, 14, 'banner-5', '&lt;span class=&quot;name-banner&quot;&gt;Baby Shop&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(173, 1, 14, 'banner-6', '&lt;span class=&quot;name-banner&quot;&gt;Dolls &amp; Figures&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(173, 2, 14, 'banner-6', '&lt;span class=&quot;name-banner&quot;&gt;Dolls &amp; Figures&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(173, 3, 14, 'banner-6', '&lt;span class=&quot;name-banner&quot;&gt;Dolls &amp; Figures&lt;/span&gt;\r\n&lt;span class=&quot;button&quot;&gt;Shop now!&lt;/span&gt;'),
(181, 3, 15, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Excepteur sint occae&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=46&quot;&gt;Shop now!&lt;/a&gt;'),
(181, 2, 15, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Excepteur sint occae&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=46&quot;&gt;Shop now!&lt;/a&gt;'),
(181, 1, 15, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Excepteur sint occae&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=46&quot;&gt;Shop now!&lt;/a&gt;'),
(180, 3, 15, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;'),
(180, 2, 15, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;'),
(180, 1, 15, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=33&quot;&gt;Shop now!&lt;/a&gt;'),
(177, 2, 16, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cillum dolore eu fugiat &lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(177, 3, 16, 'slide-1', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Cillum dolore eu fugiat &lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$258.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=43&quot;&gt;Shop now!&lt;/a&gt;'),
(178, 1, 16, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=48&quot;&gt;Shop now!&lt;/a&gt;'),
(178, 2, 16, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=48&quot;&gt;Shop now!&lt;/a&gt;'),
(178, 3, 16, 'slide-2', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$58.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=48&quot;&gt;Shop now!&lt;/a&gt;'),
(179, 1, 16, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$45.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;'),
(179, 2, 16, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$45.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;'),
(179, 3, 16, 'slide-3', '&lt;h1&gt;Fisher price&lt;/h1&gt;\r\n&lt;h2&gt;Ipsum dolor sit amet&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n&lt;span class=&quot;price&quot;&gt;$45.96&lt;/span&gt;\r\n&lt;a href=&quot;index.php?route=product/product&amp;product_id=30&quot;&gt;Shop now!&lt;/a&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(432, 'module', 'tm_fbbox'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(428, 'module', 'parallax'),
(430, 'module', 'tm_category'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(442, 'module', 'tm_google_map'),
(440, 'module', 'olark'),
(444, 'module', 'tm_module_tab'),
(445, 'module', 'html'),
(446, 'module', 'tm_cookie_policy');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=551 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(413, 4, 'account', 'column_left', 1),
(410, 8, 'account', 'column_left', 1),
(549, 1, 'olark.50', 'footer_top', 1),
(407, 12, 'olark.50', 'footer_top', 1),
(405, 7, 'account', 'column_left', 1),
(404, 7, 'olark.50', 'footer_top', 1),
(402, 3, 'account', 'column_left', 1),
(401, 3, 'bestseller.43', 'column_left', 2),
(397, 10, 'olark.50', 'footer_top', 1),
(396, 10, 'account', 'column_left', 2),
(393, 6, 'olark.50', 'footer_top', 1),
(395, 10, 'affiliate', 'column_left', 1),
(426, 9, 'olark.50', 'footer_top', 1),
(423, 13, 'olark.50', 'footer_top', 1),
(418, 5, 'olark.50', 'footer_top', 1),
(412, 4, 'olark.50', 'footer_top', 1),
(409, 8, 'olark.50', 'column_left', 1),
(392, 6, 'account', 'column_left', 1),
(547, 1, 'banner.33', 'content_top', 2),
(400, 3, 'featured.28', 'column_left', 1),
(399, 3, 'olark.50', 'footer_top', 1),
(548, 1, 'html.56', 'content_top', 6),
(415, 11, 'olark.50', 'footer_top', 1),
(417, 5, 'account', 'column_left', 2),
(420, 2, 'olark.50', 'footer_top', 1),
(546, 1, 'tm_google_map', 'content_top', 7),
(422, 13, 'bestseller.43', 'column_left', 1),
(425, 9, 'account', 'column_left', 1),
(545, 1, 'tm_slideshow.46', 'content_top', 1),
(544, 1, 'latest.55', 'content_top', 3),
(543, 1, 'tm_slideshow.54', 'content_top', 5),
(542, 1, 'special.48', 'content_top', 4),
(550, 1, 'tm_cookie_policy', 'footer_top', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(139, 6, 0, 'account/%'),
(140, 10, 0, 'affiliate/%'),
(141, 3, 0, 'product/category'),
(164, 1, 0, 'common/home'),
(148, 2, 0, 'product/product'),
(146, 11, 0, 'information/information'),
(142, 7, 0, 'checkout/%'),
(144, 8, 0, 'information/contact'),
(150, 9, 0, 'information/sitemap'),
(145, 4, 0, ''),
(147, 5, 0, 'product/manufacturer'),
(143, 12, 0, 'product/compare'),
(149, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(33, 'banners', 'banner', 'a:5:{s:4:"name";s:7:"banners";s:9:"banner_id";s:2:"14";s:5:"width";s:3:"370";s:6:"height";s:3:"370";s:6:"status";s:1:"1";}'),
(28, 'Featured ', 'featured', 'a:6:{s:4:"name";s:9:"Featured ";s:7:"product";a:3:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"30";}s:5:"limit";s:1:"1";s:5:"width";s:3:"230";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}'),
(55, 'Latest', 'latest', 'a:5:{s:4:"name";s:6:"Latest";s:5:"limit";s:1:"6";s:5:"width";s:3:"230";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}'),
(54, 'Tm Slideshow2', 'tm_slideshow', 'a:5:{s:4:"name";s:13:"Tm Slideshow2";s:9:"banner_id";s:2:"16";s:5:"width";s:4:"1170";s:6:"height";s:3:"490";s:6:"status";s:1:"1";}'),
(56, 'Events', 'html', 'a:3:{s:4:"name";s:6:"Events";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:6:"events";s:11:"description";s:971:"&lt;div&gt;\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;01/&lt;/span&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;02/&lt;/span&gt;\r\n&lt;p&gt;Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;03/&lt;/span&gt;\r\n&lt;p&gt;Ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;04/&lt;/span&gt;\r\n&lt;p&gt;Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}i:2;a:2:{s:5:"title";s:6:"events";s:11:"description";s:971:"&lt;div&gt;\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;01/&lt;/span&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;02/&lt;/span&gt;\r\n&lt;p&gt;Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;03/&lt;/span&gt;\r\n&lt;p&gt;Ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;04/&lt;/span&gt;\r\n&lt;p&gt;Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}i:3;a:2:{s:5:"title";s:6:"events";s:11:"description";s:971:"&lt;div&gt;\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;01/&lt;/span&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;02/&lt;/span&gt;\r\n&lt;p&gt;Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;03/&lt;/span&gt;\r\n&lt;p&gt;Ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div&gt;\r\n&lt;span class=&quot;num&quot;&gt;04/&lt;/span&gt;\r\n&lt;p&gt;Sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow1', 'tm_slideshow', 'a:5:{s:4:"name";s:13:"Tm Slideshow1";s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1170";s:6:"height";s:3:"490";s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(42, 'Facebook', 'tm_fbbox', 'a:11:{s:4:"name";s:8:"Facebook";s:5:"appId";s:16:"1494197684186276";s:8:"page_url";s:40:"https://www.facebook.com/TemplateMonster";s:12:"color_scheme";s:5:"light";s:10:"show_faces";s:1:"1";s:11:"show_stream";s:1:"0";s:11:"show_header";s:1:"0";s:11:"show_border";s:1:"0";s:5:"width";s:3:"370";s:6:"height";s:3:"190";s:6:"status";s:1:"1";}'),
(43, 'Bestsellers', 'bestseller', 'a:5:{s:4:"name";s:11:"Bestsellers";s:5:"limit";s:1:"1";s:5:"width";s:3:"230";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}'),
(48, 'Specials', 'special', 'a:5:{s:4:"name";s:8:"Specials";s:5:"limit";s:1:"6";s:5:"width";s:3:"230";s:6:"height";s:3:"220";s:6:"status";s:1:"1";}');


