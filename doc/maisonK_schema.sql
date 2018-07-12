CREATE TABLE `products` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`description` varchar(500) NOT NULL,
	`image` varchar(255) NOT NULL,
	`price` int NOT NULL,
	`categoryId` int NOT NULL,
	`createdAt` TIMESTAMP NOT NULL,
    `updatedAt` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
	`id` int NOT NULL AUTO_INCREMENT,
	`firstName` varchar(255) NOT NULL,
	`lastName` varchar(255) NOT NULL,
	`mail` varchar(255) NOT NULL UNIQUE,
	`password` varchar(255) NOT NULL,
	`createdAt` TIMESTAMP NOT NULL,
    `updatedAt` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `orders` (
	`id` int NOT NULL AUTO_INCREMENT,
	`userId` int NOT NULL,
	`createdAt` TIMESTAMP NOT NULL,
    `updatedAt` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `order_content` (
	`id` int NOT NULL AUTO_INCREMENT,
	`productsId` int NOT NULL,
	`orderId` int NOT NULL,
	`createdAt` TIMESTAMP NOT NULL,
    `updatedAt` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `products` ADD CONSTRAINT `products_fk0` FOREIGN KEY (`categoryId`) REFERENCES `category`(`id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`userId`) REFERENCES `users`(`id`);

ALTER TABLE `order_content` ADD CONSTRAINT `order_content_fk0` FOREIGN KEY (`productsId`) REFERENCES `products`(`id`);

ALTER TABLE `order_content` ADD CONSTRAINT `order_content_fk1` FOREIGN KEY (`orderId`) REFERENCES `orders`(`id`);
