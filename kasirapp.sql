-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2020 at 07:21 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(50) NOT NULL,
  `kode_barang` int(25) NOT NULL,
  `nama_barang` text NOT NULL,
  `kategori_barang_id` varchar(50) NOT NULL,
  `harga_beli` int(10) DEFAULT NULL,
  `harga_jual` int(10) DEFAULT NULL,
  `deskripsi_barang` text,
  `satuan` varchar(10) DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `barang_terjual` int(11) DEFAULT NULL,
  `asal_barang` text,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `barang_cratead_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `kategori_barang_id`, `harga_beli`, `harga_jual`, `deskripsi_barang`, `satuan`, `stok_barang`, `barang_terjual`, `asal_barang`, `published`, `barang_cratead_at`, `barang_updated_at`) VALUES
('ITM-1009528', 8193, 'nova', 'KITM-64134553', 366, 942, 'If we copy the application, we can get to the SQL application through the mobile SSL capacitor!', NULL, 99, 91, 'New Tia', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-10305266', 72, 'nova lufain', 'KITM-64134553', 150, 206, 'I\'ll back up the open-source FTP sensor, that should feed the USB matrix!', NULL, 63, 55, 'Milanhaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-10474885', 4715, 'sovie', 'KITM-64134553', 948, 968, 'We need to compress the haptic SDD bandwidth!', NULL, 82, 54, 'Humbertoview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-10645896', 5678, 'Renil 100', 'KITM-64134553', 167, 500, 'We need to input the online CSS program!', NULL, 90, 35, 'Lake Connieshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-10893050', 1823, 'ND Clone 2000', 'KITM-64134553', 656, 56, 'The GB panel is down, compress the neural feed so we can navigate the THX bandwidth!', NULL, 55, 45, 'Murazikbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-11226377', 4562, 'Skim 100', 'KITM-64134553', 163, 945, 'overriding the microchip won\'t do anything, we need to back up the bluetooth PCI program!', NULL, 47, 99, 'East Koleside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-11300807', 1, 'supardi', 'KITM-64134553', 296, 732, 'The SAS pixel is down, program the redundant system so we can back up the PNG array!', NULL, 71, 92, 'Yadirafurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-11377193', 2, 'Masamix Bro', 'KITM-64134553', 308, 780, 'If we hack the pixel, we can get to the XML interface through the neural GB bus!', NULL, 19, 31, 'Quigleystad', 0, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-11558430', 9496, 'Clorine', 'KITM-64134553', 933, 440, 'I\'ll quantify the online IB monitor, that should transmitter the JSON panel!', NULL, 88, 28, 'East Haskellmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-11583308', 7870, 'HV', 'KITM-64134553', 905, 950, 'Use the optical SMS firewall, then you can synthesize the cross-platform monitor!', NULL, 55, 100, 'Cummeratashire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-12564161', 3061, 'NED START', 'KITM-64134553', 361, 1, 'You can\'t transmit the program without bypassing the back-end SSL hard drive!', NULL, 52, 56, 'Elmirabury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-1276101', 3187, '7501', 'KITM-64680217', 533, 617, 'Use the solid state GB bandwidth, then you can quantify the bluetooth driver!', NULL, 18, 94, 'Kutchborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-12831147', 6765, '7181', 'KITM-64680217', 697, 826, 'I\'ll override the redundant SCSI feed, that should panel the SQL transmitter!', NULL, 100, 30, 'Schummfurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-13076146', 2249, 'Salad', 'KITM-64680217', 133, 93, 'Use the virtual GB application, then you can hack the 1080p bus!', NULL, 14, 10, 'Goldaview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-13220713', 8446, 'Towels', 'KITM-64680217', 420, 618, 'The SQL bandwidth is down, generate the multi-byte array so we can program the TCP hard drive!', NULL, 60, 80, 'West Oswaldoport', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-13509155', 9441, 'Soap', 'KITM-64680217', 304, 601, 'The ADP monitor is down, hack the 1080p array so we can connect the HDD matrix!', NULL, 75, 10, 'Melynafort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-13583366', 890, 'Chips', 'KITM-64680217', 260, 785, 'connecting the panel won\'t do anything, we need to copy the digital AGP panel!', NULL, 9, 2, 'New Hilmashire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-1414370', 4805, 'Salad', 'KITM-64680217', 621, 481, 'The JBOD bandwidth is down, generate the digital monitor so we can override the SAS bus!', NULL, 37, 43, 'New Madgeborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-14753426', 8762, 'Bike', 'KITM-11010142', 772, 670, 'Use the multi-byte ADP circuit, then you can copy the primary panel!', NULL, 59, 18, 'Port Mathiasmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-15786380', 8686, 'Fish', 'KITM-51281767', 685, 477, 'I\'ll bypass the back-end SQL port, that should bandwidth the SQL bandwidth!', NULL, 67, 56, 'Kilbackborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-15912454', 5630, 'Chicken', 'KITM-31427694', 598, 67, 'You can\'t copy the program without generating the back-end JBOD protocol!', NULL, 2, 13, 'Schulistmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-16495402', 9445, 'Fish', 'KITM-31427694', 48, 942, 'programming the port won\'t do anything, we need to calculate the online SAS port!', NULL, 11, 82, 'Skilesport', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-16506628', 7962, 'Shoes', 'KITM-68880084', 75, 454, 'calculating the bus won\'t do anything, we need to quantify the cross-platform SDD hard drive!', NULL, 23, 96, 'South Perry', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-16905425', 2215, 'Shoes', 'KITM-68880084', 616, 272, 'You can\'t override the bus without compressing the digital EXE microchip!', NULL, 41, 31, 'Swiftmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-1708923', 8267, 'Gloves', 'KITM-31427694', 732, 946, 'You can\'t compress the driver without overriding the redundant USB transmitter!', NULL, 91, 86, 'Pricestad', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-17606382', 283, 'Soap', 'KITM-64680217', 856, 870, 'You can\'t copy the protocol without synthesizing the auxiliary SAS driver!', NULL, 94, 66, 'Koeppfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-18424567', 2053, 'Table', 'KITM-68880084', 447, 199, 'compressing the bandwidth won\'t do anything, we need to generate the redundant GB bus!', NULL, 58, 37, 'Wolffurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-18892912', 7034, 'Chips', 'KITM-64680217', 970, 756, 'If we input the application, we can get to the CSS system through the redundant XML panel!', NULL, 14, 76, 'Aurelieshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-1905130221', 777, 'Pill', 'KITM-51281767', 35000, 40000, 'obat', NULL, 25, 5, 'London', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-1909180222', 987245, 'OKB', 'KITM-64134553', 5550, 6500, NULL, NULL, 20, 4, NULL, 0, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-20106232', 6053, 'Computer', 'KITM-68880084', 956, 457, 'If we connect the sensor, we can get to the SCSI panel through the redundant SCSI port!', NULL, 90, 39, 'New Jaquelineland', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-21105837', 4602, 'Computer 12', 'KITM-31427694', 786, 731, 'Use the neural SAS application, then you can parse the bluetooth microchip!', NULL, 88, 16, 'West Jadynmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-21267548', 8649, 'Mouse', 'KITM-34978378', 940, 251, 'We need to copy the solid state AI program!', NULL, 67, 68, 'West Lavonton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-21364729', 1161, 'Chicken', 'KITM-11010142', 924, 345, 'You can\'t bypass the pixel without indexing the redundant AI bandwidth!', NULL, 82, 87, 'Camilleland', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-2195007', 2619, 'Fish', 'KITM-79288554', 699, 838, 'I\'ll navigate the primary TCP bus, that should transmitter the FTP driver!', NULL, 36, 1, 'Tillmanfurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-22889403', 5654, 'Chair', 'KITM-64680217', 969, 627, 'I\'ll copy the wireless SAS port, that should panel the CSS capacitor!', NULL, 34, 24, 'Rudolphside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-23026554', 7976, 'Table', 'KITM-31427694', 672, 356, 'Use the auxiliary HTTP monitor, then you can program the open-source pixel!', NULL, 70, 17, 'Goldnerberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-23237256', 7432, 'Shoes', 'KITM-51281767', 613, 911, 'Try to quantify the HTTP microchip, maybe it will parse the digital bus!', NULL, 59, 85, 'North Kiarra', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-24308113', 4474, 'Chips', 'KITM-11010142', 560, 125, 'Try to navigate the SDD interface, maybe it will connect the virtual firewall!', NULL, 74, 28, 'Lake Dahliashire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-24424372', 8788, 'Tuna', 'KITM-31253996', 887, 463, 'connecting the pixel won\'t do anything, we need to input the primary HTTP bus!', NULL, 41, 22, 'Kleinberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-25904769', 624, 'Tuna', 'KITM-51281767', 199, 635, 'You can\'t parse the capacitor without parsing the haptic ADP interface!', NULL, 90, 82, 'Madilyntown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-26485920', 1612, 'Gloves', 'KITM-69528916', 895, 470, 'The GB card is down, quantify the redundant driver so we can program the TCP panel!', NULL, 15, 13, 'Mullerfurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-27322089', 6204, 'Computer', 'KITM-69528916', 513, 57, 'You can\'t override the driver without connecting the open-source THX card!', NULL, 33, 88, 'West Mustafatown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-27751732', 2638, 'Soap', 'KITM-34978378', 248, 221, 'If we synthesize the alarm, we can get to the SCSI monitor through the back-end JSON circuit!', NULL, 84, 77, 'Port Arturoborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-28581418', 7067, 'Computer', 'KITM-11010142', 322, 142, 'Use the optical SCSI transmitter, then you can override the primary sensor!', NULL, 57, 4, 'West Kimville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-29075830', 8119, 'Keyboard', 'KITM-64680217', 402, 164, 'If we generate the circuit, we can get to the IB array through the optical PNG protocol!', NULL, 87, 99, 'South Tomchester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-29444291', 2300, 'Car', 'KITM-79288554', 841, 686, 'I\'ll hack the neural SSL system, that should application the SDD array!', NULL, 93, 10, 'New Millietown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-30055587', 7429, 'Pizza', 'KITM-64680217', 630, 350, 'hacking the circuit won\'t do anything, we need to input the digital CSS port!', NULL, 29, 39, 'Lake Marion', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-30700091', 3934, 'Salad', 'KITM-51281767', 277, 331, 'If we connect the port, we can get to the IB transmitter through the cross-platform HTTP application!', NULL, 19, 4, 'Lourdesside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-30990639', 69, 'Car', 'KITM-68880084', 332, 111, 'I\'ll navigate the solid state SCSI system, that should circuit the COM application!', NULL, 43, 67, 'Dasiaport', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-31652521', 9480, 'Gloves', 'KITM-34978378', 884, 423, 'synthesizing the hard drive won\'t do anything, we need to copy the primary SQL circuit!', NULL, 60, 34, 'Mireyafurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-31895488', 4187, 'Chips', 'KITM-11010142', 591, 796, 'The PNG bus is down, copy the back-end array so we can reboot the PNG hard drive!', NULL, 21, 92, 'New Ova', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-32312434', 3776, 'Hat', 'KITM-31253996', 786, 440, 'I\'ll transmit the auxiliary HDD bandwidth, that should monitor the COM circuit!', NULL, 78, 10, 'Bobbieside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-32668988', 9273, 'Fish', 'KITM-51281767', 280, 463, 'Use the back-end THX program, then you can compress the auxiliary capacitor!', NULL, 80, 17, 'Hamillchester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-32717898', 5379, 'Computer', 'KITM-64680217', 750, 487, 'transmitting the hard drive won\'t do anything, we need to synthesize the multi-byte SSL bus!', NULL, 13, 14, 'Spinkachester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-33526808', 5579, 'Pizza', 'KITM-68880084', 889, 765, 'If we transmit the port, we can get to the HTTP circuit through the online XML panel!', NULL, 97, 86, 'Millershire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-34199322', 5490, 'Soap', 'KITM-64134553', 248, 697, 'Try to calculate the SSL microchip, maybe it will connect the optical monitor!', NULL, 33, 14, 'Lake Dylanmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-34306787', 1699, 'Car', 'KITM-79288554', 952, 264, 'I\'ll compress the auxiliary HDD firewall, that should bandwidth the SDD array!', NULL, 30, 41, 'Lake Valeriefurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-34691729', 6644, 'Fish', 'KITM-31253996', 174, 853, 'Try to quantify the USB array, maybe it will navigate the cross-platform bandwidth!', NULL, 1, 12, 'Mullermouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-34694350', 2334, 'Table', 'KITM-11010142', 500, 830, 'Use the open-source HTTP array, then you can navigate the bluetooth sensor!', NULL, 43, 47, 'East Houston', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-35032432', 1124, 'Towels', 'KITM-51281767', 881, 894, 'Try to copy the HDD driver, maybe it will navigate the back-end alarm!', NULL, 46, 62, 'Port Kaelynstad', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-35239382', 24, 'Table', 'KITM-79288554', 463, 644, 'We need to index the solid state IB array!', NULL, 29, 36, 'South Lois', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-35391661', 5986, 'Gloves', 'KITM-51281767', 520, 874, 'Use the redundant SCSI bus, then you can synthesize the primary transmitter!', NULL, 23, 58, 'Ubaldohaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-35916172', 3162, 'Shoes', 'KITM-69528916', 433, 804, 'I\'ll copy the solid state CSS bus, that should bandwidth the GB alarm!', NULL, 27, 19, 'Port Brownberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-36176913', 7523, 'Cheese', 'KITM-64134553', 148, 401, 'Try to quantify the CSS program, maybe it will synthesize the virtual array!', NULL, 33, 47, 'Helenville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-36237049', 237, 'Car', 'KITM-79288554', 919, 44, 'If we program the driver, we can get to the AI application through the 1080p ADP card!', NULL, 81, 47, 'Jessycastad', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-36866486', 4639, 'Chair', 'KITM-31253996', 339, 506, 'Try to override the SCSI port, maybe it will override the bluetooth system!', NULL, 26, 46, 'Lake Cyrusborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-37021520', 8352, 'Shirt', 'KITM-64134553', 677, 555, 'copying the system won\'t do anything, we need to index the back-end IB system!', NULL, 100, 15, 'Port Coralie', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-38176421', 2151, 'Gloves', 'KITM-11010142', 12, 846, 'The XSS system is down, transmit the 1080p monitor so we can index the FTP program!', NULL, 37, 45, 'North Carolyne', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-38219207', 2766, 'Pants', 'KITM-51281767', 560, 394, 'We need to transmit the primary SAS sensor!', NULL, 34, 98, 'Gretchenshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-38977188', 9882, 'Hat', 'KITM-79288554', 617, 521, 'bypassing the matrix won\'t do anything, we need to quantify the bluetooth COM bandwidth!', NULL, 48, 1, 'Janiyamouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39033889', 4751, 'Salad', 'KITM-31253996', 408, 860, 'I\'ll index the back-end PCI array, that should array the RSS system!', NULL, 23, 68, 'Schuylerview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39139831', 8790, 'Chicken', 'KITM-64680217', 252, 803, 'We need to calculate the virtual HDD capacitor!', NULL, 17, 63, 'O\'Keefeville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39423404', 5253, 'Bike', 'KITM-31253996', 985, 652, 'generating the application won\'t do anything, we need to generate the multi-byte RSS program!', NULL, 27, 4, 'Schadenchester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39440609', 9910, 'Chicken', 'KITM-34978378', 460, 913, 'The SAS alarm is down, transmit the digital transmitter so we can copy the SSL bandwidth!', NULL, 12, 84, 'West Nels', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39682623', 3357, 'Shirt', 'KITM-31427694', 910, 737, 'Use the solid state SMS application, then you can override the back-end alarm!', NULL, 13, 65, 'West Leaview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-39714352', 2463, 'Hat', 'KITM-31427694', 690, 605, 'We need to program the solid state FTP port!', NULL, 9, 19, 'Lake Karen', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-40082587', 7288, 'Bacon', 'KITM-64680217', 392, 237, 'Try to parse the HTTP driver, maybe it will quantify the mobile application!', NULL, 57, 41, 'New Laurence', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-40133199', 3482, 'Gloves', 'KITM-31253996', 850, 679, 'navigating the interface won\'t do anything, we need to synthesize the redundant AGP interface!', NULL, 4, 71, 'Port Lilianeport', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-40336984', 6893, 'Pizza', 'KITM-31253996', 676, 991, 'You can\'t compress the bandwidth without overriding the bluetooth SMTP bandwidth!', NULL, 54, 63, 'South Mckayla', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-41309393', 8977, 'Bike', 'KITM-31427694', 205, 103, 'bypassing the firewall won\'t do anything, we need to navigate the cross-platform XSS pixel!', NULL, 39, 45, 'Zorafurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-41695636', 6466, 'Gloves', 'KITM-31427694', 426, 383, 'If we reboot the card, we can get to the TCP capacitor through the mobile EXE card!', NULL, 18, 2, 'Joshtown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-42544246', 8315, 'Chair', 'KITM-31253996', 283, 139, 'I\'ll input the redundant PNG system, that should protocol the COM microchip!', NULL, 28, 39, 'Donnietown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-4284848', 4213, 'Table', 'KITM-11010142', 267, 849, 'We need to calculate the mobile EXE capacitor!', NULL, 89, 65, 'South Jedidiah', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-43108006', 7715, 'Pants', 'KITM-34978378', 158, 541, 'You can\'t connect the capacitor without overriding the wireless HDD panel!', NULL, 1, 35, 'Martinchester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-4364591', 1638, 'Sausages', 'KITM-64680217', 129, 863, 'indexing the panel won\'t do anything, we need to compress the mobile JSON bus!', NULL, 12, 91, 'North Amariville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-43778276', 6880, 'Computer', 'KITM-34978378', 589, 832, 'You can\'t generate the pixel without generating the wireless EXE feed!', NULL, 65, 100, 'Lake Dixie', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-44020271', 1876, 'Computer', 'KITM-64680217', 58, 38, 'The JBOD bus is down, override the auxiliary bus so we can parse the SDD sensor!', NULL, 56, 90, 'Lake Larryview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-45353059', 1726, 'Ball', 'KITM-68880084', 814, 695, 'I\'ll quantify the solid state XML feed, that should application the HTTP array!', NULL, 55, 70, 'Nikkiville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-45619319', 3822, 'Hat', 'KITM-68880084', 755, 179, 'We need to hack the auxiliary SAS circuit!', NULL, 11, 0, 'Port Jazmyne', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-45954162', 4182, 'Fish', 'KITM-64134553', 460, 736, 'We need to generate the digital CSS alarm!', NULL, 54, 0, 'Gottliebview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-45982444', 2285, 'Chair', 'KITM-11010142', 335, 268, 'You can\'t connect the interface without bypassing the cross-platform SSL monitor!', NULL, 71, 6, 'Haleighton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-46208588', 7566, 'Keyboard', 'KITM-34978378', 572, 237, 'Try to transmit the SAS pixel, maybe it will hack the bluetooth program!', NULL, 77, 72, 'Pricemouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-46318238', 3175, 'Chips', 'KITM-11010142', 378, 521, 'Use the multi-byte RSS array, then you can bypass the online protocol!', NULL, 67, 64, 'Trompmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-4649050', 6946, 'Computer', 'KITM-68880084', 1, 182, 'indexing the monitor won\'t do anything, we need to hack the cross-platform TCP microchip!', NULL, 16, 52, 'New German', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-47205316', 3171, 'Mouse', 'KITM-51281767', 833, 672, 'If we override the port, we can get to the SMS card through the virtual SSL circuit!', NULL, 90, 57, 'Milanburgh', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-48388355', 8988, 'Towels', 'KITM-31253996', 369, 271, 'The CSS bandwidth is down, bypass the multi-byte pixel so we can calculate the PNG circuit!', NULL, 59, 40, 'Hollismouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-48690798', 4481, 'Towels', 'KITM-69528916', 512, 531, 'I\'ll transmit the multi-byte COM program, that should capacitor the PNG panel!', NULL, 36, 77, 'Ardenberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-48729377', 6857, 'Soap', 'KITM-79288554', 231, 815, 'Try to quantify the TCP capacitor, maybe it will quantify the back-end alarm!', NULL, 74, 93, 'Lake Nathanaelland', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-4910897', 6981, 'Shoes', 'KITM-64680217', 412, 571, 'Try to transmit the CSS card, maybe it will compress the bluetooth alarm!', NULL, 68, 62, 'South Rodrigo', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-50384941', 6600, 'Soap', 'KITM-69528916', 48, 645, 'We need to program the auxiliary CSS port!', NULL, 0, 30, 'Adolphberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-50823429', 1847, 'Fish', 'KITM-51281767', 329, 572, 'We need to generate the 1080p USB application!', NULL, 40, 2, 'West Myrtisside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-51650199', 4769, 'Ball', 'KITM-64680217', 848, 963, 'Try to program the RAM program, maybe it will connect the redundant card!', NULL, 78, 28, 'Lake Frederique', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-52163578', 17, 'Shoes', 'KITM-45655464', 562, 910, 'We need to index the redundant JBOD matrix!', NULL, 18, 84, 'Port Andreane', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-52250749', 9503, 'Ball', 'KITM-31427694', 517, 922, 'overriding the array won\'t do anything, we need to parse the digital XML matrix!', NULL, 75, 42, 'West Coopermouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-52413157', 3082, 'Mouse', 'KITM-31253996', 640, 170, 'Use the redundant PCI program, then you can program the cross-platform sensor!', NULL, 96, 49, 'Emardbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-52825365', 1090, 'Ball', 'KITM-79288554', 799, 940, 'indexing the alarm won\'t do anything, we need to back up the haptic ADP panel!', NULL, 90, 6, 'Francescoview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-53009785', 3069, 'Pants', 'KITM-45655464', 395, 406, 'Use the primary JSON feed, then you can override the redundant circuit!', NULL, 7, 79, 'Feilland', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-53554384', 4213, 'Sausages', 'KITM-31253996', 966, 189, 'The SSL capacitor is down, override the bluetooth monitor so we can bypass the ADP bandwidth!', NULL, 80, 39, 'Lake Leonora', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-55220886', 8228, 'Chicken', 'KITM-34978378', 809, 434, 'If we quantify the circuit, we can get to the GB bandwidth through the virtual USB hard drive!', NULL, 62, 52, 'Rosenbaumbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-5669769', 5516, 'Pizza', 'KITM-31427694', 999, 221, 'calculating the bandwidth won\'t do anything, we need to index the virtual GB pixel!', NULL, 50, 33, 'South Alec', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57050238', 6438, 'Computer', 'KITM-31427694', 30, 966, 'I\'ll calculate the redundant SSL circuit, that should microchip the SMS circuit!', NULL, 18, 48, 'Williamsonton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57333973', 9470, 'Computer', 'KITM-31253996', 328, 794, 'If we quantify the feed, we can get to the AI sensor through the cross-platform FTP bandwidth!', NULL, 78, 14, 'Batzbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57369524', 9604, 'Towels', 'KITM-11010142', 494, 626, 'transmitting the hard drive won\'t do anything, we need to navigate the redundant IB system!', NULL, 81, 78, 'North Katelinberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57557311', 591, 'Salad', 'KITM-64134553', 134, 328, 'I\'ll reboot the wireless FTP interface, that should array the SSL system!', NULL, 84, 52, 'South Isabellatown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57799056', 6731, 'Hat', 'KITM-51281767', 700, 1, 'You can\'t transmit the interface without generating the mobile SAS alarm!', NULL, 79, 45, 'South Issac', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-57813149', 1713, 'Ball', 'KITM-45655464', 296, 306, 'If we navigate the program, we can get to the GB protocol through the redundant SSL driver!', NULL, 49, 60, 'Rosellaville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-58431717', 5963, 'Pants', 'KITM-64134553', 785, 570, 'The SDD transmitter is down, connect the cross-platform circuit so we can program the RAM feed!', NULL, 33, 23, 'Sidview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-5857423', 6705, 'Gloves', 'KITM-64134553', 929, 331, 'compressing the bandwidth won\'t do anything, we need to quantify the bluetooth EXE program!', NULL, 36, 58, 'Xandershire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-58923674', 7335, 'Shirt', 'KITM-45655464', 226, 254, 'Try to input the SAS firewall, maybe it will bypass the digital capacitor!', NULL, 31, 10, 'Krishaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-59131095', 3261, 'Mouse', 'KITM-64134553', 329, 845, 'I\'ll copy the 1080p GB sensor, that should application the PCI card!', NULL, 78, 93, 'Port Bradfordfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-59148363', 6591, 'Computer', 'KITM-45655464', 994, 841, 'Use the back-end PNG microchip, then you can compress the back-end panel!', NULL, 50, 33, 'Kareemville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-59159231', 2993, 'Mouse', 'KITM-79288554', 146, 671, 'Use the cross-platform SQL firewall, then you can bypass the redundant interface!', NULL, 81, 7, 'Port Nicklausstad', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-59409433', 2208, 'Shoes', 'KITM-51281767', 145, 587, 'If we bypass the card, we can get to the JSON array through the digital CSS application!', NULL, 22, 96, 'Gayton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-59676304', 2796, 'Hat', 'KITM-31427694', 904, 431, 'bypassing the matrix won\'t do anything, we need to connect the mobile USB card!', NULL, 71, 89, 'East Bobbyborough', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-61010195', 5603, 'Towels', 'KITM-68880084', 242, 840, 'The CSS program is down, parse the 1080p protocol so we can input the RSS port!', NULL, 64, 55, 'South Damianbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-61092450', 2338, 'Bike', 'KITM-31253996', 846, 1000, 'I\'ll connect the optical JBOD program, that should array the SAS system!', NULL, 84, 93, 'New Wallaceton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-61127573', 5191, 'Fish', 'KITM-34978378', 41, 411, 'We need to override the back-end RSS circuit!', NULL, 9, 0, 'Williamsonmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-61753154', 3612, 'Cheese', 'KITM-64680217', 593, 978, 'If we copy the driver, we can get to the SQL panel through the redundant GB card!', NULL, 52, 64, 'Haroldchester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-62375668', 7819, 'Table', 'KITM-69528916', 29, 339, 'We need to synthesize the solid state RAM feed!', NULL, 9, 56, 'West Jamesonshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-64130310', 2, 'Pizza', 'KITM-79288554', 51, 867, 'The RAM panel is down, copy the virtual alarm so we can input the ADP firewall!', NULL, 94, 50, 'New Jarrett', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-64182914', 8612, 'Fish', 'KITM-34978378', 476, 950, 'Try to program the RAM array, maybe it will bypass the wireless capacitor!', NULL, 91, 53, 'Mrazmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-6455330', 2188, 'Bacon', 'KITM-64680217', 245, 546, 'The THX sensor is down, bypass the redundant transmitter so we can override the SAS bus!', NULL, 43, 25, 'West Kristyhaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-64762937', 7364, 'Chicken', 'KITM-79288554', 717, 36, 'Use the neural AI circuit, then you can back up the online firewall!', NULL, 26, 71, 'Constantinfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-64937796', 452, 'Soap', 'KITM-64134553', 106, 585, 'We need to override the digital XSS system!', NULL, 76, 51, 'Gleichnerview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-65045110', 1482, 'Mouse', 'KITM-51281767', 328, 376, 'Try to navigate the PNG protocol, maybe it will synthesize the back-end application!', NULL, 43, 33, 'Lake Audra', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-65482100', 5023, 'Car', 'KITM-68880084', 766, 197, 'I\'ll synthesize the haptic AI protocol, that should circuit the JBOD card!', NULL, 32, 52, 'Port Emely', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-65662953', 6318, 'Towels', 'KITM-68880084', 634, 459, 'The SSL bandwidth is down, index the auxiliary feed so we can back up the RAM bus!', NULL, 6, 7, 'Flossiebury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-67022628', 7379, 'Fish', 'KITM-69528916', 189, 951, 'Use the primary HTTP hard drive, then you can hack the auxiliary firewall!', NULL, 77, 31, 'New Spencermouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-67373661', 7246, 'Pants', 'KITM-31253996', 497, 422, 'If we connect the bus, we can get to the SDD feed through the multi-byte AI alarm!', NULL, 56, 18, 'Aufderharton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-67502553', 3296, 'Keyboard', 'KITM-31427694', 287, 936, 'I\'ll index the 1080p GB system, that should interface the TCP card!', NULL, 94, 85, 'South Keenanfurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-67949519', 5884, 'Bacon', 'KITM-45655464', 728, 960, 'navigating the panel won\'t do anything, we need to synthesize the digital SAS protocol!', NULL, 96, 28, 'Kuphalview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-67961077', 6598, 'Mouse', 'KITM-34978378', 451, 553, 'We need to input the mobile SMTP card!', NULL, 74, 82, 'Port Alexandro', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-68834360', 9375, 'Shoes', 'KITM-34978378', 128, 914, 'You can\'t calculate the card without calculating the 1080p FTP monitor!', NULL, 87, 87, 'Lake Devenport', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-69052180', 4733, 'Hat', 'KITM-11010142', 519, 581, 'Try to input the AI interface, maybe it will back up the auxiliary card!', NULL, 87, 55, 'Kacishire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-69270171', 798, 'Mouse', 'KITM-45655464', 935, 664, 'The TCP application is down, override the bluetooth panel so we can navigate the XML monitor!', NULL, 66, 7, 'Lake Olin', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-69784671', 3993, 'Chips', 'KITM-11010142', 146, 293, 'Try to connect the USB sensor, maybe it will hack the online panel!', NULL, 92, 18, 'Braunhaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-70566724', 4714, 'Towels', 'KITM-45655464', 242, 674, 'If we reboot the protocol, we can get to the SSL feed through the neural HDD driver!', NULL, 93, 87, 'Port Nya', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-7063068', 1510, 'Shirt', 'KITM-64134553', 803, 445, 'I\'ll reboot the digital AI transmitter, that should array the HTTP interface!', NULL, 71, 98, 'Jamarmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-71046673', 5134, 'Sausages', 'KITM-31427694', 99, 980, 'Use the redundant SCSI pixel, then you can quantify the virtual microchip!', NULL, 15, 23, 'Harveyland', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-7104769', 8823, 'Computer', 'KITM-79288554', 696, 894, 'The SQL application is down, hack the redundant protocol so we can bypass the FTP microchip!', NULL, 78, 85, 'West General', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-71139250', 9918, 'Computer', 'KITM-79288554', 653, 520, 'I\'ll override the digital SMTP firewall, that should matrix the SDD card!', NULL, 41, 67, 'North Brennon', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-71634194', 9980, 'Car', 'KITM-34978378', 228, 638, 'You can\'t navigate the capacitor without synthesizing the solid state COM firewall!', NULL, 57, 2, 'West Vicky', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-72802531', 8688, 'Bike', 'KITM-31427694', 591, 139, 'Use the primary XSS bus, then you can generate the multi-byte port!', NULL, 92, 92, 'East Scotty', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-7286332', 8448, 'Shirt', 'KITM-64134553', 248, 932, 'You can\'t hack the transmitter without compressing the neural SAS microchip!', NULL, 58, 35, 'Bechtelarmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-73443522', 4291, 'Chair', 'KITM-45655464', 473, 476, 'The SDD sensor is down, generate the redundant capacitor so we can calculate the SMTP monitor!', NULL, 47, 4, 'Stoltenbergfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-74075442', 8380, 'Pants', 'KITM-64134553', 688, 641, 'The PCI feed is down, synthesize the optical interface so we can transmit the SMS circuit!', NULL, 17, 26, 'North Nataliemouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-74180693', 6425, 'Pizza', 'KITM-64680217', 316, 680, 'If we bypass the monitor, we can get to the JSON interface through the open-source XML bus!', NULL, 30, 73, 'Lake Kaelahaven', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-75028737', 8073, 'Chips', 'KITM-79288554', 840, 829, 'If we generate the pixel, we can get to the RSS port through the primary CSS interface!', NULL, 62, 35, 'South Nona', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-7571051', 1496, 'Salad', 'KITM-31427694', 257, 245, 'overriding the hard drive won\'t do anything, we need to connect the auxiliary SMS program!', NULL, 83, 65, 'Port Adeline', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-76423071', 7149, 'Sausages', 'KITM-64134553', 566, 789, 'You can\'t transmit the interface without hacking the cross-platform HTTP program!', NULL, 66, 74, 'North Katelynfurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-76725547', 3717, 'Shirt', 'KITM-51281767', 541, 892, 'Try to bypass the AGP firewall, maybe it will quantify the open-source protocol!', NULL, 24, 61, 'North Nadiashire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-77512790', 6981, 'Sausages', 'KITM-45655464', 609, 14, 'I\'ll bypass the wireless SSL monitor, that should protocol the SMTP protocol!', NULL, 12, 43, 'Gerholdtown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-77651081', 7992, 'Car', 'KITM-68880084', 883, 623, 'Use the virtual SSL microchip, then you can bypass the multi-byte bus!', NULL, 86, 99, 'Bayerview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-7881826', 7905, 'Gloves', 'KITM-11010142', 966, 997, 'Use the multi-byte HDD firewall, then you can transmit the digital alarm!', NULL, 45, 45, 'Port Macton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-78863174', 3825, 'Sausages', 'KITM-64680217', 79, 581, 'Try to hack the HTTP sensor, maybe it will back up the auxiliary driver!', NULL, 33, 55, 'Kuhlmanshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-78972423', 1519, 'Computer', 'KITM-45655464', 80, 18, 'You can\'t compress the alarm without overriding the optical TCP alarm!', NULL, 26, 32, 'Port Alexanderberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-79200824', 9696, 'Hat', 'KITM-45655464', 536, 705, 'If we override the card, we can get to the SAS bus through the bluetooth USB bandwidth!', NULL, 81, 77, 'Rennerville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-80089866', 3459, 'Keyboard', 'KITM-51281767', 290, 479, 'I\'ll transmit the primary XSS program, that should bus the SMS capacitor!', NULL, 62, 16, 'South Ashleymouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-80183593', 1904, 'Fish', 'KITM-69528916', 398, 408, 'If we index the firewall, we can get to the FTP port through the redundant IB capacitor!', NULL, 59, 31, 'Lake Marcos', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-8056045', 8788, 'Hat', 'KITM-11010142', 855, 557, 'The IB panel is down, navigate the multi-byte capacitor so we can input the HTTP pixel!', NULL, 75, 47, 'Walterbury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-8085600', 97, 'Pants', 'KITM-11010142', 270, 180, 'The HTTP sensor is down, bypass the multi-byte card so we can quantify the AI hard drive!', NULL, 1, 32, 'Lynchton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-81241431', 8194, 'Chips', 'KITM-64680217', 41, 606, 'Try to transmit the AI matrix, maybe it will program the redundant pixel!', NULL, 94, 89, 'Ambroseberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-81319514', 7846, 'Hat', 'KITM-79288554', 388, 700, 'Use the multi-byte SMS program, then you can generate the multi-byte feed!', NULL, 18, 39, 'West Vella', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-81660512', 3834, 'Computer', 'KITM-64134553', 290, 415, 'We need to quantify the haptic HDD array!', NULL, 15, 60, 'Armstrongberg', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-82638764', 2555, 'Chair', 'KITM-45655464', 193, 498, 'Try to synthesize the SMS protocol, maybe it will compress the haptic protocol!', NULL, 14, 87, 'South Lauryn', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-82790652', 9010, 'Pants', 'KITM-31253996', 257, 449, 'You can\'t hack the alarm without backing up the solid state HTTP system!', NULL, 25, 59, 'North Federico', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-82858570', 8578, 'Mouse', 'KITM-69528916', 585, 904, 'The SCSI transmitter is down, reboot the auxiliary matrix so we can hack the THX protocol!', NULL, 46, 2, 'Port Khalidville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-82874064', 9386, 'Chicken', 'KITM-34978378', 446, 1, 'You can\'t back up the feed without indexing the mobile SAS interface!', NULL, 86, 62, 'North Lanceton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-83873473', 4960, 'Soap', 'KITM-51281767', 999, 82, 'Try to navigate the AI transmitter, maybe it will compress the redundant interface!', NULL, 5, 31, 'Greenton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-86342275', 5457, 'Computer', 'KITM-45655464', 851, 968, 'navigating the panel won\'t do anything, we need to calculate the online SDD program!', NULL, 85, 89, 'Felipafurt', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-86835707', 8655, 'Pizza', 'KITM-34978378', 180, 613, 'I\'ll quantify the multi-byte GB firewall, that should feed the HDD feed!', NULL, 81, 94, 'Bergstrombury', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-8689450', 3775, 'Shoes', 'KITM-69528916', 499, 728, 'I\'ll navigate the solid state TCP feed, that should driver the FTP feed!', NULL, 58, 70, 'Lake Maye', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-86913219', 8897, 'Car', 'KITM-45655464', 778, 522, 'The SQL sensor is down, calculate the back-end application so we can transmit the JSON card!', NULL, 70, 64, 'Strackemouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-86988972', 2145, 'Ball', 'KITM-69528916', 722, 987, 'I\'ll generate the back-end SAS pixel, that should pixel the PCI protocol!', NULL, 91, 70, 'Port Aureliemouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-87314066', 281, 'Bike', 'KITM-79288554', 876, 941, 'If we copy the interface, we can get to the ADP pixel through the cross-platform XSS interface!', NULL, 76, 40, 'Goyetteshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-87404069', 5646, 'Bike', 'KITM-45655464', 664, 613, 'If we quantify the hard drive, we can get to the ADP matrix through the virtual SCSI monitor!', NULL, 10, 72, 'Port Jeraldview', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-88206878', 1050, 'Pants', 'KITM-34978378', 754, 839, 'Use the wireless XSS program, then you can hack the cross-platform sensor!', NULL, 28, 33, 'Lake Walton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-88256838', 5189, 'Car', 'KITM-68880084', 698, 371, 'Use the solid state PNG sensor, then you can calculate the virtual transmitter!', NULL, 8, 15, 'Treutelshire', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-88388323', 7362, 'Cheese', 'KITM-64134553', 255, 917, 'You can\'t input the protocol without programming the 1080p HTTP capacitor!', NULL, 37, 82, 'North Vinniechester', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-8842094', 4580, 'Bike', 'KITM-69528916', 578, 218, 'You can\'t back up the card without quantifying the solid state TCP firewall!', NULL, 49, 10, 'South Pattieville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-88426337', 3017, 'Computer', 'KITM-68880084', 27, 285, 'The XML driver is down, program the optical hard drive so we can parse the JBOD panel!', NULL, 55, 17, 'West Elwyn', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-88656541', 4107, 'Soap', 'KITM-31253996', 219, 860, 'bypassing the sensor won\'t do anything, we need to reboot the auxiliary PCI feed!', NULL, 30, 24, 'Volkmanburgh', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-89081187', 8514, 'Chair', 'KITM-51281767', 522, 54, 'navigating the array won\'t do anything, we need to connect the neural ADP transmitter!', NULL, 79, 50, 'Lake Marisa', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-89116436', 3241, 'Hat', 'KITM-68880084', 830, 517, 'If we back up the array, we can get to the XML transmitter through the primary TCP protocol!', NULL, 76, 37, 'Carrollville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-90294797', 5778, 'Soap', 'KITM-11010142', 682, 288, 'Try to index the SQL port, maybe it will transmit the online program!', NULL, 58, 91, 'Hyattfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-90747332', 8082, 'Cheese', 'KITM-79288554', 488, 149, 'If we copy the transmitter, we can get to the USB card through the auxiliary COM hard drive!', NULL, 62, 36, 'Port Mateo', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-90829901', 4570, 'Gloves', 'KITM-45655464', 236, 295, 'I\'ll copy the auxiliary PCI microchip, that should monitor the RAM firewall!', NULL, 70, 73, 'Emmetville', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-91232918', 5089, 'Car', 'KITM-68880084', 175, 704, 'If we quantify the transmitter, we can get to the HDD firewall through the primary SMS capacitor!', NULL, 93, 14, 'South Mina', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-9138608', 2801, 'Bacon', 'KITM-64134553', 608, 430, 'The SAS sensor is down, index the auxiliary protocol so we can reboot the SMTP interface!', NULL, 36, 30, 'South Josefa', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-92132515', 6561, 'Chair', 'KITM-69528916', 984, 763, 'We need to back up the open-source SDD panel!', NULL, 0, 73, 'West Darwintown', 0, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-92363535', 7430, 'Soap', 'KITM-79288554', 627, 657, 'You can\'t navigate the firewall without synthesizing the 1080p GB program!', NULL, 31, 16, 'Hansenside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-92389680', 922, 'Car', 'KITM-64680217', 443, 594, 'The XML capacitor is down, navigate the mobile panel so we can copy the EXE array!', NULL, 52, 82, 'East Mandy', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-93149853', 7564, 'Gloves', 'KITM-11010142', 857, 335, 'You can\'t override the panel without indexing the primary XML port!', NULL, 93, 3, 'Carterton', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-93576711', 231, 'Pizza', 'KITM-51281767', 941, 990, 'The ADP circuit is down, index the digital bus so we can override the RAM capacitor!', NULL, 83, 99, 'East Deontae', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-93868898', 7800, 'Cheese', 'KITM-31427694', 652, 40, 'Use the 1080p TCP firewall, then you can calculate the redundant circuit!', NULL, 86, 97, 'Lake Elenorside', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-94150812', 9282, 'Shoes', 'KITM-31253996', 149, 331, 'If we generate the pixel, we can get to the CSS feed through the mobile PNG program!', NULL, 44, 98, 'West Eriberto', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-94366372', 8214, 'Pizza', 'KITM-11010142', 57, 768, 'I\'ll program the solid state EXE card, that should microchip the SDD alarm!', NULL, 17, 69, 'O\'Konfort', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-94904436', 8134, 'Shirt', 'KITM-69528916', 867, 246, 'If we override the sensor, we can get to the SCSI bandwidth through the neural AGP bandwidth!', NULL, 29, 21, 'East Leilaniside', 0, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-95221774', 81, 'Hat', 'KITM-69528916', 514, 635, 'If we generate the firewall, we can get to the GB system through the multi-byte COM sensor!', NULL, 50, 30, 'Altenwerthstad', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-95552193', 2849, 'Fish', 'KITM-11010142', 486, 907, 'We need to generate the redundant SCSI bus!', NULL, 17, 40, 'Steubertown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-95819688', 5995, 'Table', 'KITM-69528916', 298, 137, 'We need to quantify the cross-platform AGP bus!', NULL, 19, 18, 'Port Candelario', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97249645', 9113, 'Chair', 'KITM-69528916', 513, 854, 'The RAM feed is down, generate the multi-byte microchip so we can back up the XML circuit!', NULL, 69, 18, 'Wardland', 0, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97735034', 8280, 'Shoes', 'KITM-45655464', 152, 427, 'The SMS sensor is down, index the auxiliary card so we can calculate the XSS firewall!', NULL, 38, 36, 'North Orval', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97788628', 2731, 'Table', 'KITM-31253996', 663, 271, 'Try to override the USB driver, maybe it will compress the wireless capacitor!', NULL, 4, 91, 'West Ally', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97855908', 6184, 'Hat', 'KITM-79288554', 367, 568, 'We need to connect the mobile SQL transmitter!', NULL, 92, 18, 'South Lailaburgh', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97880006', 9472, 'Keyboard', 'KITM-31253996', 266, 964, 'The PNG panel is down, index the haptic alarm so we can calculate the RSS microchip!', NULL, 81, 95, 'East Valentin', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-97928761', 4296, 'Mouse', 'KITM-79288554', 37, 154, 'We need to connect the digital SMS program!', NULL, 36, 98, 'West Rollin', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-98582215', 7280, 'Fish', 'KITM-64134553', 892, 197, 'compressing the circuit won\'t do anything, we need to override the bluetooth XSS program!', NULL, 23, 23, 'Lake Itzel', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-99018839', 9387, 'Shirt', 'KITM-45655464', 408, 209, 'connecting the transmitter won\'t do anything, we need to bypass the multi-byte XML monitor!', NULL, 31, 70, 'West Charitytown', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-99111704', 8661, 'Gloves', 'KITM-64134553', 580, 957, 'Use the neural PCI port, then you can parse the open-source system!', NULL, 75, 56, 'West Manuelmouth', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51'),
('ITM-99790093', 7171, 'Hat', 'KITM-34978378', 403, 526, 'We need to copy the virtual PCI bandwidth!', NULL, 23, 72, 'Port Hector', 1, '2019-10-09 17:43:51', '2019-10-09 17:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `id_detail_pembelian` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_pembelian` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_barang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kategori_barang_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_barang` text COLLATE utf8_unicode_ci NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `detail_pembelian_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `detail_pembelian_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id_detail_pembelian`, `id_pembelian`, `id_barang`, `kategori_barang_id`, `nama_barang`, `harga_beli`, `quantity`, `harga_total`, `published`, `detail_pembelian_created_at`, `detail_pembelian_updated_at`) VALUES
('DBLI-15700273769374542', 'BLI-1910020024', 'ITM-11583308', 'KITM-64134553', 'HV', 250, 2, 500, 1, '2019-10-09 17:43:52', '2019-10-09 17:43:52'),
('DBLI-15700273769409225', 'BLI-1910020024', 'ITM-1009528', 'KITM-64134553', 'nova', 200, 5, 1000, 1, '2019-10-09 17:43:52', '2019-10-09 17:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail_penjualan` varchar(50) NOT NULL,
  `id_penjualan` varchar(50) NOT NULL,
  `id_barang` varchar(50) NOT NULL,
  `kategori_barang_id` varchar(50) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `detail_penjualan_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `detail_penjualan_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail_penjualan`, `id_penjualan`, `id_barang`, `kategori_barang_id`, `nama_barang`, `harga_jual`, `quantity`, `harga_total`, `published`, `detail_penjualan_created_at`, `detail_penjualan_updated_at`) VALUES
('DPJL-15707577359595641494', 'PJL-15707576277442120', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 1000, 206000, 1, '2019-10-11 08:35:35', '2019-10-11 08:35:35'),
('DPJL-15707578158969285220', 'PJL-15707578010716827', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:36:55', '2019-10-11 08:36:55'),
('DPJL-157075781595028066720', 'PJL-15707578010716827', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:36:55', '2019-10-11 08:36:55'),
('DPJL-157075790742147433955', 'PJL-15707578910776441', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:38:27', '2019-10-11 08:38:27'),
('DPJL-157075790746738133923', 'PJL-15707578910776441', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:38:27', '2019-10-11 08:38:27'),
('DPJL-157075796421390844412', 'PJL-15707579474818273', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:39:24', '2019-10-11 08:39:24'),
('DPJL-157075796425912224805', 'PJL-15707579474818273', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:39:24', '2019-10-11 08:39:24'),
('DPJL-157075796432630865290', 'PJL-15707579474818273', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 10, 2060, 1, '2019-10-11 08:39:24', '2019-10-11 08:39:24'),
('DPJL-157075801243588361899', 'PJL-15707579946925707', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:40:12', '2019-10-11 08:40:12'),
('DPJL-157075801249029980361', 'PJL-15707579946925707', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:40:12', '2019-10-11 08:40:12'),
('DPJL-15707580125239763547', 'PJL-15707579946925707', 'ITM-11300807', 'KITM-64134553', 'supardi', 732, 100, 73200, 1, '2019-10-11 08:40:12', '2019-10-11 08:40:12'),
('DPJL-157075806661031383120', 'PJL-15707580487548267', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:41:06', '2019-10-11 08:41:06'),
('DPJL-157075806668854113141', 'PJL-15707580487548267', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:41:06', '2019-10-11 08:41:06'),
('DPJL-157075806675453089010', 'PJL-15707580487548267', 'ITM-11300807', 'KITM-64134553', 'supardi', 732, 100, 73200, 1, '2019-10-11 08:41:06', '2019-10-11 08:41:06'),
('DPJL-157075806681070028216', 'PJL-15707580487548267', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 200, 41200, 1, '2019-10-11 08:41:06', '2019-10-11 08:41:06'),
('DPJL-15707581699142689629', 'PJL-15707581573678029', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:42:49', '2019-10-11 08:42:49'),
('DPJL-157075816996539661534', 'PJL-15707581573678029', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:42:49', '2019-10-11 08:42:49'),
('DPJL-157075821876929716609', 'PJL-15707581994823885', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 1000, 780000, 1, '2019-10-11 08:43:38', '2019-10-11 08:43:38'),
('DPJL-157075821881722230766', 'PJL-15707581994823885', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 1000, 867000, 1, '2019-10-11 08:43:38', '2019-10-11 08:43:38'),
('DPJL-157075868674810315407', 'PJL-15707586702286501', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:51:26', '2019-10-11 08:51:26'),
('DPJL-157075868680255556784', 'PJL-15707586702286501', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:51:26', '2019-10-11 08:51:26'),
('DPJL-157075868683585273075', 'PJL-15707586702286501', 'ITM-11300807', 'KITM-64134553', 'supardi', 732, 100, 73200, 1, '2019-10-11 08:51:26', '2019-10-11 08:51:26'),
('DPJL-157075873838215880942', 'PJL-15707587204916675', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:52:18', '2019-10-11 08:52:18'),
('DPJL-157075873843117830251', 'PJL-15707587204916675', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:52:18', '2019-10-11 08:52:18'),
('DPJL-157075873846410646205', 'PJL-15707587204916675', 'ITM-11300807', 'KITM-64134553', 'supardi', 732, 2, 1464, 1, '2019-10-11 08:52:18', '2019-10-11 08:52:18'),
('DPJL-157075877205972342596', 'PJL-15707587204916675', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:52:52', '2019-10-11 08:52:52'),
('DPJL-157075877210134987824', 'PJL-15707587204916675', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:52:52', '2019-10-11 08:52:52'),
('DPJL-157075877213421812965', 'PJL-15707587204916675', 'ITM-11300807', 'KITM-64134553', 'supardi', 732, 2, 1464, 1, '2019-10-11 08:52:52', '2019-10-11 08:52:52'),
('DPJL-157075886714078009105', 'PJL-15707588511269370', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-10-11 08:54:27', '2019-10-11 08:54:27'),
('DPJL-157075886719741651246', 'PJL-15707588511269370', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-10-11 08:54:27', '2019-10-11 08:54:27'),
('DPJL-157075886727562049231', 'PJL-15707588511269370', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 100, 20600, 1, '2019-10-11 08:54:27', '2019-10-11 08:54:27'),
('DPJL-157300012523579326205', 'PJL-15729999892589864', 'ITM-10645896', 'KITM-64134553', 'Renil 100', 500, 12, 6000, 1, '2019-11-06 07:28:45', '2019-11-06 07:28:45'),
('DPJL-157300067954757600482', 'PJL-15730006276933986', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 1010, 208060, 1, '2019-11-06 07:37:59', '2019-11-06 07:37:59'),
('DPJL-157300067959916571224', 'PJL-15730006276933986', 'ITM-11226377', 'KITM-64134553', 'Skim 100', 945, 200, 189000, 1, '2019-11-06 07:37:59', '2019-11-06 07:37:59'),
('DPJL-157300465417337169280', 'PJL-15730046280871904', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 100, 20600, 1, '2019-11-06 08:44:14', '2019-11-06 08:44:14'),
('DPJL-157300477535968254910', 'PJL-15730047327139431', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 1000, 206000, 1, '2019-11-06 08:46:15', '2019-11-06 08:46:15'),
('DPJL-157300560084828033609', 'PJL-15730055642941658', 'ITM-1009528', 'KITM-64134553', 'nova', 942, 1000, 942000, 1, '2019-11-06 09:00:00', '2019-11-06 09:00:00'),
('DPJL-15732809832293016601', 'PJL-15732808927202995', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 110, 85800, 1, '2019-11-09 13:29:43', '2019-11-09 13:29:43'),
('DPJL-157328098343045298457', 'PJL-15732808927202995', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 110, 95370, 1, '2019-11-09 13:29:43', '2019-11-09 13:29:43'),
('DPJL-157328187333494780870', 'PJL-15732817791206245', 'ITM-10305266', 'KITM-64134553', 'nova lufain', 206, 1000, 206000, 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('DPJL-15732818733911528650', 'PJL-15732817791206245', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('DPJL-157328187339211519018', 'PJL-15732817791206245', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('DPJL-157328187339382004137', 'PJL-15732817791206245', 'ITM-10645896', 'KITM-64134553', 'Renil 100', 500, 1000, 500000, 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('DPJL-157328187339449390880', 'PJL-15732817791206245', 'ITM-11226377', 'KITM-64134553', 'Skim 100', 945, 200, 189000, 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('DPJL-157328360623799515120', 'PJL-15732835613448883', 'ITM-1009528', 'KITM-64134553', 'nova', 942, 1000, 942000, 1, '2019-11-09 14:13:26', '2019-11-09 14:13:26'),
('DPJL-15732837548165096955', 'PJL-15732836967004674', 'ITM-1009528', 'KITM-64134553', 'nova', 942, 1000, 942000, 1, '2019-11-09 14:15:54', '2019-11-09 14:15:54'),
('DPJL-157328506232362476622', 'PJL-15732850142413462', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 1000, 780000, 1, '2019-11-09 14:37:42', '2019-11-09 14:37:42'),
('DPJL-157328506233242035901', 'PJL-15732850142413462', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 1000, 867000, 1, '2019-11-09 14:37:42', '2019-11-09 14:37:42'),
('DPJL-157328542083395648469', 'PJL-15732852100023625', 'ITM-1009528', 'KITM-64134553', 'nova', 942, 1000, 942000, 1, '2019-11-09 14:43:40', '2019-11-09 14:43:40'),
('DPJL-157328559067793102686', 'PJL-15732854783445695', 'ITM-11377193', 'KITM-64134553', 'Masamix Bro', 780, 100, 78000, 1, '2019-11-09 14:46:30', '2019-11-09 14:46:30'),
('DPJL-157328559075875221052', 'PJL-15732854783445695', 'ITM-64130310', 'KITM-79288554', 'Pizza', 867, 100, 86700, 1, '2019-11-09 14:46:30', '2019-11-09 14:46:30'),
('DPJL-157328635393777880394', 'PJL-15732862981537351', 'ITM-11226377', 'KITM-64134553', 'Skim 100', 945, 100, 94500, 1, '2019-11-09 14:59:13', '2019-11-09 14:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `id_hutang` varchar(50) NOT NULL,
  `no_faktur_pembelian` int(11) NOT NULL,
  `id_suplier` varchar(20) NOT NULL,
  `hutang_tanggal_faktur` date NOT NULL,
  `hutang_termin` varchar(1) NOT NULL DEFAULT '1',
  `hutang_jatuh_tempo` date NOT NULL,
  `hutang_total_faktur` int(11) NOT NULL,
  `hutang_terbayar` int(11) NOT NULL DEFAULT '0',
  `hutang_sisa` int(11) NOT NULL,
  `hutang_status` char(11) NOT NULL DEFAULT 'Belum Lunas',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `hutang_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hutang_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hutang_created_by` varchar(50) NOT NULL,
  `hutang_updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hutang`
--

INSERT INTO `hutang` (`id_hutang`, `no_faktur_pembelian`, `id_suplier`, `hutang_tanggal_faktur`, `hutang_termin`, `hutang_jatuh_tempo`, `hutang_total_faktur`, `hutang_terbayar`, `hutang_sisa`, `hutang_status`, `published`, `hutang_created_at`, `hutang_updated_at`, `hutang_created_by`, `hutang_updated_by`) VALUES
('HTG-1905170002', 257943, 'SPL-1905090001', '2019-05-17', '1', '2019-05-18', 12345, 12345, 0, 'Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-88176155', 'KR-88176155'),
('HTG-1905170003', 678, 'SPL-1905090001', '2019-05-17', '1', '2019-05-19', 12345, 12345, 0, 'Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-88176155', 'KR-88176155'),
('HTG-1905200004', 12345, 'SPL-1905090002', '2019-05-20', '1', '2019-06-19', 125000, 0, 0, 'Belum Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-88176155', 'KR-88176155'),
('HTG-1905200005', 37896, 'SPL-1905090003', '2019-05-20', '1', '2019-05-21', 250, 150, 100, 'Belum Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-88176155', 'KR-88176155'),
('HTG-1908030006', 8576456, 'SPL-1905100005', '2019-08-03', '1', '2019-08-03', 6000, 0, 5500, 'Belum Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-88176155', 'KR-88176155'),
('HTG-43567', 123, 'SPL-1905090001', '2019-05-12', '3', '2019-05-14', 500000, 500000, 0, 'Lunas', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53', 'KR-11336808', 'KR-11336808');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(50) NOT NULL,
  `nomor_induk_karyawan` varchar(30) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '1',
  `photo_profile` text NOT NULL,
  `posisi_jabatan` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nomor_induk_karyawan`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `sex`, `photo_profile`, `posisi_jabatan`, `published`, `created_at`, `updated_at`) VALUES
('KR-11336808', '34964691', 'Janae Bergnaum I', 'Bechtelarhaven', 'Brookville', '2019-03-30', 1, 'https://s3.amazonaws.com/uifaces/faces/twitter/theonlyzeke/128.jpg', 'Dynamic Directives Facilitator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-12147865', '85247252', 'Bianka Hermann', 'Franeckiville', 'East Jacinthefurt', '2019-03-30', 0, 'https://s3.amazonaws.com/uifaces/faces/twitter/badlittleduck/128.jpg', 'Internal Interactions Liaison', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-14623720', '4816460', 'Arden Maggio II', 'Christiansenfurt', 'Port Levibury', '2019-03-30', 0, 'https://s3.amazonaws.com/uifaces/faces/twitter/andysolomon/128.jpg', 'Dynamic Operations Orchestrator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-16866400', '15206374', 'Oswaldo Fay', 'Tillmanmouth', 'Elissafurt', '2019-03-30', 1, 'https://s3.amazonaws.com/uifaces/faces/twitter/antjanus/128.jpg', 'Legacy Research Facilitator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-20154964', '72395898', 'Eliezer Herzog', 'McKenzieberg', 'Huldachester', '2019-03-30', 1, 'https://s3.amazonaws.com/uifaces/faces/twitter/rodnylobos/128.jpg', 'Lead Integration Manager', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-23252674', '57634533', 'Tressie Schmidt Sr.', 'Carmeloside', 'North Lonzo', '2019-03-30', 1, 'https://s3.amazonaws.com/uifaces/faces/twitter/afusinatto/128.jpg', 'Human Interactions Facilitator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-73837792', '34430600', 'Ms. Markus Borer', 'South Velda', 'Walterbury', '2019-03-30', 0, 'https://s3.amazonaws.com/uifaces/faces/twitter/netonet_il/128.jpg', 'Product Brand Liaison', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-78733680', '65132104', 'Lacy Dare', 'Coleberg', 'New Tiffanyland', '2019-03-30', 0, 'https://s3.amazonaws.com/uifaces/faces/twitter/vigobronx/128.jpg', 'Legacy Integration Administrator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-85746740', '59417204', 'Dorris Ferry Sr.', 'Ayanaborough', 'New Justine', '2019-03-30', 1, 'https://s3.amazonaws.com/uifaces/faces/twitter/gu5taf/128.jpg', 'Central Functionality Orchestrator', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53'),
('KR-88176155', '8815231', 'Nova', 'Modestaberg', 'New Larissaview', '2019-03-30', 0, 'https://s3.amazonaws.com/uifaces/faces/twitter/liminha/128.jpg', 'Regional Intranet Assistant', 1, '2019-10-09 17:43:53', '2019-10-09 17:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `kategori_barang_id` varchar(50) NOT NULL,
  `nama_kategori` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `kategori_barang_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kategori_barang_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`kategori_barang_id`, `nama_kategori`, `published`, `kategori_barang_created_at`, `kategori_barang_updated_at`) VALUES
('KITM-11010142', 'Industrial', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-31253996', 'Barang/Alat', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-31427694', 'Home', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-34978378', 'Electronics', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-45655464', 'Baby', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-51281767', 'Baby', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-64134553', 'OVVD', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-64680217', 'Pakan', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-68880084', 'Jewelery', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-69528916', 'Industrial', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('KITM-79288554', 'Music', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `mandiri`
--

CREATE TABLE `mandiri` (
  `id_mandiri` varchar(50) NOT NULL,
  `nama_mandiri` varchar(256) NOT NULL,
  `alamat_mandiri` varchar(256) NOT NULL,
  `identitas_mandiri` varchar(30) NOT NULL,
  `no_telepon_mandiri` varchar(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `mandiri_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mandiri_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `mandiri`
--

INSERT INTO `mandiri` (`id_mandiri`, `nama_mandiri`, `alamat_mandiri`, `identitas_mandiri`, `no_telepon_mandiri`, `tanggal_masuk`, `published`, `mandiri_created_at`, `mandiri_updated_at`) VALUES
('MDR-1565086758087106535', 'Sujiwo', 'Riyadh', 'KTP', '089981', '2019-08-08', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MDR-1565260898473217962', 'Tedjo', 'Vienna', 'BPKB', '089980', '2019-08-08', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MDR-1565306758379934834', 'Margareth', 'Ngeni Soviet', 'SIM', '087780', '2019-08-01', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` varchar(50) NOT NULL,
  `nama_mitra` varchar(256) NOT NULL,
  `sex_mitra` tinyint(1) NOT NULL,
  `alamat_mitra` text NOT NULL,
  `NIK` varchar(30) NOT NULL,
  `no_telepon_mitra` varchar(15) NOT NULL,
  `populasi_ternak` int(11) NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `jenis_jaminan` varchar(20) NOT NULL,
  `nama_pemilik_jaminan` varchar(50) NOT NULL,
  `nomor_identitas_jaminan` varchar(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `mitra_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mitra_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `nama_mitra`, `sex_mitra`, `alamat_mitra`, `NIK`, `no_telepon_mitra`, `populasi_ternak`, `tanggal_masuk`, `jenis_jaminan`, `nama_pemilik_jaminan`, `nomor_identitas_jaminan`, `published`, `mitra_created_at`, `mitra_updated_at`) VALUES
('MTR-14278276', 'Tommie Heathcote Jr.', 0, 'West Marquisfurt', 'KTP', '909-932-4810', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1561584122522589045', 'new member', 0, 'asdasdasd', '098908080', '9080808080', 987, '2019-06-27', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1561584260228769729', 'anyar neh', 0, 'asdasdsda', '980980', '09808', 980898, '2019-06-27', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1561584499478596779', 'changed', 0, 'asdasd', 'asdasdasd', 'asdasd', 809, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-16666999', 'Lura Marvin', 0, 'North Genovevaville', 'BPKB', '227-331-6169', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1905110013', 'Sundari Sukoco', 0, 'London', 'SIM', '123456789', 0, NULL, '', '', '', 0, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1905220014', 'Angela', 0, 'Manchester', 'KTP', '085580085580', 2000, '2019-05-22', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1905250015', 'Prapto', 0, 'Tokyo', 'SIM', '085580085580', 2500, '2018-02-14', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1908030019', 'Logan', 0, 'Texas', 'KTP', '088880088', 2500, '2019-08-03', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1908060020', 'Tedjo', 0, 'Moscow', 'BPKB', '089980', 5000, '2019-08-06', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-1909080021', 'Togok Ganteng 1', 0, 'Orleans', '350350345', '081128567', 1500, '2019-09-01', 'Sertifikat Tanah', 'Togok Ganteng', 'N-559875', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-28699110', 'Mr. Manley Bailey', 0, 'Darwinton', 'SIM', '759-123-4945', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-29578461', 'Miss Princess Strosin', 0, 'Port Deanna', 'BPKB', '895-496-4204', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-34446672', 'Dudley Fisher', 0, 'Earlenestad', 'sertifikat lali aku', '817-760-8980', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-38300194', 'Dawn Boehm', 0, 'Trystanland', 'sertifikat lali aku', '853-756-0329', 0, NULL, '', '', '', 0, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-42263036', 'Velva White', 0, 'Port Hoyt', 'sertifikat lali aku', '288-456-1845', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-57973849', 'Kayli Johns', 0, 'Rathside', 'nik', '353-525-2255', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-69582325', 'May Hahn III', 0, 'Roweside', 'KTP', '926-708-9482', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-80349990', 'Tanya Rice V', 0, 'South Elveraville', 'SIM', '170-804-3029', 1000, '2018-11-05', '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-84301708', 'Ellie Hauck V', 0, 'New Ewell', 'sertifikat lali aku', '715-026-2771', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54'),
('MTR-98895558', 'Dr. Enid Lockman', 0, 'North Alyciahaven', 'nik', '441-100-1075', 0, NULL, '', '', '', 1, '2019-10-09 17:43:54', '2019-10-09 17:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(50) NOT NULL,
  `pelanggan_nik` varchar(20) NOT NULL,
  `pelanggan_nama` text NOT NULL,
  `pelanggan_notelp` varchar(15) NOT NULL,
  `pelanggan_alamat` text NOT NULL,
  `pelanggan_tempat_lahir` text NOT NULL,
  `pelanggan_tgl_lahir` date NOT NULL,
  `pelanggan_sex` tinyint(1) NOT NULL DEFAULT '1',
  `pelanggan_photo` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `pelanggan_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pelanggan_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pelanggan_created_by` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pelanggan_updated_by` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `pelanggan_nik`, `pelanggan_nama`, `pelanggan_notelp`, `pelanggan_alamat`, `pelanggan_tempat_lahir`, `pelanggan_tgl_lahir`, `pelanggan_sex`, `pelanggan_photo`, `published`, `pelanggan_created_at`, `pelanggan_updated_at`, `pelanggan_created_by`, `pelanggan_updated_by`) VALUES
('157097000067798053203', '9898998', 'oke we gan', '98988', 'asdasd', 'mlaang', '2019-10-07', 1, 'lorem', 0, '2019-10-13 19:36:02', '2019-10-13 19:36:02', '2019-10-13 19:36:02', '2019-10-13 19:36:02'),
('157097240409028873424', '089080809', 'ga papa', '09890808', 'oke ', 'malang', '2019-10-02', 0, 'lorem', 1, '2019-10-13 20:13:40', '2019-10-13 20:13:40', '2019-10-13 20:13:40', '2019-10-13 20:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_faktur_pembelian` int(11) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `cara_pembayaran` text COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_terbayar` int(11) NOT NULL,
  `id_suplier` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `pembelian_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pembelian_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_user`, `no_faktur_pembelian`, `total_pembelian`, `cara_pembayaran`, `jumlah_terbayar`, `id_suplier`, `published`, `pembelian_created_at`, `pembelian_updated_at`) VALUES
('BLI-1905150001', 'KR-88176155', 1234, 500000, 'Lunas', 500000, 'SPL-1905090001', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905160002', 'KR-88176155', 6478, 2000000, 'Lunas', 2000000, 'SPL-1905090002', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905160003', 'KR-88176155', 987678, 300000, 'Lunas', 300000, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905160004', 'KR-88176155', 37849, 500000, 'Hutang', 0, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905160005', 'KR-88176155', 368, 300000, 'Hutang', 0, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170006', 'KR-88176155', 4687, 50000, 'Hutang', 0, 'SPL-1905090002', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170007', 'KR-88176155', 876, 50000, 'Hutang', 0, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170008', 'KR-88176155', 756, 12345, 'Hutang', 0, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170009', 'KR-88176155', 8486, 12345, 'Hutang', 0, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170010', 'KR-88176155', 5768, 12345, 'Hutang', 0, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170011', 'KR-88176155', 25798, 12345, 'Hutang', 0, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170012', 'KR-88176155', 257943, 12345, 'Hutang', 0, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905170013', 'KR-88176155', 678, 12345, 'Hutang', 0, 'SPL-1905090002', 0, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905200014', 'KR-88176155', 12345, 150000, 'Hutang', 0, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905200015', 'KR-88176155', 12345, 125000, 'Hutang', 0, 'SPL-1905090002', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905200016', 'KR-88176155', 12345, 125000, 'Hutang', 0, 'SPL-1905090002', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1905200017', 'KR-88176155', 37896, 250, 'Hutang', 150, 'SPL-1905090003', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1908030018', 'KR-88176155', 46823246, 500, 'Lunas', 500, 'SPL-1905090002', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1908030019', 'KR-88176155', 8576456, 6000, 'Hutang', 500, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55'),
('BLI-1910020024', 'KR-88176155', 5678, 1500, 'Lunas', 1500, 'SPL-1905100005', 1, '2019-10-09 17:43:55', '2019-10-09 17:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(50) NOT NULL,
  `id_member` varchar(50) DEFAULT NULL,
  `no_faktur_penjualan` varchar(20) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `cara_pembayaran` tinyint(1) NOT NULL DEFAULT '1',
  `piutang_jatuh_tempo` date DEFAULT NULL,
  `jumlah_terbayar` int(11) NOT NULL,
  `piutang_sisa` int(11) DEFAULT NULL,
  `id_kasir` varchar(50) NOT NULL,
  `keterangan` varchar(256) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `penjualan_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `penjualan_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `no_faktur_penjualan`, `total_pembelian`, `cara_pembayaran`, `piutang_jatuh_tempo`, `jumlah_terbayar`, `piutang_sisa`, `id_kasir`, `keterangan`, `published`, `penjualan_created_at`, `penjualan_updated_at`) VALUES
('PJL-15730046280871904', '', '15730046280871904', 20600, 1, NULL, 2000, 18600, 'USR-001', '', 1, '2019-11-06 08:44:14', '2019-11-06 08:44:14'),
('PJL-15730047327139431', '', '15730047327139431', 206000, 1, NULL, 10000, 196000, 'USR-001', '', 1, '2019-11-06 08:46:15', '2019-11-06 08:46:15'),
('PJL-15730055642941658', 'MTR-14278276', '15730055642941658', 942000, 1, NULL, 200000, 742000, 'USR-001', '', 1, '2019-11-06 09:00:00', '2019-11-06 09:00:00'),
('PJL-15732808927202995', 'MTR-14278276', '15732808927202995', 181170, 1, NULL, 100000, 81170, 'USR-001', '', 1, '2019-11-09 13:29:42', '2019-11-09 13:29:42'),
('PJL-15732817791206245', 'MTR-14278276', '15732817791206245', 1059700, 0, NULL, 300000, 759700, 'USR-001', 'lunas', 1, '2019-11-09 13:44:33', '2019-11-09 13:44:33'),
('PJL-15732835613448883', 'MTR-14278276', '15732835613448883', 942000, 0, NULL, 500000, 442000, 'USR-001', 'lunas', 1, '2019-11-09 14:13:26', '2019-11-09 14:13:26'),
('PJL-15732836967004674', 'MTR-1561584122522589045', '15732836967004674', 942000, 0, '2019-11-09', 500000, 442000, 'USR-001', '', 1, '2019-11-09 14:15:54', '2019-11-09 14:15:54'),
('PJL-15732850142413462', 'MTR-1561584499478596779', '15732850142413462', 1647000, 0, '2019-11-09', 500000, 1147000, 'USR-001', '', 1, '2019-11-09 14:37:42', '2019-11-09 14:37:42'),
('PJL-15732852100023625', 'MTR-14278276', '15732852100023625', 942000, 0, '2019-11-09', 100000, 842000, 'USR-001', '', 1, '2019-11-09 14:43:40', '2019-11-09 14:43:40'),
('PJL-15732854783445695', 'MTR-14278276', '15732854783445695', 164700, 0, '2019-11-09', 100000, 64700, 'USR-001', '', 1, '2019-11-09 14:46:30', '2019-11-09 14:46:30'),
('PJL-15732862981537351', 'MTR-16666999', '15732862981537351', 94500, 1, '2019-11-09', 100000, 0, 'USR-001', '', 1, '2019-11-09 14:59:13', '2019-11-09 14:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `id_piutang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_faktur_penjualan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_mitra` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `piutang_termin` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `piutang_jatuh_tempo` date DEFAULT NULL,
  `piutang_total_faktur` int(11) NOT NULL,
  `piutang_terbayar` int(11) NOT NULL DEFAULT '0',
  `piutang_sisa` int(11) NOT NULL,
  `piutang_status` char(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Belum Lunas',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `piutang_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `piutang_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `piutang_created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `piutang_updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `piutang`
--

INSERT INTO `piutang` (`id_piutang`, `no_faktur_penjualan`, `id_mitra`, `piutang_termin`, `piutang_jatuh_tempo`, `piutang_total_faktur`, `piutang_terbayar`, `piutang_sisa`, `piutang_status`, `published`, `piutang_created_at`, `piutang_updated_at`, `piutang_created_by`, `piutang_updated_by`) VALUES
('PTG-15732989306301490', '15732817791206245', 'MTR-14278276', '', '2019-11-09', 1059700, 800000, 0, 'lunas', 1, '2019-11-09 18:28:50', '2019-11-09 18:28:50', NULL, NULL),
('PTG-15732989537169571', '15732817791206245', 'MTR-14278276', '', '2019-11-09', 1059700, 800000, 0, 'lunas', 1, '2019-11-09 18:29:13', '2019-11-09 18:29:13', NULL, NULL),
('PTG-15733003156159351', '15732817791206245', 'MTR-14278276', '', '2019-11-09', 1059700, 800000, 0, 'lunas', 1, '2019-11-09 18:52:08', '2019-11-09 18:52:08', NULL, NULL),
('PTG-15733004358797017', '15732817791206245', 'MTR-14278276', '', '2019-11-09', 1059700, 800000, 0, 'lunas', 1, '2019-11-09 18:54:03', '2019-11-09 18:54:03', NULL, NULL),
('PTG-15733006224876020', '15732817791206245', 'MTR-14278276', '', '2019-11-09', 1059700, 800000, 0, 'lunas', 1, '2019-11-09 18:57:09', '2019-11-09 18:57:09', NULL, NULL),
('PTG-15733009741455560', '15732835613448883', 'MTR-14278276', '', '2019-11-09', 942000, 500000, 0, 'lunas', 1, '2019-11-09 19:03:13', '2019-11-09 19:03:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_suplier` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nama_suplier` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_suplier` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `no_telepon_suplier` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `kategori_suplier` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `suplier_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `suplier_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_suplier`, `nama_suplier`, `alamat_suplier`, `no_telepon_suplier`, `kategori_suplier`, `published`, `suplier_created_at`, `suplier_updated_at`) VALUES
('SPL-1905090001', 'PT Maju Jaya', 'Ngeni Soviet', '021-080-808', '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1905090002', 'PT Seger Waras', 'California', '1-888-999', '2', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1905090003', 'PT Sukasuka', 'Texas', '1-888-777', '2', 0, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1905090004', 'PT Yo Ayo', 'Detroit', '123-456-789', '1', 0, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1905100005', 'PT Yo Ayo', 'Detroit', '123-456-789', '2', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1908270006', 'PT Pecel Enak', 'Nagoya', '081180', '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1908270007', 'PT Rujak Cingur', 'Cambridge', '089980', '2', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1908270008', 'PT Jalan Sesama', 'Seattle', '087780', '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1908270009', 'PT Sido Mundur', 'Suriname', '085580', '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
('SPL-1908270010', 'PT Satu Nusa', 'Wakanda Forever', '082280082', '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `user_level_id` int(11) NOT NULL,
  `level_name` text NOT NULL,
  `level_index` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`user_level_id`, `level_name`, `level_index`, `created_at`, `updated_at`) VALUES
(1, 'kasir', 0, '2019-10-09 17:43:58', '2019-10-09 17:43:58'),
(2, 'akuntan', 1, '2019-10-09 17:43:58', '2019-10-09 17:43:58'),
(3, 'super admin', 2, '2019-10-09 17:43:58', '2019-10-09 17:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `ID_user` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` text NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_profile` varchar(50) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`ID_user`, `username`, `password`, `user_level`, `user_profile`, `published`, `created_at`, `updated_at`) VALUES
(1, 'nova', '1a9c91f6e0310d4f55b7ee7f22c2c9df', 1, '1', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
(2, 'nova', 'nova', 1, 'KR-88176155', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
(3, 'nova', 'ac4d61a5b76c96b00235a124dfd1bfd1', 1, 'KR-88176155', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57'),
(4, 'paijo', '44529fdc8afb86d58c6c02cd00c02e43', 0, 'KR-1908160004', 1, '2019-10-09 17:43:57', '2019-10-09 17:43:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `kategori_barang_id` (`kategori_barang_id`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`id_detail_pembelian`),
  ADD KEY `id_pembelian` (`id_pembelian`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail_penjualan`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id_hutang`),
  ADD KEY `no_faktur_penjualan` (`no_faktur_pembelian`),
  ADD KEY `hutang_created_by` (`hutang_created_by`),
  ADD KEY `hutang_updated_by` (`hutang_updated_by`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kategori_barang_id`);

--
-- Indexes for table `mandiri`
--
ALTER TABLE `mandiri`
  ADD PRIMARY KEY (`id_mandiri`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `pelanggan_created_by` (`pelanggan_created_by`),
  ADD KEY `pelanggan_updated_by` (`pelanggan_updated_by`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_user` (`id_member`),
  ADD KEY `idKasir` (`id_kasir`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`id_piutang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`user_level_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`ID_user`),
  ADD KEY `user_level` (`user_level`),
  ADD KEY `user profile` (`user_profile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `user_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `ID_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
