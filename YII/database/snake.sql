-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: snake
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) CHARACTER SET utf8 NOT NULL,
  `sigla` char(4) CHARACTER SET utf8 NOT NULL,
  `descricao` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `id_3` (`id`),
  UNIQUE KEY `id_5` (`id`),
  KEY `id` (`id`),
  KEY `id_4` (`id`),
  KEY `id_6` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia da Computação','FT05','Engenharia de computação é o ramo da engenharia que lida com a realização de projeto e construção de computadores e de sistemas que integram hardware e software, viabilizando a produção de novas máquinas e de equipamentos computacionais para serem utilizados em diversos setores.'),(2,'Ciência da Computação','IE08','Ciência da computação é a ciência que estuda as técnicas, metodologias e instrumentos computacionais, que automatiza processos e desenvolve soluções baseadas no uso do processamento digital.'),(3,'Sistemas de Informação','IE15','O curso de bacharelado em Sistemas de Informação oferece uma sólida formação profissional em análise e programação para o desenvolvimento de softwares aplicativos. Neste curso, o aluno aprende a projetar, programar, instalar/configurar e a fazer manutenção em sistemas de software para qualquer empresa.'),(4,'Direito','FD01','É a ciência que cuida da aplicação das normas jurídicas vigentes em um país, para organizar as relações entre indivíduos e grupos na sociedade. Zelar pela harmonia e pela correção das relações entre os cidadãos, as empresas e o poder público é a função do bacharel em Direito.');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogada`
--

DROP TABLE IF EXISTS `jogada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_user_2` (`id_user`),
  CONSTRAINT `fd_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogada`
--

LOCK TABLES `jogada` WRITE;
/*!40000 ALTER TABLE `jogada` DISABLE KEYS */;
INSERT INTO `jogada` VALUES (13,5,260,'2017-02-22 11:24:02'),(14,6,180,'2017-02-22 11:37:35'),(15,7,130,'2017-02-22 11:38:55'),(16,8,60,'2017-02-22 11:40:25');
/*!40000 ALTER TABLE `jogada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1487714470),('m130524_201442_init',1487714494);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`),
  KEY `id` (`id`),
  KEY `id_curso` (`id_curso`),
  KEY `id_2` (`id`),
  CONSTRAINT `fd_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'felipedmsantos','B6-xLyJoefwwcJqRdqwrlKlwjOEsgEdN','$2y$13$QAvGMqlWGdkDAreS6wzy4eaEZsvhpn.L1fxNjPMDapH/RoCgxf45q',NULL,'felipedmsantos@gmail.com',10,1487805725,1487805725,1),(6,'matheusoliveira','3EII-MtN5XGJz43NFWCu5eikdaH2GXtk','$2y$13$YNwiOLerXecw54fkB6fLoONO43CZorzZC2IYvzQjSgjcoTKiTiV7.',NULL,'mateus@gmail.com',10,1487806583,1487806583,2),(7,'samanthacorreia','brd35OVqbT3fildoSgB2IC6clNdIF-OI','$2y$13$gWsvTOtzz49.FlU1GG2cuepY7GeqMl2YuUCv9HHtF03laFqZfK7JC',NULL,'samantha@gmail.com',10,1487806690,1487806690,3),(8,'luannypontes','m8kmo-8ToC3sOTaLFq_fOXql8Pyt7aMT','$2y$13$1PCDyZok4bFmR/BZmTkxVOlMYRa07I6YJL7p.biwzaYbcMWVvZdOO',NULL,'luanny@gmail.com',10,1487806794,1487806794,4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-22 19:41:41
