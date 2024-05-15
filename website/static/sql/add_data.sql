INSERT INTO source (name) VALUES
('cow'),
('goat'),
('sheep'),
('vegan');

SELECT * FROM source;

INSERT INTO texture (name) VALUES
('fresh'),
('soft'),
('semi-soft'),
('semi-hard'),
('hard'),
('blue');

SELECT * FROM texture;

INSERT INTO color (name) VALUES
('white'),
('yellow'),
('orange'),
('blue');

SELECT * FROM color;

INSERT INTO cheese_function (name) VALUES
('Aging'),
('Melting'),
('Spreading'),
('Cooking'),
('Snacking'),
('Pairing');

SELECT * FROM cheese_function;

ALTER SEQUENCE source_id_seq RESTART WITH 1;

-- Reset sequence for texture table
ALTER SEQUENCE texture_id_seq RESTART WITH 1;

-- Reset sequence for color table
ALTER SEQUENCE color_id_seq RESTART WITH 1;

-- Reset sequence for cheese_function table
ALTER SEQUENCE cheese_function_id_seq RESTART WITH 1;