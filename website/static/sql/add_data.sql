USE cheese_db;

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
('Cheddar', 'England', 1, 5, 2, 4, 3.99, 'https://media.gettyimages.com/id/88307204/photo/wedge-and-shredded-cheddar-cheese-on-white.jpg?s=612x612&w=0&k=20&c=-TpaLfIGBbbrZb0fYZJssEtV1KkXkhBNY9PXmzT3osM=', 'Cheddar is a relatively hard, off-white (or orange if spices such as annatto are added), sometimes sharp-tasting, natural cheese.'),
('Brie', 'France', 1, 2, 2, 1, 12.50, 'https://media.gettyimages.com/id/148985963/photo/camembert-cheese.jpg?s=612x612&w=0&k=20&c=Potx_o5i1bRiOfmQvlpWF-WKWPoGSirnnNRDWibpH3s=', 'Brie is a soft cow''s milk cheese named after Brie, the French region from which it originated.'),
('Gouda', 'Netherlands', 1, 5, 2, 3, 8.75, 'https://media.gettyimages.com/id/157398750/photo/piece-of-dutch-gouda-cheese.jpg?s=612x612&w=0&k=20&c=7tfrVOvzgQYIH04t7EEyF_STQHlawZHVWevDhQ47iBg=', 'Gouda is a mild, yellow cheese made from cow''s milk. It is one of the most popular cheeses worldwide.'),
('Parmesan', 'Italy',  1, 5, 2, 4, 15.25, 'https://media.gettyimages.com/id/155386050/photo/isolated-piece-of-parmesan.jpg?s=612x612&w=0&k=20&c=CCFRpQGSot6A9gYhoq7WGjwz_Um4xXnbsQzoA78P08w=', 'Parmesan cheese, also known as Parmigiano-Reggiano, is a hard, granular cheese originating from Italy. It is aged for several months to years, resulting in a nutty and savory flavor profile. Parmesan is commonly used as a topping for pasta dishes, salads, and soups.'),
('Roquefort', 'France', 3, 3, 4, 1, 18.99, 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Wikicheese_-_Roquefort_-_20150417_-_003.jpg', 'Roquefort is a type of blue cheese made from sheep''s milk in the region of Roquefort-sur-Soulzon, France. It has a creamy texture with blue veins running throughout and a strong, tangy flavor profile. Roquefort is often enjoyed on its own or crumbled over salads and meats.'),
('Manchego', 'Spain', 3, 5, 2, 3, 10.50, 'https://media.gettyimages.com/id/157316390/photo/manchego-cheese.jpg?s=612x612&w=0&k=20&c=HFyUtOH7Uyju9CT1hWt8grIqLbu2OlE8sBwnaLxx54o=', 'Manchego cheese is a semi-hard cheese made from sheep''s milk in the La Mancha region of Spain. It has a buttery texture and a slightly salty, nutty flavor profile. Manchego pairs well with cured meats, fruits, and Spanish wines.'),
('Mozzarella', 'Italy', 1, 3, 1, 2, 6.75, 'https://media.gettyimages.com/id/154947518/photo/fresh-mozzarella-slices.jpg?s=612x612&w=0&k=20&c=-QbLsakxGDybqFIczodaf7QJH24SmsTWgpi8-mkRjuY=', 'Mozzarella cheese is a soft, fresh cheese made from the milk of water buffaloes or cows. It originated in Italy and is known for its mild flavor and smooth texture. Mozzarella is commonly used in dishes such as pizza, caprese salad, and lasagna.'),
('Gruyère', 'Switzerland', 1, 5, 2, 3, 13.50, 'https://media.gettyimages.com/id/200456771-001/photo/wedge-of-gruyere-cheese-on-board-with-knife-close-up.jpg?s=612x612&w=0&k=20&c=MtVcwUGpOaKPECxMNa7h_ma69mr6yNOnkExZZ4LmXDk=', 'Gruyère cheese is a semi-hard cheese originating from Switzerland. It has a rich, creamy texture and a slightly sweet and nutty flavor profile. Gruyère is often used in cooking, particularly in dishes like fondue, quiche, and gratins.'),
('Emmental', 'Switzerland', 1, 4, 2, 3, 11.75, 'https://media.gettyimages.com/id/71285433/photo/block-of-swiss-cheese-close-up.jpg?s=612x612&w=0&k=20&c=T7_cs0eoty94GMJyXyAddkLBS42y-DsdqxwYTQm0NfA=', 'Emmental cheese, also known as Swiss cheese, is a semi-hard cheese with a pale yellow color and characteristic holes. It has a mild, nutty flavor and a firm, elastic texture. Emmental is commonly used in sandwiches, soups, and cheese fondue.'),
('Camembert', 'France', 1, 2, 2, 1, 10.99, 'https://media.gettyimages.com/id/103890489/photo/camembert-and-brie-cheeses.jpg?s=612x612&w=0&k=20&c=oKR0-TbNCyF5vJY1HHlB2xqBfQH4to7iHUM0Tay_fDw=', 'Camembert is a soft, creamy cheese with a bloomy rind, originating from Normandy, France. It has a rich, buttery flavor with earthy undertones. Camembert is often enjoyed spread on bread or crackers, paired with fruits and nuts.'),
('Feta', 'Greece', 1, 2, 1, 1, 7.25, 'https://media.gettyimages.com/id/1383515382/photo/fetta-cheese.jpg?s=612x612&w=0&k=20&c=jTxJk-lsZxNGiEJnBDtokinGKCxU-qdSkzpIwjg-d14=', 'Feta cheese is a crumbly, tangy cheese made from sheep''s milk or a combination of sheep''s and goat''s milk. It originated in Greece and has a salty flavor profile. Feta is commonly used in Greek salads, pastries, and as a topping for grilled vegetables.'),
('Havarti', 'Denmark', 1, 2, 2, 3, 9.50, 'https://media.gettyimages.com/id/92571309/photo/havarti-cheese.jpg?s=612x612&w=0&k=20&c=id0c_EZ72rshY6-R-1czlIFeL61LOhJtiyP6zd7ZINI=', 'Havarti cheese is a semi-soft cheese with a creamy texture and a mild, buttery flavor. It originated in Denmark and is often flavored with herbs, spices, or dill. Havarti melts well, making it ideal for sandwiches, burgers, and cheese sauces.'),
('Edam', 'Netherlands', 1, 5, 2, 4, 8.25, 'https://media.gettyimages.com/id/161816482/photo/piece-of-edam-cheese.jpg?s=612x612&w=0&k=20&c=zXLX_-r7VrpXHLYGgrT4R-cQ5-VHL6ZbictGNbvEXrw=', 'Edam cheese is a semi-hard cheese originating from the Netherlands. It has a pale yellow color and a mild, slightly salty flavor profile. Edam is often enjoyed sliced on sandwiches or crackers, or melted in dishes like grilled cheese sandwiches.'),
('Provolone', 'Italy', 1, 4, 1, 1, 10.75, 'https://media.gettyimages.com/id/117360775/photo/provolone-cheese.jpg?s=612x612&w=0&k=20&c=S-HYApB4cuNbExluZ6Sith96FsCvxVoLP-piiam6cgE=', 'Provolone cheese is an Italian semi-hard cheese with a firm texture and mild, nutty flavor. It is often used in sandwiches, salads, and Italian dishes such as lasagna and pizza.'),
('Boursin', 'France', 1, 2, 1, 1, 14.99, 'https://media.gettyimages.com/id/79318554/photo/boursin-cheese-close-up-differential-focus.jpg?s=612x612&w=0&k=20&c=aGUeaFVDBdY5YRcfg38cwKf-PkDDzZtfu4U2tm_ahUY=', 'Boursin cheese is a creamy, spreadable cheese originating from France. It is flavored with garlic, herbs, and spices, giving it a rich and savory taste. Boursin is commonly served as an appetizer with crackers or bread.'),
('Stilton', 'England', 1, 6, 4, 1, 16.50, 'https://media.gettyimages.com/id/155601400/photo/ripe-stilton-on-cheeseboard.jpg?s=612x612&w=0&k=20&c=17vx3Ka-Hq0XwhYC1bfQBMT0lvDT-8OLV93CX4EoPBc=', 'Stilton is a type of blue cheese made in England. It has a crumbly texture with blue veins running throughout and a rich, tangy flavor profile. Stilton is often enjoyed on its own or crumbled over salads and baked dishes.'),
('Monterey Jack', 'United States', 1, 4, 2, 4, 9.25, 'https://media.gettyimages.com/id/1272152457/photo/colby-jack-cheese.jpg?s=612x612&w=0&k=20&c=PesnA8sOhn1E0sqSuboPadjJkCzVulx4z7TnBz0YafU=', 'Monterey Jack cheese is a semi-hard cheese with a smooth, creamy texture and a mild, buttery flavor. It originated in California and is commonly used in Mexican and American cuisine, including tacos, quesadillas, and burgers.'),
('Colby', 'United States', 1, 4, 2, 4, 7.99, 'https://www.nadlersmeats.com/cdn/shop/products/Colby_Jack_Cheese_1024x1024.JPG?v=1527222079', 'Colby cheese is a semi-hard cheese similar to cheddar, but milder in flavor and softer in texture. It originated in Wisconsin, United States, and is commonly used in sandwiches, casseroles, and cheese platters.'),
('Munster', 'France', 1, 2, 1, 3, 11.99, 'https://media.gettyimages.com/id/1495322779/photo/fresh-munster-cheese-on-table.jpg?s=612x612&w=0&k=20&c=e48xWylYa909EdI_YMH_BWS8attuxQygP1JoPQAr930=', 'Munster cheese is a semi-soft cheese with a strong aroma and creamy texture, originating from the Alsace region of France. It has a tangy, slightly salty flavor profile and is often enjoyed melted on sandwiches or paired with fruit.'),
('Gorgonzola', 'Italy', 1, 6, 4, 1, 17.75, 'https://media.gettyimages.com/id/185224984/photo/gorgonzola.jpg?s=612x612&w=0&k=20&c=mr7ONDlKHXLMa5tt8NKnEv_GWL89jKzqwvJq-EyPFYk=', 'Gorgonzola cheese is a type of blue cheese originating from Italy. It has a crumbly texture with blue veins running throughout and a rich, tangy flavor profile. Gorgonzola is commonly used in salads, pasta dishes, and as a topping for pizza and burgers.'),
('Swiss', 'Switzerland', 1, 5, 2, 3, 10.99, 'https://media.gettyimages.com/id/172766440/photo/swiss-cheese.jpg?s=612x612&w=0&k=20&c=PRgam_AabWj1qQJeKmEzuD6iHQRBGERQALYKgLRWCdM=', 'Swiss cheese, also known as Emmental cheese, is a semi-hard cheese with a pale yellow color and characteristic holes. It has a nutty flavor and melts well, making it ideal for sandwiches, fondues, and cheese sauces.'),
('Bleu', 'France', 1, 6, 4, 1, 18.50, 'https://media.gettyimages.com/id/873016370/photo/blue-veined-cheese-from-france.jpg?s=612x612&w=0&k=20&c=dELHtphgmQ9ubRFoa4U4PlBNPoLYMDRkHGUAK77_A0E=', 'Bleu cheese, also known as blue cheese, is a type of cheese made using cultures of the mold Penicillium. It has a crumbly texture with blue veins running throughout and a strong, tangy flavor. Bleu cheese is often enjoyed on salads, burgers, and in dressings and sauces.'),
('Pepper Jack', 'United States', 1, 3, 2, 4, 9.75, 'https://media.gettyimages.com/id/fdc922507/photo/habanero-jack-cheese-with-cheese-biscuits.jpg?s=612x612&w=0&k=20&c=HhdEHBo7xU8-odQ1Dx6hlRColMeTCVsYtyYsDRUWmIM=', 'Pepper Jack cheese is a semi-soft cheese made with cow''s milk and flavored with spicy peppers, such as jalapeños or habaneros. It has a creamy texture with a spicy kick, making it popular for sandwiches, burgers, and Mexican dishes.'),
('Fontina', 'Italy', 1, 3, 2, 4, 12.99, 'https://media.gettyimages.com/id/1413463264/photo/bowl-of-fontina-cheese-pieces.jpg?s=612x612&w=0&k=20&c=h6bot4qlOXWvwAHTWD-FoetIg6ShZpnuNMdgB3xYG0E=', 'Fontina cheese is a semi-soft cheese with a smooth, creamy texture and a nutty flavor. It originated in Italy and is commonly used in Italian dishes such as fondues, gratins, and risottos.'),
('Limburger', 'Belgium', 1, 3, 1, 3, 13.75, 'https://media.gettyimages.com/id/1412688728/photo/limburger-sliced-on-a-wooden-board.jpg?s=612x612&w=0&k=20&c=SjZ3QkKOazI8Dkrq23QK8Tg7sViuqZegpTiYCELxzqg=', 'Limburger cheese is a soft, pungent cheese with a strong aroma, originating from Belgium. It has a creamy texture and a tangy, robust flavor. Limburger is often enjoyed on rye bread with onions and mustard.'),
('Asiago', 'Italy', 1, 5, 2, 4, 11.50, 'https://media.gettyimages.com/id/163184130/photo/asiago-cheese-aging-in-the-factory.jpg?s=612x612&w=0&k=20&c=5ye8u85yEFReBFOrCIZ9qXfdEhOnCNE9gQfoos_7E4U=', 'Asiago cheese is a semi-hard cheese with a smooth, firm texture and a nutty flavor. It originated in Italy and is commonly used as a table cheese, grated over pasta, or melted in sauces and soups.'),
('Mascarpone', 'Italy', 1, 2, 1, 3, 15.99, 'https://media.gettyimages.com/id/154949190/photo/white-bowl-of-cream-cheese-on-green-placemat.jpg?s=612x612&w=0&k=20&c=P8fpvcNnyxpaiO86X6MCyhH8IePbLQqRxX0tT_x9m0M=', 'Mascarpone cheese is a creamy, spreadable cheese with a delicate flavor. It originated in Italy and is commonly used in desserts such as tiramisu and cheesecake, as well as in savory dishes like pasta sauces.'),
('Jarlsberg', 'Norway', 1, 3, 2, 5, 12.50, 'https://media.gettyimages.com/id/110684876/photo/jarlsberg-cheese-slice.jpg?s=612x612&w=0&k=20&c=AtqjY3DFliv9CkLfc4EuGcr4IlnKQchWlnbt2wYmZRA=', 'Jarlsberg cheese is a semi-hard cheese with a mild, buttery flavor and a smooth, creamy texture. It originated in Norway and is commonly used in sandwiches, salads, and cheese platters.'),
('Brick', 'United States', 1, 4, 3, 1, 8.99, 'https://mongersprovisions.com/cdn/shop/products/brick-cheese-12-lb-659181.jpg?v=1644416744', 'Brick cheese is a semi-soft cheese with a mild, buttery flavor and a creamy texture. It originated in Wisconsin, United States, and is commonly used in sandwiches, casseroles, and cheese platters.'),
("Stracchino", "Italy", 1, 1, 1, 6, 5.99, "https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_917,h_687/https://www.arrigoniformaggi.it/wp-content/uploads/2017/10/stracchino2.jpg", "Stracchino is a soft Italian cheese, creamy in texture and mild in flavor."),
("Graviera Naxou", "Greece", 1, 5, 2, 6, 7.49, "https://thecheeseatlas.com/wp-content/uploads/2022/07/Graviera-Naxou.jpg", "Graviera Naxou is a Greek cheese made from sheep milk, with a semi-hard texture and a slightly nutty flavor."),
("Burrata", "Italy", 1, 1, 1, 1, 8.99, "https://www.allrecipes.com/thmb/EE8z7fxQv5PCg50OgIDbaBQQuRg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-489762056-2000-faa56984032c4880a87f47c7d66d6738.jpg", "Burrata is an Italian cheese made from mozzarella and cream, with a soft texture and a creamy center."),
("Saint-André", "France", 1, 2, 1, 5, 10.99, "https://www.lecomptoirdufromage.fr/wp-content/uploads/2018/04/Saint-Andre-Coupe-1-1920x600.jpg", "Saint-André is a French triple cream cheese, rich and indulgent with a buttery flavor."),
("Reblochon", "France", 1, 3, 1, 1, 9.49, "https://deliss.com.au/cdn/shop/files/Delice-du-Jura-Reblochon-French-cheese-for-tartiflette.png?v=1697076671", "Reblochon is a French cheese with a washed rind, creamy texture, and a nutty flavor."),
("Pljevaljski sir", "Montenegro", 1, 2, 1, 5, 6.99, "https://montebooking.me/images/easyblog_articles/243/pljavlja.jpg", "Pljevaljski sir, a Montenegrin staple, is crafted from raw cow's milk, boasting a strong flavor and creamy texture. Aged in wooden barrels and brine for 15 days, it develops its unique aromas. The cheese stars in the annual event, Dani Pljevaljskog Sira, showcasing regional producers."),
("Melichloro", "Greece", 3, 5, 2, 2, 8.49, "https://www.tasteatlas.com/images/ingredients/2613b3659f3e4bf1a8adab5fbcf3f931.jpg?mw=1300", "Melichloro is a Greek cheese, semi-soft in texture, with a tangy flavor and a hint of herbs."),
("Bryndza Podhalańska", "Poland", 3, 2, 1, 5, 7.99, "https://www.tasteatlas.com/Images/Ingredients/0e348ff2b0314a09afba3d4adfbf43ff.jpg?mw=1300", "Bryndza Podhalańska is a Polish sheep cheese, creamy and spreadable with a sharp flavor."),
("Azeitão", "Portugal", 3, 3, 2, 5, 11.99, "https://www.tasteatlas.com/Images/Ingredients/9ec54b8d2b254934a5d0d2762f713d4c.jpg?mw=1300", "Azeitão is a Portuguese cheese made from sheep milk, soft and creamy with a tangy flavor."),
("Canastra", "Brazil", 1, 4, 2, 5, 12.49, "https://www.tasteatlas.com/images/ingredients/7af3b93da82845a998ca9811312ab986.jpg?mw=1300", "Canastra is a Brazilian cheese with a semi-hard texture, rich flavor, and hints of nuttiness."),
("Oaxaca", "Mexico", 1, 3, 1, 4, 9.99, "https://www.tasteatlas.com/images/ingredients/96cc953bc3284fa79c4c91919de21dd0.jpg?mw=1300", "Oaxaca is a Mexican cheese, similar to mozzarella, with a stringy texture and a mild flavor."),
("Picón Bejes-Tresviso", "Spain", 2, 6, 4, 1, 13.99, "https://www.tasteatlas.com/images/ingredients/1ad02e9037b7439b9881c23e29030d84.jpg?mw=1300", "Picón Bejes-Tresviso is a Spanish blue cheese, creamy and tangy with a strong flavor."),
("Miročki sir", "Serbia", 1, 1, 1, 2, 8.99, "https://www.tasteatlas.com/images/ingredients/22a66339681240c28a69f6b0c7ab249e.jpg?mw=1300", "Miročki sir is a Serbian cheese with a semi-hard texture and a savory taste."),
("Manchego curado", "Spain", 3, 4, 2, 5, 14.99, "https://www.tasteatlas.com/images/ingredients/dcedf8f8dc1e4934b337a096278acfcd.jpg?mw=1300", "Manchego curado is a Spanish cheese made from sheep milk, aged to develop a rich flavor and firm texture."),
("Redykołka", "Poland", 3, 4, 3, 3, 9.99, "https://www.tasteatlas.com/Images/Ingredients/70688ea024ab479abee92d9b606f5cfb.jpg?mw=1300", "Redykołka is a Polish cheese with a hard texture and a sharp, spicy taste."),
("Sulguni", "Georgia", 1, 4, 1, 5, 11.49, "https://www.tasteatlas.com/images/ingredients/193e139e526046e2af77c838afffce02.jpg?mw=1300", "Sulguni is a Georgian cheese, semi-soft and stringy, with a tangy flavor."),
("Stracciatella", "Italy", 1, 1, 1, 2, 10.49, "https://www.tasteatlas.com/images/ingredients/fb55f79e905a4deabcbb4fa509b6c132.jpg?mw=1300", "Stracciatella is an Italian cheese made from buffalo milk, creamy and delicate with a slightly sweet flavor."),
("Époisses", "France", 1, 2, 1, 3, 16.99, "https://www.tasteatlas.com/Images/Ingredients/ac0b39e94aaa44c3bd640a0b2aafabee.jpg?mw=1300", "Époisses is a French cheese with a washed rind, creamy texture, and a strong, pungent aroma."),
("Slovenská Parenica", "Slovakia", 3, 2, 2, 4, 13.49, "https://www.tasteatlas.com/Images/Ingredients/b4d1634be3bf49f6aadf678fc9758cce.jpg?mw=1300", "Slovenská Parenica is a Slovakian cheese, soft and delicate with a mild flavor."),
("Kraftkar", "Norway", 1, 4, 4, 6, 17.49, "https://www.tasteatlas.com/images/ingredients/18768db464204f6294817a370d2eaecf.jpg?mw=1300", "Kraftkar is a Norwegian blue cheese, creamy and rich with a bold, tangy taste."),
("Vegan Cream Cheese", "United States", 4, 1, 1, 3, 17.49,"https://townsquare.media/site/959/files/2022/03/attachment-Cashew-Cream-Cheese-3.jpg?w=980&q=75","Vegan cream cheese provides a plant-based alternative to traditional dairy products. Its creamy texture and subtle flavor make it versatile for spreads, dips, and baking. Ideal for those following a vegan lifestyle, it's a suitable option for sandwiches, bagels, and creamy sauces."),
("Vegan Mozzarella", "United States", 4, 2, 1, 2, 17.49,"https://www.veganblueberry.com/wp-content/uploads/2018/05/Extra-New-Vegan-Mozzarella-5-500x500.jpg", "'Vegan mozzarella offers a plant-based alternative to traditional dairy cheese. With its soft texture and mild flavor, it's perfect for melting on pizzas, pasta dishes, and sandwiches. Made from plant-based ingredients, it's an option for those seeking dairy-free alternatives.");
