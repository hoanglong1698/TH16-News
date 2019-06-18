-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2019 lúc 05:26 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbnews`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `hoten` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `noidung` text NOT NULL,
  `idTin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE IF NOT EXISTS `loaitin` (
  `idLT` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(100) NOT NULL DEFAULT '',
  `BienTapVien` varchar(255) NOT NULL,
  `ThuTu` tinyint(11) NOT NULL DEFAULT '0',
  `NgayTao` varchar(20) NOT NULL DEFAULT '19/06/2019',
  `idTL` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idLT`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`idLT`, `Ten`, `BienTapVien`, `ThuTu`, `idTL`) VALUES
(1, 'Giáo Dục', 'Hoàng Long', 1, 1),
(2, 'Nhịp Điệu Trẻ', 'Kông Kiệt', 2, 1),
(3, 'Du Lịch', 'Bảo Lộc', 3, 1),
(4, 'Du Học', 'Kiều My', 4, 1),
(5, 'Cuộc Sống Đó Đây', 'Khánh Linh', 1, 2),
(6, 'Ảnh', 'Phi Linh', 2, 2);
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTL` int(11) NOT NULL,
  `TenTL` varchar(255) NOT NULL DEFAULT '',
  `TenTL_KhongDau` varchar(255) NOT NULL,
  `ThuTu` int(11) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTL`, `TenTL`, `TenTL_KhongDau`, `ThuTu`, `AnHien`) VALUES
(1, 'Thể thao', 'The-Thao', 1, 1),
(2, 'Giải trí', 'Giai-Tri', 2, 1),
(3, 'Kinh doanh', 'Kinh-Doanh', 3, 1),
(4, 'Sức khỏe', 'Suc-Khoe', 4, 1),
(5, 'Pháp luật', 'Phap-Luat', 5, 1),
(6, 'Đời sống', 'Doi-Song', 6, 1),
(7, 'Khoa học', 'Khoa-Hoc', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL DEFAULT '',
  `TieuDe_KhongDau` varchar(255) NOT NULL,
  `TomTat` varchar(1000) DEFAULT NULL,
  `urlHinh` varchar(255) DEFAULT NULL,
  `Ngay` date DEFAULT '0000-00-00',
  `idUser` int(11) NOT NULL DEFAULT '0',
  `Content` text,
  `idLT` int(11) NOT NULL DEFAULT '0',
  `idTL` int(11) DEFAULT '1',
  `SoLanXem` int(11) DEFAULT '0',
  `TinNoiBat` tinyint(1) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `DienThoai` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgayDangKy` date NOT NULL DEFAULT '0000-00-00',
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` tinyint(1) DEFAULT NULL,
  `VipPresent` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idLT`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTL`),
  ADD UNIQUE KEY `TenTL` (`TenTL`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `idLT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTL` int(11) NOT NULL AUTO_INCusersusersREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1631;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

CREATE TABLE `tags` (
  `idTag` int(11) NOT NULL auto_increment,
  primary key(idTag),
  `TenTag` varchar(255) NOT NULL DEFAULT '',
  `NgayTao` varchar(255) NOT NULL DEFAULT '19-06-2019'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `tags` (`TenTag`, `NgayTao`) VALUES
('Donald Trump', '16-06-2019'),
('iPhoneX', '16-06-2019'),
('Truong Giang', '16-06-2019'),
('Tu Nhien', '17-06-2019'),
('Apple', '18-06-2019'),
('Song', '19-06-2019'),
('BlackPink', '19-06-2019');

ALTER TABLE `tags`
  ADD PRIMARY KEY (`idTag`);

CREATE TABLE `editors` (
  `idEditor` int(11) NOT NULL auto_increment,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `DienThoai` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgaySinh` date DEFAULT '2000-10-10',
  `GioiTinh` varchar(3) DEFAULT NULL,
  `TrangThai` varchar(20) default 'Hoạt động',
  PRIMARY KEY (`idEditor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `editors` (`HoTen`, `Username`, `Password`, `DiaChi`, `DienThoai`, `Email`, `GioiTinh`, `TrangThai`) values
('Hoàng Long', 'username','password','diachi','dienthoai','email','Nam','Hoạt động'),
('Kông Kiệt', 'username','password','diachi','dienthoai','email','Nam','Hoạt động'),
('Khánh Linh', 'username','password','diachi','dienthoai','email','Nữ','Hoạt động'),
('Kiều My', 'username','password','diachi','dienthoai','email','Nữ','Hoạt động'),
('Phi Linh', 'username','password','diachi','dienthoai','email','Nữ','Hoạt động'),
('Bảo Lộc', 'username','password','diachi','dienthoai','email','Nam','Hoạt động');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
