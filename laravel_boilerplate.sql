-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 08:07 AM
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
-- Database: `laravel_boilerplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_shop_tokens`
--

INSERT INTO `protection_shop_tokens` (`id`, `user_id`, `number`, `expires`, `success_url`, `cancel_url`, `success_url_title`, `cancel_url_title`, `shop_url`) VALUES
(1, 3, 'd785d292-7500-42d5-8496-ef04901553ea', '2023-09-26 17:44:53', 'http://localhost:8080/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8080%2Fmembership', 'http://localhost:8080/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=d785d292-7500-42d5-8496-ef04901553ea'),
(3, 13, '16bf4558-546a-4a10-88df-9a2623b37966', '2023-09-26 23:02:13', 'http://localhost:8080/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8080%2Fmembership', 'http://localhost:8080/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=16bf4558-546a-4a10-88df-9a2623b37966'),
(4, 14, '91b27dca-9dca-486b-96a6-57e970bdeab3', '2023-09-26 23:08:27', 'http://localhost:8080/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8080%2Fmembership', 'http://localhost:8080/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=91b27dca-9dca-486b-96a6-57e970bdeab3'),
(5, 15, 'c2b852e3-60e3-4ef3-a8a2-f664faed09a7', '2023-09-26 23:34:30', 'http://localhost:8080/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8080%2Fmembership', 'http://localhost:8080/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=c2b852e3-60e3-4ef3-a8a2-f664faed09a7');

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_validations`
--

INSERT INTO `protection_validations` (`id`, `user_id`, `ttl`, `validation_result`) VALUES
(1, 3, '2023-09-26 17:24:52', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T00:14:52.936Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(2, 7, '2023-09-26 22:13:24', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T04:44:55.796Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(4, 13, '2023-09-26 22:42:13', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T05:32:13.216Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(5, 14, '2023-09-26 22:48:26', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T05:38:26.944Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(6, 15, '2023-09-26 23:14:29', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T06:04:29.724Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `user_id`, `provider`, `provider_id`, `token`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 4, 'google', '110278501332949913155', 'ya29.a0AfB_byDLeVoM64XansFjm2XAZsKohoHKewXziIzjFZ9QU4RqPMOdFP_bOYutYm_ieIhM2vftPbVKaoWrO2wRr_uXOV7g7UacxZOKyL-6ONZOx1xlcgR1IpEqTyEZ0Mj9yvUoh7ZJ809i_PG63Yz6yLj1_hL7fmOLg8rdKBUuqa94_AaCgYKAaQSARESFQGOcNnCpEnExIqMgJlHFg1MK_DcOA0181', 'https://lh3.googleusercontent.com/a/ACg8ocJIMV5sSiEHCVxf7MrVt1kjp5oWwYMksvrzDWwK_L3H=s96-c', '2023-09-26 17:14:01', '2023-09-26 17:14:01'),
(2, 3, 'google', '113285746433097850125', 'ya29.a0AfB_byAu49JMxwgRMrWFfKS47MesJqdUaZjOV5b9loB_YGr4KbKCLf7orpfpnUdAM71pgpA0C5QKzPqm08eVBAvBnxgK9eeLGRiRjNquI0OXCumtFvCL70vnuwnj1uQaraBvhi5rTRvOSr9TOcI8V1hMYosawIbA405MkrooeAlPxwaCgYKAe4SARISFQGOcNnCCThulYco7Afx1UtWvrHjOw0181', 'https://lh3.googleusercontent.com/a/ACg8ocJIzin1JkQ9Y6U0VCjBm6BTDx-nMdM55atFDewCOsSd=s96-c', '2023-09-26 17:14:46', '2023-09-26 17:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`, `google2fa_secret`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$rkGvkwDa8rb64f8sa2/iueTjMNU54w5dHEvYg6N.8jHmIZzrlbebW', 1, '9ae4a0b5-e62d-4e31-8aef-cae54811ddef', 1, NULL, NULL, '2023-09-26 16:37:42', '2023-09-26 16:44:10', NULL, '2023-09-26 23:44:10', ''),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$NmIsu1Ppfbd2AScZ9XhMFuJNDYJ3TKc7HDuTETYhNDr7WuYFR6N0O', 1, 'cca7f84b-caa1-4609-a32a-0456a548e076', 1, NULL, NULL, '2023-09-26 16:37:42', '2023-09-26 16:37:42', NULL, NULL, ''),
(3, 'Ahmad Zikry', 'zikryahmad87@gmail.com', '$2y$10$bRyTsntPLU6CuxNBLjFnwuNDKchz879izGyuR0ddMoVSNw6T2UASW', 1, '93e155ec-df1f-44f8-95e9-063c87d8fca1', 1, NULL, NULL, '2023-09-26 17:01:19', '2023-09-26 17:01:19', NULL, NULL, ''),
(4, 'Ahmad Zikry Salam', 'khadavisibuea@gmail.com', '$2y$10$pvs38qZoZthxqcUS6v7JuugKj8OVhyfdhGPFOZ5Bxqpg3kSwNMiw6', 1, 'd944ca87-6a4d-45f2-a66f-bfd0a03a10e8', 1, NULL, NULL, '2023-09-26 17:05:30', '2023-09-26 17:05:30', NULL, NULL, ''),
(5, 'babysukuna', 'bobon12@gmail.com', '$2y$10$0ywVaVUJgRS3eqMYyej90O6L3umGELBIeR6bG6Mlqt4xetLf92BnW', 1, '3852fdb7-17b7-499f-8206-2fbded09d219', 0, NULL, NULL, '2023-09-26 17:34:55', '2023-09-26 17:34:55', NULL, NULL, ''),
(6, 'babysukuna12', 'bobon123@gmail.com', '$2y$10$qqA.Dra4eVc64kmdhrlZ4uqEWcFZuuhGEnGFxF3L2/3kiKdnAPVTu', 1, '68106346-2eaf-41c2-82b8-44a4e4e76bdc', 0, NULL, NULL, '2023-09-26 17:38:37', '2023-09-26 17:38:37', NULL, NULL, ''),
(7, 'ardis12345', 'ardis12345@gmail.com', '$2y$10$jIm0k7krv.NbVw2S0VnQ6u1vap0VBvkmLuhIq6ejG5/kyxX4h1xMu', 1, '6aa80cf8-87c4-47cf-90d2-8fe880ba0f22', 0, NULL, NULL, '2023-09-26 21:18:55', '2023-09-26 22:03:16', NULL, '2023-09-27 05:03:16', NULL),
(10, 'bono123', 'bobon1234@gmail.com', '$2y$10$6OuuG7i9v7e1o2OZrMIphuKKQQ0QRp3ka7sq2jeO6QEYtK/dXmt5S', 1, '492a712c-f7c1-478f-9468-b840d47a7355', 0, NULL, NULL, '2023-09-26 21:58:16', '2023-09-26 21:58:16', NULL, NULL, NULL),
(12, 'gojo123', 'gojo123@gmail.com', '$2y$10$xHfJvbHtSYL911wHGxuBFuiNwjb9AlSB2aUggT90t1Tg6bPLeo2Bq', 1, '4061cb5d-49c0-4227-ab63-0b9aa0cce863', 0, NULL, NULL, '2023-09-26 22:27:48', '2023-09-26 22:28:23', NULL, '2023-09-27 05:28:23', 'eyJpdiI6IkVqTzkyVVhXb2ZnQUdKV0VaellxT1E9PSIsInZhbHVlIjoiVFVqRTl2NUozSGRCa2FXUGxrbWZubDRyOXlhNERYT3V2bmZOSFJoNzI4UT0iLCJtYWMiOiJmZDVhMDE5ODFlM2YwZDhjMTZkNzZkODc4ZjU0NTdhMGJhNGE4MTgyYzU5NTMwNDJjMGI2MGY4MzZmNzkxZGY3IiwidGFnIjoiIn0='),
(13, 'ardis12', 'ardis123@gmail.com', '$2y$10$5xIbg8fP8wGIWhO/4QwZ6egVJN/9NV47lMHPWCIo3O0H7dv/5.Sbq', 1, 'a024a1d8-d639-4736-9587-9e50261ad8e7', 0, NULL, NULL, '2023-09-26 22:30:29', '2023-09-26 22:32:54', NULL, '2023-09-27 05:32:54', 'eyJpdiI6IkdnNlloSzVmOFNlaVMwNnBvMDVWaEE9PSIsInZhbHVlIjoiR2ZjRTVzc252MzJBYldNTzR4clRkdE1GMHpJV3dNS3ZqdXM5Y3FudXpLST0iLCJtYWMiOiIwYTUwNTc1YzQ1NzY3MjgxNDVkNDgyZGM1MzA0N2RhYTg3MjkzY2FkNDVmODFiMWQxZDUxMjNmYjFhOGVmZDdhIiwidGFnIjoiIn0='),
(14, 'c0m12', 'c0m12345@gmail.com', '$2y$10$rw8zl4vHGr9ae/MBkoErbuaUPdcaR0HMw6riiqi1j5xmoaOcm8IJC', 1, 'a46d785a-0962-41a9-b87d-257439087d93', 0, NULL, NULL, '2023-09-26 22:36:30', '2023-09-26 22:38:50', NULL, '2023-09-27 05:38:50', 'eyJpdiI6Ik1aNlZFc01CcVhRWjZYYnFXaC9tZkE9PSIsInZhbHVlIjoiMnNrK3VxNEJMZUhwYUsvampLZFV4a3E0YlZzcnd2Z3Rtbm9DcnAyYU5yaz0iLCJtYWMiOiI0ZDQ5MjMxMjlhNmJlZDMyMDg1MTMzZTlkNDA5OWI5ZGZlYTBhYzFiYTU3YjE3NjQ0Yjc5NTNmMzAwMTUyMjQ4IiwidGFnIjoiIn0='),
(15, 'ardis98', 'ardis98@gmail.com', '$2y$10$.gmu4wcSDpWskPIG0Tudx.3ydHut/Y2UpQaryZFnG7XPyzQdEfqZ6', 1, 'da577326-ed37-4b13-9cd8-f5a108fb472d', 0, NULL, NULL, '2023-09-26 23:03:36', '2023-09-26 23:04:06', NULL, '2023-09-27 06:04:06', 'eyJpdiI6IkN2d1VaOUJyeG1BVFFMNmNOaUF1M1E9PSIsInZhbHVlIjoiUEZ0YXFxblpwREtRYnpYZnB0MGl5ZmJRazFENFJtUmFOMUhqK1k1ZWh3ND0iLCJtYWMiOiI3NTYwMDZiNDdkMWNmZGY5YzU0ZTVkNTkyYjBiNzk5ODAwNWMxNmQ3OGI1ZDA5ODAyMzRjYmVjMzdjOWRlMGM3IiwidGFnIjoiIn0=');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
