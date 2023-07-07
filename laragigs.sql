-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 06:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laragigs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `logo`, `tag`, `company`, `location`, `website`, `description`, `created_at`, `updated_at`, `email`) VALUES
(11, 2, 'Junior Developer', 'logos/efZ8M56nzGWlgwnNf7HWQC0jP8TF23UsJv9R5YQT.png', 'Pyhon, Vue, Django', 'Homeboyz Radio', 'Kisumu', 'www.homeboyz.co.ke', 'We\'re looking for a junior full-stack developer. Starting salary @25k', '2023-07-07 07:34:05', '2023-07-07 11:45:31', 'homeboyzradio@gmail.com'),
(12, 2, 'Senior Data Analyst', 'logos/cXk6QFnqUPV0IH3a3Rylra6AFbM01449C547XLEY.png', 'Python, Ruby, Linux, Laravel', 'KCB', 'Mombasa, Bamburi', 'www.kcb.co.ke', 'Currently hiring Data Analyst. Work experience should be 5+ years', '2023-07-07 11:53:45', '2023-07-07 11:53:45', 'kcb@gmail.com'),
(13, 2, 'Full Stack Developer', 'logos/mbkHUtJg5VjzOIMKbF5rvtCcOvcIQQm8UVMIizkx.png', 'MySql, Laravel, Java, JavaScript', 'Google', 'Remote', 'www.google.co.ke', 'Hiring a full stack web developer. Laravel framework knowledge is an added advantage. Apply now!!', '2023-07-07 11:56:48', '2023-07-07 11:56:48', 'google@gmail.com'),
(14, 2, 'Software Engineer', 'logos/CiluWYr2Bu09A0Xsy8ftSrovxVuShH7ipY88fEv6.png', 'Python, Django, Vue', 'Nation Media', 'Nairobi, CBD', 'www.nationmedia.co.ke', 'Hiring now. Apply before June 24th 2023', '2023-07-07 11:58:48', '2023-07-07 11:58:48', 'nationmedia@gmail.com'),
(15, 2, 'Senior Laravel Developer', 'logos/LWt5kEBiebq3CsG8CeuVrhZm57kiHDaQ8bN9uKmV.png', 'Laravel, PHP, Javascript', 'Safaricom', 'Nakuru', 'www.safaricom.co.ke', 'Hiring Now!!', '2023-07-07 12:00:38', '2023-07-07 12:01:13', 'safaricom@gamail.com'),
(16, 2, 'IT intern', 'logos/ONld1TUQzgLeAq80IaMpLMReao3Ux8Q6GBSsOnIj.png', 'MariaDb, MySql, CSS', 'KenGen', 'Mombasa, Bamburi', 'www.kengen.co.ke', 'Apply before June 17th 2023', '2023-07-07 12:02:58', '2023-07-07 12:02:58', 'kengen@gmail.com'),
(17, 2, 'Senior Data Scientist', 'logos/gr0dU3rHkDGja86VQD60t3Ib3H8YluaOckeKIxJp.png', 'Python, Ruby, Linux', 'Airtel', 'Kisumu', 'www.airtel.co.ke', 'Knowledge in python is an added advantage. Apply ASAP', '2023-07-07 12:05:36', '2023-07-07 12:05:36', 'airtel@gmail.com'),
(18, 3, 'IT intern', 'logos/PIiMYzojQkDucx2hKbhbmQthmPfOx4yB2pi02n7g.jpg', 'Java, JavaScript, PHP, Laravel', 'Co-op Bank', 'Eldoret', 'www.coopbank.co.ke', 'Hiring Now', '2023-07-07 12:24:48', '2023-07-07 12:24:48', 'coopbank@gmail.com'),
(19, 3, 'Web Developer', 'logos/wWfqTVy3UonqaGUYdFuZAwOD3tbCEkP3FiYXDYU9.png', 'Python, Ruby, Linux', 'Cititizen', 'Kisumu', 'www.citizen.co.ke', 'Hiring now. Apply before 2nd August 2023', '2023-07-07 12:27:26', '2023-07-07 12:27:26', 'citizen@gmail.com'),
(20, 3, 'Software Engineer Intern', 'logos/nxrcHQoRccRxpYbjVLXuoTND9M93u3fP1WEzfeNi.png', 'MySql, Laravel, Postgress', 'DTB', 'Remote', 'www.dtb.co.ke', 'Apply Now!!', '2023-07-07 12:29:38', '2023-07-07 12:29:38', 'dtb@gmail.com'),
(21, 3, 'Attachement', 'logos/QgvshfbBDhdr4dHXX6nKitTgc6yZskjKWHa3yrx9.png', 'MariaDb, MySql, CSS', 'Faiba', 'Nairobi, CBD', 'www.faiba.co.ke', 'We\'re advertising for an attachment position at our Nairobi, CBD offices. Apply ASAP', '2023-07-07 12:32:05', '2023-07-07 12:32:05', 'faiba@gmail.com'),
(23, 3, 'Junior Developer', 'logos/7Ba5udDxS5qFpkpCEUf85RsxYpGSpxavP5B7Oy1R.png', 'Angular, Laravel, Python, PHP', 'Kenya Power', 'Limuru', 'www.kplc.co.ke', 'Hiring Now', '2023-07-07 12:36:50', '2023-07-07 12:36:50', 'kplc@gmail.com'),
(24, 3, 'Senior Laravel Developer', 'logos/9o6J0I8P1qlEtfmc3inPk9rMa64P3PuPVxbzEBQ7.jpg', 'Laravel, PHP, Javascript', 'Leemtech Solutions', 'Remote', 'www.leemtech.co.ke', 'Hiring now. Apply before 5th August 2023', '2023-07-07 12:42:18', '2023-07-07 12:42:18', 'leemtech@gmail.com'),
(25, 5, 'Software Developer', 'logos/Ym4lVanIysQG3Fh6Dk9nTSeGF1cJpWTxy4RYNJfe.png', 'Python, Ruby, Linux', 'Naivas', 'Murang\'a', 'www.naivas.com', 'Knowledge in python is an added advantage. Apply now!!!', '2023-07-07 12:48:56', '2023-07-07 12:48:56', 'naivas@gmail.com'),
(26, 5, 'IT intern', 'logos/He7iXpsSkC9wVkmyZCSVAcJDCn67hxBRdxXUQSL5.jpg', 'MariaDb, Postgress, Next.js, Angular', 'Startimes', 'Molo', 'www.startimes.co.ke', 'Apply now', '2023-07-07 12:50:54', '2023-07-07 12:50:54', 'startimes@gmail.com'),
(27, 5, 'Senior Django Developer', 'logos/8KFgAuOSxPqPeBduIJvQpOlPGXKRSF05OdHnpPfR.png', 'Python, Linux, Next.js, Vue', 'Telkom', 'Remote', 'www.telkom.co.ke', 'Apply ASAP', '2023-07-07 12:56:00', '2023-07-07 12:56:00', 'telkom@gmail.com'),
(28, 6, 'Next.js Developer', 'logos/FPOzDVxeqzELhyvvF97TnQrpkWXN9IoElk1m0Gi7.png', 'Next.js, Angular, React', 'Unicef', 'Remote', 'www.unicef.co.ke', 'Apply now', '2023-07-07 13:00:52', '2023-07-07 13:00:52', 'unicef@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2023_07_01_173049_add_address_to_users_table', 2),
(7, '2023_07_01_190052_drop_address_from_users_table', 4),
(30, '2014_10_12_000000_create_users_table', 5),
(31, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(32, '2019_08_19_000000_create_failed_jobs_table', 5),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(34, '2023_07_01_182836_create_jobs_table', 5),
(35, '2023_07_02_053410_add_email_to_jobs_table', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'George', 'georgeomollo17@gmail.com', NULL, '$2y$10$AzIpjoDZqEtCdzBsVOqIm.eXt4C.ZlwsNA7aJDd8Qc9jPAXvEIgji', NULL, '2023-07-07 07:24:36', '2023-07-07 07:24:36'),
(3, 'Pinky', 'pinky@gmail.com', NULL, '$2y$10$28v5pzNP/fSGkeQsUOizW.BA5GYiViZAZ.F5FOe6/0cvYi1krXDaS', NULL, '2023-07-07 12:07:45', '2023-07-07 12:07:45'),
(4, 'Fred', 'fred@gmail.com', NULL, '$2y$10$JcFnDQE01tLjQqp5t.U2cez5lunqBLNqB70vMavq2KJ.TuTFa7/V2', NULL, '2023-07-07 12:43:58', '2023-07-07 12:43:58'),
(5, 'Tedd', 'tedd@gmail.com', NULL, '$2y$10$9ThI81G6aF7aCc.oCe1mKOCKJF0bgQeBMVFiiaF/d8xQBphL3B9e2', NULL, '2023-07-07 12:46:43', '2023-07-07 12:46:43'),
(6, 'Jane', 'jane@gmail.com', NULL, '$2y$10$INjX86hnq3Hv0C9sNK11zu1ybN1a8bnzmcP68riv7h0Gs8Hsf0hxG', NULL, '2023-07-07 12:58:47', '2023-07-07 12:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobs_email_unique` (`email`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
