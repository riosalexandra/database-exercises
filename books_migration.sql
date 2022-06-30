USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books
(
    id               INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title            VARCHAR(200) NOT NULL,
    author           VARCHAR(200) NOT NULL,
    date_published   DATE,
    description      TEXT(200),
    bestseller_weeks INT,
    PRIMARY KEY (id)
);