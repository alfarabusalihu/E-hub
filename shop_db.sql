-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 03:37 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'Admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(0, 'Originmaster', '73cd42e7c18f7fbc5b30a1866fec6bb5a7babd9c');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(0, 0, 'Raflas', 'lostaparademo@gmail.com', '9456789234', 'Its good'),
(0, 0, 'Raflas', 'lostaparademo@gmail.com', '14', 'very bad');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(0, 0, 'Alfar', '099987456', 'raflasalfa@gmail.com', 'cash on delivery', 'flat no. no:45, 2nd cross street. Negombo, no:60, Spilll street. Negombo, Kurunagala, western province, Srilanka - 61300', 'MacBook Air (15-inch, M2) (390000 x 1) - Lenovo IdeaPad 3 15ITL6 – i7 (220000 x 1) - ', 610000, '2024-03-12', 'pending'),
(0, 0, 'Rafla', '099987456', 'raflasalfa@gmail.com', 'cash on delivery', 'flat no. No:90, Red cross street. Negombo, No:60, Main street. Negombo, Kurunagala, western province, Sri Lanka - 61300', 'Lenovo IdeaPad 3 15ITL6 – i7 (220000 x 1) - ASUS L510MA-WB04 (280000 x 1) - MacBook Air (15-inch, M2) (390000 x 1) - Redmi Note 11 (50000 x 4) - ', 1090000, '2024-03-12', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `category`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'MacBook Air (15-inch, M2)', 'Chip: Powered by the Apple M2 chip with 8-core CPU, 10-core GPU, and 16-core Neural Engine.\r\nDisplay: Features a 15.3-inch Liquid Retina display with IPS technology, 2880-by-1864 native resolution, and True Tone technology.\r\nBattery Life: Offers up to 18 hours of Apple TV app movie playback and up to 15 hours of wireless web browsing.\r\nMemory: Comes with 8GB unified memory, configurable to 16GB or 24GB.\r\nStorage: Includes a 256GB SSD, configurable to 512GB, 1TB, or 2TB.\r\nConnectivity: Equipped w', 390000, 'laptops', 'mac 2.jpg', 'mac3.jpg', 'mac1.png'),
(3, 'Lenovo IdeaPad 3 15ITL6 – i7', 'Processor: Powered by an Intel Core i7 processor for high-performance computing.\r\nDisplay: Features a 15.6-inch Full HD display for crisp visuals.\r\nMemory: Offers 8GB or more of RAM for smooth multitasking.\r\nStorage: Includes a 512GB SSD for fast storage and boot times.\r\nGraphics: Equipped with integrated Intel Iris Xe graphics for decent graphical performance.\r\nBattery Life: Provides up to X hours of battery life for all-day use.', 220000, 'laptops', 'lenovo 2.webp', 'lenovo 3.jpg', 'Lenovo 1.webp'),
(4, 'ASUS L510MA-WB04', 'Processor: Intel Celeron N4020 Processor (4M Cache, up to 2.8 GHz)\r\nMemory: 4GB DDR4 RAM\r\nStorage: 128GB eMMC\r\nDisplay: 15.6-inch Full HD (1920x1080) display\r\nGraphics: Intel UHD Graphics 600\r\nOperating System: Windows 10 Home', 280000, 'laptops', 'asus 1.jpg', 'asus 3.webp', 'asus 2.jpg'),
(5, 'Redmi Note 13 pro', 'Network: Supports GSM, CDMA, HSPA, CDMA2000, LTE, and 5G technologies.\r\nDisplay: Features a 6.67-inch AMOLED display with a 120Hz refresh rate and Dolby Vision support.\r\nCamera: Equipped with a powerful triple-camera setup, including a 200MP main sensor, 8MP ultrawide, and 2MP macro lens.\r\nPerformance: Runs on Android 13 with MIUI 14, powered by the Qualcomm Snapdragon 7s Gen 2 chipset and Adreno 710 GPU.\r\nMemory: Available in various configurations, including 128GB/256GB/512GB storage options w', 28000023, 'smartphones', 'redmi1.jpg', 'redmi2.jpg', 'redmi3.png'),
(6, 'Apple iPhone 14', 'Display: Expected to feature a 6.1-inch or 6.7-inch Super Retina XDR display.\r\nProcessor: Likely to be powered by the next-generation A16 chip for improved performance and efficiency.\r\nCamera: Expected to feature significant camera upgrades, possibly including improved sensors and computational photography capabilities.\r\nDesign: Rumored to have a refined design with smaller notch or even a hole-punch display.\r\nConnectivity: Expected to support 5G connectivity for faster network speeds.\r\nOperatin', 390000, 'smartphones', 'iphone3.jpg', 'iphone2.jpg', 'iphone1.jpg'),
(7, 'Oppo Reno 11', 'NETWORK: GSM / HSPA / LTE / 5G\r\nDISPLAY: 6.7&#34; AMOLED, 120Hz, HDR10+, 1080 x 2412 pixels\r\nPLATFORM: Android 14, ColorOS 14, MediaTek Dimensity 7050\r\nMEMORY: Up to 256GB storage, 12GB RAM\r\nCAMERA: Triple 50MP main, 32MP selfie, 4K video\r\nBATTERY: 5000mAh, 67W fast charging', 280000, 'smartphones', 'ren3.webp', 'ren2.webp', 'nokia2.jpg'),
(8, 'Samsung Galaxy S24', 'NETWORK: GSM / CDMA / HSPA / EVDO / LTE / 5G\r\nLAUNCH: Announced: 2024, January 17; Released: 2024, January 24\r\nBODY: Dimensions: 147 x 70.6 x 7.6 mm; Weight: 167-168 g; Build: Glass front (Gorilla Glass Victus 2), glass back (Gorilla Glass Victus 2), aluminum frame; IP68 dust/water resistant, Armor aluminum 2 frame\r\nDISPLAY: Type: Dynamic LTPO AMOLED 2X, 120Hz, HDR10+, 2600 nits (peak); Size: 6.2 inches, 94.4 cm2 (~90.9% screen-to-body ratio); Resolution: 1080 x 2340 pixels, 19.5:9 ratio (~416 p', 280000, 'smartphones', 'samsung1.jpg', 'samsung2.jpg', 'samsung3.jpg'),
(9, 'Redmi Note 11', 'Display: Redmi Note 11 features a 6.43-inch Super AMOLED display with a 90Hz refresh rate, providing vibrant colors and smooth visuals.\r\nProcessor: Powered by the MediaTek Helio G88 processor, offering reliable performance for everyday tasks and gaming.\r\nCamera: Equipped with a quad-camera setup, including a 50MP main camera, 8MP ultrawide, 2MP macro, and 2MP depth sensor, allowing for versatile photography.\r\nBattery: Comes with a 5000mAh battery, providing long-lasting usage on a single charge.', 50000, 'smartphones', 'redmi21.jpg', 'redmi note22.jpg', 'redmi23.jpg'),
(10, 'Abans 24 inch LED TV', 'Screen Size: 24 inches\r\nResolution: HD (1366 x 768 pixels)\r\nRefresh Rate: 60Hz\r\nPanel Type: LED\r\nConnectivity: HDMI, USB, VGA, AV Input\r\nAudio: 2 x 5W speakers\r\nDimensions (without stand): TBD\r\nWeight (without stand): TBD', 40000, 'tvs', 'tv2.jpg', 'tv1.jpg', 'tv-03.webp'),
(11, 'HP ProBook 440 G9 – i5', 'Processor: Intel Core i5-1235U Processor\r\nRAM: 8GB DDR4-3200 MHz RAM\r\nStorage: 512GB PCIe NVMe M.2 SSD\r\nDisplay: 14-inch Full HD (1920 x 1080) Display\r\nGraphics: Intel Iris Xe Graphics\r\nKeyboard: Backlit Keyboard\r\nColor: Silver\r\nOperating System: FreeDOS', 250000, 'laptops', 'hp1.jpg', 'hp2.jpg', 'hp3.jpg'),
(12, 'Vivobook 15 OLED K513 ', 'Processor Options: Various Intel 11th Gen CPUs\r\nMemory: Up to 16GB\r\nStorage: Over 1TB\r\nGraphics Options: Integrated graphics, or NVIDIA GeForce MX330 or MX350 discrete GPU\r\nDisplay: 15.6-inch OLED panel with full DCI P3 and Adobe RGB coverage\r\nPorts: Three USB-A ports, one USB-C port, HDMI, and SD card reader', 190000, 'laptops', 'asus21.jpg', 'asus23.jpg', 'asus22.jpg'),
(13, 'Canon EOS 3000D', 'Resolution: 6.3 megapixels\r\nSensor: APS-C sized CMOS sensor\r\nISO Range: ISO 100-1600 (expandable to ISO 3200)\r\nAutofocus: 7-point wide-area AF system\r\nLCD Screen: 1.8-inch TFT color LCD monitor\r\nStorage: CompactFlash (CF) memory card slot', 115000, 'cameras', 'camera-1.webp', 'camera-2.webp', 'camera-3.webp'),
(14, 'Sony Alpha a7 III Mirrorless Digital Camera ', 'Sensor: 24.2MP full-frame Exmor R CMOS sensor\r\nProcessor: BIONZ X image processor\r\nAutofocus: 693-point phase-detection and 425-point contrast-detection AF system\r\nISO Range: ISO 100-51200 (expandable to ISO 50-204800)\r\nViewfinder and LCD: 2.36m-dot OLED electronic viewfinder and 3.0&#34; 922k-dot tilting touchscreen LCD\r\nVideo: UHD 4K30p video with HLG and S-Log3 gammas', 500000, 'cameras', 'sony1.jpg', 'sony3.jpg', 'sony3.jpg'),
(15, 'Sony Alpha a6400 Mirrorless Digital Camera', 'Sensor: 24.2MP APS-C Exmor CMOS sensor\r\nProcessor: BIONZ X image processor\r\nAutofocus: 425-point phase-detection and contrast-detection AF system\r\nISO Range: ISO 100-32000 (expandable to ISO 102400 for stills)\r\nViewfinder and LCD: 2.36m-dot OLED electronic viewfinder and 3.0&#34; 921.6k-dot tilting touchscreen LCD\r\nVideo: UHD 4K30p video with full pixel readout and no pixel binning', 300000, 'cameras', 'sony22.jpg', 'sony23.jpg', 'sony21.jpg'),
(16, 'Sony 55&#34; X75K 4K UHD HDR Google TV', 'Screen Size: 55&#34;\r\nDisplay Type: LCD\r\nResolution: 3840x2162\r\nBacklight Type: Direct LED\r\nOperating System: Android TV™', 400000, 'tvs', 'tv1.jpg', 'tv22.jpg', 'tv21.webp'),
(17, 'Rolex datejust computerized dial', 'Ref. 116234\r\nSize 36mm, Automatic Caliber 3135\r\nWatch Only (M series - 2008)\r\nVery Mint Condition', 600000, 'watches', 'rol3.webp', 'rol1.jpg', 'rol2.webp'),
(18, 'Analogue Watch', 'Analougue Watch (2020)', 50000, 'watches', 'watch-1.webp', 'watch-2.webp', 'watch-3.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(0, 'Raflas', 'raflasalfa@gmail.com', 'ca22427d7d65ebfeb24c3321cf662bd9aaa85a10'),
(0, 'Alfar', 'lostaparademo@gmail.com', '541035e49fd732d5622622ee3689848a95d2b6aa'),
(0, 'Dilan', 'dilangnanasegaram@gmail.com', 'd5bfc6c4f8bf423a38e35323e32b04b079b218b0');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
