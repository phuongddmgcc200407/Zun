-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 21, 2023 lúc 07:29 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `atn_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `Cat_ID` varchar(10) NOT NULL,
  `Cat_Name` varchar(30) NOT NULL,
  `Cat_Des` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Cat_ID`, `Cat_Name`, `Cat_Des`) VALUES
('C001', 'Chess', 'Chess'),
('LG01', 'Lego', 'Lego toys'),
('MD01', 'Model', 'Model toys'),
('RB01', 'Robot', 'Robot Toys'),
('RC01', 'Controller Car', 'Remote controller car toys'),
('SM01', 'Supperhero', 'Supperhero toys');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `gender` int(11) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `CusDate` int(11) NOT NULL,
  `CusMonth` int(11) NOT NULL,
  `CusYear` int(11) NOT NULL,
  `SSN` varchar(10) DEFAULT NULL,
  `ActiveCode` varchar(100) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Username`, `Password`, `CustName`, `gender`, `Address`, `telephone`, `email`, `CusDate`, `CusMonth`, `CusYear`, `SSN`, `ActiveCode`, `state`) VALUES
('Admin123', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 0, 'Kan Thor', '0123456789', 'admin@gmail.com', 17, 8, 2002, '', '', 1),
('trandungst123', 'fcea920f7412b5da7be0cf42b8c93759', 'Tran Dung', 0, 'Soc Trang', '01234567899', 'trandungst123', 23, 9, 2002, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(6) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `DeliveryDate` datetime NOT NULL,
  `Delivery_loca` varchar(200) NOT NULL,
  `Payment` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Product_ID` varchar(10) NOT NULL,
  `Product_Name` varchar(30) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `oldPrice` decimal(12,2) NOT NULL,
  `SmallDesc` varchar(1000) NOT NULL,
  `DetailDesc` text NOT NULL,
  `ProDate` datetime NOT NULL,
  `Pro_qty` int(11) NOT NULL,
  `Pro_image` varchar(200) NOT NULL,
  `Cat_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Price`, `oldPrice`, `SmallDesc`, `DetailDesc`, `ProDate`, `Pro_qty`, `Pro_image`, `Cat_ID`) VALUES
('CH01', 'King Chess', 14, '0.00', 'No Stress Chess', '<h1 class=\"a-size-large a-spacing-none\" id=\"title\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\">\r\n	<span class=\"a-size-large product-title-word-break\" id=\"productTitle\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Winning Moves Games Winning Moves No Stress Chess, Natural (1091) for 2 players</span></h1>\r\n', '2023-06-15 10:54:33', 20, 'Chess.jpg', 'C001'),
('GTR1', 'Nissan Skyline GT-R (BN34)', 100, '0.00', 'Jada Toys Nissan Skyline GT-R (BN34)', '<h1 0px=\"\" 24px=\"\" 32px=\"\" amazon=\"\" class=\"a-size-large a-spacing-none\" font-size:=\"\" id=\"title\" line-height:=\"\" margin-bottom:=\"\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 400; color: rgb(15, 17, 17); font-family: \">\r\n	<span class=\"a-size-large product-title-word-break\" id=\"productTitle\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Jada Toys Fast &amp; Furious Brian&#39;s Nissan Skyline GT-R (BN34) Silver/Blue</span></h1>\r\n', '2023-06-16 12:35:19', 2, 'GTR1.jpg', 'RC01'),
('L001', 'LandRover ClassicDefender Lego', 15, '0.00', 'Land Rover Lego', '<h1 cera=\"\" class=\"Text__BaseText-sc-13i1y3k-0 dKHUnY ProductOverviewstyles__NameText-sc-1a1az6h-7 eGjRAr\" data-test=\"product-overview-name\" itemprop=\"name\" style=\"box-sizing: inherit; font-size: 1.5rem; margin: 0.9375rem 3.125rem 0px 0px; color: rgb(44, 44, 44); line-height: 2.3125rem; font-weight: 500; font-family: \">\r\n	<span class=\"Markup__StyledMarkup-nc8x20-0 epIXnJ\" style=\"box-sizing: inherit;\">Land Rover Classic Defender Lego</span></h1>\r\n', '2023-06-15 10:41:49', 10, 'LandRover Lego.jpg', 'LG01'),
('MV01', 'Marvel Avengers Action Figures', 39, '0.00', 'Marvel Avengers Action Figures', '<h1 class=\"a-size-large a-spacing-none\" id=\"title\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\">\r\n	<span class=\"a-size-large product-title-word-break\" id=\"productTitle\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Marvel Avengers Action Figures - Iron Man, Hulk, Black Panther, Captain America</span></h1>\r\n', '2023-06-15 10:50:39', 5, 'Mavel.jpg', 'SM01'),
('NSX1', 'Honda NSX Model', 43, '0.00', 'Hond-a NSX Silver Metallic', '<h1 class=\"a-size-large a-spacing-none\" id=\"title\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\">\r\n	<span class=\"a-size-large product-title-word-break\" id=\"productTitle\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Hond-a NSX Silver Metallic with Carbon Top 1/64 Diecast Model Car by LCD Models 64004 s</span></h1>\r\n', '2023-06-15 10:25:01', 10, 'NSX.jpg', 'MD01'),
('TF01', 'Transformers Optimus Prime', 45, '0.00', 'Transformers Generations War for Cybertron', '<div class=\"celwidget\" data-cel-widget=\"title_feature_div\" data-csa-c-asin=\"B07D5QRVSS\" data-csa-c-content-id=\"title\" data-csa-c-id=\"xj3sh6-3yhy6o-3va3gp-ajkud2\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-slot-id=\"title_feature_div\" data-csa-c-type=\"widget\" data-feature-name=\"title\" id=\"title_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">\r\n	<div class=\"a-section a-spacing-none\" id=\"titleSection\" style=\"box-sizing: border-box; margin-bottom: 0px;\">\r\n		<h1 class=\"a-size-large a-spacing-none\" id=\"title\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px !important; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 400; font-size: 24px !important; line-height: 32px !important;\">\r\n			<span class=\"a-size-large product-title-word-break\" id=\"productTitle\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Transformers Generations War for Cybertron: Optimus Prime Action Figure</span></h1>\r\n	</div>\r\n</div>\r\n', '2023-06-15 10:46:38', 5, 'Optimus.jpg', 'RB01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`Username`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`Cat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
