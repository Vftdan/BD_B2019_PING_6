CREATE TABLE `Seller`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `password` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `second_name` VARCHAR(255) NOT NULL,
    `surname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `telephone_number` INT NOT NULL,
    `credit_card_info` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Seller` ADD PRIMARY KEY `seller_id_primary`(`id`);
CREATE TABLE `Customer`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `password` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `second_name` VARCHAR(255) NOT NULL,
    `surname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `telephone_number` INT NOT NULL,
    `credit_card_info` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Customer` ADD PRIMARY KEY `customer_id_primary`(`id`);
CREATE TABLE `Item`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `seller_id` INT NOT NULL,
    `initial_price` INT NOT NULL,
    `auction_id` INT NULL,
    `final_price` INT NULL,
    `customer_id` INT NULL,
    `is_paid` TINYINT(1) NOT NULL,
    `is_sent` TINYINT(1) NOT NULL,
    `is_received` TINYINT(1) NOT NULL
);
ALTER TABLE
    `Item` ADD PRIMARY KEY `item_id_primary`(`id`);
CREATE TABLE `Auction`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `organizer_id` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `start_time` DATETIME NOT NULL,
    `end_time` DATETIME NOT NULL
);
ALTER TABLE
    `Auction` ADD PRIMARY KEY `auction_id_primary`(`id`);
CREATE TABLE `Organizer`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Organizer` ADD PRIMARY KEY `organizer_id_primary`(`id`);
ALTER TABLE
    `Item` ADD CONSTRAINT `item_seller_id_foreign` FOREIGN KEY(`seller_id`) REFERENCES `Seller`(`id`);
ALTER TABLE
    `Item` ADD CONSTRAINT `item_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customer`(`id`);
ALTER TABLE
    `Item` ADD CONSTRAINT `item_auction_id_foreign` FOREIGN KEY(`auction_id`) REFERENCES `Auction`(`id`);
ALTER TABLE
    `Auction` ADD CONSTRAINT `auction_organizer_id_foreign` FOREIGN KEY(`organizer_id`) REFERENCES `Organizer`(`id`);