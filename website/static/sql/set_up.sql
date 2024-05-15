CREATE TABLE source (id SERIAL PRIMARY KEY, name VARCHAR(255));

CREATE TABLE texture (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE color (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE cheese_function (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE cheese (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(255),
    source_id INT,
    texture_id INT,
    color_id INT,
    function_id INT,
    price FLOAT,
    picture_url VARCHAR(255),
    picture_small_url VARCHAR(255),
    description TEXT,
    FOREIGN KEY (source_id) REFERENCES source(id),
    FOREIGN KEY (texture_id) REFERENCES texture(id),
    FOREIGN KEY (color_id) REFERENCES color(id),
    FOREIGN KEY (function_id) REFERENCES cheese_function(id)
);
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
AND table_type = 'BASE TABLE';

SELECT 1;