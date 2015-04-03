/* 创建四级区域数据表  */
CREATE TABLE `zfwx_region_province` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `status` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `zfwx_region_city` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `province_id` INT NOT NULL,
  `status` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `zfwx_region_district` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `city_id` INT NOT NULL,
  `status` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `zfwx_region_community` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `district_id` INT NOT NULL,
  `status` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;

<<<<<<< HEAD
/* 修改会员帐号数据表，增加社区id列和帐号类型列 */
ALTER TABLE `zfwx_users` 
ADD COLUMN `community_id` INT NOT NULL DEFAULT 0 AFTER `truename`,
ADD COLUMN `account_type` TINYINT NOT NULL DEFAULT 0 AFTER `community_id`;

=======
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (1,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (2,'�Ϻ�','1');	
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (3,'���','1');	  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (4,'����','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (5,'������','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (6,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (7,'����','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (8,'���ɹ�','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (9,'����','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (10,'�½�','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (11,'�ຣ','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (12,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (13,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (14,'�ӱ�','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (15,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (16,'ɽ��','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (17,'ɽ��','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (18,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (19,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (20,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (21,'����','1');  
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (22,'�㽭','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (23,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (24,'�㶫','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (25,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (26,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (27,'�Ĵ�','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (28,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (29,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (30,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (31,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (32,'���','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (33,'����','1');
INSERT INTO `zfwx_region_province`  (`id`,`name`, `status`) VALUES (34,'̨��','1');


	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('1','����','1','1');

	   INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('2','�Ϻ�','2','1');

	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('3','���','3','1');

	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('4','����','4','1');

	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('5','������','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('6','�������','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('7','ĵ����','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('8','�׸�','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('9','˫Ѽɽ','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('10','����','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('11','����','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('12','����','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('13','��ľ˹','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('14','��̨��','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('15','�ں�','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('16','�绯','5','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('17','���˰���','5','1');
 
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('18','����','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('19','����','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('20','��ƽ','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('21','��Դ','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('22','ͨ��','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('23','��ɽ','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('24','��ԭ','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('25','�׳�','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('26','�ӱ߳�����','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('27','����','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('28','�Ӽ�','6','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('29','÷�ӿ�','6','1');
  
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('30','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('31','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('32','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('33','��ɽ','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('34','��˳','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('35','��Ϫ','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('36','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('37','��«��','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('38','Ӫ��','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('39','�̽�','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('40','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('41','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('42','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('43','����','7','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('44','�߷���','7','1');  
	
	  
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('45','���ͺ���','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('46','��ͷ','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('47','�ں�','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('48','���','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('49','ͨ��','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('50','������˹','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('51','�����첼��','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('52','���ֹ�����','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('53','�����׶���','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('54','��������','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('55','�˰���','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('56','�����׶�','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('57','���ױ���','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('58','����','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('59',' ��������','8','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('60','���ֺ���','8','1');
	
	  
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('61','����','9','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('62','ʯ��ɽ','9','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('63','����','9','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('64','��ԭ','9','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('460','����','9','1');
	
	  
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('65','��³ľ��','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('66','��������','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('67','��³��','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('68','����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('69','����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('70','������','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('71','��ʲ','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('72','�������տ¶�����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('73','���������ɹ�','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('74','��������','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('75','���������ɹ�','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('76','���������','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('77','����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('78','����̩','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('79','ʡֱϽ�ؼ�������λ','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('82','��������','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('83','�����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('84','ʯ����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('85','��³��','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('86',' ����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('87','����','10','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('89','����','10','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('90','����','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('91','����','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('92',' ��������','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('93','���ϲ���','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('94','���ϲ���','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('95','�������','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('96','��������','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('97','�����ɹ������','11','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('98','���ľ','11','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('99','����','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('100','��ˮ','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('101','���','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('102','����','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('103','������','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('104','�� �� ','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('105','��Ҵ','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('106','ƽ��','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('107','��Ȫ','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('108','����','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('109','����','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('459','¤��','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('110','���ϲ���','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('111','���Ļ���','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('112','����','12','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('113','����','12','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('114','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('115','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('116','�Ӱ�','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('117','ͭ��','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('118','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('119','μ��','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('120','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('121','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('122','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('123','����','13','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('124','����','13','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('125','ʯ��ׯ','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('126','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('127','��ɽ','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('128','�ػʵ�','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('129','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('130','��̨','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('131','�żҿ�','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('132','�е�','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('133','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('134','�ȷ�','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('135','��ˮ','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('136','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('137','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('138','����','14','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('139','����','14','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('140','֣��','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('141','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('142','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('143','ƽ��ɽ','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('144','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('145','�ױ�','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('146','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('147','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('148','���','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('149','���','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('150','���','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('151','����Ͽ','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('152','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('153','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('154','����','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('155','�ܿ�','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('156','פ���','15','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('455','��Դ','15','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('157','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('158','�ൺ','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('159','��̨','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('160','�Ͳ�','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('161','��ׯ','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('162','��Ӫ','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('163','Ϋ��','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('164','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('165','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('166','̩��','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('167','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('168','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('169','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('170','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('171','�ĳ�','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('172','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('173','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('174','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('175','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('176','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('177','��ī','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('178','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('179','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('180','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('181','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('182','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('183','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('184','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('185','��ɽ','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('186','�ٹ�','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('187','����','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('188','�ĵ�','16','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('189','��Զ','16','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('190','̫ԭ','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('191','��ͬ','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('192','˷��','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('193','��Ȫ','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('194','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('195','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('461','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('196','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('197','�ٷ�','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('198','�˳�','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('199','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('200','�ӽ�','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('201','����','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('202','Т��','17','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('203','�ܴ�','17','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('204','�人','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('205','��ʯ','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('206','�差','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('207','ʮ��','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('208','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('209','�˲�','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('210','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('211','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('212','Т��','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('213','�Ƹ�','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('214','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('215','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('216','��ʩ����������','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('217','��½','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('218','��ʩ','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('219','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('220','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('221','Ǳ��','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('222','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('223','����','18','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('456','ʡֱϽ�ؼ�������λ','18','1');
	
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('224','��ɳ','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('225','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('226','��̶','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('227','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('228','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('229','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('230','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('231','�żҽ�','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('232','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('233','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('234','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('235','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('236','¦��','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('237','��������������','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('238','����','19','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('239','�۶�','19','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('240','�Ϸ�','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('241','�ߺ�','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('242','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('243','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('244','��ɽ','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('245','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('246','ͭ��','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('247','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('248','��ɽ','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('249','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('250','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('251','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('252','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('253','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('254','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('255','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('256','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('257','�ɳ�','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('258','����','20','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('259','ͩ��','20','1');
	
	  
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('260','�Ͼ�','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('261','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('262','���Ƹ�','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('263','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('264','��Ǩ','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('265','�γ�','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('266','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('267','̩��','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('268','��ͨ','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('269','��','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('270','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('271','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('272','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('273','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('274','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('275','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('276','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('277','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('278','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('279','��ɽ','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('280','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('281','̫��','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('282','̩�ݻ�','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('283','�⽭','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('284','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('285','����','21','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('286','�żҸ�','21','1');
	 
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('287','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('288','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('289','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('290','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('291','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('292','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('293','��','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('294','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('295','��ɽ','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('296','̨��','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('297','��ˮ','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('298','��Ϫ','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('299','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('300','�','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('301','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('302','�ٰ�','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('303','�ٺ�','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('304','ƽ��','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('305','��','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('306','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('307','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('308','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('309','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('310','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('311','��Ҧ','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('312','����','22','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('313','�²�','22','1');
	  
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('314','�ϲ�','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('315','������','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('316','Ƽ��','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('317','����','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('318','�Ž�','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('319','ӥ̶','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('320','����','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('321','����','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('322','�˴�','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('323','����','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('324','����','23','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('325','�߰�','23','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('326','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('327','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('328','�麣','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('329','��ͷ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('330','�ع�','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('331','��Դ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('332','÷��','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('333','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('334','��β','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('335','��ݸ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('336','��ɽ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('337','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('338','��ɽ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('339','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('340','տ��','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('341','ï��','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('342','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('343','��Զ','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('344','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('345','����','24','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('346','�Ƹ�','24','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('354','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('355','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('356','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('357','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('358','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('359','���Ǹ�','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('360','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('361','���','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('362','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('363','��ɫ','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('364','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('365','�ӳ�','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('366','����','25','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('367','����','25','1');
	
	 
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('368','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('369','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('370','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('371','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('372','Ȫ��','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('373','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('374','��ƽ','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('375','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('376','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('377','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('378','���','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('379','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('380','�ϰ�','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('381','����','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('382','ʯʨ','26','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('383','����','26','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('384','�ɶ�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('385','�Թ�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('386','��֦��','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('387','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('388','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('389','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('390','��Ԫ','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('391','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('392','�ڽ�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('393','��ɽ','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('394','�ϳ�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('395','�˱�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('396','�㰲','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('397','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('398','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('399','�Ű�','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('400','üɽ','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('401','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('402','���Ӳ���Ǽ��','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('403','���β���','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('404','��ɽ����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('405','�㺺','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('406','����','27','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('407','����','27','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('408','����','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('409','����','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('410','��Ϫ','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('411','��ɽ','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('412','��ͨ','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('413','˼é','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('414','�ٲ�','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('415','����','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('416',' ��ɽ׳������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('417','��ӹ���������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('418','��˫���ɴ���','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('419','��������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('420','�������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('421','�º���徰����','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('422','ŭ��������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('423','�������','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('424','����','28','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('458','�ն�','28','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('425','����','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('426','����ˮ','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('427','����','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('428','��˳','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('429','ͭ��','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('430','�Ͻ�','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('431','ǭ���ϲ���������','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('432','ǭ�������嶱��','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('433','ǭ�ϲ���������','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('434','����','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('435','���','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('436','����','29','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('437','ͭ��','29','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('438','����','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('439','����','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('440','����','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('441','ɽ��','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('442','�տ���','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('443','����','30','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('444','��֥','30','1');

	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('445','����','31','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('446','����','31','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('457','ʡֱϽ�ؼ�������λ','31','1');
	  
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('447','���','32','1');
	
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('448','����','33','1');
	  
	
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('449','̨��','34','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('450','����','34','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('451','̨��','34','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('452','̨��','34','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('453','��¡','34','1');
	  INSERT INTO zfwx_region_city(id,name,province_id,status)VALUES('454','����','34','1');
  
 		 
 	  
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('3','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('4','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('5','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('6','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('7','��̨','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('8','ʯ��ɽ','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('9','��ͷ��','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('10','��ƽ','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('11','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('12','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('13','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('14','ƽ��','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('15','˳��','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('16','ͨ��','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('17','����','1','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('18','��ɽ','1','1');
		
		
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('19','�Ӷ�','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('20','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('21','�ӱ�','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('22','�Ͽ�','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('23','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('24','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('25','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('26','���','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('27','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('28','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('29','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('30','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('31',' ����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('32','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('33','���� ','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('34','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('35','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('36','��ƽ','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('37','��˰','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('38','���ü���������','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('39','����','3','1');
			  INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('40','������','3','1');
			
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('41','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('42','�Ŷ�','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('43','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('44','�»�','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('45','�����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('46','ԣ��','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('47','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('48','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('49','���','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('50','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('51','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('52','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('53','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('54','�޻�','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('55','�޼�','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('56','ƽɽ','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('57','Ԫ��','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('58','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('59','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('60','޻��','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('61','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('62','����','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('63','¹Ȫ','125','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('64','���¼���������','125','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('65','·��','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('66','·��','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('67','��ұ','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('68','��ƽ','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('69','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('70','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('71','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('72','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('73','��ͤ','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('74','Ǩ��','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('75','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('76','�ƺ�','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('77','��','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('78','Ǩ��','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('79','����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('80','��������','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('81','���ۿ�����','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('82','«̨������','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('83','�ϱ�������','127','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('84','�����鹤ҵ','127','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('87','������','128','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('88','��������','128','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('89','����','128','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('90','����','128','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('91','¬��','128','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('92','���ü���������','128','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('93','��ɽ','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('94','��̨','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('95','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('96','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('97','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('98','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('99','�ɰ�','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('100','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('101','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('102','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('103','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('104','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('105','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('106','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('107','��ƽ','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('108','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('109','κ��','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('110','����','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('111','�䰲','129','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('112','���ÿ�����','129','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('113','�Ŷ�','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('114','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('115','��̨','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('116','�ٳ�','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('117','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('118','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('119','¡Ң','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('120','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('121','�Ϻ�','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('122','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('123','��¹','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('124','�º�','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('125','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('126','ƽ��','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('127','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('128','���','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('129','����','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('130','�Ϲ�','130','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('131','ɳ��','130','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('132','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('133','��','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('134','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('135','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('136','��Է','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('137','�ˮ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('138','��ƽ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('139','��ˮ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('140','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('141','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('142','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('143','�ݳ�','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('144','�Դ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('145','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('146','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('147','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('148','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('149','���','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('150','˳ƽ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('151','��Ұ','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('152','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('153','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('154','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('155','����','126','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('156','�߱���','126','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('159','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('160','�»�԰','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('161','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('162','�ű�','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('163','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('164','��Դ','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('165','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('166','ε��','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('167','��ԭ','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('168','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('169','��ȫ','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('170','����','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('171','��¹','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('172','���','131','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('173','����','131','1'); 
			
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('174','˫��','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('175','˫��','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('176','ӥ��Ӫ�ӿ�','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('177','�е�','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('178','��¡','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('179','ƽȪ','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('180','��ƽ','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('181','¡��','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('182','��������','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('183','�������','132','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('184','Χ�������ɹ���','132','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('185','�»�','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('186','�˺�','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('187','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('188','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('189','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('190','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('191','��ɽ','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('192','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('193','��Ƥ','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('194','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('195','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('196','�ϴ����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('197','��ͷ','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('198','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('199','����','133','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('200','�Ӽ�','133','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('201','����','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('202','����','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('203','�̰�','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('204','����','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('205','���','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('206','���','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('207','�İ�','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('208','�󳧻���','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('209','����','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('210','����','134','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('211','������','134','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('212','�ҳ�','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('213','��ǿ','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('214','����','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('215','��ǿ','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('216','����','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('217','��ƽ','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('218','�ʳ�','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('219','��','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('220','����','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('221','����','135','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('222','����','135','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('223','С��','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('224','ӭ��','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('225','�ӻ���','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('226','���ƺ','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('227','�����','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('228','��Դ','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('229','����','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('230','����','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('231','¦��','190','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('232','�Ž�','190','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('233','��','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('234','��','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('235','�Ͻ�','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('236','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('237','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('238','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('239','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('240','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('241','��Դ','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('242','����','191','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('243','��ͬ','191','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('244','��','193','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('245','��','193','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('246','��','193','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('247','ƽ��','193','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('248','����','193','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('249','��','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('250','��','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('251','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('252','��ԫ','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('253','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('254','ƽ˳','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('255','���','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('256','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('257','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('258','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('259','����','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('260','��Դ','194','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('261','º��','194','1');
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('262','��','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('263','��ˮ','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('264','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('265','�괨','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('266','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('267','��ƽ','195','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('268','˷��','192','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('269','ƽ³','192','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('270','ɽ��','192','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('271','Ӧ��','192','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('272','����','192','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('273','����','192','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('274','�ܴ�','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('275','����','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('276','��Ȩ','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('277','��˳','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('278','����','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('279','����','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('280','̫��','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('281','����','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('282','ƽң','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('283','��ʯ','196','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('284','����','196','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('285','�κ�','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('286','���','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('287','����','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('288','��ϲ','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('289','�ɽ','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('290','���','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('291','���','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('292','ԫ��','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('293','����','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('294','ƽ½','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('295','�ǳ�','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('296','����','198','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('297','�ӽ�','198','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('298','�ø�','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('299','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('300','��̨','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('301','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('302','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('303','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('304','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('305','���','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('306','��կ','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('307','��','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('308','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('309','����','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('310','ƫ��','195','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('311','ԭƽ','195','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('312','Ң��','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('313','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('314','���','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('315','���','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('316','�鶴','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('317','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('318','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('319','��ɽ','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('320','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('321','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('322','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('323','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('324','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('325','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('326','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('327','����','197','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('328','����','197','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('329','��ʯ','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('330','��ˮ','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('331','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('332','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('333','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('334','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('335','ʯ¥','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('336','���','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('337','��ɽ','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('338','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('339','����','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('340','Т��','199','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('341','����','199','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('342','����','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('343','��Ȫ','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('344','�³�','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('345','����','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('346','��Ĭ������','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('347','�п���','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('348','���ָ��','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('349','��ˮ��','45','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('350','�䴨','45','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('351','����','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('352','������','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('353','��ɽ','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('354','ʯ��','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('355','���ƿ�','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('356','��ԭ','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('357','��Ĭ������','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('358','����','46','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('359','�����ï����������','46','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('360','������','47','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('361','����','47','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('362','�ڴ�','47','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('363','��ɽ','47','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('364','Ԫ��ɽ','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('365','��ɽ','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('366','��³�ƶ�����','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('367','��������','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('368','��������','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('369','����','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('370','��ʲ������','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('371','��ţ����','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('372','��������','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('373','����','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('374','������','48','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('375','�³�','48','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('376','�ƶ���','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('377','�ƶ�����������','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('378','�ƶ����������','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('379','��³','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('380','������','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('381','������','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('382','��³����','49','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('383','���ֹ���','49','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('384','��ʤ','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('385','��������','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('386','׼�����','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('387','���п�ǰ��','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('388','���п���','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('389','������','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('390','������','50','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('391','���������','50','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('392','������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('393','������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('394','Ī�����ߴ��Ӷ���������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('395','���״�������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('396','���¿���������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('397','�°Ͷ�����','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('398','�°Ͷ�������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('399','�°Ͷ�������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('400','������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('401','����ʯ','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('402','������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('403','�������','57','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('404','����','57','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('405','�ٺ�','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('406','��ԭ','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('407','���','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('408','������ǰ��','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('409','����������','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('410','�����غ���','53','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('411','��������','53','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('412','����','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('413','׿��','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('414','����','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('415','�̶�','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('416','�˺�','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('417','����','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('418','���������ǰ��','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('419','�������������','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('420','������������','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('421','��������','59','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('422','����','59','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('423','��������','55','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('424','����ɽ','55','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('425','�ƶ�������ǰ��','55','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('426','�ƶ�����������','55','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('427','��������','55','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('428','ͻȪ','55','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('429','��������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('430','���ֺ���','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('431','���͸���','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('432','����������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('433','����������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('434','������������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('435','������������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('436','̫������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('437','�����','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('438','�������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('439','������','52','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('440','����','52','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('441','����������','54','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('442','����������','54','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('443','�������','54','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('444','��ƽ','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('445','���','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('446','��','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('447','�ʹ�','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('448','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('449','�ռ���','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('450','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('451','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('452','�ں�','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('453','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('454','��ƽ','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('455','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('456','����','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('457','���ü���������','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('458','������','30','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('459','�³��Ӿ��ü���������','30','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('460','��ɽ','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('461','����','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('462','ɳ�ӿ�','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('463','�ʾ���','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('464','��˳��','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('465','����','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('466','����','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('467','�߷���','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('468','������','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('469','ׯ��','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('470','������','31','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('471','��˰','31','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('472','����','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('473','����','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('474','��ɽ','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('475','ǧɽ','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('476','̨��','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('477','�������','33','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('478','����','33','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('479','�¸�','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('480','����','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('481','����','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('482','˳��','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('483','��˳','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('484','�±�����','34','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('485','��ԭ����','34','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('486','ƽɽ','35','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('487','��ɽ','35','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('488','Ϫ��','35','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('489','�Ϸ�','35','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('490','��Ϫ����','35','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('491','��������','35','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('492','Ԫ��','36','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('493','����','36','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('494','��','36','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('495','�������','36','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('496','����','36','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('497','���','36','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('498','����','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('499','���','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('500','̫��','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('501','��ɽ','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('502','��','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('503','�躣','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('504','����','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('505','��ɽ��','32','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('506','���ü���������','32','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('507','վǰ','38','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('508','��','38','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('509','����Ȧ','38','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('510','�ϱ�','38','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('511','����','38','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('512','��ʯ��','38','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('513','����','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('514','����','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('515','̫ƽ','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('516','�����','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('517','ϸ��','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('518','�����ɹ���','40','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('519','����','40','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('520','����','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('521','��ʥ','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('522','��ΰ','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('523','������','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('524','̫�Ӻ�','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('525','����','41','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('526','����','41','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('527','˫̨��','39','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('528','��¡̨','39','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('529','����','39','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('530','��ɽ','39','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('531','����','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('532','���','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('533','����','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('534','����','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('535','��ͼ','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('536','����ɽ','42','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('537','��ԭ','42','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('538','˫��','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('539','����','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('540','����','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('541','��ƽ','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('542','�����������ɹ���','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('543','��Ʊ','43','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('544','��Դ','43','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('545','��ɽ','37','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('546','����','37','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('547','��Ʊ','37','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('548','����','37','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('549','����','37','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('550','�˳�','37','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('551','�Ϲ�','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('552','���','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('553','����','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('554','����','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('555','��԰','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('556','˫��','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('557','ũ��','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('558','��̨','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('559','����','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('560','�»�','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('561','���¾��ÿ�����','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('562','���¼�����ҵ������','18','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('563','���ü���������','18','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('564','����','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('565','��̶','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('566','��Ӫ','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('567','����','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('568','����','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('569','�Ժ�','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('570','���','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('571','����','19','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('572','��ʯ','19','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('573','����','20','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('574','����','20','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('575','����','20','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('576','��ͨ����','20','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('577','������','20','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('578','˫��','20','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('579','��ɽ','21','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('580','����','21','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('581','����','21','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('582','����','21','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('583','����','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('584','������','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('585','ͨ��','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('586','����','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('587','����','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('588','÷�ӿ�','22','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('589','����','22','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('590','�˵���','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('591','����','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('592','����','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('593','���׳�����','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('594','��Դ','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('595','�ٽ�','23','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('596','����','24','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('597','ǰ������˹�ɹ���','24','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('598','����','24','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('599','Ǭ��','24','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('600','����','24','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('601','䬱�','25','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('602','����','25','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('603','ͨ��','25','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('604','���','25','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('605','��','25','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('606','�Ӽ�','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('607','ͼ��','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('608','�ػ�','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('609','����','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('610','����','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('611','����','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('612','����','26','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('613','��ͼ','26','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('614','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('615','�ϸ�','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('616','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('617','�㷻','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('618','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('619','ƽ��','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('620','�ɱ�','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('621','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('622','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('623','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('624','��','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('625','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('626','ľ��','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('627','ͨ��','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('628','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('629','����','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('630','˫��','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('631','��־','5','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('632','�峣','5','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('633','��ɳ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('634','����','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('635','����','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('636','����Ϫ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('637','��������','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('638','����ɽ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('639','÷��˹���Ӷ���','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('640','����','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('641','����','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('642','̩��','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('643','����','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('644','��ԣ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('645','��ɽ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('646','�˶�','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('647','��Ȫ','6','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('648','ګ��','6','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('649','����','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('650','��ɽ','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('651','�ε�','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('652','����','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('653','���Ӻ�','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('654','��ɽ','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('655','����','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('656','����','10','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('657','��ɽ','10','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('658','����','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('659','��ũ','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('660','��ɽ','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('661','�˰�','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('662','��ɽ','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('663','��ɽ','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('664','�ܱ�','8','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('665','���','8','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('666','��ɽ','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('667','�붫','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('668','�ķ�̨','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('669','��ɽ','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('670','����','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('671','����','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('672','����','9','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('673','�ĺ�','9','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('674','����ͼ','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('675','����','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('676','�ú�·','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('677','���','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('678','��ͬ','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('679','����','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('680','��Դ','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('681','�ֵ�','11','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('682','�Ŷ������ɹ���','11','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('683','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('684','�ϲ�','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('685','�Ѻ�','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('686','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('687','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('688','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('689','��Ϫ','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('690','��ɽ��','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('691','��Ӫ','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('692','�����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('693','������','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('694','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('695','������','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('696','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('697','�ϸ���','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('698','����','12','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('699','����','12','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('700','����','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('701','ǰ��','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('702','����','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('703','����','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('704','����','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('705','�봨','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('706','��ԭ','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('707','��Զ','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('708','ͬ��','13','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('709','����','13','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('710','����','14','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('711','��ɽ','14','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('712','���Ӻ�','14','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('713','����','14','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('714','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('715','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('716','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('717','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('718','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('719','�ֿ�','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('720','��Һ�','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('721','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('722','����','7','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('723','����','7','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('724','����','15','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('725','�۽�','15','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('726','ѷ��','15','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('727','����','15','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('728','����','15','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('729','�������','15','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('730','����','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('731','����','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('732','����','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('733','���','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('734','�찲','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('735','��ˮ','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('736','����','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('737','����','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('738','�ض�','16','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('739','����','16','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('740','����','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('741','����','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('742','Į��','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('743','�Ӹ����','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('744','����','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('745','����','17','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('746','����','17','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('747','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('748','¬��','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('749','���','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('750','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('751','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('752','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('753','բ��','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('754','���','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('755','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('756','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('757','��ɽ','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('758','�ζ�','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('759','�ֶ���','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('760','��ɽ','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('761','�ɽ�','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('762','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('763','�ϻ�','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('764','����','2','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('765','����','2','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('766','����','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('767','����','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('768','�ػ�','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('769','����','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('770','��¥','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('771','�¹�','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('772','�ֿ�','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('773','��ϼ','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('774','�껨̨','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('775','����','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('776','����','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('777','��ˮ','260','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('778','�ߴ�','260','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('779','�簲','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('780','�ϳ�','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('781','����','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('782','��ɽ','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('783','��ɽ','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('784','����','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('785','����','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('786','����','271','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('787','����','271','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('788','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('789','��¥','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('790','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('791','Ȫɽ','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('792','ͭɽ','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('793','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('794','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('795','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('796','���','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('797','����','261','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('798','����','261','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('799','����','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('800','��¥','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('801','������','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('802','�±�','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('803','���','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('804','����','270','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('805','��̳','270','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('806','����','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('807','ƽ��','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('808','����','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('809','����','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('810','����','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('811','���','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('812','����','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('813','�żҸ�','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('814','��ɽ','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('815','�⽭','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('816','̫��','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('817','��ҵ԰','272','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('818','����','272','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('819','�紨','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('820','��բ','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('821','����','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('822','�綫','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('823','����','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('824','���','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('825','ͨ��','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('826','����','268','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('827','���ü���������','268','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('828','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('829','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('830','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('831','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('832','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('833','����','262','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('834','����','262','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('835','���','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('836','����','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('837','����','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('838','����','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('839','��ˮ','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('840','����','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('841','����','263','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('842','���','263','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('843','ͤ��','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('844','�ζ�','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('845','��ˮ','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('846','����','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('847','����','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('848','����','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('849','����','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('850','��̨','265','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('851','���','265','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('852','����','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('853','����','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('854','��Ӧ','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('855','����','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('856','����','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('857','����','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('858','ά��','266','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('859','���ÿ�����','266','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('860','����','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('861','����','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('862','��ͽ','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('863','����','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('864','����','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('865','����','269','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('866','����','269','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('867','����','267','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('868','�߸�','267','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('869','�˻�','267','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('870','����','267','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('871','̩��','267','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('872','����','267','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('873','�޳�','264','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('874','��ԥ','264','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('875','����','264','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('876','����','264','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('877','����','264','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('878','�ϳ�','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('879','�³�','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('880','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('881','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('882','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('883','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('884','��ɽ','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('885','�ຼ','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('886','ͩ®','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('887','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('888','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('889','����','287','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('890','�ٰ�','287','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('891','����','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('892','����','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('893','����','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('894','����','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('895','��','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('896','۴��','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('897','��ɽ','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('898','����','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('899','��Ҧ','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('900','��Ϫ','288','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('901','�','288','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('902','¹��','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('903','����','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('904','걺�','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('905','��ͷ','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('906','����','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('907','ƽ��','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('908','����','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('909','�ĳ�','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('910','̩˳','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('911','��','289','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('912','����','289','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('913','����','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('914','����','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('915','����','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('916','����','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('917','ƽ��','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('918','ͩ��','290','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('919','�Ϻ�','290','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('920','����','291','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('921','���','291','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('922','����','291','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('923','����','291','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('924','����','291','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('925','Խ��','292','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('926','����','292','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('927','�²�','292','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('928','����','292','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('929','����','292','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('930','����','292','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('931','�ĳ�','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('932','��','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('933','����','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('934','�ֽ�','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('935','�Ͱ�','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('936','��Ϫ','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('937','����','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('938','����','293','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('939','����','293','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('940','�³�','294','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('941','�齭','294','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('942','��ɽ','294','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('943','����','294','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('944','����','294','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('945','��ɽ','294','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('946','����','295','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('947','����','295','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('948','�ɽ','295','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('949','����','295','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('950','����','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('951','·��','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('952','����','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('953','��','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('954','����','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('955','��̨','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('956','�ɾ�','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('957','����','296','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('958','�ٺ�','296','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('959','����','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('960','����','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('961','����','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('962','���','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('963','����','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('964','�ƺ�','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('965','��Ԫ','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('966','�������','297','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('967','��Ȫ','297','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('968','����','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('969','®��','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('970','��ɽ','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('971','����','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('972','����','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('973','�ʶ�','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('974','����','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('975','���ü���������','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('976','��վ����','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('977','�����Ļ���','240','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('978','���¼�����ҵ������','240','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('979','����','241','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('980','𯽭','241','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('981','�ߺ�','241','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('982','����','241','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('983','����','241','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('984','߮��','241','1');
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('985','��ɽ','241','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('986','���Ӻ�','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('987','��ɽ','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('988','���','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('989','����','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('990','��Զ','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('991','���','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('992','����','242','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('993','��ͨ','243','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('994','�����','243','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('995','л�Ҽ�','243','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('996','�˹�ɽ','243','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('997','�˼�','243','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('998','��̨','243','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('999','��ɽ','244','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1000','��ɽ','244','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1001','���ׯ','244','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1002','��Ϳ','244','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1003','���ü���������','244','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1004','�ż�','245','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1005','��ɽ','245','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1006','��ɽ','245','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1007','�Ϫ','245','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1008','ͭ��ɽ','246','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1009','ʨ��ɽ','246','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1010','����','246','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1011','ͭ��','246','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1012','ӭ��','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1013','���','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1014','����','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1015','����','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1016','Ǳɽ','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1017','̫��','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1018','����','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1019','����','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1020','����','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1021','ͩ��','247','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1022','����','247','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1023','��Ϫ','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1024','��ɽ','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1025','����','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1026','���','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1027','����','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1028','����','248','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1029','����','248','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1030','����','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1031','����','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1032','����','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1033','ȫ��','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1034','��Զ','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1035','����','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1036','�쳤','249','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1037','����','249','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1038','���','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1039','򣶫','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1040','�Ȫ','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1041','��Ȫ','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1042','̫��','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1043','����','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1044','���','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1045','����','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1046','���ÿ�����','250','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1047','����','251','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1048','�ɽ','251','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1049','����','251','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1050','���','251','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1051','����','251','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1052','�ӳ�','252','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1053','®��','252','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1054','��Ϊ','252','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1055','��ɽ','252','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1056','����','252','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1057','��','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1058','ԣ��','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1059','����','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1060','����','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1061','���','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1062','��կ','253','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1063','��ɽ','253','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1064','�۳�','254','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1065','����','254','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1066','�ɳ�','254','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1067','����','254','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1068','���','255','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1069','����','255','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1070','ʯ̨','255','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1071','����','255','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1072','����','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1073','��Ϫ','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1074','���','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1075','��','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1076','��Ϫ','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1077','캵�','256','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1078','����','256','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1079','��¥','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1080','̨��','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1081','��ɽ','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1082','��β','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1083','����','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1084','����','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1085','����','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1086','��Դ','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1087','����','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1088','��̩','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1089','ƽ̶','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1090','����','368','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1091','����','368','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1092','˼��','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1093','����','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1094','����','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1095','����','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1096','ͬ��','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1097','�谲','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1098','������','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1099','���챣˰','369','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1100','������','369','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1101','����','371','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1102','����','371','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1103','���','371','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1104','����','371','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1105','����','371','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1106','÷��','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1107','��Ԫ','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1108','��Ϫ','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1109','����','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1110','����','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1111','����','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1112','��Ϫ','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1113','ɳ','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1114','����','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1115','̩��','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1116','����','370','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1117','����','370','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1118','���','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1119','����','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1120','�彭','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1121','Ȫ��','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1122','�ݰ�','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1123','��Ϫ','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1124','����','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1125','�»�','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1126','����','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1127','ʯʨ','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1128','����','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1129','�ϰ�','372','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1130','���ü���������','372','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1131','ܼ��','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1132','����','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1133','����','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1134','����','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1135','گ��','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1136','��̩','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1137','��ɽ','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1138','�Ͼ�','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1139','ƽ��','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1140','����','373','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1141','����','373','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1142','��ƽ','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1143','˳��','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1144','�ֳ�','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1145','����','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1146','��Ϫ','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1147','����','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1148','����','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1149','����ɽ','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1150','���','374','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1151','����','374','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1152','����','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1153','��͡','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1154','����','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1155','�Ϻ�','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1156','��ƽ','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1157','����','375','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1158','��ƽ','375','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1159','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1160','ϼ��','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1161','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1162','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1163','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1164','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1165','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1166','����','376','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1167','����','376','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1168','����','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1169','����','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1170','������','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1171','����','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1172','��ɽ��','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1173','�ϲ�','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1174','�½�','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1175','����','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1176','����','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1177','���ü���������','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1178','���̲��','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1179','���¼�����ҵ������','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1180','ɣ�����ü���������','314','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1181','Ӣ�۾��ÿ�����','314','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1182','����','315','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1183','��ɽ','315','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1184','����','315','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1185','��ƽ','315','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1186','��Դ','316','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1187','�涫','316','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1188','����','316','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1189','����','316','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1190','«Ϫ','316','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1191','®ɽ','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1192','���','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1193','�Ž�','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1194','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1195','��ˮ','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1196','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1197','�°�','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1198','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1199','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1200','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1201','����','318','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1202','���','318','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1203','��ˮ','317','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1204','����','317','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1205','�º�','319','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1206','�཭','319','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1207','��Ϫ','319','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1208','�¹�','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1209','��','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1210','�ŷ�','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1211','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1212','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1213','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1214','��Զ','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1215','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1216','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1217','ȫ��','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1218','����','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1219','�ڶ�','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1220','�˹�','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1221','���','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1222','Ѱ��','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1223','ʯ��','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1224','���','320','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1225','�Ͽ�','320','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1226','����','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1227','��ԭ','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1228','����','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1229','��ˮ','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1230','Ͽ��','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1231','�¸�','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1232','����','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1233','̩��','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1234','�촨','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1235','��','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1236','����','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1237','����','321','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1238','����ɽ','321','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1239','Ԭ��','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1240','����','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1241','����','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1242','�ϸ�','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1243','�˷�','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1244','����','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1245','ͭ��','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1246','���','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1247','����','322','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1248','�߰�','322','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1249','�ٴ�','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1250','�ϳ�','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1251','�质','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1252','�Ϸ�','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1253','����','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1254','�ְ�','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1255','�˻�','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1256','��Ϫ','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1257','��Ϫ','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1258','����','323','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1259','���','323','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1260','����','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1261','����','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1262','���','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1263','��ɽ','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1264','Ǧɽ','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1265','���','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1266','߮��','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1267','���','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1268','۶��','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1269','����','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1270','��Դ','324','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1271','����','324','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1272','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1273','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1274','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1275','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1276','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1277','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1278','ƽ��','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1279','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1280','�̺�','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1281','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1282','����','157','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1283','���ÿ�����','157','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1284','����','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1285','�б�','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1286','�ķ�','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1287','�Ƶ�','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1288','��ɽ','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1289','���','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1290','����','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1291','����','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1292','��ī','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1293','ƽ��','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1294','����','158','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1295','����','158','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1296','�ʹ�','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1297','�ŵ�','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1298','��ɽ','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1299','����','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1300','�ܴ�','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1301','��̨','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1302','����','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1303','��Դ','160','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1304','����','160','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1305','����','161','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1306','Ѧ��','161','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1307','ỳ�','161','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1308','̨��ׯ','161','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1309','ɽͤ','161','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1310','����','161','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1311','��Ӫ','162','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1312','�ӿ�','162','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1313','����','162','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1314','����','162','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1315','����','162','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1316','֥�','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1317','��ɽ','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1318','Ĳƽ','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1319','��ɽ','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1320','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1321','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1322','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1323','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1324','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1325','��Զ','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1326','��ϼ','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1327','����','159','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1328','������','159','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1329','Ϋ��','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1330','��ͤ','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1331','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1332','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1333','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1334','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1335','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1336','���','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1337','�ٹ�','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1338','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1339','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1340','����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1341','���ÿ�����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1342','�������ÿ�����','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1343','���¼���������','163','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1344','���ڼӹ�','163','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1345','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1346','�γ�','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1347','΢ɽ','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1348','��̨','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1349','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1350','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1351','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1352','��ˮ','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1353','��ɽ','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1354','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1355','����','165','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1356','�޳�','165','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1357','̩ɽ','166','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1358','���','166','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1359','����','166','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1360','��ƽ','166','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1361','��̩','166','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1362','�ʳ�','166','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1363','����','164','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1364','�ĵ�','164','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1365','�ٳ�','164','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1366','��ɽ','164','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1367','���ü���������','164','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1368','�߼���������','164','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1369','����','167','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1370','�ɽ','167','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1371','����','167','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1372','��','167','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1373','����','168','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1374','�ֳ�','168','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1375','��ɽ','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1376','��ׯ','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1377','�Ӷ�','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1378','����','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1379','۰��','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1380','��ˮ','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1381','��ɽ','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1382','��','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1383','ƽ��','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1384','����','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1385','����','170','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1386','����','170','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1387','�³�','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1388','��','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1389','����','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1390','����','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1391','����','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1392','���','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1393','ƽԭ','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1394','�Ľ�','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1395','���','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1396','����','169','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1397','���','169','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1398','������','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1399','����','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1400','ݷ','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1401','��ƽ','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1402','����','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1403','��','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1404','����','171','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1405','����','171','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1406','����','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1407','����','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1408','����','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1409','���','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1410','մ��','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1411','����','172','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1412','��ƽ','172','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1413','ĵ��','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1414','��','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1415','��','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1416','����','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1417','��Ұ','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1418','۩��','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1419','۲��','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1420','����','175','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1421','����','175','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1422','��ԭ','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1423','����','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1424','�ܳǻ���','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1425','��ˮ','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1426','�Ͻ�','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1427','��Ĳ','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1428','����','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1429','����','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1430','����','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1431','��֣','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1432','�Ƿ�','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1433','���¼���������','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1434','�ݼ�','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1435','���ü���������','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1436','֣����','140','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1437','���ڼӹ�','140','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1438','��ͤ','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1439','˳�ӻ���','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1440','��¥','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1441','�','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1442','ͨ��','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1443','ξ��','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1444','����','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1445','����','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1446','����','142','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1447','����̨','142','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1448','�ϳ�','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1449','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1450','�e�ӻ���','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1451','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1452','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1453','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1454','�Ͻ�','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1455','�°�','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1456','�ﴨ','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1457','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1458','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1459','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1460','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1461','����','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1462','��ʦ','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1463','���¼���������','141','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1464','���ü���������','141','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1465','�»�','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1466','����','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1467','ʯ��','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1468','տ��','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1469','����','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1470','Ҷ��','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1471','³ɽ','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1472','ۣ','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1473','���','143','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1474','����','143','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1475','�ķ�','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1476','����','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1477','��','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1478','����','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1479','����','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1480','����','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1481','����','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1482','�ڻ�','147','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1483','����','147','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1484','��ɽ','145','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1485','ɽ��','145','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1486','俱�','145','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1487','����','145','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1488','���','145','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1489','����','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1490','����','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1491','��Ȫ','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1492','��Ұ','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1493','����','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1494','���','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1495','ԭ��','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1496','�ӽ�','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1497','����','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1498','��ԫ','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1499','����','146','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1500','����','146','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1501','���','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1502','��վ','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1503','���','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1504','ɽ��','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1505','����','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1506','����','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1507','����','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1508','����','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1509','����','144','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1510','����','144','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1511','����','148','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1512','���','148','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1513','����','148','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1514','����','148','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1515','̨ǰ','148','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1516','���','148','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1517','κ��','149','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1518','���','149','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1519','۳��','149','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1520','���','149','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1521','����','149','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1522','����','149','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1523','Դ��','150','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1524','۱��','150','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1525','����','150','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1526','����','150','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1527','���','150','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1528','����','151','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1529','�ų�','151','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1530','����','151','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1531','¬��','151','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1532','����','151','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1533','�鱦','151','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1534','���','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1535','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1536','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1537','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1538','��Ͽ','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1539','��ƽ','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1540','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1541','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1542','����','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1543','�ƺ�','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1544','��Ұ','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1545','ͩ��','152','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1546','����','152','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1547','��԰','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1548','���','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1549','��Ȩ','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1550','���','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1551','����','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1552','�ϳ�','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1553','�ݳ�','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1554','����','153','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1555','����','153','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1556','����','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1557','ƽ��','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1558','��ɽ','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1559','��ɽ','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1560','����','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1561','�̳�','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1562','��ʼ','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1563','�괨','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1564','����','154','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1565','Ϣ��','154','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1566','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1567','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1568','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1569','��ˮ','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1570','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1571','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1572','����','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1573','̫��','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1574','¹��','155','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1575','���','155','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1576','���','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1577','��ƽ','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1578','�ϲ�','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1579','ƽ��','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1580','����','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1581','ȷɽ','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1582','����','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1583','����','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1584','��ƽ','156','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1585','�²�','156','1'); 
			 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1587','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1588','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1589','�~��','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1590','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1591','���','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1592','��ɽ','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1593','��ɽ','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1594','������','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1595','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1596','�̵�','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1597','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1598','����','204','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1599','����','204','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1600','��ʯ��','205','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1601','����ɽ','205','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1602','��½','205','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1603','��ɽ','205','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1604','����','205','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1605','��ұ','205','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1606','é��','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1607','����','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1608','��','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1609','����','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1610','��ɽ','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1611','��Ϫ','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1612','����','207','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1613','������','207','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1614','����','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1615','��Ҹ�','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1616','���','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1617','�ͤ','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1618','����','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1619','Զ��','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1620','��ɽ','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1621','����','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1622','����������','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1623','���������','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1624','�˶�','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1625','����','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1626','֦��','209','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1627','���ü���������','209','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1628','���','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1629','����','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1630','����','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1631','����','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1632','�ȳ�','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1633','����','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1634','�Ϻӿ�','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1635','����','206','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1636','�˳�','206','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1637','���Ӻ�','211','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1638','����','211','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1639','����','211','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1640','����','210','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1641','�޵�','210','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1642','��ɽ','210','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1643','ɳ��','210','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1644','����','210','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1645','Т��','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1646','Т��','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1647','����','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1648','����','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1649','Ӧ��','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1650','��½','212','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1651','����','212','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1652','ɳ��','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1653','����','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1654','����','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1655','����','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1656','����','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1657','ʯ��','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1658','���','208','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1659','����','208','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1660','����','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1661','�ŷ�','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1662','�찲','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1663','����','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1664','Ӣɽ','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1665','�ˮ','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1666','ޭ��','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1667','��÷','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1668','���','213','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1669','��Ѩ','213','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1670','�̰�','214','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1671','����','214','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1672','ͨ��','214','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1673','����','214','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1674','ͨɽ','214','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1675','���','214','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1676','����','215','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1677','��ˮ','215','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1678','��ʩ','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1679','����','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1680','��ʼ','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1681','�Ͷ�','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1682','����','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1683','�̷�','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1684','����','216','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1685','�׷�','216','1'); 
			 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2997','ʡֱϽ�ؼ�������λ','450','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1686','����','450','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1687','Ǳ��','450','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1688','����','450','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1689','��ũ����','450','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1690','ܽ��','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1691','����','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1692','��´','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1693','����','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1694','�껨','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1695','��ɳ','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1696','����','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1697','����','224','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1698','���','224','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1699','����','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1700','«��','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1701','ʯ��','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1702','��Ԫ','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1703','����','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1704','����','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1705','����','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1706','����','225','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1707','����','225','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1708','���','226','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1709','����','226','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1710','��̶','226','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1711','����','226','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1712','��ɽ','226','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1713','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1714','���','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1715','ʯ��','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1716','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1717','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1718','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1719','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1720','��ɽ','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1721','�ⶫ','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1722','�','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1723','����','227','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1724','����','227','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1725','˫��','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1726','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1727','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1728','�۶�','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1729','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1730','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1731','¡��','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1732','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1733','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1734','����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1735','�ǲ�����','228','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1736','���','228','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1737','����¥','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1738','��Ϫ','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1739','��ɽ','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1740','����','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1741','����','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1742','����','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1743','ƽ��','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1744','����','229','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1745','����','229','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1746','����','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1747','����','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1748','����','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1749','����','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1750','�','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1751','���','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1752','��Դ','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1753','ʯ��','230','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1754','����','230','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1755','����','231','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1756','����Դ','231','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1757','����','231','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1758','ɣֲ','231','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1759','����','232','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1760','��ɽ','232','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1761','����','232','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1762','�ҽ�','232','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1763','����','232','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1764','�佭','232','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1765','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1766','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1767','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1768','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1769','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1770','�κ�','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1771','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1772','���','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1773','��','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1774','����','233','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1775','����','233','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1776','��ˮ̲','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1777','����','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1778','����','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1779','˫��','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1780','��','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1781','����','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1782','��Զ','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1783','��ɽ','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1784','����','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1785','��������','234','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1786','����','234','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1787','�׳�','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1788','�з�','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1789','����','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1790','��Ϫ','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1791','����','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1792','��ͬ','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1793','��������','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1794','�»ζ���','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1795','�ƽ�����','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1796','�������嶱��','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1797','ͨ������','235','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1798','�齭','235','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1799','¦��','236','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1800','˫��','236','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1801','�»�','236','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1802','��ˮ��','236','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1803','��Դ','236','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1804','����','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1805','��Ϫ','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1806','���','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1807','��ԫ','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1808','����','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1809','����','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1810','��˳','237','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1811','��ɽ','237','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1812','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1813','Խ��','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1814','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1815','���','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1816','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1817','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1818','��خ','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1819','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1820','����','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1821','�ӻ�','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1822','��ɳ','326','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1823','�ܸ�','326','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1824','�佭','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1825','䥽�','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1826','����','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1827','ʼ��','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1828','�ʻ�','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1829','��Դ','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1830','��Դ����','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1831','�·�','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1832','�ֲ�','330','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1833','����','330','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1834','�޺�','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1835','����','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1836','��ɽ','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1837','����','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1838','����','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1839','����','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1840','������','327','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1841','ƺɽ��','327','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1842','����','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1843','����','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1844','����','328','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1845','����','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1846','��ƽ','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1847','婽�','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1848','����','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1849','����','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1850','�κ�','328','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1851','�ϰ�','328','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1852','����','338','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1853','�Ϻ�','338','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1854','˳��','338','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1855','��ˮ','338','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1856','����','338','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1857','�','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1858','����','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1859','�»�','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1860','̨ɽ','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1861','��ƽ','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1862','��ɽ','337','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1863','��ƽ','337','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1864','�࿲','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1865','ϼɽ','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1866','��ͷ','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1867','����','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1868','��Ϫ','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1869','����','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1870','����','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1871','����','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1872','�⴨','340','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1873','������','340','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1874','ï��','341','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1875','ï��','341','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1876','���','341','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1877','����','341','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1878','����','341','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1879','����','341','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1880','����','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1881','����','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1882','����','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1883','����','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1884','�⿪','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1885','����','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1886','��Ҫ','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1887','�Ļ�','342','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1888','���¼�����ҵ������','342','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1889','�ݳ�','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1890','����','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1891','����','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1892','�ݶ�','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1893','����','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1894','������','333','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1895','��������','333','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1896','÷��','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1897','÷��','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1898','����','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1899','��˳','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1900','�廪','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1901','ƽԶ','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1902','����','332','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1903','����','332','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1904','��','334','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1905','½��','334','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1906','����','334','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1907','½��','334','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1908','Դ��','331','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1909','�Ͻ�','331','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1910','����','331','1'); 
		
		
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1911','��ƽ','331','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1912','��ƽ','331','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1913','��Դ','331','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1914','����','339','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1915','����','339','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1916','����','339','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1917','����','339','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1918','���','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1919','���','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1920','��ɽ','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1921','��ɽ׳������','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1922','��������','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1923','����','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1924','Ӣ��','343','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1925','����','343','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1926','�ϳ�','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1927','ʯ����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1928','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1929','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1930','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1931','弲���','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1932','�ƽ���','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1933','��Ϫ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1934','ݸ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1935','��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1936','����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1937','ʯ����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1938','��ɽ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1939','ʯ����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1940','��ʯ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1941','��ͷ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1942','л����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1943','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1944','��ƽ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1945','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1946','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1947','�����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1948','�����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1949','ɳ����','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1950','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1951','��÷��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1952','��ӿ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1953','������','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1954','�߈���','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1955','��ľͷ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1956','����ɽ��','335','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1957','��ţ����','335','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1958','��ɽ','336','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1959','����','344','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1960','����','344','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1961','��ƽ','344','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1962','�ų�','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1963','�Ҷ�','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1964','����','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1965','����','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1966','����','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1967','��ɽ','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1968','����','345','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1969','����ɽ��','345','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1970','�Ƴ�','346','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1971','����','346','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1972','����','346','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1973','�ư�','346','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1974','�޶�','346','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1975','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1976','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1977','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1978','������','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1979','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1980','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1981','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1982','¡��','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1983','��ɽ','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1984','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1985','����','354','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1986','����','354','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1987','����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1988','���','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1989','����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1990','����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1991','����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1992','����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1993','¹կ','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1994','�ڰ�','355','1'); 

			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1995','��ˮ����','355','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1996','��������','355','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1997','���','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1998','����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('1999','��ɽ','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2000','����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2001','��ɽ','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2002','��˷','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2003','�ٹ�','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2004','�鴨','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2005','ȫ��','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2006','�˰�','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2007','����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2008','����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2009','��ʤ����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2010','��Դ','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2011','ƽ��','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2012','����','356','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2013','��������','356','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2014','����','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2015','��ɽ','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2016','����','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2017','����','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2018','����','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2019','��ɽ','357','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2020','�Ϫ','357','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2021','����','358','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2022','����','358','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2023','��ɽ��','358','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2024','����','358','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2025','�ۿ�','359','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2026','����','359','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2027','��˼','359','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2028','����','359','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2029','����','360','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2030','�ձ�','360','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2031','��ɽ','360','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2032','�ֱ�','360','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2033','���ݸ۾��ÿ�����','360','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2034','�۱�','361','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2035','����','361','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2036','����','361','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2037','ƽ��','361','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2038','��ƽ','361','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2039','����','362','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2040','����','362','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2041','½��','362','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2042','����','362','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2043','��ҵ','362','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2044','����','362','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2045','�ҽ�','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2046','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2047','�ﶫ','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2048','ƽ��','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2049','�±�','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2050','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2051','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2052','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2053','��ҵ','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2054','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2055','����','363','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2056','¡�ָ���','363','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2057','�˲�','364','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2058','��ƽ','364','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2059','��ɽ','364','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2060','��������','364','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2061','��ǽ�','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2062','�ϵ�','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2063','���','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2064','��ɽ','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2065','����','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2066','�޳�������','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2067','����ë����','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2068','��������','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2069','��������','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2070','������','365','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2071','����','365','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2072','�˱�','366','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2073','�ó�','366','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2074','����','366','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2075','����','366','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2076','��������','366','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2077','��ɽ','366','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2078','����','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2079','����','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2080','����','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2081','����','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2082','����','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2083','���','367','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2084','ƾ��','367','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2085','��Ӣ','445','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2086','����','445','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2087','��ɽ','445','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2088','����','445','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2089','����','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2090','�Ӷ�','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2091','�����','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2092','�����','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2093','����','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2094','�³���','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2095','������','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2096','������','446','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2097','��������','446','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2098','��ָɽ','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2099','��','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2100','����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2101','�Ĳ�','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2102','����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2103','����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2104','����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2105','�Ͳ�','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2106','����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2107','�ٸ�','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2108','��ɳ����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2109','��������','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2110','�ֶ�����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2111','��ˮ����','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2112','��ͤ��������','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2113','������������','457','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2114','�����ϡ���ɳȺ�����´�','457','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2115','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2116','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2117','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2118','��ɿ�','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2119','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2120','ɳƺ��','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2121','������','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2122','�ϰ�','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2123','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2124','��ʢ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2125','˫��','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2126','�山','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2127','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2128','ǭ��','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2129','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2130','�뽭','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2131','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2132','ͭ��','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2133','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2134','�ٲ�','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2135','�ɽ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2136','��ƽ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2137','�ǿ�','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2138','�ᶼ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2139','�潭','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2140','��¡','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2141','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2142','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2143','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2144','���','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2145','��ɽ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2146','��Ϫ','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2147','ʯ��������','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2148','��ɽ����������','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2149','��������������','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2150','��ˮ����������','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2151','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2152','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2153','�ϴ�','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2154','����','4','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2155','�ϴ�','4','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2156','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2157','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2158','��ţ','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2159','���','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2160','�ɻ�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2161','��Ȫ��','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2162','��׽�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2163','�¶�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2164','�½�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2165','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2166','˫��','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2167','ۯ��','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2168','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2169','�ѽ�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2170','�½�','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2171','������','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2172','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2173','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2174','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2175','����','384','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2176','������','384','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2177','������','385','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2178','����','385','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2179','��','385','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2180','��̲','385','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2181','����','385','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2182','��˳','385','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2183','��','386','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2184','��','386','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2185','�ʺ�','386','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2186','����','386','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2187','�α�','386','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2188','����','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2189','��Ϫ','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2190','����̶','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2191','����','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2192','�Ͻ�','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2193','����','387','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2194','����','387','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2195','���','388','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2196','�н�','388','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2197','�޽�','388','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2198','�㺺','388','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2199','ʲ��','388','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2200','����','388','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2201','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2202','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2203','��̨','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2204','��ͤ','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2205','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2206','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2207','����Ǽ��','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2208','ƽ��','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2209','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2210','ũ��','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2211','���ü���������','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2212','����','389','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2213','�ɺ�','389','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2214','����','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2215','Ԫ��','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2216','����','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2217','����','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2218','�ന','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2219','����','390','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2220','��Ϫ','390','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2221','��ɽ','391','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2222','����','391','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2223','��Ϫ','391','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2224','���','391','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2225','��Ӣ','391','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2226','����','392','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2227','����','392','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2228','��Զ','392','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2229','����','392','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2230','¡��','392','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2231','����','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2232','ɳ��','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2233','��ͨ��','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2234','��ں�','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2235','��Ϊ','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2236','����','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2237','�н�','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2238','�崨','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2239','�������','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2240','�������','393','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2241','��üɽ','393','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2242','˳��','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2243','��ƺ','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2244','����','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2245','�ϲ�','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2246','Ӫɽ','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2247','�','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2248','��¤','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2249','����','394','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2250','����','394','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2251','����','400','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2252','����','400','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2253','��ɽ','400','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2254','����','400','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2255','����','400','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2256','����','400','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2257','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2258','�˱�','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2259','��Ϫ','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2260','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2261','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2262','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2263','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2264','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2265','����','395','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2266','��ɽ','395','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2267','�㰲','396','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2268','����','396','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2269','��ʤ','396','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2270','��ˮ','396','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2271','����','396','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2272','ͨ��','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2273','����','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2274','����','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2275','����','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2276','����','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2277','����','397','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2278','��Դ','397','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2279','���','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2280','��ɽ','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2281','����','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2282','��Դ','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2283','ʯ��','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2284','��ȫ','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2285','«ɽ','399','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2286','����','399','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2287','����','398','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2288','ͨ��','398','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2289','�Ͻ�','398','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2290','ƽ��','398','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2291','�㽭','401','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2292','����','401','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2293','����','401','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2294','����','401','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2295','�봨','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2296','����','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2297','ï��','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2298','����','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2299','��կ��','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2300','��','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2301','С��','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2302','��ˮ','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2303','�����','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2304','����','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2305','����','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2306','������','402','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2307','��ԭ','402','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2308','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2309','��','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2310','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2311','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2312','�Ž�','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2313','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2314','¯��','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2315','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2316','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2317','�¸�','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2318','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2319','ʯ��','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2320','ɫ��','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2321','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2322','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2323','���','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2324','����','403','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2325','����','403','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2326','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2327','ľ�����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2328','��Դ','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2329','�²�','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2330','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2331','�ᶫ','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2332','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2333','�ո�','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2334','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2335','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2336','�Ѿ�','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2337','ϲ��','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2338','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2339','Խ��','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2340','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2341','����','404','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2342','�ײ�','404','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2343','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2344','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2345','��Ϫ','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2346','�ڵ�','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2347','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2348','С��','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2349','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2350','Ϣ��','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2351','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2352','����','425','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2353','������','425','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2354','��ɽ','426','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2355','��֦��','426','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2356','ˮ��','426','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2357','����','426','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2358','�컨��','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2359','�㴨','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2360','����','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2361','ͩ��','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2362','����','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2363','����','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2364','��������������','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2365','������������','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2366','���','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2367','��̶','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2368','����','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2369','ϰˮ','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2370','��ˮ','427','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2371','�ʻ�','427','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2372','����','428','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2373','ƽ��','428','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2374','�ն�','428','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2375','��������������','428','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2376','���벼��������','428','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2377','�������岼����','428','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2378','ͭ��','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2379','����','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2380','��������','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2381','ʯ��','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2382','˼��','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2383','ӡ������������','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2384','�½�','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2385','�غ�������','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2386','��������','429','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2387','��ɽ��','429','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2388','����','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2389','����','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2390','�հ�','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2391','��¡','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2392','���','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2393','����','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2394','���','431','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2395','����','431','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2396','�Ͻ�','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2397','��','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2398','ǭ��','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2399','��ɳ','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2400','֯��','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2401','��Ӻ','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2402','���������������','430','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2403','����','430','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2404','����','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2405','��ƽ','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2406','ʩ��','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2407','����','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2408','��Զ','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2409','᯹�','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2410','����','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2411','����','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2412','����','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2413','̨��','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2414','��ƽ','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2415','�Ž�','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2416','�ӽ�','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2417','��ɽ','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2418','�齭','432','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2419','��կ','432','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2420','����','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2421','��Ȫ','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2422','��','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2423','��','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2424','�Ͱ�','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2425','��ɽ','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2426','ƽ��','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2427','�޵�','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2428','��˳','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2429','����','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2430','��ˮ','433','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2431','����ˮ��','433','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2432','�廪','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2433','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2434','�ٶ�','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2435','��ɽ','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2436','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2437','�ʹ�','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2438','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2439','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2440','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2441','ʯ������','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2442','����','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2443','»Ȱ��������','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2444','Ѱ���������','408','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2445','����','408','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2446','����','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2447','����','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2448','½��','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2449','ʦ��','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2450','��ƽ','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2451','��Դ','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2452','����','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2453','մ��','409','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2454','����','409','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2455','����','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2456','����','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2457','�ν�','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2458','ͨ��','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2459','����','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2460','����','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2461','��ɽ����','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2462','��ƽ�������','410','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2463','Ԫ���������������','410','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2464','¡��','411','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2465','ʩ��','411','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2466','�ڳ�','411','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2467','����','411','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2468','����','411','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2469','����','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2470','³��','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2471','�ɼ�','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2472','�ν�','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2473','���','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2474','����','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2475','�罭','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2476','����','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2477','����','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2478','����','412','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2479','ˮ��','412','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2480','�ų�','415','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2481','����������','415','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2482','��ʤ','415','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2483','��ƺ','415','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2484','��������','415','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2485','˼é','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2486','��������������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2487','ī��������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2488','��������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2489','���ȴ�������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2490','�������������������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2491','���ǹ���������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2492','������������������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2493','����������','458','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2494','��������','458','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2495','����','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2496','����','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2497','����','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2498','����','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2499','��','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2500','˫�����������岼�������','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2501','�����������','414','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2502','��Դ����','414','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2503','����','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2504','˫��','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2505','Ĳ��','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2506','�ϻ�','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2507','Ҧ��','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2508','��Ҧ','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2509','����','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2510','Ԫı','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2511','�䶨','419','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2512','»��','419','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2513','����','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2514','��Զ','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2515','����','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2516','��������','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2517','��ˮ','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2518','ʯ��','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2519','����','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2520','����','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2521','Ԫ��','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2522','���','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2523','��ƽ�����������','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2524','�̴�','417','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2525','�ӿ�����','417','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2526','��ɽ','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2527','��ɽ','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2528','����','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2529','������','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2530','���','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2531','��','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2532','����','416','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2533','����','416','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2534','����','418','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2535','�º�','418','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2536','����','418','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2537','����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2538','�������','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2539','����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2540','����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2541','�ֶ�','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2542','�Ͻ�����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2543','Ρɽ�������','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2544','��ƽ','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2545','����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2546','��Դ','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2547','����','420','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2548','����','420','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2549','����','421','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2550','º��','421','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2551','����','421','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2552','ӯ��','421','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2553','¤��','421','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2554','��ˮ','422','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2555','����','422','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2556','��ɽ������ŭ��','422','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2557','��ƺ����������','422','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2558','�������','423','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2559','����','423','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2560','ά��������','423','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2561','�ǹ�','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2562','����','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2563','����','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2564','��ľ','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2565','��ˮ','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2566','��������','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2567','����','438','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2568','ī�񹤿�','438','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2569','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2570','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2571','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2572','������','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2573','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2574','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2575','����','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2576','��','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2577','â��','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2578','��¡','440','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2579','�߰�','440','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2580','�˶�','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2581','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2582','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2583','ɣ��','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2584','���','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2585','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2586','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2587','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2588','�Ӳ�','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2589','¡��','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2590','����','441','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2591','�˿���','441','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2592','�տ���','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2593','��ľ��','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2594','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2595','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2596','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2597','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2598','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2599','лͨ��','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2600','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2601','�ʲ�','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2602','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2603','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2604','�ٰ�','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2605','�Ƕ�','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2606','��¡','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2607','����ľ','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2608','����','442','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2609','�ڰ�','442','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2610','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2611','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2612','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2613','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2614','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2615','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2616','��','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2617','���','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2618','����','439','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2619','����','439','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2620','����','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2621','����','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2622','����','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2623','����','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2624','�Ｊ','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2625','����','443','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2626','����','443','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2627','��֥','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2628','��������','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2629','����','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2630','ī��','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2631','����','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2632','����','444','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2633','����','444','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2634','�³�','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2635','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2636','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2637','���','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2638','δ��','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2639','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2640','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2641','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2642','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2643','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2644','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2645','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2646','����','114','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2647','����','114','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2648','����','117','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2649','ӡ̨','117','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2650','ҫ��','117','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2651','�˾�','117','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2652','��','117','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2653','μ��','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2654','��̨','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2655','�²�','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2656','����','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2657','�ɽ','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2658','����','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2659','ü��','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2660','¤��','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2661','ǧ��','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2662','����','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2663','��','115','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2664','̫��','115','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2665','�ض�','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2666','μ��','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2667','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2668','��ԭ','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2669','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2670','��ƽ','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2671','Ǭ��','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2672','��Ȫ','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2673','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2674','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2675','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2676','Ѯ��','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2677','����','118','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2678','�书','118','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2679','��μ','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2680','����','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2681','����','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2682','����','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2683','����','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2684','�γ�','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2685','�ѳ�','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2686','��ˮ','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2687','��ƽ','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2688','����','119','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2689','����','119','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2690','����','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2691','�ӳ�','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2692','�Ӵ�','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2693','�ӳ�','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2694','����','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2695','־��','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2696','����','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2697','��Ȫ','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2698','��','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2699','�崨','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2700','�˴�','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2701','����','116','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2702','����','116','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2703','��̨','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2704','��֣','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2705','�ǹ�','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2706','��','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2707','����','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2708','����','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2709','��ǿ','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2710','����','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2711','���','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2712','����','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2713','��ƺ','120','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2714','���ÿ�����','120','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2715','����','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2716','��ľ','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2717','����','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2718','��ɽ','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2719','����','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2720','����','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2721','���','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2722','��֬','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2723','����','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2724','�Ɽ','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2725','�彧','121','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2726','����','121','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2727','����','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2728','����','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2729','ʯȪ','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2730','����','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2731','����','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2732','᰸�','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2733','ƽ��','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2734','��ƺ','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2735','Ѯ��','122','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2736','�׺�','122','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2737','����','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2738','����','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2739','����','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2740','����','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2741','ɽ��','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2742','��','123','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2743','��ˮ','123','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2744','�ǹ�','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2745','�����','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2746','����','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2747','����','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2748','���','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2749','����','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2750','����','99','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2751','����','99','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2752','������','103','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2753','��','101','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2754','����','101','1');
			  
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2755','����','102','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2756','ƽ��','102','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2757','��Զ','102','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2758','����','102','1'); 
		
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2759','��̩','102','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2760','����','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2761','���','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2762','��ˮ','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2763','�ذ�','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2764','�ʹ�','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2765','��ɽ','100','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2766','�żҴ�����','100','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2767','����','104','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2768','����','104','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2769','����','104','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2770','��ף����','104','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2771','����','105','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2772','����ԣ����','105','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2773','����','105','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2774','����','105','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2775','��̨','105','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2776','ɽ��','105','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2777','���','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2778','����','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2779','��̨','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2780','����','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2781','��ͤ','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2782','ׯ��','106','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2783','����','106','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2784','����','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2785','����','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2786','����','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2787','�౱�ɹ���','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2788','��������������','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2789','����','107','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2790','�ػ�','107','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2791','����','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2792','���','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2793','��','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2794','����','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2795','��ˮ','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2796','����','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2797','��','108','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2798','��ԭ','108','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2799','����','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2800','ͨμ','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2801','¤��','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2802','μԴ','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2803','���','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2804','��','109','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2805','�','109','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2806','�䶼','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2807','��','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2808','��','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2809','崲�','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2810','��','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2811','����','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2812','��','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2813','��','459','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2814','����','459','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2815','����','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2816','����','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2817','����','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2818','����','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2819','���','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2820','����','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2821','������','111','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2822','��ʯɽ�����嶫����������','111','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2823','����','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2824','��̶','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2825','׿��','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2826','����','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2827','����','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2828','����','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2829','µ��','110','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2830','�ĺ�','110','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2831','�Ƕ�','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2832','����','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2833','����','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2834','�Ǳ�','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2835','��ͨ��������','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2836','����','90','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2837','��Դ','90','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2838','ƽ��','91','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2839','��ͻ�������','91','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2840','�ֶ�','91','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2841','��������','91','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2842','��¡����','91','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2843','ѭ��������','91','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2844','��Դ����','92','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2845','����','92','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2846','����','92','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2847','�ղ�','92','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2848','ͬ��','93','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2849','����','93','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2850','���','93','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2851','�����ɹ���','93','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2852','����','94','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2853','ͬ��','94','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2854','���','94','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2855','�˺�','94','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2856','����','94','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2857','����','95','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2858','����','95','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2859','�ʵ�','95','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2860','����','95','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2861','����','95','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2862','���','95','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2863','����','96','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2864','�Ӷ�','96','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2865','�ƶ�','96','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2866','�ζ�','96','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2867','��ǫ','96','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2868','������','96','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2869','���ľ','97','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2870','�����','97','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2871','����','97','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2872','����','97','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2873','���','97','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2874','�����ί','97','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2875','����','61','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2876','����','61','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2877','���','61','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2878','����','61','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2879','����','61','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2880','����','61','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2881','�����','62','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2882','��ũ','62','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2883','ƽ��','62','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2884','��ͨ','63','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2885','�γ�','63','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2886','ͬ��','63','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2887','��ͭϿ','63','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2888','ԭ��','64','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2889','����','64','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2890','¡��','64','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2891','��Դ','64','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2892','����','64','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2893','ɳ��ͷ','460','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2894','����','460','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2895','��ԭ','460','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2896','��ɽ','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2897','ɳ���Ϳ�','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2898','��','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2899','ˮĥ��','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2900','ͷ�ͺ�','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2901','�����','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2902','�׶�','65','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2903','��³ľ��','65','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2904','��ɽ��','66','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2905','��������','66','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2906','�׼�̲','66','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2907','�ڶ���','66','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2908','��³��','67','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2909','۷��','67','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2910','�п�ѷ','67','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2911','����','68','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2912','������������','68','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2913','����','68','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2914','����','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2915','����','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2916','��Ȫ','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2917','��ͼ��','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2918','����˹','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2919','��̨','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2920','��ľ����','74','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2921','ľ�ݹ�����','74','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2922','����','75','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2923','����','75','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2924','��Ȫ','75','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2925','�����','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2926','��̨','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2927','ξ��','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2928','��Ǽ','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2929','��ĩ','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2930','���Ȼ���','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2931','�;�','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2932','��˶','73','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2933','����','73','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2934','������','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2935','����','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2936','�⳵','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2937','ɳ��','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2938','�º�','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2939','�ݳ�','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2940','��ʲ','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2941','������','70','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2942','��ƺ','70','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2943','��ͼʲ','72','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2944','������','72','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2945','������','72','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2946','��ǡ','72','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2947','��ʲ','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2948','�踽','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2949','����','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2950','Ӣ��ɳ','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2951','����','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2952','ɯ��','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2953','Ҷ��','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2954','�����','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2955','���պ�','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2956','٤ʦ','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2957','�ͳ�','71','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2958','��ʲ�����������','71','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2959','����','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2960','����','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2961','ī��','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2962','Ƥɽ','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2963','����','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2964','����','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2965','����','69','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2966','���','69','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2967','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2968','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2969','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2970','�첼�������','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2971','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2972','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2973','��Դ','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2974','����','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2975','�ؿ�˹','76','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2976','���տ�','76','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2977','����','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2978','����','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2979','����','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2980','ɳ��','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2981','����','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2982','ԣ��','77','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2983','�Ͳ��������ɹ�','77','1'); 
			 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2984','����̩','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2985','������','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2986','����','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2987','����','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2988','���ͺ�','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2989','���','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2990','��ľ��','78','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2991','ʯ����','79','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2992','������','79','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2993','ͼľ���','79','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2994','�����','79','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2995','���','447','1'); 
			 INSERT INTO zfwx_region_district(id,name,city_id,status)VALUES('2996','����','448','1'); 
>>>>>>> 4bbe80dbe97eaaefe9308eea0f82ba3ed48d0de9
