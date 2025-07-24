-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2025 at 01:05 AM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_man2baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `berandas`
--

CREATE TABLE `berandas` (
  `id` bigint UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi_depan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi_depan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_depan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berandas`
--

INSERT INTO `berandas` (`id`, `header`, `judul_1`, `judul_2`, `keterangan_1`, `keterangan_2`, `keterangan_3`, `keterangan_4`, `visi_depan`, `misi_depan`, `nilai_depan`, `created_at`, `updated_at`) VALUES
(1, 'documents/gambar/header-man2.png', 'Islami, Populis, Berkualitas', 'Selamat datang di Website Resmi MAN 2 Samarinda', 'Prestasi Nasional & Internasional', 'Ekskul Keren', 'Lulusan Berkualitas', 'MAN PK', '\"Terwujudnya sumber daya manusia yang bertakwa, berakhlak mulia, sehat, cerdas, berintegritas, berwawasan iptek, kompetitif, inovatif, peduli dan berbudaya lingkungan.\" ', '\"Bertekad melahirkan generasi muslim yang unggul dalam iman dan takwa, serta menguasai ilmu pengetahuan dan teknologi modern. Hal ini kami wujudkan melalui pendidikan berkualitas yang inovatif dan manajemen profesional dalam lingkungan madrasah yang peduli lingkungan, bersih, serta inklusif bagi semua.\"', '\"Menanamkan lima nilai inti dalam setiap aspek pendidikan: Integritas untuk membentuk pribadi jujur, Profesionalitas dalam memberikan layanan terbaik, Inovasi untuk terus berkembang, Tanggung Jawab dalam setiap amanah, dan Keteladanan sebagai panutan di masyarakat.\"', '2025-07-03 02:38:09', '2025-07-03 02:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1751807743),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1751807743;', 1751807743),
('livewire-rate-limiter:929d7f8b6b9a9458824b93dd32fc223d6e7b5b05', 'i:1;', 1751805001),
('livewire-rate-limiter:929d7f8b6b9a9458824b93dd32fc223d6e7b5b05:timer', 'i:1751805001;', 1751805001),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:3;', 1751806184),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1751806184;', 1751806184);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `alamat`, `no_hp`, `ket_1`, `ket_2`, `created_at`, `updated_at`) VALUES
(1, 'Jl. Harmonika, No. 98', '+62 811-5817-272', 'Senin - Kamis: 07.00 - 16.45', 'Jum\'at: 07.00 - 16.00', '2025-07-06 07:43:25', '2025-07-06 07:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` json DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `title_schedule`, `event_date`, `event_time`, `location`, `content`, `schedule`, `image`, `created_at`, `updated_at`) VALUES
(1, 'MGMP Bahasa Inggris MA Kota Samarinda', NULL, '2025-05-16', '08.00 - 10.00 WITA', 'Gedung PPT MAN 2 Samarinda', '<p>Samarinda (Madrasah) – Musyawarah Guru Mata Pelajaran (MGMP) Bahasa Inggris Madrasah Aliyah se-Kota Samarida menggelar halal bihalal dan sharing informasi mengenai Education USA (EDUSA). Kegiatan ini dilaksanakan di Gedung Pusat Pembelajaran Terpadu (PPT) MAN 2 Samarinda, Jumat (16/05).</p>', '[]', 'uploads/events/01JZFXBTP5A4GYDMBRVW7SS267.jpg', '2025-07-06 04:24:09', '2025-07-06 12:03:47'),
(2, 'PPDB 2025/2026', NULL, '2025-06-20', '07.00 - 16.00 WITA', 'Lab Agama MAN 2 Samarinda', '<p>Penerimaan Peserta Didik Baru MAN 2 Samarinda Tahun Ajaran 2025/2026</p>', '[{\"time\": \"20 - 25 Juni 2025\", \"description\": \"Pendaftaran Online di website ppdb.man2samarinda.sch.id\", \"title_schedule\": \"Pendaftaran Online\"}, {\"time\": \"24 - 26 Juni 2025\", \"description\": \"Pelaksanaan Tes BTQ dan Wawancara\", \"title_schedule\": \"Pelaksanaan Tes\"}, {\"time\": \"30 Juni 2025\", \"description\": \"Pengumuman Kelulusan Calon Peserta Didik\", \"title_schedule\": \"Pengumuman\"}, {\"time\": \"1 - 3 Juli 2025\", \"description\": \"Pendaftaran Ulang Untuk Peserta Didik Yang dinyatakan Lulus\", \"title_schedule\": \"Daftar Ulang\"}]', 'uploads/events/01JZFX4S9J2KYYF9HYFWQZKMD4.jpg', '2025-07-06 04:48:44', '2025-07-06 11:59:57'),
(3, 'Upacara Peringatan Hari Pendidikan Nasional', NULL, '2025-05-02', '07.00 - 08.00 WITA', 'Lapangan MAN 2 Samarinda', '<p>Dalam rangka memperingati Hari Pendidikan Nasional (Hardiknas) 2025, MAN 2 Samarinda menggelar upacara bendera. Upacara bendera yang dilaksanakan Jumat pagi (02/05) di lapangan MAN 2 Samarinda ini berlangung dengan lancar dan khidmat.</p>', '[{\"time\": \"02 Mei 2025\", \"description\": \"Upacara dipimpin oleh Kepala Madrasah\", \"title_schedule\": \"Awal Upacara\"}]', 'uploads/events/01JZFWRJMHNF8A8AER6V4PKGSM.jpg', '2025-07-06 06:58:18', '2025-07-06 11:55:01'),
(4, 'Upacara Peringatan Hari Kebangkitan Nasional', NULL, '2025-05-20', '07.00 WITA', 'Lapangan MAN 2 Samarinda', '<p><strong>Samarinda (Madrasah)</strong> – Selasa (20/05) MAN 2 Samarinda melaksanakan upacara peringatan ke-117 Hari Kebangkitan Nasional (Harkitnas). Apel bendera yang diikuti oleh seluruh siswa, guru, dan pegawai madrasah ini dilaksanakan di lapangan MAN 2 Samarinda pada pukul 07.00 Wita. Upacara pagi ini berlangsung dengan tertib dan khidmat.&nbsp;</p>', '[]', 'uploads/events/01JZFXJJS3WSAWFW6CQHEPJH0H.jpg', '2025-07-06 06:59:26', '2025-07-06 12:07:29'),
(5, 'Gelar Karya P5RA', NULL, '2025-06-03', '09.00 - 12.00 WITA', 'Gedung PPT MAN 2 Samarinda', '<p>Samarinda (Madrasah) – Siswa MAN 2 Samarinda kembali melaksanakan Gelar Karya Proyek Penguatan Profil Pelajar Pancasila (P5) Rahmatan lil Alamin (RA). Pameran ini digelar di Gedung Pusat Pendidikan Terpadu (PPT), Selasa (03/06) 09.00 s.d.12.00 Wita.</p>', '[]', 'uploads/events/01JZFXQCTHW8SNJAVJE5KE8S6A.jpg', '2025-07-06 07:00:04', '2025-07-06 12:10:06'),
(6, 'Class Meeting 2', NULL, '2025-06-11', '07.00 WITA', 'Lapangan MAN 2 Samarinda', '<p>Lapangan MAN 2 Samarinda menjadi saksi semaraknya pembukaan kegiatan Class Meeting 2 yang dilaksanakan pada hari Rabu (11/6/2025). Kegiatan ini dihadiri oleh Kepala Madrasah, Kepala Tata Usaha, seluruh dewan guru, dan siswa MAN 2 Samarinda.</p>', '[]', 'uploads/events/01JZFXTQK91XXY2MB2H0FSBVNB.jpg', '2025-07-06 07:01:37', '2025-07-06 12:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_type` enum('introduction','accent','gallery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gallery',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `category`, `description`, `image`, `featured_type`, `created_at`, `updated_at`) VALUES
(14, 'Gedung Utama', 'Akademik', 'Gedung Utama', 'uploads/fasilitas/01JZCCW5VQK8EE4J0P8BXD55SV.webp', 'introduction', '2025-07-05 03:17:54', '2025-07-05 03:17:54'),
(15, 'Halaman', 'Umum', 'Halaman', 'uploads/fasilitas/01JZCEKZ57AE29XRTM0FA220VR.jpeg', 'accent', '2025-07-05 03:23:48', '2025-07-05 03:48:22'),
(16, 'Gedung Pusat Pembelajaran Terpadu', 'Ekstrakurikuler', 'PPT', 'uploads/fasilitas/01JZCE3T77W6WAH0X67RY0NMZ1.webp', 'gallery', '2025-07-05 03:39:33', '2025-07-05 03:39:33'),
(17, 'Gedung Utama', 'Akademik', 'Gedung Utama', 'uploads/fasilitas/01JZCE4M3BXKP6Y0Z8PWNVDT49.webp', 'gallery', '2025-07-05 03:39:59', '2025-07-05 03:39:59'),
(18, 'Gedung Kelas', 'Akademik', 'Kelas', 'uploads/fasilitas/01JZCE69BRNXEARPRSSGZQ1RKC.webp', 'gallery', '2025-07-05 03:40:54', '2025-07-05 03:40:54'),
(19, 'Gedung Kelas Baru', 'Akademik', 'Gedung Kelas RKB', 'uploads/fasilitas/01JZCE6YQFPB4TP8NSBEFKPW5Y.webp', 'gallery', '2025-07-05 03:41:16', '2025-07-05 03:41:16'),
(20, 'Labratorium Agama', NULL, 'LAB AGAMA', 'uploads/fasilitas/01JZCE7MJQGB7C4TCZW5G8XQGR.webp', 'gallery', '2025-07-05 03:41:38', '2025-07-05 03:41:38'),
(21, 'Kantin', 'Umum', 'Kantin', 'uploads/fasilitas/01JZCE86VH5WC63EFTXXPEWYX5.webp', 'gallery', '2025-07-05 03:41:57', '2025-07-05 03:41:57'),
(22, 'Masjid Al-Jihad', 'Umum', 'Masjid', 'uploads/fasilitas/01JZCE8RM11103AH36T6YTQ8K9.webp', 'gallery', '2025-07-05 03:42:15', '2025-07-05 03:42:15'),
(23, 'Sekretariat MANPK', 'Umum', 'Sekre MANPK', 'uploads/fasilitas/01JZCEATNV6X751T4934DD7Q66.webp', 'gallery', '2025-07-05 03:43:23', '2025-07-05 03:43:23'),
(24, 'Lapangan Madrasah', 'Umum', 'Lapangan', 'uploads/fasilitas/01JZCEBKAQ42R0RBPS8EGNAR2T.webp', 'gallery', '2025-07-05 03:43:48', '2025-07-05 03:43:48'),
(25, 'Gazebo', 'Akademik', 'Gazebo', 'uploads/fasilitas/01JZCECABGSG2M5RHPRNNJKS4G.webp', 'gallery', '2025-07-05 03:44:12', '2025-07-05 03:44:12'),
(26, 'Asrama Putra', 'Akademik', 'Asrama Putra', 'uploads/fasilitas/01JZCECTANQSXPWCP9GFXZH015.webp', 'gallery', '2025-07-05 03:44:28', '2025-07-05 03:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `facility_stats`
--

CREATE TABLE `facility_stats` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility_stats`
--

INSERT INTO `facility_stats` (`id`, `title`, `value`, `suffix`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Kelas', 30, '+', NULL, '2025-07-05 01:48:59', '2025-07-05 01:48:59'),
(2, 'Laboratorium', 6, '+', NULL, '2025-07-05 01:49:27', '2025-07-05 01:49:27'),
(3, 'Auditorium', 2, NULL, NULL, '2025-07-05 01:49:50', '2025-07-05 01:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `category`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lapangan Madrasah', 'uploads/galeri/01JZCS61ANEQGGPP91YG4ZG0DY.webp', 'Kegiatan', NULL, '2025-07-05 06:53:00', '2025-07-05 06:53:00'),
(2, 'Upacara Hari Pahlawan', 'uploads/galeri/01JZCSC2TJSB1WZX7Y70VNWXJV.jpeg', 'Kegiatan', 'Upacara Hari Pahlawan 2023', '2025-07-05 06:56:18', '2025-07-05 06:56:18'),
(3, 'Kegiatan P5RA', 'uploads/galeri/01JZCSF9KVF9HMDF417J0E2FGR.jpeg', 'Kegiatan', NULL, '2025-07-05 06:58:03', '2025-07-05 06:58:03'),
(4, 'Kegiatan Pembelajaran Malam', 'uploads/galeri/01JZCSMNEZ4QVZRQ99A3AGPYR9.jpeg', 'Ekstrakurikuler', NULL, '2025-07-05 07:00:59', '2025-07-05 07:00:59'),
(5, 'Kunjungan MAN IC Paser', 'uploads/galeri/01JZCT7HGW90CHNV03EDKT7E2Z.jpeg', 'Kegiatan', NULL, '2025-07-05 07:11:18', '2025-07-05 07:11:18'),
(6, 'Prestasi OSN 2023', 'uploads/galeri/01JZCTA762KY2JVAGTHQG9VZYA.jpeg', 'Prestasi', NULL, '2025-07-05 07:12:46', '2025-07-05 07:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_heroes`
--

CREATE TABLE `gallery_heroes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_heroes`
--

INSERT INTO `gallery_heroes` (`id`, `title`, `subtitle`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Jelajahi Momen Berharga di Madrasah Kami', 'Abadikan setiap momen berharga di madrasah kami! Temukan berbagai aktivitas, prestasi, dan kebersamaan yang tercipta dalam lingkungan penuh inspirasi dan semangat belajar.', 'uploads/galeri/01JZCRK0YY3DA86665X6M02Z9K.webp', '2025-07-05 06:42:37', '2025-07-05 06:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_guru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `nama`, `jenis_guru`, `foto`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Usman, M.Pd', 'Guru Bahasa Inggris', 'uploads/profil/01JZA4P702F8DWXFXW8HFQCK45.png', 'Wakil Kepala Madrasah Bidang Humas', '2025-07-04 06:16:21', '2025-07-04 06:16:21'),
(2, 'Ruchmiati', 'Guru Akidah Akhlak', 'uploads/profil/01JZA4TQ19E33158QTND24GSCS.png', 'Ketua MAN Program Keagamaan', '2025-07-04 06:18:49', '2025-07-04 06:18:49'),
(3, 'Erliany, M.Pd.I', 'Guru Qur\'an Hadist', 'uploads/profil/01JZA6REEW655W86S3CE1JZEF4.png', 'Wakil Kepala Madrasah Bidang Kesiswaan', '2025-07-04 06:52:31', '2025-07-04 06:52:31'),
(4, 'Sri Purwati, S.Pd.', 'Guru Matematika', 'uploads/profil/01JZA6ST9N74T2N3BG65R7ZWWK.png', 'Wakil Kepala Madrasah Bidang Kurikulum', '2025-07-04 06:53:16', '2025-07-04 06:53:16'),
(5, 'Sapini, A.Ma., S.Pd., M.Pd.', NULL, 'uploads/profil/01JZA708WANBWY62Q05KY7TABM.png', 'Kepala Madrasah', '2025-07-04 06:56:48', '2025-07-04 06:56:48'),
(6, 'Wikra Sanjaya, S.S.', 'Guru Bahasa Indonesia', 'uploads/profil/01JZA75E7FGAX9QQ2FXY19H1KG.png', 'Wakil Kepala Madrasah Bidang Sarana', '2025-07-04 06:59:37', '2025-07-04 06:59:37'),
(7, 'Imam Sanusi, S.Hi., M.H', NULL, 'uploads/profil/01JZA76GSR45B1QYKR4BNQ8R8Z.png', 'Kepala Tata Usaha', '2025-07-04 07:00:13', '2025-07-04 07:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_03_022709_create_berandas_table', 2),
(5, '2025_07_03_132547_create_profiles_table', 3),
(6, '2025_07_03_132747_create_leaders_table', 4),
(7, '2025_07_03_133321_create_profiles_table', 5),
(8, '2025_07_03_133553_create_timelines_table', 6),
(9, '2025_07_03_135217_create_timelines_table', 7),
(10, '2025_07_03_135324_add_profil_id_to_timelines_table', 8),
(11, '2025_07_04_102903_rename_profil_id_to_profile_id_in_timelines_table', 9),
(12, '2025_07_04_104539_create_leaders_table', 10),
(13, '2025_07_04_195802_create_teachers_table', 11),
(14, '2025_07_05_080717_create_facilities_table', 12),
(15, '2025_07_05_080813_create_facility_stats_table', 13),
(16, '2025_07_05_085025_create_facility_stats_table', 14),
(17, '2025_07_05_092308_add_featured_type_to_facilities_table', 15),
(18, '2025_07_05_141009_create_galleries_table', 16),
(19, '2025_07_05_142649_create_gallery_heroes_table', 17),
(20, '2025_07_05_162758_create_programs_table', 18),
(21, '2025_07_05_210513_create_news_table', 19),
(22, '2025_07_05_211508_add_image_to_news_table', 20),
(23, '2025_07_06_115835_create_events_table', 21),
(24, '2025_07_06_121927_add_title_schedule_to_events_table', 22),
(25, '2025_07_06_152343_create_contacts_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `date`, `category`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Penanaman Nilai Disiplin dan Tanggung Jawab di Laboratorium Kimia', 'Rinda Cahya', '2025-04-16', 'Kegiatan', 'uploads/berita/01JZDK3N71M4M3DHRE4FPNETF8.jpg', '<p><strong>Samarinda (Madrasah)</strong> – MAN 2 Samarinda kembali melaksanakan kegiatan rutin upacara bendera pada hari Senin, 14 April 2025, bertempat di lapangan madrasah. Upacara diikuti oleh seluruh siswa, dewan guru, serta staf tenaga kependidikan dengan tertib dan penuh khidmat.</p><p>Pada kesempatan ini, Irhamni Dewi Putri bertindak selaku pembina upacara. Dalam amanat yang disampaikannya, ia menekankan pentingnya menumbuhkan sikap tanggung jawab dan kedisiplinan, khususnya dalam kegiatan praktikum di Laboratorium Kimia.</p><p>Irhamni menyampaikan bahwa laboratorium merupakan ruang ilmiah yang menuntut ketelitian dan kepatuhan terhadap aturan, demi keselamatan dan efektivitas proses pembelajaran. Lima poin utama yang disampaikan dalam amanat tersebut antara lain: memahami dan menaati tata tertib yang berlaku di Laboratorium Kimia; menggunakan Alat Pelindung Diri (APD) secara tepat saat melaksanakan praktikum; menjaga kebersihan laboratorium agar tetap nyaman dan aman digunakan; menghindari segala bentuk perilaku yang berpotensi menyebabkan kecelakaan kerja di laboratorium; dan Melaporkan segala bentuk permasalahan, kecelakaan, atau kerusakan alat laboratorium kepada guru pembimbing atau petugas laboratorium.</p><p>“Disiplin bukan hanya soal hadir tepat waktu, tetapi juga menyangkut sikap berhati-hati, bertanggung jawab, dan patuh pada prosedur terutama di lingkungan laboratorium,” ujarnya dalam amanat.</p><p>Sapini menegaskan, “Kedisiplinan dan tanggung jawab merupakan bagian kunci sukses yang tak dapat ditinggalkan. Maka setiap kita bila ingin mencapai kesuksesan harus menjaga kedisiplinan dan tanggung jawab secara penuh.”</p><p>Kegiatan upacara ini ditutup dengan doa bersama dan diharapkan meningkatkan kesadaran seluruh warga madrasah akan pentingnya keselamatan dan tanggung jawab dalam setiap aktivitas pembelajaran, baik di dalam maupun di luar kelas. (rc)</p>', '2025-07-05 14:26:05', '2025-07-05 14:26:05'),
(2, 'MAN 2 Samarinda Luncurkan Antologi Cerpen dan Antologi Syair Karya Siswa', 'Rinda Cahya', '2025-04-16', 'Akademik', 'uploads/berita/01JZDKBA1PJY9STTVF1T9ENW83.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Senin, (14/04) MAN 2 Samarinda terus mengembangkan potensi literasi siswa melalui peluncuran dua karya antologi yang ditulis oleh para siswa kelas XI dan XII. Dua antologi yang diluncurkan yaitu Mimpi Gadis Penjaga Loket, kumpulan cerpen remaja, dan Bustan Kesuma, antologi syair remaja. Karya-karya tersebut merupakan hasil bimbingan intensif oleh Sukarni (Karni Osing), guru Bahasa Indonesia MAN 2 Samarinda yang dikenal aktif dalam pembinaan literasi di lingkungan madrasah.&nbsp;</p><p>Sapini, selaku kepala madrasah menyampaikan apresiasinya terhadap pencapaian para siswa serta kerja keras para pembina. “Siswa MAN 2 Samarinda tidak hanya aktif dalam akademik dan keagamaan, tetapi juga memiliki jiwa seni dan literasi yang kuat. Kami sangat bangga atas lahirnya karya-karya orisinal ini. Semoga terus berkreasi dan berliterasi hingga terus terlahirnya penulis-penulis muda dari madrasah ini,” ujarnya.&nbsp;</p><p>Sukarni juga menyampaikan bahwa proses pembinaan dilakukan secara berkelanjutan, dimulai dari pengenalan struktur cerpen dan syair, penajaman ide, hingga penyuntingan akhir naskah. “Kami tidak hanya fokus pada hasil, tetapi juga pada proses kreatif siswa. Mereka belajar menuangkan gagasan dengan jujur dan menggali pengalaman serta imajinasi mereka,” jelasnya. Peluncuran ini sekaligus menjadi simbol keseriusan MAN 2 Samarinda dalam mendukung program Gerakan Literasi Madrasah (GLM). (rc)</p>', '2025-07-05 14:30:16', '2025-07-05 14:30:16'),
(3, 'Piala dan Medali untuk Sang Juara MAN 2 Samarinda', 'Rinda Cahya', '2025-04-17', 'Prestasi', 'uploads/berita/01JZDKDH4G9XMCS74VPE2GP65Q.jpg', '<p><strong>Samarinda (Madrasah) </strong>– Senin, (14/04) Suasana penuh kebanggaan menyelimuti halaman MAN 2 Samarinda saat dilangsungkannya penyerahan medali, piagam, dan piala penghargaan kepada siswa berprestasi dari berbagai ajang lomba yang diikuti dalam beberapa hari terakhir. Kegiatan ini diselenggarakan setelah upacara bendera rutin hari Senin.</p><p>Prestasi membanggakan ini datang dari beragam bidang, mulai dari akademik hingga olahraga. Hal ini menunjukkan potensi dan bakat siswa MAN 2 Samarinda yang kian berkembang secara menyeluruh.</p><p>Adapun ajang lomba yang berhasil diikuti dan menorehkan prestasi antara lain: lomba karate; lomba panahan; cerdas cermat Biologi; debat Bahasa Indonesia; kompetisi esai siswa; dan lomba basket.</p><p>Sapini, Kepala MAN 2 Samarinda, turut memberikan apresiasi hangat kepada para siswa dan pembina atas torehan prestasi yang tidak hanya membanggakan madrasah, tetapi juga menjadi inspirasi bagi seluruh warga madrasah.</p><p>“Ini merupakan pencapaian yang membanggakan. Siswa MAN 2 telah menunjukkan bahwa mereka mampu bersaing secara positif di berbagai bidang. Semoga prestasi ini menjadi inspirasi bagi seluruh siswa untuk terus berkembang dan berprestasi,” ujarnya.</p><p>Kegiatan penyerahan penghargaan ditutup dengan sesi foto bersama para siswa berprestasi, pembina lomba, serta kepala madrasah beserta wakilnya. (rc)</p>', '2025-07-05 14:31:29', '2025-07-05 14:31:29'),
(4, 'Mandelsa “The Lions” Sabet Juara 1 Futsal!', 'Rinda Cahya', '2025-04-29', 'Prestasi', 'uploads/berita/01JZDKGVWRKQAVFD72M14V2JKJ.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Senin, (28/04) Tim futsal MAN 2 Samarinda, yang dikenal dengan nama Mandelsa (The Lions), sukses meraih juara 1 dalam lomba futsal yang diadakan oleh CV Jaya Marine di GOR Sempaja pada tanggal 22-27 April 2024. Lomba yang diikuti oleh 32 tim tingkat SMA/SMK/MA sederajat se-Samarinda ini menjadi ajang pembuktian bagi tim futsal Mandelsa setelah sebelumnya mereka hanya meraih juara harapan 1 pada event pertama.</p><p>“Alhamdulillah, kami sangat bersyukur bisa meraih juara 1. Semua perjuangan dan penantian panjang terbayar dengan kemenangan ini,” ujar salah satu pemain tim futsal Mandelsa.</p><p>Selain juara 1, beberapa penghargaan individu juga diraih oleh tim futsal Mandelsa. Pemain terbaik, kiper terbaik, pelatih terbaik, dan pencetak gol terbanyak semuanya berasal dari tim yang sama. “Alhamdulillah, MAN 2 juara, dan kami bangga dengan pencapaian ini,” ujar salah satu pemain lainnya dengan penuh rasa syukur.</p><p>Kemenangan ini tidak didapatkan tanpa tantangan. Tim Mandelsa harus menghadapi berbagai kesulitan. “Namun, komunikasi tim harus tetap terjaga, tidak boleh ada keegoisan. Kami fokus pada tujuan yang sama, yaitu membawa nama besar MAN 2 Samarinda,” tambah pemain tersebut.</p><p>Keberhasilan ini juga tidak lepas dari dukungan berbagai pihak, mulai dari guru, orang tua, teman-teman di lapangan, hingga para supporter. “Doa, latihan, istirahat, dan tawakal pada Allah sangat penting bagi kami dalam meraih kemenangan ini,” ujar mereka.</p><p>“Keberhasilan tim futsal Mandelsa ini membangkitkan semangat pantang menyerah. Meskipun menghadapi banyak tantangan, mereka tetap fokus dan bekerja sama sebagai satu tim. Saya harap prestasi ini bisa menginspirasi seluruh siswa MAN 2 Samarinda untuk tidak hanya berprestasi di bidang olahraga, tetapi juga di akademik dan kehidupan sehari-hari,” ujar Ahmad Juhri, selaku pembina tim futsal Mandelsa.</p><p>“Saya sangat bangga dengan kerja sama tim futsal Mandelsa. Kemenangan ini buah dari kerja keras, disiplin, dan dukungan yang solid, segala tantangan bisa dihadapi. Semoga prestasi ini dapat memotivasi siswa-siswa lainnya untuk terus berprestasi dan mengembangkan prestasi di bidang olahraga,” ujar Sapini, Kepala MAN 2 Samarinda. (rc)</p>', '2025-07-05 14:33:18', '2025-07-05 14:33:18'),
(5, 'MAN 2 Samarinda Gelar Rapat Kelulusan Siswa Kelas XII', 'Wikra Sanjaya', '2025-05-05', 'Kegiatan', 'uploads/berita/01JZDKKS9B8RHN80FVRAZ8E09A.jpg', '<p><strong>Samarinda (Madrasah)</strong> - MAN 2 Samarinda Rabu, 30 April 2025 melaksanakan rapat kelulusan siswa kelas XII. Rapat ini dilaksanakan di Laboratorium Keagamaan MAN 2 Samarinda pukul 13.00 Wita. Acara yang dihadiri oleh seluruh dewan guru dan pegawai MAN 2 Samarinda ini sebagai bagian dari proses akhir tahun ajaran untuk menentukan kelulusan siswa kelas XII.</p><p>Rapat dibuka dengan sambutan Wakil Kepala Madrasah Bidang Kurikulum, Sri Purwati. Dalam sambutannya, ia menyampaikan kriteria kelulusan siswa kelas XII, yang terdiri dari tiga poin utama, diantaranya menyelesaikan seluruh program pembelajaran, memiliki nilai sikap minimal baik, serta mengikuti ujian madrasah.</p><p>Selanjutnya, Kepala MAN 2 Samarinda menyampaikan apresiasi yang tinggi kepada seluruh guru atas dedikasi dan keikhlasan dalam mendidik siswa selama tiga tahun terakhir. \"Terima kasih kepada Bapak dan Ibu Guru yang telah bersusah-payah dan ikhlas memberikan ilmunya kepada siswa. Semoga menjadi amal jariah yang terus mengalir,\" ungkapnya.</p><p>Kepala Madrasah juga menyampaikan bahwa sebanyak 316 siswa kelas XII telah mengikuti ujian madrasah dan dinyatakan telah menyelesaikan proses pembelajaran dengan baik. Berdasarkan kriteria yang telah disampaikan sebelumnya, seluruh siswa dinyatakan memenuhi syarat kelulusan.</p><p>\"Dengan mengucapkan bismillahirrahmanirrahim, saya nyatakan bahwa seluruh siswa kelas XII MAN 2 Samarinda tahun ajaran 2024/2025 dinyatakan lulus,\" tegas Kepala Madrasah dalam pernyataan resmi yang disambut dengan ucapan syukur “Alhamdulillah” dan tepuk tangan dari seluruh peserta rapat.</p><p>Kegiatan ini menandai momen penting dalam perjalanan akademik siswa dan menjadi bentuk apresiasi atas kerja keras seluruh pihak yang terlibat dalam proses pendidikan di MAN 2 Samarinda. (wk)</p>', '2025-07-05 14:34:53', '2025-07-05 14:34:53'),
(6, 'MAN 2 Samarinda Peringati Hari Pendidikan Nasional 2025', 'Evi Gustiana', '2025-05-06', 'Akademik', 'uploads/berita/01JZDKQ7EC2RYN2WJ2E79YJMPM.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Dalam rangka memperingati Hari Pendidikan Nasional (Hardiknas) 2025, MAN 2 Samarinda menggelar upacara bendera. Upacara bendera yang dilaksanakan Jumat pagi (02/05) di lapangan MAN 2 Samarinda ini berlangung dengan lancar dan khidmat.</p><p>Upacara tersebut dipimpin langsung oleh Kepala MAN 2 Samarinda, Sapini. Dalam sambutannya, Sapini membacakan amanat dari Menteri Pendidikan Dasar dan Menengah Republik Indonesia, Abdul Mu’ti, yang mengangkat tema “Partisipasi Semesta Wujudkan Pendidikan Bermutu untuk Semua.”</p><p>Dalam pidato yang dibacakannya, disampaikan bahwa Hari Pendidikan Nasional merupakan momentum untuk kita meneguhkan dan meningkatkan dedikasi, komitmen, dan semangat untuk memenuhi amanat konstitusi yaitu mencerdaskan kehidupan bangsa dengan memberikan layanan pendidikan yang terbaik, bermutu, dan berkemajuan bagi seluruh anak bangsa. Undang-undang Dasar 1945 menegaskan bahwa setiap warga negara berhak mendapatkan pendidikan.</p><p>Keunikan upacara kali ini terletak pada busana yang dikenakan para peserta. Seluruh siswa, guru, dan tenaga kependidikan mengenakan pakaian adat dari berbagai daerah di Nusantara. Pemandangan ini menggambarkan semangat persatuan dalam keberagaman sekaligus memperkuat identitas nasional di lingkungan madrasah.</p><p>Salah satu yang menarik perhatian adalah Kepala MAN 2 Samarinda yang mengenakan baju Dayak khas Kalimantan Timur. Penampilannya yang anggun dan percaya diri mendapat banyak pujian dari warga madrasah. Tak lupa pula ia mengucapkan terima kasih kepada siswa, guru, dan tenaga kependidikan yang turut berpartisipasi dalam upacara peringatan Hari Pendidikan Nasional kali ini.</p><p>“Saya ucapkan terima kasih kepada bapak/ibu guru dan pegawai serta siswa MAN 2 Samarinda yang turut bersemangat untuk berpartisipasi pada kegiatan upacara peringatan Hardiknas kali ini, dengan mengenakan pakaian adat dari berbagai daerah di Nusantara. Ini merupakan keberagaman yang sangat harmonis yang kita ciptakan. Pastinya ini merupakan simbol kecintaan kita pada tanah air kita,” ujarnya dengan penuh semangat.&nbsp;</p><p>Upacara ditutup dengan doa dan dilanjutkan foto bersama. Setelah acara foto bersama dan pembuatan video ucapan selamat, para guru dan pegawai MAN 2 Samarinda mengadakan doa bersama dalam acara tasyakuran, tumpengan. (ev)</p>', '2025-07-05 14:36:46', '2025-07-05 14:36:46'),
(7, 'MGMP Bahasa Inggris MA Kota Samarinda: Wadah Sharing EDUSA', 'Evi Gustiana', '2025-05-19', 'Akademik', 'uploads/berita/01JZDKSESVT0AY5ZVBTCM7BMFG.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Musyawarah Guru Mata Pelajaran (MGMP) Bahasa Inggris Madrasah Aliyah se-Kota Samarida menggelar halal bihalal dan sharing informasi mengenai Education USA (EDUSA). Kegiatan ini dilaksanakan di Gedung Pusat Pembelajaran Terpadu (PPT) MAN 2 Samarinda, Jumat (16/05).</p><p>Kegiatan tersebut dibuka langsung oleh Ketua MGMP Bahasa Inggis, Leny Fauziasih, yang mana ia juga merupakan salah satu guru Bahasa Inggris di MAN 2 Samarinda. Dalam sambutannya, Leny mengucapkan terima kasih dan memberikan motivasi kepada rekan-rekan guru Bahasa Inggris yang hadir dalam kegiatan tersebut.</p><p>“Saya ucapkan terima kasih kepada teman-teman MGMP semua atas kesediaannya hadir dalam acara ini. Semoga kegiatan MGMP Bahasa Inggris MA se-Kota Samarinda dapat konsisten terus berjalan. Kedepannya kita juga akan mengundang narasumber-narasumber yang sesuai dengan kebutuhan guru-guru madrasah khususnya guru Bahasa Inggris. Dengan tujuan, ilmu yang kita peroleh dapat kita implementasikan untuk peserta didik kita,” ujarnya dalam sambutan.</p><p>Dihadiri sebanyak 20 peserta dari berbagai Madrasah Aliyah (MA) se-Kota Samarinda, acara tersebut berjalan dengan sangat lancar. Hadir sebagai pemateri, Irma Fitriani, yakni Advisor EDUSA menyampaikan materi dengan sangat baik. Perlu diketahui EDUSA merupakan program jaringan pusat bimbingan mahasiswa Internasional Departemen Luar Negeri Amerika Serikat di lebih dari 170 negara. Ia menyampaikan beberapa informasi mengenai program EDUSA.</p><p>“Education USA Samarinda menyediakan informasi yang akurat, lengkap, dan terkini. Kami bisa membantu siswa di madrasah bapak/ibu melanjutkan studi di Amerika Serikat. Kami pastikan akan membantu rekrutmen dan internasionalisasi kampus bagi siswa yang berminat,” ujarnya dalam memaparkan materi.</p><p>Sapini, Kepala MAN 2 Samarinda, mendukung penuh kegiatan yang diadakan di PPT MAN 2 Samarinda tersebut. “Saya sangat mendukung kegiatan MGMP Bahasa Inggris tersebut, apalagi kali ini dengan mendatangkan narasumber mengenai perkuliahan luar negeri. Semoga ini bisa menjadi motivasi bagi guru-guru Bahasa Inggris MAN 2 Samarinda. Informasi yang diperoleh bisa dibagi ke peserta didik dan menjadi motivasi bagi mereka untuk meneruskan pendidikan ke luar negeri,” ungkapnya saat diwawancarai. (ev)</p>', '2025-07-05 14:37:59', '2025-07-05 14:37:59'),
(8, 'MAN 2 Samarinda Raih Prestasi Contestavita Polnes 2025', 'Nurhana', '2025-05-14', 'Prestasi', 'uploads/berita/01JZDNGMS0C748E6VBHCEV1E2S.jpg', '<p><strong>Samarinda (Madrasah)</strong> – MAN 2 Samarinda dikenal sebagai madrasahnya siswa-siswa berprestasi. Hampir tiap pekan ada saja yang menggondol piala maupun medali dalam setiap lomba ataupun kompetisi, mulai dari tingkat kota maupun nasional bahkan internasional. Kali ini tiga siswa terbaik meraih prestasi gemilang di bawah bimbingan Lenny Fauziasih, yang sekaligus merupakan guru mata pelajaran Bahasa Inggris di madrasah ini.</p><p>Ketiga siswa terbaik tersebut adalah M. Rafi Faris Fadillah, Kelas XI-4 sebagai Juara 1 Story Telling. Demikian pula Sonia Salma Hasan, Kelas X-6, meraih Juara 1 Speech. Adapun lya Tanwirul Habiba, Kelas X-7 ini, berhasil meraih Juara harapan Story Telling. Momen bergengsi dan menggembirakan ini mereka raih, Minggu (11/5/2025) di Kampus Politeknik Negeri Samarinda (Polnes).</p><p>Kompetisi Bahasa Inggris tahunan yang diselenggarakan oleh UKM MATE EC Polnes ini diikuti 28 sekolah SMA/MA. Ketika final tersisa 6 sekolah, yaitu MAN 2, SMAN 1, SMAN 3, SMAN 10, SMAN 13, dan SMAN 14 Samarinda. Saat babak penyisihan, Lenny membimbing mereka hingga sore. Namun, ketika final ia membimbing secara online guna memastikan persiapan mereka.</p><p>“Anak-anak sangat bersemangat, walaupun latihan hanya 2 atau 3 kali. Mereka mampu mengalahkan anak-anak SMA se-Kota Samarinda. Bahkan mereka tidak menyangka masuk final. Karena, di final ini mereka satu-satunya dari madrasah,” ujar Lenny via chat WhatsApp (WA).</p><p>Demikian pula yang disampaikan Rafi, siswa yang akan berangkat meninggalkan madrasah selama satu tahun ke Amerika. Ia terpilih sebagai peserta Kennedy-Lugar Youth Exchange and Study (YES). Sebuah program beasiswa penuh untuk siswa SMA/MA Indonesia yang dibiayai oleh U.S. Department of State.</p><p>“Alhamdulillah, saya bersyukur bisa berpartisipasi dalam perlombaan di akhir tahun pembelajaran kelas 11 ini. Saya tidak menyangka bisa meraih gelar juara. Karena, saya kesulitan dalam menghafal. Saat pertunjukan pun saya sedikit terbata-bata karena blank. Namun, saya lanjutkan saja dengan bahasa saya sendiri tanpa sesuai teks Alhamdulillah, menjadi pembelajaran yang cukup berkesan bahwasanya the show must go on, pertunjukan harus terus berlanjut bagaimana pun caranya,” ungkap Rafi.&nbsp;</p><p>“Jujur, saya merasa bahwa pada lomba ini persiapan saya sangat minim. Saya juga ikut lomba ini tidak terlalu berharap apa-apa. Apalagi ini pertama kali saya mengikuti lomba speech. Alhamdulillah, atas kehendak Allah Swt, saya berhasil meraih juara satu. Saya sangat bersyukur atas pencapaian tersebut. Di sini saya mendapatkan pengalaman yang sangat berharga,” papar Sonia.</p><p>Sapini, Kepala MAN 2 Samarinda menyampaikan rasa bahagia dan bangga terhadap siswa-siswinya. Ia memberikan ucapan selamat kepada pembimbing dan siswa berprestasi terbut meskipun melalui WA karena berita tersebut diterima pada hari Minggu.</p><p>“Kebahagiaan kami tak terkira atas prestasi anak-anak kita. Terima kasih kepada Bu Lenny yang telah membimbing anak-anak hingga menjelang Maghrib. Semoga menjadi ladang pahala untuk kita semua,” pangkasnya via grup WA. (nh)</p>', '2025-07-05 15:08:08', '2025-07-05 15:08:08'),
(9, 'MAN 2 Samarinda Adakan Persiapan SAS Genap', 'Evi Gustiana', '2025-05-19', 'Kegiatan', 'uploads/berita/01JZDNK9EJPWA1B18GER0P73JF.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Dalam rangka menghadapi Sumatif Akhir Semester (SAS) Genap Tahun Ajaran 2024/2025, MAN 2 Samarinda adakan persiapan untuk memastikan pelaksanaan ujian berjalan dengan lancar. Kegiatan ini dilaksanakan pada Jumat (16/05).&nbsp;</p><p>Seperti biasanya, SAS Genap akan dilaksanakan secara CBT (Computer Based Test) online dengan menggunakan komputer atau laptop peserta didik. CBT menjadikan langkah maju dalam digitalisasi sistem asesmen. SAS Genap MAN 2 Samarinda akan dilaksanakan pada tanggal 19 Mei s.d. 2 Juni 2025.</p><p>Sri Purwati, selaku ketua panitia sekaligus Waka Kurikulum MAN 2 Samarinda menjelaskan bahwa persiapan teknis menjadi prioritas utama. “Kami memastikan sistem ujian daring siap digunakan, mulai dari jaringan, kesiapan perangkat siswa, hingga koordinasi dengan Panitia dan proktor. Panitia juga telah mempersiapkan segala sesuatunya dengan matang, seperti ruangan ujian, pengawasan, ATK, dan lainnya. Hal ini diutamakan agar ujian SAS berjalan dengan lancar,” ujarnya.</p><p>Persiapan teknis kali ini salah satunya dengan menggelar simulasi. Simulasi ini bertujuan untuk memberikan gambaran kepada siswa mengenai teknis pelaksanaan ujian SAS. Imam Wahyudi, Ketua Tim Proktor MAN 2 Samarinda, menjelaskan bahwa simulasi wajib dilaksanakan agar siswa mengetahui bagaimana menggunakan aplikasi yang akan dipakai pada saat ujian SAS nanti.</p><p>“Dalam simulasi kali ini, siswa mencoba aplikasi yang akan digunakan pada saat ujian SAS. Dengan adanya simulasi ini menjadi evaluasi bagi kami tim proktor untuk memperbaiki jika ada kekurangan. Hal ini dilakukan agar ujian nanti berlangsung tanpa hambatan teknis yang berarti dan seluruh siswa dapat mengikuti dengan lancar,” jelasnya.</p><p>Sapini, Kepala MAN 2 Samarinda, menjelaskan bahwa persiapan SAS wajib dilakukan agar semua kegiatan SAS dapat berjalan lancar. “Persiapan SAS wajib dilakukan agar pada saat pelaksanaan ujian nanti semua dapat berlangsung dengan baik sehingga ujian bisa berjalan dengan lancer,” pungkasnya diakhir wawancara. (ev)</p>', '2025-07-05 15:09:34', '2025-07-05 15:09:34'),
(10, 'Sembilan Puluh Lima Lulusan MAN 2 Samarinda Lolos SNBT 2025', 'Evi Gustiana', '2025-06-04', 'Pengumuman', 'uploads/berita/01JZDNP99ZQMGZD93BG4GCCKGF.jpg', '<p><strong>Samarinda (Madasah) </strong>– Kabar membanggakan datang dari MAN 2 Samarinda. Sebanyak 95 lulusan MAN 2 Samarinda berhasil lolos dalam Seleksi Nasional Berbasis Tes (SNBT) 2025 dan diterima diberbagai Perguruan Tinggi Negeri (PTN) ternama di Indonesia. Informasi ini diterima pada Rabu (28/05/2025).</p><p>SNBT merupakan jalur seleksi masuk Perguruan Tinggi Negeri (PTN) yang berdasar pada hasil Ujian Tulis Berbasis Komputer (UTBK) dan ketetapan masing-masing PTN. Melalui jalur ini, para peserta bersaing secara nasional untuk memperebutkan kursi di berbagai universitas ternama di Indonesia.</p><p>Kepala MAN 2 Samarinda, Sapini, menyampaikan apresiasi kepada lulusan MAN 2 Samarinda yang berhasil lolos SNBT 2025 kali ini. “Alhamdulillah, selamat kepada 95 lulusan MAN 2 Samarinda yang telah berhasil lolos SNBT. Kita tahu persaingan di SNBT ini cukup ketat. Saya sangat bangga dengan hasil yang mereka peroleh dengan jurusan yang mereka pilih pastinya,” ungkapnya saat diwawancara.</p><p>Tak hanya mengungkapkan rasa bangganya, kepala madasah juga menyampaikan pesan kepada lulusan MAN 2 Samarinda yang tidak lolos SNBT agar tidak berkecil hati dan terus semangat. “Tetap semangat dan optimis, masih ada jalur mandiri. Ibu yakin kalian pasti akan melanjutkan ke perguruan tinggi yang kalian pilih. Jangan menyerah, terus semangat,” pungkasnya di akhir wawancara. (ev)</p>', '2025-07-05 15:11:13', '2025-07-05 15:11:13'),
(11, 'Sambut Iduladha: MAN 2 Samarinda Laksanakan Pemotongan Hewan Qurban', 'Wikra Sanjaya', '2025-06-10', 'Kegiatan', 'uploads/berita/01JZDNZKYGRE2N64YN7B38B73R.jpg', '<p><strong>Samarinda (Madrasah)</strong> – Dalam rangka menyambut Iduladha 1446 H, MAN 2 Samarinda kembali melaksanakan kegiatan pemotongan hewan kurban. Kegiatan ini dilaksanakan Minggu (08/06) di area parkir MAN 2 Samarinda. Pemotongan hewan kurban dihadiri Kepala Madrasah, Kepala TU, Ketua Komite MAN 2 Samarinda, para guru dan pegawai, serta pengurus OSIS.</p><p>Pada tahun ini, jumlah hewan qurban yang dipotong sebanyak 3 ekor sapi dan 4 ekor kambing. Dua ekor sapi dan tiga ekor kambing merupakan qurban dari para guru dan pegawai. Sementara, satu ekor sapi dan satu ekor kambing berasal dari partisipasi siswa MAN 2 Samarinda.</p><p>Kepala MAN 2 Samarinda, Sapini, menyampaikan rasa syukur dan terima kasih kepada seluruh pihak yang telah berkontribusi dalam pelaksanaan qurban tahun ini. “Alhamdulillah, hari ini MAN 2 Samarinda masih bisa melaksanakan pemotongan hewan kurban di tempat sendiri dengan lancar. Saya mengucapkan banyak terima kasih kepada seluruh guru dan pegawai serta siswa MAN 2 karena telah berpartisipasi dan menyukseskan kegiatan qurban tahun ini. Semoga di tahun-tahun mendatang kita selalu diberikan kesehatan dan kelapangan rejeki sehingga bisa melaksanakan pemotongan hewan kurban lagi,” ujarnya.</p><p>Ketua Panitia Kurban, Usman, juga menyampaikan bahwa kegiatan pemotongan berjalan lancar dan sesuai dengan rencana. “Alhamdulillah, pemotongan hewan kurban tahun ini berjalan baik dan lancar. Daging kurban akan dibagikan kepada seluruh guru dan pegawai MAN 2 Samarinda dan warga sekitar, khususnya di daerah Gang Tanjung. Untuk daging kurban siswa akan disalurkan kepada perwakilan siswa yang berhak menerima, serta setiap kelas akan mendapatkan bagian masing-masing,” jelasnya.</p><p>“Kami berharap kegiatan kurban ini dapat menanamkan semangat berbagi dan berkurban dalam diri siswa, agar kelak mereka terbiasa melakukan qurban setelah lulus dari MAN 2 Samarinda,” tambah Usman.</p><p>Kegiatan ini bukan hanya menjadi bagian dari ibadah tahunan, namun juga menjadi momen edukatif dan pembinaan karakter bagi siswa MAN 2 Samarinda dalam hal kepedulian sosial dan nilai-nilai keislaman. (wk)</p>', '2025-07-05 15:16:18', '2025-07-05 15:16:18'),
(12, 'Semangat dan Semarak Pembukaan Class Meeting 2', 'Wikra Sanjaya', '2025-06-11', 'Kegiatan', 'uploads/berita/01JZFXXKSVM7BA24A3W1DPG3YM.jpg', '<p><strong>Samarinda (Madrasah) </strong>– Lapangan MAN 2 Samarinda menjadi saksi semaraknya pembukaan kegiatan Class Meeting 2 yang dilaksanakan pada hari Rabu (11/6/2025). Kegiatan ini dihadiri oleh Kepala Madrasah, Kepala Tata Usaha, seluruh dewan guru, dan siswa MAN 2 Samarinda.</p><p>Class Meeting 2 kali ini mengangkat tema “Menjadikan Momen Kebersamaan sebagai Pondasi untuk Siswa MAN 2 Samarinda dalam Menjunjung Tinggi Sportivitas, Mempererat Tali Persaudaraan, dan Membangun Semangat Berprestasi”. Tema panjang tersebut menjadi cerminan semangat kolaborasi dan kompetisi sehat yang ingin dibangun di lingkungan madrasah.</p><p>Dalam sambutannya, Ketua Pelaksana Class Meeting 2, Moch. Faturrois Muqorrobin, menyampaikan bahwa sejumlah pertandingan olahraga akan digelar selama kegiatan ini berlangsung. Cabang-cabang pertandingan tersebut antara lain futsal, bola voli, handball, tenis meja, serta badminton untuk kategori putra dan putri.</p><p>Ia juga menyampaikan terima kasih kepada pihak madrasah atas dukungan fasilitas yang diberikan sehingga kegiatan ini dapat terlaksana dengan lancar. Apresiasi juga disampaikan oleh Fatur kepada Pengurus PSBB dan Koperasi Siswa yang telah menjadi sponsor utama kegiatan ini.</p><p>Ketua panitia berharap agar seluruh rangkaian kegiatan dapat berjalan dengan lancar, aman, dan tanpa adanya perselisihan.</p><p>Sementara itu, Kepala MAN 2 Samarinda, Sapini, dalam sambutannya mengucapkan terima kasih kepada seluruh panitia pelaksana, khususnya pengurus OSIS, yang telah bekerja keras berusaha menyukseskan kegiatan ini. Kepala madrasah juga berharap kegiatan ini dapat menjadi sarana bagi para siswa untuk menyalurkan bakat di bidang olahraga, bahkan menjadi langkah awal menuju prestasi sebagai atlet profesional.</p><p>“Class meeting ini bukan hanya tentang siapa yang menang atau kalah, tetapi tentang bagaimana kita menjunjung tinggi sportivitas dan membangun tali persaudaraan antarkelas,” ujarnya menutup sambutan.</p><p>Dengan ucapan bismillah, semangat kebersamaan dan ditandai pemukulan kentongan sebanyak tiga kali, kegiatan Class Meeting 2 MAN 2 Samarinda resmi dibuka. Diharapkan kegiatan ini menjadi ajang yang positif dalam mempererat solidaritas serta menggali potensi siswa di bidang non-akademik. (wk)</p>', '2025-07-06 12:13:30', '2025-07-06 12:13:30'),
(13, 'MAN 2 Samarinda Buka PPDBM Jalur Reguler TP 2025/2026', 'Evi Gustiana', '2025-06-23', 'Pengumuman', 'uploads/berita/01JZFY0SBZ4K1ETVVNRDEZGDVX.jpg', '<p><strong>Samarinda (Madrasah)</strong> – MAN 2 Samarinda kembali membuka Penerimaan Peserta Didik Baru Madrasah (PPDBM) Tahun Pembelajaran 2025/2026 melalui jalur reguler bagi siswa SMP/MTs/sederajat. Kegiatan tersebut dilaksanakan dengan sistem online dan offline.</p><p>Proses pendaftaran jalur reguler ini berlangsung dengan jadwal sebagai berikut: Registrasi dan Konfirmasi Data: 20 s.d. 25 Juni 2025 (online); Tes dan Wawancara: 24 s.d. 26 Juni 2025 (offline); Pengumuman Kelulusan: 30 Juni 2025; Daftar Ulang: 1 s.d. 3 Juli 2025.&nbsp;</p><p>Adapun persyaratan berkas yang harus dipenuhi yaitu: Pasfoto 3x4 latar belakang merah/biru (jpg/png); Scan Surat Keterangan Lulus (SKL); Scan Rapor Semester 3 s.d.5; Scan Kartu Keluarga; KIP (jika ada), dan NISN.</p><p>Wakil Kepala Madrasah Bidang Kesiswaan, Erliyani, menyampaikan bahwa seleksi dalam PPDBM jalur reguler kali ini masih sama seperti tahun-tahun sebelumnya. “Seleksi PPDBM MAN 2 Samarinda masih sama, yakni tahap pertama seleksi berkas dan tahap kedua seleksi Baca Tulis Qur’an (BTQ) dan Wawancara kepribadian,” ujarnya.</p><p>Sementara itu, Kepala MAN 2 Samarinda, Sapini, saat dikonfirmasi menambahkan bahwa persyaratan dan tahapan seleksi dalam PPDBM ini dirancang untuk menjaring peserta didik yang tidak hanya unggul dalam prestasi, tetapi juga memiliki karakter dan akhlak yang baik, sejalan dengan visi dan misi madrasah tentunya.&nbsp;</p><p>Calon peserta didik yang ingin mendaftar ke MAN 2 Samarinda, dapat segera mempersiapkan dokumen dan melakukan pendaftaran sesuai jadwal yang telah ditentukan. Informasi lebih lanjut dapat diperoleh melalui website resmi MAN 2 Samarinda, yakni ppdb.man2samarinda.sch.id atau datang langsung ke MAN 2 Samarinda. (ev)</p>', '2025-07-06 12:15:14', '2025-07-06 12:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `subjudul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_besar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci,
  `misi` text COLLATE utf8mb4_unicode_ci,
  `subjudul_sambutan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_sambutan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi_sambutan` text COLLATE utf8mb4_unicode_ci,
  `foto_kepala` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sejarah_singkat` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `subjudul`, `judul_besar`, `deskripsi`, `gambar`, `visi`, `misi`, `subjudul_sambutan`, `judul_sambutan`, `isi_sambutan`, `foto_kepala`, `sejarah_singkat`, `created_at`, `updated_at`) VALUES
(1, 'Our Story', 'Transformasi MAN 2 Samarinda: Dari Tradisi Menuju Inovasi', 'Sejak berawal dari lembaga Pendidikan Guru Agama hingga menjadi Madrasah Aliyah Negeri Model, MAN 2 Samarinda telah mengalami transformasi besar. Tidak hanya membangun prestasi akademik, tetapi juga mengedepankan karakter, digitalisasi, dan semangat riset. Setiap langkah adalah bukti komitmen kami untuk mencetak generasi unggul yang berdaya saing di era global.', 'uploads/profil/01JZ9N1FNHPTW4E3QNFYY6BGJB.jpg', '\"Terwujudnya sumber daya manusia yang bertakwa, berakhlak mulia, sehat, cerdas, berintegritas, berwawasan iptek, kompetitif, inovatif, peduli dan berbudaya lingkungan.\" ', '\"Bertekad melahirkan generasi muslim yang unggul dalam iman dan takwa, serta menguasai ilmu pengetahuan dan teknologi modern. Hal ini kami wujudkan melalui pendidikan berkualitas yang inovatif dan manajemen profesional dalam lingkungan madrasah yang peduli lingkungan, bersih, serta inklusif bagi semua.\"', 'Voice of Leadership – Kata Penggerak dari Kepala Madrasah', 'Madrasah Kini, untuk Indonesia Esok', 'Alhamdulillah, segala puji bagi Allah SWT atas limpahan rahmat-Nya, sehingga website resmi MAN 2 Samarinda dapat diluncurkan.\n\nWebsite ini menjadi langkah kami dalam menghadirkan layanan informasi yang terbuka, cepat, dan akurat — mencakup profil madrasah, program pendidikan, prestasi, hingga kegiatan terkini.\n\nKami berharap media ini bisa menjadi jembatan komunikasi antara madrasah dengan orang tua, alumni, serta masyarakat luas. Kritik dan saran dari semua pihak sangat kami harapkan demi pengembangan yang lebih baik.\n\nTerima kasih atas dukungan seluruh pihak. Semoga website ini menjadi cerminan semangat MAN 2 Samarinda sebagai madrasah unggul dan inspiratif.', 'uploads/profil/01JZ9NNN7WSSM5PV2X088VX9KQ.jpg', NULL, '2025-07-04 01:42:53', '2025-07-04 07:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `type`, `badge`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Program Reguler', 'reguler', 'Program Reguler', 'Program Reguler MAN 2 Samarinda menawarkan pendidikan umum berkualitas dengan kurikulum nasional yang didukung penguatan karakter, pengembangan potensi akademik, serta pembinaan keterampilan dan keagamaan untuk membentuk lulusan berdaya saing dan berakhlak mulia.', 'uploads/program/01JZDCPY2NKV8WYK51F6BQHYX4.webp', 1, '2025-07-05 08:40:26', '2025-07-05 12:34:17'),
(2, 'MAN PK', 'manpk', 'MAN PK', 'Program MANPK MAN 2 Samarinda menghadirkan pendidikan agama Islam yang mendalam, penguatan karakter, serta pengembangan prestasi akademik dan non-akademik. Program ini didesain secara terpadu untuk membentuk lulusan yang berwawasan luas, berdaya saing.', 'uploads/program/01JZCZEE958W7JV36CQC85BPEZ.webp', 2, '2025-07-05 08:42:27', '2025-07-05 12:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('60nnJLq02SeCgkGe51R7nVmGgWUP1rpZNJOy9zb8', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoia2ZFc3l0RmI3ZEVFVjd4YWhmbWlXekhHdUtrTUJaalB5UUR2OHp0dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9pbmZvcm1hc2kvMiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRIZGdmdDV6UXp0WGtHTE54QTVqNzB1SGphUUVLMEs1STBFNzZGaERudG5lRkxiQjYyYmxybSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1751807739);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `position`, `subject`, `category`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Hernansyah, S.E.', 'Staf Tata Usaha', NULL, 'Staf Tata Usaha', 'uploads/guru_staf/01JZAS9NQMY5VP5RWDNBAHHKV1.png', '2025-07-04 12:16:30', '2025-07-04 12:16:30'),
(2, 'Erliany, M.Pd.I', 'Wakil Kepala Madrasah', 'Guru Al Qur\'an & Hadist', 'Agama', 'uploads/guru_staf/01JZATX87N2RT8Z15SY1228YGH.png', '2025-07-04 12:44:40', '2025-07-04 12:44:40'),
(3, 'Usman, M.Pd', 'Wakil Kepala Madrasah', 'Guru Bahasa Inggris', 'Bahasa', 'uploads/guru_staf/01JZC1DX5VT8ZGKP1FTC9KFQ9V.png', '2025-07-04 23:57:52', '2025-07-04 23:57:52'),
(4, 'Sri Purwati, S.Pd.', 'Wakil Kepala Madrasah', 'Guru Matematika', 'IPA', 'uploads/guru_staf/01JZC1EWMD2C4PNFPQWCQ91H3K.png', '2025-07-04 23:58:24', '2025-07-04 23:58:24'),
(5, 'Hj. Ruchmiati, M.Pd.', 'Ketua MAN PK', 'Guru Akidak Akhlak', 'Agama', 'uploads/guru_staf/01JZC1FW638CRS06HKGSC1SC7F.png', '2025-07-04 23:58:57', '2025-07-04 23:58:57'),
(6, 'Wikra Sanjaya, S.S.', 'Wakil Kepala Madrasah', 'Guru Bahasa Indonesia', 'Bahasa', 'uploads/guru_staf/01JZC1H8JECKN588Q1VH019WCK.png', '2025-07-04 23:59:42', '2025-07-04 23:59:42'),
(7, 'Sukarni', 'Kepala PSBB', 'Guru Bahasa Indonesia', 'Bahasa', 'uploads/guru_staf/01JZC1J46Z2ANRW6NZNHRXQFHF.png', '2025-07-05 00:00:10', '2025-07-05 00:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` bigint UNSIGNED NOT NULL,
  `profile_id` bigint UNSIGNED DEFAULT NULL,
  `tahun` year NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `profile_id`, `tahun`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 1, '1960', 'Berdirinya Pendidikan Guru Agama Negeri (PGAN) di Samarinda sebagai lembaga pendidikan keagamaan formal untuk mencetak tenaga guru agama Islam.', '2025-07-04 02:31:37', '2025-07-04 07:13:45'),
(5, 1, '1990', 'Dengan SK Menteri Agama No. 64 Tahun 1990 tanggal 25 April 1990, PGA resmi dialihfungsikan menjadi Madrasah Aliyah Negeri. Semua fasilitas PGA beralih menjadi bagian dari Madrasah Aliyah Negeri 2 Samarinda dengan NSM 311647203002.', '2025-07-04 02:32:05', '2025-07-04 07:14:19'),
(6, 1, '1998', 'MAN 2 Samarinda ditetapkan sebagai Madrasah Aliyah Negeri Model melalui proyek pengembangan mutu madrasah (DMAP), berdasarkan SK Dirjen Binbagais Depag No. E.IV/PP.06.6/Kep/17.A/98 tertanggal 20 Februari 1998.', '2025-07-04 07:18:08', '2025-07-04 07:18:08'),
(7, 1, '2000', 'MAN Model Samarinda mulai mengembangkan berbagai program unggulan seperti kelas riset, kelas unggulan sains, serta kerja sama dengan berbagai lembaga nasional dan internasional.', '2025-07-04 07:20:26', '2025-07-04 07:20:26'),
(8, 1, '2010', 'Transformasi digital mulai diterapkan dengan pembangunan laboratorium komputer, sistem ujian berbasis komputer (CBT), dan integrasi teknologi dalam pembelajaran.', '2025-07-04 07:20:56', '2025-07-04 07:20:56'),
(9, 1, '2020', 'MAN 2 Samarinda terus bertransformasi menjadi madrasah modern berbasis digital dan riset, dengan semangat unggul dalam akademik, karakter, dan prestasi. Sebagai madrasah model, kami tidak hanya mendidik, tapi juga menginspirasi masa depan bangsa', '2025-07-04 07:21:47', '2025-07-04 07:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MAN 2 SAMARINDA', 'man2samarinda@kemenag.go.id', NULL, '$2y$12$Hdgft5zQztXkGLNxA5j70uHjaQEK0K5I0E76FhDntneFLbB62blrm', NULL, '2025-07-01 18:00:08', '2025-07-01 18:00:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berandas`
--
ALTER TABLE `berandas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_stats`
--
ALTER TABLE `facility_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_heroes`
--
ALTER TABLE `gallery_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timelines_profil_id_foreign` (`profile_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berandas`
--
ALTER TABLE `berandas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `facility_stats`
--
ALTER TABLE `facility_stats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_heroes`
--
ALTER TABLE `gallery_heroes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `timelines`
--
ALTER TABLE `timelines`
  ADD CONSTRAINT `timelines_profil_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
