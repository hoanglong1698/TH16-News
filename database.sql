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

REATE TABLE `writers` (
  `idWriter` int(11) NOT NULL auto_increment,
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


CREATE TABLE IF NOT EXISTS `tin` (
  `idTin` int(11) NOT NULL AUTO_INCREMENT,
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
  `AnHien` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idTin`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1631 ;

INSERT INTO `tin` (`TieuDe`, `TieuDe_KhongDau`, `TomTat`, `urlHinh`, `Ngay`, `idUser`, `Content`, `idLT`, `idTL`, `SoLanXem`, `TinNoiBat`, `AnHien`) VALUES
('Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán.\r\n', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', NULL, 22, '<h1 class="Title">Phương ph&aacute;p Mathnasium gi&uacute;p trẻ y&ecirc;u th&iacute;ch m&ocirc;n  to&aacute;n</h1>\r\n<h2 class="Lead">Phương ph&aacute;p dạy to&aacute;n Mathnasium với 5 kỹ thuật giảng  dạy bổ sung nhau, gi&uacute;p trẻ em tiếp thu kiến thức to&aacute;n hiệu quả, kh&ocirc;ng cảm thấy  &aacute;p lực v&agrave; nh&agrave;m ch&aacute;n.</h2>\r\n<p class="Normal">Phương ph&aacute;p dạy n&agrave;y được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi  &ocirc;ng Larry Martinek - gi&aacute;o sư to&aacute;n học xuất sắc của bang California, Mỹ. Trong  trung hạn, Mathnasium gi&uacute;p học sinh ph&aacute;t triển tư duy, n&acirc;ng cao chỉ số th&ocirc;ng  minh, đồng thời x&acirc;y dựng l&ograve;ng tin v&agrave;o ch&iacute;nh bản th&acirc;n m&igrave;nh. Mục ti&ecirc;u l&acirc;u d&agrave;i v&agrave;  cao nhất của n&oacute; l&agrave; gi&uacute;p từng c&aacute; nh&acirc;n trở th&agrave;nh người tự tin, năng động v&agrave; th&agrave;nh  c&ocirc;ng trong cuộc sống.</p>\r\n<p class="Normal">Trong 5 kỹ thuật giảng dạy, kỹ thuật tư duy gi&uacute;p c&aacute;c  em tập th&oacute;i quen suy nghĩ, từ đ&oacute; x&acirc;y dựng sự nhạy b&eacute;n v&agrave; tự tin với c&aacute;c con số.  Kỹ thuật diễn đạt bằng ng&ocirc;n từ l&agrave;m học sinh tập th&oacute;i quen v&agrave; kỹ năng diễn giải  bằng lời những &yacute; tưởng, suy luận của m&igrave;nh. Ngo&agrave;i ra, kỹ thuật quan s&aacute;t h&igrave;nh ảnh  trực quan, sử dụng gi&aacute;o cụ, thực h&agrave;nh to&aacute;n viết cung cấp nguồn gi&aacute;o tr&igrave;nh v&agrave; b&agrave;i  tập phong ph&uacute;, đa dạng để trẻ c&oacute; thể thực h&agrave;nh v&agrave; ph&aacute;t triển kiến thức, tư duy  v&agrave; kỹ năng giải to&aacute;n.</p>\r\n<table border="0" cellspacing="0" cellpadding="3" width="1" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="../upload/hinh.jpg" alt="" width="400" height="269" /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Gi&aacute;o tr&igrave;nh Mathnasium gồm 3 loại. Loại thứ nhất l&agrave;  c&aacute;c b&agrave;i tập PK, l&agrave; b&agrave;i tập &ldquo;theo đơn&rdquo;. Đ&acirc;y l&agrave; hệ thống c&aacute;c b&agrave;i tập chuy&ecirc;n đề  được ph&acirc;n cho từng học sinh dựa tr&ecirc;n kết quả kiểm tra đầu kỳ của học sinh đ&oacute;.  Loại b&agrave;i tập n&agrave;y gi&uacute;p ho&agrave;n thiện những mặt c&ograve;n hạn chế, v&agrave; ph&aacute;t triển c&aacute;c mặt  mạnh của từng em. Từ đ&oacute;, phương ph&aacute;p x&acirc;y dựng nền tảng to&aacute;n vững chắc cho trẻ.  Loại thứ hai l&agrave; b&agrave;i tập Work Out Book - r&egrave;n luyện tư duy số. Đ&acirc;y l&agrave; loại được  thiết kế tổng hợp, với những kh&aacute;i niệm mở rộng, gi&uacute;p học sinh ph&aacute;t triển &ldquo;tư duy  số&rdquo;, từ đ&oacute; ph&aacute;t triển tr&iacute; tuệ tốt nhất. Loại thứ ba l&agrave; Focus-on, chuy&ecirc;n s&acirc;u về  những chủ đề nhất định hoặc củng cố c&aacute;c lỗ hổng v&agrave; điểm c&ograve;n hạn chế, n&acirc;ng cao  kiến thức theo chủ đề.</p>\r\n<p class="Normal">Quy tr&igrave;nh đ&agrave;o tạo của phương ph&aacute;p gồm 3 bước. Đầu  ti&ecirc;n l&agrave; bước kiểm tra đầu kỳ. Học sinh sẽ được kiểm tra viết v&agrave; vấn đ&aacute;p để x&aacute;c  định kiến thức, tr&igrave;nh độ, những điểm mạnh v&agrave; điểm cần phải củng cố, ph&aacute;t triển  th&ecirc;m. Dựa v&agrave;o kết quả n&agrave;y, kế hoạch học tập sẽ được thiết kế cho từng em. Đ&acirc;y  c&ograve;n được gọi l&agrave; phương ph&aacute;p học to&aacute;n hướng c&aacute; nh&acirc;n. Bước 2, thực h&agrave;nh dạy v&agrave; học  theo kế hoạch học tập. Trong một buổi học, mỗi gi&aacute;o vi&ecirc;n sẽ giảng dạy v&agrave; k&egrave;m cặp  4-5 học sinh theo phương ph&aacute;p dạy từ học sinh n&agrave;y đến học sinh kh&aacute;c. B&ecirc;n cạnh  đ&oacute;, thầy, c&ocirc; vẫn quan s&aacute;t, hỗ trợ học sinh khi c&aacute;c em l&agrave;m b&agrave;i tập độc lập.  Phương ph&aacute;p đảm bảo t&iacute;nh độc lập trong học tập v&agrave; sự giảng dạy k&egrave;m cặp của gi&aacute;o  vi&ecirc;n đối với từng em. Bước tiếp theo l&agrave; đ&aacute;nh gi&aacute; sự tiến bộ của học sinh. Cứ sau  3 th&aacute;ng, c&aacute;c em sẽ được kiểm tra để đ&aacute;nh gi&aacute; sự tiến bộ. Từ đ&oacute; gi&aacute;o vi&ecirc;n đưa ra  một kế hoạch học tập mới cao hơn. Quy tr&igrave;nh n&agrave;y được lặp đi lặp lại trong suốt  qu&aacute; tr&igrave;nh trẻ học với Mathnasium v&agrave; từng bước x&acirc;y dựng v&agrave; n&acirc;ng cao tư duy số v&agrave;  kiến thức to&aacute;n của từng em.</p>\r\n<p class="Normal">Hiện phương ph&aacute;p n&agrave;y được &aacute;p dụng tại gần 400 trung  t&acirc;m dạy to&aacute;n Mathnasium ở Mỹ v&agrave; c&aacute;c quốc gia kh&aacute;c tr&ecirc;n thế giới. Hai trung t&acirc;m  Mathnasium đầu ti&ecirc;n tại Việt Nam ở số 3 Ng&ocirc; Thời Nhiệm, quận 3 v&agrave; 26/41-43-45  Nguyễn Minh Ho&agrave;ng, T&acirc;n B&igrave;nh, TP HCM sẽ khai giảng c&aacute;c lớp dạy to&aacute;n theo phương  ph&aacute;p Mathnasium đầu ti&ecirc;n v&agrave;o th&aacute;ng 2 (d&agrave;nh cho học sinh từ 4 đến 10 tuổi).</p>\r\n<p class="Normal">Đăng k&yacute; ghi danh cho học sinh hay t&igrave;m hiểu về phương  ph&aacute;p Mathnasium, phụ huynh li&ecirc;n lạc số điện thoại 08-39301038 (quận 3),  08-38112988 (quận T&acirc;n B&igrave;nh), hay email về địa chỉ: <a class="Normal" href="mailto:lienhe@mathnasium.vn">lienhe@mathnasium.vn</a></p>\r\n<p class="Normal" style="text-align: right;">(Nguồn: <em>C&ocirc;ng ty Ph&aacute;t triển Gi&aacute;o dục Mỹ</em>)</p>', 1, 1, 1614, 0, 1),
('Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán.\r\n', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', NULL, 22, '<h1 class="Title">Phương ph&aacute;p Mathnasium gi&uacute;p trẻ y&ecirc;u th&iacute;ch m&ocirc;n  to&aacute;n</h1>\r\n<h2 class="Lead">Phương ph&aacute;p dạy to&aacute;n Mathnasium với 5 kỹ thuật giảng  dạy bổ sung nhau, gi&uacute;p trẻ em tiếp thu kiến thức to&aacute;n hiệu quả, kh&ocirc;ng cảm thấy  &aacute;p lực v&agrave; nh&agrave;m ch&aacute;n.</h2>\r\n<p class="Normal">Phương ph&aacute;p dạy n&agrave;y được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi  &ocirc;ng Larry Martinek - gi&aacute;o sư to&aacute;n học xuất sắc của bang California, Mỹ. Trong  trung hạn, Mathnasium gi&uacute;p học sinh ph&aacute;t triển tư duy, n&acirc;ng cao chỉ số th&ocirc;ng  minh, đồng thời x&acirc;y dựng l&ograve;ng tin v&agrave;o ch&iacute;nh bản th&acirc;n m&igrave;nh. Mục ti&ecirc;u l&acirc;u d&agrave;i v&agrave;  cao nhất của n&oacute; l&agrave; gi&uacute;p từng c&aacute; nh&acirc;n trở th&agrave;nh người tự tin, năng động v&agrave; th&agrave;nh  c&ocirc;ng trong cuộc sống.</p>\r\n<p class="Normal">Trong 5 kỹ thuật giảng dạy, kỹ thuật tư duy gi&uacute;p c&aacute;c  em tập th&oacute;i quen suy nghĩ, từ đ&oacute; x&acirc;y dựng sự nhạy b&eacute;n v&agrave; tự tin với c&aacute;c con số.  Kỹ thuật diễn đạt bằng ng&ocirc;n từ l&agrave;m học sinh tập th&oacute;i quen v&agrave; kỹ năng diễn giải  bằng lời những &yacute; tưởng, suy luận của m&igrave;nh. Ngo&agrave;i ra, kỹ thuật quan s&aacute;t h&igrave;nh ảnh  trực quan, sử dụng gi&aacute;o cụ, thực h&agrave;nh to&aacute;n viết cung cấp nguồn gi&aacute;o tr&igrave;nh v&agrave; b&agrave;i  tập phong ph&uacute;, đa dạng để trẻ c&oacute; thể thực h&agrave;nh v&agrave; ph&aacute;t triển kiến thức, tư duy  v&agrave; kỹ năng giải to&aacute;n.</p>\r\n<table border="0" cellspacing="0" cellpadding="3" width="1" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="../upload/hinh.jpg" alt="" width="400" height="269" /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Gi&aacute;o tr&igrave;nh Mathnasium gồm 3 loại. Loại thứ nhất l&agrave;  c&aacute;c b&agrave;i tập PK, l&agrave; b&agrave;i tập &ldquo;theo đơn&rdquo;. Đ&acirc;y l&agrave; hệ thống c&aacute;c b&agrave;i tập chuy&ecirc;n đề  được ph&acirc;n cho từng học sinh dựa tr&ecirc;n kết quả kiểm tra đầu kỳ của học sinh đ&oacute;.  Loại b&agrave;i tập n&agrave;y gi&uacute;p ho&agrave;n thiện những mặt c&ograve;n hạn chế, v&agrave; ph&aacute;t triển c&aacute;c mặt  mạnh của từng em. Từ đ&oacute;, phương ph&aacute;p x&acirc;y dựng nền tảng to&aacute;n vững chắc cho trẻ.  Loại thứ hai l&agrave; b&agrave;i tập Work Out Book - r&egrave;n luyện tư duy số. Đ&acirc;y l&agrave; loại được  thiết kế tổng hợp, với những kh&aacute;i niệm mở rộng, gi&uacute;p học sinh ph&aacute;t triển &ldquo;tư duy  số&rdquo;, từ đ&oacute; ph&aacute;t triển tr&iacute; tuệ tốt nhất. Loại thứ ba l&agrave; Focus-on, chuy&ecirc;n s&acirc;u về  những chủ đề nhất định hoặc củng cố c&aacute;c lỗ hổng v&agrave; điểm c&ograve;n hạn chế, n&acirc;ng cao  kiến thức theo chủ đề.</p>\r\n<p class="Normal">Quy tr&igrave;nh đ&agrave;o tạo của phương ph&aacute;p gồm 3 bước. Đầu  ti&ecirc;n l&agrave; bước kiểm tra đầu kỳ. Học sinh sẽ được kiểm tra viết v&agrave; vấn đ&aacute;p để x&aacute;c  định kiến thức, tr&igrave;nh độ, những điểm mạnh v&agrave; điểm cần phải củng cố, ph&aacute;t triển  th&ecirc;m. Dựa v&agrave;o kết quả n&agrave;y, kế hoạch học tập sẽ được thiết kế cho từng em. Đ&acirc;y  c&ograve;n được gọi l&agrave; phương ph&aacute;p học to&aacute;n hướng c&aacute; nh&acirc;n. Bước 2, thực h&agrave;nh dạy v&agrave; học  theo kế hoạch học tập. Trong một buổi học, mỗi gi&aacute;o vi&ecirc;n sẽ giảng dạy v&agrave; k&egrave;m cặp  4-5 học sinh theo phương ph&aacute;p dạy từ học sinh n&agrave;y đến học sinh kh&aacute;c. B&ecirc;n cạnh  đ&oacute;, thầy, c&ocirc; vẫn quan s&aacute;t, hỗ trợ học sinh khi c&aacute;c em l&agrave;m b&agrave;i tập độc lập.  Phương ph&aacute;p đảm bảo t&iacute;nh độc lập trong học tập v&agrave; sự giảng dạy k&egrave;m cặp của gi&aacute;o  vi&ecirc;n đối với từng em. Bước tiếp theo l&agrave; đ&aacute;nh gi&aacute; sự tiến bộ của học sinh. Cứ sau  3 th&aacute;ng, c&aacute;c em sẽ được kiểm tra để đ&aacute;nh gi&aacute; sự tiến bộ. Từ đ&oacute; gi&aacute;o vi&ecirc;n đưa ra  một kế hoạch học tập mới cao hơn. Quy tr&igrave;nh n&agrave;y được lặp đi lặp lại trong suốt  qu&aacute; tr&igrave;nh trẻ học với Mathnasium v&agrave; từng bước x&acirc;y dựng v&agrave; n&acirc;ng cao tư duy số v&agrave;  kiến thức to&aacute;n của từng em.</p>\r\n<p class="Normal">Hiện phương ph&aacute;p n&agrave;y được &aacute;p dụng tại gần 400 trung  t&acirc;m dạy to&aacute;n Mathnasium ở Mỹ v&agrave; c&aacute;c quốc gia kh&aacute;c tr&ecirc;n thế giới. Hai trung t&acirc;m  Mathnasium đầu ti&ecirc;n tại Việt Nam ở số 3 Ng&ocirc; Thời Nhiệm, quận 3 v&agrave; 26/41-43-45  Nguyễn Minh Ho&agrave;ng, T&acirc;n B&igrave;nh, TP HCM sẽ khai giảng c&aacute;c lớp dạy to&aacute;n theo phương  ph&aacute;p Mathnasium đầu ti&ecirc;n v&agrave;o th&aacute;ng 2 (d&agrave;nh cho học sinh từ 4 đến 10 tuổi).</p>\r\n<p class="Normal">Đăng k&yacute; ghi danh cho học sinh hay t&igrave;m hiểu về phương  ph&aacute;p Mathnasium, phụ huynh li&ecirc;n lạc số điện thoại 08-39301038 (quận 3),  08-38112988 (quận T&acirc;n B&igrave;nh), hay email về địa chỉ: <a class="Normal" href="mailto:lienhe@mathnasium.vn">lienhe@mathnasium.vn</a></p>\r\n<p class="Normal" style="text-align: right;">(Nguồn: <em>C&ocirc;ng ty Ph&aacute;t triển Gi&aacute;o dục Mỹ</em>)</p>', 1, 1, 1614, 0, 0),
('Phương pháp Mathnasium giúp trẻ yêu thích môn toán ', 'Phuong-Phap-Mathnasium-Giup-Tre-Yeu-Thich-Mon-Toan', 'Phương pháp dạy toán Mathnasium với 5 kỹ thuật giảng dạy bổ sung nhau, giúp trẻ em tiếp thu kiến thức toán hiệu quả, không cảm thấy áp lực và nhàm chán.\r\n', 'hinh_250x195[1]_JPG_thumb210x0_ns.jpg', NULL, 22, '<h1 class="Title">Phương ph&aacute;p Mathnasium gi&uacute;p trẻ y&ecirc;u th&iacute;ch m&ocirc;n  to&aacute;n</h1>\r\n<h2 class="Lead">Phương ph&aacute;p dạy to&aacute;n Mathnasium với 5 kỹ thuật giảng  dạy bổ sung nhau, gi&uacute;p trẻ em tiếp thu kiến thức to&aacute;n hiệu quả, kh&ocirc;ng cảm thấy  &aacute;p lực v&agrave; nh&agrave;m ch&aacute;n.</h2>\r\n<p class="Normal">Phương ph&aacute;p dạy n&agrave;y được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi  &ocirc;ng Larry Martinek - gi&aacute;o sư to&aacute;n học xuất sắc của bang California, Mỹ. Trong  trung hạn, Mathnasium gi&uacute;p học sinh ph&aacute;t triển tư duy, n&acirc;ng cao chỉ số th&ocirc;ng  minh, đồng thời x&acirc;y dựng l&ograve;ng tin v&agrave;o ch&iacute;nh bản th&acirc;n m&igrave;nh. Mục ti&ecirc;u l&acirc;u d&agrave;i v&agrave;  cao nhất của n&oacute; l&agrave; gi&uacute;p từng c&aacute; nh&acirc;n trở th&agrave;nh người tự tin, năng động v&agrave; th&agrave;nh  c&ocirc;ng trong cuộc sống.</p>\r\n<p class="Normal">Trong 5 kỹ thuật giảng dạy, kỹ thuật tư duy gi&uacute;p c&aacute;c  em tập th&oacute;i quen suy nghĩ, từ đ&oacute; x&acirc;y dựng sự nhạy b&eacute;n v&agrave; tự tin với c&aacute;c con số.  Kỹ thuật diễn đạt bằng ng&ocirc;n từ l&agrave;m học sinh tập th&oacute;i quen v&agrave; kỹ năng diễn giải  bằng lời những &yacute; tưởng, suy luận của m&igrave;nh. Ngo&agrave;i ra, kỹ thuật quan s&aacute;t h&igrave;nh ảnh  trực quan, sử dụng gi&aacute;o cụ, thực h&agrave;nh to&aacute;n viết cung cấp nguồn gi&aacute;o tr&igrave;nh v&agrave; b&agrave;i  tập phong ph&uacute;, đa dạng để trẻ c&oacute; thể thực h&agrave;nh v&agrave; ph&aacute;t triển kiến thức, tư duy  v&agrave; kỹ năng giải to&aacute;n.</p>\r\n<table border="0" cellspacing="0" cellpadding="3" width="1" align="center">\r\n<tbody>\r\n<tr>\r\n<td><img src="../upload/hinh.jpg" alt="" width="400" height="269" /><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="Normal">Gi&aacute;o tr&igrave;nh Mathnasium gồm 3 loại. Loại thứ nhất l&agrave;  c&aacute;c b&agrave;i tập PK, l&agrave; b&agrave;i tập &ldquo;theo đơn&rdquo;. Đ&acirc;y l&agrave; hệ thống c&aacute;c b&agrave;i tập chuy&ecirc;n đề  được ph&acirc;n cho từng học sinh dựa tr&ecirc;n kết quả kiểm tra đầu kỳ của học sinh đ&oacute;.  Loại b&agrave;i tập n&agrave;y gi&uacute;p ho&agrave;n thiện những mặt c&ograve;n hạn chế, v&agrave; ph&aacute;t triển c&aacute;c mặt  mạnh của từng em. Từ đ&oacute;, phương ph&aacute;p x&acirc;y dựng nền tảng to&aacute;n vững chắc cho trẻ.  Loại thứ hai l&agrave; b&agrave;i tập Work Out Book - r&egrave;n luyện tư duy số. Đ&acirc;y l&agrave; loại được  thiết kế tổng hợp, với những kh&aacute;i niệm mở rộng, gi&uacute;p học sinh ph&aacute;t triển &ldquo;tư duy  số&rdquo;, từ đ&oacute; ph&aacute;t triển tr&iacute; tuệ tốt nhất. Loại thứ ba l&agrave; Focus-on, chuy&ecirc;n s&acirc;u về  những chủ đề nhất định hoặc củng cố c&aacute;c lỗ hổng v&agrave; điểm c&ograve;n hạn chế, n&acirc;ng cao  kiến thức theo chủ đề.</p>\r\n<p class="Normal">Quy tr&igrave;nh đ&agrave;o tạo của phương ph&aacute;p gồm 3 bước. Đầu  ti&ecirc;n l&agrave; bước kiểm tra đầu kỳ. Học sinh sẽ được kiểm tra viết v&agrave; vấn đ&aacute;p để x&aacute;c  định kiến thức, tr&igrave;nh độ, những điểm mạnh v&agrave; điểm cần phải củng cố, ph&aacute;t triển  th&ecirc;m. Dựa v&agrave;o kết quả n&agrave;y, kế hoạch học tập sẽ được thiết kế cho từng em. Đ&acirc;y  c&ograve;n được gọi l&agrave; phương ph&aacute;p học to&aacute;n hướng c&aacute; nh&acirc;n. Bước 2, thực h&agrave;nh dạy v&agrave; học  theo kế hoạch học tập. Trong một buổi học, mỗi gi&aacute;o vi&ecirc;n sẽ giảng dạy v&agrave; k&egrave;m cặp  4-5 học sinh theo phương ph&aacute;p dạy từ học sinh n&agrave;y đến học sinh kh&aacute;c. B&ecirc;n cạnh  đ&oacute;, thầy, c&ocirc; vẫn quan s&aacute;t, hỗ trợ học sinh khi c&aacute;c em l&agrave;m b&agrave;i tập độc lập.  Phương ph&aacute;p đảm bảo t&iacute;nh độc lập trong học tập v&agrave; sự giảng dạy k&egrave;m cặp của gi&aacute;o  vi&ecirc;n đối với từng em. Bước tiếp theo l&agrave; đ&aacute;nh gi&aacute; sự tiến bộ của học sinh. Cứ sau  3 th&aacute;ng, c&aacute;c em sẽ được kiểm tra để đ&aacute;nh gi&aacute; sự tiến bộ. Từ đ&oacute; gi&aacute;o vi&ecirc;n đưa ra  một kế hoạch học tập mới cao hơn. Quy tr&igrave;nh n&agrave;y được lặp đi lặp lại trong suốt  qu&aacute; tr&igrave;nh trẻ học với Mathnasium v&agrave; từng bước x&acirc;y dựng v&agrave; n&acirc;ng cao tư duy số v&agrave;  kiến thức to&aacute;n của từng em.</p>\r\n<p class="Normal">Hiện phương ph&aacute;p n&agrave;y được &aacute;p dụng tại gần 400 trung  t&acirc;m dạy to&aacute;n Mathnasium ở Mỹ v&agrave; c&aacute;c quốc gia kh&aacute;c tr&ecirc;n thế giới. Hai trung t&acirc;m  Mathnasium đầu ti&ecirc;n tại Việt Nam ở số 3 Ng&ocirc; Thời Nhiệm, quận 3 v&agrave; 26/41-43-45  Nguyễn Minh Ho&agrave;ng, T&acirc;n B&igrave;nh, TP HCM sẽ khai giảng c&aacute;c lớp dạy to&aacute;n theo phương  ph&aacute;p Mathnasium đầu ti&ecirc;n v&agrave;o th&aacute;ng 2 (d&agrave;nh cho học sinh từ 4 đến 10 tuổi).</p>\r\n<p class="Normal">Đăng k&yacute; ghi danh cho học sinh hay t&igrave;m hiểu về phương  ph&aacute;p Mathnasium, phụ huynh li&ecirc;n lạc số điện thoại 08-39301038 (quận 3),  08-38112988 (quận T&acirc;n B&igrave;nh), hay email về địa chỉ: <a class="Normal" href="mailto:lienhe@mathnasium.vn">lienhe@mathnasium.vn</a></p>\r\n<p class="Normal" style="text-align: right;">(Nguồn: <em>C&ocirc;ng ty Ph&aacute;t triển Gi&aacute;o dục Mỹ</em>)</p>', 1, 1, 1614, 0, 2)

