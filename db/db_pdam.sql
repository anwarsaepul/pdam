-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2021 pada 16.38
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pdam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id_chat` int(4) NOT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `pesan` text,
  `id_target` varchar(50) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_chat`
--

INSERT INTO `tb_chat` (`id_chat`, `id_user`, `pesan`, `id_target`, `waktu`) VALUES
(25, 'S-01230001', 'hallo admin untuk besok perbaikannya sampai kapan ya?', 'admin', '2021-02-09 14:23:09'),
(26, 'S-01230001', 'cvsv', 'admin', '2021-02-09 14:49:53'),
(27, 'admin', 'okey', 'S-01230001', '2021-02-09 15:00:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluhan`
--

CREATE TABLE `tb_keluhan` (
  `id_keluhan` int(5) NOT NULL,
  `nama_permohon` varchar(50) DEFAULT NULL,
  `alamat_permohon` varchar(200) DEFAULT NULL,
  `tanggal_permohon` date DEFAULT NULL,
  `no_agenda` varchar(50) DEFAULT NULL,
  `ukuran_meter` varchar(20) DEFAULT NULL,
  `merek_meter` varchar(50) DEFAULT NULL,
  `seri_meter` varchar(50) DEFAULT NULL,
  `tgl_pengaduan` date DEFAULT NULL,
  `tgl_pk` date DEFAULT NULL,
  `tgl_meter` date DEFAULT NULL,
  `tgl_pasang` date DEFAULT NULL,
  `jenis_keluhan` varchar(50) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `catatan` text,
  `no_kontrol` varchar(50) DEFAULT NULL,
  `reply_keluhan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_keluhan`
--

INSERT INTO `tb_keluhan` (`id_keluhan`, `nama_permohon`, `alamat_permohon`, `tanggal_permohon`, `no_agenda`, `ukuran_meter`, `merek_meter`, `seri_meter`, `tgl_pengaduan`, `tgl_pk`, `tgl_meter`, `tgl_pasang`, `jenis_keluhan`, `foto`, `catatan`, `no_kontrol`, `reply_keluhan`) VALUES
(1, 'agus', 'cisaat', '2021-02-09', '123', '5', 'ATARIS', '233', '2021-02-09', '2021-02-09', '2021-02-09', '2021-02-09', 'Diputus', '', 'dfsdf', 'S-01230001', 'Baik akan kami perbaiki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `no_kontrol` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(3) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`no_kontrol`, `password`, `role_id`, `date_created`, `status`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2019-07-03', 'yes'),
('S-01230001', '21232f297a57a5a743894a0e4a801fc3', 2, '2021-02-09', 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(4) NOT NULL,
  `no_kontrol` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `no_rek` varchar(70) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `kk` varchar(255) DEFAULT NULL,
  `pbb` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `no_kontrol`, `name`, `no_rek`, `ktp`, `kk`, `pbb`, `alamat`, `no_telepon`) VALUES
(1, 'admin', 'admin', '1234', 'abcd', 'abcd', 'abcd', 'abcd', '1234'),
(18, 'S-01230001', 'agus', 'admin', 'b654fa77300dc2e48183637be18a388f.jpg', '6b0242793da5e35c3b71ed8e73ade493.png', '7da8e0082a40d99d0032c4ea6592174f.png', 'cisaat', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  `isi_pengumuman` text,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id_pengumuman`, `judul`, `tanggal`, `time`, `wilayah`, `isi_pengumuman`, `created`) VALUES
(1, 'Perbaikan Saluran Air', '0000-00-00', '08:00:00', 'Cibadak', 'Mohon maaf atas ketidak nyaaman nya dikarenakan ada perbaikan saluran air untuk wilayah cibadak dan sekitarnya', '2020-06-25 04:06:41'),
(2, 'Perbaikan Infrastruktur', '2020-06-25', '03:14:00', 'Cisaat', 'Perbaikan Insfratuktur', '2020-06-25 08:16:15'),
(3, 'Perbaikan Saluran Air', '2021-02-10', '10:00:00', 'Cisaat', 'Mohon maaf sedang ada perbaikan saluran air untuk wilayah cisaat dan sekitarnya', '2021-02-09 14:21:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indeks untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  ADD PRIMARY KEY (`id_keluhan`),
  ADD KEY `no_kontrol` (`no_kontrol`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`no_kontrol`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `no_kontrol` (`no_kontrol`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id_chat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  MODIFY `id_keluhan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  ADD CONSTRAINT `tb_keluhan_ibfk_1` FOREIGN KEY (`no_kontrol`) REFERENCES `tb_login` (`no_kontrol`);

--
-- Ketidakleluasaan untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`no_kontrol`) REFERENCES `tb_login` (`no_kontrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
