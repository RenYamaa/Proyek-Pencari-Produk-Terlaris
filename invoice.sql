-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2025 pada 17.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `ID_Detail` int(3) NOT NULL,
  `ID_Produk` int(11) NOT NULL,
  `Kuantitas_Terjual` int(4) NOT NULL,
  `Tanggal_Jual` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`ID_Detail`, `ID_Produk`, `Kuantitas_Terjual`, `Tanggal_Jual`) VALUES
(1, 3, 10, '2025-10-01'),
(2, 1, 2, '2025-10-01'),
(3, 3, 5, '2025-10-02'),
(4, 5, 1, '2025-10-02'),
(5, 4, 8, '2025-10-03'),
(6, 1, 3, '2025-10-03'),
(7, 3, 12, '2025-10-03'),
(8, 2, 1, '2025-10-04'),
(9, 4, 2, '2025-10-04'),
(10, 5, 1, '2025-10-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ID_Produk` int(3) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Harga_Satuan` decimal(10,2) NOT NULL,
  `Stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ID_Produk`, `Nama`, `Harga_Satuan`, `Stok`) VALUES
(1, 'Kopi Arabika', 55000.00, 80),
(2, 'Teh Hijau', 25000.00, 15),
(3, 'Cokelat Batang', 12000.00, 5),
(4, 'Keripik Kentang', 10000.00, 45),
(5, 'Air Mineral (Dus)', 35000.00, 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`ID_Detail`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_Produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `ID_Detail` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `ID_Produk` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
