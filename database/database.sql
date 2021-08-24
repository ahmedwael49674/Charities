/*
 Date: 08/02/2021 14:52:08
*/

CREATE DATABASE IF NOT EXISTS gf_interview_task;

USE gf_interview_task;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charities
-- ----------------------------
DROP TABLE IF EXISTS `charities`;
CREATE TABLE `charities` (
  `charity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the charity',
  `charity_name` varchar(255) NOT NULL COMMENT 'The name of the charity',
  `is_approved` tinyint(1) DEFAULT '0' COMMENT 'If the charity is approved for applications',
  `country_id` int(11) NOT NULL COMMENT 'The id of the country the charity is headquarted in',
  PRIMARY KEY (`charity_id`),
  KEY `charitys_country` (`country_id`),
  CONSTRAINT `charitys_country` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charities
-- ----------------------------
BEGIN;
INSERT INTO `charities` VALUES (3, 'My Giving Account', 0, 223);
INSERT INTO `charities` VALUES (4, 'Oxford Kidney Unit Trust Fund', 0, 223);
INSERT INTO `charities` VALUES (5, 'Human Values Foundation', 0, 221);
INSERT INTO `charities` VALUES (6, 'Mudlarks Community Garden', 0, 150);
INSERT INTO `charities` VALUES (7, 'Belfast Bible College', 0, 223);
INSERT INTO `charities` VALUES (8, 'CILIP Career Development Group', 0, 223);
INSERT INTO `charities` VALUES (9, 'The Inga Foundation', 0, 223);
INSERT INTO `charities` VALUES (10, 'GMGA1', 0, 100);
INSERT INTO `charities` VALUES (11, 'GMGA2', 0, 223);
INSERT INTO `charities` VALUES (12, 'Amigos Worldwide', 0, 211);
INSERT INTO `charities` VALUES (13, 'CAF charity account', 0, 223);
COMMIT;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the country',
  `country_name` varchar(255) NOT NULL COMMENT 'The name of the country',
  `country_code` varchar(255) NOT NULL COMMENT 'The ISO code fo the charity',
  PRIMARY KEY (`country_id`),
  KEY `country_name_index` (`country_name`) USING BTREE COMMENT 'The country will be looked up regularly so best to have an index'
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO `countries` VALUES (1, 'AFGHANISTAN', 'AFG');
INSERT INTO `countries` VALUES (2, 'ALBANIA', 'ALB');
INSERT INTO `countries` VALUES (3, 'ALGERIA', 'DZA');
INSERT INTO `countries` VALUES (4, 'AMERICAN SAMOA', 'ASM');
INSERT INTO `countries` VALUES (5, 'ANDORRA', 'AND');
INSERT INTO `countries` VALUES (6, 'ANGOLA', 'AGO');
INSERT INTO `countries` VALUES (7, 'ANGUILLA', 'AIA');
INSERT INTO `countries` VALUES (8, 'ANTARCTICA', 'ATA');
INSERT INTO `countries` VALUES (9, 'ANTIGUA AND BARBUDA', 'ATG');
INSERT INTO `countries` VALUES (10, 'ARGENTINA', 'ARG');
INSERT INTO `countries` VALUES (11, 'ARMENIA', 'ARM');
INSERT INTO `countries` VALUES (12, 'ARUBA', 'ABW');
INSERT INTO `countries` VALUES (13, 'AUSTRALIA', 'AUS');
INSERT INTO `countries` VALUES (14, 'AUSTRIA', 'AUT');
INSERT INTO `countries` VALUES (15, 'AZERBAIJAN', 'AZE');
INSERT INTO `countries` VALUES (16, 'BAHAMAS', 'BHS');
INSERT INTO `countries` VALUES (17, 'BAHRAIN', 'BHR');
INSERT INTO `countries` VALUES (18, 'BANGLADESH', 'BGD');
INSERT INTO `countries` VALUES (19, 'BARBADOS', 'BRB');
INSERT INTO `countries` VALUES (20, 'BELARUS', 'BLR');
INSERT INTO `countries` VALUES (21, 'BELGIUM', 'BEL');
INSERT INTO `countries` VALUES (22, 'BELIZE', 'BLZ');
INSERT INTO `countries` VALUES (23, 'BENIN', 'BEN');
INSERT INTO `countries` VALUES (24, 'BERMUDA', 'BMU');
INSERT INTO `countries` VALUES (25, 'BHUTAN', 'BTN');
INSERT INTO `countries` VALUES (26, 'BOLIVIA', 'BOL');
INSERT INTO `countries` VALUES (27, 'BOSNIA AND HERZEGOVINA', 'BIH');
INSERT INTO `countries` VALUES (28, 'BOTSWANA', 'BWA');
INSERT INTO `countries` VALUES (29, 'BOUVET ISLAND', 'BVT');
INSERT INTO `countries` VALUES (30, 'BRAZIL', 'BRA');
INSERT INTO `countries` VALUES (31, 'BRITISH INDIAN OCEAN TERRITORY', 'IOT');
INSERT INTO `countries` VALUES (32, 'BRUNEI DARUSSALAM', 'BRN');
INSERT INTO `countries` VALUES (33, 'BULGARIA', 'BGR');
INSERT INTO `countries` VALUES (34, 'BURKINA FASO', 'BFA');
INSERT INTO `countries` VALUES (35, 'BURUNDI', 'BDI');
INSERT INTO `countries` VALUES (36, 'CAMBODIA', 'KHM');
INSERT INTO `countries` VALUES (37, 'CAMEROON', 'CMR');
INSERT INTO `countries` VALUES (38, 'CANADA', 'CAN');
INSERT INTO `countries` VALUES (39, 'CAPE VERDE', 'CPV');
INSERT INTO `countries` VALUES (40, 'CAYMAN ISLANDS', 'CYM');
INSERT INTO `countries` VALUES (41, 'CENTRAL AFRICAN REPUBLIC', 'CAF');
INSERT INTO `countries` VALUES (42, 'CHAD', 'TCD');
INSERT INTO `countries` VALUES (43, 'CHILE', 'CHL');
INSERT INTO `countries` VALUES (44, 'CHINA', 'CHN');
INSERT INTO `countries` VALUES (45, 'CHRISTMAS ISLAND', 'CXR');
INSERT INTO `countries` VALUES (46, 'COCOS (KEELING) ISLANDS', 'CCK');
INSERT INTO `countries` VALUES (47, 'COLOMBIA', 'COL');
INSERT INTO `countries` VALUES (48, 'COMOROS', 'COM');
INSERT INTO `countries` VALUES (49, 'CONGO', 'COG');
INSERT INTO `countries` VALUES (50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COD');
INSERT INTO `countries` VALUES (51, 'COOK ISLANDS', 'COK');
INSERT INTO `countries` VALUES (52, 'COSTA RICA', 'CRI');
INSERT INTO `countries` VALUES (53, 'COTE D\'IVOIRE', 'CIV');
INSERT INTO `countries` VALUES (54, 'CROATIA', 'HRV');
INSERT INTO `countries` VALUES (55, 'CUBA', 'CUB');
INSERT INTO `countries` VALUES (56, 'CYPRUS', 'CYP');
INSERT INTO `countries` VALUES (57, 'CZECH REPUBLIC', 'CZE');
INSERT INTO `countries` VALUES (58, 'DENMARK', 'DNK');
INSERT INTO `countries` VALUES (59, 'DJIBOUTI', 'DJI');
INSERT INTO `countries` VALUES (60, 'DOMINICA', 'DMA');
INSERT INTO `countries` VALUES (61, 'DOMINICAN REPUBLIC', 'DOM');
INSERT INTO `countries` VALUES (62, 'ECUADOR', 'ECU');
INSERT INTO `countries` VALUES (63, 'EGYPT', 'EGY');
INSERT INTO `countries` VALUES (64, 'EL SALVADOR', 'SLV');
INSERT INTO `countries` VALUES (65, 'EQUATORIAL GUINEA', 'GNQ');
INSERT INTO `countries` VALUES (66, 'ERITREA', 'ERI');
INSERT INTO `countries` VALUES (67, 'ESTONIA', 'EST');
INSERT INTO `countries` VALUES (68, 'ETHIOPIA', 'ETH');
INSERT INTO `countries` VALUES (69, 'FALKLAND ISLANDS (MALVINAS)', 'FLK');
INSERT INTO `countries` VALUES (70, 'FAROE ISLANDS', 'FRO');
INSERT INTO `countries` VALUES (71, 'FIJI', 'FJI');
INSERT INTO `countries` VALUES (72, 'FINLAND', 'FIN');
INSERT INTO `countries` VALUES (73, 'FRANCE', 'FRA');
INSERT INTO `countries` VALUES (74, 'FRENCH GUIANA', 'GUF');
INSERT INTO `countries` VALUES (75, 'FRENCH POLYNESIA', 'PYF');
INSERT INTO `countries` VALUES (76, 'FRENCH SOUTHERN TERRITORIES', 'ATF');
INSERT INTO `countries` VALUES (77, 'GABON', 'GAB');
INSERT INTO `countries` VALUES (78, 'GAMBIA', 'GMB');
INSERT INTO `countries` VALUES (79, 'GEORGIA', 'GEO');
INSERT INTO `countries` VALUES (80, 'GERMANY', 'DEU');
INSERT INTO `countries` VALUES (81, 'GHANA', 'GHA');
INSERT INTO `countries` VALUES (82, 'GIBRALTAR', 'GIB');
INSERT INTO `countries` VALUES (83, 'GREECE', 'GRC');
INSERT INTO `countries` VALUES (84, 'GREENLAND', 'GRL');
INSERT INTO `countries` VALUES (85, 'GRENADA', 'GRD');
INSERT INTO `countries` VALUES (86, 'GUADELOUPE', 'GLP');
INSERT INTO `countries` VALUES (87, 'GUAM', 'GUM');
INSERT INTO `countries` VALUES (88, 'GUATEMALA', 'GTM');
INSERT INTO `countries` VALUES (89, 'GUINEA', 'GIN');
INSERT INTO `countries` VALUES (90, 'GUINEA-BISSAU', 'GNB');
INSERT INTO `countries` VALUES (91, 'GUYANA', 'GUY');
INSERT INTO `countries` VALUES (92, 'HAITI', 'HTI');
INSERT INTO `countries` VALUES (93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HMD');
INSERT INTO `countries` VALUES (94, 'HOLY SEE (VATICAN CITY STATE)', 'VAT');
INSERT INTO `countries` VALUES (95, 'HONDURAS', 'HND');
INSERT INTO `countries` VALUES (96, 'HONG KONG', 'HKG');
INSERT INTO `countries` VALUES (97, 'HUNGARY', 'HUN');
INSERT INTO `countries` VALUES (98, 'ICELAND', 'ISL');
INSERT INTO `countries` VALUES (99, 'INDIA', 'IND');
INSERT INTO `countries` VALUES (100, 'INDONESIA', 'IDN');
INSERT INTO `countries` VALUES (101, 'IRAN, ISLAMIC REPUBLIC OF', 'IRN');
INSERT INTO `countries` VALUES (102, 'IRAQ', 'IRQ');
INSERT INTO `countries` VALUES (103, 'IRELAND', 'IRL');
INSERT INTO `countries` VALUES (104, 'ISRAEL', 'ISR');
INSERT INTO `countries` VALUES (105, 'ITALY', 'ITA');
INSERT INTO `countries` VALUES (106, 'JAMAICA', 'JAM');
INSERT INTO `countries` VALUES (107, 'JAPAN', 'JPN');
INSERT INTO `countries` VALUES (108, 'JORDAN', 'JOR');
INSERT INTO `countries` VALUES (109, 'KAZAKHSTAN', 'KAZ');
INSERT INTO `countries` VALUES (110, 'KENYA', 'KEN');
INSERT INTO `countries` VALUES (111, 'KIRIBATI', 'KIR');
INSERT INTO `countries` VALUES (112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'PRK');
INSERT INTO `countries` VALUES (113, 'KOREA, REPUBLIC OF', 'KOR');
INSERT INTO `countries` VALUES (114, 'KUWAIT', 'KWT');
INSERT INTO `countries` VALUES (115, 'KYRGYZSTAN', 'KGZ');
INSERT INTO `countries` VALUES (116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LAO');
INSERT INTO `countries` VALUES (117, 'LATVIA', 'LVA');
INSERT INTO `countries` VALUES (118, 'LEBANON', 'LBN');
INSERT INTO `countries` VALUES (119, 'LESOTHO', 'LSO');
INSERT INTO `countries` VALUES (120, 'LIBERIA', 'LBR');
INSERT INTO `countries` VALUES (121, 'LIBYAN ARAB JAMAHIRIYA', 'LBY');
INSERT INTO `countries` VALUES (122, 'LIECHTENSTEIN', 'LIE');
INSERT INTO `countries` VALUES (123, 'LITHUANIA', 'LTU');
INSERT INTO `countries` VALUES (124, 'LUXEMBOURG', 'LUX');
INSERT INTO `countries` VALUES (125, 'MACAO', 'MAC');
INSERT INTO `countries` VALUES (126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD');
INSERT INTO `countries` VALUES (127, 'MADAGASCAR', 'MDG');
INSERT INTO `countries` VALUES (128, 'MALAWI', 'MWI');
INSERT INTO `countries` VALUES (129, 'MALAYSIA', 'MYS');
INSERT INTO `countries` VALUES (130, 'MALDIVES', 'MDV');
INSERT INTO `countries` VALUES (131, 'MALI', 'MLI');
INSERT INTO `countries` VALUES (132, 'MALTA', 'MLT');
INSERT INTO `countries` VALUES (133, 'MARSHALL ISLANDS', 'MHL');
INSERT INTO `countries` VALUES (134, 'MARTINIQUE', 'MTQ');
INSERT INTO `countries` VALUES (135, 'MAURITANIA', 'MRT');
INSERT INTO `countries` VALUES (136, 'MAURITIUS', 'MUS');
INSERT INTO `countries` VALUES (137, 'MAYOTTE', 'MYT');
INSERT INTO `countries` VALUES (138, 'MEXICO', 'MEX');
INSERT INTO `countries` VALUES (139, 'MICRONESIA, FEDERATED STATES OF', 'FSM');
INSERT INTO `countries` VALUES (140, 'MOLDOVA, REPUBLIC OF', 'MDA');
INSERT INTO `countries` VALUES (141, 'MONACO', 'MCO');
INSERT INTO `countries` VALUES (142, 'MONGOLIA', 'MNG');
INSERT INTO `countries` VALUES (143, 'MONTSERRAT', 'MSR');
INSERT INTO `countries` VALUES (144, 'MOROCCO', 'MAR');
INSERT INTO `countries` VALUES (145, 'MOZAMBIQUE', 'MOZ');
INSERT INTO `countries` VALUES (146, 'MYANMAR', 'MMR');
INSERT INTO `countries` VALUES (147, 'NAMIBIA', 'NAM');
INSERT INTO `countries` VALUES (148, 'NAURU', 'NRU');
INSERT INTO `countries` VALUES (149, 'NEPAL', 'NPL');
INSERT INTO `countries` VALUES (150, 'NETHERLANDS', 'NLD');
INSERT INTO `countries` VALUES (151, 'NETHERLANDS ANTILLES', 'ANT');
INSERT INTO `countries` VALUES (152, 'NEW CALEDONIA', 'NCL');
INSERT INTO `countries` VALUES (153, 'NEW ZEALAND', 'NZL');
INSERT INTO `countries` VALUES (154, 'NICARAGUA', 'NIC');
INSERT INTO `countries` VALUES (155, 'NIGER', 'NER');
INSERT INTO `countries` VALUES (156, 'NIGERIA', 'NGA');
INSERT INTO `countries` VALUES (157, 'NIUE', 'NIU');
INSERT INTO `countries` VALUES (158, 'NORFOLK ISLAND', 'NFK');
INSERT INTO `countries` VALUES (159, 'NORTHERN MARIANA ISLANDS', 'MNP');
INSERT INTO `countries` VALUES (160, 'NORWAY', 'NOR');
INSERT INTO `countries` VALUES (161, 'OMAN', 'OMN');
INSERT INTO `countries` VALUES (162, 'PAKISTAN', 'PAK');
INSERT INTO `countries` VALUES (163, 'PALAU', 'PLW');
INSERT INTO `countries` VALUES (164, 'PANAMA', 'PAN');
INSERT INTO `countries` VALUES (165, 'PAPUA NEW GUINEA', 'PNG');
INSERT INTO `countries` VALUES (166, 'PARAGUAY', 'PRY');
INSERT INTO `countries` VALUES (167, 'PERU', 'PER');
INSERT INTO `countries` VALUES (168, 'PHILIPPINES', 'PHL');
INSERT INTO `countries` VALUES (169, 'PITCAIRN', 'PCN');
INSERT INTO `countries` VALUES (170, 'POLAND', 'POL');
INSERT INTO `countries` VALUES (171, 'PORTUGAL', 'PRT');
INSERT INTO `countries` VALUES (172, 'PUERTO RICO', 'PRI');
INSERT INTO `countries` VALUES (173, 'QATAR', 'QAT');
INSERT INTO `countries` VALUES (174, 'REUNION', 'REU');
INSERT INTO `countries` VALUES (175, 'ROMANIA', 'ROU');
INSERT INTO `countries` VALUES (176, 'RUSSIAN FEDERATION', 'RUS');
INSERT INTO `countries` VALUES (177, 'RWANDA', 'RWA');
INSERT INTO `countries` VALUES (178, 'SAINT HELENA', 'SHN');
INSERT INTO `countries` VALUES (179, 'SAINT KITTS AND NEVIS', 'KNA');
INSERT INTO `countries` VALUES (180, 'SAINT LUCIA', 'LCA');
INSERT INTO `countries` VALUES (181, 'SAINT PIERRE AND MIQUELON', 'SPM');
INSERT INTO `countries` VALUES (182, 'SAINT VINCENT AND THE GRENADINES', 'VCT');
INSERT INTO `countries` VALUES (183, 'SAMOA', 'WSM');
INSERT INTO `countries` VALUES (184, 'SAN MARINO', 'SMR');
INSERT INTO `countries` VALUES (185, 'SAO TOME AND PRINCIPE', 'STP');
INSERT INTO `countries` VALUES (186, 'SAUDI ARABIA', 'SAU');
INSERT INTO `countries` VALUES (187, 'SENEGAL', 'SEN');
INSERT INTO `countries` VALUES (188, 'SEYCHELLES', 'SYC');
INSERT INTO `countries` VALUES (189, 'SIERRA LEONE', 'SLE');
INSERT INTO `countries` VALUES (190, 'SINGAPORE', 'SGP');
INSERT INTO `countries` VALUES (191, 'SLOVAKIA', 'SVK');
INSERT INTO `countries` VALUES (192, 'SLOVENIA', 'SVN');
INSERT INTO `countries` VALUES (193, 'SOLOMON ISLANDS', 'SLB');
INSERT INTO `countries` VALUES (194, 'SOMALIA', 'SOM');
INSERT INTO `countries` VALUES (195, 'SOUTH AFRICA', 'ZAF');
INSERT INTO `countries` VALUES (196, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'SGS');
INSERT INTO `countries` VALUES (197, 'SPAIN', 'ESP');
INSERT INTO `countries` VALUES (198, 'SRI LANKA', 'LKA');
INSERT INTO `countries` VALUES (199, 'SUDAN', 'SDN');
INSERT INTO `countries` VALUES (200, 'SURINAME', 'SUR');
INSERT INTO `countries` VALUES (201, 'SVALBARD AND JAN MAYEN', 'SJM');
INSERT INTO `countries` VALUES (202, 'SWAZILAND', 'SWZ');
INSERT INTO `countries` VALUES (203, 'SWEDEN', 'SWE');
INSERT INTO `countries` VALUES (204, 'SWITZERLAND', 'CHE');
INSERT INTO `countries` VALUES (205, 'SYRIAN ARAB REPUBLIC', 'SYR');
INSERT INTO `countries` VALUES (206, 'TAIWAN, PROVINCE OF CHINA', 'TWN');
INSERT INTO `countries` VALUES (207, 'TAJIKISTAN', 'TJK');
INSERT INTO `countries` VALUES (208, 'TANZANIA, UNITED REPUBLIC OF', 'TZA');
INSERT INTO `countries` VALUES (209, 'THAILAND', 'THA');
INSERT INTO `countries` VALUES (210, 'TIMOR-LESTE', 'TLS');
INSERT INTO `countries` VALUES (211, 'TOGO', 'TGO');
INSERT INTO `countries` VALUES (212, 'TOKELAU', 'TKL');
INSERT INTO `countries` VALUES (213, 'TONGA', 'TON');
INSERT INTO `countries` VALUES (214, 'TRINIDAD AND TOBAGO', 'TTO');
INSERT INTO `countries` VALUES (215, 'TUNISIA', 'TUN');
INSERT INTO `countries` VALUES (216, 'TURKEY', 'TUR');
INSERT INTO `countries` VALUES (217, 'TURKMENISTAN', 'TKM');
INSERT INTO `countries` VALUES (218, 'TURKS AND CAICOS ISLANDS', 'TCA');
INSERT INTO `countries` VALUES (219, 'TUVALU', 'TUV');
INSERT INTO `countries` VALUES (220, 'UGANDA', 'UGA');
INSERT INTO `countries` VALUES (221, 'UKRAINE', 'UKR');
INSERT INTO `countries` VALUES (222, 'UNITED ARAB EMIRATES', 'ARE');
INSERT INTO `countries` VALUES (223, 'UNITED KINGDOM', 'GBR');
INSERT INTO `countries` VALUES (224, 'UNITED STATES', 'USA');
INSERT INTO `countries` VALUES (225, 'URUGUAY', 'URY');
INSERT INTO `countries` VALUES (226, 'UZBEKISTAN', 'UZB');
INSERT INTO `countries` VALUES (227, 'VANUATU', 'VUT');
INSERT INTO `countries` VALUES (228, 'VENEZUELA', 'VEN');
INSERT INTO `countries` VALUES (229, 'VIET NAM', 'VNM');
INSERT INTO `countries` VALUES (230, 'VIRGIN ISLANDS, BRITISH', 'VGB');
INSERT INTO `countries` VALUES (231, 'VIRGIN ISLANDS, U.S.', 'VIR');
INSERT INTO `countries` VALUES (232, 'WALLIS AND FUTUNA', 'WLF');
INSERT INTO `countries` VALUES (233, 'WESTERN SAHARA', 'ESH');
INSERT INTO `countries` VALUES (234, 'YEMEN', 'YEM');
INSERT INTO `countries` VALUES (235, 'ZAMBIA', 'ZMB');
INSERT INTO `countries` VALUES (236, 'ZIMBABWE', 'ZWE');
INSERT INTO `countries` VALUES (237, 'JERSEY', 'JEY');
INSERT INTO `countries` VALUES (238, 'GUERNSEY', 'GGY');
INSERT INTO `countries` VALUES (239, 'UNKNOWN', 'UNK');
INSERT INTO `countries` VALUES (240, 'ISLE OF MAN', 'IMN');
COMMIT;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the user role',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the user the role belongs to',
  `role` enum('employee','admin','admin_applications','admin_reports') NOT NULL COMMENT 'The role the user has. Has an enum of values',
  PRIMARY KEY (`user_role_id`),
  KEY `user_role_user` (`user_id`) USING BTREE COMMENT 'Foreign key between users and user roles',
  CONSTRAINT `users_roles` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
BEGIN;
INSERT INTO `user_roles` VALUES (1, 1, 'employee');
INSERT INTO `user_roles` VALUES (2, 2, 'employee');
INSERT INTO `user_roles` VALUES (3, 3, 'admin');
INSERT INTO `user_roles` VALUES (4, 5, 'admin_applications');
INSERT INTO `user_roles` VALUES (5, 5, 'admin_reports');
INSERT INTO `user_roles` VALUES (6, 4, 'admin');
INSERT INTO `user_roles` VALUES (7, 3, 'admin');
INSERT INTO `user_roles` VALUES (8, 4, 'admin_applications');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Employee 1', 'employee1@givingforce.com');
INSERT INTO `users` VALUES (2, 'Employee 2', 'employee2@givingforce.com');
INSERT INTO `users` VALUES (3, 'Admin 1', 'admin1@givingforce.com');
INSERT INTO `users` VALUES (4, 'Admin 2', 'admin2@givingforce.com');
INSERT INTO `users` VALUES (5, 'Admin 3', 'admin3@givingforce.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
