-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2022 pada 04.53
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'assets/gallery/nvAYdiTwv1lkH3QXcruHOd9S17TgEwqnkH7OrzZ5.jpg', NULL, '2022-07-20 20:50:18', '2022-07-21 00:02:11'),
(3, 2, 'assets/gallery/vg6toC5b4UP9MALaz7xehIhlk0B99z9zUor1OwR3.jpg', NULL, '2022-07-20 20:51:15', '2022-07-21 00:04:48'),
(4, 1, 'assets/gallery/i02MAIclg7DZOKJfitTqCAdvjjIUJt0JY6KlZ8i9.png', '2022-07-20 21:03:26', '2022-07-20 20:52:07', '2022-07-20 21:03:26'),
(5, 3, 'assets/gallery/uyoqNk9Mpsir98SPOrONYsGgoVOhzew1ocZuky8s.jpg', NULL, '2022-07-21 00:07:03', '2022-07-21 00:07:03');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_19_140725_create_travel_packages_table', 1),
(6, '2022_07_19_141918_create_galleries_table', 2),
(7, '2022_07_19_142356_create_transactions_table', 3),
(8, '2022_07_19_142847_create_transaction_details_table', 4),
(9, '2022_07_20_025433_add_roles_field_to_users_table', 5),
(10, '2022_07_20_040305_add_username_field_to_users_table', 6);

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
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'PENDING', NULL, '2022-07-21 04:08:00', '2022-07-20 23:51:11'),
(6, 1, 3, 0, 100, 'IN_CART', NULL, '2022-07-21 01:49:21', '2022-07-21 01:49:21'),
(7, 1, 3, 0, 100, 'PENDING', NULL, '2022-07-21 06:38:25', '2022-07-21 06:39:13'),
(8, 1, 3, 0, 100, 'IN_CART', NULL, '2022-07-21 06:42:43', '2022-07-21 06:42:43'),
(9, 2, 3, 0, 100, 'IN_CART', NULL, '2022-07-21 06:44:50', '2022-07-21 06:44:50'),
(10, 2, 3, 0, 100, 'IN_CART', NULL, '2022-07-21 06:45:15', '2022-07-21 06:45:15'),
(11, 3, 3, 0, 10, 'IN_CART', NULL, '2022-07-21 06:55:12', '2022-07-21 07:00:31'),
(12, 3, 3, 190, 210, 'PENDING', NULL, '2022-07-21 07:04:59', '2022-07-21 07:06:15'),
(13, 2, 4, 570, 1070, 'PENDING', NULL, '2022-07-21 07:09:53', '2022-07-21 07:23:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'fazeelmuhammad', 'ID', 1, '2022-07-21', NULL, '2022-07-21 04:09:03', '2022-07-21 04:09:03'),
(2, 1, 'fazeell', 'ID', 0, '2022-07-22', NULL, '2022-07-21 04:10:42', '2022-07-21 04:10:42'),
(3, 2, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 01:35:27', '2022-07-21 01:35:27'),
(4, 3, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 01:38:00', '2022-07-21 01:38:00'),
(5, 4, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 01:38:05', '2022-07-21 01:38:05'),
(6, 5, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 01:44:06', '2022-07-21 01:44:06'),
(7, 6, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 01:49:21', '2022-07-21 01:49:21'),
(8, 7, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 06:38:25', '2022-07-21 06:38:25'),
(9, 8, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 06:42:43', '2022-07-21 06:42:43'),
(10, 9, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 06:44:50', '2022-07-21 06:44:50'),
(11, 10, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 06:45:15', '2022-07-21 06:45:15'),
(12, 11, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 06:55:12', '2022-07-21 06:55:12'),
(13, 11, 'Galih Pratama', 'CN', 1, '2022-08-06', '2022-07-21 06:59:29', '2022-07-21 06:57:51', '2022-07-21 06:59:29'),
(14, 11, 'Galih Pratama', 'CN', 1, '2022-08-05', '2022-07-21 07:00:31', '2022-07-21 07:00:26', '2022-07-21 07:00:31'),
(15, 12, 'fazeell', 'ID', 0, '2027-07-21', NULL, '2022-07-21 07:04:59', '2022-07-21 07:04:59'),
(16, 12, 'Galih Pratama', 'CN', 1, '2022-08-05', NULL, '2022-07-21 07:05:09', '2022-07-21 07:05:09'),
(17, 13, 'Galih Pratama', 'ID', 0, '2027-07-21', NULL, '2022-07-21 07:09:53', '2022-07-21 07:09:53'),
(18, 13, 'fazeell', 'CN', 1, '2022-07-26', NULL, '2022-07-21 07:21:05', '2022-07-21 07:21:05'),
(19, 13, 'fazeell', 'CN', 1, '2022-08-06', NULL, '2022-07-21 07:21:25', '2022-07-21 07:21:25'),
(20, 13, 'fazeell', 'CN', 1, '2022-08-06', NULL, '2022-07-21 07:21:45', '2022-07-21 07:21:45'),
(21, 13, 'fazeell', 'CN', 0, '2022-07-09', NULL, '2022-07-21 07:22:25', '2022-07-21 07:22:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ini Judul Santuy', 'ini-judul-santuy', 'Padang', 'SUMATERA BARAT, PADANG', 'Liburan', 'Indonesia', 'Rendang', '2022-07-30', '3D', 'Open Trip', 100, NULL, NULL, '2022-07-20 19:54:01'),
(2, 'Liburan Santai', 'liburan-santai', 'Jakarta', 'Liburan Santai', 'Joget Joget', 'Inggris', 'Ayam', '2022-07-07', '2D', 'Open Trip', 100, NULL, '2022-07-20 19:40:38', '2022-07-20 20:00:13'),
(3, 'Happier', 'happier', 'Bali', 'Always Happy', '1', 'Indonesia', 'Ikan', '2022-07-23', '5D', 'Trip', 10, NULL, '2022-07-21 00:06:39', '2022-07-21 00:06:39');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Fazeel', 'fazeel@gmail.com', NULL, '$2y$10$D8mpSTyy1ExzaBto90CGp.iIKkLUYTZfA4pV/arIUUz7rn9.Kczm.', NULL, NULL, NULL, 'ADMIN', 'fazeelmuhammad'),
(3, 'fazeelllll', 'fazeelll@gmail.com', '2022-07-19 20:49:21', '$2y$10$xP3zRuHg.qud4oKYb7snLO/oL2M0ljt6rB7uYOg1HGpa1LcNe0FPS', NULL, '2022-07-19 20:48:01', '2022-07-19 20:49:21', 'USER', 'fazeell'),
(4, 'Galih', 'galih@gmail.com', '2022-07-21 07:09:44', '$2y$10$f2y8bwSSXIj3Nk2f0uv9c.mOXiWtV0TMgGjhWk7z0pnv5Ty/aQySe', NULL, '2022-07-19 21:19:53', '2022-07-21 07:09:44', 'USER', 'Galih Pratama');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
