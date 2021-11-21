DROP TABLE IF EXISTS `Articles`;

CREATE TABLE `Articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_tittle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_creation_date` date NOT NULL,
  `article_update_date` date NOT NULL,
  `article_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_deletion_allowed` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `Articles_FK` (`user_id`),
  CONSTRAINT `Articles_FK` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Articles` WRITE;

INSERT INTO `Articles` VALUES (1,'Titulo 1','2021-11-21','2021-11-21','Descripcion 1',1,1),(2,'Titulo 2','2021-11-21','2021-11-21','Descripcion 2',1,2),(3,'Titulo 3','2021-11-21','2021-11-21','Descripcion3',1,3),(4,'Titulo 4','2021-11-21','2021-11-21','Descripcion 4',1,4),(5,'Titulo 5','2021-11-21','2021-11-21','Descripcion 5',1,5),(6,'Titulo 6','2021-11-21','2021-11-21','Descripcion 6',1,6),(7,'Titulo 7','2021-11-21','2021-11-21','Descripcion 7',1,7),(8,'Titulo 8','2021-11-21','2021-11-21','Descripcion 8',1,8),(9,'Titulo 9','2021-11-21','2021-11-21','Descripcion 9',1,9),(10,'Titulo 10','2021-11-21','2021-11-21','Descripcion 10',1,10);

UNLOCK TABLES;

DROP TABLE IF EXISTS `Categories`;

CREATE TABLE `Categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Categories` WRITE;

INSERT INTO `Categories` VALUES (1,'Categoria 1'),(2,'Categoria 2'),(3,'Categoria 3'),(4,'Categoria 4'),(5,'Categoria 5'),(6,'Categoria 6'),(7,'Categoria 7'),(8,'Categoria 8'),(9,'Categoria 9'),(10,' Categoria 10');

UNLOCK TABLES;


CREATE DATABASE `posts_db`;
USE `posts_db`;

DROP TABLE IF EXISTS `Categories_Articles`;

CREATE TABLE `Categories_Articles` (
  `category_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_article_id`),
  KEY `Categories_Articles_FK` (`article_id`),
  KEY `Categories_Articles_FK_1` (`category_id`),
  CONSTRAINT `Categories_Articles_FK` FOREIGN KEY (`article_id`) REFERENCES `Articles` (`article_id`),
  CONSTRAINT `Categories_Articles_FK_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Categories_Articles` WRITE;

INSERT INTO `Categories_Articles` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);

UNLOCK TABLES;

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `Users` WRITE;

INSERT INTO `Users` VALUES (1,'Lionel Messi','lionel.messi@gmail.com'),(2,'Emiliano Martinez','emiliano.martinez@gmail.com'),(3,'Paulo Dybala','paulo.dybala@gmail.com'),(4,'Rodrigo De Paul','rodrigo.de.paul@gmail.com'),(5,'Sergio Aguero','sergio.aguero@gmail.com'),(6,'Lautaro Martinez','lautaro.martinez@gmail.com'),(7,'Joaquin Correa','joaquin.correa@gmail.com'),(8,'Cristian Romero','cristian.romero@gmail.com'),(9,'Julian Alvarez','julian.alvarez@gmail.com'),(10,'Angel Di Maria','angel.di.maria@gmail.com');

UNLOCK TABLES;