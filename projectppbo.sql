-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jul 2021 pada 11.50
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectppbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `plgn`
--

CREATE TABLE `plgn` (
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `noHp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `plgn`
--

INSERT INTO `plgn` (`nik`, `nama`, `tgl_lahir`, `alamat`, `noHp`) VALUES
('2037343579435', 'Rani', 'Tue Apr 09 15:21:38 ICT 2002', 'Dumai', '084237483264'),
('20483734545', 'Adinda', 'Sun Jul 28 15:21:53 ICT 2002', 'Jl. Pasir Sari', '09324724934'),
('2055301064', 'Ana', 'Fri Jul 18 15:22:37 ICT 1997', 'Rumbai', '948023749375034'),
('2055301065', 'Lady Gabriella', 'Sun Sep 08 14:05:49 ICT 2002', 'Jl. Pemuda Darat', '083124539775'),
('205539274', 'Gabriella N', 'Sun Sep 08 15:22:18 ICT 2002', 'Jl. Pasir Sari', '08326323443'),
('2093432532342', 'Kinara', 'Thu Jul 13 15:22:49 ICT 2000', 'Bandung', '0834802342342'),
('20934832342', 'Ninis', 'Fri May 21 15:23:00 ICT 2021', 'Jakarta', '08124125732'),
('20934832439', 'Evelyn', 'Sat Jul 15 13:16:02 ICT 1995', 'Dumai', '0983263623'),
('23297373232', 'Dinda Anola', 'Wed Jul 17 14:47:05 ICT 2002', 'Dumai', '086327537253'),
('4237423742', 'Kinan', 'Tue Jul 20 03:15:58 ICT 1999', 'Jakarta', '08243556676'),
('43434353453', 'Ana', 'Thu Jul 15 03:18:22 ICT 2021', 'Dumai', '08265653263'),
('89749879374', 'Kayla', 'Tue Jul 16 14:06:29 ICT 2002', 'Pekanbaru', '5476576647'),
('89749879379', 'Rara', 'Sat Jul 15 14:07:06 ICT 1995', 'Dumai', '08632532323');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tampil`
--

CREATE TABLE `tampil` (
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tampil`
--

INSERT INTO `tampil` (`nik`, `nama`, `pembayaran`) VALUES
('2028974234', 'Rani', 'Belum Lunas'),
('206463432', 'Adinda', 'Lunas'),
('209434732', 'Lady', 'Lunas'),
('29343847322', 'Dinda', 'Lunas'),
('39208427324', 'Gabriella', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiketpesawat`
--

CREATE TABLE `tiketpesawat` (
  `kode_penerbangan` varchar(200) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keberangkatan` varchar(200) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `tgl_berangkat` varchar(100) NOT NULL,
  `pesawat` varchar(100) NOT NULL,
  `total_bayar` int(255) NOT NULL,
  `tlpn` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiketpesawat`
--

INSERT INTO `tiketpesawat` (`kode_penerbangan`, `nik`, `nama`, `keberangkatan`, `tujuan`, `tgl_berangkat`, `pesawat`, `total_bayar`, `tlpn`) VALUES
('TP 1', '38237982371', 'Gabriella', 'Pekanbaru', 'Jakarta', 'Fri Jul 16 02:59:35 ICT 2021', 'Garuda', 700000, '083263221'),
('TP 2', '71237512353', 'Lady', 'Dumai', 'Bandung', 'Sat Jul 24 14:07:45 ICT 2021', 'Garuda', 700000, '083126732732'),
('TP 3', '36863826321', 'Adinda Nola', 'Pekanbaru', 'Bandung', 'Sat Jul 17 03:00:13 ICT 2021', 'Lion Air', 500000, '083928392323'),
('TP 4', '2032983874', 'Vania Renata', 'Pekanbaru', 'Bandung', 'Fri Jul 23 11:10:20 ICT 2021', 'Garuda', 700000, '083283273232'),
('TP 5', '32434732', 'Rara', 'Pekanbaru', 'Jakarta', 'Sat Jul 24 14:09:28 ICT 2021', 'Garuda', 700000, '083823726323'),
('TP6', '446535353', 'Ranila', 'Pekanbaru', 'Jakarta', 'Sat Jul 17 02:47:19 ICT 2021', 'Lion Air', 500000, '038402834023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiketwisata`
--

CREATE TABLE `tiketwisata` (
  `no` int(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `jumlah` int(25) NOT NULL,
  `tgl_wisata` varchar(100) NOT NULL,
  `pembayaran` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiketwisata`
--

INSERT INTO `tiketwisata` (`no`, `nama`, `paket`, `jumlah`, `tgl_wisata`, `pembayaran`) VALUES
(32837233, 'Gabriella', 'Pulau Dewata Bali', 1, 'Sat Jul 24 02:57:33 ICT 2021', 100000),
(34534534, 'Nola', 'Raja Ampat', 2, 'Thu Jul 22 11:18:00 ICT 2021', 600000),
(45535353, 'Dinda', 'Puncak Jaya Wijaya', 5, 'Thu Jul 15 02:55:53 ICT 2021', 2750000),
(55575746, 'Lady', 'Taman Nasional Wakatobi', 3, 'Sat Jul 24 14:08:13 ICT 2021', 750000),
(74463535, 'Kiara', 'Danau Sentani', 1, 'Thu Jul 15 02:55:53 ICT 2021', 450000),
(324234324, 'Vara', 'Raja Ampat', 2, 'Fri Jul 23 14:23:49 ICT 2021', 600000),
(736449233, 'Lala', 'Taman Nasional Wakatobi', 2, 'Fri Jul 16 14:27:13 ICT 2021', 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pemesanan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pemesanan`, `status`) VALUES
('Tiket Pesawat', 'Lunas'),
('Tiket Pesawat', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `plgn`
--
ALTER TABLE `plgn`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tampil`
--
ALTER TABLE `tampil`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tiketpesawat`
--
ALTER TABLE `tiketpesawat`
  ADD PRIMARY KEY (`kode_penerbangan`);

--
-- Indeks untuk tabel `tiketwisata`
--
ALTER TABLE `tiketwisata`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tiketwisata`
--
ALTER TABLE `tiketwisata`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736449234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
