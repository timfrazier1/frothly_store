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
VALUES ("A Beginner's Guide to Collectd","With a growing need to effectively monitor your infrastructure, metrics have emerged as a way to gain insight to the trends and problems within your IT environment. collectd is an open source daemon that collects system and application performance metrics. With this data, collectd then has the ability to work alongside another tool, such as Splunk, to help identify trends, issues and relationships you may not be able to observe otherwise.<br /><br />
This e-book gives you a deep dive into what collectd is and how you can begin incorporating it into your organization\'s environment. Download your complimentary copy of A Beginner\'s Guide to collectd to learn how to:<br />
<ul>
<li>Get and configure collectd</li>
<li>Analyze collectd data</li>
<li>Use Splunk and collectd together to analyze large amounts of infrastructure data</li>", "book","how-to",9.99,1000);

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("A Beginner's Guide to Kubernetes Monitoring","Application container technology, like Kubernetes, is revolutionizing app development, bringing previously unimagined flexibility and efficiency to the development process. But a good container monitoring solution is still necessary for dynamic container-based environments to unify container data with other infrastructure data — only then can you have better contextualization and root cause analysis.<br /><br />
  In this guide, we'll define the importance and benefits of software container monitoring in container vendors today — like Docker, Kubernetes, RedHat OpenShift, or Amazon EKS. Learn what a typical and successful Kubernetes deployment looks like and how to effectively monitor its orchestration.<br /><br />
  Download your copy of A Beginner's Guide to Kubernetes Monitoring to learn:<br />
  <ul>
  <li>About containers and their benefits</li>
  <li>How to deploy Kubernetes</li>
  <li>How to monitor Kubernetes deployments</li>
  </ul>","book","education",11.99,10000);

INSERT INTO product_list (name,description,type,category,price,qty)
VALUES ("Frothly Logo Sticker","When you really need to represent Premium Quality.<br /><br />
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

CREATE TABLE product_images
(
id INTEGER,
imgname TEXT,
filepath TEXT
) COMMENT='Lists images for products';

INSERT INTO product_images (id,imgname,filepath)
VALUES (1,"primary_image","/wstatic/images/a-beginners-guide-to-collectd.png");

INSERT INTO product_images (id,imgname,filepath)
VALUES (2,"primary_image","/wstatic/images/a-beginners-guide-to-collectd.png");

INSERT INTO product_images (id,imgname,filepath)
VALUES (3,"primary_image","/wstatic/images/FrothlyLogo.jpg");

INSERT INTO product_images (id,imgname,filepath)
VALUES (4,"primary_image","/wstatic/images/measuring_beakers.jpg");

INSERT INTO product_images (id,imgname,filepath)
VALUES (5,"primary_image","/wstatic/images/kegs.jpg");

