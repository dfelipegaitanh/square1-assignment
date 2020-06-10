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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'Soluta beatae ut sed corrupti non molestiae natus.','Nobis cupiditate culpa et similique excepturi. Esse minus voluptatibus nulla repellendus corrupti. Optio enim nesciunt libero molestiae vel excepturi excepturi. Numquam minima impedit delectus velit magni excepturi sint rerum.\n\nAut explicabo est commodi. Fugiat accusamus qui cumque quaerat consequatur voluptatem. Velit architecto sit similique magnam repellat repellendus. Ea quasi nihil tenetur reprehenderit.',1,'2020-06-10 09:03:58','2020-06-10 09:03:58'),(2,'Maiores natus eum optio.','Culpa qui a perspiciatis atque quis. Incidunt est numquam atque voluptatem molestiae et. Atque et delectus et.\n\nDoloremque voluptates est consequuntur aut quae et a vel. Nam quas aliquid et odit ut. Labore et temporibus quia sed quia.',1,'2020-06-10 09:03:58','2020-06-10 09:03:58'),(3,'In ut debitis officiis impedit voluptas qui omnis.','Ex praesentium quasi sint eum quis. Ab et a recusandae fuga et. Alias amet facere qui corporis. Maiores pariatur at et exercitationem rerum.\n\nAsperiores tenetur excepturi autem id. Enim odio optio architecto rerum consequatur iure. Qui velit ratione amet sed est nemo laborum.',2,'2020-06-10 09:04:00','2020-06-10 09:04:00'),(4,'Est doloribus saepe tempore.','Velit vel commodi atque assumenda voluptas. Et voluptatem similique nemo laudantium. Dolor voluptatem aut officiis sequi sed tempora. Beatae laboriosam totam doloremque exercitationem.\n\nEos sed autem et quis ea sint. Perspiciatis molestiae repellendus laborum voluptate. Aut velit dolores quos et voluptatem voluptates autem. Ea et animi provident atque omnis.',2,'2020-06-10 09:04:01','2020-06-10 09:04:01'),(5,'Porro aut quia magni quaerat ut voluptas atque.','Quia vitae molestiae libero provident. Facere voluptatum perferendis error.\n\nAsperiores enim voluptatem et cupiditate minus vel tempore. Voluptatibus sequi qui corporis unde nostrum. Aut maxime nesciunt molestiae. Repellat aut rerum rerum earum veniam iste vel.',2,'2020-06-10 09:04:03','2020-06-10 09:04:03'),(6,'Corrupti praesentium molestias asperiores ipsam asperiores vitae voluptate.','Excepturi officiis blanditiis amet eum. Corporis blanditiis natus non occaecati illum quas occaecati. Veritatis sit error tenetur molestiae. Quaerat ipsam esse ipsum impedit porro.\n\nEst tempora distinctio numquam illo deleniti vitae perferendis voluptas. Sunt ducimus odio voluptate. Ipsam architecto similique omnis mollitia minima.',3,'2020-06-10 09:04:04','2020-06-10 09:04:04'),(7,'Quia harum rerum itaque officiis rem vitae rem.','Ea tenetur iusto labore harum. Fugiat est qui sit eligendi voluptates voluptatum dignissimos voluptate. Maiores numquam quos iure doloribus.\n\nFacere tempore dicta id facilis aliquam laborum. Perspiciatis qui sint qui eveniet. Et sed repudiandae quis sit provident.',3,'2020-06-10 09:04:05','2020-06-10 09:04:05'),(8,'Et molestiae beatae dignissimos sint quia est.','Rerum reiciendis et exercitationem deserunt. Eius voluptas repellendus unde officia consequatur aut. Aut ut veniam dolor eum voluptate.\n\nQuo et doloremque soluta qui laboriosam ex necessitatibus. Ut hic quaerat deleniti omnis et natus quis. Velit sint cum similique et.',3,'2020-06-10 09:04:06','2020-06-10 09:04:06'),(9,'In eum recusandae neque qui doloremque.','Et unde ut unde rem. Consectetur maxime quia qui delectus aut sequi et. Reprehenderit eum perspiciatis aperiam rem dolores.\n\nEt quis est voluptatum vel. Veniam pariatur eum ducimus mollitia. Sed delectus laborum facilis.',4,'2020-06-10 09:04:07','2020-06-10 09:04:07'),(10,'Et voluptate ea consequatur ut maiores quae.','Debitis aut voluptate est totam. Omnis deserunt maxime dolor.\n\nSuscipit doloremque dolor ut ut at sequi. Non aspernatur veniam natus aut.',4,'2020-06-10 09:04:08','2020-06-10 09:04:08'),(11,'Soluta sint soluta nihil libero sit et.','Voluptas blanditiis rerum non ipsum iure dicta eum. Eum aut nihil tenetur soluta repellendus amet culpa. Dignissimos rerum et quidem id et.\n\nUt non ut qui est ex. Sunt iusto provident quis nihil nam. Similique accusamus est ullam quia modi voluptas et.',5,'2020-06-10 09:04:09','2020-06-10 09:04:09'),(12,'Aperiam commodi dicta sunt ipsum dolorem quo.','Fuga qui velit harum cupiditate. Eligendi reiciendis omnis id laborum cum hic. Laboriosam libero quis molestiae doloremque quasi perferendis quae dolor.\n\nMinima ut sed molestias commodi. Repellat voluptatem ullam repellendus eos repudiandae. Cumque numquam ad quia dolorem minus fugit. Numquam minus aut amet veritatis eaque.',5,'2020-06-10 09:04:10','2020-06-10 09:04:10'),(13,'Consequatur placeat eaque molestiae consequatur id pariatur a explicabo.','Aut quia quo architecto adipisci quia. Ea qui qui sit omnis suscipit doloremque laborum. Nobis laudantium velit accusantium incidunt. Magni quasi ipsam et inventore et.\n\nVoluptatem qui molestiae aut error iusto dolores. Facilis ut eos repellendus consequatur assumenda ea enim. Quo itaque quia cupiditate doloribus.',6,'2020-06-10 09:04:11','2020-06-10 09:04:11'),(14,'Neque ut quis dolore quo.','Possimus esse velit autem nobis. Ad iste vel sed officia. Alias temporibus culpa commodi.\n\nNostrum magnam libero voluptatem iste. Quos ad blanditiis rerum ea. Itaque voluptatibus culpa asperiores modi autem inventore. Quidem nihil dicta temporibus voluptatem voluptatem.',6,'2020-06-10 09:04:12','2020-06-10 09:04:12'),(15,'Perferendis nihil ut adipisci accusamus sunt aut.','Enim itaque facilis voluptatem ut assumenda. Ex dolores sunt veniam repellat saepe. Quo expedita explicabo laborum molestiae et consequatur amet. Veniam voluptas neque accusamus. Cum dolor perspiciatis et quasi quia ea.\n\nSaepe voluptas ut quidem laborum omnis officia. Ea enim non ut corrupti tempore. Adipisci ut voluptas aliquid consectetur.',6,'2020-06-10 09:04:13','2020-06-10 09:04:13'),(16,'Enim error autem corporis et rerum.','Molestiae omnis et repellendus non qui non ratione. Rerum ipsam quia placeat nisi explicabo. Veritatis beatae vel temporibus. Nam vero quaerat maxime fuga necessitatibus.\n\nItaque consequatur praesentium voluptatem necessitatibus consequatur ea. Error aut aut esse iste. Quisquam omnis eos deleniti eum accusantium.',7,'2020-06-10 09:04:14','2020-06-10 09:04:14'),(17,'Ex voluptatem cupiditate eos a necessitatibus amet facilis.','Id autem atque voluptas. Deserunt quos illo culpa dolores. Quia nemo vel eos. Recusandae autem qui ipsa est quam odit. Sed perspiciatis quia earum accusamus animi sunt.\n\nMagnam rem nesciunt id provident non eum vitae. Voluptas veritatis blanditiis molestias vel. Eius quasi nihil minima omnis explicabo earum optio. Rerum optio sit ducimus omnis ab harum fugiat. Ut quis distinctio explicabo tempore consectetur.',7,'2020-06-10 09:04:15','2020-06-10 09:04:15'),(18,'Qui sed optio dignissimos.','Aut veritatis repellendus voluptate distinctio id hic et. Et laboriosam facilis molestiae deserunt et fugiat et. Ad odit est officia et odit cumque vitae aliquam. Ea neque doloremque perferendis ad non qui dolor. Quia voluptatibus voluptas nulla placeat nulla.\n\nDucimus vel ut id impedit non consequatur. Officia molestias nam et dolor.',7,'2020-06-10 09:04:17','2020-06-10 09:04:17'),(19,'Sint voluptatibus odit dolores deleniti optio sed sit laudantium.','Quis eum ipsum doloremque molestiae minus quod dolores. Iusto commodi repudiandae ut animi atque eum minus in. Repudiandae nesciunt voluptatem exercitationem eligendi ad nihil excepturi.\n\nConsectetur animi accusantium nobis occaecati. Atque fugiat ut eius fuga. Quis neque minus at accusantium et. Consequatur et facere est a velit id id.',8,'2020-06-10 09:04:18','2020-06-10 09:04:18'),(20,'Enim dolor dolorem doloremque sint.','Enim aliquid non quas cum culpa. Est sed non autem itaque mollitia velit cumque. Officia excepturi est nobis itaque. Non rem eaque dolor explicabo.\n\nSit ad nesciunt est molestias esse omnis tempore. Enim inventore ab iusto voluptates.',8,'2020-06-10 09:04:19','2020-06-10 09:04:19'),(21,'Et quasi asperiores autem est sunt nesciunt.','Expedita enim aut consequatur a tempora asperiores voluptate. Vel non ea ut et quod.\n\nDistinctio quaerat impedit suscipit sapiente minima odio. Voluptatibus esse inventore dolor molestiae voluptas nulla. Occaecati vero qui repellat repudiandae nihil assumenda natus.',8,'2020-06-10 09:04:20','2020-06-10 09:04:20'),(22,'Et voluptate pariatur illum.','Eligendi soluta est omnis dicta velit error rem. In sit dolorem et. Porro velit harum est animi est. Modi est cupiditate asperiores sed.\n\nNemo cumque consequuntur minima voluptatem sed nam. Id qui amet exercitationem inventore. Dolores est sit magnam quia quisquam assumenda.',9,'2020-06-10 09:04:21','2020-06-10 09:04:21'),(23,'Aut quibusdam consequuntur ipsa.','Doloribus soluta doloremque quam consequuntur non enim. Eum dolor eos tempore cupiditate sint magnam. Incidunt dolorem consequatur ducimus quas sed et.\n\nQui voluptatibus voluptas qui sint totam minima reiciendis. Molestias nemo aut illum in deleniti vero et. Adipisci voluptatem quibusdam necessitatibus vel numquam assumenda.',9,'2020-06-10 09:04:22','2020-06-10 09:04:22'),(24,'Laboriosam qui reprehenderit dolorem ut aut ducimus.','Voluptas voluptatem aut eum eligendi. Inventore qui placeat fugiat quae esse aut repellendus. Dolores accusamus nihil vel suscipit.\n\nLabore nihil ullam commodi hic. Vero neque ea perspiciatis delectus repellat autem. Explicabo quaerat maiores magni rerum commodi.',10,'2020-06-10 09:04:23','2020-06-10 09:04:23'),(25,'Id dicta atque quos voluptas veniam omnis.','Enim omnis temporibus ratione adipisci deleniti dicta sequi voluptatem. Amet et nam accusamus recusandae. Aut quo dolorem rerum consequatur optio quibusdam dolor. Qui omnis sequi at.\n\nSed nam harum voluptates non omnis et unde. Numquam reiciendis maxime ut. Quos omnis eum non qui aperiam placeat. Consequatur nihil omnis quis dignissimos aliquam quae ullam eum.',10,'2020-06-10 09:04:24','2020-06-10 09:04:24'),(26,'Inventore cumque inventore quia vitae minima adipisci dolores.','Dolores animi ducimus laudantium quidem qui. Ut cumque culpa ratione. Quisquam at cumque placeat quia aut dolores iusto consequuntur. A sed quasi rerum sed veniam quia et.\n\nVoluptates deserunt tempore recusandae at nulla cupiditate blanditiis. Animi quo iure vero cum non. Officiis aperiam voluptas corporis alias quas illum rem expedita. Consequatur repellendus aliquam veritatis in.',11,'2020-06-10 09:04:25','2020-06-10 09:04:25'),(27,'Ut ut esse saepe accusantium enim nisi quo.','Eos occaecati tenetur repellendus unde a reiciendis doloremque. Ut qui accusantium nobis itaque. Eum ratione hic ducimus consectetur dolor. Nemo nemo iusto consequuntur facere quia impedit.\n\nQuam qui ut ullam occaecati aliquid maiores et. Non et dolores dolor nulla assumenda. Rem nemo nihil exercitationem et.',11,'2020-06-10 09:04:26','2020-06-10 09:04:26'),(28,'Voluptas amet sit sint aliquam molestiae odio nobis veniam.','Nobis et incidunt eum error rerum dolores. Et voluptate consequatur minus sed.\n\nLaudantium eos nihil quisquam voluptatem sit quae necessitatibus. Modi occaecati molestiae sunt asperiores sit amet. Temporibus magnam enim dolorem nesciunt rem est. Unde maiores ipsa rerum voluptate ab voluptas voluptas.',12,'2020-06-10 09:04:27','2020-06-10 09:04:27'),(29,'Similique laborum dolorem harum consequatur quisquam quis.','Quibusdam minus repellat maiores a qui. Dolor distinctio quas ut. Officiis eligendi molestiae suscipit consectetur placeat aut. Impedit vitae quis sunt possimus.\n\nMollitia similique doloremque autem. In aut voluptatem non est natus optio quibusdam. Id aut aut est eum quibusdam. Accusamus enim qui aut accusamus.',12,'2020-06-10 09:04:29','2020-06-10 09:04:29'),(30,'Laudantium et nulla eos nihil.','Saepe rerum amet aliquam earum fugiat distinctio aut. Cumque eaque et excepturi est. Et quaerat ut inventore iure. Quia consequatur sed quia omnis quod.\n\nFuga corrupti veniam in rem. Officia expedita et rerum sed distinctio et animi dolores. Dolorem asperiores eum ut accusantium tempore ut. Molestiae voluptates et repellendus possimus veritatis dignissimos sit quia.',13,'2020-06-10 09:04:30','2020-06-10 09:04:30'),(31,'Saepe est alias ab quo.','Adipisci voluptas sit ut repudiandae. Voluptatem incidunt doloremque neque beatae qui porro consequatur. Est voluptatem unde adipisci unde.\n\nMagni repellendus exercitationem eos sequi facilis maxime rerum aut. Quisquam exercitationem quibusdam facilis. Et ut necessitatibus corrupti rerum.',13,'2020-06-10 09:04:31','2020-06-10 09:04:31'),(32,'Error perspiciatis cum aut qui natus nemo quisquam sed.','Aperiam debitis neque repudiandae quo maxime magni. Ullam quisquam aspernatur quod quia quasi veritatis aperiam quasi. Veniam ea quos non deserunt in.\n\nItaque tempora voluptates sed neque quia. Labore qui doloremque et. Sint voluptates quia alias voluptatem nihil. Placeat officiis magnam exercitationem placeat nostrum cum sed.',13,'2020-06-10 09:04:32','2020-06-10 09:04:32'),(33,'Molestias minima officia non repellendus quibusdam.','Voluptatum qui beatae omnis autem sit et voluptates qui. Inventore illo mollitia et cum omnis laboriosam. Eligendi commodi dolores repellat itaque.\n\nReiciendis error omnis rem eum vero. Ipsum unde consequuntur impedit alias rerum aut ipsam sed. Ut architecto et quia est ea sunt et.',14,'2020-06-10 09:04:33','2020-06-10 09:04:33'),(34,'Dolorem velit vel et provident.','Quas unde blanditiis nesciunt et ut. Laudantium ut enim ipsa quis quae qui. Doloremque molestiae impedit consequatur ratione quaerat accusantium. Explicabo repudiandae ex numquam modi quo voluptate in.\n\nMinus dolorem et ut qui autem tenetur. Consectetur iusto voluptatem incidunt nulla ipsum autem. Dicta adipisci rem dolores et hic officia. At minima sequi accusamus aut omnis voluptatem eveniet. Dolores illo enim facere vitae labore nemo eligendi odio.',14,'2020-06-10 09:04:34','2020-06-10 09:04:34'),(35,'Aut reprehenderit in facere velit consectetur illum.','Ad tenetur dolorem non repellendus consectetur. Laborum ut qui numquam voluptas ad. Voluptatem vel quia et iusto. Quo quod quo culpa eaque eos et.\n\nAdipisci quasi repudiandae ea similique quo. Laudantium nihil ut dolorem dolores accusantium. Molestias nihil quis qui dolorum eveniet vel.',15,'2020-06-10 09:04:35','2020-06-10 09:04:35'),(36,'Nulla odit molestiae voluptate vel et consectetur sunt delectus.','Et et et ullam et et. Earum deleniti sit aut dolor consectetur nihil. Distinctio dolore consequuntur quas deleniti ut. Sapiente sit aut quas laudantium.\n\nIure et laboriosam est. Est placeat aut officia ea qui reprehenderit sunt. Omnis commodi sequi molestias labore praesentium in neque et. Eos eveniet voluptates voluptates assumenda.',15,'2020-06-10 09:04:36','2020-06-10 09:04:36'),(37,'Blanditiis eum velit et ratione quos molestiae.','Labore molestiae est inventore tenetur ea itaque mollitia. Dolores blanditiis et iste expedita enim odio. Quidem sapiente aperiam officia. Deserunt veritatis iusto quas tempore vitae possimus est.\n\nSed nemo aut perspiciatis animi rem doloremque ut iusto. Optio cupiditate delectus earum sint. Et dolorem pariatur non praesentium aut sint et.',16,'2020-06-10 09:04:37','2020-06-10 09:04:37'),(38,'Fuga necessitatibus veritatis aut enim maiores.','Assumenda voluptas assumenda sapiente possimus aut. Architecto maiores beatae consectetur quis voluptatum enim dolores et. Dolores sequi occaecati qui earum ipsum quisquam. Optio voluptate magni temporibus voluptas.\n\nQuo impedit voluptatibus voluptas. Hic saepe rerum officia aut.',16,'2020-06-10 09:04:38','2020-06-10 09:04:38'),(39,'Dolor nulla facilis ut voluptatem quam magnam rerum.','Ut nostrum modi reiciendis tempora ea et et temporibus. Ipsam autem itaque placeat distinctio. Odit dolorum vel quia amet. Aspernatur sit occaecati dolorem eum nesciunt.\n\nCommodi ullam assumenda maiores unde debitis atque. Sunt quidem ipsum id nam aliquid dolorem ut odio. Nisi ut labore a adipisci voluptas assumenda.',16,'2020-06-10 09:04:40','2020-06-10 09:04:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (20,'2014_10_12_000000_create_users_table',1),(21,'2014_10_12_100000_create_password_resets_table',1),(22,'2020_06_10_014909_create_table_entries',1);
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
INSERT INTO `users` VALUES (1,'User Test','user@example.com','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lVtqfOTyra','2020-06-10 09:03:58','2020-06-10 09:03:58'),(2,'Ms. Dorothy Daniel Sr.','oheaney@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kdxUce2RPv','2020-06-10 09:03:58','2020-06-10 09:03:58'),(3,'Mr. Brook Hintz','chloe26@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hsfZsy3lS5','2020-06-10 09:03:58','2020-06-10 09:03:58'),(4,'Prof. Paris Thiel DVM','mikayla.goldner@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lTHI84o1sL','2020-06-10 09:03:58','2020-06-10 09:03:58'),(5,'Isac Schamberger','lwill@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JMrYIOmCn3','2020-06-10 09:03:58','2020-06-10 09:03:58'),(6,'Marianna Hand','brenden99@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','oQOeZIMSRF','2020-06-10 09:03:59','2020-06-10 09:03:59'),(7,'Mr. Immanuel Stroman Jr.','doyle.demarcus@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aWW8jGeey1','2020-06-10 09:03:59','2020-06-10 09:03:59'),(8,'Melissa Osinski DVM','myrtis.harber@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cr926sQNvI','2020-06-10 09:03:59','2020-06-10 09:03:59'),(9,'Blanca Morissette Sr.','mbaumbach@example.com','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XseHag7OGL','2020-06-10 09:03:59','2020-06-10 09:03:59'),(10,'Beryl Cronin','luettgen.brooklyn@example.com','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XudPvP0LcD','2020-06-10 09:03:59','2020-06-10 09:03:59'),(11,'Reva Lueilwitz','plowe@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pIU5vsZmq5','2020-06-10 09:03:59','2020-06-10 09:03:59'),(12,'Margaretta Cruickshank','jacobi.dariana@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','S11QSPmjeP','2020-06-10 09:03:59','2020-06-10 09:03:59'),(13,'Miss Cordie Paucek DDS','johnston.dalton@example.com','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','29Wm41wd34','2020-06-10 09:03:59','2020-06-10 09:03:59'),(14,'Ms. Lempi Doyle','michel.keebler@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','df9ZB9g6zX','2020-06-10 09:03:59','2020-06-10 09:03:59'),(15,'Gerson Wisozk','collier.hugh@example.org','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zrqBhBkFSD','2020-06-10 09:03:59','2020-06-10 09:03:59'),(16,'Abner Barton','eric50@example.net','2020-06-10 09:03:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','e2yU6WBkHC','2020-06-10 09:03:59','2020-06-10 09:03:59');
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

-- Dump completed on 2020-06-09 23:09:15
