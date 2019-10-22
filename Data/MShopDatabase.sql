-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2019 at 05:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MShopDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `CauHinhDienThoai`
--

CREATE TABLE `CauHinhDienThoai` (
  `MaDienThoai` int(11) NOT NULL,
  `CongNgheManHinh` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `DoPhanGiaiMH` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `DoRongMH` float NOT NULL,
  `MatKinh` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `DoPhanGiaiCamSau` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `QuayPhimCamSau` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `DenFlashCamSau` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NangCaoCamSau` text COLLATE utf8_vietnamese_ci NOT NULL,
  `DoPhanGiaiCamTruoc` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `VideoCall` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `ThongTinCamTruoc` text COLLATE utf8_vietnamese_ci NOT NULL,
  `HeDieuHanh` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Chipset` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `CPU` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `GPU` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `RAM` int(11) NOT NULL,
  `ROM` int(11) NOT NULL,
  `TheNhoNgoai` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `MangDIDong` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SIM` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `WIFI` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `GPS` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Bluetooth` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `KetNoi` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `JackTaiNghe` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `KetNoiKhac` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `ThietKe` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `ChatLieu` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `KichThuoc` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `TrongLuong` int(11) NOT NULL,
  `DungLuongPin` int(11) NOT NULL,
  `LoaiPin` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `CongNghePin` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `BaoMat` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `TinhNangDacBiet` text COLLATE utf8_vietnamese_ci NOT NULL,
  `GhiAm` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Radio` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `XemPhim` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgheNhac` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `ThoiDIemPhatHanh` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietDonHang`
--

CREATE TABLE `ChiTietDonHang` (
  `MADonHang` int(11) NOT NULL,
  `LoaiSanPham` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `Mau` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `IDCmt` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `LoaiSanPham` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaSanPham` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NoiDung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ThoiGian` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Comment2`
--

CREATE TABLE `Comment2` (
  `IDCmt2` int(11) NOT NULL,
  `IDNguoiDung` int(11) NOT NULL,
  `IDCmt` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ThoiGian` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DienThoai`
--

CREATE TABLE `DienThoai` (
  `MaDienThoai` int(11) NOT NULL,
  `Hang` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenDienThoai` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `GiaBanKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DonHang`
--

CREATE TABLE `DonHang` (
  `MADonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `DiaChi` text COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayDatHang` date NOT NULL,
  `NgayChuyenHang` date NOT NULL,
  `NgayNhanHang` date NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `GhiChu` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HinhAnhDienThoai`
--

CREATE TABLE `HinhAnhDienThoai` (
  `MaDT` int(11) NOT NULL,
  `DuongDan` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HinhAnhPhuKien`
--

CREATE TABLE `HinhAnhPhuKien` (
  `MaPhuKien` int(11) NOT NULL,
  `DuongDan` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NguoiDung`
--

CREATE TABLE `NguoiDung` (
  `MaNguoiDung` int(11) NOT NULL,
  `TenNguoiDung` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `SDT` varchar(11) COLLATE utf8_vietnamese_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PhuKien`
--

CREATE TABLE `PhuKien` (
  `MaPhuKien` int(11) NOT NULL,
  `LoaiPhuKien` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenPhuKien` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `GiaKhuyenMai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`IDCmt`);

--
-- Indexes for table `Comment2`
--
ALTER TABLE `Comment2`
  ADD PRIMARY KEY (`IDCmt2`);

--
-- Indexes for table `DienThoai`
--
ALTER TABLE `DienThoai`
  ADD PRIMARY KEY (`MaDienThoai`);

--
-- Indexes for table `DonHang`
--
ALTER TABLE `DonHang`
  ADD PRIMARY KEY (`MADonHang`);

--
-- Indexes for table `NguoiDung`
--
ALTER TABLE `NguoiDung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `PhuKien`
--
ALTER TABLE `PhuKien`
  ADD PRIMARY KEY (`MaPhuKien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `IDCmt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Comment2`
--
ALTER TABLE `Comment2`
  MODIFY `IDCmt2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DienThoai`
--
ALTER TABLE `DienThoai`
  MODIFY `MaDienThoai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DonHang`
--
ALTER TABLE `DonHang`
  MODIFY `MADonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NguoiDung`
--
ALTER TABLE `NguoiDung`
  MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PhuKien`
--
ALTER TABLE `PhuKien`
  MODIFY `MaPhuKien` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
