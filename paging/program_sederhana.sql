-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2021 pada 08.26
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `program_sederhana`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `telp`, `alamat`, `foto`) VALUES
('18191001', 'Andi', 'Laki-laki', '088789654123', 'Bandung', '250220211308291.jpg'),
('18191002', 'Dadang', 'Laki-laki', '087894566312', 'Lembang', '040320210731542.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masjid`
--

CREATE TABLE `tb_masjid` (
  `id` int(11) NOT NULL,
  `Nama_msj` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `Kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_masjid`
--

INSERT INTO `tb_masjid` (`id`, `Nama_msj`, `Alamat`, `Kecamatan`) VALUES
(1, 'Al-Fitroh', 'Bandung', 'Baleendah'),
(2, 'Al-Ikhlas', 'Bandung', 'Baleendah'),
(3, 'Al-Tauhid', 'Bandung', 'Baleendah'),
(4, 'At-Taubah', 'Bandung', 'Pamengpeuk'),
(5, 'An-Nur', 'Bandung', 'Pamengpeuk'),
(6, 'Al-Hidayah', 'Bandung', 'Ciparay'),
(7, 'Al-Iman', 'Bandung', 'Dayeuhkolot'),
(8, 'As-Salam', 'Bandung', 'Dayeuhkolot'),
(9, 'Al-Ikram', 'Bandung', 'Dayeuhkolot'),
(10, 'As-Syifa', 'Bandung', 'Ciparay'),
(11, 'An-Naml', 'Bandung', 'Ciparay'),
(12, 'As-Salam', 'Bandung', 'Ciparay'),
(13, 'Al-Ihsan', 'Bandung', 'Banjaran'),
(14, 'Al-Hikmah', 'Bandung', 'Banjaran'),
(15, 'Al-Muslimin', 'Bandung', 'Banjaran'),
(16, 'Al-Muhsinin', 'Bandung', 'Banjaran'),
(17, 'Al-Intishom', 'Bandung', 'Banjaran'),
(18, 'Al-Adl', 'Bandung', 'Banjaran'),
(19, 'Al-Akbar', 'Bandung', 'Banjaran'),
(20, 'As-Salim', 'Bandung', 'Banjaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Nandi', 'nandi', '123', 'admin'),
(2, 'nanda', 'nanda', '123', 'pengurus'),
(3, '123', '123', '123', 'pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user1`
--

INSERT INTO `user1` (`id`, `nama`, `alamat`, `pekerjaan`) VALUES
(1, 'Andi', 'Surabaya', 'Web Programmer'),
(2, 'Santoso', 'Jakarta', 'Web Designer'),
(3, 'Samsul', 'Sumedang', 'Pegawai');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tb_masjid`
--
ALTER TABLE `tb_masjid`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_masjid`
--
ALTER TABLE `tb_masjid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
