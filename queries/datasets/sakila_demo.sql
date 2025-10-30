-- Sakila Demo Database (Rasmiy strukturasi - 5 qatorlik)
-- MySQL Official Sakila Database strukturasiga asoslangan

CREATE DATABASE IF NOT EXISTS sakila_demo;
USE sakila_demo;

--
-- Table structure for table `actor`
--

CREATE TABLE actor (
  actor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id),
  KEY idx_actor_last_name (last_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor` (5 rows)
--

INSERT INTO actor (actor_id, first_name, last_name, last_update) VALUES
(1, 'PENELOPE', 'GUINESS', '2006-02-15 04:34:33'),
(2, 'NICK', 'WAHLBERG', '2006-02-15 04:34:33'),
(3, 'ED', 'CHASE', '2006-02-15 04:34:33'),
(4, 'JENNIFER', 'DAVIS', '2006-02-15 04:34:33'),
(5, 'JOHNNY', 'LOLLOBRIGIDA', '2006-02-15 04:34:33');

--
-- Table structure for table `film`
--

CREATE TABLE film (
  film_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT NULL,
  release_year YEAR DEFAULT NULL,
  language_id TINYINT UNSIGNED NOT NULL,
  original_language_id TINYINT UNSIGNED DEFAULT NULL,
  rental_duration TINYINT UNSIGNED NOT NULL DEFAULT 3,
  rental_rate DECIMAL(4,2) NOT NULL DEFAULT 4.99,
  length SMALLINT UNSIGNED DEFAULT NULL,
  replacement_cost DECIMAL(5,2) NOT NULL DEFAULT 19.99,
  rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (film_id),
  KEY idx_title (title),
  KEY idx_fk_language_id (language_id),
  KEY idx_fk_original_language_id (original_language_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film` (5 rows)
--

INSERT INTO film (film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features) VALUES
(1, 'ACADEMY DINOSAUR', 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 2006, 1, 6, 0.99, 86, 20.99, 'PG', 'Deleted Scenes,Behind the Scenes'),
(2, 'ACE GOLDFINGER', 'A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China', 2006, 1, 3, 4.99, 48, 12.99, 'G', 'Trailers,Deleted Scenes'),
(3, 'ADAPTATION HOLES', 'A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory', 2006, 1, 7, 2.99, 50, 18.99, 'NC-17', 'Trailers,Deleted Scenes'),
(4, 'AFFAIR PREJUDICE', 'A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank', 2006, 1, 5, 2.99, 117, 26.99, 'G', 'Commentaries,Behind the Scenes'),
(5, 'AFRICAN EGG', 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico', 2006, 1, 6, 2.99, 130, 22.99, 'G', 'Deleted Scenes');

--
-- Table structure for table `customer`
--

CREATE TABLE customer (
  customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  store_id TINYINT UNSIGNED NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address_id SMALLINT UNSIGNED NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  create_date DATETIME NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (customer_id),
  KEY idx_fk_store_id (store_id),
  KEY idx_fk_address_id (address_id),
  KEY idx_last_name (last_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer` (5 rows)
--

INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, active, create_date) VALUES
(1, 1, 'MARY', 'SMITH', 'MARY.SMITH@sakilacustomer.org', 5, 1, '2006-02-14 22:04:36'),
(2, 1, 'PATRICIA', 'JOHNSON', 'PATRICIA.JOHNSON@sakilacustomer.org', 6, 1, '2006-02-14 22:04:36'),
(3, 1, 'LINDA', 'WILLIAMS', 'LINDA.WILLIAMS@sakilacustomer.org', 7, 1, '2006-02-14 22:04:36'),
(4, 2, 'BARBARA', 'JONES', 'BARBARA.JONES@sakilacustomer.org', 8, 1, '2006-02-14 22:04:36'),
(5, 1, 'ELIZABETH', 'BROWN', 'ELIZABETH.BROWN@sakilacustomer.org', 9, 1, '2006-02-14 22:04:36');

--
-- Table structure for table `rental`
--

CREATE TABLE rental (
  rental_id INT NOT NULL AUTO_INCREMENT,
  rental_date DATETIME NOT NULL,
  inventory_id MEDIUMINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  return_date DATETIME DEFAULT NULL,
  staff_id TINYINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (rental_id),
  UNIQUE KEY  (rental_date,inventory_id,customer_id),
  KEY idx_fk_inventory_id (inventory_id),
  KEY idx_fk_customer_id (customer_id),
  KEY idx_fk_staff_id (staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental` (5 rows)
--

INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id) VALUES
(1, '2005-05-24 22:53:30', 367, 130, '2005-05-26 22:04:30', 1),
(2, '2005-05-24 22:54:33', 1525, 459, '2005-05-28 19:40:33', 1),
(3, '2005-05-24 23:03:39', 1711, 408, '2005-06-01 22:12:39', 1),
(4, '2005-05-24 23:04:41', 2452, 333, '2005-06-03 01:43:41', 2),
(5, '2005-05-24 23:05:21', 2079, 222, '2005-06-02 04:33:21', 1);

--
-- 1. actor jadvali (5 qator)
--

CREATE TABLE actor (
  actor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO actor (actor_id, first_name, last_name) VALUES
(1, 'PENELOPE', 'GUINESS'),
(2, 'NICK', 'WAHLBERG'),
(3, 'ED', 'CHASE'),
(4, 'JENNIFER', 'DAVIS'),
(5, 'JOHNNY', 'LOLLOBRIGIDA');

--
-- 2. film jadvali (5 qator)
--

CREATE TABLE film (
  film_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT NULL,
  release_year YEAR DEFAULT NULL,
  language_id TINYINT UNSIGNED NOT NULL,
  rental_duration TINYINT UNSIGNED NOT NULL DEFAULT 3,
  rental_rate DECIMAL(4,2) NOT NULL DEFAULT 4.99,
  length SMALLINT UNSIGNED DEFAULT NULL,
  replacement_cost DECIMAL(5,2) NOT NULL DEFAULT 19.99,
  rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (film_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO film (film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating) VALUES
(1, 'ACADEMY DINOSAUR', 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 2006, 1, 6, 0.99, 86, 20.99, 'PG'),
(2, 'ACE GOLDFINGER', 'A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China', 2006, 1, 3, 4.99, 48, 12.99, 'G'),
(3, 'ADAPTATION HOLES', 'A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory', 2006, 1, 7, 2.99, 50, 18.99, 'NC-17'),
(4, 'AFFAIR PREJUDICE', 'A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank', 2006, 1, 5, 2.99, 117, 26.99, 'G'),
(5, 'AFRICAN EGG', 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico', 2006, 1, 6, 2.99, 130, 22.99, 'G');

--
-- 3. customer jadvali (5 qator)
--

CREATE TABLE customer (
  customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  store_id TINYINT UNSIGNED NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address_id SMALLINT UNSIGNED NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  create_date DATETIME NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, active, create_date) VALUES
(1, 1, 'MARY', 'SMITH', 'MARY.SMITH@sakilacustomer.org', 5, 1, '2006-02-14 22:04:36'),
(2, 1, 'PATRICIA', 'JOHNSON', 'PATRICIA.JOHNSON@sakilacustomer.org', 6, 1, '2006-02-14 22:04:36'),
(3, 1, 'LINDA', 'WILLIAMS', 'LINDA.WILLIAMS@sakilacustomer.org', 7, 1, '2006-02-14 22:04:36'),
(4, 2, 'BARBARA', 'JONES', 'BARBARA.JONES@sakilacustomer.org', 8, 1, '2006-02-14 22:04:36'),
(5, 1, 'ELIZABETH', 'BROWN', 'ELIZABETH.BROWN@sakilacustomer.org', 9, 1, '2006-02-14 22:04:36');

--
-- 4. rental jadvali (5 qator)
--

CREATE TABLE rental (
  rental_id INT NOT NULL AUTO_INCREMENT,
  rental_date DATETIME NOT NULL,
  inventory_id MEDIUMINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  return_date DATETIME DEFAULT NULL,
  staff_id TINYINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (rental_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id) VALUES
(1, '2005-05-24 22:53:30', 367, 130, '2005-05-26 22:04:30', 1),
(2, '2005-05-24 22:54:33', 1525, 459, '2005-05-28 19:40:33', 1),
(3, '2005-05-24 23:03:39', 1711, 408, '2005-06-01 22:12:39', 1),
(4, '2005-05-24 23:04:41', 2452, 333, '2005-06-03 01:43:41', 2),
(5, '2005-05-24 23:05:21', 2079, 222, '2005-06-02 04:33:21', 1);

--
-- 5. payment jadvali (5 qator)
--

CREATE TABLE payment (
  payment_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  customer_id SMALLINT UNSIGNED NOT NULL,
  staff_id TINYINT UNSIGNED NOT NULL,
  rental_id INT DEFAULT NULL,
  amount DECIMAL(5,2) NOT NULL,
  payment_date DATETIME NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (payment_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO payment (payment_id, customer_id, staff_id, rental_id, amount, payment_date) VALUES
(1, 1, 1, 76, 2.99, '2005-05-25 11:30:37'),
(2, 1, 1, 573, 0.99, '2005-05-28 10:35:23'),
(3, 1, 1, 1185, 4.99, '2005-06-15 00:54:12'),
(4, 1, 2, 1422, 1.99, '2005-06-15 18:02:53'),
(5, 1, 2, 1476, 2.99, '2005-06-15 21:08:46');
```
