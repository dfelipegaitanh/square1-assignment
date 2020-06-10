-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: square1
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_user_id_foreign` (`user_id`),
  CONSTRAINT `entries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'Minima voluptatem rerum.','Et minus nesciunt quae enim quam corporis aliquam delectus. Deserunt enim aut cupiditate qui eveniet. Ut animi quo optio distinctio deserunt. Optio dicta molestias quisquam dolor accusamus velit. Illum alias quis. Molestiae possimus ea.',1,'2020-06-10 07:51:21','2020-06-11 03:27:19'),(2,'Dolorem nemo accusamus rerum et omnis dolores.','Distinctio quam officia sunt consequatur sed fugit id. Similique dolor consectetur consequatur. Totam corporis harum maiores eius.\n\nEt harum omnis quasi sequi omnis. Veritatis enim sunt earum excepturi. Illo necessitatibus error voluptatem.',2,'2020-06-11 03:27:21','2020-06-11 03:27:21'),(3,'Et possimus modi dolorum rerum quas suscipit voluptas.','Ea nihil et assumenda facilis autem itaque. Eaque assumenda laboriosam et quos ea. Cum ex at accusamus.\n\nOdit perferendis modi tenetur maxime. Occaecati quidem repellendus qui incidunt tenetur voluptatem eveniet. Optio pariatur ullam et autem. Repellendus nobis illo consequuntur fugit a deserunt non.',2,'2020-06-11 03:27:22','2020-06-11 03:27:22'),(4,'Doloremque dolorem facere molestias id.','Vitae sint corporis eius aspernatur qui. Voluptatem et cum ex sunt iure vero quibusdam. Sed ea et quia deleniti mollitia fuga.\n\nCupiditate beatae voluptatum ratione consequuntur. Ex sed et quisquam iste rem. Ab sapiente beatae et deleniti libero adipisci dolores. Occaecati non architecto impedit ea aperiam.',3,'2020-06-11 03:27:24','2020-06-11 03:27:24'),(5,'Eaque consequuntur magnam dicta autem sunt officia fugit.','Fugit vero recusandae et et laborum amet aut optio. Nesciunt eum iusto aut rerum delectus voluptas quisquam. Perspiciatis id sint dolor qui magnam nulla sunt tenetur.\n\nFugiat et assumenda debitis dolore et officiis quia. Fugit quidem reprehenderit placeat voluptate est. Blanditiis pariatur tenetur et voluptates ut.',3,'2020-06-11 03:27:25','2020-06-11 03:27:25'),(6,'Iste nesciunt unde distinctio explicabo deserunt excepturi.','Velit ipsam qui et consectetur. At ut quia itaque quasi expedita quo corporis. Nostrum et sit ducimus at aut doloribus voluptas.\n\nNon magnam enim qui est asperiores. Qui facilis reprehenderit nisi aspernatur quia ducimus voluptatibus. Repellat eos itaque error cupiditate.',3,'2020-06-11 03:27:26','2020-06-11 03:27:26'),(7,'Sit sunt vitae omnis similique autem delectus animi.','Aut minima atque aliquid suscipit. Voluptatem quia in ullam. Ut occaecati nostrum repellendus non.\n\nDistinctio placeat et rerum quia sint dolor officia. Sint est omnis ut. Et tenetur vero maiores nihil repudiandae voluptatibus.',4,'2020-06-11 03:27:27','2020-06-11 03:27:27'),(8,'Iste consequatur labore architecto labore ut modi.','Dolorem ratione et vitae officia debitis libero dicta. Eveniet atque odit repudiandae eveniet voluptatibus ut. Esse sed adipisci aperiam. Nemo ullam labore non dignissimos sint maxime.\n\nInventore ullam odio quos quo repellat. Numquam corporis totam impedit porro. Provident debitis similique cum.',4,'2020-06-11 03:27:28','2020-06-11 03:27:28'),(9,'Labore deleniti pariatur quasi qui et velit.','Autem distinctio sit voluptates. Repudiandae aut qui minima occaecati. Autem dicta eos rerum cumque corporis consequatur.\n\nEx cumque inventore similique id architecto minima hic. Recusandae dicta nihil cupiditate et id. Aut magni aliquid et quis velit quidem sunt.',4,'2020-06-11 03:27:29','2020-06-11 03:27:29'),(10,'Pariatur suscipit ut cupiditate qui.','Eligendi esse voluptatem sit sed consectetur. Sint et deleniti sunt itaque esse vero dolor. Tempore voluptatem exercitationem neque sapiente. Voluptate laborum eaque nemo laboriosam occaecati qui.\n\nNostrum unde qui dolorem ut harum molestiae. Quia maxime eius recusandae repellendus perspiciatis. Dignissimos et non sapiente quis et. Consequatur dolor sunt commodi autem.',5,'2020-06-11 03:27:30','2020-06-11 03:27:30'),(11,'Adipisci aliquid quidem veritatis sed.','Pariatur atque doloremque est autem minima enim modi quos. Error doloremque laudantium alias ex qui.\n\nQui est sint voluptatem voluptatem eos et. Provident aut repellendus ut iste. Quo quidem incidunt fugit beatae omnis illo.',5,'2020-06-11 03:27:32','2020-06-11 03:27:32'),(12,'Alias odit nihil nulla similique id nostrum quo.','Placeat optio sunt omnis occaecati nostrum. Illum iste aut eligendi a quasi.\n\nItaque qui et vel voluptatibus sint aut. Quia molestiae blanditiis dolorum adipisci voluptas quia. Provident sunt itaque numquam perferendis qui aspernatur aut. Aperiam nesciunt nisi provident.',5,'2020-06-11 03:27:33','2020-06-11 03:27:33'),(13,'Est facilis ratione quia modi nulla.','Qui et eos quasi mollitia distinctio ipsam quidem. Et labore est non sit. Ut et unde perspiciatis possimus ex qui incidunt.\n\nQuia quos totam id alias. Repudiandae sit et odio. Libero iste atque molestias.',6,'2020-06-11 03:27:34','2020-06-11 03:27:34'),(14,'Atque excepturi dignissimos reiciendis fugiat et nemo velit.','Sit expedita veniam pariatur quo doloribus. Rerum consequatur voluptatibus quos ratione impedit minus nostrum. Enim voluptatibus quos animi eius nesciunt dolor quibusdam.\n\nEt numquam quaerat tempora laboriosam voluptatum. Autem sed mollitia quis in esse. Commodi eligendi voluptates quasi laboriosam suscipit sit eligendi. Neque asperiores amet perferendis.',6,'2020-06-11 03:27:35','2020-06-11 03:27:35'),(15,'Sed non aut consequatur reiciendis occaecati.','Voluptas eos repudiandae temporibus libero accusantium repellat qui voluptatem. Nihil recusandae numquam assumenda ad deleniti qui qui. Dolor officiis perspiciatis est excepturi dignissimos hic ex.\n\nEt quisquam ut dolor similique. Molestiae iusto consequatur quia pariatur qui odit.',7,'2020-06-11 03:27:36','2020-06-11 03:27:36'),(16,'Voluptates amet dolorem fugit aut voluptatem deleniti odio.','Saepe ut voluptates temporibus. Dolore saepe quo eum voluptatem reiciendis. Dolor ipsam est cum vitae. Neque reprehenderit dolore quidem in sit. Nemo numquam praesentium et exercitationem ut et.\n\nQuia soluta at beatae aperiam optio nam qui asperiores. Ad quis et consequuntur ex ratione nam iusto. Fuga doloribus autem labore perspiciatis tempora. Culpa et molestias quis voluptatum.',7,'2020-06-11 03:27:37','2020-06-11 03:27:37'),(17,'Est in minus reiciendis earum eos.','Aut molestiae accusantium cupiditate cumque. Repellat hic optio velit et eum. Minima laborum doloremque vero ex iusto perspiciatis qui aut. Perspiciatis accusamus ipsam et tempora soluta et et.\n\nItaque rerum aut sint dolorum. Explicabo sint totam temporibus omnis laborum ratione. Necessitatibus qui dicta fugiat ipsam nemo commodi sequi. Veniam sunt sed hic laborum veritatis quia tempore.',7,'2020-06-11 03:27:38','2020-06-11 03:27:38'),(18,'Voluptatem at nam dolor suscipit voluptatum.','Illo et laboriosam deleniti reiciendis. Dignissimos reprehenderit quasi quo quia rerum sapiente eligendi consequatur. Voluptatem consequatur nam vel sunt vero eos. Repellat non eum temporibus quaerat quo soluta. Nemo totam deserunt rem accusamus et iusto veritatis.\n\nEst eum porro repellat aliquid exercitationem. Sit sunt doloribus voluptates adipisci sit necessitatibus. Similique debitis architecto tenetur aliquam qui vero nobis. Vero beatae officiis earum ex modi culpa. Consequatur dicta numquam ut tempore.',8,'2020-06-11 03:27:39','2020-06-11 03:27:39'),(19,'Sint nihil hic voluptas in ea.','Odio eveniet sit consequatur laborum consectetur. Cupiditate reprehenderit labore ea enim nemo sed architecto sit. Culpa voluptatibus quia non ut. Et exercitationem explicabo placeat cumque numquam voluptate id.\n\nFugit ipsa voluptas animi vel tempore quas. Laboriosam inventore doloremque minima voluptate corrupti voluptatem et. Tempore molestias expedita ipsum rerum nihil reiciendis quia.',8,'2020-06-11 03:27:40','2020-06-11 03:27:40'),(20,'Omnis quasi cum assumenda quae ut distinctio voluptatum.','Facilis labore consequuntur ratione culpa et amet. Deserunt rerum autem sed ducimus maiores et ipsam. Maxime laborum iste optio nulla aut vero aut.\n\nNemo esse autem qui impedit quia et aut. Voluptatem accusamus voluptates quibusdam commodi enim. Incidunt ratione enim ipsum rem reiciendis.',9,'2020-06-11 03:27:41','2020-06-11 03:27:41'),(21,'Voluptate nemo quasi ipsam quis corporis dolorem.','Dolor dolorum ipsum dolorem similique. Suscipit voluptatibus delectus architecto omnis ut. Neque facilis et architecto esse inventore.\n\nRecusandae illum atque est deleniti. Quam veniam fuga placeat sed occaecati cumque architecto.',9,'2020-06-11 03:27:43','2020-06-11 03:27:43'),(22,'Natus totam ipsa quaerat neque sed laborum.','Adipisci distinctio sint commodi temporibus. Ipsum ipsum hic cupiditate doloremque. Molestiae itaque inventore reprehenderit ad nesciunt et.\n\nNemo alias doloremque sed. Et sed fugit facilis quos. Nobis consectetur blanditiis aut explicabo architecto error.',10,'2020-06-11 03:27:44','2020-06-11 03:27:44'),(23,'Consequuntur eaque ipsa quisquam quae fugit eius.','Est et aut fugit vitae. Earum suscipit commodi reprehenderit et rerum nesciunt eum. Veniam accusantium itaque dolorum necessitatibus labore nemo. Placeat omnis provident quas eaque dolor consequatur accusamus.\n\nConsequatur quasi iure alias iste. Vero autem nemo sequi nostrum odit. Aspernatur officia consequatur eos dolore tenetur ut nemo. Amet nihil reiciendis quasi sequi culpa repudiandae.',10,'2020-06-11 03:27:45','2020-06-11 03:27:45'),(24,'Maiores minus eum qui.','Velit alias ullam id repudiandae et. Occaecati officiis dignissimos aspernatur corporis. Et occaecati totam non eius error soluta modi est. Qui voluptate iure in veritatis cum voluptatem.\n\nQuod laborum est sunt qui voluptates rerum. Alias debitis ducimus officiis cum laboriosam. In ab delectus molestiae ex vel. Id quo delectus ipsum molestias.',11,'2020-06-11 03:27:46','2020-06-11 03:27:46'),(25,'Ipsam libero quibusdam culpa molestiae cum nihil eum.','Laudantium aperiam voluptatem et quaerat. Occaecati illo incidunt voluptate sunt doloribus tempora. Qui laborum debitis voluptatem quas. Ut ex illum natus cupiditate tempora.\n\nQuos sequi reiciendis rerum eligendi facere inventore omnis. Voluptatibus error voluptatibus quia reiciendis. Ea repellat exercitationem sunt dolor. Est ut voluptatem architecto aut qui quia.',11,'2020-06-11 03:27:47','2020-06-11 03:27:47'),(26,'Id consequatur voluptatem commodi aliquid consequatur et consequatur.','Quis voluptatem tempore blanditiis aut qui ipsam. Modi rem sit corporis dolor eum. Omnis eveniet unde ducimus. Doloribus illo asperiores suscipit explicabo.\n\nLibero ab eveniet minus magnam quaerat. Vero reprehenderit exercitationem cum nostrum placeat natus. Ut aut tenetur reprehenderit consequatur velit ad.',12,'2020-06-11 03:27:48','2020-06-11 03:27:48'),(27,'Vel doloremque magni quo culpa molestiae.','Recusandae velit vitae autem omnis dolores. Dolore nisi vel qui est. Nemo iusto et consequatur quisquam vitae. Qui sed rerum ut cum eius quibusdam ipsam.\n\nSint dolor eligendi quidem. Accusamus labore quia aliquam autem possimus aperiam quibusdam. Repellat deserunt aut blanditiis voluptatem.',12,'2020-06-11 03:27:49','2020-06-11 03:27:49'),(28,'Tenetur quos adipisci quam sed in consequuntur est.','Dolor culpa quia non maiores est quibusdam exercitationem vel. Ducimus quibusdam odio quis non odit ut. Vero tenetur molestias doloremque id. Provident iusto et et laboriosam incidunt et voluptas. Error rerum omnis atque consequatur quod aliquam.\n\nIllo ut similique quia provident ratione. Ad repudiandae non natus asperiores aut asperiores sit sint. Sapiente autem quia iure velit distinctio corporis sit laboriosam. Blanditiis et nostrum voluptas quo qui. Qui dolores voluptatem alias illum voluptatem reprehenderit.',12,'2020-06-11 03:27:50','2020-06-11 03:27:50'),(29,'Enim eum quis perspiciatis minus voluptatem.','Voluptatum et at commodi ut ipsam explicabo qui. Omnis distinctio doloribus qui quia rerum maiores. Dolorem saepe voluptas sunt quae doloribus nostrum. Placeat et rerum qui explicabo consequatur optio aut.\n\nOmnis omnis ut sapiente ut. Nihil eos accusantium esse. Necessitatibus et consequatur voluptate.',13,'2020-06-11 03:27:51','2020-06-11 03:27:51'),(30,'Architecto odit iusto aut impedit laboriosam.','Sit consequatur nulla quo animi. Ipsam eligendi vitae magni quaerat. At libero aut iste repudiandae. Ipsam corporis adipisci nam non ducimus minima quod.\n\nIure eaque necessitatibus quam temporibus et quo. Unde ipsum iusto labore fugiat. Cumque voluptatibus enim eos.',13,'2020-06-11 03:27:52','2020-06-11 03:27:52'),(31,'Aut qui explicabo reiciendis aut.','Qui qui impedit aperiam et deleniti. Nihil voluptas omnis laboriosam repudiandae.\n\nTempore placeat asperiores voluptas omnis aut. Totam non consectetur dolores magnam voluptatibus voluptatem. Beatae suscipit minima tempore dolor optio animi. Magnam eligendi enim odio placeat blanditiis. Eos sed sed ullam quo nobis et enim et.',13,'2020-06-11 03:27:53','2020-06-11 03:27:53'),(32,'Exercitationem animi ratione adipisci eaque accusantium quos assumenda.','At nostrum accusamus minus in. Cum aut doloribus hic debitis exercitationem quidem. Omnis amet consequatur non pariatur. Sit libero ducimus ut ea modi et.\n\nEligendi eos aliquam sed ipsa. Cum asperiores ut ut veniam et ratione. Quia voluptas fugit cum esse et.',14,'2020-06-11 03:27:54','2020-06-11 03:27:54'),(33,'Atque reiciendis culpa illo molestiae aut perferendis quis.','Ipsa qui pariatur consequuntur nesciunt in doloribus ipsa. Fugiat est distinctio voluptatem vel beatae. Repellat id similique vel magnam voluptatem aspernatur. Voluptas unde veritatis fugit numquam nemo facilis. Non tempora omnis ea aut sint voluptatem et sed.\n\nAut ad laudantium asperiores molestiae corrupti et. Aspernatur ut vel omnis tempore. Inventore dignissimos atque dignissimos nostrum velit minima. Consequatur quae perferendis et dolores.',14,'2020-06-11 03:27:56','2020-06-11 03:27:56'),(34,'Nulla libero in et molestiae dolores voluptas.','Optio repellendus unde ut voluptate. Adipisci quidem rerum numquam veniam minus quia.\n\nSed modi excepturi eligendi dolores nisi alias. Corrupti voluptas delectus velit sunt necessitatibus ut vel. Incidunt vero consequatur provident ratione repudiandae.',14,'2020-06-11 03:27:57','2020-06-11 03:27:57'),(35,'Qui deserunt perferendis sit dolorem est distinctio aspernatur.','Maiores et inventore voluptas et. Id consectetur vel eligendi ab optio dolor. Eaque cumque deleniti id quia. Voluptatibus voluptatibus esse voluptas quos qui unde.\n\nNesciunt facilis perspiciatis quos quaerat molestiae. Inventore officiis delectus nam minima dolores quibusdam est itaque. Occaecati laborum ratione saepe magnam voluptas voluptatibus reiciendis.',15,'2020-06-11 03:27:58','2020-06-11 03:27:58'),(36,'Dolore fuga incidunt dolores assumenda voluptatum.','Impedit placeat praesentium eum nulla necessitatibus. Blanditiis eius veritatis incidunt et.\n\nEst reprehenderit consequatur porro. Est dolor est impedit vel. Vel non aut ut quidem. Qui ut quo rem asperiores aut. Sunt porro a quam.',15,'2020-06-11 03:27:59','2020-06-11 03:27:59'),(37,'Autem magnam placeat et sit.','Laboriosam fugiat quia numquam qui. Corporis aspernatur veritatis consequatur dolor ipsa ullam. Pariatur ut ut sit labore illo quia neque suscipit. Consequatur et itaque ullam blanditiis.\n\nExercitationem fuga ex labore facilis quas velit corrupti. Quibusdam est velit architecto numquam at voluptatem aut. In accusantium inventore totam aut. Corrupti facere eaque qui.',15,'2020-06-11 03:28:00','2020-06-11 03:28:00'),(38,'Aperiam ea ratione voluptatem.','Voluptas est aut perspiciatis praesentium quo amet quaerat. Qui blanditiis expedita reiciendis quisquam. Vel excepturi qui inventore voluptatem soluta maiores. Voluptatibus quo consequatur rerum optio autem fugiat.\n\nIpsam ut officiis ratione sint at in voluptate corrupti. In aspernatur aliquam voluptates nulla. Tempore quibusdam qui qui quisquam dolores laboriosam maxime. Eaque cupiditate consequatur ut ad omnis ut debitis.',16,'2020-06-11 03:28:01','2020-06-11 03:28:01'),(39,'Doloribus ipsa necessitatibus veritatis officia magni modi temporibus.','Aut officiis omnis in. A dicta sequi sed. Sapiente dolor culpa omnis placeat. Recusandae accusamus aut nostrum aspernatur magni porro non.\n\nMagnam ut expedita doloribus optio nihil deleniti provident. Facilis fuga eius qui nemo nulla. Est vitae odit odio quae et quisquam assumenda.',16,'2020-06-11 03:28:02','2020-06-11 03:28:02'),(40,'Quia saepe dolor ea doloremque error culpa et nesciunt.','Minima repellendus veritatis totam provident earum sed dolores. Voluptatibus rerum aliquid et distinctio sequi perspiciatis et.\n\nRatione voluptatem sequi fugit nam molestias dolores doloremque. Qui rerum numquam distinctio aut iusto. A quis voluptas aut corrupti. Perspiciatis fuga aspernatur autem voluptas distinctio fugiat ipsum. Ratione dolorem animi vitae occaecati qui molestiae.',16,'2020-06-11 03:28:03','2020-06-11 03:28:03');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (44,'2014_10_12_000000_create_users_table',1),(45,'2014_10_12_100000_create_password_resets_table',1),(46,'2020_06_10_014909_create_table_entries',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User','admin','admin@admin.com','2020-06-11 03:27:18','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aVzP7f9oDe','2020-06-11 03:27:18','2020-06-11 03:27:18'),(2,'Jillian Trantow','pquitzon','brakus.nikki@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4DPBxqWxaH','2020-06-11 03:27:19','2020-06-11 03:27:19'),(3,'Dr. Lamont O\'Hara V','chandler46','brekke.joana@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GZlD04DRpx','2020-06-11 03:27:19','2020-06-11 03:27:19'),(4,'Aglae Abernathy','randall44','koss.jermaine@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','u7heKD30sx','2020-06-11 03:27:19','2020-06-11 03:27:19'),(5,'Violette Cremin','mosciski.malinda','larkin.rafaela@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WaLTQQQomS','2020-06-11 03:27:19','2020-06-11 03:27:19'),(6,'Mrs. Madonna Gaylord DVM','abbott.terrance','braun.brock@example.org','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','P7oZpixKQC','2020-06-11 03:27:19','2020-06-11 03:27:19'),(7,'Thad Dach Sr.','runte.alexie','blaze.ratke@example.net','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4iZfinnbFR','2020-06-11 03:27:20','2020-06-11 03:27:20'),(8,'Mr. Maxine Emard','koepp.odessa','uoberbrunner@example.org','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OURwKwgNQp','2020-06-11 03:27:20','2020-06-11 03:27:20'),(9,'Emmanuel Collier','yasmine.davis','brakus.adolphus@example.org','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BBN0iq7M2c','2020-06-11 03:27:20','2020-06-11 03:27:20'),(10,'Dr. Green Nolan','helen25','kassulke.willow@example.net','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','v6gGAKfvsr','2020-06-11 03:27:20','2020-06-11 03:27:20'),(11,'Brendon Beatty','tianna.streich','angie.sanford@example.org','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','doj6X27BJo','2020-06-11 03:27:20','2020-06-11 03:27:20'),(12,'Ms. Alfreda Balistreri','maudie22','hansen.mitchell@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lbIUToZxYK','2020-06-11 03:27:20','2020-06-11 03:27:20'),(13,'Esther Pacocha IV','lennie.howe','sipes.ray@example.com','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bmfmJ0YOuc','2020-06-11 03:27:20','2020-06-11 03:27:20'),(14,'Waylon Friesen','weimann.ronaldo','khuel@example.net','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DxLJsGi40L','2020-06-11 03:27:20','2020-06-11 03:27:20'),(15,'Cordie Bashirian','beverly78','onie.schumm@example.net','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PlFaG4aHwZ','2020-06-11 03:27:20','2020-06-11 03:27:20'),(16,'Gage Kemmer Sr.','rutherford.elliot','roconner@example.net','2020-06-11 03:27:19','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cogJIiCKZP','2020-06-11 03:27:20','2020-06-11 03:27:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 17:28:55
