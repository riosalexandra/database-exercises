USE go_db;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
                              id INT UNSIGNED AUTO_INCREMENT NOT NULL,
                              amount DECIMAL(10, 2) NOT NULL,
                              created_at DATETIME NOT NULL,
                              message VARCHAR(200) DEFAULT 'No memo yet',
                              account_id INT NOT NULL,
                              is_fraudulent BOOLEAN DEFAULT 0,
                              PRIMARY KEY(id)
);
