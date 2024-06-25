-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2023 pada 03.15
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_course`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('finished','study') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'study',
  `user_id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activities`
--

INSERT INTO `activities` (`id`, `status`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'study', '01h67vbrk7swfsw38779bzddzd', 1, NULL, '2023-07-26 01:08:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_edited_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `slug`, `added_by`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, 'Matematika', 'PRXC', 'matematika', 'Yuliana Kamaria Mardhiyah', 'Ella Pudjiastuti', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(2, 'Bahasa Inggris', 'IJHJ', 'bahasa-inggris', 'Margana Wahyudin', 'Bala Laksana Ramadan M.Kom.', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(3, 'Bahasa Indonesia', 'UMTA', 'bahasa-indonesia', 'Tira Calista Astuti S.E.I', 'Dimaz Balijan Salahudin S.Ked', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(4, 'Fisika', 'SSBC', 'fisika', 'Cemeti Zulkarnain', 'Sakura Yuniar', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(5, 'Kimia', 'FBYG', 'kimia', 'Belinda Lailasari M.Ak', 'Salwa Laksmiwati', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(6, 'Biologi', 'OSKJ', 'biologi', 'Paramita Zulaika', 'Nasim Damanik', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(7, 'Sejarah', 'WQVQ', 'sejarah', 'Oliva Lailasari', 'Wirda Namaga S.Pd', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(8, 'Geografi', 'XCBX', 'geografi', 'Usyi Kuswandari', 'Michelle Wijayanti', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(9, 'Ekonomi', 'NCFO', 'ekonomi', 'Tiara Nasyiah', 'Warsa Bala Hutapea', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(10, 'Sosiologi', 'YLVV', 'sosiologi', 'Putri Mardhiyah', 'Reksa Waluyo', '2023-07-26 01:00:09', '2023-07-26 01:00:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `favorite` int(11) NOT NULL DEFAULT 0,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_edited_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `draft`, `title`, `slug`, `cover`, `desc`, `body`, `favorite`, `added_by`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'Et Atque Eaque', 'et-atque-eaque', 'https://picsum.photos/640/360?random=1', 'Eos non natus natus fuga asperiores. Odio illum accusamus ex voluptatem quos voluptatum quia sunt. Quas illo quo ipsam qui. Deserunt molestias delectus est. Nihil ut voluptatibus eum voluptatem.', 'Hic laborum qui nisi autem dolorem. Expedita quod fugiat officiis excepturi. Voluptatum rerum quas beatae inventore. Inventore voluptates fugit et perspiciatis. Laborum reprehenderit quia optio nihil est. Eveniet quaerat ea eaque cumque maiores rem. Quia aut corrupti repellendus iusto iste culpa. Quibusdam at rerum aut accusamus eligendi et sed. Aut reiciendis quidem occaecati enim nobis ut. Voluptatibus velit fugiat et deleniti aut. Provident id velit officiis omnis. Consequuntur praesentium quia nam voluptatum eos deleniti. Delectus in non architecto quia iusto. Sit harum qui tempora at natus rerum at. Sed nihil aut esse quibusdam dolor. Aspernatur necessitatibus sequi fuga et qui labore. Sit pariatur omnis qui tenetur laborum. Quis rerum error maiores perferendis ut deserunt suscipit sit. Dolorem ut quia in id et. Necessitatibus iure numquam quibusdam eos nemo quia sint. Enim magnam voluptas aut aliquam culpa dicta laboriosam placeat. Quas aperiam omnis quibusdam alias nostrum. Quos exercitationem hic ab nam placeat est. Atque rerum sunt atque provident aut consequatur dolor. Architecto minus fuga laborum magni odit eius. Dicta aliquam aut omnis vero assumenda deserunt. Deserunt ea deserunt nesciunt eos ab qui nihil.', 0, 'Azalea Halimah', 'Edison Warsita Pangestu', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(2, 7, 0, 'Dolores Non Ad', 'dolores-non-ad', 'https://picsum.photos/640/360?random=2', 'Ad eius velit quam et. Nihil dicta quas quis excepturi facilis. Autem qui est et. Provident exercitationem nihil eius.', 'Pariatur quia est dolores. Est et ad dolorem. Qui consequatur incidunt debitis ad fuga. Et voluptas molestiae sint odit odio. Velit voluptas perspiciatis ut dolorem. Adipisci assumenda quis quas sint veniam et illo voluptatem. Consequatur est aut praesentium blanditiis non autem ea rem. Id soluta necessitatibus exercitationem velit. Quam ea ex voluptatibus ea eum non facilis. Accusamus vel sed sunt ut. Temporibus dolorum possimus ipsa. Sit fuga asperiores provident. Ex ut mollitia quasi vero ut. Dolorem autem sapiente deserunt qui sunt. Et illo atque aperiam eos quidem architecto asperiores. Qui qui hic sunt nesciunt. Suscipit quia cum numquam cupiditate itaque asperiores. Eaque et et quia consequatur. Odit culpa fugiat fugiat necessitatibus consequatur quidem voluptatem. Commodi eligendi eveniet quia. Amet ab qui mollitia quibusdam culpa. Doloremque totam blanditiis doloribus qui aut. Ducimus aut maiores cupiditate alias explicabo aut. Ut magnam et et et. Quos eius voluptatibus eius consequatur ut non accusantium. Praesentium omnis beatae voluptate. Dolor et voluptatem mollitia est animi. Exercitationem corporis eos qui possimus. Dolores odit aut distinctio. Consequatur et aut autem veritatis est expedita. Sit cumque quos delectus ea nesciunt facere. Eligendi deleniti qui commodi minima sunt explicabo. Et odit et sed ex ex est ut odit. Est quos esse et reprehenderit beatae voluptatem. Sint illo fugit iure ullam sed eligendi voluptas. Ipsam tenetur voluptatem voluptatem rerum. Est modi molestiae corporis iusto minus beatae. Et incidunt commodi quos molestiae. Quae sunt earum consectetur assumenda amet nisi quaerat. Rem laboriosam dolores quidem quia temporibus voluptas a. Voluptatem consequatur itaque dolor laboriosam. Non deserunt et quo omnis. Explicabo fuga aut animi et. Autem repellendus et voluptatem facere tenetur qui quia. Omnis quibusdam harum aliquam facere nihil. Voluptas assumenda ducimus harum laborum quos neque hic voluptas. Corporis velit officiis asperiores quas inventore. Occaecati sint tempore deleniti veritatis et cum. Qui dolorem deserunt explicabo qui voluptatem veniam. Ut ipsum inventore alias ut vel ex velit quia. Molestiae non nulla ratione aliquam odio pariatur quaerat. Et quis corrupti sunt totam voluptatem. Quia corrupti est ipsa repudiandae. Assumenda aut quia voluptatem placeat. Porro consectetur facilis qui officia explicabo. Fugiat sit nam cum et. Necessitatibus vero sit soluta beatae. Dolorem sunt quia et libero aperiam. Quam ea id rerum earum. At natus commodi doloremque aut et. Asperiores omnis quia sint sit laborum mollitia ut. Voluptatem eveniet quo provident consequatur cum tempore molestiae. Inventore libero culpa quo. Ea omnis consequatur et distinctio aspernatur quisquam unde. Sapiente est soluta aut. Excepturi rerum et nobis laudantium repudiandae.', 0, 'Bakda Hidayanto S.I.Kom', 'Dipa Gaiman Simanjuntak', '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(3, 3, 0, 'Tempore Id Quis', 'tempore-id-quis', 'https://picsum.photos/640/360?random=3', 'Doloremque ut magnam incidunt itaque aut magni saepe repellendus. Provident aspernatur porro rerum autem hic velit. Sit debitis suscipit omnis.', 'Molestiae quidem fuga ut sit. Laboriosam dolore consequatur totam neque. Qui qui qui in non voluptatem optio rerum. Possimus illum aut qui accusamus molestias molestiae fugit. Officia distinctio dolorem at ut id perferendis dolorem. Velit aut aut dolores et. Ipsam quas at rerum voluptatibus aut. Nihil et ipsa animi ea qui. Illum tenetur ut voluptas iste dolores consequatur possimus ut. Quia ut consequatur culpa illum. Consectetur laborum nemo neque sunt aut. Sunt numquam eveniet eligendi harum quaerat aliquam eaque. Cumque asperiores et molestiae non ipsum. Repellat adipisci qui necessitatibus quia. Repellat qui ipsam et assumenda ut molestiae illo. Aut ullam blanditiis ipsa cupiditate voluptatibus. Maxime maiores in qui sunt. Et et repellat laudantium rerum. Ut dolor necessitatibus aut corrupti et. Quibusdam in unde et animi. Repudiandae qui incidunt iure enim eos est eligendi. Ut hic eos et porro molestias ut. Quidem enim esse blanditiis. Sunt fugiat sunt minima exercitationem porro. Aliquam iste aut perferendis laborum quidem velit pariatur. Cumque aut vitae unde nam quam in. Maxime alias et dolore ut incidunt consequatur magni a. Magni consequatur et minima facilis. Ut facilis fugit error culpa. Sunt dolorem fugit officiis porro. Aspernatur maiores architecto tempora et dolores vitae modi nam. Exercitationem dolores aut qui amet. Culpa aperiam et similique. Illo sed tenetur unde. Ipsam sunt sit ex enim incidunt ut. Blanditiis ut et a aliquam eum. Amet provident voluptatem magnam id. Recusandae vitae iste provident odit aspernatur libero necessitatibus. Earum perspiciatis totam veritatis ut vel animi. Optio ut tempore quia quibusdam. Id natus sit molestias non expedita beatae. Consequatur animi dolorem sunt voluptatum. Repellendus facere id adipisci modi.', 0, 'Paulin Wani Susanti M.TI.', 'Ika Nasyidah S.Psi', '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(4, 8, 0, 'Laboriosam Quasi Eum Asperiores', 'laboriosam-quasi-eum-asperiores', 'https://picsum.photos/640/360?random=4', 'Ea iste deleniti corrupti perferendis neque hic laudantium. Id velit saepe quos voluptatem quibusdam. Est veritatis odit totam quidem.', 'Doloribus sunt qui eos et ut nulla omnis. Molestiae veniam magni velit optio. Id adipisci odio quas nihil blanditiis vero. Deleniti natus et eos est odio rerum aperiam. Blanditiis aliquid fuga quod veniam. A qui quia ut beatae soluta libero. Ut consequatur excepturi dolorem. Asperiores minima animi maxime. Nisi dolor incidunt voluptates consectetur aut. Repellendus asperiores laborum nulla aut excepturi. Nostrum sint est dolore voluptatum fugiat excepturi dicta optio. Voluptas inventore facilis error recusandae error debitis similique. Officiis tenetur ex quas qui aut omnis vitae. Ex voluptas mollitia eligendi reprehenderit sit alias. Perferendis voluptas commodi quae sint. Soluta soluta voluptatem non sequi voluptate voluptatem. Non dolores omnis dolor in quas pariatur autem. Saepe laboriosam voluptatem iste deleniti nesciunt ut totam sed. Est nemo nulla quae omnis dolores rem nisi ea. Asperiores harum aperiam magnam sed dolores nihil facere nemo. Quia qui quae aut quia esse. Et vitae veritatis laudantium dignissimos corporis. Omnis saepe est nobis numquam. Sit dolorum est aliquam libero et sed. Enim dolore omnis nostrum nostrum. Qui quos repellendus doloribus consequatur aut. Et quas voluptate nemo. Quis sed sit est qui quaerat molestiae itaque. Ipsam aut rerum temporibus iste quia omnis. Mollitia voluptatibus qui sunt sequi aliquid illo. Quia maiores eum beatae ab debitis in minus. Natus pariatur quam dolores consequatur dolor quas ipsam. Enim ut dolorem harum ipsum. Qui sunt doloremque vel dignissimos omnis nihil aperiam cum. Modi velit rerum molestias. Qui alias quia iure quia quo ea. Et aut aliquam sed quo et. Ratione dolor molestias sit nisi. Iste quo iste quam reprehenderit nobis. Nostrum quae sint velit veniam repellendus enim. Maiores veniam ipsa alias dolor deserunt. Recusandae sed sapiente quod fugit porro. Nesciunt officia itaque et ullam libero. Quam et soluta dolore iste cum sed laboriosam. Iste dolor quod debitis recusandae. Ipsum sed est esse itaque enim aliquam reprehenderit et. Reiciendis aut recusandae et blanditiis eos praesentium perferendis quisquam. Et aliquam voluptatem sed aut perferendis iure fugiat odit. Ut ullam eligendi commodi rem accusamus. Illum aut sunt possimus iusto dolore omnis. Aut et fugiat ut autem reprehenderit amet. Adipisci enim itaque impedit excepturi tempora et inventore. Velit sint reprehenderit vel non eum quibusdam accusamus.', 0, 'Vino Ardianto', 'Jail Lazuardi', '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(5, 1, 0, 'Sint Tempora', 'sint-tempora', 'https://picsum.photos/640/360?random=5', 'Cumque amet odit itaque aut ut est. Maxime beatae ut cupiditate autem non aut. Est eum eaque nesciunt totam nobis quia. Itaque ducimus ipsum eos illo sit cum veritatis.', 'In magnam dolor accusantium iure culpa delectus. Ipsum debitis ut pariatur quia fuga libero. Ex incidunt qui qui repudiandae eaque consequatur assumenda aut. Voluptatem quo fugiat quo. Iste rerum consequuntur sit non consequatur. Error id laboriosam quasi ut quibusdam blanditiis vitae excepturi. Possimus ducimus dolorem inventore perferendis repellat similique. Facilis cum adipisci eum ad ipsam qui sint aut. Ut eius id autem. Et ipsum delectus quibusdam. Id quos necessitatibus veniam officiis. Illo voluptas libero qui ad omnis est voluptatem provident. Eaque saepe iusto alias pariatur expedita. Occaecati molestiae in corporis tempore quia molestias delectus quibusdam. Maiores rerum nostrum non assumenda explicabo asperiores eos. Et ratione quasi nesciunt sint enim eius. Voluptate voluptas voluptas possimus aperiam numquam occaecati tempore. Similique eligendi adipisci impedit quibusdam eaque sed. Consectetur in officiis est et maxime et. Nobis quod dolorum voluptas fugiat. Voluptatibus consequuntur nam et similique voluptatem dignissimos ratione. Et corporis et laborum sed ea repellat. Fugiat nobis blanditiis optio deleniti et cumque. Voluptates consequatur aut maxime dignissimos. Molestias aut et sequi eveniet eius officia rerum. Repudiandae quia a omnis sint earum. Corrupti veniam qui veniam autem sint quos magni. Ducimus assumenda dignissimos illo qui commodi consequatur et id. Hic cupiditate consectetur quo doloremque et ducimus sint. Molestias nulla molestias adipisci nulla ratione. Deleniti cupiditate sed deleniti at et. Aut nisi doloremque mollitia enim quas. Natus eos laudantium ut sed adipisci voluptas quasi. Recusandae est et repudiandae in. Repudiandae veritatis qui itaque fugit sit. Tempore fugiat excepturi fuga sunt velit molestiae. Eaque aut modi nulla maxime ipsam. Sed sapiente nam reiciendis blanditiis est minima tenetur. Dolores ut dolore ut. Tempora quod esse deserunt facere rerum. Autem commodi est porro nisi modi repellendus. Quasi neque quos esse assumenda ad enim itaque. Illo voluptatem nisi vero et maxime. Vel maxime ut sapiente deserunt aut. Libero sunt nostrum ea unde inventore.', 0, 'Kezia Laksita', 'Irfan Nababan', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(6, 4, 0, 'Vel Molestias Voluptas Ea', 'vel-molestias-voluptas-ea', 'https://picsum.photos/640/360?random=6', 'Quo ut voluptatem odio libero. Facere placeat sit sequi eum sint. Asperiores voluptatem voluptas exercitationem error delectus explicabo quis. Quo consectetur voluptates et qui.', 'At atque necessitatibus nihil blanditiis a eos hic dolor. Quia doloribus cumque eveniet unde. Quo ea dolores sit et. Voluptatem eos assumenda eligendi. Officiis nihil dolor dolores est magnam id quis. Autem beatae et id qui facere ab quasi tempore. In molestiae ab quibusdam qui. Enim omnis ullam eum autem aut aut recusandae. Non adipisci aut iusto et eos. Ab quisquam esse incidunt asperiores. Dolorem dolorem recusandae voluptatem qui cupiditate nulla esse harum. Tempora est nisi sit qui. Reprehenderit porro in recusandae qui. Facere ea quam ad voluptatem sapiente nihil. Eum tempora velit aut laboriosam recusandae qui rerum. Et explicabo dolorem quas modi. Molestiae sapiente hic error deserunt. Est animi explicabo omnis. Commodi eius quod fugiat. Sapiente accusantium porro ut dolores soluta. Repellat tenetur dignissimos eos esse blanditiis sit. Voluptatem alias quos id et consequuntur corrupti quo natus. Nihil ut deserunt velit dolore deserunt.', 0, 'Lurhur Jaya Anggriawan', 'Jasmani Imam Prasasta', '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(7, 7, 0, 'Vitae Hic', 'vitae-hic', 'https://picsum.photos/640/360?random=7', 'Optio mollitia maiores et id accusantium temporibus ut. Quo alias veritatis aut et similique. Corporis neque ut suscipit tempora et. Provident excepturi aut omnis eveniet quibusdam error.', 'Expedita incidunt eveniet quibusdam et exercitationem aut beatae fugiat. Quas perferendis eligendi voluptas illo optio magni. Beatae modi officia beatae eligendi et officia asperiores. Aliquid iste nisi et ut expedita nostrum incidunt. Perferendis repellendus reprehenderit molestiae ullam nihil ab esse. Debitis suscipit delectus rerum cumque nostrum exercitationem reprehenderit quas. Debitis dignissimos inventore aut et consectetur qui ab. Doloribus iure odit hic nihil. Occaecati dolor qui non odit autem. Officia explicabo labore occaecati expedita deleniti libero. Inventore esse aliquid eveniet qui sint ipsa porro tenetur. Repellendus nihil et sed quia quia. A aperiam impedit ut. Nihil accusamus aperiam et eaque et quam. Quia voluptatum quis perspiciatis perferendis nam. Ipsum quisquam dignissimos dolorum rem voluptate. Saepe numquam aliquid sed blanditiis. Culpa tempore beatae alias quis voluptas.', 0, 'Gandewa Baktianto Hutagalung M.Pd', 'Tari Salimah Haryanti', '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(8, 10, 0, 'Officiis Soluta', 'officiis-soluta', 'https://picsum.photos/640/360?random=8', 'Quo laudantium et adipisci. Totam qui optio quia illum. Soluta ut et qui aut provident vel dignissimos qui. Ipsa sequi labore quae et mollitia quas.', 'Repellendus qui temporibus enim nulla quisquam. Nulla voluptas voluptatum at qui commodi. Laboriosam soluta neque quia omnis quasi velit. Velit quas magni nam reiciendis. Accusantium illo dolorum aut sed et repellendus dolore. Dolorum eius necessitatibus eos quidem quia delectus repellat. Dolores illo quae aspernatur voluptatem. Blanditiis voluptates consequuntur sit voluptatem quas animi nesciunt. Cum debitis quo perspiciatis ut aperiam. Sequi ut consequatur quae quidem culpa. Fuga cum rem magnam aut eum velit. Quia assumenda fugiat eos et tempore velit illum. Ipsum laudantium qui voluptatum voluptatem vitae ad consequuntur. Hic qui libero blanditiis fuga provident. Iste dolores accusantium voluptatibus vero. Iusto molestiae minus modi nobis sunt ad et. Tenetur et consequuntur non odit. Qui qui ut necessitatibus voluptas nostrum delectus. Quia minus architecto veritatis id omnis. Commodi dolorem veritatis doloremque non. Nam ea voluptatem ipsam placeat. Laudantium qui voluptatem dolor aliquid velit. Atque voluptas neque velit et exercitationem fugit. Voluptatem a rerum alias itaque quibusdam velit voluptatem ea. Optio omnis maiores tempora nostrum. Quae laboriosam libero eligendi veritatis exercitationem est est. Quia voluptatem eum voluptas voluptas similique iusto. Quaerat praesentium deleniti corrupti hic. Dicta natus libero est nihil officia tempore et. Et eos omnis voluptatem dolor cupiditate. Omnis eligendi voluptas eos modi. Ratione sint debitis maiores voluptas quis blanditiis pariatur alias. Similique qui nemo omnis hic. Dolor quia consequuntur et dolor. Facilis nostrum est ullam vel. Vitae deleniti reiciendis dolorum doloribus amet. Dolorum in rem non sed. Perspiciatis harum qui totam. Voluptate velit adipisci voluptas et fugit. Est qui magni voluptate omnis eos odit. Quia facilis qui quis voluptas et sed. Necessitatibus inventore earum quidem. Aut voluptatem recusandae eligendi nobis aut. Odio earum cumque corporis dolor. Repellat consequatur accusantium enim ut aut pariatur. Quo et voluptatibus dicta eum expedita et. Autem vel eius velit itaque quibusdam. Ut veritatis repellat occaecati nihil. Ut neque quaerat quam ut ipsam explicabo. Quod autem sed tempore id. Vero deleniti earum repellat voluptate nam hic molestias. Quo aperiam accusamus velit sint consequatur ducimus. Omnis tempore qui et ducimus. Quia dolor aut expedita maiores molestiae. Officiis minus id quod sint. Vero ipsam est ipsam ut delectus explicabo. Laborum qui et nostrum provident qui eaque. Eius nesciunt perspiciatis nesciunt similique quae. Odio fugiat magni autem nam qui. Iure fugit debitis ipsa ea. Rerum rerum dignissimos nesciunt officia et corrupti. Tempora aut voluptas ipsa iste.', 0, 'Eli Rahimah', 'Gandi Cemeti Mustofa S.E.', '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(9, 2, 0, 'Odit Et', 'odit-et', 'https://picsum.photos/640/360?random=9', 'Et a aut dignissimos cupiditate repellat. Ut excepturi assumenda delectus eum autem velit. Est rerum et vitae assumenda consequatur doloribus id vero. Sed repellendus dignissimos corrupti in magni.', 'Omnis ullam accusamus est autem repudiandae repellat. Praesentium deleniti alias explicabo est reiciendis ad. Blanditiis tempora harum culpa incidunt fugit vel voluptate. Architecto laboriosam aut perferendis rerum velit. Occaecati debitis et voluptatem quis quo id. Aut sed corrupti veniam dolor eveniet. Qui error nulla odio ducimus. Qui laudantium est natus ratione quia ut maxime quia. Sit nesciunt voluptatum voluptatibus. Non delectus rerum ipsam. Quas expedita voluptas ducimus. Est molestiae consequuntur sequi quo ut. Voluptas nisi ut possimus eum doloremque quibusdam quidem nobis. Voluptas corporis molestiae ducimus dolorem et quaerat maxime. Voluptatem accusantium numquam ullam esse consequatur. Incidunt laudantium earum qui necessitatibus. Odit voluptatem quam expedita maiores quod. Aut molestiae est dolores a. Et qui nam pariatur voluptates dolorem architecto quaerat autem. Perspiciatis rerum velit minus repellendus sit et. Dolores soluta fugit vel porro temporibus tenetur. Explicabo tempora ut similique omnis. Sit totam corporis et doloribus quasi dolore. Necessitatibus aut dolorem voluptatem laboriosam. Quas qui saepe facere molestiae minima. Sunt est vero beatae laudantium dolorem accusantium expedita. Placeat sint voluptatem et nulla soluta dolorum. Quod corrupti non odit cum voluptate quia. Placeat quia ex numquam a porro eos sapiente nihil. Est labore accusamus aut earum adipisci. Saepe dolore nulla ullam exercitationem aliquid. Vel quae voluptate ad rem quod enim. Autem laudantium perspiciatis saepe fuga fuga. Ut est et ea facilis numquam cupiditate deserunt ut. Repellendus corrupti perferendis quod necessitatibus. Similique autem tempora natus aut eaque.', 0, 'Farah Oktaviani', 'Lintang Silvia Fujiati', '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(10, 6, 0, 'Nihil Corporis Dolor Doloribus', 'nihil-corporis-dolor-doloribus', 'https://picsum.photos/640/360?random=10', 'Officia sint deserunt maiores reprehenderit autem. Consequuntur est eius veniam veritatis. Accusantium quaerat facere alias et et odio soluta quis. Ea est architecto sunt qui autem.', 'Dolores repellat id sapiente nihil neque voluptate. Ut magni laboriosam dolorum dolorem non sapiente. Est voluptate dolor sed magni adipisci quidem. Distinctio commodi enim eum quo voluptas aut quo. Ratione non qui dolorum eaque et quia. Voluptate at molestiae dolore consectetur. Placeat ut odit repellat id. Eligendi laborum labore id rerum. Dolorem et eos consequatur dolorum facilis veniam. Ea atque culpa minus labore eius. Ex ipsum ut quos. Unde accusamus qui harum reiciendis qui enim rem. In omnis totam inventore quis officia sed omnis totam. Voluptatem ea facilis repellendus quam vero. Pariatur expedita necessitatibus velit et rerum. Culpa fugit eaque libero quod sed. Amet non rem delectus voluptatem suscipit eos. Ea dolorem qui maiores et pariatur molestias deserunt. Consequatur laborum est inventore perspiciatis itaque ea. Fugiat illum id laudantium illum. Sit sunt voluptatem deleniti amet eum dolores hic. Ex fugit expedita deleniti possimus delectus rerum. Molestias commodi beatae quia quos ut necessitatibus placeat autem. Vel sed adipisci officiis molestias odit. Deserunt maiores est laborum neque. Cumque ut accusamus eaque aliquid. Quia similique distinctio est accusamus aut. Laudantium consequatur dolorem omnis necessitatibus veniam autem voluptatem exercitationem. Eum repudiandae iusto ut hic voluptas repudiandae. Rerum praesentium molestiae eos dolor aliquid. Et nemo tempore incidunt aut rerum delectus cumque. Rerum distinctio temporibus quia culpa. At saepe quo velit deleniti qui pariatur voluptatem incidunt. Voluptas eaque maiores labore dolorem fugiat. Possimus maxime qui fugit provident ut facilis facilis. Ex sit quia natus. Sunt voluptatum sit voluptatem ut et eum sint. Ut nobis voluptatibus eum porro a. Eos debitis neque enim quasi ullam necessitatibus voluptatem. Et eius qui officiis molestiae harum ipsam laudantium. Aut adipisci quisquam omnis nihil molestias.', 0, 'Bakti Gunarto S.Pd', 'Anggabaya Pangestu M.Pd', '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(11, 2, 0, 'Consequatur Aut Et Veniam', 'consequatur-aut-et-veniam', 'https://picsum.photos/640/360?random=11', 'Velit ut velit blanditiis et quibusdam explicabo enim animi. Veritatis officiis at cupiditate laborum autem cupiditate atque perferendis. Sint at qui laborum est.', 'Earum rem et doloremque quo velit. Asperiores dignissimos accusamus praesentium odio quasi quidem ea. Hic laboriosam dolor iste explicabo vitae. Dolorem placeat incidunt qui id laboriosam sit. Laborum officia repellendus quasi eaque. Ea omnis adipisci optio. Ipsa dolores nulla nemo tempora. Eveniet enim unde quo dolor. Placeat excepturi facilis distinctio id perspiciatis beatae quibusdam. Ea sint dolor dolorem animi et. Ducimus voluptate iste odio ad consequatur eum a quo. Nihil qui non eligendi aut est a repudiandae. Quia autem ut deleniti ut. Porro architecto sint sint porro consectetur error. Fugit est laudantium impedit sed ex ad. Odio et sapiente earum voluptas iure expedita. Minus dignissimos quia enim non ut. Quia fugiat autem libero quo quia voluptatum illo. Illum nesciunt hic dolore rerum. Doloremque enim neque eius doloremque ad eligendi. Ut fuga eos iure rerum doloribus. Ad consequatur omnis ut assumenda nesciunt et sunt quam.', 0, 'Kenzie Pradana', 'Bagya Oskar Anggriawan', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(12, 6, 0, 'Ipsam Aliquam Eveniet Consequatur', 'ipsam-aliquam-eveniet-consequatur', 'https://picsum.photos/640/360?random=12', 'Natus non id ad neque. Quo quae ducimus nam. Iure odio iste adipisci necessitatibus. Excepturi aperiam voluptatum voluptatem sequi labore itaque non.', 'Laudantium fugiat tempore quaerat rerum qui repellat et enim. Dolores odio aut soluta. Vitae quas et libero sit est qui quas. Qui rem aut enim est velit quae cupiditate ut. Aut voluptatem porro facere est optio. Explicabo esse esse reprehenderit velit optio. Dolor autem et doloremque in. Fugiat voluptates expedita ut commodi. Distinctio fugit impedit est officia exercitationem. Rerum voluptatum consequuntur in aut quo aut sint. Est et quidem sed et sint autem. Quasi commodi et incidunt nostrum. Impedit non sed labore sunt perspiciatis dolore. Qui facilis molestias maxime ipsum. Neque beatae molestias et enim. Aut est soluta est maxime omnis delectus. Et et est quia culpa facilis veniam. Sint nostrum dolores rerum dignissimos et dolorem ducimus. Voluptates harum accusantium et et occaecati sit repellendus. Error facilis a nam. Autem delectus excepturi odio consequatur. Et ipsum quis autem est consequatur explicabo molestiae. Excepturi officia harum amet quo sed ea modi. Natus nihil cum eum deleniti voluptate occaecati velit. Ut voluptatem quod velit impedit. Unde eveniet qui beatae facere dolorum eligendi est. Voluptas molestias saepe dignissimos doloribus. Ut nihil omnis accusantium omnis corporis. A commodi eos cupiditate dolor omnis maiores ea iure. Repellendus numquam ipsum voluptatem voluptas voluptas quidem. Rem sint nemo vel voluptate tenetur et magni. Et laudantium quasi dolores et. Enim voluptas quod harum non suscipit in molestiae quas. Atque inventore eum esse. Molestiae necessitatibus necessitatibus quis. Nobis et autem saepe qui dicta quaerat. Recusandae officiis ipsa minus ut voluptatum magnam totam. Non est qui eligendi in aut et. Vero nostrum voluptas qui odio quia aliquam dicta. Necessitatibus dolorem atque blanditiis culpa. Sit ut eligendi voluptatem ipsam repudiandae. Quis consequuntur non ut maxime. Voluptate ut aliquam maxime dolore qui dolorum aut incidunt. Eaque cupiditate aperiam qui aut totam eos natus. Doloribus dolorum suscipit laboriosam voluptas tenetur totam laudantium. Deleniti minus beatae itaque est. Doloribus aspernatur quisquam culpa est ab velit ut aperiam. Nihil incidunt aut corrupti est porro. Molestiae sed perspiciatis eum deleniti et. Cupiditate porro velit ea quia est. Aliquam tempora doloribus velit eaque. Sit eos ea laboriosam repellendus. Aperiam velit et non deserunt. Voluptate distinctio et veritatis deleniti explicabo. Eaque exercitationem dolorem incidunt sunt ratione accusamus debitis. Veritatis quibusdam laudantium doloremque voluptatem explicabo commodi amet ut. Quia tempora placeat amet et placeat. Itaque necessitatibus ut cupiditate ab. Velit est veniam maxime aliquam in dolor quidem. Saepe est perspiciatis sint nulla qui dolor animi voluptate. Ratione at voluptatibus eveniet sequi ea. Consequuntur quos earum officia. Amet dolore aperiam quisquam. Occaecati rem alias aliquid et voluptatibus sed.', 0, 'Zamira Purnawati', 'Gilda Farah Pertiwi', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(13, 7, 0, 'Quia Sed', 'quia-sed', 'https://picsum.photos/640/360?random=13', 'Animi id aspernatur praesentium modi hic modi est tempora. Itaque rerum et sit. Omnis dicta rerum veritatis qui vel eaque vel. Odit reprehenderit reiciendis aut libero dolorum deserunt.', 'Rem eaque id natus magni vitae sit est at. Qui tenetur cupiditate aliquam et ut deserunt dolorem cum. In expedita reiciendis deserunt molestiae. Doloremque voluptatem et vero eos dolores eum modi. Ea quis aut eos qui ut molestias et. Veritatis quia et ipsam distinctio. Voluptas non nihil eum beatae nobis quas quo. Eum doloremque quo commodi earum reprehenderit veritatis. Et nulla quidem in ea dolor. Velit quia asperiores recusandae quos quia nulla et. Et est sed nam eaque magnam ullam dolores. Ipsa fugit unde tenetur cumque aut. Et deserunt quidem repudiandae eum nobis. Sapiente sint sint ut laboriosam in. Debitis et dolorum repudiandae nesciunt quo sed provident numquam. Odit eum ea maiores. Fuga quis quam exercitationem. Et quos cumque laudantium accusamus omnis sint reprehenderit. Minus recusandae at dolorem consequatur omnis hic rerum. Et aliquid iste accusamus iste est rerum. Voluptas cum repudiandae repudiandae quasi laborum modi. Dolorem doloremque repudiandae ut recusandae quidem. Atque at voluptate excepturi. Et ex laborum maxime dolorem. Qui temporibus nulla natus aut itaque in. Inventore aliquam voluptatum et ipsa molestias sint. Aut earum sed asperiores fuga in. Aliquam soluta optio qui iste illum et quae. Ut quisquam a illum perferendis inventore ab. Veritatis et perspiciatis eum soluta aut ut error. Soluta enim numquam libero sint nam. Aperiam ab ratione totam. Earum in fuga rerum. Corrupti qui sit impedit soluta autem. Est illum sed vel neque nesciunt odio. Et enim ea rerum necessitatibus illum quasi est. Qui labore repellat modi nisi et minima. Repudiandae veniam unde sed nam. Quibusdam ea minus in voluptas accusamus saepe sint. Omnis alias delectus quas quia nisi culpa ab. Nesciunt eum quo quaerat in. Minima animi ad sint quam id. Explicabo ut distinctio ut voluptate necessitatibus. Asperiores facilis maxime qui eum repellendus voluptas sint. Exercitationem optio repellendus consequatur ea. Sit est nihil numquam.', 0, 'Kamila Farida', 'Fitriani Kusmawati', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(14, 6, 0, 'Itaque Iusto', 'itaque-iusto', 'https://picsum.photos/640/360?random=14', 'Neque non ratione molestiae accusamus et dolorem. Sed unde quia excepturi et id et dolorum. Nisi dignissimos repellat voluptatem aut.', 'Porro qui est cupiditate fugiat commodi voluptate nihil. Ut repellendus ipsum ea sit esse dignissimos excepturi. Sequi animi aut ut quia asperiores earum. Sint et distinctio eligendi ad ut. Adipisci voluptate neque enim et perferendis. Doloribus praesentium nulla dolorem sunt corrupti omnis quisquam. Cumque hic tenetur sit mollitia dolor impedit est quae. Ducimus dignissimos velit provident. Deserunt eligendi sint occaecati in et reprehenderit ad. Magnam excepturi et dicta molestias qui temporibus. Quaerat nobis a id ex. Et quaerat mollitia quo reprehenderit. Sit numquam repellendus in quis. Quis qui iste accusantium quia amet nihil quia. Fugiat quasi veniam laborum vel. Occaecati dolorem veniam ab assumenda reiciendis voluptates. Occaecati enim rerum vitae est in provident. Qui quia quod molestias ducimus eius laborum qui. Modi vel molestiae et natus sapiente exercitationem sequi atque. Voluptatibus dolores ducimus qui nobis ut perferendis autem. Reprehenderit inventore libero aperiam voluptatem voluptas. Aspernatur odio eligendi explicabo dolores et neque amet qui. Mollitia autem neque rerum odit quia laborum. Qui vel occaecati autem nulla enim deserunt dicta. Sunt asperiores necessitatibus adipisci recusandae dicta. Maxime fuga similique aliquid tempora maiores deserunt eum. Aperiam reprehenderit vel quam deserunt totam. Atque dolorem temporibus earum beatae illum ducimus in dolorem. Suscipit unde ratione debitis aut suscipit. Quis aut optio aspernatur et. Qui nobis possimus delectus expedita dicta ut aut. Dolor atque vitae suscipit voluptatem quaerat. Dicta vitae vel expedita. Et sint quibusdam sed nihil nam aliquam vero. Quia modi totam repudiandae animi nihil ut. Minima repellendus voluptatem natus laudantium alias. Eos dolores ex distinctio quos non consectetur. Quas aut necessitatibus ut eveniet. Error qui dolores accusantium voluptatem dignissimos expedita eveniet. At distinctio quia autem libero qui non dicta. Quam molestiae facere quam fugiat excepturi fugit sed. A error sunt aliquam nostrum dicta velit et. Aut sint sit ut pariatur corrupti ut itaque. Aut est vero quia reiciendis culpa rerum laboriosam repellat. Ad sed eveniet deleniti porro est eius dolorem. Omnis aut odio recusandae sequi. Aperiam expedita officia nostrum velit. Voluptas debitis iste ut quidem cum odio autem. Omnis qui recusandae recusandae omnis dolorum. Distinctio ipsum quia molestiae dolorem natus voluptas. Molestiae iste cumque quo id. Perferendis voluptates doloremque officiis.', 0, 'Yunita Utami', 'Melinda Puspita', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(15, 2, 0, 'Nostrum Et Quis', 'nostrum-et-quis', 'https://picsum.photos/640/360?random=15', 'Et doloribus quo distinctio et omnis. Ab sit animi ab itaque. Cum occaecati enim et consequatur.', 'Nesciunt perferendis esse voluptate necessitatibus rem. Dignissimos modi provident est. Accusamus labore maxime qui consectetur ea. Et aut aspernatur et voluptatem est nam. Maiores suscipit quis sit dolores ut voluptatem velit et. Consectetur vitae quidem quia id hic voluptatum. Maxime voluptatem nulla magnam dolores explicabo aut quisquam animi. Repellat veritatis eligendi reprehenderit id ut odit aliquam. Omnis velit rerum et. Et voluptatem quas molestiae qui. Amet dolor aut molestiae illo minima. Non repellendus a reiciendis nulla blanditiis dolorum. Odio eaque temporibus qui. Voluptatibus debitis quas vero voluptatem ea. Molestias et quis ex quam odit. Enim quia modi odit voluptates. Error dolores est ad sequi illo fugiat. Beatae exercitationem fugiat ipsam odit neque eligendi modi ut. Fuga nam omnis assumenda et enim reiciendis alias. Voluptatem beatae nostrum unde quos et. Consequatur similique aut repudiandae. Consequatur odit ratione ipsa et est quidem. Eligendi consectetur facilis nemo omnis tempore commodi. Dolores cumque atque est et maxime ratione delectus. Praesentium velit voluptatibus nisi qui nihil. Fuga quis odio qui labore consequatur quisquam. Minima enim nobis sunt. Nulla similique officia iusto earum. Autem tenetur architecto aperiam accusantium. Qui omnis non dolores accusamus. Nesciunt nisi totam et deleniti aliquid. Illo eos nemo molestias quia hic. Odit hic nisi est aperiam. Consectetur unde assumenda harum vero voluptate nesciunt. Eligendi ea dolor architecto omnis inventore. Eligendi quod minima harum. Vitae soluta laboriosam culpa rerum eveniet et. Dolore provident nam delectus recusandae quos. Totam occaecati velit vitae est. Nam iste fugit exercitationem magni veritatis dolorem quidem et. Autem et ad nostrum velit vero explicabo. Quas sit reprehenderit ratione distinctio consequatur eligendi similique. Saepe adipisci recusandae ipsa asperiores. Cumque qui quo dolorem ut. Occaecati eum et aperiam. Sunt et in laborum voluptas quam quia. Optio voluptatem deleniti voluptas ut. Libero sit excepturi eos minima ut aut et. Aut in quaerat aliquam et consequatur. Rerum commodi dicta unde animi temporibus vitae. Perferendis iste enim minus aut quo delectus. Nihil dicta in aliquam doloribus quia esse. Nam aut voluptates magni repellat.', 0, 'Melinda Hasna Padmasari', 'Tari Oktaviani M.Kom.', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(16, 5, 0, 'Magni Aut', 'magni-aut', 'https://picsum.photos/640/360?random=16', 'Voluptatem corporis omnis qui. Aliquid nihil numquam esse maiores.', 'Est culpa laborum dignissimos. Iusto incidunt tempore sapiente quis beatae dolorum illo. Ducimus unde dignissimos corrupti vitae blanditiis eaque. Aut atque sed sed quis ullam ratione. Sit incidunt corrupti et quo. Inventore sapiente harum quaerat et repudiandae. Odio temporibus nobis nulla iste enim repellat. Itaque aut qui voluptatem impedit harum eveniet. Non nihil sequi eos deleniti quaerat eum dolores. Pariatur modi ut voluptatem dolores. Placeat error deserunt numquam aspernatur accusantium voluptatibus sunt. Ducimus corrupti praesentium nam qui quia. Culpa veritatis quidem corporis ipsa rerum illum expedita. Sint voluptas hic consequatur et veritatis quas. Asperiores aut aut ut sint. Quisquam consequatur commodi natus consequatur. Laboriosam nihil animi alias rerum voluptate. Ad quo autem architecto autem vero. Eveniet nobis et eum ducimus vitae enim. Doloremque corporis eos consequuntur architecto. Hic dolorem ut facere. Amet aut hic consectetur veritatis. Aperiam error nihil laboriosam cumque in. Libero cumque est voluptas quo animi. Explicabo qui esse ipsam earum labore minima consequatur. Et ipsum asperiores asperiores quia repellendus. Libero sed facere repellendus vero. Qui est optio perferendis. Omnis maxime iure voluptatem hic maxime maxime. Veritatis eos et culpa nulla nihil est doloremque. Reiciendis pariatur sequi sed exercitationem eum maxime. Recusandae voluptas autem a est fuga explicabo laboriosam. Rerum pariatur rerum quas. Ex magnam consequatur quasi saepe. Quaerat autem natus aperiam et itaque voluptatibus sequi. Sit enim ut cumque voluptatibus dolor inventore. Reiciendis nulla quas ipsam praesentium omnis quos ut. Porro unde enim laboriosam officia. Magnam ut et voluptas est. Eveniet consectetur maxime fugit sequi. Accusamus provident officia porro nulla nemo voluptatem. Quasi eos quisquam ab omnis enim. Qui vitae quis occaecati vel ratione nam est. At odit voluptate iusto nesciunt enim vel ab. Est vel aut corrupti quasi sed accusantium natus. Iure et illum qui sit sapiente. Asperiores autem omnis culpa voluptas nobis. Porro cum iure ab itaque aut. Est totam ut vel quibusdam et beatae veniam. Minus et necessitatibus eum repellat omnis labore praesentium. Voluptatibus distinctio veritatis veniam odio doloribus ipsa ullam. Ut molestiae est numquam maiores omnis non fugit. Rerum rem temporibus ad dignissimos unde harum. Adipisci nesciunt optio sunt voluptas temporibus.', 0, 'Lanjar Sitompul', 'Prabu Thamrin', '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(17, 10, 0, 'Voluptas Qui Voluptatem Velit', 'voluptas-qui-voluptatem-velit', 'https://picsum.photos/640/360?random=17', 'Cumque rerum reiciendis aut perferendis. Dolorem voluptatem dolores et. Aut nulla nesciunt magnam in rerum ullam ex. Neque quae delectus cupiditate nihil.', 'Earum at officia placeat est ex voluptates. Eum tenetur repudiandae quaerat ad qui enim quia. Provident ut ipsam ut sequi consequuntur nulla. Laborum excepturi excepturi aut error. Fugit consequatur reprehenderit repellendus perspiciatis in eaque velit et. Magni sed beatae autem porro reiciendis ea. Aspernatur amet voluptatem autem eos. Blanditiis et quas nam error voluptatem numquam. Temporibus ducimus velit qui animi. Ut accusantium vel omnis consectetur quisquam optio. Animi cupiditate repellat repudiandae totam. Perspiciatis enim qui ducimus quia nihil aut. Et quae necessitatibus qui odio sit consectetur. Aut sed consequuntur impedit alias. Occaecati at minus id aliquam consequuntur iste enim. Vitae necessitatibus perferendis iste voluptas eum aut provident. At aut adipisci pariatur rem et voluptatem. Nihil dolor saepe nemo dolor aliquam illo adipisci dolores. Libero doloremque odit maiores maxime illo. Accusantium dolore quis corporis quis amet eius fugit. Maxime possimus at et tempore quod et. Velit qui facere delectus nobis. Quo sint qui quia dolorem. Dolorem dolor nemo adipisci. Pariatur cupiditate vero qui quia. Aspernatur sed sit unde nulla. Optio molestias exercitationem et maiores blanditiis quas. Quae dolorem cum repudiandae sint minima. Ut amet ad rerum aliquid sapiente ut autem. Omnis non molestiae iure. Iure quae quis placeat voluptatum sit molestiae. Architecto doloribus iusto nemo repudiandae voluptas alias. Doloremque sed omnis aliquid eligendi. Est magnam perferendis incidunt quisquam. Iure impedit expedita natus quia quia exercitationem est. Tempore similique quia fugiat aut. Iusto accusantium eius rerum consequatur. Voluptatem soluta vel consequatur. Reprehenderit excepturi possimus in quasi. Et asperiores id illum sed sint quaerat illum. Voluptatem eum modi explicabo dolore rem laboriosam. Temporibus voluptates occaecati est. Voluptatum iusto sint odit itaque ut iusto qui. Blanditiis similique eum hic est. Nostrum veritatis ullam in vel dolores architecto laboriosam unde. Labore soluta non explicabo commodi non. In ratione dignissimos doloribus consectetur sit minima. Corporis ut iure et nobis harum. Fugit quo repellendus modi. Praesentium repellat aut deserunt repellat. Nulla corrupti nostrum voluptates culpa. Aliquam tempora possimus iure minus ab eum vel. Perferendis dicta culpa architecto aut qui molestiae rem occaecati. Ut sapiente dolore eum. Aut tenetur ipsam quod et. Possimus molestiae excepturi cumque in consequatur.', 0, 'Kamila Halimah', 'Elisa Mandasari', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(18, 2, 0, 'Dolorum Non', 'dolorum-non', 'https://picsum.photos/640/360?random=18', 'Id amet sed ex pariatur dolor. Amet est corporis at expedita ipsam. Eum deleniti asperiores ea dolor totam sequi.', 'Autem libero quis dicta perspiciatis. Voluptas earum qui in ratione non sint voluptatem. Beatae rerum tempore rerum quisquam incidunt. Sit et aut temporibus. Sint dolor consequatur recusandae accusantium fuga ab. Ut quae ut dolorem aut. Cumque laboriosam animi officiis beatae qui adipisci est cupiditate. Voluptatum amet mollitia aut enim minima est. Quo et dolorum unde qui inventore id. Officia minima illum adipisci aut. Veniam sit in voluptas molestias dolorum reprehenderit libero. Officia a repudiandae voluptates numquam facilis quo. Deleniti et expedita ipsum facilis. Expedita atque esse et eligendi voluptatem ducimus eum maiores. Sed dolores beatae provident sed. Natus velit ut nostrum rerum ipsum assumenda ipsa. Aliquid consequuntur et dicta eveniet deleniti velit dolore delectus. Nostrum sed dolor dolorum magnam ut libero. Ut porro iure aperiam omnis aliquid est. Maxime sint quaerat rerum quia et unde voluptatibus deleniti. Iure et qui labore illo aut omnis quasi. Ducimus repellendus maiores rerum dolores dolor. Iste repellat architecto velit delectus voluptatum alias expedita. Rem rerum quis voluptate dignissimos. Voluptatem ex sit debitis aut. Quo accusamus voluptas earum recusandae fugiat quasi placeat. Aperiam deserunt eum maiores. Cupiditate odio quia modi veritatis impedit. Necessitatibus quidem magni dolorum quas eius autem minima.', 0, 'Lantar Sinaga S.E.', 'Maya Pratiwi', '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(19, 10, 0, 'Omnis Quas Neque Blanditiis', 'omnis-quas-neque-blanditiis', 'https://picsum.photos/640/360?random=19', 'Ipsam quas ut illum voluptatum quam voluptatem est. Et odit harum iste explicabo. Est qui quisquam adipisci dolorem est sed.', 'Consectetur vel recusandae qui. Reiciendis ea quaerat molestiae recusandae perspiciatis ut aliquid culpa. Voluptatem vel vero accusantium deleniti. Dolore modi iusto provident repudiandae eum hic quo iste. Provident dolorem mollitia nihil fugiat sunt ratione. Qui sed repudiandae et eaque veritatis adipisci. Et consequatur quisquam praesentium quis est soluta. Amet quis odio quia sint eum non officiis. Pariatur quisquam qui omnis quidem quo quo. Optio in praesentium reprehenderit odit. Ad non molestiae quam unde dolorem. Fugit neque quam aut nesciunt itaque culpa quam. Saepe voluptas nulla impedit amet quaerat ut eligendi commodi. Repellendus tempora repudiandae fugit accusantium. Ex non similique deleniti saepe. Corporis eum eum ea in est consequuntur sunt. Omnis qui ipsa quis amet aliquam sequi explicabo. Aut quia similique iusto aut. Qui qui voluptatum quia saepe animi accusamus cumque quis. Magni qui vel ea reprehenderit dolorem omnis consequatur. Vel cupiditate in itaque voluptatem est rerum occaecati quo. Aut aut esse exercitationem dolorem quo labore dolorum. Pariatur ad nesciunt dicta nihil voluptas magnam. Maiores aspernatur beatae numquam eaque dolorem. Neque sit distinctio aut sit praesentium. Ut nostrum eum quia odit repellat qui. Animi ea aliquid architecto et. Magni illum porro facilis labore ab omnis possimus. Temporibus veniam eos perferendis inventore vel amet. Labore quas et reiciendis modi veniam eveniet. Neque aut quae magni nesciunt rem illum ipsa. Deserunt corrupti voluptas autem ut sunt perspiciatis. Tenetur molestias quia ullam iste cumque. Quam voluptates laudantium qui. Praesentium et soluta suscipit amet quaerat et reprehenderit. Provident doloremque eum repellat iure tenetur. Fugiat quia cupiditate occaecati. Explicabo aut corrupti voluptatem quas voluptatem omnis. Ut velit quisquam officia natus iure natus. Sapiente maiores ipsam autem laboriosam nisi hic. Et qui beatae magni molestiae labore. Et eos maiores sequi deleniti dicta. Eligendi aut dolorem perferendis quaerat vel. Voluptatem cupiditate voluptatem nostrum tenetur aliquid mollitia numquam. Cumque sed ducimus distinctio explicabo. Ipsam enim omnis molestiae modi unde explicabo rerum. Eum mollitia vel qui aut. Dicta eum aut ullam unde. Aut illum repellat dolorem dolorem quisquam rerum. Enim eius molestias nihil in nihil. Iure ut impedit ex est dolor. Blanditiis totam eos consequatur distinctio. Aliquid minima qui occaecati alias dolorum.', 0, 'Taufan Cawisono Pradana S.Psi', 'Praba Damanik', '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(20, 10, 0, 'Qui Sit Autem Ullam', 'qui-sit-autem-ullam', 'https://picsum.photos/640/360?random=20', 'Voluptatem nisi ipsa ullam dolorem accusamus ut. Quam veniam tempora amet. Quia blanditiis ea placeat. Eius aut rerum ab odio est sapiente. Facilis sapiente aut voluptatem qui a commodi.', 'Quis deserunt ut praesentium ab id corporis alias qui. Omnis consequatur quae et iure in et odio. Earum qui unde molestias aut. Ut voluptatibus molestiae sunt animi odit recusandae esse. Est mollitia sit voluptas aut voluptates perferendis. Nostrum libero autem minus voluptas cumque expedita. Et labore amet fugiat consequatur iste. Est qui distinctio debitis. Quo eum nesciunt velit. Et sit iusto aut consequuntur quia laborum perspiciatis quia. Illo cum qui soluta dolorem corrupti. Quasi enim tempore maxime. Dolor est aut alias voluptate. Non suscipit nemo magnam sed odio reiciendis et. Nemo ex rerum deleniti et recusandae. Maiores velit iusto est autem. Qui quasi omnis dolores incidunt reiciendis ad. Et sint sit aut repellat illo dolores. Ea quae laborum eos quis. Porro aut impedit aliquid mollitia sed. Nobis quia at tempora inventore beatae totam quia. In aperiam dolores nihil magni.', 0, 'Jaka Wacana', 'Cemeti Daryani Tarihoran S.H.', '2023-07-26 01:01:07', '2023-07-26 01:01:07');

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
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favorited` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2013_06_10_222624_create_themes_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_21_114406_create_categories_table', 1),
(7, '2023_03_21_160118_create_courses_table', 1),
(8, '2023_04_25_095013_create_quizzes_table', 1),
(9, '2023_05_21_184642_create_favorites_table', 1),
(10, '2023_05_23_131602_create_activities_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Struktur dari tabel `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Published','Draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `time_limit` bigint(20) DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edited_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quizzes`
--

INSERT INTO `quizzes` (`id`, `course_id`, `name`, `status`, `time_limit`, `added_by`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Et Atque Eaque', 'Published', 1213, 'Viktor Santoso', 'Ophelia Mayasari', '2023-07-26 01:00:09', '2023-07-26 01:00:09'),
(2, 2, 'Dolores Non Ad', 'Published', 1333, 'Joko Megantara', 'Ajeng Sari Puspita S.Pd', '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(3, 3, 'Tempore Id Quis', 'Published', 1298, 'Adiarja Situmorang', 'Jarwadi Eman Setiawan', '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(4, 4, 'Laboriosam Quasi Eum Asperiores', 'Published', 1357, 'Jati Wijaya', 'Lalita Hartati', '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(5, 5, 'Sint Tempora', 'Published', 1942, 'Cakrawangsa Napitupulu M.M.', 'Mala Pertiwi', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(6, 6, 'Vel Molestias Voluptas Ea', 'Published', 1317, 'Hari Gunarto S.Psi', 'Paramita Zaenab Mayasari M.Pd', '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(7, 7, 'Vitae Hic', 'Published', 1486, 'Galih Karta Putra', 'Samiah Kuswandari S.IP', '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(8, 8, 'Officiis Soluta', 'Published', 1725, 'Emas Wibisono', 'Mahfud Siregar', '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(9, 9, 'Odit Et', 'Published', 1795, 'Radit Karma Sitompul S.T.', 'Prabawa Hakim S.Pd', '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(10, 10, 'Nihil Corporis Dolor Doloribus', 'Published', 1414, 'Ifa Wijayanti', 'Chelsea Oktaviani', '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(11, 11, 'Consequatur Aut Et Veniam', 'Published', 1531, 'Aurora Hartati', 'Balangga Sihombing', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(12, 12, 'Ipsam Aliquam Eveniet Consequatur', 'Published', 1558, 'Humaira Michelle Farida', 'Irma Sudiati', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(13, 13, 'Quia Sed', 'Published', 1945, 'Zamira Ika Purwanti', 'Mala Vivi Yolanda', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(14, 14, 'Itaque Iusto', 'Published', 1959, 'Suci Ratih Mayasari', 'Karimah Mayasari', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(15, 15, 'Nostrum Et Quis', 'Published', 1512, 'Febi Yulianti', 'Darijan Prakasa', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(16, 16, 'Magni Aut', 'Published', 1281, 'Tina Riyanti S.E.', 'Dinda Puspita M.M.', '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(17, 17, 'Voluptas Qui Voluptatem Velit', 'Published', 1414, 'Bakianto Narpati S.Pd', 'Vinsen Nalar Halim M.Pd', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(18, 18, 'Dolorum Non', 'Published', 1271, 'Dalimin Salahudin', 'Gading Daliono Anggriawan M.Pd', '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(19, 19, 'Omnis Quas Neque Blanditiis', 'Published', 1756, 'Tasdik Siregar', 'Eluh Luluh Anggriawan S.Gz', '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(20, 20, 'Qui Sit Autem Ullam', 'Published', 1818, 'Carub Balapati Saputra S.T.', 'Rahmi Hasna Aryani', '2023-07-26 01:01:07', '2023-07-26 01:01:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `quiz_question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sunt nihil quia minus fuga aut.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(2, 1, 'Aliquid laborum vitae accusamus tempora.', 1, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(3, 1, 'Eos rerum voluptas molestiae.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(4, 1, 'In laboriosam placeat quia eveniet possimus.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(5, 2, 'Eum quia deleniti ab voluptas at tenetur eum in.', 1, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(6, 2, 'Dolorem veniam facere sunt reiciendis animi quod.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(7, 2, 'Sunt aliquam non officiis minus explicabo.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(8, 2, 'Eveniet nesciunt quae at voluptatibus.', 0, '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(9, 3, 'Quisquam saepe ullam omnis ea id enim quisquam.', 1, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(10, 3, 'Quibusdam et et enim aspernatur aut rerum.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(11, 3, 'Repellat natus animi eum dolores.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(12, 3, 'Est laborum a placeat perferendis.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(13, 4, 'Neque dolor sit consequuntur enim et labore.', 1, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(14, 4, 'Nihil rerum modi qui optio.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(15, 4, 'Illum et sunt neque inventore.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(16, 4, 'Sed eos harum illo aut necessitatibus.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(17, 5, 'Praesentium aut harum illum non omnis explicabo.', 1, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(18, 5, 'Vero aut quis rerum iure.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(19, 5, 'Dolor esse facilis maiores et qui voluptates vel.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(20, 5, 'Officiis voluptatibus dignissimos et voluptas.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(21, 6, 'Dolorem commodi nulla tempora rem molestiae sunt.', 1, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(22, 6, 'Qui iure corrupti fugit et sed.', 0, '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(23, 6, 'Itaque quaerat est asperiores incidunt.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(24, 6, 'Perferendis ad voluptas quasi impedit.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(25, 7, 'Dolorem qui iure vel reiciendis.', 1, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(26, 7, 'Ut aut est totam eum dolore non odit.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(27, 7, 'Rerum ea dolore ut vitae et nihil.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(28, 7, 'Laudantium voluptatibus sequi enim fugiat.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(29, 8, 'Unde quae odit sed magni.', 1, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(30, 8, 'Non dicta qui et quas enim tempora.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(31, 8, 'Veritatis et nisi totam ipsa voluptatem.', 0, '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(32, 8, 'Porro deserunt voluptatibus est itaque saepe aut.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(33, 9, 'Sed reprehenderit aut nesciunt eveniet dolor.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(34, 9, 'Eligendi fuga nam modi est.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(35, 9, 'Est nemo tempore enim placeat deleniti quo.', 1, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(36, 9, 'Assumenda error dolore omnis facere quidem.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(37, 10, 'Asperiores quis et sunt autem deserunt at.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(38, 10, 'Rem ratione autem maiores porro aspernatur dolor.', 1, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(39, 10, 'Voluptate laboriosam est odio dicta qui.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(40, 10, 'Dolores corrupti ut veniam et aut recusandae sit.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(41, 11, 'Non nulla distinctio labore ut.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(42, 11, 'Cupiditate aut dolorem rerum aut vel.', 0, '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(43, 11, 'Quae temporibus qui enim dolorem.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(44, 11, 'Explicabo omnis accusantium quia et nemo.', 1, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(45, 12, 'Fuga ut voluptatibus ut blanditiis sed.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(46, 12, 'Maxime veniam tempora voluptatibus autem harum.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(47, 12, 'Eius harum est laborum dolorum deleniti.', 1, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(48, 12, 'Ut nobis similique eum id.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(49, 13, 'Recusandae dolores ullam non aliquam pariatur.', 1, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(50, 13, 'Nostrum aut quia qui sunt sit officia ut.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(51, 13, 'Laudantium ab dolores voluptatem eaque ullam.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(52, 13, 'Et et molestiae suscipit nulla.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(53, 14, 'Qui qui id eius omnis adipisci doloremque esse.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(54, 14, 'Corrupti autem aliquam pariatur et.', 1, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(55, 14, 'Voluptates temporibus vel quis et.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(56, 14, 'Voluptatum ipsum aut aut officia beatae.', 0, '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(57, 15, 'Ratione omnis eum illo quaerat magnam voluptatem.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(58, 15, 'Nihil placeat sunt animi ipsa.', 1, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(59, 15, 'Est placeat culpa aut veniam rem.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(60, 15, 'Accusamus assumenda cum facere earum repellendus.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(61, 16, 'Tempora tempore quo fuga iusto dolores.', 1, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(62, 16, 'Est quod sit ipsum recusandae velit.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(63, 16, 'Fugiat sunt quia eum culpa.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(64, 16, 'Dolores cum reprehenderit dolore ducimus qui.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(65, 17, 'Voluptatibus illum reprehenderit aut minus.', 1, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(66, 17, 'Similique voluptatibus vel sint.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(67, 17, 'Magnam et neque excepturi facilis magni ipsa et.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(68, 17, 'Earum et voluptatem repellat est aut alias.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(69, 18, 'Aliquam natus ut aliquam error.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(70, 18, 'Consequatur sit laborum aut.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(71, 18, 'Sit quis ex totam rerum.', 1, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(72, 18, 'Qui quo facere modi quo.', 0, '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(73, 19, 'Harum velit velit repudiandae reiciendis.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(74, 19, 'Minus ut porro qui cupiditate quia sint et.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(75, 19, 'Velit rerum qui cum eaque repellendus.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(76, 19, 'Neque qui cumque ipsum cum in inventore impedit.', 1, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(77, 20, 'Occaecati molestiae ducimus odio.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(78, 20, 'Nihil consequuntur sed repellendus deleniti id.', 1, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(79, 20, 'Voluptas consequatur voluptates quis amet quidem.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(80, 20, 'Eum ad laborum voluptatum excepturi consequuntur.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(81, 21, 'Aut laborum eligendi quia.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(82, 21, 'Eum fuga doloremque quidem dolor et.', 0, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(83, 21, 'Consequatur repellat eum ut qui.', 1, '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(84, 21, 'Modi aut a est quasi ipsam.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(85, 22, 'Veniam veritatis voluptas sint est.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(86, 22, 'Aut perferendis et omnis corrupti ducimus.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(87, 22, 'Quis ea esse dicta dicta.', 1, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(88, 22, 'Hic alias unde aliquid ratione.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(89, 23, 'Assumenda ut vero eum dolor quia.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(90, 23, 'Qui nihil vero nesciunt est.', 1, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(91, 23, 'Ut magnam quis maxime ut.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(92, 23, 'Dolor quibusdam molestias labore aliquam et.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(93, 24, 'Blanditiis similique eius reiciendis.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(94, 24, 'Saepe cupiditate et aliquam inventore.', 1, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(95, 24, 'Maxime eaque aperiam ea vel excepturi voluptates.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(96, 24, 'Ea possimus porro sit qui assumenda eius dolor.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(97, 25, 'Saepe est voluptatem minima aliquam est.', 1, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(98, 25, 'Natus fugit fugit quas non et rem.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(99, 25, 'Iure odit sit est.', 0, '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(100, 25, 'Sunt eum est tempora voluptas in vel.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(101, 26, 'Placeat voluptas nisi et et reprehenderit.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(102, 26, 'Eum culpa aperiam quibusdam voluptates fuga.', 1, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(103, 26, 'Ratione minus praesentium sit quo in.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(104, 26, 'Voluptatem et necessitatibus at.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(105, 27, 'Assumenda nemo fugit suscipit id optio.', 1, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(106, 27, 'Aliquam voluptates quos consectetur possimus.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(107, 27, 'Debitis autem laborum hic est.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(108, 27, 'Sapiente provident reiciendis qui exercitationem.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(109, 28, 'Commodi nesciunt maiores est odit et labore et.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(110, 28, 'Sapiente in doloremque odio.', 1, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(111, 28, 'Corrupti numquam sint et et itaque.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(112, 28, 'Sit rem recusandae aut optio.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(113, 29, 'Aperiam ea ab doloribus ullam voluptas.', 1, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(114, 29, 'Dolorem aut recusandae odit qui enim nam.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(115, 29, 'Provident minus consequatur quia illum.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(116, 29, 'Numquam ut eum cumque et nesciunt ducimus.', 0, '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(117, 30, 'Autem sed est qui quis rerum.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(118, 30, 'Veniam nulla consequatur sequi est atque.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(119, 30, 'Odio nobis dicta atque eos possimus pariatur.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(120, 30, 'Maiores qui cupiditate omnis aspernatur rerum.', 1, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(121, 31, 'Odio expedita dignissimos et ut.', 1, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(122, 31, 'Ea suscipit ut qui omnis eum cumque.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(123, 31, 'Ut nisi est soluta amet eos voluptatum.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(124, 31, 'Voluptate deserunt enim sed sed veritatis.', 0, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(125, 32, 'Vero dignissimos eligendi ipsa repellendus.', 1, '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(126, 32, 'Rem consequatur ab itaque dolorem voluptas.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(127, 32, 'Enim rerum est et voluptatem eum.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(128, 32, 'Numquam quod ut ipsa ullam numquam et.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(129, 33, 'Qui ex eum assumenda velit.', 1, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(130, 33, 'Et quasi voluptatem aut nostrum eveniet.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(131, 33, 'Cupiditate delectus tempore voluptatibus nihil.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(132, 33, 'Ipsam soluta veritatis ut.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(133, 34, 'Tempore omnis qui molestias iure.', 1, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(134, 34, 'Odio est beatae est ducimus id.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(135, 34, 'Veniam earum id veritatis reiciendis.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(136, 34, 'Est ut vel deleniti consequatur eius.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(137, 35, 'Est nesciunt animi deserunt excepturi.', 1, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(138, 35, 'Neque esse saepe repellendus omnis veniam aut.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(139, 35, 'Esse dolores repudiandae assumenda a.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(140, 35, 'Sapiente dicta repudiandae tempora.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(141, 36, 'Eveniet deserunt dicta aperiam voluptatum minima.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(142, 36, 'Repellendus sunt asperiores sunt.', 1, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(143, 36, 'Doloremque quidem expedita possimus sit.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(144, 36, 'Aliquid ipsum deleniti fugit accusamus.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(145, 37, 'Nemo ex nisi veritatis soluta enim dolores sunt.', 0, '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(146, 37, 'Distinctio doloremque provident doloremque sunt.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(147, 37, 'Harum labore omnis debitis beatae laudantium vel.', 1, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(148, 37, 'Asperiores eius error architecto magnam qui esse.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(149, 38, 'Ut necessitatibus expedita qui dolorem.', 1, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(150, 38, 'Ea ullam placeat ducimus vel cum harum.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(151, 38, 'Amet distinctio cupiditate et est.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(152, 38, 'Soluta aut expedita est tempore suscipit.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(153, 39, 'Quia enim odio possimus odio eum ab quod.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(154, 39, 'Excepturi maiores ad cum velit quo voluptas.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(155, 39, 'Labore ut reprehenderit expedita aut molestias.', 1, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(156, 39, 'Voluptates eos quia dolores et accusantium et.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(157, 40, 'Quo aspernatur atque voluptatem.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(158, 40, 'Nihil pariatur repellat voluptatem.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(159, 40, 'Magni eveniet perspiciatis sequi.', 0, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(160, 40, 'Doloribus quo alias possimus in.', 1, '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(161, 41, 'Ratione non doloribus in aperiam.', 1, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(162, 41, 'Autem qui aliquid quidem ducimus.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(163, 41, 'Nesciunt iure aut est magni fugiat consequatur.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(164, 41, 'Est excepturi quia officiis voluptas rerum sint.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(165, 42, 'Minus rerum unde nesciunt ex.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(166, 42, 'Sed rerum dolor provident.', 1, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(167, 42, 'Quia repellendus et eveniet et rem.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(168, 42, 'Corporis consequatur iure velit et voluptatem.', 0, '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(169, 43, 'Est deserunt ratione ut non quo totam ut.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(170, 43, 'Maxime minus sint quaerat fuga sint quia.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(171, 43, 'Sequi mollitia inventore minus nulla natus porro.', 1, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(172, 43, 'Aut voluptatem quo itaque cum.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(173, 44, 'A fugiat dolore fuga iste et.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(174, 44, 'Rem similique et sed cumque nobis ut.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(175, 44, 'Nihil cupiditate eum omnis vel et in.', 1, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(176, 44, 'Eum itaque quo ut.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(177, 45, 'Beatae quis ratione ipsa ut sed.', 1, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(178, 45, 'Animi et modi porro consequatur.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(179, 45, 'Alias quia quisquam error dolorem inventore.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(180, 45, 'Architecto quisquam id esse et similique est id.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(181, 46, 'Et ipsam praesentium quidem enim dolor.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(182, 46, 'Quidem reiciendis impedit a.', 1, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(183, 46, 'Eum explicabo ut magni ut totam sunt et.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(184, 46, 'Ut tenetur maxime assumenda et.', 0, '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(185, 47, 'Vel ad sed et molestias.', 1, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(186, 47, 'Dolorem maxime facilis molestiae.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(187, 47, 'Et fugiat sapiente dolore esse magni laborum.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(188, 47, 'Commodi nobis tempora ut.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(189, 48, 'Et numquam dolor non nihil.', 1, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(190, 48, 'Libero natus atque autem fuga.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(191, 48, 'Porro sint sunt quasi autem deleniti omnis.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(192, 48, 'Autem eligendi rerum saepe molestias.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(193, 49, 'Qui quod quae quos porro et eum saepe illo.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(194, 49, 'Nulla a rerum ut quibusdam deleniti.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(195, 49, 'Commodi in omnis illo quisquam.', 1, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(196, 49, 'Tempore ratione tempora nemo ea amet sed.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(197, 50, 'Ipsum aspernatur nobis autem vitae.', 1, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(198, 50, 'Iure quod in quos.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(199, 50, 'Et molestiae qui quis voluptates natus qui.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(200, 50, 'Sint quo sit exercitationem ullam.', 0, '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(201, 51, 'Voluptatum velit sunt ab.', 1, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(202, 51, 'Pariatur earum occaecati rem.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(203, 51, 'Voluptate velit quidem est vel veritatis alias.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(204, 51, 'Labore perspiciatis omnis veniam sapiente eos.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(205, 52, 'Similique cupiditate dolore eum perferendis.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(206, 52, 'Odio voluptas in vel neque.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(207, 52, 'Aut porro impedit quae animi nihil reprehenderit.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(208, 52, 'Rerum ab facere et sit nesciunt enim.', 1, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(209, 53, 'Soluta ipsum adipisci natus quo.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(210, 53, 'Enim et eveniet eius nulla et.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(211, 53, 'Soluta ex incidunt rerum.', 1, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(212, 53, 'Esse aperiam ad fugiat est iusto vero ea.', 0, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(213, 54, 'Et veniam sit sapiente.', 1, '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(214, 54, 'Illo officiis ratione debitis fugit.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(215, 54, 'Quidem placeat quisquam voluptatem non quaerat.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(216, 54, 'Accusamus corporis et adipisci velit.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(217, 55, 'Aliquid natus est qui quia veniam quia.', 1, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(218, 55, 'Autem deleniti dicta nulla vel voluptatem et qui.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(219, 55, 'Odio eius omnis est.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(220, 55, 'Libero ea et omnis voluptatem.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(221, 56, 'Sed omnis quibusdam eos.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(222, 56, 'Distinctio dolore quod quis iure.', 1, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(223, 56, 'Sit quisquam ad odio totam.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(224, 56, 'Quia qui et rerum magni vel magni.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(225, 57, 'Velit incidunt possimus molestias.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(226, 57, 'Unde itaque nihil fugit voluptas nemo.', 0, '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(227, 57, 'Voluptas aut voluptas deserunt hic.', 1, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(228, 57, 'Tenetur ipsam enim quis vel ab.', 0, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(229, 58, 'Id vel nostrum suscipit.', 0, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(230, 58, 'Quo qui asperiores quia velit.', 1, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(231, 58, 'Delectus illo qui sit nisi doloribus.', 0, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(232, 58, 'Et officia dolor ratione.', 0, '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(233, 59, 'Debitis incidunt est et quidem ea non.', 1, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(234, 59, 'Vel ut occaecati ipsum iste similique.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(235, 59, 'Ut distinctio omnis laboriosam qui rerum.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(236, 59, 'Enim maiores architecto doloremque sit.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(237, 60, 'Qui ratione sed at dolorem.', 1, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(238, 60, 'Laborum architecto et placeat alias culpa sint.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(239, 60, 'Voluptas qui quisquam ad error dignissimos.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(240, 60, 'Itaque ipsa molestiae nisi quis eaque error.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(241, 61, 'Cupiditate nobis est nulla nihil error.', 0, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(242, 61, 'Sit enim est quo numquam eum in.', 1, '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(243, 61, 'In corrupti non suscipit eum enim commodi.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(244, 61, 'Quos voluptatibus et et inventore.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(245, 62, 'Et placeat ipsum vel ea perferendis.', 1, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(246, 62, 'Voluptatem omnis enim ullam qui.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(247, 62, 'Eos et id cupiditate impedit.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(248, 62, 'Qui sit dolorem magnam culpa fugiat sed sequi.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(249, 63, 'Iure aut autem et cumque dolor.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(250, 63, 'Eum ut provident quo est aut eaque laboriosam.', 1, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(251, 63, 'Occaecati eligendi labore velit debitis ea.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(252, 63, 'Ut eaque ipsam culpa laudantium.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(253, 64, 'Vero in est vel enim asperiores numquam.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(254, 64, 'Quam et aut quo aperiam id facere.', 1, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(255, 64, 'Est nemo nisi possimus.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(256, 64, 'Illo ut et est qui omnis amet laborum.', 0, '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(257, 65, 'Voluptatibus vel libero magnam.', 1, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(258, 65, 'Libero rerum excepturi quisquam nulla.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(259, 65, 'Consequatur perferendis dolorum quia.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(260, 65, 'Quibusdam suscipit voluptas ut illo.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(261, 66, 'Impedit pariatur et odio autem dolor aut.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(262, 66, 'Sunt temporibus error provident et nihil.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(263, 66, 'Est est aspernatur excepturi.', 1, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(264, 66, 'Nam quo ut quo et nihil debitis fugiat.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(265, 67, 'Occaecati quisquam nulla est culpa quis maxime.', 0, '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(266, 67, 'Sint et officia vel sit odio ut.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(267, 67, 'Sint culpa quia qui non.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(268, 67, 'Nisi corporis soluta est rem.', 1, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(269, 68, 'Eaque est illo ut praesentium et dolor.', 1, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(270, 68, 'Dolore aut est illo.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(271, 68, 'Minima hic eum qui commodi quia dolorum sint.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(272, 68, 'Delectus quis et quia ipsum qui eos.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(273, 69, 'Facilis aspernatur qui quod quo.', 1, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(274, 69, 'Tenetur eius aspernatur nulla sequi placeat.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(275, 69, 'Esse voluptatem occaecati modi sit autem.', 0, '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(276, 69, 'Animi at pariatur sequi animi.', 0, '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(277, 70, 'Amet rerum iure atque.', 1, '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(278, 70, 'Amet voluptas suscipit numquam praesentium sequi.', 0, '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(279, 70, 'Velit sunt quidem quaerat accusamus.', 0, '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(280, 70, 'Dolor soluta quis quisquam qui debitis.', 0, '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(281, 71, 'Non enim nesciunt id voluptate illo.', 1, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(282, 71, 'Maiores velit omnis sint et.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(283, 71, 'Eius quod ducimus sunt placeat.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(284, 71, 'Suscipit necessitatibus consequuntur aperiam.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(285, 72, 'Cumque excepturi eos error placeat numquam eos.', 1, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(286, 72, 'Aliquam distinctio id ea molestiae ea.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(287, 72, 'Impedit amet ut perspiciatis est quis.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(288, 72, 'Assumenda aut alias aut nihil.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(289, 73, 'Ex dolorem aut doloribus.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(290, 73, 'Odit qui non tempore molestiae.', 1, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(291, 73, 'Magnam quia sit provident ut.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(292, 73, 'Quasi et adipisci tempora quaerat vel.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(293, 74, 'Porro ab ad voluptates aperiam sunt.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(294, 74, 'Laborum quis dicta culpa.', 0, '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(295, 74, 'Autem labore quaerat esse et in consequatur.', 1, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(296, 74, 'Dolorem expedita harum ut eius.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(297, 75, 'Cupiditate minus quia ut.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(298, 75, 'Eligendi voluptas et minus rerum.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(299, 75, 'Harum vitae quasi et eum.', 1, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(300, 75, 'Consectetur repudiandae et eum est suscipit quia.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(301, 76, 'Minima eum accusantium accusantium repudiandae.', 1, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(302, 76, 'Nostrum qui nobis dolores debitis ab error.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(303, 76, 'Velit tempore sed minima unde aut.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(304, 76, 'Ullam et dolores vero odit praesentium hic.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(305, 77, 'Soluta et qui natus excepturi sapiente eligendi.', 1, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(306, 77, 'Ipsum iusto eos ut ea.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(307, 77, 'Vel fugiat dolores error vel dolores.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(308, 77, 'Non est ea voluptates ad dolore asperiores iste.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(309, 78, 'Blanditiis voluptas quo qui ut veritatis.', 1, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(310, 78, 'Excepturi praesentium eligendi est aut.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(311, 78, 'Quis consequatur quo aperiam quas.', 0, '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(312, 78, 'Rerum quia et rerum ut explicabo.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(313, 79, 'Magni totam doloremque soluta quis velit et.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(314, 79, 'Suscipit dolorem exercitationem assumenda.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(315, 79, 'Rerum officia commodi nesciunt hic est.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(316, 79, 'Delectus quibusdam ullam quam debitis doloribus.', 1, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(317, 80, 'Rerum quasi dolorem maxime.', 1, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(318, 80, 'Nisi ut beatae eos ullam.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(319, 80, 'Id explicabo omnis amet est neque.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(320, 80, 'Dolore similique aut et ad fuga tenetur.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(321, 81, 'Expedita velit itaque vero saepe.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(322, 81, 'Ea iste aut officia ut laudantium soluta qui.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(323, 81, 'Non et animi corrupti est quam aspernatur.', 0, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(324, 81, 'Sapiente labore quod omnis nisi dolorum tempore.', 1, '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(325, 82, 'Laudantium deserunt praesentium ut nostrum.', 1, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(326, 82, 'Minima sunt dolor eos ut nemo sunt.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(327, 82, 'Necessitatibus dolore voluptas minima adipisci.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(328, 82, 'Ut ut architecto qui nihil.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(329, 83, 'Hic est delectus qui laudantium explicabo.', 1, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(330, 83, 'Ab modi maxime voluptas quia quo et.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(331, 83, 'Aut aut est harum assumenda.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(332, 83, 'Placeat labore distinctio nostrum nesciunt.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(333, 84, 'Voluptas aliquid culpa veritatis harum ut et.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(334, 84, 'Incidunt quis natus rerum ea cum.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(335, 84, 'Labore est modi iste.', 1, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(336, 84, 'Et omnis in consequatur.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(337, 85, 'Ut expedita ullam animi aut.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(338, 85, 'Ut eaque assumenda iure pariatur.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(339, 85, 'Quia omnis dolorem vitae laborum tempore.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(340, 85, 'At perferendis porro dolorem excepturi est.', 1, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(341, 86, 'Est autem eaque est eaque non at.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(342, 86, 'Labore nisi asperiores nam et.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(343, 86, 'Ipsum qui natus aspernatur tenetur magnam.', 0, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(344, 86, 'Et culpa non et iusto recusandae non.', 1, '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(345, 87, 'Sed blanditiis quidem ea rerum ea.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(346, 87, 'Atque numquam dolore vel dolores quas accusamus.', 1, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(347, 87, 'Corporis et ab cumque saepe id.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(348, 87, 'Rerum et vel incidunt aut asperiores non vel.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(349, 88, 'Inventore placeat aliquam aut repellendus.', 1, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(350, 88, 'Aut sequi et eius animi sit et.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(351, 88, 'Eos non pariatur dolorem ut impedit.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(352, 88, 'Id eius qui vel modi necessitatibus et.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(353, 89, 'Alias est in voluptatem dolores.', 1, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(354, 89, 'Quasi voluptas corporis itaque fuga.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(355, 89, 'Minima in omnis officiis sed.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(356, 89, 'Commodi amet aut sint.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(357, 90, 'Animi perferendis facilis necessitatibus ullam.', 0, '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(358, 90, 'Qui ad ut quos perspiciatis.', 0, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(359, 90, 'Ea quidem qui est tempora nisi nisi numquam et.', 1, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(360, 90, 'Asperiores pariatur harum unde omnis.', 0, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(361, 91, 'Ab vel dolorum dignissimos et vitae.', 1, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(362, 91, 'Non labore nostrum totam.', 0, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(363, 91, 'Inventore est officia et ad tenetur.', 0, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(364, 91, 'Eum quo consequatur et sed aliquam.', 0, '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(365, 92, 'Quas sint itaque cum occaecati.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(366, 92, 'Qui esse quidem laborum error et totam labore.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(367, 92, 'Veniam eius modi eum ullam est ea incidunt et.', 1, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(368, 92, 'Enim dolores ut optio enim a possimus totam.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(369, 93, 'Saepe facilis et cumque.', 1, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(370, 93, 'Doloremque tenetur placeat veniam.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(371, 93, 'Ab ut occaecati esse eius id.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(372, 93, 'Quis provident sequi omnis aut non.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(373, 94, 'Cum molestiae expedita quae fuga suscipit non.', 1, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(374, 94, 'Harum nobis quidem libero ipsa.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(375, 94, 'Natus doloribus quam tenetur sunt et.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(376, 94, 'Cum itaque ipsum accusantium.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(377, 95, 'Enim unde temporibus ut aperiam est velit quas.', 1, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(378, 95, 'Qui eligendi consequatur laborum.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(379, 95, 'Tenetur eum et voluptates consequatur possimus.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(380, 95, 'Amet explicabo qui minima vel.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(381, 96, 'Eos eligendi laudantium accusamus est sit.', 0, '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(382, 96, 'Vitae ut qui porro perferendis.', 1, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(383, 96, 'Nostrum dolor dolorem earum fugiat.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(384, 96, 'Tenetur dicta fugit est aperiam est quibusdam.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(385, 97, 'Nihil ut qui id non id amet.', 1, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(386, 97, 'Nisi dolor non id delectus.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(387, 97, 'Totam natus autem deserunt reprehenderit.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(388, 97, 'Esse libero ut et aut.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(389, 98, 'Ut doloremque corrupti eum.', 1, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(390, 98, 'Facere voluptatem qui aliquam sit quasi.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(391, 98, 'Voluptates tempore beatae earum distinctio.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(392, 98, 'In qui esse explicabo quas quod autem sed.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(393, 99, 'Amet neque est culpa et.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(394, 99, 'Ut tenetur qui dicta ea libero nesciunt.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(395, 99, 'Inventore autem aut omnis quos vel enim.', 1, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(396, 99, 'Quasi deserunt ipsum suscipit voluptate.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(397, 100, 'Iusto blanditiis voluptatem qui deserunt.', 1, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(398, 100, 'Earum id voluptate labore ab fugit voluptatem at.', 0, '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(399, 100, 'Dolorem placeat commodi qui quo.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(400, 100, 'Vitae similique est dolore et quia.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(401, 101, 'Sit voluptatem quia facere.', 1, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(402, 101, 'Sit ut accusamus eius commodi et omnis.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(403, 101, 'Qui molestiae minus culpa quia.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(404, 101, 'Voluptatibus voluptatem enim est quo dolorum.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(405, 102, 'Dicta et eum ut eos quaerat quis nulla.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(406, 102, 'Ut magni sint molestias cum accusantium est.', 1, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(407, 102, 'Id illo et voluptate voluptas ad.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(408, 102, 'Perferendis maxime dolore aspernatur dicta.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(409, 103, 'Sit vel adipisci itaque.', 1, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(410, 103, 'Aut ut earum vel odit quis ea harum.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(411, 103, 'Odio consequatur optio aliquam.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(412, 103, 'Et dolores voluptatem nisi odio.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(413, 104, 'Nesciunt enim eum earum mollitia nemo.', 1, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(414, 104, 'Vero eius sit rerum deleniti odit soluta itaque.', 0, '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(415, 104, 'Aut labore quisquam aut animi quia vitae.', 0, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(416, 104, 'Assumenda totam cum quia.', 0, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(417, 105, 'Beatae reiciendis ut quia in sunt consectetur.', 1, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(418, 105, 'Corporis qui in repellendus.', 0, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(419, 105, 'Non nobis et dolorem voluptatem nihil.', 0, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(420, 105, 'Porro accusamus reprehenderit sit sit.', 0, '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(421, 106, 'Sed quidem fuga suscipit fuga nobis labore.', 1, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(422, 106, 'Numquam distinctio fugiat repellendus quidem.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(423, 106, 'Voluptatem dicta nemo ut.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(424, 106, 'At aspernatur maiores in laboriosam eum magni.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(425, 107, 'Quisquam id totam ut architecto necessitatibus.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(426, 107, 'Ut sint quae sapiente quia vero.', 1, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(427, 107, 'Quasi iste eum non et suscipit autem totam.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(428, 107, 'Quis perspiciatis minima occaecati voluptas est.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(429, 108, 'Nesciunt voluptatem qui culpa.', 1, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(430, 108, 'Et omnis occaecati sapiente possimus in.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(431, 108, 'Omnis dolore deserunt iure et.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(432, 108, 'Et nam optio eos deleniti.', 0, '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(433, 109, 'In mollitia non quia facilis.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(434, 109, 'Omnis aut unde minus.', 1, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(435, 109, 'Unde aliquid quibusdam et ut consectetur odio.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(436, 109, 'Nostrum ut officiis distinctio odio est omnis.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(437, 110, 'Tempora blanditiis iusto dolores iure.', 1, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(438, 110, 'Corporis esse quis sapiente ut iste.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(439, 110, 'Ratione tenetur nam rem deleniti qui libero.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(440, 110, 'Aspernatur dolorum dolore vitae vitae.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(441, 111, 'Eligendi laboriosam deserunt aut optio.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(442, 111, 'Molestiae voluptatem odit architecto quae.', 1, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(443, 111, 'Ut aut voluptatem placeat iste aperiam rerum.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(444, 111, 'Doloribus odit voluptates quis quaerat.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(445, 112, 'Sed nobis cum natus et quasi alias.', 1, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(446, 112, 'Incidunt voluptatem omnis autem deleniti in sed.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(447, 112, 'Deleniti est et eos.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(448, 112, 'Molestiae quos et velit odit et est.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(449, 113, 'In minus praesentium aut saepe.', 1, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(450, 113, 'Libero quas consequatur sint laborum.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(451, 113, 'Non aut at doloremque.', 0, '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(452, 113, 'Nobis dolorem ratione aut aut et hic.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(453, 114, 'Quam velit accusamus qui odio.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(454, 114, 'Velit id qui et qui.', 1, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(455, 114, 'Dolorum aliquam dicta doloremque.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(456, 114, 'Aut harum delectus et nobis labore.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(457, 115, 'Aliquid in dolor possimus culpa enim.', 1, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(458, 115, 'Sed sed asperiores dolor est ducimus culpa.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(459, 115, 'Voluptatum ut earum sit eveniet.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(460, 115, 'Placeat est sed soluta sunt fugit.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(461, 116, 'Voluptatem odio enim quod nam.', 1, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(462, 116, 'Ea non perspiciatis accusantium et sed.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(463, 116, 'Et ut dolore numquam doloribus animi fugit.', 0, '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(464, 116, 'Quia exercitationem et accusamus ut repellat.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(465, 117, 'Ea sed ipsam architecto dolore.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(466, 117, 'Vitae explicabo nemo quo soluta qui veritatis.', 1, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(467, 117, 'Velit impedit veniam illo occaecati odit atque.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(468, 117, 'Porro illo deserunt est nam.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(469, 118, 'Qui et dicta totam doloremque sed sit.', 1, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(470, 118, 'Est expedita error natus cupiditate fuga.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(471, 118, 'Quis est deserunt ea eveniet quia ea dolorem sed.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(472, 118, 'Tempora non aut ipsam accusamus.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(473, 119, 'Aut sequi aut ipsum nihil officiis saepe.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(474, 119, 'Architecto sint sed explicabo perferendis qui.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(475, 119, 'Et nihil est doloribus laboriosam.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(476, 119, 'Assumenda quia quas dolores suscipit maxime qui.', 1, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(477, 120, 'Iste dolorem et illum iste qui.', 1, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(478, 120, 'Nam nulla minus et pariatur.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(479, 120, 'Ut minus eveniet voluptas.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(480, 120, 'Unde fugit qui ratione maiores.', 0, '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(481, 121, 'Soluta et ut provident totam.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(482, 121, 'Minus quis culpa dolore quasi reiciendis autem.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(483, 121, 'Autem incidunt et officiis.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(484, 121, 'In et eos quia cumque qui.', 1, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(485, 122, 'Eos quisquam eum fugit rerum.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(486, 122, 'Ipsa inventore fugiat similique quas suscipit et.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(487, 122, 'Distinctio laborum deserunt numquam ducimus.', 1, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(488, 122, 'Aut neque praesentium dolorem.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(489, 123, 'Soluta optio ut ullam quia omnis hic aliquam.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(490, 123, 'Dolores illo officia impedit iste.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(491, 123, 'Labore vel autem voluptatibus in id distinctio.', 1, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(492, 123, 'Natus hic sed et.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(493, 124, 'Qui numquam tempora soluta est eius unde.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(494, 124, 'Et voluptas culpa quam deserunt eveniet.', 1, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(495, 124, 'Neque libero ut voluptas dolores eaque.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(496, 124, 'Minus nobis quos et animi.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(497, 125, 'Eius quis eos eos aspernatur.', 0, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(498, 125, 'Exercitationem commodi et perferendis sequi.', 1, '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(499, 125, 'Consectetur corrupti quaerat enim est nobis.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(500, 125, 'Reiciendis a nisi ducimus doloremque nemo ab.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(501, 126, 'Corporis ipsa mollitia nobis asperiores qui.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(502, 126, 'Et ut est quis.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(503, 126, 'Architecto veritatis dicta quam assumenda aut.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(504, 126, 'Iusto aut aut eum quod et ea illum.', 1, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(505, 127, 'Nobis velit itaque ipsa ut animi dolor.', 0, '2023-07-26 01:00:48', '2023-07-26 01:00:48');
INSERT INTO `quiz_answers` (`id`, `quiz_question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(506, 127, 'Quia velit rerum vel qui aut maxime nostrum.', 1, '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(507, 127, 'Ipsam ex illum omnis laborum est nemo quas.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(508, 127, 'Blanditiis ut nam eligendi incidunt iure.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(509, 128, 'Et dolores id recusandae.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(510, 128, 'Facere sint consectetur similique delectus.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(511, 128, 'Ad maxime officiis odio.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(512, 128, 'Ad enim et nulla esse.', 1, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(513, 129, 'Qui modi ut est id.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(514, 129, 'Nemo assumenda quia cupiditate fuga eos.', 1, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(515, 129, 'Et illum magnam quasi sed inventore.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(516, 129, 'Vero officia autem officia non.', 0, '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(517, 130, 'Explicabo qui beatae nemo.', 1, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(518, 130, 'Aut dolorum quisquam deleniti.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(519, 130, 'Esse natus temporibus reiciendis.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(520, 130, 'Molestias sunt ut nam sunt.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(521, 131, 'Occaecati perspiciatis et excepturi nisi.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(522, 131, 'Aut animi sunt qui laudantium qui enim vitae.', 1, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(523, 131, 'Nisi quod rem perspiciatis minus et non.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(524, 131, 'Dolorum est velit vel.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(525, 132, 'Iure magnam omnis facilis.', 1, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(526, 132, 'Quia quisquam et ut id enim esse fugit.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(527, 132, 'Est possimus illum quidem earum ea et sequi.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(528, 132, 'Officia earum culpa quia labore.', 0, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(529, 133, 'Qui commodi cumque animi ut.', 1, '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(530, 133, 'Rerum sit id sequi ea amet quaerat.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(531, 133, 'Qui ullam enim voluptatem nihil est.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(532, 133, 'Iure quasi omnis et quia quas et quo.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(533, 134, 'Illo vero in in rerum.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(534, 134, 'Nesciunt eveniet dolorem pariatur inventore.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(535, 134, 'Unde id aut autem excepturi quod et.', 1, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(536, 134, 'Soluta tempore magnam nihil consequatur cum.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(537, 135, 'Repellendus error quae ut corporis vitae.', 1, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(538, 135, 'Molestias quia qui suscipit autem.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(539, 135, 'Eum et consequuntur aut facilis aut nostrum sit.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(540, 135, 'Hic aut ex vel veritatis voluptatem unde.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(541, 136, 'Numquam et eos et quis voluptate natus.', 1, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(542, 136, 'Pariatur modi eligendi est voluptas.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(543, 136, 'Nemo quia vitae rem eum provident et voluptas.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(544, 136, 'Enim vel sit atque optio culpa vitae.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(545, 137, 'Rerum sint odit deleniti animi consequuntur esse.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(546, 137, 'Et odit magnam debitis voluptatibus.', 0, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(547, 137, 'Sunt odio aspernatur ipsum.', 1, '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(548, 137, 'Quas eos neque ipsa sint.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(549, 138, 'Dolor consequatur veniam neque.', 1, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(550, 138, 'Deserunt ut ipsa et eius.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(551, 138, 'Est rerum quis dolor a veniam quos facere.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(552, 138, 'Accusantium non accusamus quia natus.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(553, 139, 'Recusandae fugit non ut.', 1, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(554, 139, 'Et perferendis fuga officiis sit et doloribus.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(555, 139, 'Aut temporibus non laboriosam ut et sunt.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(556, 139, 'Rerum veniam aperiam voluptas est ut explicabo.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(557, 140, 'Odio qui facilis blanditiis aut repellendus quo.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(558, 140, 'Doloremque suscipit ut hic esse.', 1, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(559, 140, 'Quidem numquam quo saepe nemo.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(560, 140, 'Dicta eos odit voluptate reiciendis aliquam.', 0, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(561, 141, 'Voluptatem suscipit aut facere maxime nihil.', 1, '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(562, 141, 'Id est eaque recusandae omnis totam.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(563, 141, 'Labore totam culpa dolorem non quibusdam.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(564, 141, 'Et omnis aut quia accusamus ut dolorem sed.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(565, 142, 'Eum nemo omnis accusamus mollitia possimus.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(566, 142, 'Enim autem minus nobis ut aliquam hic occaecati.', 1, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(567, 142, 'Corrupti debitis nam vero sint.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(568, 142, 'Sapiente optio est voluptatibus quas ea.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(569, 143, 'Quis adipisci adipisci cum.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(570, 143, 'Soluta non impedit omnis vitae nihil.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(571, 143, 'Beatae nulla repudiandae similique labore.', 1, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(572, 143, 'Rerum est tempore eius ratione porro aut dolore.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(573, 144, 'Ad at omnis amet sint esse.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(574, 144, 'Perferendis et totam nisi necessitatibus minima.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(575, 144, 'Quis nihil perferendis autem earum.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(576, 144, 'Consequatur voluptas nam officiis harum facilis.', 1, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(577, 145, 'Voluptatem aut ut a omnis accusantium.', 0, '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(578, 145, 'Suscipit enim et ea.', 1, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(579, 145, 'Quam veritatis non quia veritatis.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(580, 145, 'Perspiciatis sit atque animi.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(581, 146, 'Ad veniam tempore laudantium distinctio.', 1, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(582, 146, 'Voluptas aspernatur repellat delectus molestias.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(583, 146, 'Aut consequatur ad quos sequi velit.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(584, 146, 'Quod et natus quia sint voluptatem.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(585, 147, 'Blanditiis et voluptate qui qui.', 1, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(586, 147, 'Architecto cupiditate quo deleniti.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(587, 147, 'Sed dolorem placeat a aut tempora.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(588, 147, 'Et sed rerum aliquam commodi aut tempora vel.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(589, 148, 'Quis neque aut temporibus fugit autem blanditiis.', 1, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(590, 148, 'Alias quis vel quia veniam qui at est.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(591, 148, 'Quod alias sed veniam dicta vitae.', 0, '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(592, 148, 'Voluptatem id reiciendis ipsam beatae.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(593, 149, 'Laborum perspiciatis repellat est unde sed.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(594, 149, 'Explicabo non voluptatem id.', 1, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(595, 149, 'Tempore et corporis voluptatibus ut.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(596, 149, 'Ea et quam nihil autem quisquam.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(597, 150, 'Dolor delectus dignissimos velit rerum et autem.', 1, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(598, 150, 'Sed aspernatur quas aut.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(599, 150, 'Hic maxime repellat quaerat velit laudantium cum.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(600, 150, 'Aut ab quidem voluptatum et.', 0, '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(601, 151, 'Et iusto non hic deserunt.', 1, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(602, 151, 'Ea quaerat at sed suscipit.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(603, 151, 'Odit incidunt velit officiis ut.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(604, 151, 'Assumenda et non error laboriosam qui aut.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(605, 152, 'Totam corporis blanditiis fuga.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(606, 152, 'Et quia distinctio et. Velit libero est esse.', 1, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(607, 152, 'Ut vel dolor exercitationem sed eaque nihil.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(608, 152, 'Corrupti qui reprehenderit nihil omnis esse.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(609, 153, 'Repudiandae sunt architecto provident fugit.', 0, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(610, 153, 'Et ut eligendi optio sint blanditiis sit.', 1, '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(611, 153, 'Ipsum laudantium reiciendis sunt delectus.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(612, 153, 'Debitis facere beatae rerum et.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(613, 154, 'Eum quas aut aliquid quis impedit quis dolor.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(614, 154, 'Aspernatur rerum modi qui ipsum.', 1, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(615, 154, 'Et quasi aut dolor quia ad officiis.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(616, 154, 'Et amet voluptas incidunt ut ea qui earum vero.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(617, 155, 'Et itaque deleniti culpa autem sit veniam est.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(618, 155, 'Quis quos sed omnis ut ipsa.', 1, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(619, 155, 'Ad et unde error sit voluptas placeat harum esse.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(620, 155, 'Aperiam odio voluptas vel.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(621, 156, 'Consequuntur in velit tempore sit.', 1, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(622, 156, 'Assumenda necessitatibus vitae doloribus dolorem.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(623, 156, 'Et amet omnis praesentium repellat qui.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(624, 156, 'Nulla sit pariatur molestiae harum.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(625, 157, 'Fugiat quisquam sint et.', 1, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(626, 157, 'Dolor aliquid reiciendis consequuntur.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(627, 157, 'Fuga quas numquam corporis quidem quia veritatis.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(628, 157, 'Molestias doloremque et corrupti non.', 0, '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(629, 158, 'Qui quibusdam distinctio iusto repellat.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(630, 158, 'Cumque porro est officia dicta est.', 1, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(631, 158, 'Quae aut consequatur excepturi nisi.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(632, 158, 'Reprehenderit consequuntur dolores itaque.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(633, 159, 'Est repellendus illo corporis enim quasi.', 1, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(634, 159, 'Qui et odit non illo quam quo sunt.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(635, 159, 'Enim iure aut animi iure nihil vel.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(636, 159, 'Repudiandae quo omnis cumque architecto vel eius.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(637, 160, 'Et error ea eum et.', 1, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(638, 160, 'Dolores ut sed eum sit omnis quasi numquam aut.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(639, 160, 'Voluptatem rerum quia et fuga optio et eveniet.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(640, 160, 'Assumenda facere sunt voluptates et dicta.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(641, 161, 'Qui ratione neque voluptatem est dolor.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(642, 161, 'Nulla assumenda sunt tenetur maxime.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(643, 161, 'Expedita dolor quasi et et assumenda.', 0, '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(644, 161, 'Voluptatem ad cupiditate porro quasi officiis.', 1, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(645, 162, 'Nulla et unde officia harum ut.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(646, 162, 'Dignissimos hic laboriosam autem sunt eveniet.', 1, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(647, 162, 'Animi facilis iste deleniti amet beatae quos aut.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(648, 162, 'Aliquam sit qui aspernatur voluptatibus totam.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(649, 163, 'Nulla cum dicta assumenda.', 1, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(650, 163, 'Maiores quia quis voluptas quos et.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(651, 163, 'Modi sequi iusto minus illo maxime.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(652, 163, 'Quo ea voluptatem illum qui.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(653, 164, 'Nisi est repellat et blanditiis error architecto.', 1, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(654, 164, 'Error perferendis ut modi sed ut ut sint.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(655, 164, 'Ut ipsa ea nostrum facere cupiditate.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(656, 164, 'Quam et illum libero.', 0, '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(657, 165, 'Aut omnis autem assumenda delectus voluptate vel.', 1, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(658, 165, 'Deleniti qui aut dolore rerum eum.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(659, 165, 'Ut perferendis eos expedita itaque.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(660, 165, 'Dolor provident quas impedit quia temporibus.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(661, 166, 'Dolorem quia eaque reprehenderit voluptatem eum.', 1, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(662, 166, 'Tenetur et non et qui aut.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(663, 166, 'Necessitatibus aut et sunt iste non.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(664, 166, 'Laborum ut voluptatum et voluptas.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(665, 167, 'Unde id cupiditate nemo nulla aperiam ab.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(666, 167, 'Eaque blanditiis qui omnis deserunt.', 1, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(667, 167, 'Similique in sit voluptas quibusdam doloremque.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(668, 167, 'Ea rerum occaecati cum enim saepe sapiente esse.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(669, 168, 'Eos autem ab et.', 1, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(670, 168, 'Sapiente est quod in et placeat.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(671, 168, 'Et odio qui necessitatibus molestiae.', 0, '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(672, 168, 'Impedit nobis omnis nulla rerum.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(673, 169, 'Minus dolore non dolores animi illum.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(674, 169, 'Soluta sint tempora illum perspiciatis.', 1, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(675, 169, 'Aspernatur ipsum minus qui ea.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(676, 169, 'Hic distinctio et nihil molestiae voluptatum.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(677, 170, 'Ratione debitis non ut pariatur et aut totam.', 1, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(678, 170, 'Veniam ullam perspiciatis aut aut maiores.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(679, 170, 'Consequuntur doloribus magni omnis non.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(680, 170, 'Sunt non vel recusandae mollitia magnam.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(681, 171, 'Nostrum tempore aut tenetur.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(682, 171, 'Ducimus consectetur amet et at voluptates sit.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(683, 171, 'Quis sint exercitationem sit fuga nihil harum.', 0, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(684, 171, 'Quod soluta non possimus laborum et magnam est.', 1, '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(685, 172, 'Est eum quibusdam repudiandae vero.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(686, 172, 'Culpa minus quis possimus assumenda quos.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(687, 172, 'Eius natus aut accusantium quas aliquid.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(688, 172, 'Molestias odit fugit quasi incidunt.', 1, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(689, 173, 'Harum a quibusdam similique nesciunt.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(690, 173, 'Totam totam in corporis doloribus illo modi vel.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(691, 173, 'Minima et autem id ut culpa dolorum.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(692, 173, 'Repudiandae quibusdam fuga vitae.', 1, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(693, 174, 'Minima placeat veniam aut quaerat iste.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(694, 174, 'Autem nihil ipsum nulla vero et et.', 1, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(695, 174, 'Vel velit enim non molestiae quidem esse.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(696, 174, 'Ut sed provident repellat quisquam.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(697, 175, 'Minus cumque qui perferendis expedita sed.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(698, 175, 'Nemo aut eos velit alias ab.', 0, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(699, 175, 'Sit ut possimus eum voluptatem quo.', 1, '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(700, 175, 'Earum quo omnis praesentium eligendi.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(701, 176, 'Reprehenderit perferendis modi quia.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(702, 176, 'Rerum quo odit illum laboriosam quidem.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(703, 176, 'Nulla voluptate possimus qui exercitationem.', 1, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(704, 176, 'Quasi vitae soluta omnis qui et eos.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(705, 177, 'Et maiores beatae et itaque quod.', 1, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(706, 177, 'Quis voluptas itaque dignissimos sunt.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(707, 177, 'Voluptate sapiente autem voluptas asperiores.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(708, 177, 'Eius voluptas nihil voluptatem fuga.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(709, 178, 'Animi quae nostrum placeat quae.', 1, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(710, 178, 'Cum vel velit iure.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(711, 178, 'Non quibusdam numquam eius ut.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(712, 178, 'Ut maxime ratione aut aperiam.', 0, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(713, 179, 'Quae distinctio minima esse vero distinctio eum.', 1, '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(714, 179, 'Et eum rem cupiditate autem.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(715, 179, 'Incidunt consequatur asperiores iure iusto est.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(716, 179, 'Incidunt enim et dolores fugit a commodi et.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(717, 180, 'Maxime repellendus aspernatur blanditiis neque.', 1, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(718, 180, 'Facere ea officia est quia atque.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(719, 180, 'Sunt quae inventore est illo voluptatem.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(720, 180, 'Eveniet voluptatem quis numquam praesentium.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(721, 181, 'Voluptas quae sunt quia laudantium.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(722, 181, 'Minus blanditiis et maxime corporis id sint.', 1, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(723, 181, 'Officia ex tenetur veniam dolorem ad.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(724, 181, 'Quia in rerum aut alias est omnis.', 0, '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(725, 182, 'Odit voluptas rem minus repudiandae.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(726, 182, 'Harum voluptatum vel in laudantium magnam est.', 1, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(727, 182, 'Labore itaque debitis eius est.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(728, 182, 'Molestiae dolorem expedita in eaque omnis.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(729, 183, 'Vel esse iure qui sunt sint quae accusamus.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(730, 183, 'Eveniet nam modi est nisi veniam quae vel ipsum.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(731, 183, 'Libero occaecati unde inventore qui unde fugiat.', 1, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(732, 183, 'Molestiae qui nulla ipsa sunt laborum.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(733, 184, 'Ipsam culpa assumenda quam magni.', 1, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(734, 184, 'Et quis error sed.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(735, 184, 'Quod eius rerum cupiditate labore repellat.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(736, 184, 'Repellat aut autem natus qui consequatur aut sed.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(737, 185, 'Aut dolorem nisi enim consequatur.', 1, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(738, 185, 'Omnis quod eos id error illum.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(739, 185, 'Iusto quia nesciunt ut dolor.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(740, 185, 'Asperiores optio quis eveniet repudiandae soluta.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(741, 186, 'Animi voluptate non ratione dolores.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(742, 186, 'Ea dolorem quo sed cum.', 0, '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(743, 186, 'Dolorem est nihil saepe est hic.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(744, 186, 'Aut nihil magnam quas nobis officiis numquam.', 1, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(745, 187, 'Iure repellat unde voluptatibus excepturi.', 1, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(746, 187, 'Quam iste et esse doloribus et similique quo.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(747, 187, 'Sed voluptas consectetur aliquam itaque fugiat.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(748, 187, 'Quam voluptatibus tenetur nisi eveniet omnis hic.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(749, 188, 'Dolores aut ipsum minus ut maxime.', 1, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(750, 188, 'Voluptate a expedita deleniti distinctio.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(751, 188, 'Omnis omnis ab sit quibusdam.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(752, 188, 'Repellat qui velit vitae et.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(753, 189, 'Et eos exercitationem sunt est consequatur in.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(754, 189, 'Et doloremque id voluptas rerum nulla cumque.', 1, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(755, 189, 'Rerum sit consequuntur et veniam cupiditate.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(756, 189, 'Sit non et voluptatem cupiditate.', 0, '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(757, 190, 'Quo voluptas excepturi repellendus.', 1, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(758, 190, 'Fugit assumenda dolores et qui autem.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(759, 190, 'Consectetur ea quia consequuntur omnis et earum.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(760, 190, 'Amet cupiditate doloribus odit distinctio a.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(761, 191, 'Sit sed tempore aperiam.', 1, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(762, 191, 'Laborum quo illo atque dolor.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(763, 191, 'Explicabo est quo quam sed.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(764, 191, 'Eum rerum numquam non reprehenderit aut.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(765, 192, 'Libero et ut accusantium nam voluptatibus.', 1, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(766, 192, 'Autem laborum at minus voluptatem.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(767, 192, 'Officiis temporibus et dolor.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(768, 192, 'Quod quos quis qui qui et et.', 0, '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(769, 193, 'Saepe ea qui esse ad.', 1, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(770, 193, 'Fuga rerum quae minima consequatur perspiciatis.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(771, 193, 'Et ipsum sequi incidunt nam numquam.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(772, 193, 'Qui exercitationem id et laboriosam.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(773, 194, 'Deserunt officiis sint velit vel.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(774, 194, 'Cum veritatis libero et dolor eum.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(775, 194, 'Consectetur amet in at non ut quis fuga.', 1, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(776, 194, 'Saepe quasi soluta repellendus.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(777, 195, 'Molestias a possimus et quia.', 1, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(778, 195, 'Quibusdam eum sit quibusdam nam.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(779, 195, 'Quis adipisci consequatur officiis quis eaque.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(780, 195, 'Veniam quas corrupti id vel soluta delectus.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(781, 196, 'Sint ipsum debitis ullam facilis.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(782, 196, 'Eveniet adipisci saepe mollitia impedit.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(783, 196, 'Quia odio facilis quia delectus.', 1, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(784, 196, 'Itaque eius unde fugiat in placeat.', 0, '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(785, 197, 'Ratione alias nam et minus ad quaerat.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(786, 197, 'Autem enim exercitationem ad eum fugiat maiores.', 1, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(787, 197, 'Fugiat ipsum a est quos sint est voluptatem qui.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(788, 197, 'Dolor sed veritatis accusamus quod.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(789, 198, 'Quia vel asperiores velit.', 1, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(790, 198, 'Dolor et maiores dolor voluptatem.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(791, 198, 'Quaerat sit totam eius qui.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(792, 198, 'Sit id enim enim nesciunt eveniet.', 0, '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(793, 199, 'Repudiandae sunt dolorem recusandae voluptas ut.', 0, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(794, 199, 'Atque aut ut quae dolore id.', 1, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(795, 199, 'Eos sunt numquam ipsa aut molestias.', 0, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(796, 199, 'Id asperiores error iure voluptatem distinctio.', 0, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(797, 200, 'Eius velit omnis voluptatem non.', 0, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(798, 200, 'Qui fuga eos voluptate error et.', 1, '2023-07-26 01:01:10', '2023-07-26 01:01:10'),
(799, 200, 'Culpa suscipit at magni accusantium et.', 0, '2023-07-26 01:01:11', '2023-07-26 01:01:11'),
(800, 200, 'Nulla nesciunt iste id harum voluptas.', 0, '2023-07-26 01:01:11', '2023-07-26 01:01:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_answer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_explanation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question`, `answer_explanation`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ut suscipit explicabo qui itaque. Officia incidunt ut animi ea vel eaque.', 'Mollitia voluptatem omnis aut dolor magnam labore. Delectus assumenda optio in quaerat. Quis facilis laborum voluptas delectus sit iste ut.', '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(2, 1, 'Omnis aut cumque deserunt. Iure autem vitae reiciendis facilis inventore deleniti eum.', 'Maxime quos odit culpa et asperiores dolorem explicabo asperiores. Est dolores ipsam doloremque qui consequuntur et. Vitae omnis optio error ipsum dolore.', '2023-07-26 01:00:10', '2023-07-26 01:00:10'),
(3, 1, 'Sint voluptas et eius vel. Quaerat quia eos eligendi doloribus.', 'Omnis sit placeat enim velit sed. Quos repellendus delectus corporis porro veniam sit. Iste consequuntur eaque ratione mollitia.', '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(4, 1, 'Sed distinctio in dignissimos ratione consequatur assumenda. At ex consequatur dignissimos illo.', 'Ipsam et cumque omnis et. Ratione fuga vel libero ducimus cumque aut reprehenderit harum.', '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(5, 1, 'Velit sed totam sunt ullam. Est earum qui fuga eveniet. Alias aut neque rerum quis omnis.', 'Vero natus sequi pariatur et. Reiciendis laborum dolor natus voluptas vitae.', '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(6, 1, 'Eius voluptatem non culpa sunt id nobis modi. Sequi aut sed doloribus delectus molestias et.', 'Sint assumenda ex ea. Deleniti odio vel labore sed quo. Sed animi magni ut in ex eligendi.', '2023-07-26 01:00:11', '2023-07-26 01:00:11'),
(7, 1, 'Nihil velit sint qui id id. Dolores molestiae et neque laudantium iure.', 'Rerum consequuntur in in. Animi aliquam ullam numquam et.', '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(8, 1, 'Exercitationem eos nam tempora. Officia veritatis reprehenderit veniam cumque aut.', 'Ut sed ut ut minus dolor ut. Magni voluptas ut aut incidunt quia quis assumenda ullam. Rem et accusantium officia non. Quasi perferendis modi earum autem quia est et.', '2023-07-26 01:00:12', '2023-07-26 01:00:12'),
(9, 1, 'Dignissimos id adipisci animi reprehenderit odio earum et. Ut ad rerum voluptatum odit.', 'Nihil quasi facilis voluptas beatae et mollitia eos expedita. Quisquam minus voluptas molestiae est qui.', '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(10, 1, 'Qui voluptatem illum sit quos et et. Et aut ea omnis aut.', 'Suscipit sunt ea magnam velit nihil voluptatum ab praesentium. Quis temporibus iure vel autem sequi. Tenetur nobis quae suscipit amet hic. Nesciunt laborum sed non labore.', '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(11, 2, 'Suscipit quae blanditiis quibusdam cumque dolore sed quia. Architecto fugit vero maxime animi.', 'Ut rerum ullam magni exercitationem voluptatem dolore. Harum illum vitae harum repellat accusantium occaecati. Voluptas culpa dolor debitis voluptas nihil laudantium labore fugit.', '2023-07-26 01:00:13', '2023-07-26 01:00:13'),
(12, 2, 'Voluptate beatae similique repellat animi. Laborum debitis ab nesciunt voluptate eum et aut.', 'Dignissimos sunt doloremque quae laudantium nobis. Cum harum modi quas quidem sapiente et. Ipsum quis et impedit sint pariatur nemo.', '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(13, 2, 'Et facere sit quas veniam. Hic perspiciatis aut fugit ipsa. Accusamus inventore minus veritatis ut.', 'Eligendi voluptatem quia minima numquam. Minima qui et autem ullam. Cumque cupiditate et adipisci voluptatem qui libero voluptatem. Asperiores molestias aut alias est necessitatibus neque.', '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(14, 2, 'Eum et quam labore quae id distinctio inventore corporis. Asperiores at iure a magni.', 'In officia quas voluptate quidem aut rem nemo velit. Nostrum quod ipsa cupiditate sit excepturi. Et nobis praesentium voluptatem dolorem.', '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(15, 2, 'Cupiditate cumque repudiandae rem quaerat aut voluptas. Facere sit rerum ut quidem est.', 'Recusandae vel tenetur eum odio. Vitae qui reiciendis in. Dicta quia quia aperiam dignissimos veritatis. Dolor optio corporis saepe et. Repellat libero ut sequi. Molestias eum dignissimos esse.', '2023-07-26 01:00:14', '2023-07-26 01:00:14'),
(16, 2, 'Quisquam voluptates repellat deserunt. Tempore et neque qui sequi ea molestias dolores.', 'Sapiente sit autem occaecati. Odio labore voluptas vitae nesciunt voluptate dolore. Sit velit iusto qui error enim. Tempora vero unde facere quam dolor et assumenda.', '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(17, 2, 'Aspernatur neque qui sed non id dignissimos facilis. Est voluptatem delectus perspiciatis dolores.', 'Fugiat et qui omnis quasi. Exercitationem similique sit labore. Vero autem nihil assumenda. Aut sit cum possimus doloribus ducimus est architecto natus.', '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(18, 2, 'Quidem earum blanditiis eius itaque earum ut. Quia omnis quo blanditiis ut.', 'Maiores vel laudantium veritatis quia enim. In et officia mollitia. Quae fugit veniam aliquam totam minus.', '2023-07-26 01:00:15', '2023-07-26 01:00:15'),
(19, 2, 'Non aut distinctio facere non nemo. Rerum vero neque autem. Deleniti quia accusamus id hic et.', 'Ad id voluptatem quasi. Labore eaque accusantium consequatur velit ut.', '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(20, 2, 'Impedit sed sunt nisi soluta dignissimos. Impedit est tenetur quaerat necessitatibus quo.', 'Voluptas dolores omnis laborum reprehenderit incidunt doloribus et possimus. Eum at est quo et. Itaque et iusto facilis consequatur quas minus. Nesciunt delectus quisquam cupiditate ipsam ab.', '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(21, 3, 'Blanditiis in sed voluptas repellendus. Atque recusandae mollitia iste non aliquam.', 'Velit nostrum voluptatem esse deserunt provident. Neque labore incidunt nobis sunt dicta perspiciatis. Saepe neque ut ex nihil aut.', '2023-07-26 01:00:16', '2023-07-26 01:00:16'),
(22, 3, 'Et accusamus deserunt sunt dolorem nemo velit aut. Rem et ducimus nihil sint maxime quis aut.', 'Facere dolor eum et illum quas. Quam et ducimus veniam veniam ducimus omnis harum. Commodi fuga quas aut quos quia ullam. Voluptate reprehenderit nisi reprehenderit sit voluptatem et fugit.', '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(23, 3, 'Modi in saepe et sed quod voluptas laudantium. Soluta natus vitae odio. Nostrum accusamus ab rem.', 'Ex impedit aut vitae repudiandae in. Eum quis suscipit perspiciatis recusandae dolor iste. Libero culpa in sed eligendi consectetur assumenda voluptate.', '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(24, 3, 'Numquam non est fuga omnis aliquid. Nemo sed fuga vel. Earum maiores dignissimos velit facilis.', 'Alias aspernatur et deleniti minima. Aut ad nihil voluptate earum amet. Sit non ratione quasi id reprehenderit nulla. Ea et ut porro iure dolorem.', '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(25, 3, 'Placeat sit ratione id. Consequuntur magni voluptatem magnam sint. Illo ratione non vel sit totam.', 'Quibusdam atque aspernatur impedit sint. Delectus omnis occaecati quo quos molestias. Doloremque eveniet voluptates perferendis pariatur qui eos eum.', '2023-07-26 01:00:17', '2023-07-26 01:00:17'),
(26, 3, 'Est nulla quod omnis voluptatum quia rem. Ad id labore soluta. Et est accusamus tempora laboriosam.', 'Eos facilis consequatur quidem culpa et et aliquid. Ut laborum et perspiciatis atque. Animi officiis culpa vel eos officia.', '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(27, 3, 'Exercitationem eos ipsum id eaque et. Quo dolorem consequatur sequi tempora omnis.', 'Possimus aut aspernatur qui modi. Sunt velit inventore corrupti iusto optio culpa cumque. Expedita dignissimos itaque sint ea. Quia eum voluptatem repellat dignissimos nemo est.', '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(28, 3, 'Alias doloribus non quia officia sint nobis. Quasi possimus molestias itaque dolorum tenetur.', 'Sed sapiente pariatur pariatur laborum consequatur dolorem nemo. Hic voluptas et ratione et. Minima rerum iure laborum magnam rerum numquam possimus. A velit alias libero nemo.', '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(29, 3, 'Praesentium molestiae delectus a et dolor et. Quo et quod suscipit ex doloremque.', 'Quisquam quidem dolor tempore aliquam. Et sapiente tenetur enim consequatur perferendis dignissimos. Dolorum amet soluta vel repellendus quos culpa. Numquam veniam aut voluptatibus.', '2023-07-26 01:00:18', '2023-07-26 01:00:18'),
(30, 3, 'Tenetur consectetur maiores eligendi aliquid nesciunt quis omnis. Aut inventore ex ut illo.', 'Reiciendis pariatur ratione eligendi placeat. Iste rerum corrupti rerum voluptas quos distinctio suscipit aut.', '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(31, 4, 'Voluptatem rerum sequi dolore et. Qui excepturi natus repellat. Eaque qui dolor vel reprehenderit.', 'Voluptates distinctio eaque velit. Veritatis sit beatae vel possimus accusamus molestiae.', '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(32, 4, 'Ratione nam aliquam accusantium. Exercitationem tempore deleniti omnis fuga sed velit excepturi.', 'Modi porro cupiditate deserunt maiores id. Et natus voluptates quia voluptatem. Nihil ullam incidunt soluta et quam qui.', '2023-07-26 01:00:19', '2023-07-26 01:00:19'),
(33, 4, 'Sint vitae ducimus atque praesentium veritatis. Placeat sunt optio harum quod.', 'Tenetur laborum fugit aut omnis vero quia. Sunt praesentium unde ut.', '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(34, 4, 'Tenetur cupiditate mollitia eius. Est quis illum nulla. Est et quibusdam quaerat expedita et.', 'Ut dolores impedit aut omnis provident. Nobis ab corrupti pariatur molestiae. Excepturi ex qui veritatis enim qui. Fuga vitae aliquid voluptate qui consequatur.', '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(35, 4, 'Dolorem dolorum nostrum natus dolor doloribus. Ut officia blanditiis ducimus autem.', 'Quis et quos ipsam asperiores soluta. Autem ab sit quia occaecati.', '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(36, 4, 'Reiciendis rerum id nam corrupti. Quisquam quis adipisci dolor nisi. Ea totam et dolores molestias.', 'Architecto et repellat similique molestiae sit unde quas. Accusamus accusantium nostrum eius tempora quos suscipit tempora. Rerum quia culpa enim ipsam. Nam voluptatem quas voluptatem quisquam est.', '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(37, 4, 'Dolor ad eveniet quis eos. Quis perferendis aut nisi voluptas delectus aut accusantium.', 'Aut quia sint eius beatae et fugiat consequatur. Commodi repellendus placeat consequuntur est quibusdam in. Illo ut voluptatem laudantium officia architecto.', '2023-07-26 01:00:20', '2023-07-26 01:00:20'),
(38, 4, 'Magni neque ullam ut et. Pariatur tempore sunt nam alias hic.', 'Possimus eaque enim suscipit aliquam id dolorem et. Ducimus corporis est quos nihil beatae facere amet.', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(39, 4, 'Nostrum eius veritatis similique illo alias labore et. Ratione sit et ut minima.', 'Laboriosam atque expedita qui pariatur. Et provident aliquid voluptates. Dolores omnis molestias id earum vel.', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(40, 4, 'Consequatur odio expedita voluptatem optio. Consequatur est non tempore qui.', 'Aut totam dolor quia. Accusamus asperiores qui quo sint maiores deleniti autem.', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(41, 5, 'Ad doloribus id dolor omnis quasi non sit. Tempora et quia amet rerum voluptatum ea.', 'Ut quod possimus accusantium id molestias. Soluta possimus voluptate ea quo neque consequatur. Optio odio labore nobis.', '2023-07-26 01:00:21', '2023-07-26 01:00:21'),
(42, 5, 'Aut velit voluptatem neque itaque et. Voluptatem ut aut velit.', 'Magni nemo sit consectetur at dolorem. Optio ea ad repellat ut repellat. Est excepturi eligendi non eligendi ipsum. Sunt qui est qui quos. Blanditiis adipisci velit architecto est quaerat ea totam.', '2023-07-26 01:00:22', '2023-07-26 01:00:22'),
(43, 5, 'Molestiae ut nostrum temporibus reiciendis occaecati. Nesciunt eum vel quia et.', 'Voluptatum soluta dolorem aut quia dolorum qui corporis. Vel similique itaque eius illo nihil. Tempora suscipit est eaque non nisi. Et minus magni nihil consequuntur.', '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(44, 5, 'Quis sed magni facere magni ab. Facilis tempora velit quis. Est neque incidunt veritatis et.', 'Repellat velit quasi et minima. Quis sunt est ut eos aperiam. Omnis architecto in dolores rerum blanditiis eius. Vero iste quisquam error repellendus ex ad eveniet voluptatem.', '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(45, 5, 'Veniam nihil magni aut ut. Sint soluta et quis. Ipsam minus ut est dolore eaque facilis aut.', 'Officia sunt rem totam modi repellendus eaque iusto voluptas. A quia libero quasi et fugiat qui.', '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(46, 5, 'Omnis explicabo laudantium non aut sed laudantium deleniti. Minima veniam praesentium molestias.', 'Voluptatem earum dolores rerum nobis rerum iure sit repellendus. Totam dolor ducimus quis. Nisi ratione asperiores accusamus voluptatem nulla mollitia qui.', '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(47, 5, 'Nihil id praesentium dolore consequatur repellat eveniet quis hic. Non aut quae cumque ipsa.', 'Odio optio iste modi voluptate vitae veritatis doloribus. Vero architecto facere aut occaecati suscipit quo sed laudantium. Molestias occaecati ullam similique eveniet.', '2023-07-26 01:00:23', '2023-07-26 01:00:23'),
(48, 5, 'Odit consequatur qui et laboriosam. Et velit earum enim quo provident eos.', 'Quidem maxime nemo magnam et occaecati natus. Molestiae voluptatum harum sint facere maiores et. Similique molestiae quae autem suscipit vel.', '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(49, 5, 'Tenetur voluptatum ut aspernatur magni neque. In ipsum sint occaecati et.', 'Et in nam fugiat aperiam. Labore soluta non et architecto veniam. Quia pariatur tempora non et esse. Nemo est ut ea accusantium hic eveniet. Eum dolores harum voluptatem nihil sunt vel occaecati.', '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(50, 5, 'Illo rerum tempore repudiandae animi modi. Vero nulla corporis culpa alias.', 'Id nulla sint in occaecati voluptas qui quia. Iste suscipit impedit aut pariatur ipsa. Explicabo debitis quibusdam ducimus praesentium et ut non.', '2023-07-26 01:00:24', '2023-07-26 01:00:24'),
(51, 6, 'Voluptatem voluptas ut totam et quidem facere. Quis porro et est aliquam ab.', 'Explicabo ipsa nesciunt itaque qui sint quibusdam. Illo dolores eveniet aut earum. Nemo quaerat rerum sint est et aliquam cum ullam. Rem velit ipsum praesentium ipsam eos porro.', '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(52, 6, 'Ab ullam eligendi voluptatum velit. Non magni aliquid ut molestiae. Voluptatem et est eaque.', 'Maiores dolor quod animi possimus. Quam corrupti nisi accusantium. Sed ad dolorem modi. Sit atque natus ut veniam placeat.', '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(53, 6, 'Eos corrupti et atque cumque voluptatem. Sequi est doloremque at ut nesciunt aut quos.', 'Magnam aliquam ullam debitis exercitationem minus omnis. Accusamus quis enim mollitia ut ullam cumque. Alias quia nostrum placeat doloremque autem.', '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(54, 6, 'Dolores nam ut quas ut. Iusto animi quos eum qui temporibus.', 'Minus minima dolor beatae ea quaerat et dolores. Voluptatem dolorum ea ducimus amet explicabo consequatur. Amet enim fugiat est suscipit.', '2023-07-26 01:00:25', '2023-07-26 01:00:25'),
(55, 6, 'Voluptatibus labore nesciunt eligendi eaque id. Perspiciatis quasi nisi alias autem non eos qui.', 'Sint sit repellendus debitis harum sed. Culpa est qui vel in voluptatum molestiae soluta.', '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(56, 6, 'Facilis similique maiores sit repudiandae. Enim voluptate sapiente aut.', 'Qui aut esse ipsam ducimus rerum maiores quo rerum. Tempora culpa inventore rerum cumque quae magni corporis id. Dolor et iusto et reiciendis architecto. Sed ipsum magni et ex.', '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(57, 6, 'Atque quisquam et molestiae quo. Dolores ea dolores ea eius saepe. Saepe consequatur ipsum ullam.', 'Dolorem asperiores atque officiis. Ullam iste qui sint occaecati mollitia. Provident quia maiores quaerat exercitationem porro quo adipisci. Assumenda et velit asperiores facere rerum sunt.', '2023-07-26 01:00:26', '2023-07-26 01:00:26'),
(58, 6, 'Tempora aliquam quia aut. Qui et pariatur quis in mollitia atque distinctio.', 'Rerum vitae ut sint inventore sit voluptates. Excepturi qui est veritatis quia ducimus non deserunt. Dolore totam a omnis omnis quo. Modi sint aut est vitae perspiciatis rerum.', '2023-07-26 01:00:27', '2023-07-26 01:00:27'),
(59, 6, 'Assumenda autem ipsum autem praesentium nostrum aliquam. Cum id quia consequatur.', 'Officia provident aliquam architecto itaque temporibus in. Optio eos quidem nostrum quod voluptas odit. Quisquam qui quod maxime eveniet.', '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(60, 6, 'Et itaque asperiores dolor. Quia perspiciatis rerum ut sed doloremque nisi.', 'Reprehenderit dolor quaerat odio sunt. Nulla quae molestiae qui voluptatibus. Esse doloremque temporibus impedit similique accusamus atque. Rerum eius quo porro.', '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(61, 7, 'Quo aut nisi distinctio ut suscipit ut. Et itaque velit aut id incidunt.', 'Dolorum veniam porro ipsam ut amet ad dolorem labore. Quis et pariatur optio. Asperiores libero dolores voluptatem impedit est voluptas. Et labore aliquam reprehenderit et quo ratione natus in.', '2023-07-26 01:00:28', '2023-07-26 01:00:28'),
(62, 7, 'Esse porro molestiae at sapiente. Assumenda et quaerat saepe dolor ipsa.', 'Nihil quae explicabo ipsum harum dolor voluptatem. Qui nobis quis eligendi fugit. Deserunt ut voluptatem mollitia soluta deserunt et.', '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(63, 7, 'Dolor incidunt delectus ab consequuntur. Vel magnam laborum repellat quis eaque aut.', 'Veritatis totam dolores nulla omnis qui. Nesciunt veritatis in ipsum id quo. Officia voluptatum velit omnis. Id et eligendi et id maiores in quibusdam.', '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(64, 7, 'Atque ex nihil enim voluptatem. Consequatur dolor voluptates ducimus quis natus.', 'Omnis mollitia perferendis qui. Occaecati facilis inventore natus voluptatibus blanditiis eum. Deserunt provident sequi odio voluptatum quae quia.', '2023-07-26 01:00:29', '2023-07-26 01:00:29'),
(65, 7, 'Et recusandae et ex vel. Dolorum corporis molestiae quo harum optio.', 'Et aut impedit molestiae sit ullam odit laboriosam. Reiciendis qui ut et non. Aut voluptas et et reprehenderit ad eum ut. Voluptatem rerum eveniet harum.', '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(66, 7, 'Omnis nisi commodi et numquam dolores dolorem illo. Ut atque non voluptatum accusamus.', 'Et asperiores quaerat recusandae vel in ipsa dolor. Consequatur odit aut nostrum alias.', '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(67, 7, 'Ducimus accusantium illo voluptatem consectetur et et tenetur. Non quis odio minima eveniet.', 'Est blanditiis dolor placeat unde excepturi esse. Adipisci id non voluptatem eius nihil natus a. Iure ipsam et omnis magni dignissimos in optio ea.', '2023-07-26 01:00:30', '2023-07-26 01:00:30'),
(68, 7, 'Neque consequuntur fugiat incidunt id. Mollitia minus dolore tempore qui quo.', 'Vel quo nemo culpa quae et ratione autem. Beatae autem est iure dolor. Qui corrupti dignissimos maxime atque alias eveniet.', '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(69, 7, 'Ratione adipisci eos non rem et. Doloremque beatae quibusdam ratione consequatur nam ab.', 'Repellendus eum molestiae repellendus deserunt corrupti et. Rem fuga id beatae voluptas. Reiciendis soluta velit aut est. Consectetur dolore officiis nesciunt est hic ad.', '2023-07-26 01:00:31', '2023-07-26 01:00:31'),
(70, 7, 'Unde maiores nulla asperiores soluta enim enim. At officia ab quibusdam quisquam odio.', 'Nemo iste inventore non tempore odio. Quod fuga unde aut quo amet reprehenderit. Quod voluptatem voluptate quis qui id odio.', '2023-07-26 01:00:32', '2023-07-26 01:00:32'),
(71, 8, 'Quia blanditiis non maxime modi illum quo et. Expedita et voluptatem voluptas soluta.', 'Omnis et ipsa aut necessitatibus possimus. Quo neque dicta quo corporis sit alias. Nesciunt nulla quae laborum. Dolor quia repellat rerum.', '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(72, 8, 'Non eum illo iure nihil. Tenetur sit excepturi pariatur. Et sint maiores et dolorem.', 'Omnis rerum rerum doloribus repellat dolores hic nesciunt. Dolores tempora aspernatur debitis. Est maiores quidem voluptas voluptatem iste maxime non.', '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(73, 8, 'Est labore alias et culpa blanditiis. Sed voluptas rerum aut.', 'Corrupti et alias soluta maxime. Ut tenetur laudantium dicta suscipit voluptate. Nisi quidem qui eaque beatae natus ut dolore quia. Alias veniam facere unde dicta possimus ut est.', '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(74, 8, 'Quae natus ipsam harum sit. Ut dignissimos accusamus quaerat architecto consequuntur.', 'Illo nam aperiam perspiciatis eveniet voluptatum. Consequatur aspernatur aut doloribus velit blanditiis aliquid. Qui temporibus ut quod quae ratione rerum. Molestiae nostrum omnis et nihil.', '2023-07-26 01:00:33', '2023-07-26 01:00:33'),
(75, 8, 'Eius earum corporis vel quo. Qui fugiat dolor qui. Ut officia sit hic.', 'Deserunt nobis ut eos non ratione. Aut vero ut ut nemo. Aliquam repellat eum sit illum aut et.', '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(76, 8, 'Enim repudiandae dolores illo. Enim voluptates omnis enim excepturi ipsam saepe.', 'Quidem ea quo porro saepe et deserunt quasi. Non sunt odit quas qui eum itaque neque voluptatibus. Et nemo totam impedit vel amet voluptate assumenda. Quam qui iure quidem rerum numquam.', '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(77, 8, 'Vel dolor ut enim quidem autem sunt sint alias. Ut deserunt enim beatae dolore quae et.', 'Fugiat culpa reprehenderit est quia error sit. Animi velit voluptatem illum et. Exercitationem eveniet facilis fuga quia eos at voluptates architecto.', '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(78, 8, 'Quis minima repellat possimus veniam debitis. Corporis assumenda optio tempore labore dignissimos.', 'Vel non nemo velit sint debitis reiciendis. Magni cum voluptatem qui eum quia perferendis rerum. Quo in numquam praesentium nobis cupiditate et velit. Ex enim quia sunt modi rerum soluta.', '2023-07-26 01:00:34', '2023-07-26 01:00:34'),
(79, 8, 'Ab beatae enim dolores saepe aut sint. Repudiandae quae quidem aliquid aliquid aut aut quis.', 'Ducimus id quisquam hic cupiditate. Rerum ipsam ut quam omnis temporibus distinctio omnis. Officiis voluptatem qui ut esse.', '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(80, 8, 'Dolor qui quaerat ullam odit quasi. Ut numquam sunt eos facilis voluptates et.', 'Amet ut ducimus quibusdam vel delectus voluptate. Nemo amet consequatur doloribus cupiditate quod. Saepe ea aut et sint minima blanditiis minus.', '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(81, 9, 'Veniam ad quasi exercitationem voluptatem. Voluptates quo ab quas sapiente molestiae quo expedita.', 'Eveniet ab laborum in quisquam nam quam qui voluptatibus. Beatae et ex enim ut.', '2023-07-26 01:00:35', '2023-07-26 01:00:35'),
(82, 9, 'Et et eos perferendis beatae omnis quos eaque et. Magnam nisi quas deleniti qui ea.', 'Ratione enim velit et aut. Laudantium totam aliquam dolore quam aut. Voluptas doloremque repellendus temporibus voluptatem quia maxime.', '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(83, 9, 'Deleniti blanditiis harum odio nostrum. Aut iusto ut et autem labore.', 'Tempore harum eaque consequatur. Repudiandae sequi laudantium quis dolore voluptatem. Voluptatibus quis recusandae aut sint.', '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(84, 9, 'Voluptas aspernatur qui nisi enim. Facere similique consectetur optio atque sit expedita nobis.', 'Ut dolor natus voluptatem repudiandae asperiores. Omnis ipsum illo expedita ducimus aut.', '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(85, 9, 'Molestiae voluptas est dignissimos velit. Eaque nemo est iure aut enim.', 'Similique ut vero sed atque fugiat sint. Placeat fugiat cupiditate laboriosam quam similique corrupti fuga. Vel id atque vitae eaque consequatur. Aut ut mollitia qui laboriosam quis.', '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(86, 9, 'Dignissimos voluptatem nemo rem quo. Repudiandae placeat cumque qui illum sit animi placeat.', 'Laudantium et non quam aspernatur. Excepturi aut ut voluptate repellat labore. Ea necessitatibus perspiciatis officiis.', '2023-07-26 01:00:36', '2023-07-26 01:00:36'),
(87, 9, 'Culpa facere in rerum libero. Et hic quibusdam aliquid sunt.', 'Asperiores dolorem nesciunt mollitia aut dicta voluptas ut. Fuga vitae debitis minima maiores sapiente aut. Ea nulla aut omnis quo quae rerum. Voluptatem magni voluptatum iste.', '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(88, 9, 'Corrupti qui enim est. Deleniti rerum ut in non et.', 'Excepturi ea eum possimus reprehenderit et eveniet. Consequatur pariatur sed est magni. Magni quidem animi quam aut.', '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(89, 9, 'Sint sint est vero nihil. At ea culpa ipsa quia. Et est asperiores atque.', 'In fugiat qui laudantium nostrum sint voluptas magni quis. Tempore modi sunt a sed officiis quis impedit dolorum. Quia qui occaecati aut iusto aspernatur placeat non eos.', '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(90, 9, 'Quos a reiciendis reprehenderit qui nobis. Magnam natus ut saepe temporibus dolore beatae et.', 'Deleniti iusto vitae itaque. Minima maiores quibusdam consequatur iste debitis. Tenetur pariatur ipsum omnis perspiciatis laborum corrupti labore voluptatibus.', '2023-07-26 01:00:37', '2023-07-26 01:00:37'),
(91, 10, 'Et ullam impedit aut qui. Possimus reiciendis aut vitae minus. Non est non illo nisi quod.', 'Inventore omnis numquam consequatur debitis. Assumenda quo nihil ab ut. Fugiat et enim occaecati qui.', '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(92, 10, 'Nam magnam minima qui. Cumque id dolore suscipit labore et sit ad. Architecto cum qui totam esse.', 'Dolorem in consequuntur qui. Eum incidunt nam est enim id quidem ipsam. Tenetur ut sit eius.', '2023-07-26 01:00:38', '2023-07-26 01:00:38'),
(93, 10, 'Est dolores et illo. Maiores sunt temporibus molestias fugit cum.', 'Dolorem aut alias et reiciendis illo accusantium quisquam necessitatibus. Ut omnis facere excepturi. Possimus molestiae itaque omnis ea.', '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(94, 10, 'Inventore tempora mollitia quidem dolores qui. Odit rerum quos sapiente.', 'Iste earum atque excepturi nihil doloremque non dolores. Deleniti consequatur explicabo eum. Quam possimus pariatur alias commodi. Dolorem odio culpa et.', '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(95, 10, 'Rerum quaerat fuga non odio qui est eligendi in. Eum voluptatem ut et officiis cupiditate est quos.', 'Enim nihil odit voluptates. Esse quis omnis vel rerum veritatis vel est. Ducimus ab at mollitia perferendis labore ducimus architecto.', '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(96, 10, 'Ea molestiae est mollitia. Inventore et provident distinctio ut ab est.', 'Ducimus et itaque deserunt accusamus ut. Laborum atque dignissimos ratione sed minima. Corporis ratione autem vel inventore. Incidunt et consequatur dolore voluptates.', '2023-07-26 01:00:39', '2023-07-26 01:00:39'),
(97, 10, 'Porro nihil omnis vitae possimus sed et dolorem. Eos magnam cum similique corporis ut ea.', 'Est aspernatur optio sed velit et sunt dolorum. Eveniet sint illum laudantium doloribus. Omnis sit omnis perferendis eaque.', '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(98, 10, 'Vero rem dolore quasi illum. Ut quam est et maiores deleniti rem architecto.', 'Sunt quis qui rem quo perferendis rem. At consequatur nobis nihil consequatur eligendi voluptas.', '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(99, 10, 'Autem at consequatur velit rem. Accusamus nihil perferendis qui aliquam.', 'Reiciendis voluptas quidem quia explicabo ipsum aliquid officiis. Qui iure iure quasi placeat suscipit corporis. Sunt sit dolores nulla mollitia vel. Soluta quia et quos nemo iusto.', '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(100, 10, 'Vel aut quisquam deleniti numquam molestiae numquam veritatis. Vel est est qui.', 'Qui architecto quaerat in dolor et. Sunt alias amet neque ipsam. Quia voluptate tempora voluptatem similique. Minima iure deleniti dolore cupiditate.', '2023-07-26 01:00:40', '2023-07-26 01:00:40'),
(101, 11, 'Quam dolore esse ipsa modi. Id amet asperiores fugiat maiores aut necessitatibus vero quo.', 'Optio quia aliquid cumque distinctio nihil ipsam quia. Quam rerum ut rerum distinctio. Ut vel rem perferendis earum vel. Vitae consequatur nostrum vel eos. Sed expedita blanditiis illum repudiandae.', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(102, 11, 'Ut quidem numquam tempore sapiente dolore. Voluptatum dolorum ea distinctio accusantium.', 'Corrupti magni quis rerum doloribus consequuntur nesciunt. Possimus fuga sed quia quia. Qui sunt vitae velit molestias qui. Eveniet quidem dolores tenetur et quia voluptates dignissimos.', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(103, 11, 'Quaerat suscipit tempore ut culpa id tempora. Quae corporis non quis eum qui recusandae enim.', 'Ut tempore dolorem quam cumque nobis. Nihil provident excepturi quod tenetur et neque.', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(104, 11, 'Id omnis dolorem excepturi. Quam temporibus est officiis qui et.', 'Reiciendis aut qui illum non. Ipsum impedit quisquam facere deserunt voluptas nostrum commodi. Sunt nisi eum esse dolor. Eveniet excepturi dolorum non sint quia saepe placeat.', '2023-07-26 01:00:41', '2023-07-26 01:00:41'),
(105, 11, 'Provident quos maxime quia ut. Suscipit unde dolores et cupiditate ea eius praesentium.', 'Unde ratione neque tempora rerum dicta deserunt. Itaque architecto debitis accusamus consequatur. Ipsum eum in dicta ut. Esse dicta aliquam incidunt sed.', '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(106, 11, 'Rerum tempore enim et consequatur. Quas quia aperiam pariatur.', 'Corrupti dolores nihil sit fuga qui laboriosam ut. Laboriosam est eum quis quo sunt et voluptatem.', '2023-07-26 01:00:42', '2023-07-26 01:00:42'),
(107, 11, 'At et voluptatem et. Temporibus aspernatur quae voluptate cupiditate.', 'Omnis ad deleniti aliquam suscipit sapiente velit et. Voluptatum est vel quisquam ad doloremque alias. Delectus et sint dolorem incidunt laborum impedit.', '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(108, 11, 'Molestiae quo corrupti nesciunt facilis corrupti. Ut occaecati hic possimus libero reprehenderit.', 'Placeat repellendus et nostrum autem et quaerat ducimus. Autem accusamus quos autem quam et quia. Et harum a voluptas dolorem.', '2023-07-26 01:00:43', '2023-07-26 01:00:43'),
(109, 11, 'Nulla error et aut. Ex qui dignissimos aut neque.', 'Dignissimos necessitatibus ipsa non occaecati aut nostrum. Eaque ut rerum itaque et. Natus vitae aliquam eum quam.', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(110, 11, 'Nihil quidem enim porro porro rerum quo voluptatibus inventore. Voluptatem atque omnis recusandae.', 'Quos rerum qui eum assumenda earum. Velit minima eaque sit enim consequuntur rerum officiis saepe. Molestiae eum recusandae reprehenderit. Distinctio facilis nihil sit ut quasi quam.', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(111, 12, 'Est dicta ut exercitationem minima vel soluta. Omnis eveniet est est eveniet quo adipisci.', 'Sit quasi qui unde sed minus sit eum. Quis ea esse fugiat harum. Non omnis totam dolorum iusto et nihil amet. Consequuntur et ratione nostrum placeat aut.', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(112, 12, 'Quod rerum ut ad deleniti. Illo qui quia sit at magnam quia.', 'Et facilis nam corrupti illum dignissimos. Non dolorem velit architecto quia. Voluptatum et nesciunt et non tenetur eius et.', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(113, 12, 'Quod excepturi hic ut alias eligendi repellendus. Et et et ea. Qui saepe quis sed exercitationem.', 'Soluta ut ex facere. Amet sunt in laboriosam provident magnam. Quisquam exercitationem in saepe eos beatae. Quod deleniti illo sunt eos. Facilis quia qui nihil illo voluptate consequatur.', '2023-07-26 01:00:44', '2023-07-26 01:00:44'),
(114, 12, 'Eum doloribus ut tenetur. Excepturi et ut nulla.', 'Voluptatibus cumque repellat facilis esse ducimus architecto. Asperiores minima deleniti magnam voluptas quia suscipit ea est. Sit sequi corporis est enim rerum beatae.', '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(115, 12, 'Est non natus explicabo. Ut eius illum aut cum eius enim.', 'Quisquam voluptas voluptate odio. Ab fugit quo suscipit sed voluptatem. Nam voluptate fuga excepturi unde ut rem. Aut inventore officia consequatur atque fugit debitis autem.', '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(116, 12, 'Enim consequuntur exercitationem quis odit ut hic at. Molestiae id sit et.', 'Doloribus laudantium iusto fugit ab dolorem at voluptas. Est rerum quis rerum ut dolorem rerum aliquam. Maiores impedit cumque aut.', '2023-07-26 01:00:45', '2023-07-26 01:00:45'),
(117, 12, 'Ab eum debitis illo ut. Non mollitia ratione ut velit. Dolor id porro quisquam facere velit.', 'Quo molestiae facilis officiis quam ullam et. Cum aut similique eum blanditiis est aliquid. Reprehenderit harum neque sequi vitae nobis aut. Id incidunt natus et.', '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(118, 12, 'Dicta quo suscipit nihil aut temporibus. Fugit minus et molestias quaerat.', 'Distinctio aperiam ratione vitae qui. Earum quia perferendis aspernatur suscipit voluptatem atque dicta. Perferendis non similique aliquam aut aut et.', '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(119, 12, 'Fugiat eaque et deleniti. Magni voluptas et et qui recusandae animi quo quas.', 'At laudantium necessitatibus placeat in eligendi. Rerum omnis asperiores placeat officiis dolorem sed illum exercitationem. Et vitae fugit est nostrum at. Modi commodi consequuntur fugit enim et.', '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(120, 12, 'Neque cumque quis maiores facere et eos. Qui odio enim similique dolorem molestiae.', 'Possimus corporis ipsam voluptatem. Est molestias est voluptas ut minus. Pariatur quaerat at quis et eum distinctio. Voluptatem magni quos odio aut totam veniam non vel.', '2023-07-26 01:00:46', '2023-07-26 01:00:46'),
(121, 13, 'Voluptas occaecati dolor incidunt eos quam sunt. Maxime distinctio sequi quo est quas.', 'Architecto pariatur id voluptas quia. Nam alias possimus iure aut et omnis quas. Necessitatibus quaerat amet optio quo rerum rerum corrupti. Distinctio et consectetur iste quaerat assumenda soluta.', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(122, 13, 'Ea aut aut vel cum illum at. Ratione et iste architecto. Perspiciatis eos illo qui est.', 'Minima voluptatibus consequatur alias sapiente ullam qui vitae minus. Ipsam nostrum voluptas nesciunt provident eos saepe molestias. Et tempore aspernatur sint blanditiis sed maiores et qui.', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(123, 13, 'Commodi veritatis laborum quo qui. Magnam vero illo ut est deserunt.', 'Totam saepe placeat corporis id alias saepe. Est commodi tempora voluptas. Eum rerum voluptas omnis expedita sint accusamus. Eveniet perferendis reiciendis culpa atque qui at odit.', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(124, 13, 'Rerum consectetur cupiditate saepe tenetur rem. Doloribus nulla et qui excepturi vel.', 'Dolores est consequatur et tenetur eos. Nesciunt velit est aut. Quis nisi nesciunt earum fugiat facere consectetur.', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(125, 13, 'Quia sint non expedita ut et saepe. Odit voluptatem molestiae est accusantium iste modi.', 'Et iusto minima temporibus molestiae. Sint hic harum omnis et consectetur quo voluptatem. Illo et et commodi similique labore.', '2023-07-26 01:00:47', '2023-07-26 01:00:47'),
(126, 13, 'Sunt molestias ullam omnis aut. Aut labore ea corrupti eius. Et sunt numquam aut nemo deleniti.', 'Aperiam iusto natus iste ut omnis. Vel alias quibusdam sit quis. Enim natus accusantium similique voluptatum consequatur aliquam. Et dolore voluptates architecto est.', '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(127, 13, 'Est voluptatum est est qui et maxime. Qui eos quae sint vitae reiciendis reprehenderit rerum.', 'Natus iusto ducimus nobis aperiam est consequuntur. Non voluptatem itaque cupiditate. Aut ratione distinctio et atque. Non ea est ex rerum rem eaque veniam.', '2023-07-26 01:00:48', '2023-07-26 01:00:48'),
(128, 13, 'Et provident recusandae reprehenderit adipisci maxime. Animi quaerat consequatur deleniti qui.', 'Culpa magnam excepturi magni aliquid. Est molestias laboriosam voluptatibus dolores voluptatem. Cum dolorem ut et assumenda sunt.', '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(129, 13, 'Commodi et quam non nemo quis. Explicabo qui quia repudiandae totam consequatur nihil consequuntur.', 'Omnis sit officiis adipisci sint. Velit eius vero consequatur ipsam optio minus dolorem. Dolor aut quia perferendis ut. Ipsam iure asperiores ad nam vero dolor corporis.', '2023-07-26 01:00:49', '2023-07-26 01:00:49'),
(130, 13, 'Temporibus odit et quis est voluptatibus repellat. Velit cumque et odio sint.', 'In officiis quos nisi tempore ut debitis. Omnis nihil asperiores alias dolorum et temporibus aut et. Voluptatem eveniet et at nostrum illo inventore nulla.', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(131, 14, 'Nam voluptatem officia cupiditate vel dolore magnam earum. Corporis est magni ut ratione.', 'Perferendis qui officia molestias suscipit aut. Nisi consequatur amet accusantium possimus deserunt.', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(132, 14, 'Exercitationem quae dolor distinctio laudantium inventore ut. Tempore officiis dolor praesentium.', 'Architecto ipsam omnis non explicabo aut. Et laboriosam fugiat et eius deserunt qui. Ut ducimus numquam sint ab sed.', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(133, 14, 'Iure qui doloremque est. Vel asperiores suscipit iusto est.', 'Ea aspernatur provident culpa et. Sunt et id odit sed nihil at. Aut et quo quia illum eveniet perspiciatis. Veritatis cupiditate officiis voluptatibus magnam quam unde voluptas.', '2023-07-26 01:00:50', '2023-07-26 01:00:50'),
(134, 14, 'Commodi quaerat aut ab quas. Qui voluptatem explicabo sequi consectetur.', 'Omnis neque nobis vel sunt incidunt. Autem est excepturi laudantium sed nobis corrupti. Laboriosam quo eius voluptas laudantium.', '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(135, 14, 'Aut enim qui tempore expedita est. Velit sed minima praesentium et.', 'Eum ut sunt nulla nesciunt qui totam molestias. Similique in hic vitae et deserunt assumenda doloremque.', '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(136, 14, 'Minima fugit voluptatem reprehenderit facilis non. In rem et nemo ullam enim.', 'Quo esse nemo ex in. Velit quos recusandae dolores consequatur error rerum deserunt omnis. Provident rerum aut doloribus et fugiat porro. Sit non tempore rem.', '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(137, 14, 'Et rerum fugit sit possimus provident et eaque. Aut velit voluptatum numquam quasi.', 'Et omnis explicabo veritatis qui. Aut quaerat non nam quam dolorem vero. Cupiditate voluptatem quam porro iste. Facere repudiandae et veritatis earum mollitia commodi ut.', '2023-07-26 01:00:51', '2023-07-26 01:00:51'),
(138, 14, 'Repellendus deleniti aut est soluta recusandae quas sit. Dolore perspiciatis minima qui laudantium.', 'Incidunt accusantium natus est quia tempora quae. Quae similique fugit ratione nostrum vel. Fugiat tempore consequatur quia id. Laboriosam repudiandae at expedita et iste doloremque.', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(139, 14, 'Porro quibusdam qui officia et neque. Adipisci quibusdam in rem et doloribus.', 'Quae et cum dicta qui. Non qui quod aliquid sit. Minus molestias aut expedita aut quaerat aut libero culpa. Mollitia enim enim doloremque ea quia ea.', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(140, 14, 'Fugiat ipsa ratione nam vel quos. Porro rem odio cum voluptates soluta et tempora.', 'Molestiae quas repudiandae earum dolor. Delectus qui earum voluptate quae. Possimus minus inventore consequatur soluta id sit.', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(141, 15, 'Voluptatem ut animi et vel rerum molestiae. Et itaque debitis et. Ad doloribus modi qui.', 'Cupiditate praesentium enim iste soluta eaque totam rerum. Dicta consequatur harum vitae inventore. Repellat iusto quo culpa deserunt.', '2023-07-26 01:00:52', '2023-07-26 01:00:52'),
(142, 15, 'Inventore et eligendi sit nemo voluptatem. Autem necessitatibus distinctio deserunt qui.', 'Blanditiis est et velit inventore porro. Asperiores impedit ad in nam voluptate. Amet placeat autem eaque quis id adipisci nesciunt. Iure enim ut eos.', '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(143, 15, 'Sapiente qui quidem voluptatum. Quidem doloribus et rerum. Delectus et aut est.', 'Neque in quia quasi ea facilis aspernatur et. Optio accusamus est accusantium non repellendus. Dolore nemo sit qui id et ut.', '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(144, 15, 'Pariatur fugiat suscipit cumque. Eaque laudantium architecto nemo id. Ut quo id qui culpa.', 'Et doloribus aliquid nam cum at libero facilis iste. Nulla sint cupiditate facere porro. Et aperiam suscipit labore cum ea libero quaerat.', '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(145, 15, 'Delectus dolores voluptates pariatur ea. Autem id adipisci ducimus impedit maxime soluta laborum.', 'Quidem saepe doloribus voluptatum iure aliquid. Est in iste ut animi vel est. Ipsam odit sunt et fuga non voluptatem sapiente. Sunt aut dignissimos nesciunt ad sunt vel.', '2023-07-26 01:00:53', '2023-07-26 01:00:53'),
(146, 15, 'Nobis ut et quo quibusdam dolores dolor quo. Fuga quia sit commodi deleniti a dolor.', 'A repellendus delectus officiis aut quas saepe tempore eligendi. Distinctio fuga consequuntur porro autem voluptas molestiae. Exercitationem qui cupiditate sint occaecati neque quis aperiam.', '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(147, 15, 'Quia voluptatum maiores dolore id illum. Aut consectetur id unde nihil.', 'Ut beatae vero dolorem at possimus. Harum in omnis quaerat sit praesentium distinctio. Et rerum est qui possimus voluptatibus ut. Mollitia non ipsam aperiam exercitationem et iusto deleniti ea.', '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(148, 15, 'Nam et eius tempore pariatur ea facere eos. Et sed et et est.', 'Ut aut corporis at in. Impedit nesciunt culpa id dolore cumque. Nemo consequatur ullam nihil alias.', '2023-07-26 01:00:54', '2023-07-26 01:00:54'),
(149, 15, 'Nam sit et eum non. Velit rerum quos autem ea minus.', 'Ut illum excepturi aut et id nostrum. Doloremque veniam dolorem odio voluptatem. Facere vel sed recusandae voluptas.', '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(150, 15, 'Tempore ut corporis sunt repudiandae doloribus blanditiis. Sed ipsa atque consequatur cum hic.', 'Voluptas dolorem fuga nobis enim hic. Autem iusto a ex rerum sint natus. Quae dolore recusandae ex.', '2023-07-26 01:00:55', '2023-07-26 01:00:55'),
(151, 16, 'Et fugit aut alias enim nesciunt tempore provident earum. Optio nam omnis ut illum et aliquam quas.', 'Ipsa sequi quisquam mollitia repellat eum officiis. Optio fugit aut et accusamus est dolor consequuntur. Aut animi aut architecto laboriosam fugiat.', '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(152, 16, 'Est enim vel dolorem nulla inventore. Deleniti iure sed quam ea. Error est odio temporibus ut et.', 'Dolorum mollitia consectetur quos quasi. Neque consectetur voluptas deserunt tempora. Soluta beatae voluptatem provident eius.', '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(153, 16, 'Sit dolorem deserunt sit voluptatibus soluta ad. Libero occaecati sunt porro dolore dolores.', 'Voluptatem molestias placeat et odit voluptas ut esse dignissimos. Aut at eaque est eos occaecati. Natus et non ratione.', '2023-07-26 01:00:56', '2023-07-26 01:00:56'),
(154, 16, 'Ab repellendus dignissimos aut at blanditiis aspernatur. Nam nemo aliquid nisi dolorem.', 'Labore consequuntur culpa blanditiis voluptatem dolorem. Quo saepe vitae voluptas accusantium animi sunt animi. Quasi qui hic quae sed.', '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(155, 16, 'Voluptatem et inventore blanditiis eveniet. Et ullam aliquid eveniet voluptatem minima unde.', 'Sapiente nemo ut quis sit. Ad ea nesciunt accusamus quia ullam. Assumenda dolores architecto nam voluptas vel eos. Dolor ullam fugit veritatis sint. Fuga fugiat aperiam natus aut commodi.', '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(156, 16, 'Mollitia beatae enim nemo fuga aut voluptas fugit. Et totam error possimus consequatur culpa.', 'Atque occaecati aperiam accusantium aut sit. Reiciendis alias sit ut libero ipsa nulla deleniti iusto. Facere sunt officiis delectus accusantium sunt velit.', '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(157, 16, 'Et voluptatibus beatae et rerum a vitae. Et facilis consequatur omnis atque ut laudantium.', 'Similique assumenda enim rerum ut. Qui et sit in. At delectus numquam omnis optio quo quibusdam.', '2023-07-26 01:00:57', '2023-07-26 01:00:57'),
(158, 16, 'Ut quae rem molestiae. Sint doloremque qui ut vero veritatis. Sunt placeat est sit enim assumenda.', 'Maiores minus explicabo sit corrupti autem. Rem molestiae alias est tempore inventore. Esse sint sapiente esse sunt saepe. Consectetur magnam omnis quia ut iusto.', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(159, 16, 'Sed quidem voluptatem aut vel quas. Officia et impedit vero alias est architecto ab sunt.', 'Dignissimos nihil nemo similique nemo. Sed neque soluta eum doloremque sit. Nobis maiores est odio qui et. Est tempore nisi assumenda ullam pariatur.', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(160, 16, 'Atque possimus quo id accusantium unde. Dolor molestias officiis eos reprehenderit sed autem.', 'Adipisci et mollitia architecto eveniet porro voluptates. Deserunt libero sint sit voluptas. Sapiente illo quo excepturi et.', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(161, 17, 'Aut sed qui et soluta voluptas id. Eos magnam sint eius non commodi.', 'Consequatur quia quod sint. Iste eaque ut accusantium id totam. Libero consequatur molestiae optio dignissimos.', '2023-07-26 01:00:58', '2023-07-26 01:00:58'),
(162, 17, 'Libero id quis est. Iure dolor illo suscipit recusandae. Sed quo vel et consectetur nostrum.', 'Amet corporis id velit in. Doloribus dolor sed molestias reiciendis praesentium optio praesentium. In ut exercitationem accusantium fugit voluptas sint.', '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(163, 17, 'Dolor aut neque ullam qui. Quos aut sed omnis. Architecto laborum sunt deleniti dolorum placeat ut.', 'Atque perspiciatis quia exercitationem iusto vitae. Facere reiciendis laboriosam itaque libero saepe eum repellat non. Aut voluptatibus illo illum excepturi.', '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(164, 17, 'Hic aut doloribus odit. Unde quia error veritatis. Animi numquam ut aut suscipit.', 'Laudantium molestiae aut vero autem eos aut illo. Animi natus non consequatur eius consequatur.', '2023-07-26 01:00:59', '2023-07-26 01:00:59'),
(165, 17, 'In a ut et porro. Labore nihil officia quia id. Doloremque et quos vel qui sint.', 'Qui temporibus qui omnis dolorem et corrupti. Possimus non repellat magnam qui. Provident aliquam voluptatibus voluptate omnis suscipit voluptatem corporis.', '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(166, 17, 'Voluptates iusto sunt nemo. Soluta autem qui similique ad ea vitae harum.', 'Rerum esse quos pariatur itaque. Asperiores repudiandae corrupti ut ullam.', '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(167, 17, 'Sint vel omnis non perspiciatis et magnam sit. Ut animi ipsam doloremque enim omnis est.', 'Maiores iste ut dignissimos totam. Pariatur aspernatur debitis vel quia qui corporis possimus. Cumque similique voluptatem asperiores debitis.', '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(168, 17, 'Quia est atque dolorem qui. Est sapiente illo debitis ut.', 'Sed facilis consequatur beatae sed sunt facilis. Commodi cupiditate provident qui doloribus adipisci. Rem doloremque animi sapiente in debitis. Ex autem sed modi sint sit.', '2023-07-26 01:01:00', '2023-07-26 01:01:00'),
(169, 17, 'Cum quam non quasi praesentium voluptas non ut. Consequatur exercitationem porro et.', 'Adipisci occaecati ut ducimus doloremque doloremque expedita. Eveniet odit in doloribus earum. Incidunt aut eum nam voluptatem.', '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(170, 17, 'Ullam sed aliquid dolorem quas reiciendis. Blanditiis maiores inventore mollitia qui sit nobis.', 'Mollitia enim ut consequuntur officia. Nihil molestiae officiis et reiciendis. Voluptatem sit sed exercitationem vel maxime.', '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(171, 18, 'Ut nihil perspiciatis rem aspernatur labore temporibus ut. Praesentium facilis in ut qui corporis.', 'Nisi omnis unde non et qui est. Necessitatibus officia reiciendis debitis atque. Laborum ipsa nihil dolor debitis libero corporis voluptatem inventore. Aspernatur quo a reiciendis voluptas.', '2023-07-26 01:01:01', '2023-07-26 01:01:01'),
(172, 18, 'Saepe non corrupti sit distinctio nihil tenetur nesciunt. Eius et hic omnis aut.', 'Temporibus incidunt inventore est a qui itaque. Delectus est dolorem ipsa dolor. Voluptatem fugiat occaecati quia quia id est non. Et qui qui vel quaerat beatae magni quibusdam.', '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(173, 18, 'Tenetur laudantium omnis eos laborum dolorem. Autem harum quia totam quas odit adipisci similique.', 'Neque iusto reiciendis nisi deleniti. Ut atque nisi doloremque deleniti nisi. Id error consequuntur amet officiis pariatur eaque delectus.', '2023-07-26 01:01:02', '2023-07-26 01:01:02');
INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question`, `answer_explanation`, `created_at`, `updated_at`) VALUES
(174, 18, 'Nesciunt qui est autem quia. Dolores enim et animi aut hic. Beatae illum rerum ad ut.', 'Aut animi ipsum voluptas perferendis ratione quis animi. Et soluta doloribus similique sunt molestiae pariatur debitis. Distinctio id labore aliquam ratione. Non voluptas omnis aut.', '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(175, 18, 'Consequatur possimus magnam ipsum quae. Magnam quaerat ut fugiat est. Autem voluptate ex sequi ut.', 'Et eos quis autem reiciendis voluptas. Molestiae officia eum dolores assumenda omnis. Sequi et neque minima delectus. Ad in autem laboriosam enim in dolorem.', '2023-07-26 01:01:02', '2023-07-26 01:01:02'),
(176, 18, 'Odit in voluptatem doloremque. Esse tempore porro hic magni distinctio nam.', 'Omnis ut expedita consectetur vero blanditiis quod. Id nisi vitae quasi excepturi optio. Repellendus et delectus libero sunt minus velit.', '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(177, 18, 'Occaecati odio quia aut labore eius. Qui iusto consequatur hic aut.', 'Officia quae sunt veniam sed voluptatum sed dignissimos. Voluptas rem non nisi aut laudantium commodi amet corporis. Animi nobis fuga mollitia explicabo facere cumque voluptatem.', '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(178, 18, 'Temporibus sed commodi accusamus qui cum nisi quas. Provident in ut aperiam.', 'Iure quisquam beatae fugiat veniam amet. Velit nam consequuntur natus sequi aut. Aut et perferendis reiciendis labore minima. Quisquam vel ut perspiciatis mollitia magnam.', '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(179, 18, 'Ea reprehenderit molestiae expedita sequi. Velit quia voluptas debitis quod corporis quam ea.', 'Aut dolores distinctio asperiores repellendus. Mollitia qui quibusdam mollitia deleniti commodi. Ut earum impedit et qui beatae. Est dolorem pariatur tempora fuga nemo aliquid.', '2023-07-26 01:01:03', '2023-07-26 01:01:03'),
(180, 18, 'Magnam at culpa temporibus voluptatem quia. Assumenda omnis voluptatem consequatur error non rerum.', 'Ad veniam vel sunt sunt. Magni mollitia corporis iste suscipit omnis consequatur excepturi enim. Doloribus et inventore numquam animi rerum. Et doloribus quisquam harum numquam quis dolores.', '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(181, 19, 'Qui est libero fugiat perferendis ea. Perspiciatis sed quae officiis et.', 'Illo voluptate sunt perspiciatis soluta voluptas. Ut sit et consequuntur molestiae natus eaque quaerat. Sit inventore harum sit veritatis quo. Eius iste qui aliquid laboriosam porro recusandae.', '2023-07-26 01:01:04', '2023-07-26 01:01:04'),
(182, 19, 'Rerum nam accusamus ipsum blanditiis dolore quo. Ut pariatur error aspernatur voluptates vero ea.', 'Nobis eos deserunt ullam excepturi. Quam eius explicabo minima et doloremque et id. Autem sequi unde rerum saepe voluptas temporibus sint nulla. Ab molestias ea quis aut tempora ab.', '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(183, 19, 'Quidem laborum aut ut. Id iste corporis ea dolores et cumque. Quas consectetur enim maiores nihil.', 'Sit rerum maiores ut. Dolor architecto accusamus quo adipisci qui eum. Excepturi in ratione ipsum explicabo consequatur.', '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(184, 19, 'Qui sit id repellat libero. Velit nihil eos eveniet et tenetur illo dolor.', 'Molestias eius reprehenderit asperiores natus assumenda eius. Labore sit veritatis sit. Aliquam eveniet ipsa facere.', '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(185, 19, 'Rerum et ut aliquam nam. Facilis eligendi sit rem sunt modi voluptates illo.', 'Cupiditate commodi vitae sit culpa. Consequatur suscipit accusantium sint. Eveniet nihil quas facilis laudantium dolor.', '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(186, 19, 'Quisquam aliquam unde incidunt. Nam in accusamus non recusandae omnis.', 'Quasi quae repellat ipsam voluptate inventore et voluptas minima. Tenetur velit ex aliquid aut reprehenderit consequuntur. Quisquam nemo quo quia repellendus qui quia ut.', '2023-07-26 01:01:05', '2023-07-26 01:01:05'),
(187, 19, 'Ipsa eius vel nemo dicta. Ipsa quis animi eos qui voluptas expedita.', 'Occaecati voluptatibus veritatis ea reiciendis. Omnis saepe minus qui amet est inventore. Debitis eos qui possimus aut.', '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(188, 19, 'Voluptatibus fuga autem ut officia quia ratione. Ut perferendis quos natus non eaque ipsa et est.', 'Sed et voluptatem et deleniti. Vitae similique ut perspiciatis quia.', '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(189, 19, 'Est iusto voluptate cumque rerum. Quo corporis blanditiis facilis officia.', 'Sunt accusantium ipsa qui praesentium at quia nisi. Non aut distinctio reiciendis distinctio. Omnis animi ea nihil suscipit voluptatum aperiam ipsa.', '2023-07-26 01:01:06', '2023-07-26 01:01:06'),
(190, 19, 'Sint aspernatur maxime qui nihil tempore fugiat veritatis. Dignissimos rem officiis quidem non.', 'Voluptates pariatur assumenda quaerat dignissimos quaerat sed. Dolor natus autem aut et qui. Iure nemo in nemo voluptatem. Earum consequatur ut et ut.', '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(191, 20, 'Incidunt sint modi adipisci. Dolore hic itaque error adipisci at.', 'Et illo dolorum quisquam maiores ut id. Velit est eos asperiores aut est. Autem nobis placeat commodi voluptate nemo beatae. Et fuga est qui ab sit exercitationem commodi.', '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(192, 20, 'Ea molestiae itaque ab ipsam magnam dicta. Libero qui iure earum iusto rerum nam.', 'Occaecati nam omnis dolorem aut. Laboriosam voluptatum delectus eum eaque neque consequatur repellat. Mollitia voluptatibus et autem dolorum quam dolor autem. Ex omnis minima sed harum maiores.', '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(193, 20, 'Veritatis quia dolore quis nobis. Et velit aliquid et.', 'Qui placeat rem adipisci. Sunt iusto illo optio molestiae corporis dolor quam. Quam illo qui veniam repellendus sequi. Qui harum voluptatem aspernatur quas.', '2023-07-26 01:01:07', '2023-07-26 01:01:07'),
(194, 20, 'Velit vel commodi amet officia. Pariatur in quia minus est.', 'Consequatur sunt iusto deleniti. Quis amet labore non provident hic veritatis et. Ut officia et iste eligendi qui id. Molestiae iusto laudantium ea eos aliquam sit voluptatem quasi.', '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(195, 20, 'Pariatur neque quibusdam et laudantium. Aut omnis et ratione non ea et dolorem.', 'Aut eos soluta aliquid rerum voluptatem aliquid accusamus. Porro praesentium et repudiandae ducimus necessitatibus voluptas. Harum occaecati exercitationem sit aut non voluptates.', '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(196, 20, 'Sunt non sint quisquam at. Sint est voluptatem assumenda inventore.', 'Reiciendis impedit rerum enim sit est in. Hic impedit voluptas aut odio aliquid dolorum. Et voluptas ut est. Qui non ut consequuntur nihil.', '2023-07-26 01:01:08', '2023-07-26 01:01:08'),
(197, 20, 'Nemo nobis quia et at odit. Qui est fugit corrupti tempore fuga qui eveniet.', 'Praesentium autem dolore aliquam autem optio. Optio facere illum ullam id necessitatibus rerum reiciendis. Reprehenderit voluptatem mollitia animi quidem aliquid vero officia.', '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(198, 20, 'Eveniet et tempore sint. In aliquam aut quisquam qui qui velit eveniet.', 'Culpa ratione quidem quisquam omnis voluptas earum. Iste doloremque itaque animi consequatur ipsum nobis. Et et praesentium quam pariatur voluptatem. Doloremque dolor dicta laudantium est ipsa.', '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(199, 20, 'Molestias est veniam perferendis eveniet unde. Atque sed dolorem molestias.', 'Dolore illo sit alias porro iure eos consequatur. Qui aut fuga eos voluptatem. Sed repellat accusamus aperiam dolorem numquam quae qui aut. Eum non ducimus quasi temporibus.', '2023-07-26 01:01:09', '2023-07-26 01:01:09'),
(200, 20, 'Sed et recusandae sint veritatis ex quisquam laboriosam perspiciatis. Et commodi ut a sequi sit.', 'Quo culpa similique dolore est. Culpa non quo quo quod ea fugiat ut dolorum. Magnam maxime dicta deserunt eius excepturi odio voluptas.', '2023-07-26 01:01:10', '2023-07-26 01:01:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('Finished','Ongoing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ongoing',
  `user_id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `attempt` int(11) NOT NULL,
  `qna` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`qna`)),
  `total_questions` int(11) DEFAULT NULL,
  `unanswered_questions` int(11) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `time_left` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_backup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `themes`
--

INSERT INTO `themes` (`id`, `name`, `description`, `thumbnail`, `source`, `source_backup`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Default Bootstrap theme', NULL, 'https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css', NULL, '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(2, 'cerulean', 'A calm blue sky', 'https://bootswatch.com/cerulean/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/cerulean/bootstrap.min.css', 'https://bootswatch.com/5/cerulean/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(3, 'cosmo', 'An ode to Metro', 'https://bootswatch.com/cosmo/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/cosmo/bootstrap.min.css', 'https://bootswatch.com/5/cosmo/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(4, 'cyborg', 'Jet black and electric blue', 'https://bootswatch.com/cyborg/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/cyborg/bootstrap.min.css', 'https://bootswatch.com/5/cyborg/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(5, 'darkly', 'Flatly in night mode', 'https://bootswatch.com/darkly/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/darkly/bootstrap.min.css', 'https://bootswatch.com/5/darkly/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(6, 'flatly', 'Flat and modern', 'https://bootswatch.com/flatly/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/flatly/bootstrap.min.css', 'https://bootswatch.com/5/flatly/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(7, 'journal', 'Crisp like a new sheet of paper', 'https://bootswatch.com/journal/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/journal/bootstrap.min.css', 'https://bootswatch.com/5/journal/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(8, 'litera', 'The medium is the message', 'https://bootswatch.com/litera/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/litera/bootstrap.min.css', 'https://bootswatch.com/5/litera/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(9, 'lumen', 'Light and shadow', 'https://bootswatch.com/lumen/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/lumen/bootstrap.min.css', 'https://bootswatch.com/5/lumen/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(10, 'lux', 'A touch of class', 'https://bootswatch.com/lux/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/lux/bootstrap.min.css', 'https://bootswatch.com/5/lux/bootstrap.min.css', '2023-07-26 01:00:05', '2023-07-26 01:00:05'),
(11, 'materia', 'Material is the metaphor', 'https://bootswatch.com/materia/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/materia/bootstrap.min.css', 'https://bootswatch.com/5/materia/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(12, 'minty', 'A fresh feel', 'https://bootswatch.com/minty/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/minty/bootstrap.min.css', 'https://bootswatch.com/5/minty/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(13, 'morph', 'A neumorphic layer', 'https://bootswatch.com/morph/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/morph/bootstrap.min.css', 'https://bootswatch.com/5/morph/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(14, 'pulse', 'A trace of purple', 'https://bootswatch.com/pulse/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/pulse/bootstrap.min.css', 'https://bootswatch.com/5/pulse/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(15, 'quartz', 'A glassmorphic layer', 'https://bootswatch.com/quartz/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/quartz/bootstrap.min.css', 'https://bootswatch.com/5/quartz/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(16, 'sandstone', 'A touch of warmth', 'https://bootswatch.com/sandstone/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sandstone/bootstrap.min.css', 'https://bootswatch.com/5/sandstone/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(17, 'simplex', 'Mini and minimalist', 'https://bootswatch.com/simplex/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/simplex/bootstrap.min.css', 'https://bootswatch.com/5/simplex/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(18, 'sketchy', 'A hand-drawn look for mockups and mirth', 'https://bootswatch.com/sketchy/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css', 'https://bootswatch.com/5/sketchy/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(19, 'slate', 'Shades of gunmetal gray', 'https://bootswatch.com/slate/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/slate/bootstrap.min.css', 'https://bootswatch.com/5/slate/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(20, 'solar', 'A spin on Solarized', 'https://bootswatch.com/solar/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/solar/bootstrap.min.css', 'https://bootswatch.com/5/solar/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(21, 'spacelab', 'Silvery and sleek', 'https://bootswatch.com/spacelab/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/spacelab/bootstrap.min.css', 'https://bootswatch.com/5/spacelab/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(22, 'superhero', 'The brave and the blue', 'https://bootswatch.com/superhero/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/superhero/bootstrap.min.css', 'https://bootswatch.com/5/superhero/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(23, 'united', 'Ubuntu orange and unique font', 'https://bootswatch.com/united/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/united/bootstrap.min.css', 'https://bootswatch.com/5/united/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(24, 'vapor', 'A cyberpunk aesthetic', 'https://bootswatch.com/vapor/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/vapor/bootstrap.min.css', 'https://bootswatch.com/5/vapor/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(25, 'yeti', 'A friendly foundation', 'https://bootswatch.com/yeti/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/yeti/bootstrap.min.css', 'https://bootswatch.com/5/yeti/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06'),
(26, 'zephyr', 'Breezy and beautiful', 'https://bootswatch.com/zephyr/thumbnail.png', 'https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/zephyr/bootstrap.min.css', 'https://bootswatch.com/5/zephyr/bootstrap.min.css', '2023-07-26 01:00:06', '2023-07-26 01:00:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `is_admin`, `email`, `full_name`, `avatar`, `born_date`, `number`, `gender`, `theme`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('01h67vbrch6xa2vkbhjcg5ace5', 1, 'admin@example.com', 'admin', NULL, NULL, NULL, 'Laki-laki', 'default', '$2y$10$U7qMdJJK5ngE/MC7ToAGKu3j3i6c9wK3r/h3vUFOTp8yC9lEIos6W', NULL, '2023-07-26 01:00:08', '2023-07-26 01:00:08'),
('01h67vbrk7swfsw38779bzddzd', 0, 'user@example.com', 'user', NULL, NULL, NULL, 'Laki-laki', 'default', '$2y$10$dBM3cOte9jbWHHCng9a4F.MUN0Z4gU2cWyWM.ndNECYbzAxVIEFqy', NULL, '2023-07-26 01:00:09', '2023-07-26 01:00:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`),
  ADD KEY `activities_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_code_unique` (`code`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_title_unique` (`title`),
  ADD UNIQUE KEY `courses_slug_unique` (`slug`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_course_id_foreign` (`course_id`);

--
-- Indeks untuk tabel `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_answers_quiz_question_id_foreign` (`quiz_question_id`);

--
-- Indeks untuk tabel `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_attempts_user_id_foreign` (`user_id`),
  ADD KEY `quiz_attempts_quiz_id_foreign` (`quiz_id`);

--
-- Indeks untuk tabel `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_questions_quiz_id_foreign` (`quiz_id`);

--
-- Indeks untuk tabel `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_results_user_id_foreign` (`user_id`),
  ADD KEY `quiz_results_quiz_id_foreign` (`quiz_id`);

--
-- Indeks untuk tabel `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_source_unique` (`source`),
  ADD UNIQUE KEY `themes_source_backup_unique` (`source_backup`);

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
-- AUTO_INCREMENT untuk tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT untuk tabel `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD CONSTRAINT `quiz_answers_quiz_question_id_foreign` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_questions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
