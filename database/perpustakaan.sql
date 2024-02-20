-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 02.50
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(1, 'bambang subroto', '1234', 'admin1', '085749051409', 'admin'),
(2, 'esti sitanggang', '4321', 'admin2', '085870283409', 'petugas'),
(3, 'admin', '123', '001', '089661252353', 'admin'),
(4, 'like', '123', 'admin09', '213', 'petugas'),
(5, 'wayn', '123', 'admin010', '08973823', 'admin'),
(6, 'rizal', '123', '009', '837463', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d36fafef221.jpg', 'KB0001', 'novel', 'After meet you', 'ari irham', 'loveable', '2017-09-14', 10, '&quot;Aku tidak percaya lagi dengan cinta. Cinta telah membuat kehidupan Papa dan aku hancur berantakan. Sejak saat itu, sudah tidak ada lagi kata &#039;cinta&#039; dalam kamusku.&quot;', 'After Meet You.pdf'),
('65d370f98d8a1.jpg', 'KB0002', 'novel', 'Love me if you dare', 'Andy. S', 'Karos Publisher', '2023-08-29', 455, ': Cintai Aku Kalau Berani ini menceritakan berkat tindakannya menyelamatkan Sara Rios dari cengkeraman penjahat, negositor sandera Rafe Mansuco dinobatkan menjadi pahlawan sekaligus Bujangan Terpilih New York oleh Blog Bujangan.', 'sbxh0319Ks55HCsKzMw5VhKaSJOpvK0Yb70XqoVc.pdf'),
('65d37519c21a9.jpg', 'KB0003', 'filsafat', 'Julius Caesar', 'kate petty', 'Alex media', '2005-08-05', 106, 'kepemimpinannya nan cemerlang dan reformasi-reformasi besar yang diusulkannya untuk memperbaiki keadaan di Roma.', 'julius-caesar_PDF_FolgerShakespeare.pdf'),
('65d376ff76a72.jpg', 'KB0004', 'informatika', 'Pemograman Python', 'Alfian Ma&#039;arif', 'universitas ahmad dahlah yogyakarta', '2022-03-15', 65, 'Python merupakan bahasa pemrograman komputer yang biasa dipakai untuk membangun situs, software/aplikasi, mengotomatiskan tugas dan melakukan analisis data. Bahasa pemrograman ini termasuk bahasa tujuan umum. Artinya, ia bisa digunakan untuk membuat berbagai program berbeda, bukan khusus untuk masalah tertentu saja', 'buku python.pdf'),
('65d37a85da29d.jpg', 'KB0005', 'novel', 'Ali Topan ', 'teguh esha', 'PT visi bagas komunika', '2000-08-25', 330, 'Masalah anak jalanan adalah ekonomi keluarga, konflik dengan orang tua. Anak jalanan dari tahun ke tahun selalu menglami peningkatan, hal ini menjadi kondisi yang sangat memprihatinkan.', 'ali-topan-wartawan-jalanan-_-teguh-esha.pdf'),
('65d3fa9314ade.jpeg', 'KB0006', 'bisnis', 'Digital  Marketing', 'Riyan abdul Aziz', 'Riyan abdul Aziz', '2020-09-26', 15, 'Tata cara memulai atau mempelajari digital marketing', 'E-BOOK-DM (1).pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(1, 'iyaa12', 'hezka', '$2y$10$uCB9ehPJLVSmu1h3G/XnZeovtlksa0MFe44CFwrf4m3Pv20kxRP4e', 'Laki laki', 'XI', 'Rekayasa Perangkat Lunak', '08712', '2024-02-15'),
(6, '12', 'miftah', '$2y$10$8vnIBJFR2McpfM0jPrkrwuilNJJbe9Etyfl.5cQyurPPS1/McNj9y', 'Laki laki', 'XI', 'Teknik Komputer Jaringan', '07621', '2024-02-09'),
(11, '111', 'sambel', '$2y$10$i8cKd.WuIwh6RRFJmc.h5.Qzsmd0xM9KmxDh/06Ce1ItfVNNenfli', 'Laki laki', 'XII', 'Desain Komunikasi Visual', '08973823', '2024-02-17'),
(67, 'r12', 'wendi', '$2y$10$6l6AYUZwN50FhLMTRXgNVe4Ql5BlhxdhriWstLSMmyMh49oKLdeVS', 'Laki laki', 'XI', 'Teknik Otomotif', '12', '2024-02-18'),
(78, '54', 'chell', '$2y$10$wh9nwCi5zVtqpQRt8ILSguARKkRNJ.mCYi.AM/HUEVhTyn9zrSQhO', 'Perempuan', 'XII', 'Teknik Tenaga Listrik', '3242', '2024-02-19'),
(80, 'admin32', 'hez', '$2y$10$tAY9uNw2O4VHkziV9Bbmq.axGI7z0IfYi8r9aFrrID/VIUADfDKfq', 'Laki laki', 'XI', 'Rekayasa Perangkat Lunak', '0927', '2024-02-17'),
(114, '0975', 'fajar', '$2y$10$OvvR1Of8lfPVQGaFdejqqOH2t..2rXnpE.oRyTlJzzbs7Fgz1jqAu', 'Laki laki', 'XII', 'Teknik Komputer Jaringan', '08973823', '2024-02-10'),
(123, '87', 'hez', '$2y$10$SUSqefYf03g6eAk/zvZdleGz7icoGzlOjaCpZkssQFKrHsZbdkmJm', 'Laki laki', 'XI', 'Rekayasa Perangkat Lunak', '2312', '2009-11-28'),
(321, '45', 'eka', '$2y$10$pHI4B0Ej3apNMkB.pv7jG.KTPFrO5D08YoFm27ebpQeeoJS3MEUua', 'Laki laki', 'XI', 'Teknik Komputer Jaringan', '213', '2024-02-17'),
(987, '006', 'bonangfc', '$2y$10$8o8sf/aYP0jmC1y3K3AkDuKHCwihXe7ivC3G80C67IyuJ1A7ie70K', 'Laki laki', 'XII', 'Desain Gambar Mesin', '123456789', '2024-01-25'),
(5678, '13', 'nadiaa', '$2y$10$/f9hqecw/0hD3.OQ9vRDK.12Q/S0jII3psNGIJI1TL9MscFRk029m', 'Perempuan', 'XII', 'Sistem Informatika Jaringan dan Aplikasi', '0109378', '2024-02-17'),
(27032006, '2706', 'muhammad raihan sanjaya', '$2y$10$wnf6co9SqxYTu1t1bSqNzu8j3x3FaqHCBXoMXnGVf6Bx2YIW7uiuy', 'Laki laki', 'XII', 'Rekayasa Perangkat Lunak', '089699550918', '2006-03-27'),
(53415356, '0928', 'bang hezzs', '$2y$10$Fr2S9Oj.6R88T2OdWB1HXOoBgXLKTA0P1bUPTKtc86GO5zxAIPROK', 'Laki laki', 'XII', 'Sistem Informatika Jaringan dan Aplikasi', '089661252353', '2024-02-12'),
(212210033, '005', 'abi', '$2y$10$bjw5L4sFPe4R2laTsv0YJO1SusIIRDkTO1DYeK2yhg3dLDNk.KK26', 'Laki laki', 'XII', 'Rekayasa Perangkat Lunak', '082108080808', '2024-01-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `tgl_peminjaman`, `tgl_pengembalian`, `status`) VALUES
(97, 'KB0005', 53415356, 1, '2024-02-15', '2024-02-22', 'terkonfirmasi'),
(98, 'KB0001', 53415356, 1, '2024-02-17', '2024-02-24', 'terkonfirmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
