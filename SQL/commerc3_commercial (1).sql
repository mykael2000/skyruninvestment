-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2023 at 10:48 PM
-- Server version: 10.6.15-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commerc3_commercial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_withdrawal`
--

CREATE TABLE `bank_withdrawal` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `tranx_id` int(11) NOT NULL,
  `amount` text NOT NULL,
  `accountNumber` text NOT NULL,
  `bankName` text NOT NULL,
  `accountName` text NOT NULL,
  `ssn` text NOT NULL,
  `status` text NOT NULL,
  `created_at` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_withdrawal`
--

CREATE TABLE `crypto_withdrawal` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tranx_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `amount` text NOT NULL,
  `coin` text NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tranx_id` text NOT NULL,
  `email` text NOT NULL,
  `type` text NOT NULL,
  `amount` text NOT NULL,
  `coin` text NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `tranx_id` text NOT NULL,
  `email` text NOT NULL,
  `amount` text NOT NULL,
  `coin` text NOT NULL,
  `status` text NOT NULL,
  `proof` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `profilePic` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL,
  `zip` text NOT NULL,
  `city` text NOT NULL,
  `currency` text NOT NULL,
  `total_balance` decimal(20,2) DEFAULT NULL,
  `total_deposits` decimal(20,2) DEFAULT NULL,
  `total_profit` decimal(20,2) DEFAULT NULL,
  `total_bonus` decimal(20,2) NOT NULL,
  `btc_balance` decimal(20,8) DEFAULT NULL,
  `eth_balance` decimal(20,8) DEFAULT NULL,
  `usdt_balance` decimal(20,2) DEFAULT NULL,
  `ltc_balance` decimal(20,8) DEFAULT NULL,
  `account_status` text NOT NULL DEFAULT 'unverified',
  `fund_status` text NOT NULL,
  `upgrade_status` text NOT NULL,
  `withdrawal_status` text NOT NULL,
  `withdrawal_pin` text NOT NULL,
  `trade_session` text NOT NULL,
  `time` text NOT NULL,
  `profit_amount` decimal(20,2) NOT NULL,
  `account_limit` decimal(20,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_kyc`
--

CREATE TABLE `user_kyc` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `fullname` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `gov_id_type` text NOT NULL,
  `gov_id_file` text NOT NULL,
  `proof_address_file` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
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
-- Indexes for table `bank_withdrawal`
--
ALTER TABLE `bank_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_withdrawal`
--
ALTER TABLE `crypto_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_kyc`
--
ALTER TABLE `user_kyc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_withdrawal`
--
ALTER TABLE `bank_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_withdrawal`
--
ALTER TABLE `crypto_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_kyc`
--
ALTER TABLE `user_kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
