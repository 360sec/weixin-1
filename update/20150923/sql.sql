CREATE TABLE `zfwx_brand` ( 
`id` INT(11) NOT NULL AUTO_INCREMENT , 
`name` VARCHAR(100) NOT NULL , 
`create_time` INT NOT NULL , 
`status` TINYINT(1) NOT NULL , 
PRIMARY KEY (`id`), 
UNIQUE `name_unique` (`name`)
) ENGINE = MyISAM CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE `zfwx_product` ADD `brand` INT(11) NULL AFTER `community_catid`;