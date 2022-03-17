-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2021 pada 06.26
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `cust` varchar(20) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `jumlah` int(6) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `harga_menu` int(6) NOT NULL,
  `total_bayar` int(9) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`cust`, `menu`, `jumlah`, `keterangan`, `harga_menu`, `total_bayar`, `kode_transaksi`) VALUES
('KIKI', 'Es Jeruk', 1, 'Es dikit', 3500, 3500, 'T001'),
('NADIA', 'Es Campur', 2, 'susu dikit', 10000, 20000, 'T002'),
('NADIA', 'Nasi Briyani', 2, 'Pedas dan sedang', 35000, 70000, 'T002'),
('DANIS', 'Jus Jambu', 1, 'Es Sedikit', 7500, 7500, 'T003'),
('DANIS', 'Nasi Briyani', 1, '', 35000, 35000, 'T003'),
('BAGUS', 'Nasi Goreng', 3, 'PEDAS SEMUA', 18000, 54000, 'T004'),
('QQ', 'Jeruk Panas', 2, '', 3500, 7000, 'T005'),
('QQ', 'Nasi Iga', 2, '', 30000, 60000, 'T005'),
('QQ', 'Teh Tarik', 1, 'ESDIKIT', 6000, 6000, 'T005'),
('PTI19', 'Nasi Briyani', 3, '', 35000, 105000, 'T006'),
('DAN', 'Ayam Goreng', 2, '', 15000, 30000, 'T007'),
('DNS', 'Mie Rebus', 4, '', 12000, 48000, 'T008'),
('DNS', 'Nasi Briyani', 1, '', 35000, 35000, 'T008'),
('SYUKRON', 'Nasi Briyani', 2, '', 35000, 70000, 'T009'),
('NURMAN', 'Mie Goreng', 12, 'Dikit', 12000, 144000, 'T010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_makanan`
--

CREATE TABLE `tbl_makanan` (
  `menu` varchar(50) NOT NULL,
  `harga_menu` int(6) NOT NULL,
  `harga_pokok` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_makanan`
--

INSERT INTO `tbl_makanan` (`menu`, `harga_menu`, `harga_pokok`) VALUES
('Ayam Bakar', 16000, 13000),
('Ayam Goreng', 15000, 11000),
('Es Campur', 10000, 6000),
('Es Jeruk', 3500, 1700),
('Es Teh', 3000, 1500),
('Jeruk Panas', 3500, 2700),
('Jus Jambu', 7500, 6000),
('Mie Goreng', 12000, 9000),
('Mie Rebus', 12000, 9500),
('Nasi Briyani', 35000, 25000),
('Nasi Goreng', 18000, 15000),
('Nasi Goreng Ayam', 25000, 15000),
('Nasi Goreng Sapi', 27000, 17000),
('Nasi Iga', 30000, 27000),
('Nasi Putih', 4000, 2850),
('Teh Panas', 3000, 1500),
('Teh Tarik', 6000, 4500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `temporder`
--

CREATE TABLE `temporder` (
  `cust` varchar(20) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `jumlah` int(6) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `harga_menu` int(6) NOT NULL,
  `harga_total` int(9) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tgl_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `cust` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tgl_transaksi`, `cust`) VALUES
('T001', '2021-07-08 00:08:11', 'KIKI'),
('T002', '2021-07-08 00:10:34', 'NADIA'),
('T003', '2021-07-08 08:46:08', 'DANIS'),
('T004', '2021-07-08 08:54:06', 'BAGUS'),
('T005', '2021-07-08 09:11:13', 'QQ'),
('T006', '2021-07-08 09:15:20', 'PTI19'),
('T007', '2021-07-08 09:18:59', 'DAN'),
('T008', '2021-07-08 09:48:00', 'DNS'),
('T009', '2021-07-08 11:15:08', 'SYUKRON'),
('T010', '2021-07-08 11:21:44', 'NURMAN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `menu` (`menu`);

--
-- Indeks untuk tabel `tbl_makanan`
--
ALTER TABLE `tbl_makanan`
  ADD PRIMARY KEY (`menu`);

--
-- Indeks untuk tabel `temporder`
--
ALTER TABLE `temporder`
  ADD PRIMARY KEY (`menu`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`) USING BTREE,
  ADD UNIQUE KEY `kode_transaksi_2` (`kode_transaksi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`kode_transaksi`) REFERENCES `transaksi` (`kode_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`menu`) REFERENCES `tbl_makanan` (`menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
