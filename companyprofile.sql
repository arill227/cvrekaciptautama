-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 02:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companyprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(6, 'Judul 3', 'Kutipan 3', '<p>Isi 3</p>', '2021-03-28 00:10:54'),
(8, 'Cv. Reka Cipta Utama', '', '<p><img src=\"../gambar/2b24d495052a8ce66358eb576b8912c8.jpg\" data-filename=\"2b24d495052a8ce66358eb576b8912c8.jpg\" class=\"note-float-left\" style=\"float: left;\">xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p><p>xxx</p>', '2024-10-23 03:13:02'),
(9, 'Cv. Reka Cipta Utama', 'Tentang Perusahaan', '<p style=\"margin: 10px 0px; padding: 10px 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><img src=\"../gambar/84d9ee44e457ddef7f2c4f25dc8fa865.jpg\" style=\"width: 626px; float: left;\" class=\"note-float-left\"></p><div><span data-canva-clipboard=\"ewAiAGEAIgA6ADUALAAiAGgAIgA6ACIAdwB3AHcALgBjAGEAbgB2AGEALgBjAG8AbQAiACwAIgBjACIAOgAiAEQAQQBHAEsALQBnAHQAQwBwAE4AZwAiACwAIgBpACIAOgAiAFQAMAA0AEkAMgBOADYAZgBpAFQANQBBAHoASwB0AHYAegBWAEkARgBQAHcAIgAsACIAYgAiADoAMQA3ADIAOQA1ADgAMQA5ADUANQA3ADIANwAsACIAQQA/ACIAOgAiAEIAIgAsACIAQQAiADoAWwB7ACIAQQAiADoANgAxADAALgA1ADkAOAA4ADMAMgA1ADUAOAAwADYAOAAxACwAIgBCACIAOgA0ADEANQAuADgAOAA5ADIAMwAxADYANQA2ADgANAA1ADkANAAsACIARAAiADoAMwAwADIALgAyADIAMQAwADAANAA1ADYAMwA2ADIANgA1ADQALAAiAEMAIgA6ADEANwA3AC4AMwAzADMAMgA2ACwAIgBOACIAOgAiAHAAYQByAGEAZwByAGEAcABoACIALAAiAEEAPwAiADoAIgBLACIALAAiAGEAIgA6AHsAIgBBACIAOgBbAHsAIgBBAD8AIgA6ACIAQQAiACwAIgBBACIAOgAiAEQAYQBsAGEAbQAgAG0AZQBuAGoAYQBsAGEAbgBrAGEAbgAgAGIAaQBzAG4AaQBzAG4AeQBhACAAQwBWACAAUgBlAGsAYQAgAEMAaQBwAHQAYQAgAFUAdABhAG0AYQAgAG0AZQBuAGcAZQBkAGUAcABhAG4AawBhAG4AIABiAGUAbgB0AHUAawAgAGsAZQByAGoAYQBzAGEAbQBhACAAeQBhAG4AZwAgAGIAYQBpAGsAIABzAGUAcgB0AGEAIABrAGUAbABhAG4AYwBhAHIAYQBuACAAZABhAG4AIABrAGUAcwBlAGwAYQBtAGEAdABhAG4AIABwAGEAcgBhACAAcABlAGsAZQByAGoAYQAgAGQAYQBsAGEAbQAgAGsAZQBnAGkAYQB0AGEAbgAgAHAAZQBuAGcAYQBkAGEAYQBuACAAYgBhAHIAYQBuAGcAIAB5AGEAbgBnACAAZABpAGIAdQB0AHUAaABrAGEAbgAgAHAAaQBoAGEAawAgAGsAbABpAGUAbgAgAGsAYQByAGUAbgBhACAAawBhAG0AaQAgAHMAYQBuAGcAYQB0ACAAbQBlAG4AeQBhAGQAYQByAGkAIABiAGEAaAB3AGEAIABrAGUAbABhAG4AZwBzAHUAbgBnAGEAbgAgAGIAaQBzAG4AaQBzACAAawBhAG0AaQAgAHMAYQBuAGcAYQB0ACAAYgBlAHIAZwBhAG4AdAB1AG4AZwAgAHAAYQBkAGEAIABrAGUAbABhAG4AYwBhAHIAYQBuACAAcABlAGsAZQByAGoAYQBhAG4AIABwAHIAbwB5AGUAawAsACAAawBlAHAAdQBhAHMAYQBuACAAawBsAGkAZQBuACwAIABkAGEAbgAgAGsAZQBzAGUAbABhAG0AYQB0AGEAbgAgAHAAYQByAGEAIABwAGUAawBlAHIAagBhAC4AIABcAG4AXABuACIAfQBdACwAIgBCACIAOgBbAHsAIgBBAD8AIgA6ACIAQQAiACwAIgBBACIAOgB7ACIAZgBvAG4AdAAtAGYAYQBtAGkAbAB5ACIAOgB7ACIAQgAiADoAIgBZAEEARAAxAGEAVQAzAHMATABuAEkALAAwACIAfQAsACIAYwBvAGwAbwByACIAOgB7ACIAQgAiADoAIgAjAGYAZgBmAGYAZgBmACIAfQAsACIAdABlAHgAdAAtAGEAbABpAGcAbgAiADoAewAiAEIAIgA6ACIAagB1AHMAdABpAGYAeQAiAH0ALAAiAGYAbwBuAHQALQBzAGkAegBlACIAOgB7ACIAQgAiADoAIgAxADMALgAzADMAMwA3ACIAfQB9AH0ALAB7ACIAQQA/ACIAOgAiAEIAIgAsACIAQQAiADoAMwA1ADUAfQAsAHsAIgBBAD8AIgA6ACIAQQAiACwAIgBBACIAOgB7ACIAZgBvAG4AdAAtAGYAYQBtAGkAbAB5ACIAOgB7AH0ALAAiAGMAbwBsAG8AcgAiADoAewB9ACwAIgB0AGUAeAB0AC0AYQBsAGkAZwBuACIAOgB7AH0ALAAiAGYAbwBuAHQALQBzAGkAegBlACIAOgB7AH0AfQB9AF0AfQAsACIAYgAiADoAewAiAEEAIgA6AFsANAAyACwANAAyACwANAAzACwANAA1ACwANAAyACwANAAxACwANAA0ACwANAA1ACwAMQAwACwAMQBdAH0ALAAiAGQAIgA6ACIAQQAiACwAIgBnACIAOgBmAGEAbABzAGUALAAiAGgAIgA6ACIAQQAiAH0AXQAsACIAQgAiADoANwA5ADMALgA3ADAAMAA3ADgANwA0ADAAMQA1ADcANAA5ACwAIgBDACIAOgAxADEAMgAyAC4ANQAxADkANgA4ADUAMAAzADkAMwA3ADAAMgB9AA==\"></span><p>Dalam menjalankan bisnisnya CV Reka Cipta Utama mengedepankan bentuk kerjasama yang baik serta kelancaran dan keselamatan para pekerja dalam kegiatan pengadaan barang yang dibutuhkan pihak klien karena kami sangat menyadari bahwa kelangsungan bisnis kami sangat bergantung pada kelancaran pekerjaan proyek, kepuasan klien, dan keselamatan para pekerja.</p><div><span data-canva-clipboard=\"ewAiAGEAIgA6ADUALAAiAGgAIgA6ACIAdwB3AHcALgBjAGEAbgB2AGEALgBjAG8AbQAiACwAIgBjACIAOgAiAEQAQQBHAEsALQBnAHQAQwBwAE4AZwAiACwAIgBpACIAOgAiAFQAMAA0AEkAMgBOADYAZgBpAFQANQBBAHoASwB0AHYAegBWAEkARgBQAHcAIgAsACIAYgAiADoAMQA3ADIAOQA1ADgAMQA5ADUANQA3ADIANwAsACIAQQA/ACIAOgAiAEIAIgAsACIAQQAiADoAWwB7ACIAQQAiADoAOAA2ADMALgA4ADYANQA0ADEAMgA1ADUAOAAwADYAOAAxACwAIgBCACIAOgA4ADMALgAxADQAOQA2ADAANgAyADkAOQAyADEAMgA5ACwAIgBEACIAOgAzADAAMgAuADIAMgAxADAAMAA0ADUANgAzADYAMgA2ADUANAAsACIAQwAiADoAMQA0ADEALgAzADMAMwAyADYALAAiAE4AIgA6ACIAcABhAHIAYQBnAHIAYQBwAGgAIgAsACIAQQA/ACIAOgAiAEsAIgAsACIAYQAiADoAewAiAEEAIgA6AFsAewAiAEEAPwAiADoAIgBBACIALAAiAEEAIgA6ACIAUABlAG4AZwBhAGwAYQBtAGEAbgAgAGIAZQBrAGUAcgBqAGEAIABkAGUAbgBnAGEAbgAgAGkAbgBzAHQAYQBuAHMAaQAtAGkAbgBzAHQAYQBuAHMAaQAgAHMAdwBhAHMAdABhACAAbQBhAHUAcAB1AG4AIABwAGUAbQBlAHIAaQBuAHQAYQBoACAAdABlAGwAYQBoACAAbQBlAG0AYgB1AGsAYQAgAGoAYQByAGkAbgBnAGEAbgAgAHAAZQByAHUAcwBhAGgAYQBhAG4AIABrAGEAbQBpACAAbQBlAG4AagBhAGQAaQAgAGwAZQBiAGkAaAAgAGwAdQBhAHMAIABkAGEAbgAgAGQAZQBuAGcAYQBuACAAYgBlAHIAZgBvAGsAdQBzACAAZABhAGwAYQBtACAAbQBlAG0AYQBzAG8AawAgAFAAcgBvAGQAdQBrACAAZgBhAGIAcgBpAGsAYQBzAGkALAAgAHIAZQBwAGEAaQByACAAdgBhAGwAdgBlACwAIABvAG4AbABpAG4AZQAgAGwAZQBhAGsAIABzAGUAYQBsAGkAbgBnACwAIABtAGUAYwBoAGEAbgBpAGMAYQBsACAAcwBlAGEAbAAsACAAZQBsAGUAYwB0AHIAaQBjAGEAbAAsACAAbQBhAGMAaABpAG4AaQBuAGcAIAAmACAAbQBpAGwAbABpAG4AZwAgAHUAbgB0AHUAawAgAHAAYQBiAHIAaQBrACAAawBlACAAcABhAHMAYQByACAASQBuAGQAbwBuAGUAcwBpAGEALgAgAFwAbgBcAG4AIgB9AF0ALAAiAEIAIgA6AFsAewAiAEEAPwAiADoAIgBBACIALAAiAEEAIgA6AHsAIgBmAG8AbgB0AC0AZgBhAG0AaQBsAHkAIgA6AHsAIgBCACIAOgAiAFkAQQBEADEAYQBVADMAcwBMAG4ASQAsADAAIgB9ACwAIgBjAG8AbABvAHIAIgA6AHsAIgBCACIAOgAiACMAZgBmAGYAZgBmAGYAIgB9ACwAIgB0AGUAeAB0AC0AYQBsAGkAZwBuACIAOgB7ACIAQgAiADoAIgBqAHUAcwB0AGkAZgB5ACIAfQAsACIAZgBvAG4AdAAtAHMAaQB6AGUAIgA6AHsAIgBCACIAOgAiADEAMwAuADMAMwAzADcAIgB9AH0AfQAsAHsAIgBBAD8AIgA6ACIAQgAiACwAIgBBACIAOgAyADkAOAB9ACwAewAiAEEAPwAiADoAIgBBACIALAAiAEEAIgA6AHsAIgBmAG8AbgB0AC0AZgBhAG0AaQBsAHkAIgA6AHsAfQAsACIAYwBvAGwAbwByACIAOgB7AH0ALAAiAHQAZQB4AHQALQBhAGwAaQBnAG4AIgA6AHsAfQAsACIAZgBvAG4AdAAtAHMAaQB6AGUAIgA6AHsAfQB9AH0AXQB9ACwAIgBiACIAOgB7ACIAQQAiADoAWwA0ADQALAAzADkALAA0ADgALAAzADcALAA0ADYALAA0ADkALAAzADQALAAxAF0AfQAsACIAZAAiADoAIgBBACIALAAiAGcAIgA6AGYAYQBsAHMAZQAsACIAaAAiADoAIgBBACIAfQBdACwAIgBCACIAOgA3ADkAMwAuADcAMAAwADcAOAA3ADQAMAAxADUANwA0ADkALAAiAEMAIgA6ADEAMQAyADIALgA1ADEAOQA2ADgANQAwADMAOQAzADcAMAAyAH0A\"></span><p>Pengalaman bekerja dengan instansi-instansi swasta maupun pemerintah telah membuka jaringan perusahaan kami menjadi lebih luas dan dengan berfokus dalam memasok Produk fabrikasi, repair valve, online leak sealing, mechanical seal, electrical, machining &amp; milling untuk pabrik ke pasar Indonesia.</p></div></div>', '2024-10-22 07:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'Cv. Reka Cipta Utama', '<p>Perusahaan</p>', '2024-10-22 06:12:44'),
(2, 'About', '<p>CV Reka Cipta Utama didirikan pada tahun 2012 dan bergerak pada bidang Fabrikasi, kontraktor dan pengadaan barang (general supplier) yang memfokuskan pada bagian fabrikasi, repair valve, online leak sealing, mechanical seal, machining, electrical, milling, pengadaan barang-barang dan material pendukung untuk kegiatan-kegiatan proyek industri besar maupun kecil.</p>', '2024-10-22 06:12:27'),
(3, 'Contact', '<p>0877-7123-1274</p>', '2024-10-22 06:13:57'),
(4, 'Social', '<p><b>Email : </b>rekaciptautama22@gmail.com</p>', '2024-10-22 06:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `token_ganti_password` text DEFAULT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `token_ganti_password`, `tgl_isi`) VALUES
(2, 'aril@gmail.com', 'aril', '32ae5208da71101336b4e781bfb098ba', '1', '', '2021-04-09 00:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
