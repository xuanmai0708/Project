-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2017 at 03:55 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `SonChinhHang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL,
  `TongThanhTien` int(11) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'MAC lipstick', '', 0),
(2, 'YSL', '', 0),
(3, '3CE', '', 0),
(4, 'BBIA', '', 0),
(5, 'DIOR', '', 0),
(6, 'Tom ford', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1111, 'Son bóng', 0),
(2222, 'Son lì', 0),
(3333, 'Son tint', 0),
(4444, 'Son kem', 0),
(5555, 'Son dưỡng môi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaloaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `GiaSanPham` int(11) NOT NULL,
  `NgayNhap` datetime NOT NULL,
  `SoLuongTon` int(11) NOT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `SoLuocXem` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(1, 'Dior Addict Lip Maximizer ', 'DiorBong.jpg', 800000, '2017-12-01 00:00:00', 3, 5, 20, 'Dòng son cao cấp, tích hợp dưỡng,làm căng mọng môi và tươi màu son', 0, 5555, 5),
(2, 'Son kem lì màu 01 rouge tatouage', 'YSLsonkem.jpg', 999000, '2017-12-16 00:00:00', 1, 10, 50, '-Là dong son cao cấp của Pháp. Chất son mềm, mịn và mướt.\r\n- Độ giữ màu sau khi ăn là 80%', 0, 4444, 2),
(3, 'Son lì YSL màu 201 orange imagine', 'YSLsonli.jpg', 849000, '2017-12-16 00:00:00', 4, 8, 100, '- Chất son mềm , mịn và mướt, rất nhiều dưỡng nhưng không bị bóng dính\r\n- Xuất xứ: Pháp\r\n- Độ bám màu tốt', 0, 2222, 2),
(4, 'Son lì YSL màu 221 rose ink', 'YSLsonliROSE.jpg', 849000, '2017-12-16 00:00:00', 0, 20, 40, '- Chất son mềm , mịn và mướt, rất nhiều dưỡng nhưng không bị bóng dính\r\n- Xuất xứ: Pháp\r\n- Độ bám màu tốt', 0, 2222, 2),
(5, 'Son Kem MAC Bengal Tiger ', 'MACsonkem', 639000, '2017-12-16 00:00:00', 2, 10, 30, '- Chất son sánh đặc, không bị vón cục khi son lên môi\r\n- Lên màu chuẩn và chê bất kì khuyết điểm nào trên môi', 0, 4444, 1),
(6, 'Son MAC Flamingo – Lustre', 'MAClustre.jpg', 480000, '2017-12-16 00:00:00', 5, 20, 50, '- Son không quá lì, nhưng giữ màu được trong thời gian dài\r\n- Có thành phần dưỡng cho đôi môi mềm mại, quyến rũ và thu hút', 0, 2222, 1),
(7, 'Tom Ford Rose Soleil', 'TFrose.jpg', 1650000, '2017-12-16 00:00:00', 3, 10, 60, '- Màu son đỏ trầm phù hợp cho các cô nàng thời thượng\r\n- Có chứa dưỡng chất cho đôi môi mềm mượt,không hề bóng nhẫy để đôi môi luôn căng mọng đầy đặn\r\n- Mùi thơm vani ngọt ngào', 0, 5555, 6),
(8, 'Tom Ford COLOR PARADISO', 'TFparadiso.jpg', 1690000, '2017-12-16 00:00:00', 10, 90, 190, '- tone hồng, phù hợp với mọi người, mọi loại da, tôn lên vẻ đẹp sang trọng quý phái\r\n- Lên màu nhẹ, không dày màu, không gây ra hiện tượng thâm môi', 0, 1111, 6),
(9, 'bbia 07 Dreamy hồng coral', 'bbiaHong.jpg', 160000, '2017-12-16 00:00:00', 3, 30, 50, '- Chất son của Green Series vẫn là matte nhưng mềm hơn Red Series một tí, thích hợp cho bạn nào môi hơi khô và muốn mượt môi hơn.\r\n- Vì có độ dưỡng nên son này giữ màu ở mức khá, tầm 4-5 tiếng.', 0, 2222, 4),
(10, 'SON LAST LIPSTICK - 03 ALLURING', 'bbia03.jpg', 160000, '2017-12-16 00:00:00', 5, 4, 10, '- Dòng son lì, màu đỏ đậm là biểu tượng sự quyến rũ của phái đẹp. \r\n- Màu son lên chuẩn và rất sexy, hợp với những bạn cá tính mạnh và hợp với các buổi tiệc tùng ban đêm, giá thành lại rất mềm', 0, 2222, 4),
(11, 'Son li 3CE Velvet Lip Tint', 'tint3CE.jpg', 350000, '2017-12-16 00:00:00', 2, 120, 200, '- Mẫu son đang hot, có tất cả 10 màu sắc dễ đánh\r\n- 3CE Velvet Lip Tint có thiết kế khá đơn giản với lớp vỏ ngoài mịn lì, màu sắc trùng với màu son phía trong giúp bạn dễ hình dung', 0, 3333, 3),
(12, 'Son 3CE Mood Recipe', 'mood3CE.jpg', 360000, '2017-12-16 00:00:00', 2, 5, 10, '- Màu son đặc biệt mà khó có hãng nào có được\r\n- màu trầm, tôn da, tạo cảm giác sang trọng và quyến rũ', 0, 2222, 3),
(13, 'Son 3CE Red Recipe Màu 211 Dolly', 'Red3CE.jpg', 400000, '2017-12-16 00:00:00', 10, 100, 200, '- Dòng son lì, có chất satin bóng nhẹ, màu lên căng mướt và có độ ánh sáng giúp đôi môi trông căng mọng hơn. Cây son này có sắc đỏ đậm phớt chút cam, cực kỳ tôn da.\r\n', 0, 2222, 3),
(14, 'Son 3CE Red Recipe Màu 214 Squeezing', 'Red3ce214.jpg', 450000, '2017-12-16 00:00:00', 1, 47, 100, 'Màu đỏ tươi với sự pha trộn hoàn hảo giữa 3 sắc đỏ, cam và hồng. Sắc đỏ ấm áp của 214 không chỉ hợp với làn da châu Á mà còn tạo cảm giác vô cùng hiện đại, trẻ trung. Chất son thiên lì giúp ta dễ dàng đánh theo kiểu lòng môi. Nếu bạn đang muốn tập đánh son đỏ thì 214 Squeezing chính là lựa chọn hoàn hảo.', 0, 2222, 3),
(15, 'Son Dior Addict Lip Tattoo Màu 451 ', 'Dior451.jpg', 800000, '2017-12-16 00:00:00', 3, 6, 10, 'Đây là một kiểu son nước dạng như son tint lòng môi của Dior , chất son lên môi thấm nhanh, không hề có cảm giác đánh son, vì sau khi đánh lên môi các nàng sẽ không hề thấy có lớp kem son bám lên môi nên các Nàng ăn uống sẽ không bị lem nhé.\r\n', 0, 3333, 5),
(16, 'Son Mac Liptensity Màu Fireworks', 'macliptensity.jpg', 500000, '2017-12-16 00:00:00', 5, 10, 50, '- ưu điềm của MAC như có giá thành bình dân, màu đẹp và độ giữ màu khỏi chê.\r\n- Xuất sứ: MAC canada ', 0, 2222, 1),
(17, 'Son MAC ABLAZE', 'MACablaze.jpg', 500000, '2017-12-16 00:00:00', 6, 9, 459, '- MAC như có giá thành bình dân, màu đẹp và độ giữ màu khỏi chê.\r\n- Son Môi MAC còn có rất nhiều màu sắc cho các Nàng lựa chọn từ tông màu tươi nhất cho đến trầm nhất MAC đều có. Và có thể nói MAC là một trong những thương hiệu mà có nhiều màu son nhất hiện na', 0, 2222, 1),
(18, 'Son Dior Diorific Rouge Khôl 341 Pure Topaz', 'DiorGioiHan.jpg', 1000000, '2017-12-16 00:00:00', 3, 8, 100, '- Dior Diorific Rouge Khôl được các chuyên gia đánh giá cao về màu sắc đẹp, mềm môi và mang màu đẹp sang trọng quý phái.', 0, 2222, 5),
(19, ' Son MAC Retro Matte Liquid Lipcolour ', 'MacRetro.jpg', 600000, '2017-12-16 00:00:00', 4, 15, 39, '- Gây ấn tượng bằng kết cấu son đặt và mịn sánh với hiệu ứng matte chuẩn mực cùng độ lên màu hoàn hảo', 0, 4444, 1),
(20, 'Son Dior Double Rouge Màu 534 ', 'Dior534.jpg', 900000, '2017-12-16 00:00:00', 7, 3, 20, 'on Dior Double Rouge là dòng son kết hợp 2 xu hướng trang điểm: lì và nhũ tạo ra một hiệu ombre cực sang trọng.- Dior Double Rouge Lipstick với chất son mềm mại và công thức độc quyền cùng những nguyên liệu tốt nhất, mang đến một đôi môi thực sự quyến rũ mềm mại, khỏe mạnh đầy sức sống thể hiện đẳng cấp của phái đẹp.', 0, 2222, 5),
(21, 'Son Diorific Matte Fluid 006 Glory', 'Dior006.jpg', 1200000, '2017-12-16 00:00:00', 1, 10, 200, 'có mùi thơm nhẹ và có độ giữ màu màu tốt, cung cấp đày đủ dưỡng chất cho đôi môi khỏe mạnh, không làm khô môi hay thâm môi như những dòng son khác vì chứa nhiều độ ẩm và làm cho môi mềm mịn hơn. Và điều đặc biệt có thể kết hợp vừa là son môi vừa làm má hồng rất tiện lợi.', 0, 4444, 5);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDatHang`),
  ADD KEY `FK_ChiTietDonDatHang_SanPham` (`MaSanPham`),
  ADD KEY `FK_ChiTietDonDatHang_DonDatHang` (`MaDonDatHang`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `FK_DonDatHang_TaiKhoan` (`MaTaiKhoan`),
  ADD KEY `FK_DonDatHang_TinhTrang` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaloaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `FK_SanPham_HangSanXuat` (`MaHangSanXuat`),
  ADD KEY `FK_SanPham_LoaiSanPham` (`MaLoaiSanPham`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `MaLoaiTaiKhoan` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `FK_ChiTietDonDatHang_DonDatHang` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`),
  ADD CONSTRAINT `FK_ChiTietDonDatHang_SanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `FK_DonDatHang_TaiKhoan` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`),
  ADD CONSTRAINT `FK_DonDatHang_TinhTrang` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SanPham_HangSanXuat` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`),
  ADD CONSTRAINT `FK_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_taikhoan_loaitaikhoan` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaloaiTaiKhoan`);
