-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2023 pada 07.00
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
(1, 'Perspiciatis expedita officiis blanditiis.', 'https://picsum.photos/id/225/640', '2023-04-07', '12:36', 'http://prayoga.net/', 'Nasional', 'Quas id delectus necessitatibus. Qui voluptatum dolore enim quo ad voluptate enim. Voluptas et ratione in laudantium aut eos ipsum.', 'Stark, Harris and Bogisich', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(2, 'Et reiciendis dolor ut.', 'https://picsum.photos/id/84/640', '2023-01-21', '07:21', 'http://pertiwi.co.id/quo-corrupti-repudiandae-id-laboriosam-dolorem-tempore', 'Internasional', 'Esse voluptas animi voluptatum tempora ut ex. Id nulla dolorem eaque enim praesentium dicta. Mollitia illo pariatur ea ut.', 'Williamson-Streich', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(3, 'Sed voluptas laboriosam est.', 'https://picsum.photos/id/160/640', '2023-03-30', '20:11', 'http://www.maheswara.id/facilis-quas-tenetur-minima-et', 'Internasional', 'Cum laboriosam ipsam tempora assumenda veritatis esse non dolorem. Possimus et omnis reprehenderit. Autem aut velit praesentium doloremque vel.', 'Huel Inc', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(4, 'Velit molestiae eius.', 'https://picsum.photos/id/218/640', '2023-01-23', '00:59', 'http://www.nashiruddin.co/molestiae-optio-quidem-reiciendis-consequatur-delectus', 'Nasional', 'Eos aperiam porro id aperiam consequatur placeat et. Reprehenderit recusandae aliquid qui. Maiores libero optio corrupti aliquam.', 'Fritsch, Ledner and Stamm', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(5, 'Magni est error doloribus.', 'https://picsum.photos/id/25/640', '2023-01-30', '22:43', 'http://www.sudiati.org/', 'Regional', 'Ut ut rerum mollitia neque ipsum. Nobis voluptas ducimus sequi harum fuga. Id minima iusto cupiditate maxime.', 'Nader Ltd', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(6, 'Suscipit cupiditate itaque veniam.', 'https://picsum.photos/id/187/640', '2023-04-06', '23:40', 'http://www.ardianto.id/perspiciatis-dolores-eaque-officia-aut-quisquam-quae', 'Regional', 'Eum quis adipisci quis debitis tempore adipisci. Ipsum et commodi ut nobis amet.', 'Willms and Sons', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(7, 'Aperiam sequi repellat.', 'https://picsum.photos/id/19/640', '2023-03-13', '02:12', 'http://prakasa.ac.id/', 'Nasional', 'Nam hic repellendus eos aliquid aut ipsum molestiae. Esse ullam molestiae qui omnis modi ipsam earum earum. Cumque aut aperiam nobis adipisci. Animi sunt non minima tempora.', 'Walter, Willms and Keeling', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(8, 'Error minima sit.', 'https://picsum.photos/id/137/640', '2023-02-19', '04:42', 'http://mayasari.sch.id/cumque-minus-praesentium-ea-eligendi-aperiam-beatae-molestiae', 'Regional', 'Et repudiandae delectus dolorem. Maxime nihil aut neque itaque unde. Veritatis aut rerum quis dolorem enim autem aspernatur.', 'Senger Group', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(9, 'Consequatur tempora quo.', 'https://picsum.photos/id/150/640', '2023-01-19', '14:43', 'https://thamrin.sch.id/esse-et-nesciunt-totam-laudantium-sapiente-rerum.html', 'Nasional', 'Aliquam ipsam qui maxime doloribus aut qui porro non. Autem earum asperiores est nisi. Vitae ea soluta occaecati cupiditate deleniti corporis.', 'Mitchell-Ankunding', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(10, 'Eligendi cum deserunt.', 'https://picsum.photos/id/207/640', '2023-04-17', '20:12', 'http://melani.biz.id/', 'Nasional', 'Consequatur provident rerum et. Et ut sequi vel ut. Dolor sed ad consectetur et officiis dolores sint.', 'Donnelly-Haley', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(11, 'Ullam modi perspiciatis.', 'https://picsum.photos/id/218/640', '2023-04-03', '08:28', 'http://www.susanti.info/amet-qui-cupiditate-accusantium-repellendus-quae-eaque-nihil-ullam.html', 'Nasional', 'Est incidunt sapiente consequuntur temporibus illum exercitationem quia. Blanditiis voluptatem iste ut quia. Autem hic itaque ex sapiente voluptatem sed quis.', 'Schaden PLC', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(12, 'Ut dolores quod.', 'https://picsum.photos/id/89/640', '2023-03-30', '16:23', 'http://www.sitompul.com/harum-maiores-adipisci-pariatur-ad', 'Nasional', 'Aut repudiandae aut ut odit itaque. Quia id aut distinctio eos ducimus necessitatibus. Provident quos autem incidunt ut accusantium saepe.', 'Bernier-Leffler', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(13, 'Dolorem distinctio facilis.', 'https://picsum.photos/id/49/640', '2023-02-09', '16:37', 'http://wahyuni.ac.id/eum-laboriosam-asperiores-quasi-quos', 'Regional', 'Dolorum nobis alias ut fugit rem ut. Facilis in blanditiis voluptas impedit. Culpa dolorem qui et voluptas placeat.', 'Smith, Gleichner and Hagenes', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(14, 'Voluptatem eius minus quod sit.', 'https://picsum.photos/id/208/640', '2023-04-09', '22:41', 'http://www.hardiansyah.info/distinctio-autem-voluptatem-voluptatibus-possimus', 'Nasional', 'Officiis dolorem qui ut nulla recusandae. Ut ut dignissimos quo et et labore voluptatum quidem. Esse ea in dolores quo officia quos. Recusandae quia tenetur totam qui nam in.', 'Herzog and Sons', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(15, 'Quam ut quibusdam non minima.', 'https://picsum.photos/id/215/640', '2023-04-03', '13:33', 'http://permata.ac.id/vel-sunt-sapiente-magnam-iusto.html', 'Internasional', 'Sed dolorem modi dolorem porro et. Asperiores incidunt inventore velit aliquid amet ut quod. Quas voluptas sit non qui recusandae ipsum blanditiis minima. Ad quibusdam iusto vel nisi quo.', 'Johns, Ortiz and Fay', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(16, 'Tempora quisquam et.', 'https://picsum.photos/id/92/640', '2023-03-20', '16:28', 'http://andriani.org/vel-ab-maiores-eum-aliquid-quis-officia', 'Internasional', 'Non occaecati illum quasi hic molestias. Hic fuga consequatur eius magni omnis quos. Ex quam omnis fuga at pariatur perspiciatis illo. Recusandae dolores omnis et placeat occaecati aut alias.', 'Gleason Inc', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(17, 'Repellendus laudantium.', 'https://picsum.photos/id/200/640', '2023-04-02', '01:24', 'http://aryani.org/earum-reprehenderit-dicta-illum-qui-unde-sed', 'Regional', 'Provident quis consequatur ipsum autem et sit voluptas. Dolore sint nostrum quis consectetur officia ipsa.', 'Gottlieb LLC', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(18, 'Quis eligendi.', 'https://picsum.photos/id/152/640', '2023-04-16', '21:13', 'http://agustina.desa.id/sed-quisquam-laudantium-quia-sed.html', 'Nasional', 'Ex maxime omnis odit optio animi. Deserunt omnis ut dolor quisquam a in quo. Quisquam nemo dolores molestiae tenetur laborum. Rem ducimus ut saepe ipsum nemo aspernatur.', 'Batz, Murphy and Zemlak', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(19, 'Qui fugit.', 'https://picsum.photos/id/160/640', '2023-03-30', '17:59', 'https://www.hidayanto.org/omnis-quis-ut-voluptas-magnam-quis-ut-temporibus', 'Regional', 'Deserunt voluptas quo voluptatum quis error et nostrum. Voluptate eos delectus vel aperiam eum exercitationem qui. Minus et quis rem et ipsam.', 'Jacobson Group', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(20, 'Quibusdam minima reiciendis.', 'https://picsum.photos/id/35/640', '2023-01-29', '06:08', 'http://prasetya.info/qui-recusandae-dolorem-nihil-nisi-quos-veritatis', 'Internasional', 'Corporis nostrum ipsam dolores commodi. Hic iste architecto excepturi nemo molestiae quo assumenda. Eum aliquid porro quis maxime. Eligendi doloremque labore qui sunt vel.', 'Spinka Group', '2023-01-08 22:40:33', '2023-01-08 22:40:33');

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
(1, 14, 26, 10, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(2, 1, 17, 16, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(3, 15, 24, 20, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(4, 2, 23, 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(5, 21, 6, 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(6, 14, 25, 1, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(7, 11, 9, 20, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(8, 20, 9, 8, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(9, 11, 5, 18, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(10, 4, 5, 8, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(11, 9, 25, 4, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(12, 7, 28, 15, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(13, 14, 6, 17, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(14, 4, 19, 18, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(15, 14, 20, 4, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(16, 4, 13, 2, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(17, 1, 3, 18, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(18, 16, 5, 4, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(19, 3, 6, 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(20, 1, 5, 12, '2023-01-08 22:40:39', '2023-01-08 22:40:39');

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
(1, 'Et veniam odit et illo doloremque velit.', 1, 5, 'Consequatur doloremque eos cumque quae. Et necessitatibus et et dolorum consequatur at sed beatae. Sapiente ipsum consectetur rerum ex. Quidem alias quasi neque.', 51000, 0, 0, 6, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Gremet No. 722, Salatiga 92874, Riau', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(2, 'Commodi nihil eos odit unde voluptates.', 1, 1, 'Non sit nostrum earum aut et autem. Voluptate soluta distinctio vero culpa rem vel. Distinctio architecto quidem alias impedit deleniti quas tenetur.', 95174, 0, 1, 7, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Bak Mandi No. 45, Probolinggo 62908, Sumsel', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(3, 'Nam consequatur eius dolorem eius.', 1, 2, 'Numquam sequi laboriosam facilis qui repellendus ut. Non necessitatibus facere error laborum at est sint. Culpa et ut similique ipsa. Rerum et ut animi fugit illum sed aut.', 143390, 0, 1, 18, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Kali No. 492, Administrasi Jakarta Pusat 93757, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(4, 'Praesentium voluptatum exercitationem natus voluptatem explicabo.', 1, 1, 'Placeat dolor consequatur rerum culpa sequi voluptate rerum. Nulla beatae autem aperiam. Aut molestiae quis dignissimos quis dicta provident eveniet.', 136232, 1, 0, 15, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(5, 'Et nobis natus voluptas velit.', 2, 6, 'Inventore neque accusantium occaecati ad rerum. Explicabo ut at sequi ut qui. Laborum eos odit corrupti. Illum perferendis officia rerum eveniet ipsa.', 109275, 1, 0, 10, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(6, 'Dolorem tempora officiis tempore et.', 2, 1, 'Fugiat quia provident dolor qui iusto fugiat. Assumenda iste molestias id quos praesentium non fugiat provident. Et consequatur enim rerum harum.', 121706, 1, 0, 4, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(7, 'Dolor explicabo officia quas eum.', 3, 6, 'Dolores neque aut sequi dolore sunt. Unde ut est est enim voluptatibus odit. Quidem laborum sint quam autem quos.', 86815, 1, 0, 11, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(8, 'Repudiandae sed dolor reprehenderit occaecati impedit.', 3, 6, 'Inventore nam natus sunt aut et libero eum voluptatum. Unde eum hic quibusdam eius enim. Sunt non repudiandae aspernatur asperiores incidunt qui aut perspiciatis.', 82393, 1, 0, 20, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(9, 'Qui sit soluta tenetur.', 4, 2, 'Molestiae magni error voluptatem et. Voluptatem fugit laudantium suscipit dolor ut commodi vitae.', 112912, 1, 0, 13, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(10, 'Vitae id itaque omnis aut et accusantium.', 4, 4, 'Ab ea magni sit eligendi molestias labore deleniti. Sit et optio aspernatur aut molestiae dolore saepe. Molestiae et repellendus nesciunt.', 104734, 0, 1, 20, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Thamrin No. 574, Sabang 45266, DIY', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(11, 'Iste reiciendis beatae ea.', 4, 4, 'Ratione enim aut eos. Aut sint est deleniti sit voluptatibus nisi sed. Earum quas quisquam eos est voluptatem modi voluptas.', 81321, 1, 0, 4, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(12, 'Provident unde maxime repellendus ipsa.', 4, 1, 'Et at dolor earum assumenda ipsam magni omnis. Vel quia quis asperiores ab recusandae rerum natus debitis.', 62947, 1, 0, 10, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(13, 'Beatae vitae omnis nihil qui voluptatem reprehenderit.', 5, 1, 'Dolores earum quia eaque. Autem debitis omnis consectetur. Nulla dolorem et incidunt facere aliquam.', 85470, 0, 1, 18, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Baya Kali Bungur No. 600, Sibolga 25797, Kalteng', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(14, 'Aut molestias voluptas optio.', 5, 3, 'Rerum aspernatur voluptatem quas officiis. Dignissimos et dicta quas perspiciatis. Repellat vel omnis molestias excepturi autem vero.', 119247, 0, 0, 9, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Eka No. 26, Depok 55538, Papua', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(15, 'Saepe distinctio veniam in aut.', 5, 4, 'Ipsa numquam dignissimos nihil sit delectus quia non deleniti. Hic rem nulla quia sed.', 115594, 0, 1, 14, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Pasirkoja No. 566, Surabaya 64936, Lampung', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(16, 'Sed eveniet est aut.', 5, 1, 'Animi temporibus ipsa dolor. Quos temporibus fuga a cupiditate. Omnis ipsa sint sunt ratione qui. Nemo harum velit in quae qui magnam consectetur.', 124692, 0, 1, 8, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Rajiman No. 663, Sukabumi 51375, Bali', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(17, 'Asperiores vel vel iste.', 5, 1, 'Veniam dolorem dolor consequuntur ipsa. Sequi aperiam quidem sit aut ea eos. Impedit cumque enim voluptatibus eum quos. Ea sapiente maiores id dolores vero totam.', 102260, 0, 0, 18, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Krakatau No. 697, Malang 43265, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(18, 'Sapiente culpa delectus harum non.', 6, 6, 'Velit nesciunt odit recusandae molestiae hic tenetur eos. Nostrum voluptas esse nesciunt veritatis sit. Qui eius ipsum facere eaque. Laudantium unde dolore neque reprehenderit consequuntur.', 90044, 0, 0, 9, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(19, 'At nemo unde illum.', 6, 6, 'Qui ducimus ea dolores mollitia reiciendis porro. Ut nam est assumenda facere. Exercitationem et reprehenderit ducimus animi voluptas velit. Optio voluptatem odit ad quasi aut.', 91886, 1, 0, 15, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(20, 'Dolores libero nam et facere minima tenetur.', 6, 4, 'Qui et repellendus adipisci aut sed. Aut labore nesciunt fuga quaerat eligendi. Quis quia minus dolorem provident non.', 124484, 1, 0, 6, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(21, 'Qui nemo aut dolore tempore consequuntur.', 6, 6, 'Illo facilis et eaque veniam reprehenderit odio autem voluptatum. Aut blanditiis aut velit. Ut perspiciatis non modi. Totam omnis vero nihil quod beatae cupiditate.', 128202, 1, 0, 11, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(22, 'Distinctio incidunt deleniti molestias voluptatem expedita possimus labore.', 7, 2, 'Et quam voluptas et adipisci. Dolor dolores vel in quo labore aut quis. Consequatur aperiam alias vel sit. Esse vel molestiae error ipsum odit fugit culpa repellat.', 73708, 0, 1, 7, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Barat No. 263, Pagar Alam 28407, Papua', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(23, 'Qui ratione accusantium omnis.', 7, 4, 'Expedita ut dolorem dolores qui explicabo esse eum. Aut aut ab dicta perspiciatis.', 81365, 1, 0, 3, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(24, 'Accusamus reiciendis necessitatibus occaecati.', 7, 1, 'Nisi ut perspiciatis dolorum facere. Minus iure alias magnam autem. Quia et quasi nostrum non mollitia est cumque architecto. Sunt at eos aut optio et ipsa magni.', 75266, 0, 1, 16, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Daan No. 397, Pasuruan 53797, Jabar', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(25, 'Occaecati est placeat odit ad doloremque dignissimos.', 7, 6, 'Eos explicabo porro nesciunt nobis error voluptas qui veniam. Unde minus quo iusto nulla dolor nostrum itaque. Odio necessitatibus velit expedita incidunt sunt atque.', 68815, 1, 0, 4, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(26, 'Occaecati provident est nesciunt odio dolorem.', 7, 4, 'Vel et iste cupiditate architecto at accusamus. Cumque quia aut temporibus nihil nihil. Optio amet est omnis distinctio et. Perferendis numquam commodi et eligendi ducimus.', 52901, 0, 1, 12, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Dahlia No. 482, Tangerang Selatan 80189, Sulteng', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(27, 'Ipsum similique quidem aliquid accusamus quod.', 8, 3, 'Qui quia sit incidunt enim consequatur sed. Ut modi ratione ut velit. Quam dolores ut veniam nesciunt voluptas.', 87422, 1, 0, 3, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(28, 'Ipsum est reiciendis et exercitationem quo eos.', 8, 3, 'Sint voluptatem omnis rem excepturi. Repellat quia non quia. Nulla eum reprehenderit minima optio corrupti in non.', 100805, 1, 0, 9, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(29, 'Et voluptate est voluptatem.', 9, 2, 'Vitae debitis et numquam delectus dignissimos. Aut accusamus asperiores cumque sed error ipsam. Sequi voluptatem nihil magni ipsum molestias aspernatur qui at.', 103787, 0, 1, 8, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. R.E. Martadinata No. 493, Madiun 87466, Sulsel', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(30, 'Culpa repellendus animi doloremque enim.', 9, 1, 'Ipsa id nam molestiae ut ut eligendi. Magni recusandae distinctio quo dicta aut corporis autem. Similique saepe consequatur eos dolores ipsam vitae ut.', 106628, 1, 0, 20, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(31, 'Labore sint repellat voluptatem consequatur.', 9, 6, 'Earum ab odio ipsa. Aut sit dolor saepe neque et nihil quia ex. Corporis est sunt iusto aliquid saepe enim. Ratione qui non voluptatem dolores in accusamus.', 80170, 0, 1, 14, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Ds. Bawal No. 757, Lhokseumawe 73787, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(32, 'Numquam ut voluptatem voluptatem accusantium sed.', 9, 5, 'Voluptatum ut tempora est voluptatibus ab veritatis aperiam. Praesentium ut optio quo delectus optio. Quia repellat vel ab. Molestiae ut quia voluptatem veniam omnis.', 109006, 1, 0, 13, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(33, 'Sapiente quidem aut accusamus totam quos.', 9, 6, 'Occaecati qui necessitatibus et est. Quis est nisi non aspernatur optio voluptas ut. Consectetur rerum dolores rem.', 133447, 1, 0, 12, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(34, 'Asperiores voluptatem repudiandae et.', 10, 4, 'Doloremque dolore et quia quidem quia nihil qui sed. Quae consequatur deleniti consequatur. Odit mollitia esse quia quam. Nihil officiis nihil est at qui nisi rerum.', 113016, 0, 1, 19, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Babah No. 683, Yogyakarta 27877, Sumbar', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(35, 'Repellendus non omnis voluptas nisi eos et.', 10, 4, 'Rerum et libero rerum molestiae repellat. Possimus ut totam dolores et sed dignissimos vitae autem. Temporibus quibusdam error officiis autem voluptas enim. Fuga ad est sunt qui adipisci laborum.', 148854, 0, 1, 16, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Krakatau No. 504, Gunungsitoli 49935, Malut', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(36, 'Non dolor soluta vel aut atque.', 10, 3, 'Eveniet alias voluptatem enim. Praesentium vero rerum dicta aspernatur consequatur esse laudantium facilis. Laboriosam ut enim blanditiis laudantium nam accusantium fugit.', 91701, 1, 0, 19, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(37, 'Fugiat nisi quo sit quibusdam.', 10, 2, 'Dolor facere tempore laudantium. Est et amet facilis aliquam sed perferendis. Officia voluptatem aut dolorem tenetur debitis id corrupti et. Suscipit aut placeat magnam vel temporibus impedit.', 80834, 0, 1, 14, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Hayam Wuruk No. 742, Batu 52267, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(38, 'Inventore laboriosam officiis rerum quae ut nemo.', 10, 2, 'Amet ipsum et labore ab et quos quod. Qui ut consequatur quibusdam molestiae repellat sunt repellat. Enim facilis sit reprehenderit.', 138642, 1, 0, 19, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(39, 'Libero fuga nesciunt illo perferendis culpa.', 11, 4, 'Perferendis iure at error asperiores quia in. Et earum quos nostrum ut et. Explicabo rem distinctio autem id tempora iure et magnam. Fuga labore sunt repellendus ut dolores beatae veniam consequatur.', 147717, 0, 1, 7, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Hang No. 466, Semarang 59475, DKI', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(40, 'Sunt in tempora repellat numquam amet voluptatem.', 11, 3, 'Molestiae ipsum alias odit qui cumque. Qui enim aspernatur et ipsa sint qui iure quia. Ratione iure et laborum doloribus sunt beatae repudiandae atque. Impedit maiores quaerat aliquam est a.', 57120, 1, 0, 3, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(41, 'Laborum sunt expedita sequi.', 12, 4, 'Dignissimos excepturi laudantium fugit voluptatem. Rerum exercitationem est aut amet voluptates deleniti.', 70557, 1, 0, 18, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(42, 'Voluptatem et non laborum fuga reprehenderit est.', 12, 6, 'Rerum asperiores occaecati unde. Sit accusamus saepe in et minus. Autem quam itaque dolor nesciunt dolore. Beatae vel at totam hic voluptas.', 113862, 1, 0, 9, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(43, 'Ea sint maxime fugit.', 12, 3, 'Quo dolorum et quia facere placeat error repudiandae a. Sed est sed facilis iure laboriosam unde.', 142659, 1, 0, 6, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(44, 'Debitis alias et sed aliquid magni mollitia.', 12, 1, 'Architecto necessitatibus magnam voluptas voluptate sit. Et aut est quae velit temporibus. Quas officiis velit autem eligendi praesentium nihil. Voluptatem quia impedit amet quam maxime.', 52174, 0, 0, 18, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Mahakam No. 299, Administrasi Jakarta Timur 12096, NTB', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(45, 'Velit odit voluptatum facilis odio suscipit dolores.', 12, 4, 'Deserunt dolores odit quaerat. Dolor eos molestiae sed expedita. Animi velit aut quibusdam dolorem expedita reprehenderit.', 53792, 0, 0, 18, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Gg. Soekarno Hatta No. 188, Makassar 54281, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(46, 'Deserunt magni ullam esse sit id rem.', 13, 6, 'Qui perferendis eaque eum sed odio architecto deleniti. Voluptatum laborum in voluptatem autem nihil voluptatibus. Voluptates necessitatibus laudantium quam magni.', 94919, 1, 0, 11, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(47, 'Dolores sint esse voluptatibus.', 13, 6, 'Suscipit dicta expedita minima ea. Et sint dicta dolor est sapiente iusto. Eos et ut sit quia accusantium soluta magnam.', 134470, 1, 0, 9, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(48, 'Labore harum architecto facilis.', 13, 5, 'Deleniti et quae quidem harum ipsum aperiam. Est neque sunt voluptatem animi molestiae. Quia possimus odit non quae ad ullam tenetur.', 127957, 0, 0, 6, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Bakaru No. 112, Gorontalo 87875, Jabar', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(49, 'Consequuntur ad non ab voluptate omnis.', 14, 6, 'Ut amet tempore error tempore culpa. Adipisci dolore id consequatur in saepe molestiae et. Consectetur alias iusto error nihil.', 95608, 1, 0, 16, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(50, 'Quasi asperiores ab nulla error porro quod.', 14, 3, 'Pariatur occaecati sequi totam voluptatem non. Voluptates et dolorem tempore hic dolor assumenda facilis. Facilis reiciendis dolore in voluptates iste nostrum vel.', 131663, 1, 0, 11, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(51, 'Quo et animi corrupti facere.', 14, 2, 'Nihil consequatur sapiente ab. Eos omnis sapiente deserunt placeat maiores ipsum iure cum. Iusto nobis consequatur repudiandae nihil ab eum voluptatum. Architecto minima reiciendis et eos.', 50095, 1, 0, 14, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(52, 'Soluta accusamus placeat et inventore aut.', 15, 4, 'Et provident unde natus qui nihil. Numquam at magnam eum qui. Sed id ullam id eaque ratione reiciendis animi. Est unde ipsum ab dolorem nemo aliquam sapiente. Illo consequatur non et voluptatem.', 130109, 1, 0, 9, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(53, 'Ex quia velit ipsa sunt.', 15, 4, 'Totam aut nihil quo amet. Alias velit dignissimos quod et. Quam aspernatur doloribus maxime sequi. Voluptas deleniti pariatur repellat molestias est.', 127491, 1, 0, 11, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Any Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(54, 'Dolorum sed dolore porro ab aut.', 16, 5, 'Facilis excepturi illum et. Ipsam quaerat maiores consequatur et. Vel voluptatem quidem omnis nobis hic.', 119241, 0, 1, 18, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Psr. Jayawijaya No. 370, Sorong 28855, Riau', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(55, 'Dicta impedit tempora soluta architecto.', 16, 4, 'Temporibus consequatur aut et et quia. Repellat nam sint laborum id non. Ea molestiae officiis enim beatae reprehenderit.', 129327, 1, 0, 10, 250000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(56, 'Sit accusamus laudantium et quibusdam architecto eligendi.', 16, 5, 'Quaerat molestias molestias omnis est. Distinctio dignissimos assumenda quia dolore sit accusantium. Tenetur cumque commodi ut reiciendis. Dolor vero commodi est nemo soluta in sint.', 62164, 0, 1, 8, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Balikpapan No. 14, Tebing Tinggi 14631, Jabar', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(57, 'Sunt est sunt et vel non fuga.', 16, 1, 'Consequuntur maxime aperiam ut accusantium officia. Rerum magni at possimus non. Voluptatem commodi et repellat. Error veniam incidunt a explicabo.', 137269, 1, 0, 11, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(58, 'Illo quisquam vel cum.', 17, 5, 'Quia consequatur nesciunt tempore saepe. Nihil voluptatem alias omnis distinctio. Aut similique occaecati voluptatem voluptas molestiae.', 84810, 1, 0, 19, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(59, 'Amet doloribus dolorem in.', 17, 2, 'Beatae quae impedit vero libero est iusto consectetur aut. Accusantium ut laudantium doloremque quis sunt est quo. Optio omnis et porro aut nulla. Porro error ex excepturi rem eveniet iure cum.', 61426, 1, 0, 7, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(60, 'Perferendis et eaque et in numquam.', 18, 6, 'Animi in nobis a expedita consectetur iusto. Hic nihil deserunt molestias. Autem aut laboriosam praesentium ad non sed. Deleniti est nam velit debitis est assumenda.', 87873, 1, 0, 4, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(61, 'Nihil totam cupiditate rem dolor itaque.', 19, 2, 'Qui doloremque dolor architecto ut quia. Cupiditate voluptates aut sed ducimus sit qui.', 105550, 0, 1, 12, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jr. Bambon No. 759, Administrasi Jakarta Barat 89009, Malut', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(62, 'Cupiditate aut sunt expedita molestiae enim.', 19, 1, 'Non possimus quas non consequatur eaque. Aspernatur ut doloribus aut iste. Ut vel laudantium minus est aliquam.', 52405, 1, 0, 20, 25000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(63, 'Voluptas et rerum corporis accusamus.', 19, 1, 'Ullam praesentium atque perspiciatis tempore optio et officiis. Ut ab optio alias rerum ut voluptas sit. Consequatur vel itaque architecto. Ut sed expedita maxime laborum.', 64305, 0, 0, 7, 300000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Dk. Aceh No. 515, Tangerang Selatan 43822, Bali', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(64, 'Sed ea nemo dolores.', 20, 5, 'Accusamus nisi blanditiis praesentium iure. Laudantium facere facere dolorem consequatur minima cupiditate quos. Est sed dolorem qui.', 57517, 1, 0, 17, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(65, 'Fugit esse nihil quis eius provident.', 20, 5, 'Eveniet autem animi nulla voluptatem excepturi. Saepe aperiam quis ipsa ut facere officia. Aut ea inventore ea quia placeat.', 54481, 0, 1, 9, 40000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Jln. Siliwangi No. 341, Lubuklinggau 60683, Sulteng', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(66, 'Dolor quibusdam autem ut non.', 21, 6, 'Voluptas cum rem sapiente maxime. Velit explicabo dolorem delectus. Quibusdam repellendus optio corrupti rem velit suscipit nihil. Mollitia magnam quidem natus consequuntur minus fugit.', 149524, 0, 0, 13, 20000, 'Peralatan terkait untuk menunjang kebutuhan murid', 'Kpg. Tangkuban Perahu No. 955, Bitung 22037, Jambi', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(67, 'Eius dicta sed officiis quaerat veritatis quod.', 21, 2, 'Sit sint officia delectus qui. Voluptatem ut assumenda quia inventore provident reprehenderit similique possimus. Non soluta ducimus quo omnis. Libero omnis eos sequi quas et eius.', 65146, 1, 0, 11, 0, 'Peralatan terkait untuk menunjang kebutuhan murid', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:33');

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
  `status` enum('pending','ongoing','complete','canceled','confirmed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `course_bookings`
--

INSERT INTO `course_bookings` (`id`, `course_id`, `transaction_id`, `orphanage_id`, `hour_count`, `is_visit`, `status`, `location`, `created_at`, `updated_at`) VALUES
(1, 37, 1, 1, 19, 1, 'complete', 'Ds. Yos No. 814, Solok 48386, NTT', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(2, 34, 2, 1, 16, 1, 'pending', 'Ds. Yos No. 814, Solok 48386, NTT', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(3, 12, 3, 1, 30, 0, 'canceled', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(4, 27, 4, 1, 1, 0, 'canceled', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(5, 3, 5, 2, 17, 1, 'canceled', 'Ki. Bambu No. 136, Jambi 92957, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(6, 36, 6, 2, 17, 0, 'pending', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(7, 35, 7, 2, 22, 0, 'pending', '51911 Delores Locks\nChristside, NJ 83563-2421', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(8, 22, 8, 2, 6, 0, 'complete', '7473 Urban Mill\nEast Anaisborough, NC 82040-2548', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(9, 52, 9, 2, 24, 0, 'pending', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(10, 48, 10, 3, 28, 0, 'complete', 'Psr. Bakaru No. 112, Gorontalo 87875, Jabar', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(11, 45, 11, 4, 25, 0, 'complete', 'Gg. Soekarno Hatta No. 188, Makassar 54281, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(12, 7, 12, 4, 18, 0, 'ongoing', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(13, 46, 13, 5, 6, 0, 'pending', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(14, 62, 14, 5, 15, 0, 'pending', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(15, 12, 15, 5, 26, 0, 'pending', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(16, 18, 16, 5, 3, 0, 'pending', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(17, 54, 17, 6, 22, 0, 'canceled', '9012 Lockman Inlet\nYeseniaport, DE 53207-9695', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(18, 45, 18, 6, 10, 0, 'complete', 'Gg. Soekarno Hatta No. 188, Makassar 54281, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(19, 41, 19, 6, 6, 0, 'pending', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(20, 18, 20, 7, 18, 0, 'ongoing', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(21, 29, 21, 7, 17, 1, 'ongoing', 'Jr. Industri No. 229, Bandung 75435, NTT', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(22, 14, 22, 7, 11, 0, 'canceled', 'Gg. Eka No. 26, Depok 55538, Papua', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(23, 33, 23, 8, 7, 0, 'complete', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(24, 42, 24, 8, 28, 0, 'pending', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(25, 20, 25, 9, 13, 0, 'pending', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(26, 28, 26, 9, 30, 0, 'canceled', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(27, 47, 27, 9, 18, 0, 'ongoing', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(28, 34, 28, 9, 8, 1, 'ongoing', 'Dk. Rajiman No. 74, Bandung 52083, Gorontalo', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(29, 32, 29, 9, 22, 0, 'pending', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(30, 49, 30, 10, 13, 0, 'pending', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(31, 63, 31, 10, 5, 0, 'pending', 'Dk. Aceh No. 515, Tangerang Selatan 43822, Bali', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(32, 52, 32, 10, 7, 0, 'ongoing', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(33, 7, 33, 11, 24, 0, 'pending', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(34, 10, 34, 11, 9, 0, 'complete', '872 Hilpert Heights\nSouth Kaelynland, AZ 19178', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(35, 33, 35, 11, 24, 0, 'pending', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(36, 11, 36, 12, 29, 0, 'complete', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(37, 18, 37, 12, 6, 0, 'pending', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(38, 7, 38, 12, 8, 0, 'pending', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(39, 20, 39, 12, 29, 0, 'ongoing', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(40, 27, 40, 13, 24, 0, 'complete', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(41, 54, 41, 13, 6, 1, 'ongoing', 'Dk. Sugiyopranoto No. 363, Surakarta 30046, Bali', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(42, 39, 42, 13, 15, 0, 'ongoing', '706 Donnie Isle\nSouth Christineport, OK 07750-2488', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(43, 13, 43, 13, 30, 0, 'complete', '163 Jeramie Forks\nEast Jovantown, MA 88425', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(44, 2, 44, 14, 29, 1, 'ongoing', 'Gg. Banal No. 830, Tual 29079, Riau', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(45, 62, 45, 15, 28, 0, 'ongoing', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(46, 46, 46, 15, 2, 0, 'ongoing', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(47, 58, 47, 15, 9, 0, 'ongoing', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(48, 57, 48, 15, 21, 0, 'complete', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(49, 54, 49, 16, 8, 0, 'ongoing', '65586 Murphy Way Suite 759\nWunschland, VA 94119-7214', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(50, 35, 50, 16, 9, 0, 'pending', '3045 Ratke Stravenue Suite 866\nPort Felipe, MA 06573-2372', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(51, 19, 51, 16, 24, 0, 'canceled', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(52, 24, 52, 17, 17, 1, 'canceled', 'Gg. Kebonjati No. 189, Palangka Raya 12212, Sumsel', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(53, 46, 53, 17, 26, 0, 'ongoing', 'Cisco Webex', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(54, 20, 54, 17, 1, 0, 'ongoing', 'Zoom Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(55, 58, 55, 17, 3, 0, 'ongoing', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(56, 41, 56, 18, 30, 0, 'complete', 'GoToMeeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(57, 4, 57, 18, 23, 0, 'canceled', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(58, 29, 58, 19, 30, 1, 'canceled', 'Psr. Yap Tjwan Bing No. 448, Palu 16028, Pabar', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(59, 49, 59, 19, 29, 0, 'complete', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(60, 50, 60, 19, 16, 0, 'pending', 'Zoho Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(61, 18, 61, 20, 9, 0, 'canceled', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(62, 64, 62, 20, 7, 0, 'pending', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(63, 16, 63, 21, 18, 1, 'ongoing', 'Jr. Wahidin Sudirohusodo No. 693, Malang 64593, Banten', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(64, 44, 64, 21, 30, 0, 'pending', 'Jr. Mahakam No. 299, Administrasi Jakarta Timur 12096, NTB', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(65, 49, 65, 21, 6, 0, 'ongoing', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(66, 11, 66, 21, 4, 0, 'complete', 'Adobe Connect Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(67, 7, 67, 22, 12, 0, 'canceled', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(68, 56, 68, 22, 18, 1, 'ongoing', 'Jr. Pasteur No. 292, Batam 76142, Kaltara', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(69, 31, 69, 23, 17, 0, 'complete', '96049 Jarrod Burgs Apt. 140\nChamplinberg, MI 62519', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(70, 31, 70, 23, 2, 1, 'complete', 'Jln. Suryo Pranoto No. 664, Kotamobagu 23695, Kalteng', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(71, 10, 71, 23, 20, 1, 'pending', 'Jln. Suryo Pranoto No. 664, Kotamobagu 23695, Kalteng', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(72, 13, 72, 23, 8, 0, 'canceled', '649 Boris Island\nPort Lela, CT 06742', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(73, 19, 73, 23, 16, 0, 'pending', 'Google Meet', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(74, 16, 74, 24, 29, 1, 'ongoing', 'Kpg. Yoga No. 278, Administrasi Jakarta Utara 22470, Bengkulu', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(75, 35, 75, 24, 6, 0, 'complete', '422 Brionna Well\nNorth Katherinemouth, AR 54458-5432', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(76, 24, 76, 25, 10, 0, 'canceled', '22523 Orval Rue Apt. 625\nVeronicaside, ME 71054-1765', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(77, 45, 77, 25, 5, 0, 'complete', 'Gg. Soekarno Hatta No. 188, Makassar 54281, Kaltim', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(78, 9, 78, 25, 13, 0, 'complete', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(79, 44, 79, 26, 13, 0, 'complete', 'Jr. Mahakam No. 299, Administrasi Jakarta Timur 12096, NTB', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(80, 53, 80, 26, 28, 0, 'complete', 'Any Meeting', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(81, 67, 81, 27, 27, 0, 'complete', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(82, 66, 82, 27, 5, 0, 'pending', 'Kpg. Tangkuban Perahu No. 955, Bitung 22037, Jambi', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(83, 18, 83, 27, 26, 0, 'complete', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(84, 44, 84, 28, 4, 0, 'ongoing', 'Jr. Mahakam No. 299, Administrasi Jakarta Timur 12096, NTB', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(85, 30, 85, 28, 17, 0, 'complete', 'Microsoft Teams', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(86, 18, 86, 28, 4, 0, 'ongoing', 'Gg. Jambu No. 921, Padang 93063, Maluku', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(87, 64, 87, 29, 29, 0, 'complete', 'Lifesize', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(88, 39, 88, 29, 9, 0, 'complete', '4789 Herman Junctions Suite 848\nCotyshire, SD 31209', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(89, 49, 89, 29, 17, 0, 'canceled', 'RingCentral Meetings', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(90, 42, 90, 29, 26, 0, 'complete', 'BlueJeans', '2023-01-08 22:40:33', '2023-01-08 22:40:34'),
(91, 13, 91, 29, 30, 1, 'canceled', 'Ki. Ki Hajar Dewantara No. 636, Mataram 42329, Jambi', '2023-01-08 22:40:33', '2023-01-08 22:40:34');

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
(1, 1, 17, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(2, 2, 21, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(3, 2, 7, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(4, 3, 5, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(5, 3, 47, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(6, 4, 21, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(7, 5, 31, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(8, 6, 58, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(9, 7, 33, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(10, 8, 35, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(11, 9, 36, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(12, 10, 27, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(13, 10, 53, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(14, 11, 19, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(15, 12, 54, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(16, 13, 70, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(17, 13, 18, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(18, 14, 53, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(19, 14, 5, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(20, 15, 14, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(21, 16, 17, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(22, 16, 27, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(23, 16, 3, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(24, 17, 15, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(25, 18, 20, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(26, 18, 20, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(27, 18, 14, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(28, 19, 10, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(29, 19, 44, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(30, 20, 53, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(31, 20, 18, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(32, 21, 58, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(33, 21, 15, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(34, 21, 41, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(35, 22, 64, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(36, 22, 4, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(37, 23, 67, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(38, 23, 15, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(39, 24, 67, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(40, 25, 19, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(41, 25, 33, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(42, 26, 11, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(43, 26, 66, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(44, 27, 70, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(45, 27, 56, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(46, 27, 66, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(47, 28, 57, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(48, 28, 12, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(49, 28, 8, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(50, 29, 16, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(51, 29, 66, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(52, 30, 9, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(53, 30, 3, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(54, 30, 64, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(55, 31, 40, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(56, 31, 4, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(57, 32, 29, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(58, 32, 11, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(59, 33, 40, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(60, 34, 14, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(61, 34, 14, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(62, 34, 18, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(63, 35, 55, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(64, 35, 22, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(65, 35, 60, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(66, 36, 22, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(67, 37, 66, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(68, 37, 26, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(69, 38, 22, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(70, 38, 62, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(71, 38, 47, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(72, 39, 45, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(73, 39, 67, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(74, 39, 18, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(75, 40, 6, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(76, 40, 2, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(77, 40, 55, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(78, 41, 45, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(79, 41, 30, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(80, 42, 58, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(81, 43, 51, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(82, 43, 70, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(83, 43, 64, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(84, 44, 70, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(85, 45, 6, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(86, 45, 40, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(87, 46, 42, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(88, 46, 59, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(89, 46, 65, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(90, 47, 14, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(91, 47, 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(92, 48, 1, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(93, 48, 66, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(94, 49, 67, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(95, 49, 1, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(96, 49, 24, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(97, 50, 39, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(98, 50, 42, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(99, 50, 60, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(100, 51, 15, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(101, 51, 52, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(102, 51, 27, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(103, 52, 8, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(104, 52, 4, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(105, 52, 44, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(106, 53, 13, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(107, 54, 45, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(108, 54, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(109, 55, 44, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(110, 55, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(111, 55, 56, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(112, 56, 3, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(113, 57, 60, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(114, 57, 40, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(115, 57, 65, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(116, 58, 44, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(117, 59, 26, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(118, 60, 23, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(119, 61, 42, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(120, 61, 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(121, 61, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(122, 62, 55, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(123, 62, 54, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(124, 62, 58, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(125, 63, 15, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(126, 64, 48, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(127, 65, 16, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(128, 66, 62, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(129, 66, 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(130, 67, 8, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(131, 68, 27, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(132, 68, 68, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(133, 69, 32, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(134, 70, 1, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(135, 70, 10, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(136, 71, 18, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(137, 71, 25, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(138, 71, 44, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(139, 72, 26, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(140, 72, 69, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(141, 72, 22, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(142, 73, 15, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(143, 74, 12, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(144, 74, 47, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(145, 75, 2, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(146, 75, 21, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(147, 75, 44, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(148, 76, 46, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(149, 76, 16, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(150, 76, 63, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(151, 77, 38, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(152, 78, 2, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(153, 78, 56, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(154, 79, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(155, 80, 37, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(156, 80, 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(157, 80, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(158, 81, 18, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(159, 82, 69, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(160, 82, 54, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(161, 83, 61, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(162, 84, 63, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(163, 85, 69, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(164, 85, 32, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(165, 85, 4, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(166, 86, 55, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(167, 86, 64, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(168, 87, 32, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(169, 87, 37, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(170, 87, 54, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(171, 88, 59, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(172, 89, 38, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(173, 89, 50, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(174, 89, 50, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(175, 90, 49, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(176, 90, 29, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(177, 91, 51, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(178, 91, 58, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(179, 91, 29, '2023-01-08 22:40:39', '2023-01-08 22:40:39');

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
(1, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Senin'),
(2, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Selasa'),
(3, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Rabu'),
(4, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Kamis'),
(5, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Jumat'),
(6, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Sabtu'),
(7, '2023-01-08 22:40:30', '2023-01-08 22:40:30', 'Minggu');

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
(1, 1, '10:30:00', '13:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(2, 1, '18:00:00', '19:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(3, 1, '07:30:00', '12:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(4, 1, '16:00:00', '19:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(5, 1, '11:00:00', '16:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(6, 1, '16:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(7, 1, '11:00:00', '13:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(8, 1, '16:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(9, 1, '15:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(10, 1, '12:30:00', '14:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(11, 2, '14:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(12, 2, '13:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(13, 2, '18:00:00', '23:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(14, 2, '08:00:00', '11:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(15, 2, '10:30:00', '14:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(16, 2, '16:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(17, 2, '19:00:00', '22:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(18, 2, '18:30:00', '21:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(19, 2, '13:00:00', '15:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(20, 2, '17:30:00', '19:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(21, 3, '10:00:00', '15:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(22, 3, '13:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(23, 3, '08:30:00', '12:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(24, 3, '07:30:00', '09:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(25, 3, '08:30:00', '10:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(26, 3, '07:30:00', '11:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(27, 3, '07:30:00', '10:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(28, 3, '18:00:00', '19:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(29, 3, '14:30:00', '15:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(30, 3, '16:00:00', '19:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(31, 4, '18:30:00', '23:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(32, 4, '21:00:00', '23:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(33, 4, '17:30:00', '20:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(34, 4, '20:00:00', '01:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(35, 4, '08:30:00', '12:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(36, 4, '11:30:00', '16:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(37, 4, '16:30:00', '19:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(38, 4, '18:00:00', '20:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(39, 4, '14:00:00', '18:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(40, 4, '16:30:00', '17:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(41, 5, '19:30:00', '20:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(42, 5, '17:30:00', '22:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(43, 5, '15:00:00', '20:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(44, 5, '15:30:00', '17:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(45, 5, '21:00:00', '22:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(46, 5, '13:30:00', '15:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(47, 5, '19:00:00', '21:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(48, 5, '21:00:00', '01:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(49, 5, '10:00:00', '15:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(50, 5, '14:00:00', '18:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(51, 6, '12:30:00', '13:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(52, 6, '14:30:00', '15:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(53, 6, '08:30:00', '09:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(54, 6, '14:00:00', '15:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(55, 6, '10:30:00', '11:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(56, 6, '12:30:00', '14:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(57, 6, '20:00:00', '01:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(58, 6, '16:30:00', '17:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(59, 6, '12:30:00', '13:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(60, 6, '19:30:00', '23:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(61, 7, '15:30:00', '16:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(62, 7, '16:00:00', '19:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(63, 7, '08:30:00', '10:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(64, 7, '15:00:00', '17:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(65, 7, '10:30:00', '14:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(66, 7, '20:30:00', '22:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(67, 7, '09:30:00', '13:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(68, 7, '10:30:00', '13:30:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(69, 7, '17:00:00', '18:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(70, 7, '14:00:00', '15:00:00', '2023-01-08 22:40:30', '2023-01-08 22:40:30');

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
(1, 13, 'Anonymous', 287035, 'Semoga membantu ya!', 92, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(2, 4, 'Latika Azalea Rahayu S.Gz', 275506, 'Semoga membantu ya!', 93, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(3, 1, 'Surya Kurniawan', 111824, 'Semoga membantu ya!', 94, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(4, 8, 'Baktiono Halim', 122680, 'Semoga membantu ya!', 95, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(5, 20, 'Anonymous', 176880, 'Semoga membantu ya!', 96, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(6, 2, 'Anonymous', 225702, 'Semoga membantu ya!', 97, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(7, 4, 'Anonymous', 268300, 'Semoga membantu ya!', 98, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(8, 19, 'Anonymous', 67983, 'Semoga membantu ya!', 99, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(9, 4, 'Dian Rahayu', 120569, 'Semoga membantu ya!', 100, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(10, 25, 'Anonymous', 275196, 'Semoga membantu ya!', 101, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(11, 7, 'Dinda Yolanda', 259425, 'Semoga membantu ya!', 102, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(12, 5, 'Anonymous', 134769, 'Semoga membantu ya!', 103, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(13, 7, 'Jail Sirait', 191154, 'Semoga membantu ya!', 104, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(14, 19, 'Anonymous', 282242, 'Semoga membantu ya!', 105, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(15, 22, 'Iriana Rina Astuti M.Ak', 130754, 'Semoga membantu ya!', 106, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(16, 27, 'Asman Anggriawan', 275264, 'Semoga membantu ya!', 107, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(17, 8, 'Yulia Karimah Wahyuni S.Kom', 252268, 'Semoga membantu ya!', 108, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(18, 24, 'Puji Mayasari S.Pt', 232221, 'Semoga membantu ya!', 109, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(19, 10, 'Anonymous', 55920, 'Semoga membantu ya!', 110, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(20, 3, 'Anonymous', 204055, 'Semoga membantu ya!', 111, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(21, 8, 'Anonymous', 26899, 'Semoga membantu ya!', 112, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(22, 4, 'Anonymous', 24547, 'Semoga membantu ya!', 113, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(23, 4, 'Wisnu Kusumo', 78745, 'Semoga membantu ya!', 114, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(24, 22, 'Laila Lidya Farida', 60075, 'Semoga membantu ya!', 115, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(25, 29, 'Kariman Gunarto', 109428, 'Semoga membantu ya!', 116, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(26, 1, 'Anonymous', 194789, 'Semoga membantu ya!', 117, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(27, 24, 'Prabawa Maman Ardianto', 183160, 'Semoga membantu ya!', 118, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(28, 23, 'Jatmiko Artanto Setiawan', 92662, 'Semoga membantu ya!', 119, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(29, 19, 'Jaiman Rajata', 102480, 'Semoga membantu ya!', 120, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(30, 24, 'Anonymous', 56149, 'Semoga membantu ya!', 121, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(31, 21, 'Anonymous', 291207, 'Semoga membantu ya!', 122, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(32, 22, 'Anonymous', 200807, 'Semoga membantu ya!', 123, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(33, 25, 'Luis Salahudin', 173158, 'Semoga membantu ya!', 124, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(34, 12, 'Anonymous', 271503, 'Semoga membantu ya!', 125, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(35, 17, 'Anonymous', 14113, 'Semoga membantu ya!', 126, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(36, 5, 'Anonymous', 72699, 'Semoga membantu ya!', 127, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(37, 15, 'Anonymous', 292648, 'Semoga membantu ya!', 128, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(38, 15, 'Anonymous', 150892, 'Semoga membantu ya!', 129, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(39, 22, 'Anonymous', 207283, 'Semoga membantu ya!', 130, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(40, 10, 'Kasim Tamba', 102767, 'Semoga membantu ya!', 131, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(41, 21, 'Anonymous', 145375, 'Semoga membantu ya!', 132, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(42, 15, 'Anonymous', 237636, 'Semoga membantu ya!', 133, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(43, 28, 'Anonymous', 50123, 'Semoga membantu ya!', 134, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(44, 19, 'Muhammad Irawan S.E.', 93728, 'Semoga membantu ya!', 135, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(45, 17, 'Keisha Nasyidah', 79539, 'Semoga membantu ya!', 136, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(46, 7, 'Anonymous', 152406, 'Semoga membantu ya!', 137, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(47, 4, 'Anonymous', 41998, 'Semoga membantu ya!', 138, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(48, 28, 'Anonymous', 266452, 'Semoga membantu ya!', 139, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(49, 22, 'Oliva Ina Sudiati', 270411, 'Semoga membantu ya!', 140, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(50, 9, 'Clara Riyanti', 31753, 'Semoga membantu ya!', 141, '2023-01-08 22:40:39', '2023-01-08 22:40:39');

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
(1, 'Fa Pangestu Najmudin Tbk', 'https://picsum.photos/id/355/640', 'Voluptates temporibus aut eius voluptatem ut. Consequatur ipsa qui odit deleniti enim. Voluptate ullam et quia necessitatibus autem repellat. Sapiente fugiat alias sunt vitae voluptatem culpa.', 48, 2, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(2, 'PT Uyainah Astuti (Persero) Tbk', 'https://picsum.photos/id/490/640', 'Sequi dolor quaerat sit sed officiis. Assumenda vel consequatur quia repellendus. Vel eum et sit nobis. Sapiente eum harum libero aliquid placeat et eum.', 11, 3, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(3, 'CV Saptono Gunarto', 'https://picsum.photos/id/449/640', 'Vero et mollitia alias. Aut sint cumque ab praesentium doloribus omnis cumque. Atque sed possimus sint dolorem doloremque.', 47, 8, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(4, 'UD Manullang (Persero) Tbk', 'https://picsum.photos/id/393/640', 'Eum veritatis qui error sit. Rerum doloribus impedit aut dicta et.', 13, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(5, 'PJ Suwarno Tbk', 'https://picsum.photos/id/253/640', 'Dolor autem saepe officia sed et odit quo. Voluptas architecto blanditiis qui soluta. Beatae dignissimos maxime quos unde explicabo. Rerum dolorem iste laborum voluptatem.', 43, 12, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(6, 'Fa Nasyidah Puspasari Tbk', 'https://picsum.photos/id/360/640', 'Recusandae accusamus possimus iusto rerum nihil molestias. Rerum rerum consequatur et. Tenetur voluptas et temporibus qui. Voluptatem maxime dolorem autem at quos.', 26, 13, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(7, 'PD Suryatmi', 'https://picsum.photos/id/262/640', 'Saepe aut molestiae maiores ex. Culpa repellat delectus et laborum laborum omnis omnis. Ullam quos architecto incidunt. Beatae qui ratione quis rerum excepturi voluptatem in nihil.', 25, 17, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(8, 'CV Lailasari', 'https://picsum.photos/id/306/640', 'Harum blanditiis cum asperiores eum. Qui officia ex ducimus earum. Voluptatum nostrum nesciunt voluptatem. Sunt est quas laboriosam et ea corrupti vitae. Autem et quae deserunt quia impedit.', 25, 19, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(9, 'CV Riyanti Nasyidah', 'https://picsum.photos/id/381/640', 'Dignissimos enim eius est nihil deleniti. Quia omnis quas dignissimos nesciunt recusandae voluptatem nisi. At laboriosam eos alias vitae id et molestiae reiciendis.', 35, 22, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(10, 'Fa Situmorang Tbk', 'https://picsum.photos/id/315/640', 'Facilis voluptas ipsum consequatur velit fugit enim. Ab consequatur exercitationem maxime mollitia eos aperiam. Fugiat vitae nihil qui ut.', 16, 24, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(11, 'Fa Pratama Pangestu', 'https://picsum.photos/id/424/640', 'Velit tempora optio deserunt vero suscipit ut amet dolore. Minus modi sed id unde velit et. Voluptas quos tenetur quo dicta.', 29, 25, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(12, 'PJ Aryani Mahendra (Persero) Tbk', 'https://picsum.photos/id/373/640', 'Tempore et autem id. Possimus eaque eveniet blanditiis et corrupti. Nisi dicta modi quo minus at nam. Veritatis occaecati assumenda voluptas enim adipisci quam et.', 17, 27, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(13, 'Fa Mangunsong (Persero) Tbk', 'https://picsum.photos/id/428/640', 'Atque voluptatem similique porro est voluptates vel. Provident qui doloremque laboriosam qui ducimus sint. Corrupti praesentium quisquam quos molestiae quae enim odio.', 18, 28, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(14, 'PJ Suwarno Aryani (Persero) Tbk', 'https://picsum.photos/id/253/640', 'Pariatur quis facere impedit placeat aliquam odit qui. Corrupti officiis omnis sapiente facilis nulla adipisci et. Quia eligendi odio rem qui ea tempore at.', 12, 30, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(15, 'Perum Haryanti Rajasa Tbk', 'https://picsum.photos/id/427/640', 'Laudantium atque aut sed sequi quos. Placeat deserunt maiores nostrum magnam dolor. Dolor ipsa officiis iure aut dolor. Quo in veritatis et explicabo.', 25, 31, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(16, 'PD Salahudin Susanti (Persero) Tbk', 'https://picsum.photos/id/267/640', 'Qui est ut in. Dolor harum deserunt placeat porro amet. Magnam molestias vel itaque facilis.', 48, 32, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(17, 'PT Rahayu Rajata (Persero) Tbk', 'https://picsum.photos/id/495/640', 'Consequuntur et autem quas ullam. Excepturi perferendis ipsum est nulla doloremque odit. Minus est asperiores iste officia. Et ut voluptatibus quis facere velit.', 33, 33, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(18, 'PD Latupono Tbk', 'https://picsum.photos/id/420/640', 'Deleniti facere sit aliquid cupiditate tempore eius maiores. Ea officia aut mollitia quaerat voluptas dolor. Vitae dolorem soluta dolores id.', 11, 35, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(19, 'PT Waluyo (Persero) Tbk', 'https://picsum.photos/id/305/640', 'Beatae quis assumenda qui magnam perspiciatis. Exercitationem ducimus sed officia fugit. Consequatur quis vero dignissimos et.', 31, 36, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(20, 'PJ Lestari (Persero) Tbk', 'https://picsum.photos/id/269/640', 'Iusto libero sunt nihil sit aut et libero. Assumenda error perferendis aspernatur. Veritatis consequuntur ipsum magnam qui quae voluptate. Alias nostrum ab excepturi neque itaque ullam.', 42, 38, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(21, 'PT Usamah Prasetya Tbk', 'https://picsum.photos/id/406/640', 'Doloribus quidem veritatis voluptatem minus rerum. Voluptatem minus maxime facilis expedita. Ut eius et hic suscipit nihil fugit eligendi. Maiores dolorum et dolor omnis.', 27, 39, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(22, 'PD Anggriawan Pradana', 'https://picsum.photos/id/436/640', 'Alias reprehenderit maiores adipisci mollitia omnis ab est. Et voluptates ut autem est pariatur praesentium. Ut debitis fuga nostrum est dignissimos ipsam.', 36, 41, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(23, 'PJ Latupono', 'https://picsum.photos/id/289/640', 'Ipsam similique est et corrupti sed. Quibusdam dolorem ut qui. Quo nihil quas eum ut.', 18, 42, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(24, 'Perum Hutapea Tbk', 'https://picsum.photos/id/491/640', 'Sit totam eos quos id consectetur voluptatem. Maxime et consequuntur cupiditate dolores possimus rerum tenetur.', 47, 43, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(25, 'Fa Pratama Wulandari', 'https://picsum.photos/id/393/640', 'Vel rerum cupiditate qui. Et sint et ipsam aut est quae eos sed.', 19, 45, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(26, 'PD Marpaung', 'https://picsum.photos/id/405/640', 'Aut quia labore est quos. Est sed tempore doloribus qui optio. Doloribus provident enim dolores vel incidunt laboriosam mollitia.', 22, 47, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(27, 'Yayasan Wahyudin Yuliarti', 'https://picsum.photos/id/354/640', 'Assumenda deserunt dolorem aspernatur eius similique et excepturi magni. Et voluptas dignissimos nihil id. Nostrum eos error nostrum ut cupiditate est. Officia autem ex est et.', 12, 48, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(28, 'Fa Permadi Mardhiyah', 'https://picsum.photos/id/316/640', 'Nobis vitae voluptate illum et. Facere iste quas quis velit.', 31, 50, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(29, 'PD Hasanah', 'https://picsum.photos/id/414/640', 'Et voluptas at esse. Excepturi laboriosam non natus ut nemo quam sit occaecati. Soluta officia itaque doloremque. Odit repudiandae dolorem nemo.', 15, 51, '2023-01-08 22:40:31', '2023-01-08 22:40:31');

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
(1, 1, 'Estiono', '1983-01-01 19:36:08', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(2, 1, 'Gantar', '1995-05-26 23:12:13', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(3, 1, 'Harjo', '1998-11-02 07:57:30', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(4, 1, 'Tina', '1982-08-19 22:56:51', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(5, 1, 'Rini', '1976-01-31 04:48:04', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(6, 1, 'Daryani', '1993-06-14 04:41:16', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(7, 1, 'Belinda', '1983-03-28 02:56:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(8, 1, 'Anita', '1979-06-22 23:38:00', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(9, 1, 'Gatra', '1990-10-22 04:32:01', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(10, 1, 'Kiandra', '1979-04-27 10:09:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(11, 1, 'Ida', '1997-01-03 02:15:30', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(12, 1, 'Padma', '1991-07-26 17:32:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(13, 1, 'Dinda', '1977-09-19 13:26:49', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(14, 1, 'Usman', '2004-07-03 06:23:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(15, 1, 'Prayogo', '1990-11-23 05:29:25', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(16, 1, 'Shania', '2001-02-17 21:28:48', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(17, 1, 'Mutia', '1986-06-05 15:52:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(18, 1, 'Violet', '1976-05-28 06:04:43', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(19, 1, 'Eli', '1987-09-25 18:28:30', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(20, 1, 'Ajiman', '1986-09-18 20:53:47', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(21, 1, 'Mumpuni', '1977-12-19 06:47:10', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(22, 1, 'Lalita', '1998-10-04 09:54:43', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(23, 1, 'Asman', '2000-04-24 03:37:01', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(24, 1, 'Jaga', '1996-12-05 15:39:47', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(25, 1, 'Kurnia', '1997-02-16 17:23:02', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(26, 1, 'Ira', '1996-09-16 23:59:49', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(27, 1, 'Kasiyah', '1991-09-10 08:44:48', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(28, 1, 'Adhiarja', '2000-07-25 16:55:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(29, 1, 'Daru', '1981-12-04 19:48:00', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(30, 1, 'Jarwa', '2001-05-11 01:43:04', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(31, 1, 'Julia', '2004-02-03 19:56:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(32, 1, 'Estiawan', '1983-03-27 08:02:40', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(33, 1, 'Enteng', '1991-10-02 16:10:16', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(34, 1, 'Galur', '1978-02-25 15:24:40', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(35, 1, 'Mala', '1996-03-08 02:53:57', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(36, 1, 'Dina', '1982-05-08 07:41:05', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(37, 1, 'Yono', '1978-10-28 22:41:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(38, 1, 'Simon', '1987-09-04 04:29:28', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(39, 1, 'Zalindra', '1994-02-02 14:52:11', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(40, 1, 'Taswir', '1977-12-19 16:59:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(41, 1, 'Edi', '1996-04-27 18:07:43', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(42, 1, 'Caturangga', '1996-10-31 02:58:24', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(43, 1, 'Bahuwarna', '2004-10-20 16:48:54', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(44, 1, 'Gamani', '1981-11-30 22:47:36', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(45, 1, 'Karta', '1977-08-14 19:33:26', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(46, 1, 'Kasiyah', '1978-02-26 10:44:42', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(47, 1, 'Aisyah', '1993-01-09 08:07:00', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(48, 1, 'Vera', '1980-05-17 01:14:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(49, 2, 'Farhunnisa', '1976-03-29 08:02:29', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(50, 2, 'Nadine', '2001-07-07 10:54:00', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(51, 2, 'Ida', '1981-06-09 04:18:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(52, 2, 'Kezia', '1980-08-14 06:48:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(53, 2, 'Waluyo', '1979-04-25 13:35:46', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(54, 2, 'Harjaya', '1990-04-20 17:00:10', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(55, 2, 'Puspa', '1988-09-25 13:33:26', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(56, 2, 'Gasti', '1992-06-24 05:12:30', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(57, 2, 'Lalita', '1996-01-11 01:48:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(58, 2, 'Halim', '1993-01-22 08:36:51', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(59, 2, 'Cornelia', '1979-08-26 10:15:19', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(60, 3, 'Jaeman', '1979-11-19 09:08:11', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(61, 3, 'Ratih', '1997-11-13 00:00:18', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(62, 3, 'Purwadi', '1983-01-27 13:00:32', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(63, 3, 'Kamaria', '1993-12-14 07:14:53', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(64, 3, 'Kayun', '1999-04-25 12:02:45', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(65, 3, 'Nugraha', '1989-08-20 22:07:47', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(66, 3, 'Irwan', '1985-08-12 08:49:00', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(67, 3, 'Shania', '1977-03-04 06:14:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(68, 3, 'Kasiyah', '1995-10-02 10:46:56', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(69, 3, 'Luwes', '1976-01-20 02:22:12', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(70, 3, 'Fitriani', '2000-10-28 21:46:46', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(71, 3, 'Lurhur', '1992-03-11 03:30:34', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(72, 3, 'Banawi', '1977-02-26 15:24:09', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(73, 3, 'Asmuni', '1997-11-05 12:32:57', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(74, 3, 'Mulyanto', '1984-07-21 13:11:20', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(75, 3, 'Sabrina', '1993-08-27 20:32:13', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(76, 3, 'Calista', '1984-07-28 03:44:29', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(77, 3, 'Harjaya', '1981-06-20 04:21:03', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(78, 3, 'Surya', '1999-05-28 07:31:25', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(79, 3, 'Ganjaran', '1999-01-30 08:35:31', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(80, 3, 'Jaya', '1988-11-27 17:04:41', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(81, 3, 'Kurnia', '1976-10-26 07:56:33', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(82, 3, 'Ika', '1994-01-24 00:33:28', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(83, 3, 'Citra', '1986-09-13 17:17:59', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(84, 3, 'Kenes', '1984-12-02 22:13:17', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(85, 3, 'Warta', '1980-09-04 13:46:34', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(86, 3, 'Taufik', '1979-02-02 07:07:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(87, 3, 'Indah', '2001-01-23 23:14:10', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(88, 3, 'Hartana', '1977-04-14 23:54:14', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(89, 3, 'Lurhur', '1979-03-30 19:06:29', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(90, 3, 'Muhammad', '2004-07-26 12:16:06', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(91, 3, 'Lalita', '1990-08-29 22:37:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(92, 3, 'Dirja', '1991-08-24 10:51:06', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(93, 3, 'Safina', '1988-07-30 21:49:35', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(94, 3, 'Artawan', '1993-01-20 06:46:29', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(95, 3, 'Zizi', '1996-07-19 23:09:39', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(96, 3, 'Dalima', '1995-01-04 21:58:14', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(97, 3, 'Ulva', '1994-01-16 02:29:35', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(98, 3, 'Wasis', '1995-05-04 10:36:14', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(99, 3, 'Purwa', '1983-03-16 04:31:28', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(100, 3, 'Putri', '1983-09-15 18:17:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(101, 3, 'Juli', '1976-07-19 00:56:41', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(102, 3, 'Hasna', '1989-06-21 18:21:58', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(103, 3, 'Putri', '1976-11-15 14:24:37', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(104, 3, 'Virman', '1981-07-16 13:14:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(105, 3, 'Tri', '1989-04-13 21:25:07', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(106, 3, 'Ira', '1992-05-09 21:58:52', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(107, 4, 'Artawan', '1996-10-13 11:37:23', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(108, 4, 'Anastasia', '1989-11-25 02:47:29', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(109, 4, 'Danuja', '1985-03-10 05:54:15', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(110, 4, 'Hesti', '1988-10-16 19:33:22', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(111, 4, 'Laswi', '1979-06-26 20:49:31', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(112, 4, 'Natalia', '1978-07-14 20:54:45', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(113, 4, 'Virman', '1990-06-13 05:18:31', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(114, 4, 'Bambang', '1980-10-29 21:33:38', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(115, 4, 'Gangsar', '1997-09-18 05:26:09', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(116, 4, 'Edi', '2001-01-24 16:28:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(117, 4, 'Gandi', '1977-01-23 01:21:35', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(118, 4, 'Maya', '1989-08-31 15:38:02', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(119, 4, 'Elvina', '1977-01-03 09:24:17', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(120, 5, 'Padma', '1986-07-29 13:00:19', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(121, 5, 'Arta', '1989-11-22 16:26:36', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(122, 5, 'Warta', '2002-05-11 15:16:45', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(123, 5, 'Alambana', '1993-01-26 06:23:24', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(124, 5, 'Carub', '2001-07-31 22:37:45', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(125, 5, 'Arsipatra', '1994-12-03 01:51:44', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(126, 5, 'Julia', '1990-09-17 13:45:00', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(127, 5, 'Irnanto', '1997-11-23 13:49:51', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(128, 5, 'Waluyo', '1992-10-24 05:00:19', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(129, 5, 'Harsana', '1977-12-29 21:59:13', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(130, 5, 'Samiah', '1997-07-19 02:53:21', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(131, 5, 'Sabrina', '1977-04-04 13:41:54', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(132, 5, 'Adiarja', '2000-08-30 08:40:02', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(133, 5, 'Oni', '1988-09-25 08:08:17', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(134, 5, 'Lintang', '2001-07-01 22:39:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(135, 5, 'Rendy', '1987-07-27 00:57:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(136, 5, 'Nadia', '1989-06-01 05:29:41', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(137, 5, 'Maras', '1978-06-01 07:48:02', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(138, 5, 'Asirwada', '1982-07-23 07:19:39', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(139, 5, 'Ifa', '1994-08-29 22:16:53', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(140, 5, 'Humaira', '2001-07-30 09:42:56', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(141, 5, 'Raden', '1977-02-15 05:53:12', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(142, 5, 'Tina', '1999-05-15 16:57:03', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(143, 5, 'Yunita', '1990-08-11 19:39:27', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(144, 5, 'Jamal', '2003-06-29 00:44:21', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(145, 5, 'Usman', '1980-02-27 20:21:46', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(146, 5, 'Wulan', '1990-05-23 07:39:01', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(147, 5, 'Nova', '1989-06-13 21:31:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(148, 5, 'Zelda', '1993-07-29 01:36:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(149, 5, 'Dian', '1979-10-14 02:35:16', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(150, 5, 'Nova', '1979-07-08 18:19:53', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(151, 5, 'Lidya', '1981-06-29 16:07:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(152, 5, 'Ajimat', '1980-09-08 09:59:45', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(153, 5, 'Gabriella', '1989-05-10 10:15:08', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(154, 5, 'Genta', '1988-01-09 13:18:44', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(155, 5, 'Oman', '1986-09-21 14:44:57', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(156, 5, 'Hani', '1998-06-12 07:27:29', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(157, 5, 'Azalea', '2000-05-05 19:00:18', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(158, 5, 'Ulya', '1984-03-25 03:53:59', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(159, 5, 'Olga', '1995-09-20 02:48:41', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(160, 5, 'Yulia', '1979-04-11 14:21:19', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(161, 5, 'Virman', '1979-07-05 02:41:09', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(162, 5, 'Cindy', '2001-01-10 02:37:40', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(163, 6, 'Galih', '1978-10-08 09:01:29', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(164, 6, 'Ida', '1990-07-21 05:28:24', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(165, 6, 'Bajragin', '1989-03-03 05:55:18', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(166, 6, 'Asirwanda', '1976-05-11 04:02:12', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(167, 6, 'Hamima', '1985-06-26 09:38:49', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(168, 6, 'Harsanto', '1981-11-18 12:44:42', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(169, 6, 'Karta', '1985-07-31 10:58:15', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(170, 6, 'Paris', '1980-09-06 03:33:45', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(171, 6, 'Elvina', '1976-10-23 02:35:41', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(172, 6, 'Lutfan', '1997-02-25 13:11:47', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(173, 6, 'Lili', '1995-10-06 12:29:27', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(174, 6, 'Rusman', '1999-02-28 03:57:00', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(175, 6, 'Zamira', '1995-10-05 00:06:40', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(176, 6, 'Cahyono', '1997-01-08 11:38:39', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(177, 6, 'Tami', '1978-05-10 17:58:08', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(178, 6, 'Jayeng', '2000-12-23 16:19:11', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(179, 6, 'Rahmi', '1982-10-19 06:46:19', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(180, 6, 'Sabrina', '1998-08-22 21:09:48', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(181, 6, 'Yahya', '1999-01-10 11:17:38', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(182, 6, 'Kasiyah', '1993-07-30 20:34:59', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(183, 6, 'Jane', '2000-07-28 07:13:06', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(184, 6, 'Melinda', '2004-03-12 14:59:54', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(185, 6, 'Olivia', '1995-06-16 02:00:53', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(186, 6, 'Baktiono', '1984-12-02 15:04:13', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(187, 6, 'Darimin', '2003-12-16 18:06:00', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(188, 6, 'Tania', '1983-06-06 23:38:24', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(189, 7, 'Fitriani', '1995-02-01 12:32:34', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(190, 7, 'Indra', '1981-03-04 10:36:18', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(191, 7, 'Hartaka', '1987-02-07 06:37:48', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(192, 7, 'Belinda', '1980-09-21 01:44:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(193, 7, 'Farhunnisa', '1985-11-24 10:09:09', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(194, 7, 'Ivan', '2001-05-22 08:20:07', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(195, 7, 'Rahman', '1991-11-07 09:57:00', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(196, 7, 'Syahrini', '1979-01-12 09:37:46', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(197, 7, 'Jasmin', '1990-08-03 03:03:58', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(198, 7, 'Maryanto', '2002-02-12 09:29:14', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(199, 7, 'Agnes', '1991-08-25 02:49:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(200, 7, 'Embuh', '1980-04-12 11:21:18', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(201, 7, 'Ayu', '1995-06-21 04:04:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(202, 7, 'Yessi', '1990-05-12 02:27:38', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(203, 7, 'Himawan', '1995-05-27 21:57:20', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(204, 7, 'Kiandra', '1978-04-01 04:21:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(205, 7, 'Ade', '2004-04-27 01:12:19', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(206, 7, 'Danang', '1979-12-29 03:28:20', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(207, 7, 'Bambang', '1991-10-08 21:30:59', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(208, 7, 'Zulaikha', '1998-06-09 06:20:18', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(209, 7, 'Ina', '1993-05-30 07:09:35', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(210, 7, 'Rahman', '1987-05-27 16:00:21', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(211, 7, 'Padma', '1976-08-18 15:39:45', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(212, 7, 'Alika', '1998-07-08 16:19:14', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(213, 7, 'Samiah', '1984-04-19 06:33:44', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(214, 8, 'Jumari', '1994-04-12 17:04:35', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(215, 8, 'Jaka', '1980-02-04 02:57:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(216, 8, 'Kamidin', '1988-04-05 06:28:48', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(217, 8, 'Lukman', '1997-11-18 00:02:53', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(218, 8, 'Harimurti', '1980-04-02 20:08:19', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(219, 8, 'Siska', '1976-03-12 17:22:46', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(220, 8, 'Cecep', '1981-08-19 22:16:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(221, 8, 'Panji', '1988-05-28 21:56:31', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(222, 8, 'Mulya', '2001-02-26 19:29:45', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(223, 8, 'Rini', '1980-07-18 03:30:45', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(224, 8, 'Cagak', '1986-05-05 15:23:11', 'Male', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(225, 8, 'Kasusra', '1980-10-01 08:45:17', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(226, 8, 'Olivia', '2004-11-05 07:13:20', 'Female', '', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(227, 8, 'Nadine', '1988-02-10 02:56:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(228, 8, 'Salimah', '1996-07-04 18:42:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(229, 8, 'Garang', '1977-06-08 04:31:21', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(230, 8, 'Vanesa', '1999-03-17 14:20:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(231, 8, 'Dadi', '1991-12-08 07:50:30', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(232, 8, 'Carub', '1988-04-11 13:53:20', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(233, 8, 'Danuja', '1999-04-26 10:21:23', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(234, 8, 'Shania', '1999-12-13 11:26:32', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(235, 8, 'Ciaobella', '1984-12-01 21:40:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(236, 8, 'Jane', '1977-11-14 20:32:23', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(237, 8, 'Vero', '1999-08-07 01:31:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(238, 8, 'Ajiono', '1994-01-27 17:40:31', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(239, 9, 'Caket', '1986-03-30 20:38:15', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(240, 9, 'Jamalia', '1993-02-18 07:49:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(241, 9, 'Lili', '2003-01-14 07:30:25', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(242, 9, 'Bakiadi', '1977-10-07 18:07:27', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(243, 9, 'Puti', '1981-09-30 04:02:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(244, 9, 'Siska', '1985-07-22 03:23:45', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(245, 9, 'Elma', '1980-02-28 14:31:19', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(246, 9, 'Mustofa', '2004-03-26 09:37:17', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(247, 9, 'Endra', '2003-03-29 14:05:39', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(248, 9, 'Kania', '1990-04-11 08:10:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(249, 9, 'Pangeran', '1986-09-23 23:13:34', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(250, 9, 'Jamalia', '2000-03-17 14:42:22', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(251, 9, 'Banawi', '1976-10-12 16:31:51', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(252, 9, 'Mutia', '1978-03-03 05:14:08', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(253, 9, 'Jessica', '1986-03-03 03:20:40', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(254, 9, 'Ratna', '2004-01-25 13:01:58', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(255, 9, 'Raina', '1986-03-08 11:36:18', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(256, 9, 'Kayla', '1981-09-28 10:39:31', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(257, 9, 'Zalindra', '2004-08-05 19:10:40', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(258, 9, 'Endah', '1988-11-02 05:47:20', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(259, 9, 'Sabrina', '1999-05-16 18:51:31', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(260, 9, 'Vega', '1980-10-05 12:46:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(261, 9, 'Kenes', '1999-02-08 04:44:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(262, 9, 'Tina', '1990-12-08 15:39:30', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(263, 9, 'Harjo', '1992-07-22 15:00:50', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(264, 9, 'Rachel', '1990-06-09 00:59:08', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(265, 9, 'Nilam', '1995-04-26 14:53:32', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(266, 9, 'Caket', '1996-10-31 05:21:26', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(267, 9, 'Gandi', '1984-01-19 01:51:18', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(268, 9, 'Silvia', '1993-04-16 08:12:27', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(269, 9, 'Almira', '1992-02-02 15:36:57', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(270, 9, 'Alika', '1997-02-05 02:39:24', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(271, 9, 'Puspa', '2002-07-25 06:40:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(272, 9, 'Maria', '1999-01-10 15:48:27', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(273, 9, 'Zamira', '1979-05-11 14:29:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(274, 10, 'Rahmat', '1985-04-06 02:00:05', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(275, 10, 'Vera', '2002-12-11 04:35:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(276, 10, 'Edi', '1995-07-18 15:16:29', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(277, 10, 'Bambang', '1990-12-06 06:12:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(278, 10, 'Yessi', '1996-12-27 05:36:08', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(279, 10, 'Marsito', '1977-11-04 06:23:26', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(280, 10, 'Laila', '1982-07-26 20:57:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(281, 10, 'Shania', '1989-03-09 14:58:02', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(282, 10, 'Taufik', '1986-10-29 14:28:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(283, 10, 'Darmanto', '1984-06-23 14:11:29', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(284, 10, 'Empluk', '2001-10-11 08:36:08', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(285, 10, 'Diah', '2003-11-30 03:59:43', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(286, 10, 'Chandra', '1992-03-05 15:47:34', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(287, 10, 'Irma', '1988-12-26 20:18:03', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(288, 10, 'Victoria', '1996-07-09 08:26:10', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(289, 10, 'Kania', '1999-03-31 09:10:23', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(290, 11, 'Gilda', '2004-05-08 07:28:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(291, 11, 'Irfan', '1980-10-01 18:12:11', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(292, 11, 'Patricia', '1992-04-08 13:12:55', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(293, 11, 'Mulyanto', '1976-09-18 10:13:27', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(294, 11, 'Farhunnisa', '1987-11-14 03:49:43', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(295, 11, 'Halim', '1998-03-07 14:17:01', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(296, 11, 'Rahmat', '1996-06-01 20:11:59', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(297, 11, 'Purwadi', '1985-07-06 06:42:31', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(298, 11, 'Carla', '1986-04-04 19:36:16', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(299, 11, 'Jinawi', '1988-03-01 23:15:36', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(300, 11, 'Janet', '1994-05-24 21:38:13', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(301, 11, 'Kamal', '1984-01-19 22:35:33', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(302, 11, 'Siska', '2002-09-15 23:35:44', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(303, 11, 'Setya', '1993-09-11 07:07:47', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(304, 11, 'Yani', '1983-01-31 15:48:09', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(305, 11, 'Prasetya', '1983-07-30 13:43:21', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(306, 11, 'Hani', '1977-01-28 23:04:05', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(307, 11, 'Eka', '1996-03-07 11:11:20', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(308, 11, 'Warta', '1981-08-06 18:58:44', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(309, 11, 'Zalindra', '1997-12-08 07:15:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(310, 11, 'Karman', '1980-12-19 01:07:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(311, 11, 'Warta', '2000-07-09 01:27:30', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(312, 11, 'Umay', '2002-06-03 14:58:54', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(313, 11, 'Lili', '1984-02-08 04:07:02', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(314, 11, 'Najam', '1993-07-22 15:47:08', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(315, 11, 'Diana', '1989-06-09 15:27:15', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(316, 11, 'Ghaliyati', '1998-06-11 18:36:21', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(317, 11, 'Hasim', '1985-06-16 23:56:17', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(318, 11, 'Kairav', '1983-08-04 15:35:57', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(319, 12, 'Vanesa', '1984-10-17 23:27:28', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(320, 12, 'Putri', '1988-01-21 17:21:14', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(321, 12, 'Raisa', '2000-11-20 22:42:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(322, 12, 'Padmi', '1976-09-14 19:27:59', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(323, 12, 'Uda', '1991-02-12 19:12:46', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(324, 12, 'Cawisadi', '1987-07-09 05:18:11', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(325, 12, 'Putri', '1986-03-29 17:43:03', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(326, 12, 'Hani', '1979-03-10 20:39:16', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(327, 12, 'Intan', '1977-08-22 09:49:22', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(328, 12, 'Devi', '1981-05-02 21:46:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(329, 12, 'Galih', '2000-08-28 18:37:51', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(330, 12, 'Banara', '1999-09-03 10:37:48', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(331, 12, 'Mitra', '1994-02-11 11:41:51', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(332, 12, 'Dina', '1990-02-07 04:16:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(333, 12, 'Raharja', '1996-07-01 23:06:34', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(334, 12, 'Hairyanto', '1981-04-02 00:55:46', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(335, 12, 'Imam', '1995-05-03 02:11:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(336, 13, 'Jarwa', '1981-12-13 23:58:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(337, 13, 'Putri', '1980-04-05 02:18:28', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(338, 13, 'Artanto', '1989-02-21 02:02:26', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(339, 13, 'Violet', '1982-08-10 23:00:17', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(340, 13, 'Langgeng', '1997-02-06 20:26:40', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(341, 13, 'Ani', '1981-04-23 22:08:35', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(342, 13, 'Gaman', '1999-04-07 03:04:06', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(343, 13, 'Kuncara', '1987-10-28 06:48:05', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(344, 13, 'Puti', '1990-06-23 19:45:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(345, 13, 'Dina', '2000-09-22 03:47:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(346, 13, 'Marwata', '1996-12-21 00:06:08', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(347, 13, 'Bajragin', '1986-02-09 12:09:36', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(348, 13, 'Asirwanda', '1984-06-29 11:07:36', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(349, 13, 'Mala', '1989-07-30 14:17:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(350, 13, 'Ciaobella', '1985-04-22 19:40:35', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(351, 13, 'Mila', '1996-10-17 02:32:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(352, 13, 'Eli', '1985-06-22 14:59:34', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(353, 13, 'Wadi', '1991-10-03 23:56:10', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(354, 14, 'Najwa', '1976-02-14 23:57:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(355, 14, 'Anita', '1994-09-19 06:48:49', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(356, 14, 'Mustofa', '1988-06-02 05:21:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(357, 14, 'Ghani', '1987-10-28 01:23:30', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(358, 14, 'Tugiman', '1981-05-09 05:41:29', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(359, 14, 'Indah', '2002-04-14 11:09:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(360, 14, 'Paris', '2002-08-30 16:01:05', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(361, 14, 'Kamila', '1986-07-16 05:20:50', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(362, 14, 'Kusuma', '1994-05-31 01:12:54', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(363, 14, 'Kayla', '1998-09-10 09:36:34', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(364, 14, 'Bakidin', '2003-11-28 12:06:25', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(365, 14, 'Nalar', '1989-08-21 03:20:53', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(366, 15, 'Ella', '1978-03-11 15:24:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(367, 15, 'Raharja', '2002-06-06 17:43:11', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(368, 15, 'Endah', '1976-04-20 06:31:46', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(369, 15, 'Gaman', '1999-07-25 13:37:29', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(370, 15, 'Edward', '1996-02-18 08:15:42', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(371, 15, 'Elisa', '1988-05-25 18:17:40', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(372, 15, 'Gasti', '1999-06-05 12:53:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(373, 15, 'Nurul', '1977-03-08 10:01:49', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(374, 15, 'Violet', '1995-03-29 06:48:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(375, 15, 'Jarwa', '2000-07-30 23:27:16', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(376, 15, 'Narji', '2001-12-08 09:40:57', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(377, 15, 'Dartono', '1978-06-20 07:56:25', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(378, 15, 'Rahayu', '2003-11-26 11:09:25', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(379, 15, 'Salimah', '1986-08-08 03:41:01', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(380, 15, 'Oni', '1978-10-30 01:00:22', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(381, 15, 'Harjasa', '1995-02-15 09:38:36', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(382, 15, 'Julia', '1987-08-14 21:40:02', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(383, 15, 'Dinda', '1991-07-14 12:51:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(384, 15, 'Indra', '1992-01-14 00:54:59', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(385, 15, 'Paiman', '1978-02-16 15:49:48', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(386, 15, 'Soleh', '2004-02-01 00:38:55', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(387, 15, 'Laila', '1977-01-09 09:48:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(388, 15, 'Cagak', '1981-10-06 21:50:19', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(389, 15, 'Indra', '1984-12-23 11:54:24', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(390, 15, 'Salsabila', '2004-03-05 10:30:24', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(391, 16, 'Siska', '1981-04-13 13:18:56', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(392, 16, 'Karman', '1994-01-03 09:57:21', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(393, 16, 'Maras', '1990-05-11 13:23:39', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(394, 16, 'Ajeng', '1998-04-16 06:06:21', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(395, 16, 'Darmanto', '1984-06-30 16:02:56', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(396, 16, 'Faizah', '1992-05-16 16:34:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(397, 16, 'Tiara', '2000-04-20 18:05:20', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(398, 16, 'Wahyu', '1991-03-28 08:00:15', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(399, 16, 'Zalindra', '2001-01-28 22:03:26', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(400, 16, 'Rudi', '2001-07-29 00:33:30', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(401, 16, 'Pandu', '2003-12-30 15:53:34', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(402, 16, 'Mariadi', '1982-12-16 00:03:09', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(403, 16, 'Latif', '1987-12-01 06:22:31', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(404, 16, 'Clara', '1979-10-08 07:03:12', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(405, 16, 'Suci', '1992-11-10 16:07:19', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(406, 16, 'Hani', '1989-01-13 05:34:11', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(407, 16, 'Jabal', '2001-11-14 21:53:01', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(408, 16, 'Ghaliyati', '1981-07-30 20:57:09', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(409, 16, 'Lintang', '1988-04-29 12:45:33', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(410, 16, 'Kenes', '1996-06-29 06:25:38', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(411, 16, 'Wardi', '1990-05-24 06:40:20', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(412, 16, 'Elvin', '1981-06-21 12:25:49', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(413, 16, 'Rachel', '1982-06-04 04:02:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(414, 16, 'Elvin', '1984-04-22 05:29:28', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(415, 16, 'Jagapati', '2000-08-24 11:23:17', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(416, 16, 'Maryanto', '2001-04-20 20:14:17', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(417, 16, 'Vino', '1987-09-02 21:20:54', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(418, 16, 'Maria', '1977-04-13 00:07:17', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(419, 16, 'Maya', '1992-01-09 13:24:41', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(420, 16, 'Ulva', '1976-04-25 02:28:39', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(421, 16, 'Kasusra', '1988-09-29 05:53:38', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(422, 16, 'Rahayu', '1982-04-19 23:07:33', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(423, 16, 'Najwa', '1991-07-18 22:07:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(424, 16, 'Febi', '1998-02-28 10:55:43', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(425, 16, 'Ajiono', '1978-04-25 19:13:20', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(426, 16, 'Jasmin', '1980-08-29 05:20:50', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(427, 16, 'Viktor', '1987-05-24 21:47:35', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(428, 16, 'Ilsa', '1993-09-03 03:18:39', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(429, 16, 'Dacin', '1996-12-25 12:54:50', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(430, 16, 'Dadap', '1985-11-22 11:40:59', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(431, 16, 'Eka', '1983-08-25 18:46:44', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(432, 16, 'Harja', '1978-12-28 21:26:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(433, 16, 'Siska', '2000-01-13 14:51:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(434, 16, 'Hadi', '1984-06-25 16:25:23', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(435, 16, 'Ophelia', '1979-04-30 07:37:31', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(436, 16, 'Maimunah', '1995-10-16 23:35:06', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(437, 16, 'Suci', '2003-08-03 22:13:26', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(438, 16, 'Tari', '1986-05-25 21:38:01', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(439, 17, 'Ganep', '1993-11-02 11:44:05', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(440, 17, 'Radit', '2003-11-05 03:29:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(441, 17, 'Paris', '1999-04-01 00:53:32', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(442, 17, 'Dacin', '1991-07-25 14:39:15', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(443, 17, 'Dalima', '1995-08-29 01:42:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(444, 17, 'Anita', '1997-06-07 14:21:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(445, 17, 'Arsipatra', '2000-03-03 10:16:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(446, 17, 'Sadina', '1993-08-23 20:21:22', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(447, 17, 'Himawan', '2003-01-16 11:11:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(448, 17, 'Bakda', '1984-03-14 23:05:34', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(449, 17, 'Zulaikha', '1996-11-08 05:55:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(450, 17, 'Carla', '1980-07-16 01:52:40', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(451, 17, 'Ghaliyati', '1978-01-12 11:02:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(452, 17, 'Mursita', '1983-11-15 03:10:40', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(453, 17, 'Paramita', '1980-01-25 21:21:43', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(454, 17, 'Rahayu', '1995-07-20 23:12:35', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(455, 17, 'Salman', '1981-03-17 17:12:00', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(456, 17, 'Sidiq', '1981-06-03 23:20:02', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(457, 17, 'Irma', '1981-07-12 12:59:16', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(458, 17, 'Budi', '1988-12-05 13:23:57', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(459, 17, 'Sadina', '1999-02-02 18:46:07', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(460, 17, 'Ana', '1992-12-14 15:47:30', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(461, 17, 'Yuliana', '1997-08-29 02:57:37', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(462, 17, 'Umi', '1984-07-30 04:17:52', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32');
INSERT INTO `orphans` (`id`, `orphanage_id`, `name`, `date_of_birth`, `gender`, `note`, `created_at`, `updated_at`) VALUES
(463, 17, 'Puji', '1988-12-21 19:50:02', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(464, 17, 'Lintang', '1985-08-10 09:47:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(465, 17, 'Samiah', '1979-12-18 03:42:55', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(466, 17, 'Ratna', '1986-05-05 17:25:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(467, 17, 'Tedi', '1982-05-05 12:34:35', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(468, 17, 'Malika', '1987-11-29 04:47:07', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(469, 17, 'Nadia', '1988-11-11 04:46:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(470, 17, 'Jati', '2000-12-01 16:24:50', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(471, 17, 'Umaya', '1987-05-04 11:24:37', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(472, 18, 'Malika', '1999-08-18 01:43:00', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(473, 18, 'Anastasia', '1976-06-21 15:00:06', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(474, 18, 'Elma', '1997-12-12 15:38:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(475, 18, 'Mustika', '1998-04-15 20:58:26', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(476, 18, 'Edi', '1988-09-08 01:17:59', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(477, 18, 'Hasan', '1992-04-11 00:28:32', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(478, 18, 'Kenzie', '1997-01-18 21:08:01', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(479, 18, 'Ajeng', '1976-02-02 18:51:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(480, 18, 'Darsirah', '1983-12-05 01:56:26', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(481, 18, 'Kairav', '1985-10-08 00:34:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(482, 18, 'Ophelia', '1989-07-21 16:49:51', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(483, 19, 'Janet', '1976-11-14 16:04:23', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(484, 19, 'Luhung', '1977-08-13 02:04:52', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(485, 19, 'Hesti', '1978-02-16 00:05:19', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(486, 19, 'Dina', '1996-07-22 20:37:39', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(487, 19, 'Ozy', '1979-07-05 02:41:11', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(488, 19, 'Harsanto', '2002-09-20 07:21:56', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(489, 19, 'Bella', '1987-01-29 11:54:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(490, 19, 'Paris', '1978-04-19 05:29:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(491, 19, 'Zaenab', '1983-11-12 21:52:22', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(492, 19, 'Juli', '2004-01-09 16:54:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(493, 19, 'Natalia', '1979-12-05 20:29:28', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(494, 19, 'Syahrini', '1989-02-07 13:24:53', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(495, 19, 'Damu', '1996-06-14 20:22:16', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(496, 19, 'Amalia', '1976-10-26 07:51:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(497, 19, 'Prayitna', '2003-11-17 09:22:09', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(498, 19, 'Paris', '1988-05-15 18:06:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(499, 19, 'Michelle', '1995-10-30 06:39:45', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(500, 19, 'Raihan', '1987-10-30 22:49:15', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(501, 19, 'Argono', '1981-06-17 23:55:06', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(502, 19, 'Edi', '1988-09-08 21:11:24', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(503, 19, 'Ifa', '1998-01-04 01:03:31', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(504, 19, 'Rafi', '2003-01-02 06:19:04', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(505, 19, 'Baktiono', '1982-12-16 18:42:03', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(506, 19, 'Aditya', '1996-02-17 17:52:53', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(507, 19, 'Raharja', '2004-09-10 04:26:32', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(508, 19, 'Tasdik', '1999-08-20 09:07:17', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(509, 19, 'Kartika', '1985-08-12 22:53:39', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(510, 19, 'Balangga', '1976-03-13 20:13:18', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(511, 19, 'Yuliana', '2000-06-16 00:57:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(512, 19, 'Simon', '1981-03-27 04:33:00', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(513, 19, 'Viman', '1994-05-15 04:38:57', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(514, 20, 'Jail', '2001-04-16 21:55:42', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(515, 20, 'Rini', '1993-08-14 21:20:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(516, 20, 'Zelda', '1998-03-28 04:30:48', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(517, 20, 'Amelia', '1986-03-25 04:16:26', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(518, 20, 'Bakda', '1977-01-10 12:43:20', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(519, 20, 'Capa', '1993-02-06 12:56:31', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(520, 20, 'Bahuraksa', '1993-05-26 18:17:28', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(521, 20, 'Eman', '1980-05-06 09:02:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(522, 20, 'Lili', '1996-12-11 03:32:30', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(523, 20, 'Kasim', '1991-10-08 05:37:52', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(524, 20, 'Sadina', '1993-03-21 03:34:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(525, 20, 'Elvina', '1981-11-01 02:08:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(526, 20, 'Vivi', '1978-04-05 00:07:17', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(527, 20, 'Eva', '1983-05-27 06:23:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(528, 20, 'Citra', '1977-05-07 21:17:46', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(529, 20, 'Xanana', '1986-09-26 08:43:38', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(530, 20, 'Kajen', '1978-05-08 07:35:20', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(531, 20, 'Gilda', '1987-05-14 16:11:15', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(532, 20, 'Fitriani', '2004-12-22 10:55:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(533, 20, 'Ikhsan', '1990-05-25 07:54:56', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(534, 20, 'Ella', '1999-12-09 13:40:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(535, 20, 'Ghani', '1990-04-13 23:54:51', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(536, 20, 'Harjasa', '1996-05-13 21:58:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(537, 20, 'Cakrawala', '1990-11-21 02:59:36', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(538, 20, 'Puput', '1986-08-18 19:27:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(539, 20, 'Laila', '1978-08-18 11:05:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(540, 20, 'Maria', '2001-10-25 12:36:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(541, 20, 'Puspa', '1982-12-20 09:15:09', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(542, 20, 'Mursinin', '2000-08-23 04:26:37', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(543, 20, 'Ismail', '2003-01-04 14:20:21', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(544, 20, 'Mala', '1998-12-04 01:15:00', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(545, 20, 'Hani', '1989-06-08 09:22:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(546, 20, 'Tomi', '1976-08-21 13:43:47', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(547, 20, 'Oni', '1984-04-21 00:16:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(548, 20, 'Jono', '2002-04-26 04:03:41', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(549, 20, 'Lalita', '1990-07-22 08:37:04', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(550, 20, 'Titin', '1985-05-20 03:52:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(551, 20, 'Dirja', '1984-08-04 08:21:05', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(552, 20, 'Endah', '2001-04-11 18:26:50', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(553, 20, 'Rahayu', '1977-08-14 07:22:04', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(554, 20, 'Ami', '2001-12-22 10:58:09', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(555, 20, 'Tasdik', '1994-11-27 09:19:45', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(556, 21, 'Ani', '1977-11-05 18:24:02', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(557, 21, 'Elvina', '1982-03-31 06:25:01', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(558, 21, 'Karsana', '1976-08-03 01:14:45', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(559, 21, 'Zamira', '1996-10-17 17:46:04', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(560, 21, 'Malika', '1987-11-28 00:19:48', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(561, 21, 'Kasiyah', '1988-01-15 21:57:21', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(562, 21, 'Zelaya', '1985-09-11 02:09:21', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(563, 21, 'Wani', '1989-03-04 01:53:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(564, 21, 'Lalita', '1994-10-23 01:12:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(565, 21, 'Ajiman', '1996-09-15 18:01:22', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(566, 21, 'Dartono', '1989-04-18 05:02:36', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(567, 21, 'Hesti', '1976-12-20 02:04:38', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(568, 21, 'Paiman', '1996-08-09 10:16:05', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(569, 21, 'Nabila', '1992-04-09 22:29:48', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(570, 21, 'Timbul', '1985-05-31 22:59:10', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(571, 21, 'Betania', '1976-03-07 09:06:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(572, 21, 'Galiono', '1999-01-27 17:38:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(573, 21, 'Natalia', '2004-08-17 02:41:15', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(574, 21, 'Rika', '2002-05-12 10:35:06', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(575, 21, 'Ghani', '2000-06-18 10:41:21', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(576, 21, 'Purwa', '1979-12-19 09:51:25', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(577, 21, 'Akarsana', '1977-03-28 02:36:33', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(578, 21, 'Pangeran', '1990-08-24 18:46:47', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(579, 21, 'Rafi', '1996-04-26 22:58:17', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(580, 21, 'Tantri', '1983-06-26 07:41:20', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(581, 21, 'Malika', '1981-05-29 00:57:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(582, 21, 'Uchita', '1991-02-22 21:20:49', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(583, 22, 'Agnes', '1984-11-27 04:15:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(584, 22, 'Hamima', '2000-08-27 10:41:31', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(585, 22, 'Nabila', '1989-10-23 09:16:33', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(586, 22, 'Jelita', '2003-03-26 22:41:40', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(587, 22, 'Qori', '1991-08-02 09:33:06', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(588, 22, 'Indah', '1983-07-01 20:56:25', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(589, 22, 'Samiah', '1992-12-01 13:23:50', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(590, 22, 'Nugraha', '1995-12-17 04:20:00', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(591, 22, 'Elma', '1980-10-01 03:37:22', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(592, 22, 'Elma', '1995-08-28 09:50:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(593, 22, 'Puji', '1982-08-11 22:59:15', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(594, 22, 'Hendri', '1986-04-09 00:03:11', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(595, 22, 'Usman', '1983-10-29 16:21:48', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(596, 22, 'Gangsar', '2001-09-24 10:58:24', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(597, 22, 'Jessica', '1981-02-22 00:54:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(598, 22, 'Lukita', '1999-10-16 22:16:50', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(599, 22, 'Kajen', '1987-03-16 02:16:07', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(600, 22, 'Fitria', '2004-04-04 20:17:36', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(601, 22, 'Almira', '2001-08-05 10:47:00', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(602, 22, 'Yono', '1999-10-12 22:36:34', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(603, 22, 'Tari', '1982-05-16 08:52:24', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(604, 22, 'Eman', '1988-11-30 03:57:35', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(605, 22, 'Latika', '1980-09-22 12:03:08', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(606, 22, 'Darmana', '1990-12-08 00:54:46', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(607, 22, 'Febi', '1977-02-07 05:50:36', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(608, 22, 'Anita', '1984-07-24 06:50:12', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(609, 22, 'Mala', '1998-07-14 21:20:52', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(610, 22, 'Oni', '1981-09-20 20:31:16', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(611, 22, 'Dadi', '1995-07-08 19:43:44', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(612, 22, 'Maryadi', '1989-02-11 14:30:54', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(613, 22, 'Gamanto', '1988-11-10 03:28:24', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(614, 22, 'Sakura', '1982-02-02 15:46:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(615, 22, 'Embuh', '1999-10-03 15:16:23', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(616, 22, 'Makuta', '1979-08-27 21:28:30', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(617, 22, 'Diana', '1980-02-28 17:45:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(618, 22, 'Elvina', '2004-04-18 04:48:34', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(619, 23, 'Maimunah', '1990-01-15 04:02:09', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(620, 23, 'Mutia', '1999-06-16 11:38:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(621, 23, 'Oliva', '1997-08-16 02:21:03', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(622, 23, 'Yulia', '1991-07-24 13:19:49', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(623, 23, 'Makara', '1992-04-26 00:29:43', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(624, 23, 'Bella', '1998-12-06 17:07:29', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(625, 23, 'Wira', '1977-09-27 15:15:42', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(626, 23, 'Harsanto', '2000-11-05 05:55:18', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(627, 23, 'Jono', '1985-06-01 04:46:35', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(628, 23, 'Cornelia', '1989-10-01 01:10:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(629, 23, 'Cinta', '1976-01-15 20:39:19', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(630, 23, 'Siska', '1997-09-26 14:59:29', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(631, 23, 'Bancar', '1977-02-22 14:29:44', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(632, 23, 'Maya', '1979-08-16 06:49:06', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(633, 23, 'Kunthara', '1994-08-30 00:42:53', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(634, 23, 'Melinda', '1978-12-26 05:32:01', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(635, 23, 'Yance', '1981-07-29 16:11:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(636, 23, 'Karta', '2002-09-21 23:59:53', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(637, 24, 'Ilsa', '1990-10-19 18:00:43', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(638, 24, 'Rusman', '1984-02-10 05:53:20', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(639, 24, 'Balidin', '1982-03-15 18:15:35', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(640, 24, 'Hani', '1976-05-06 15:59:11', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(641, 24, 'Raina', '1985-09-15 12:49:45', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(642, 24, 'Heru', '1984-07-25 10:23:41', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(643, 24, 'Lembah', '1991-03-11 17:12:37', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(644, 24, 'Rangga', '1998-06-12 16:40:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(645, 24, 'Unjani', '1994-10-14 11:29:56', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(646, 24, 'Edi', '1984-05-29 19:37:05', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(647, 24, 'Warsa', '1984-08-01 18:17:58', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(648, 24, 'Mahfud', '1994-10-12 14:39:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(649, 24, 'Alika', '1985-08-18 01:33:03', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(650, 24, 'Talia', '1996-10-01 18:39:59', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(651, 24, 'Wawan', '1991-08-24 11:27:28', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(652, 24, 'Raisa', '1998-01-18 06:05:37', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(653, 24, 'Salsabila', '1987-11-27 15:50:47', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(654, 24, 'Safina', '2004-09-16 02:59:50', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(655, 24, 'Hendri', '1994-03-22 01:57:58', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(656, 24, 'Edi', '2001-09-17 01:33:40', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(657, 24, 'Faizah', '2002-12-30 00:54:28', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(658, 24, 'Estiono', '1977-01-12 20:40:11', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(659, 24, 'Damu', '1999-10-11 00:15:09', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(660, 24, 'Cornelia', '1981-01-01 14:28:36', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(661, 24, 'Sabrina', '1992-05-23 17:00:53', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(662, 24, 'Cemani', '1985-01-28 20:54:46', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(663, 24, 'Fathonah', '1987-11-28 11:16:14', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(664, 24, 'Novi', '1978-10-22 23:34:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(665, 24, 'Hasim', '1990-04-16 09:41:44', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(666, 24, 'Gina', '1990-12-26 11:37:27', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(667, 24, 'Hasan', '1995-04-10 19:58:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(668, 24, 'Himawan', '1990-11-01 16:44:11', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(669, 24, 'Tirta', '1977-10-27 19:52:19', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(670, 24, 'Maya', '1992-11-01 17:45:33', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(671, 24, 'Dipa', '1982-04-23 01:43:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(672, 24, 'Karya', '2002-09-06 13:01:31', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(673, 24, 'Belinda', '1996-07-14 16:19:56', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(674, 24, 'Darijan', '1990-07-08 06:01:12', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(675, 24, 'Kamaria', '1978-10-18 03:23:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(676, 24, 'Asmuni', '1998-01-20 16:43:31', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(677, 24, 'Rahmi', '1993-05-12 22:10:41', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(678, 24, 'Edward', '1984-09-17 16:01:56', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(679, 24, 'Akarsana', '2002-06-03 23:52:12', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(680, 24, 'Slamet', '1997-05-19 21:30:32', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(681, 24, 'Yessi', '2003-01-10 02:19:33', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(682, 24, 'Raisa', '1994-01-01 16:49:21', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(683, 24, 'Amalia', '1986-01-27 02:31:18', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(684, 25, 'Gilda', '1990-10-17 10:39:40', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(685, 25, 'Erik', '1987-11-12 23:42:22', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(686, 25, 'Edi', '1997-08-07 07:24:09', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(687, 25, 'Mulyono', '1989-02-04 16:31:50', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(688, 25, 'Hilda', '1992-01-20 10:32:54', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(689, 25, 'Wirda', '1995-05-02 23:38:46', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(690, 25, 'Zizi', '1998-01-15 11:46:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(691, 25, 'Elvina', '1976-08-10 23:45:34', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(692, 25, 'Titin', '1999-07-08 08:15:29', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(693, 25, 'Eja', '1995-05-09 12:40:12', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(694, 25, 'Kania', '1993-05-03 03:45:23', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(695, 25, 'Ilsa', '1999-04-25 09:00:41', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(696, 25, 'Uda', '1992-02-20 16:12:51', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(697, 25, 'Maryadi', '1978-04-22 04:21:02', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(698, 25, 'Shania', '1985-08-09 06:15:46', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(699, 25, 'Aurora', '2003-10-19 17:37:01', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(700, 25, 'Melinda', '1999-09-29 17:43:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(701, 25, 'Cornelia', '1982-12-14 12:23:01', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(702, 25, 'Eja', '2001-02-28 10:27:04', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(703, 26, 'Ina', '1990-08-10 12:33:57', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(704, 26, 'Asmadi', '1980-03-13 01:21:19', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(705, 26, 'Eja', '1979-09-10 01:04:34', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(706, 26, 'Ganjaran', '1996-12-27 22:04:03', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(707, 26, 'Ghaliyati', '1992-03-29 07:46:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(708, 26, 'Bambang', '1978-06-20 13:33:13', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(709, 26, 'Edward', '1997-09-08 07:19:35', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(710, 26, 'Candrakanta', '1978-06-09 02:20:08', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(711, 26, 'Kawaca', '1991-05-30 21:48:58', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(712, 26, 'Indra', '2003-09-20 02:08:25', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(713, 26, 'Murti', '1982-09-27 10:03:20', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(714, 26, 'Rina', '1995-01-17 15:12:34', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(715, 26, 'Cinthia', '1996-05-27 10:02:32', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(716, 26, 'Gasti', '1994-12-04 07:09:30', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(717, 26, 'Nadine', '1994-01-13 12:02:41', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(718, 26, 'Syahrini', '1992-09-28 12:14:45', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(719, 26, 'Unjani', '1990-03-05 19:06:05', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(720, 26, 'Mariadi', '1991-05-11 16:02:48', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(721, 26, 'Kajen', '1987-03-26 03:48:38', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(722, 26, 'Kenes', '2001-04-02 01:46:30', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(723, 26, 'Mala', '1994-10-20 05:20:59', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(724, 26, 'Kamaria', '1996-08-18 10:16:29', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(725, 27, 'Sakura', '1985-03-15 14:02:16', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(726, 27, 'Jaka', '1983-11-19 01:58:15', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(727, 27, 'Nasim', '1987-09-03 06:22:00', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(728, 27, 'Maimunah', '1999-09-03 17:02:54', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(729, 27, 'Puspa', '1976-07-30 18:31:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(730, 27, 'Tami', '1977-05-28 14:46:46', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(731, 27, 'Cakrajiya', '1976-02-21 08:22:13', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(732, 27, 'Candrakanta', '2001-06-22 00:24:24', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(733, 27, 'Violet', '2004-08-05 17:39:40', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(734, 27, 'Novi', '1998-07-01 06:14:06', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(735, 27, 'Reza', '1992-03-20 13:57:16', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(736, 27, 'Salsabila', '1991-02-07 15:36:14', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(737, 28, 'Violet', '1987-09-20 04:17:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(738, 28, 'Azalea', '1982-07-01 18:33:27', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(739, 28, 'Lalita', '1993-02-11 05:06:12', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(740, 28, 'Endah', '1987-04-05 12:06:10', 'Female', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(741, 28, 'Dirja', '1985-09-29 01:45:28', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(742, 28, 'Kardi', '1985-08-31 14:21:10', 'Male', '', '2023-01-08 22:40:32', '2023-01-08 22:40:32'),
(743, 28, 'Rachel', '1995-05-20 02:58:09', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(744, 28, 'Endah', '2000-02-02 19:18:33', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(745, 28, 'Maimunah', '1993-11-12 01:22:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(746, 28, 'Panji', '1995-08-31 21:20:31', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(747, 28, 'Kamaria', '1987-01-03 01:22:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(748, 28, 'Eman', '1978-03-03 02:20:33', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(749, 28, 'Muhammad', '1977-10-20 08:28:27', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(750, 28, 'Tira', '2003-10-31 05:22:27', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(751, 28, 'Mala', '1995-09-27 03:58:15', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(752, 28, 'Tari', '2001-11-10 11:00:11', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(753, 28, 'Hari', '1982-01-06 16:07:53', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(754, 28, 'Karsa', '2003-06-06 17:32:23', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(755, 28, 'Hamima', '1984-10-19 14:07:59', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(756, 28, 'Mursita', '1996-08-27 05:13:27', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(757, 28, 'Dalima', '1992-04-08 23:35:49', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(758, 28, 'Sari', '1982-03-28 03:14:58', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(759, 28, 'Nadine', '1981-01-31 06:02:03', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(760, 28, 'Kamaria', '1994-04-02 20:16:30', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(761, 28, 'Dina', '1985-01-07 02:14:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(762, 28, 'Sakura', '1995-11-27 06:27:55', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(763, 28, 'Wulan', '2001-08-31 07:02:42', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(764, 28, 'Hani', '1978-06-28 07:41:52', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(765, 28, 'Lembah', '1980-02-26 17:23:15', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(766, 28, 'Eka', '1989-07-14 09:24:52', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(767, 28, 'Siska', '2003-03-30 09:17:52', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(768, 29, 'Gangsa', '1979-02-10 14:44:14', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(769, 29, 'Dimas', '1985-01-25 13:57:19', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(770, 29, 'Hani', '1983-05-16 13:36:09', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(771, 29, 'Fitriani', '1992-03-01 18:33:07', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(772, 29, 'Anggabaya', '1996-12-26 00:51:49', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(773, 29, 'Febi', '2000-03-07 05:51:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(774, 29, 'Adikara', '1978-12-09 11:47:16', 'Male', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(775, 29, 'Danu', '2002-11-14 05:15:31', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(776, 29, 'Rendy', '1998-09-06 07:37:40', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(777, 29, 'Hana', '1976-01-20 05:18:27', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(778, 29, 'Mutia', '1994-12-09 22:11:59', 'Female', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(779, 29, 'Atmaja', '1987-07-31 01:47:27', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(780, 29, 'Sarah', '1985-05-15 16:42:12', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(781, 29, 'Harja', '1993-02-09 12:43:11', 'Male', '', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(782, 29, 'Ella', '1995-01-27 04:38:43', 'Female', 'Anak Disabilitas', '2023-01-08 22:40:33', '2023-01-08 22:40:33');

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
(1, 1, 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(2, 1, 40, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(3, 1, 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(4, 1, 25, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(5, 1, 33, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(6, 1, 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(7, 2, 39, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(8, 2, 14, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(9, 2, 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(10, 2, 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(11, 2, 44, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(12, 2, 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(13, 2, 4, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(14, 2, 48, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(15, 2, 47, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(16, 2, 5, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(17, 2, 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(18, 2, 36, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(19, 2, 3, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(20, 3, 38, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(21, 3, 38, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(22, 3, 31, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(23, 3, 17, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(24, 3, 39, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(25, 3, 43, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(26, 3, 1, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(27, 4, 20, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(28, 4, 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(29, 4, 40, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(30, 5, 50, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(31, 5, 52, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(32, 5, 59, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(33, 5, 58, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(34, 5, 56, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(35, 5, 52, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(36, 5, 56, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(37, 5, 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(38, 5, 52, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(39, 5, 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(40, 5, 50, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(41, 5, 56, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(42, 5, 55, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(43, 5, 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(44, 5, 57, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(45, 5, 56, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(46, 5, 55, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(47, 6, 58, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(48, 7, 53, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(49, 8, 50, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(50, 8, 51, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(51, 9, 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(52, 9, 59, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(53, 9, 55, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(54, 9, 50, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(55, 9, 57, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(56, 9, 50, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(57, 9, 51, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(58, 9, 54, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(59, 10, 89, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(60, 10, 87, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(61, 10, 93, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(62, 10, 87, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(63, 10, 92, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(64, 10, 83, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(65, 11, 109, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(66, 11, 107, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(67, 11, 107, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(68, 11, 109, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(69, 11, 115, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(70, 11, 110, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(71, 12, 115, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(72, 13, 162, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(73, 13, 137, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(74, 13, 141, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(75, 13, 152, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(76, 13, 150, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(77, 13, 126, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(78, 13, 136, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(79, 13, 153, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(80, 14, 161, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(81, 14, 158, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(82, 14, 122, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(83, 14, 138, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(84, 14, 132, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(85, 14, 131, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(86, 14, 162, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(87, 14, 120, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(88, 14, 140, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(89, 14, 129, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(90, 14, 125, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(91, 14, 131, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(92, 14, 130, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(93, 14, 137, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(94, 15, 135, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(95, 15, 121, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(96, 15, 142, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(97, 15, 135, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(98, 15, 145, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(99, 15, 128, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(100, 15, 155, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(101, 15, 134, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(102, 15, 151, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(103, 15, 157, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(104, 16, 154, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(105, 16, 134, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(106, 17, 164, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(107, 17, 163, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(108, 17, 168, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(109, 17, 174, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(110, 17, 168, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(111, 17, 175, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(112, 17, 172, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(113, 17, 168, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(114, 17, 180, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(115, 17, 167, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(116, 17, 178, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(117, 17, 176, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(118, 17, 183, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(119, 17, 174, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(120, 17, 176, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(121, 17, 176, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(122, 17, 163, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(123, 18, 175, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(124, 18, 168, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(125, 18, 188, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(126, 18, 171, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(127, 18, 175, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(128, 18, 170, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(129, 18, 187, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(130, 18, 174, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(131, 18, 165, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(132, 19, 188, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(133, 19, 164, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(134, 19, 168, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(135, 19, 185, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(136, 19, 163, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(137, 19, 164, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(138, 19, 175, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(139, 19, 176, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(140, 19, 180, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(141, 19, 169, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(142, 20, 213, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(143, 20, 197, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(144, 20, 207, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(145, 20, 202, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(146, 20, 197, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(147, 20, 200, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(148, 20, 190, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(149, 21, 195, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(150, 22, 205, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(151, 22, 196, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(152, 22, 202, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(153, 22, 211, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(154, 22, 202, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(155, 23, 227, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(156, 23, 218, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(157, 24, 219, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(158, 24, 225, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(159, 24, 218, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(160, 24, 223, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(161, 24, 237, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(162, 24, 230, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(163, 24, 228, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(164, 24, 232, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(165, 24, 233, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(166, 25, 271, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(167, 25, 264, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(168, 26, 265, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(169, 26, 270, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(170, 26, 247, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(171, 27, 272, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(172, 27, 246, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(173, 27, 243, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(174, 28, 253, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(175, 28, 266, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(176, 28, 268, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(177, 28, 258, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(178, 28, 252, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(179, 28, 245, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(180, 28, 264, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(181, 28, 267, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(182, 28, 271, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(183, 28, 242, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(184, 28, 256, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(185, 28, 266, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(186, 28, 251, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(187, 28, 241, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(188, 29, 244, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(189, 29, 248, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(190, 29, 250, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(191, 29, 245, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(192, 29, 240, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(193, 29, 260, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(194, 29, 272, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(195, 29, 250, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(196, 29, 251, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(197, 30, 287, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(198, 30, 277, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(199, 30, 276, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(200, 30, 286, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(201, 30, 278, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(202, 30, 287, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(203, 30, 283, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(204, 30, 278, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(205, 31, 279, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(206, 31, 288, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(207, 32, 276, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(208, 32, 286, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(209, 32, 278, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(210, 32, 287, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(211, 32, 285, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(212, 32, 281, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(213, 32, 283, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(214, 32, 286, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(215, 33, 310, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(216, 33, 318, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(217, 34, 294, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(218, 34, 296, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(219, 34, 310, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(220, 34, 302, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(221, 34, 297, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(222, 34, 301, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(223, 34, 292, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(224, 34, 315, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(225, 35, 314, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(226, 36, 331, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(227, 36, 320, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(228, 36, 334, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(229, 36, 324, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(230, 37, 332, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(231, 37, 326, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(232, 37, 331, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(233, 37, 322, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(234, 37, 331, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(235, 37, 329, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(236, 38, 335, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(237, 38, 321, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(238, 38, 323, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(239, 38, 332, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(240, 39, 325, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(241, 39, 326, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(242, 40, 349, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(243, 40, 345, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(244, 41, 341, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(245, 41, 340, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(246, 41, 336, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(247, 41, 342, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(248, 41, 347, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(249, 41, 344, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(250, 41, 349, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(251, 41, 339, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(252, 41, 337, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(253, 41, 336, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(254, 41, 349, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(255, 41, 353, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(256, 41, 336, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(257, 41, 342, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(258, 41, 339, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(259, 41, 343, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(260, 41, 346, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(261, 41, 352, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(262, 42, 344, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(263, 42, 351, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(264, 42, 351, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(265, 43, 353, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(266, 44, 359, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(267, 44, 365, '2023-01-08 22:40:35', '2023-01-08 22:40:35'),
(268, 45, 370, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(269, 45, 385, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(270, 45, 379, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(271, 45, 376, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(272, 45, 371, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(273, 45, 388, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(274, 45, 382, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(275, 45, 375, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(276, 45, 369, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(277, 45, 380, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(278, 46, 370, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(279, 46, 379, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(280, 46, 382, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(281, 46, 381, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(282, 46, 382, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(283, 46, 376, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(284, 46, 377, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(285, 46, 388, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(286, 46, 372, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(287, 46, 377, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(288, 47, 387, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(289, 47, 368, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(290, 47, 389, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(291, 47, 386, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(292, 48, 389, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(293, 48, 381, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(294, 48, 386, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(295, 48, 370, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(296, 48, 371, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(297, 48, 371, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(298, 48, 376, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(299, 49, 418, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(300, 49, 408, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(301, 50, 417, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(302, 50, 425, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(303, 50, 397, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(304, 50, 402, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(305, 50, 398, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(306, 50, 396, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(307, 50, 437, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(308, 50, 409, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(309, 50, 391, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(310, 50, 395, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(311, 50, 420, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(312, 50, 428, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(313, 50, 423, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(314, 50, 404, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(315, 51, 413, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(316, 51, 420, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(317, 51, 437, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(318, 51, 403, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(319, 51, 435, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(320, 51, 420, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(321, 51, 416, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(322, 51, 430, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(323, 51, 397, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(324, 51, 397, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(325, 52, 447, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(326, 52, 460, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(327, 52, 442, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(328, 52, 450, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(329, 52, 441, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(330, 52, 468, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(331, 52, 467, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(332, 52, 461, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(333, 53, 445, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(334, 53, 457, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(335, 53, 456, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(336, 53, 445, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(337, 53, 459, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(338, 54, 441, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(339, 54, 457, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(340, 55, 445, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(341, 55, 446, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(342, 55, 439, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(343, 56, 479, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(344, 56, 475, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(345, 56, 473, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(346, 56, 478, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(347, 56, 479, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(348, 56, 472, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(349, 56, 479, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(350, 56, 480, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(351, 56, 477, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(352, 56, 477, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(353, 56, 481, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(354, 56, 482, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(355, 56, 482, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(356, 56, 480, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(357, 56, 472, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(358, 57, 482, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(359, 57, 474, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(360, 57, 482, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(361, 57, 479, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(362, 57, 477, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(363, 57, 481, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(364, 57, 473, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(365, 57, 474, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(366, 57, 474, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(367, 57, 475, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(368, 57, 473, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(369, 58, 505, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(370, 58, 504, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(371, 58, 484, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(372, 58, 507, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(373, 58, 499, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(374, 58, 509, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(375, 59, 489, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(376, 59, 495, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(377, 59, 512, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(378, 59, 493, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(379, 59, 494, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(380, 59, 506, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(381, 59, 497, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(382, 59, 512, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(383, 60, 501, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(384, 60, 484, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(385, 61, 539, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(386, 61, 541, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(387, 61, 517, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(388, 61, 525, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(389, 61, 529, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(390, 62, 539, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(391, 62, 540, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(392, 62, 527, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(393, 62, 538, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(394, 62, 519, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(395, 62, 526, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(396, 62, 521, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(397, 63, 567, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(398, 63, 563, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(399, 63, 565, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(400, 63, 569, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(401, 63, 563, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(402, 63, 562, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(403, 63, 560, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(404, 63, 560, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(405, 64, 571, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(406, 64, 565, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(407, 64, 557, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(408, 64, 556, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(409, 64, 570, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(410, 64, 558, '2023-01-08 22:40:36', '2023-01-08 22:40:36'),
(411, 64, 576, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(412, 64, 561, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(413, 64, 570, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(414, 64, 560, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(415, 64, 575, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(416, 65, 561, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(417, 65, 581, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(418, 65, 576, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(419, 66, 569, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(420, 66, 582, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(421, 66, 560, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(422, 67, 584, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(423, 67, 615, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(424, 67, 610, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(425, 67, 587, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(426, 68, 601, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(427, 68, 601, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(428, 68, 606, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(429, 68, 586, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(430, 68, 611, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(431, 68, 586, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(432, 68, 588, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(433, 68, 583, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(434, 69, 633, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(435, 69, 635, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(436, 69, 621, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(437, 69, 635, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(438, 69, 620, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(439, 69, 622, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(440, 69, 636, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(441, 69, 632, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(442, 69, 627, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(443, 70, 629, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(444, 70, 631, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(445, 70, 635, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(446, 71, 623, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(447, 71, 620, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(448, 71, 628, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(449, 71, 631, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(450, 71, 627, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(451, 71, 634, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(452, 72, 626, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(453, 72, 636, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(454, 72, 622, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(455, 73, 629, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(456, 73, 634, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(457, 73, 631, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(458, 73, 633, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(459, 74, 652, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(460, 74, 668, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(461, 74, 648, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(462, 74, 669, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(463, 74, 665, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(464, 75, 664, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(465, 75, 639, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(466, 75, 640, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(467, 75, 674, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(468, 75, 674, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(469, 75, 676, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(470, 75, 665, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(471, 75, 656, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(472, 75, 670, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(473, 76, 687, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(474, 76, 687, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(475, 76, 686, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(476, 76, 697, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(477, 76, 695, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(478, 76, 684, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(479, 76, 695, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(480, 76, 693, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(481, 76, 687, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(482, 76, 700, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(483, 77, 701, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(484, 77, 686, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(485, 77, 688, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(486, 77, 694, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(487, 77, 686, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(488, 77, 700, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(489, 77, 694, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(490, 77, 690, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(491, 77, 691, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(492, 77, 697, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(493, 77, 686, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(494, 78, 687, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(495, 78, 699, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(496, 78, 690, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(497, 78, 692, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(498, 78, 697, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(499, 78, 698, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(500, 78, 700, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(501, 78, 701, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(502, 78, 687, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(503, 78, 690, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(504, 78, 700, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(505, 79, 709, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(506, 79, 707, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(507, 79, 712, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(508, 79, 719, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(509, 79, 706, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(510, 79, 707, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(511, 79, 711, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(512, 79, 717, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(513, 79, 715, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(514, 79, 720, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(515, 80, 704, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(516, 80, 714, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(517, 80, 715, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(518, 80, 707, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(519, 80, 719, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(520, 80, 707, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(521, 80, 721, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(522, 80, 718, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(523, 80, 705, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(524, 81, 727, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(525, 81, 727, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(526, 81, 726, '2023-01-08 22:40:37', '2023-01-08 22:40:37'),
(527, 81, 727, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(528, 81, 727, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(529, 81, 726, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(530, 81, 736, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(531, 81, 730, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(532, 82, 734, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(533, 82, 732, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(534, 82, 733, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(535, 82, 735, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(536, 82, 731, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(537, 82, 735, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(538, 82, 732, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(539, 82, 725, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(540, 82, 726, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(541, 82, 732, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(542, 83, 734, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(543, 83, 725, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(544, 83, 734, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(545, 83, 730, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(546, 84, 743, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(547, 84, 765, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(548, 84, 749, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(549, 84, 749, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(550, 84, 763, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(551, 84, 749, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(552, 84, 764, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(553, 84, 737, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(554, 84, 740, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(555, 84, 756, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(556, 84, 766, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(557, 84, 754, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(558, 84, 740, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(559, 84, 740, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(560, 85, 748, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(561, 85, 758, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(562, 85, 744, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(563, 85, 743, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(564, 85, 744, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(565, 85, 739, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(566, 85, 760, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(567, 85, 762, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(568, 85, 746, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(569, 85, 751, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(570, 85, 747, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(571, 86, 746, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(572, 86, 759, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(573, 86, 749, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(574, 86, 739, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(575, 86, 737, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(576, 86, 764, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(577, 86, 737, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(578, 86, 740, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(579, 87, 781, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(580, 87, 781, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(581, 88, 774, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(582, 88, 768, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(583, 88, 782, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(584, 88, 779, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(585, 89, 779, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(586, 89, 773, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(587, 89, 782, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(588, 89, 772, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(589, 89, 782, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(590, 89, 774, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(591, 89, 772, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(592, 89, 776, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(593, 90, 781, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(594, 90, 769, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(595, 91, 776, '2023-01-08 22:40:38', '2023-01-08 22:40:38'),
(596, 91, 781, '2023-01-08 22:40:38', '2023-01-08 22:40:38');

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
(1, 1, 706, 'Aut quo debitis velit velit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(2, 1, 715, 'Minus soluta optio ullam aut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(3, 1, 712, 'Illo ut similique suscipit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(4, 2, 443, 'Aperiam similique ut et adipisci.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(5, 2, 465, 'Quis fugit assumenda sunt.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(6, 2, 467, 'Recusandae et est voluptatum eos et eos minima.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(7, 2, 447, 'Omnis est perferendis et deserunt consequatur.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(8, 2, 439, 'Aut perspiciatis natus accusantium.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(9, 3, 657, 'Quis accusamus eos ipsum in.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(10, 3, 665, 'Ipsam qui nam molestiae quibusdam eos voluptate.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(11, 3, 650, 'Et nostrum nihil numquam aspernatur quod.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(12, 3, 677, 'Consequatur tenetur qui odio qui aliquid.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(13, 3, 676, 'Et ab libero cupiditate officiis ut officia et.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(14, 3, 674, 'Voluptas praesentium illo et in iste eos a.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(15, 4, 625, 'Sunt voluptatem et aut quo ea at.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(16, 4, 624, 'Nisi repellat voluptatem omnis ut vero.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(17, 4, 632, 'Qui inventore earum et quaerat ut quae.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(18, 4, 627, 'Aspernatur corporis eos nulla vero perspiciatis.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(19, 4, 624, 'Occaecati a vel facilis et tempore magnam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(20, 5, 168, 'Maiores et atque odit tempora qui laborum.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(21, 5, 184, 'Magni fuga libero mollitia aut non.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(22, 5, 177, 'Deleniti assumenda maxime doloribus aspernatur.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(23, 5, 182, 'Est est nam est fugit ut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(24, 5, 173, 'Non deserunt quisquam odit id dolores voluptates.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(25, 5, 165, 'Ut consequatur impedit voluptas saepe quam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(26, 6, 691, 'Iste provident nisi quis et molestiae excepturi.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(27, 6, 701, 'Molestiae illo consequatur quidem voluptas qui.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(28, 6, 686, 'Laborum voluptatem aut et consectetur blanditiis.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(29, 6, 696, 'Pariatur culpa veritatis doloremque dolores.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(30, 6, 688, 'Ad sint consequatur suscipit perspiciatis odit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(31, 6, 688, 'Praesentium rerum officia unde facere.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(32, 7, 264, 'Ea possimus ut facere quia nihil illum.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(33, 7, 268, 'Id aliquid nemo tempora quo iure in.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(34, 7, 258, 'Ut natus nisi quaerat eos.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(35, 7, 252, 'Consectetur excepturi nihil saepe qui.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(36, 8, 268, 'Repudiandae est cumque consequatur explicabo.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(37, 8, 244, 'Temporibus facere sit rem explicabo sit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(38, 8, 258, 'Reprehenderit ipsum laudantium eum in.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(39, 8, 249, 'Quidem cumque quia consequatur assumenda quos.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(40, 8, 243, 'Vel provident similique provident nihil.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(41, 8, 242, 'Asperiores placeat eveniet expedita fuga et.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(42, 8, 257, 'Sit temporibus sit dignissimos et.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(43, 9, 161, 'Excepturi nulla quis quisquam ratione.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(44, 9, 130, 'Vel eum accusamus aut eius.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(45, 10, 140, 'Error totam veritatis quos eveniet.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(46, 10, 154, 'Aliquam architecto voluptatem eos aut dicta.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(47, 11, 702, 'Tempore molestiae nam corporis.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(48, 11, 699, 'Illum laborum aut numquam tenetur.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(49, 11, 693, 'Earum vitae nisi explicabo.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(50, 12, 764, 'Dignissimos quod esse esse autem excepturi est.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(51, 12, 754, 'Et dolore et sed dicta sunt quisquam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(52, 12, 761, 'Recusandae id ut omnis qui.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(53, 12, 751, 'Velit eligendi labore numquam ut ut accusamus a.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(54, 12, 737, 'Reiciendis recusandae voluptatem voluptatem qui.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(55, 12, 762, 'Enim magni quam asperiores distinctio sunt quod.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(56, 12, 759, 'Deserunt omnis fugit eligendi.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(57, 13, 175, 'Qui et cum iure id.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(58, 13, 188, 'Sit suscipit iste et est tempora repellat cumque.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(59, 13, 175, 'Repellendus nulla et amet ut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(60, 13, 166, 'Voluptatem a consectetur dicta eveniet.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(61, 13, 168, 'Sint possimus quidem quia magnam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(62, 13, 184, 'Eius eos eum sit cum maiores.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(63, 13, 175, 'Tempore et et et est tempore pariatur et.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(64, 13, 171, 'Quia sunt libero similique suscipit modi et.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(65, 13, 170, 'Facere reprehenderit itaque voluptatem atque.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(66, 14, 498, 'Dicta qui quo eos enim eligendi vitae ut nulla.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(67, 14, 506, 'Quos mollitia ut deserunt.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(68, 14, 497, 'Omnis voluptatem dignissimos optio modi aut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(69, 14, 484, 'Optio rem sed recusandae qui cupiditate et sunt.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(70, 14, 497, 'Exercitationem ipsa quibusdam et atque.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(71, 14, 506, 'Aut vel et quo autem.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(72, 14, 500, 'Itaque et ducimus eveniet.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(73, 14, 507, 'Est incidunt eligendi ducimus eaque.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(74, 14, 489, 'Illum et porro sed autem nobis asperiores.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(75, 15, 549, 'Ut ducimus aut neque officiis.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(76, 15, 520, 'Rerum voluptates perspiciatis error nemo.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(77, 15, 545, 'Nostrum nesciunt ipsum qui adipisci.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(78, 15, 529, 'Ea quae pariatur quia dignissimos ducimus.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(79, 15, 548, 'Ipsa omnis vitae ut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(80, 15, 515, 'Qui velit dicta enim nostrum.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(81, 15, 539, 'Atque ut eos cumque ipsa asperiores veniam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(82, 16, 338, 'Rerum ipsam sapiente dolorem qui quae ut quae.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(83, 16, 352, 'Dolor sequi voluptatem non quo recusandae quia.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(84, 16, 349, 'In praesentium ipsa ab dolores aut neque.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(85, 16, 344, 'Est esse illum aut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(86, 16, 338, 'Nostrum aut qui nihil repellat.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(87, 16, 344, 'Dolore ullam accusamus molestias est.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(88, 16, 351, 'Velit ab dolores nihil ex quisquam quos aut.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(89, 17, 88, 'Est nam et magni qui quisquam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(90, 17, 100, 'Tempore aut voluptatem ut dolorem.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(91, 17, 80, 'Explicabo qui voluptatibus sit rerum.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(92, 17, 68, 'Culpa molestias odit non est et fugit accusamus.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(93, 17, 67, 'Minima quis aut veniam quibusdam velit ipsam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(94, 18, 136, 'Sunt soluta officiis error est.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(95, 18, 127, 'Facere eos voluptate dignissimos est.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(96, 18, 137, 'Autem est consequatur quia reprehenderit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(97, 18, 159, 'Fugiat sapiente amet voluptatem quam doloribus.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(98, 18, 127, 'Aut nihil quia similique.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(99, 19, 180, 'Omnis dolorem amet repellendus et quibusdam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(100, 19, 184, 'Architecto voluptates voluptas sit.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(101, 19, 180, 'Ut asperiores et velit occaecati.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(102, 19, 170, 'Temporibus et consequatur quisquam.', '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(103, 20, 143, 'Reprehenderit ab rerum qui voluptatem.', '2023-01-08 22:40:39', '2023-01-08 22:40:39');

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
('jEGBxbCO96rHdOriw1qWfhRPzKcsRlW0KD6jZhoq', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWUVWRmNHeVoxVTVNeWZBeTRvQnA3MGdTYVVVTlB4dW5rUE50YVRoeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNib3IiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjt9', 1673243929);

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
(1, 'Chess', 'https://asset.kompas.com/crops/BYiXVrkrI5M3BqjkodmlHRgIcgE=/0x0:6000x4000/750x500/data/photo/2021/03/23/6059de3703046.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(2, 'Swimming', 'https://sportsmatik.com/uploads/matik-sports-corner/matik-know-how/swimming1_1562582117.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(3, 'Boxing', 'https://commonwealthgames.com.au/wp-content/uploads/2022_08_02-Taha-Ahmad.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(4, 'Drawing', 'https://s32625.pcdn.co/wp-content/uploads/2017/11/GettyImages-628064782_drawing-habits-1024x683.jpg.optimal.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(5, 'Singing', 'https://cdn.mos.cms.futurecdn.net/YkR3EXxwPRhd8q8sGahCJc.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33'),
(6, 'Painting', 'https://mymodernmet.com/wp/wp-content/uploads/2018/05/painting-ideas-3-1.jpg', '2023-01-08 22:40:33', '2023-01-08 22:40:33');

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
(1, 2, NULL, 1535846, 'complete', 'Pembayaran kursus oleh Fa Pangestu Najmudin Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(2, 2, NULL, 1808256, 'pending', 'Pembayaran kursus oleh Fa Pangestu Najmudin Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(3, 2, NULL, 1888410, 'canceled', 'Pembayaran kursus oleh Fa Pangestu Najmudin Tbk', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(4, 2, NULL, 87422, 'canceled', 'Pembayaran kursus oleh Fa Pangestu Najmudin Tbk', 15, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(5, 3, NULL, 2437630, 'canceled', 'Pembayaran kursus oleh PT Uyainah Astuti (Persero) Tbk', 4, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(6, 3, NULL, 1558917, 'pending', 'Pembayaran kursus oleh PT Uyainah Astuti (Persero) Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(7, 3, NULL, 3274788, 'pending', 'Pembayaran kursus oleh PT Uyainah Astuti (Persero) Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(8, 3, NULL, 442248, 'complete', 'Pembayaran kursus oleh PT Uyainah Astuti (Persero) Tbk', 14, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(9, 3, NULL, 3122616, 'pending', 'Pembayaran kursus oleh PT Uyainah Astuti (Persero) Tbk', 29, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(10, 8, NULL, 3582796, 'complete', 'Pembayaran kursus oleh CV Saptono Gunarto', 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(11, 9, NULL, 1344800, 'complete', 'Pembayaran kursus oleh UD Manullang (Persero) Tbk', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(12, 9, NULL, 1562670, 'complete', 'Pembayaran kursus oleh UD Manullang (Persero) Tbk', 6, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(13, 12, NULL, 569514, 'pending', 'Pembayaran kursus oleh PJ Suwarno Tbk', 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(14, 12, NULL, 786075, 'pending', 'Pembayaran kursus oleh PJ Suwarno Tbk', 44, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(15, 12, NULL, 1636622, 'pending', 'Pembayaran kursus oleh PJ Suwarno Tbk', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(16, 12, NULL, 270132, 'pending', 'Pembayaran kursus oleh PJ Suwarno Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(17, 13, NULL, 2623302, 'canceled', 'Pembayaran kursus oleh Fa Nasyidah Puspasari Tbk', 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(18, 13, NULL, 537920, 'complete', 'Pembayaran kursus oleh Fa Nasyidah Puspasari Tbk', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(19, 13, NULL, 423342, 'pending', 'Pembayaran kursus oleh Fa Nasyidah Puspasari Tbk', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(20, 17, NULL, 1620792, 'complete', 'Pembayaran kursus oleh PD Suryatmi', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(21, 17, NULL, 1764379, 'complete', 'Pembayaran kursus oleh PD Suryatmi', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(22, 17, NULL, 1311717, 'canceled', 'Pembayaran kursus oleh PD Suryatmi', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(23, 19, NULL, 934129, 'complete', 'Pembayaran kursus oleh CV Lailasari', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(24, 19, NULL, 3188136, 'pending', 'Pembayaran kursus oleh CV Lailasari', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(25, 22, NULL, 1618292, 'pending', 'Pembayaran kursus oleh CV Riyanti Nasyidah', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(26, 22, NULL, 3024150, 'canceled', 'Pembayaran kursus oleh CV Riyanti Nasyidah', 15, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(27, 22, NULL, 2420460, 'complete', 'Pembayaran kursus oleh CV Riyanti Nasyidah', 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(28, 22, NULL, 904128, 'complete', 'Pembayaran kursus oleh CV Riyanti Nasyidah', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(29, 22, NULL, 2398132, 'pending', 'Pembayaran kursus oleh CV Riyanti Nasyidah', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(30, 24, NULL, 1242904, 'pending', 'Pembayaran kursus oleh Fa Situmorang Tbk', 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(31, 24, NULL, 321525, 'pending', 'Pembayaran kursus oleh Fa Situmorang Tbk', 44, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(32, 24, NULL, 910763, 'complete', 'Pembayaran kursus oleh Fa Situmorang Tbk', 29, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(33, 25, NULL, 2083560, 'pending', 'Pembayaran kursus oleh Fa Pratama Pangestu', 6, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(34, 25, NULL, 942606, 'complete', 'Pembayaran kursus oleh Fa Pratama Pangestu', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(35, 25, NULL, 3202728, 'pending', 'Pembayaran kursus oleh Fa Pratama Pangestu', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(36, 27, NULL, 2358309, 'complete', 'Pembayaran kursus oleh PJ Aryani Mahendra (Persero) Tbk', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(37, 27, NULL, 540264, 'pending', 'Pembayaran kursus oleh PJ Aryani Mahendra (Persero) Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(38, 27, NULL, 694520, 'pending', 'Pembayaran kursus oleh PJ Aryani Mahendra (Persero) Tbk', 6, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(39, 27, NULL, 3610036, 'complete', 'Pembayaran kursus oleh PJ Aryani Mahendra (Persero) Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(40, 28, NULL, 2098128, 'complete', 'Pembayaran kursus oleh Fa Mangunsong (Persero) Tbk', 15, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(41, 28, NULL, 715446, 'complete', 'Pembayaran kursus oleh Fa Mangunsong (Persero) Tbk', 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(42, 28, NULL, 2215755, 'complete', 'Pembayaran kursus oleh Fa Mangunsong (Persero) Tbk', 20, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(43, 28, NULL, 2564100, 'complete', 'Pembayaran kursus oleh Fa Mangunsong (Persero) Tbk', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(44, 30, NULL, 2760046, 'complete', 'Pembayaran kursus oleh PJ Suwarno Aryani (Persero) Tbk', 4, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(45, 31, NULL, 1467340, 'complete', 'Pembayaran kursus oleh Perum Haryanti Rajasa Tbk', 44, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(46, 31, NULL, 189838, 'complete', 'Pembayaran kursus oleh Perum Haryanti Rajasa Tbk', 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(47, 31, NULL, 763290, 'complete', 'Pembayaran kursus oleh Perum Haryanti Rajasa Tbk', 37, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(48, 31, NULL, 2882649, 'complete', 'Pembayaran kursus oleh Perum Haryanti Rajasa Tbk', 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(49, 32, NULL, 953928, 'complete', 'Pembayaran kursus oleh PD Salahudin Susanti (Persero) Tbk', 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(50, 32, NULL, 1339686, 'pending', 'Pembayaran kursus oleh PD Salahudin Susanti (Persero) Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(51, 32, NULL, 2205264, 'canceled', 'Pembayaran kursus oleh PD Salahudin Susanti (Persero) Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(52, 33, NULL, 1279522, 'canceled', 'Pembayaran kursus oleh PT Rahayu Rajata (Persero) Tbk', 14, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(53, 33, NULL, 2467894, 'complete', 'Pembayaran kursus oleh PT Rahayu Rajata (Persero) Tbk', 23, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(54, 33, NULL, 124484, 'complete', 'Pembayaran kursus oleh PT Rahayu Rajata (Persero) Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(55, 33, NULL, 254430, 'complete', 'Pembayaran kursus oleh PT Rahayu Rajata (Persero) Tbk', 37, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(56, 35, NULL, 2116710, 'complete', 'Pembayaran kursus oleh PD Latupono Tbk', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(57, 35, NULL, 3133336, 'canceled', 'Pembayaran kursus oleh PD Latupono Tbk', 4, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(58, 36, NULL, 3113610, 'canceled', 'Pembayaran kursus oleh PT Waluyo (Persero) Tbk', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(59, 36, NULL, 2772632, 'complete', 'Pembayaran kursus oleh PT Waluyo (Persero) Tbk', 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(60, 36, NULL, 2106608, 'pending', 'Pembayaran kursus oleh PT Waluyo (Persero) Tbk', 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(61, 38, NULL, 810396, 'canceled', 'Pembayaran kursus oleh PJ Lestari (Persero) Tbk', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(62, 38, NULL, 402619, 'pending', 'Pembayaran kursus oleh PJ Lestari (Persero) Tbk', 46, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(63, 39, NULL, 2244456, 'complete', 'Pembayaran kursus oleh PT Usamah Prasetya Tbk', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(64, 39, NULL, 1565220, 'pending', 'Pembayaran kursus oleh PT Usamah Prasetya Tbk', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(65, 39, NULL, 573648, 'complete', 'Pembayaran kursus oleh PT Usamah Prasetya Tbk', 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(66, 39, NULL, 325284, 'complete', 'Pembayaran kursus oleh PT Usamah Prasetya Tbk', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(67, 41, NULL, 1041780, 'canceled', 'Pembayaran kursus oleh PD Anggriawan Pradana', 6, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(68, 41, NULL, 1118952, 'complete', 'Pembayaran kursus oleh PD Anggriawan Pradana', 34, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(69, 42, NULL, 1362890, 'complete', 'Pembayaran kursus oleh PJ Latupono', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(70, 42, NULL, 160340, 'complete', 'Pembayaran kursus oleh PJ Latupono', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(71, 42, NULL, 2094680, 'pending', 'Pembayaran kursus oleh PJ Latupono', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(72, 42, NULL, 683760, 'canceled', 'Pembayaran kursus oleh PJ Latupono', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(73, 42, NULL, 1470176, 'pending', 'Pembayaran kursus oleh PJ Latupono', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(74, 43, NULL, 3616068, 'complete', 'Pembayaran kursus oleh Perum Hutapea Tbk', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(75, 43, NULL, 893124, 'complete', 'Pembayaran kursus oleh Perum Hutapea Tbk', 18, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(76, 45, NULL, 752660, 'canceled', 'Pembayaran kursus oleh Fa Pratama Wulandari', 14, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(77, 45, NULL, 268960, 'complete', 'Pembayaran kursus oleh Fa Pratama Wulandari', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(78, 45, NULL, 1467856, 'complete', 'Pembayaran kursus oleh Fa Pratama Wulandari', 7, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(79, 47, NULL, 678262, 'complete', 'Pembayaran kursus oleh PD Marpaung', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(80, 47, NULL, 3569748, 'complete', 'Pembayaran kursus oleh PD Marpaung', 29, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(81, 48, NULL, 1758942, 'complete', 'Pembayaran kursus oleh Yayasan Wahyudin Yuliarti', 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(82, 48, NULL, 747620, 'pending', 'Pembayaran kursus oleh Yayasan Wahyudin Yuliarti', 49, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(83, 48, NULL, 2341144, 'complete', 'Pembayaran kursus oleh Yayasan Wahyudin Yuliarti', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(84, 50, NULL, 208696, 'complete', 'Pembayaran kursus oleh Fa Permadi Mardhiyah', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(85, 50, NULL, 1812676, 'complete', 'Pembayaran kursus oleh Fa Permadi Mardhiyah', 16, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(86, 50, NULL, 360176, 'complete', 'Pembayaran kursus oleh Fa Permadi Mardhiyah', 11, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(87, 51, NULL, 1667993, 'complete', 'Pembayaran kursus oleh PD Hasanah', 46, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(88, 51, NULL, 1329453, 'complete', 'Pembayaran kursus oleh PD Hasanah', 20, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(89, 51, NULL, 1625336, 'canceled', 'Pembayaran kursus oleh PD Hasanah', 26, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(90, 51, NULL, 2960412, 'complete', 'Pembayaran kursus oleh PD Hasanah', 21, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(91, 51, NULL, 2564100, 'canceled', 'Pembayaran kursus oleh PD Hasanah', 10, '2023-01-08 22:40:34', '2023-01-08 22:40:34'),
(92, 28, NULL, 287035, 'canceled', 'Donasi kepada Fa Mangunsong (Persero) Tbk', 28, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(93, 9, NULL, 275506, 'pending', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(94, 2, NULL, 111824, 'pending', 'Donasi kepada Fa Pangestu Najmudin Tbk', 2, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(95, 19, NULL, 122680, 'pending', 'Donasi kepada CV Lailasari', 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(96, 38, NULL, 176880, 'complete', 'Donasi kepada PJ Lestari (Persero) Tbk', 38, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(97, 3, NULL, 225702, 'pending', 'Donasi kepada PT Uyainah Astuti (Persero) Tbk', 3, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(98, 9, NULL, 268300, 'canceled', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(99, 36, NULL, 67983, 'pending', 'Donasi kepada PT Waluyo (Persero) Tbk', 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(100, 9, NULL, 120569, 'canceled', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(101, 45, NULL, 275196, 'complete', 'Donasi kepada Fa Pratama Wulandari', 45, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(102, 17, NULL, 259425, 'canceled', 'Donasi kepada PD Suryatmi', 17, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(103, 12, NULL, 134769, 'complete', 'Donasi kepada PJ Suwarno Tbk', 12, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(104, 17, NULL, 191154, 'pending', 'Donasi kepada PD Suryatmi', 17, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(105, 36, NULL, 282242, 'canceled', 'Donasi kepada PT Waluyo (Persero) Tbk', 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(106, 41, NULL, 130754, 'canceled', 'Donasi kepada PD Anggriawan Pradana', 41, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(107, 48, NULL, 275264, 'canceled', 'Donasi kepada Yayasan Wahyudin Yuliarti', 48, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(108, 19, NULL, 252268, 'complete', 'Donasi kepada CV Lailasari', 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(109, 43, NULL, 232221, 'complete', 'Donasi kepada Perum Hutapea Tbk', 43, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(110, 24, NULL, 55920, 'complete', 'Donasi kepada Fa Situmorang Tbk', 24, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(111, 8, NULL, 204055, 'complete', 'Donasi kepada CV Saptono Gunarto', 8, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(112, 19, NULL, 26899, 'canceled', 'Donasi kepada CV Lailasari', 19, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(113, 9, NULL, 24547, 'complete', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(114, 9, NULL, 78745, 'pending', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(115, 41, NULL, 60075, 'complete', 'Donasi kepada PD Anggriawan Pradana', 41, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(116, 51, NULL, 109428, 'complete', 'Donasi kepada PD Hasanah', 51, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(117, 2, NULL, 194789, 'pending', 'Donasi kepada Fa Pangestu Najmudin Tbk', 2, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(118, 43, NULL, 183160, 'pending', 'Donasi kepada Perum Hutapea Tbk', 43, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(119, 42, NULL, 92662, 'canceled', 'Donasi kepada PJ Latupono', 42, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(120, 36, NULL, 102480, 'complete', 'Donasi kepada PT Waluyo (Persero) Tbk', 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(121, 43, NULL, 56149, 'canceled', 'Donasi kepada Perum Hutapea Tbk', 43, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(122, 39, NULL, 291207, 'canceled', 'Donasi kepada PT Usamah Prasetya Tbk', 39, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(123, 41, NULL, 200807, 'canceled', 'Donasi kepada PD Anggriawan Pradana', 41, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(124, 45, NULL, 173158, 'canceled', 'Donasi kepada Fa Pratama Wulandari', 45, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(125, 27, NULL, 271503, 'complete', 'Donasi kepada PJ Aryani Mahendra (Persero) Tbk', 27, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(126, 33, NULL, 14113, 'canceled', 'Donasi kepada PT Rahayu Rajata (Persero) Tbk', 33, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(127, 12, NULL, 72699, 'pending', 'Donasi kepada PJ Suwarno Tbk', 12, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(128, 31, NULL, 292648, 'complete', 'Donasi kepada Perum Haryanti Rajasa Tbk', 31, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(129, 31, NULL, 150892, 'complete', 'Donasi kepada Perum Haryanti Rajasa Tbk', 31, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(130, 41, NULL, 207283, 'canceled', 'Donasi kepada PD Anggriawan Pradana', 41, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(131, 24, NULL, 102767, 'pending', 'Donasi kepada Fa Situmorang Tbk', 24, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(132, 39, NULL, 145375, 'canceled', 'Donasi kepada PT Usamah Prasetya Tbk', 39, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(133, 31, NULL, 237636, 'pending', 'Donasi kepada Perum Haryanti Rajasa Tbk', 31, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(134, 50, NULL, 50123, 'pending', 'Donasi kepada Fa Permadi Mardhiyah', 50, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(135, 36, NULL, 93728, 'pending', 'Donasi kepada PT Waluyo (Persero) Tbk', 36, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(136, 33, NULL, 79539, 'canceled', 'Donasi kepada PT Rahayu Rajata (Persero) Tbk', 33, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(137, 17, NULL, 152406, 'complete', 'Donasi kepada PD Suryatmi', 17, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(138, 9, NULL, 41998, 'complete', 'Donasi kepada UD Manullang (Persero) Tbk', 9, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(139, 50, NULL, 266452, 'complete', 'Donasi kepada Fa Permadi Mardhiyah', 50, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(140, 41, NULL, 270411, 'complete', 'Donasi kepada PD Anggriawan Pradana', 41, '2023-01-08 22:40:39', '2023-01-08 22:40:39'),
(141, 22, NULL, 31753, 'complete', 'Donasi kepada CV Riyanti Nasyidah', 22, '2023-01-08 22:40:39', '2023-01-08 22:40:39');

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
(1, 4, '7764266701', 'Minima provident adipisci earum accusamus. Dolorum ut est mollitia velit iste ducimus est eum. Voluptate alias totam voluptates. Omnis qui ipsam asperiores provident quia qui saepe.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(2, 5, '2625818273', 'Sint temporibus necessitatibus ut est at ipsum. Sint provident est reiciendis. Velit aut rem rerum. Iusto consectetur consequatur et et commodi animi. Necessitatibus velit ea ut id quibusdam. Voluptate eos ut odio cumque.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(3, 6, '7177542592', 'Temporibus ut quidem quas sed. Amet recusandae et voluptas tenetur ut eos dolorum. Voluptatem quod numquam soluta suscipit quidem. Error consectetur repudiandae quasi quisquam dignissimos animi. Autem vel mollitia repudiandae.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(4, 7, '3505888614', 'Et nostrum cum et quisquam amet nobis possimus. Nihil vel quisquam ut numquam dolorum id. Rerum nam ut architecto qui sunt. Est quia quis quo distinctio laboriosam accusantium.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(5, 10, '1292017389', 'Enim ex nihil atque sed sit. Sint consequatur laudantium et ea. Aliquid harum minima culpa ex. Velit eaque odio aspernatur autem ipsa. Ut eos minima aut quam dicta alias. Velit in consequatur iure non quo.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(6, 11, '4057358587', 'Animi eaque vel non enim. Et vero nam ipsa ut. Aut autem ducimus similique quibusdam corporis quis voluptas. Odio qui omnis eos architecto. Corporis dolores recusandae sequi suscipit earum velit. Consequuntur quaerat quia neque at deleniti.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(7, 14, '7575589506', 'Deleniti id voluptates excepturi accusantium. Quam consequatur id provident dolor similique veniam sit. Fugit ut voluptatibus accusamus neque natus expedita. Commodi recusandae et sequi eum eum dolore consequatur. Modi illum totam aut.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(8, 15, '1329806394', 'Autem ut id non labore magni tempore doloremque. Eos reiciendis explicabo laborum qui. Tempore aut rem omnis. Sequi qui provident illum voluptas.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(9, 16, '5513934414', 'Et rem in quae perferendis et nihil sit. Voluptatibus eius aliquid dolores harum. A facere hic et rerum et cumque. Libero harum enim et fugiat natus.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(10, 18, '7908202541', 'Est non sequi est veniam consequatur neque deserunt commodi. Qui eum quo repellat inventore. Aspernatur minima est illum et. Dolor quia provident dolorem numquam totam nam ducimus quis.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(11, 20, '9330832583', 'Consequatur ea praesentium porro et et molestiae. Tempora consequatur et provident et debitis nostrum. Esse praesentium magni similique doloremque qui doloremque.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(12, 21, '7104627248', 'Aut at ut voluptatem tenetur expedita. Officia consequatur est quia quos. Aut fugiat laboriosam ex assumenda error consequuntur. Nobis distinctio ut quia corporis voluptatum. Autem reprehenderit dolores id non at dolor. Ab quia fuga possimus esse.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(13, 23, '2070939517', 'Culpa dignissimos debitis asperiores. In nihil aliquid et saepe est. Sunt consequatur aperiam voluptas cumque.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(14, 26, '5110512916', 'Harum voluptatum numquam voluptate dignissimos odit. Quidem aut molestias illum at. Enim temporibus deleniti corporis sed autem ratione.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(15, 29, '6677465899', 'Est molestias corrupti ad illum. Et et laborum amet facere soluta dolores. Dolor aliquam accusamus laborum nulla. Nisi quod distinctio veniam. Autem est est explicabo rem inventore quos blanditiis.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(16, 34, '9531040301', 'Fugit error provident ut et in nostrum incidunt. Sit dolor qui dolore natus et. Ducimus dolorum enim est qui dolores. Sed deserunt dolores omnis sed soluta.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(17, 37, '8577786018', 'Quae tenetur ipsum laborum eum explicabo deleniti. Distinctio totam blanditiis et occaecati rerum. Aut quasi in rerum blanditiis voluptas. Quod doloremque est perspiciatis.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(18, 40, '4904420546', 'Et harum odio quasi quisquam possimus asperiores. Quam asperiores veritatis ab autem aut odio velit quis. Sit repudiandae veritatis dolore nam ut dolores quam pariatur. Nam esse sapiente officiis harum distinctio.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(19, 44, '4357300493', 'Sit ea saepe repudiandae illum enim commodi. Molestiae modi qui earum voluptas ex. Exercitationem rerum delectus laudantium recusandae suscipit et velit. Sit sed et saepe ducimus vel recusandae quis vel.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(20, 46, '3266764901', 'Fuga numquam sequi rerum. Reprehenderit eveniet necessitatibus voluptas. Itaque est temporibus autem reiciendis.', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(21, 49, '7688987525', 'Ab veniam molestiae voluptas et doloribus quia. Officiis nihil perspiciatis doloremque quidem. Fugiat ut ut laboriosam numquam nesciunt dolores. Occaecati numquam cumque rerum qui sit similique rem.', '2023-01-08 22:40:30', '2023-01-08 22:40:30');

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
(1, 1, 18, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(2, 1, 65, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(3, 1, 16, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(4, 1, 36, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(5, 1, 29, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(6, 1, 67, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(7, 1, 55, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(8, 1, 22, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(9, 2, 22, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(10, 2, 4, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(11, 2, 53, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(12, 2, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(13, 2, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(14, 2, 26, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(15, 2, 36, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(16, 2, 39, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(17, 2, 36, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(18, 2, 52, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(19, 2, 55, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(20, 2, 42, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(21, 2, 66, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(22, 2, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(23, 2, 2, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(24, 3, 1, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(25, 3, 29, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(26, 3, 42, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(27, 3, 24, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(28, 3, 68, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(29, 3, 45, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(30, 3, 21, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(31, 3, 60, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(32, 3, 34, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(33, 3, 1, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(34, 3, 23, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(35, 3, 66, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(36, 3, 10, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(37, 3, 58, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(38, 3, 39, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(39, 3, 56, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(40, 4, 13, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(41, 4, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(42, 4, 55, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(43, 4, 32, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(44, 4, 40, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(45, 4, 31, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(46, 4, 66, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(47, 4, 24, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(48, 4, 19, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(49, 4, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(50, 4, 31, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(51, 4, 22, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(52, 4, 53, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(53, 4, 47, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(54, 4, 12, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(55, 4, 59, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(56, 4, 58, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(57, 5, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(58, 6, 61, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(59, 6, 62, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(60, 6, 68, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(61, 6, 44, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(62, 6, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(63, 6, 55, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(64, 6, 52, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(65, 6, 16, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(66, 7, 51, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(67, 7, 30, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(68, 7, 17, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(69, 7, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(70, 7, 5, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(71, 7, 26, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(72, 7, 61, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(73, 7, 64, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(74, 7, 66, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(75, 7, 39, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(76, 7, 61, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(77, 7, 57, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(78, 7, 27, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(79, 7, 8, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(80, 7, 1, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(81, 7, 46, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(82, 7, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(83, 7, 41, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(84, 7, 36, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(85, 8, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(86, 8, 24, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(87, 9, 63, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(88, 9, 19, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(89, 9, 55, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(90, 9, 63, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(91, 9, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(92, 9, 1, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(93, 9, 63, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(94, 9, 28, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(95, 9, 58, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(96, 9, 28, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(97, 9, 15, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(98, 9, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(99, 9, 44, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(100, 9, 34, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(101, 9, 45, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(102, 9, 39, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(103, 9, 30, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(104, 9, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(105, 9, 41, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(106, 9, 67, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(107, 10, 64, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(108, 10, 56, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(109, 10, 35, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(110, 10, 62, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(111, 10, 46, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(112, 10, 7, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(113, 11, 40, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(114, 11, 40, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(115, 11, 47, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(116, 11, 51, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(117, 11, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(118, 11, 13, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(119, 11, 46, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(120, 11, 58, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(121, 11, 63, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(122, 11, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(123, 12, 27, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(124, 12, 56, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(125, 12, 4, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(126, 12, 31, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(127, 12, 60, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(128, 12, 20, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(129, 12, 5, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(130, 12, 20, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(131, 12, 32, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(132, 12, 11, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(133, 12, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(134, 12, 62, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(135, 12, 67, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(136, 12, 67, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(137, 12, 13, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(138, 12, 49, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(139, 12, 28, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(140, 12, 3, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(141, 12, 9, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(142, 12, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(143, 13, 20, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(144, 13, 36, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(145, 13, 60, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(146, 13, 14, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(147, 13, 5, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(148, 13, 15, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(149, 13, 5, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(150, 13, 25, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(151, 13, 48, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(152, 13, 27, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(153, 13, 1, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(154, 13, 15, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(155, 13, 37, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(156, 13, 23, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(157, 13, 38, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(158, 13, 70, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(159, 13, 29, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(160, 13, 9, '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(161, 13, 4, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(162, 13, 22, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(163, 14, 35, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(164, 14, 60, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(165, 14, 30, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(166, 14, 40, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(167, 14, 31, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(168, 14, 7, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(169, 14, 17, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(170, 14, 54, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(171, 14, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(172, 14, 61, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(173, 14, 57, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(174, 15, 21, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(175, 15, 18, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(176, 15, 8, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(177, 16, 65, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(178, 16, 39, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(179, 16, 11, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(180, 16, 38, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(181, 16, 11, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(182, 16, 27, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(183, 16, 39, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(184, 17, 63, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(185, 17, 67, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(186, 17, 41, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(187, 17, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(188, 17, 67, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(189, 17, 15, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(190, 17, 19, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(191, 17, 5, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(192, 17, 4, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(193, 17, 1, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(194, 17, 53, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(195, 17, 10, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(196, 17, 24, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(197, 17, 2, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(198, 17, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(199, 17, 56, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(200, 18, 3, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(201, 18, 14, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(202, 18, 51, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(203, 18, 67, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(204, 18, 64, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(205, 18, 4, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(206, 18, 20, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(207, 18, 8, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(208, 18, 34, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(209, 18, 59, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(210, 18, 12, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(211, 18, 15, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(212, 18, 42, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(213, 18, 70, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(214, 18, 66, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(215, 18, 45, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(216, 19, 34, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(217, 19, 20, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(218, 19, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(219, 19, 54, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(220, 19, 21, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(221, 19, 43, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(222, 19, 43, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(223, 19, 25, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(224, 19, 12, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(225, 19, 70, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(226, 19, 22, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(227, 19, 41, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(228, 19, 20, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(229, 19, 26, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(230, 19, 9, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(231, 19, 35, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(232, 20, 50, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(233, 20, 16, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(234, 20, 49, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(235, 20, 64, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(236, 20, 51, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(237, 20, 27, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(238, 21, 37, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(239, 21, 8, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(240, 21, 24, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(241, 21, 10, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(242, 21, 64, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(243, 21, 28, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(244, 21, 22, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(245, 21, 40, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(246, 21, 27, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(247, 21, 1, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(248, 21, 50, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(249, 21, 50, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(250, 21, 51, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(251, 21, 64, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(252, 21, 52, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(253, 21, 47, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(254, 21, 45, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(255, 21, 13, '2023-01-08 22:40:31', '2023-01-08 22:40:31'),
(256, 21, 59, '2023-01-08 22:40:31', '2023-01-08 22:40:31');

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
(1, 'Joko', 'taya83@example.net', 0, '0897 961 146', '-', 'Admin', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AAA3dKHzymMvD3RLzZCf1Dv2k089bO28qMVEUHHi0NVyL4WlKP5LIGIR5N82', NULL, 'https://i.pravatar.cc/640?img=60', 'Ki. Kebonjati No. 385, Subulussalam 60289, Sulsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(2, 'Hardana', 'nikki52@example.net', 567386, '(+62) 913 6893 618', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JLcPtrOyDQ', NULL, 'https://i.pravatar.cc/640?img=14', 'Ds. Yos No. 814, Solok 48386, NTT', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(3, 'Vero', 'nash49@example.org', 2254655, '0827 019 847', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1QMXJw1t6j', NULL, 'https://i.pravatar.cc/640?img=63', 'Ki. Bambu No. 136, Jambi 92957, Maluku', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(4, 'Chelsea', 'fohara@example.org', 2158941, '(+62) 524 1501 426', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Vsg55wogRb', NULL, 'https://i.pravatar.cc/640?img=18', 'Gg. Sadang Serang No. 915, Palembang 90868, Lampung', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(5, 'Hasna', 'noemie80@example.net', 991968, '(+62) 411 8673 9101', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rUc2aelbK7', NULL, 'https://i.pravatar.cc/640?img=1', 'Ki. Elang No. 808, Tebing Tinggi 86616, Bengkulu', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(6, 'Luwar', 'elsie05@example.org', 674450, '(+62) 528 6207 911', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GkDYkgiken', NULL, 'https://i.pravatar.cc/640?img=47', 'Jr. Basoka Raya No. 530, Blitar 74442, Pabar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(7, 'Nabila', 'cklocko@example.com', 2443848, '(+62) 22 2527 5630', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DtQuy3Clvr', NULL, 'https://i.pravatar.cc/640?img=18', 'Ki. Mahakam No. 673, Batam 46006, Kalbar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(8, 'Titin', 'reba42@example.org', 327741, '(+62) 828 074 910', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZEMClFL1L2', NULL, 'https://i.pravatar.cc/640?img=4', 'Ds. Supono No. 648, Tebing Tinggi 69844, Jambi', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(9, 'Ega', 'antonio.herzog@example.com', 1933675, '0959 3407 2080', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'pFPh3nNsNS', NULL, 'https://i.pravatar.cc/640?img=4', 'Kpg. Sugiyopranoto No. 386, Administrasi Jakarta Timur 65939, Kaltara', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(10, 'Caraka', 'miller.aric@example.net', 2194372, '0480 2336 546', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fLrZjy0jVE', NULL, 'https://i.pravatar.cc/640?img=10', 'Gg. Basoka No. 415, Kendari 80989, Sumsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(11, 'Kiandra', 'daija.rippin@example.net', 450202, '0385 8192 559', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'acvLySLOtw', NULL, 'https://i.pravatar.cc/640?img=63', 'Ds. Suniaraja No. 68, Blitar 63842, Sulbar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(12, 'Azalea', 'johnathon61@example.com', 2295234, '(+62) 29 0027 0117', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JLU2yulK0Y', NULL, 'https://i.pravatar.cc/640?img=61', 'Psr. Bakau Griya Utama No. 98, Medan 79146, Kalsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(13, 'Ratna', 'adele.russel@example.com', 1498690, '0389 5527 8356', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ht3c7BEqIc', NULL, 'https://i.pravatar.cc/640?img=27', 'Gg. Sudirman No. 452, Tangerang Selatan 75775, Sultra', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(14, 'Kamila', 'brad45@example.net', 572549, '0946 3145 5868', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sI2jrmkD1p', NULL, 'https://i.pravatar.cc/640?img=51', 'Dk. Baladewa No. 786, Bekasi 69440, Kaltara', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(15, 'Diana', 'runolfsdottir.ronaldo@example.net', 818381, '(+62) 618 1063 614', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XoKIlZ0j1I', NULL, 'https://i.pravatar.cc/640?img=70', 'Psr. Hang No. 877, Probolinggo 79747, Aceh', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(16, 'Carla', 'deon.runolfsdottir@example.net', 1384552, '0295 7823 7921', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nSmNOh58vp', NULL, 'https://i.pravatar.cc/640?img=43', 'Kpg. Ters. Buah Batu No. 584, Bitung 80519, NTB', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(17, 'Vera', 'leanna73@example.com', 1081993, '0822 8772 5807', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yzcFrnJUmf', NULL, 'https://i.pravatar.cc/640?img=20', 'Jr. Industri No. 229, Bandung 75435, NTT', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(18, 'Mila', 'nicolas.moore@example.net', 854994, '0395 6708 1619', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7zyJ4usGLN', NULL, 'https://i.pravatar.cc/640?img=59', 'Psr. Gatot Subroto No. 766, Mojokerto 26019, Bali', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(19, 'Fitria', 'rhaley@example.net', 784102, '0840 3339 942', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'orAR9Ziap5', NULL, 'https://i.pravatar.cc/640?img=26', 'Kpg. Baranang Siang Indah No. 737, Tarakan 12602, Sulut', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(20, 'Gamanto', 'ryleigh95@example.net', 975824, '(+62) 25 6553 2602', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DDANZlyVEw', NULL, 'https://i.pravatar.cc/640?img=11', 'Kpg. R.E. Martadinata No. 147, Tanjung Pinang 78900, Kaltara', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(21, 'Olivia', 'chadd.wisozk@example.net', 2553249, '(+62) 860 812 797', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WMXW2PVOsq', NULL, 'https://i.pravatar.cc/640?img=7', 'Dk. Ters. Pasir Koja No. 509, Ternate 50026, Riau', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(22, 'Cengkal', 'kertzmann.webster@example.org', 487193, '0958 7029 388', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vnahqVEh58', NULL, 'https://i.pravatar.cc/640?img=55', 'Dk. Rajiman No. 74, Bandung 52083, Gorontalo', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(23, 'Sabrina', 'rodriguez.laury@example.org', 2147269, '(+62) 890 4330 547', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XarzPTnnBC', NULL, 'https://i.pravatar.cc/640?img=55', 'Gg. Abdullah No. 706, Administrasi Jakarta Utara 41100, Pabar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(24, 'Dariati', 'summer.moore@example.org', 1642727, '0408 8364 8696', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aaBuNJxwnq', NULL, 'https://i.pravatar.cc/640?img=15', 'Jln. Setiabudhi No. 132, Lhokseumawe 88097, Banten', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(25, 'Ifa', 'dbradtke@example.com', 2439925, '0429 4435 266', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Z8xgiwD8rs', NULL, 'https://i.pravatar.cc/640?img=12', 'Ki. Suryo No. 449, Banjarbaru 72197, Jambi', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(26, 'Kairav', 'west.eugene@example.org', 226638, '0675 1697 975', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2MFgjlUwrx', NULL, 'https://i.pravatar.cc/640?img=52', 'Gg. Bazuka Raya No. 188, Pagar Alam 76241, Kalbar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(27, 'Lala', 'princess.williamson@example.org', 956486, '(+62) 861 643 967', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bc7zk2iEuL', NULL, 'https://i.pravatar.cc/640?img=11', 'Ds. Elang No. 803, Probolinggo 29516, Banten', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(28, 'Ilsa', 'branson30@example.net', 2327680, '0251 7716 176', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SphS1bJyXq', NULL, 'https://i.pravatar.cc/640?img=53', 'Dk. Sugiyopranoto No. 363, Surakarta 30046, Bali', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(29, 'Carla', 'emmerich.ernie@example.org', 1776760, '0806 9759 3001', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qr8IbNTrQ9', NULL, 'https://i.pravatar.cc/640?img=24', 'Ki. Rajawali Timur No. 768, Pasuruan 54615, Gorontalo', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(30, 'Humaira', 'ioreilly@example.net', 1777437, '0808 1403 4568', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7ocaD3mJMA', NULL, 'https://i.pravatar.cc/640?img=69', 'Gg. Banal No. 830, Tual 29079, Riau', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(31, 'Warji', 'robbie62@example.net', 1396493, '0455 9112 289', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hpVrO6N3QT', NULL, 'https://i.pravatar.cc/640?img=16', 'Psr. Laksamana No. 544, Kotamobagu 76449, Kalteng', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(32, 'Irma', 'solon.hyatt@example.net', 2457613, '(+62) 29 0906 2340', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6a5904MAdv', NULL, 'https://i.pravatar.cc/640?img=15', 'Ds. Umalas No. 694, Parepare 31381, Kaltim', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(33, 'Akarsana', 'metz.ahmed@example.org', 306060, '0811 8222 6981', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'm8rdBa9EfK', NULL, 'https://i.pravatar.cc/640?img=27', 'Gg. Kebonjati No. 189, Palangka Raya 12212, Sumsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(34, 'Tira', 'tschaden@example.com', 2322124, '(+62) 394 1274 241', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 't22wrKflGv', NULL, 'https://i.pravatar.cc/640?img=36', 'Jr. Ir. H. Juanda No. 768, Tual 57898, DKI', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(35, 'Rika', 'rowan.deckow@example.org', 330114, '(+62) 950 9247 728', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OEXEguPeF0', NULL, 'https://i.pravatar.cc/640?img=28', 'Dk. Basudewo No. 588, Administrasi Jakarta Timur 20351, Kalbar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(36, 'Dina', 'gilberto.stracke@example.com', 1822610, '(+62) 547 6847 9932', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ebSAn2BnVe', NULL, 'https://i.pravatar.cc/640?img=21', 'Psr. Yap Tjwan Bing No. 448, Palu 16028, Pabar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(37, 'Natalia', 'hjacobs@example.net', 517191, '0893 765 784', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0t7GdV4U6N', NULL, 'https://i.pravatar.cc/640?img=6', 'Ds. Raden No. 724, Palopo 49281, Pabar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(38, 'Ajeng', 'adriana.mayer@example.net', 663219, '(+62) 574 6345 911', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'o1CM5fYCw7', NULL, 'https://i.pravatar.cc/640?img=7', 'Kpg. W.R. Supratman No. 873, Bogor 96296, Sultra', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(39, 'Gatot', 'dzboncak@example.com', 283442, '0850 3235 9062', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'u3GmPBK2sz', NULL, 'https://i.pravatar.cc/640?img=34', 'Jr. Wahidin Sudirohusodo No. 693, Malang 64593, Banten', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(40, 'Okta', 'mohammad91@example.com', 1226258, '(+62) 532 3227 092', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EQE6pQm5gb', NULL, 'https://i.pravatar.cc/640?img=50', 'Ki. Bayan No. 952, Subulussalam 76830, Aceh', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(41, 'Banawi', 'bella.lind@example.com', 2799547, '0819 692 042', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dBo3sHWLIQ', NULL, 'https://i.pravatar.cc/640?img=59', 'Jr. Pasteur No. 292, Batam 76142, Kaltara', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(42, 'Rahmi', 'erippin@example.org', 1708301, '0763 4440 095', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'pvlndqOxAH', NULL, 'https://i.pravatar.cc/640?img=8', 'Jln. Suryo Pranoto No. 664, Kotamobagu 23695, Kalteng', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(43, 'Ega', 'teresa82@example.net', 2932022, '024 3085 586', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k9NwaIAk9g', NULL, 'https://i.pravatar.cc/640?img=45', 'Kpg. Yoga No. 278, Administrasi Jakarta Utara 22470, Bengkulu', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(44, 'Nyana', 'augustine59@example.com', 758869, '(+62) 878 8179 048', 'Male', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1X9MMrZEKl', NULL, 'https://i.pravatar.cc/640?img=38', 'Ki. Bambon No. 981, Tomohon 61344, Sulsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(45, 'Maida', 'hauck.taryn@example.net', 353855, '0586 5851 377', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KB0FQYntZI', NULL, 'https://i.pravatar.cc/640?img=19', 'Dk. Bakaru No. 22, Prabumulih 20941, Sulbar', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(46, 'Yessi', 'qbergnaum@example.org', 2728001, '(+62) 392 0395 399', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5fNQSAoZxr', NULL, 'https://i.pravatar.cc/640?img=69', 'Dk. Suryo Pranoto No. 756, Sorong 74617, Gorontalo', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(47, 'Cakrabuana', 'schinner.leora@example.net', 1558435, '(+62) 349 3683 5952', 'Male', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8BV5KlLzp9', NULL, 'https://i.pravatar.cc/640?img=61', 'Kpg. Padma No. 236, Gunungsitoli 81371, Kepri', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(48, 'Gabriella', 'hdubuque@example.net', 2917869, '0475 9828 7465', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OpO2rHPvZS', NULL, 'https://i.pravatar.cc/640?img=42', 'Jln. Achmad Yani No. 337, Solok 22380, DKI', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(49, 'Dinda', 'tzulauf@example.org', 549780, '(+62) 532 9776 5548', 'Female', 'Tutor', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ws7T0gDFMh', NULL, 'https://i.pravatar.cc/640?img=28', 'Gg. Sukabumi No. 362, Sukabumi 20486, Sulsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(50, 'Yunita', 'kathlyn44@example.net', 2421217, '0737 2505 4835', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'h4hn1NZzFd', NULL, 'https://i.pravatar.cc/640?img=38', 'Jr. Samanhudi No. 450, Tual 57591, Sumsel', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30'),
(51, 'Ida', 'marvin.stacey@example.com', 2670063, '(+62) 408 0455 1227', 'Female', 'Pengurus Panti', '2023-01-08 22:40:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DY25pnIRsF', NULL, 'https://i.pravatar.cc/640?img=39', 'Ki. Ki Hajar Dewantara No. 636, Mataram 42329, Jambi', '1', '2023-01-08 22:40:30', '2023-01-08 22:40:30');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `course_bookings`
--
ALTER TABLE `course_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `course_booking_day_time_ranges`
--
ALTER TABLE `course_booking_day_time_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `orphans`
--
ALTER TABLE `orphans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;

--
-- AUTO_INCREMENT untuk tabel `orphan_course_bookings`
--
ALTER TABLE `orphan_course_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT untuk tabel `orphan_crs`
--
ALTER TABLE `orphan_crs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tutor_day_time_ranges`
--
ALTER TABLE `tutor_day_time_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

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
