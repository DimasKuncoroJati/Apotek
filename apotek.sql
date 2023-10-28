-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 06:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_num` int(2) NOT NULL,
  `month_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_num`, `month_name`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `stock_moves`
--

CREATE TABLE `stock_moves` (
  `id` bigint(20) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 1,
  `trans_no` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `barang_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_obat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_moves`
--

INSERT INTO `stock_moves` (`id`, `type`, `trans_no`, `tanggal`, `price`, `qty`, `barang_id`, `email`, `nama_obat`) VALUES
(300, 1, 'uf6Aqoou2z', '2022-09-02', '2000', '15', 1045, NULL, 'Asam mafenamat'),
(301, 1, 'wxLxwPT3Ev', '2022-09-20', '10000', '10', 1048, NULL, 'Salbutamol'),
(302, 2, 'qftjrozoOG', '2022-10-05', '-4000', '-5', 1045, NULL, 'Asam mafenamat'),
(303, 2, 'PTRIzDogKH', '2022-10-20', '-15000', '-5', 1048, NULL, 'Salbutamol'),
(408, 1, '0yOrCtXwNZ', '2023-07-07', '3000', '30', 1036, 'dimas@gmail.com', 'Vitamin C'),
(409, 1, 'TG3jfVa14n', '2023-07-02', '3000', '50', 1036, 'dimas@gmail.com', 'Vitamin C'),
(410, 1, 'VtoswC3ckl', '2023-08-23', '3000', '3', 1036, 'dimas@gmail.com', 'Vitamin C'),
(411, 1, 'Uxk6JX1oIX', '2023-08-30', '3000', '5', 1036, 'dimas@gmail.com', 'Vitamin C'),
(412, 1, 'HOHWXw0evc', '2023-09-19', '3000', '5', 1036, 'dimas@gmail.com', 'Vitamin C'),
(413, 2, 'TL8UA9dTsm', '2023-07-04', '-4000', '-25', 1036, 'dimas@gmail.com', 'Vitamin C'),
(414, 2, '5mhQnvq5aZ', '2023-07-10', '-4000', '-10', 1036, 'dimas@gmail.com', 'Vitamin C'),
(415, 2, 'dd8aCPKxp6', '2023-09-12', '-4000', '-3', 1036, 'dimas@gmail.com', 'Vitamin C'),
(416, 2, 'dI0Uby2Y28', '2023-09-08', '-4000', '-5', 1036, 'dimas@gmail.com', 'Vitamin C'),
(417, 2, 'EJJKojJ87O', '2023-09-19', '-4000', '-3', 1036, 'dimas@gmail.com', 'Vitamin C'),
(418, 2, '53JGEFJu5h', '2023-09-19', '-4000', '-3', 1036, 'dimas@gmail.com', 'Vitamin C'),
(419, 2, 'HAn9Vjfmjg', '2023-09-20', '-4000', '-3', 1036, 'dimas@gmail.com', 'Vitamin C');

-- --------------------------------------------------------

--
-- Table structure for table `table_cat`
--

CREATE TABLE `table_cat` (
  `id_kat` int(3) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `des_kat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_cat`
--

INSERT INTO `table_cat` (`id_kat`, `nama_kategori`, `des_kat`) VALUES
(201, 'Anti Radang', 'Melegakan peradangan'),
(207, 'Antioksidan', 'Mencegah kerusakan sel'),
(209, 'Vitamin', 'Suplemen'),
(217, 'Antibiotik', 'bakteriostatik'),
(222, 'Hemolitika', 'Menghentikan pendarahan'),
(223, 'Antipiretik', 'Mengurangi demam atau nyeri'),
(224, 'Obat Batuk', 'Obat untuk batuk');

-- --------------------------------------------------------

--
-- Table structure for table `table_invoice`
--

CREATE TABLE `table_invoice` (
  `id_tagihan` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pembeli` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_invoice`
--

INSERT INTO `table_invoice` (`id_tagihan`, `ref`, `nama_obat`, `harga_jual`, `banyak`, `subtotal`, `nama_pembeli`, `tgl_beli`, `grandtotal`) VALUES
(142, 'TL8UA9dTsm', 'Vitamin C', 4000, 25, 100000, 'dimas2', '2023-07-04', 100000),
(144, '5mhQnvq5aZ', 'Vitamin C', 4000, 10, 40000, 'dimas2', '2023-07-10', 40000),
(155, 'dd8aCPKxp6', 'Vitamin C', 4000, 3, 12000, 'dimas2', '2023-09-12', 12000),
(156, 'dI0Uby2Y28', 'Vitamin C', 4000, 5, 20000, 'dimas2', '2023-09-08', 20000),
(157, 'EJJKojJ87O', 'Vitamin C', 4000, 3, 12000, 'dimas2', '2023-09-19', 12000),
(158, '53JGEFJu5h', 'Vitamin C', 4000, 3, 12000, 'dimas2', '2023-09-19', 12000),
(159, 'HAn9Vjfmjg', 'Vitamin C', 4000, 3, 12000, 'dimas2', '2023-09-20', 12000),
(160, 'RLBT9rygg6', 'Vitamin C', 4000, 4, 16000, 'dimas2', '2023-09-20', 16000),
(161, 'HOHWXw0evc', 'Vitamin C', 4000, 2, 8000, 'dimas2', '2023-09-20', 8000),
(162, '2VVPbMslQo', 'Tolak Angin', 5000, 4, 20000, 'dimas2', '2023-10-27', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `table_med`
--

CREATE TABLE `table_med` (
  `id_obat` int(4) NOT NULL,
  `kode_obat` varchar(20) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `penyimpanan` varchar(30) NOT NULL,
  `stok` int(3) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `kedaluwarsa` date NOT NULL,
  `des_obat` text NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_med`
--

INSERT INTO `table_med` (`id_obat`, `kode_obat`, `nama_obat`, `penyimpanan`, `stok`, `unit`, `nama_kategori`, `kedaluwarsa`, `des_obat`, `harga_beli`, `harga_jual`, `nama_pemasok`, `gambar`, `tgl_beli`) VALUES
(1016, 'OBT-1061', 'OBH kombi', 'Rak 3', 0, 'Obat cair', 'Antibiotik', '2023-01-10', 'Obat batuk yang berguna untuk meredakan dahak dan batuk yang mengganjal di tenggorokan', 6000, 10000, 'Kimia Farma', '', '0000-00-00'),
(1036, 'OBT-1036', 'Vitamin C', 'Rak 1', 71, 'Tablet', 'Vitamin', '2023-09-20', 'Vitamin C atau yang dikenal dengan asam askorbat membantu tubuh dalam pembentukan jaringan dan sistem pertahanan tubuh. Asupan vitamin C yang cukup juga dapat membantu seseorang terlindungi dari serangan penyakit.', 3000, 4000, 'Kalbe Farma', '', '0000-00-00'),
(1044, 'OBT-1044', 'Paracetamol', 'Rak 1', 0, 'Tablet', 'Antipiretik', '2023-04-20', 'Paracetamol (Acetaminophen) yaitu zat aktif yang memiliki aktivitas sebagai penurun demam/antipiretik dan pereda nyeri/analgesik yang bekerja dengan cara menghambat pembentukan prostaglandin yaitu zat yang memicu nyeri dan demam di hipotalamus untuk meningkatkan pelepasan panas supaya suhu tubuh normal.', 2000, 6000, 'Indo farma', '', '0000-00-00'),
(1045, 'OBT-1045', 'Asam mafenamat', 'Rak 2', 10, 'Tablet', 'Anti Radang', '2023-06-21', 'Asam Mefenamat Berno adalah obat generik yang digunakan sebagai pereda nyeri, dismenore, nyeri ringan khususnya ketika pasien juga mengalami peradangan, dan mengurangi gangguan inflamasi (peradangan) secara umum.', 2000, 4000, 'Kalbe Farma', '', '0000-00-00'),
(1046, 'OBT-1046', 'Counterpain', 'Rak 1', 25, 'Obat oles', 'Antipiretik', '2023-01-04', 'Obat oles untuk mengurangi rasa nyeri pada bagian tubuh yang pegal', 5000, 10000, 'Kalbe Farma', '', '0000-00-00'),
(1047, 'OBT-1047', 'Betadine', 'Rak 3', -1, 'Obat tetes', 'Antioksidan', '2024-01-10', 'Mengobati luka luar kulit ', 8000, 10000, 'Kalbe Farma', '', '0000-00-00'),
(1048, 'OBT-1048', 'Salbutamol', 'Rak 1', 2, 'Inhaler', 'Antibiotik', '2023-04-26', 'merupakan obat dengan kandungan Salbutamol yang digunakan untuk mengobati penyakit pada saluran pernafasan seperti asma dan penyakit paru', 10000, 15000, 'Kalbe Farma', '', '0000-00-00'),
(1049, 'OBT-1049', 'Cetirizen', 'Rak 2', 0, 'Tablet', 'Antibiotik', '2022-10-20', 'Cetirizine adalah obat untuk meredakan gejala atau keluhan akibat reaksi alergi, seperti gatal pada kulit, tenggorokan, hidung', 3000, 5000, 'Kalbe Farma', '', '0000-00-00'),
(1050, 'OBT-1050', 'Adrome', 'Rak 3', 0, 'Tablet', 'Hemolitika', '2023-04-21', 'Adrome adalah tablet obat yang digunakan untuk menghentikan perdarahan, terutama perdarahan yang menyebabkan terjadinya penurunan resitensi kapiler', 4000, 5000, 'Kalbe Farma', '', '0000-00-00'),
(1051, 'OBT-1051', 'Ambroxol', 'Rak 1', 0, 'Obat cair', 'Anti Radang', '2024-05-16', 'Ambroksol adalah obat yang digunakan untuk memecah dahak, digunakan pada terapi gangguan pernafasan terkait mukus yang kental atau berlebih', 5000, 8000, 'Kalbe Farma', '', '0000-00-00'),
(1056, 'OBT-1056', 'Vitamin A', 'Rak 1', 15, 'Tablet', 'Vitamin', '2023-07-15', 'Vitamin A untuk mata', 10000, 2000, 'Kalbe Farma', '', '0000-00-00'),
(1064, 'OBT-1060', 'Tolak Angin', 'rak 2', 4, 'Obat cair', 'Antibiotik', '2024-01-10', 'Tolak angin obat mencegah masuk angin', 2000, 5000, 'Kalbe Farma', '', '0000-00-00'),
(1065, 'OBT-001', 'betadine2', 'rak 2', 20, 'Obat cair', 'Antibiotik', '2023-09-26', 'obat betadine', 2000, 5000, 'Kalbe Farma', '', '0000-00-00'),
(1066, 'OBT-001', 'Enervon C', 'rak 2', 30, 'Tablet', 'Vitamin', '2024-02-01', 'Vitamin C', 4100, 5603, 'Kalbe Farma', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `table_purchase`
--

CREATE TABLE `table_purchase` (
  `id_pembelian` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pemasok` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_purchase`
--

INSERT INTO `table_purchase` (`id_pembelian`, `ref`, `nama_obat`, `harga_beli`, `banyak`, `subtotal`, `nama_pemasok`, `tgl_beli`, `grandtotal`) VALUES
(43, '0yOrCtXwNZ', 'Vitamin C', 3000, 28, 90000, 'Kalbe Farma', '2023-07-07', 90000),
(44, 'TG3jfVa14n', 'Vitamin C', 3000, 48, 150000, 'Kalbe Farma', '2023-07-02', 150000),
(46, 'VtoswC3ckl', 'Vitamin C', 3000, 1, 9000, 'Kalbe Farma', '2023-08-23', 9000),
(47, 'Uxk6JX1oIX', 'Vitamin C', 3000, 3, 15000, 'Kalbe Farma', '2023-08-30', 15000),
(48, 'HOHWXw0evc', 'Vitamin C', 3000, 3, 15000, 'Kalbe Farma', '2023-09-19', 15000),
(49, 'U0A9Pq7EUH', 'Tolak Angin', 2000, 3, 6000, 'Kalbe Farma', '2023-10-10', 6000),
(50, '8BJI5b6lFm', 'Tolak Angin', 2000, 5, 10000, 'Kalbe Farma', '2023-10-12', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `table_sup`
--

CREATE TABLE `table_sup` (
  `id_pem` int(3) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_sup`
--

INSERT INTO `table_sup` (`id_pem`, `nama_pemasok`, `alamat`, `telepon`) VALUES
(101, 'Kalbe Farma', 'Jl. Let. Jend Suprapto Kav 4 Jakarta 10510 - Indonesia', '+622142873888'),
(102, 'Kimia Farma', 'Jl. Veteran NO. 9 Jakarta Pusat - 10110 ', '1-500-255'),
(103, 'Sanbe Farma', 'Taman Sari Road Number 10', '022-4207725'),
(104, 'Dexa Medica', 'Titan Center, Lantai 3, Jalan Boulevard Bintaro, Blok B7/B1 No. 5, Bintaro Jaya, Sektor 7, Tangerang 15224, Indonesia', '+62 21 7454-111'),
(105, 'Pharos Indonesia', 'Gedung Pharos, Jl. Limo No. 40, Permata Hijau, Jakarta Selatan, 12220, Indonesia', '+62 21 7200981'),
(113, 'Indo farma', '021-88323972/73 ', 'Jl. Indofarma No. 1 Cikarang B'),
(114, 'Apotek jakarta 1', 'jakarta raya no 10', '087123456');

-- --------------------------------------------------------

--
-- Table structure for table `table_unit`
--

CREATE TABLE `table_unit` (
  `id_unit` int(2) NOT NULL,
  `unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_unit`
--

INSERT INTO `table_unit` (`id_unit`, `unit`) VALUES
(7, 'Inhaler'),
(1, 'Kapsul'),
(2, 'Obat cair'),
(3, 'Obat oles'),
(10, 'Obat serbuk'),
(8, 'Obat suntik'),
(9, 'Obat tempel'),
(6, 'Obat tetes'),
(5, 'Suppositoria'),
(4, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'dms', 'dimas@gmail.com', 'FotoDimasKuncoroJati_Magang.jpg', '$2y$10$5W1v2NKcQITzgIgqgIWkL.cTWija3oJPaHwGPCw.9jxoQkgFvB5j6', 1, 1, 1669992403),
(5, 'dimas22', 'dimas2@gmail.com', 'default.jpg', '$2a$12$oxWMjuROfmF.xdwe1xG5l..gL7dvSxZA2ZJuHVWdchMf5A5jAIakS', 2, 1, 1670072126),
(6, 'dimas23', 'dimas23@gmail.com', 'default.jpg', '$2y$10$6AxZgHsJk/pChSC/qcfo/uAeb0CLOH/amNKpnrXRJx3IkOb8f0GVm', 2, 1, 1670853440),
(7, 'dimas12', 'dimas12@gmail.com', 'default.jpg', '$2y$10$H/Dk/AkJhUZKtLbnhxKAQelfe0yizdKHLLoxCLkbpxhaBdDZSkNFK', 2, 1, 1670853497),
(8, 'dimas23', 'dimas76@gmail.com', 'default.jpg', '$2y$10$GA7LZ2UWQ14P4tX2N.X6mu/21T26q991iWiYAVZjxzvjgJA0bwJ8u', 2, 1, 1672056773),
(9, 'dimas222', 'dimas222@gmail.com', 'default.jpg', '$2y$10$qTf/dVOlTZ/GLZs2HiEUJO.imooiHmrHmlfieV/UYuEmSVcwLuu6e', 2, 1, 1678267906),
(10, 'kuncoro1', 'kuncoro1@gmail.com', 'default.jpg', '$2y$10$ZSNkuV6qbN4GQsFpWziiC.5Dfa6kX37MfInL8O1Yuhlm0zeSI4226', 1, 1, 1685019892),
(11, 'd', 'admin@admin.com', 'default.jpg', '$2y$10$/gS5.8N7/XG22dcvxe4P7exO0YBf0HU5uyu0PBwccMMxSD43u0.1q', 2, 1, 1687874687);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-pen', 1),
(4, 2, 'Change Password\r\n', 'user/changepassword', 'fas fa-fw fa-key', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_num`);

--
-- Indexes for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_cat`
--
ALTER TABLE `table_cat`
  ADD PRIMARY KEY (`id_kat`),
  ADD UNIQUE KEY `kategori` (`nama_kategori`);

--
-- Indexes for table `table_invoice`
--
ALTER TABLE `table_invoice`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `fk_namaobat` (`nama_obat`);

--
-- Indexes for table `table_med`
--
ALTER TABLE `table_med`
  ADD PRIMARY KEY (`id_obat`),
  ADD UNIQUE KEY `nama_obat` (`nama_obat`),
  ADD KEY `med_unit` (`unit`),
  ADD KEY `med_cat` (`nama_kategori`),
  ADD KEY `med_sup` (`nama_pemasok`);

--
-- Indexes for table `table_purchase`
--
ALTER TABLE `table_purchase`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `fk_namapemasok` (`nama_pemasok`);

--
-- Indexes for table `table_sup`
--
ALTER TABLE `table_sup`
  ADD PRIMARY KEY (`id_pem`),
  ADD UNIQUE KEY `nama_supplier` (`nama_pemasok`);

--
-- Indexes for table `table_unit`
--
ALTER TABLE `table_unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD UNIQUE KEY `unit` (`unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `table_cat`
--
ALTER TABLE `table_cat`
  MODIFY `id_kat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `table_invoice`
--
ALTER TABLE `table_invoice`
  MODIFY `id_tagihan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `table_med`
--
ALTER TABLE `table_med`
  MODIFY `id_obat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1068;

--
-- AUTO_INCREMENT for table `table_purchase`
--
ALTER TABLE `table_purchase`
  MODIFY `id_pembelian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `table_sup`
--
ALTER TABLE `table_sup`
  MODIFY `id_pem` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `table_unit`
--
ALTER TABLE `table_unit`
  MODIFY `id_unit` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_invoice`
--
ALTER TABLE `table_invoice`
  ADD CONSTRAINT `fk_namaobat` FOREIGN KEY (`nama_obat`) REFERENCES `table_med` (`nama_obat`);

--
-- Constraints for table `table_med`
--
ALTER TABLE `table_med`
  ADD CONSTRAINT `med_cat` FOREIGN KEY (`nama_kategori`) REFERENCES `table_cat` (`nama_kategori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `med_sup` FOREIGN KEY (`nama_pemasok`) REFERENCES `table_sup` (`nama_pemasok`) ON UPDATE CASCADE,
  ADD CONSTRAINT `med_unit` FOREIGN KEY (`unit`) REFERENCES `table_unit` (`unit`) ON UPDATE CASCADE;

--
-- Constraints for table `table_purchase`
--
ALTER TABLE `table_purchase`
  ADD CONSTRAINT `fk_namapemasok` FOREIGN KEY (`nama_pemasok`) REFERENCES `table_sup` (`nama_pemasok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
