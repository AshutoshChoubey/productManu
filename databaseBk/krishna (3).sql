-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 01:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krishna`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `about` varchar(100) DEFAULT NULL,
  `user_id` int(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `contact_no`, `email`, `address`, `gstin`, `about`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Customer', '565786', '6565@asrdtfr', 'trfttrdgfdgfg', '12', 'fgtftrft', 1, NULL, '2019-04-23 05:35:50', '2019-04-23 05:36:13', NULL),
(2, 'Customer1', '123456789', 'gfdf@rtf', 'tftgfdtrrtytttftyft', '11', 'tyfthfhgfthft', 1, NULL, '2019-04-23 05:37:14', '2019-04-23 05:37:14', NULL),
(3, 'Customer2', '454566', '5ttrt@rdtrdtr', 'dfgcggftrftyrftftfgd', '18', 'erdgfdgtfgfgh', 1, NULL, '2019-04-23 05:37:40', '2019-04-23 05:37:48', '2019-04-23 05:37:48'),
(4, 'dfdfdfgg', '34567', 'rerr@esef', 'werrdfdf', '12', 'eresrfsf', 1, NULL, '2019-04-25 11:44:49', '2019-04-25 11:44:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `id` int(11) NOT NULL,
  `distributor_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `status` int(155) NOT NULL DEFAULT '1',
  `user_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`id`, `distributor_name`, `contact_no`, `email`, `gstin`, `address`, `about`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fgd', '4335', 'ashutoshkumarchoubey@gmail.com', '456fghfgh', 'ashutoshkumarchoubey@gmail,com, plot No-GA,430 Chandrasekharpur, Axis Bank ATM, Sailashree Vihar', 'ghgfh', 1, NULL, '2019-04-19 05:43:05', NULL, NULL),
(2, 'dfg', '5345345', 'dfgdf@ddfg.ry', 're345', 'rerer@dfh.egre', 'fg', 1, 1, '2019-04-19 05:44:10', '2019-04-19 05:44:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(100) DEFAULT NULL,
  `emp_contact_no` varchar(100) DEFAULT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `emp_mail` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_name`, `emp_contact_no`, `emp_address`, `designation`, `emp_mail`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Ashutosh Kumar Choubey', '9658476170', 'ashutoshkum', 'fdgfcg', 'ashutoshkumarchoubey@gmail.com', '1970-01-01 00:00:01.000000', NULL, '2019-04-19 19:45:40.000000');

-- --------------------------------------------------------

--
-- Table structure for table `item_catagories`
--

CREATE TABLE `item_catagories` (
  `id` int(11) NOT NULL,
  `user_id` int(155) NOT NULL,
  `item_category_name` varchar(100) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `status` int(155) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_catagories`
--

INSERT INTO `item_catagories` (`id`, `user_id`, `item_category_name`, `item_description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 1, 'demo0', 'bbb0', 1, '2019-04-18 18:51:23', '2019-04-18 19:37:13', '2019-04-18 19:37:13'),
(12, 1, 'demo2', '34535', 1, '2019-04-18 19:36:09', '2019-04-18 19:36:09', NULL),
(13, 1, 'demo3', 'dfdf', 1, '2019-04-18 19:37:29', '2019-04-18 19:37:29', NULL),
(14, 1, 'demo 4', '444', 1, '2019-04-19 06:50:34', '2019-04-19 06:50:51', NULL),
(15, 1, 'demo5', 'esefsfd', 1, '2019-04-22 08:04:10', '2019-04-22 08:04:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_names`
--

CREATE TABLE `item_names` (
  `id` int(11) NOT NULL,
  `item_catagories_id` varchar(100) DEFAULT NULL,
  `item_cat_name` varchar(155) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `hsn_code` varchar(100) DEFAULT NULL,
  `specification` varchar(100) DEFAULT NULL,
  `item_cgst` int(11) NOT NULL DEFAULT '0',
  `item_sgst` int(11) NOT NULL DEFAULT '0',
  `item_igst` int(11) NOT NULL DEFAULT '0',
  `item_gst` int(11) NOT NULL DEFAULT '0',
  `details` varchar(500) DEFAULT NULL,
  `stock_in` varchar(100) DEFAULT '0',
  `stock_out` varchar(100) NOT NULL DEFAULT '0',
  `available_stock` varchar(100) NOT NULL DEFAULT '0',
  `user_id` int(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_names`
--

INSERT INTO `item_names` (`id`, `item_catagories_id`, `item_cat_name`, `item_name`, `hsn_code`, `specification`, `item_cgst`, `item_sgst`, `item_igst`, `item_gst`, `details`, `stock_in`, `stock_out`, `available_stock`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, '12', 'demo2', 'sdf', 'sdf', 'xdf', 2, 3, 5, 10, 'dg', '16', '0', '16', 1, '2019-04-19 13:03:53', '2019-04-22 08:03:01', NULL),
(13, '13', 'demo3', 'ghyttyrt', '453', 'sdfsdf', 5, 5, 0, 10, 'dfgbvn', '22', '0', '22', 1, '2019-04-19 13:04:15', '2019-04-19 19:35:45', NULL),
(14, '15', 'demo5', 'aaaaaa', '121', 'essfdfdfdfd', 0, 0, 0, 0, 'wesfdf', '0', '0', '0', 1, '2019-04-22 08:04:35', '2019-04-22 08:04:35', NULL),
(15, '13', 'demo3', 'tyfyhghghgh', '3445', 'errerdrdrd', 0, 0, 0, 0, 'rertrtrtrtr', '0', '0', '0', 1, '2019-04-22 10:38:20', '2019-04-22 10:38:20', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) DEFAULT NULL,
  `purchase_invoice_id` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `supplier_contact_no` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `purchase_invoice_no` varchar(100) DEFAULT NULL,
  `purchase_invoice_date` date DEFAULT NULL,
  `purchase_invoice_amount` varchar(100) DEFAULT NULL,
  `purchase_discription` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL COMMENT '1=>By Cash,2=>By Internate Banking,3=>By Cheque	',
  `item_name` varchar(100) DEFAULT NULL,
  `item_catagory` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `gst` double(155,2) NOT NULL DEFAULT '0.00',
  `quantity` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total_tax` double(155,2) NOT NULL DEFAULT '0.00',
  `total_amount` double(155,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `purchase_invoice_id`, `supplier_name`, `supplier_contact_no`, `supplier_email`, `supplier_address`, `purchase_invoice_no`, `purchase_invoice_date`, `purchase_invoice_amount`, `purchase_discription`, `payment_type`, `item_name`, `item_catagory`, `hsn`, `gst`, `quantity`, `price`, `total_tax`, `total_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, '2', '14', 'fff', '345345345', 'gdfgdf@ffdgh.fgd', 'dfgdf', '11111', '2019-04-18', '20', 'dfgdf', '2', '12', '12', 'sdf', 10.00, '5', '10', 5.00, 55.00, '2019-04-19 19:35:45', '2019-04-19 19:35:45', NULL),
(14, '2', '14', 'fff', '345345345', 'gdfgdf@ffdgh.fgd', 'dfgdf', '11111', '2019-04-18', '20', 'dfgdf', '2', '13', '13', '453', 10.00, '10', '5', 5.00, 55.00, '2019-04-19 19:35:45', '2019-04-19 19:35:45', NULL),
(15, '1', '15', 'sfs', '3453453453', 'sdfs@fh.dg', 'dgfg', '1323423', '2019-04-22', '100', 'redrgfdfdfx', '1', '12', '12', 'sdf', 10.00, '1', '150', 15.00, 165.00, '2019-04-22 08:03:00', '2019-04-22 08:03:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoices`
--

CREATE TABLE `purchase_invoices` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(155) DEFAULT NULL,
  `purchase_invoice_number` varchar(100) DEFAULT NULL,
  `supplier_contact_no` varchar(155) DEFAULT NULL,
  `supplier_address` varchar(155) DEFAULT NULL,
  `supplier_email` varchar(155) DEFAULT NULL,
  `purchase_invoice_date` varchar(100) DEFAULT NULL,
  `purchase_invoice_amount` varchar(100) DEFAULT NULL,
  `gstin` varchar(155) NOT NULL,
  `purchase_discription` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `total_purchase_amount` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `user_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_invoices`
--

INSERT INTO `purchase_invoices` (`id`, `supplier_id`, `supplier_name`, `purchase_invoice_number`, `supplier_contact_no`, `supplier_address`, `supplier_email`, `purchase_invoice_date`, `purchase_invoice_amount`, `gstin`, `purchase_discription`, `payment_type`, `total_purchase_amount`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, '2', 'fff', '11111', '345345345', 'dfgdf', 'gdfgdf@ffdgh.fgd', '2019-04-18 00:00:00', '20', 'FFDS345', 'dfgdf', '2', '110', 1, NULL, '2019-04-19 19:35:45', '2019-04-19 19:35:45', NULL),
(15, '1', 'sfs', '1323423', '3453453453', 'dgfg', 'sdfs@fh.dg', '2019-04-22 00:00:00', '100', '12', 'redrgfdfdfx', '1', '165', 1, NULL, '2019-04-22 08:03:00', '2019-04-22 08:03:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `retailers`
--

CREATE TABLE `retailers` (
  `id` int(11) NOT NULL,
  `retailer_name` varchar(100) DEFAULT NULL,
  `retailer_contact_no` varchar(100) DEFAULT NULL,
  `retailer_email` varchar(100) DEFAULT NULL,
  `retailer_address` varchar(100) DEFAULT NULL,
  `retailer_gstin` varchar(100) DEFAULT NULL,
  `retailer_about` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `user_id` int(155) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailers`
--

INSERT INTO `retailers` (`id`, `retailer_name`, `retailer_contact_no`, `retailer_email`, `retailer_address`, `retailer_gstin`, `retailer_about`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dfgdfg', '45645645', 'dfhgf@g.dfg', '435fdg', 'gdfg', 'dfgdf', 1, NULL, '2019-04-19 05:54:41', NULL, NULL),
(2, 'dfgdfg', '45645645', 'dfhgf@g.dfg', '435fdg', 'gdfg', 'dfgdf', 1, NULL, '2019-04-19 05:54:41', '2019-04-19 05:58:34', '2019-04-19 05:58:34'),
(3, 'aaa', '111111111111', 'ddddddddd', 'bbbbbbbb', 'cccccc', 'eeee', 1, 1, '2019-04-19 05:58:00', '2019-04-19 05:58:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) DEFAULT NULL,
  `sale_invoice_id` int(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_contact_no` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `sale_invoice_no` varchar(100) DEFAULT NULL,
  `sale_invoice_date` varchar(6) DEFAULT NULL,
  `sale_invoice_amount` varchar(100) DEFAULT NULL,
  `sale_description` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_catagory` varchar(100) DEFAULT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quality` varchar(100) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total_tax` varchar(100) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_invoices`
--

CREATE TABLE `sale_invoices` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_contact_no` varchar(100) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `sale_invoice_no` varchar(100) DEFAULT NULL,
  `sale_invoice_date` varchar(100) DEFAULT NULL,
  `sale_invoice_amount` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `sale_description` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `total_sale_amount` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `user_id` int(55) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `contact_no`, `email`, `address`, `gstin`, `about`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sfs', '3453453453', 'sdfs@fh.dg', 'dgfg', 'DG%', 'fghf', NULL, 1, '2019-04-19 05:37:54', NULL, NULL),
(2, 'fff', '345345345', 'gdfgdf@ffdgh.fgd', 'dfgdf', '56fdh', 'dfgd', 1, 1, '2019-04-19 05:38:23', '2019-04-19 05:38:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashutosh Kumar Choubey', 'admin@admin.com', NULL, '$2y$10$NiiE56HeoFfvpel6t9m2kOLNQKj1W6Gz7Tut0HMH1jDOTnXiGDv3S', NULL, '2019-04-17 23:54:47', '2019-04-17 23:54:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_catagories`
--
ALTER TABLE `item_catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_names`
--
ALTER TABLE `item_names`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retailers`
--
ALTER TABLE `retailers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_catagories`
--
ALTER TABLE `item_catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `item_names`
--
ALTER TABLE `item_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `retailers`
--
ALTER TABLE `retailers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
