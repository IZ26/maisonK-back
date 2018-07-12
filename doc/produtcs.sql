CREATE TABLE `products` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`description` varchar(500) NOT NULL,
	`image` varchar(255) NOT NULL,
	`price` int NOT NULL,
	`category` varchar(255) NOT NULL,
	`createdAt` TIMESTAMP NOT NULL,
    `updatedAt` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

-- SALADES --

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Salade grècque', 'Pousse d\'épinard, feta, olives noires, tomates cerise, concombres, avocats', '/static/img/salades/saladegrecque.png', 35, 'salades');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tomate mozzarella basilic', '/static/img/salades/tomatemozza.png', 25, 'salades');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Quinoa norvégien', 'Quinoa, saumon émietté, cramberries, avocats, persil, coriandre, basilic, menthe', '/static/img/salades/quinoanorvegien.png', 35, 'salades');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Assiette d\'antipasti', 'Aubergines frites, courgettes grilées, poivrons grillés, fonds d\'artichaut',  '/static/img/salades/assietteantipasti.png', 35, 'salades');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Tartare de saumon', 'Saumon émietté, avocats', '/static/img/salades/tartaresaumon.png', 45, 'salades');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Salade chinoise poulet', 'Pousse de soja, carottes, choux blanc, salade verte, émincé de poulet grillé, sesame', '/static/img/salades/saladechinoisepoulet.png', 35, 'salades');


-- TARTES --

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte citron meringué', '/static/img/tartes/tartecitron.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte fraise', '/static/img/tartes/tartefraise.png', 40, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte framboise', '/static/img/tartes/tarteframboise.png', 40, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte tout chocolat', '/static/img/tartes/tartetoutchocolat.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte poires amandes chocolat', '/static/img/tartes/tartepoireamandechoco.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte aux pommes et caramel beurre salé', '/static/img/tartes/tartepommescaramel.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte aux pommes façon Cedric Grollet', '/static/img/tartes/tartepommesgrolet.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte infiniment citron', '/static/img/tartes/infinimentcitron.png', 35, 'tarte');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tarte verveine framboise', '/static/img/tartes/tarteverveineframboise.png', 40, 'tarte');


-- PLATEAUX --

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Mini pizza', 'Thon, sauce tomate, olive', '/static/img/plateaux/minipizza.png', 35, 'plateaux');

INSERT INTO `products` (name, image, price, category)
VALUES ('Mini bagel saumon crème cheese ', '/static/img/plateaux/minibagel.png', 40, 'plateaux');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Tartines avocats', 'Pain de campgagne, avocats écrasés, cramberries', '/static/img/plateaux/tartinesavocat.png', 15, 'plateaux');

INSERT INTO `products` (name, description, image, price, category)
VALUES ('Tartines campagnarde', 'Pain de campagne, chèvre miel, figues rôtis, noix', '/static/img/plateaux/tartinecampagnarde.png', 15, 'plateaux');

-- GOUTER --

INSERT INTO `products` (name, image, price, category)
VALUES ('Mousses au chocolat', '/static/img/gouter/moussechocolat.png', 30, 'gouter');

INSERT INTO `products` (name, image, price, category)
VALUES ('Brochettes fruits de saison ', '/static/img/gouter/brochettefruit.png', 30, 'gouter');

INSERT INTO `products` (name, image, price, category)
VALUES ('Verrines fraicheur', '/static/img/gouter/verrinefraicheur.png', 30, 'gouter');

INSERT INTO `products` (name, image, price, category)
VALUES ('Mini brioches au sucre', '/static/img/gouter/minibriochesucre.png', 20, 'gouter');

INSERT INTO `products` (name, image, price, category)
VALUES ('Mini tartelettes', '/static/img/gouter/minitartelettes.png', 35, 'gouter');

INSERT INTO `products` (name, image, price, category)
VALUES ('Brioche nutella caramel', '/static/img/gouter/briochenutellacaramel.png', 30, 'gouter');


-- SPECIALITES --

INSERT INTO `products` (name, image, price, category)
VALUES ('Fantastik mangue passion gimgembre', '/static/img/specialites/fantatsikmanguepassiongingembre.png', 40, 'specialites');

INSERT INTO `products` (name, image, price, category)
VALUES ('Fantastik chocolat praline noisette', '/static/img/specialites/fantastikchoconoisettepralin.png', 40, 'specialites');

INSERT INTO `products` (name, image, price, category)
VALUES ('Fantastik citron vert basilic', '/static/img/specialites/fantatsikcitronvertbasilic.png', 40, 'specialites');

INSERT INTO `products` (name, image, price, category)
VALUES ('Fantastik vanille fruit rouge', '/static/img/specialites/fantatsikvanilleframboise.png', 40, 'specialites');

INSERT INTO `products` (name, image, price, category)
VALUES ('Fantastik pistache framboise', '/static/img/specialites/fantatsikpistacheframboise.png', 40, 'specialites');


-- GATEAUX --

INSERT INTO `products` (name, image, price, category)
VALUES ('Pavlova', '/static/img/gateaux/pavlova.png', 35, 'gateaux');

INSERT INTO `products` (name, image, price, category)
VALUES ('Tiramisu', '/static/img/gateaux/tiramisu.png', 30, 'gateaux');

INSERT INTO `products` (name, image, price, category)
VALUES ('Cheesecake fraise', '/static/img/gateaux/cheesecakefraise.png', 38, 'gateaux');

INSERT INTO `products` (name, image, price, category)
VALUES ('Cheesecake framboise', '/static/img/gateaux/cheesecakeframboise.png', 38, 'gateaux');
