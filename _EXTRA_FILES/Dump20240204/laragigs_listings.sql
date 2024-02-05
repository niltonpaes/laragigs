-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laragigs
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listings_user_id_foreign` (`user_id`),
  CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,1,'Itaque quas quis ex dolor quas error quo.',NULL,'laravel, api, backend','Langworth-Gleichner','Sengershire','achamplin@boyle.net','http://berge.biz/aperiam-deleniti-tempore-omnis-ut','Nulla sit sed assumenda placeat qui dignissimos. Laudantium aut modi distinctio distinctio dicta eos. Enim eum illum ut quia. Ipsum neque nihil sed et consequatur itaque non deserunt. Quis consequatur magnam vero. Voluptas praesentium culpa magnam maiores eum aperiam nostrum nulla.','2024-01-17 05:14:41','2024-01-17 05:14:41'),(2,1,'Voluptatum nemo sed excepturi.',NULL,'laravel, api, backend','Berge-Cummings','Antwonton','sheridan85@yost.com','http://www.lubowitz.com/molestiae-aut-doloribus-voluptas-quia','Voluptas porro et voluptas vel nemo. Quia non dolor quaerat deleniti tenetur quasi eius voluptatem. Nostrum sed aut vel ea natus placeat sed. Laboriosam esse consectetur numquam unde qui quis non.','2024-01-17 05:14:41','2024-01-17 05:14:41'),(3,1,'Deserunt a aut dolores omnis fugiat.',NULL,'laravel, api, backend','Gibson-Feil','Mohrshire','austyn80@walker.com','http://www.kuphal.org/expedita-numquam-dolor-nulla-voluptatem-libero','Odit praesentium nihil esse cupiditate impedit iure. Ut occaecati maiores ex pariatur soluta. Consectetur velit deleniti eum sunt similique maxime ducimus. Mollitia hic est quis quia. Ad ab quae corporis. Consequatur optio veniam fugiat explicabo ut dolore qui perspiciatis. Qui autem molestiae dolor quisquam pariatur.','2024-01-17 05:14:41','2024-01-17 05:14:41'),(4,1,'Mollitia voluptatibus eligendi inventore dolorem animi nesciunt non.',NULL,'laravel, api, backend','Corwin-Emard','Lake Madge','wolff.graham@cruickshank.com','http://www.von.com/et-at-possimus-provident-architecto-ut','Temporibus deleniti enim tempora aspernatur sapiente quisquam. Dolorem ab tenetur corrupti saepe ea molestias. Earum natus blanditiis non minus non. Praesentium quam sed dignissimos temporibus. Omnis reprehenderit placeat consequatur harum eum recusandae doloribus dolor. Quisquam voluptates et ducimus ipsam vel necessitatibus sapiente. Molestiae adipisci facilis sint accusamus ut.','2024-01-17 05:14:41','2024-01-17 05:14:41'),(6,2,'New - Veniam facilis accusantium deleniti saepe optio.',NULL,'laravel, api, backend','Murazik PLC','West Erika','bella42@okuneva.com','http://renner.org/','New Voluptatum saepe porro aperiam cumque. Saepe quia ut sunt impedit aut ab. Quisquam voluptate sapiente quis iure officiis et. Animi et aut qui dicta. Voluptatem voluptatibus laboriosam est ut omnis quidem ex. Error non velit numquam vitae vel saepe.','2024-01-17 05:14:41','2024-01-17 09:22:04'),(7,2,'New Senior Full-Stack','logos/OxXaafduxNVZRAze5wAjqaueb6QmnuRZvsrfclp6.png','Laravel, SQL, Vue','Acme','Toronto','acme@acme.com','acme.com','Description Test Test','2024-01-17 08:41:31','2024-01-17 09:12:25');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 13:54:30
