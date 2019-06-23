-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2019 lúc 01:20 PM
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
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Phanquanly` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Trangthai` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaythamgia` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `Name`, `Phanquanly`, `Trangthai`, `Ngaythamgia`) VALUES
(1, 'baoloc', 'Bình luận', 'Hoạt động', '2019-06-12');

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
-- Cấu trúc bảng cho bảng `editor`
--

CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Dienthoai` varchar(45) DEFAULT NULL,
  `Chuyenmuc` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Trangthai` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `editor`
--

INSERT INTO `editor` (`id`, `Name`, `Email`, `Dienthoai`, `Chuyenmuc`, `Trangthai`) VALUES
(0, 'Phi Linh', NULL, NULL, NULL, NULL),
(1, 'Hoàng Long', 'hoanglong@gmail.com', '01222422791', 'Thể thao', 'ĐANG HOẠT ĐỘNG'),
(2, 'Văn Kiệt', 'vankiet@gmail.com', '0774431571', 'Mỹ thuật', 'ĐÃ NGHỈ PHÉP'),
(4, 'Bảo Lộc', NULL, NULL, NULL, NULL),
(5, 'Khánh Linh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `idLT` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL DEFAULT '',
  `BienTapVien` varchar(255) NOT NULL,
  `ThuTu` tinyint(11) NOT NULL DEFAULT '0',
  `NgayTao` varchar(20) NOT NULL DEFAULT '19-06-2019',
  `idTL` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`idLT`, `Ten`, `BienTapVien`, `ThuTu`, `NgayTao`, `idTL`) VALUES
(1, 'Giáo Dục', 'Hoàng Long', 15, '23-06-2019', 6),
(2, 'Nhịp Điệu Trẻ', 'Kong Kiệt', 21, '23-06-2019', 6),
(3, 'Du Lịch', 'Bảo Lộc', 31, '23-06-2019', 6),
(47, 'Bóng bàn', 'undefined', 20, '23-06-2019', 1),
(5, 'Cuộc Sống Đó Đây', 'Khánh Linh', 5, '23-06-2019', 2),
(6, 'Ảnh', 'Khánh Linh', 61, '23-06-2019', 5),
(7, 'Người Việt 5 Châu', 'Phi Linh', 71, '23-06-2019', 5),
(8, 'Phân Tích', 'Kong Kiệt', 81, '23-06-2019', 5),
(9, 'Chứng Khoán', 'Khánh Linh', 91, '23-06-2019', 6),
(10, 'Bất Động Sản', 'Hoàng Long', 101, '23-06-2019', 6),
(11, 'Doanh Nhân', 'Hoàng Long', 21, '23-06-2019', 6),
(12, 'Quốc Tế', 'Hoàng Long', 7, '23-06-2019', 3),
(13, 'Mua Sắm', 'Hoàng Long', 6, '23-06-2019', 3),
(14, 'Doanh Nghiệp Viết', 'Hoàng Long', 24, '23-06-2019', 6),
(15, 'Hoa Hậu', 'Kong Kiệt', 9, '23-06-2019', 4),
(16, 'Nghệ Sỹ', 'Kong Kiệt', 8, '23-06-2019', 4),
(17, 'Âm Nhạc', 'Kong Kiệt', 4, '23-06-2019', 2),
(18, 'Thời Trang', 'Kong Kiệt', 18, '23-06-2019', 5),
(20, 'Mỹ Thuật', 'Kong Kiệt', 10, '23-06-2019', 4),
(21, 'Bóng Đá', 'Khánh Linh', 1, '23-06-2019', 1),
(19, 'Điện ảnh', 'Phi Linh', 3, '23-06-2019', 2),
(22, 'Tennis', 'Hoàng Long', 2, '23-06-2019', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('27ZeN4TbBwuxqJw3ECavBjvo798J-sZ4', 1561367005, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":4,\"Username\":\"huuloc\",\"Password\":\"123456\",\"Name\":\"Loc\",\"Email\":\"loc@gmail.com\",\"DOB\":\"1997-12-05\",\"Permission\":1}}'),
('3BF778XJw__ONL-93eTXvqtTCFXZc_Ns', 1561364398, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),
('L8emQMtMFWRQ6fLtJh6b3xj7ZVN2tBCg', 1561364907, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":4,\"Username\":\"huuloc\",\"Password\":\"123456\",\"Name\":\"Loc\",\"Email\":\"loc@gmail.com\",\"DOB\":\"1997-12-05\",\"Permission\":1}}'),
('TVzWy6msnwMosyRIKs_DHq0bwGuszM7J', 1561366286, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),
('XL8Eo0oDdu3Lsy_p_EX93USgF9iGHJ3V', 1561002008, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),
('YOZZdrM2YNXSnM8vkOyAR1cMbdwRqEHb', 1561365807, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":4,\"Username\":\"huuloc\",\"Password\":\"123456\",\"Name\":\"Loc\",\"Email\":\"loc@gmail.com\",\"DOB\":\"1997-12-05\",\"Permission\":1}}'),
('d9zP5Hg3z9h58TisGqU88gR7aHV6yWVU', 1561366395, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false}'),
('e_JBBF9nAXk2x8BWif1A9BQHfa1dgBHr', 1561365679, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":4,\"Username\":\"huuloc\",\"Password\":\"123456\",\"Name\":\"Loc\",\"Email\":\"loc@gmail.com\",\"DOB\":\"1997-12-05\",\"Permission\":1}}'),
('jLzMWYn5Vwpmy4WRic1iZt3RNuLJqfyQ', 1561367208, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":10,\"Username\":\"acb123\",\"Password\":\"acb123\",\"Name\":\"acb123\",\"Email\":\"vokongkiet@gmail.com\",\"DOB\":\"2019-06-14\",\"Permission\":1}}'),
('urJ5qTnB4CgzpUW5mWee-Ivz8gqKuIws', 1561366773, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":4,\"Username\":\"huuloc\",\"Password\":\"123456\",\"Name\":\"Loc\",\"Email\":\"loc@gmail.com\",\"DOB\":\"1997-12-05\",\"Permission\":1}}'),
('vTTzCbYhKK-gWFuyPkE17pGVITSQuqm5', 1561367121, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"idUser\":9,\"Username\":\"hoanglong234\",\"Password\":\"hoanglong234\",\"Name\":\"hoanglong234\",\"Email\":\"vokongkiet@gmail.com\",\"DOB\":\"2019-06-05\",\"Permission\":1}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `idTag` int(11) NOT NULL,
  `TenTag` varchar(255) NOT NULL DEFAULT '',
  `NgayTao` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`idTag`, `TenTag`, `NgayTao`) VALUES
(1, 'Business', '13-06-2019'),
(2, 'Technology', '13-06-2019'),
(3, 'Sport', '13-06-2019'),
(4, 'Art', '13-06-2019'),
(5, 'Lifestyle', '13-06-2019'),
(6, 'Three', '13-06-2019'),
(7, 'Sport', '13-06-2019'),
(8, 'Photography', '13-06-2019'),
(9, 'Education', '13-06-2019'),
(10, 'Social', '13-06-2019');

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
(3, 'Đời sống', 'Doi-Song', 3, 1),
(4, 'Showbiz', 'Suc-Khoe', 4, 1),
(5, 'Pháp luật', 'Phap-Luat', 5, 0),
(6, 'Kinh doanh', 'Kinh-Doanh', 6, 0),
(7, 'Khoa học', 'Khoa-Hoc', 7, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL DEFAULT '',
  `TomTat` varchar(1000) DEFAULT NULL,
  `urlHinh` varchar(255) DEFAULT NULL,
  `Ngay` varchar(12) DEFAULT '0000-00-00',
  `idUser` int(11) NOT NULL DEFAULT '0',
  `Content` text,
  `idLT` int(11) NOT NULL DEFAULT '0',
  `SoLanXem` int(11) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`idTin`, `TieuDe`, `TomTat`, `urlHinh`, `Ngay`, `idUser`, `Content`, `idLT`, `SoLanXem`, `AnHien`) VALUES
(1, 'Real Madrid ra mắt tân binh 45 triệu euro Rodrygo Goes', 'tomtat', '/img/hinh/bd1.jpg', '2019-04-09', 1, 'Về phần mình, chủ tịch Florentino Perez cũng cho hay: \"Chúng tôi đã ký hợp đồng với 1 tài năng đặc biệt để chuẩn bị cho những thử thách mới trong tương lai. Rodrygo Goes là một trong những tài năng trẻ mới của Brazil với 17 bàn thắng ở mùa trước dưới màu áo Santos \r\nSự phát triển của Rodrygo thật ngoạn mục và bạn đang tới với CLB được yêu mến nhất. Bạn đến 1 SVĐ, nơi mà CĐV sẽ luôn ủng hộ bạn khi bạn đặt mục tiêu làm nên lịch sử ở đây. Cha mẹ bạn biết bạn đã phải trả qua những gì để tới đây. Chào mừng tới với ngôi nhà mời, chào mừng Rodrygo đến với Real Madrid\".\r\nTrước khi ra mắt đội bóng mới, Rodrygo Goes đã vượt qua buổi kiểm tra y tế bắt buộc tại trường Đại học Sanitas La Moraleja. Sau đó, anh được chủ tịch Florentino Perez đưa đi xem phòng truyền thống của Real Madrid trước khi ký hợp đồng. \r\n', 21, 10, 1),
(2, 'Halle Open ngày 1: ĐKVĐ Borna Coric khởi đầu thành công', 'Dù phải thi đấu từ vòng loại, Tsonga vẫn chứng minh được kinh nghiệm và đẳng cấp của mình. Ở cuộc chạm trán với người đồng hương Benoit Paire, Tsonga đã thi đấu khá chắc chắn để giành chiến thắng 7-5, 6-4.', '/img/hinh/tn1.jpg', '2019-06-23', 3, '<p>Tay vợt Croatia Borna Coric đang là ĐKVĐ của giải. Năm ngoái anh đã hạ Roger Federer để đăng quang. Ở trận đầu tiên năm nay, Coric chạm trán Jaume Munar của TBN. Coric là hạt giống số 4 của giải, tuy vậy đã gặp nhiều khó khăn ở set 1. Anh chỉ thắng nhờ bản lĩnh sau loạt tie-break. Sang set 2, Coric chơi nhàn nhã hơn và thắng dễ 6-3 để giành vé vào vòng sau...</p> <br><p>1 năm trước, Roger Federer ngậm đắng nuốt cay ở giải đấu mà anh đang là tay vợt vĩ đại nhất giải đấu. Thất bại trước Borna Coric trong trận chung kết Halle Open, đó cũng là dấu hiệu cho 1 năm không thành công của \"Tàu tốc hành\". Do vậy, năm nay tay vợt người Thụy Sỹ đang rất quyết tâm giành lại những gì mình đã mất..</p> <br> <p>Trận ra quân với John Millman có thể gây ra nhiều khó khăn cho Federer hơn tưởng tượng. Dù chỉ đang xếp thứ 57 thế giới, tuy nhiên, Millman từng hạ knock-out Federer ở Mỹ mở rộng mùa trước. Thời điểm này, Federer đang có phong độ tốt, sự chuẩn bị cho Halle Open cũng vậy. Sau khi để thua Nadal ở bán kết Pháp mở rộng, Federer hạ quyết tâm vô địch hòng tạo đà cho Wimbledon sắp tới..</p> <br> <p>Nhà đương kim vô địch Borna Coric sẽ bắt đầu hành trình bảo vệ danh hiệu của mình với đối thủ dưới cơ Jaume Munar. Tay vợt xếp hạng 88 Munar toàn thua cả 5 trận gần nhất ở mọi giải đấu. Mới 16/4 vừa qua, Coric đánh bại Munar 2-1 tại Monaco. Bởi vậy, Coric - tay vợt số 14 thế giới, hứa hẹn sẽ có trận ra quân thành công.</p>', 22, 11, 1),
(3, 'Người đàn ông Ấn Độ dựng tượng Trump để thờ như vị thần', 'Bussa Krishna chi khoảng 2.000 USD dựng bức tượng nhân dịp sinh nhật Tổng thống Mỹ Donald Trump để bày tỏ lòng yêu mến.', '/img/hinh/cs.jpg', '2019-06-23', 2, '<p>Bussa Krishna, một nông dân 31 tuổi làng Konne, huyện Jangaon, bang Telangana, Ấn Độ, thờ bức ảnh Tổng thống Mỹ Donald Trump và thực hiện nghi lễ cúng bái như với các vị thần trong đạo Hindu của anh, RT hôm 27/6 đưa tin.</p> <br><p>Dù bị gia đình và dân làng chế nhạo, Bussa có kế hoạch tăng cấp độ sùng bái đối với Tổng thống Mỹ bằng việc xây một ngôi đền cho Trump.</p> <br> <p>Theo Tribune, Krishna nảy sinh ý tưởng này sau khi kỹ sư phần mềm Srinivas Kuchibhotla ở bang Telangana bị một cựu lính hải quân Mỹ giết chết trong hành động bị cáo buộc là phạm tội vì thù ghét hồi tháng 2 năm ngoái...</p> <br> <p>\"Tôi rất đau đớn về vụ việc. Tôi nghĩ cách duy nhất mà Tổng thống và người dân Mỹ có thể hiểu được sự vĩ đại của người Ấn Độ là thể hiện tình yêu và thiện ý của chúng ta đối với họ. Đó là lý do tại sao tôi bắt đầu thờ Trump với hy vọng một ngày nào đó lời cầu nguyện của tôi sẽ đến được với ông ấy\", Krishna nói..</p>', 5, 12, 1),
(4, 'Đó là nhận định của huyền thoại Boris Becker về cuộc đua Grand Slam giữa Federer, Nadal và Djokovic.', 'Trên tennisworldusa, huyền thoại Boris Becker đánh giá: \"Djokovic hoàn toàn có tiềm năng để chạm đến mốc 20 Grand Slam của Federer thậm chí vượt qua. Cậu ấy đang có được trạng thái tốt nhất về mọi mặt.', '/img/hinh/tn2.jpg', '2019-06-23', 4, '<p>Tay vợt Croatia Borna Coric đang là ĐKVĐ của giải. Năm ngoái anh đã hạ Roger Federer để đăng quang. Ở trận đầu tiên năm nay, Coric chạm trán Jaume Munar của TBN. Coric là hạt giống số 4 của giải, tuy vậy đã gặp nhiều khó khăn ở set 1. Anh chỉ thắng nhờ bản lĩnh sau loạt tie-break. Sang set 2, Coric chơi nhàn nhã hơn và thắng dễ 6-3 để giành vé vào vòng sau...</p> <br><p>1 năm trước, Roger Federer ngậm đắng nuốt cay ở giải đấu mà anh đang là tay vợt vĩ đại nhất giải đấu. Thất bại trước Borna Coric trong trận chung kết Halle Open, đó cũng là dấu hiệu cho 1 năm không thành công của \"Tàu tốc hành\". Do vậy, năm nay tay vợt người Thụy Sỹ đang rất quyết tâm giành lại những gì mình đã mất..</p> <br> <p>Trận ra quân với John Millman có thể gây ra nhiều khó khăn cho Federer hơn tưởng tượng. Dù chỉ đang xếp thứ 57 thế giới, tuy nhiên, Millman từng hạ knock-out Federer ở Mỹ mở rộng mùa trước. Thời điểm này, Federer đang có phong độ tốt, sự chuẩn bị cho Halle Open cũng vậy. Sau khi để thua Nadal ở bán kết Pháp mở rộng, Federer hạ quyết tâm vô địch hòng tạo đà cho Wimbledon sắp tới..</p> <br> <p>Nhà đương kim vô địch Borna Coric sẽ bắt đầu hành trình bảo vệ danh hiệu của mình với đối thủ dưới cơ Jaume Munar. Tay vợt xếp hạng 88 Munar toàn thua cả 5 trận gần nhất ở mọi giải đấu. Mới 16/4 vừa qua, Coric đánh bại Munar 2-1 tại Monaco. Bởi vậy, Coric - tay vợt số 14 thế giới, hứa hẹn sẽ có trận ra quân thành công.</p>', 22, 14, 1),
(5, 'Rapper 16 tuổi bị bắn vào đầu ngay trên phố', 'Rapper C Glizzy bị bắn khi đang ở bên ngoài một cửa hàng tiện lợi tại Florida (Mỹ) vào cuối tuần qua.', '/img/hinh/nhac.jpg', '2019-06-23', 6, '<p>Trang Complex đưa tin ngày 15/6 (giờ địa phương), rapper 16 tuổi C Glizzy bị bắn ở Pompano Beach (Florida, Mỹ). Theo đó, khi vừa rời khỏi cửa hàng tiện lợi, nam rapper bất ngờ bị một đối tượng dùng súng bắn vào đầu. Em trai của C Glizzy và bạn bè lập tức đưa anh đến bệnh viện để cấp cứu. Tại đây, các bác sĩ tiến hành phẫu thuật lấy viên đạn ra khỏi đầu C Glizzy.</p> <br><p>Mẹ của nam rapper chia sẻ anh vẫn hôn mê và chưa thể nói chuyện. Bà hy vọng con trai sẽ sớm khỏe lại. Văn phòng cảnh sát hạt Broward cho biết vẫn tiếp tục điều tra vụ án..</p> <br> <p>C Glizzy tên thật là Christian Moore và là bạn thân của rapper nổi tiếng XXXTentacion. Trang Instagram của C Glizzy có hơn 60.000 người theo dõi. Nam rapper trình làng album Numb the Pain cách đây hai tháng.</p> <br> <p>Khi biết tin, khán giả, đồng nghiệp và nhiều người thân cùng nhau cầu nguyện mong rapper 16 tuổi sớm vượt qua cơn hiểm nghèo..</p>', 17, 15, 1),
(6, 'NÓNG: Xác định bến đỗ mới của Công Phượng, không phải Paris FC', 'Không phải Paris FC như những gì đã đồn đoán mà Clermont Foot 63 FC mới là bến đỗ tiếp theo của tiền đạo Nguyễn Công Phượng.', '/img/hinh/bd2.jpg', '2019-06-23', 6, '<p>Thời gian qua đã có một số thông tin, tiền đạo Nguyễn Công Phượng sẽ đến thử việc tại CLB đang chơi ở giải hạng nhì của Pháp là Paris FC theo lời giới thiệu của HLV Guillaume Graechen. Tuy nhiên, mới đây thông tin từ lãnh đạo HAGL cho biết đang đàm phán để đưa Công Phượng đến thử việc tại CLB Clermont Foot.</p> <br><p>Đây cũng là một đội bóng đang thi đấu ở Ligue 2 của Pháp và mùa giải vừa qua đã cán đích ở vị trí thứ 10. Thực tế, Clermont Foot là cái tên khá xa lạ với những người hâm mộ bóng đá Việt Nam, trong thành phần thi đấu của CLB này hầu hết là những gương mặt trẻ và thành tích cũng chỉ ở mức trung bình.</p> <br> <p>Trò chuyện cùng chúng tôi, Công Phượng cho biết, do đang đợi visa để nhập cảnh vào nước Pháp nên anh vẫn chưa xác định được thời gian chuẩn xác để sang thử việc tại đây, chưa kể còn chờ kết quả đàm phán giữa 2 CLB HAGL và Clermont Foot.</p> <br> <p>Như vậy, nếu thử việc suôn sẻ, Công Phượng khả năng sẽ là cầu thủ thứ 2 của Việt Nam thi đấu ở châu Âu. Trước đó, cựu danh thủ Lê Công Vinh đã từng thi đấu cho CLB Leixoes ở giải VĐQG Bồ Đào Nha vào năm 2009.</p>', 21, 16, 1),
(7, 'Quốc Trường nức nở chia tay khán giả Về nhà đi con', 'Diễn viên Quốc Trường chính thức chia tay đoàn làm phim \"Về nhà đi con\" và vai Vũ sở khanh.', '/img/hinh/da1.jpg', '2019-06-23', 7, '<p>Sau một thời gian dài đồng hành cùng đoàn phim \"Về nhà đi con\" với vai Vũ, Quốc Trường vừa chính thức nói lời tạm biệt với đoàn phim cho vai diễn của mình. Nam diễn viên vừa trở lại TP.HCM để tiếp tục các công việc khác của mình.</p> <br><p>Theo Quốc Trường, khi đang quay phim thì trong đầu anh chỉ mong mau hết vai để về nhà, vì nhớ nhà, nhớ bạn và nhớ quán ăn của mình. Tuy nhiên khi đã hoàn thành vai diễn và trở về nhà, anh lại thấy rất buồn.</p> <br> <p>Những dòng tâm trạng sụt sùi của Quốc Trường nhận được sự đồng cảm của nhiều khán giả và đồng nghiệp. .</p> <br> <p>Có thể nói, vai Vũ trong \"Về nhà đi con\" là một bước tiến thành công ra làng phim truyền hình phía Bắc của Quốc Trường. Chính nam diễn viên từng thừa nhận, sự nổi tiếng lần này đến khiến anh không dám tin. Anh không tin có ngày mình lại có thể được chú ý và được yêu mến nhiều tới vậy.</p>', 19, 11, 1),
(8, 'Quốc Trường không ngại khi chồng Bảo Thanh ở trường quay', 'Bảo Thanh thường có chồng tháp tùng nhưng không vì thế mà Quốc Trường cảm thấy ngượng diễn cảnh vợ chồng với cô.', '/img/hinh/da2.jpg', '2019-06-05', 8, '<p>Sau một thời gian dài đồng hành cùng đoàn phim \"Về nhà đi con\" với vai Vũ, Quốc Trường vừa chính thức nói lời tạm biệt với đoàn phim cho vai diễn của mình. Nam diễn viên vừa trở lại TP.HCM để tiếp tục các công việc khác của mình.</p> <br><p>Theo Quốc Trường, khi đang quay phim thì trong đầu anh chỉ mong mau hết vai để về nhà, vì nhớ nhà, nhớ bạn và nhớ quán ăn của mình. Tuy nhiên khi đã hoàn thành vai diễn và trở về nhà, anh lại thấy rất buồn.</p> <br> <p>Những dòng tâm trạng sụt sùi của Quốc Trường nhận được sự đồng cảm của nhiều khán giả và đồng nghiệp. .</p> <br> <p>Có thể nói, vai Vũ trong \"Về nhà đi con\" là một bước tiến thành công ra làng phim truyền hình phía Bắc của Quốc Trường. Chính nam diễn viên từng thừa nhận, sự nổi tiếng lần này đến khiến anh không dám tin. Anh không tin có ngày mình lại có thể được chú ý và được yêu mến nhiều tới vậy.</p>', 19, 24, 1),
(9, 'Cựu chủ tịch UEFA Michael Platini bị bắt vì dàn xếp quyền đăng cai World Cup 2022', 'Cựu chủ tịch UEFA, Michael Platini đã bị cảnh sát bắt vì những cáo buộc tham nhũng để trao quyền đăng cai World Cup 2022 cho Qatar.', '/img/hinh/bd3.jpg', '2019-06-08', 11, 'Thời gian qua đã có một số thông tin, tiền đạo Nguyễn Công Phượng sẽ đến thử việc tại CLB đang chơi ở giải hạng nhì của Pháp là Paris FC theo lời giới thiệu của HLV Guillaume Graechen. Tuy nhiên, mới đây thông tin từ lãnh đạo HAGL cho biết đang đàm phán để đưa Công Phượng đến thử việc tại CLB Clermont Foot \r\nĐây cũng là một đội bóng đang thi đấu ở Ligue 2 của Pháp và mùa giải vừa qua đã cán đích ở vị trí thứ 10. Thực tế, Clermont Foot là cái tên khá xa lạ với những người hâm mộ bóng đá Việt Nam, trong thành phần thi đấu của CLB này hầu hết là những gương mặt trẻ và thành tích cũng chỉ ở mức trung binh\r\nTrò chuyện cùng chúng tôi, Công Phượng cho biết, do đang đợi visa để nhập cảnh vào nước Pháp nên anh vẫn chưa xác định được thời gian chuẩn xác để sang thử việc tại đây, chưa kể còn chờ kết quả đàm phán giữa 2 CLB HAGL và Clermont Foot\r\nNhư vậy, nếu thử việc suôn sẻ, Công Phượng khả năng sẽ là cầu thủ thứ 2 của Việt Nam thi đấu ở châu Âu. Trước đó, cựu danh thủ Lê Công Vinh đã từng thi đấu cho CLB Leixoes ở giải VĐQG Bồ Đào Nha vào năm 2009.\r\n\r\n', 21, 45, 1),
(10, 'Ông Trump tiết lộ cuộc điện đàm mới với ông Tập Cận Bình', 'Tổng thống Mỹ Donald Trump thông báo ông vừa có \"một cuộc điện đàm rất tốt đẹp\" với Chủ tịch Trung Quốc Tập Cận Bình.', '/img/hinh/qt1.jpg', '2019-06-24', 15, '<h2>Real Marid<br></h2>', 12, 32, 1),
(11, 'Dội mưa bàn thắng vào lưới Peru, Brazil thẳng tiến vào tứ kết Copa America 2019', 'Chiến thắng 5 sao của ĐT Brazil trước đối thủ từng dự World Cup 2018, kèm tấm vé đi tiếp vào tứ kết giúp người hâm mộ Selecao vơi đi nỗi lo mất siêu sao Neymar ngay trước thềm giải đấu trên sân nhà.', '/img/hinh/bd4.jpg', NULL, 1, 'Sau khi bị ĐT Venezuela cầm chân 0-0 ở lượt đấu thứ hai, thầy trò HLV Tite hạ quyết tâm chiến thắng trước Peru để giành ngôi đầu bảng A. Một chiến thắng thuyết phục sẽ là lời đảm bảo cho mọi CĐV Selecao rằng ĐT Brazil không dựa dẫm vào tài năng của siêu sao Neymar để giành chức vô địch Nam Mỹ trên sân nhà - lần đầu tiên kể từ năm 2007. Thắng đậm đà 5-0, Brazil tiếp tục tỏ rõ tham vọng giành chức vô địch Copa America trên sân nhà. Còn với các CĐV Peru, cơ hội đi tiếp chưa kết thúc dù đội bóng của họ chỉ đứng thứ ba tại bảng đấu. Với 4 điểm cùng hiệu số -3, Peru sẽ phải chờ đợi các bảng đấu còn lại để biết được số phận của mình. Suất đi tiếp còn lại của bảng A được giành cho Venezuela sau chiến thắng 3-1 trước Bolivia để cán đích thứ hai với 5 điểm.', 21, 10, 1),
(12, '2 triệu USD thuê HLV Park để học chứ không chỉ mua thành tích', 'Bóng đá Việt Nam cứ quanh quẩn tại V–League rồi ca bài ca đào tạo trẻ thì sẽ mãi chẳng học hỏi thêm được gì. ', '/img/hinh/bd5.png', NULL, 3, 'Rời tuyển về CLB, nhiều tuyển thủ nhanh chóng bị vùi lấp. Ở CLB, sơ đồ thiếu biến hóa đòi hỏi cầu thủ phải có tư duy chiến thuật cao. \"Trẻ\" làm sao có tư duy chiến thuật bằng \"già\" dù kỹ thuật cá nhân các mặt hơn hẳn. Bóng đá hiện đại đòi hỏi cầu thủ phải khỏe, có kỹ thuật cá nhân và tư duy chiến thuật. Các ngôi sao bóng đá thế giới có đầy đủ ba tiêu chuẩn này. Cầu thủ chưa phải là ngôi sao chỉ có hai trong ba tiêu chuẩn. Cầu thủ Việt Nam thiếu sức khỏe, còn tư duy chiến thuật chỉ có vài người có. Bù lại, chúng ta \"đi tắt\" bằng cách cho tuyển tập trung dài ngày để tăng sự ăn ý với nhau. Một phần là nhờ giải vô địch quốc gia chỉ kéo dài đến chưa đến 10 tháng (mỗi bảng không đủ 18-22 đội).\r\nNgay cả Hàn Quốc, Nhật Bản - những ông lớn ở châu lục nhưng vào World Cup vẫn chỉ là \"lót đường\". Việt Nam muốn có đẳng cấp nhất thời buộc phải bỏ nhiều tiền ra. Đó là chưa nói NHM gần như không quan tâm bóng đá nước nhà, họ chỉ cần \"bữa nay có rượu, bữa nay say\" theo kiểu lứa cầu thủ này có thành tích thì cứ hưởng thụ, lứa sau thế nào không quan tâm. NHM có tư duy \"ăn xổi\" thì nền bóng đá cũng khó mà khác được.', 21, 11, 1),
(13, 'Chung kết Halle Open: Federer sáng cửa lần thứ 10 lên đỉnh', '(Nhận định tennis, chung kết đơn nam Halle Open, 18h00, 23/6) “Mưa kỷ lục” và danh hiệu cao quý lần thứ 10 để chạy đà hoàn hảo cho Wimbledon đang chờ Roger Federer. Thế nhưng, “Tàu tốc hành” phải cảnh giác bi kịch ATP Finals 2017 lặp lại.', '/img/hinh/tennis3.jpg', NULL, 3, 'Khác với hai trận đấu ở vòng 2 và tứ kết Halle Open năm nay đều phải cần 3 set mới hạ gục được Tsonga và Bautista-Agut, hạt giống số 1 Roger Federer đã chóng vánh loại bỏ Pierre-Hugues Herbert 6-3, 6-3 tại bán kết để lần thứ 13 trong lịch sử vào chung kết giải sân cỏ trên đất Đức tiền Wimbledon.\r\n“Tàu tốc hành” cũng đang quyết tâm thắng tiếp đối thủ người Bỉ David Goffin để lập kỷ lục mới với cú “Decima” (lần thứ 10 vô địch) ở Halle sau 9 lần trước từng đăng quang các năm 2003-2006, 2008, 2013-2015 và 2017.', 22, 10, 1),
(14, 'Djokovic không mâu thuẫn với Federer và Nadal', 'Tay vợt số 1 thế giới Novak Djokovic khẳng định truyền thông đã thêu dệt quá nhiều về mối quan hệ giữa anh và Roger Federer, Rafael Nadal.', '/img/hinh/tennis4.jpg', NULL, 3, 'Djokovic không mâu thuẫn với Federer và Nadal. Tay vợt số 1 thế giới Novak Djokovic khẳng định truyền thông đã thêu dệt quá nhiều về mối quan hệ giữa anh và Roger Federer, Rafael Nadal. Nhiều nguồn tin cho rằng 3 tay vợt hàng đầu thế giới  mâu thuẫn quan điểm xoay quanh chiếc ghế của Chris Kermode - chủ tịch của ATP. Đặc biệt, tờ Daily Express của Anh khẳng định rằng mối quan hệ này càng phân hóa sâu sắc sau giải Pháp mở rộng - giải đấu mà \"Nole\" chỉ tiến đến bán kết, còn Nadal giành chức vô địch.', 22, 5, 1),
(15, '2 kiều nữ giống nhau như 2 giọt nước so tài: Chuyện lạ sững sờ tennis', 'Không thể tưởng tượng làng tennis thế giới lại có hai tay vợt giống nhau đến vậy.', '/img/hinh/tennis5.jpg', NULL, 3, 'Làng tennis đơn nữ thế giới đã quá quen với những cuộc đụng độ của hai chị em nhà Williams, tuy nhiên hai tay vợt này cũng không quá giống nhau. Cuộc đụng độ giữa chị em nhà Pliskova thì khác, đây là cặp song sinh người Cộng Hòa Séc, do đó họ giống nhau từ gương mặt, thân hình và cả dáng đi...nếu không biết đây là chị em thì nhiều người sẽ nghĩ rằng hai tay vợt trên đều có thuật \"phân thân\".\r\nỞ giải Birmingham Classic 2019 đang diễn ra tại Anh, Kristyna Pliskova hạng 113 thế giới bị đánh giá thấp hơn nhiều so với cô chị song sinh Karolina Pliskova (hạng 3), tuy nhiên cô em đã giành thắng lợi.\r\nTrận đấu diễn ra căng thẳng ngay từ đầu và chiến thắng được chia đều ở 2 set đầu, bước vào set quyết định, cô em Kristyna đã thắng khi giành thắng lợi trong loạt tie-break quyết định.\r\nMột chiến thắng bất ngờ khi tay vợt kém tới 110 bậc đã đánh bại được số 3 thế giới, tuy nhiên xét về kết quả đối đầu giữa hai tay vợt thì không ngạc nhiên, bởi trong 9 lần đối đầu Kristyna mới là người thắng nhiều hơn (5 trận). Giành vé đi tiếp, cô em nhà Pliskova sẽ đụng độ đồng hương Barbora Strycova ở trận tứ kết.', 22, 20, 1),
(16, 'Taylor Swift và Katy Perry đã hàn gắn mối quan hệ như thế nào?', 'Trải qua thời gian dài mâu thuẫn, Taylor Swift và Katy Perry từng muốn giữ bí mật về sự hàn gắn nhằm đảm bảo mối quan hệ thật vững chắc.', '/img/hinh/amnhac2.jpg', NULL, 3, 'Chia sẻ trên Capital Breakfast, giọng ca Look What You Made Me Do cho biết mối quan hệ giữa cô và Katy Perry tiến triển tốt đẹp trong một năm trở lại đây. Tháng 5/2018, Perry gửi thiệp mừng kèm cành ô liu - biểu tượng của hoà bình - đến Taylor Swift để ngỏ lời cầu hòa và chúc chuyến lưu diễn Reputation Stadium Tour thành công.', 17, 11, 1),
(17, 'Thu Minh bị tố chơi xấu diva Hàn Quốc khi hát chung', 'Theo khán giả, khi song ca với Thu Minh trong đêm nhạc tối 21/6, Kim So Hyang gặp khó khăn về âm thanh. Mic của nữ ca sĩ Hàn bị chỉnh bé khiến khán giả khó nghe được giọng của cô.', '/img/hinh/amnhac3.jpg', NULL, 3, 'Tối 21/6, Kim So Hyang - giọng ca được mệnh danh báu vật Hàn Quốc - là khách mời song ca với Thu Minh. Cả 2 thể hiện ca khúc I Believe I Can Fly. Tiết mục là điểm nhấn giữa những màn trình diễn khác, thiên về yếu tố trình diễn. Hai ca sĩ tiếp tục được khen ngợi về kỹ năng thanh nhạc khi khoe giọng với ca khúc kinh điển. Họ nhiều lần khiến khách mời và khán giả trầm trồ vì những nốt cao nội lực, tròn trịa.\r\nTuy nhiên, phần trình diễn khi được chia sẻ trên mạng xã hội đã làm bùng nổ tranh cãi. Một số diễn đàn tố ê-kíp của giọng ca Đường cong chơi xấu nhằm dìm đồng nghiệp Hàn Quốc.\r\nTheo phản ánh của nhiều khán giả, echo (tiếng vọng trong âm thanh) và reverb (vang âm) bất ngờ biến mất mỗi khi So Hyang hát. Mic của ca sĩ Hàn Quốc cũng có âm thanh nhỏ hơn hẳn Thu Minh, thậm chí nhiều lần cô gần như phải gân cổ để lên giọng nhưng khán giả vẫn khó nghe được giọng của So Hyang.', 17, 11, 1),
(18, 'Để Mị nói cho mà nghe của Hoàng Thùy Linh - MV chẳng giống ai ở Vpop', 'Quá khứ và hiện tại đan xen vào nhau trong thông điệp đầy ẩn dụ văn học khiến Để Mị nói cho mà nghe thực sự là MV đáng xem.', '/img/hinh/amnhac4.jpg', NULL, 3, 'Nhạc Việt không hiếm MV đẹp, vừa đầu tư về bối cảnh, vừa cầu kỳ trong sáng tạo. Nhưng MV như Để Mị nói cho mà nghe của Hoàng Thùy Linh thì chưa từng thấy.\r\nChỉ với hơn 4 phút, thời lượng không thể nói là dài, nhưng rất nhiều nhân vật trong các tác phẩm văn học hiện thực phê phán nổi tiếng nhất đã được nhắc đến như Mị, lão Hạc, cậu Vàng, Chí Phèo, Thị Nở, Xuân Tóc Đỏ, chị Dậu… Dù vậy, tuyệt nhiên không phải là nhắc kiểu điểm mặt chỉ tên, tổng kết mà là sự xuất hiện rất sống động bằng cả hình ảnh, âm nhạc lẫn vũ đạo.', 17, 11, 1),
(19, 'Sơn Tùng M-TP gây bão mạng xã hội khi úp mở sản phẩm mới', 'Hình ảnh mới của Sơn Tùng M-TP nhận hơn 110.000 lượt tương tác sau vài tiếng đăng tải. Khán giả kỳ vọng đây là teaser báo hiệu sự trở lại của nam ca sĩ.', '/img/hinh/amnhac5.jpg', NULL, 3, 'Hình ảnh mới của Sơn Tùng M-TP nhận hơn 110.000 lượt tương tác sau vài tiếng đăng tải. Khán giả kỳ vọng đây là teaser báo hiệu sự trở lại của nam ca sĩ.\r\nChỉ một tấm hình đơn giản có phông trắng in dòng chữ Hãy trao cho anh, Sơn Tùng đã gây bão cộng đồng mạng. Chỉ sau 2 giờ đăng tải vào tối 22/6, hình ảnh nói trên nhận được hơn 110.000 lượt tương tác. Theo nhiều khán giả, đây chính là hình teaser, nhá hàng sản phẩm mới của Sơn Tùng M-TP.\r\nCon số 110.000 chứng tỏ sự quan tâm không hề nhỏ mà dư luận dành cho ca sĩ sinh năm 1994, dù anh vắng bóng đã lâu. Thậm chí, Sơn Tùng chính là giọng ca nhận được sự chú ý lớn nhất lúc này.', 17, 11, 1),
(20, 'Bất ngờ chưa: Gia đình ông Sơn (Về Nhà Đi Con) sao lại giống hệt nhà Tendo trong \"Một Nửa Ranma\" thế này?', 'Gia đình bốn người của \"Về Nhà Đi Con\" sao bỗng dưng giống với các nhân vật truyện tranh quen thuộc với lứa tuổi 8x, 9x lạ thường.', '/img/hinh/dienanh3.png', NULL, 3, 'Thực ra thì không chỉ ba chị em Huệ - Thư - Dương, mà cả gia đình ông Sơn có hoàn cảnh khá giống với nhà Tendo trong Một Nửa Ranma. Cũng là một ông bố đơn thân một mình nuôi ba cô con gái khôn lớn. Ngoài chuyện Về Nhà Đi Con không có một chàng trai tóc đuôi gà, tập võ nào đến ở nhờ ra thì về mặt tính cách, ngoại hình của ba chị em trong phim lẫn trong truyện đều có rất nhiều điểm giống nhau.\r\nCả hai ông bố đơn thân này có khá ít điểm chung. Chủ yếu là về mặt ngoại hình vì cơ bản là tạo hình nhân vật của cả hai khác nhau. Một là nhân vật truyện tranh, hoạt hình nên ông Soun Tendo cần phải \"tưng tửng\" chút cho vui, ông Sơn lại là một nhân vật phim truyền hình nên phải có chiều sâu về tâm hồn hơn.', 19, 11, 1),
(21, 'Ji Soo (BLACKPINK) xuất hiện 14 giây trong Niên Sử Kí Arthdal: Người đòi kiện biên kịch, kẻ đòi trao cúp vàng Oscar!', 'Sau bao đợi chờ cho sự xuất hiện của Ji Soo trong Niên Sử Kí Arthdal, màn xuất hiện siêu ngắn trong tập mới nhất khiến fan không khỏi \"mất trí\" và đòi công bằng cho Ji Soo.', '/img/hinh/dienanh4.jpg', NULL, 3, 'Sau bao đợi chờ cho màn \"cameo\" đặc biệt của Ji Soo (BLACKPINK), ngay tập mở đầu cho Part 2: Sky Turned Inside Out, Rising Land (Phần Hai: Bầu Trời Đảo Ngược, Vùng Đất Trỗi Dậy), cô nàng đã xuất hiện đúng... 14 giây bên cạnh bản \"song trùng\" của Eun Som (Song Joong Ki). Trong phân cảnh ngắn ngủi này, nhân vật của Ji Soo đảm nhiệm - Sae Na Rae được Sa Ya (Song Joong Ki) trao tay một chiếc vòng. Anh dặn dò: \"Tối nay, chúng ta sẽ trốn đi cùng nhau!\". Tuy nhiên, khi Sa Ya chờ đợi Na Rae để cùng nhau bỏ trốn, Tae Al Ha (Kim Ok Bin) đã trả lại Sa Ya chiếc vòng đó với máu dính đầy. Từ đó, có thể kết luận rằng Na Rae có thể đã bị giết theo sự chỉ đạo của Tae Al Ha.', 19, 11, 1),
(22, '\"Kí Sinh Trùng\": Rùng mình chứng kiến người ta xa cách vì giàu có, thấu hiểu \"nhờ\" bần hàn cùng cực!', 'Bộ phim điện ảnh Hàn Kí Sinh Trùng lồng ghép các yếu tố khéo léo trong cách khắc họa hai tầng lớp giàu - nghèo. Đặc biệt là sự khác biệt giữa gia đình Ki Taek so với gia đình ông Park. ', '/img/hinh/dienanh5.jpg', NULL, 3, 'Kí Sinh Trùng (Parasite) có lẽ là bộ phim điện ảnh Hàn khiến khán giả tâm đắc nhất thời điểm này. Lồng ghép nghĩa sâu xa, thầm kín trong xã hội, dưới góc nhìn thật, kinh khủng đến rùng rợn. Bộ phim khiến người xem bàng hoàng nhận ra những mặt trái, đặc biệt là sự khác biệt giữa giai cấp giàu nghèo. Điển hình là thông qua gia đình nghèo khó của Ki Taek với “mái ấm” đẳng cấp quý tộc của ông Park. ', 19, 11, 1),
(23, 'Dòng chảy rác thải nhựa từ Mỹ tới các nước đang phát triển', 'Phóng sự của Guardian cho thấy rác nhựa từ Mỹ được chuyển sang 11 quốc gia trên thế giới, trong đó có Việt Nam.', '/img/hinh/csdd2.jpg', NULL, 3, 'Ngành công nghiệp nhựa Mỹ luôn quảng cáo rằng rác thải nhựa sẽ được chuyển tới một nhà máy nào đó, nơi nó được tái chế thành đồ mới. Tuy nhiên, đó không phải là trải nghiệm của bà Nguyễn Thị Hồng Thắm, một phụ nữ Việt Nam 60 tuổi có 7 con, sống giữa đống nhựa bẩn thỉu có xuất xứ từ Mỹ ở thôn Minh Khai, huyện Văn Lâm, tỉnh Hưng Yên.\r\nTrước cửa nhà bà, ánh mặt trời thiêu đốt chiếc túi Cheetos của cửa hàng Walmart và một túi nhựa từ ShopRite, chuỗi siêu thị ở New Jersey in thông điệp kêu gọi người dân hãy tái chế nó. Bà Thắm được trả 150 nghìn đồng (6,5 USD) một ngày để loại những thứ không thể tái chế và sắp xếp lại những thứ có thể tái chế.', 5, 11, 1),
(24, 'Biển người Triều Tiên chào đón Tập Cận Bình', 'Hàng trăm nghìn người xếp hàng ở sân bay và dọc đường phố Bình Nhưỡng, vẫy hoa và cờ khi Chủ tịch Trung Quốc lần đầu thăm Triều Tiên.', '/img/hinh/csdd3.jpg', NULL, 3, 'Gần 10.000 người dân cũng có mặt tại sân bay, xếp thành hàng lối ngay ngắn, tươi cười, hò reo, vẫy hoa và quốc kỳ hai nước khi đoàn đại biểu Trung Quốc xuất hiện.\r\nĐể chào đón Chủ tịch Tập, thủ đô Bình Nhưỡng đã được trang trí nhiều biển hiệu, biểu ngữ lớn ca ngợi tình hữu nghị giữa Triều Tiên và Trung Quốc.\r\nDọc các con đường từ sân bay quốc tế Bình Nhưỡng đến Nhà khách Kumsusan, nơi Chủ tịch Trung Quốc và phu nhân lưu trú, hơn 250.000 người, gồm cả đàn ông, phụ nữ và trẻ em, cũng xếp hàng với hy vọng được nhìn thấy ông và lãnh đạo Kim Jong-un.\r\nÔng Kim và ông Tập đi chung một chiếc limousine và đã đứng dậy vẫy tay chào người dân. Tại Cung điện Mặt trời Kumsusan, hai người được các quan chức cấp cao của Triều Tiên và đại diện của người dân Bình Nhưỡng chào đón. Hãng thông tấn Xinhua cho hay đây là lần đầu tiên một lãnh đạo nước ngoài được đón tiếp bằng nghi thức như trên tại địa điểm mang tính thiêng liêng này.', 5, 11, 1),
(25, 'Người Hàn Quốc đòi cách chức thẩm phán giảm án cho tội phạm ấu dâm', 'Hàng trăm nghìn người ký đơn kiến nghị đòi cách chức thẩm phán tòa tối cao Seoul vì cho rằng ông này nương nhẹ cho tội phạm ấu dâm.', '/img/hinh/csdd4.jpg', NULL, 3, ' Đơn kiến nghị kêu gọi cách chức thẩm phán tòa án tối cao Seoul Han Kyu-huyn tới nay đã thu hút hơn 115.000 chữ ký, sau khi ông này giảm án cho tội hiếp dâm trẻ em của bị cáo họ Lee trong phiên tòa phúc thẩm tuần trước.\r\nBị cáo Lee, 35 tuổi, giám đốc một công ty gia sư tư nhân, bị tố hiếp dâm một bé gái 10 tuổi sau khi dụ dỗ bé uống rượu tại nhà riêng năm 2018. Trong phiên tòa sơ thẩm tháng 11 năm ngoái, Lee bị kết án 8 năm tù.\r\nTuy nhiên, trong phiên phúc thẩm, thẩm phán Han giảm án cho Lee xuống 3 năm tù vì cho rằng không có thêm bằng chứng ngoài lời khai của nạn nhân về việc bị tấn công tình dục.', 5, 11, 1),
(26, 'Cô gái Mỹ bị cáo buộc giết bạn để nhận 9 triệu USD từ triệu phú giả danh ', 'Denali Brehmer và các đồng phạm đối mặt 99 năm tù sau khi sát hại nạn nhân theo chỉ đạo của một người quen qua mạng tự xưng là triệu phú.', '/img/hinh/csdd5.jpg', NULL, 3, 'Theo cáo trạng, Denali Brehmer, 18 tuổi, ở thành phố Anchorage, bang Alaska, Mỹ, bị cáo buộc sát hại Cynthia Hoffman, 19 tuổi, tại một con đường mòn hôm 2/6, theo lệnh từ người đàn ông mà cô quen qua mạng nhiều tháng trước. \r\nNgười này tự xưng là \"Tyler\", một triệu phú ở bang Kansas, và hứa hẹn sẽ cho Brehmer 9 triệu USD sau khi ra tay. Tuy nhiên, \"Tyler\" chỉ là một tài phiệt giả mạo do Darin Schilmiller, 21 tuổi, dựng lên để lừa bịp.\r\nCác nhà điều tra cho hay họ đã phát hiện trong điện thoại của Brehmer và Schilmiller những cuộc trao đổi về \"kế hoạch cưỡng hiếp và sát hại một người nào đó tại Alaska\". Brehmer được cho là đã dụ dỗ 4 người bạn cùng tham gia kế hoạch này và hứa trả thù lao hậu hĩnh.', 5, 11, 1),
(27, 'Mỹ-Iran đang \"chơi\" những nước cờ nguy hiểm bên ngưỡng cửa chiến tranh: Sai một bước, đi vạn dặm', 'Chiến tranh có thể trở thành điều không thể tránh khỏi, nếu cả Mỹ và Iran đều giữ thái độ không khoan nhượng trong cuộc đối đầu ở Trung Đông.', '/img/hinh/quocte2.jpg', NULL, 3, 'Nguy cơ một cuộc chiến mới nổ ra ở khu vực Trung Đông vốn âm ỉ trong vài tháng qua đã leo thang tới mức độ nghiêm trọng vào tuần trước.\r\nTổng thống Mỹ Donald Trump đã áp đặt các biện pháp trừng phạt kinh tế mới đối với Iran, và phía Iran đã phản ứng lại bằng cách bắn hạ một máy bay không người lái (UAV) do thám trị giá hơn 100 triệu USD của Mỹ, mà Washington khẳng định là máy bay này đang hoạt động trong vùng biển quốc tế.\r\nĐể đáp trả vụ UAV bị bắn hạ, Tổng thống Trump đã ra lệnh tấn công trả đũa nhằm vào mục tiêu là các hệ thống phòng thủ tên lửa do Nga sản xuất mà Iran đang sở hữu, nhưng cuối cùng ông lại đột ngột hủy bỏ kế hoạch vào phút chót vì những lí do vẫn chưa được công bố. ', 12, 11, 1),
(28, 'Thủ tướng Nguyễn Xuân Phúc phê phán phát biểu của Thủ tướng Lý Hiển Long về vấn đề Campuchia', 'Chiều 22/6, theo đề nghị của phía Singapore, Thủ tướng Nguyễn Xuân Phúc đã tiếp Thủ tướng Lý Hiển Long tại Bangkok, Thái Lan.', '/img/hinh/quocte3.jpg', NULL, 3, 'Thủ tướng Nguyễn Xuân Phúc phê phán phát biểu ngày 31/5/2019 của Thủ tướng Lý Hiển Long phần liên quan đến Việt Nam và Campuchia giai đoạn 1979-1980. Thủ tướng Việt Nam khẳng định lịch sử đã chứng minh những nhận định của phía Singapore về vai trò của Việt Nam vào thời điểm đó là không đúng và việc nêu lại những định kiến này làm tổn thương sâu sắc tới Việt Nam và Campuchia, đặc biệt là thân nhân của hàng trăm nghìn quân tình nguyện Việt Nam đã hy sinh xương máu để mang lại hòa bình, giúp giải phóng nhân dân Campuchia khỏi chế độ Khmer Đỏ tàn bạo và cả quá trình xây dựng đất nước đầy khó khăn, gian khổ sau này.\r\nThủ tướng Lý Hiển Long giải thích Singapore không có ý làm tổn thương Việt Nam, chỉ nhắc lại một chương đau buồn trong lịch sử Đông Dương để nhấn mạnh hoà bình, ổn định và thịnh vượng hôm nay không mặc nhiên mà có, và bối cảnh hiện nay đòi hỏi ASEAN tiếp tục duy trì đoàn kết, gắn bó và tăng cường hợp tác. ', 12, 11, 1),
(29, 'Kim Jong Un nhận thư riêng \"thú vị\" từ ông Trump', 'Nhà lãnh đạo Triều Tiên Kim Jong Un đã nhận được một lá thư riêng từ Tổng thống Mỹ Donald Trump, truyền thông quốc gia Triều Tiên vừa đưa tin.', '/img/hinh/quocte4.jpg', NULL, 3, 'Theo thông tấn xã trung ương Triều Tiên (KCNA), ông Kim Jong Un nói, lá thư có nội dung tốt. Hiện, thông tin chi tiết về lá thư vẫn chưa được công bố.\r\n“Ông Kim Jong Un cho biết, đang xem nghiêm túc nội dung thú vị của bức thư”, KCNA đưa tin. Hiện, Nhà Trắng chưa bình luận gì về thông tin trên.\r\nTheo CNBC, Tổng thống Mỹ Trump đã giữ một mối quan hệ gây tranh cãi với lãnh đạo Triều Tiên Kim Jong Un, có lúc ông bày tỏ sự thiện ý có lúc lại đe doạ Bình Nhưỡng nếu không tuân thủ các đòi hỏi mà ông đưa ra.\r\nHôm 21/6, ông Trump gia hạn các trừng phạt hiện thời đang áp đặt lên Triều Tiên thêm một năm, với lý do vũ khí hạt nhân của nước này đặt ra các mối đe doạ “đặc biệt và khác thường”.', 12, 11, 1),
(30, 'Thủ tướng Nguyễn Xuân Phúc: Tình hình Biển Đông diễn biến phức tạp, nhiều hoạt động đơn phương phi pháp', 'Thủ tướng lo ngại các diễn biến phức tạp trên Biển Đông hiện nay gây xói mòn lòng tin, không có lợi cho nỗ lực đối thoại, hòa bình, ổn định ở khu vực.', '/img/hinh/quocte5.jpg', NULL, 3, 'Bên lề các hoạt động chính trong chương trình tham dự Hội nghị Cấp cao ASEAN lần thứ 34 tại Thủ đô Bangkok (Thái Lan), Thủ tướng Nguyễn Xuân Phúc nhận lời phỏng vấn của tờ The Nation (Thái Lan).\r\nMở đầu cuộc phỏng vấn, Thủ tướng hoan nghênh nỗ lực của Thái Lan, nước Chủ tịch ASEAN 2019 trong việc thúc đẩy, triển khai các sáng kiến cụ thể hóa chủ đề của năm về “Thúc đẩy quan hệ đối tác vì sự bền vững”. Thủ tướng khẳng định Việt Nam sẽ tích cực cùng với Thái Lan và các nước ASEAN khác triển khai các sáng kiến này.', 12, 11, 1),
(31, 'Gian hàng Tập Đoàn Tân Á Đại Thành thu hút đông đảo khách tham quan và mua sắm tại Vietbuild tháng 06/2019\r\n', 'Tập đoàn Tân Á Đại Thành mang đến Triển lãm Quốc tế Vietbuild lần 2 tại Trung tâm hội chợ triển lãm SECC quận 7, TP Hồ Chí Minh nhiều dòng sản phẩm chất lượng cao với công nghệ cải tiến vượt bậc, mẫu mã đa dạng và hiện đại.\r\n', '/img/hinh/muasam1.jpg', NULL, 4, 'Triển lãm quốc tế Vietbuild lần 2 năm 2019 tại TP Hồ Chí Minh với chủ đề “Xây dựng – Vật liệu xây dựng – Bất động sản & Trang trí nội ngoại thất” chính thức diễn ra tại Trung tâm triển lãm SECC quận 7. Sự kiện lần này được tổ chức từ ngày 19/06 đến 23/06, với  quy mô 2350 gian hàng từ hơn 800 doanh nghiệp đến từ các quốc gia khác nhau, trong đó có nhiều doanh nghiệp tên tuổi và uy tín hàng đầu Việt Nam như Tập đoàn Tân Á Đại Thành.\r\n\r\n', 13, 11, 1),
(32, 'Mayweather khoe hóa đơn mua sắm dài cả mét\r\n', 'Võ sĩ người Mỹ tiếp tục hành trình tiêu tiền sau khi kiếm được 350 triệu đôla từ trận đấu với Conor McGregor.', '/img/hinh/muasam2.jpg', NULL, 5, 'Floyd Mayweather đăng ảnh trên Instagram hôm 29/8 khoe hóa đơn chi chít các danh mục hàng hóa, khi dẫn đoàn tùy tùng chín người đi mua sắm trong một cửa hàng giày.\r\n\r\nKhoe tiền và cách tiêu tiền là một thói quen thường thấy ở Mayweather, võ sĩ vừa đánh bại Conor McGregor trong trận đấu được mệnh danh là tỷ đô cuối tuần qua.\r\n\r\n', 13, 12, 1),
(33, 'Phố mua sắm phong cách châu Âu tại Sun Plaza Grand World Hạ Long\r\n', 'Các shophouse tại phân khu Europe mang kiến trúc tân cổ điển, quy tụ các cửa hàng, thương hiệu thời trang cao cấp nhằm thu hút nhóm khách thượng lưu.\r\n\r\n', '/img/hinh/muasam3.jpg', NULL, 5, 'Shophouse Europe bao gồm ba tiểu khu Silkroad, Élysée và LOpéra với 16 block. Hiện đại nhất là là tiểu khu Élysée lấy cảm hứng từ đại lộ thời trang nổi tiếng Champs - Élysées (Pháp). \r\n\r\nToàn bộ cửa hàng thời trang tại tiểu khu này được trang trí bằng hệ thống cửa kính với hình vòm bán nguyệt đặc trưng của Pháp, nhằm nổi bật các thiết kế thời trang. Đặc biệt, chủ đầu tư mạnh tay chi hàng triệu đô để thuê WATG - tập đoàn thiết kế hàng đầu thế giới về khách sạn, nghỉ dưỡng và công trình vui chơi - giải trí nhằm đảm bảo từng chi tiết của Élyseé đậm tính châu Âu.', 13, 12, 1),
(34, '23% người Việt đi du lịch để mua sắm hàng cao cấp\r\n', 'Độ giàu có thay đổi khiến người tiêu dùng Việt có khả năng mua sắm những sản phẩm và dịch vụ chuẩn quốc tế, theo Nielsen.\r\n\r\n', '/img/hinh/muasam4.jpg', NULL, 6, 'Công ty nghiên cứu thị trường Nielsen vừa công bố báo cáo Sự thay đổi mức độ giàu có của người tiêu dùng, trong đó chỉ ra nhiều hình thức để người tiêu dùng Việt mua các sản phẩm cao cấp. \r\n\r\n23% người tiêu dùng Việt Nam lựa chọn du lịch nước ngoài để mua sắm hàng cao cấp ngay tại cửa hàng có thương hiệu lớn. Tuy nhiên, khi mua ở trong nước thì hai phần ba người tiêu dùng được khảo sát vẫn chọn các cửa hàng truyền thống để mua những sản phẩm này.\r\n\r\nVới phương án mua hàng trực tuyến, gần một nửa người tiêu dùng (48%) lựa chọn mua của các nhà bán lẻ trong nước, trong khi đó 27% chọn mua từ nước ngoài', 13, 9, 1),
(35, 'Hơn 30 triệu người Việt mua sắm trực tuyến\r\n', 'Tổng doanh thu kinh doanh thương mại điện tử năm 2018 hơn 8 tỷ USD, gấp đôi 3 năm trước.\r\n', '/img/hinh/muasam5.jpg', NULL, 7, 'Tại hội thảo \"Bảo vệ người tiêu dùng trong thương mại điện tử\" vừa diễn ra tại TP HCM, ông Nguyễn Sinh Nhật Tân, Cục trưởng Cục Cạnh tranh và Bảo vệ quyền lợi người tiêu dùng cho biết, hiện có gần một phần ba dân số (tức khoảng hơn 30 triệu người) tham gia mua sắm trực tuyến. Tổng doanh thu kinh doanh thương mại điện tử liên tục tăng, năm 2018 hơn 8 tỷ USD, tăng 30% so với 2017, gấp đôi so với 2015.', 13, 10, 1),
(36, 'Dương Thị Kim Ngân đăng quang Hoa hậu Doanh nhân quyền năng thế giới 2019\r\n', 'Vượt qua các thí sinh đến từ nhiều quốc gia, doanh nhân Dương Thị Kim Ngân giành ngôi vị cao nhất cuộc thi Miss & Mrs Global Powerfull Business 2019 vừa diễn ra tại Pháp. \r\n\r\n\r\n', '/img/hinh/hoahau1.jpg', NULL, 8, 'Câu trả lời xuất sắc về vai trò của phụ nữ Việt Nam trong gia đình và môi trường kinh doanh thời hiện đại, doanh nhân Dương Thị Kim Ngân (SBD 028, quê Hải Phòng) đã thuyết phục Giám khảo - Cựu hoa hậu Pháp - Sanday Mignier Hilary. Theo chị, một gia đình hay một đất nước muốn duy trì ổn định và phát triển đều cần sự chung tay đóng góp sức lao động của tất cả các thành viên, mỗi người đều có sứ mệnh, vai trò của riêng mình trong cuộc đời này.', 15, 9, 1),
(37, 'Hoa hậu Đặng Huỳnh Thanh lọt Top 12 Doanh nhân Việt Nam\r\n\r\n', 'Người đẹp \"Doanh nhân quốc tế 2018\" được vinh danh trong chương trình Diễn đàn Nhà lãnh đạo doanh nghiệp vừa diễn ra ở TP HCM.\r\n\r\n', '/img/hinh/hoahau2.jpg', NULL, 9, 'Nữ doanh nhân Đặng Huỳnh Thanh vừa đăng quang ngôi vị cao nhất tại cuộc thi Hoa hậu Doanh nhân quốc tế 2018 diễn ra tại Seoul - Hàn Quốc tháng 12/2018 vừa qua. Sau ngôi vị cao nhất của cuộc thi sắc đẹp, Hoa hậu tiếp tục được vinh danh trong Top 12 Doanh nhân Việt Nam xuất sắc.', 15, 10, 1),
(38, 'Hoa hậu Tiểu Vy hội ngộ dàn người đẹp tại Queen Plaza\r\n\r\n', 'Hoa hậu Việt Nam 2018 gặp gỡ Á hậu Phương Nga, Thúy An, người đẹp nhân ái Thùy Tiên... tại tiệc cảm ơn diễn ra ở Queen Plaza Kỳ Hòa.\r\n\r\n\r\n\r\n', '/img/hinh/hoahau3.jpg', NULL, 10, 'Vừa trở về từ cuộc thi \"Miss World 2018\", Tiểu Vy gây bất ngờ khi diện thiết kế đỏ, xẻ cao gợi cảm. Sau cuộc thi Miss World, cô gái 18 tuổi dành được nhiều tình cảm từ người hâm mộ và được đánh giá cao về những nỗ lực tại đấu trường vừa qua.', 15, 6, 1),
(39, 'Hoa hậu Bùi Thị Hà tổ chức giải bóng Long Hoàng hưởng ứng AFF Cup\r\n\r\n\r\n', 'Hoa hậu Phu nhân Thế giới người Việt 2014 muốn truyền tinh thần yêu thể thao và rèn luyện sức khỏe cho nhân viên trong công ty.\r\n\r\n', '/img/hinh/hoahau4.jpg', NULL, 11, 'Giải bóng đá \"Long Hoàng securities cup\" được Hoa hậu Bùi Thị Hà cùng ban điều hành công ty tổ chức thường niên vào dịp cuối năm. Năm nay, giải đấu tổ chức đúng mùa AFF cup nhưng không trùng với giờ xem bóng đá để nhân viên có thể sống trong ngày hội bóng đá đích thực.\r\n\r\n', 15, 7, 1),
(40, 'Nam A Bank đồng hành H Hen Niê tại Hoa hậu Hoàn vũ 2018\r\n\r\n', 'Nhà băng trao thẻ tín dụng 100 triệu đồng, cùng đặc quyền tại sân bay, chi tiêu tại Thái Lan trong thời gian cô tham gia đấu trường quốc tế.\r\n', '/img/hinh/hoahau5.jpg', NULL, 12, 'Theo đó, thẻ tín dụng Nam A Bank JCB Platinum mang đến nhiều đặc quyền cho hoa hậu H Hen Niê như miễn phí phòng chờ cao cấp tại sân bay quốc tế Suvarnabhumi (Thái Lan) cùng hơn 61 sân bay khác ở châu Á, miễn phí chuyển đổi ngoại tệ khi thanh toán tại Thái Lan và nhiều quốc gia trên thế giới, hoàn tiền 10% khi chi tiêu và những ưu đãi hấp dẫn khác... giúp người đẹp thuận tiện hơn trong các hoạt động mua sắm, thanh toán tại Thái Lan để chuẩn bị tốt nhất cho cuộc thi.\r\n', 15, 12, 1),
(41, 'Nhiều nghệ sĩ gạo cội tham dự lễ trao giải Cánh diều 2018\r\n', 'Sự kiện vừa diễn ra tại Nhà hát Quân đội TP HCM với sự tham gia của nhiều nghệ sĩ gạo cội của bộ môn nghệ thuật thứ bảy.\r\n\r\n', '/img/hinh/nghesi1.jpg', NULL, 13, 'Chương trình do Hội Điện ảnh Việt Nam và Công ty CP Truyền thông Vietart phối hợp tổ chức. Các tác phẩm, cá nhân xuất sắc của nền điện ảnh nước nhà trong năm qua đã được vinh danh trên sân khấu Nhà hát Quân đội phía Nam. Chương trình năm nay tiếp tục gửi tới người hâm mộ nghệ thuật thứ bảy góc nhìn toàn cảnh về những hoạt động, thành tựu của điện ảnh nước nhà qua một năm cống hiến và sáng tạo.\r\n\r\n', 16, 11, 1),
(42, 'DSS Việt Nam tài trợ cho câu lạc bộ bóng đá nghệ sĩ V- Stars\r\n', 'Lễ ký kết hợp đồng tài trợ  cho câu lạc bộ bóng đá nghệ sĩ V-Stars vừa diễn ra hôm 12/12 tại Công ty CP công nghệ DSS Việt Nam.\r\n', '/img/hinh/nghesi2.jpg', NULL, 14, 'Chương trình do Hội Điện ảnh Việt Nam và Công ty CP Truyền thông Vietart phối hợp tổ chức. Các tác phẩm, cá nhân xuất sắc của nền điện ảnh nước nhà trong năm qua đã được vinh danh trên sân khấu Nhà hát Quân đội phía Nam. Chương trình năm nay tiếp tục gửi tới người hâm mộ nghệ thuật thứ bảy góc nhìn toàn cảnh về những hoạt động, thành tựu của điện ảnh nước nhà qua một năm cống hiến và sáng tạo.\r\n\r\n', 16, 7, 1),
(43, 'Nghệ sĩ Việt - Hàn góp mặt tại đại nhạc hội của Diana\r\n', 'Đại nhạc hội \"Yêu.Tin.Hành động\" sẽ diễn ra ngày 8/12 có sự tham gia của hai nhóm nhạc Hàn Quốc, thu hút đông đảo các bạn trẻ.\r\n', '/img/hinh/nghesi3.jpg', NULL, 15, 'Sau nhiều tháng chuẩn bị cùng khoản đầu tư lớn, Diana gây chú ý khi thông báo hai nhóm nhạc đình đám đến từ Hàn Quốc là EXID và BTOB sẽ có mặt tại sự kiện đại nhạc hội \"Yêu.Tin.Hành động\" ở Hà Nội và TP HCM. Vé đến sự kiện này chỉ được tặng mà không mở bán.\r\n', 16, 7, 1),
(44, 'Vacheron Constantin hợp tác với 4 nghệ sĩ trong chiến dịch mới\r\n\r\n', 'Đồng hồ cao cấp Vacheron Constantin vừa tung ra chiến dịch \"One of not many\" hợp tác với 4 nghệ sĩ tài năng nhằm tôn vinh giá trị thương hiệu\r\n', '/img/hinh/nghesi4.jpg', NULL, 16, 'Người mở đường tiên phong là nghệ sĩ Benjamin Clementine. Được coi là một trong những nhạc sĩ tài năng nhất của thế hệ mình, Clementine đã xây dựng bản thân trở thành một nhà điêu khắc đa nhạc cụ, một nhà thơ đương đại và một ca sĩ xuất sắc. Với tinh thần sáng tạo biểu trưng cho cả một thế hệ luôn khát khao học hỏi nhiều hơn, Benjamin Clementine là biểu tượng nhân cách hóa cho câu nói của Vacheron Constantin, hãy là \"Một trong số không nhiều\".', 16, 11, 1),
(45, 'Công ty Lộc Sơn Hà đấu giá tranh 200 triệu ủng hộ nghệ sĩ Việt\r\n\r\n', 'Số tiền đấu giá sẽ ủng hộ cho chương trình \"Tình nghệ sĩ 15\" diễn ra vào tối ngày 30/8 tại TP HCM.\r\n\r\n\r\n', '/img/hinh/nghesi5.jpg', NULL, 17, 'Tham gia chương trình \"Tình nghệ sĩ 15\" do ca sĩ Đàm Vĩnh Hưng tổ chức vào tối 30/8 tại TP HCM, doanh nhân Nguyễn Mạnh Hà - Chủ tịch HĐQT Tập đoàn Think BIG và Công ty Lộc Sơn Hà đã đấu giá thành công bức tranh phong thủy trí giá 200 triệu đồng.\r\n\r\n', 16, 11, 1),
(46, 'Chiêm ngưỡng bức tranh sống động như thật của thầy giáo 9X\r\n\r\n', 'Những bức tranh chỉ được vẽ với những cây chỉ đen nhưng nhân vật trong tranh lại hiện lên vô cùng sống động và chân thực.\r\n\r\n', '/img/hinh/mythuat1.jpg', NULL, 18, 'Chàng trai 9X đó là Vũ Văn Năng (1993, Biên Hòa, Đồng Nai). Vũ Văn Năng được biết đến ở trường với khả năng giỏi ngoại ngữ và biệt tài vẽ tranh truyền thần như thật. \r\n', 20, 11, 1),
(47, 'Tìm thấy nàng Mona Lisa trẻ đẹp hơn 10 tuổi\r\n', 'Các chuyên gia mỹ thuật khẳng định, danh họa Leonardo da Vinci đã khắc họa chân dung một nàng Mona Lisa trẻ trung, tươi vui hơn khoảng 10 năm trước khi cho ra đời tác phẩm nổi tiếng cùng nội dung\r\n\r\n', '/img/hinh/mythuat2.jpg', NULL, 19, 'Với kích thước nhỉnh hơn đôi chút so với bức chân dung nàng Mona Lisa lừng danh đang được trưng bày tại bảo tàng cung điện Louvre ở Paris (Pháp), bức tranh mới phát hiện có tông màu sẫm tối hơn, với phần bối cảnh khác biệt và chưa hoàn chỉnh so với tác phẩm đã được công chúng biết đến. Ngoài ra, người Phụ nữ được cho là nàng Mona Lisa trong bức tranh này cũng trông trẻ hơn với nụ cười tươi tỉnh, ít bí hiểm hơn.\r\n', 20, 15, 1),
(48, 'Điểm chuẩn ĐH Mỹ thuật VN, Mỹ thuật Công nghiệp\r\n\r\n', 'Trường ĐH Mỹ thuật Công nghiệp và ĐH Mỹ thuật Việt Nam vừa công bố điểm chuẩn đại học năm 2012 theo ngành học\r\n\r\n', '/img/hinh/mythuat3.jpg', NULL, 20, '<>Trường ĐH Mỹ thuật Công nghiệp vừa công bố điểm chuẩn đại học năm 2012. Khối thi: H- thi 3 môn: Văn, Bố cục màu, Hình họa. Môn nhân hệ số: Bố cục màu (M2), Hình họa (M3) - Hệ số: 2\r\n', 20, 15, 1),
(49, 'Nhà văn Kim Lân qua lời kể của con trai (kỳ 2)\r\n\r\n', 'Đối với ông, con cái như những thứ tài sản thiêng liêng mà tạo hóa đã ban tặng cho ông.\r\n\r\n', '/img/hinh/mythuat4.jpg', NULL, 21, 'Họa sĩ Đức bảo: Ông cụ là người cực kỳ đa tài, từng là họa sỹ, diễn viên kịch nói, tuồng, viết văn, chơi chim, chơi cá. Lĩnh vực nào ông cũng dành hết tất cả sự say mê. Đặc biệt là tình yêu đối với mỹ thuật. Đó có thể coi là tình yêu bất diệt trong ông. Và rồi, tình yêu đó đã được truyền sang các con.', 20, 15, 1),
(50, 'Tự tin về đích với các chiêu đạt điểm cao khối H, V\r\n\r\n', '- Giảng viên, họa sỹ Nguyễn Thế Lương – Chủ nhiệm bộ môn Mỹ thuật, ĐH Kiến Trúc với kinh nghiệm 20 năm ra đề và chấm thi\r\n\r\n', '/img/hinh/mythuat5.jpg', NULL, 22, 'Để chắc chắn cho sự có mặt của mỗi thí sinh trong buổi thi, mỗi thí sinh cần đặt cọc 200.000 đồng cho Ban tổ chức tại các cơ sở của FPT Arena tại Hà Nội và TP.HCM. Khoản đặt cọc này sẽ được Ban tổ chức hoàn trả lại tận tay bạn vào buổi Talkshow “Bí quyết giành điểm cao khối H, V”.\r\n', 20, 15, 2),
(51, 'Tite: \"Brazil chơi một trong những trận hay nhất thời của tôi\"', 'HLV tuyển Brazil ca ngợi các học trò sau trận thắng Peru 5-0.', '/img/hinh/bd6.png', NULL, 1, 'Brazil bị người hâm mộ la ó ở hai trận đầu tiên với Bolivia và Venezuela. Tuy nhiên, họ nhận những tràng vỗ tay tán thưởng ở lượt đấu cuối cùng khi trút năm bàn vào lưới Peru. Đội chủ nhà, nhờ đó, vào tứ kết với ngôi đầu bảng A.', 21, 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` varchar(12) DEFAULT '0000-00-00',
  `Permission` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `Username`, `Password`, `Name`, `Email`, `DOB`, `Permission`) VALUES
(8, 'hoanglong23', 'hoanglong2', 'Kiệt Võ', 'vokongkiet@gmail.com', '2019-06-13', 1),
(5, 'vokiet', '123456', 'Kiệt Võ', 'vokongkiet@gmail.com', '2019-06-06', 1),
(2, 'long', '$2b$10$uaNt1ta6KqRNhxe2ROp8CeXEKHbvRm9vQJQG6U/1ovZ8GPc0Eqf7.', 'hoang Long', 'long@gmail.com', '1997-04-11', 0),
(3, 'loc', '$2b$10$LOm.vbYH4UZgQbG62pdn1OYWbBSPCq..2zEqkMo79XY2R/FMQmZYm', 'lộc nguyễn', 'loc@gmail.com', '2019-06-13', 0),
(4, 'huuloc', '123456', 'Loc', 'loc@gmail.com', '1997-12-05', 1),
(6, 'gagaga', 'gagaga', 'Kiệt Võ', 'vokongkiet@gmail.com', '2019-06-06', 1),
(7, 'hoanglong2', 'hoanglong2', 'hoanglong2', 'hoanglong@gmail.com', '2019-06-17', 1),
(9, 'hoanglong234', 'hoanglong234', 'hoanglong234', 'vokongkiet@gmail.com', '2019-06-05', 1),
(10, 'acb123', 'acb123', 'acb123', 'vokongkiet@gmail.com', '2019-06-14', 1),
(11, 'abc', '$2b$10$cZzWa8xMmxLba21JUVfyRO4IME7vDNcAdVvBq.fasMkPEwPuPuiby', 'AB', 'bc@gmail.com', '2019-06-14', 0),
(12, 'bao', '$2b$10$8F4Hc50EBL8ZD3vcGb7Tquhucis3ovUL6nfRcDFTa3T7ag0bEZo76', 'Bao', 'vokongkiet@gmail.com', '2019-06-05', 0),
(13, 'hoai', '$2b$10$6pftDrTy9RpsPdTEKspTa.m0uU9gpl1t5s2OICKor9eRP0HA0m3UG', 'Hoai', 'vokongkiet@gmail.com', '2019-06-08', 0),
(14, 'tu', '$2b$10$5.3KIQ2bTiY7YS2RIf4Rt.Ads.QOP/6b8zelr1EdqbwrPRAVkGjVC', 'Tú Nguyễn', 'tunguyen@gmail.com', '2017-04-12', 0),
(15, 'an', '$2b$10$0BehrJu50OCAWCObVF5SceIQ0MZjvo9SUXCjfTZHU9up.lfMuhWQ2', 'Ân Nguyễn', 'nguyenan@gmail.com', '2017-03-15', 0),
(16, 'dieu', '$2b$10$OtQFidcA3vQP5wqJJjhVS.uPD/QWkHzPgDLllU8X6xLkCr1LVR4pu', 'Diệu Song', 'songdieu@gmail.com', '2019-06-04', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `writer`
--

CREATE TABLE `writer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaythamgia` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Trangthai` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `writer`
--

INSERT INTO `writer` (`ID`, `Name`, `Ngaythamgia`, `Email`, `Trangthai`) VALUES
(1, 'Hà Quốc Huy', '25-09-1997', 'haquochuy@gmail.com', 'ĐANG HOẠT ĐỘNG'),
(2, 'Lê Xuân Phúc', '30-04-2000', 'xuanphuc@gmail.com', 'ĐÃ NGHỈ PHÉP');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idLT`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`idTag`);

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
  ADD PRIMARY KEY (`idUser`);

--
-- Chỉ mục cho bảng `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `idLT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `idTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `writer`
--
ALTER TABLE `writer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
