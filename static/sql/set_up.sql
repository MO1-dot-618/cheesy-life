-- prepares a MySQL server for the project

CREATE DATABASE IF NOT EXISTS cheese_db;
CREATE USER IF NOT EXISTS 'air_dev'@'localhost' IDENTIFIED BY 'air_dev_pwd';
GRANT ALL PRIVILEGES ON `cheese_db`.* TO 'air_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'air_dev'@'localhost';
FLUSH PRIVILEGES;

USE cheese_db;

CREATE TABLE source (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE texture (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE color (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE cheese_function (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE cheese (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(255),
    source_id INT,
    texture_id INT,
    color_id INT,
    function_id INT,
    price FLOAT,
    picture_url VARCHAR(255),
    picture_small_url VARCHAR(255),
    FOREIGN KEY (source_id) REFERENCES source(id),
    FOREIGN KEY (texture_id) REFERENCES texture(id),
    FOREIGN KEY (color_id) REFERENCES color(id),
    FOREIGN KEY (function_id) REFERENCES cheese_function(id)
);