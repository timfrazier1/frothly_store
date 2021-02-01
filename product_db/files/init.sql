create database products;
use products;

CREATE TABLE product_list
(
id INTEGER AUTO_INCREMENT,
name TEXT,
description TEXT,
type TEXT,
category TEXT,
price FLOAT,
qty INT,
PRIMARY KEY (id)
) COMMENT='Lists products available for purchase';

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("Classic Frothly Logo Sticker","When you really need to represent Premium Quality.<br /><br />
Get some premium quality stickers at a non-premium price.  Represent your favorite home brewing store with pride! <br />
<ul>
<li>3 in x 3 in square size</li>
<li>Won\'t peel off once stuck</li>
<li>Sold in packs of 5</li>", "sticker","merch",3.99,100);

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("Measuring Beakers","A set of 3 Measuring Beakers.<br /><br />
When you need to get the exact amount of premium Frothly ingredients in your brew. <br />
<ul>
<li>Set of 3 - 50ml, 100ml and 150ml </li>
<li>High quality glass material - break resistant, safety glass</li>
<li>Imprinted with Frothly logo</li>", "glass","equipment",9.99,50);

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("Frothly Branded Keg","Standard 15.5 Gallon size.<br /><br />
When you are ready to package your beer professionally with a Frothly touch, choose these Kegs to make a statement. <br />
While I am not 100% sure what the statement is that you will be making, you will definitely be making one. <br />
<ul>
<li>Standard 15.5 Gallon size = 124 pints = 165 12 oz bottles</li>
<li>Don't forget your Frothly Stickers to affix to the side!</li>
<li>Shipping extra</li>", "metal","equipment",49.99,100);

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("NEW Frothly Logo Sticker","When you really need to represent Premium Quality.<br /><br />
Get some premium quality stickers at a non-premium price with the freshly rebranded stickers.  Represent your favorite home brewing store with pride! <br />
<ul>
<li>3 in x 2 in square size</li>
<li>Won\'t peel off once stuck</li>
<li>Sold in packs of 5</li>", "sticker","merch",4.99,100);

CREATE TABLE product_images
(
id INTEGER,
imgname TEXT,
filepath TEXT
) COMMENT='Lists images for products';

INSERT INTO product_images (id,imgname,filepath)
VALUES (1,"primary_image","/wstatic/images/FrothlyLogo.jpg");

INSERT INTO product_images (id,imgname,filepath)
VALUES (2,"primary_image","/wstatic/images/measuring_beakers.jpg");

INSERT INTO product_images (id,imgname,filepath)
VALUES (3,"primary_image","/wstatic/images/kegs.jpeg");

INSERT INTO product_images (id,imgname,filepath)
VALUES (4,"primary_image","/wstatic/images/new_frothly_logo.png");

