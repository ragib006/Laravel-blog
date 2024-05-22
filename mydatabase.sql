-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 08:29 AM
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
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_20_112730_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_author` varchar(225) NOT NULL,
  `post_date` varchar(225) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_image`, `post_description`, `post_author`, `post_date`, `post_status`, `created_at`, `updated_at`) VALUES
(4, 'Dubai', '1716223404.png', 'ghf fhgefhr fhw rgf', 'Ragib Hasan', '2024-05-20', '1', '2024-05-20 23:43:24', '2024-05-21 23:07:04'),
(6, 'Babar Ali now scales Mount Lhotse', '1716282384.png', 'Babar’s organisation Vertical Dreamers on its Facebook page wrote, “An unprecedented and adventurous chapter has been written in the history of mountaineering in Bangladesh. Babar Ali is the man who wrote this history…This is the first Lhotse summit by any son of Bangladesh’s soil and this is the first instance of summiting two 8000ers (the mountains above 8000 meters) in a single expedition…Babar has started descending. The main celebration would start once he reaches base camp.”Babar Ali left Bangladesh for Nepal on 1 April, to embark on his Everest journey. After taking necessary preparations, he flew from Kathmandu to Lukla Airport on 4 April. From there, he began his trek to Everest base camp and reached there on 10 April.\r\n\r\nBabar undertook several climbs to acclimatize. He traveled from base camp to camp-2 on 26 April and wrapped up the acclimatisation phase. He then waited for favorable weather conditions.\r\n\r\nOn 14 May, Babar started his journey from the base camp and reached camp-2 within the day. After spending two nights there, he moved to camp-3 on 18 May and reached camp-4 on 19 May.\r\n\r\nThe upper part of camp-4, situated at 26,000 feet, is known as the \'death zone\'. Babar resumed his climb at midnight on 18 May and reached the peak of Mount Everest at 29,032 feet by the first light of 19 May.', 'Ayon', '2024-05-22', '1', '2024-05-21 16:06:24', '2024-05-22 11:50:21'),
(7, 'Hyderabad down Punjab to keep top-two hopes alive', '1716282511.png', 'Indian batsman Abhishek Sharma smashed 66 as Sunrisers Hyderabad kept their hopes alive for a top-two finish in the IPL league stage with a four-wicket win over Punjab Kings on Sunday.\r\n\r\nChasing 215 for victory, Hyderabad, who are already among the top four teams to have made the play-offs, reached the target with five balls to spare at their home.\r\n\r\nThe former champions, led by Pat Cummins, have moved to 17 points from 14 matches and will need Rajasthan Royals to lose the second match of the day against toppers Kolkata Knight Riders or a no result in the game to stay in top two.\r\n\r\n\"We\'ve had a lot of fun and played some really great cricket,\" said Cummins. \"It\'s satisfying and exciting (to be in the play-offs).\"\r\n\r\nThe first- and second-placed teams have the advantage of two chances to qualify for the final on 26 May in Chennai.\r\n\r\nLeft-handed Abhishek, who has been a breakout young Indian star in this edition with 467 runs including three half-centuries, took charge after Travis Head departed for a first-ball duck.\r\n\r\n\"He (Abhishek) is amazing. I wouldn\'t want to bowl to him,\" Cummins said of his team\'s player of the match. \"It\'s scary as he plays with freedom, not only against pacers but also against spinners.\"\r\n\r\nHe reached his 50 in 21 balls and hammered five fours and six sixes in his 28-ball blitz to set up the chase.\r\n\r\nAbhishek put on an attacking stand of 72 with Rahul Tripathi, who smashed 33, before Nitish Kumar Reddy and Heinrich Klaasen steadied the innings and hit back.', 'Ayon', '2024-05-22', '1', '2024-05-21 16:08:31', '2024-05-22 12:37:40'),
(8, 'US says Iran sought help over president’s helicopter crash', '1716290586.png', 'The United States said Monday that arch-enemy Iran sought assistance over a helicopter crash that killed president Ebrahim Raisi, as Washington meanwhile offered condolences despite saying he had \"blood on his hands.\"\r\n\r\nThe State Department said Iran, which has had no diplomatic relations with Washington since the aftermath of the 1979 Islamic revolution, reached out afer Raisi\'s aging chopper crashed in foggy weather Sunday.\r\n\r\n\"We were asked by the Iranian government for assistance,\" State Department spokesman Matthew Miller told reporters.\r\n\r\n\"We said that we would be willing to assist -- something that we would do with respect to any government in this situation,\" he said.\r\n\r\n\"Ultimately, largely for logistical reasons, we were unable to provide that assistance.\" He declined to go into detail or describe how the two countries communicated. \r\n\r\nBut he indicated Iran was seeking help in the immediate aftermath to find the helicopter of Raisi, who died along with his foreign minister, Hossein Amir-Abdollahian, and seven others.\r\n\r\nThe crash came after the United States and Iran reportedly held their latest quiet talks in Oman aimed at increasing stability following open clashes between Iran and Israel.\r\n\r\nThe State Department in a statement offered \"official condolences\" over the deaths.\r\n\r\n\"As Iran selects a new president, we reaffirm our support for the Iranian people and their struggle for human rights and fundamental freedoms,\" it said.\r\n\r\nPresident Joe Biden\'s administration described condolences as standard and not showing support for Raisi, who as a judge presided over mass executions of politicial prisoners and under whose presidency authorities have cracked down on mass protests led by women.', 'Ragib Hasan', '2024-05-22', '1', '2024-05-21 18:23:06', '2024-05-22 12:36:38'),
(9, 'Migrant rescuers defiant in face of Italy crackdown', '1716293870.png', 'Saving lives is more difficult than ever, but rescuers are adamant that the Italian government\'s crackdown on charity ships will not stop them from helping migrants who run into trouble crossing the Mediterranean.\r\n\r\nRome has brought in a slew of rules to curb the activities of non-governmental (NGO) ships accused of being a pull factor for migrants -- from limiting the number of rescues to assigning them distant ports.\r\n\r\n\"All these regulations, laws, are just another attempt to complicate more and criminalise the work done by the NGOs,\" said Salvador, 37, an Argentinian rescuer onboard the Ocean Viking.\r\n\r\nThe red and white ship, formerly a supply vessel for oil rigs that is now run as a rescue vessel by SOS Mediterranee, left the Italian port of Syracuse in southern Sicily on Sunday for its latest mission.\r\n\r\nSince coming to power in 2022, far-right Prime Minister Giorgia Meloni has vowed to dramatically slash the number of people crossing by boat from the coast of North Africa.\r\n\r\nUnder a law adopted at the start of 2023, charity ships are obliged to travel \"without delay\" to port as soon as their first rescue is complete -- even if they become aware of other migrants in difficulty.\r\n\r\n\"You can go to a rescue, you take 10 people, and then you have to travel four or five days to disembark them,\" despite the Ocean Viking being able to carry \"at least 400 people\" at a time, Salvador told AFP.\r\n\'Frustrating\'\r\n\r\nIn recent months, the Italian coastguard has assigned increasingly distant ports to ships, sometimes in difficult weather conditions, to the detriment of vulnerable migrants\' physical and mental health.\r\n\r\nGoing to far-off ports \"increases the amount of fuel, and also the supplies\" needed for those rescued, which \"increases operational costs and also takes ships away\" from where they are needed, Salvador said.', 'Ragib Hasan', '2024-05-22', '1', '2024-05-21 19:17:50', '2024-05-22 12:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1xe7NVlQ5NDqT3Pc98VfyO99oU7gzCgTpKmALXDC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZHNVYUh4d0E1Mk52MHU0NjI0VlJjMWk0NEJ1SGJ5dVlFQ1VqbG84dSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716356468),
('TkCL7hZWCfRvFHCAPdZNSJ0vMHDPHueHR04rdayC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3YxZFVXVGxMUWlZNDRhYUJqVFdDNllNMUlSbU12V0NsUGxkV25xSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716357442),
('w1d98NUmpvY2yMhfzSb4dFrZVpgCO0uSQ913fZyF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEZyblVMYjZHcUlOaktBV3VYWGh1c2VFbG5EMlZiYVlraFNUNFpZeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716356469);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ragib Hasan', 'ragibhasan006@gmail.com', NULL, '$2y$12$4Wm7pDg/8vQ8GIEhsLhCvO58ZtY2xrIx8H9ZBLtyo3QLLzCxpiCnu', NULL, '2024-05-20 14:35:34', '2024-05-20 14:35:34'),
(2, 'Ayon', 'ayon006@gmail.com', NULL, '$2y$12$.bZ/35GVIXAdd3ZvIQAunenA.Eq4WZwDHouwqmFe6w09ythfduEni', NULL, '2024-05-21 16:02:04', '2024-05-21 16:02:04');

--
-- Indexes for dumped tables
--

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
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
