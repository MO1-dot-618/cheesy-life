USE cheese;

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

-- Insert data into cheese table
INSERT INTO cheese (name, country, source_id, texture_id, color_id, function_id, price, picture_url, picture_small_url) VALUES
('Cheddar', 'England', 1, 5, 1, 6, 3.99, 'https://example.com/cheddar.jpg', 'https://example.com/cheddar_small.jpg'),
('Brie', 'France', 2, 2, 1, 4, 2.99, 'https://example.com/brie.jpg', 'https://example.com/brie_small.jpg'),
('Gouda', 'Netherlands', 1, 4, 1, 5, 6.99, 'https://example.com/gouda.jpg', 'https://example.com/gouda_small.jpg'),
('Parmesan', 'Italy', 1, 6, 1, 2, 15.99, 'https://example.com/parmesan.jpg', 'https://example.com/parmesan_small.jpg'),
('Camembert', 'France', 2, 2, 1, 6, 11.99, 'https://example.com/camembert.jpg', 'https://example.com/camembert_small.jpg'),
('Roquefort', 'France', 3, 6, 4, 1, 14.99, 'https://example.com/roquefort.jpg', 'https://example.com/roquefort_small.jpg'),
('Mozzarella', 'Italy', 1, 3, 1, 5, 8.99, 'https://example.com/mozzarella.jpg', 'https://example.com/mozzarella_small.jpg'),
('Gruyere', 'Switzerland', 1, 5, 1, 6, 13.99, 'https://example.com/gruyere.jpg', 'https://example.com/gruyere_small.jpg'),
('Feta', 'Greece', 2, 2, 1, 6, 10.49, 'https://example.com/feta.jpg', 'https://example.com/feta_small.jpg'),
('Monterey Jack', 'United States', 1, 4, 1, 5, 9.49, 'https://example.com/monterey_jack.jpg', 'https://example.com/monterey_jack_small.jpg');

SELECT * FROM cheese LIMIT 10;