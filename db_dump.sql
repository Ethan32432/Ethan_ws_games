-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cuevas_ws_games
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `game_path` text DEFAULT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  KEY `games_users_fk1_idx` (`author_id`),
  CONSTRAINT `games_users_fk1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Space Adventure','An exciting journey through the cosmos where you pilot a spaceship and explore distant galaxies.','/thumbnails/space-adventure.jpg','space-adventure','/games/space-adventure',1,'2024-03-01 02:00:00','2024-03-01 02:00:00','0000-00-00 00:00:00'),(2,'Puzzle Master','Challenge your mind with hundreds of unique puzzles that increase in difficulty.','/thumbnails/puzzle-master.jpg','puzzle-master','/games/puzzle-master',2,'2024-03-05 03:30:00','2024-03-05 03:30:00','0000-00-00 00:00:00'),(3,'Racing Thunder','High-speed racing action on exotic tracks around the world.','/thumbnails/racing-thunder.jpg','racing-thunder','/games/racing-thunder',3,'2024-03-10 06:20:00','2024-03-10 06:20:00','0000-00-00 00:00:00'),(4,'Fantasy Quest','Embark on an epic RPG adventure in a medieval fantasy world.','/thumbnails/fantasy-quest.jpg','fantasy-quest','/games/fantasy-quest',1,'2024-03-15 01:45:00','2024-03-15 01:45:00','0000-00-00 00:00:00'),(5,'Tower Defense Pro','Defend your kingdom against waves of enemies with strategic tower placement.','/thumbnails/tower-defense-pro.jpg','tower-defense-pro','/games/tower-defense-pro',4,'2024-03-20 08:00:00','2024-03-20 08:00:00','0000-00-00 00:00:00'),(6,'Word Wizard','Expand your vocabulary while having fun with word-based challenges.','/thumbnails/word-wizard.jpg','word-wizard','/games/word-wizard',2,'2024-03-25 05:15:00','2024-03-25 05:15:00','0000-00-00 00:00:00'),(7,'Ocean Explorer','Dive deep into the ocean and discover marine life and hidden treasures.','/thumbnails/ocean-explorer.jpg','ocean-explorer','/games/ocean-explorer',6,'2024-04-01 02:30:00','2024-04-01 02:30:00','0000-00-00 00:00:00'),(8,'Zombie Survival','Survive against hordes of zombies in this intense action game.','/thumbnails/zombie-survival.jpg','zombie-survival','/games/zombie-survival',3,'2024-04-05 07:45:00','2024-04-05 07:45:00','0000-00-00 00:00:00'),(9,'Math Challenge','Sharpen your math skills with fun and engaging arithmetic challenges.','/thumbnails/math-challenge.jpg','math-challenge','/games/math-challenge',4,'2024-04-10 03:00:00','2024-04-10 03:00:00','0000-00-00 00:00:00'),(10,'Platform Jumper','Classic platformer action with challenging levels and power-ups.','/thumbnails/platform-jumper.jpg','platform-jumper','/games/platform-jumper',7,'2024-04-15 06:30:00','2024-04-15 06:30:00','0000-00-00 00:00:00'),(11,'Strategy Empire','Build and manage your empire in this deep strategy game.','/thumbnails/strategy-empire.jpg','strategy-empire','/games/strategy-empire',1,'2024-04-20 01:15:00','2024-04-20 01:15:00','0000-00-00 00:00:00'),(12,'Mystery Mansion','Solve mysteries and uncover secrets in a haunted mansion.','/thumbnails/mystery-mansion.jpg','mystery-mansion','/games/mystery-mansion',8,'2024-04-25 08:45:00','2024-04-25 08:45:00','0000-00-00 00:00:00'),(13,'Sports Arena','Compete in various sports events and become a champion.','/thumbnails/sports-arena.jpg','sports-arena','/games/sports-arena',3,'2024-05-01 04:00:00','2024-05-01 04:00:00','0000-00-00 00:00:00'),(14,'Cooking Fever','Run your own restaurant and serve delicious dishes to customers.','/thumbnails/cooking-fever.jpg','cooking-fever','/games/cooking-fever',9,'2024-05-05 02:20:00','2024-05-05 02:20:00','0000-00-00 00:00:00'),(15,'Ninja Warrior','Master martial arts and defeat enemies with stealth and skill.','/thumbnails/ninja-warrior.jpg','ninja-warrior','/games/ninja-warrior',6,'2024-05-10 07:30:00','2024-05-10 07:30:00','0000-00-00 00:00:00'),(16,'Card Battle','Collect cards and battle opponents in strategic card game matches.','/thumbnails/card-battle.jpg','card-battle','/games/card-battle',2,'2024-05-15 05:45:00','2024-05-15 05:45:00','0000-00-00 00:00:00'),(17,'Farm Simulator','Manage your own farm, grow crops, and raise animals.','/thumbnails/farm-simulator.jpg','farm-simulator','/games/farm-simulator',10,'2024-05-20 03:15:00','2024-05-20 03:15:00','0000-00-00 00:00:00'),(18,'Space Invaders X','Classic arcade action with modern graphics and gameplay.','/thumbnails/space-invaders-x.jpg','space-invaders-x','/games/space-invaders-x',7,'2024-05-25 06:00:00','2024-05-25 06:00:00','0000-00-00 00:00:00'),(19,'Memory Match','Test your memory with increasingly difficult matching challenges.','/thumbnails/memory-match.jpg','memory-match','/games/memory-match',4,'2024-06-01 02:45:00','2024-06-01 02:45:00','0000-00-00 00:00:00'),(20,'Dragon Quest','Become a dragon rider and save the kingdom from evil forces.','/thumbnails/dragon-quest.jpg','dragon-quest','/games/dragon-quest',1,'2024-06-05 08:20:00','2024-06-05 08:20:00','0000-00-00 00:00:00'),(21,'Chess Master','Play chess against AI opponents of varying difficulty levels.','/thumbnails/chess-master.jpg','chess-master','/games/chess-master',8,'2024-06-10 04:30:00','2024-06-10 04:30:00','0000-00-00 00:00:00'),(22,'Block Breaker','Break blocks and clear levels in this addictive puzzle game.','/thumbnails/block-breaker.jpg','block-breaker','/games/block-breaker',9,'2024-06-15 01:50:00','2024-06-15 01:50:00','0000-00-00 00:00:00'),(23,'Adventure Island','Explore a tropical island filled with treasures and dangers.','/thumbnails/adventure-island.jpg','adventure-island','/games/adventure-island',6,'2024-06-20 07:10:00','2024-06-20 07:10:00','0000-00-00 00:00:00'),(24,'Trivia Master','Test your knowledge across various categories in this trivia game.','/thumbnails/trivia-master.jpg','trivia-master','/games/trivia-master',2,'2024-06-25 03:40:00','2024-06-25 03:40:00','0000-00-00 00:00:00'),(25,'Battle Royale','Last player standing wins in this intense multiplayer battle game.','/thumbnails/battle-royale.jpg','battle-royale','/games/battle-royale',3,'2024-07-01 06:55:00','2024-07-01 06:55:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_blocked` tinyint(4) DEFAULT 0,
  `block_reason` varchar(100) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johndoe','john.doe@example.com','2024-02-01 02:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-20 07:30:00','2024-02-01 01:00:00','2025-10-20 07:30:00'),(2,'sarahsmith','sarah.smith@example.com','2024-02-05 03:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-24 02:15:00','2024-02-05 02:00:00','2025-10-24 02:15:00'),(3,'mikejohnson','mike.johnson@example.com','2024-03-10 06:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-23 10:45:00','2024-03-10 05:00:00','2025-10-23 10:45:00'),(4,'emilychen','emily.chen@example.com','2024-03-15 01:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-25 04:00:00','2024-03-15 00:00:00','2025-10-25 04:00:00'),(5,'davidwilson','david.wilson@example.com','2024-04-01 08:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',1,'You have been blocked for spamming.','0000-00-00 00:00:00','2024-04-01 07:00:00','2024-08-15 02:00:00'),(6,'lisagarcia','lisa.garcia@example.com','2024-04-20 02:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-26 00:30:00','2024-04-20 01:00:00','2025-10-26 00:30:00'),(7,'robertlee','robert.lee@example.com','2024-05-05 04:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-22 08:20:00','2024-05-05 03:00:00','2025-10-22 08:20:00'),(8,'jenniferkim','jennifer.kim@example.com','2024-06-10 07:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-21 06:10:00','2024-06-10 06:00:00','2025-10-21 06:10:00'),(9,'chrismartinez','chris.martinez@example.com','2024-07-01 05:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-19 03:45:00','2024-07-01 04:00:00','2025-10-19 03:45:00'),(10,'jessicabrown','jessica.brown@example.com','2024-08-15 03:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-18 01:30:00','2024-08-15 02:00:00','2025-10-18 01:30:00');
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

-- Dump completed on 2025-11-02 20:28:00
