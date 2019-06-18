-- BẢNG LOẠI TIN---------------------------------------
CREATE TABLE IF NOT EXISTS `loaitin` (
  `idLT` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(100) NOT NULL DEFAULT '',
  `BienTapVien` varchar(255) NOT NULL,
  `ThuTu` tinyint(11) NOT NULL DEFAULT '0',
  `NgayTao` varchar(20) NOT NULL DEFAULT '19/06/2019',
  `idTL` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idLT`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

INSERT INTO `loaitin` (`idLT`, `Ten`, `BienTapVien`, `ThuTu`, `idTL`) VALUES
(1, 'Giáo Dục', 'Hoàng Long', 1, 1),
(2, 'Nhịp Điệu Trẻ', 'Kông Kiệt', 2, 1),
(3, 'Du Lịch', 'Bảo Lộc', 3, 1),
(4, 'Du Học', 'Kiều My', 4, 1),
(5, 'Cuộc Sống Đó Đây', 'Khánh Linh', 1, 2),
(6, 'Ảnh', 'Phi Linh', 2, 2);

-- BẢNG THỂ LOẠI---------------------------------------
CREATE TABLE `theloai` (
  `idTL` int(11) NOT NULL,
  `TenTL` varchar(255) NOT NULL DEFAULT '',
  `TenTL_KhongDau` varchar(255) NOT NULL,
  `ThuTu` int(11) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `theloai` (`idTL`, `TenTL`, `TenTL_KhongDau`, `ThuTu`, `AnHien`) VALUES
(1, 'Thể thao', 'The-Thao', 1, 1),
(2, 'Giải trí', 'Giai-Tri', 2, 1),
(3, 'Kinh doanh', 'Kinh-Doanh', 3, 1),
(4, 'Sức khỏe', 'Suc-Khoe', 4, 1),
(5, 'Pháp luật', 'Phap-Luat', 5, 0),
(6, 'Đời sống', 'Doi-Song', 6, 0),
(7, 'Khoa học', 'Khoa-Hoc', 7, 0);
