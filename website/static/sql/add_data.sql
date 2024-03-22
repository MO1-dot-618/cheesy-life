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
INSERT INTO cheese (name, country, source_id, texture_id, color_id, function_id, price, picture_url, description) VALUES
('Cheddar', 'England', 3, 3, 2, 2, 3.99, 'https://media.gettyimages.com/id/88307204/photo/wedge-and-shredded-cheddar-cheese-on-white.jpg?s=612x612&w=0&k=20&c=-TpaLfIGBbbrZb0fYZJssEtV1KkXkhBNY9PXmzT3osM=', 'Cheddar is a relatively hard, off-white (or orange if spices such as annatto are added), sometimes sharp-tasting, natural cheese.'),
('Brie', 'France', 2, 1, 1, 1, 12.50, 'https://media.gettyimages.com/id/148985963/photo/camembert-cheese.jpg?s=612x612&w=0&k=20&c=Potx_o5i1bRiOfmQvlpWF-WKWPoGSirnnNRDWibpH3s=', 'Brie is a soft cow''s milk cheese named after Brie, the French region from which it originated.'),
('Gouda', 'Netherlands', 1, 2, 1, 3, 8.75, 'https://media.gettyimages.com/id/157398750/photo/piece-of-dutch-gouda-cheese.jpg?s=612x612&w=0&k=20&c=7tfrVOvzgQYIH04t7EEyF_STQHlawZHVWevDhQ47iBg=', 'Gouda is a mild, yellow cheese made from cow''s milk. It is one of the most popular cheeses worldwide.'),
('Parmesan', 'Italy', 3, 3, 1, 2, 15.25, 'https://media.gettyimages.com/id/155386050/photo/isolated-piece-of-parmesan.jpg?s=612x612&w=0&k=20&c=CCFRpQGSot6A9gYhoq7WGjwz_Um4xXnbsQzoA78P08w=', 'Parmesan cheese, also known as Parmigiano-Reggiano, is a hard, granular cheese originating from Italy. It is aged for several months to years, resulting in a nutty and savory flavor profile. Parmesan is commonly used as a topping for pasta dishes, salads, and soups.'),
('Roquefort', 'France', 2, 1, 4, 1, 18.99, 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Wikicheese_-_Roquefort_-_20150417_-_003.jpg', 'Roquefort is a type of blue cheese made from sheep''s milk in the region of Roquefort-sur-Soulzon, France. It has a creamy texture with blue veins running throughout and a strong, tangy flavor profile. Roquefort is often enjoyed on its own or crumbled over salads and meats.'),
('Manchego', 'Spain', 1, 2, 1, 3, 10.50, 'https://media.gettyimages.com/id/157316390/photo/manchego-cheese.jpg?s=612x612&w=0&k=20&c=HFyUtOH7Uyju9CT1hWt8grIqLbu2OlE8sBwnaLxx54o=', 'Manchego cheese is a semi-hard cheese made from sheep''s milk in the La Mancha region of Spain. It has a buttery texture and a slightly salty, nutty flavor profile. Manchego pairs well with cured meats, fruits, and Spanish wines.'),
('Mozzarella', 'Italy', 3, 1, 1, 1, 6.75, 'https://media.gettyimages.com/id/154947518/photo/fresh-mozzarella-slices.jpg?s=612x612&w=0&k=20&c=-QbLsakxGDybqFIczodaf7QJH24SmsTWgpi8-mkRjuY=', 'Mozzarella cheese is a soft, fresh cheese made from the milk of water buffaloes or cows. It originated in Italy and is known for its mild flavor and smooth texture. Mozzarella is commonly used in dishes such as pizza, caprese salad, and lasagna.'),
('Gruyère', 'Switzerland', 1, 2, 2, 3, 13.50, 'https://media.gettyimages.com/id/200456771-001/photo/wedge-of-gruyere-cheese-on-board-with-knife-close-up.jpg?s=612x612&w=0&k=20&c=MtVcwUGpOaKPECxMNa7h_ma69mr6yNOnkExZZ4LmXDk=', 'Gruyère cheese is a semi-hard cheese originating from Switzerland. It has a rich, creamy texture and a slightly sweet and nutty flavor profile. Gruyère is often used in cooking, particularly in dishes like fondue, quiche, and gratins.'),
('Emmental', 'Switzerland', 1, 2, 1, 3, 11.75, 'https://media.gettyimages.com/id/71285433/photo/block-of-swiss-cheese-close-up.jpg?s=612x612&w=0&k=20&c=T7_cs0eoty94GMJyXyAddkLBS42y-DsdqxwYTQm0NfA=', 'Emmental cheese, also known as Swiss cheese, is a semi-hard cheese with a pale yellow color and characteristic holes. It has a mild, nutty flavor and a firm, elastic texture. Emmental is commonly used in sandwiches, soups, and cheese fondue.'),
('Camembert', 'France', 2, 1, 1, 1, 10.99, 'https://media.gettyimages.com/id/103890489/photo/camembert-and-brie-cheeses.jpg?s=612x612&w=0&k=20&c=oKR0-TbNCyF5vJY1HHlB2xqBfQH4to7iHUM0Tay_fDw=', 'Camembert is a soft, creamy cheese with a bloomy rind, originating from Normandy, France. It has a rich, buttery flavor with earthy undertones. Camembert is often enjoyed spread on bread or crackers, paired with fruits and nuts.'),
('Feta', 'Greece', 1, 1, 1, 1, 7.25, 'https://media.gettyimages.com/id/1383515382/photo/fetta-cheese.jpg?s=612x612&w=0&k=20&c=jTxJk-lsZxNGiEJnBDtokinGKCxU-qdSkzpIwjg-d14=', 'Feta cheese is a crumbly, tangy cheese made from sheep''s milk or a combination of sheep''s and goat''s milk. It originated in Greece and has a salty flavor profile. Feta is commonly used in Greek salads, pastries, and as a topping for grilled vegetables.'),
('Havarti', 'Denmark', 1, 2, 1, 3, 9.50, 'https://media.gettyimages.com/id/92571309/photo/havarti-cheese.jpg?s=612x612&w=0&k=20&c=id0c_EZ72rshY6-R-1czlIFeL61LOhJtiyP6zd7ZINI=', 'Havarti cheese is a semi-soft cheese with a creamy texture and a mild, buttery flavor. It originated in Denmark and is often flavored with herbs, spices, or dill. Havarti melts well, making it ideal for sandwiches, burgers, and cheese sauces.'),
('Edam', 'Netherlands', 1, 2, 1, 3, 8.25, 'https://media.gettyimages.com/id/161816482/photo/piece-of-edam-cheese.jpg?s=612x612&w=0&k=20&c=zXLX_-r7VrpXHLYGgrT4R-cQ5-VHL6ZbictGNbvEXrw=', 'Edam cheese is a semi-hard cheese originating from the Netherlands. It has a pale yellow color and a mild, slightly salty flavor profile. Edam is often enjoyed sliced on sandwiches or crackers, or melted in dishes like grilled cheese sandwiches.'),
('Provolone', 'Italy', 3, 2, 1, 1, 10.75, 'https://media.gettyimages.com/id/117360775/photo/provolone-cheese.jpg?s=612x612&w=0&k=20&c=S-HYApB4cuNbExluZ6Sith96FsCvxVoLP-piiam6cgE=', 'Provolone cheese is an Italian semi-hard cheese with a firm texture and mild, nutty flavor. It is often used in sandwiches, salads, and Italian dishes such as lasagna and pizza.'),
('Boursin', 'France', 2, 1, 1, 1, 14.99, 'https://media.gettyimages.com/id/79318554/photo/boursin-cheese-close-up-differential-focus.jpg?s=612x612&w=0&k=20&c=aGUeaFVDBdY5YRcfg38cwKf-PkDDzZtfu4U2tm_ahUY=', 'Boursin cheese is a creamy, spreadable cheese originating from France. It is flavored with garlic, herbs, and spices, giving it a rich and savory taste. Boursin is commonly served as an appetizer with crackers or bread.'),
('Stilton', 'England', 2, 1, 4, 1, 16.50, 'https://media.gettyimages.com/id/155601400/photo/ripe-stilton-on-cheeseboard.jpg?s=612x612&w=0&k=20&c=17vx3Ka-Hq0XwhYC1bfQBMT0lvDT-8OLV93CX4EoPBc=', 'Stilton is a type of blue cheese made in England. It has a crumbly texture with blue veins running throughout and a rich, tangy flavor profile. Stilton is often enjoyed on its own or crumbled over salads and baked dishes.'),
('Monterey Jack', 'United States', 3, 2, 1, 1, 9.25, 'https://media.gettyimages.com/id/1272152457/photo/colby-jack-cheese.jpg?s=612x612&w=0&k=20&c=PesnA8sOhn1E0sqSuboPadjJkCzVulx4z7TnBz0YafU=', 'Monterey Jack cheese is a semi-hard cheese with a smooth, creamy texture and a mild, buttery flavor. It originated in California and is commonly used in Mexican and American cuisine, including tacos, quesadillas, and burgers.'),
('Colby', 'United States', 3, 2, 1, 1, 7.99, 'https://www.nadlersmeats.com/cdn/shop/products/Colby_Jack_Cheese_1024x1024.JPG?v=1527222079', 'Colby cheese is a semi-hard cheese similar to cheddar, but milder in flavor and softer in texture. It originated in Wisconsin, United States, and is commonly used in sandwiches, casseroles, and cheese platters.'),
('Munster', 'France', 2, 1, 1, 3, 11.99, 'https://media.gettyimages.com/id/1495322779/photo/fresh-munster-cheese-on-table.jpg?s=612x612&w=0&k=20&c=e48xWylYa909EdI_YMH_BWS8attuxQygP1JoPQAr930=', 'Munster cheese is a semi-soft cheese with a strong aroma and creamy texture, originating from the Alsace region of France. It has a tangy, slightly salty flavor profile and is often enjoyed melted on sandwiches or paired with fruit.'),
('Gorgonzola', 'Italy', 3, 1, 4, 1, 17.75, 'https://media.gettyimages.com/id/185224984/photo/gorgonzola.jpg?s=612x612&w=0&k=20&c=mr7ONDlKHXLMa5tt8NKnEv_GWL89jKzqwvJq-EyPFYk=', 'Gorgonzola cheese is a type of blue cheese originating from Italy. It has a crumbly texture with blue veins running throughout and a rich, tangy flavor profile. Gorgonzola is commonly used in salads, pasta dishes, and as a topping for pizza and burgers.'),
('Swiss', 'Switzerland', 1, 2, 1, 3, 10.99, 'https://media.gettyimages.com/id/172766440/photo/swiss-cheese.jpg?s=612x612&w=0&k=20&c=PRgam_AabWj1qQJeKmEzuD6iHQRBGERQALYKgLRWCdM=', 'Swiss cheese, also known as Emmental cheese, is a semi-hard cheese with a pale yellow color and characteristic holes. It has a nutty flavor and melts well, making it ideal for sandwiches, fondues, and cheese sauces.'),
('Bleu', 'France', 2, 1, 4, 1, 18.50, 'https://media.gettyimages.com/id/873016370/photo/blue-veined-cheese-from-france.jpg?s=612x612&w=0&k=20&c=dELHtphgmQ9ubRFoa4U4PlBNPoLYMDRkHGUAK77_A0E=', 'Bleu cheese, also known as blue cheese, is a type of cheese made using cultures of the mold Penicillium. It has a crumbly texture with blue veins running throughout and a strong, tangy flavor. Bleu cheese is often enjoyed on salads, burgers, and in dressings and sauces.'),
('Pepper Jack', 'United States', 3, 2, 1, 1, 9.75, 'https://media.gettyimages.com/id/fdc922507/photo/habanero-jack-cheese-with-cheese-biscuits.jpg?s=612x612&w=0&k=20&c=HhdEHBo7xU8-odQ1Dx6hlRColMeTCVsYtyYsDRUWmIM=', 'Pepper Jack cheese is a semi-soft cheese made with cow''s milk and flavored with spicy peppers, such as jalapeños or habaneros. It has a creamy texture with a spicy kick, making it popular for sandwiches, burgers, and Mexican dishes.'),
('Fontina', 'Italy', 3, 2, 1, 1, 12.99, 'https://media.gettyimages.com/id/1413463264/photo/bowl-of-fontina-cheese-pieces.jpg?s=612x612&w=0&k=20&c=h6bot4qlOXWvwAHTWD-FoetIg6ShZpnuNMdgB3xYG0E=', 'Fontina cheese is a semi-soft cheese with a smooth, creamy texture and a nutty flavor. It originated in Italy and is commonly used in Italian dishes such as fondues, gratins, and risottos.'),
('Limburger', 'Belgium', 2, 1, 1, 3, 13.75, 'https://media.gettyimages.com/id/1412688728/photo/limburger-sliced-on-a-wooden-board.jpg?s=612x612&w=0&k=20&c=SjZ3QkKOazI8Dkrq23QK8Tg7sViuqZegpTiYCELxzqg=', 'Limburger cheese is a soft, pungent cheese with a strong aroma, originating from Belgium. It has a creamy texture and a tangy, robust flavor. Limburger is often enjoyed on rye bread with onions and mustard.'),
('Asiago', 'Italy', 3, 2, 1, 1, 11.50, 'https://media.gettyimages.com/id/163184130/photo/asiago-cheese-aging-in-the-factory.jpg?s=612x612&w=0&k=20&c=5ye8u85yEFReBFOrCIZ9qXfdEhOnCNE9gQfoos_7E4U=', 'Asiago cheese is a semi-hard cheese with a smooth, firm texture and a nutty flavor. It originated in Italy and is commonly used as a table cheese, grated over pasta, or melted in sauces and soups.'),
('Mascarpone', 'Italy', 3, 1, 1, 1, 15.99, 'https://media.gettyimages.com/id/154949190/photo/white-bowl-of-cream-cheese-on-green-placemat.jpg?s=612x612&w=0&k=20&c=P8fpvcNnyxpaiO86X6MCyhH8IePbLQqRxX0tT_x9m0M=', 'Mascarpone cheese is a creamy, spreadable cheese with a delicate flavor. It originated in Italy and is commonly used in desserts such as tiramisu and cheesecake, as well as in savory dishes like pasta sauces.'),
('Jarlsberg', 'Norway', 1, 2, 1, 3, 12.50, 'https://media.gettyimages.com/id/110684876/photo/jarlsberg-cheese-slice.jpg?s=612x612&w=0&k=20&c=AtqjY3DFliv9CkLfc4EuGcr4IlnKQchWlnbt2wYmZRA=', 'Jarlsberg cheese is a semi-hard cheese with a mild, buttery flavor and a smooth, creamy texture. It originated in Norway and is commonly used in sandwiches, salads, and cheese platters.'),
('Brick', 'United States', 3, 2, 1, 1, 8.99, 'https://mongersprovisions.com/cdn/shop/products/brick-cheese-12-lb-659181.jpg?v=1644416744', 'Brick cheese is a semi-soft cheese with a mild, buttery flavor and a creamy texture. It originated in Wisconsin, United States, and is commonly used in sandwiches, casseroles, and cheese platters.');