-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 11:25 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qlbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chudegopy`
--

CREATE TABLE IF NOT EXISTS `chudegopy` (
  `CDGY_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `CDGY_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CDGY_Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
  `DH_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `DH_NgayLap` date DEFAULT NULL,
  `DH_NoiGiao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DH_TrangThaiThanhToan` tinyint(4) DEFAULT NULL,
  `HTTT_Ma` tinyint(4) DEFAULT NULL,
  `KH_User` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DH_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`DH_Ma`, `DH_NgayLap`, `DH_NoiGiao`, `DH_TrangThaiThanhToan`, `HTTT_Ma`, `KH_User`) VALUES
(8, '2018-07-31', 'Cần Thơ', 0, 1, 'admin'),
(9, '2018-07-31', 'Sóc Trăng', 0, 2, 'admin'),
(10, '2018-08-11', 'asd', 0, 1, 'admin'),
(11, '2018-08-11', 'Cần Thơ', 0, 1, 'thanhtoan'),
(12, '2018-08-12', 'Sao Hỏa', 0, 1, 'ongthanhtoan');

-- --------------------------------------------------------

--
-- Table structure for table `gopy`
--

CREATE TABLE IF NOT EXISTS `gopy` (
  `GY_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `GY_HoTen` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_TieuDe` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_NoiDung` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GY_NgayGopY` date DEFAULT NULL,
  `CDGY_Ma` int(11) DEFAULT NULL,
  PRIMARY KEY (`GY_Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hinhsanpham`
--

CREATE TABLE IF NOT EXISTS `hinhsanpham` (
  `HSP_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `HSP_TenTapTin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SP_Ma` int(11) NOT NULL,
  PRIMARY KEY (`HSP_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='				' AUTO_INCREMENT=73 ;

--
-- Dumping data for table `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`HSP_Ma`, `HSP_TenTapTin`, `SP_Ma`) VALUES
(1, 'Acer A315-51-3932_1.png', 1),
(2, 'Acer A315-51-3932_2.png', 1),
(3, 'Acer A315-51-3932_3.png', 1),
(4, 'Acer A315-51-3932_4.png', 1),
(5, 'Acer Nitro 5 AN515-51-79WJ_1.jpg', 2),
(6, 'Acer Nitro 5 AN515-51-79WJ_2.jpg', 2),
(7, 'Acer Nitro 5 AN515-51-79WJ_3.jpg', 2),
(8, 'Acer Nitro 5 AN515-51-79WJ_4.jpg', 2),
(9, 'Asus UX430UA-GV261T_1.png', 4),
(10, 'Asus UX430UA-GV261T_2.png', 4),
(11, 'Asus UX430UA-GV261T_3.png', 4),
(12, 'Asus UX430UA-GV261T_4.png', 4),
(13, 'Asus Vivobook S14 S410UA-EB003T_1.png', 3),
(14, 'Asus Vivobook S14 S410UA-EB003T_2.png', 3),
(15, 'Asus Vivobook S14 S410UA-EB003T_3.png', 3),
(16, 'Asus Vivobook S14 S410UA-EB003T_4.png', 3),
(17, 'Dell Ins N7370_1.png', 5),
(18, 'Dell Ins N7370_2.png', 5),
(19, 'Dell Ins N7370_3.png', 5),
(20, 'Dell Ins N7370_4.png', 5),
(21, 'Dell Vostro 5471_1.png', 6),
(22, 'Dell Vostro 5471_2.png', 6),
(23, 'Dell Vostro 5471_3.png', 6),
(24, 'Dell Vostro 5471_4.png', 6),
(25, 'Canon M10 KIT 15-45mm_1.png', 7),
(26, 'Canon M10 KIT 15-45mm_2.jpg', 7),
(27, 'Canon M10 KIT 15-45mm_3.jpg', 7),
(28, 'Canon M10 KIT 15-45mm_4.jpg', 7),
(29, 'Máy Ảnh Canon 750D + Lens 18-55 IS STM_1.png', 8),
(30, 'Máy Ảnh Canon 750D + Lens 18-55 IS STM_2.jpg', 8),
(31, 'Máy Ảnh Canon 750D + Lens 18-55 IS STM_3.jpg', 8),
(32, 'Máy Ảnh Canon 750D + Lens 18-55 IS STM_4.jpg', 8),
(33, 'MÁY ẢNH NIKON DI.CAMERA D5600_1.png', 9),
(34, 'MÁY ẢNH NIKON DI.CAMERA D5600_2.jpg', 9),
(35, 'MÁY ẢNH NIKON DI.CAMERA D5600_3.jpg', 9),
(36, 'MÁY ẢNH NIKON DI.CAMERA D5600_4.jpg', 9),
(37, 'Nikon D750+24-120mm F4 G Nano- Chính hãng VIC_1.jpg', 10),
(38, 'Nikon D750+24-120mm F4 G Nano- Chính hãng VIC_2.jpg', 10),
(39, 'Nikon D750+24-120mm F4 G Nano- Chính hãng VIC_3.jpg', 10),
(40, 'Nikon D750+24-120mm F4 G Nano- Chính hãng VIC_4.jpg', 10),
(41, 'Máy Ảnh Sony Alpha A6000 + 16-50mm - Xám_1.png', 11),
(42, 'Máy Ảnh Sony Alpha A6000 + 16-50mm - Xám_2.jpg', 11),
(43, 'Máy Ảnh Sony Alpha A6000 + 16-50mm - Xám_3.jpg', 11),
(44, 'Máy Ảnh Sony Alpha A6000 + 16-50mm - Xám_4.jpg', 11),
(45, 'Máy Ảnh Sony Alpha A6300 Body_1.jpg', 12),
(46, 'Máy Ảnh Sony Alpha A6300 Body_2.jpg', 12),
(47, 'Máy Ảnh Sony Alpha A6300 Body_3.jpg', 12),
(48, 'Máy Ảnh Sony Alpha A6300 Body_4.jpg', 12),
(49, 'Oppo F7 128GB_1.jpg', 13),
(50, 'Oppo F7 128GB_2.jpg', 13),
(51, 'Oppo F7 128GB_3.jpg', 13),
(52, 'Oppo F7 128GB_4.jpg', 13),
(53, 'OPPO A83_1.jpg', 14),
(54, 'OPPO A83_2.jpg', 14),
(55, 'OPPO A83_3.jpg', 14),
(56, 'OPPO A83_4.jpg', 14),
(57, 'Samsung Galaxy S9+ Lilac Purple 128GB_1.jpg', 15),
(58, 'Samsung Galaxy S9+ Lilac Purple 128GB_2.jpg', 15),
(59, 'Samsung Galaxy S9+ Lilac Purple 128GB_3.jpg', 15),
(60, 'Samsung Galaxy S9+ Lilac Purple 128GB_4.jpg', 15),
(61, 'Samsung Galaxy A8 (2018)_1.jpg', 16),
(62, 'Samsung Galaxy A8 (2018)_2.jpg', 16),
(63, 'Samsung Galaxy A8 (2018)_3.jpg', 16),
(64, 'Samsung Galaxy A8 (2018)_4.jpg', 16),
(65, 'iPhone X 64GB_1.jpg', 17),
(66, 'iPhone X 64GB_2.jpg', 17),
(67, 'iPhone X 64GB_3.jpg', 17),
(68, 'iPhone X 64GB_4.jpg', 17),
(69, 'iPhone 8 Plus 64GB PRODUCT RED_1.png', 18),
(70, 'iPhone 8 Plus 64GB PRODUCT RED_2.png', 18),
(71, 'iPhone 8 Plus 64GB PRODUCT RED_3.png', 18),
(72, 'iPhone 8 Plus 64GB PRODUCT RED_4.png', 18);

-- --------------------------------------------------------

--
-- Table structure for table `hinhthucthanhtoan`
--

CREATE TABLE IF NOT EXISTS `hinhthucthanhtoan` (
  `HTTT_Ma` tinyint(4) NOT NULL AUTO_INCREMENT,
  `HTTT_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HTTT_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hinhthucthanhtoan`
--

INSERT INTO `hinhthucthanhtoan` (`HTTT_Ma`, `HTTT_Ten`) VALUES
(1, 'Tiền Mặt'),
(2, 'Chuyển Khoản'),
(3, 'PayPal');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `KH_User` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `KH_Password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `KH_HoTen` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KH_GioiTinh` tinyint(4) DEFAULT NULL,
  `KH_DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KH_DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KH_Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KH_NgaySinh` int(11) DEFAULT NULL,
  `KH_ThangSinh` int(11) DEFAULT NULL,
  `KH_NamSinh` int(11) DEFAULT NULL,
  `KH_MaKichHoat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `KH_TrangThai` int(11) DEFAULT NULL,
  `KH_QuanTri` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`KH_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`KH_User`, `KH_Password`, `KH_HoTen`, `KH_GioiTinh`, `KH_DiaChi`, `KH_DienThoai`, `KH_Email`, `KH_NgaySinh`, `KH_ThangSinh`, `KH_NamSinh`, `KH_MaKichHoat`, `KH_TrangThai`, `KH_QuanTri`) VALUES
('admin', 'e6e061838856bf47e1de730719fb2609', 'Ong Thanh Toàn', 1, 'Cần Thơ', '0977531528', 'Toanlh3@gmail.com', 14, 10, 1997, '0', 1, 1),
('user1', 'e10adc3949ba59abbe56e057f20f883e', 'Ong Thanh Toàn', 0, 'Sóc Trăng', '0977531528', 'toanlh5@gmail.com', 14, 10, 1997, '71bfd6938fa000c9cf8125844ac63d66', 1, 0),
('user2', 'e10adc3949ba59abbe56e057f20f883e', 'Thanh Toàn', 0, 'Cần thơ', '0977531528', 'toanlh1@gmail.com', 15, 11, 2000, 'ef9d9c6489cbfeef5c3266df97b7f887', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `KM_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `KM_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KM_NoiDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KM_TuNgay` date DEFAULT NULL,
  `KM_DenNgay` date DEFAULT NULL,
  PRIMARY KEY (`KM_Ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `LSP_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `LSP_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LSP_MoTa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LSP_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`LSP_Ma`, `LSP_Ten`, `LSP_MoTa`) VALUES
(1, 'LapTop', 'Máy tính xách tay hay máy vi tính xách tay, là một máy tính cá nhân gọn nhỏ có thể mang xách được. Nó thường có trọng lượng nhẹ, tùy thuộc vào hãng sản xuất và kiểu máy dành cho các mục đích sử dụng khác nhau.'),
(2, 'Máy Ảnh', 'Máy ảnh hay máy chụp hình là một dụng cụ dùng để thu ảnh thành một ảnh tĩnh hay thành một loạt các ảnh chuyển động (gọi là phim hay video).'),
(3, 'Điện Thoại Thông Minh', 'Điện thoại thông minh hay điện thoại tinh khôn là khái niệm để chỉ loại điện thoại thích hợp một nền tảng hệ điều hành di động với nhiều tính năng hỗ trợ tiên tiến về điện toán và kết nối dựa trên nền tảng cơ bản của điện thoại di động thông thường.');

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE IF NOT EXISTS `nhasanxuat` (
  `NSX_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `NSX_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NSX_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`NSX_Ma`, `NSX_Ten`) VALUES
(1, 'ACER'),
(2, 'ASUS'),
(3, 'DELL'),
(4, 'CANON'),
(5, 'NIKON'),
(6, 'SONY'),
(7, 'OPPO'),
(8, 'SAMSUNG'),
(9, 'APPLE');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `SP_Ma` int(11) NOT NULL AUTO_INCREMENT,
  `SP_Ten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SP_GiaHienTai` int(11) DEFAULT NULL,
  `SP_GiaCu` int(11) DEFAULT NULL,
  `SP_MoTa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SP_MoTa_ChiTiet` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SP_NgayCapNhat` date DEFAULT NULL,
  `SP_SoLuong` int(11) DEFAULT NULL,
  `LSP_Ma` int(11) NOT NULL,
  `NSX_Ma` int(11) NOT NULL,
  `KM_Ma` int(11) DEFAULT NULL,
  PRIMARY KEY (`SP_Ma`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`SP_Ma`, `SP_Ten`, `SP_GiaHienTai`, `SP_GiaCu`, `SP_MoTa`, `SP_MoTa_ChiTiet`, `SP_NgayCapNhat`, `SP_SoLuong`, `LSP_Ma`, `NSX_Ma`, `KM_Ma`) VALUES
(1, 'Acer A315-51-3932', 9990000, 9100000, 'Nằm trong phân khúc laptop giá rẻ nhưng có vẻ ngoài cứng cáp cùng một cấu hình hoạt động ổn định, Laptop Acer A315-51-3932/Core i3-6006U là sự lựa chọn lý tưởng cho người dùng văn phòng và sinh viên có nhu cầu sử dụng phổ thông.', 'CPU : Intel Core i3, \r\nRAM : 4 GB Onboard (1 slots), \r\nDDR4, Ổ cứng : HDD  1 TB SATA3 (5400rpm), \r\nMàn hình : 15.6 inch 1366 x 768 pixels, \r\nCard màn hình : Intel® HD Graphics Tích hợp, \r\nCổng kết nối : LAN : 10/100/1000 MbpsWIFI : 802.11, \r\nHệ điều hành : Linux, \r\nTrọng lượng : 1.89 Kg', '2018-07-06', 10, 1, 1, NULL),
(2, 'Acer Nitro 5 AN515-51-79WJ', 24990000, 25000000, 'Mặc dù dòng sản phẩm gaming laptop của Acer vào Việt Nam chậm hơn các thương hiệu lớn chuyên game khác, nhưng Acer đã nhanh chóng có được chỗ đứng trên thị trường nhờ chiến lược sản phẩm rõ ràng. Hướng đi của Acer là tạo ra những chiếc laptop chơi game hiệu năng cao, giá thành phải chăng và có chất lượng hoàn thiện tốt, dễ chiếm được cảm tình của game thủ. Một trong số những sản phẩm nổi bật của Acer thời điểm này là chiếc laptop chơi game tầm trung Acer Nitro 5 AN515-51-79WJ, lựa chọn hàng đầu ', 'Màn Hình : 15.6 inch FHD LED-backlit TFT LCD,\r\nCPU : Intel Core i7-7700HQ,\r\nRam : 8 GB DDR4 2133MHz,\r\nVGA : NVIDIA GeForce GTX 1050Ti 4GB,\r\nHĐH : LINUX (Endless OS),\r\nNặng : 2.42 Kg', '2018-07-07', 10, 1, 1, NULL),
(3, 'Asus Vivobook S14 S410UA', 15990000, 17000000, 'Là thành viên tiếp theo trong dòng series Vivobook của Asus - Asus Vivobook S14 S410UA sở hữu cấu hình siêu mạnh cùng thiết kế gọn nhẹ và nhiều tính năng vượt trội. Đây sẽ là sự lựa chọn hoàn hảo nếu bạn đang có mong muốn sở hữu một chiếc laptop đáp ứng đầy đủ các nhu cầu làm việc cũng như giải trí.', 'Màn Hình : 14 inch Full HD Wide View,\r\nCPU : Intel Core i3-7100U,\r\nRam : 4 GB DDR4,\r\nVGA : Intel Graphics 620,\r\nHĐH : Windows 10 (64bit),\r\nNặng : 1.43 kg', '2018-07-05', 10, 1, 2, NULL),
(4, 'Asus UX430UA-GV261T', 21990000, 23000000, 'Zenbook từ lâu đã được biết đến là dòng laptop cao cấp và sang trọng dành cho doanh nhân của Asus, nhưng với mẫu Asus ZenBook UX430UA thì vẻ đẹp tinh tế và lịch lãm này đã được nâng lên một tầm cao mới như Asus từng tuyên bố “chúng tôi đã cố gắng tạo một chiếc Zenbook 13 inch thân thiện với du lịch và sở hữu màn hình 14 inch thân thiện với công việc”.', 'Màn Hình: 14 inch Full HD Anti-Glare,\r\nCPU: Intel Core i5-8250U,\r\nRam: 8 GB DDR4 2133 MHz,\r\nVGA: Intel UHD Graphics 620,\r\nHĐH: Windows 10 (64bit),\r\nNặng: 1.30 Kg', '2018-06-05', 10, 1, 2, NULL),
(5, 'Dell Ins N7370', 25990000, 27000000, 'Dell Inspiron N7370 với thiết kế sang trọng hướng đến người dùng cần sự gọn nhẹ, tính di động linh hoạt cả trong công việc lẫn học tập, bên trong được trang bị bộ vi xử lí Intel Core i5 thế hệ thứ 8 cho người dùng trải nghiệm tuyệt vời cũng như đáp ứng các nhu cầu giải trí, chơi game có đồ họa cao một cách mượt mà trên nền Windows 10.', 'Màn Hình : 13.3 inch  IPS Truelife LED-Backlit Narrow ,\r\nCPU : Intel Core i5-8250U,\r\nRam : 8 GB DDR4 2400 MHz,\r\nVGA : Intel(R) UHD Graphics 620,\r\nHĐH : Windows 10 Home-HE (64bit) Single Language English,\r\nNặng : 1.50 Kg', '2018-06-08', 10, 1, 3, NULL),
(6, 'Dell Vostro 5471', 17990000, 19000000, 'Dell Vostro 5471 – chiếc laptop thuộc phân khúc tầm trung đến từ nhà sản xuất Dell, sở hữu thiết kế hiện đại với viền màn hình siêu mỏng, cùng cấu hình mạnh mẽ và ấn tượng. Đây có thể coi là một sự lựa chọn hoàn hảo nếu bạn đang muốn sở hữu cho mình một chiếc laptop ở phân khúc tầm trung, có thể khiến bạn thỏa mãn cả về thiết kế lẫn cấu hình.', 'Màn Hình : 14.0 inchs   Anti-Glare LED-Backlit Display,\r\nCPU : Intel Core i5-8250U,\r\nRam : 4 GB DDR4 2400 MHz,\r\nVGA : Intel(R) UHD Graphics 620,\r\nHĐH : Windows 10 Home Single Language English,\r\nNặng : 1.669 Kg', '2018-04-10', 10, 1, 3, NULL),
(7, 'Canon M10 KIT 15-45mm', 6490000, 10000000, 'Máy ảnh CANON EOS M1O KIT 15-45MM là mẫu máy gọn nhẹ nhất trong dòng EOS nhưng vẫn duy trì được chất lượng hình ảnh không hề thua kém các dòng máy khác. Cảm biến APS-C lớn và hệ thống lấy nét tự động tốc độ cao Hybrid CMOS AF II giúp bạn bắt được nhiều cơ hội chụp hình hơn. Ngoài ra, máy còn sở hữu màn hình LCD cảm ứng lật 180° cùng chế độ Self Portrait, mang lại cho bạn những bức ảnh chụp “tự sướng” tuyệt hảo.', 'Model:	EOS M10 KIT 15-45MM,\r\nNhà sản xuất:	Canon,\r\nXuất xứ:	Nhật Bản,\r\nThời gian bảo hành:	24 tháng,\r\nĐịa điểm bảo hành:	Nguyễn Kim,\r\nLoại máy ảnh:	Chuyên nghiệp,\r\nĐộ phân giải máy ảnh:	18,\r\nBộ xử lý hình ảnh:	DIGIC 6,\r\nCảm biến hình ảnh:	CMOS,\r\nChế độ tự động lấy nét:	Có', '2018-10-10', 10, 2, 4, NULL),
(8, 'Canon 750D + Lens 18-55', 12290000, 14000000, 'Canon 750D dòng máy ảnh DSLR sở hữu cảm biến 24.2 MP kích thước giúp mang lại những hình ảnh đẹp có kích thước lớn. Kết hợp độ phân giải lớn cùng bộ xử lý hình ảnh DIGIC 6 giúp  nâng cao tốc độ xử lý và chất lượng hình ảnh cao. Ngoài ra, bạn cũng có thể quay các đoạn video Full HD chuyên nghiệp hơn.', 'Model: EOS 750D / 18-55 IS STM ,\r\nMàu sắc: Đen ,\r\nNhà sản xuất: Canon,\r\n Xuất xứ: Nhật Bản ,\r\nThời gian bảo hành: 24 tháng ,\r\nĐịa điểm bảo hành: Nguyễn Kim ,\r\nLoại máy ảnh: Chuyên nghiệp ,\r\nĐộ phân giải máy ảnh: 24.2 ,\r\nBộ xử lý hình ảnh: DIGIC 6 ,\r\nCảm biến hình ảnh: CMOS,', '2018-10-12', 10, 2, 4, NULL),
(9, 'NIKON DI.CAMERA D5600', 15900000, 17000000, 'Máy ảnh Nikon sở hữu đường nét tinh tế, chắc chắn được nhà sản xuất trau chuốt và thiết kế cẩn trọng, tỉ mỉ từng đường nét, hình dáng thon gọn, trọng lượng nhẹ.', 'Hãng sản xuất: Nikon ,\r\nCảm biến ISO: 100-25.600 ,\r\nĐộ phân giải: 24MP ,\r\nTốc độ cửa trập: 1/4000-30 giây ,\r\nKết nối: USB 2.0 Bluetooth 4.1 LE, Wi-Fi 801.11b/g/n,', '2018-08-05', 10, 2, 5, NULL),
(10, 'Nikon D750+24-120mm F4', 48000000, 50000000, 'ikon vừa bổ sung mẫu máy ảnh DSLR full-frame mang tên D750 hướng đến phân khúc khách hàng có nhu cầu cao hơn so với D610 nhưng lại không đủ khả năng để và e ngại chiếc D810 có độ phân giải đến 36MP. Về cơ bản, Nikon D750 vẫn sử dụng cảm biến ảnh CMOS full-frame độ phân giải 24,3MP tương đương với Nikon D610 nhưng đã sở hữu bộ xử lý hình ảnh EXPEED 4 giống với Nikon D810, chính vì vậy phần nào tính năng nó sẽ giống với dòng máy này.', 'Máy ảnh: phản xạ ống kính đơn (DSLR) hoán đổi lens Khung thân máy làm bằng carbon và hợp kim ma-giê nguyên khối ,\r\nCảm biến: CMOS FX full-frame 24.3 megapixel ,\r\nBộ xử lí hình ảnh hai nhân EXPEED 4 ,\r\nMàn hình LCD 3.2" độ phân giải 921.000 pixel ,\r\nDải ISO từ 100 - 25.600 mở rộng 50 (chế độ LO) - 51.200 (chế độ Hi-2),\r\nChụp liên tiếp 6.5 fps (tối đa),\r\nHệ thống lấy nét 51 điểm Khe thẻ nhớ: hai khe SDXC/SDHC hỗ trợ tốc độ UHS-1 Giao tiếp USB, HDMI Pin: EN-EL15, chụp được 1.230 tấm (tiêu chuẩn CIP', '2018-07-10', 10, 2, 5, NULL),
(11, 'Máy Ảnh Sony Alpha A6000', 12490000, 13000000, 'Máy ảnh Sony A6000 có thiết kế thân máy khá mỏng, bán cầm tay dày dặn giúp bạn có thể cầm chắc tay khi sử dụng, hạn chế trơn trượt cùng với trọng lượng khoảng 344g nhỏ gọn để bạn thoải mái mang theo bên mình khi đi du lịch, làm việc', 'Cảm biến: APS HD CMOS 24.3MP,\r\nBộ xử lý hình ảnh: BIONZ X,\r\nISO: 100 - 25600,\r\nHệ thống lấy nét: 25 điểm,\r\nTốc độ lấy nét cực nhanh 0.06 giây,\r\nChụp ảnh liên tục: 11 ảnh/ giây,\r\nChuyển hình nhanh với kêt nối Wifi,', '2018-10-10', 10, 2, 6, NULL),
(12, ' Sony Alpha A6300 Body', 16990000, 18000000, 'Máy Ảnh Sony Alpha A6300 Body mang đến cho bạn thêm một sự lựa chọn trong dòng máy ảnh không gương lật.  Máy Ảnh Sony Alpha A6300 sẽ mang đến cho bạn nhiều tính năng mới mẻ hơn nhằm mang đến cho người dùng những bức ảnh chân thực nhất. Bạn có thể lựa chọn các ống lens khác nhau để phù hợp với nhu cầu sử dụng của mình.', 'Kích thước màn hình: 3 inch ,\r\nSKU: 6000946110263 ,\r\nThương hiệu: Sony ,\r\nSản xuất tại: Thái Lan ,\r\nTrọng lượng: 404g ,\r\nKích thước Xấp xỉ: 120 x 66.9 x 48.8 mm ,\r\nCamera: 24.2MP,', '2018-12-12', 10, 2, 6, NULL),
(13, 'Oppo F7 128GB', 9990000, 11000000, 'Tiếp nối sự thành công của OPPO F5 thì OPPO tiếp tục giới thiệu OPPO F7 128 GB với mức giá tương đương nhưng mang trong mình thiết kế hoàn toàn mới cũng nhiều cải tiến đáng giá.', 'Thiết kế nguyên khối kim loại,\r\nMàn hình: 6.23 inch,\r\nCamera Trước/Sau: 16MP/25MP,\r\nCPU: MediaTek P60,\r\nBộ Nhớ: 128GB,\r\nRAM: 6GB,\r\nSIM: 2 Nano SIM,\r\nTính năng: Mở khóa bằng khuôn mặt  mở khóa bằng vân tay,', '2018-01-01', 10, 3, 7, NULL),
(14, 'OPPO A83', 4990000, 5500000, 'OPPO A83 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.', 'Thiết kế: Nguyên khối,\r\nMàn hình: 5.7 inch 1440 x 720 (HD+),\r\nCamera Trước: 8 MP (Hỗ trợ công nghệ AI),\r\nCamera Sau: 13 MP,\r\nCPU: Mediatek Helio P23 8 nhân 64-bit,\r\nBộ Nhớ: 16GB,\r\nRAM: 2GB,\r\nSIM tương thích: Nano SIM,\r\nTính năng: Chạm 2 lần sáng màn hình Chặn tin nhắn cuộc gọi,', '2018-02-02', 10, 3, 7, NULL),
(15, 'Samsung Galaxy S9+ Lilac ', 24490000, 25000000, 'Thế hệ điện thoại Samsung Galaxy S tiếp tục được Samsung nâng lên một tầm cao mới. Với Samsung Galaxy S9+ Lilac Purple 128 GB, bạn sẽ “nhìn thấy điều không thể” nhờ bộ phận camera được cải tiến toàn diện.', 'Màn Hình: 5.8 inch,\r\nCamera: Chính: 12.0 MP, Phụ: 8.0 MP,\r\nPin: 3000 mAh,\r\nRam: 4 GB,\r\nCPU : Exynos 9810,\r\nHĐH: Android 8.0,', '2018-03-03', 10, 3, 8, NULL),
(16, 'Samsung Galaxy A8 (2018)', 10990000, 11000000, 'Bộ đôi Samsung A8 2018 và Galaxy A8+ 2018 chính thức trình làng với khả năng selfie kép, cùng màn hình tỷ lệ 18.5: 9 cho trải nghiệm xem rộng hơn. Với thiết kế hiện đại, hứa hẹn bộ đôi sản phẩm này sẽ tiếp bước sự thành công của Samsung tại thị trường Việt Nam.', 'Màn Hình: 5.6 inch,\r\nCamera: Chính: 16.0 MP  Phụ: Dual 16.0 MP + 8.0 MP,\r\nPin: 3000 mAh,\r\nRam: 4 GB,\r\nCPU : Exynos 7885,\r\nHĐH: Android 7,', '2018-04-04', 10, 3, 8, NULL),
(17, 'iPhone X 64GB', 29990000, 31000000, 'Đã lâu lắm rồi Apple mới ra mắt một sản phẩm với thiết kế đột phá và liều lĩnh. Dù vấp phải khá nhiều ý kiến trái chiều nhưng cũng không thể phủ nhận độ hấp dẫn của chiếc iPhone thế hệ thứ 10 này. Công nghệ bảo mật mới, loại bỏ nút home truyền thống, camera với những tính năng độc quyền, tất cả đã khiến người dùng đứng ngồi không yên cho đến khi được trên tay.', 'Màn hình : 2436 x 1125 pixel ,\r\nCamera trước : 7.0 MP ,\r\nCamera sau : Dual 12.0 MP ,\r\nRAM : 3 GB ,\r\nBộ nhớ trong : 64 GB ,\r\nCPU : Apple A11 Bionic 6, \r\nGPU : Apple GPU (three-core graphics) ,\r\nDung lượng pin : 2716 mAh', '2018-05-05', 10, 3, 9, NULL),
(18, 'iPhone 8 Plus 64GB RED', 23990000, 25000000, 'Apple vừa giới thiệu phiên bản màu đỏ PRODUCT RED cho bộ đôi iPhone 8 và 8 Plus. Điểm đặc biệt, sản phẩm nằm trong mối hợp tác giữa Táo khuyết với (RED), tổ chức gây quỹ phòng chống HIV/AIDS tại châu Phi và một phần doanh thu bán iPhone 8 và iPhone 8 Plus RED - Đỏ sẽ được quyên góp cho quỹ từ thiện của (RED).', 'Màn Hình: 5.5 inchs HD Retina,\r\nCamera: 7.0 MP/ Dual 12.0 MP,\r\nPin: 2675 mAh,\r\nRam: 3 GB,\r\nCPU : Apple A11 Bionic,\r\nHĐH: iOS 11,', '2018-06-06', 10, 3, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sp_dondathang`
--

CREATE TABLE IF NOT EXISTS `sp_dondathang` (
  `SP_Ma` int(11) NOT NULL,
  `DH_Ma` int(11) NOT NULL,
  `SP_DH_SoLuong` int(11) DEFAULT NULL,
  `SP_DH_DonGia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sp_dondathang`
--

INSERT INTO `sp_dondathang` (`SP_Ma`, `DH_Ma`, `SP_DH_SoLuong`, `SP_DH_DonGia`) VALUES
(4, 8, 1, 21990000),
(18, 9, 1, 23990000),
(8, 9, 1, 12290000),
(14, 10, 1, 4990000),
(4, 11, 2, 21990000),
(18, 11, 1, 23990000),
(17, 11, 1, 29990000),
(8, 11, 1, 12290000),
(3, 12, 1, 15990000),
(18, 12, 1, 23990000),
(15, 12, 1, 24490000),
(8, 12, 1, 12290000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
