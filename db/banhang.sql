-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 04, 2018 lúc 01:08 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL,
  `TongThanhTien` int(11) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(11, 'Adidas', '', 0),
(12, 'Vans', '', 0),
(13, 'Nike', '', 0),
(14, 'Rick Owen', '', 0),
(15, 'Converse', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'Vans Vault', 0),
(2, 'Vans Slip On', 0),
(3, 'Vans Old Skool', 0),
(4, 'Adidas Runner', 0),
(5, 'Adidas Casual', 0),
(6, 'Nike Air Max', 0),
(7, 'Adidas Yeezy', 0),
(8, 'Converse Classic', 0),
(9, 'Vans Era ', 0),
(10, 'Nike Jordan', 0),
(11, 'Rick Owen Shoes', 0),
(12, 'Adidas NMD', 0),
(13, 'Adidas Prophere', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `GiaSanPham` int(11) NOT NULL,
  `NgayNhap` datetime NOT NULL,
  `SoLuongTon` int(11) NOT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `SoLuongXem` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(4) NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuongXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(201, 'Vans Vault Chili Pepper', 'Vans Chili Pepper.jpg', 1350000, '2017-12-05 23:06:12', 20, 0, 0, 'Men shoes', 0, 1, 12),
(202, 'Vans Slip On Checkerboard', 'Vans Slip on checkerboard.jpg', 1300000, '2017-12-04 23:09:05', 21, 4, 0, 'Unisex shoes', 0, 2, 12),
(203, 'Vans Old Skool', 'Vans old skool.jpg', 1400000, '2017-12-06 23:10:09', 15, 2, 0, 'Unisex shoes', 0, 3, 12),
(204, 'Adidas Ultraboost Tripple White', 'Adidas Ultra Boost 3 White.jpg', 2400000, '2017-12-03 23:11:38', 4, 0, 0, 'Men shoes', 0, 4, 11),
(205, 'Adidas Stan Smith', 'Stan smith.jpg', 2200000, '2017-12-11 23:13:11', 10, 0, 0, 'Unisex shoes', 0, 5, 11),
(206, 'Nike Air Max 90 Leather', 'Nike Air Max.jpg', 1700000, '2017-12-13 23:14:27', 20, 0, 0, 'Men shoes', 0, 6, 13),
(207, 'Adidas Yeezy Cream Boost', 'Adidas yeezy cream.jpg', 31000000, '2017-12-17 23:15:28', 5, 0, 0, 'Unisex shoes', 0, 7, 11),
(208, 'Converse Chuck Taylor Classic', 'Converse classic.jpg', 1200000, '2017-12-05 23:17:19', 34, 0, 0, 'Unisex shoes', 0, 8, 15),
(209, 'Vans Lux Leather Era ', 'VansLuxLeather.jpg', 2100000, '2017-12-08 23:18:29', 20, 0, 0, 'Unisex shoes', 0, 9, 12),
(210, 'Vans Flame Old Skool', 'vans flame old skool.jpg', 2200000, '2017-12-11 23:19:42', 20, 0, 0, 'Men shoes', 0, 3, 12),
(211, 'Vans Flame Slip on', 'vans flame slip on.jpg', 2100000, '2017-12-12 23:21:10', 15, 0, 0, 'Men shoes', 0, 2, 12),
(212, 'Rick Owen hi-top sneaker', 'Rick Owen.jpg', 32000000, '2017-12-12 23:22:37', 5, 0, 0, 'Unisex shoes', 0, 11, 14),
(213, 'Adidas NMD R1', 'Adidas NMD R1.jpg', 2100000, '2017-12-04 23:23:41', 11, 0, 0, 'Unisex shoes', 0, 12, 11),
(214, 'Adidas Prophere', 'Adidas prophere.jpg', 3000000, '2017-12-14 23:24:44', 10, 0, 0, 'Unisex shoes', 0, 13, 11),
(215, 'Nike Jordan 4s', 'Jordan-Air.jpg', 2000000, '2017-12-06 23:40:45', 22, 0, 0, 'Men shoes', 0, 10, 13),
(216, 'Vans Old Skool Peanuts', 'Vanspeanut.jpg', 2000000, '2017-12-03 18:43:10', 30, 3, 0, 'Unisex', 0, 3, 12),
(217, 'Vans Vault Classic OG', 'VansCheck.jpg', 1750000, '2017-12-14 18:45:27', 40, 30, 0, 'Unisex shoes', 0, 1, 12),
(218, 'Vans Fear of God', 'fear.jpg', 4000000, '2018-01-10 18:47:28', 4, 3, 0, 'Unisex shoes', 0, 1, 12),
(219, 'Nike Air Retro', 'NikeAirRetro.jpg', 2000000, '2017-12-05 18:48:51', 10, 10, 0, 'Unisex shoes', 0, 6, 13),
(220, 'Nike Air Thea', 'AirThea.jpg', 2230000, '2017-12-13 18:56:15', 11, 20, 0, 'Unisex shoes', 0, 6, 13),
(221, 'Nike Air Max Tavas', 'AirMaxTavas.jpg', 2450000, '2017-12-10 18:57:55', 12, 22, 0, 'Man shoes', 0, 6, 13),
(222, 'Nike Air Max 90', 'AirMax90.jpg', 3143000, '2017-12-20 18:59:20', 23, 12, 0, 'Man shoes', 0, 6, 13),
(223, 'Adidas Ultraboost Tripple Grey', 'UltraTripleGrey.jpg', 4310000, '2017-12-04 19:09:30', 10, 3, 0, 'Man shoes', 0, 4, 11),
(224, 'Adidas Ultraboost Multicolor', 'UltraMultiColor.jpg', 3103000, '2017-12-18 19:10:58', 20, 11, 0, 'Man shoes', 0, 4, 11),
(225, 'Adidas Ultraboost Mid Oreo', 'UtraMidOreo.jpg', 4000000, '2017-12-10 19:12:08', 20, 11, 0, 'Man shoes', 0, 4, 11),
(226, 'Converse Classic Red', 'ConverseRed.jpg', 1200000, '2017-12-25 19:13:24', 23, 12, 0, 'Unisex shoes', 0, 8, 15),
(227, 'Converse Classic Pink', 'ConversePink.jpg', 2000000, '2017-12-11 19:17:34', 21, 12, 0, 'Unisex shoes', 0, 8, 15),
(228, 'Converse Classic USA edition', 'CoverseUSA.jpg', 2122000, '2017-12-04 19:18:44', 2, 2, 0, 'Men shoes', 0, 8, 15),
(229, 'Rick Owen Low Top', 'RickLow.jpg', 11000000, '2017-12-14 19:19:55', 12, 2, 0, 'Unisex shoes', 0, 11, 14),
(230, 'Coverse Classic Canvas Blue', 'CoverseCanVas.jpg', 1233000, '2017-12-20 19:21:21', 12, 11, 0, 'Unisex shoes', 0, 8, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1111, 'admin', '123', 'Administrator', 'TP HCM', '0901232923', 'admin@gmail.com', 0, 1),
(1112, 'binhminh', '123', 'Bình Minh', 'TP HCM', '01645937631', 'binhminh997@gmail.com', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(101, 'Available'),
(102, 'Not Available');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `MaDonDatHang` (`MaDonDatHang`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `MaTaiKhoan` (`MaTaiKhoan`),
  ADD KEY `MaTinhTrang` (`MaTinhTrang`);

--
-- Chỉ mục cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`),
  ADD KEY `MaLoaiTaiKhoan` (`MaLoaiTaiKhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaLoaiSanPham` (`MaLoaiSanPham`),
  ADD KEY `MaHangSanXuat` (`MaHangSanXuat`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `MaLoaiTaiKhoan` (`MaLoaiTaiKhoan`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`),
  ADD KEY `MaTinhTrang` (`MaTinhTrang`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `chitietdondathang_ibfk_1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`),
  ADD CONSTRAINT `chitietdondathang_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`),
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
