-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2023 lúc 08:28 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_user`
--

CREATE TABLE `cart_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_user`
--

INSERT INTO `cart_user` (`id`, `user_id`, `product_id`, `number`) VALUES
(25, 2, 8, 6),
(8, 3, 7, 3),
(10, 3, 4, 2),
(23, 3, 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `category_position` int(4) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `supply_id`, `category_position`, `slug`) VALUES
(1, 'Gấu Teddy\r\n', 1, 1, 'teddy'),
(2, 'Hoạt Hình', 1, 2, 'hoat-hinh'),
(3, 'Gối bông\r\n', 1, 3, 'Goi bông \r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `link_image` varchar(255) NOT NULL DEFAULT 'author-comment.png',
  `editTime` datetime DEFAULT NULL,
  `product_id` int(11) DEFAULT 0,
  `post_id` int(11) DEFAULT 0,
  `page_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `parent_comment_id`, `user_id`, `content`, `createDate`, `author`, `email`, `status`, `link_image`, `editTime`, `product_id`, `post_id`, `page_id`) VALUES
(1, 0, 0, 'Trà sữa ngon lắm bạn', '2020-03-27 00:00:00', 'Tân', 'tan12357@gmail.com', 0, 'author-comment.png', NULL, 4, 0, 0),
(4, 0, 0, 'Tr&agrave; sữa ngon lắm ạ, đ&acirc;y l&agrave; vị tr&agrave; mk th&iacute;ch nhất lu&ocirc;n. Mong lần tới vẫn được nhiều thạch trong ly ạ. Cảm ơn chủ qu&aacute;n nh&eacute;!!', '2020-03-27 02:18:17', 'Trung AV', 'trungtin@gmail.com', 0, 'author-comment.png', '2020-04-10 15:55:11', 2, 0, 0),
(7, 0, 2, 'régrest', '2020-04-01 13:12:20', 'Tân Hồng IT', 'phuongtan12357nguyen@gmail.com ?> ', 2, 'avatar-user1011-tanhongit.jpg', NULL, 2, 0, 0),
(8, 0, 2, 'régrest', '2020-04-01 13:15:09', 'Tân Hồng IT', 'phuongtan12357nguyen@gmail.com', 3, 'avatar-user1011-tanhongit.jpg', NULL, 2, 0, 0),
(9, 0, 2, 'Cảm ơn shop nhiều ạ', '2020-04-10 19:27:57', 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 2, 'avatar-user1011-tanhongit.jpg', NULL, 22, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `link_Logo` varchar(500) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `phone_2` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `link_Contact` varchar(550) DEFAULT NULL,
  `link_Facebook` varchar(500) DEFAULT NULL,
  `link_Twitter` varchar(255) DEFAULT NULL,
  `link_linkedin` varchar(255) DEFAULT NULL,
  `zalo` varchar(20) DEFAULT NULL,
  `link_about` varchar(255) DEFAULT NULL,
  `about_footer` longtext DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `link_Logo`, `contact_name`, `address`, `country`, `phone`, `phone_2`, `email`, `link_Contact`, `link_Facebook`, `link_Twitter`, `link_linkedin`, `zalo`, `link_about`, `about_footer`, `favicon`) VALUES
(1, 'logo-chikoiquan-tan-hong-it.png', 'Shop gấu', '', 'Việt Nam', '', '', 'test@gmail.com', 'javascript:void(0);', '', '', '', '0363220339', 'page/1-about', 'Website bán gấu bông\r\n', 'favicon-chikoiquan-tan-hong-it.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `phone` int(20) DEFAULT NULL,
  `subject` mediumtext NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `phone`, `subject`, `createTime`, `user_id`, `order_id`, `product_id`, `status`, `editTime`) VALUES
(1, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc', '2020-04-05 16:58:23', 2, 0, 2, 1, NULL),
(2, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc dè', '2020-04-05 16:59:35', 2, 0, 2, 0, NULL),
(3, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'abc dè', '2020-04-05 17:01:52', 2, 0, 2, 1, NULL),
(4, 'Nguyen Tan', 'test@gmail.com', 1663220339, 'srdxtfcghjooi', '2020-04-05 17:06:46', 1, 0, 28, 1, '2020-04-09 16:48:56'),
(5, 'Nguyen Tan', 'test@gmail.com', 1663220339, 'Ahihi nớp diu', '2020-04-05 17:07:36', 1, 0, 0, 1, NULL),
(6, 'Alibaba', 'alibaba@gmail.com', 1234567890, 'aladin', '2020-04-05 17:12:32', 0, 0, 0, 1, '2020-04-10 23:26:58'),
(7, 'aladin', 'aladin@gmail', 363220339, 'reywsrewyre', '2020-04-05 17:13:23', 0, 0, 8, 0, '2020-04-10 23:26:49'),
(8, 'y54wy54wy', 'ewt43wt54w@gmail.com', 432542543, 'regresg', '2020-04-05 17:23:09', 0, 4, 0, 0, NULL),
(9, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 12345678, 'Toi hong mún mua đơn hàng này nữa , bạn nàm giề được tôi', '2020-04-06 14:48:32', 2, 3, 0, 1, '2020-04-11 19:08:07'),
(11, 'url', '', 339908569, 'ỷdyr', '2020-04-09 00:00:00', 0, 0, 0, 1, NULL),
(12, 'Tân Hồng ', 'phuongtan12357nguyen@gmail.com', 363220339, 'drtrdurdytuyt', '2020-04-11 05:45:38', 2, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduce`
--

CREATE TABLE `introduce` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `content_footer` mediumtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `media_name` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `createDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_footers`
--

CREATE TABLE `menu_footers` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(150) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_description` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_footers`
--

INSERT INTO `menu_footers` (`id`, `menu_name`, `menu_url`, `menu_description`, `parent`) VALUES
(1, 'Not available', 'javascript:void(0);', '', 0),
(2, 'Not available', 'javascript:void(0);', '', 0),
(3, 'Not available', 'javascript:void(0);', '', 0),
(4, 'Not available', 'javascript:void(0);', '', 0),
(5, 'Not available', 'javascript:void(0);', '', 0),
(6, 'Not available', 'javascript:void(0);', '', 0),
(7, 'Not available', 'javascript:void(0);', '', 0),
(8, 'Not available', 'javascript:void(0);', '', 0),
(9, 'Not available', 'javascript:void(0);', '', 0),
(10, 'Sản phẩm nổi bật', 'type/1-san-pham-hot', 'Sản phẩm nổi bật', 0),
(11, 'Sản phẩm mới', 'type/2-san-pham-moi', 'Sản phẩm mới', 0),
(12, 'Đang giảm giá', 'type/3-san-pham-dang-giam-gia', 'Sản phẩn đang giảm giá', 0),
(18, 'Text Link', 'javascript:void(0);', '', 1),
(19, 'Social', 'javascript:void(0);', 'Các liên kết trang mạng xã hội', 1),
(20, 'Blog', 'javascript:void(0);', '', 1),
(21, 'Loại sản phẩm', 'javascript:void(0);', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(200) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL DEFAULT '',
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `province` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cart_total` double NOT NULL,
  `createtime` datetime NOT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer`, `province`, `address`, `phone`, `cart_total`, `createtime`, `message`, `status`, `user_id`, `editTime`) VALUES
(14, 'Mạnh', 'Hưng Yên', 'Liên Nghĩa', '012434463456', 2147000, '2023-06-12 20:04:39', '', 0, 1040, NULL),
(13, 'Nhật', 'Thanh hóa', '3128  Doctors Drive', '012434463456', 195000, '2023-06-10 08:10:54', '', 0, 1040, NULL),
(12, 'Admin', 'nghệ an', '3128  Doctors Drive', '012434463456', 628000, '2023-06-10 07:54:03', '', 0, 1040, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 4, 1, 15000),
(2, 1, 12, 10, 15000),
(3, 2, 14, 1, 10000),
(4, 3, 4, 1, 15000),
(5, 3, 12, 1, 15000),
(6, 4, 6, 1, 15000),
(7, 4, 2, 4, 15000),
(8, 4, 4, 2, 15000),
(9, 5, 14, 1, 100),
(10, 6, 28, 1, 10000),
(11, 8, 4, 1, 15000),
(12, 8, 28, 5, 10000),
(13, 7, 5, 6, 15000),
(14, 9, 8, 1, 10000),
(15, 10, 28, 8, 10000),
(16, 10, 4, 5, 15000),
(17, 10, 2, 11, 15000),
(18, 10, 1, 64, 10000),
(19, 10, 8, 9, 10000),
(20, 11, 28, 1, 10000),
(21, 11, 4, 11, 15000),
(22, 11, 5, 9, 15000),
(23, 11, 9, 2, 15000),
(24, 12, 49, 1, 628000),
(25, 13, 56, 1, 195000),
(26, 14, 45, 4, 565000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_author` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'Draft',
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_type` int(11) NOT NULL DEFAULT 1,
  `post_modified_user` varchar(50) DEFAULT NULL,
  `totalView` int(11) NOT NULL DEFAULT 0,
  `post_slug` varchar(255) NOT NULL,
  `post_avatar` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_modified`, `post_type`, `post_modified_user`, `totalView`, `post_slug`, `post_avatar`) VALUES
(6, 2, '2020-04-08 11:47:48', '', 'Dmca Luật bản quyền', 'Trash', '2020-04-08 10:25:58', 1, 'Tân Hồng ', 5, 'dmca-luat-ban', ''),
(5, 2, '2020-04-09 14:03:15', 'Phim việt chất lượng cao<br />\n\n<img alt=\"\" src=\"/php-mvc-shop/public/upload/ckeditorimages/about-1page.png\" style=\"height:271px; width:482px\" />', 'Phim việt', 'Publiced', '2020-04-08 10:13:10', 1, 'Tân Hồng ', 4, 'phim-viet', 'phim-viet-5post.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(500) DEFAULT NULL,
  `product_typeid` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_material` varchar(255) DEFAULT NULL,
  `product_size` varchar(100) DEFAULT NULL,
  `product_detail` longtext DEFAULT NULL,
  `createBy` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `editBy` varchar(100) DEFAULT NULL,
  `editDate` datetime DEFAULT NULL,
  `totalView` int(11) DEFAULT 0,
  `saleoff` tinyint(11) DEFAULT 0,
  `percentoff` int(11) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_typeid`, `category_id`, `sub_category_id`, `supply_id`, `product_description`, `product_price`, `product_color`, `product_material`, `product_size`, `product_detail`, `createBy`, `createDate`, `editBy`, `editDate`, `totalView`, `saleoff`, `percentoff`, `img1`, `img2`, `img3`, `img4`, `slug`) VALUES
(35, 'Gấu bông Teddy ngực quả dâu', 1, 1, 11, NULL, 'Gấu bông Teddy ngực quả dâu\r\n', 325000, 'Hồng', 'Vải nhung', '60', 'Gấu b&ocirc;ng Teddy ngực quả d&acirc;u', 'Át min', '2023-06-07', '', '0000-00-00 00:00:00', 3, 0, 0, 'gau-bong-teddy-nguc-qua-dau-35img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-nguc-qua-dau'),
(36, 'Gấu bông Teddy Angel hồng', 1, 1, 11, NULL, 'Gấu bông Teddy Angel hồng\r\n', 455000, 'Hồng', 'Vải nhung', '80', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:205px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gấu b&ocirc;ng Teddy Angel hồng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-07', '', '0000-00-00 00:00:00', 3, 0, 0, 'gau-bong-teddy-angel-hong-36img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-angel-hong'),
(37, 'Gấu bông Teddy Sôcla', 1, 1, 11, NULL, 'Gấu bông Teddy Sôcla\r\n', 425000, 'Socola', 'Vải bông', '100', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:205px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gấu b&ocirc;ng Teddy S&ocirc;cla</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-07', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-teddy-socla-37img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-socla'),
(63, 'Gối ôm cà rốt lông', 3, 3, 11, NULL, '', 235000, 'Trắng', 'Vải nhung', '100', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 1, 10, 'goi-om-ca-rot-long-63img1.jpg', NULL, NULL, NULL, 'goi-om-ca-rot-long'),
(64, 'Gối chăn thú lông', 3, 3, 10, NULL, '', 100000, 'Trắng', 'Vải nhung', '35', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'goi-chan-thu-long-64img1.jpg', NULL, NULL, NULL, 'goi-chan-thu-long'),
(65, 'Gối cổ cao su non', 3, 3, 11, NULL, '', 100000, 'Trắng', 'Vải bông', '40', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'goi-co-cao-su-non-65img1.jpg', NULL, NULL, NULL, 'goi-co-cao-su-non'),
(39, 'Gấu bông Teddy nơ hoa', 1, 1, 11, NULL, 'Gấu bông Teddy nơ hoa\r\n', 735000, 'Hồng', 'Vải nhung', '99', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:205px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gấu b&ocirc;ng Teddy nơ hoa</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-teddy-no-hoa-39img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-no-hoa'),
(40, 'Gấu bông Teddy áo tim hoa', 1, 1, 11, NULL, 'Gấu bông Teddy áo tim hoa\r\n', 455000, 'Tím', 'Vải nhung', '100', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:205px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gấu b&ocirc;ng Teddy &aacute;o tim hoa</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-teddy-ao-tim-hoa-40img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-ao-tim-hoa'),
(41, 'Gấu bông Head Tales cà vạt', 3, 1, 11, NULL, 'Gấu bông Head Tales cà vạt\r\n', 245000, 'Hồng', 'Vải bông', '150', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:205px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gấu b&ocirc;ng Head Tales c&agrave; vạt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-head-tales-ca-vat-41img1.jpg', NULL, NULL, NULL, 'gau-bong-head-tales-ca-vat'),
(42, 'Gấu bông Teddy Cosco', 3, 1, 11, NULL, 'Gấu bông Teddy Cosco\r\n', 1600000, 'Trắng', 'Vải bông', '200', '', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-teddy-cosco-42img1.jpg', NULL, NULL, NULL, 'gau-bong-teddy-cosco'),
(43, 'Đầu nấm Toad nhồi bông', 2, 2, 9, NULL, '', 85000, 'Hồng', 'Vải nhung', '20', '', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'dau-nam-toad-nhoi-bong-43img1.jpg', NULL, NULL, NULL, 'dau-nam-toad-nhoi-bong'),
(44, 'Gấu bông Care Bears', 1, 1, 9, NULL, '', 235000, 'Hồng', 'Vải bông', '40', '', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-care-bears-44img1.jpg', NULL, NULL, NULL, 'gau-bong-care-bears'),
(45, 'Gấu bông Doremon mũ vịt', 3, 2, 10, NULL, '', 565000, 'Hồng', 'Vải bông', '60', '', 'Át min', '2023-06-08', '', '0000-00-00 00:00:00', 8, 1, 5, 'gau-bong-doremon-mu-vit-45img1.jpg', NULL, NULL, NULL, 'gau-bong-doremon-mu-vit'),
(46, 'Gấu bông Pikachu', 1, 1, 10, NULL, '', 500000, 'Trắng', 'Vải bông', '80', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-pikachu-46img1.jpg', NULL, NULL, NULL, 'gau-bong-pikachu'),
(47, 'Gấu bông Shin cosplay voi', 2, 1, 9, NULL, '', 165000, 'Trắng', 'Vải nhung', '30', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-shin-cosplay-voi-47img1.jpg', NULL, NULL, NULL, 'gau-bong-shin-cosplay-voi'),
(48, 'Bạch tuộc siêu to khổng lồ', 2, 1, 11, NULL, '', 665000, 'Trắng', 'Vải nhung', '100', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'bach-tuoc-sieu-to-khong-lo-48img1.jpg', NULL, NULL, NULL, 'bach-tuoc-sieu-to-khong-lo'),
(49, 'Minion niềng răng', 2, 2, 11, NULL, '', 628000, 'Vàng', 'Vải nhung', '80', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 3, 0, 0, 'minion-nieng-rang-49img1.jpg', NULL, NULL, NULL, 'minion-nieng-rang'),
(50, 'Mèo hoàng thượng bông Galaxy', 3, 2, 9, NULL, '', 125000, 'Trắng', 'Vải bông', '20', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 5, 'meo-hoang-thuong-bong-galaxy-50img1.jpg', NULL, NULL, NULL, 'meo-hoang-thuong-bong-galaxy'),
(51, 'Mèo hoàng thượng bông béo', 2, 2, 11, NULL, 'Mèo hoàng thượng bông béo\r\n', 1200000, 'Trắng', 'Vải nhung', '120', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:187px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>M&egrave;o ho&agrave;ng thượng b&ocirc;ng b&eacute;o</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'meo-hoang-thuong-bong-beo-51img1.png', NULL, NULL, NULL, 'meo-hoang-thuong-bong-beo'),
(52, 'Mèo bông Dudu', 1, 2, 9, NULL, '', 90000, 'Trắng', 'Vải bông', '25', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'meo-bong-dudu-52img1.jpg', NULL, NULL, NULL, 'meo-bong-dudu'),
(53, 'Gấu bông Stitch tím', 1, 2, 10, NULL, '', 100000, 'Trắng', 'Vải bông', '50', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-stitch-tim-53img1.jpg', NULL, NULL, NULL, 'gau-bong-stitch-tim'),
(54, 'Gấu bông Pooh áo dứa', 1, 2, 11, NULL, '', 800000, 'Vàng', 'Vải bông', '100', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'gau-bong-pooh-ao-dua-54img1.jpg', NULL, NULL, NULL, 'gau-bong-pooh-ao-dua'),
(55, 'Gối cổ cao su non', 2, 3, 11, NULL, '', 145000, 'Trắng', 'Vải nhung', '50', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'goi-co-cao-su-non-55img1.jpg', NULL, NULL, NULL, 'goi-co-cao-su-non'),
(56, 'Gối tựa lưng mèo tam thể', 2, 3, 9, NULL, '', 195000, 'Trắng', 'Vải bông', '35', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 2, 0, 0, 'goi-tua-lung-meo-tam-the-56img1.jpg', NULL, NULL, NULL, 'goi-tua-lung-meo-tam-the'),
(57, 'Gối ôm heo mặt hoa', 2, 3, 10, NULL, '', 225000, 'Trắng', 'Vải bông', '65', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'goi-om-heo-mat-hoa-57img1.jpg', NULL, NULL, NULL, 'goi-om-heo-mat-hoa'),
(58, 'Gối chăn thú lông', 3, 3, 10, NULL, '', 100000, 'Trắng', 'Vải bông', '35', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 1, 5, 'goi-chan-thu-long-58img1.jpg', NULL, NULL, NULL, 'goi-chan-thu-long'),
(59, 'Cá mập bông dưa hấu tròn', 3, 3, 10, NULL, '', 300000, 'Vàng', 'Vải nhung', '40', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 1, 10, 'ca-map-bong-dua-hau-tron-59img1.jpg', NULL, NULL, NULL, 'ca-map-bong-dua-hau-tron'),
(60, 'Gối ôm Pikachu lông', 3, 3, 11, NULL, '', 765000, 'Vàng', 'Vải bông', '110', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 0, 0, 'goi-om-pikachu-long-60img1.jpg', NULL, NULL, NULL, 'goi-om-pikachu-long'),
(62, 'Gối tựa lưng mèo tam thể', 3, 3, 10, NULL, '', 195000, 'Hồng', 'Vải nhung', '35', '', 'Át min', '2023-06-09', '', '0000-00-00 00:00:00', 0, 1, 5, 'goi-tua-lung-meo-tam-the-62img1.jpg', NULL, NULL, NULL, 'goi-tua-lung-meo-tam-the');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_desc` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_desc`) VALUES
(1, 'Admin', 'Quản trị viên quản lý hệ thống website '),
(2, 'Moderator', 'Người phụ trợ quản lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `slide_name` varchar(255) DEFAULT NULL,
  `slide_img1` varchar(255) DEFAULT NULL,
  `slide_text1` varchar(500) DEFAULT NULL,
  `slide_img2` varchar(255) DEFAULT NULL,
  `slide_text2` varchar(500) DEFAULT NULL,
  `slide_img3` varchar(255) DEFAULT NULL,
  `slide_text3` varchar(500) DEFAULT NULL,
  `slide_img4` varchar(255) DEFAULT NULL,
  `slide_text4` varchar(500) DEFAULT NULL,
  `slide_img5` varchar(255) DEFAULT NULL,
  `slide_text5` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `slide_name`, `slide_img1`, `slide_text1`, `slide_img2`, `slide_text2`, `slide_img3`, `slide_text3`, `slide_img4`, `slide_text4`, `slide_img5`, `slide_text5`, `status`) VALUES
(1, 'HomePage 1', 'slidea.jpg', '', 'slideb.jpg', '', 'slidec.jpg', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `supply_id` int(11) DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcategory_name`, `supply_id`, `category_id`, `slug`) VALUES
(13, 'Vải nhung', 1, 2, 'vai-nhung'),
(12, 'Vải bông', 1, 2, 'vai-bong'),
(11, 'Gấu lớn', 1, 1, 'gau-lon'),
(10, 'Gấu vừa', 1, 1, 'gau-vua'),
(9, 'Gấu nhỏ', 1, 1, 'gau-nho'),
(14, 'Vải bông', 1, 3, 'vai-bong'),
(15, 'Vải nhung', 1, 3, 'vai-nhung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `supply_name` varchar(500) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplies`
--

INSERT INTO `supplies` (`id`, `supply_name`, `logo`) VALUES
(1, 'Việt Nam', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_description` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_description`, `slug`) VALUES
(1, 'SẢN PHẨM NỔI BẬT (HOT)', '', 'san-pham-noi-bat'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM GIẢM GIÁ', '', 'san-pham-giam-gia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_username` varchar(50) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `user_avatar` varchar(550) DEFAULT 'author-auto.png',
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `verificationCode` varchar(500) DEFAULT NULL,
  `editTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_username`, `user_password`, `user_name`, `role_id`, `user_avatar`, `user_email`, `user_phone`, `user_address`, `createDate`, `verified`, `verificationCode`, `editTime`) VALUES
(1, 'testna', '25f9e794323b453885f5181f1b624d0b', 'Nguyen Tan', 0, 'avatar-user1-test.png', 'test@gmail.com', '01663220339', 'Xuan Lu1ed9cccthis copy of windows is genurehh', '2020-03-22 00:00:00', 0, '0c2bae3b44c3c49553714688df3dbd05', '2020-04-12 04:57:09'),
(2, 'tanhongit', '847265df1ad7102fe1b5d97884e51801', 'Tân Hồng ', 1, 'avatar-user1011-tanhongit.jpg', 'phuongtan12357nguyen@gmail.com', '363220339', 'xuân lộc, đồng nai, việt namm', '2020-03-24 00:00:00', 1, 'dd5bfe95860b785a82126bd40a7fc093', '2020-04-13 11:46:18'),
(4, 'tanhongitii', '25f9e794323b453885f5181f1b624d0b', 'Tân Hồng IT', 0, 'avatar-user1018-tanhongitii.jpg', 'meowwww@gmail.com.com', '363220339', 'xuan lộc, đồng nai, việt nam', '2020-04-11 00:00:00', 0, '', NULL),
(3, 'eyteyt', '25d55ad283aa400af464c76d713c07ad', 'Tân Hồng IT', 2, 'author-auto.png', 'moderator@gmail.com', '363220339', 'xuan lộc, đồng nai, việt nammmmmmmm', '2020-04-07 00:00:00', 1, '47986eab669c010f869a7c7f288873e2', '2020-04-11 03:18:25'),
(1038, 'shtshrffgd', 'e807f1fcf82d132f9bb018ca6738a19f', 't4greg', 0, 'author-auto.png', 'phuong12357tan@gmail.com', '+8489941576', '3128  Doctors Drive', '2020-04-02 01:35:31', 0, '3cb8761195802abf0656e670f73b277c', '2020-04-11 01:40:43'),
(1039, 'thtreht', 'e807f1fcf82d132f9bb018ca6738a19f', 'dtrdhtrjy', 2, 'author-auto.png', 'trehytrh@gmail.com', '4089941576', '3128  Doctors Drive', '2020-04-11 02:41:21', 0, '9b20629c075697db8c9c5d3b94a86f8b', NULL),
(1040, 'admin', 'e807f1fcf82d132f9bb018ca6738a19f', 'Admin', 1, 'avatar-user1040-admin.png', 'admin@gmail.com', '012434463456', '3128  Doctors Drive', '2020-04-11 02:43:23', 0, 'aca75e03278fa33d61ce42889ea19ed3', '2023-06-09 20:53:23'),
(1041, 'ưer', '123456', 'ỳdtdy', 1, 'author-auto.png', 'manh@gmail.com', '4089941576', '3128  Doctors Drive', '2020-04-11 02:45:37', 0, '8d9bce9a1dec443a338a00c3e79576f8', '2020-04-11 03:20:35'),
(1042, 'An', '1a774b81abc245d01920cc6ca3d5f7c0', NULL, 0, 'author-auto.png', 'nguyenphungan175@gmail.com', NULL, NULL, '2023-06-12 20:01:01', 0, '4bb38f620e4514c5a1ffa4c79c0dd5f2', NULL),
(1043, 'bcrx175', '25d55ad283aa400af464c76d713c07ad', NULL, 0, 'author-auto.png', 'yasuku175@gmail.com', NULL, NULL, '2023-06-13 13:10:44', 0, 'b1e8c3a06f6aaffbfd979e336d5e568b', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_online`
--

CREATE TABLE `users_online` (
  `session` varchar(100) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(34) NOT NULL,
  `browser` varchar(550) NOT NULL,
  `dateonline` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_online`
--

INSERT INTO `users_online` (`session`, `time`, `ip`, `browser`, `dateonline`) VALUES
('imug14ki0q2voomg1vec6bpu3p', 1586580224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-11 11:43:44'),
('msj692bj83nad5ddvb6cjt79gg', 1586593321, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-11 15:22:01'),
('tkck1ninob4qj4b1m6hg2odkj1', 1586602762, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-11 17:59:22'),
('1l835nbt5ge32riiu32u0tnoft', 1586601715, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-11 17:41:55'),
('cu5calrh294f4e1skmk3epsbdh', 1586624144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-11 23:55:44'),
('ipr1h8bpsm81sio33kidr09875', 1586626277, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-12 00:31:17'),
('qrg3jbpj8gbnk7jkqfv14jp4db', 1586684941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-12 16:49:01'),
('dch2468m3nkh54pg7eqrimnch3', 1586667589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-12 11:59:49'),
('2fhq7n9nkvdptlktjvpeuian83', 1586745634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-13 09:40:34'),
('d83k1hq46e2bnbphk4qog0duka', 1586769577, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-13 16:19:37'),
('ct2ha9tsdmukk92cnb6aivgi32', 1586758860, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-13 13:21:00'),
('q6uhu0g4qt794me6dl4tolt69q', 1586799218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-14 00:33:38'),
('gokih8mthn12kftet0ofnlv9ke', 1586884245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-15 00:10:45'),
('g4nbe3cgookc4l9dd8b5nn5bra', 1586934776, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-15 14:12:56'),
('ip13q3g2qd2kttsot6onpa6bh1', 1587063041, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-17 01:50:41'),
('70g1j4g341vtk69o01hrhd1mpo', 1587133220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-17 21:20:20'),
('toh12m5lrfcgtl3edkknlc14fq', 1587134595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-17 21:43:15'),
('jf2s4n36q8cdfub5qs60vsuoic', 1587200885, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-18 16:08:05'),
('7sjnm4igkiue8ir2et5i5m4ric', 1587207351, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-18 17:55:51'),
('giqe6d6bil5g8efmmovlnr6dss', 1587226980, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-18 23:23:00'),
('go2mug9fde7cphdknjrc39rupb', 1587263351, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-19 09:29:11'),
('ndssrnrd7p4itagsjq4pqdc49t', 1587278220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', '2020-04-19 13:37:00'),
('dska0po5mhflac1tpnqp0s56hs', 1684948606, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-25 00:16:46'),
('koatufn99g0gjuj1t7gcpg3nrm', 1686060409, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-06 21:06:49'),
('0amoql7sva4152udmkpf5m48fb', 1686130247, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-07 16:30:47'),
('natv97vqbafb86lpfk9ta9e88o', 1686186302, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-08 08:05:02'),
('gsmhvma944nguiauh1lcf4cv8c', 1686275951, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 08:59:11'),
('2ct24nm5gknrtabpknsoeesqq1', 1686276342, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:05:42'),
('mt5m3h07sfk1inpcidvd73bo8k', 1686276481, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:08:01'),
('v9378i5n6go76oiqcsg19ip5ch', 1686276745, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:12:25'),
('tff8iptqqpo4cb9iklhfbg0q2h', 1686277163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:19:23'),
('d3ims177a45v83416vop1g2rhn', 1686277327, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:22:07'),
('r3kdkr38vovapcnecps7s88m8n', 1686277447, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 09:24:07'),
('0ptrdrn3dk5vqod986cd0v98si', 1686280805, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 10:20:05'),
('bat8uiu2hq7o8kpfcven7g6t70', 1686286968, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 12:02:48'),
('psjf8ka1l85knktch1r2n6smtj', 1686287108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 12:05:08'),
('mgk8ko0j2flhr408asdec51m56', 1686320960, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-09 21:29:20'),
('9d8foo6rm320tphrh9h91r8sob', 1686363775, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-10 09:22:55'),
('rqvtijcfkvkr2vsne35vrg5ntv', 1686567188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 17:53:08'),
('4427iid2kpan9t5aopou27lrq8', 1686575094, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-12 20:04:54'),
('8640rifsl7l5qnsjkorfu86a1o', 1686637180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-13 13:19:40'),
('8mt778e0q88kbnbc7a5250j637', 1687239696, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-06-20 12:41:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart_user`
--
ALTER TABLE `cart_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`),
  ADD KEY `fk_id_product` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_product` (`product_id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_product_id` (`product_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Chỉ mục cho bảng `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_footers`
--
ALTER TABLE `menu_footers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_id` (`order_id`),
  ADD KEY `fk_id_product` (`product_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_author` (`post_author`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`),
  ADD KEY `fk_type_id` (`product_typeid`),
  ADD KEY `fk_id_sub_category` (`sub_category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_supply_id` (`supply_id`);

--
-- Chỉ mục cho bảng `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_role` (`role_id`);

--
-- Chỉ mục cho bảng `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`session`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart_user`
--
ALTER TABLE `cart_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `introduce`
--
ALTER TABLE `introduce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `menu_footers`
--
ALTER TABLE `menu_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
