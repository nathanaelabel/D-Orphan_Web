-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2023 pada 07.41
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d-orphan_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_start_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('Regional','Nasional','Internasional') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `competitions`
--

INSERT INTO `competitions` (`id`, `name`, `photo_url`, `registration_start_date`, `registration_start_hour`, `url`, `level`, `description`, `organizer`, `created_at`, `updated_at`) VALUES
(1, 'Et et quia.', 'https://picsum.photos/id/136/640', '2023-02-03', '11:16', 'https://anggraini.go.id/et-sit-veritatis-consequatur-dolorum-doloremque-animi-reiciendis.html', 'Nasional', 'Dolorem aut quis sed eius voluptas. Doloremque et tempora ab commodi necessitatibus. Quibusdam rerum doloribus itaque aut. Ipsum molestiae et deserunt enim omnis explicabo.', 'Altenwerth, Hilpert and Beer', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(2, 'Minus libero minus ut.', 'https://picsum.photos/id/81/640', '2023-03-30', '11:45', 'http://www.permadi.ac.id/', 'Internasional', 'Eum et aut rem nihil. Possimus iste commodi omnis assumenda qui. Ut et autem unde assumenda consequatur. Sit et quod et nesciunt repudiandae consequatur. Sed officia hic quo.', 'Heathcote-Lockman', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(3, 'Aliquam sunt aut reprehenderit non.', 'https://picsum.photos/id/95/640', '2023-03-11', '23:30', 'http://www.suryono.biz.id/assumenda-ullam-et-reprehenderit-iure-cum-alias', 'Internasional', 'Eos tempore consectetur veniam. Neque quod exercitationem aut. Eum aperiam doloribus nulla dolor corporis vel. Corrupti aut quos quae vel sit magni.', 'Kerluke, West and Rodriguez', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(4, 'Necessitatibus at et.', 'https://picsum.photos/id/112/640', '2023-01-29', '04:35', 'http://www.yolanda.mil.id/voluptatum-dolor-rerum-dolorum-perferendis', 'Internasional', 'Accusamus est recusandae officia ab. Quia placeat ad corrupti accusamus. Quas in est ut earum.', 'Ortiz, Ryan and Schoen', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(5, 'Distinctio ipsam et et.', 'https://picsum.photos/id/148/640', '2023-01-31', '22:20', 'https://www.nasyiah.tv/velit-qui-ipsum-eligendi-et', 'Internasional', 'Minus pariatur temporibus aspernatur sed eligendi. Velit est similique ut sed repellat perferendis explicabo cupiditate. Quos est dolores aut qui tenetur iste. Sed in cum aut consequatur ea unde.', 'Koss PLC', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(6, 'Et quisquam eligendi.', 'https://picsum.photos/id/77/640', '2023-02-08', '10:21', 'http://www.purnawati.name/et-sed-iusto-et-dolorem', 'Nasional', 'Ea dolores ad eaque temporibus non quo. Voluptatem accusamus natus accusamus omnis soluta laudantium. Culpa rem ratione rerum atque.', 'Johnson PLC', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(7, 'Ullam aliquid autem ut.', 'https://picsum.photos/id/231/640', '2023-03-22', '00:11', 'https://waluyo.co.id/sed-libero-dolorum-est-dolor-ut-impedit-quisquam-unde.html', 'Nasional', 'Sequi non repellendus eum temporibus sed quia est. Quae necessitatibus nihil iure quod tempore. Consequatur repellendus sed harum.', 'Boyer-Howe', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(8, 'Consequatur nisi odio.', 'https://picsum.photos/id/202/640', '2023-01-24', '21:40', 'http://oktaviani.co/excepturi-libero-accusantium-consequatur-dolor', 'Nasional', 'Repudiandae natus animi odio ea. Consequuntur ratione velit ullam sed ea. Ducimus quibusdam saepe ab assumenda quae eius. Ab nobis harum a ipsam et voluptates non.', 'Mitchell-Kovacek', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(9, 'Dicta aut corporis.', 'https://picsum.photos/id/49/640', '2023-03-24', '13:07', 'http://zulaika.info/veniam-quo-aspernatur-magnam-ex-necessitatibus.html', 'Internasional', 'Ut voluptatibus exercitationem voluptas sint quas velit cum. Officia dignissimos voluptas iure doloremque quibusdam impedit. Harum cupiditate voluptas nulla recusandae in id rerum voluptates.', 'Runolfsson-Becker', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(10, 'Quibusdam fuga ut.', 'https://picsum.photos/id/128/640', '2023-02-28', '08:11', 'http://mayasari.co/officia-qui-saepe-nam-asperiores-vero-id', 'Internasional', 'Est eos id id. Ab error architecto illum architecto repellendus. Et ea et libero ut. Itaque sed hic sit natus ab. Delectus quaerat suscipit nam. Beatae voluptatem inventore fuga. Odit et et non.', 'Fahey PLC', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(11, 'Ipsa qui officiis.', 'https://picsum.photos/id/139/640', '2023-03-10', '22:08', 'http://www.tampubolon.biz.id/illo-sed-adipisci-exercitationem-explicabo-ut-dolor-tempore-magni.html', 'Nasional', 'Cumque voluptate voluptatem illum at omnis non. A quibusdam ad facere alias. Nisi voluptate dolorem quia nobis quisquam voluptatum necessitatibus provident.', 'Kutch, Von and Connelly', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(12, 'Illum laborum qui nihil.', 'https://picsum.photos/id/74/640', '2023-01-20', '22:41', 'http://www.melani.ac.id/consequuntur-consequatur-doloremque-ratione-rerum-quidem-praesentium', 'Regional', 'Ab libero excepturi sit in occaecati fugiat. Ipsa sapiente est dicta aliquid esse ratione debitis. Ea natus laboriosam temporibus qui deleniti maxime.', 'McCullough, Senger and Hermiston', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(13, 'Dolore officiis inventore sed.', 'https://picsum.photos/id/146/640', '2023-01-20', '08:38', 'http://www.nugroho.co/', 'Internasional', 'Illo quis dicta laborum eos ullam accusantium at qui. Ipsa ut dolore impedit sed aut non dignissimos. Distinctio labore id qui. Rerum dignissimos omnis nobis quidem non.', 'Mraz, Mraz and Walker', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(14, 'Inventore sint est.', 'https://picsum.photos/id/245/640', '2023-02-05', '14:06', 'http://www.prasetya.co/et-eligendi-ducimus-et-voluptate-et-ipsam', 'Regional', 'Porro vitae accusamus dolorem earum dolorum. Doloribus cupiditate qui a qui hic et sit. Commodi odit eveniet atque corrupti ea. Reiciendis sequi animi alias rem nulla aut.', 'Hagenes, Schoen and Mraz', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(15, 'Ad doloremque saepe.', 'https://picsum.photos/id/86/640', '2023-01-30', '06:54', 'http://www.marpaung.co.id/fuga-et-suscipit-blanditiis-dignissimos-repellat-impedit', 'Nasional', 'Quo sunt cum aut. Est labore qui nihil consequatur voluptas. Doloremque optio non voluptates id qui corrupti officiis beatae. Numquam repellendus facilis eum voluptatum voluptate.', 'Lueilwitz-Corwin', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(16, 'Sunt placeat iure.', 'https://picsum.photos/id/122/640', '2023-02-09', '20:48', 'http://prastuti.desa.id/ab-distinctio-quaerat-eum-at-libero-rerum', 'Nasional', 'Rerum et est sapiente vero veniam ipsam assumenda rerum. Aliquam amet consequatur quas fuga ullam id. Neque et nulla aliquid aliquam. Fugiat dolores adipisci nobis.', 'Berge, Durgan and Nitzsche', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(17, 'Sunt ut fugit.', 'https://picsum.photos/id/199/640', '2023-02-28', '17:37', 'https://agustina.in/et-vel-veniam-recusandae-omnis-tempore-amet.html', 'Internasional', 'Velit sint sit alias. Quasi labore enim quos ut harum illo ad. Ducimus ut officiis sunt enim dicta esse quo.', 'Willms-Hand', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(18, 'Facere eaque esse.', 'https://picsum.photos/id/64/640', '2023-03-18', '19:17', 'https://www.haryanti.sch.id/ducimus-quibusdam-minus-modi', 'Nasional', 'Ut voluptatem est possimus hic voluptas commodi. Quae quibusdam omnis unde odit maiores. Odit cupiditate dolor sit recusandae esse ipsum ut assumenda.', 'Rice, Schinner and Murphy', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(19, 'Assumenda quibusdam a dolore delectus.', 'https://picsum.photos/id/18/640', '2023-03-23', '10:34', 'https://www.waluyo.in/ullam-labore-quidem-voluptates-ab', 'Regional', 'Nobis eligendi excepturi est numquam libero. Optio praesentium numquam eum enim. Aut possimus sed quod velit rem. Et blanditiis voluptatem ea.', 'Stehr Ltd', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(20, 'Voluptatibus dicta aut ipsum quisquam.', 'https://picsum.photos/id/228/640', '2023-02-06', '19:33', 'http://mustofa.id/et-eveniet-magnam-dolorum-unde-expedita', 'Regional', 'Inventore voluptatum minus distinctio ad vitae dolor. Molestiae facilis quia quis omnis neque ea ab. Nemo nihil error atque suscipit.', 'Schaefer PLC', '2023-01-06 22:26:36', '2023-01-06 22:26:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `competition_recommendations`
--

CREATE TABLE `competition_recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `competition_recommendations`
--

INSERT INTO `competition_recommendations` (`id`, `tutor_id`, `orphanage_id`, `competition_id`, `created_at`, `updated_at`) VALUES
(1, 17, 12, 3, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(2, 7, 15, 10, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(3, 14, 8, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(4, 13, 17, 18, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(5, 17, 3, 11, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(6, 17, 16, 1, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(7, 2, 17, 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(8, 18, 14, 9, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(9, 3, 10, 10, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(10, 22, 2, 11, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(11, 15, 5, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(12, 7, 9, 4, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(13, 9, 5, 13, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(14, 19, 5, 13, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(15, 8, 19, 7, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(16, 26, 14, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(17, 27, 9, 19, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(18, 18, 10, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(19, 7, 8, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(20, 22, 18, 11, '2023-01-06 22:26:40', '2023-01-06 22:26:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_price` int(11) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT 0,
  `is_visit` int(11) NOT NULL DEFAULT 0,
  `maximum_member` int(11) NOT NULL DEFAULT 1,
  `tool_price` int(11) DEFAULT NULL,
  `tool_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `name`, `tutor_id`, `skill_id`, `description`, `hourly_price`, `is_online`, `is_visit`, `maximum_member`, `tool_price`, `tool_description`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Quo hic in pariatur.', 1, 5, 'Sit perspiciatis sequi ea veniam voluptatibus. Minus nam corporis pariatur ea nemo. Ut non repudiandae labore sint aut est. Nihil voluptas eaque maxime optio dolorum.', 140031, 0, 1, 19, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Gardujati No. 746, Banjarmasin 88121, Jateng', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(2, 'Aspernatur facilis facilis velit.', 1, 1, 'Quidem itaque itaque et maiores. Omnis recusandae sunt ut aperiam non culpa. Repudiandae ducimus odio eveniet nesciunt sint nulla fuga. Ut eum voluptatem ipsam eaque quae ipsa.', 113252, 1, 0, 17, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(3, 'Aliquid culpa vitae sunt.', 1, 1, 'Ad impedit ea iste ipsum nisi est. Unde animi dolores placeat nesciunt. Eum explicabo itaque totam fugit optio ea.', 92287, 1, 0, 19, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(4, 'Asperiores aut suscipit dolores adipisci.', 1, 5, 'Maiores quaerat sed molestias quis doloribus autem dicta. Error qui maxime alias et rerum omnis.', 108429, 1, 0, 4, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Cisco Webex', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(5, 'Aut sed sit ex.', 1, 2, 'Dolorem commodi qui autem adipisci laboriosam eligendi temporibus. Temporibus officia molestiae dicta. Aut aliquid sapiente perferendis aspernatur. Consequatur cum eligendi ut.', 86918, 1, 0, 12, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(6, 'Odio tenetur magnam necessitatibus.', 2, 5, 'Provident sunt nesciunt nulla nesciunt quia odio deleniti et. Et ipsum debitis in nisi earum et omnis. Aut ratione tenetur vitae sed mollitia est laboriosam. Recusandae quos dolores inventore qui.', 63232, 0, 0, 6, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Dr. Junjunan No. 251, Cilegon 65866, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(7, 'Quidem enim sed pariatur quidem sequi.', 2, 6, 'Incidunt quaerat eius et qui consequatur. Rerum est magnam nam ratione magnam praesentium reprehenderit. Ea porro aspernatur est fuga deserunt.', 63758, 1, 0, 7, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(8, 'Aliquam est expedita non vero libero sint.', 3, 5, 'Voluptatem odit placeat hic blanditiis. Et rerum enim provident vitae. Qui ullam omnis aut. Ducimus optio et autem sint numquam.', 104898, 1, 0, 19, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(9, 'Aut maxime ut itaque.', 3, 5, 'Ut dolorem aliquid voluptas aut. Omnis quam libero fugit aut omnis debitis pariatur. Reiciendis est eos eligendi eaque.', 84071, 0, 1, 13, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Jend. A. Yani No. 800, Sibolga 79536, Bali', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(10, 'Provident alias ullam est et.', 3, 3, 'Dolores quaerat possimus consequatur officiis iste ut. Cum tempora ipsum iure est nihil rerum. Nam maiores quis dolor rerum tempore. Cumque eaque ducimus temporibus et totam.', 131604, 0, 0, 17, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Bak Air No. 552, Banjarbaru 21261, NTT', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(11, 'Alias quo nostrum dolor quibusdam ut a.', 3, 1, 'Deleniti nisi perferendis eius est. Quia voluptatem alias nesciunt doloremque hic ad harum. Perferendis reiciendis qui at nostrum quo.', 90824, 0, 1, 15, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Setia Budi No. 510, Palu 48779, Sulsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(12, 'Incidunt enim non sit rem.', 3, 4, 'Suscipit deserunt hic officiis cum at sequi molestiae. Voluptatum et nulla sit dignissimos omnis. Veniam quo est id enim velit ratione aliquam dolores. Quis doloribus velit amet.', 97836, 1, 0, 18, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'GoToMeeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(13, 'Repellendus molestias voluptates aliquid cupiditate non.', 4, 6, 'Sapiente sed recusandae numquam voluptas ab tenetur voluptate. Consequatur reiciendis in eligendi ut atque ea et. Ab minima voluptas alias atque asperiores. Magni beatae quae non ipsa.', 102455, 1, 0, 12, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(14, 'Quis velit blanditiis dolorum.', 4, 1, 'Fugiat eligendi culpa illo sit. Eum dignissimos blanditiis non et qui. Nobis nostrum vel fugit facilis.', 108199, 1, 0, 8, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(15, 'Deleniti vel repellendus voluptas alias natus.', 4, 3, 'Optio et eos sapiente doloribus laudantium tempore qui nobis. Repellat nostrum ea cupiditate aut occaecati et ut. Est exercitationem accusantium qui et. Labore deleniti non autem fuga.', 135328, 1, 0, 4, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(16, 'Porro aperiam eveniet quia qui.', 4, 5, 'Veniam consequuntur doloribus corrupti quis voluptates necessitatibus culpa. Repellat aut quam sequi alias voluptatem rerum. Molestiae saepe rerum dolor.', 115299, 0, 0, 6, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Bayam No. 768, Banjarmasin 18682, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(17, 'Quia quisquam totam necessitatibus occaecati tenetur.', 4, 1, 'Eligendi blanditiis consequuntur velit inventore quia. Earum adipisci est et deleniti qui eum at. Voluptas et ut suscipit voluptate. Quaerat beatae ad nobis.', 61338, 0, 0, 12, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Muwardi No. 533, Bukittinggi 91347, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(18, 'Aut dolorem soluta iste.', 5, 2, 'Dicta illo quos atque. Dolores totam voluptas repellendus aliquid rerum ut. Nisi commodi sed consequatur minus aut voluptates est pariatur. Dolores voluptas quis dolore harum voluptas sit.', 58235, 0, 0, 9, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Panjaitan No. 600, Tegal 10518, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(19, 'Veniam excepturi totam ut.', 5, 6, 'Pariatur facilis ut nobis eveniet repellendus commodi ut. Nam autem dolorem voluptatem. Vel ipsa nemo quas et voluptatum a sunt odio. Molestiae sed eos nihil aut sunt libero sed.', 97058, 0, 0, 9, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Bakti No. 426, Balikpapan 71113, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(20, 'Ipsum autem quia molestias et exercitationem et.', 5, 6, 'Ipsum ea quo aut fuga et est. Ipsum eum similique quo esse sequi. Voluptas nihil sed distinctio ea sit quis nihil temporibus. Alias sint neque optio blanditiis voluptatem facilis.', 119448, 0, 1, 5, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Kartini No. 280, Jayapura 33603, Kaltim', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(21, 'Fuga cum adipisci ad omnis.', 5, 5, 'Ea ut est odio alias accusamus officiis atque. Sint voluptatibus iusto quia quo est. Et quia cum laboriosam quas aliquid magni.', 79151, 0, 1, 20, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Perintis Kemerdekaan No. 176, Serang 13400, Jatim', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(22, 'Corporis tempora nostrum qui laudantium.', 6, 2, 'Amet iusto molestias consequatur numquam. Vero eos et modi asperiores illo. Nihil qui sed vel ipsa magni qui veniam. Corporis natus velit adipisci delectus quas sit quas.', 122933, 1, 0, 8, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'GoToMeeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(23, 'Placeat aut error et laborum laudantium.', 6, 4, 'Eos deserunt et praesentium non nostrum officiis. Omnis numquam atque ullam itaque quia explicabo quia expedita.', 146723, 1, 0, 7, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(24, 'Quas dolores fugiat eveniet omnis quos ea.', 6, 1, 'Iusto vel quia quo possimus fugiat quo vitae. Dolorum asperiores illum perferendis incidunt rerum ipsam. Quo dicta est omnis et.', 134595, 0, 0, 20, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Kebangkitan Nasional No. 609, Pariaman 84968, Kaltara', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(25, 'Labore rerum quisquam aliquid pariatur.', 7, 2, 'Non sint non iusto quia sunt voluptatem tempore aut. Sit dolores officiis et et. Eum sapiente libero porro officiis aut qui.', 111018, 0, 1, 10, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Dago No. 432, Binjai 99578, Pabar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(26, 'Animi saepe sed incidunt deserunt eaque.', 7, 6, 'Non dolorem rem vitae consequatur earum magni placeat. Eos eum sit itaque tempore officiis qui exercitationem.', 100343, 1, 0, 13, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'GoToMeeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(27, 'Sapiente aliquam non laudantium.', 7, 3, 'Vero magni sit quas in. Eaque quia dolorem quidem eos placeat placeat exercitationem dolorum. Fugiat ut non eaque at magnam. Neque sit dolor sed ut.', 75570, 0, 0, 7, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Baya Kali Bungur No. 572, Banjarbaru 71127, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(28, 'Adipisci iste mollitia blanditiis sapiente necessitatibus.', 7, 4, 'Consectetur omnis fuga et et voluptatem velit totam. Asperiores velit est sint accusamus autem. Id necessitatibus nesciunt consequatur dolore natus.', 85308, 1, 0, 3, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(29, 'Earum voluptatum temporibus aut eos recusandae aut quis.', 7, 6, 'Et consequuntur est officiis adipisci sint quo dolores. Qui aut est doloremque. Sunt sunt voluptatem qui reiciendis.', 125409, 1, 0, 14, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(30, 'Consectetur architecto nostrum laudantium sint voluptates.', 8, 3, 'Voluptatem earum numquam corporis sit rerum ipsa officia. Rerum dignissimos iste laboriosam odit blanditiis velit eum soluta. Enim maiores id aliquid asperiores cupiditate.', 105390, 1, 0, 10, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(31, 'Dolores ea aut rerum modi eum.', 8, 4, 'Quibusdam tempore aut est. Quia soluta consequatur quos sit. Sit fuga quisquam laudantium debitis non quia illo. In temporibus ipsam accusamus dolore sunt autem ut.', 130499, 0, 1, 11, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Abdul No. 124, Cilegon 95353, Pabar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(32, 'Ab odit inventore necessitatibus qui.', 8, 5, 'Fugiat mollitia id nihil ut. Occaecati sapiente in quia aut exercitationem.', 63496, 0, 0, 4, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Uluwatu No. 13, Payakumbuh 59887, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(33, 'Dolores sed consequatur praesentium praesentium minima in.', 8, 3, 'Quis voluptas vitae nulla qui. Et autem ut error maiores. Quod itaque ipsa ad officia. Cumque sapiente quo dolorum ut quibusdam eos iste est.', 77369, 1, 0, 5, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(34, 'Blanditiis totam vel magnam eaque minima.', 9, 6, 'Vitae voluptatem hic est et. Nobis commodi est maxime est. Modi eos sit sit consequatur sapiente eum commodi eos.', 109870, 0, 1, 12, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Casablanca No. 184, Bandar Lampung 82564, Gorontalo', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(35, 'Cumque dolor sequi qui.', 9, 4, 'Veritatis earum excepturi quas et. Et ut quis et dolor quam accusamus. Sit in eum error voluptatum molestiae. Et minus ab qui repudiandae corrupti.', 91063, 0, 1, 11, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Supomo No. 634, Bengkulu 26441, Maluku', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(36, 'Pariatur deserunt soluta blanditiis qui error.', 10, 6, 'Et odio fugit et molestiae. Autem ex ea ex voluptas modi. Aliquid eos aperiam sed perferendis et doloribus nihil. Eius non quis adipisci odit sint non reiciendis.', 53190, 0, 0, 5, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Kalimantan No. 446, Blitar 34498, Sulbar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(37, 'Expedita id ea provident libero.', 10, 3, 'In ut cum ut velit. Velit qui accusantium molestias est. Aut laboriosam impedit quaerat similique aut voluptate reiciendis.', 127193, 0, 1, 14, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Rajiman No. 150, Bengkulu 17385, Kalsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(38, 'Quo voluptatem et ab et et deserunt.', 11, 4, 'Nulla aut culpa dicta eligendi sed quia dolor placeat. Repudiandae vitae iste qui perspiciatis vel. Est iste iusto aut qui magni non quos.', 144251, 1, 0, 5, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(39, 'Praesentium exercitationem est voluptas quo facilis aspernatur.', 12, 5, 'Voluptatem minima ea in voluptatem quia. Laborum maiores repellat qui veniam itaque quasi. Excepturi doloribus dolores accusamus qui. Facere sit sunt architecto veritatis.', 91443, 1, 0, 17, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Discord', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(40, 'Quod qui quis dignissimos.', 12, 1, 'Nam autem amet non sit ut. Tempora repellendus suscipit sed. Et aut corporis expedita.', 123102, 0, 1, 4, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Abdul Rahmat No. 545, Administrasi Jakarta Utara 70018, Sulbar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(41, 'Consequatur incidunt illo sed.', 12, 1, 'Molestiae nobis necessitatibus eveniet optio ipsam. Ut porro quod qui voluptatem cumque doloribus vel.', 106665, 0, 0, 11, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Bhayangkara No. 414, Solok 43347, Kalbar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(42, 'Esse porro ipsa enim.', 13, 5, 'Labore sint sunt iusto et. Provident et delectus dicta. Unde doloribus praesentium molestias temporibus ab eum et. Autem velit animi magni quidem in mollitia.', 118563, 0, 0, 15, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Casablanca No. 773, Malang 57027, Jambi', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(43, 'Aperiam beatae dolorem neque voluptas.', 14, 4, 'Quos sint nostrum quisquam. Quia quia illo rerum incidunt. Sequi cumque eum vero quae.', 61749, 0, 0, 18, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Bazuka Raya No. 235, Pariaman 41057, Gorontalo', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(44, 'Occaecati nihil laboriosam exercitationem.', 14, 5, 'Quidem est itaque ut enim. Fuga sunt illo cumque quae nisi. Voluptas sapiente et minus reprehenderit et qui fugiat expedita. Quo et atque sapiente dolorem debitis tenetur.', 88784, 0, 1, 11, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Cihampelas No. 113, Lhokseumawe 73388, Sumsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(45, 'Amet voluptatem vitae aut doloribus pariatur sit.', 14, 6, 'Eligendi illum voluptatem tempore. Dolorem reiciendis necessitatibus harum illum sed ab praesentium.', 107908, 0, 0, 8, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Cikapayang No. 604, Salatiga 57928, Kaltara', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(46, 'Cumque saepe neque temporibus repellendus.', 15, 5, 'Itaque illo explicabo nam et occaecati labore voluptatibus. Corrupti quod voluptatem in eius deserunt provident. Corrupti aut sed placeat aut cum et.', 124555, 0, 0, 8, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Jambu No. 693, Tual 28757, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(47, 'Officiis neque voluptas tempore exercitationem quibusdam.', 15, 1, 'Libero consequatur et esse incidunt. Veniam rerum eos et quam. Doloribus eos magni odit minima nihil.', 128012, 1, 0, 4, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(48, 'Repellendus quia culpa dignissimos ut maxime vitae.', 15, 4, 'Ut a officia minima nesciunt sit sit ut. Molestiae sit nihil aliquid nostrum molestiae aut velit. Placeat fuga reprehenderit amet quia qui ratione. Perspiciatis ut nobis porro tempore porro est.', 148123, 0, 1, 11, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Bakhita No. 713, Bengkulu 17186, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(49, 'Aspernatur doloremque est autem.', 15, 5, 'Dolorem ea placeat sed magnam occaecati ab ab. Laborum tempore laboriosam ducimus possimus cupiditate sed eum consequuntur. Nostrum soluta ducimus rem dolore ipsum reiciendis.', 64897, 0, 1, 15, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Yosodipuro No. 519, Lhokseumawe 34028, Kepri', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(50, 'Pariatur expedita quaerat sint eos.', 15, 6, 'Et pariatur tempora suscipit sit ut recusandae. Corporis aliquam aut voluptates dolores ullam deleniti molestiae. Ab corrupti asperiores in voluptatibus maxime et et nesciunt.', 64749, 0, 1, 11, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Banceng Pondok No. 367, Sukabumi 69897, Papua', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(51, 'Sint expedita voluptates enim.', 16, 2, 'Dolor ad et eligendi. Optio occaecati nesciunt excepturi. Eum quia incidunt illo qui. Qui dignissimos nihil minus et dolore iusto.', 81324, 0, 1, 13, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Sam Ratulangi No. 829, Palangka Raya 11161, Gorontalo', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(52, 'Autem sed quaerat earum vitae.', 16, 2, 'Veniam asperiores animi saepe commodi est. Labore nihil est qui numquam odio molestiae. Laboriosam reiciendis molestias ut inventore.', 95572, 1, 0, 13, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(53, 'Amet exercitationem voluptas occaecati libero reprehenderit.', 16, 5, 'Perspiciatis modi velit dolore ducimus unde excepturi quo. Eaque ea repellendus ea inventore perferendis aut cupiditate. Sunt quia aut veritatis dolorum.', 116941, 1, 0, 11, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(54, 'Molestiae qui praesentium omnis.', 17, 2, 'Et numquam tenetur porro possimus placeat possimus. Sit adipisci illo aut molestias. Rerum error id facere delectus pariatur. Quam sapiente ipsam quisquam aut nemo maiores.', 94734, 0, 0, 6, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. R.M. Said No. 770, Magelang 15246, DIY', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(55, 'Ab quasi iste eius consequatur magnam sapiente.', 17, 4, 'Voluptatum doloremque eum iusto id unde in est labore. Quidem rerum incidunt non. Impedit odio provident et mollitia et sed sed occaecati.', 131494, 1, 0, 4, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(56, 'Voluptatum error non dolore qui quo sunt.', 18, 6, 'Non consequatur maiores ad aut porro ut et. Assumenda eum libero dolore illo.', 100743, 0, 0, 19, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Padang No. 636, Banda Aceh 97061, DKI', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(57, 'Quae quisquam aspernatur repellendus non.', 18, 6, 'Eos architecto tempore maiores voluptatem nam eum. Impedit eum ipsa debitis repellat consequuntur quis beatae. Iste tempore voluptate ipsa consequuntur pariatur rerum qui ea.', 130318, 1, 0, 10, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(58, 'Et eum architecto et.', 18, 4, 'Et inventore cupiditate sed cupiditate et. Debitis aut sapiente veniam eos. Rerum nemo in dicta veritatis qui ut voluptatem doloremque. Expedita dicta quisquam dolore dolore quo illo.', 124482, 1, 0, 16, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(59, 'Natus nihil voluptatem vel est.', 19, 2, 'Ad corrupti esse cupiditate sint in ipsum. Excepturi aut sunt enim sint suscipit. Id quis consequatur quas officia sequi culpa.', 67919, 1, 0, 19, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(60, 'Ut sint vero qui.', 19, 5, 'Accusamus est eos odit. Est molestiae dolorem rerum vero non impedit ratione repudiandae. Rem quos aut voluptas qui error maiores qui.', 132516, 0, 1, 13, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Padma No. 969, Semarang 14098, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(61, 'Eos quod totam ullam.', 19, 6, 'Quis beatae et omnis doloremque fugiat. Accusantium ea cum rerum. Facilis similique veniam et voluptas dolores officiis mollitia rerum. Nisi maxime ratione eius consequatur.', 143794, 0, 0, 12, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Yohanes No. 760, Banjarbaru 88144, Papua', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(62, 'Voluptatem aut est fugit atque quae.', 19, 3, 'Sit quis sequi occaecati soluta neque minus sunt doloremque. Autem natus quae deserunt perspiciatis.', 51813, 0, 1, 3, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Cemara No. 547, Pagar Alam 41874, Babel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(63, 'Velit architecto pariatur autem.', 20, 3, 'Sit in cupiditate est placeat id. Voluptas veniam laudantium similique natus qui. Et in perspiciatis et temporibus vitae.', 57433, 1, 0, 20, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Discord', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(64, 'Ut tempora aspernatur possimus consectetur esse quibusdam.', 21, 5, 'Nemo molestiae harum asperiores in harum. Consequatur earum voluptas accusamus nobis aliquam aut aut nemo. Deleniti at quasi aut repellat numquam pariatur.', 142001, 0, 0, 5, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Dewi Sartika No. 600, Padangpanjang 21599, DKI', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(65, 'Suscipit voluptatem beatae nihil.', 21, 5, 'Ipsam beatae ullam laudantium. Autem quaerat ipsam qui enim molestiae. Rerum qui enim libero.', 60195, 0, 0, 12, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Baranang No. 554, Cirebon 54456, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(66, 'Assumenda qui natus ab.', 21, 5, 'Quaerat libero nobis in iure voluptas eum ratione. Eveniet minus cupiditate aut et dicta. Sapiente vel laudantium corporis.', 50214, 1, 0, 20, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(67, 'Maiores hic totam voluptatem animi voluptatibus.', 21, 2, 'Consequatur accusantium nam doloremque ad. Ab sit aut rerum enim voluptas facere. Repellendus necessitatibus dolore est optio fugit sed numquam. Et error fugiat pariatur amet nesciunt possimus quos.', 145029, 1, 0, 12, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Cisco Webex', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(68, 'Vitae excepturi qui consectetur rerum distinctio.', 22, 5, 'Dolores molestiae eveniet suscipit adipisci earum perferendis labore. Ducimus voluptatem voluptas commodi rerum. Sunt alias magnam totam.', 101276, 1, 0, 8, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(69, 'Reprehenderit nihil eveniet qui quis iure fuga.', 22, 3, 'Dolor quasi ea accusamus incidunt earum. Molestias similique voluptas expedita consequuntur. Molestias quam vitae deserunt et et.', 57077, 0, 1, 6, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Raya Ujungberung No. 35, Mataram 85173, Kaltim', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(70, 'Dolores impedit alias accusantium voluptatum.', 22, 1, 'Quisquam numquam similique sit recusandae. Quia nobis delectus ut dicta accusantium quo dolores. Non quibusdam inventore error qui.', 134511, 1, 0, 7, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Discord', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(71, 'Aut saepe ad omnis.', 22, 1, 'Atque repellendus perspiciatis enim tempore. Dignissimos minima eaque blanditiis quo. Ratione eos illo provident magnam. Sequi aliquam cumque rerum perspiciatis sunt quas.', 99093, 1, 0, 7, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(72, 'Dolorem aliquam ipsum delectus sapiente.', 23, 4, 'Rerum possimus inventore nesciunt eveniet consequatur. Ea molestiae ut officia molestiae. Non et ea necessitatibus cupiditate et quos eum. Alias repellat consequatur qui maxime sequi beatae.', 80860, 1, 0, 3, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(73, 'Expedita nobis quae architecto voluptatum provident similique.', 23, 5, 'Totam vitae id et distinctio. Quisquam nesciunt vitae repudiandae quia. Minus eveniet quia quis sed. Quia dolor quia aliquid distinctio ipsam temporibus.', 56573, 0, 1, 6, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Pacuan Kuda No. 126, Sawahlunto 24634, Sulbar', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(74, 'Itaque officiis perspiciatis tempora.', 23, 5, 'Sit quidem dolores molestiae sit at. Voluptate enim sit laudantium et cupiditate sunt. Aut nemo laudantium commodi voluptas. Cum explicabo excepturi voluptatem ex optio.', 50346, 0, 1, 11, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Baabur Royan No. 24, Cilegon 17221, Kalsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(75, 'Molestias dolor dolor quas amet praesentium.', 23, 6, 'Vero veniam perferendis quia et. Officiis sint sunt sequi nulla beatae. Nam ducimus cum quam error ut.', 62417, 1, 0, 20, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(76, 'Aut ut non voluptatum et rerum.', 23, 1, 'Soluta est totam et est. Iste rerum officia esse deleniti. Perferendis repellat voluptatem veniam. Eveniet maxime aliquid animi culpa. Repellat id ducimus velit ut voluptatem quas est et.', 133684, 0, 0, 19, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Jambu No. 646, Ambon 90889, Jateng', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(77, 'Et totam blanditiis repellendus.', 24, 5, 'Assumenda qui ex quis distinctio qui dolorem. Et magnam harum facere impedit repudiandae perspiciatis dolores. Consectetur aut sit quae. Culpa est quia nostrum aut consequatur.', 133038, 1, 0, 16, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(78, 'Est dolor enim nam et id.', 24, 5, 'Et qui accusantium doloribus sunt iste expedita iusto. Totam animi culpa et. Aut est atque est soluta. Reprehenderit quaerat sit qui id quis quia sit.', 57473, 1, 0, 4, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(79, 'Architecto tenetur et totam sit et doloremque.', 24, 4, 'Debitis magnam incidunt commodi saepe mollitia assumenda placeat beatae. Repellat suscipit quas voluptatem qui. Omnis suscipit adipisci aliquam nihil sequi quibusdam ex.', 110654, 0, 1, 11, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Batako No. 181, Administrasi Jakarta Selatan 71371, Banten', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(80, 'Ea at voluptatibus magni magnam autem.', 25, 1, 'Dolorem consectetur ut eum sunt optio. Aliquid placeat debitis eum magnam facere aliquam consectetur. Nihil in quo quia tempore et fugit pariatur.', 78602, 0, 0, 12, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Sunaryo No. 43, Pagar Alam 20048, Bali', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(81, 'Aut non et nemo voluptatem maiores omnis.', 25, 6, 'Non non fuga voluptate animi deserunt unde ipsum. Sed corrupti et voluptatem ducimus maiores placeat. Omnis ad ratione sit nihil provident ea. Impedit sequi quod provident qui.', 101007, 1, 0, 19, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(82, 'Voluptatem aut labore explicabo illum.', 25, 4, 'Deserunt et omnis ut eum modi earum. Delectus labore qui ea tempore deserunt nobis. Veniam dicta ut voluptate beatae rerum rem error. Ut molestiae sed ratione.', 80981, 0, 0, 10, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Ujung No. 708, Pekalongan 33208, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(83, 'Consectetur dolor nesciunt nam sunt.', 26, 1, 'Quos pariatur rerum molestiae quas dolore. Illo omnis rerum alias quia architecto. Consequatur aut eligendi reiciendis quo ea iure eius. Error soluta sequi quia impedit architecto.', 105697, 0, 1, 14, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Babakan No. 740, Bitung 94275, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(84, 'Atque perferendis ea cumque voluptates.', 27, 2, 'Voluptas itaque maiores enim quam. Ipsam facilis iusto laudantium aspernatur. Dolor nihil qui quia eaque dolor est. Quos error et odit et.', 65492, 0, 0, 15, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ki. Baing No. 248, Ambon 39872, Kalsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(85, 'Aliquam cupiditate ea repellat ullam ipsam culpa.', 27, 6, 'Inventore at et ratione dignissimos velit qui quisquam. Fugiat rerum tenetur quibusdam accusantium quasi officiis provident. Ipsum est in illo eligendi assumenda.', 82142, 1, 0, 5, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(86, 'Porro dolorum ullam sint voluptas distinctio.', 28, 3, 'Eaque praesentium cum aliquam. Velit consequatur eligendi et fugit qui dolorem odit. Deserunt veritatis vitae expedita quia dolor libero omnis.', 65198, 1, 0, 13, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(87, 'Quas optio molestiae modi quaerat harum illo.', 28, 1, 'Consequatur dicta non ullam. Quos et quaerat est mollitia et. Neque ut mollitia aut ut suscipit veritatis consequuntur. Eum itaque eum inventore ut.', 134383, 1, 0, 3, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Cisco Webex', '2023-01-06 22:26:36', '2023-01-06 22:26:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_bookings`
--

CREATE TABLE `course_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `hour_count` int(11) NOT NULL,
  `is_visit` int(11) DEFAULT NULL,
  `status` enum('pending','ongoing','complete','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_bookings`
--

INSERT INTO `course_bookings` (`id`, `course_id`, `transaction_id`, `orphanage_id`, `hour_count`, `is_visit`, `status`, `location`, `created_at`, `updated_at`) VALUES
(1, 46, 1, 1, 27, 0, 'complete', 'Ki. Jambu No. 693, Tual 28757, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(2, 35, 2, 2, 22, 1, 'complete', 'Psr. Kalimalang No. 469, Bontang 27272, NTT', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(3, 80, 3, 3, 23, 0, 'canceled', 'Ki. Sunaryo No. 43, Pagar Alam 20048, Bali', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(4, 58, 4, 3, 13, 0, 'complete', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(5, 21, 5, 4, 30, 1, 'ongoing', 'Dk. Ikan No. 632, Cilegon 25404, Sumsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(6, 44, 6, 4, 14, 1, 'pending', 'Dk. Ikan No. 632, Cilegon 25404, Sumsel', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(7, 87, 7, 5, 17, 0, 'canceled', 'Cisco Webex', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(8, 85, 8, 5, 28, 0, 'complete', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(9, 78, 9, 5, 19, 0, 'ongoing', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(10, 71, 10, 5, 28, 0, 'ongoing', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(11, 32, 11, 6, 1, 0, 'canceled', 'Psr. Uluwatu No. 13, Payakumbuh 59887, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(12, 42, 12, 6, 15, 0, 'complete', 'Gg. Casablanca No. 773, Malang 57027, Jambi', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(13, 80, 13, 6, 21, 0, 'pending', 'Ki. Sunaryo No. 43, Pagar Alam 20048, Bali', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(14, 73, 14, 6, 15, 1, 'canceled', 'Psr. Cemara No. 910, Tanjungbalai 82594, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(15, 35, 15, 6, 27, 1, 'canceled', 'Psr. Cemara No. 910, Tanjungbalai 82594, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(16, 64, 16, 7, 22, 0, 'pending', 'Jln. Dewi Sartika No. 600, Padangpanjang 21599, DKI', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(17, 21, 17, 7, 15, 1, 'canceled', 'Gg. Uluwatu No. 800, Salatiga 11135, Sumsel', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(18, 56, 18, 7, 17, 0, 'canceled', 'Gg. Padang No. 636, Banda Aceh 97061, DKI', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(19, 24, 19, 7, 23, 0, 'ongoing', 'Ki. Kebangkitan Nasional No. 609, Pariaman 84968, Kaltara', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(20, 9, 20, 8, 27, 0, 'complete', '549 Claudie Islands Suite 411\nNorth Leann, NH 77641-8249', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(21, 25, 21, 9, 24, 0, 'pending', '33190 Olin Corners\nReichertstad, PA 22803', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(22, 40, 22, 9, 14, 0, 'ongoing', '512 Boyle Court Suite 856\nCamylleport, TX 71519', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(23, 71, 23, 9, 18, 0, 'canceled', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(24, 18, 24, 9, 27, 0, 'ongoing', 'Jln. Panjaitan No. 600, Tegal 10518, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(25, 71, 25, 9, 29, 0, 'ongoing', 'Adobe Connect Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(26, 17, 26, 10, 16, 0, 'complete', 'Jln. Muwardi No. 533, Bukittinggi 91347, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(27, 38, 27, 10, 5, 0, 'canceled', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(28, 8, 28, 10, 4, 0, 'complete', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(29, 24, 29, 10, 5, 0, 'ongoing', 'Ki. Kebangkitan Nasional No. 609, Pariaman 84968, Kaltara', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(30, 28, 30, 10, 23, 0, 'canceled', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(31, 51, 31, 11, 4, 1, 'canceled', 'Psr. Baja Raya No. 72, Jambi 98406, Sulut', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(32, 16, 32, 12, 14, 0, 'pending', 'Kpg. Bayam No. 768, Banjarmasin 18682, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(33, 30, 33, 12, 13, 0, 'pending', 'Google Meet', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(34, 12, 34, 13, 6, 0, 'pending', 'GoToMeeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(35, 85, 35, 13, 23, 0, 'pending', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(36, 60, 36, 13, 23, 0, 'complete', '94132 Bernhard Turnpike Suite 017\nPort Aureliaton, TN 80057', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(37, 64, 37, 13, 19, 0, 'pending', 'Jln. Dewi Sartika No. 600, Padangpanjang 21599, DKI', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(38, 39, 38, 14, 8, 0, 'canceled', 'Discord', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(39, 9, 39, 14, 23, 0, 'complete', '22671 Penelope Parks Apt. 344\nKesslerberg, ME 67160-0698', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(40, 81, 40, 14, 15, 0, 'complete', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(41, 58, 41, 14, 7, 0, 'complete', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(42, 59, 42, 14, 7, 0, 'complete', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(43, 32, 43, 15, 7, 0, 'pending', 'Psr. Uluwatu No. 13, Payakumbuh 59887, NTB', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(44, 8, 44, 15, 18, 0, 'complete', 'Any Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(45, 19, 45, 16, 4, 0, 'canceled', 'Ki. Bakti No. 426, Balikpapan 71113, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(46, 15, 46, 16, 14, 0, 'canceled', 'Lifesize', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(47, 3, 47, 16, 27, 0, 'ongoing', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(48, 16, 48, 16, 7, 0, 'ongoing', 'Kpg. Bayam No. 768, Banjarmasin 18682, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(49, 6, 49, 16, 6, 0, 'ongoing', 'Ds. Dr. Junjunan No. 251, Cilegon 65866, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(50, 80, 50, 17, 19, 0, 'complete', 'Ki. Sunaryo No. 43, Pagar Alam 20048, Bali', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(51, 24, 51, 17, 6, 0, 'canceled', 'Ki. Kebangkitan Nasional No. 609, Pariaman 84968, Kaltara', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(52, 19, 52, 17, 4, 0, 'canceled', 'Ki. Bakti No. 426, Balikpapan 71113, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(53, 36, 53, 17, 7, 0, 'complete', 'Dk. Kalimantan No. 446, Blitar 34498, Sulbar', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(54, 17, 54, 17, 30, 0, 'complete', 'Jln. Muwardi No. 533, Bukittinggi 91347, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(55, 1, 55, 18, 14, 0, 'complete', '23591 Nikolaus Turnpike Suite 348\nPouroston, AR 94621-9080', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(56, 55, 56, 18, 30, 0, 'complete', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(57, 53, 57, 19, 27, 0, 'complete', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(58, 57, 58, 19, 26, 0, 'pending', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(59, 6, 59, 20, 22, 0, 'ongoing', 'Ds. Dr. Junjunan No. 251, Cilegon 65866, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(60, 59, 60, 20, 5, 0, 'complete', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(61, 58, 61, 20, 18, 0, 'pending', 'Zoho Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(62, 28, 62, 20, 20, 0, 'complete', 'Zoom Meeting', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(63, 65, 63, 20, 5, 0, 'ongoing', 'Psr. Baranang No. 554, Cirebon 54456, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(64, 82, 64, 21, 20, 0, 'complete', 'Jln. Ujung No. 708, Pekalongan 33208, Sultra', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(65, 23, 65, 21, 16, 0, 'ongoing', 'RingCentral Meetings', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(66, 19, 66, 21, 5, 0, 'ongoing', 'Ki. Bakti No. 426, Balikpapan 71113, Kalteng', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(67, 68, 67, 21, 8, 0, 'pending', 'Microsoft Teams', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(68, 18, 68, 22, 25, 0, 'pending', 'Jln. Panjaitan No. 600, Tegal 10518, Lampung', '2023-01-06 22:26:36', '2023-01-06 22:26:37'),
(69, 84, 69, 22, 16, 0, 'pending', 'Ki. Baing No. 248, Ambon 39872, Kalsel', '2023-01-06 22:26:36', '2023-01-06 22:26:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_booking_day_time_ranges`
--

CREATE TABLE `course_booking_day_time_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_booking_id` bigint(20) UNSIGNED NOT NULL,
  `day_time_range_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_booking_day_time_ranges`
--

INSERT INTO `course_booking_day_time_ranges` (`id`, `course_booking_id`, `day_time_range_id`, `created_at`, `updated_at`) VALUES
(1, 1, 29, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(2, 2, 46, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(3, 2, 27, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(4, 3, 13, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(5, 3, 52, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(6, 3, 37, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(7, 4, 60, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(8, 4, 7, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(9, 4, 21, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(10, 5, 41, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(11, 5, 7, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(12, 5, 22, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(13, 6, 19, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(14, 6, 33, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(15, 6, 42, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(16, 7, 59, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(17, 8, 3, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(18, 8, 44, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(19, 9, 1, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(20, 10, 8, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(21, 11, 33, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(22, 11, 66, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(23, 12, 62, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(24, 12, 62, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(25, 13, 45, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(26, 13, 69, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(27, 14, 36, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(28, 14, 53, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(29, 14, 56, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(30, 15, 8, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(31, 16, 7, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(32, 16, 14, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(33, 16, 21, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(34, 17, 34, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(35, 18, 25, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(36, 18, 29, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(37, 19, 18, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(38, 20, 35, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(39, 21, 21, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(40, 21, 50, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(41, 22, 16, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(42, 23, 54, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(43, 24, 27, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(44, 24, 35, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(45, 24, 31, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(46, 25, 42, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(47, 25, 20, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(48, 26, 32, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(49, 26, 59, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(50, 27, 41, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(51, 27, 40, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(52, 27, 49, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(53, 28, 3, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(54, 29, 2, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(55, 29, 29, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(56, 29, 64, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(57, 30, 61, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(58, 30, 19, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(59, 30, 43, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(60, 31, 51, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(61, 31, 69, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(62, 32, 65, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(63, 33, 70, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(64, 34, 54, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(65, 34, 38, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(66, 34, 26, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(67, 35, 48, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(68, 35, 1, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(69, 36, 70, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(70, 36, 51, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(71, 37, 69, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(72, 37, 21, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(73, 37, 70, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(74, 38, 22, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(75, 38, 35, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(76, 39, 5, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(77, 40, 27, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(78, 40, 34, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(79, 41, 23, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(80, 41, 57, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(81, 42, 66, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(82, 43, 12, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(83, 43, 20, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(84, 43, 31, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(85, 44, 47, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(86, 44, 47, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(87, 45, 44, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(88, 46, 42, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(89, 46, 24, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(90, 47, 18, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(91, 48, 61, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(92, 49, 19, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(93, 50, 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(94, 51, 33, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(95, 51, 56, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(96, 52, 34, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(97, 53, 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(98, 53, 22, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(99, 54, 2, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(100, 55, 22, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(101, 56, 54, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(102, 56, 41, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(103, 57, 52, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(104, 58, 51, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(105, 59, 49, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(106, 60, 56, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(107, 60, 48, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(108, 61, 44, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(109, 61, 23, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(110, 62, 28, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(111, 63, 23, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(112, 64, 43, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(113, 65, 36, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(114, 65, 64, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(115, 66, 6, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(116, 66, 54, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(117, 67, 62, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(118, 67, 41, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(119, 67, 53, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(120, 68, 27, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(121, 69, 40, '2023-01-06 22:26:40', '2023-01-06 22:26:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `days`
--

INSERT INTO `days` (`id`, `created_at`, `updated_at`, `day`) VALUES
(1, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Senin'),
(2, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Selasa'),
(3, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Rabu'),
(4, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Kamis'),
(5, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Jumat'),
(6, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Sabtu'),
(7, '2023-01-06 22:26:33', '2023-01-06 22:26:33', 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `day_time_ranges`
--

CREATE TABLE `day_time_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `day_time_ranges`
--

INSERT INTO `day_time_ranges` (`id`, `day_id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 1, '19:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(2, 1, '11:30:00', '12:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(3, 1, '09:30:00', '10:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(4, 1, '21:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(5, 1, '10:30:00', '12:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(6, 1, '10:00:00', '12:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(7, 1, '10:30:00', '11:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(8, 1, '18:30:00', '23:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(9, 1, '16:00:00', '19:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(10, 1, '10:30:00', '12:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(11, 2, '20:00:00', '00:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(12, 2, '13:30:00', '16:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(13, 2, '11:00:00', '13:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(14, 2, '12:30:00', '15:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(15, 2, '10:00:00', '12:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(16, 2, '07:30:00', '11:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(17, 2, '14:00:00', '16:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(18, 2, '12:00:00', '16:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(19, 2, '18:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(20, 2, '16:30:00', '21:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(21, 3, '16:30:00', '17:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(22, 3, '11:30:00', '12:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(23, 3, '10:30:00', '15:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(24, 3, '17:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(25, 3, '18:00:00', '23:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(26, 3, '15:00:00', '20:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(27, 3, '17:30:00', '18:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(28, 3, '07:30:00', '08:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(29, 3, '12:00:00', '17:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(30, 3, '19:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(31, 4, '16:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(32, 4, '08:30:00', '12:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(33, 4, '18:30:00', '19:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(34, 4, '13:00:00', '17:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(35, 4, '12:30:00', '16:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(36, 4, '13:30:00', '15:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(37, 4, '12:30:00', '17:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(38, 4, '18:00:00', '19:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(39, 4, '08:30:00', '11:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(40, 4, '12:30:00', '15:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(41, 5, '15:30:00', '16:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(42, 5, '19:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(43, 5, '15:30:00', '19:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(44, 5, '12:30:00', '13:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(45, 5, '19:30:00', '00:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(46, 5, '20:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(47, 5, '16:00:00', '18:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(48, 5, '09:00:00', '13:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(49, 5, '20:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(50, 5, '21:00:00', '02:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(51, 6, '13:00:00', '17:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(52, 6, '18:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(53, 6, '18:30:00', '22:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(54, 6, '20:30:00', '21:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(55, 6, '09:00:00', '14:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(56, 6, '08:00:00', '10:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(57, 6, '20:30:00', '01:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(58, 6, '14:00:00', '17:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(59, 6, '12:00:00', '17:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(60, 6, '10:30:00', '11:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(61, 7, '20:00:00', '21:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(62, 7, '14:30:00', '19:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(63, 7, '11:30:00', '15:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(64, 7, '09:00:00', '13:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(65, 7, '11:30:00', '16:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(66, 7, '20:00:00', '01:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(67, 7, '21:00:00', '00:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(68, 7, '19:00:00', '23:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(69, 7, '18:00:00', '22:00:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(70, 7, '19:30:00', '23:30:00', '2023-01-06 22:26:33', '2023-01-06 22:26:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `donator_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `donations`
--

INSERT INTO `donations` (`id`, `orphanage_id`, `donator_name`, `amount`, `message`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 10, 'Argono Tampubolon', 106087, 'Semoga membantu ya!', 70, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(2, 8, 'Anonymous', 15567, 'Semoga membantu ya!', 71, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(3, 14, 'Anonymous', 125962, 'Semoga membantu ya!', 72, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(4, 5, 'Raisa Ami Suryatmi S.Pt', 220994, 'Semoga membantu ya!', 73, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(5, 16, 'Catur Cecep Haryanto S.E.', 298286, 'Semoga membantu ya!', 74, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(6, 19, 'Shakila Ami Hassanah', 118234, 'Semoga membantu ya!', 75, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(7, 3, 'Paramita Devi Oktaviani M.M.', 245126, 'Semoga membantu ya!', 76, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(8, 18, 'Balamantri Jati Simbolon', 19610, 'Semoga membantu ya!', 77, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(9, 5, 'Kartika Sudiati', 54398, 'Semoga membantu ya!', 78, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(10, 9, 'Karya Wibowo', 164131, 'Semoga membantu ya!', 79, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(11, 19, 'Anonymous', 75311, 'Semoga membantu ya!', 80, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(12, 13, 'Intan Hariyah', 12350, 'Semoga membantu ya!', 81, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(13, 11, 'Anonymous', 217246, 'Semoga membantu ya!', 82, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(14, 15, 'Sabrina Genta Puspita', 166549, 'Semoga membantu ya!', 83, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(15, 5, 'Atmaja Cagak Januar', 227418, 'Semoga membantu ya!', 84, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(16, 21, 'Anonymous', 34261, 'Semoga membantu ya!', 85, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(17, 4, 'Gabriella Ajeng Palastri M.Kom.', 198210, 'Semoga membantu ya!', 86, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(18, 10, 'Anonymous', 259926, 'Semoga membantu ya!', 87, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(19, 10, 'Anonymous', 145316, 'Semoga membantu ya!', 88, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(20, 16, 'Michelle Rahimah', 138285, 'Semoga membantu ya!', 89, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(21, 14, 'Anonymous', 113841, 'Semoga membantu ya!', 90, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(22, 3, 'Anonymous', 32835, 'Semoga membantu ya!', 91, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(23, 6, 'Anonymous', 215930, 'Semoga membantu ya!', 92, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(24, 6, 'Anonymous', 225239, 'Semoga membantu ya!', 93, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(25, 21, 'Lalita Lalita Hasanah', 264231, 'Semoga membantu ya!', 94, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(26, 2, 'Saka Putu Gunawan S.Psi', 14225, 'Semoga membantu ya!', 95, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(27, 12, 'Wani Hastuti', 129931, 'Semoga membantu ya!', 96, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(28, 12, 'Anonymous', 289971, 'Semoga membantu ya!', 97, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(29, 12, 'Anonymous', 245656, 'Semoga membantu ya!', 98, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(30, 19, 'Anonymous', 87860, 'Semoga membantu ya!', 99, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(31, 5, 'Salsabila Nabila Hartati M.Pd', 202835, 'Semoga membantu ya!', 100, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(32, 10, 'Anonymous', 151727, 'Semoga membantu ya!', 101, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(33, 8, 'Anonymous', 247726, 'Semoga membantu ya!', 102, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(34, 2, 'Anonymous', 295745, 'Semoga membantu ya!', 103, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(35, 12, 'Betania Prastuti M.Farm', 211331, 'Semoga membantu ya!', 104, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(36, 20, 'Jarwa Maulana M.Kom.', 169606, 'Semoga membantu ya!', 105, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(37, 22, 'Dwi Widodo', 111828, 'Semoga membantu ya!', 106, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(38, 12, 'Anastasia Nurdiyanti', 135813, 'Semoga membantu ya!', 107, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(39, 19, 'Ayu Winarsih', 91631, 'Semoga membantu ya!', 108, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(40, 17, 'Anonymous', 91981, 'Semoga membantu ya!', 109, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(41, 6, 'Jaka Ganjaran Salahudin', 30065, 'Semoga membantu ya!', 110, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(42, 5, 'Vicky Mulyani S.Sos', 255992, 'Semoga membantu ya!', 111, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(43, 20, 'Cinta Kuswandari S.H.', 253871, 'Semoga membantu ya!', 112, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(44, 22, 'Enteng Salman Utama S.Psi', 98803, 'Semoga membantu ya!', 113, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(45, 22, 'Najwa Sarah Yolanda S.E.I', 67743, 'Semoga membantu ya!', 114, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(46, 1, 'Anonymous', 56737, 'Semoga membantu ya!', 115, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(47, 11, 'Anonymous', 83943, 'Semoga membantu ya!', 116, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(48, 8, 'Anonymous', 291752, 'Semoga membantu ya!', 117, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(49, 22, 'Anonymous', 210389, 'Semoga membantu ya!', 118, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(50, 8, 'Anonymous', 278005, 'Semoga membantu ya!', 119, '2023-01-06 22:26:40', '2023-01-06 22:26:40');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_17_004644_create_days_table', 1),
(7, '2022_11_17_011026_create_skills_table', 1),
(8, '2022_11_17_044252_create_orphanages_table', 1),
(9, '2022_11_17_053133_create_transactions_table', 1),
(10, '2022_11_17_053352_create_tutors_table', 1),
(11, '2022_11_17_053547_create_donations_table', 1),
(12, '2022_11_17_061158_create_competitions_table', 1),
(13, '2022_11_17_061217_create_orphans_table', 1),
(14, '2022_11_17_061235_create_courses_table', 1),
(15, '2022_11_17_061246_create_course_bookings_table', 1),
(16, '2022_11_17_121429_create_orphan_course_bookings_table', 1),
(17, '2022_11_17_121944_create_day_time_ranges_table', 1),
(18, '2022_11_20_005237_create_tutor_day_time_ranges_table', 1),
(19, '2022_11_20_005527_create_course_booking_day_time_ranges_table', 1),
(20, '2022_11_28_065727_create_sessions_table', 1),
(21, '2022_12_04_094044_create_competition_recommendations_table', 1),
(22, '2022_12_04_114723_create_orphan_crs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orphanages`
--

CREATE TABLE `orphanages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_count` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orphanages`
--

INSERT INTO `orphanages` (`id`, `name`, `photo_url`, `description`, `member_count`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'CV Saefullah (Persero) Tbk', 'https://picsum.photos/id/377/640', 'Natus non molestias veniam sit. Sed magnam voluptatum voluptatem. Officia exercitationem ut esse illo optio. Ex nihil quae voluptas eum voluptatem velit odio.', 41, 2, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(2, 'Yayasan Aryani Utama Tbk', 'https://picsum.photos/id/436/640', 'Consectetur hic impedit deserunt tempore ipsam minus. Excepturi et corporis vero modi tempora sit quod non.', 33, 7, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(3, 'CV Hutasoit Nababan Tbk', 'https://picsum.photos/id/410/640', 'Repellendus quis qui molestiae iusto quos repellat dolor. Reprehenderit dolores ullam pariatur aut veritatis eius maxime. Et voluptas dolores consectetur ut voluptatum aut.', 37, 8, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(4, 'PD Tampubolon Padmasari (Persero) Tbk', 'https://picsum.photos/id/441/640', 'Incidunt sit dolorem dolorem. Qui facere quaerat vel. Fugiat iusto consequatur nam architecto nemo aspernatur itaque sit. Consectetur consequatur odio aliquid temporibus odio accusamus.', 41, 9, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(5, 'PJ Halimah Safitri', 'https://picsum.photos/id/276/640', 'Et expedita natus tenetur sit eum iusto soluta. Voluptate deleniti molestias in quisquam aut inventore. Iste nostrum aut est. Consequatur voluptas vel laudantium recusandae esse.', 41, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(6, 'Perum Purwanti', 'https://picsum.photos/id/325/640', 'Blanditiis itaque doloribus repellat fuga fugiat sapiente quisquam. Voluptatem debitis voluptatem optio assumenda ut et ut. Quas mollitia totam id sequi ut.', 34, 13, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(7, 'CV Namaga', 'https://picsum.photos/id/393/640', 'Quo optio consequatur sequi praesentium voluptas non. Voluptatem nam ipsum explicabo quam deserunt. Id doloribus qui nulla alias officia.', 32, 15, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(8, 'PD Maryadi (Persero) Tbk', 'https://picsum.photos/id/335/640', 'Aut voluptatem inventore nostrum ut iste. Dolorem atque est a vitae illo perspiciatis et. Porro ut in est ut dolor temporibus excepturi.', 23, 16, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(9, 'PJ Saputra Pudjiastuti Tbk', 'https://picsum.photos/id/277/640', 'Alias eos quia velit quia facilis vel. Reprehenderit voluptate dolores eos. Repudiandae nihil aspernatur sit repellat excepturi.', 22, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(10, 'CV Nugroho Laksita', 'https://picsum.photos/id/474/640', 'Ea ullam doloremque molestiae sit aut fugit. Voluptate debitis fuga earum quidem. Deserunt voluptates dolor quia et eius soluta repudiandae. Natus occaecati amet enim quo sint iusto.', 12, 18, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(11, 'PD Lazuardi Aryani', 'https://picsum.photos/id/450/640', 'Voluptatem numquam esse nam aliquid aliquam et. Dicta voluptatem illum in laudantium nisi aut alias. Officiis nam nam nam adipisci veniam temporibus.', 16, 19, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(12, 'PD Wijayanti Prasetyo (Persero) Tbk', 'https://picsum.photos/id/366/640', 'Quia impedit corrupti minus doloribus minus. Est omnis non velit aspernatur. Repellendus repellat iusto illum libero qui fuga placeat. Eum totam nemo et aut id harum ullam dolorum.', 19, 21, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(13, 'Yayasan Lailasari Marpaung (Persero) Tbk', 'https://picsum.photos/id/412/640', 'Sed sapiente commodi modi quam officiis commodi rerum. Ipsa vitae veritatis laboriosam atque sunt voluptas qui.', 20, 23, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(14, 'Perum Irawan', 'https://picsum.photos/id/410/640', 'Blanditiis soluta suscipit corporis. Aut ut voluptas hic sapiente doloribus. Alias nisi voluptas id nam.', 46, 24, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(15, 'CV Riyanti Saputra', 'https://picsum.photos/id/407/640', 'Rem cumque incidunt magni molestias. Cumque enim aut fugiat explicabo quo. Ducimus magnam voluptatem ipsa. Est autem et dolor dignissimos exercitationem veritatis quo.', 36, 26, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(16, 'Perum Usada', 'https://picsum.photos/id/377/640', 'Sed voluptas voluptates nam provident. Enim quo vel saepe est voluptatem quod. Perspiciatis placeat accusantium ex tempora. Sed itaque earum fuga nostrum accusantium soluta et debitis.', 39, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(17, 'PJ Purnawati Budiman', 'https://picsum.photos/id/398/640', 'Ullam aut molestiae nobis doloribus. Qui fugit velit modi hic aperiam libero. Dolores qui sed nostrum quo beatae est.', 15, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(18, 'PD Sitorus Tbk', 'https://picsum.photos/id/274/640', 'Quidem minus perspiciatis fuga earum omnis saepe omnis. Deleniti vero molestiae est impedit sit. Tempora ut odio eveniet ut. Velit qui temporibus ut assumenda voluptatem omnis soluta.', 16, 31, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(19, 'Fa Ramadan Mandasari (Persero) Tbk', 'https://picsum.photos/id/476/640', 'Eligendi architecto facilis unde voluptates quasi. Aut fugiat sed vero eos. Aut perspiciatis sunt quidem repellat.', 13, 32, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(20, 'CV Widiastuti Winarsih', 'https://picsum.photos/id/483/640', 'Sunt sint aut omnis et magnam aut et. Nemo perspiciatis vel repudiandae eum explicabo a. Qui vero fugiat sint laboriosam.', 16, 35, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(21, 'Perum Kusmawati Handayani', 'https://picsum.photos/id/425/640', 'Reiciendis magnam et aut nostrum porro. Tenetur aut distinctio atque ipsa explicabo nam hic. Qui mollitia non et quas qui fugit. Assumenda debitis rerum quia et.', 27, 42, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(22, 'PT Suryatmi', 'https://picsum.photos/id/265/640', 'Enim delectus occaecati blanditiis quia eveniet. Ipsam reprehenderit omnis quam quae sit aliquam occaecati. Unde omnis minima odio qui voluptates doloremque voluptate.', 20, 50, '2023-01-06 22:26:34', '2023-01-06 22:26:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orphans`
--

CREATE TABLE `orphans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orphanage_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orphans`
--

INSERT INTO `orphans` (`id`, `orphanage_id`, `name`, `date_of_birth`, `gender`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tiara', '2000-07-04 04:21:37', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(2, 1, 'Nardi', '1980-05-29 02:06:27', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(3, 1, 'Paramita', '2002-12-25 19:11:20', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(4, 1, 'Baktiadi', '1990-01-19 07:05:13', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(5, 1, 'Omar', '1994-07-19 22:00:47', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(6, 1, 'Sadina', '1990-08-05 18:31:38', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(7, 1, 'Cindy', '2004-01-23 18:40:04', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(8, 1, 'Anastasia', '1976-06-17 00:25:54', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(9, 1, 'Diana', '2000-05-23 13:25:41', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(10, 1, 'Jaeman', '2003-09-23 14:12:15', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(11, 1, 'Abyasa', '2003-11-11 01:35:07', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(12, 1, 'Halima', '2004-09-08 00:37:20', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(13, 1, 'Ulya', '2002-06-05 18:31:57', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(14, 1, 'Legawa', '2000-10-09 17:15:42', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(15, 1, 'Nabila', '2003-06-06 00:21:45', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(16, 1, 'Genta', '1993-10-21 21:22:05', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(17, 1, 'Irma', '2001-07-13 14:59:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(18, 1, 'Ayu', '1995-11-19 06:47:28', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(19, 1, 'Muni', '1992-08-26 12:09:29', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(20, 1, 'Bagya', '2001-08-10 16:22:18', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(21, 1, 'Ira', '1979-02-02 02:33:11', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(22, 1, 'Ida', '1980-11-26 05:04:05', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(23, 1, 'Hani', '2002-03-07 22:54:40', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(24, 1, 'Ida', '1993-06-21 00:46:41', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(25, 1, 'Saka', '1996-03-10 07:09:32', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(26, 1, 'Cinta', '1991-12-29 19:18:20', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(27, 1, 'Jessica', '1976-07-09 01:56:33', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(28, 1, 'Virman', '1994-04-08 02:24:53', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(29, 1, 'Titin', '1982-03-28 18:19:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(30, 1, 'Banawi', '1990-01-01 23:05:23', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(31, 1, 'Jessica', '1994-05-01 16:16:09', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(32, 1, 'Alika', '1998-05-02 07:24:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(33, 1, 'Mila', '1997-07-07 21:40:21', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(34, 1, 'Kenzie', '1986-08-23 03:29:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(35, 1, 'Bajragin', '1982-08-28 20:37:25', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(36, 1, 'Najwa', '1989-06-01 18:45:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(37, 1, 'Jaya', '1995-04-09 21:45:22', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(38, 1, 'Almira', '1987-10-15 19:47:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(39, 1, 'Jefri', '1983-02-16 12:56:15', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(40, 1, 'Reksa', '1976-11-18 03:26:56', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(41, 1, 'Kasusra', '1999-10-29 19:18:46', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(42, 2, 'Humaira', '1980-02-20 23:04:24', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(43, 2, 'Puti', '1979-06-22 06:48:59', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(44, 2, 'Leo', '1976-03-19 20:21:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(45, 2, 'Saka', '1999-07-20 04:42:12', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(46, 2, 'Ivan', '2002-02-09 23:00:23', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(47, 2, 'Ulva', '2003-06-08 20:42:22', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(48, 2, 'Vicky', '1990-12-03 21:43:38', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(49, 2, 'Ghaliyati', '1995-11-09 13:42:09', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(50, 2, 'Lantar', '1990-12-31 00:40:30', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(51, 2, 'Manah', '1982-09-19 01:44:05', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(52, 2, 'Almira', '1989-09-20 09:16:22', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(53, 2, 'Yahya', '1986-10-24 03:22:18', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(54, 2, 'Gatra', '2003-02-25 04:03:54', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(55, 2, 'Putu', '1997-09-05 04:04:25', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(56, 2, 'Nyana', '1983-08-21 01:34:45', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(57, 2, 'Maras', '2003-01-08 22:05:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(58, 2, 'Vanya', '1976-10-02 08:01:36', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(59, 2, 'Usyi', '1997-03-29 07:22:30', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(60, 2, 'Ophelia', '1983-03-26 07:28:01', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(61, 2, 'Tami', '1982-02-23 07:32:06', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(62, 2, 'Yuni', '1994-10-02 07:45:30', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(63, 2, 'Emong', '1982-11-02 13:49:42', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(64, 2, 'Jamalia', '2004-10-28 16:43:33', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(65, 2, 'Jaka', '2001-11-04 08:44:29', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(66, 2, 'Tami', '1977-06-06 14:28:04', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(67, 2, 'Yosef', '1992-03-29 12:04:39', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(68, 2, 'Ismail', '1995-05-22 15:47:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(69, 2, 'Agus', '1982-12-07 17:07:32', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(70, 2, 'Vivi', '1980-01-25 16:36:28', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(71, 2, 'Putri', '1992-11-07 09:49:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(72, 2, 'Yani', '1990-04-15 00:06:21', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(73, 2, 'Prasetya', '1995-03-19 12:01:05', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(74, 2, 'Jarwadi', '1999-07-10 03:26:17', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(75, 3, 'Karta', '1988-05-30 23:59:13', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(76, 3, 'Wardaya', '2001-02-27 22:28:28', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(77, 3, 'Nabila', '2003-05-07 15:57:13', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(78, 3, 'Respati', '1992-06-26 00:57:01', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(79, 3, 'Nyana', '1984-08-17 20:00:20', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(80, 3, 'Devi', '1981-01-19 04:51:46', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(81, 3, 'Maria', '1982-01-12 19:43:50', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(82, 3, 'Najib', '1983-07-02 19:17:08', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(83, 3, 'Lukman', '2000-07-07 08:54:41', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(84, 3, 'Icha', '2002-02-13 00:42:59', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(85, 3, 'Calista', '1986-10-02 12:10:47', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(86, 3, 'Raina', '1976-10-25 15:08:41', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(87, 3, 'Kanda', '1981-07-14 11:58:44', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(88, 3, 'Aris', '1983-02-09 03:03:52', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(89, 3, 'Ratih', '2003-03-18 21:25:43', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(90, 3, 'Jumadi', '1987-08-09 19:03:57', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(91, 3, 'Wasis', '1976-02-20 21:54:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(92, 3, 'Rahmi', '2004-05-11 03:47:06', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(93, 3, 'Sarah', '1976-02-01 20:14:15', 'Female', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(94, 3, 'Hafshah', '1990-01-12 03:48:44', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(95, 3, 'Aswani', '1986-01-28 23:32:49', 'Male', '', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(96, 3, 'Rahmi', '1979-12-27 05:48:52', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(97, 3, 'Nalar', '1976-06-03 22:06:09', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(98, 3, 'Tari', '1981-05-04 19:45:16', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(99, 3, 'Amelia', '1986-10-12 01:10:58', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(100, 3, 'Dewi', '1976-02-03 16:10:54', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(101, 3, 'Karsana', '1994-05-08 14:03:16', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(102, 3, 'Unggul', '1994-11-18 14:04:36', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(103, 3, 'Qori', '1990-11-02 05:04:59', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(104, 3, 'Atma', '2001-02-19 23:59:45', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(105, 3, 'Julia', '1981-11-01 02:33:51', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(106, 3, 'Dinda', '1997-11-25 22:07:44', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(107, 3, 'Ajimat', '1979-01-24 17:30:13', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(108, 3, 'Olivia', '1993-05-26 00:18:02', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(109, 3, 'Gawati', '2000-12-30 21:40:18', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(110, 3, 'Sadina', '2001-11-15 18:54:32', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(111, 3, 'Jarwi', '1993-07-14 19:40:39', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(112, 4, 'Irma', '1987-03-26 07:19:45', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(113, 4, 'Natalia', '1998-03-07 16:48:41', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(114, 4, 'Pandu', '1997-08-13 09:09:13', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(115, 4, 'Lili', '1989-10-29 05:45:06', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(116, 4, 'Himawan', '1994-05-15 01:54:44', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(117, 4, 'Restu', '1987-07-27 18:28:44', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(118, 4, 'Tira', '1987-01-24 17:56:06', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(119, 4, 'Bagus', '1982-10-25 04:05:00', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(120, 4, 'Dariati', '1993-08-05 15:35:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(121, 4, 'Dadap', '1978-06-29 02:57:23', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(122, 4, 'Wasis', '1980-07-17 19:46:44', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(123, 4, 'Amelia', '1990-11-20 16:35:45', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(124, 4, 'Cici', '1986-02-11 17:42:57', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(125, 4, 'Drajat', '2000-05-21 13:32:02', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(126, 4, 'Intan', '1999-01-10 21:12:04', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(127, 4, 'Tasdik', '1992-01-03 08:01:01', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(128, 4, 'Sabri', '1996-12-27 12:26:21', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(129, 4, 'Eja', '2002-06-19 21:58:56', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(130, 4, 'Ilsa', '1979-12-17 16:52:00', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(131, 4, 'Kezia', '1983-11-16 07:15:02', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(132, 4, 'Bahuwirya', '1988-04-29 11:26:01', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(133, 4, 'Kawaya', '1981-11-26 08:57:54', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(134, 4, 'Olga', '1998-09-01 00:29:39', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(135, 4, 'Galak', '1981-07-11 21:05:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(136, 4, 'Kemal', '1979-07-14 23:10:17', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(137, 4, 'Rahmat', '1993-01-30 00:47:56', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(138, 4, 'Lukita', '1996-12-20 21:00:01', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(139, 4, 'Yosef', '1990-12-25 19:18:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(140, 4, 'Dina', '1988-07-30 12:04:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(141, 4, 'Yoga', '1990-03-19 04:10:45', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(142, 4, 'Citra', '1986-06-29 05:38:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(143, 4, 'Zulaikha', '1982-07-21 01:53:36', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(144, 4, 'Anastasia', '2000-06-25 19:53:13', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(145, 4, 'Ibun', '1987-06-08 07:52:55', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(146, 4, 'Usyi', '1988-06-16 08:41:18', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(147, 4, 'Caket', '1993-06-14 16:51:15', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(148, 4, 'Ajiman', '1993-11-23 02:55:30', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(149, 4, 'Aisyah', '1993-05-18 18:15:48', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(150, 4, 'Kalim', '2003-02-23 03:09:33', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(151, 4, 'Ajeng', '1999-07-18 18:36:01', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(152, 4, 'Purwadi', '1990-06-12 16:10:53', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(153, 5, 'Qori', '1983-08-24 05:09:12', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(154, 5, 'Edi', '1989-08-20 09:49:40', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(155, 5, 'Gamanto', '1980-04-21 05:27:24', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(156, 5, 'Bakidin', '2001-11-13 06:45:32', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(157, 5, 'Balapati', '1990-05-05 09:09:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(158, 5, 'Gatra', '1994-11-05 13:44:12', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(159, 5, 'Cemplunk', '2000-10-15 12:06:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(160, 5, 'Eka', '2004-07-14 15:14:00', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(161, 5, 'Farhunnisa', '1999-04-21 06:47:45', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(162, 5, 'Ikhsan', '1982-03-02 08:59:22', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(163, 5, 'Salwa', '1996-07-21 19:33:59', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(164, 5, 'Bambang', '1977-08-31 06:08:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(165, 5, 'Darman', '2000-01-29 00:14:29', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(166, 5, 'Ami', '1998-09-21 21:27:24', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(167, 5, 'Kasim', '2003-02-02 00:22:16', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(168, 5, 'Ibrahim', '1977-05-27 00:37:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(169, 5, 'Arsipatra', '1998-03-16 06:03:00', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(170, 5, 'Keisha', '1978-10-31 10:05:05', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(171, 5, 'Laila', '1981-02-13 21:34:07', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(172, 5, 'Oni', '2000-07-13 13:47:01', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(173, 5, 'Tami', '2002-10-17 16:45:09', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(174, 5, 'Jagapati', '1989-09-12 11:35:43', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(175, 5, 'Hilda', '1998-10-22 03:33:42', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(176, 5, 'Vega', '1983-06-08 06:57:51', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(177, 5, 'Zulfa', '1993-01-05 02:52:33', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(178, 5, 'Mala', '1981-02-07 01:00:29', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(179, 5, 'Ika', '1997-07-28 18:45:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(180, 5, 'Gangsa', '1991-06-03 21:42:47', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(181, 5, 'Cahya', '1996-07-25 08:24:15', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(182, 5, 'Taswir', '1979-03-14 14:54:04', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(183, 5, 'Lutfan', '1984-05-17 03:15:02', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(184, 5, 'Catur', '1988-11-08 13:18:27', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(185, 5, 'Slamet', '1995-12-13 12:52:08', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(186, 5, 'Rahmi', '1989-04-21 12:00:12', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(187, 5, 'Unggul', '1984-09-16 10:37:46', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(188, 5, 'Jindra', '2004-04-18 10:57:33', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(189, 5, 'Hartaka', '1991-08-13 22:02:14', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(190, 5, 'Paramita', '1992-05-30 03:50:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(191, 5, 'Karya', '1980-01-20 12:22:34', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(192, 5, 'Laras', '1995-04-19 20:03:11', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(193, 5, 'Vega', '1987-07-30 02:05:20', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(194, 6, 'Cager', '1986-08-12 23:50:37', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(195, 6, 'Maida', '2000-12-02 17:40:22', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(196, 6, 'Diah', '2001-10-19 06:31:40', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(197, 6, 'Rini', '1990-05-06 12:15:18', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(198, 6, 'Anggabaya', '1992-04-01 11:20:18', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(199, 6, 'Pia', '1998-11-16 00:30:16', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(200, 6, 'Paris', '1997-06-08 22:45:52', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(201, 6, 'Ibun', '1996-01-22 23:56:37', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(202, 6, 'Puspa', '1977-11-19 08:27:23', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(203, 6, 'Amelia', '1996-09-11 16:26:42', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(204, 6, 'Yance', '1986-12-23 11:39:25', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(205, 6, 'Atmaja', '1978-07-26 03:19:54', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(206, 6, 'Rika', '1980-05-03 22:14:03', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(207, 6, 'Lintang', '1977-12-18 22:08:04', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(208, 6, 'Tania', '1978-05-02 14:06:41', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(209, 6, 'Belinda', '1999-06-10 23:40:32', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(210, 6, 'Rina', '1996-07-26 04:02:18', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(211, 6, 'Gabriella', '1997-08-31 17:00:41', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(212, 6, 'Belinda', '1978-01-08 15:48:52', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(213, 6, 'Raisa', '1997-04-05 09:42:19', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(214, 6, 'Paiman', '1982-01-13 11:53:17', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(215, 6, 'Estiono', '2003-04-24 08:09:03', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(216, 6, 'Maimunah', '1992-01-07 04:09:45', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(217, 6, 'Gamanto', '2002-08-28 11:23:21', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(218, 6, 'Farhunnisa', '1992-08-19 16:42:16', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(219, 6, 'Jarwadi', '1995-06-03 01:46:43', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(220, 6, 'Naradi', '1985-12-05 16:11:10', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(221, 6, 'Nabila', '1984-05-31 07:36:50', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(222, 6, 'Tania', '1976-06-06 01:32:28', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(223, 6, 'Pardi', '1989-09-06 03:02:21', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(224, 6, 'Bakiadi', '1999-01-01 17:35:19', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(225, 6, 'Abyasa', '1997-01-28 18:02:12', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(226, 6, 'Mahmud', '1996-02-28 21:27:14', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(227, 6, 'Laksana', '1993-02-20 18:32:11', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(228, 7, 'Wira', '1994-04-26 12:33:49', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(229, 7, 'Marwata', '1994-10-16 15:08:56', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(230, 7, 'Titin', '1978-02-16 16:13:31', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(231, 7, 'Dimas', '1998-06-19 05:05:36', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(232, 7, 'Yunita', '1977-11-04 15:04:03', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(233, 7, 'Prasetyo', '1987-05-28 11:19:48', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(234, 7, 'Hasna', '1986-10-12 23:30:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(235, 7, 'Cayadi', '1988-03-13 00:03:32', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(236, 7, 'Purwa', '1996-06-23 16:53:50', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(237, 7, 'Asman', '1990-05-02 13:21:07', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(238, 7, 'Mustofa', '1997-01-05 17:57:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(239, 7, 'Timbul', '1977-02-02 12:22:38', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(240, 7, 'Nrima', '2001-10-06 10:33:45', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(241, 7, 'Hana', '1997-09-22 04:50:40', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(242, 7, 'Michelle', '1990-03-26 22:40:41', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(243, 7, 'Iriana', '1984-09-15 22:28:48', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(244, 7, 'Unjani', '1990-11-09 00:09:24', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(245, 7, 'Rika', '1993-06-26 18:55:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(246, 7, 'Balangga', '1983-09-25 10:47:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(247, 7, 'Eka', '2003-02-11 05:57:43', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(248, 7, 'Rahmi', '1995-02-17 12:38:34', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(249, 7, 'Gilda', '1986-03-14 12:17:36', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(250, 7, 'Perkasa', '1980-08-08 09:27:27', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(251, 7, 'Kala', '1985-01-27 22:00:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(252, 7, 'Gina', '1998-09-02 02:57:35', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(253, 7, 'Simon', '1990-11-05 02:11:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(254, 7, 'Gading', '1995-07-02 18:54:03', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(255, 7, 'Ani', '1981-12-21 10:12:15', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(256, 7, 'Gina', '1999-05-14 18:02:33', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(257, 7, 'Vino', '1984-08-11 14:18:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(258, 7, 'Gabriella', '1982-06-11 13:13:52', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(259, 7, 'Tira', '1997-04-29 04:13:49', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(260, 8, 'Galuh', '1992-09-17 11:03:29', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(261, 8, 'Septi', '1996-06-17 12:55:08', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(262, 8, 'Puti', '1977-10-28 19:46:14', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(263, 8, 'Dipa', '1990-06-08 09:36:25', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(264, 8, 'Nardi', '1990-06-23 19:58:03', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(265, 8, 'Janet', '1979-03-06 03:30:48', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(266, 8, 'Samiah', '1988-07-11 23:23:28', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(267, 8, 'Mustofa', '1983-07-01 14:20:12', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(268, 8, 'Lanjar', '1988-06-30 20:55:52', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(269, 8, 'Eka', '1985-10-30 00:56:26', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(270, 8, 'Jumari', '1977-10-31 08:42:14', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(271, 8, 'Darmanto', '2000-12-03 08:25:40', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(272, 8, 'Putri', '1993-11-12 02:13:17', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(273, 8, 'Galur', '1977-03-12 10:34:51', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(274, 8, 'Febi', '1977-04-01 03:48:42', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(275, 8, 'Nardi', '1977-11-03 21:32:31', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(276, 8, 'Gading', '1995-08-01 17:25:15', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(277, 8, 'Gara', '2003-08-07 14:51:31', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(278, 8, 'Hasna', '1979-05-22 02:02:12', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(279, 8, 'Dian', '1989-08-07 00:42:00', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(280, 8, 'Agus', '1983-09-21 17:22:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(281, 8, 'Arta', '1989-12-07 00:01:35', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(282, 8, 'Prayogo', '1992-09-04 16:25:33', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(283, 9, 'Samiah', '1978-08-28 04:59:29', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(284, 9, 'Damar', '1997-05-12 22:25:29', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(285, 9, 'Ikin', '1977-08-19 10:16:24', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(286, 9, 'Cakrabuana', '1986-07-14 06:29:32', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(287, 9, 'Prakosa', '2001-05-06 17:10:10', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(288, 9, 'Nasrullah', '1995-11-17 08:24:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(289, 9, 'Mursita', '1997-09-06 23:08:47', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(290, 9, 'Ade', '1977-04-08 09:51:43', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(291, 9, 'Nadia', '1992-07-15 09:24:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(292, 9, 'Alika', '1994-07-01 14:18:29', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(293, 9, 'Panji', '1998-03-14 10:25:49', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(294, 9, 'Argono', '1996-07-26 12:32:25', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(295, 9, 'Kariman', '2004-03-06 08:03:38', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(296, 9, 'Carla', '1999-03-14 07:16:43', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(297, 9, 'Puji', '1996-10-28 14:18:35', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(298, 9, 'Balidin', '2001-05-29 23:10:51', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(299, 9, 'Hafshah', '2002-01-26 02:36:18', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(300, 9, 'Icha', '1981-01-24 17:12:11', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(301, 9, 'Bakiono', '1999-09-17 02:48:13', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(302, 9, 'Emin', '1992-01-25 14:31:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(303, 9, 'Hilda', '2004-05-29 05:09:24', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(304, 9, 'Julia', '2000-06-21 19:49:17', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(305, 10, 'Kezia', '1979-10-01 01:51:31', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(306, 10, 'Dinda', '2003-12-04 08:59:46', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(307, 10, 'Prayogo', '1993-04-14 07:26:20', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(308, 10, 'Amelia', '1996-05-31 00:04:39', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(309, 10, 'Almira', '1985-07-23 17:58:32', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(310, 10, 'Kacung', '1993-08-22 09:30:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(311, 10, 'Dono', '1988-08-30 03:05:27', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(312, 10, 'Wani', '1993-04-02 14:09:44', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(313, 10, 'Rosman', '1990-10-09 07:33:52', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(314, 10, 'Jono', '1996-05-05 14:36:04', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(315, 10, 'Xanana', '1995-10-06 19:31:57', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(316, 10, 'Dipa', '2003-11-12 13:19:41', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(317, 11, 'Heryanto', '1985-05-26 15:27:41', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(318, 11, 'Zahra', '1978-11-05 23:59:25', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(319, 11, 'Ulva', '2002-10-12 14:48:45', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(320, 11, 'Citra', '1994-06-04 20:47:41', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(321, 11, 'Lulut', '1998-09-14 03:58:04', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(322, 11, 'Dodo', '1989-04-16 19:53:07', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(323, 11, 'Irnanto', '1983-02-02 21:17:32', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(324, 11, 'Betania', '1989-07-17 03:53:14', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(325, 11, 'Gawati', '1977-04-27 00:02:47', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(326, 11, 'Mahmud', '2000-08-17 08:46:27', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(327, 11, 'Humaira', '1984-09-03 03:14:01', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(328, 11, 'Ira', '1990-12-07 11:27:06', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(329, 11, 'Cakrawangsa', '1977-08-19 16:05:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(330, 11, 'Mumpuni', '1983-05-19 07:57:37', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(331, 11, 'Kartika', '1986-11-04 04:38:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(332, 11, 'Ajimat', '1977-08-13 05:01:47', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(333, 12, 'Embuh', '1992-01-20 04:06:14', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(334, 12, 'Kezia', '1995-09-19 06:33:41', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(335, 12, 'Cemplunk', '1993-08-26 16:05:11', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(336, 12, 'Tami', '1989-04-17 15:39:07', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(337, 12, 'Yance', '1982-10-12 05:54:38', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(338, 12, 'Lembah', '1989-10-28 21:33:44', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(339, 12, 'Anom', '2003-01-26 07:19:13', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(340, 12, 'Gamblang', '1983-07-04 22:39:06', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(341, 12, 'Tiara', '1977-01-12 09:54:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(342, 12, 'Wardaya', '1986-07-14 17:12:03', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(343, 12, 'Salsabila', '2001-12-01 17:45:22', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(344, 12, 'Usyi', '1986-05-22 02:54:40', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(345, 12, 'Wulan', '1987-04-09 19:52:24', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(346, 12, 'Ganda', '2000-12-19 09:01:24', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(347, 12, 'Banawi', '1996-01-26 19:36:22', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(348, 12, 'Galur', '1985-06-22 22:01:16', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(349, 12, 'Gandewa', '1998-07-07 00:03:48', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(350, 12, 'Koko', '1997-09-06 00:35:41', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(351, 12, 'Cemeti', '1987-01-28 04:13:04', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(352, 13, 'Gamani', '1978-08-07 22:00:52', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(353, 13, 'Vivi', '1983-12-01 20:23:58', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(354, 13, 'Jumadi', '1978-09-04 20:20:54', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(355, 13, 'Agus', '1986-10-08 16:16:42', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(356, 13, 'Janet', '1983-08-06 00:09:37', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(357, 13, 'Edi', '1994-11-28 02:00:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(358, 13, 'Janet', '1996-10-24 16:36:40', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(359, 13, 'Mala', '1982-11-08 19:59:10', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(360, 13, 'Lanjar', '1995-02-19 13:48:28', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(361, 13, 'Zizi', '1987-09-24 00:19:04', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(362, 13, 'Oskar', '1986-08-06 10:43:16', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(363, 13, 'Ade', '1996-03-06 12:12:48', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(364, 13, 'Jagaraga', '1997-03-17 00:52:48', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(365, 13, 'Balijan', '1995-03-21 11:53:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(366, 13, 'Laksana', '1997-12-05 12:08:02', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(367, 13, 'Vera', '1998-06-04 10:57:54', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(368, 13, 'Cemani', '1983-11-07 10:48:44', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(369, 13, 'Ika', '1994-03-01 17:32:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(370, 13, 'Dian', '1999-10-02 23:17:54', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(371, 13, 'Carla', '1990-11-12 17:05:10', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(372, 14, 'Eli', '1994-08-31 22:15:05', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(373, 14, 'Yani', '2004-04-26 15:59:14', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(374, 14, 'Marsito', '2002-06-06 18:44:41', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(375, 14, 'Saadat', '1982-11-06 11:51:17', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(376, 14, 'Vero', '1979-04-10 09:41:21', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(377, 14, 'Ciaobella', '1987-09-25 13:00:31', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(378, 14, 'Dartono', '1981-05-28 22:09:11', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(379, 14, 'Dagel', '1978-06-11 07:31:31', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(380, 14, 'Heru', '1983-11-01 13:56:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(381, 14, 'Karen', '1994-06-21 17:00:16', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(382, 14, 'Wira', '1981-02-13 12:30:26', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(383, 14, 'Cemeti', '1999-07-16 22:21:11', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(384, 14, 'Aurora', '2002-09-28 10:18:12', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(385, 14, 'Pia', '1979-11-20 08:32:21', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(386, 14, 'Cakrabirawa', '1999-05-26 16:39:22', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(387, 14, 'Nabila', '2002-07-24 06:54:02', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(388, 14, 'Dadi', '1976-02-17 00:13:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(389, 14, 'Fathonah', '2000-04-25 12:45:47', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(390, 14, 'Salman', '2001-04-08 09:26:35', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(391, 14, 'Opan', '1980-08-18 02:43:18', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(392, 14, 'Yosef', '1986-06-19 09:07:23', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(393, 14, 'Sidiq', '1976-06-27 08:02:06', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(394, 14, 'Ilsa', '1983-07-17 15:34:36', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(395, 14, 'Cahyono', '1984-05-03 08:30:53', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(396, 14, 'Kawaya', '1986-07-03 06:05:29', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(397, 14, 'Nasrullah', '1985-02-19 13:06:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(398, 14, 'Kardi', '2001-04-26 15:11:23', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(399, 14, 'Dalima', '1980-02-15 06:45:00', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(400, 14, 'Hamima', '1984-03-24 02:58:26', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(401, 14, 'Nasrullah', '1995-08-11 10:26:50', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(402, 14, 'Ivan', '1993-10-28 23:41:39', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(403, 14, 'Tari', '1980-08-30 02:34:12', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(404, 14, 'Ratih', '1977-03-27 02:09:44', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(405, 14, 'Jono', '1996-03-10 11:53:40', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(406, 14, 'Bambang', '1987-12-29 15:07:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(407, 14, 'Faizah', '1987-09-25 21:01:33', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(408, 14, 'Vanesa', '1989-05-26 09:23:20', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(409, 14, 'Nurul', '1979-05-10 19:45:51', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(410, 14, 'Unjani', '1993-01-24 19:59:52', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(411, 14, 'Pangeran', '1991-08-29 05:46:30', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(412, 14, 'Kasusra', '1988-07-10 01:59:52', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(413, 14, 'Bagya', '2001-10-20 21:15:04', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(414, 14, 'Maya', '1978-06-18 19:38:23', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(415, 14, 'Raihan', '1983-07-20 19:55:21', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(416, 14, 'Salsabila', '2003-02-09 19:32:38', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(417, 14, 'Warsita', '1987-01-24 03:59:09', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(418, 15, 'Bahuraksa', '1995-05-26 07:46:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(419, 15, 'Lala', '1994-01-10 23:14:25', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(420, 15, 'Karja', '1993-08-05 21:45:42', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(421, 15, 'Uchita', '1996-09-12 06:44:57', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(422, 15, 'Dian', '1992-11-09 09:06:10', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(423, 15, 'Himawan', '1984-02-20 00:38:33', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(424, 15, 'Gasti', '1984-11-30 23:48:47', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(425, 15, 'Yessi', '1990-11-17 13:45:22', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(426, 15, 'Prasetya', '1977-02-13 04:56:55', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(427, 15, 'Yuliana', '1996-02-17 14:07:54', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(428, 15, 'Waluyo', '1995-05-03 00:46:46', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(429, 15, 'Jaeman', '1979-03-11 20:35:19', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(430, 15, 'Wirda', '1987-03-03 16:51:33', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(431, 15, 'Jarwa', '1983-06-22 06:56:16', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(432, 15, 'Kezia', '2002-05-07 01:28:01', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(433, 15, 'Najwa', '1985-04-01 00:09:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(434, 15, 'Darimin', '1998-07-16 16:47:50', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(435, 15, 'Nardi', '1985-12-10 05:20:00', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(436, 15, 'Banawi', '1981-06-09 18:30:34', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(437, 15, 'Zaenab', '2003-12-31 01:11:02', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(438, 15, 'Paramita', '1977-06-24 01:17:34', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(439, 15, 'Darmanto', '1994-07-23 09:21:43', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(440, 15, 'Farah', '1985-11-19 13:13:08', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(441, 15, 'Karen', '1977-08-16 03:23:26', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(442, 15, 'Balapati', '1998-02-27 02:04:28', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(443, 15, 'Najwa', '1992-09-21 04:53:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(444, 15, 'Catur', '1999-01-07 01:09:36', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(445, 15, 'Ulva', '1998-12-20 18:14:17', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(446, 15, 'Laras', '2003-09-28 14:40:35', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(447, 15, 'Gabriella', '1983-05-19 00:49:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(448, 15, 'Cemplunk', '1999-03-19 20:41:47', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(449, 15, 'Yoga', '1976-02-27 06:55:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(450, 15, 'Dian', '1980-01-28 00:44:51', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(451, 15, 'Wira', '1983-06-20 12:32:59', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(452, 15, 'Xanana', '2003-09-24 07:16:19', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(453, 15, 'Ulya', '2001-01-28 10:08:59', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(454, 16, 'Koko', '2000-08-15 05:46:12', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(455, 16, 'Bambang', '1993-08-21 05:57:21', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(456, 16, 'Waluyo', '1990-10-21 11:47:35', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(457, 16, 'Koko', '1993-01-07 05:29:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(458, 16, 'Ilyas', '1996-03-20 17:15:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(459, 16, 'Aurora', '1980-11-21 19:46:37', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(460, 16, 'Drajat', '1988-07-17 07:35:38', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35');
INSERT INTO `orphans` (`id`, `orphanage_id`, `name`, `date_of_birth`, `gender`, `note`, `created_at`, `updated_at`) VALUES
(461, 16, 'Cemeti', '2002-05-27 13:53:38', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(462, 16, 'Manah', '1986-12-19 18:09:53', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(463, 16, 'Tugiman', '1990-08-10 18:08:12', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(464, 16, 'Indra', '1981-02-10 20:01:34', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(465, 16, 'Salimah', '1995-09-15 10:12:49', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(466, 16, 'Ilsa', '1976-09-19 17:20:31', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(467, 16, 'Vivi', '1992-10-06 00:39:09', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(468, 16, 'Talia', '1979-08-16 03:56:14', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(469, 16, 'Dina', '1997-09-17 13:26:27', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(470, 16, 'Cinta', '2004-04-21 17:07:08', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(471, 16, 'Febi', '1994-04-17 19:26:10', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(472, 16, 'Puspa', '1981-08-18 07:49:15', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(473, 16, 'Rangga', '2003-09-08 22:12:29', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(474, 16, 'Nadine', '1989-04-01 23:20:50', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(475, 16, 'Yono', '1992-12-04 04:59:58', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(476, 16, 'Galih', '1980-10-08 16:17:42', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(477, 16, 'Puspa', '1992-08-09 20:03:19', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(478, 16, 'Prabu', '1997-01-03 14:43:17', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(479, 16, 'Wulan', '1988-02-18 00:05:29', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(480, 16, 'Mumpuni', '1977-03-05 02:41:30', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(481, 16, 'Karimah', '1992-09-21 06:33:50', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(482, 16, 'Waluyo', '1993-05-26 17:34:42', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(483, 16, 'Restu', '1981-08-07 15:49:57', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(484, 16, 'Keisha', '2001-07-07 22:06:45', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(485, 16, 'Maimunah', '1987-04-03 22:47:13', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(486, 16, 'Kawaya', '1985-02-27 16:41:28', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(487, 16, 'Karya', '1984-06-01 22:37:21', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(488, 16, 'Paris', '1989-06-23 20:36:46', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(489, 16, 'Arsipatra', '1990-08-21 12:44:51', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(490, 16, 'Irnanto', '1994-12-29 09:10:52', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(491, 16, 'Uchita', '1993-05-22 01:05:49', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(492, 16, 'Dimas', '1981-03-20 00:53:28', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(493, 17, 'Anom', '1977-03-26 16:34:36', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(494, 17, 'Umaya', '1982-04-12 12:57:47', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(495, 17, 'Tirtayasa', '1996-08-09 04:09:24', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(496, 17, 'Carub', '2003-10-06 05:10:24', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(497, 17, 'Galuh', '1997-04-02 10:16:55', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(498, 17, 'Patricia', '1983-12-03 20:32:33', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(499, 17, 'Purwadi', '1992-05-24 17:55:05', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(500, 17, 'Cindy', '1992-10-16 10:43:48', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(501, 17, 'Sari', '1982-01-29 04:22:42', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(502, 17, 'Nugraha', '2002-12-08 02:29:38', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(503, 17, 'Olivia', '1979-11-09 06:56:28', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(504, 17, 'Olivia', '1977-04-10 11:37:49', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(505, 17, 'Talia', '2001-08-28 16:57:03', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(506, 17, 'Ratna', '1991-10-29 23:59:22', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(507, 17, 'Rosman', '1989-08-26 10:23:13', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(508, 18, 'Cengkir', '1982-10-25 19:07:18', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(509, 18, 'Marwata', '1984-08-18 23:50:44', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(510, 18, 'Devi', '1989-08-08 09:19:47', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(511, 18, 'Hartana', '1982-11-18 02:18:28', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(512, 18, 'Gaduh', '1976-12-08 13:35:25', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(513, 18, 'Kuncara', '2002-02-19 11:26:23', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(514, 18, 'Empluk', '1981-01-25 19:57:53', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(515, 18, 'Zalindra', '1998-12-05 22:22:59', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(516, 18, 'Cinthia', '1998-05-26 19:18:50', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(517, 18, 'Respati', '2003-03-15 00:18:14', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(518, 18, 'Dian', '1986-07-13 09:30:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(519, 18, 'Maya', '1987-04-10 09:48:49', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(520, 18, 'Pangestu', '1982-09-24 11:33:07', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(521, 18, 'Wakiman', '1998-10-28 07:56:29', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(522, 18, 'Jagapati', '1996-04-10 08:05:16', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(523, 18, 'Yoga', '2003-10-28 21:48:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(524, 19, 'Leo', '1997-10-18 19:30:10', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(525, 19, 'Muni', '1991-10-22 18:41:19', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(526, 19, 'Diah', '1990-12-09 19:14:52', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(527, 19, 'Raden', '1976-06-21 15:23:11', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(528, 19, 'Gatra', '1982-03-15 13:48:57', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(529, 19, 'Titi', '1994-04-14 16:24:16', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(530, 19, 'Balangga', '1999-10-14 15:53:04', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(531, 19, 'Ganda', '2001-10-04 23:27:28', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(532, 19, 'Balamantri', '1991-11-03 00:20:11', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(533, 19, 'Raisa', '2001-07-01 06:20:07', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(534, 19, 'Cahya', '2001-01-21 15:24:32', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(535, 19, 'Kayun', '1993-04-12 05:02:59', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(536, 19, 'Gabriella', '1999-08-27 15:48:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(537, 20, 'Suci', '1984-11-09 02:19:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(538, 20, 'Najib', '1984-10-30 22:45:44', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(539, 20, 'Jelita', '1996-03-04 09:12:22', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(540, 20, 'Jessica', '1980-09-10 19:38:47', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(541, 20, 'Bagiya', '1988-01-22 15:51:52', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(542, 20, 'Wirda', '2001-03-13 22:29:59', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(543, 20, 'Laswi', '1982-09-07 17:13:30', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(544, 20, 'Caket', '2003-05-28 14:30:24', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(545, 20, 'Lalita', '2001-03-02 13:30:24', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(546, 20, 'Rahmi', '2003-01-20 21:21:16', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(547, 20, 'Dodo', '1979-01-22 00:09:38', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(548, 20, 'Martaka', '2003-09-07 17:12:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(549, 20, 'Daliono', '2004-09-12 18:51:25', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(550, 20, 'Aisyah', '2004-06-11 14:24:05', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(551, 20, 'Kayla', '1977-03-03 23:49:55', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(552, 20, 'Hilda', '1977-05-07 20:37:22', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(553, 21, 'Rahmi', '1999-07-11 03:56:54', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(554, 21, 'Puput', '1983-10-06 03:23:19', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(555, 21, 'Jayeng', '1987-11-19 20:54:06', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(556, 21, 'Ganep', '1997-07-30 00:26:39', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(557, 21, 'Hasim', '1999-02-10 14:27:15', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(558, 21, 'Vanesa', '1979-09-15 03:08:18', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(559, 21, 'Jaeman', '2003-11-16 05:08:41', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(560, 21, 'Mahfud', '1998-09-04 11:01:56', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(561, 21, 'Atmaja', '1992-05-29 14:43:01', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(562, 21, 'Mala', '1984-09-01 17:19:17', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(563, 21, 'Salsabila', '1988-01-03 13:19:20', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(564, 21, 'Baktiadi', '1983-07-21 13:18:49', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(565, 21, 'Mulya', '1982-10-02 07:05:18', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(566, 21, 'Karsa', '1988-12-14 09:00:05', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(567, 21, 'Ellis', '1977-01-25 11:23:25', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(568, 21, 'Ghaliyati', '1976-01-31 19:51:38', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(569, 21, 'Wulan', '1979-08-02 03:51:42', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(570, 21, 'Raisa', '1987-11-11 10:09:04', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(571, 21, 'Eluh', '1988-08-08 15:48:18', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(572, 21, 'Karimah', '1994-11-12 18:30:26', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(573, 21, 'Restu', '1987-06-25 20:16:01', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(574, 21, 'Kani', '2004-12-10 08:32:53', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(575, 21, 'Salimah', '1994-04-12 20:23:45', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(576, 21, 'Nurul', '1982-02-10 13:37:42', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(577, 21, 'Laila', '1977-02-11 23:24:30', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(578, 21, 'Lintang', '1977-10-30 04:53:37', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(579, 21, 'Gamblang', '1996-06-03 12:53:18', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(580, 22, 'Wira', '1983-05-24 19:54:13', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(581, 22, 'Warsita', '1997-04-25 13:05:27', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(582, 22, 'Sakura', '1993-04-17 11:23:25', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(583, 22, 'Cici', '1986-07-15 17:03:49', 'Female', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(584, 22, 'Aditya', '1978-03-19 05:28:45', 'Male', '', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(585, 22, 'Daruna', '1996-04-05 15:23:03', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(586, 22, 'Oskar', '1997-01-11 03:19:18', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:35', '2023-01-06 22:26:35'),
(587, 22, 'Yunita', '2000-03-30 14:32:22', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(588, 22, 'Sarah', '1978-03-17 14:32:41', 'Female', '', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(589, 22, 'Nabila', '1978-08-01 05:53:26', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(590, 22, 'Febi', '1995-03-17 13:38:55', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(591, 22, 'Jais', '2004-10-18 05:10:58', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(592, 22, 'Rafid', '1986-10-11 14:50:01', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(593, 22, 'Ami', '1991-03-29 06:06:14', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(594, 22, 'Liman', '1984-04-19 13:53:14', 'Male', '', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(595, 22, 'Paramita', '1976-12-12 11:48:40', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(596, 22, 'Gada', '2003-09-04 19:57:57', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(597, 22, 'Ratih', '1981-06-14 10:56:48', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(598, 22, 'Surya', '2000-07-05 19:41:58', 'Male', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(599, 22, 'Nadine', '1977-11-20 18:34:37', 'Female', 'Anak Disabilitas', '2023-01-06 22:26:36', '2023-01-06 22:26:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orphan_course_bookings`
--

CREATE TABLE `orphan_course_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_booking_id` bigint(20) UNSIGNED NOT NULL,
  `orphan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orphan_course_bookings`
--

INSERT INTO `orphan_course_bookings` (`id`, `course_booking_id`, `orphan_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(2, 1, 26, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(3, 1, 1, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(4, 1, 2, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(5, 1, 33, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(6, 2, 59, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(7, 2, 71, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(8, 2, 71, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(9, 2, 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(10, 2, 56, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(11, 2, 66, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(12, 2, 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(13, 3, 82, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(14, 3, 111, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(15, 3, 91, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(16, 3, 107, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(17, 4, 99, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(18, 4, 84, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(19, 4, 110, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(20, 4, 101, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(21, 4, 104, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(22, 4, 96, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(23, 4, 80, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(24, 5, 127, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(25, 5, 134, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(26, 5, 128, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(27, 5, 142, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(28, 5, 124, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(29, 5, 148, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(30, 6, 118, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(31, 6, 142, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(32, 6, 127, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(33, 6, 147, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(34, 6, 136, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(35, 6, 146, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(36, 6, 131, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(37, 6, 127, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(38, 6, 147, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(39, 7, 157, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(40, 7, 186, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(41, 7, 160, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(42, 8, 157, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(43, 8, 157, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(44, 8, 163, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(45, 9, 179, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(46, 10, 166, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(47, 10, 193, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(48, 10, 183, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(49, 10, 188, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(50, 11, 227, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(51, 11, 196, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(52, 12, 214, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(53, 12, 198, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(54, 12, 217, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(55, 12, 222, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(56, 13, 216, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(57, 13, 196, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(58, 13, 215, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(59, 13, 214, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(60, 13, 196, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(61, 13, 217, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(62, 13, 203, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(63, 13, 214, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(64, 13, 195, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(65, 13, 218, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(66, 13, 209, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(67, 13, 208, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(68, 14, 211, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(69, 14, 214, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(70, 14, 219, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(71, 14, 223, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(72, 14, 214, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(73, 15, 223, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(74, 15, 194, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(75, 15, 204, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(76, 15, 203, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(77, 15, 195, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(78, 15, 206, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(79, 15, 222, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(80, 15, 194, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(81, 15, 225, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(82, 16, 241, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(83, 16, 243, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(84, 16, 242, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(85, 17, 249, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(86, 17, 240, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(87, 17, 257, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(88, 17, 243, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(89, 17, 256, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(90, 17, 252, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(91, 17, 248, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(92, 17, 236, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(93, 17, 229, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(94, 17, 233, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(95, 18, 248, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(96, 18, 254, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(97, 18, 228, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(98, 18, 246, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(99, 18, 231, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(100, 18, 228, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(101, 18, 240, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(102, 18, 235, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(103, 18, 254, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(104, 18, 251, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(105, 18, 234, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(106, 19, 244, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(107, 19, 247, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(108, 19, 257, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(109, 19, 250, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(110, 19, 239, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(111, 19, 259, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(112, 19, 247, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(113, 19, 256, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(114, 20, 273, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(115, 20, 273, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(116, 20, 267, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(117, 20, 276, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(118, 20, 275, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(119, 20, 261, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(120, 20, 274, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(121, 20, 276, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(122, 20, 263, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(123, 20, 268, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(124, 20, 281, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(125, 20, 271, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(126, 21, 297, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(127, 21, 294, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(128, 21, 291, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(129, 21, 295, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(130, 21, 300, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(131, 22, 293, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(132, 22, 284, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(133, 23, 293, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(134, 23, 285, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(135, 23, 297, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(136, 24, 289, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(137, 25, 286, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(138, 25, 296, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(139, 25, 288, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(140, 25, 290, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(141, 25, 297, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(142, 26, 306, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(143, 26, 316, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(144, 26, 311, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(145, 26, 305, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(146, 26, 313, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(147, 26, 309, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(148, 26, 311, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(149, 26, 307, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(150, 27, 314, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(151, 27, 312, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(152, 28, 310, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(153, 28, 307, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(154, 28, 315, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(155, 28, 314, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(156, 29, 315, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(157, 29, 310, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(158, 29, 315, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(159, 29, 305, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(160, 29, 307, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(161, 29, 306, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(162, 29, 308, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(163, 29, 312, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(164, 29, 312, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(165, 29, 308, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(166, 30, 307, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(167, 30, 308, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(168, 30, 314, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(169, 31, 317, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(170, 31, 322, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(171, 31, 330, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(172, 31, 332, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(173, 31, 326, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(174, 31, 324, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(175, 31, 328, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(176, 32, 337, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(177, 32, 339, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(178, 33, 338, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(179, 33, 351, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(180, 33, 349, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(181, 33, 339, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(182, 33, 351, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(183, 33, 350, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(184, 34, 366, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(185, 34, 355, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(186, 34, 353, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(187, 34, 356, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(188, 34, 360, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(189, 34, 353, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(190, 35, 371, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(191, 35, 361, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(192, 36, 354, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(193, 36, 366, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(194, 36, 365, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(195, 36, 371, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(196, 36, 371, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(197, 36, 354, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(198, 36, 364, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(199, 36, 363, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(200, 36, 367, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(201, 36, 367, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(202, 36, 360, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(203, 36, 367, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(204, 37, 362, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(205, 37, 354, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(206, 37, 353, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(207, 37, 360, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(208, 38, 376, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(209, 38, 415, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(210, 38, 383, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(211, 38, 405, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(212, 38, 396, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(213, 38, 373, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(214, 38, 374, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(215, 38, 377, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(216, 38, 380, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(217, 38, 385, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(218, 38, 392, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(219, 38, 382, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(220, 38, 392, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(221, 38, 417, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(222, 38, 402, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(223, 39, 401, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(224, 39, 394, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(225, 39, 383, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(226, 39, 391, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(227, 39, 404, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(228, 40, 386, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(229, 40, 379, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(230, 40, 410, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(231, 40, 375, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(232, 40, 385, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(233, 40, 407, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(234, 41, 417, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(235, 41, 414, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(236, 41, 396, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(237, 41, 384, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(238, 42, 385, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(239, 42, 415, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(240, 42, 375, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(241, 42, 417, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(242, 42, 417, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(243, 42, 413, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(244, 42, 384, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(245, 42, 409, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(246, 42, 400, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(247, 42, 405, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(248, 42, 385, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(249, 42, 383, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(250, 42, 412, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(251, 43, 440, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(252, 43, 443, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(253, 43, 430, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(254, 43, 449, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(255, 44, 421, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(256, 44, 440, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(257, 44, 439, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(258, 44, 434, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(259, 44, 424, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(260, 45, 457, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(261, 45, 485, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(262, 45, 458, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(263, 45, 492, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(264, 45, 460, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(265, 45, 463, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(266, 46, 479, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(267, 46, 458, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(268, 46, 480, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(269, 46, 480, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(270, 47, 475, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(271, 48, 470, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(272, 49, 459, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(273, 49, 464, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(274, 50, 495, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(275, 50, 505, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(276, 50, 495, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(277, 50, 503, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(278, 50, 497, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(279, 50, 504, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(280, 50, 505, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(281, 50, 502, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(282, 51, 498, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(283, 51, 494, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(284, 51, 503, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(285, 51, 493, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(286, 51, 507, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(287, 51, 498, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(288, 51, 493, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(289, 51, 502, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(290, 51, 494, '2023-01-06 22:26:38', '2023-01-06 22:26:38'),
(291, 51, 500, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(292, 51, 504, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(293, 51, 500, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(294, 51, 493, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(295, 52, 495, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(296, 52, 507, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(297, 52, 504, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(298, 52, 506, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(299, 52, 495, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(300, 52, 496, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(301, 52, 505, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(302, 52, 493, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(303, 52, 504, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(304, 53, 494, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(305, 54, 504, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(306, 54, 493, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(307, 54, 504, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(308, 54, 495, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(309, 54, 500, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(310, 54, 493, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(311, 54, 501, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(312, 54, 507, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(313, 54, 494, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(314, 54, 498, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(315, 54, 495, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(316, 55, 516, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(317, 55, 509, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(318, 55, 518, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(319, 55, 510, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(320, 55, 521, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(321, 56, 523, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(322, 56, 520, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(323, 57, 528, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(324, 57, 529, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(325, 57, 528, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(326, 57, 531, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(327, 58, 533, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(328, 58, 526, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(329, 58, 533, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(330, 58, 527, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(331, 59, 540, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(332, 60, 538, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(333, 60, 550, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(334, 60, 542, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(335, 60, 541, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(336, 60, 537, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(337, 60, 552, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(338, 60, 544, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(339, 61, 550, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(340, 61, 551, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(341, 61, 547, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(342, 61, 548, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(343, 61, 547, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(344, 61, 540, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(345, 61, 545, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(346, 61, 549, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(347, 61, 551, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(348, 61, 551, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(349, 62, 551, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(350, 62, 538, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(351, 62, 545, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(352, 63, 541, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(353, 64, 561, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(354, 64, 557, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(355, 65, 569, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(356, 65, 557, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(357, 66, 563, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(358, 66, 575, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(359, 66, 563, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(360, 66, 553, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(361, 67, 575, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(362, 67, 565, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(363, 67, 557, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(364, 67, 570, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(365, 68, 594, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(366, 68, 595, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(367, 68, 586, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(368, 68, 584, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(369, 69, 593, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(370, 69, 590, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(371, 69, 584, '2023-01-06 22:26:39', '2023-01-06 22:26:39'),
(372, 69, 597, '2023-01-06 22:26:39', '2023-01-06 22:26:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orphan_crs`
--

CREATE TABLE `orphan_crs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `competition_recommendation_id` bigint(20) UNSIGNED NOT NULL,
  `orphan_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orphan_crs`
--

INSERT INTO `orphan_crs` (`id`, `competition_recommendation_id`, `orphan_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 344, 'Illo qui qui praesentium sed quisquam.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(2, 1, 337, 'Illum enim quae fugiat ea voluptatem.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(3, 1, 338, 'Explicabo rem dolores quo est.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(4, 1, 345, 'Quaerat autem quos quas soluta facilis eos.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(5, 1, 351, 'Quos a nihil atque odio expedita voluptatibus.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(6, 2, 449, 'Neque molestiae voluptatum officiis corrupti.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(7, 2, 453, 'Nihil odit ipsa voluptatem.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(8, 2, 436, 'Ex quo doloremque non aperiam cumque rerum hic.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(9, 2, 435, 'Cum a quaerat et quos.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(10, 2, 424, 'Ipsam ut nobis labore aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(11, 2, 425, 'Ut totam voluptatem dolores consectetur.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(12, 2, 420, 'Possimus aut officia optio aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(13, 3, 276, 'Laboriosam illo fuga perferendis est.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(14, 3, 270, 'Asperiores quas laboriosam et officiis dicta.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(15, 3, 268, 'Sed accusantium aut dicta quae.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(16, 4, 494, 'Est quia eius delectus minima quod.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(17, 4, 504, 'Vel reiciendis at veniam praesentium.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(18, 4, 507, 'Nam nesciunt esse necessitatibus perspiciatis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(19, 4, 500, 'Qui officiis et hic id fugit.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(20, 5, 97, 'Recusandae molestiae aperiam iure sunt.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(21, 5, 106, 'Est et similique non reiciendis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(22, 5, 103, 'Sunt reiciendis magnam libero qui.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(23, 5, 105, 'Qui velit cum odio unde.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(24, 5, 78, 'Assumenda et ut sequi sapiente vel quis aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(25, 6, 489, 'Qui atque nisi architecto sapiente ut dolorum.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(26, 6, 485, 'Dolorem dignissimos rem praesentium non.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(27, 6, 475, 'Corrupti qui aperiam temporibus ipsam.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(28, 6, 457, 'Ex ut ea perferendis et.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(29, 7, 505, 'Quos sit saepe aut rerum a.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(30, 7, 497, 'Vel cumque quod dolores rerum explicabo nostrum.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(31, 8, 403, 'Eaque beatae quo ut eius blanditiis sit nihil.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(32, 8, 405, 'Sit eos ut vitae dolor.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(33, 8, 399, 'Voluptatem nisi omnis numquam tempore.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(34, 9, 306, 'Laboriosam suscipit tempora est sint.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(35, 9, 316, 'Non odio dolorem quis atque hic ipsa et aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(36, 9, 308, 'Numquam libero officiis est labore.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(37, 10, 58, 'Labore non et quam nam corporis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(38, 10, 47, 'Id facere quia adipisci fuga enim hic.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(39, 10, 56, 'Voluptatem ut eius corrupti rerum non et.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(40, 10, 60, 'Ducimus et reiciendis a aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(41, 10, 59, 'Non ut est aut est.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(42, 10, 71, 'Hic est in quisquam explicabo adipisci quas quo.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(43, 10, 43, 'Enim neque et sunt quidem.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(44, 10, 42, 'Sed similique facere beatae.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(45, 11, 192, 'Corporis accusantium similique quia ex dolorum.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(46, 11, 191, 'Sunt hic facilis eum consequatur.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(47, 11, 165, 'Ut id blanditiis voluptatem nam nisi.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(48, 11, 153, 'Rem eos sunt ab ipsam id quisquam.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(49, 12, 286, 'Ipsam labore animi ut et.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(50, 12, 296, 'Ut in nemo odit provident rerum corrupti.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(51, 12, 286, 'Impedit accusamus debitis soluta.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(52, 13, 166, 'Iure impedit nemo necessitatibus aut ut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(53, 13, 158, 'Quis adipisci ea excepturi ipsa velit inventore.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(54, 13, 183, 'Rerum quos non eum.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(55, 13, 163, 'Deserunt dolor consequuntur et sint.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(56, 13, 169, 'Quo maxime mollitia non ut doloremque quidem.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(57, 13, 179, 'Iste ut voluptates nihil vitae.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(58, 13, 193, 'Fugit et atque sit magnam ut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(59, 13, 158, 'Et est non eum saepe officiis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(60, 13, 188, 'Consequatur qui dolorem aut aut reprehenderit.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(61, 13, 188, 'Est saepe cumque necessitatibus qui similique.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(62, 14, 166, 'Dolorem est omnis animi qui officiis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(63, 14, 174, 'Sint dolores sapiente distinctio et similique.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(64, 14, 161, 'Optio neque architecto tempore illo.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(65, 14, 157, 'Ratione est sequi blanditiis hic.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(66, 15, 532, 'Error iure blanditiis dolores.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(67, 15, 524, 'Itaque magnam modi iure repudiandae dignissimos.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(68, 15, 533, 'Placeat voluptatem in et ullam consectetur dicta.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(69, 15, 528, 'Et eius voluptate reiciendis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(70, 15, 529, 'Iusto sed aliquam ex et dolores sit.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(71, 15, 535, 'Omnis magnam rem reiciendis velit et fugiat.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(72, 15, 527, 'Aut occaecati dolor voluptas. Eos qui sit aut.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(73, 16, 413, 'Accusantium nam quod maiores nobis ut occaecati.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(74, 16, 374, 'Optio est quod rerum iusto distinctio rem atque.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(75, 16, 379, 'Officiis temporibus nihil quibusdam molestiae.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(76, 16, 402, 'Est vitae soluta et ut voluptatem at voluptates.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(77, 17, 298, 'Pariatur et facilis commodi aspernatur.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(78, 17, 294, 'Ad et rerum aspernatur.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(79, 17, 289, 'Quia voluptates sunt pariatur maxime.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(80, 17, 288, 'Iure quia nemo in voluptas natus.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(81, 17, 285, 'Inventore et eos suscipit voluptatem quod ea.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(82, 17, 293, 'Expedita dicta id corrupti tempore sed quasi qui.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(83, 18, 306, 'Quia sit at qui explicabo incidunt dolores.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(84, 18, 309, 'Tenetur omnis deleniti architecto aut repellat.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(85, 18, 305, 'Voluptate nesciunt quis quasi facere facilis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(86, 18, 310, 'Ut quo praesentium qui eligendi.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(87, 18, 305, 'Assumenda qui sint excepturi qui nulla fugit.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(88, 19, 275, 'Veritatis qui quo unde enim nobis pariatur.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(89, 19, 275, 'Aperiam eaque sit ratione.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(90, 20, 523, 'Sit quia explicabo eum qui eius a est.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(91, 20, 514, 'Officiis ea non sit harum.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(92, 20, 508, 'Optio quia a velit voluptatibus.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(93, 20, 517, 'Quaerat sed aut corporis autem nisi perferendis.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(94, 20, 508, 'Et porro culpa esse eos cumque.', '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(95, 20, 514, 'Voluptates cumque maxime qui provident qui.', '2023-01-06 22:26:40', '2023-01-06 22:26:40');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9iMI6zFFazPKbLS454MJhkG1UTk0ncxkYI4CQUoM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE9KWVZtc3JoeEV4MXl0MmNxYmRPSFo2enZaVkFNQ3pXRFdRQXl0eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673073410);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `name`, `photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Chess', 'https://asset.kompas.com/crops/BYiXVrkrI5M3BqjkodmlHRgIcgE=/0x0:6000x4000/750x500/data/photo/2021/03/23/6059de3703046.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(2, 'Swimming', 'https://sportsmatik.com/uploads/matik-sports-corner/matik-know-how/swimming1_1562582117.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(3, 'Boxing', 'https://commonwealthgames.com.au/wp-content/uploads/2022_08_02-Taha-Ahmad.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(4, 'Drawing', 'https://s32625.pcdn.co/wp-content/uploads/2017/11/GettyImages-628064782_drawing-habits-1024x683.jpg.optimal.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(5, 'Singing', 'https://cdn.mos.cms.futurecdn.net/YkR3EXxwPRhd8q8sGahCJc.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(6, 'Painting', 'https://mymodernmet.com/wp/wp-content/uploads/2018/05/painting-ideas-3-1.jpg', '2023-01-06 22:26:36', '2023-01-06 22:26:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `snap_token` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('pending','complete','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `snap_token`, `amount`, `status`, `description`, `to_user_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 3362985, 'pending', 'Pembayaran kursus oleh CV Saefullah (Persero) Tbk', 36, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(2, 7, NULL, 2003386, 'pending', 'Pembayaran kursus oleh Yayasan Aryani Utama Tbk', 22, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(3, 8, NULL, 1807846, 'canceled', 'Pembayaran kursus oleh CV Hutasoit Nababan Tbk', 47, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(4, 8, NULL, 1618266, 'pending', 'Pembayaran kursus oleh CV Hutasoit Nababan Tbk', 39, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(5, 9, NULL, 2374530, 'complete', 'Pembayaran kursus oleh PD Tampubolon Padmasari (Persero) Tbk', 10, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(6, 9, NULL, 1242976, 'pending', 'Pembayaran kursus oleh PD Tampubolon Padmasari (Persero) Tbk', 34, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(7, 12, NULL, 2284511, 'canceled', 'Pembayaran kursus oleh PJ Halimah Safitri', 51, '2023-01-06 22:26:36', '2023-01-06 22:26:36'),
(8, 12, NULL, 2299976, 'pending', 'Pembayaran kursus oleh PJ Halimah Safitri', 49, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(9, 12, NULL, 1091987, 'complete', 'Pembayaran kursus oleh PJ Halimah Safitri', 46, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(10, 12, NULL, 2774604, 'complete', 'Pembayaran kursus oleh PJ Halimah Safitri', 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(11, 13, NULL, 63496, 'canceled', 'Pembayaran kursus oleh Perum Purwanti', 20, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(12, 13, NULL, 1778445, 'pending', 'Pembayaran kursus oleh Perum Purwanti', 33, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(13, 13, NULL, 1650642, 'pending', 'Pembayaran kursus oleh Perum Purwanti', 47, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(14, 13, NULL, 848595, 'canceled', 'Pembayaran kursus oleh Perum Purwanti', 45, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(15, 13, NULL, 2458701, 'canceled', 'Pembayaran kursus oleh Perum Purwanti', 22, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(16, 15, NULL, 3124022, 'pending', 'Pembayaran kursus oleh CV Namaga', 43, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(17, 15, NULL, 1187265, 'canceled', 'Pembayaran kursus oleh CV Namaga', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(18, 15, NULL, 1712631, 'canceled', 'Pembayaran kursus oleh CV Namaga', 39, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(19, 15, NULL, 3095685, 'complete', 'Pembayaran kursus oleh CV Namaga', 11, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(20, 16, NULL, 2269917, 'pending', 'Pembayaran kursus oleh PD Maryadi (Persero) Tbk', 5, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(21, 17, NULL, 2664432, 'pending', 'Pembayaran kursus oleh PJ Saputra Pudjiastuti Tbk', 14, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(22, 17, NULL, 1723428, 'complete', 'Pembayaran kursus oleh PJ Saputra Pudjiastuti Tbk', 28, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(23, 17, NULL, 1783674, 'canceled', 'Pembayaran kursus oleh PJ Saputra Pudjiastuti Tbk', 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(24, 17, NULL, 1572345, 'complete', 'Pembayaran kursus oleh PJ Saputra Pudjiastuti Tbk', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(25, 17, NULL, 2873697, 'complete', 'Pembayaran kursus oleh PJ Saputra Pudjiastuti Tbk', 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(26, 18, NULL, 981408, 'pending', 'Pembayaran kursus oleh CV Nugroho Laksita', 6, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(27, 18, NULL, 721255, 'canceled', 'Pembayaran kursus oleh CV Nugroho Laksita', 27, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(28, 18, NULL, 419592, 'pending', 'Pembayaran kursus oleh CV Nugroho Laksita', 5, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(29, 18, NULL, 672975, 'complete', 'Pembayaran kursus oleh CV Nugroho Laksita', 11, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(30, 18, NULL, 1962084, 'canceled', 'Pembayaran kursus oleh CV Nugroho Laksita', 14, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(31, 19, NULL, 325296, 'canceled', 'Pembayaran kursus oleh PD Lazuardi Aryani', 37, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(32, 21, NULL, 1614186, 'pending', 'Pembayaran kursus oleh PD Wijayanti Prasetyo (Persero) Tbk', 6, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(33, 21, NULL, 1370070, 'pending', 'Pembayaran kursus oleh PD Wijayanti Prasetyo (Persero) Tbk', 20, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(34, 23, NULL, 587016, 'pending', 'Pembayaran kursus oleh Yayasan Lailasari Marpaung (Persero) Tbk', 5, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(35, 23, NULL, 1889266, 'pending', 'Pembayaran kursus oleh Yayasan Lailasari Marpaung (Persero) Tbk', 49, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(36, 23, NULL, 3047868, 'pending', 'Pembayaran kursus oleh Yayasan Lailasari Marpaung (Persero) Tbk', 40, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(37, 23, NULL, 2698019, 'pending', 'Pembayaran kursus oleh Yayasan Lailasari Marpaung (Persero) Tbk', 43, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(38, 24, NULL, 731544, 'canceled', 'Pembayaran kursus oleh Perum Irawan', 28, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(39, 24, NULL, 1933633, 'pending', 'Pembayaran kursus oleh Perum Irawan', 5, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(40, 24, NULL, 1515105, 'pending', 'Pembayaran kursus oleh Perum Irawan', 47, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(41, 24, NULL, 871374, 'pending', 'Pembayaran kursus oleh Perum Irawan', 39, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(42, 24, NULL, 475433, 'pending', 'Pembayaran kursus oleh Perum Irawan', 40, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(43, 26, NULL, 444472, 'pending', 'Pembayaran kursus oleh CV Riyanti Saputra', 20, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(44, 26, NULL, 1888164, 'pending', 'Pembayaran kursus oleh CV Riyanti Saputra', 5, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(45, 29, NULL, 388232, 'canceled', 'Pembayaran kursus oleh Perum Usada', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(46, 29, NULL, 1894592, 'canceled', 'Pembayaran kursus oleh Perum Usada', 6, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(47, 29, NULL, 2491749, 'complete', 'Pembayaran kursus oleh Perum Usada', 3, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(48, 29, NULL, 807093, 'complete', 'Pembayaran kursus oleh Perum Usada', 6, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(49, 29, NULL, 379392, 'complete', 'Pembayaran kursus oleh Perum Usada', 4, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(50, 30, NULL, 1493438, 'pending', 'Pembayaran kursus oleh PJ Purnawati Budiman', 47, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(51, 30, NULL, 807570, 'canceled', 'Pembayaran kursus oleh PJ Purnawati Budiman', 11, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(52, 30, NULL, 388232, 'canceled', 'Pembayaran kursus oleh PJ Purnawati Budiman', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(53, 30, NULL, 372330, 'pending', 'Pembayaran kursus oleh PJ Purnawati Budiman', 25, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(54, 30, NULL, 1840140, 'pending', 'Pembayaran kursus oleh PJ Purnawati Budiman', 6, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(55, 31, NULL, 1960434, 'pending', 'Pembayaran kursus oleh PD Sitorus Tbk', 3, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(56, 31, NULL, 3944820, 'pending', 'Pembayaran kursus oleh PD Sitorus Tbk', 38, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(57, 32, NULL, 3157407, 'pending', 'Pembayaran kursus oleh Fa Ramadan Mandasari (Persero) Tbk', 37, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(58, 32, NULL, 3388268, 'pending', 'Pembayaran kursus oleh Fa Ramadan Mandasari (Persero) Tbk', 39, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(59, 35, NULL, 1391104, 'complete', 'Pembayaran kursus oleh CV Widiastuti Winarsih', 4, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(60, 35, NULL, 339595, 'pending', 'Pembayaran kursus oleh CV Widiastuti Winarsih', 40, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(61, 35, NULL, 2240676, 'pending', 'Pembayaran kursus oleh CV Widiastuti Winarsih', 39, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(62, 35, NULL, 1706160, 'pending', 'Pembayaran kursus oleh CV Widiastuti Winarsih', 14, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(63, 35, NULL, 300975, 'complete', 'Pembayaran kursus oleh CV Widiastuti Winarsih', 43, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(64, 42, NULL, 1619620, 'pending', 'Pembayaran kursus oleh Perum Kusmawati Handayani', 47, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(65, 42, NULL, 2347568, 'complete', 'Pembayaran kursus oleh Perum Kusmawati Handayani', 11, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(66, 42, NULL, 485290, 'complete', 'Pembayaran kursus oleh Perum Kusmawati Handayani', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(67, 42, NULL, 810208, 'pending', 'Pembayaran kursus oleh Perum Kusmawati Handayani', 44, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(68, 50, NULL, 1455875, 'pending', 'Pembayaran kursus oleh PT Suryatmi', 10, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(69, 50, NULL, 1047872, 'pending', 'Pembayaran kursus oleh PT Suryatmi', 49, '2023-01-06 22:26:37', '2023-01-06 22:26:37'),
(70, 18, NULL, 106087, 'canceled', 'Donasi kepada CV Nugroho Laksita', 18, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(71, 16, NULL, 15567, 'pending', 'Donasi kepada PD Maryadi (Persero) Tbk', 16, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(72, 24, NULL, 125962, 'complete', 'Donasi kepada Perum Irawan', 24, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(73, 12, NULL, 220994, 'pending', 'Donasi kepada PJ Halimah Safitri', 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(74, 29, NULL, 298286, 'pending', 'Donasi kepada Perum Usada', 29, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(75, 32, NULL, 118234, 'canceled', 'Donasi kepada Fa Ramadan Mandasari (Persero) Tbk', 32, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(76, 8, NULL, 245126, 'complete', 'Donasi kepada CV Hutasoit Nababan Tbk', 8, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(77, 31, NULL, 19610, 'canceled', 'Donasi kepada PD Sitorus Tbk', 31, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(78, 12, NULL, 54398, 'pending', 'Donasi kepada PJ Halimah Safitri', 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(79, 17, NULL, 164131, 'complete', 'Donasi kepada PJ Saputra Pudjiastuti Tbk', 17, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(80, 32, NULL, 75311, 'complete', 'Donasi kepada Fa Ramadan Mandasari (Persero) Tbk', 32, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(81, 23, NULL, 12350, 'complete', 'Donasi kepada Yayasan Lailasari Marpaung (Persero) Tbk', 23, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(82, 19, NULL, 217246, 'pending', 'Donasi kepada PD Lazuardi Aryani', 19, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(83, 26, NULL, 166549, 'complete', 'Donasi kepada CV Riyanti Saputra', 26, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(84, 12, NULL, 227418, 'pending', 'Donasi kepada PJ Halimah Safitri', 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(85, 42, NULL, 34261, 'pending', 'Donasi kepada Perum Kusmawati Handayani', 42, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(86, 9, NULL, 198210, 'canceled', 'Donasi kepada PD Tampubolon Padmasari (Persero) Tbk', 9, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(87, 18, NULL, 259926, 'pending', 'Donasi kepada CV Nugroho Laksita', 18, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(88, 18, NULL, 145316, 'canceled', 'Donasi kepada CV Nugroho Laksita', 18, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(89, 29, NULL, 138285, 'pending', 'Donasi kepada Perum Usada', 29, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(90, 24, NULL, 113841, 'pending', 'Donasi kepada Perum Irawan', 24, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(91, 8, NULL, 32835, 'complete', 'Donasi kepada CV Hutasoit Nababan Tbk', 8, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(92, 13, NULL, 215930, 'canceled', 'Donasi kepada Perum Purwanti', 13, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(93, 13, NULL, 225239, 'complete', 'Donasi kepada Perum Purwanti', 13, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(94, 42, NULL, 264231, 'complete', 'Donasi kepada Perum Kusmawati Handayani', 42, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(95, 7, NULL, 14225, 'canceled', 'Donasi kepada Yayasan Aryani Utama Tbk', 7, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(96, 21, NULL, 129931, 'pending', 'Donasi kepada PD Wijayanti Prasetyo (Persero) Tbk', 21, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(97, 21, NULL, 289971, 'pending', 'Donasi kepada PD Wijayanti Prasetyo (Persero) Tbk', 21, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(98, 21, NULL, 245656, 'pending', 'Donasi kepada PD Wijayanti Prasetyo (Persero) Tbk', 21, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(99, 32, NULL, 87860, 'complete', 'Donasi kepada Fa Ramadan Mandasari (Persero) Tbk', 32, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(100, 12, NULL, 202835, 'pending', 'Donasi kepada PJ Halimah Safitri', 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(101, 18, NULL, 151727, 'complete', 'Donasi kepada CV Nugroho Laksita', 18, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(102, 16, NULL, 247726, 'canceled', 'Donasi kepada PD Maryadi (Persero) Tbk', 16, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(103, 7, NULL, 295745, 'complete', 'Donasi kepada Yayasan Aryani Utama Tbk', 7, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(104, 21, NULL, 211331, 'pending', 'Donasi kepada PD Wijayanti Prasetyo (Persero) Tbk', 21, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(105, 35, NULL, 169606, 'pending', 'Donasi kepada CV Widiastuti Winarsih', 35, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(106, 50, NULL, 111828, 'canceled', 'Donasi kepada PT Suryatmi', 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(107, 21, NULL, 135813, 'canceled', 'Donasi kepada PD Wijayanti Prasetyo (Persero) Tbk', 21, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(108, 32, NULL, 91631, 'canceled', 'Donasi kepada Fa Ramadan Mandasari (Persero) Tbk', 32, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(109, 30, NULL, 91981, 'canceled', 'Donasi kepada PJ Purnawati Budiman', 30, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(110, 13, NULL, 30065, 'pending', 'Donasi kepada Perum Purwanti', 13, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(111, 12, NULL, 255992, 'pending', 'Donasi kepada PJ Halimah Safitri', 12, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(112, 35, NULL, 253871, 'canceled', 'Donasi kepada CV Widiastuti Winarsih', 35, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(113, 50, NULL, 98803, 'pending', 'Donasi kepada PT Suryatmi', 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(114, 50, NULL, 67743, 'canceled', 'Donasi kepada PT Suryatmi', 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(115, 2, NULL, 56737, 'complete', 'Donasi kepada CV Saefullah (Persero) Tbk', 2, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(116, 19, NULL, 83943, 'complete', 'Donasi kepada PD Lazuardi Aryani', 19, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(117, 16, NULL, 291752, 'pending', 'Donasi kepada PD Maryadi (Persero) Tbk', 16, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(118, 50, NULL, 210389, 'complete', 'Donasi kepada PT Suryatmi', 50, '2023-01-06 22:26:40', '2023-01-06 22:26:40'),
(119, 16, NULL, 278005, 'pending', 'Donasi kepada PD Maryadi (Persero) Tbk', 16, '2023-01-06 22:26:40', '2023-01-06 22:26:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutors`
--

CREATE TABLE `tutors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tutors`
--

INSERT INTO `tutors` (`id`, `user_id`, `bank_account`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, '3955171986', 'Quis nemo fugit soluta ipsa debitis. Modi cupiditate qui est atque enim beatae enim. Temporibus maxime aperiam adipisci qui. Cum a ea fugiat cumque. Aut nesciunt debitis assumenda nulla nihil.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(2, 4, '5775605879', 'Quo vitae soluta officia quisquam. Cupiditate repellat veniam totam ipsam sed rem et. Quia placeat corporis at minima quod. Aut iure ipsam excepturi facere.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(3, 5, '9476861619', 'Distinctio odio deserunt corporis commodi id minima. Reprehenderit et harum tempore in repellendus nobis. Ad voluptatem ut ab unde reiciendis.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(4, 6, '7377638632', 'Rem quidem necessitatibus aspernatur et ipsam non est. Doloremque aut optio iure voluptas sunt molestiae.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(5, 10, '8998368746', 'Voluptas unde eos autem excepturi esse quia soluta voluptatem. Et saepe dolor et in at. Temporibus minus molestiae ad ex et enim. Quia quia animi earum quisquam.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(6, 11, '3473947989', 'Quia ducimus necessitatibus quam voluptas officiis quod reiciendis. Nihil rerum architecto sed ut dolorem. Eius laborum delectus sint eos et non impedit.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(7, 14, '1665047722', 'Est ad harum voluptate atque id commodi. Placeat neque quod ut velit eos et et. Itaque dicta occaecati similique. Qui suscipit explicabo facere rerum numquam magnam enim.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(8, 20, '6067109832', 'Iste sed omnis possimus esse debitis. Accusantium est debitis a iusto magnam eum ipsam. Ad rerum ex laborum voluptate aliquid recusandae. Laboriosam vel ea ipsum repudiandae.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(9, 22, '6505077950', 'Dolores cupiditate aliquid quam et et rerum molestiae. Excepturi nihil qui blanditiis et nulla eligendi. Nihil ipsam praesentium vitae eius et dolores. Repellendus sit voluptas possimus est repellendus. Consectetur eum temporibus voluptas eius.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(10, 25, '3730667729', 'Dolor qui dolores dolores voluptas quia earum. Molestiae qui consectetur soluta dolorem nisi minus. Et modi distinctio laborum quis odit facilis. Animi sit quia quia aut.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(11, 27, '1724377402', 'Dolor tenetur modi deserunt. Placeat eum commodi praesentium eum temporibus. Quas nemo suscipit labore eaque qui nesciunt aspernatur.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(12, 28, '7425513939', 'Nam maiores mollitia aliquid praesentium voluptatem eius quibusdam. Ratione excepturi omnis illum nihil nihil magni sit. Possimus enim eos sapiente illum tempore dolorem. Officia velit aspernatur tempore et. Cumque cupiditate et et aliquid quidem.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(13, 33, '4135681497', 'Sit aut consequatur veritatis porro molestiae. Voluptatibus laborum reiciendis et quia ea magnam. Atque id non expedita quasi eaque tempore provident tempore. Odit dolorem veritatis eaque qui voluptatem provident.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(14, 34, '7397315208', 'Voluptatibus vero similique earum laudantium et fugiat aut. Omnis nihil cumque in voluptatem voluptas. Aut debitis voluptatem velit dolor nostrum. Non nesciunt aut exercitationem perspiciatis debitis. Quia quis numquam tempore.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(15, 36, '2505958346', 'Consequatur et dolor et sapiente. Dolores accusantium nostrum quis harum inventore. Iste natus ratione id adipisci voluptates ut consequatur. Quibusdam quibusdam eos consequatur eos. Autem ut aut blanditiis temporibus laudantium.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(16, 37, '1450476172', 'Laboriosam similique autem est. Blanditiis consequatur ea ratione praesentium commodi exercitationem sed molestiae. Porro culpa consectetur corporis eius animi quia. Sunt quia et ratione.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(17, 38, '8944636174', 'Error sed officia modi molestiae quisquam esse quia sed. Ea nostrum et asperiores molestias qui necessitatibus. Recusandae eos voluptatem vero. Odit nostrum aut debitis maiores beatae ea repudiandae.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(18, 39, '8770556240', 'Labore sint ut facilis nihil culpa facere. Nisi ab sunt veritatis est qui iusto expedita. Libero dolor labore omnis omnis debitis. Expedita dolorum nisi ullam non enim omnis fugit.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(19, 40, '2667063861', 'Eaque quia eligendi ducimus et dicta pariatur quasi praesentium. Ea sed enim et quia. Accusamus minus repellendus nesciunt et rem qui quis.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(20, 41, '6373257930', 'Eum blanditiis inventore velit quidem fugiat corrupti. Autem quo ut velit laboriosam veritatis dolor voluptatibus. Blanditiis autem magnam odit veniam nihil aliquid. Dolores tempora enim fugiat id.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(21, 43, '2460029153', 'Temporibus eum beatae natus aut blanditiis voluptatum architecto culpa. Vitae soluta porro voluptatem ad ea ducimus. Delectus minima qui voluptas esse officia consequatur commodi. Recusandae dolores alias quas sit odio iure.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(22, 44, '8424654216', 'Consequatur impedit quia sit quasi. Est voluptas qui itaque esse et nesciunt et nemo. Ea vero minima repellendus nisi.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(23, 45, '6563966098', 'Assumenda eum sed autem quod optio porro. Rem enim esse consequuntur et. Aliquid aut nisi quibusdam autem tempore aperiam.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(24, 46, '3630834643', 'Quam in sit eos rerum. Aut recusandae numquam nihil quaerat explicabo. Sint recusandae nisi nobis nesciunt et qui. Excepturi sint nemo molestias consequatur voluptatem fugit eum.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(25, 47, '4377439459', 'Qui tempora ut assumenda laboriosam totam. Recusandae tempore enim voluptas qui illo ipsa architecto error. Aut sequi tempora odit aperiam fuga repellat modi nihil.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(26, 48, '2421936332', 'Eum delectus voluptatum est vel minus voluptate. Vero possimus amet odio rerum omnis blanditiis. Ut ut modi aliquam inventore.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(27, 49, '6950044999', 'Voluptas ipsum sit unde qui ut aut minus quis. Consequatur et adipisci velit earum. Quae placeat accusamus eos quam. Sequi vitae sapiente iusto dicta quia provident.', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(28, 51, '4312992943', 'Quas omnis sunt provident pariatur fugiat id sunt voluptas. Tempore non ab quisquam quia omnis vel beatae est. Beatae excepturi corporis quaerat pariatur rerum.', '2023-01-06 22:26:33', '2023-01-06 22:26:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutor_day_time_ranges`
--

CREATE TABLE `tutor_day_time_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED NOT NULL,
  `day_time_range_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tutor_day_time_ranges`
--

INSERT INTO `tutor_day_time_ranges` (`id`, `tutor_id`, `day_time_range_id`, `created_at`, `updated_at`) VALUES
(1, 1, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(2, 1, 16, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(3, 1, 55, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(4, 1, 53, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(5, 1, 63, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(6, 1, 20, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(7, 1, 25, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(8, 1, 5, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(9, 2, 50, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(10, 2, 67, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(11, 2, 68, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(12, 2, 21, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(13, 2, 51, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(14, 2, 63, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(15, 2, 27, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(16, 3, 48, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(17, 3, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(18, 3, 35, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(19, 3, 40, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(20, 3, 56, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(21, 3, 38, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(22, 3, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(23, 3, 60, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(24, 3, 19, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(25, 3, 21, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(26, 3, 68, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(27, 3, 70, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(28, 3, 8, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(29, 3, 55, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(30, 3, 8, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(31, 3, 13, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(32, 4, 43, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(33, 4, 64, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(34, 4, 25, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(35, 4, 58, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(36, 4, 26, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(37, 4, 57, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(38, 4, 36, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(39, 4, 69, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(40, 4, 44, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(41, 4, 9, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(42, 4, 51, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(43, 4, 68, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(44, 4, 16, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(45, 4, 64, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(46, 4, 40, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(47, 4, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(48, 4, 38, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(49, 4, 7, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(50, 4, 12, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(51, 4, 67, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(52, 5, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(53, 5, 5, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(54, 5, 4, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(55, 5, 38, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(56, 5, 13, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(57, 5, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(58, 5, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(59, 5, 43, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(60, 5, 38, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(61, 6, 41, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(62, 6, 62, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(63, 6, 62, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(64, 7, 26, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(65, 7, 28, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(66, 7, 60, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(67, 7, 19, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(68, 7, 61, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(69, 7, 13, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(70, 7, 62, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(71, 8, 67, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(72, 8, 69, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(73, 8, 19, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(74, 8, 42, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(75, 8, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(76, 8, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(77, 9, 56, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(78, 9, 70, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(79, 9, 21, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(80, 9, 22, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(81, 9, 64, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(82, 9, 3, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(83, 9, 2, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(84, 9, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(85, 9, 9, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(86, 9, 36, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(87, 10, 29, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(88, 10, 9, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(89, 10, 47, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(90, 10, 9, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(91, 10, 4, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(92, 10, 37, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(93, 10, 52, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(94, 10, 34, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(95, 10, 38, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(96, 10, 63, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(97, 11, 9, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(98, 11, 39, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(99, 11, 8, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(100, 11, 24, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(101, 12, 40, '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(102, 12, 50, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(103, 12, 70, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(104, 12, 33, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(105, 12, 41, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(106, 12, 33, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(107, 12, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(108, 12, 34, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(109, 12, 41, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(110, 12, 2, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(111, 12, 2, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(112, 12, 26, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(113, 12, 55, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(114, 12, 2, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(115, 12, 61, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(116, 12, 38, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(117, 13, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(118, 13, 15, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(119, 13, 38, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(120, 13, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(121, 13, 49, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(122, 13, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(123, 13, 7, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(124, 13, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(125, 13, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(126, 13, 21, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(127, 13, 51, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(128, 14, 40, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(129, 14, 3, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(130, 14, 56, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(131, 14, 22, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(132, 14, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(133, 14, 32, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(134, 14, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(135, 14, 1, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(136, 14, 65, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(137, 14, 37, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(138, 14, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(139, 14, 60, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(140, 14, 16, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(141, 14, 20, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(142, 14, 67, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(143, 14, 64, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(144, 14, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(145, 15, 27, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(146, 15, 1, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(147, 15, 39, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(148, 15, 18, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(149, 15, 25, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(150, 15, 9, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(151, 15, 69, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(152, 15, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(153, 15, 53, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(154, 15, 40, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(155, 15, 36, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(156, 15, 23, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(157, 15, 25, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(158, 15, 7, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(159, 15, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(160, 15, 14, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(161, 15, 34, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(162, 15, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(163, 15, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(164, 15, 6, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(165, 16, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(166, 16, 7, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(167, 16, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(168, 16, 20, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(169, 16, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(170, 16, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(171, 16, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(172, 16, 64, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(173, 16, 69, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(174, 16, 20, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(175, 16, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(176, 16, 28, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(177, 16, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(178, 16, 44, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(179, 16, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(180, 16, 44, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(181, 17, 63, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(182, 17, 42, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(183, 17, 54, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(184, 17, 18, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(185, 17, 32, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(186, 17, 26, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(187, 17, 56, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(188, 17, 34, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(189, 17, 38, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(190, 17, 37, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(191, 17, 33, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(192, 17, 41, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(193, 17, 35, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(194, 17, 23, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(195, 17, 36, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(196, 17, 40, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(197, 17, 37, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(198, 18, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(199, 18, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(200, 18, 62, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(201, 18, 50, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(202, 18, 66, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(203, 18, 8, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(204, 18, 13, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(205, 18, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(206, 18, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(207, 18, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(208, 18, 15, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(209, 18, 45, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(210, 18, 38, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(211, 18, 54, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(212, 18, 32, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(213, 18, 46, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(214, 18, 69, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(215, 18, 19, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(216, 18, 31, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(217, 18, 24, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(218, 19, 68, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(219, 19, 34, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(220, 19, 58, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(221, 19, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(222, 19, 64, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(223, 19, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(224, 19, 25, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(225, 19, 55, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(226, 20, 25, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(227, 20, 39, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(228, 20, 30, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(229, 20, 46, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(230, 20, 41, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(231, 20, 11, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(232, 20, 4, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(233, 20, 16, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(234, 20, 42, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(235, 20, 51, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(236, 20, 46, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(237, 20, 59, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(238, 20, 35, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(239, 20, 39, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(240, 20, 22, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(241, 20, 26, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(242, 20, 29, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(243, 21, 33, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(244, 21, 21, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(245, 21, 19, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(246, 21, 33, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(247, 22, 19, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(248, 22, 13, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(249, 22, 68, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(250, 22, 40, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(251, 22, 31, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(252, 22, 46, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(253, 22, 37, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(254, 22, 4, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(255, 22, 43, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(256, 22, 57, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(257, 22, 1, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(258, 22, 22, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(259, 22, 38, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(260, 22, 35, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(261, 22, 58, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(262, 22, 14, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(263, 22, 70, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(264, 22, 13, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(265, 22, 31, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(266, 23, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(267, 23, 37, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(268, 23, 43, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(269, 23, 51, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(270, 23, 49, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(271, 23, 17, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(272, 23, 18, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(273, 23, 10, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(274, 24, 27, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(275, 24, 49, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(276, 24, 56, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(277, 24, 35, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(278, 24, 3, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(279, 24, 14, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(280, 24, 63, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(281, 24, 39, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(282, 24, 6, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(283, 24, 57, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(284, 24, 67, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(285, 24, 40, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(286, 24, 28, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(287, 24, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(288, 24, 55, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(289, 25, 28, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(290, 25, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(291, 25, 44, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(292, 25, 24, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(293, 25, 46, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(294, 25, 52, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(295, 25, 64, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(296, 25, 47, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(297, 25, 28, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(298, 25, 43, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(299, 25, 2, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(300, 25, 8, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(301, 25, 4, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(302, 25, 6, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(303, 26, 18, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(304, 26, 42, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(305, 26, 58, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(306, 26, 70, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(307, 26, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(308, 26, 19, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(309, 27, 6, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(310, 27, 56, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(311, 27, 61, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(312, 27, 61, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(313, 28, 7, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(314, 28, 62, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(315, 28, 5, '2023-01-06 22:26:34', '2023-01-06 22:26:34'),
(316, 28, 12, '2023-01-06 22:26:34', '2023-01-06 22:26:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','-') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('Pengurus Panti','Tutor','Admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_access` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `money`, `phone_number`, `gender`, `user_type`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `address`, `is_access`, `created_at`, `updated_at`) VALUES
(1, 'Martana', 'breanne.abbott@example.com', 0, '0294 5018 7341', '-', 'Admin', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1D6EmYkRbu', NULL, 'https://i.pravatar.cc/640?img=4', 'Psr. Barat No. 503, Administrasi Jakarta Pusat 62572, Gorontalo', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(2, 'Puspa', 'shany.morissette@example.net', 2643359, '(+62) 981 7320 8490', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6hn3IvKo2g', NULL, 'https://i.pravatar.cc/640?img=29', 'Gg. Baha No. 936, Malang 94451, Malut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(3, 'Maryanto', 'fkilback@example.net', 2683735, '(+62) 919 0447 999', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2HInlCT1Tn', NULL, 'https://i.pravatar.cc/640?img=9', 'Jr. Otto No. 847, Bau-Bau 44793, Kepri', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(4, 'Maman', 'mina.kerluke@example.com', 2260079, '(+62) 940 9482 007', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Y5V7r63lmI', NULL, 'https://i.pravatar.cc/640?img=65', 'Kpg. Cihampelas No. 930, Bekasi 79534, NTT', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(5, 'Mutia', 'gail42@example.org', 2149341, '023 3374 2958', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jz9zfIJkNO', NULL, 'https://i.pravatar.cc/640?img=47', 'Psr. Abdul No. 274, Binjai 16729, Sulut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(6, 'Jamal', 'jacquelyn47@example.org', 1824515, '(+62) 811 1133 322', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'i8ylJt04Vq', NULL, 'https://i.pravatar.cc/640?img=57', 'Jln. Imam No. 647, Sukabumi 89640, Sulsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(7, 'Siska', 'graham.curtis@example.org', 2537694, '0840 410 264', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MoTtbXFcEX', NULL, 'https://i.pravatar.cc/640?img=24', 'Psr. Kalimalang No. 469, Bontang 27272, NTT', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(8, 'Laswi', 'justyn58@example.net', 2837029, '(+62) 509 2270 0126', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'q1zip9WzeG', NULL, 'https://i.pravatar.cc/640?img=49', 'Dk. Laswi No. 927, Jambi 84512, Jabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(9, 'Parman', 'simonis.rodger@example.com', 619185, '0692 4073 005', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7zVttcGllq', NULL, 'https://i.pravatar.cc/640?img=60', 'Dk. Ikan No. 632, Cilegon 25404, Sumsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(10, 'Cakrawangsa', 'vince.marquardt@example.net', 2617737, '(+62) 637 2806 4489', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4n3EkhURv8', NULL, 'https://i.pravatar.cc/640?img=58', 'Jln. Bakaru No. 245, Kupang 78323, DKI', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(11, 'Karna', 'hayley.ziemann@example.net', 2020299, '0529 9394 831', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7mVJzlZo5J', NULL, 'https://i.pravatar.cc/640?img=1', 'Jln. Dipatiukur No. 851, Yogyakarta 37849, Sultra', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(12, 'Jumari', 'zaria.macejkovic@example.org', 1436057, '028 5629 6144', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DsveIX7TMX', NULL, 'https://i.pravatar.cc/640?img=65', 'Jr. Jayawijaya No. 207, Metro 77764, Bali', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(13, 'Daniswara', 'kulas.aurelio@example.com', 767275, '(+62) 994 4168 5364', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0PfXXmzNS7', NULL, 'https://i.pravatar.cc/640?img=46', 'Psr. Cemara No. 910, Tanjungbalai 82594, NTB', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(14, 'Jais', 'eturcotte@example.com', 1042982, '0319 5172 9164', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'x5sLJ2TS9X', NULL, 'https://i.pravatar.cc/640?img=23', 'Gg. Suniaraja No. 897, Batam 63758, Lampung', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(15, 'Danuja', 'iliana.herman@example.net', 1041405, '0659 1307 2704', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RJPX29F0MV', NULL, 'https://i.pravatar.cc/640?img=40', 'Gg. Uluwatu No. 800, Salatiga 11135, Sumsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(16, 'Jono', 'srippin@example.com', 108571, '0526 2699 884', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GxirbjduHq', NULL, 'https://i.pravatar.cc/640?img=11', 'Jln. Pacuan Kuda No. 923, Tarakan 46132, Banten', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(17, 'Ilyas', 'maegan.kuvalis@example.com', 2008040, '0214 7549 684', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NWzRMFSmcB', NULL, 'https://i.pravatar.cc/640?img=68', 'Gg. Halim No. 927, Palembang 68588, Sumsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(18, 'Nasrullah', 'barton.ebony@example.com', 2337523, '0289 1298 584', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wBMDrJolfw', NULL, 'https://i.pravatar.cc/640?img=49', 'Psr. Bayam No. 615, Serang 14588, Kalteng', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(19, 'Okto', 'tkshlerin@example.net', 2038777, '0906 0581 968', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uAg3XZET0c', NULL, 'https://i.pravatar.cc/640?img=63', 'Psr. Baja Raya No. 72, Jambi 98406, Sulut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(20, 'Cawisadi', 'elmore.rogahn@example.net', 876950, '(+62) 675 5477 999', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Mc5RduyhVw', NULL, 'https://i.pravatar.cc/640?img=65', 'Psr. Ciwastra No. 950, Solok 90708, Sulut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(21, 'Dian', 'cfarrell@example.com', 122185, '(+62) 732 4876 003', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mmG2vj7gFs', NULL, 'https://i.pravatar.cc/640?img=13', 'Ki. Radio No. 198, Probolinggo 26248, Jabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(22, 'Budi', 'pcorwin@example.com', 2945926, '(+62) 546 5113 2677', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HMHZrTukts', NULL, 'https://i.pravatar.cc/640?img=7', 'Jr. Bagis Utama No. 944, Pematangsiantar 85642, Aceh', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(23, 'Tania', 'fausto75@example.net', 788912, '0569 1357 9368', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WciFMx5mFF', NULL, 'https://i.pravatar.cc/640?img=9', 'Gg. Acordion No. 789, Cilegon 91186, Pabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(24, 'Widya', 'ava66@example.com', 369240, '0294 4227 561', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PAO0yd3hLH', NULL, 'https://i.pravatar.cc/640?img=55', 'Jln. Raden Saleh No. 992, Jambi 71014, Sulut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(25, 'Daliman', 'aurelie52@example.org', 1707002, '(+62) 621 7828 742', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'h3JZFNqcS1', NULL, 'https://i.pravatar.cc/640?img=49', 'Psr. K.H. Wahid Hasyim (Kopo) No. 106, Banjar 88388, Kaltara', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(26, 'Harjasa', 'francesca55@example.com', 1749207, '(+62) 24 6678 4249', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0i0RBrZHpD', NULL, 'https://i.pravatar.cc/640?img=61', 'Jln. Basoka Raya No. 734, Bukittinggi 11038, Sultra', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(27, 'Teguh', 'gwen.torp@example.org', 1785400, '0825 1152 9080', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'p1tLUpd3lb', NULL, 'https://i.pravatar.cc/640?img=8', 'Ki. Salam No. 931, Balikpapan 44564, Sulut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(28, 'Kenari', 'abbott.jodie@example.com', 1780323, '(+62) 751 3907 2924', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nLdQF7zhIi', NULL, 'https://i.pravatar.cc/640?img=13', 'Dk. Panjaitan No. 533, Mojokerto 13712, Malut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(29, 'Wasis', 'zhomenick@example.com', 1179251, '(+62) 25 4167 1522', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uTGgMXlxnH', NULL, 'https://i.pravatar.cc/640?img=36', 'Gg. Ciwastra No. 814, Subulussalam 38788, Riau', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(30, 'Gambira', 'krystina77@example.org', 1734919, '0893 7478 4982', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yVGh5sgjZX', NULL, 'https://i.pravatar.cc/640?img=29', 'Ki. Merdeka No. 216, Sukabumi 44696, Kalteng', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(31, 'Salsabila', 'celine14@example.net', 1318403, '(+62) 601 4583 174', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'C3SACmzDTe', NULL, 'https://i.pravatar.cc/640?img=58', 'Kpg. Pattimura No. 266, Blitar 11731, Jabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(32, 'Kani', 'rebecca.conroy@example.org', 2642119, '(+62) 591 5068 3485', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'oQ8J5RKJw8', NULL, 'https://i.pravatar.cc/640?img=61', 'Jln. Sutarto No. 304, Solok 23232, Banten', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(33, 'Amalia', 'kaylee18@example.net', 162838, '(+62) 22 1095 062', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ejSbxhgeB4', NULL, 'https://i.pravatar.cc/640?img=2', 'Kpg. Ters. Jakarta No. 632, Serang 40458, Bengkulu', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(34, 'Ghani', 'hartmann.lurline@example.org', 134521, '0967 1296 161', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BwqLp1kP8V', NULL, 'https://i.pravatar.cc/640?img=44', 'Gg. Lembong No. 628, Blitar 58953, Sumut', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(35, 'Uda', 'fmcdermott@example.com', 952554, '0823 4001 245', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WjMDNipqAh', NULL, 'https://i.pravatar.cc/640?img=12', 'Jr. Dahlia No. 612, Administrasi Jakarta Utara 11198, Banten', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(36, 'Yahya', 'sierra.cremin@example.org', 386013, '0867 7493 658', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ghO6vbwhR7', NULL, 'https://i.pravatar.cc/640?img=64', 'Ds. Acordion No. 29, Surabaya 70062, Aceh', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(37, 'Yahya', 'quigley.axel@example.net', 424685, '0783 1599 363', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MNsutNN7PL', NULL, 'https://i.pravatar.cc/640?img=65', 'Jln. Setiabudhi No. 905, Lubuklinggau 51829, Sumsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(38, 'Martana', 'mblick@example.org', 801832, '0902 5340 624', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UXcb4qsrev', NULL, 'https://i.pravatar.cc/640?img=27', 'Gg. Bakti No. 705, Batu 40425, Jatim', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(39, 'Ayu', 'edmond53@example.net', 1777605, '(+62) 992 9318 113', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'M4RnOQmJPl', NULL, 'https://i.pravatar.cc/640?img=51', 'Kpg. Bahagia No. 391, Tasikmalaya 29421, Kaltara', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(40, 'Lukman', 'mueller.leora@example.org', 2001659, '0792 5499 494', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'n6Jlpc198m', NULL, 'https://i.pravatar.cc/640?img=60', 'Ki. Padang No. 518, Bau-Bau 15297, Lampung', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(41, 'Salimah', 'keeling.annamae@example.com', 603420, '0580 8162 1007', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FM1zkErose', NULL, 'https://i.pravatar.cc/640?img=62', 'Dk. R.E. Martadinata No. 653, Bengkulu 34857, Sultra', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(42, 'Gabriella', 'zaufderhar@example.com', 1297967, '(+62) 873 3457 1405', 'Female', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Ld4Y7h0hgW', NULL, 'https://i.pravatar.cc/640?img=46', 'Dk. Bazuka Raya No. 888, Tangerang Selatan 33555, Sulteng', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(43, 'Gaduh', 'art68@example.org', 643612, '(+62) 993 5557 3046', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bi4joTgvjQ', NULL, 'https://i.pravatar.cc/640?img=23', 'Gg. Kiaracondong No. 259, Probolinggo 97018, Jabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(44, 'Alika', 'hallie.rolfson@example.com', 442693, '(+62) 894 2319 310', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8cdWMYPQFE', NULL, 'https://i.pravatar.cc/640?img=53', 'Psr. Bata Putih No. 881, Bengkulu 66151, Babel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(45, 'Fathonah', 'noah.gusikowski@example.net', 2504167, '(+62) 829 2662 5104', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'o7sjvQlHd5', NULL, 'https://i.pravatar.cc/640?img=29', 'Kpg. Suryo Pranoto No. 355, Tebing Tinggi 81470, Sulsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(46, 'Nurul', 'wyman58@example.org', 836103, '0913 1851 524', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'D6eru1d3nn', NULL, 'https://i.pravatar.cc/640?img=45', 'Ki. Gegerkalong Hilir No. 967, Padangsidempuan 51829, Aceh', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(47, 'Mutia', 'aiyana47@example.com', 1185224, '0939 9079 1537', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tGuzfzlzNm', NULL, 'https://i.pravatar.cc/640?img=47', 'Dk. Monginsidi No. 810, Kendari 87096, Gorontalo', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(48, 'Adika', 'hazle22@example.net', 257595, '(+62) 817 0944 797', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'iZLdzalwVe', NULL, 'https://i.pravatar.cc/640?img=60', 'Kpg. Ketandan No. 151, Banjar 36036, Banten', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(49, 'Tania', 'ahahn@example.net', 2480360, '(+62) 996 3249 077', 'Female', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'm23sWbe0Ms', NULL, 'https://i.pravatar.cc/640?img=53', 'Dk. Abang No. 600, Gunungsitoli 92464, Kalsel', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(50, 'Gamanto', 'bruce71@example.org', 398148, '(+62) 938 1519 5797', 'Male', 'Pengurus Panti', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'oEe9ZRLgJw', NULL, 'https://i.pravatar.cc/640?img=49', 'Ds. Kebangkitan Nasional No. 25, Langsa 39597, Kalbar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33'),
(51, 'Cengkir', 'leilani76@example.net', 270687, '(+62) 562 2846 124', 'Male', 'Tutor', '2023-01-06 22:26:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yg18fK0VFD', NULL, 'https://i.pravatar.cc/640?img=9', 'Kpg. Sutoyo No. 79, Solok 75035, Pabar', '1', '2023-01-06 22:26:33', '2023-01-06 22:26:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `competition_recommendations`
--
ALTER TABLE `competition_recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_recommendations_tutor_id_foreign` (`tutor_id`),
  ADD KEY `competition_recommendations_orphanage_id_foreign` (`orphanage_id`),
  ADD KEY `competition_recommendations_competition_id_foreign` (`competition_id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_tutor_id_foreign` (`tutor_id`),
  ADD KEY `courses_skill_id_foreign` (`skill_id`);

--
-- Indeks untuk tabel `course_bookings`
--
ALTER TABLE `course_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_bookings_course_id_foreign` (`course_id`),
  ADD KEY `course_bookings_transaction_id_foreign` (`transaction_id`),
  ADD KEY `course_bookings_orphanage_id_foreign` (`orphanage_id`);

--
-- Indeks untuk tabel `course_booking_day_time_ranges`
--
ALTER TABLE `course_booking_day_time_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_booking_day_time_ranges_course_booking_id_foreign` (`course_booking_id`),
  ADD KEY `course_booking_day_time_ranges_day_time_range_id_foreign` (`day_time_range_id`);

--
-- Indeks untuk tabel `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `day_time_ranges`
--
ALTER TABLE `day_time_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day_time_ranges_day_id_foreign` (`day_id`);

--
-- Indeks untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_orphanage_id_foreign` (`orphanage_id`),
  ADD KEY `donations_transaction_id_foreign` (`transaction_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orphanages`
--
ALTER TABLE `orphanages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orphanages_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `orphans`
--
ALTER TABLE `orphans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orphans_orphanage_id_foreign` (`orphanage_id`);

--
-- Indeks untuk tabel `orphan_course_bookings`
--
ALTER TABLE `orphan_course_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orphan_course_bookings_course_booking_id_foreign` (`course_booking_id`),
  ADD KEY `orphan_course_bookings_orphan_id_foreign` (`orphan_id`);

--
-- Indeks untuk tabel `orphan_crs`
--
ALTER TABLE `orphan_crs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orphan_crs_competition_recommendation_id_foreign` (`competition_recommendation_id`),
  ADD KEY `orphan_crs_orphan_id_foreign` (`orphan_id`);

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
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_to_user_id_foreign` (`to_user_id`);

--
-- Indeks untuk tabel `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutors_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tutor_day_time_ranges`
--
ALTER TABLE `tutor_day_time_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_day_time_ranges_tutor_id_foreign` (`tutor_id`),
  ADD KEY `tutor_day_time_ranges_day_time_range_id_foreign` (`day_time_range_id`);

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
-- AUTO_INCREMENT untuk tabel `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `competition_recommendations`
--
ALTER TABLE `competition_recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `course_bookings`
--
ALTER TABLE `course_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `course_booking_day_time_ranges`
--
ALTER TABLE `course_booking_day_time_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `day_time_ranges`
--
ALTER TABLE `day_time_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `orphanages`
--
ALTER TABLE `orphanages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `orphans`
--
ALTER TABLE `orphans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600;

--
-- AUTO_INCREMENT untuk tabel `orphan_course_bookings`
--
ALTER TABLE `orphan_course_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT untuk tabel `orphan_crs`
--
ALTER TABLE `orphan_crs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tutor_day_time_ranges`
--
ALTER TABLE `tutor_day_time_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `competition_recommendations`
--
ALTER TABLE `competition_recommendations`
  ADD CONSTRAINT `competition_recommendations_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competition_recommendations_orphanage_id_foreign` FOREIGN KEY (`orphanage_id`) REFERENCES `orphanages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competition_recommendations_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_bookings`
--
ALTER TABLE `course_bookings`
  ADD CONSTRAINT `course_bookings_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_bookings_orphanage_id_foreign` FOREIGN KEY (`orphanage_id`) REFERENCES `orphanages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_bookings_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_booking_day_time_ranges`
--
ALTER TABLE `course_booking_day_time_ranges`
  ADD CONSTRAINT `course_booking_day_time_ranges_course_booking_id_foreign` FOREIGN KEY (`course_booking_id`) REFERENCES `course_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_booking_day_time_ranges_day_time_range_id_foreign` FOREIGN KEY (`day_time_range_id`) REFERENCES `day_time_ranges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `day_time_ranges`
--
ALTER TABLE `day_time_ranges`
  ADD CONSTRAINT `day_time_ranges_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_orphanage_id_foreign` FOREIGN KEY (`orphanage_id`) REFERENCES `orphanages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donations_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orphanages`
--
ALTER TABLE `orphanages`
  ADD CONSTRAINT `orphanages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orphans`
--
ALTER TABLE `orphans`
  ADD CONSTRAINT `orphans_orphanage_id_foreign` FOREIGN KEY (`orphanage_id`) REFERENCES `orphanages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orphan_course_bookings`
--
ALTER TABLE `orphan_course_bookings`
  ADD CONSTRAINT `orphan_course_bookings_course_booking_id_foreign` FOREIGN KEY (`course_booking_id`) REFERENCES `course_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orphan_course_bookings_orphan_id_foreign` FOREIGN KEY (`orphan_id`) REFERENCES `orphans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orphan_crs`
--
ALTER TABLE `orphan_crs`
  ADD CONSTRAINT `orphan_crs_competition_recommendation_id_foreign` FOREIGN KEY (`competition_recommendation_id`) REFERENCES `competition_recommendations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orphan_crs_orphan_id_foreign` FOREIGN KEY (`orphan_id`) REFERENCES `orphans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tutors`
--
ALTER TABLE `tutors`
  ADD CONSTRAINT `tutors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tutor_day_time_ranges`
--
ALTER TABLE `tutor_day_time_ranges`
  ADD CONSTRAINT `tutor_day_time_ranges_day_time_range_id_foreign` FOREIGN KEY (`day_time_range_id`) REFERENCES `day_time_ranges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tutor_day_time_ranges_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `tutors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
