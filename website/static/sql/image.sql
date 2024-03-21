
CREATE TABLE cheese_images (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    cheese_id INT,
    file_name VARCHAR(255),
    file_path VARCHAR(255),
    description TEXT,
    FOREIGN KEY (cheese_id) REFERENCES cheese(id)
);