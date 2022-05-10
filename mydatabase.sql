-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 27. bře 2022, 01:27
-- Verze serveru: 10.4.22-MariaDB
-- Verze PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `mydatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `graphicscards`
--

CREATE TABLE `graphicscards` (
  `id_graphics_cards` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `graphics_chip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `graphicscards`
--

INSERT INTO `graphicscards` (`id_graphics_cards`, `name`, `url`, `price`, `graphics_chip`) VALUES
(1, 'https://www.czc.cz//gigabyte-geforce-rtx-3060-elite-12g-rev-2-0-lhr-12gb-gddr6/323010/produkt', 'GIGABYTE GeForce RTX 3060 ELITE 12G (rev. 2.0), LHR, 12GB GDDR6', 16790, 'GeForceRTX3060'),
(2, 'https://www.czc.cz//asus-geforce-tuf-gtx1650-o4gd6-p-gaming-4gb-gddr6/301395/produkt', 'ASUS GeForce TUF-GTX1650-O4GD6-P-GAMING, 4GB GDDR6', 7598, 'GeForceGTX1650'),
(3, 'https://www.czc.cz//gigabyte-geforce-rtx-3060-ti-eagle-oc-8gd-rev-2-0-lhr-8gb-gddr6/322096/produkt', 'GIGABYTE GeForce RTX 3060 TI EAGLE OC-8GD (rev. 2.0), LHR, 8GB GDDR6', 18990, 'GeForceRTX3060Ti'),
(4, 'https://www.czc.cz//asus-geforce-tuf-gtx1660ti-6g-evo-gaming-6gb-gddr6/340718/produkt', 'ASUS GeForce TUF-GTX1660TI-6G-EVO-GAMING, 6GB GDDR6', 10990, 'GeForceGTX1660Ti'),
(5, 'https://www.czc.cz//asus-geforce-tuf-rtx3080-12g-gaming-lhr-12gb-gddr6x/340715/produkt', 'ASUS GeForce TUF-RTX3080-12G-GAMING, LHR, 12GB GDDR6X', 38790, 'GeForceRTX3080'),
(6, 'https://www.czc.cz//asus-geforce-tuf-rtx3080-o12g-gaming-lhr-12gb-gddr6x/340714/produkt', 'ASUS GeForce TUF-RTX3080-O12G-GAMING, LHR, 12GB GDDR6X', 38990, 'GeForceRTX3080'),
(7, 'https://www.czc.cz//asus-geforce-gt730-sl-2gd5-brk-2gb-gddr5/328281/produkt', 'ASUS GeForce GT730-SL-2GD5-BRK, 2GB GDDR5', 2199, 'GeForceGT730'),
(8, 'https://www.czc.cz//msi-radeon-rx-6600-mech-2x-8g-8gb-gddr6/329870/produkt', 'MSI Radeon RX 6600 MECH 2X 8G, 8GB GDDR6', 11990, 'RadeonRX6600'),
(9, 'https://www.czc.cz//asus-geforce-gt730-4h-sl-2gd5-2gb-gddr5/328283/produkt', 'ASUS GeForce GT730-4H-SL-2GD5, 2GB GDDR5', 2499, 'GeForceGT730'),
(10, 'https://www.czc.cz//hp-radeon-rx-550x-4gb-gddr5/286653/produkt', 'HP Radeon RX-550X, 4GB GDDR5', 4390, 'RadeonRX550X'),
(11, 'https://www.czc.cz//pny-nvidia-rtx-a4000-16gb-gddr6/332660/produkt', 'PNY NVIDIA RTX A4000, 16GB GDDR6', 32899, 'RTXA4000'),
(12, 'https://www.czc.cz//asrock-radeon-rx-6900-xt-oc-formula-16gb-gddr6/316737/produkt', 'ASRock Radeon RX 6900 XT OC Formula, 16GB GDDR6', 39991, 'RadeonRX6900XT'),
(13, 'https://www.czc.cz//gigabyte-radeon-rx-6900-xt-xtreme-waterforce-wb-16g-16gb-gddr6/323021/produkt', 'GIGABYTE Radeon RX 6900 XT XTREME WATERFORCE WB 16G, 16GB GDDR6', 44990, 'RadeonRX6900XT'),
(14, 'https://www.czc.cz//msi-geforce-gtx-1050-ti-4gt-lp-4gb-gddr5/204321/produkt', 'MSI GeForce GTX 1050 TI 4GT LP, 4GB GDDR5', 5290, 'GeForceGTX1050Ti'),
(15, 'https://www.czc.cz//asus-geforce-tuf-gtx1660s-o6g-gaming-6gb-gddr6/301399/produkt', 'ASUS GeForce TUF-GTX1660S-O6G-GAMING, 6GB GDDR6', 9499, 'GeForceGTX1660Super'),
(16, 'https://www.czc.cz//msi-geforce-rtx-3060-ti-gaming-x-8g-lhr-8gb-gddr6/324650/produkt', 'MSI GeForce RTX 3060 Ti GAMING X 8G LHR, 8GB GDDR6', 19990, 'GeForceRTX3060Ti'),
(17, 'https://www.czc.cz//msi-geforce-gtx-1660-super-gaming-x-6gb-gddr6/277292/produkt', 'MSI GeForce GTX 1660 SUPER GAMING X, 6GB GDDR6', 12019, 'GeForceGTX1660Super'),
(18, 'https://www.czc.cz//palit-geforce-rtx-3060-dual-lhr-12gb-gddr6/308704/produkt', 'PALiT GeForce RTX 3060 Dual, LHR, 12GB GDDR6', 14890, 'GeForceRTX3060'),
(19, 'https://www.czc.cz//msi-geforce-rtx-3070-ti-ventus-3x-8g-oc-lhr-8gb-gddr6x/321781/produkt', 'MSI GeForce RTX 3070 Ti VENTUS 3X 8G OC, LHR, 8GB GDDR6X', 24990, 'GeForceRTX3070Ti'),
(20, 'https://www.czc.cz//asus-geforce-gt730-2gd5-brk-e-2gb-gddr5/335102/produkt', 'ASUS GeForce GT730-2GD5-BRK-E, 2GB GDDR5', 2099, 'GeForceGT730'),
(21, 'https://www.czc.cz//msi-radeon-rx-6600-xt-gaming-x-8g-8gb-gddr6/326014/produkt', 'MSI Radeon RX 6600 XT GAMING X 8G, 8GB GDDR6', 14989, 'RadeonRX6600XT'),
(22, 'https://www.czc.cz//msi-geforce-rtx-3060-ti-ventus-2x-8g-ocv1-lhr-8gb-gddr6/326017/produkt', 'MSI GeForce RTX 3060 TI VENTUS 2X 8G OCV1, LHR, 8GB GDDR6', 18990, 'GeForceRTX3060Ti'),
(23, 'https://www.czc.cz//gigabyte-geforce-rtx-2060-d6-6g-rev-2-0-6gb-gddr6/323009/produkt', 'GIGABYTE GeForce RTX 2060 D6 6G (rev. 2.0), 6GB GDDR6', 12991, 'GeForceRTX2060'),
(24, 'https://www.czc.cz//palit-geforce-rtx-2060-dual-12gb-gddr6/336062/produkt', 'PALiT GeForce RTX 2060 Dual, 12GB GDDR6', 14490, 'GeForceRTX2060'),
(25, 'https://www.czc.cz//msi-geforce-rtx-3060-ventus-2x-12g-oc-lhr-12gb-gddr6/310901/produkt', 'MSI GeForce RTX 3060 VENTUS 2X 12G OC, LHR, 12GB GDDR6', 16990, 'GeForceRTX3060'),
(26, 'https://www.czc.cz//msi-n730k-2gd3h-lpv1-2gb-gddr3/332675/produkt', 'MSI N730K-2GD3H/LPV1, 2GB GDDR3', 2130, 'GeForceGT730'),
(27, 'https://www.czc.cz//palit-geforce-gtx-1650-gamingpro-4gb-gddr6_2/308327/produkt', 'PALiT GeForce GTX 1650 GamingPro, 4GB GDDR6', 5890, 'GeForceGTX1650'),
(28, 'https://www.czc.cz//hp-nvidia-t600-4gb-gddr6/335053/produkt', 'HP NVIDIA T600, 4GB GDDR6', 4499, 'T600'),
(29, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-aorus-master-8g-ver-2-0-lhr-8gb-gddr6/324452/produkt', 'GIGABYTE GeForce RTX 3070 AORUS MASTER 8G ver. 2.0 LHR, 8GB GDDR6', 25990, 'GeForceRTX3070'),
(30, 'https://www.czc.cz//msi-geforce-gt-1030-2ghd4-lp-oc-2gb-gddr4/239153/produkt', 'MSI GeForce GT 1030 2GHD4 LP OC, 2GB GDDR4', 2533, 'GeForceGT1030'),
(31, 'https://www.czc.cz//gigabyte-geforce-gtx-1650-d6-windforce-oc-4g-ver-2-0/301309/produkt', 'GIGABYTE GeForce GTX 1650 D6 WINDFORCE OC 4G ver. 2.0.', 7990, 'GeForceGTX1650'),
(32, 'https://www.czc.cz//asus-geforce-dual-rtx3060ti-o8g-mini-v2-lhr-8gb-gddr6/330801/produkt', 'ASUS GeForce DUAL-RTX3060TI-O8G-MINI-V2 (LHR), 8GB GDDR6', 16990, 'GeForceRTX3060Ti'),
(33, 'https://www.czc.cz//hp-nvidia-t400-2gb-gddr6/335054/produkt', 'HP NVIDIA T400, 2GB GDDR6', 2787, 'T400'),
(34, 'https://www.czc.cz//msi-geforce-rtx-2060-ventus-gp-oc-6gb-gddr6/316325/produkt', 'MSI GeForce RTX 2060 VENTUS GP OC, 6GB GDDR6', 13990, 'GeForceRTX2060'),
(35, 'https://www.czc.cz//gainward-geforce-rtx-3060-ti-ghost-lhr-8gb-gddr6/305881/produkt', 'Gainward GeForce RTX 3060 Ti Ghost, LHR, 8GB GDDR6', 18990, 'GeForceRTX3060Ti'),
(36, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-ti-gaming-oc-8g-lhr-8gb-gddr6x/321290/produkt', 'GIGABYTE GeForce RTX 3070 Ti GAMING OC 8G, LHR, 8GB GDDR6X', 25990, 'GeForceRTX3070Ti'),
(37, 'https://www.czc.cz//asus-geforce-tuf-rtx3080ti-o12g-gaming-lhr-12gb-gddr6x/320117/produkt', 'ASUS GeForce TUF-RTX3080TI-O12G-GAMING, LHR, 12GB GDDR6X', 44990, 'GeForceRTX3080Ti'),
(38, 'https://www.czc.cz//msi-geforce-gtx-1650-ventus-xs-4g-oc-4gb-gddr5_2/315133/produkt', 'MSI GeForce GTX 1650 VENTUS XS 4G OC, 4GB GDDR5', 6390, 'GeForceGTX1650'),
(39, 'https://www.czc.cz//gigabyte-geforce-gtx-1650-d6-oc-4g-ver-2-0-4gb-gddr6/296446/produkt', 'GIGABYTE GeForce GTX 1650 D6 OC 4G ver. 2.0, 4GB GDDR6', 6890, 'GeForceGTX1650'),
(40, 'https://www.czc.cz//palit-geforce-gtx-1660-super-gamingpro-6gb-gddr6_2/337692/produkt', 'PALiT GeForce GTX 1660 Super GamingPro, 6GB GDDR6', 10699, 'GeForceGTX1660Super'),
(41, 'https://www.czc.cz//asus-geforce-dual-rtx3050-o8g-lhr-8gb-gddr6/336738/produkt', 'ASUS GeForce DUAL-RTX3050-O8G, LHR, 8GB GDDR6', 10490, 'GeForceRTX3050'),
(42, 'https://www.czc.cz//sapphire-radeon-pulse-rx-6600-8gb-gddr6/329699/produkt', 'Sapphire Radeon PULSE RX 6600, 8GB GDDR6', 12999, 'RadeonRX6600'),
(43, 'https://www.czc.cz//asus-geforce-ph-rtx3060-12g-v2-lhr-12gb-gddr6/320679/produkt', 'ASUS GeForce PH-RTX3060-12G-V2, LHR, 12GB GDDR6', 69990, 'GeForceRTX3060'),
(44, 'https://www.czc.cz//gainward-geforce-rtx-2060-ghost-12gb-gddr6/335983/produkt', 'Gainward GeForce RTX 2060 Ghost, 12GB GDDR6', 14989, 'GeForceRTX2060'),
(45, 'https://www.czc.cz//gigabyte-geforce-gt-1030-low-profile-d4-2g-2gb-gddr4/312571/produkt', 'GIGABYTE GeForce GT 1030 Low Profile D4 2G, 2GB GDDR4', 2581, 'GeForceGT1030'),
(46, 'https://www.czc.cz//asus-geforce-dual-rtx3060-o12g-v2-lhr-12gb-gddr6/320677/produkt', 'ASUS GeForce DUAL-RTX3060-O12G-V2, LHR, 12GB GDDR6', 69990, 'GeForceRTX3060'),
(47, 'https://www.czc.cz//asus-geforce-dual-rtx3060ti-8g-mini-v2-lhr-8gb-gddr6/330798/produkt', 'ASUS GeForce DUAL-RTX3060TI-8G-MINI-V2 (LHR), 8GB GDDR6', 16690, 'GeForceRTX3060Ti'),
(48, 'https://www.czc.cz//msi-geforce-rtx-3070-gaming-z-trio-8g-lhr-8gb-gddr6/332678/produkt', 'MSI GeForce RTX 3070 GAMING Z TRIO 8G LHR, 8GB GDDR6', 25990, 'GeForceRTX3070'),
(49, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-ti-master-8g-lhr-8gb-gddr6x/321536/produkt', 'GIGABYTE GeForce RTX 3070 Ti MASTER 8G, LHR, 8GB GDDR6X', 27990, 'GeForceRTX3070Ti'),
(50, 'https://www.czc.cz//msi-geforce-rtx-3080-ventus-3x-plus-12g-oc-lhr-12gb-gddr6x/336430/produkt', 'MSI GeForce RTX 3080 VENTUS 3X PLUS 12G OC LHR, 12GB GDDR6X', 37990, 'GeForceRTX3080'),
(51, 'https://www.czc.cz//msi-geforce-rtx-3080-ti-suprim-x-12g-lhr-12gb-gddr6x/321023/produkt', 'MSI GeForce RTX 3080 Ti SUPRIM X 12G, LHR, 12GB GDDR6X', 51990, 'GeForceRTX3080Ti'),
(52, 'https://www.czc.cz//asus-geforce-rog-strix-rtx3080ti-o12g-gaming-lhr-12gb-gddr6x/320115/produkt', 'ASUS GeForce ROG-STRIX-RTX3080TI-O12G-GAMING, LHR, 12GB GDDR6X', 52990, 'GeForceRTX3080Ti'),
(53, 'https://www.czc.cz//hp-radeon-r7-430-2gb-gddr5_2/286651/produkt', 'HP Radeon R7 430, 2GB GDDR5', 2190, 'RadeonR7430'),
(54, 'https://www.czc.cz//gainward-geforce-gt-1030-2gb-gddr4/272436/produkt', 'Gainward GeForce GT 1030, 2GB GDDR4', 2599, 'GeForceGT1030'),
(55, 'https://www.czc.cz//gigabyte-geforce-gtx-1650-oc-low-profile-4g-4gb-gddr5/286411/produkt', 'GIGABYTE GeForce GTX 1650 OC Low Profile 4G, 4GB GDDR5', 6890, 'GeForceGTX1650'),
(56, 'https://www.czc.cz//palit-geforce-rtx3070-ti-gamerock-lhr-8gb-gddr6x/336188/produkt', 'PALiT GeForce RTX3070 Ti GameRock, LHR, 8GB GDDR6X', 23989, 'GeForceRTX3070Ti'),
(57, 'https://www.czc.cz//palit-geforce-rtx3070-ti-gamingpro-lhr-8gb-gddr6x/320371/produkt', 'PALiT GeForce RTX3070 Ti GamingPro, LHR, 8GB GDDR6X', 23989, 'GeForceRTX3070Ti'),
(58, 'https://www.czc.cz//asus-geforce-dual-gtx1650-4g-4gb-gddr5/259694/produkt', 'ASUS GeForce DUAL-GTX1650-4G, 4GB GDDR5', 5899, 'GeForceGTX1650'),
(59, 'https://www.czc.cz//gainward-geforce-gtx-1660ti-ghost-6gb-gddr6/333116/produkt', 'Gainward GeForce GTX 1660Ti Ghost, 6GB GDDR6', 13490, 'GeForceGTX1660Ti'),
(60, 'https://www.czc.cz//gigabyte-radeon-rx-6600-eagle-8g-8gb-gddr6/335209/produkt', 'GIGABYTE Radeon RX 6600 Eagle 8G, 8GB GDDR6', 14989, 'RadeonRX6600'),
(61, 'https://www.czc.cz//palit-geforce-rtx-3070-gamingpro-lhr-8gb-gddr6_2/301406/produkt', 'PALiT GeForce RTX 3070 GamingPro, LHR, 8GB GDDR6', 22990, 'GeForceRTX3070'),
(62, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-ti-vision-oc-8g-lhr-8gb-gddr6x/322094/produkt', 'GIGABYTE GeForce RTX 3070 Ti VISION OC 8G, LHR, 8GB GDDR6X', 25990, 'GeForceRTX3070Ti'),
(63, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-vision-oc-8g-rev-2-0-lhr-8gb-gddr6/326157/produkt', 'GIGABYTE GeForce RTX 3070 VISION OC 8G (rev.2.0), LHR, 8GB GDDR6', 24990, 'GeForceRTX3070'),
(64, 'https://www.czc.cz//msi-geforce-rtx-3070-ti-suprim-x-8g-lhr-8gb-gddr6x/321076/produkt', 'MSI GeForce RTX 3070 Ti SUPRIM X 8G, LHR, 8GB GDDR6X', 29990, 'GeForceRTX3070Ti'),
(65, 'https://www.czc.cz//msi-geforce-rtx-3070-ti-gaming-x-trio-8g-lhr-8gb-gddr6x/321075/produkt', 'MSI GeForce RTX 3070 Ti GAMING X TRIO 8G, LHR, 8GB GDDR6X', 27990, 'GeForceRTX3070Ti'),
(66, 'https://www.czc.cz//palit-geforce-rtx3080-gamerock-lhr-10gb-gddr6x/302739/produkt', 'PALiT GeForce RTX3080 GameRock, LHR, 10GB GDDR6X', 29490, 'GeForceRTX3080'),
(67, 'https://www.czc.cz//msi-radeon-rx-6900-xt-gaming-x-trio-16g-16gb-gddr6/313626/produkt', 'MSI Radeon RX 6900 XT GAMING X TRIO 16G, 16GB GDDR6', 38724, 'RadeonRX6900XT'),
(68, 'https://www.czc.cz//asus-geforce-tuf-rtx3080ti-12g-gaming-lhr-12gb-gddr6x/320119/produkt', 'ASUS GeForce TUF-RTX3080TI-12G-GAMING, LHR, 12GB GDDR6X', 42990, 'GeForceRTX3080Ti'),
(69, 'https://www.czc.cz//gigabyte-geforce-rtx-3080-ti-master-12g-lhr-12gb-gddr6x/321534/produkt', 'GIGABYTE GeForce RTX 3080 Ti MASTER 12G, LHR, 12GB GDDR6X', 46990, 'GeForceRTX3080Ti'),
(70, 'https://www.czc.cz//pny-nvidia-quadro-p400-v2-2gb-gddr5_2/316498/produkt', 'PNY NVIDIA Quadro P400 V2, 2GB GDDR5', 4239, 'QuadroP400'),
(71, 'https://www.czc.cz//hp-nvidia-t1000-4gb-gddr6/335052/produkt', 'HP NVIDIA T1000, 4GB GDDR6', 8195, 'T1000'),
(72, 'https://www.czc.cz//gigabyte-geforce-gtx-1660-oc-6g-6gb-gddr5/257152/produkt', 'GIGABYTE GeForce GTX 1660 OC 6G, 6GB GDDR5', 11490, 'GeForceGTX1660'),
(73, 'https://www.czc.cz//palit-geforce-rtx-3050-dual-lhr-8gb-gddr6/336560/produkt', 'PALiT GeForce RTX 3050 Dual, LHR, 8GB GDDR6', 10490, 'GeForceRTX3050'),
(74, 'https://www.czc.cz//hp-radeon-pro-w5500-8gb-gddr6/335050/produkt', 'HP Radeon Pro W5500, 8GB GDDR6', 11329, 'RadeonProW5500'),
(75, 'https://www.czc.cz//asus-radeon-rog-strix-rx6600xt-o8g-gaming-8gb-gddr6/324593/produkt', 'ASUS Radeon ROG-STRIX-RX6600XT-O8G-GAMING, 8GB GDDR6', 16490, 'RadeonRX6600XT'),
(76, 'https://www.czc.cz//gigabyte-geforce-rtx-3060-ti-aorus-elite-8g-ver-2-0-lhr-8gb-gddr6/324459/produkt', 'GIGABYTE GeForce RTX 3060 Ti AORUS ELITE 8G ver. 2.0 LHR, 8GB GDDR6', 19990, 'GeForceRTX3060Ti'),
(77, 'https://www.czc.cz//msi-geforce-rtx-3060-ti-ventus-2x-8g-ocv1-lhr-8gb-gddr6_2/334953/produkt', 'MSI GeForce RTX 3060 Ti VENTUS 2X 8G OCV1 LHR, 8GB GDDR6', 21991, 'GeForceRTX3060Ti'),
(78, 'https://www.czc.cz//sapphire-radeon-pulse-rx-6700-xt-oc-12gb-gddr6/325628/produkt', 'Sapphire Radeon PULSE RX 6700 XT OC, 12GB GDDR6', 20990, 'RadeonRX6700XT'),
(79, 'https://www.czc.cz//asus-radeon-tuf-rx6700xt-o12g-gaming-12gb-gddr6/312357/produkt', 'ASUS Radeon TUF-RX6700XT-O12G-GAMING, 12GB GDDR6', 25990, 'RadeonRX6700XT'),
(80, 'https://www.czc.cz//gigabyte-geforce-rtx-3070-ti-eagle-oc-8g-lhr-8gb-gddr6/336844/produkt', 'GIGABYTE GeForce RTX 3070 Ti EAGLE OC 8G, LHR, 8GB GDDR6', 27990, 'GeForceRTX3070Ti'),
(81, 'https://www.czc.cz//gigabyte-radeon-rx-6800-gaming-oc-16g-16gb-gddr6/307392/produkt', 'GIGABYTE Radeon RX 6800 GAMING OC 16G, 16GB GDDR6', 28990, 'RadeonRX6800'),
(82, 'https://www.czc.cz//asus-geforce-tuf-gaming-rtx-3080-v2-oc-lhr-10gb-gddr6x/328627/produkt', 'ASUS GeForce TUF Gaming RTX 3080 V2 OC, LHR, 10GB GDDR6X', 31990, 'GeForceRTX3080'),
(83, 'https://www.czc.cz//gigabyte-radeon-rx-6800-aorus-master-16g-16gb-gddr6/310833/produkt', 'GIGABYTE Radeon RX 6800 AORUS MASTER 16G, 16GB GDDR6', 32989, 'RadeonRX6800'),
(84, 'https://www.czc.cz//msi-geforce-rtx-3080-gaming-z-trio-12g-lhr-12gb-gddr6x/337398/produkt', 'MSI GeForce RTX 3080 GAMING Z TRIO 12G LHR, 12GB GDDR6X', 38990, 'GeForceRTX3080'),
(85, 'https://www.czc.cz//gigabyte-geforce-rtx-3080-ti-gaming-oc-12g-lhr-12gb-gddr6x/320577/produkt', 'GIGABYTE GeForce RTX 3080 Ti GAMING OC 12G, LHR, 12GB GDDR6X', 45490, 'GeForceRTX3080Ti'),
(86, 'https://www.czc.cz//msi-geforce-gtx-1050-ti-aero-itx-4g-ocv1-4gb-gddr5/220371/produkt', 'MSI GeForce GTX 1050 Ti AERO ITX 4G OCV1, 4GB GDDR5', 6490, 'GeForceGTX1050Ti'),
(87, 'https://www.czc.cz//xfx-radeon-rx-6600-speedster-swft-210-8gb-gddr6/333117/produkt', 'XFX Radeon RX 6600 Speedster SWFT 210, 8GB GDDR6', 12991, 'RadeonRX6600'),
(88, 'https://www.czc.cz//asrock-radeon-rx-6600-challenger-d-8gb-8gb-gddr6/331124/produkt', 'ASRock Radeon RX 6600 Challenger D 8GB, 8GB GDDR6', 14391, 'RadeonRX6600'),
(89, 'https://www.czc.cz//palit-geforce-rtx-3060-stormx-lhr-12gb-gddr6/308706/produkt', 'PALiT GeForce RTX 3060 StormX, LHR, 12GB GDDR6', 13790, 'GeForceRTX3060'),
(90, 'https://www.czc.cz//asrock-radeon-rx-6600-xt-challenger-d-8gb-oc-8gb-gddr6/325372/produkt', 'ASRock Radeon RX 6600 XT Challenger D 8GB OC, 8GB GDDR6', 17990, 'RadeonRX6600XT'),
(91, 'https://www.czc.cz//gigabyte-radeon-rx-6600-xt-gaming-oc-8g-8gb-gddr6/324647/produkt', 'GIGABYTE Radeon RX 6600 XT Gaming OC 8G, 8GB GDDR6', 17990, 'RadeonRX6600XT'),
(92, 'https://www.czc.cz//palit-geforce-rtx-3070-jetstream-lhr-8gb-gddr6/305138/produkt', 'PALiT GeForce RTX 3070 JetStream, LHR, 8GB GDDR6', 21490, 'GeForceRTX3070'),
(93, 'https://www.czc.cz//asus-radeon-dual-rx6700xt-o12g-12gb-gddr6/338482/produkt', 'ASUS Radeon DUAL-RX6700XT-O12G, 12GB GDDR6', 24490, 'RadeonRX6700XT'),
(94, 'https://www.czc.cz//gainward-geforce-rtx-3070-phoenix-lhr-8gb-gddr6/302198/produkt', 'Gainward GeForce RTX 3070 Phoenix, LHR, 8GB GDDR6', 22490, 'GeForceRTX3070'),
(95, 'https://www.czc.cz//asus-radeon-rog-strix-rx6700xt-o12g-gaming-12gb-gddr6/312358/produkt', 'ASUS Radeon ROG-STRIX-RX6700XT-O12G-GAMING, 12GB GDDR6', 25990, 'RadeonRX6700XT'),
(96, 'https://www.czc.cz//pny-nvidia-quadro-rtx-4000-8gb-gddr6/316502/produkt', 'PNY NVIDIA Quadro RTX 4000, 8GB GDDR6', 34247, 'QuadroRTX4000'),
(97, 'https://www.czc.cz//palit-geforce-rtx-3080-gamingpro-lhr-12gb-gddr6x/336559/produkt', 'PALiT GeForce RTX 3080 GamingPro, LHR, 12GB GDDR6X', 37990, 'GeForceRTX3080'),
(98, 'https://www.czc.cz//asrock-radeon-rx-6900-xt-phantom-gaming-d-16g-oc-16gb-gddr6/309249/produkt', 'ASRock Radeon RX 6900 XT Phantom Gaming D 16G OC, 16GB GDDR6', 39991, 'RadeonRX6900XT'),
(99, 'https://www.czc.cz//palit-geforce-rtx3080-ti-gamingpro-lhr-12gb-gddr6x/320370/produkt', 'PALiT GeForce RTX3080 Ti GamingPro, LHR, 12GB GDDR6X', 39991, 'GeForceRTX3080Ti'),
(100, 'https://www.czc.cz//gigabyte-geforce-rtx-3080-ti-vision-oc-12g-lhr-12gb-gddr6x/320578/produkt', 'GIGABYTE GeForce RTX 3080 Ti VISION OC 12G, LHR, 12GB GDDR6X', 44990, 'GeForceRTX3080Ti'),
(101, 'https://www.czc.cz//gigabyte-geforce-rtx-3080-ti-aorus-xtreme-waterforce-12g-lhr-12gb-gddr6x/323020/produkt', 'GIGABYTE GeForce RTX 3080 Ti AORUS XTREME WATERFORCE 12G, LHR, 12GB GDDR6X', 47990, 'GeForceRTX3080Ti'),
(102, 'https://www.czc.cz//palit-geforce-rtx3090-gamingpro-24gb-gddr6x/297083/produkt', 'PALiT GeForce RTX3090 GamingPro, 24GB GDDR6X', 59490, 'GeForceRTX3090');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `graphicscards`
--
ALTER TABLE `graphicscards`
  ADD PRIMARY KEY (`id_graphics_cards`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `graphicscards`
--
ALTER TABLE `graphicscards`
  MODIFY `id_graphics_cards` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
