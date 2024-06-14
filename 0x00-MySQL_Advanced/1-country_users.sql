-- creating a table
-- is more about enum

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    country ENUM('US', 'CO', 'TN') NOT NULL
);