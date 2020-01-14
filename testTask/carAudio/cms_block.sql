-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2020 at 10:35 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.1.33-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(4, 'Resently viewed products', 'resently-viewed-products', '<p>{{widget type=\"Magento\\Catalog\\Block\\Widget\\RecentlyViewed\" uiComponent=\"widget_recently_viewed\" page_size=\"10\" show_attributes=\"name,image,price,learn_more\" show_buttons=\"add_to_cart,add_to_compare\" template=\"product/widget/viewed/grid.phtml\"}}</p>', '2019-12-16 23:49:22', '2019-12-27 08:21:04', 1),
(7, 'Header Links Container', 'header-links-container', '<div class=\"header-links-container\">\r\n<ul>\r\n<li class=\"header-contacts\"><a href=\"contact\">{{trans \"Contacts\"}}</a></li>\r\n<li class=\"shops-link\"><a href=\"#\">{{trans \"Shops\"}}</a></li>\r\n<li class=\"about-link\"><a href=\"#\">{{trans \"About Us\"}}</a></li>\r\n<li class=\"delivery-link\"><a href=\"#\">{{trans \"Delivery\"}}</a></li>\r\n<li class=\"paymant-link\"><a href=\"#\">{{trans \"Payment\"}}</a></li>\r\n<li class=\"bonus-program-link\"><a href=\"#\">{{trans \"Bonus program\"}}</a></li>\r\n</ul>\r\n</div>', '2019-12-21 17:04:18', '2019-12-21 21:19:07', 1),
(8, 'Header City', 'header-city', '<div class=\"header-city\"><label for=\"select\">{{trans \"Your city:\"}}</label><select id=\"select\" class=\"select-city\" name=\"select\">\r\n<option value=\"kyiv\">{{trans \"Kyiv\"}}</option>\r\n<option value=\"lviv\">{{trans \"Lviv\"}}</option>\r\n<option value=\"lutsk\">{{trans \"Lutsk\"}}</option>\r\n<option value=\"liubeshiv\">{{trans \"Liubeshiv\"}}</option>\r\n<option value=\"svalovychi\">{{trans \"Svalovychi\"}}</option>\r\n</select></div>', '2019-12-21 18:01:07', '2019-12-21 21:29:54', 1),
(9, 'Call Us', 'call-us', '<form action=\"\" class=\"call-us\">\r\n    <select name=\"select-phone\" id=\"select-phone\" class=\"select-phone\" >\r\n        <option value=\"0-800-15-30-85\">0-800-15-30-85</option>\r\n        <option value=\"0-800-14-30-85\">0-800-14-30-85</option>\r\n        <option value=\"0-800-13-30-85\">0-800-13-30-85</option>\r\n    </select>\r\n    <button class=\"select-phone-button\" type=\"submit\">{{trans \"Call Us\"}}</button>\r\n</form>', '2019-12-23 01:35:03', '2019-12-23 01:35:03', 1),
(10, 'footer content custome', 'footer-content-custome', '<div class=\"footer-links-content\">\r\n<div class=\"links-wrapper\">\r\n<div class=\"catalog\">\r\n<h3>{{trans \"Catalog\"}}</h3>\r\n<ul>\r\n<li><a href=\"#\">{{trans \"Electronic\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Sound and video\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Spare parts and consumables\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Light\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Interior\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Exterior\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Wheels\"}}</a></li>\r\n</ul>\r\n<ul>\r\n<li><a href=\"#\">{{trans \"Luggage and mounts\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Auto-chemistry\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Technical assistance\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Tool\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Tourism\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"4 * 4 jeep\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Moto\"}}</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"company\">\r\n<h3>{{trans \"Company\"}}</h3>\r\n<ul>\r\n<li><a href=\"#\">{{trans \"About us\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Contacts\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Shops\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Partners\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Wholesale buyers\"}}</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"for_buyers\">\r\n<h3>{{trans \"For buyers\"}}</h3>\r\n<ul>\r\n<li><a href=\"#\">{{trans \"Delivery\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Payment\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Guarantee\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Credit\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Bonus program\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Actions\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Site map\"}}</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"info\">\r\n<h3>{{trans \"Information\"}}</h3>\r\n<ul>\r\n<li><a href=\"#\">{{trans \"How to choise\"}}</a></li>\r\n<li><a href=\"compare-tests\">{{trans \"Сompare tests\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"News\"}}</a></li>\r\n<li><a href=\"#\">{{trans \"Frequently asked questions\"}}</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"copyright-wrapper\">{{block class=\"Magento\\Theme\\Block\\Html\\Footer\" block_id=\"footer-content-custome\" template=\"Magento_Theme::html/copyright.phtml\"}} <span class=\"created_in\">{{trans \"Created by\"}} <a href=\"#\">Турум-бурум</a> </span></div>\r\n</div>\r\n<div class=\"footer-contacts\">\r\n<div class=\"phone\"><a href=\"tel:+0800301585\">0 800 30-15-85</a>\r\n<p>{{trans \"Free of home phones and mobile phones of Ukraine\"}}</p>\r\n</div>\r\n<div class=\"social-links\">\r\n<p>{{trans \"Folow us in social\"}}</p>\r\n<ul>\r\n                <li><a href=\"#\" class=\"facebook\"></a></li>\r\n                <li><a href=\"#\" class=\"google\"></a></li>\r\n                <li><a href=\"#\" class=\"twitter\"></a></li>\r\n                <li><a href=\"#\" class=\"youtube\"></a></li>\r\n                <li><a href=\"#\" class=\"vk\"></a></li>\r\n                <li><a href=\"#\" class=\"instagram\"></a></li>\r\n</ul>\r\n</div>\r\n</div>', '2019-12-25 11:48:39', '2019-12-25 22:16:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
