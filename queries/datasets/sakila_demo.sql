CREATE DATABASE sakila_demo;
USE sakila_demo;
CREATE TABLE film (
    film_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    description TEXT,
    release_year YEAR,
    language_id TINYINT UNSIGNED NOT NULL,
    rental_duration TINYINT UNSIGNED NOT NULL DEFAULT 3,
    rental_rate DECIMAL(4,2) NOT NULL DEFAULT 4.99,
    length SMALLINT UNSIGNED,
    replacement_cost DECIMAL(5,2) NOT NULL DEFAULT 19.99,
    rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G'
);

-- 50 ta film qo'shamiz
INSERT INTO film (title, description, release_year, language_id, length, rating)
SELECT title, description, release_year, language_id, length, rating 
FROM sakila.film 
LIMIT 50;
