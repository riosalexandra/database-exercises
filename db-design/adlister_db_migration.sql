DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

CREATE TABLE users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE ads
(
    
)