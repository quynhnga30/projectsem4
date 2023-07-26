-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2022 lúc 12:20 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `petopia`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `product_id` bigint(20) NOT NULL,
  `shopping_cart_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `name`, `thumbnail`) VALUES
(1, NULL, NULL, NULL, NULL, 'Food pet', 'https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/06/dog-food-1296x728-header.jpg?w=1155&h=1528'),
(2, NULL, NULL, NULL, NULL, 'Toys for pets', 'https://cdn.thewirecutter.com/wp-content/media/2021/12/dog-toys-2048px-0004.jpg'),
(3, NULL, NULL, NULL, NULL, 'Pet tools', 'https://i.ebayimg.com/images/g/~OAAAOSw0HthQqi1/s-l400.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catepets`
--

CREATE TABLE `catepets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `catepets`
--

INSERT INTO `catepets` (`id`, `name`) VALUES
(2, 'Adoption'),
(1, 'LostPet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name_location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `typelocation_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `address`, `description`, `email`, `name_location`, `phone`, `status`, `thumbnail`, `typelocation_id`, `user_id`) VALUES
(1, '2022-12-31 09:30:00', NULL, NULL, NULL, 'Apt. 528 1680 Rath Burgs, East Jarrett, KY 62119-9739', 'Dolorem sunt cumque exercitationem aut impedit voluptas labore.', 'lu.gusikowski@gmail.com', 'Investor Brand Strategist', '1-319-370-7310 x522', 1, 'https://picsum.photos/200/300?random=0', 4, 13),
(2, '2022-01-31 09:30:00', NULL, NULL, NULL, '5447 Rich Place, Kshlerinton, MO 42908', 'Odit omnis id.', 'normand.cronin@hotmail.com', 'Forward Usability Assistant', '1-104-995-9566', 1, 'https://picsum.photos/200/300?random=1', 2, 6),
(3, '2022-08-31 09:30:00', NULL, NULL, NULL, 'Apt. 056 2646 Ramon Point, Gordonberg, KS 73066', 'Minus quod voluptatem ipsam beatae tempora.', 'gale.ortiz@hotmail.com', 'Senior Factors Designer', '1-249-436-4064 x6743', 1, 'https://picsum.photos/200/300?random=2', 4, 30),
(4, '2022-03-31 09:30:00', NULL, NULL, NULL, '259 Drew Manors, North Janeenchester, RI 92813', 'Occaecati qui optio cum quo vero ut nisi.', 'josephine.little@gmail.com', 'Senior Group Developer', '(799) 997-6191 x62154', 1, 'https://picsum.photos/200/300?random=3', 4, 42),
(5, '2022-07-31 09:30:00', NULL, NULL, NULL, 'Apt. 242 9964 Sanford Junctions, Zacharyhaven, CA 83685', 'Qui cum sed et id nisi velit.', 'hans.weissnat@yahoo.com', 'Product Functionality Director', '1-110-089-7020 x298', 1, 'https://picsum.photos/200/300?random=4', 3, 17),
(6, '2022-06-30 09:30:00', NULL, NULL, NULL, '746 Schinner Falls, Shieldsside, ID 82028-7153', 'Culpa quam doloribus dignissimos.', 'lauren.spinka@hotmail.com', 'Regional Integration Director', '(642) 331-4603 x82692', 1, 'https://picsum.photos/200/300?random=5', 4, 7),
(7, '2022-05-31 09:30:00', NULL, NULL, NULL, '4047 Kendrick Trace, Mohrchester, AL 60451-5662', 'Vero id illo expedita dolor unde molestiae.', 'derick.raynor@hotmail.com', 'Dynamic Metrics Strategist', '700-732-9093 x5747', 1, 'https://picsum.photos/200/300?random=6', 1, 35),
(8, '2022-09-30 09:30:00', NULL, NULL, NULL, 'Suite 541 8852 Harber Garden, Port Takisha, VA 15175-6076', 'Est qui est ut nihil.', 'sidney.schmitt@yahoo.com', 'Investor Data Liaison', '301-012-7679', 0, 'https://picsum.photos/200/300?random=7', 3, 27),
(9, '2022-12-31 09:30:00', NULL, NULL, NULL, '625 MacGyver Corners, Reichelmouth, OK 68502', 'Aliquam labore fuga ducimus vel itaque.', 'arturo.prohaska@hotmail.com', 'Chief Communications Producer', '(458) 998-9525', 1, 'https://picsum.photos/200/300?random=8', 3, 19),
(10, '2022-06-30 09:30:00', NULL, NULL, NULL, '17961 Eldora Parks, Danielburgh, IN 35498', 'Consequuntur exercitationem dolores ut mollitia non.', 'porfirio.grimes@yahoo.com', 'Future Web Technician', '1-123-600-0799 x06777', 1, 'https://picsum.photos/200/300?random=9', 3, 25),
(11, '2022-04-30 09:30:00', NULL, NULL, NULL, '2755 Kihn Prairie, West Rigobertohaven, TN 60563-8827', 'Dignissimos laudantium doloribus perferendis.', 'nanci.mcdermott@gmail.com', 'Central Implementation Designer', '352.885.3490', 1, 'https://picsum.photos/200/300?random=10', 2, 35),
(12, '2022-08-31 09:30:00', NULL, NULL, NULL, '69655 Ceola Fort, New Amytown, IL 73422-9093', 'Sit et et molestiae voluptas.', 'angelique.osinski@gmail.com', 'Global Brand Consultant', '317-192-1570', 0, 'https://picsum.photos/200/300?random=11', 3, 36),
(13, '2022-01-31 09:30:00', NULL, NULL, NULL, '4447 Fadel Stravenue, East Jacklynville, WV 56517', 'Eligendi quo ipsa veritatis.', 'chi.aufderhar@gmail.com', 'Legacy Intranet Representative', '313-467-4939', 0, 'https://picsum.photos/200/300?random=12', 1, 42),
(14, '2022-12-31 09:30:00', NULL, NULL, NULL, '06642 Ling Drives, Lemkeland, LA 14580', 'Rerum rerum veritatis nesciunt ex.', 'merna.yundt@gmail.com', 'Lead Usability Technician', '890.755.1608', 1, 'https://picsum.photos/200/300?random=13', 3, 42),
(15, '2022-10-31 09:30:00', NULL, NULL, NULL, '880 Thiel Stream, New Carmenfurt, AR 15229', 'Cum cumque natus.', 'consuelo.schiller@gmail.com', 'Principal Metrics Orchestrator', '1-244-697-4162 x638', 1, 'https://picsum.photos/200/300?random=14', 3, 10),
(16, '2022-02-28 09:30:00', NULL, NULL, NULL, '4671 Weber Summit, East Samira, VA 11487-4941', 'Enim beatae natus vel rerum tempore.', 'rayford.luettgen@hotmail.com', 'Customer Security Supervisor', '1-113-808-2126 x49080', 0, 'https://picsum.photos/200/300?random=15', 3, 45),
(17, '2022-09-30 09:30:00', NULL, NULL, NULL, '642 Julee Center, South Melaniahaven, WY 17909', 'Quisquam atque deserunt.', 'olevia.langosh@gmail.com', 'Dynamic Markets Administrator', '856.900.9718', 0, 'https://picsum.photos/200/300?random=16', 2, 43),
(18, '2022-08-31 09:30:00', NULL, NULL, NULL, '094 Leon Streets, New Fatima, TN 03909-5332', 'Et optio quis voluptate rerum aut nulla ut.', 'mariano.greenfelder@hotmail.com', 'National Division Designer', '807.365.1787 x880', 0, 'https://picsum.photos/200/300?random=17', 4, 34),
(19, '2022-02-28 09:30:00', NULL, NULL, NULL, 'Suite 576 2795 Ankunding Loop, Yukiport, NM 20095-0568', 'Voluptatem dolore id sed impedit eligendi vel architecto.', 'natividad.mitchell@yahoo.com', 'Investor Security Designer', '525.338.5740 x204', 1, 'https://picsum.photos/200/300?random=18', 1, 7),
(20, '2022-03-31 09:30:00', NULL, NULL, NULL, 'Suite 416 479 Mack Shoal, Jonaville, WA 89465', 'Est itaque quis accusamus.', 'ismael.frami@yahoo.com', 'Future Data Director', '048-461-5112 x76784', 0, 'https://picsum.photos/200/300?random=19', 4, 48),
(21, '2021-09-30 09:30:00', NULL, NULL, NULL, 'Apt. 480 226 Connelly Roads, Lake Orvilletown, NJ 43924', 'Labore qui officia hic hic.', 'wilber.dickens@yahoo.com', 'Future Metrics Officer', '274-495-0780', 0, 'https://picsum.photos/200/300?random=0', 4, 47),
(22, '2021-08-31 09:30:00', NULL, NULL, NULL, '2590 Koelpin Extension, East Clarineland, GA 30685', 'Quo ut consequatur possimus.', 'king.schoen@yahoo.com', 'Senior Communications Assistant', '1-024-278-1673 x4416', 0, 'https://picsum.photos/200/300?random=1', 4, 6),
(23, '2021-03-31 09:30:00', NULL, NULL, NULL, '27417 William Mount, Ilamouth, MD 36627-7005', 'Iusto qui quam quia.', 'sanford.bartoletti@yahoo.com', 'Customer Implementation Designer', '1-862-268-1767 x82292', 0, 'https://picsum.photos/200/300?random=2', 3, 51),
(24, '2021-11-30 09:30:00', NULL, NULL, NULL, 'Apt. 608 10314 Von Stravenue, Kautzerland, CO 20111', 'Ut minus qui eligendi voluptas perspiciatis.', 'vashti.carroll@gmail.com', 'Customer Brand Analyst', '1-879-338-2530 x9782', 0, 'https://picsum.photos/200/300?random=3', 4, 40),
(25, '2021-05-31 09:30:00', NULL, NULL, NULL, 'Apt. 730 424 Brakus Ranch, Vernonport, NM 15351', 'Ab quidem non aut autem.', 'jeane.bode@hotmail.com', 'International Accountability Strategist', '(768) 429-7239 x555', 0, 'https://picsum.photos/200/300?random=4', 3, 41),
(26, '2021-10-31 09:30:00', NULL, NULL, NULL, 'Suite 180 185 Douglas Stream, Gutmannland, UT 18931', 'Eaque nisi nam sed id corporis unde rerum.', 'fernando.casper@yahoo.com', 'Legacy Brand Producer', '1-964-954-4411 x921', 0, 'https://picsum.photos/200/300?random=5', 2, 29),
(27, '2021-08-31 09:30:00', NULL, NULL, NULL, '260 Lynn Fords, Ferrybury, GA 59320-4966', 'Harum sapiente ex.', 'joelle.corkery@yahoo.com', 'International Directives Officer', '556.508.3849 x5042', 0, 'https://picsum.photos/200/300?random=6', 1, 42),
(28, '2021-04-30 09:30:00', NULL, NULL, NULL, 'Apt. 512 1453 Mavis Lodge, Lake Fletcher, TN 30594-0172', 'Dolor est dignissimos accusamus.', 'marcy.windler@yahoo.com', 'Lead Branding Analyst', '1-029-768-9367', 0, 'https://picsum.photos/200/300?random=7', 2, 30),
(29, '2021-04-30 09:30:00', NULL, NULL, NULL, '23132 Abshire Villages, Terrymouth, ME 20544', 'Aut excepturi eaque ea.', 'eldridge.ruecker@gmail.com', 'Product Accounts Assistant', '739-038-9898 x00424', 1, 'https://picsum.photos/200/300?random=8', 4, 29),
(30, '2021-10-31 09:30:00', NULL, NULL, NULL, 'Suite 763 9872 Carmen Curve, New Shaneland, NH 31702', 'Quia aperiam culpa ipsam adipisci facilis aut.', 'bertie.kozey@gmail.com', 'Regional Usability Liaison', '(993) 705-3488', 1, 'https://picsum.photos/200/300?random=9', 4, 20),
(31, '2021-04-30 09:30:00', NULL, NULL, NULL, 'Apt. 097 2717 Pfeffer Coves, Lake Caryl, OH 17986', 'Delectus facere numquam repellat dolores veritatis maxime.', 'dan.ortiz@hotmail.com', 'Principal Assurance Technician', '(351) 203-6230 x36575', 0, 'https://picsum.photos/200/300?random=10', 1, 25),
(32, '2021-04-30 09:30:00', NULL, NULL, NULL, 'Apt. 503 95461 Wilderman Ranch, South Shelbyport, GA 77567-1042', 'Et velit repellat.', 'gretta.brekke@hotmail.com', 'Human Infrastructure Representative', '(953) 501-3147 x614', 1, 'https://picsum.photos/200/300?random=11', 2, 8),
(33, '2021-08-31 09:30:00', NULL, NULL, NULL, '11758 Runolfsson Extension, New Hannah, MD 85152-2572', 'Laudantium nihil delectus aliquid minus.', 'saundra.nitzsche@gmail.com', 'Regional Interactions Supervisor', '(462) 716-0241 x1840', 1, 'https://picsum.photos/200/300?random=12', 3, 34),
(34, '2021-04-30 09:30:00', NULL, NULL, NULL, 'Suite 835 86766 Sarai Divide, Lake Amos, MS 42102-5963', 'Minima nihil ratione.', 'andres.fisher@yahoo.com', 'National Directives Orchestrator', '1-169-559-0916', 0, 'https://picsum.photos/200/300?random=13', 4, 11),
(35, '2021-09-30 09:30:00', NULL, NULL, NULL, 'Suite 939 263 Ondricka Orchard, Andresland, MN 22911', 'Voluptatem dolor voluptatem voluptas in id neque.', 'concepcion.ortiz@hotmail.com', 'Internal Applications Strategist', '(551) 453-3483', 0, 'https://picsum.photos/200/300?random=14', 3, 44),
(36, '2021-08-31 09:30:00', NULL, NULL, NULL, 'Apt. 118 96480 Johnson Ways, South Leopoldofort, MI 44801-8008', 'Voluptatum et voluptatem porro excepturi.', 'kermit.heidenreich@hotmail.com', 'Senior Metrics Liaison', '1-239-842-4257 x306', 1, 'https://picsum.photos/200/300?random=15', 3, 46),
(37, '2021-07-31 09:30:00', NULL, NULL, NULL, 'Suite 201 824 Tanisha Underpass, Justinbury, TN 53025-8774', 'Temporibus vero atque ut quaerat et.', 'daron.cummings@gmail.com', 'Future Quality Analyst', '196-440-6179 x416', 1, 'https://picsum.photos/200/300?random=16', 2, 21),
(38, '2021-12-31 09:30:00', NULL, NULL, NULL, '457 Leuschke Tunnel, New Mitchellberg, MT 01320', 'Pariatur ipsum sunt ipsum animi amet est est.', 'stephan.schmeler@gmail.com', 'Principal Paradigm Strategist', '1-523-548-5626 x289', 1, 'https://picsum.photos/200/300?random=17', 3, 12),
(39, '2021-10-31 09:30:00', NULL, NULL, NULL, 'Suite 921 73749 Sophia Crossroad, New Lenaton, CT 77557-6542', 'Libero quos unde rerum aut nihil dolorum magnam.', 'kaylee.mclaughlin@gmail.com', 'District Data Assistant', '562-564-1487 x6991', 1, 'https://picsum.photos/200/300?random=18', 3, 33),
(40, '2021-04-30 09:30:00', NULL, NULL, NULL, '6069 Ignacio Court, Port Domenicside, IA 67513-1553', 'Accusamus reiciendis inventore voluptatem eveniet soluta sunt.', 'andy.brekke@hotmail.com', 'Chief Directives Liaison', '1-650-169-0833 x23556', 1, 'https://picsum.photos/200/300?random=19', 3, 19),
(41, '2022-09-08 20:00:00', NULL, NULL, NULL, '773 Cathy Junctions, South Bertram, KY 65420', 'Corporis dolorem eos dicta.', 'melvin.stehr@hotmail.com', 'Human Program Administrator', '615.695.7938', 1, 'https://picsum.photos/200/300?random=0', 3, 27),
(42, '2022-09-01 20:00:00', NULL, NULL, NULL, '2204 Karine Wells, Dillonfurt, SD 11290', 'Enim eius quia voluptas.', 'geri.little@gmail.com', 'Human Tactics Supervisor', '524-142-8020 x470', 1, 'https://picsum.photos/200/300?random=1', 3, 8),
(43, '2022-09-03 20:00:00', NULL, NULL, NULL, 'Suite 256 123 Mose Canyon, Chuckton, IN 74490-2564', 'Doloribus possimus ut quibusdam voluptas qui quasi.', 'trinh.cronin@hotmail.com', 'Principal Group Facilitator', '1-922-081-2108 x5839', 1, 'https://picsum.photos/200/300?random=2', 2, 42),
(44, '2022-09-16 20:00:00', NULL, NULL, NULL, '803 Considine Station, Port Mafaldaborough, MN 76808', 'Consequatur quam omnis exercitationem repellendus.', 'malvina.zboncak@yahoo.com', 'Regional Identity Technician', '485-908-7471', 1, 'https://picsum.photos/200/300?random=3', 3, 21),
(45, '2022-09-09 20:00:00', NULL, NULL, NULL, 'Apt. 433 822 Marvin Via, Naderhaven, DE 61461', 'Ut omnis ipsa blanditiis quia.', 'lawanna.beier@yahoo.com', 'Investor Applications Executive', '252-268-2988 x1976', 1, 'https://picsum.photos/200/300?random=4', 4, 3),
(46, '2022-09-17 20:00:00', NULL, NULL, NULL, 'Suite 525 621 Stanton Branch, Erikstad, NV 89543-6741', 'Provident et eos debitis et dolor sit.', 'renna.stoltenberg@hotmail.com', 'Future Accounts Facilitator', '985-093-4371 x07269', 0, 'https://picsum.photos/200/300?random=5', 4, 34),
(47, '2022-09-02 20:00:00', NULL, NULL, NULL, '234 Ozzie Bypass, West Daynaville, KS 23428-8269', 'Omnis consequatur fugit.', 'bula.runte@hotmail.com', 'Human Directives Agent', '1-081-732-9870', 0, 'https://picsum.photos/200/300?random=6', 1, 28),
(48, '2022-09-13 20:00:00', NULL, NULL, NULL, '2163 Noble Junctions, South Claudiochester, OR 90788-1223', 'Ducimus iusto saepe nostrum quisquam iste est.', 'tristan.borer@yahoo.com', 'Legacy Group Consultant', '1-919-635-4818 x74184', 0, 'https://picsum.photos/200/300?random=7', 2, 12),
(49, '2022-09-16 20:00:00', NULL, NULL, NULL, '8362 Cummerata Falls, Selinaport, AZ 19955-8531', 'Similique fugit aspernatur vel unde.', 'shandra.cormier@hotmail.com', 'Future Intranet Assistant', '229.834.1518 x0657', 1, 'https://picsum.photos/200/300?random=8', 2, 25),
(50, '2022-09-02 20:00:00', NULL, NULL, NULL, '2153 Ankunding Walks, New Ediemouth, ME 64106', 'Et esse sequi nesciunt maxime.', 'dirk.dooley@gmail.com', 'Regional Paradigm Strategist', '(125) 837-7405 x5963', 1, 'https://picsum.photos/200/300?random=9', 3, 41),
(51, '2022-09-08 20:00:00', NULL, NULL, NULL, 'Suite 632 599 Reuben Fords, Port Theresiaburgh, AL 55336-1039', 'Minima rerum perferendis illo ducimus non temporibus dolorum.', 'myrtle.quigley@gmail.com', 'Regional Branding Designer', '809.308.0138', 0, 'https://picsum.photos/200/300?random=10', 4, 18),
(52, '2022-09-28 20:00:00', NULL, NULL, NULL, '4219 Shannon Way, Diafurt, KS 79350', 'Sit voluptatibus voluptatem.', 'tenisha.zemlak@gmail.com', 'Corporate Optimization Producer', '597-360-9819 x70933', 0, 'https://picsum.photos/200/300?random=11', 4, 32),
(53, '2022-09-27 20:00:00', NULL, NULL, NULL, 'Apt. 237 53999 Haag Circle, New Ambroseshire, CA 52402-4777', 'Eos aut eaque et autem.', 'teressa.beatty@yahoo.com', 'Regional Marketing Analyst', '1-486-934-5695', 1, 'https://picsum.photos/200/300?random=12', 3, 16),
(54, '2022-09-11 20:00:00', NULL, NULL, NULL, '838 Schinner Centers, Cleoview, MD 27334-0161', 'Quidem quo culpa ullam rerum vel.', 'ernestine.boehm@gmail.com', 'Regional Research Analyst', '(347) 435-1799', 1, 'https://picsum.photos/200/300?random=13', 4, 12),
(55, '2022-09-15 20:00:00', NULL, NULL, NULL, '3406 Bednar Burgs, Lake Tiamouth, NY 27524-7419', 'A quis occaecati autem quaerat earum ipsam placeat.', 'fidelia.nolan@gmail.com', 'Lead Creative Planner', '1-143-409-5286 x344', 1, 'https://picsum.photos/200/300?random=14', 3, 32),
(56, '2022-09-06 20:00:00', NULL, NULL, NULL, 'Suite 234 74024 Predovic Parks, Schroederfort, TN 22152-5118', 'Dolor iste ullam aut molestiae in qui.', 'joesph.kuvalis@hotmail.com', 'Lead Quality Orchestrator', '043.311.3655 x47238', 1, 'https://picsum.photos/200/300?random=15', 2, 10),
(57, '2022-09-23 20:00:00', NULL, NULL, NULL, 'Apt. 163 48603 Hartmann Island, New Maximaport, OK 50410-4143', 'Fugit iusto necessitatibus.', 'lavern.gottlieb@hotmail.com', 'Direct Functionality Executive', '1-377-210-8102 x4006', 1, 'https://picsum.photos/200/300?random=16', 2, 17),
(58, '2022-09-22 20:00:00', NULL, NULL, NULL, '32565 Hand Flats, Aftonshire, TN 51472', 'Molestiae quibusdam labore voluptate.', 'korey.glover@yahoo.com', 'Human Division Analyst', '854.350.7601 x8989', 1, 'https://picsum.photos/200/300?random=17', 3, 18),
(59, '2022-09-19 20:00:00', NULL, NULL, NULL, 'Suite 385 04202 Elmo Skyway, Raynorfurt, MN 62155', 'Magnam veniam vero distinctio.', 'terry.ullrich@gmail.com', 'Central Applications Planner', '885-930-3524', 0, 'https://picsum.photos/200/300?random=18', 2, 28),
(60, '2022-09-12 20:00:00', NULL, NULL, NULL, 'Suite 829 12677 Temika Throughway, West Annita, WY 09263-5328', 'Debitis ad hic animi consequuntur sequi id sed.', 'truman.hand@yahoo.com', 'Future Configuration Engineer', '(240) 300-6038 x5231', 1, 'https://picsum.photos/200/300?random=19', 2, 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_shopping_cart` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `address`, `is_shopping_cart`, `name`, `status`, `total_price`, `user_id`) VALUES
(1, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '492 Georgiann Dale, Port Jeremy, SD 97659', b'0', 'Ione Gottlieb', 3, '4220000.00', 40),
(2, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 143 19176 Olson Roads, Lake Myrta, AK 13211-0906', b'1', 'Dr. Zella Lindgren', 3, '13610000.00', 10),
(3, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '44168 Abernathy Ramp, Younghaven, LA 59714', b'1', 'Terence Paucek V', 3, '6870000.00', 43),
(4, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '831 Tod Road, South Edwinburgh, FL 17031-0674', b'0', 'Luana Dickens', 3, '1970000.00', 40),
(5, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '24456 Gutmann Forge, South Kathie, ID 11626-4722', b'1', 'Moira Schinner', 3, '5850000.00', 21),
(6, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '30101 Huels Crescent, Blockborough, WA 71451', b'0', 'Cornell Breitenberg', 3, '10390000.00', 46),
(7, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 192 7181 O\'Connell Junction, Bobhaven, HI 20951', b'0', 'Freddy Oberbrunner', 3, '8400000.00', 5),
(8, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 292 61175 Mertz Lakes, Yanmouth, VT 15431-5172', b'1', 'Carmine Larson', 3, '2000000.00', 9),
(9, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 233 4721 Douglas Roads, Port Maxwellburgh, MO 92183', b'1', 'Barbara Miller IV', 3, '5310000.00', 50),
(10, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 367 14923 Mann Turnpike, West Tabethaville, NE 43088', b'0', 'Theda Greenholt Jr.', 3, '7460000.00', 18),
(11, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '556 Haag Alley, Port Lawerence, OR 49583', b'1', 'Mazie Sauer', 3, '5970000.00', 4),
(12, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 835 698 Joe Ramp, Kyongside, WV 93629', b'1', 'Louie Lang Sr.', 3, '6080000.00', 37),
(13, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 876 96489 Towne Throughway, West Cristina, NJ 67514', b'1', 'Shirl Price III', 3, '10580000.00', 6),
(14, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '790 Kazuko Ways, New Phylisfurt, NM 80583-4873', b'0', 'Ms. Rolando Marks', 3, '5680000.00', 15),
(15, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '533 Tamika Circle, Lake Aracelis, SD 05086-5673', b'0', 'Kyoko Luettgen', 3, '7250000.00', 22),
(16, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '1302 Metz Mountain, North Janellamouth, VT 41036-1702', b'0', 'Kraig Heaney', 3, '2880000.00', 15),
(17, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '280 Luettgen Wall, Abbottstad, MT 81721-9348', b'0', 'Ms. Adelle Lebsack', 3, '3120000.00', 13),
(18, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '9928 June Fort, Scottyville, KY 58225', b'0', 'Marlon Carroll', 3, '10190000.00', 29),
(19, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '72003 Christopher Gardens, Mosciskiberg, MD 86465', b'1', 'Araceli Sauer', 3, '9260000.00', 17),
(20, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '279 Carter Street, Bauchmouth, VA 84019', b'1', 'Justine Gaylord', 3, '4690000.00', 46),
(21, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '10633 Eilene Bridge, West Jennineville, ID 63553', b'0', 'Louie Roob Sr.', 3, '4360000.00', 49),
(22, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 108 3314 Manuel Overpass, Port Vannesa, NC 92584-5213', b'0', 'Angel Weimann', 3, '3870000.00', 15),
(23, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '160 Treutel Shoals, Port Loyd, WI 39049-1954', b'1', 'Jarred Heathcote', 3, '3370000.00', 42),
(24, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 161 408 Tremblay Mountain, East Ernestobury, ND 91270-5953', b'0', 'Loan Bergnaum III', 3, '6640000.00', 22),
(25, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '311 Bogisich Spurs, Port Roryville, OK 90274-9461', b'0', 'Elton Douglas', 3, '4570000.00', 43),
(26, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '602 Harber Mill, Port Roxy, AL 09531-1457', b'1', 'Monte Zieme', 3, '5900000.00', 31),
(27, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '9187 Carmela Coves, Lake Shanitamouth, NH 20396-8157', b'1', 'Eusebio Franecki', 3, '2900000.00', 36),
(28, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 342 77480 Emory Valleys, Beermouth, MS 81785-2715', b'1', 'Angelita Stracke', 3, '6680000.00', 22),
(29, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 341 23422 Audry Harbors, East Quintinfort, WA 24433-1839', b'0', 'Percy Ledner', 3, '5380000.00', 44),
(30, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '7764 Ruecker Canyon, New Jeanne, SC 57780-5148', b'1', 'Willis Wiza', 3, '6100000.00', 40),
(31, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '22789 Carson Stravenue, McLaughlinhaven, IA 76529', b'1', 'Jonathon Dicki', 3, '9400000.00', 27),
(32, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 087 36551 Moen View, Quincychester, VT 36396', b'1', 'Salvatore O\'Hara', 3, '9930000.00', 44),
(33, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '6841 Kozey Isle, Haywoodhaven, NH 58913', b'1', 'Charlie Ondricka', 3, '13700000.00', 38),
(34, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 608 890 Borer Ways, Pfannerstillhaven, WY 93146-8985', b'0', 'Mrs. Anh O\'Connell', 3, '6220000.00', 29),
(35, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 951 97063 Williams Burgs, North Linwoodberg, OR 01415', b'0', 'Alec Reichert', 3, '9660000.00', 24),
(36, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 909 72749 Weldon Expressway, New Pablo, ME 73578', b'1', 'Miss Abbey Harris', 3, '2730000.00', 42),
(37, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '5030 Grady Manors, South Wilbermouth, IN 54843-7884', b'0', 'Meri Huel', 3, '4600000.00', 37),
(38, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '635 Smith Points, South Melynda, AK 24378-5624', b'0', 'Ashleigh Mohr', 3, '5550000.00', 43),
(39, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 494 30729 Harris Manor, Ritchiemouth, IL 78713', b'1', 'Ethel Dickens', 3, '6110000.00', 11),
(40, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '861 Dorinda Fort, West Micha, OK 79179', b'1', 'Brock Schmidt', 3, '1920000.00', 48),
(41, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '389 Weimann Hills, Port Jaunitamouth, UT 25617', b'1', 'Ryan Hudson', 3, '9560000.00', 39),
(42, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '63746 Bergnaum Port, Port Santoshaven, OR 73071-8832', b'0', 'Christy Bogisich', 3, '3610000.00', 1),
(43, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '189 Hegmann Villages, Anabelville, NV 51252-1862', b'1', 'Levi Skiles', 3, '11350000.00', 39),
(44, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 629 71906 Crona Parkways, Juanmouth, HI 58512', b'0', 'Sharlene Frami', 3, '6480000.00', 36),
(45, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 102 8427 James Square, Lake Olga, MA 08967', b'0', 'Katrice Leffler II', 3, '4290000.00', 43),
(46, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '1412 Kasey Mountain, New Eugeneport, FL 45453', b'0', 'Darrel Braun PhD', 3, '6340000.00', 14),
(47, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 066 3404 Brakus Ville, Douglassmouth, NY 91425', b'1', 'Mr. Alphonse Skiles', 3, '3970000.00', 29),
(48, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', '1209 Deandra Village, Lubowitzbury, VT 22756', b'1', 'Star Homenick', 3, '3120000.00', 52),
(49, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Suite 520 918 Martin Plaza, Jeramyland, MS 50266-0514', b'0', 'Lonnie Anderson', 3, '4200000.00', 11),
(50, '2022-06-18 00:00:00', NULL, NULL, '2022-06-18 00:00:00', 'Apt. 274 88140 Classie Throughway, North Charlieland, CA 79305-2478', b'1', 'Cristie Wunsch', 3, '7840000.00', 7),
(51, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 545 08415 Rod Mews, Heribertoport, AR 86431', b'1', 'Marlin Lind', 3, '2520000.00', 38),
(52, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '568 Ernser Canyon, New Dusty, CO 53658', b'0', 'Kyoko Doyle', 3, '6020000.00', 23),
(53, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '1021 Littel Locks, Nettiefort, ID 54765', b'0', 'Monty Volkman', 3, '3890000.00', 48),
(54, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 261 5529 Cartwright Circle, Kassulkeville, SD 97177-6138', b'1', 'Rusty Lehner Sr.', 3, '7040000.00', 23),
(55, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '907 Hassan Falls, East Deon, RI 39906-1680', b'0', 'Freddie Hilpert', 3, '3250000.00', 5),
(56, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '40304 Rolland Ports, Bufordfurt, ID 65944', b'1', 'Mardell Greenholt', 3, '1360000.00', 15),
(57, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 907 76185 Matt Tunnel, New Maximaton, AL 17880', b'1', 'Shanae Abbott', 3, '8790000.00', 45),
(58, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '461 Shandi Park, South Glenn, IN 42011-9848', b'1', 'Moises Rohan', 3, '1520000.00', 29),
(59, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '081 Hegmann Ports, Maryjomouth, ND 60465', b'0', 'Winston Mraz', 3, '7400000.00', 15),
(60, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '56595 Vito Port, New Roxannfort, VA 42179-6756', b'0', 'Harry Mraz', 3, '6710000.00', 25),
(61, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '323 Hahn Springs, Friesenfort, VT 91117', b'1', 'Francesco Kunde', 3, '7540000.00', 8),
(62, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '9229 Brendon View, Lehnershire, MI 07917', b'0', 'Antione Johnson', 3, '9580000.00', 13),
(63, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '1057 Nader Keys, North Landon, GA 43708-2390', b'0', 'Delma Howell', 3, '1240000.00', 50),
(64, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '430 O\'Hara Fort, North Gregory, MT 47120-5800', b'0', 'Theo O\'Kon', 3, '5680000.00', 47),
(65, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '6369 Raynor Points, Lake Tisaland, NY 00130', b'0', 'Dori VonRueden', 3, '5860000.00', 33),
(66, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 313 470 Josefina Mountains, East Al, ND 06137-4103', b'1', 'Mallie Langosh', 3, '2040000.00', 27),
(67, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '717 Kiehn Divide, Champlinstad, IA 92372-7543', b'1', 'Scottie Lindgren Sr.', 3, '4520000.00', 24),
(68, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '4385 Beahan Highway, Keeblerfort, AL 45166', b'0', 'Alec Block', 3, '10920000.00', 21),
(69, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 412 8651 Brakus Streets, Port Clarenceview, MD 64093', b'0', 'Cruz Pagac', 3, '4910000.00', 43),
(70, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 475 4336 Rubie Track, Shakiamouth, NV 78881-0523', b'1', 'Evon Russel', 3, '2380000.00', 49),
(71, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 672 2103 Bednar Pine, South Demetrius, IA 82468', b'1', 'Mrs. Vicki Gusikowski', 3, '3550000.00', 28),
(72, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '70713 Clifton Divide, Kinghaven, OK 08351', b'0', 'Mr. Jacquelyne Dicki', 3, '5590000.00', 1),
(73, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 021 0136 Baumbach Freeway, North Rhiannonport, WY 65103', b'0', 'Edwardo Christiansen', 3, '3730000.00', 27),
(74, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '16104 Lynch Pine, Schillerhaven, WA 63854-7117', b'1', 'Alina Mayert DDS', 3, '12380000.00', 31),
(75, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '3981 Erik Knoll, Westborough, AR 84979-9277', b'0', 'Marcel Harris', 3, '8790000.00', 3),
(76, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '9833 Mel Walk, Port Bobetteville, IN 43312-7310', b'1', 'Catarina Homenick', 3, '7390000.00', 33),
(77, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 123 781 Schmeler Ville, West Cristopherville, PA 42733', b'0', 'Charlene Zieme', 3, '3150000.00', 10),
(78, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '6209 Willy Knoll, New Annabelle, NH 89777', b'0', 'Boyd Rice', 3, '3530000.00', 10),
(79, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '21723 Kuvalis Trail, Alfonzofurt, MT 45256', b'0', 'Jimmy Gleichner Sr.', 3, '4110000.00', 35),
(80, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 457 542 Pearline Valleys, Port Cherry, NY 33497', b'1', 'Leonida Koss', 3, '8570000.00', 22),
(81, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '8792 Koss Falls, Lebsackmouth, TN 31975', b'1', 'Kyle Emmerich', 3, '7070000.00', 10),
(82, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '2826 Stark Radial, Legrosfurt, PA 45441', b'1', 'Mrs. Hilario Armstrong', 3, '5870000.00', 23),
(83, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 901 63254 Watsica Lakes, West Lashell, WA 93817', b'1', 'Teddy Jacobs', 3, '3340000.00', 48),
(84, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '31533 Funk Ranch, South Tedchester, ME 33015', b'0', 'Lionel Feeney', 3, '3240000.00', 40),
(85, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '879 Turner Mountain, Trompfurt, KY 21483', b'0', 'Miss Dagny Dicki', 3, '6950000.00', 36),
(86, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '913 Barrows Garden, Hettingerside, NE 04862', b'1', 'Bettie Doyle', 3, '10520000.00', 47),
(87, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 337 658 Schneider Manor, Powlowskifurt, MN 98796-0009', b'0', 'Ms. Carmen Shanahan', 3, '12180000.00', 8),
(88, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '525 Dwight Mission, Katelynside, WA 13340-7437', b'1', 'Kristin Gaylord DVM', 3, '3940000.00', 52),
(89, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 501 37683 Cyrstal Village, New Maxwell, AL 43621-8335', b'1', 'Buster Nikolaus', 3, '7540000.00', 45),
(90, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 570 29858 George Mountains, East Shaneka, MT 02482', b'1', 'Rochelle Brakus', 3, '2940000.00', 26),
(91, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '18408 Shyla Trace, Lake Rosannview, MS 71590-4623', b'0', 'Alta Blanda', 3, '7810000.00', 37),
(92, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 489 5797 Warner Cape, Donellamouth, OH 27223-0209', b'0', 'Chad O\'Hara V', 3, '2520000.00', 51),
(93, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '57594 Aracely Mills, Darlenaton, NY 90832-2176', b'1', 'Dr. Francis Dickinson', 3, '4740000.00', 26),
(94, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '7816 Wunsch Falls, East Mario, MI 11242-8193', b'1', 'Casey Marvin', 3, '4750000.00', 38),
(95, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '483 Shaunna Roads, Lednershire, CT 44648', b'1', 'Hyacinth Witting II', 3, '9070000.00', 25),
(96, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 450 77151 West Mount, North Yun, MD 93071', b'0', 'Donn Ruecker III', 3, '3820000.00', 33),
(97, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 193 742 Howe Club, West Aubrey, CO 94915-0159', b'0', 'Mrs. Walter Rutherford', 3, '7370000.00', 44),
(98, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 565 433 Modesta Flats, Ratkemouth, TX 31595', b'0', 'Titus Casper', 3, '6870000.00', 6),
(99, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Suite 210 11655 Chadwick Pike, Karmenton, UT 10844', b'1', 'Lonny Swaniawski', 3, '9220000.00', 25),
(100, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', '17266 Tommie Islands, North Anastaciamouth, LA 43037', b'1', 'Reed Haley', 3, '9220000.00', 48),
(101, '2022-06-16 00:00:00', NULL, NULL, '2022-06-16 00:00:00', '256 Kuhic Fords, West Justin, WA 46355-8199', b'1', 'Arnoldo Klocko PhD', 0, '6800000.00', 7),
(102, '2022-06-16 00:00:00', NULL, NULL, '2022-06-16 00:00:00', '34576 Dion Curve, New Jewel, KS 75680-6648', b'1', 'Aurelio Jacobson', 0, '8300000.00', 31),
(103, '2022-06-03 00:00:00', NULL, NULL, '2022-06-03 00:00:00', 'Apt. 036 77575 Murray Forest, Kulasview, WI 35129', b'1', 'Brandie Emmerich', 0, '4910000.00', 10),
(104, '2022-06-12 00:00:00', NULL, NULL, '2022-06-12 00:00:00', '6501 Harber Gardens, South Evan, VT 08584', b'1', 'Genie Batz', 0, '3080000.00', 11),
(105, '2022-06-12 00:00:00', NULL, NULL, '2022-06-12 00:00:00', '92070 Vandervort Haven, South Tuanside, WY 57791', b'0', 'Dr. Adam Yundt', 0, '5470000.00', 24),
(106, '2022-06-29 00:00:00', NULL, NULL, '2022-06-29 00:00:00', '15660 Balistreri Fort, Port Chistad, OK 54434-9016', b'0', 'Hien D\'Amore', 0, '1990000.00', 29),
(107, '2022-06-17 00:00:00', NULL, NULL, '2022-06-17 00:00:00', 'Apt. 910 6346 Tyree Drive, West Ira, MN 54397-3368', b'1', 'Kecia Hansen', 0, '2310000.00', 7),
(108, '2022-06-12 00:00:00', NULL, NULL, '2022-06-12 00:00:00', 'Suite 962 00946 Crooks Mission, New Arie, ND 85209', b'0', 'Althea Hahn', 0, '4780000.00', 17),
(109, '2022-06-10 00:00:00', NULL, NULL, '2022-06-10 00:00:00', '921 Eugene Views, Bogisichborough, CA 42071', b'1', 'Craig Cassin', 0, '7170000.00', 43),
(110, '2022-06-26 00:00:00', NULL, NULL, '2022-06-26 00:00:00', 'Apt. 857 9563 Lindgren Spring, South Rorymouth, WY 97044-5470', b'1', 'Marcus Stark', 0, '8430000.00', 39),
(111, '2022-06-26 00:00:00', NULL, NULL, '2022-06-26 00:00:00', '216 Walker Plain, Lavernemouth, WA 08833', b'1', 'Jonah Watsica', 0, '10600000.00', 24),
(112, '2022-06-02 00:00:00', NULL, NULL, '2022-06-02 00:00:00', 'Apt. 461 548 Chong Cove, North Lindy, NJ 25760', b'0', 'Forest Pfeffer', 0, '7080000.00', 3),
(113, '2022-06-20 00:00:00', NULL, NULL, '2022-06-20 00:00:00', 'Suite 017 139 Raquel Garden, Janiseburgh, NH 21832', b'0', 'Mary Wehner', 0, '4310000.00', 19),
(114, '2022-06-13 00:00:00', NULL, NULL, '2022-06-13 00:00:00', 'Apt. 906 7259 Franecki Circle, North Emile, MT 90345-6496', b'0', 'Magan Wiegand III', 0, '5710000.00', 2),
(115, '2022-06-08 00:00:00', NULL, NULL, '2022-06-08 00:00:00', 'Suite 618 752 Weber Creek, Necolefort, AK 04232', b'0', 'Phyllis Padberg', 0, '4050000.00', 31),
(116, '2022-06-03 00:00:00', NULL, NULL, '2022-06-03 00:00:00', '087 Broderick Neck, Hellerside, OR 65481-0828', b'0', 'Loyd Langosh', 0, '10870000.00', 5),
(117, '2022-06-07 00:00:00', NULL, NULL, '2022-06-07 00:00:00', 'Apt. 816 975 Rashad Islands, East Chong, AK 91849', b'1', 'Mickey Franecki', 0, '3460000.00', 44),
(118, '2022-06-02 00:00:00', NULL, NULL, '2022-06-02 00:00:00', '662 Dillon Camp, Hungton, CA 89306-8779', b'1', 'Brigida Nikolaus', 0, '6310000.00', 51),
(119, '2022-06-07 00:00:00', NULL, NULL, '2022-06-07 00:00:00', '4102 Millard Points, New Berniece, ND 65771', b'1', 'Mrs. Santos Kulas', 0, '5840000.00', 38),
(120, '2022-06-22 00:00:00', NULL, NULL, '2022-06-22 00:00:00', '65937 Lanny Square, Franklynview, AR 23658-1490', b'1', 'Mr. Carlos Koepp', 0, '8660000.00', 28),
(121, '2022-05-10 00:00:00', NULL, NULL, '2022-05-10 00:00:00', 'Apt. 237 889 Marvin Gateway, New Yukikomouth, MO 62994-6163', b'0', 'Rolande Moore', 1, '8660000.00', 24),
(122, '2022-05-25 00:00:00', NULL, NULL, '2022-05-25 00:00:00', 'Suite 113 60235 Geri Walk, Port Adalberto, UT 35928-3996', b'0', 'Wilhelmina Klein Sr.', 1, '2050000.00', 28),
(123, '2022-05-02 00:00:00', NULL, NULL, '2022-05-02 00:00:00', 'Suite 940 372 Durgan Rapids, Lake Sheriton, SD 02359-5986', b'0', 'Ruben Halvorson', 1, '8890000.00', 11),
(124, '2022-05-30 00:00:00', NULL, NULL, '2022-05-30 00:00:00', '9823 Margaretta Grove, Vernellshire, UT 98811', b'1', 'Antonio Leffler MD', 1, '2570000.00', 35),
(125, '2022-05-12 00:00:00', NULL, NULL, '2022-05-12 00:00:00', '330 Powlowski Inlet, Joshuafort, IN 38453-6336', b'0', 'Mrs. Pa Leffler', 1, '9900000.00', 4),
(126, '2022-05-29 00:00:00', NULL, NULL, '2022-05-29 00:00:00', 'Suite 501 18895 Eugene Prairie, Kiphaven, FL 06451', b'0', 'Lida Fritsch', 1, '9120000.00', 25),
(127, '2022-05-11 00:00:00', NULL, NULL, '2022-05-11 00:00:00', 'Suite 370 073 Wally Drive, West Lyla, AK 36029-4585', b'0', 'Margret Witting', 1, '4370000.00', 14),
(128, '2022-05-16 00:00:00', NULL, NULL, '2022-05-16 00:00:00', 'Apt. 484 68688 Treutel Lights, Prohaskafort, NJ 94392', b'1', 'Von Kassulke', 1, '2760000.00', 16),
(129, '2022-05-02 00:00:00', NULL, NULL, '2022-05-02 00:00:00', '915 Heaney Mills, West Carisa, MS 37776-0534', b'0', 'Lionel Hoeger', 1, '3840000.00', 17),
(130, '2022-05-23 00:00:00', NULL, NULL, '2022-05-23 00:00:00', '7283 Judson Rapid, Bradtketown, NC 25472', b'1', 'Boyce Witting III', 1, '8000000.00', 25),
(131, '2022-04-16 00:00:00', NULL, NULL, '2022-04-16 00:00:00', '63284 Thiel Shoal, Lake Alphonse, HI 70360', b'0', 'Emmaline Armstrong II', 1, '7210000.00', 52),
(132, '2022-04-22 00:00:00', NULL, NULL, '2022-04-22 00:00:00', '269 Adams Square, Danikaberg, OR 05320', b'1', 'Cleveland Renner', 1, '6420000.00', 44),
(133, '2022-04-22 00:00:00', NULL, NULL, '2022-04-22 00:00:00', 'Apt. 270 31203 Lashawn Courts, Karlafort, NY 45082-0013', b'1', 'Josie D\'Amore', 1, '5680000.00', 27),
(134, '2022-04-19 00:00:00', NULL, NULL, '2022-04-19 00:00:00', '445 McClure Oval, North Irvinmouth, RI 00259', b'0', 'Anne Wiegand', 1, '6350000.00', 25),
(135, '2022-04-18 00:00:00', NULL, NULL, '2022-04-18 00:00:00', '37911 Merrilee Islands, South Serita, ME 69921-8955', b'1', 'Shelli Blanda', 1, '7680000.00', 27),
(136, '2022-04-27 00:00:00', NULL, NULL, '2022-04-27 00:00:00', 'Apt. 434 53382 Walsh Corner, Gutkowskihaven, MA 95656-2720', b'0', 'Sharla Mosciski IV', 1, '5120000.00', 30),
(137, '2022-04-12 00:00:00', NULL, NULL, '2022-04-12 00:00:00', '4780 Pfannerstill Estates, Lake Sergio, DE 81566', b'0', 'Gene Swift DVM', 1, '12590000.00', 37),
(138, '2022-04-07 00:00:00', NULL, NULL, '2022-04-07 00:00:00', 'Suite 238 02050 Metz Circle, Kerlukefort, NV 04799', b'0', 'Hyun Schneider', 1, '3060000.00', 31),
(139, '2022-04-18 00:00:00', NULL, NULL, '2022-04-18 00:00:00', '11981 Reginald Ferry, Travisside, NJ 19577-1488', b'1', 'Hobert Bergstrom', 1, '3320000.00', 27),
(140, '2022-04-02 00:00:00', NULL, NULL, '2022-04-02 00:00:00', 'Suite 985 495 Richie Flats, West Carmenfort, WV 14166-2594', b'1', 'Dung Hermann', 1, '8410000.00', 35),
(141, '2022-04-27 00:00:00', NULL, NULL, '2022-04-27 00:00:00', 'Apt. 544 3281 Mariano Throughway, Agustinberg, ME 99521', b'0', 'Mr. Glinda Rosenbaum', 2, '2590000.00', 31),
(142, '2022-04-15 00:00:00', NULL, NULL, '2022-04-15 00:00:00', '4421 Junior Land, New Stephenie, TX 22786-8773', b'1', 'Elroy Gislason', 2, '7030000.00', 18),
(143, '2022-04-08 00:00:00', NULL, NULL, '2022-04-08 00:00:00', 'Suite 563 18147 Spinka Villages, Lake Irvington, WI 51299', b'0', 'Magaret Torphy II', 2, '2210000.00', 16),
(144, '2022-04-10 00:00:00', NULL, NULL, '2022-04-10 00:00:00', 'Suite 355 78834 Hand Manors, South Laruehaven, CT 94568', b'1', 'Lou Johns', 2, '1950000.00', 43),
(145, '2022-03-01 00:00:00', NULL, NULL, '2022-03-01 00:00:00', 'Suite 122 20208 Argentina Canyon, Samview, WA 52290-2918', b'0', 'Dr. Darius Schulist', 2, '9660000.00', 35),
(146, '2022-03-24 00:00:00', NULL, NULL, '2022-03-24 00:00:00', '19157 Prosacco Station, Lake Nidia, WI 77205-8989', b'0', 'Veda Jakubowski', 2, '9420000.00', 10),
(147, '2022-03-29 00:00:00', NULL, NULL, '2022-03-29 00:00:00', 'Suite 363 2193 Rohan Island, West Lowell, AZ 22921', b'1', 'Shiloh Hagenes', 2, '1380000.00', 14),
(148, '2022-03-08 00:00:00', NULL, NULL, '2022-03-08 00:00:00', '3839 Cherlyn Fort, Macmouth, ID 31191', b'1', 'Chance Ondricka', 2, '7370000.00', 51),
(149, '2022-03-16 00:00:00', NULL, NULL, '2022-03-16 00:00:00', 'Suite 646 08254 Monahan Island, South Cindy, VA 30441-4353', b'1', 'Nigel Davis', 2, '7890000.00', 20),
(150, '2022-03-26 00:00:00', NULL, NULL, '2022-03-26 00:00:00', '677 Barton Fords, West Kasey, SC 89636-7574', b'0', 'Arletha Collins', 2, '9140000.00', 14),
(151, '2022-03-14 00:00:00', NULL, NULL, '2022-03-14 00:00:00', 'Apt. 143 75495 Nikolaus Trail, North Edgardo, WV 31296-0812', b'1', 'Matt Lockman', 2, '3540000.00', 38),
(152, '2022-03-19 00:00:00', NULL, NULL, '2022-03-19 00:00:00', 'Apt. 330 8009 Zofia Spring, Kelleyhaven, MI 17622-4872', b'1', 'Maryjo Prohaska', 2, '8800000.00', 26),
(153, '2022-03-06 00:00:00', NULL, NULL, '2022-03-06 00:00:00', '1267 Ullrich Turnpike, East Lupestad, OK 58781-8684', b'0', 'Mr. Adelia Flatley', 2, '4320000.00', 47),
(154, '2022-03-08 00:00:00', NULL, NULL, '2022-03-08 00:00:00', '24642 Alonso Highway, Mozellashire, PA 28779-8547', b'0', 'Marisol Windler', 2, '3680000.00', 30),
(155, NULL, NULL, NULL, '2022-11-18 17:37:42', 'Thanh Hoa', b'0', 'Pham Dat', 4, '1060000.00', 2),
(156, NULL, NULL, NULL, '2022-11-18 17:38:31', 'Thanh Hoa', b'0', 'Pham Dat', 4, '300000.00', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `quantity`, `unit_price`) VALUES
(1, 35, NULL, NULL, NULL, NULL, 3, '1110000.00'),
(1, 56, NULL, NULL, NULL, NULL, 1, '890000.00'),
(2, 22, NULL, NULL, NULL, NULL, 3, '610000.00'),
(2, 23, NULL, NULL, NULL, NULL, 4, '1600000.00'),
(2, 39, NULL, NULL, NULL, NULL, 2, '1170000.00'),
(2, 44, NULL, NULL, NULL, NULL, 4, '760000.00'),
(3, 29, NULL, NULL, NULL, NULL, 3, '1120000.00'),
(3, 39, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(4, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(4, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(4, 18, NULL, NULL, NULL, NULL, 1, '440000.00'),
(5, 30, NULL, NULL, NULL, NULL, 3, '1080000.00'),
(5, 53, NULL, NULL, NULL, NULL, 3, '870000.00'),
(6, 20, NULL, NULL, NULL, NULL, 1, '210000.00'),
(6, 50, NULL, NULL, NULL, NULL, 3, '1300000.00'),
(6, 55, NULL, NULL, NULL, NULL, 4, '1570000.00'),
(7, 31, NULL, NULL, NULL, NULL, 4, '990000.00'),
(7, 35, NULL, NULL, NULL, NULL, 4, '1110000.00'),
(8, 15, NULL, NULL, NULL, NULL, 1, '790000.00'),
(8, 20, NULL, NULL, NULL, NULL, 1, '210000.00'),
(8, 32, NULL, NULL, NULL, NULL, 2, '360000.00'),
(8, 46, NULL, NULL, NULL, NULL, 2, '140000.00'),
(9, 15, NULL, NULL, NULL, NULL, 4, '790000.00'),
(9, 17, NULL, NULL, NULL, NULL, 1, '550000.00'),
(9, 23, NULL, NULL, NULL, NULL, 1, '1600000.00'),
(10, 21, NULL, NULL, NULL, NULL, 2, '710000.00'),
(10, 35, NULL, NULL, NULL, NULL, 4, '1110000.00'),
(10, 43, NULL, NULL, NULL, NULL, 4, '400000.00'),
(11, 17, NULL, NULL, NULL, NULL, 3, '550000.00'),
(11, 30, NULL, NULL, NULL, NULL, 4, '1080000.00'),
(12, 18, NULL, NULL, NULL, NULL, 4, '440000.00'),
(12, 30, NULL, NULL, NULL, NULL, 4, '1080000.00'),
(13, 15, NULL, NULL, NULL, NULL, 1, '790000.00'),
(13, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(13, 39, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(13, 50, NULL, NULL, NULL, NULL, 4, '1300000.00'),
(14, 2, NULL, NULL, NULL, NULL, 1, '290000.00'),
(14, 13, NULL, NULL, NULL, NULL, 3, '840000.00'),
(14, 18, NULL, NULL, NULL, NULL, 4, '440000.00'),
(14, 35, NULL, NULL, NULL, NULL, 1, '1110000.00'),
(15, 14, NULL, NULL, NULL, NULL, 4, '670000.00'),
(15, 25, NULL, NULL, NULL, NULL, 1, '1430000.00'),
(15, 55, NULL, NULL, NULL, NULL, 2, '1570000.00'),
(16, 40, NULL, NULL, NULL, NULL, 3, '200000.00'),
(16, 44, NULL, NULL, NULL, NULL, 3, '760000.00'),
(17, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(17, 23, NULL, NULL, NULL, NULL, 1, '1600000.00'),
(17, 33, NULL, NULL, NULL, NULL, 1, '360000.00'),
(18, 6, NULL, NULL, NULL, NULL, 3, '790000.00'),
(18, 23, NULL, NULL, NULL, NULL, 4, '1600000.00'),
(18, 59, NULL, NULL, NULL, NULL, 2, '710000.00'),
(19, 13, NULL, NULL, NULL, NULL, 4, '840000.00'),
(19, 45, NULL, NULL, NULL, NULL, 1, '1190000.00'),
(19, 51, NULL, NULL, NULL, NULL, 3, '1570000.00'),
(20, 16, NULL, NULL, NULL, NULL, 1, '1180000.00'),
(20, 39, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(21, 22, NULL, NULL, NULL, NULL, 4, '610000.00'),
(21, 28, NULL, NULL, NULL, NULL, 2, '660000.00'),
(21, 37, NULL, NULL, NULL, NULL, 4, '150000.00'),
(22, 37, NULL, NULL, NULL, NULL, 2, '150000.00'),
(22, 45, NULL, NULL, NULL, NULL, 3, '1190000.00'),
(23, 44, NULL, NULL, NULL, NULL, 1, '760000.00'),
(23, 53, NULL, NULL, NULL, NULL, 3, '870000.00'),
(24, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(24, 21, NULL, NULL, NULL, NULL, 4, '710000.00'),
(24, 43, NULL, NULL, NULL, NULL, 4, '400000.00'),
(24, 58, NULL, NULL, NULL, NULL, 3, '610000.00'),
(25, 58, NULL, NULL, NULL, NULL, 4, '610000.00'),
(25, 59, NULL, NULL, NULL, NULL, 3, '710000.00'),
(26, 4, NULL, NULL, NULL, NULL, 2, '380000.00'),
(26, 24, NULL, NULL, NULL, NULL, 2, '190000.00'),
(26, 45, NULL, NULL, NULL, NULL, 4, '1190000.00'),
(27, 7, NULL, NULL, NULL, NULL, 1, '320000.00'),
(27, 11, NULL, NULL, NULL, NULL, 2, '550000.00'),
(27, 42, NULL, NULL, NULL, NULL, 1, '1480000.00'),
(28, 9, NULL, NULL, NULL, NULL, 2, '1000000.00'),
(28, 12, NULL, NULL, NULL, NULL, 4, '1170000.00'),
(29, 2, NULL, NULL, NULL, NULL, 1, '290000.00'),
(29, 6, NULL, NULL, NULL, NULL, 2, '790000.00'),
(29, 39, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(30, 20, NULL, NULL, NULL, NULL, 4, '210000.00'),
(30, 53, NULL, NULL, NULL, NULL, 4, '870000.00'),
(30, 56, NULL, NULL, NULL, NULL, 2, '890000.00'),
(31, 2, NULL, NULL, NULL, NULL, 3, '290000.00'),
(31, 15, NULL, NULL, NULL, NULL, 3, '790000.00'),
(31, 35, NULL, NULL, NULL, NULL, 4, '1110000.00'),
(31, 57, NULL, NULL, NULL, NULL, 1, '1720000.00'),
(32, 3, NULL, NULL, NULL, NULL, 3, '1130000.00'),
(32, 28, NULL, NULL, NULL, NULL, 4, '660000.00'),
(32, 50, NULL, NULL, NULL, NULL, 3, '1300000.00'),
(33, 12, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(33, 28, NULL, NULL, NULL, NULL, 4, '660000.00'),
(33, 39, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(33, 41, NULL, NULL, NULL, NULL, 4, '1010000.00'),
(34, 11, NULL, NULL, NULL, NULL, 2, '550000.00'),
(34, 12, NULL, NULL, NULL, NULL, 2, '1170000.00'),
(34, 31, NULL, NULL, NULL, NULL, 2, '990000.00'),
(34, 43, NULL, NULL, NULL, NULL, 2, '400000.00'),
(35, 13, NULL, NULL, NULL, NULL, 2, '840000.00'),
(35, 23, NULL, NULL, NULL, NULL, 3, '1600000.00'),
(35, 49, NULL, NULL, NULL, NULL, 3, '1060000.00'),
(36, 8, NULL, NULL, NULL, NULL, 1, '300000.00'),
(36, 14, NULL, NULL, NULL, NULL, 1, '670000.00'),
(36, 42, NULL, NULL, NULL, NULL, 1, '1480000.00'),
(36, 46, NULL, NULL, NULL, NULL, 2, '140000.00'),
(37, 16, NULL, NULL, NULL, NULL, 3, '1180000.00'),
(37, 49, NULL, NULL, NULL, NULL, 1, '1060000.00'),
(38, 15, NULL, NULL, NULL, NULL, 1, '790000.00'),
(38, 16, NULL, NULL, NULL, NULL, 2, '1180000.00'),
(38, 54, NULL, NULL, NULL, NULL, 4, '600000.00'),
(39, 25, NULL, NULL, NULL, NULL, 1, '1430000.00'),
(39, 39, NULL, NULL, NULL, NULL, 4, '1170000.00'),
(40, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(40, 44, NULL, NULL, NULL, NULL, 1, '760000.00'),
(41, 2, NULL, NULL, NULL, NULL, 1, '290000.00'),
(41, 26, NULL, NULL, NULL, NULL, 3, '1610000.00'),
(41, 42, NULL, NULL, NULL, NULL, 3, '1480000.00'),
(42, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(42, 3, NULL, NULL, NULL, NULL, 2, '1130000.00'),
(42, 24, NULL, NULL, NULL, NULL, 1, '190000.00'),
(43, 16, NULL, NULL, NULL, NULL, 3, '1180000.00'),
(43, 48, NULL, NULL, NULL, NULL, 3, '290000.00'),
(43, 50, NULL, NULL, NULL, NULL, 4, '1300000.00'),
(43, 53, NULL, NULL, NULL, NULL, 2, '870000.00'),
(44, 9, NULL, NULL, NULL, NULL, 1, '1000000.00'),
(44, 19, NULL, NULL, NULL, NULL, 4, '1370000.00'),
(45, 8, NULL, NULL, NULL, NULL, 4, '300000.00'),
(45, 17, NULL, NULL, NULL, NULL, 2, '550000.00'),
(45, 43, NULL, NULL, NULL, NULL, 2, '400000.00'),
(45, 45, NULL, NULL, NULL, NULL, 1, '1190000.00'),
(46, 21, NULL, NULL, NULL, NULL, 2, '710000.00'),
(46, 42, NULL, NULL, NULL, NULL, 1, '1480000.00'),
(46, 57, NULL, NULL, NULL, NULL, 2, '1720000.00'),
(47, 14, NULL, NULL, NULL, NULL, 3, '670000.00'),
(47, 34, NULL, NULL, NULL, NULL, 2, '980000.00'),
(48, 14, NULL, NULL, NULL, NULL, 1, '670000.00'),
(48, 15, NULL, NULL, NULL, NULL, 2, '790000.00'),
(48, 53, NULL, NULL, NULL, NULL, 1, '870000.00'),
(49, 14, NULL, NULL, NULL, NULL, 2, '670000.00'),
(49, 17, NULL, NULL, NULL, NULL, 2, '550000.00'),
(49, 18, NULL, NULL, NULL, NULL, 1, '440000.00'),
(49, 28, NULL, NULL, NULL, NULL, 2, '660000.00'),
(50, 16, NULL, NULL, NULL, NULL, 2, '1180000.00'),
(50, 23, NULL, NULL, NULL, NULL, 2, '1600000.00'),
(50, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(50, 54, NULL, NULL, NULL, NULL, 2, '600000.00'),
(51, 24, NULL, NULL, NULL, NULL, 4, '190000.00'),
(51, 52, NULL, NULL, NULL, NULL, 2, '880000.00'),
(52, 6, NULL, NULL, NULL, NULL, 2, '790000.00'),
(52, 28, NULL, NULL, NULL, NULL, 4, '660000.00'),
(52, 54, NULL, NULL, NULL, NULL, 3, '600000.00'),
(53, 26, NULL, NULL, NULL, NULL, 1, '1610000.00'),
(53, 44, NULL, NULL, NULL, NULL, 3, '760000.00'),
(54, 30, NULL, NULL, NULL, NULL, 4, '1080000.00'),
(54, 34, NULL, NULL, NULL, NULL, 1, '980000.00'),
(54, 53, NULL, NULL, NULL, NULL, 2, '870000.00'),
(55, 29, NULL, NULL, NULL, NULL, 2, '1120000.00'),
(55, 41, NULL, NULL, NULL, NULL, 1, '1010000.00'),
(56, 24, NULL, NULL, NULL, NULL, 4, '190000.00'),
(56, 54, NULL, NULL, NULL, NULL, 1, '600000.00'),
(57, 1, NULL, NULL, NULL, NULL, 2, '370000.00'),
(57, 10, NULL, NULL, NULL, NULL, 2, '510000.00'),
(57, 12, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(57, 52, NULL, NULL, NULL, NULL, 4, '880000.00'),
(58, 18, NULL, NULL, NULL, NULL, 1, '440000.00'),
(58, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(59, 7, NULL, NULL, NULL, NULL, 4, '320000.00'),
(59, 22, NULL, NULL, NULL, NULL, 3, '610000.00'),
(59, 25, NULL, NULL, NULL, NULL, 3, '1430000.00'),
(60, 47, NULL, NULL, NULL, NULL, 4, '1220000.00'),
(60, 58, NULL, NULL, NULL, NULL, 3, '610000.00'),
(61, 40, NULL, NULL, NULL, NULL, 3, '200000.00'),
(61, 56, NULL, NULL, NULL, NULL, 2, '890000.00'),
(61, 57, NULL, NULL, NULL, NULL, 3, '1720000.00'),
(62, 20, NULL, NULL, NULL, NULL, 2, '210000.00'),
(62, 35, NULL, NULL, NULL, NULL, 4, '1110000.00'),
(62, 36, NULL, NULL, NULL, NULL, 4, '1180000.00'),
(63, 7, NULL, NULL, NULL, NULL, 2, '320000.00'),
(63, 8, NULL, NULL, NULL, NULL, 2, '300000.00'),
(64, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(64, 6, NULL, NULL, NULL, NULL, 2, '790000.00'),
(64, 34, NULL, NULL, NULL, NULL, 3, '980000.00'),
(65, 10, NULL, NULL, NULL, NULL, 2, '510000.00'),
(65, 11, NULL, NULL, NULL, NULL, 2, '550000.00'),
(65, 50, NULL, NULL, NULL, NULL, 1, '1300000.00'),
(65, 58, NULL, NULL, NULL, NULL, 4, '610000.00'),
(66, 20, NULL, NULL, NULL, NULL, 4, '210000.00'),
(66, 54, NULL, NULL, NULL, NULL, 2, '600000.00'),
(67, 9, NULL, NULL, NULL, NULL, 1, '1000000.00'),
(67, 52, NULL, NULL, NULL, NULL, 4, '880000.00'),
(68, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(68, 11, NULL, NULL, NULL, NULL, 4, '550000.00'),
(68, 26, NULL, NULL, NULL, NULL, 3, '1610000.00'),
(68, 52, NULL, NULL, NULL, NULL, 4, '880000.00'),
(69, 19, NULL, NULL, NULL, NULL, 1, '1370000.00'),
(69, 36, NULL, NULL, NULL, NULL, 3, '1180000.00'),
(70, 7, NULL, NULL, NULL, NULL, 4, '320000.00'),
(70, 17, NULL, NULL, NULL, NULL, 2, '550000.00'),
(71, 2, NULL, NULL, NULL, NULL, 3, '290000.00'),
(71, 17, NULL, NULL, NULL, NULL, 1, '550000.00'),
(71, 59, NULL, NULL, NULL, NULL, 3, '710000.00'),
(72, 8, NULL, NULL, NULL, NULL, 4, '300000.00'),
(72, 15, NULL, NULL, NULL, NULL, 3, '790000.00'),
(72, 37, NULL, NULL, NULL, NULL, 3, '150000.00'),
(72, 51, NULL, NULL, NULL, NULL, 1, '1570000.00'),
(73, 24, NULL, NULL, NULL, NULL, 4, '190000.00'),
(73, 31, NULL, NULL, NULL, NULL, 3, '990000.00'),
(74, 23, NULL, NULL, NULL, NULL, 1, '1600000.00'),
(74, 25, NULL, NULL, NULL, NULL, 4, '1430000.00'),
(74, 38, NULL, NULL, NULL, NULL, 3, '1280000.00'),
(74, 47, NULL, NULL, NULL, NULL, 1, '1220000.00'),
(75, 6, NULL, NULL, NULL, NULL, 1, '790000.00'),
(75, 13, NULL, NULL, NULL, NULL, 3, '840000.00'),
(75, 46, NULL, NULL, NULL, NULL, 2, '140000.00'),
(75, 50, NULL, NULL, NULL, NULL, 4, '1300000.00'),
(76, 3, NULL, NULL, NULL, NULL, 4, '1130000.00'),
(76, 17, NULL, NULL, NULL, NULL, 3, '550000.00'),
(76, 20, NULL, NULL, NULL, NULL, 2, '210000.00'),
(76, 40, NULL, NULL, NULL, NULL, 4, '200000.00'),
(77, 21, NULL, NULL, NULL, NULL, 1, '710000.00'),
(77, 58, NULL, NULL, NULL, NULL, 4, '610000.00'),
(78, 11, NULL, NULL, NULL, NULL, 1, '550000.00'),
(78, 37, NULL, NULL, NULL, NULL, 4, '150000.00'),
(78, 45, NULL, NULL, NULL, NULL, 2, '1190000.00'),
(79, 22, NULL, NULL, NULL, NULL, 3, '610000.00'),
(79, 33, NULL, NULL, NULL, NULL, 3, '360000.00'),
(79, 43, NULL, NULL, NULL, NULL, 3, '400000.00'),
(80, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(80, 2, NULL, NULL, NULL, NULL, 2, '290000.00'),
(80, 42, NULL, NULL, NULL, NULL, 3, '1480000.00'),
(80, 49, NULL, NULL, NULL, NULL, 3, '1060000.00'),
(81, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(81, 20, NULL, NULL, NULL, NULL, 4, '210000.00'),
(81, 25, NULL, NULL, NULL, NULL, 3, '1430000.00'),
(81, 55, NULL, NULL, NULL, NULL, 1, '1570000.00'),
(82, 37, NULL, NULL, NULL, NULL, 3, '150000.00'),
(82, 46, NULL, NULL, NULL, NULL, 1, '140000.00'),
(82, 47, NULL, NULL, NULL, NULL, 2, '1220000.00'),
(82, 59, NULL, NULL, NULL, NULL, 4, '710000.00'),
(83, 11, NULL, NULL, NULL, NULL, 2, '550000.00'),
(83, 32, NULL, NULL, NULL, NULL, 4, '360000.00'),
(83, 40, NULL, NULL, NULL, NULL, 4, '200000.00'),
(84, 27, NULL, NULL, NULL, NULL, 2, '740000.00'),
(84, 52, NULL, NULL, NULL, NULL, 2, '880000.00'),
(85, 34, NULL, NULL, NULL, NULL, 4, '980000.00'),
(85, 41, NULL, NULL, NULL, NULL, 3, '1010000.00'),
(86, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(86, 3, NULL, NULL, NULL, NULL, 4, '1130000.00'),
(86, 17, NULL, NULL, NULL, NULL, 4, '550000.00'),
(86, 28, NULL, NULL, NULL, NULL, 4, '660000.00'),
(87, 2, NULL, NULL, NULL, NULL, 3, '290000.00'),
(87, 15, NULL, NULL, NULL, NULL, 4, '790000.00'),
(87, 19, NULL, NULL, NULL, NULL, 3, '1370000.00'),
(87, 41, NULL, NULL, NULL, NULL, 4, '1010000.00'),
(88, 23, NULL, NULL, NULL, NULL, 2, '1600000.00'),
(88, 27, NULL, NULL, NULL, NULL, 1, '740000.00'),
(89, 6, NULL, NULL, NULL, NULL, 3, '790000.00'),
(89, 27, NULL, NULL, NULL, NULL, 2, '740000.00'),
(89, 49, NULL, NULL, NULL, NULL, 2, '1060000.00'),
(89, 51, NULL, NULL, NULL, NULL, 1, '1570000.00'),
(90, 4, NULL, NULL, NULL, NULL, 3, '380000.00'),
(90, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(90, 32, NULL, NULL, NULL, NULL, 2, '360000.00'),
(91, 25, NULL, NULL, NULL, NULL, 3, '1430000.00'),
(91, 52, NULL, NULL, NULL, NULL, 4, '880000.00'),
(92, 8, NULL, NULL, NULL, NULL, 1, '300000.00'),
(92, 35, NULL, NULL, NULL, NULL, 2, '1110000.00'),
(93, 2, NULL, NULL, NULL, NULL, 1, '290000.00'),
(93, 7, NULL, NULL, NULL, NULL, 2, '320000.00'),
(93, 13, NULL, NULL, NULL, NULL, 2, '840000.00'),
(93, 21, NULL, NULL, NULL, NULL, 3, '710000.00'),
(94, 41, NULL, NULL, NULL, NULL, 3, '1010000.00'),
(94, 57, NULL, NULL, NULL, NULL, 1, '1720000.00'),
(95, 24, NULL, NULL, NULL, NULL, 3, '190000.00'),
(95, 30, NULL, NULL, NULL, NULL, 2, '1080000.00'),
(95, 42, NULL, NULL, NULL, NULL, 4, '1480000.00'),
(95, 46, NULL, NULL, NULL, NULL, 3, '140000.00'),
(96, 26, NULL, NULL, NULL, NULL, 2, '1610000.00'),
(96, 54, NULL, NULL, NULL, NULL, 1, '600000.00'),
(97, 35, NULL, NULL, NULL, NULL, 3, '1110000.00'),
(97, 41, NULL, NULL, NULL, NULL, 4, '1010000.00'),
(98, 5, NULL, NULL, NULL, NULL, 4, '1060000.00'),
(98, 22, NULL, NULL, NULL, NULL, 3, '610000.00'),
(98, 40, NULL, NULL, NULL, NULL, 4, '200000.00'),
(99, 30, NULL, NULL, NULL, NULL, 3, '1080000.00'),
(99, 45, NULL, NULL, NULL, NULL, 4, '1190000.00'),
(99, 58, NULL, NULL, NULL, NULL, 2, '610000.00'),
(100, 23, NULL, NULL, NULL, NULL, 3, '1600000.00'),
(100, 25, NULL, NULL, NULL, NULL, 1, '1430000.00'),
(100, 55, NULL, NULL, NULL, NULL, 1, '1570000.00'),
(100, 59, NULL, NULL, NULL, NULL, 2, '710000.00'),
(101, 5, NULL, NULL, NULL, NULL, 1, '1060000.00'),
(101, 50, NULL, NULL, NULL, NULL, 2, '1300000.00'),
(101, 51, NULL, NULL, NULL, NULL, 2, '1570000.00'),
(102, 7, NULL, NULL, NULL, NULL, 1, '320000.00'),
(102, 16, NULL, NULL, NULL, NULL, 3, '1180000.00'),
(102, 35, NULL, NULL, NULL, NULL, 4, '1110000.00'),
(103, 15, NULL, NULL, NULL, NULL, 2, '790000.00'),
(103, 28, NULL, NULL, NULL, NULL, 1, '660000.00'),
(103, 56, NULL, NULL, NULL, NULL, 3, '890000.00'),
(104, 4, NULL, NULL, NULL, NULL, 1, '380000.00'),
(104, 32, NULL, NULL, NULL, NULL, 1, '360000.00'),
(104, 39, NULL, NULL, NULL, NULL, 2, '1170000.00'),
(105, 7, NULL, NULL, NULL, NULL, 3, '320000.00'),
(105, 33, NULL, NULL, NULL, NULL, 3, '360000.00'),
(105, 38, NULL, NULL, NULL, NULL, 2, '1280000.00'),
(105, 53, NULL, NULL, NULL, NULL, 1, '870000.00'),
(106, 34, NULL, NULL, NULL, NULL, 1, '980000.00'),
(106, 41, NULL, NULL, NULL, NULL, 1, '1010000.00'),
(107, 32, NULL, NULL, NULL, NULL, 4, '360000.00'),
(107, 53, NULL, NULL, NULL, NULL, 1, '870000.00'),
(108, 23, NULL, NULL, NULL, NULL, 2, '1600000.00'),
(108, 24, NULL, NULL, NULL, NULL, 2, '190000.00'),
(108, 43, NULL, NULL, NULL, NULL, 3, '400000.00'),
(109, 15, NULL, NULL, NULL, NULL, 3, '790000.00'),
(109, 18, NULL, NULL, NULL, NULL, 3, '440000.00'),
(109, 53, NULL, NULL, NULL, NULL, 4, '870000.00'),
(110, 21, NULL, NULL, NULL, NULL, 4, '710000.00'),
(110, 24, NULL, NULL, NULL, NULL, 1, '190000.00'),
(110, 30, NULL, NULL, NULL, NULL, 4, '1080000.00'),
(110, 33, NULL, NULL, NULL, NULL, 3, '360000.00'),
(111, 46, NULL, NULL, NULL, NULL, 4, '140000.00'),
(111, 47, NULL, NULL, NULL, NULL, 4, '1220000.00'),
(111, 57, NULL, NULL, NULL, NULL, 3, '1720000.00'),
(112, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(112, 21, NULL, NULL, NULL, NULL, 2, '710000.00'),
(112, 34, NULL, NULL, NULL, NULL, 2, '980000.00'),
(112, 35, NULL, NULL, NULL, NULL, 3, '1110000.00'),
(113, 14, NULL, NULL, NULL, NULL, 2, '670000.00'),
(113, 31, NULL, NULL, NULL, NULL, 3, '990000.00'),
(114, 5, NULL, NULL, NULL, NULL, 3, '1060000.00'),
(114, 21, NULL, NULL, NULL, NULL, 3, '710000.00'),
(114, 40, NULL, NULL, NULL, NULL, 2, '200000.00'),
(115, 14, NULL, NULL, NULL, NULL, 3, '670000.00'),
(115, 18, NULL, NULL, NULL, NULL, 3, '440000.00'),
(115, 32, NULL, NULL, NULL, NULL, 2, '360000.00'),
(116, 12, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(116, 13, NULL, NULL, NULL, NULL, 1, '840000.00'),
(116, 42, NULL, NULL, NULL, NULL, 2, '1480000.00'),
(116, 56, NULL, NULL, NULL, NULL, 4, '890000.00'),
(117, 32, NULL, NULL, NULL, NULL, 4, '360000.00'),
(117, 41, NULL, NULL, NULL, NULL, 2, '1010000.00'),
(118, 6, NULL, NULL, NULL, NULL, 4, '790000.00'),
(118, 9, NULL, NULL, NULL, NULL, 3, '1000000.00'),
(118, 37, NULL, NULL, NULL, NULL, 1, '150000.00'),
(119, 3, NULL, NULL, NULL, NULL, 4, '1130000.00'),
(119, 28, NULL, NULL, NULL, NULL, 2, '660000.00'),
(120, 45, NULL, NULL, NULL, NULL, 2, '1190000.00'),
(120, 55, NULL, NULL, NULL, NULL, 4, '1570000.00'),
(121, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(121, 34, NULL, NULL, NULL, NULL, 4, '980000.00'),
(121, 47, NULL, NULL, NULL, NULL, 3, '1220000.00'),
(122, 48, NULL, NULL, NULL, NULL, 1, '290000.00'),
(122, 52, NULL, NULL, NULL, NULL, 2, '880000.00'),
(123, 13, NULL, NULL, NULL, NULL, 4, '840000.00'),
(123, 14, NULL, NULL, NULL, NULL, 1, '670000.00'),
(123, 16, NULL, NULL, NULL, NULL, 3, '1180000.00'),
(123, 18, NULL, NULL, NULL, NULL, 3, '440000.00'),
(124, 20, NULL, NULL, NULL, NULL, 2, '210000.00'),
(124, 21, NULL, NULL, NULL, NULL, 1, '710000.00'),
(124, 33, NULL, NULL, NULL, NULL, 4, '360000.00'),
(125, 5, NULL, NULL, NULL, NULL, 3, '1060000.00'),
(125, 18, NULL, NULL, NULL, NULL, 1, '440000.00'),
(125, 51, NULL, NULL, NULL, NULL, 4, '1570000.00'),
(126, 17, NULL, NULL, NULL, NULL, 1, '550000.00'),
(126, 22, NULL, NULL, NULL, NULL, 3, '610000.00'),
(126, 28, NULL, NULL, NULL, NULL, 3, '660000.00'),
(126, 45, NULL, NULL, NULL, NULL, 4, '1190000.00'),
(127, 29, NULL, NULL, NULL, NULL, 2, '1120000.00'),
(127, 59, NULL, NULL, NULL, NULL, 3, '710000.00'),
(128, 13, NULL, NULL, NULL, NULL, 2, '840000.00'),
(128, 30, NULL, NULL, NULL, NULL, 1, '1080000.00'),
(129, 49, NULL, NULL, NULL, NULL, 2, '1060000.00'),
(129, 57, NULL, NULL, NULL, NULL, 1, '1720000.00'),
(130, 3, NULL, NULL, NULL, NULL, 4, '1130000.00'),
(130, 53, NULL, NULL, NULL, NULL, 4, '870000.00'),
(131, 1, NULL, NULL, NULL, NULL, 2, '370000.00'),
(131, 29, NULL, NULL, NULL, NULL, 3, '1120000.00'),
(131, 35, NULL, NULL, NULL, NULL, 2, '1110000.00'),
(131, 56, NULL, NULL, NULL, NULL, 1, '890000.00'),
(132, 3, NULL, NULL, NULL, NULL, 3, '1130000.00'),
(132, 21, NULL, NULL, NULL, NULL, 2, '710000.00'),
(132, 33, NULL, NULL, NULL, NULL, 2, '360000.00'),
(132, 56, NULL, NULL, NULL, NULL, 1, '890000.00'),
(133, 41, NULL, NULL, NULL, NULL, 2, '1010000.00'),
(133, 47, NULL, NULL, NULL, NULL, 3, '1220000.00'),
(134, 11, NULL, NULL, NULL, NULL, 1, '550000.00'),
(134, 22, NULL, NULL, NULL, NULL, 4, '610000.00'),
(134, 30, NULL, NULL, NULL, NULL, 2, '1080000.00'),
(134, 54, NULL, NULL, NULL, NULL, 2, '600000.00'),
(135, 24, NULL, NULL, NULL, NULL, 4, '190000.00'),
(135, 52, NULL, NULL, NULL, NULL, 2, '880000.00'),
(135, 57, NULL, NULL, NULL, NULL, 3, '1720000.00'),
(136, 13, NULL, NULL, NULL, NULL, 3, '840000.00'),
(136, 17, NULL, NULL, NULL, NULL, 4, '550000.00'),
(136, 43, NULL, NULL, NULL, NULL, 1, '400000.00'),
(137, 10, NULL, NULL, NULL, NULL, 3, '510000.00'),
(137, 16, NULL, NULL, NULL, NULL, 4, '1180000.00'),
(137, 23, NULL, NULL, NULL, NULL, 2, '1600000.00'),
(137, 55, NULL, NULL, NULL, NULL, 2, '1570000.00'),
(138, 32, NULL, NULL, NULL, NULL, 2, '360000.00'),
(138, 39, NULL, NULL, NULL, NULL, 2, '1170000.00'),
(139, 49, NULL, NULL, NULL, NULL, 2, '1060000.00'),
(139, 54, NULL, NULL, NULL, NULL, 2, '600000.00'),
(140, 6, NULL, NULL, NULL, NULL, 1, '790000.00'),
(140, 27, NULL, NULL, NULL, NULL, 1, '740000.00'),
(140, 57, NULL, NULL, NULL, NULL, 4, '1720000.00'),
(141, 7, NULL, NULL, NULL, NULL, 1, '320000.00'),
(141, 13, NULL, NULL, NULL, NULL, 1, '840000.00'),
(141, 20, NULL, NULL, NULL, NULL, 2, '210000.00'),
(141, 41, NULL, NULL, NULL, NULL, 1, '1010000.00'),
(142, 5, NULL, NULL, NULL, NULL, 4, '1060000.00'),
(142, 10, NULL, NULL, NULL, NULL, 3, '510000.00'),
(142, 17, NULL, NULL, NULL, NULL, 1, '550000.00'),
(142, 21, NULL, NULL, NULL, NULL, 1, '710000.00'),
(143, 17, NULL, NULL, NULL, NULL, 2, '550000.00'),
(143, 35, NULL, NULL, NULL, NULL, 1, '1110000.00'),
(144, 8, NULL, NULL, NULL, NULL, 1, '300000.00'),
(144, 17, NULL, NULL, NULL, NULL, 3, '550000.00'),
(145, 10, NULL, NULL, NULL, NULL, 3, '510000.00'),
(145, 13, NULL, NULL, NULL, NULL, 3, '840000.00'),
(145, 36, NULL, NULL, NULL, NULL, 4, '1180000.00'),
(145, 56, NULL, NULL, NULL, NULL, 1, '890000.00'),
(146, 7, NULL, NULL, NULL, NULL, 4, '320000.00'),
(146, 14, NULL, NULL, NULL, NULL, 4, '670000.00'),
(146, 22, NULL, NULL, NULL, NULL, 2, '610000.00'),
(146, 49, NULL, NULL, NULL, NULL, 4, '1060000.00'),
(147, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(147, 41, NULL, NULL, NULL, NULL, 1, '1010000.00'),
(148, 7, NULL, NULL, NULL, NULL, 2, '320000.00'),
(148, 12, NULL, NULL, NULL, NULL, 3, '1170000.00'),
(148, 25, NULL, NULL, NULL, NULL, 2, '1430000.00'),
(148, 32, NULL, NULL, NULL, NULL, 1, '360000.00'),
(149, 26, NULL, NULL, NULL, NULL, 1, '1610000.00'),
(149, 51, NULL, NULL, NULL, NULL, 4, '1570000.00'),
(150, 16, NULL, NULL, NULL, NULL, 2, '1180000.00'),
(150, 17, NULL, NULL, NULL, NULL, 4, '550000.00'),
(150, 53, NULL, NULL, NULL, NULL, 2, '870000.00'),
(150, 59, NULL, NULL, NULL, NULL, 4, '710000.00'),
(151, 2, NULL, NULL, NULL, NULL, 4, '290000.00'),
(151, 45, NULL, NULL, NULL, NULL, 2, '1190000.00'),
(152, 16, NULL, NULL, NULL, NULL, 2, '1180000.00'),
(152, 26, NULL, NULL, NULL, NULL, 4, '1610000.00'),
(153, 1, NULL, NULL, NULL, NULL, 1, '370000.00'),
(153, 17, NULL, NULL, NULL, NULL, 4, '550000.00'),
(153, 37, NULL, NULL, NULL, NULL, 3, '150000.00'),
(153, 50, NULL, NULL, NULL, NULL, 1, '1300000.00'),
(154, 3, NULL, NULL, NULL, NULL, 2, '1130000.00'),
(154, 21, NULL, NULL, NULL, NULL, 2, '710000.00'),
(155, 5, NULL, NULL, NULL, '2022-11-18 17:37:42', 1, '1060000.00'),
(156, 8, NULL, NULL, NULL, '2022-11-18 17:38:31', 1, '300000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `catpet_id` int(11) DEFAULT NULL,
  `typepet_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pets`
--

INSERT INTO `pets` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `address`, `age`, `breed`, `description`, `image`, `name`, `sex`, `status`, `thumbnail`, `catpet_id`, `typepet_id`, `user_id`) VALUES
(1, '2022-12-31 09:30:00', NULL, NULL, NULL, 'Apt. 105 244 Michelina Hollow, Johnstonchester, NJ 41866', 'Tue Nov 14 22:47:42 ICT 1995', 'sardine', 'Corporis repellat ut doloribus dignissimos itaque ea dolorem.', 'https://petee.vn/wp-content/uploads/2020/11/20201111074837-nhim-kieng-1,5-tuoi-1-petee.jpg', 'Human Implementation Engineer', 'Female', 0, 'https://post.healthline.com/wp-content/uploads/2020/08/3180-Pug_green_grass-732x549-thumbnail-732x549.jpg', 1, 2, 23),
(2, '2022-05-31 09:30:00', NULL, NULL, NULL, 'Apt. 626 99330 Virgilio Viaduct, New Nichelle, AK 40385', 'Thu May 20 14:59:05 ICT 1993', 'porcupine', 'Quis provident porro ad incidunt minima.', 'https://www.cdc.gov/healthypets/images/pets/cute-dog-headshot.jpg?_=42445', 'Dynamic Solutions Engineer', 'Male', 0, 'https://www.cdc.gov/healthypets/images/pets/cute-dog-headshot.jpg?_=42445', 2, 2, 43),
(3, '2022-05-31 09:30:00', NULL, NULL, NULL, 'Suite 231 056 Murazik Parks, South Cherryl, AR 38737', 'Sun Mar 22 08:25:30 ICT 1981', 'minnow', 'Velit voluptas voluptas.', 'https://www.thestatesman.com/wp-content/uploads/2022/07/AmericanBullysobakabarobaka-4ce0d4dc0e144dccadb5159b222e275e-e1657808052501.jpg', 'Direct Creative Officer', 'Male', 1, 'https://www.thestatesman.com/wp-content/uploads/2022/07/AmericanBullysobakabarobaka-4ce0d4dc0e144dccadb5159b222e275e-e1657808052501.jpg', 1, 5, 7),
(4, '2022-06-30 09:30:00', NULL, NULL, NULL, 'Suite 581 969 Wilson Spurs, Reneview, LA 45465-1528', 'Sat Dec 04 15:05:34 ICT 1976', 'caribou', 'Mollitia suscipit consequatur voluptatum consectetur.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a7ufx7DAZ3ca6Oh7zbQwRGNJ-NKm0EBo_g&usqp=CAU', 'Product Integration Engineer', 'Male', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7a7ufx7DAZ3ca6Oh7zbQwRGNJ-NKm0EBo_g&usqp=CAU', 2, 4, 21),
(5, '2022-11-30 09:30:00', NULL, NULL, NULL, '6399 Emmerich Fords, Lake Lilianafurt, OK 09370-2083', 'Thu Nov 24 14:22:40 ICT 1960', 'goldfish', 'Sed et maiores id fugiat.', 'https://chico.ca.us/sites/main/files/imagecache/lightbox/main-images/dog_license.jpg', 'Dynamic Data Manager', 'Female', 1, 'https://chico.ca.us/sites/main/files/imagecache/lightbox/main-images/dog_license.jpg', 1, 1, 6),
(6, '2022-09-30 09:30:00', NULL, NULL, NULL, 'Suite 848 993 Cyrus Well, New Solburgh, VT 12177', 'Tue Jan 02 15:24:34 ICT 1990', 'porpoise', 'Qui optio facere id.', 'https://nationaltoday.com/wp-content/uploads/2020/08/Dog.jpg', 'Senior Communications Executive', 'Male', 0, 'https://nationaltoday.com/wp-content/uploads/2020/08/Dog.jpg', 2, 2, 16),
(7, '2022-06-30 09:30:00', NULL, NULL, NULL, 'Suite 376 11001 Powlowski Well, Boehmberg, NM 76352-8901', 'Thu Jun 07 21:25:19 ICT 1962', 'hamster', 'Inventore quo quaerat rerum.', 'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png', 'Corporate Mobility Executive', 'Male', 0, 'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png', 2, 4, 16),
(8, '2022-06-30 09:30:00', NULL, NULL, NULL, '5515 Funk Prairie, Arianeside, IN 15888-7890', 'Fri Apr 03 10:36:52 ICT 1970', 'kangaroo', 'Voluptas officiis et.', 'https://nationaltoday.com/wp-content/uploads/2020/08/international-cat-day.jpg', 'Product Metrics Designer', 'Male', 1, 'https://nationaltoday.com/wp-content/uploads/2020/08/international-cat-day.jpg', 2, 2, 44),
(9, '2022-08-31 09:30:00', NULL, NULL, NULL, 'Suite 800 7939 Bashirian Ranch, Jaunitafort, AK 96037', 'Tue Aug 25 05:44:54 ICT 1959', 'duck', 'Aliquid doloremque ut sed nobis reiciendis omnis.', 'https://animals.sandiegozoo.org/sites/default/files/2020-08/black-footed.jpg', 'Future Security Agent', 'Male', 1, 'https://animals.sandiegozoo.org/sites/default/files/2020-08/black-footed.jpg', 2, 4, 10),
(10, '2022-07-31 09:30:00', NULL, NULL, NULL, '93425 Hagenes Crescent, New Jaleesa, ID 13816', 'Wed Nov 14 13:04:27 ICT 2001', 'badger', 'Porro accusamus recusandae qui nihil magnam.', 'https://i.cbc.ca/1.6521149.1657922869!/fileImage/httpImage/a-beginner-s-guide-to-walking-your-cat.jpg', 'Global Interactions Agent', 'Male', 0, 'https://i.cbc.ca/1.6521149.1657922869!/fileImage/httpImage/a-beginner-s-guide-to-walking-your-cat.jpg', 1, 5, 30),
(11, '2022-08-31 09:30:00', NULL, NULL, NULL, '68216 Hills Plains, Port Winston, AL 92384', 'Sat Apr 04 16:08:02 ICT 1959', 'koala', 'Commodi in dicta dolor architecto molestiae.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxeVKKhcw5BVb33-sIFbVwBxpGvFjAORNkHA&usqp=CAU', 'Forward Operations Officer', 'Male', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxeVKKhcw5BVb33-sIFbVwBxpGvFjAORNkHA&usqp=CAU', 1, 1, 36),
(12, '2022-10-31 09:30:00', NULL, NULL, NULL, '25187 Freeman Fields, East Tamalatown, AK 37395', 'Sun Apr 09 21:41:59 ICT 1978', 'shark', 'Nisi deserunt ex optio.', 'https://mew.vn/wp-content/uploads/2021/03/danh-muc-chuot-hamster.jpg', 'Lead Mobility Agent', 'Female', 1, 'https://mew.vn/wp-content/uploads/2021/03/danh-muc-chuot-hamster.jpg', 2, 4, 39),
(13, '2022-12-31 09:30:00', NULL, NULL, NULL, '34666 Eugenia Expressway, Zellabury, SD 53640', 'Fri Aug 24 08:52:04 ICT 1962', 'crow', 'Vitae fuga quia eligendi animi voluptatem ullam.', 'https://mew.vn/wp-content/uploads/2021/04/danh-muc-chuot-hamster-2.jpg', 'Chief Configuration Analyst', 'Female', 1, 'https://mew.vn/wp-content/uploads/2021/04/danh-muc-chuot-hamster-2.jpg', 2, 4, 25),
(14, '2022-08-31 09:30:00', NULL, NULL, NULL, 'Suite 640 670 Julietta Valleys, Jakubowskiburgh, DE 13275-5744', 'Sun Jan 04 06:22:15 ICT 1976', 'llama', 'Consequuntur et aperiam rerum ipsam ut nihil doloremque.', 'https://mew.vn/wp-content/uploads/2021/04/danh-muc-chuot-hamster-2.jpg', 'District Integration Coordinator', 'Female', 1, 'https://lolipet.net/wp-content/uploads/2018/12/2.jpg', 2, 2, 31),
(15, '2022-07-31 09:30:00', NULL, NULL, NULL, '54204 Wintheiser Squares, North Clinton, MI 59614-7811', 'Fri Feb 22 14:08:37 ICT 1974', 'yellowjacket', 'Facere illum provident.', 'http://bizweb.dktcdn.net/thumb/grande/100/165/948/products/img-5830-jpg.jpg?v=1502808189430', 'Central Program Architect', 'Male', 1, 'http://bizweb.dktcdn.net/thumb/grande/100/165/948/products/img-5830-jpg.jpg?v=1502808189430', 2, 3, 37),
(16, '2022-08-31 09:30:00', NULL, NULL, NULL, '541 Sanford Stravenue, Lake Mirnaview, NE 43819', 'Tue Nov 08 06:26:56 ICT 1966', 'chinchilla', 'Aspernatur optio impedit aut.', 'https://mew.vn/wp-content/uploads/2021/04/danh-muc-chuot-hamster-1.jpg', 'Legacy Solutions Representative', 'Male', 1, 'https://mew.vn/wp-content/uploads/2021/04/danh-muc-chuot-hamster-1.jpg', 2, 2, 20),
(17, '2022-04-30 09:30:00', NULL, NULL, NULL, '4543 Thomas Road, Walshport, ME 64972-3435', 'Fri Mar 24 05:57:37 ICT 1967', 'squirrel', 'Distinctio incidunt occaecati.', 'https://media.istockphoto.com/id/513385146/photo/cute-white-little-rabbit-peeking-out-of-hole.jpg?s=612x612&w=0&k=20&c=aP7CIcMUK058WAzmce5YxhZsjYwD2Op6G2oBn12Qd9o=', 'Human Intranet Specialist', 'Female', 1, 'https://media.istockphoto.com/id/513385146/photo/cute-white-little-rabbit-peeking-out-of-hole.jpg?s=612x612&w=0&k=20&c=aP7CIcMUK058WAzmce5YxhZsjYwD2Op6G2oBn12Qd9o=', 2, 1, 14),
(18, '2022-10-31 09:30:00', NULL, NULL, NULL, 'Apt. 045 4764 Mohr Crossing, Port Johna, MN 39723', 'Tue Jul 27 08:55:37 ICT 2004', 'walrus', 'Voluptas deleniti facilis.', 'https://i.pinimg.com/236x/5a/c7/39/5ac73941d71d9e4317408a256053cd8c--white-rabbits-bunny-rabbits.jpg', 'Lead Assurance Producer', 'Female', 0, 'https://i.pinimg.com/236x/5a/c7/39/5ac73941d71d9e4317408a256053cd8c--white-rabbits-bunny-rabbits.jpg', 2, 2, 28),
(19, '2022-02-28 09:30:00', NULL, NULL, NULL, 'Apt. 904 34224 Ratke Green, Lednerborough, RI 87897', 'Sat Mar 29 00:42:18 ICT 1975', 'alligator', 'Beatae vel temporibus provident.', 'https://w0.peakpx.com/wallpaper/342/89/HD-wallpaper-cute-rabit-cute-pet-cute-animal-rabit.jpg', 'Dynamic Markets Manager', 'Male', 1, 'https://w0.peakpx.com/wallpaper/342/89/HD-wallpaper-cute-rabit-cute-pet-cute-animal-rabit.jpg', 2, 4, 25),
(20, '2022-10-31 09:30:00', NULL, NULL, NULL, '7037 Randal Spur, Lemkeside, GA 72248-3611', 'Sat Dec 14 18:23:13 ICT 1968', 'toad', 'Et vitae ipsa facilis saepe ipsum aliquid.', 'https://www.agentpet.com/storage/pets/yztKdsgOeR9wXq2eovZC4cGaOapLWOeW3qgKTNju.png', 'Central Configuration Representative', 'Female', 1, 'https://www.agentpet.com/storage/pets/yztKdsgOeR9wXq2eovZC4cGaOapLWOeW3qgKTNju.png', 2, 3, 45),
(21, '2022-07-31 09:30:00', NULL, NULL, NULL, 'Suite 623 82192 Moon Overpass, East Albert, OR 02608-8818', 'Sat May 17 05:41:55 ICT 1975', 'tiger', 'Laborum nam non odit laboriosam.', 'https://dogily.vn/wp-content/uploads/2019/08/Nhim-canh-cuc-ki-nhay-cam.jpg', 'Lead Identity Facilitator', 'Male', 0, 'https://dogily.vn/wp-content/uploads/2019/08/Nhim-canh-cuc-ki-nhay-cam.jpg', 1, 5, 36),
(22, '2022-06-30 09:30:00', NULL, NULL, NULL, '26729 Swift Isle, Shantaeshire, CT 64998', 'Wed Oct 23 01:30:12 ICT 1996', 'bat', 'Sint commodi quia consequatur.', 'https://2.bp.blogspot.com/-eMPUUJja-jc/WowHRFrgFqI/AAAAAAAABHk/IEMCVHS2JDAxyCDmOMoRWlfARdKkQnGfgCLcBGAs/s640/nh%25C3%25ADm%2Bki%25E1%25BB%2583ng%2Btr%25E1%25BA%25AFng.png', 'Global Group Manager', 'Female', 1, 'https://2.bp.blogspot.com/-eMPUUJja-jc/WowHRFrgFqI/AAAAAAAABHk/IEMCVHS2JDAxyCDmOMoRWlfARdKkQnGfgCLcBGAs/s640/nh%25C3%25ADm%2Bki%25E1%25BB%2583ng%2Btr%25E1%25BA%25AFng.png', 2, 2, 20),
(23, '2022-06-30 09:30:00', NULL, NULL, NULL, '36112 Arnoldo Lane, Gusikowskibury, MA 11926-1414', 'Fri May 23 04:27:11 ICT 2003', 'guinea pig', 'Illum repellendus fuga praesentium delectus ipsum.', 'https://dogily.vn/wp-content/uploads/2019/08/Cach-Bat-Nhim-Kieng-Khong-Dau.jpg', 'Central Usability Technician', 'Female', 1, 'https://dogily.vn/wp-content/uploads/2019/08/Cach-Bat-Nhim-Kieng-Khong-Dau.jpg', 2, 4, 46),
(24, '2022-07-31 09:30:00', NULL, NULL, NULL, '96987 Hiram Ferry, Mannhaven, KY 95998-5195', 'Sun Aug 25 14:38:04 ICT 1974', 'marten', 'Omnis placeat est laudantium ducimus voluptatem.', 'https://vuongquocloaivat.com/wp-content/uploads/2018/12/cach-nuoi-nhim_lg-compressed.jpg', 'Legacy Integration Technician', 'Male', 1, 'https://vuongquocloaivat.com/wp-content/uploads/2018/12/cach-nuoi-nhim_lg-compressed.jpg', 1, 2, 38),
(25, '2022-08-31 09:30:00', NULL, NULL, NULL, 'Apt. 058 2288 Charlyn Rue, Lake Todmouth, AR 04261', 'Tue Apr 01 19:44:34 ICT 1986', 'marten', 'Dolorem maiores nisi.', 'https://petee.vn/wp-content/uploads/2020/11/20201111074837-nhim-kieng-1,5-tuoi-1-petee.jpg', 'National Group Director', 'Male', 0, 'https://petee.vn/wp-content/uploads/2020/11/20201111074837-nhim-kieng-1,5-tuoi-1-petee.jpg', 2, 3, 17),
(26, '2022-02-28 09:30:00', NULL, NULL, NULL, 'Apt. 249 69143 Madelyn Common, Federicoton, CO 70332', 'Sat Mar 06 12:16:06 ICT 1993', 'bee', 'Eos voluptas praesentium provident aut voluptas eum officiis.', 'https://picsum.photos/200/300?random=50', 'District Web Director', 'Female', 1, 'https://picsum.photos/200/300?random=25', 2, 3, 29),
(27, '2022-12-31 09:30:00', NULL, NULL, NULL, 'Suite 527 1028 Anisha Plaza, Kennethburgh, IN 56447', 'Tue Mar 11 05:20:43 ICT 1958', 'mole', 'Omnis aspernatur expedita facere harum.', 'https://picsum.photos/200/300?random=52', 'Human Configuration Developer', 'Female', 1, 'https://picsum.photos/200/300?random=26', 2, 1, 4),
(28, '2022-05-31 09:30:00', NULL, NULL, NULL, '845 Eunice Mission, North Wayneberg, AL 21031', 'Mon Jul 03 14:56:24 ICT 1995', 'ox', 'Hic cum quis error aut amet reiciendis quia.', 'https://picsum.photos/200/300?random=54', 'Forward Tactics Supervisor', 'Male', 1, 'https://picsum.photos/200/300?random=27', 2, 3, 36),
(29, '2022-12-31 09:30:00', NULL, NULL, NULL, '2905 Johnie Cliff, North Jorgebury, IA 86655', 'Thu May 05 15:26:57 ICT 1966', 'cockroach', 'Molestiae expedita sint aut vel.', 'https://picsum.photos/200/300?random=56', 'Legacy Identity Associate', 'Male', 0, 'https://picsum.photos/200/300?random=28', 2, 3, 49),
(30, '2022-10-31 09:30:00', NULL, NULL, NULL, '0381 Lucio Prairie, New Dariusside, WV 78606-3790', 'Wed May 29 13:50:31 ICT 1963', 'goat', 'Fuga praesentium voluptas.', 'https://picsum.photos/200/300?random=58', 'Future Data Consultant', 'Male', 1, 'https://picsum.photos/200/300?random=29', 1, 4, 41),
(31, '2022-04-30 09:30:00', NULL, NULL, NULL, 'Apt. 474 45136 Ernesto Harbor, Port Georgeport, RI 46327-4115', 'Fri Sep 19 19:41:24 ICT 2003', 'whale', 'Id nesciunt quo voluptas est.', 'https://picsum.photos/200/300?random=60', 'Legacy Factors Coordinator', 'Male', 1, 'https://picsum.photos/200/300?random=30', 2, 1, 9),
(32, '2022-11-30 09:30:00', NULL, NULL, NULL, '99951 Goodwin Station, Catherinport, PA 59020-6005', 'Tue Oct 06 07:27:53 ICT 1998', 'buffalo', 'Quas voluptatem beatae aliquid qui nesciunt eligendi veniam.', 'https://picsum.photos/200/300?random=62', 'Chief Division Facilitator', 'Male', 1, 'https://picsum.photos/200/300?random=31', 2, 3, 10),
(33, '2022-01-31 09:30:00', NULL, NULL, NULL, '2105 Feil Lights, North Milagros, MA 51289', 'Tue Apr 27 21:18:35 ICT 1971', 'walrus', 'Doloremque consequatur beatae ut iste aspernatur autem.', 'https://picsum.photos/200/300?random=64', 'Direct Interactions Orchestrator', 'Male', 1, 'https://picsum.photos/200/300?random=32', 1, 2, 11),
(34, '2022-09-30 09:30:00', NULL, NULL, NULL, '3947 Luettgen Harbor, Kesslerbury, KS 58558', 'Fri Jan 24 22:55:36 ICT 1992', 'porcupine', 'Consequatur tenetur velit at.', 'https://picsum.photos/200/300?random=66', 'Internal Intranet Strategist', 'Female', 1, 'https://picsum.photos/200/300?random=33', 1, 2, 22),
(35, '2022-11-30 09:30:00', NULL, NULL, NULL, 'Suite 813 9225 Schaefer Vista, Maggiomouth, FL 40242-3130', 'Thu Dec 22 20:12:55 ICT 1988', 'goat', 'Sequi doloribus distinctio expedita.', 'https://picsum.photos/200/300?random=68', 'Lead Interactions Assistant', 'Female', 0, 'https://picsum.photos/200/300?random=34', 2, 5, 12),
(36, '2022-08-31 09:30:00', NULL, NULL, NULL, '431 Darwin Vista, North Merrillchester, CT 18521', 'Sun May 27 12:28:28 ICT 1962', 'minnow', 'Libero ut alias voluptas quisquam voluptatem.', 'https://picsum.photos/200/300?random=70', 'Global Division Orchestrator', 'Female', 1, 'https://picsum.photos/200/300?random=35', 1, 2, 14),
(37, '2022-10-31 09:30:00', NULL, NULL, NULL, 'Apt. 683 803 Ankunding Cliff, Treutelshire, NM 29917-3949', 'Fri Mar 18 17:50:02 ICT 1994', 'hedgehog', 'Voluptatem aut fugit minima molestiae deserunt maxime similique.', 'https://picsum.photos/200/300?random=72', 'Global Group Developer', 'Female', 1, 'https://picsum.photos/200/300?random=36', 1, 2, 10),
(38, '2022-06-30 09:30:00', NULL, NULL, NULL, 'Suite 772 1116 Chi Vista, Lake Wyattside, ND 37609-8208', 'Tue Apr 15 13:22:39 ICT 1975', 'ox', 'At consequatur quia alias aut eveniet ut.', 'https://picsum.photos/200/300?random=74', 'Future Functionality Specialist', 'Female', 1, 'https://picsum.photos/200/300?random=37', 2, 3, 37),
(39, '2022-05-31 09:30:00', NULL, NULL, NULL, 'Suite 123 706 Norman Neck, South Brett, TN 53029', 'Tue Mar 10 02:24:21 ICT 1992', 'dog', 'Sed ipsam sit.', 'https://picsum.photos/200/300?random=76', 'Customer Factors Specialist', 'Female', 0, 'https://picsum.photos/200/300?random=38', 2, 5, 15),
(40, '2022-10-31 09:30:00', NULL, NULL, NULL, 'Suite 584 5507 Bernier Haven, North Glindaburgh, WA 37519', 'Thu Oct 12 20:54:38 ICT 1995', 'walrus', 'Similique ea debitis.', 'https://picsum.photos/200/300?random=78', 'Direct Functionality Supervisor', 'Male', 1, 'https://picsum.photos/200/300?random=39', 1, 4, 36),
(41, '2022-06-30 09:30:00', NULL, NULL, NULL, '3261 Colin Plains, Wyattside, NY 25950', 'Thu Dec 26 23:29:19 ICT 1985', 'jackal', 'Labore consectetur atque ipsam voluptatem harum ut.', 'https://picsum.photos/200/300?random=80', 'Customer Configuration Facilitator', 'Male', 0, 'https://picsum.photos/200/300?random=40', 1, 1, 35),
(42, '2022-12-31 09:30:00', NULL, NULL, NULL, 'Apt. 340 7487 Virgil Fords, East Alvaroshire, KY 15803', 'Thu Feb 28 04:23:09 ICT 1980', 'moose', 'Qui molestias repudiandae non.', 'https://picsum.photos/200/300?random=82', 'Direct Integration Liaison', 'Female', 1, 'https://picsum.photos/200/300?random=41', 2, 4, 43),
(43, '2022-08-31 09:30:00', NULL, NULL, NULL, '9834 Buddy Union, Cliftonhaven, OK 89716', 'Wed Aug 17 11:40:00 ICT 1983', 'cheetah', 'Quos temporibus voluptatem.', 'https://picsum.photos/200/300?random=84', 'Customer Infrastructure Consultant', 'Male', 0, 'https://picsum.photos/200/300?random=42', 1, 2, 23),
(44, '2022-08-31 09:30:00', NULL, NULL, NULL, '6359 Cornelius Course, Lake Noe, TX 38057-2388', 'Thu Mar 03 06:47:04 ICT 1994', 'camel', 'Veritatis est est in ut iste dolorem debitis.', 'https://picsum.photos/200/300?random=86', 'Product Markets Administrator', 'Female', 1, 'https://picsum.photos/200/300?random=43', 1, 4, 33),
(45, '2022-05-31 09:30:00', NULL, NULL, NULL, '469 Jean Crossroad, South Bennettbury, MS 75725-0478', 'Fri Jun 18 12:34:54 ICT 1993', 'sheep', 'Reprehenderit earum et quos deserunt occaecati.', 'https://picsum.photos/200/300?random=88', 'International Accountability Facilitator', 'Female', 1, 'https://picsum.photos/200/300?random=44', 2, 2, 22),
(46, '2022-12-31 09:30:00', NULL, NULL, NULL, 'Suite 907 15904 Stefania Shores, South Jenny, WA 28577-1855', 'Tue May 23 19:03:30 ICT 1995', 'mink', 'Eveniet delectus quas beatae.', 'https://picsum.photos/200/300?random=90', 'International Communications Consultant', 'Male', 1, 'https://picsum.photos/200/300?random=45', 2, 5, 19),
(47, '2022-01-31 09:30:00', NULL, NULL, NULL, '88060 Wes Grove, South Florida, NJ 09423', 'Mon Jun 27 08:37:12 ICT 1988', 'giraffe', 'Quod et quos unde omnis et aut inventore.', 'https://picsum.photos/200/300?random=92', 'Legacy Intranet Designer', 'Male', 1, 'https://picsum.photos/200/300?random=46', 2, 5, 36),
(48, '2022-08-31 09:30:00', NULL, NULL, NULL, '630 Stanton Extensions, North Silvia, NM 52948', 'Thu Dec 07 09:21:05 ICT 2000', 'giraffe', 'In ut aut eos.', 'https://picsum.photos/200/300?random=94', 'Lead Factors Engineer', 'Female', 0, 'https://picsum.photos/200/300?random=47', 2, 3, 35),
(49, '2022-07-31 09:30:00', NULL, NULL, NULL, '742 Caitlin Forges, East Leroyberg, NH 83032-5971', 'Wed May 31 16:13:48 ICT 1961', 'zebra', 'Eveniet delectus nam et qui itaque quis.', 'https://picsum.photos/200/300?random=96', 'Corporate Group Assistant', 'Male', 1, 'https://picsum.photos/200/300?random=48', 1, 4, 24),
(50, '2022-06-30 09:30:00', NULL, NULL, NULL, '4756 Andrea Run, Williamsonchester, CT 82062', 'Sat Nov 28 01:24:55 ICT 1998', 'kangaroo', 'Suscipit blanditiis et commodi aspernatur voluptas.', 'https://picsum.photos/200/300?random=98', 'Forward Program Liaison', 'Male', 1, 'https://picsum.photos/200/300?random=49', 2, 5, 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `description`, `image`, `name`, `price`, `qty`, `sold`, `status`, `thumbnail`, `category_id`) VALUES
(1, '2022-04-30 01:30:00', NULL, NULL, NULL, 'Et recusandae beatae.', 'https://picsum.photos/200/300?random=0', 'Chief Factors Strategist', '370000.00', 254, 191, 2, 'https://picsum.photos/200/300?random=0', 2),
(2, '2022-06-30 01:30:00', NULL, NULL, NULL, 'Quo dignissimos dolorem eum maiores ipsum.', 'https://picsum.photos/200/300?random=2', 'Senior Identity Technician', '290000.00', 224, 823, 0, 'https://picsum.photos/200/300?random=1', 2),
(3, '2022-12-31 01:30:00', NULL, NULL, NULL, 'Aut ut dolor recusandae quia.', 'https://picsum.photos/200/300?random=4', 'Global Mobility Assistant', '1130000.00', 177, 581, 0, 'https://picsum.photos/200/300?random=2', 2),
(4, '2022-04-30 01:30:00', NULL, NULL, NULL, 'Sit minima ratione dolore atque sapiente.', 'https://picsum.photos/200/300?random=6', 'Chief Data Analyst', '380000.00', 141, 160, 0, 'https://picsum.photos/200/300?random=3', 1),
(5, '2022-01-31 01:30:00', NULL, NULL, NULL, 'Rerum et voluptatem vitae quas omnis culpa sed.', 'https://picsum.photos/200/300?random=8', 'Human Paradigm Engineer', '1060000.00', 380, 807, 1, 'https://picsum.photos/200/300?random=4', 1),
(6, '2022-12-31 01:30:00', NULL, NULL, NULL, 'Voluptatibus qui dolores.', 'https://picsum.photos/200/300?random=10', 'Future Metrics Orchestrator', '790000.00', 54, 575, 2, 'https://picsum.photos/200/300?random=5', 1),
(7, '2022-05-31 01:30:00', NULL, NULL, NULL, 'Aut pariatur quis ut praesentium.', 'https://picsum.photos/200/300?random=12', 'International Identity Consultant', '320000.00', 162, 547, 0, 'https://picsum.photos/200/300?random=6', 1),
(8, '2022-06-30 01:30:00', NULL, NULL, NULL, 'Consequatur aut voluptate omnis tempore id.', 'https://picsum.photos/200/300?random=14', 'Principal Usability Producer', '300000.00', 202, 694, 1, 'https://picsum.photos/200/300?random=7', 1),
(9, '2022-04-30 01:30:00', NULL, NULL, NULL, 'Sunt natus aut quia dicta et officia assumenda.', 'https://picsum.photos/200/300?random=16', 'Human Quality Analyst', '1000000.00', 295, 862, 1, 'https://picsum.photos/200/300?random=8', 1),
(10, '2022-07-31 01:30:00', NULL, NULL, NULL, 'Quo et ut facilis sunt.', 'https://picsum.photos/200/300?random=18', 'Senior Identity Coordinator', '510000.00', 17, 357, 1, 'https://picsum.photos/200/300?random=9', 1),
(11, '2022-08-31 01:30:00', NULL, NULL, NULL, 'Ipsum modi soluta et cum odit.', 'https://picsum.photos/200/300?random=20', 'Dynamic Mobility Planner', '550000.00', 252, 754, 1, 'https://picsum.photos/200/300?random=10', 2),
(12, '2022-06-30 01:30:00', NULL, NULL, NULL, 'In dignissimos molestias.', 'https://picsum.photos/200/300?random=22', 'Future Division Executive', '1170000.00', 204, 316, 2, 'https://picsum.photos/200/300?random=11', 1),
(13, '2022-06-30 01:30:00', NULL, NULL, NULL, 'Velit eos nisi.', 'https://picsum.photos/200/300?random=24', 'Lead Applications Representative', '840000.00', 89, 961, 1, 'https://picsum.photos/200/300?random=12', 1),
(14, '2022-07-31 01:30:00', NULL, NULL, NULL, 'Voluptatibus officia et dolorem accusantium exercitationem autem qui.', 'https://picsum.photos/200/300?random=26', 'National Mobility Executive', '670000.00', 36, 435, 0, 'https://picsum.photos/200/300?random=13', 1),
(15, '2022-09-30 01:30:00', NULL, NULL, NULL, 'Enim dolorem corporis quis ad.', 'https://picsum.photos/200/300?random=28', 'Dynamic Infrastructure Technician', '790000.00', 111, 668, 1, 'https://picsum.photos/200/300?random=14', 2),
(16, '2022-11-30 01:30:00', NULL, NULL, NULL, 'Soluta laborum non accusantium.', 'https://picsum.photos/200/300?random=30', 'National Data Agent', '1180000.00', 76, 452, 0, 'https://picsum.photos/200/300?random=15', 1),
(17, '2022-08-31 01:30:00', NULL, NULL, NULL, 'Accusantium corporis cupiditate blanditiis.', 'https://picsum.photos/200/300?random=32', 'District Branding Planner', '550000.00', 284, 940, 1, 'https://picsum.photos/200/300?random=16', 2),
(18, '2022-04-30 01:30:00', NULL, NULL, NULL, 'Qui veniam et dolore.', 'https://picsum.photos/200/300?random=34', 'Senior Program Engineer', '440000.00', 306, 591, 2, 'https://picsum.photos/200/300?random=17', 2),
(19, '2022-06-30 01:30:00', NULL, NULL, NULL, 'Deserunt odio id cum consequatur dicta.', 'https://picsum.photos/200/300?random=36', 'Dynamic Intranet Planner', '1370000.00', 121, 881, 0, 'https://picsum.photos/200/300?random=18', 2),
(20, '2022-08-31 01:30:00', NULL, NULL, NULL, 'Aperiam perspiciatis recusandae voluptas aut.', 'https://picsum.photos/200/300?random=38', 'Investor Identity Specialist', '210000.00', 310, 320, 0, 'https://picsum.photos/200/300?random=19', 2),
(21, '2022-10-31 01:30:00', NULL, NULL, NULL, 'Autem quibusdam praesentium est id mollitia.', 'https://picsum.photos/200/300?random=40', 'Direct Integration Specialist', '710000.00', 492, 399, 0, 'https://picsum.photos/200/300?random=20', 1),
(22, '2022-10-31 01:30:00', NULL, NULL, NULL, 'Sed ex quaerat dolore nesciunt ratione incidunt.', 'https://picsum.photos/200/300?random=42', 'Forward Operations Manager', '610000.00', 21, 851, 1, 'https://picsum.photos/200/300?random=21', 3),
(23, '2022-01-31 01:30:00', NULL, NULL, NULL, 'Ipsam deleniti eveniet.', 'https://picsum.photos/200/300?random=44', 'Product Marketing Strategist', '1600000.00', 288, 999, 0, 'https://picsum.photos/200/300?random=22', 3),
(24, '2022-12-31 01:30:00', NULL, NULL, NULL, 'Rerum quidem natus.', 'https://picsum.photos/200/300?random=46', 'Dynamic Factors Associate', '190000.00', 81, 248, 0, 'https://picsum.photos/200/300?random=23', 2),
(25, '2022-11-30 01:30:00', NULL, NULL, NULL, 'Ut similique incidunt quis cumque expedita.', 'https://picsum.photos/200/300?random=48', 'Investor Tactics Officer', '1430000.00', 495, 559, 0, 'https://picsum.photos/200/300?random=24', 2),
(26, '2022-12-31 01:30:00', NULL, NULL, NULL, 'Eligendi esse sapiente repellat vero nam in vel.', 'https://picsum.photos/200/300?random=50', 'Product Optimization Technician', '1610000.00', 439, 261, 1, 'https://picsum.photos/200/300?random=25', 2),
(27, '2022-12-31 01:30:00', NULL, NULL, NULL, 'Qui rerum non et dolorem.', 'https://picsum.photos/200/300?random=52', 'Investor Usability Liaison', '740000.00', 281, 514, 1, 'https://picsum.photos/200/300?random=26', 2),
(28, '2022-10-31 01:30:00', NULL, NULL, NULL, 'Quia quae nihil blanditiis.', 'https://picsum.photos/200/300?random=54', 'Dynamic Marketing Associate', '660000.00', 259, 542, 1, 'https://picsum.photos/200/300?random=27', 2),
(29, '2022-02-28 01:30:00', NULL, NULL, NULL, 'Libero consequuntur sit rem nobis eos rerum debitis.', 'https://picsum.photos/200/300?random=56', 'Future Operations Orchestrator', '1120000.00', 311, 576, 0, 'https://picsum.photos/200/300?random=28', 1),
(30, '2022-01-31 01:30:00', NULL, NULL, NULL, 'Ipsum officiis amet dolorum numquam est assumenda ipsum.', 'https://picsum.photos/200/300?random=58', 'Internal Identity Assistant', '1080000.00', 212, 608, 1, 'https://picsum.photos/200/300?random=29', 3),
(31, '2021-03-31 01:30:00', NULL, NULL, NULL, 'Ea eos esse.', 'https://picsum.photos/200/300?random=0', 'Future Implementation Officer', '990000.00', 196, 679, 1, 'https://picsum.photos/200/300?random=0', 2),
(32, '2021-06-30 01:30:00', NULL, NULL, NULL, 'Placeat autem dolor corporis qui autem quod.', 'https://picsum.photos/200/300?random=2', 'National Solutions Planner', '360000.00', 49, 211, 0, 'https://picsum.photos/200/300?random=1', 1),
(33, '2021-10-31 01:30:00', NULL, NULL, NULL, 'Necessitatibus ut delectus et.', 'https://picsum.photos/200/300?random=4', 'District Intranet Coordinator', '360000.00', 144, 877, 2, 'https://picsum.photos/200/300?random=2', 2),
(34, '2021-11-30 01:30:00', NULL, NULL, NULL, 'Ut assumenda doloribus ut et ad est ullam.', 'https://picsum.photos/200/300?random=6', 'Chief Branding Designer', '980000.00', 491, 512, 1, 'https://picsum.photos/200/300?random=3', 2),
(35, '2021-08-31 01:30:00', NULL, NULL, NULL, 'Deserunt autem earum perferendis nostrum.', 'https://picsum.photos/200/300?random=8', 'Internal Brand Associate', '1110000.00', 86, 282, 1, 'https://picsum.photos/200/300?random=4', 1),
(36, '2021-05-31 01:30:00', NULL, NULL, NULL, 'A quidem quam.', 'https://picsum.photos/200/300?random=10', 'Senior Accounts Director', '1180000.00', 354, 140, 1, 'https://picsum.photos/200/300?random=5', 1),
(37, '2021-01-31 01:30:00', NULL, NULL, NULL, 'Cupiditate aspernatur sit et optio alias.', 'https://picsum.photos/200/300?random=12', 'Investor Intranet Coordinator', '150000.00', 288, 636, 1, 'https://picsum.photos/200/300?random=6', 2),
(38, '2021-09-30 01:30:00', NULL, NULL, NULL, 'Eligendi et nemo deserunt assumenda sint alias quidem.', 'https://picsum.photos/200/300?random=14', 'Customer Functionality Assistant', '1280000.00', 419, 722, 1, 'https://picsum.photos/200/300?random=7', 2),
(39, '2021-04-30 01:30:00', NULL, NULL, NULL, 'Itaque tenetur ut ut aut.', 'https://picsum.photos/200/300?random=16', 'Internal Configuration Strategist', '1170000.00', 393, 641, 1, 'https://picsum.photos/200/300?random=8', 2),
(40, '2021-04-30 01:30:00', NULL, NULL, NULL, 'Iste animi ut culpa perferendis dicta cum minus.', 'https://picsum.photos/200/300?random=18', 'Regional Creative Engineer', '200000.00', 103, 637, 2, 'https://picsum.photos/200/300?random=9', 2),
(41, '2021-07-31 01:30:00', NULL, NULL, NULL, 'Quae aut dolores placeat.', 'https://picsum.photos/200/300?random=20', 'International Creative Developer', '1010000.00', 437, 496, 1, 'https://picsum.photos/200/300?random=10', 2),
(42, '2021-12-31 01:30:00', NULL, NULL, NULL, 'In deserunt velit alias qui qui laudantium.', 'https://picsum.photos/200/300?random=22', 'Forward Mobility Architect', '1480000.00', 436, 784, 0, 'https://picsum.photos/200/300?random=11', 1),
(43, '2021-07-31 01:30:00', NULL, NULL, NULL, 'Quia dolor ad voluptas.', 'https://picsum.photos/200/300?random=24', 'Principal Markets Manager', '400000.00', 200, 334, 1, 'https://picsum.photos/200/300?random=12', 2),
(44, '2021-12-31 01:30:00', NULL, NULL, NULL, 'Error voluptatem et.', 'https://picsum.photos/200/300?random=26', 'Dynamic Identity Strategist', '760000.00', 91, 160, 1, 'https://picsum.photos/200/300?random=13', 2),
(45, '2021-07-31 01:30:00', NULL, NULL, NULL, 'Omnis iusto quia.', 'https://picsum.photos/200/300?random=28', 'Human Accountability Officer', '1190000.00', 110, 250, 2, 'https://picsum.photos/200/300?random=14', 2),
(46, '2021-03-31 01:30:00', NULL, NULL, NULL, 'Sit est quis dignissimos molestias.', 'https://picsum.photos/200/300?random=30', 'Dynamic Directives Administrator', '140000.00', 372, 330, 1, 'https://picsum.photos/200/300?random=15', 2),
(47, '2021-10-31 01:30:00', NULL, NULL, NULL, 'Alias accusamus quos fugiat consequatur.', 'https://picsum.photos/200/300?random=32', 'Global Group Officer', '1220000.00', 72, 102, 1, 'https://picsum.photos/200/300?random=16', 2),
(48, '2021-04-30 01:30:00', NULL, NULL, NULL, 'Molestiae neque mollitia atque iusto amet et.', 'https://picsum.photos/200/300?random=34', 'Direct Group Representative', '290000.00', 205, 597, 0, 'https://picsum.photos/200/300?random=17', 3),
(49, '2021-12-31 01:30:00', NULL, NULL, NULL, 'Placeat at quo.', 'https://picsum.photos/200/300?random=36', 'Regional Group Analyst', '1060000.00', 140, 979, 1, 'https://picsum.photos/200/300?random=18', 2),
(50, '2021-01-31 01:30:00', NULL, NULL, NULL, 'Nulla eius quod aut dolores laboriosam quisquam.', 'https://picsum.photos/200/300?random=38', 'Internal Program Architect', '1300000.00', 60, 822, 2, 'https://picsum.photos/200/300?random=19', 2),
(51, '2021-10-31 01:30:00', NULL, NULL, NULL, 'Autem est fugit.', 'https://picsum.photos/200/300?random=40', 'Product Group Supervisor', '1570000.00', 67, 295, 1, 'https://picsum.photos/200/300?random=20', 3),
(52, '2021-04-30 01:30:00', NULL, NULL, NULL, 'Aut quam id ea omnis perferendis animi illo.', 'https://picsum.photos/200/300?random=42', 'Senior Web Manager', '880000.00', 447, 320, 1, 'https://picsum.photos/200/300?random=21', 1),
(53, '2021-05-31 01:30:00', NULL, NULL, NULL, 'Possimus saepe similique culpa et et id incidunt.', 'https://picsum.photos/200/300?random=44', 'Principal Implementation Director', '870000.00', 365, 875, 0, 'https://picsum.photos/200/300?random=22', 2),
(54, '2021-05-31 01:30:00', NULL, NULL, NULL, 'Accusantium mollitia quia tenetur.', 'https://picsum.photos/200/300?random=46', 'International Markets Assistant', '600000.00', 326, 589, 0, 'https://picsum.photos/200/300?random=23', 2),
(55, '2021-04-30 01:30:00', NULL, NULL, NULL, 'Consequatur explicabo exercitationem qui sit neque sit.', 'https://picsum.photos/200/300?random=48', 'Dynamic Applications Manager', '1570000.00', 45, 465, 1, 'https://picsum.photos/200/300?random=24', 2),
(56, '2021-03-31 01:30:00', NULL, NULL, NULL, 'Expedita est laborum commodi sunt rerum ad odio.', 'https://picsum.photos/200/300?random=50', 'District Mobility Producer', '890000.00', 196, 841, 2, 'https://picsum.photos/200/300?random=25', 3),
(57, '2021-03-31 01:30:00', NULL, NULL, NULL, 'Quis et at ea voluptatem.', 'https://picsum.photos/200/300?random=52', 'Lead Web Consultant', '1720000.00', 479, 481, 1, 'https://picsum.photos/200/300?random=26', 1),
(58, '2021-12-31 01:30:00', NULL, NULL, NULL, 'Exercitationem ut suscipit.', 'https://picsum.photos/200/300?random=54', 'Principal Branding Associate', '610000.00', 171, 773, 0, 'https://picsum.photos/200/300?random=27', 2),
(59, '2021-08-31 01:30:00', NULL, NULL, NULL, 'Rerum architecto eveniet.', 'https://picsum.photos/200/300?random=56', 'Global Integration Agent', '710000.00', 41, 628, 0, 'https://picsum.photos/200/300?random=28', 1),
(60, '2021-09-30 01:30:00', NULL, NULL, NULL, 'Fugit aut voluptatem architecto aperiam.', 'https://picsum.photos/200/300?random=58', 'Global Creative Liaison', '1100000.00', 170, 492, 1, 'https://picsum.photos/200/300?random=29', 2),
(61, '2022-04-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Main ingredients: Corn, chicken by-products, gluten corn flour, fat-rich soy, chicken fat, dried yeast, dry skimmed milk, iodized salt, vitamins, minerals, antioxidant, flavoring.', 'https://www.pedigree.com/sites/g/files/fnmzdf1201/files/2022-08/10083901-CN-Adult-roast-ckn-rice-veg-30lb.png', 'Dry Dog Food Adult Grilled Steak & Vegetable Flavor', '1450000.00', 309, 845, 1, 'https://www.pedigree.com/sites/g/files/fnmzdf1201/files/2022-08/10083901-CN-Adult-roast-ckn-rice-veg-30lb.png', 1),
(62, '2022-06-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Main ingredients: Corn, chicken by-products, gluten corn flour, fat-rich soy, chicken fat, dried yeast, dry skimmed milk, iodized salt, vitamins, minerals, antioxidant, flavoring.', 'https://happydog_en_sb.cstatic.io/440x440/f/69110/480x480/c90b13149a/hd-vet-new-product-slider-packshots-sensible-11kg-300g.png', 'Happy Dog Sensible', '460000.00', 49, 674, 1, 'https://happydog_en_sb.cstatic.io/440x440/f/69110/480x480/c90b13149a/hd-vet-new-product-slider-packshots-sensible-11kg-300g.png', 1),
(63, '2022-11-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'From their days as puppies and kittens to their years as senior dogs and cats, our biology-based nutrition stays a step ahead for differences you can see, feel and trust.', 'https://www.hillspet.ca/content/dam/cp-sites/hills/hills-pet/global/2020-homepage-redesign/hero-pack-lockup.png', 'HILL’S PET NUTRITION', '1420000.00', 126, 921, 1, 'https://www.hillspet.ca/content/dam/cp-sites/hills/hills-pet/global/2020-homepage-redesign/hero-pack-lockup.png', 1),
(64, '2022-02-28 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'FirstMate’s Chicken formula uses whole, free-run Chicken. This Grain Free, Limited Ingredients diet is ideal for maintenance feeding or for those with food sensitivities. ', 'https://cdn.shopify.com/s/files/1/2537/7848/products/FM-LID-345g-Can-Dog-Chicken-copy-600x599-600x599_720x.png?v=1594220746', 'FIRSTMATE\'S CAN FREE-RUN CHICKEN', '1000000.00', 151, 349, 1, 'https://cdn.shopify.com/s/files/1/2537/7848/products/FM-LID-345g-Can-Dog-Chicken-copy-600x599-600x599_720x.png?v=1594220746', 2),
(65, '2022-08-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Welcome to Naturally Urban your local Vancouver Pet Store & Delivery Service offering both local delivery and pet food shipping throughout Canada and the USA.', 'https://cdn.shopify.com/s/files/1/2537/7848/t/42/assets/NU_homepage_feature_image_NEW.png?v=1650162348', 'Customer Metrics Director', '1410000.00', 374, 234, 1, 'https://cdn.shopify.com/s/files/1/2537/7848/t/42/assets/NU_homepage_feature_image_NEW.png?v=1650162348', 1),
(66, '2022-07-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Loving pets just as much as you, we\'ve brought all of your favourite brands and sellers together in the one place to provide you with a seamless experience.', 'https://www.petmarket.co.nz/media/Homepage/2022-01-02_homepageupdate/hero_image_test.png', 'kidney Care ', '640000.00', 438, 242, 1, 'https://www.petmarket.co.nz/media/Homepage/2022-01-02_homepageupdate/hero_image_test.png', 2),
(67, '2022-05-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', ' All varieties are designed to offer your dog a 100% balanced diet with every meal.', 'https://www.bargain-pet-supplies.co.uk/wp-content/uploads/2021/07/12-x-100g-Pedigree-Wet-Dog-Food-Multipack-Pouches-20-OFF-Adult-in-Jelly-Multipack-12-x-100g.jpg', 'Pedigree Wet Dog Food Multipack Pouches', '900000.00', 442, 364, 1, 'https://www.bargain-pet-supplies.co.uk/wp-content/uploads/2021/07/12-x-100g-Pedigree-Wet-Dog-Food-Multipack-Pouches-20-OFF-Adult-in-Jelly-Multipack-12-x-100g.jpg', 1),
(68, '2022-11-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Fortified with essential vitamins, made with Timothy hay, grass and thyme to provide an array of forage to reflect natural behaviour.', 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/House-Rabbit-680px-960px-600x847.png', 'Selective House Rabbit', '1250000.00', 54, 948, 1, 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/House-Rabbit-680px-960px-600x847.png', 1),
(69, '2022-06-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'With essential forage and garden vegetables, our Grain Free recipe is rich in natural ingredients with no corn or wheat.', 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/Guinea-Pig-Grain-Free-680px-960px-600x847.png', 'Selective Naturals Grain Free Guinea Pig', '1040000.00', 224, 254, 1, 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/Guinea-Pig-Grain-Free-680px-960px-600x847.png', 1),
(70, '2022-02-28 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Rich in protein with natural prebiotics, our recipe includes delicious apple, blackcurrant and linseed to help support healthy skin and coat.', 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/Rat-Mouse-680px-960px-600x847.png', 'Selective Rat & Mouse', '270000.00', 121, 822, 1, 'https://www.totalpetmarket.com/wp-content/uploads/sites/20/2021/11/Rat-Mouse-680px-960px-600x847.png', 1),
(71, '2022-07-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Rich in tasty wholegrain goodness with linseed, a natural source of Omega 3 & 6, for healthy skin and shiny coat.\n\n', 'https://m.media-amazon.com/images/I/71atHRGQ9BL._AC_SX679_.jpg', 'PETGEEK Automatic Interactive Dog Toys', '930000.00', 172, 398, 1, 'https://m.media-amazon.com/images/I/71atHRGQ9BL._AC_SX679_.jpg', 1),
(72, '2022-10-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'You won\'t be worried about hurting your pet\'s tongue with the Dog Maze Toy because it\'s smooth and rounded. So this product is one-piece, it is not only bite-resistant but also hard to break, safe, odor-free, smooth', 'https://m.media-amazon.com/images/I/41265g1HblL._AC_SR320,320_.jpg', 'Cat Puzzle Treat Dispenser', '950000.00', 306, 485, 1, 'https://m.media-amazon.com/images/I/41265g1HblL._AC_SR320,320_.jpg', 1),
(73, '2022-05-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'There are variety dog toy assortment for small dogs with various animal shape, including dinosaur, giraffe,panda, chicken, lamb, frog, lobster, octopus, whale, turtle, squirrel and pig dog toys .', 'https://m.media-amazon.com/images/I/71xyD3uQvfL._AC_SX679_.jpg', 'Squeaky Plush Dog Toy Pack for Puppy', '110000.00', 36, 722, 1, 'https://m.media-amazon.com/images/I/71xyD3uQvfL._AC_SX679_.jpg', 2),
(74, '2022-05-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'The Blinky Babble Ball is motion activated, flashes and makes sounds;A great self amusement toy for all dogs and ideal for pets that are blind or have poor vision; Small size for dogs under 12 pounds', 'https://m.media-amazon.com/images/I/51mOfYs+qgS._AC_SR320,320_.jpg', 'Pet Qwerks Blinky Babble Ball', '1550000.00', 479, 633, 1, 'https://m.media-amazon.com/images/I/51mOfYs+qgS._AC_SR320,320_.jpg', 2),
(75, '2022-02-28 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'BarkBone Nylon Dinosaur Dog Bones are designed with comfortable chewing surfaces without the harmful shards or sharp points of real bones.', 'https://m.media-amazon.com/images/I/41TYgYDmx4L._AC_SR320,320_.jpg', 'Pet Qwerks Dinosaur BarkBone ', '350000.00', 35, 889, 1, 'https://m.media-amazon.com/images/I/41TYgYDmx4L._AC_SR320,320_.jpg', 2),
(76, '2022-09-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'We want your precious pets to be healthy, happy, and secure, and our pet toys are here to help. These squeaky dog toys make great gifts for your dogs or cats.', 'https://m.media-amazon.com/images/I/41slkK5gz1L._AC_SR320,320_.jpg', 'SNUG AROOZ Cute Tucker The Turtle', '1430000.00', 316, 547, 1, 'https://m.media-amazon.com/images/I/41slkK5gz1L._AC_SR320,320_.jpg', 2),
(77, '2022-10-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Slow way for dog treats training exercises can help prevent its physical illnesses such as Bloating & Diarrhea caused by rapid diet.', 'https://m.media-amazon.com/images/I/61HiFJZR7zS._AC_SX522_.jpg', 'Ruluti Dog Food Toy', '1480000.00', 190, 560, 1, 'https://m.media-amazon.com/images/I/61HiFJZR7zS._AC_SX522_.jpg', 2),
(78, '2022-04-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'The Dog Snuffle Mat can be used to put the favorite food of your dogs in the hole, so they will smell and look for the food and improve their foraging abilities', 'https://m.media-amazon.com/images/I/51JXEqIaMGL._AC_SX522_.jpg', 'Interactive Dog Toys for Boredom', '420000.00', 242, 674, 1, 'https://m.media-amazon.com/images/I/51JXEqIaMGL._AC_SX522_.jpg', 2),
(79, '2022-11-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'The Kong Wobbler, the OG interactive kibble toy, keeps dogs moving while providing them with action- and treat-packed stimulation. It sits upright until your dog knocks it with their paw or nose, spilling treats or kibble to reward their efforts.', 'https://images.ctfassets.net/7ybtdzdgha5d/3S7EpPoBjBSw0uYpEzNXzc/de6f8653c4d74717c2ac8bfec9512ba4/1._kong-wobbler.png?w=400&h=400&q=65&fm=webp', 'Kong Wobbler Toy', '460000.00', 47, 141, 1, 'https://images.ctfassets.net/7ybtdzdgha5d/3S7EpPoBjBSw0uYpEzNXzc/de6f8653c4d74717c2ac8bfec9512ba4/1._kong-wobbler.png?w=400&h=400&q=65&fm=webp', 2),
(80, '2022-06-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'This IQ Treat Ball rewards your dog for being active while slowing down how quickly your dog consumes their food. Its ball shape makes it ideal for rolling around and having your pup chase it, meaning extra movement and exercise.', 'https://images.ctfassets.net/7ybtdzdgha5d/3DXQlk1rHZT9U4aFdhcXpA/b54b9f3ebb567447e03aba7cf1da778c/2._iq-treat-ball.png?w=400&h=400&q=65&fm=webp', 'OurPets IQ Treat Ball', '330000.00', 299, 641, 1, 'https://images.ctfassets.net/7ybtdzdgha5d/3DXQlk1rHZT9U4aFdhcXpA/b54b9f3ebb567447e03aba7cf1da778c/2._iq-treat-ball.png?w=400&h=400&q=65&fm=webp', 2),
(81, '2022-12-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Because your pet deserves their very own place mat too. It’s super soft, so it’ll be a comfy resting spot for your furry friend while they wait for dinner. ', 'https://images.ctfassets.net/6g4gfm8wk7b6/63T0KKTCvb8XApa7yzuSpS/97b59b0f0495afd09eda1d2865bacd0c/Redbubble_Mat_Pet_Product_Refresh.png?w=544&fm=avif', 'A mat for your favorite messy eater…', '700000.00', 154, 360, 1, 'https://images.ctfassets.net/6g4gfm8wk7b6/63T0KKTCvb8XApa7yzuSpS/97b59b0f0495afd09eda1d2865bacd0c/Redbubble_Mat_Pet_Product_Refresh.png?w=544&fm=avif', 3),
(82, '2022-09-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'This travel carrier is another Select staffer favorite from Wild One — associate reporter Mili Godio uses it to take Bella, her 4-year-old 16-pound Havanese/Bichon mix, on the plane when they visit Godio’s family in Florida.', 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569074/screen_shot_2022-08-31_at_3-00-32_pm.png', 'Wild One Travel Carrier', '1150000.00', 454, 487, 1, 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569074/screen_shot_2022-08-31_at_3-00-32_pm.png', 3),
(83, '2022-04-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Several Select staffers use a Furbo camera to keep an eye on their dog when they’re not home. Greenwald is currently working with a trainer on Suzie’s separation anxiety ', 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569076/315lrm6zwpl-sl500-630fb2118caf0.jpg', 'Furbo 360 Dog Camera', '1840000.00', 106, 616, 1, 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569076/315lrm6zwpl-sl500-630fb2118caf0.jpg', 3),
(84, '2022-11-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Godio’s Bella has little legs, so Bella uses these dog stairs to climb into bed with Godio at night. “I love them because they’re super lightweight and they fold, so I can store them away easily when they’re not in use,” Godio said.', 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569083/screen_shot_2022-08-31_at_3-21-52_pm.png', 'FRISCO Foldable Nonslip Cat & Dog Stairs', '1600000.00', 170, 371, 1, 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569083/screen_shot_2022-08-31_at_3-21-52_pm.png', 3),
(85, '2022-12-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Select production coordinator Rebecca Rodriguez’s 2-year-old short hair cats Enzo and Luna — 14 pounds and 8 pounds, respectively — love this tower from Necoichi.', 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569115/415ijljz4xs-sl500-630fcc96d86e9.jpg', 'Necoichi Cozy Tower Cat Scratcher', '530000.00', 31, 496, 1, 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-260w,f_auto,q_auto:best/newscms/2022_35/3569115/415ijljz4xs-sl500-630fcc96d86e9.jpg', 3),
(86, '2022-11-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'This automatic paw cleaner has soft silicone bristles with a powerful motor that rotates 25 times in just 20 seconds.', 'https://images.ctfassets.net/6g4gfm8wk7b6/6n669ku0pJlvOP5KEsqvP5/04c7c4ace9aa26dce3325d695c86219b/Paw_Cleaner_Pet_Product_Refresh.png?w=544&fm=avif', 'A gadget that’ll keep their paws clean…', '890000.00', 323, 547, 1, 'https://images.ctfassets.net/6g4gfm8wk7b6/6n669ku0pJlvOP5KEsqvP5/04c7c4ace9aa26dce3325d695c86219b/Paw_Cleaner_Pet_Product_Refresh.png?w=544&fm=avif', 3),
(87, '2022-04-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Pet Dog Cat Bath Brush 2-in-1 Pet SPA Massage Comb Soft Silicone Pet Shower Hair Grooming Cmob Dog Cleaning Tool Pet Supplies', 'https://salt.tikicdn.com/cache/750x750/ts/product/5b/61/ec/480e87ead69fc59784d34c38362ffbc9.jpg.webp', 'Pet Dog Cat Bath Brush 2-in-1', '370000.00', 198, 607, 1, 'https://salt.tikicdn.com/cache/750x750/ts/product/5b/61/ec/480e87ead69fc59784d34c38362ffbc9.jpg.webp', 3),
(88, '2022-07-31 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'This set comes with everything you’ll need for a park outing with your pooch including a lightweight harness, a dirt-resistant, waterproof leash, and a poop bag carrier.', 'https://images.ctfassets.net/6g4gfm8wk7b6/6eK1o5fKsHf6UqdSPMMfs6/def31f3dcf070de268610f1e070188d0/WildOne_Walk_Pet_Product_Refresh.png?w=544&fm=avif', 'The cutest harness kit for daily dog walks…', '890000.00', 337, 529, 1, 'https://images.ctfassets.net/6g4gfm8wk7b6/6eK1o5fKsHf6UqdSPMMfs6/def31f3dcf070de268610f1e070188d0/WildOne_Walk_Pet_Product_Refresh.png?w=544&fm=avif', 3),
(89, '2022-04-30 01:30:00', NULL, NULL, '2023-11-30 02:30:00', 'Owning a pet is the definition of fun...until they shed everywhere, make a mess while eating, and refuse to take a bath. Not everything is morning snuggles and cute selfies (despite what Insta may lead you to believe).', 'https://www.theskimm.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2F6g4gfm8wk7b6%2FRvTI9ZBphhSCuhRWpDktU%2F86bb1e0e8010ef7de7f6f9abcc3ee6f1%2F22.01.26_Problem-Solving_Pet_Products.png&w=1080&q=100', 'Our Go-to Problem-Solving Pet Products', '840000.00', 341, 193, 1, 'https://www.theskimm.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2F6g4gfm8wk7b6%2FRvTI9ZBphhSCuhRWpDktU%2F86bb1e0e8010ef7de7f6f9abcc3ee6f1%2F22.01.26_Problem-Solving_Pet_Products.png&w=1080&q=100', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typelocations`
--

CREATE TABLE `typelocations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `typelocations`
--

INSERT INTO `typelocations` (`id`, `name`) VALUES
(1, 'Day Care'),
(2, 'Pet Spa'),
(4, 'Training'),
(3, 'Vaccine'),
(5, 'Vets');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typepets`
--

CREATE TABLE `typepets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `typepets`
--

INSERT INTO `typepets` (`id`, `name`) VALUES
(3, 'Bird'),
(2, 'Cat'),
(1, 'Dog'),
(5, 'Hamster'),
(6, 'Other'),
(4, 'Rabbit');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail_avt` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `created_at`, `created_by`, `deleted_at`, `updated_at`, `address`, `email`, `full_name`, `password`, `phone`, `status`, `thumbnail_avt`, `username`, `role_id`) VALUES
(1, NULL, NULL, NULL, NULL, 'Thanh Hoa', 'datyasuo202@gmail.com', 'Pham Dat', '$2a$10$qbARDAJLvAPv/2OpSKAKAePIanadAcu5gzbk.gGxeCw0e8wJSv/vi', '086646236', 1, 'https://as1.ftcdn.net/v2/jpg/03/53/11/00/1000_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg?fbclid=IwAR0IeeX4fdIKXrmKyVLdn3mGEhAkNFdQv3MH7f4P5okIBtG_Rx_fqonZjss', 'admin1', 1),
(2, NULL, NULL, NULL, NULL, 'Thanh Hoa', 'datyasuo202@gmail.com', 'Pham Dat', '$2a$10$jGH6SmGN0vATmcKrDsQXi.jPrTknEgbTdTxkvRvfGUmVrljtr0/bm', '086646236', 1, 'https://as1.ftcdn.net/v2/jpg/03/53/11/00/1000_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg?fbclid=IwAR0IeeX4fdIKXrmKyVLdn3mGEhAkNFdQv3MH7f4P5okIBtG_Rx_fqonZjss', 'user1', 2),
(3, NULL, NULL, NULL, NULL, 'Thanh Hoa', 'datyasuo202@gmail.com', 'Pham Dat', '$2a$10$j01cgEoTyWn6neNwUzOha.1CinKY0dE/XkDKYC4XzvbgpfgaYQZgG', '086646236', 1, 'https://as1.ftcdn.net/v2/jpg/03/53/11/00/1000_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg?fbclid=IwAR0IeeX4fdIKXrmKyVLdn3mGEhAkNFdQv3MH7f4P5okIBtG_Rx_fqonZjss', 'user2', 2),
(4, '2022-11-18 17:34:46', NULL, NULL, '2022-11-18 17:34:46', '8799 Lubowitz Plaza, Jannethaven, IA 44585', 'gra8elvrle@gmail.com', 'Tierra Runolfsdottir', '$2a$10$nGcaeRxhFzDez2i4ohIw.uvAY.KZIMe5nJV3pyLaubb2iPHP3MbmW', '1-472-644-7547', 3, 'https://picsum.photos/200/300?random=0', 'shaunte.marquardt', 2),
(5, '2022-11-18 17:34:46', NULL, NULL, '2022-11-18 17:34:46', '11253 Idalia Orchard, West Burtonfort, AR 30761', 'vv6o0sr8ho@gmail.com', 'Rubye Krajcik', '$2a$10$Gyst9VVmcrvkyKh2VwSeHOU.5VDFPzsuz7DUp4syAe3drXaXHM3ee', '067-159-4052', 2, 'https://picsum.photos/200/300?random=1', 'dorathy.miller', 2),
(6, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Suite 630 4196 Blanda Parkways, Okunevafurt, WI 79315', 'xyq2a4omt5@gmail.com', 'Shery Huels', '$2a$10$TFFdtAcc2nbKobypX5tfceWY4W7ElqxkoF8Irh44V0XGYeat1EaCy', '(610) 843-5127', 2, 'https://picsum.photos/200/300?random=2', 'nickolas.morar', 2),
(7, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', '185 Laraine Squares, New Nickolastown, MI 28551-3886', 'qmqd53ytn2@gmail.com', 'Miss Moses Considine', '$2a$10$XR2mHMUyb2qjO2SR0y1rregK1j7nDNKDXd2172.NA9WxJhOoaQEnq', '1-349-824-7247', 2, 'https://picsum.photos/200/300?random=3', 'eldridge.goodwin', 2),
(8, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Apt. 221 9470 Josh Falls, New Ceceliamouth, UT 16977', 'mby06uy6hs@gmail.com', 'Genny Greenfelder', '$2a$10$2IbW3EqRPCHYhBYKp2RBKuOWwk0AW2nkJdZAtogQOl2qTCaHC1X/O', '450.170.1450', 3, 'https://picsum.photos/200/300?random=4', 'jeraldine.bashirian', 2),
(9, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Suite 609 7652 David Estate, Loweview, AR 55808', '18bdq0dcdv@gmail.com', 'Diamond Donnelly', '$2a$10$POd2D/w1DzVfUbCgPqrHouAQr2BwtCH.0v08t7bZki0T1DaovcpkC', '1-955-577-3792', 1, 'https://picsum.photos/200/300?random=5', 'joseph.lynch', 2),
(10, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', '964 O\'Hara Trafficway, Erdmanport, OR 77730-7325', 'dxa2v03zzh@gmail.com', 'Euna Johnson', '$2a$10$cj5WfjVJOxl0WJIUxntSB.x5voVU2NNIxcj5HESSHMmq5kMvCHkM.', '1-473-160-1936', 3, 'https://picsum.photos/200/300?random=6', 'sang.mitchell', 2),
(11, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', '47465 Gutkowski Mall, Klingmouth, FL 34871', 'wm613w7ooe@gmail.com', 'Isaias Wilderman DVM', '$2a$10$KYDB6bviAMvQa2KhISFhkuBEfzymSDdj/QM4Q2pvOQKf0cnLBWwuy', '630-673-5148', 3, 'https://picsum.photos/200/300?random=7', 'lynette.yost', 2),
(12, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Apt. 950 607 Sharron Centers, North Kiaraport, WY 89511', 'txb3bx7yza@gmail.com', 'Mr. Florinda King', '$2a$10$4OuyYpEYa7mQQvnyrCp7Su1PeOohx2uePQ0pfdYkNy0xi5QU80Y3W', '456.290.4350', 2, 'https://picsum.photos/200/300?random=8', 'nam.johnston', 2),
(13, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', '160 Muller Walk, North Madonna, WI 16354-6206', 'c4z2wv1stw@gmail.com', 'Wendell Howell', '$2a$10$DMyhocflvLLrVLZYTZ2pkeuiWptcJW7BfMAQkGtaL9S4QMnHPRvA6', '530-596-4179', 3, 'https://picsum.photos/200/300?random=9', 'johnathan.sporer', 2),
(14, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Suite 495 880 Mindy Station, Bertmouth, UT 58690-5355', '1dj3qgabqa@gmail.com', 'Franklin Lesch', '$2a$10$hmedXxdvoIOrmnnGOF0tw.QsdE5NoafmSoLru3dCPu5ESR/AvHz/e', '218-917-1865', 2, 'https://picsum.photos/200/300?random=10', 'simone.beer', 2),
(15, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', 'Suite 659 5797 Morris Mall, DuBuquemouth, OK 87719-4661', 'wwj6530d2t@gmail.com', 'Nikki Bradtke', '$2a$10$sh7YlrnXPif.DOUVI7fkC.Ga34Tww25zEkJ/DqI0cnat6XVuhz35a', '(461) 107-3627', 3, 'https://picsum.photos/200/300?random=11', 'niki.collier', 2),
(16, '2022-11-18 17:34:47', NULL, NULL, '2022-11-18 17:34:47', '64145 Jerde Neck, Geraldtown, NY 87452-1528', 'j8itwwffvh@gmail.com', 'Lyle Rippin', '$2a$10$1EWRCYh0ieoDonNgxbcYhumGIkusSZobJUJCD5IwkhL/0MNn6MZme', '892.176.7769', 2, 'https://picsum.photos/200/300?random=12', 'nichelle.predovic', 2),
(17, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '24801 Marcelino Groves, Birdieville, MA 64067', 'u01hhr0lqx@gmail.com', 'Dolores Greenholt', '$2a$10$eIYsEyzkUU9Bhp5PJ3qz4O3Ep8B9urQuSlGUTpLMhf1PHjeWLd1nC', '067-525-4458', 1, 'https://picsum.photos/200/300?random=13', 'derek.oconnell', 2),
(18, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '8135 Delores Highway, Dietrichside, WV 84742-1171', 'mfxbkoshzw@gmail.com', 'Alan Strosin', '$2a$10$V4rneNtVKgNjuPFl03aIdOviTzJqhSxvlof6ysQ/vDoqs3aFgAxm6', '(734) 271-0861', 2, 'https://picsum.photos/200/300?random=14', 'elisa.raynor', 2),
(19, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', 'Suite 353 654 Kuphal Mountains, Hugoshire, ND 65058-0582', 'fpdl8gsqrm@gmail.com', 'Laverne Cruickshank', '$2a$10$rPaQJ8xnwa5MQ9qmDowXIuXwFo1NrWMbPEHJtkoIMQ7wV8lqZU38W', '770-217-5627', 2, 'https://picsum.photos/200/300?random=15', 'wendi.rutherford', 2),
(20, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '54215 Dave Underpass, South Buck, OR 07239', 'osiqlb4qvp@gmail.com', 'Hyman Parker IV', '$2a$10$EhKT91c6EXKO6b2zrb98wuqFsYOHvnGVOxCYQA.SPBl5Aa1wXarnK', '958.175.2598', 0, 'https://picsum.photos/200/300?random=16', 'edward.wolff', 2),
(21, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '596 Champlin Turnpike, McCulloughtown, GA 87381', '1kxdw1ya5k@gmail.com', 'Bart Bosco', '$2a$10$u5XFEFEzDavusyXDbpdC/OK0TEk6bwXVOjzOCTD17K66B2qZuKBwq', '(758) 211-9421', 3, 'https://picsum.photos/200/300?random=17', 'ernestine.ernser', 2),
(22, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', 'Apt. 807 599 Vanessa Ports, South Guadalupebury, MD 04594-0742', 'c96mt5vi0c@gmail.com', 'Mrs. Francie Rutherford', '$2a$10$RZK2kd7YOVqOl/tiSE5H3OVHvjkP2/.prPIio/Y6RfBSkbBpNBtBu', '561.397.8839', 2, 'https://picsum.photos/200/300?random=18', 'nell.barrows', 2),
(23, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', 'Apt. 592 90211 Turner Flat, North Chanel, NC 83183', 'jgrfbvuj6p@gmail.com', 'Stella Cruickshank', '$2a$10$gg3UMyN8oz9hnht5ze6Ezemad4Y9V1QUy6V1FVjEEGi5XvSHrjhkq', '(311) 057-8146', 3, 'https://picsum.photos/200/300?random=19', 'alfred.waelchi', 2),
(24, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', 'Apt. 740 9927 Treutel Manors, Mooreshire, MI 08162', '0bsj2nqp67@gmail.com', 'Ms. Janice Witting', '$2a$10$VyhwwsOIF2CrvSabXpGIxuGPzGCuRNJtRjv0yCjdjY3UNMw6ohcpC', '703-091-6136', 3, 'https://picsum.photos/200/300?random=20', 'awilda.runolfsson', 2),
(25, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '567 Langosh Springs, New Darren, ND 02155-2265', 'f493gn6ecf@gmail.com', 'Abe Leuschke', '$2a$10$5LRRZmCXDC81x5vMIPeHF.Q.ricW2IPNZPgtSHx9A9hs.MfI47TNK', '683.364.3942', 2, 'https://picsum.photos/200/300?random=21', 'margarete.schoen', 2),
(26, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '170 Thiel Mission, Murrayton, CA 57532-0058', '08lhfv26ss@gmail.com', 'Lekisha Veum II', '$2a$10$TwAFKZ3mqXdiQU7/WBy.4.cnQoXEJX/WIA7RTO/yNRud1Gjsw0Adi', '1-626-094-2862', 0, 'https://picsum.photos/200/300?random=22', 'donnie.gutkowski', 2),
(27, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', 'Apt. 926 79865 Cassin Coves, Lake Yon, NV 53989-1994', 'v9s8qt4pur@gmail.com', 'Latosha Rippin', '$2a$10$UAmdv9DUnVBx1QRnd.8AROcAt1Wu/3wmio7z4fPppa7DvXMb7ZSye', '1-293-243-9538', 3, 'https://picsum.photos/200/300?random=23', 'rudolf.hayes', 2),
(28, '2022-11-18 17:34:48', NULL, NULL, '2022-11-18 17:34:48', '883 Gerry Freeway, East Amadofurt, WA 89907-4112', '9abcuk6qt7@gmail.com', 'Elise Sauer I', '$2a$10$gpF5utsWpzuzQRQ.MZ8jtO.316JZ0kvDFU8q45Bqya2jFERPRJQxC', '503.125.6216', 3, 'https://picsum.photos/200/300?random=24', 'armando.rohan', 2),
(29, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', 'Suite 735 37521 Angelika Land, Bradtkeshire, NM 92866-8975', '50gie4amzc@gmail.com', 'Jann Connelly', '$2a$10$x0hyVO.lOdkjNuS2QIVpIu2NYxL.ClEGG7UcYhRmg7fkAOUOCHwBm', '262.664.7404', 0, 'https://picsum.photos/200/300?random=25', 'grisel.collins', 2),
(30, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', 'Apt. 516 16807 Laure Glen, Lake Nan, AL 80747', '2mu8wbnw1s@gmail.com', 'Caterina Ebert', '$2a$10$fAh3LBl4freIZmCcnvepXOfVcpMRv.gYLFH3YuIld6LfTlhSGbqeG', '1-950-884-0932', 0, 'https://picsum.photos/200/300?random=26', 'shane.sauer', 2),
(31, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '16248 Waelchi Ways, Port Elyse, CO 93157', 'd3xuyac3nm@gmail.com', 'Miss Charmaine Runolfsdottir', '$2a$10$u5.mFGim4778hP0./u9BROr95oFTuk1W8LLseb5gkWVUpeleuY.qK', '729-432-3271', 2, 'https://picsum.photos/200/300?random=27', 'buck.huels', 2),
(32, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', 'Suite 761 7643 Jacobi Isle, Eltonview, OK 03938-7376', 'sm5w7gqpsz@gmail.com', 'Christian Runte', '$2a$10$BiyylY/ak4pTj/43.r1paOmOzMc39Tf8cmSfyJjQhIEhWmccPyBxG', '(906) 089-5681', 3, 'https://picsum.photos/200/300?random=28', 'lynn.runolfsson', 2),
(33, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '6509 Jeffery Tunnel, Dickiburgh, CT 46315', 'rhjnbx1q6o@gmail.com', 'Rickie O\'Conner', '$2a$10$1BjKSK1SQXrY4E9p0z4nB.fNRWTezqlNxKlkXceIMjQb11fRso98a', '174.606.4187', 2, 'https://picsum.photos/200/300?random=29', 'natalie.spinka', 2),
(34, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '31892 Lynch Stravenue, Nilsamouth, VT 35971', '1qdhvia750@gmail.com', 'Jules Nitzsche', '$2a$10$qCP.WCV5yaKeYvbQKKmAbu1ndsxlxHb9pZl5wqHxZHLJaCqfIYBva', '1-828-300-9676', 1, 'https://picsum.photos/200/300?random=30', 'kerry.vonrueden', 2),
(35, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', 'Suite 102 731 Dach Expressway, Port Micki, IN 54217', '7pcjkjfgsr@gmail.com', 'Ping Altenwerth', '$2a$10$OMWokaI./lTW7bQjv3tv3ecULL8/epimhFKsaAnfNEI2zgy.sI7He', '251-150-1610', 3, 'https://picsum.photos/200/300?random=31', 'anglea.yost', 2),
(36, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '02954 Bruno Hill, Cartwrightmouth, IL 28610-8927', '9w5nh8ib4m@gmail.com', 'Roberto Nader', '$2a$10$9u.orH5xA8uWPrBBa8f7ZeoNGJg3zc4CnKie303F.QORfbDSltK2G', '(675) 951-8295', 0, 'https://picsum.photos/200/300?random=32', 'johnetta.shanahan', 2),
(37, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '377 Londa Motorway, Lake Thaddeustown, CA 22808-3152', 'l2uf7pp686@gmail.com', 'Sylvester Brakus', '$2a$10$APbmWmzfO320GBQOBK41YOyasSt8XDMoZlK3k0fns3a0FrESv.vnG', '395-933-9950', 0, 'https://picsum.photos/200/300?random=33', 'tommie.carter', 2),
(38, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', 'Suite 807 64202 Ortiz Harbor, Lake Willowmouth, HI 41231-8859', 'jq6gmf39ez@gmail.com', 'Herschel Schmitt', '$2a$10$dfz7oW6vjwi2HtGL8Zqr5OepF55SIYHMDdlpUZv0GQprvcO3HU2Vu', '448-796-5241', 1, 'https://picsum.photos/200/300?random=34', 'benny.thiel', 2),
(39, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '691 Leonardo Gateway, Reingerport, MS 20912-8313', '7dqyvzyd03@gmail.com', 'Miss Nolan Friesen', '$2a$10$8QCOxWRaP4MXFHJe.1DzIeAwW3N6bIRkHcnKX6JXTmuoO/J9XGK8C', '160.156.4082', 2, 'https://picsum.photos/200/300?random=35', 'brittanie.halvorson', 2),
(40, '2022-11-18 17:34:49', NULL, NULL, '2022-11-18 17:34:49', '4181 Keeling Isle, East Kindraside, TX 87701-9076', 'qn0ayzyign@gmail.com', 'Essie Huel Jr.', '$2a$10$n76rSyRxd1lhS/6kUea72e/LBgpbuE1uBsXGYqFccvvy9b9mjiXwu', '(784) 279-6857', 0, 'https://picsum.photos/200/300?random=36', 'hong.weissnat', 2),
(41, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', 'Apt. 459 674 Hilll Ridge, Lake Raymundotown, MI 52439', 'l0mfcg55zk@gmail.com', 'Junior McKenzie', '$2a$10$YBDecw4vQziVjlQEmOXqkuMoWvfZb2kEGRc8.u67awgN0NAICSfKC', '1-368-059-9530', 3, 'https://picsum.photos/200/300?random=37', 'may.boehm', 2),
(42, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', 'Suite 885 08776 Aron Run, Colefurt, NC 57391-5401', '538m24hnii@gmail.com', 'Asuncion Murphy', '$2a$10$nBO.hzimhZOIDwLYCaaefOyXjp22FN2.CHBBeHfEpcCYwrtGIvi6C', '(803) 533-4132', 2, 'https://picsum.photos/200/300?random=38', 'tiffani.altenwerth', 2),
(43, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '55484 Leon Parkways, Lake Jeraldbury, AZ 54633-7911', 'd52sk8ch0j@gmail.com', 'Cory Becker II', '$2a$10$NM7iMu4lH2RDto1lisX2cOxWEKrjjNxdFTVe11X.zDdZo3m5yOPCS', '1-146-716-8199', 1, 'https://picsum.photos/200/300?random=39', 'roger.ernser', 2),
(44, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', 'Suite 894 21386 Nanci Lodge, O\'Connellbury, MN 16918-7202', '9gxkmrir64@gmail.com', 'Brian Halvorson', '$2a$10$iIypuVoy8VOaFj7wTzwJBOc7WVuTi4S1DNWf8fCdjb5HE1BGei0te', '(224) 566-3747', 2, 'https://picsum.photos/200/300?random=40', 'nickolas.kozey', 2),
(45, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '797 Johns Plains, Carterfurt, AL 68909', 'gtxz4lf7ip@gmail.com', 'Jodie O\'Connell', '$2a$10$gPO0Sox8Pk9V7AJzr2K9RObcN1hMDgMqGYzb5JC7nhvA.gM.FqFm.', '207-328-7332', 3, 'https://picsum.photos/200/300?random=41', 'douglas.runolfsdottir', 2),
(46, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', 'Apt. 643 3720 Huels Key, South Faustino, SC 20764-8828', '2qgrh0bqig@gmail.com', 'Windy Jast', '$2a$10$K4QUtTe.QL0mlepIkf2CFOTYNQ1AGmTxzxSq2xVHb/Nf1LLS51l.K', '(814) 804-5575', 2, 'https://picsum.photos/200/300?random=42', 'donny.schinner', 2),
(47, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '7587 Kihn Fall, Moshefurt, MO 31966-1228', '4al38hmfm1@gmail.com', 'Rene Kris III', '$2a$10$9BjAUHo9vzCzRA8WGSmTc.7CE5gW.2z1DJl5LWQIL4q6e8g3EIx/G', '1-796-698-4982', 3, 'https://picsum.photos/200/300?random=43', 'rogelio.bogisich', 2),
(48, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '13955 Lebsack Estate, Port Marshall, VA 82836-0862', 'mmholw3c1r@gmail.com', 'Elias Hahn', '$2a$10$7MR.LWn1KuBeMyKTenL57eMeEZdLu6Weur1.fV64oHxcwTqK89d4e', '226.732.7794', 3, 'https://picsum.photos/200/300?random=44', 'graig.hoppe', 2),
(49, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', 'Apt. 922 1373 Collier Circle, Schinnermouth, WY 23694', '0a3ac664tm@gmail.com', 'Karry Beatty', '$2a$10$NnYxfQ7DxH3Xt.QrA2ewDOUPnCBoTLxGkBIIWqCRac3tmOzPTyRoS', '528.685.8813', 1, 'https://picsum.photos/200/300?random=45', 'gaylord.schaden', 2),
(50, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '2056 Yelena Courts, Hermineborough, RI 66542-0568', 'pblwmindrn@gmail.com', 'Henry Gerlach', '$2a$10$EeYShqjpVaC7ilzQzIis5u2JzmtkcIjNre5YO.LTaaZyBYqLvnN1K', '(177) 607-4918', 1, 'https://picsum.photos/200/300?random=46', 'raymon.mclaughlin', 2),
(51, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '422 Natacha Mountain, Billiehaven, FL 18615', 'td6s0zd6dr@gmail.com', 'Vicki Herman', '$2a$10$QSnUKXcE88m6HvDUnTXFJ.rUaKPF7i5GAbKXVshVw8QWGt4ayu2HS', '496.020.3056', 3, 'https://picsum.photos/200/300?random=47', 'kelsi.maggio', 2),
(52, '2022-11-18 17:34:50', NULL, NULL, '2022-11-18 17:34:50', '6937 Feest Road, East Lishamouth, MT 43641', '7432x6b4ro@gmail.com', 'Carroll Crist', '$2a$10$jcHIV3wLlLryld3WtPVk1ey13D8j9p58FtrSDPctoj46y9Ol9arUC', '(726) 293-6300', 3, 'https://picsum.photos/200/300?random=48', 'art.wilkinson', 2),
(53, '2022-11-18 17:34:51', NULL, NULL, '2022-11-18 17:34:51', 'Suite 752 0665 Genoveva Fords, Predovicside, MT 16932-4423', 'hhk98ffh2n@gmail.com', 'Jillian Bartoletti', '$2a$10$Op3EqFmU2f5cMN.8x5kiq.GhovTyw/LxzkEP/IWqpJo.KSJ7yrOi6', '994-366-2400', 2, 'https://picsum.photos/200/300?random=49', 'beverley.thiel', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`product_id`,`shopping_cart_id`),
  ADD KEY `FKe89gjdx91fxnmkkssyoim8xfu` (`shopping_cart_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catepets`
--
ALTER TABLE `catepets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nan91fr2rfkudcbktbd4qdwv9` (`name`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwcg76rwm42o8y5o17d32ocpl` (`typelocation_id`),
  ADD KEY `FKdmtxqhxbtg4qt8q6u01hxj52i` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi12jwl9c1hq7wup2o9jdt1wrf` (`catpet_id`),
  ADD KEY `FKk3k3cdtocf9muijmxisplt4w8` (`typepet_id`),
  ADD KEY `FKc47kjb41qf50bwgddm024m5xn` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Chỉ mục cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr1irjigmqcpfrvggavnr7vjyv` (`user_id`);

--
-- Chỉ mục cho bảng `typelocations`
--
ALTER TABLE `typelocations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_5v66cms1ochd8ou1ykcqx1yk5` (`name`);

--
-- Chỉ mục cho bảng `typepets`
--
ALTER TABLE `typepets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_gf0ncwjrdj079jkhafgdxvft1` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`),
  ADD KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `catepets`
--
ALTER TABLE `catepets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `typelocations`
--
ALTER TABLE `typelocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `typepets`
--
ALTER TABLE `typepets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FKe89gjdx91fxnmkkssyoim8xfu` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`),
  ADD CONSTRAINT `FKqkqmvkmbtiaqn2nfqf25ymfs2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `FKdmtxqhxbtg4qt8q6u01hxj52i` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKnwcg76rwm42o8y5o17d32ocpl` FOREIGN KEY (`typelocation_id`) REFERENCES `typelocations` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `FKc47kjb41qf50bwgddm024m5xn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKi12jwl9c1hq7wup2o9jdt1wrf` FOREIGN KEY (`catpet_id`) REFERENCES `catepets` (`id`),
  ADD CONSTRAINT `FKk3k3cdtocf9muijmxisplt4w8` FOREIGN KEY (`typepet_id`) REFERENCES `typepets` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `FKr1irjigmqcpfrvggavnr7vjyv` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
