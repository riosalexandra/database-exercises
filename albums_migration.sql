USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                        artist VARCHAR(200) NOT NULL,
                        name VARCHAR(200) NOT NULL,
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(100),
                        PRIMARY KEY(id)
);