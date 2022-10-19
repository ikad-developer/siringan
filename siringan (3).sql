-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2022 pada 13.49
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siringan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watt` int(11) DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `upah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama`, `watt`, `jenis`, `satuan`, `harga`, `upah`, `created_at`, `updated_at`) VALUES
(1, 'Lampu Hemat Energi Philips', 8, 'Lampu', 'buah', 45532, 60000, '2022-05-18 03:42:39', '2022-05-18 03:42:39'),
(2, 'NYA 2x5 mm', NULL, 'NYA', 'm', 4232, NULL, '2022-05-18 03:50:30', '2022-05-18 03:50:30'),
(3, 'NYM 2x1.5 mm', NULL, 'NYMK', 'm', 8593, NULL, '2022-05-18 03:51:12', '2022-05-18 03:51:12'),
(4, 'NYM 2x2.5 MM', NULL, 'NYMB', 'm', 12836, NULL, '2022-05-18 03:51:53', '2022-05-18 03:51:53'),
(5, 'Pipa Paralon 5/8 inch', NULL, 'PIP', 'm', 2885, NULL, '2022-05-18 03:55:12', '2022-05-18 03:55:12'),
(6, 'Saklar Panasonic Engkel', NULL, 'Saklar', 'buah', 16674, 50000, '2022-05-18 03:56:12', '2022-05-18 03:56:12'),
(7, 'Peteng Deksta', NULL, 'PET', 'buah', 8745, NULL, '2022-05-18 03:57:01', '2022-05-18 03:57:01'),
(11, 'Stop Kontak Broko', NULL, 'SKB', 'buah', 18598, 50000, '2022-05-18 04:08:16', '2022-05-18 04:08:16'),
(12, 'MCB 1P 2A', NULL, 'MCB450', 'Buah', 75800, NULL, '2022-06-17 13:21:13', '2022-06-17 13:22:10'),
(13, 'MCB 1P 4A', NULL, 'MCB900', 'Buah', 75800, NULL, '2022-06-17 13:22:49', '2022-06-17 13:22:49'),
(14, 'MCB 1P 6A', NULL, 'MCB1300', 'Buah', 65413, NULL, '2022-06-17 13:23:30', '2022-06-17 13:23:30'),
(15, 'MCB 1P 10A', NULL, 'MCB2200', 'Buah', 65413, NULL, '2022-06-17 13:24:14', '2022-06-17 13:25:51'),
(16, 'MCB 1P 16A', NULL, 'MCB3500', 'Buah', 65413, NULL, '2022-06-17 13:25:27', '2022-06-17 13:25:27'),
(18, 'MCB 1P 25A', NULL, 'MCB5500', 'Buah', 65413, NULL, '2022-06-17 13:26:38', '2022-06-17 13:26:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2021_10_24_044114_create_barangs_table', 1),
(20, '2021_11_01_080716_create_ruangans_table', 1),
(21, '2021_11_20_042513_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-05-21 07:52:30', '2022-05-21 07:52:30'),
(2, 'user', 'web', '2022-05-21 07:52:31', '2022-05-21 07:52:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_bangunan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_bangunan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daya_rumah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `user_id`, `data`, `nama_bangunan`, `jenis_bangunan`, `daya_rumah`, `created_at`, `updated_at`) VALUES
(14, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"4\",\"panjang\":\"4\",\"cheklist\":true},{\"ruangan\":\"Kamar Mandi\",\"lux\":\"250\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Kamar\",\"lux\":\"120\",\"tinggi\":\"4\",\"lebar\":\"4\",\"panjang\":\"4\",\"cheklist\":true}]', 'E', 'Rumah Tinggal', 'MCB900', '2022-06-17 13:28:10', '2022-06-17 13:28:10'),
(15, 1, '[{\"ruangan\":\"Teras\",\"lux\":\"60\",\"jmlsk\":\"1\",\"tinggi\":\"4\",\"lebar\":\"1\",\"panjang\":\"2\",\"cheklist\":true},{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"1\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Ruang Keluarga\",\"lux\":\"120\",\"jmlsk\":\"1\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Kamar\",\"lux\":\"120\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true}]', 'rr', 'Rumah Tinggal', 'MCB450', '2022-06-17 13:32:53', '2022-06-17 13:32:53'),
(16, 1, '[{\"ruangan\":\"Teras\",\"lux\":\"60\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"2\",\"panjang\":\"1\",\"cheklist\":true},{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Ruang Keluarga\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Kamar\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Dapur\",\"lux\":\"250\",\"tinggi\":\"4\",\"lebar\":\"2\",\"panjang\":\"2\",\"cheklist\":true},{\"ruangan\":\"Kamar Mandi\",\"lux\":\"250\",\"tinggi\":\"4\",\"lebar\":\"1\",\"panjang\":\"2\",\"cheklist\":true}]', 'ERRE', 'Rumah Tinggal', 'MCB1300', '2022-06-17 13:36:33', '2022-06-17 13:36:33'),
(17, 1, '[{\"ruangan\":\"Teras\",\"lux\":\"60\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"1.7\",\"cheklist\":true},{\"ruangan\":\"Kamar\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3.5\",\"cheklist\":true},{\"ruangan\":\"Dapur\",\"lux\":\"250\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true}]', 'r', 'Rumah Tinggal', 'MCB1300', '2022-06-17 13:51:47', '2022-06-17 13:51:47'),
(18, 1, '[{\"ruangan\":\"Teras\",\"lux\":\"60\",\"jmlsk\":\"1\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true},{\"ruangan\":\"Kamar\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"2\",\"cheklist\":true},{\"ruangan\":\"Ruang Keluarga\",\"lux\":\"120\",\"tinggi\":\"3\",\"lebar\":\"2\",\"panjang\":\"4\",\"cheklist\":true}]', 'ee', 'Rumah Tinggal', 'MCB900', '2022-06-19 17:05:16', '2022-06-19 17:05:16'),
(20, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"6\",\"tinggi\":\"3.5\",\"lebar\":\"20\",\"panjang\":\"10\",\"cheklist\":true}]', 'ka', 'Rumah Tinggal', 'MCB2200', '2022-06-22 16:01:07', '2022-06-22 16:01:07'),
(21, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"4\",\"tinggi\":\"4\",\"lebar\":\"4\",\"panjang\":\"8\",\"cheklist\":true}]', 'kaa', 'Rumah Tinggal', 'MCB900', '2022-06-22 16:06:29', '2022-06-22 16:06:29'),
(22, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"2\",\"tinggi\":\"4\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true}]', 'E', 'Rumah Tinggal', 'MCB900', '2022-06-22 23:23:28', '2022-06-22 23:23:28'),
(23, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"jmlsk\":\"1\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"4\",\"cheklist\":true}]', 'h', 'Rumah Tinggal', 'MCB450', '2022-06-23 01:12:49', '2022-06-23 01:12:49'),
(24, 1, '[{\"ruangan\":\"Ruang Tamu\",\"lux\":\"120\",\"panjang\":\"4\",\"lebar\":\"3\",\"tinggi\":\"3\",\"jmlsk\":\"1\"}]', 'm', 'Rumah Tinggal', 'MCB450', '2022-06-23 01:43:20', '2022-07-04 21:38:41'),
(25, 3, '[{\"ruangan\":\"Ruang Keluarga\",\"lux\":\"120\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"3\",\"jmlsk\":\"3\",\"cheklist\":true},{\"ruangan\":\"Teras\",\"lux\":\"60\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"3\",\"jmlsk\":\"1\",\"cheklist\":true},{\"ruangan\":\"Dapur\",\"lux\":\"250\",\"tinggi\":\"3\",\"lebar\":\"3\",\"panjang\":\"3\",\"cheklist\":true}]', 'e', 'Rumah Tinggal', 'MCB900', '2022-07-03 08:00:14', '2022-07-03 08:00:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$n.DjHdz8rXCfcERyM8Nv6epccYK4cpT3hXwDAV9hDze41GFZf2D3O', NULL, '2022-05-21 07:52:32', '2022-05-21 07:52:32'),
(2, 'Erik Rahim', 'erik@gmail.com', NULL, '$2y$10$Wkk/gEOsOSz91S7rawtF3.n7Kph3P1hA9rrX2vnym6TYXWBSE.vPu', NULL, '2022-05-21 07:52:33', '2022-05-21 07:52:33'),
(3, 'erik', 'erik11@gmail.com', NULL, '$2y$10$kAOboLghTqIFJJdD3jU.M.ID2ginsT9YKP..io1de7cmR2hLh0DoG', NULL, '2022-07-03 07:47:17', '2022-07-03 07:47:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
