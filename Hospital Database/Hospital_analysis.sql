use student_db;
CREATE TABLE PatientRecords (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    Disease VARCHAR(50),
    BloodPressure INT,
    Cholesterol INT,
    BMI DECIMAL(4,2),
    SmokingStatus VARCHAR(20),
    TreatmentCost INT,
    AdmissionDate DATE,
    DischargeDate DATE
);

INSERT INTO PatientRecords VALUES 
(1,'Kiran 1','Male',27,'Coimbatore','Kidney Disease',140,218,32.59,'Non-Smoker',57723,'2025-04-24','2025-04-30'),
(2,'Ramesh 2','Male',79,'Vellore','Kidney Disease',121,198,23.88,'Non-Smoker',39014,'2024-03-20','2024-03-30'),
(3,'Lakshmi 3','Male',69,'Vellore','Asthma',154,310,30.62,'Non-Smoker',98766,'2025-02-13','2025-02-28'),
(4,'Meena 4','Female',38,'Madurai','Asthma',126,312,20.62,'Smoker',146117,'2025-07-08','2025-07-13'),
(5,'Ramesh 5','Male',38,'Madurai','Diabetes',142,174,19.35,'Non-Smoker',118252,'2025-08-13','2025-08-14'),
(6,'Nisha 6','Male',32,'Erode','Heart Disease',109,235,33.49,'Smoker',136192,'2025-01-13','2025-01-26'),
(7,'Deepa 7','Male',37,'Tirunelveli','Diabetes',95,211,23.99,'Smoker',179266,'2024-10-21','2024-11-07'),
(8,'Arun 8','Female',33,'Tirunelveli','Heart Disease',106,204,34.42,'Smoker',85528,'2025-07-20','2025-07-31'),
(9,'Arun 9','Male',78,'Madurai','Asthma',104,300,20.38,'Smoker',185726,'2024-02-27','2024-03-08'),
(10,'Ramesh 10','Male',62,'Tiruppur','Asthma',106,166,19.1,'Smoker',118428,'2024-03-24','2024-04-10'),
(11,'Kiran 11','Male',60,'Trichy','Kidney Disease',145,127,38.94,'Smoker',32344,'2024-12-26','2025-01-09'),
(12,'Lakshmi 12','Female',46,'Tiruppur','Stroke',101,232,28.31,'Smoker',231586,'2025-03-26','2025-04-14'),
(13,'Lakshmi 13','Male',32,'Tirunelveli','Hypertension',100,341,30.52,'Smoker',246654,'2025-09-02','2025-09-20'),
(14,'Lakshmi 14','Female',81,'Vellore','Diabetes',113,140,19.74,'Smoker',121646,'2024-11-01','2024-11-18'),
(15,'Lakshmi 15','Male',39,'Tirunelveli','Kidney Disease',136,308,26.82,'Smoker',213229,'2024-02-16','2024-02-23'),
(16,'Karthik 16','Male',69,'Madurai','Heart Disease',159,148,28.57,'Non-Smoker',108391,'2025-02-23','2025-03-10'),
(17,'Kiran 17','Female',38,'Vellore','Hypertension',110,187,22.67,'Non-Smoker',158228,'2024-01-21','2024-02-08'),
(18,'Vignesh 18','Male',71,'Vellore','Heart Disease',182,310,34.89,'Non-Smoker',75941,'2024-09-15','2024-09-27'),
(19,'Rahul 19','Male',67,'Salem','Diabetes',129,304,26.44,'Non-Smoker',240402,'2024-06-11','2024-06-17'),
(20,'Priya 20','Female',47,'Vellore','Kidney Disease',168,151,39.82,'Non-Smoker',168327,'2024-10-11','2024-10-27'),
(21,'Suresh 21','Male',44,'Karur','Kidney Disease',150,201,31.68,'Non-Smoker',64378,'2024-03-18','2024-03-23'),
(22,'Vignesh 22','Female',68,'Madurai','Heart Disease',180,165,39.36,'Smoker',56053,'2024-04-06','2024-04-16'),
(23,'Priya 23','Female',20,'Salem','Heart Disease',146,239,37.99,'Non-Smoker',154279,'2024-09-06','2024-09-12'),
(24,'Deepa 24','Male',84,'Tiruppur','Hypertension',93,222,25.75,'Smoker',192286,'2024-03-14','2024-03-17'),
(25,'Suresh 25','Male',52,'Coimbatore','Kidney Disease',157,327,19.21,'Smoker',28095,'2025-08-19','2025-09-04'),
(26,'Arun 26','Male',50,'Erode','Hypertension',128,181,39.64,'Non-Smoker',141905,'2025-09-26','2025-10-09'),
(27,'Rahul 27','Female',77,'Erode','Asthma',133,282,28.58,'Smoker',132591,'2025-07-20','2025-08-02'),
(28,'Arun 28','Male',30,'Erode','Asthma',167,269,18.13,'Non-Smoker',54922,'2024-09-26','2024-09-29'),
(29,'Deepa 29','Female',54,'Madurai','Heart Disease',182,216,36.89,'Smoker',143629,'2025-11-04','2025-11-21'),
(30,'Nisha 30','Male',55,'Tirunelveli','Diabetes',163,329,19.74,'Non-Smoker',89874,'2025-02-15','2025-02-17'),
(31,'Meena 31','Female',44,'Trichy','Stroke',104,124,35.77,'Non-Smoker',101549,'2024-12-18','2025-01-06'),
(32,'Vijay 32','Male',74,'Chennai','Stroke',99,305,31.93,'Non-Smoker',35284,'2025-09-01','2025-09-16'),
(33,'Ananya 33','Female',63,'Erode','Diabetes',145,147,22.89,'Non-Smoker',63128,'2024-01-22','2024-01-29'),
(34,'Harini 34','Male',57,'Trichy','Hypertension',113,301,35.0,'Smoker',179354,'2025-02-28','2025-03-12'),
(35,'Arun 35','Female',32,'Chennai','Heart Disease',163,177,20.58,'Smoker',187680,'2025-08-15','2025-08-16'),
(36,'Harini 36','Female',34,'Chennai','Asthma',112,202,36.74,'Non-Smoker',52979,'2024-01-27','2024-02-12'),
(37,'Suresh 37','Male',70,'Tiruppur','Asthma',172,163,34.65,'Smoker',220152,'2024-09-11','2024-09-28'),
(38,'Kavya 38','Female',73,'Erode','Diabetes',166,343,18.02,'Smoker',88091,'2024-11-13','2024-11-17'),
(39,'Divya 39','Female',33,'Coimbatore','Stroke',179,196,37.59,'Smoker',32331,'2024-12-15','2024-12-20'),
(40,'Kavya 40','Female',49,'Madurai','Stroke',154,267,19.35,'Smoker',152635,'2024-04-25','2024-05-12'),
(41,'Sanjay 41','Female',64,'Tiruppur','Kidney Disease',149,339,26.07,'Non-Smoker',99417,'2025-03-25','2025-03-31'),
(42,'Karthik 42','Male',77,'Erode','Kidney Disease',166,280,39.39,'Smoker',219738,'2024-07-02','2024-07-04'),
(43,'Nisha 43','Female',59,'Erode','Asthma',188,128,31.35,'Non-Smoker',41347,'2025-10-19','2025-10-29'),
(44,'Meena 44','Male',45,'Chennai','Asthma',100,185,23.59,'Non-Smoker',242642,'2024-09-27','2024-10-10'),
(45,'Vijay 45','Female',67,'Trichy','Heart Disease',179,224,33.16,'Non-Smoker',42224,'2025-01-16','2025-01-17'),
(46,'Divya 46','Female',84,'Coimbatore','Stroke',114,267,19.28,'Non-Smoker',45098,'2025-11-03','2025-11-06'),
(47,'Lakshmi 47','Female',31,'Tiruppur','Stroke',126,180,24.59,'Non-Smoker',169837,'2025-02-19','2025-03-08'),
(48,'Harini 48','Female',69,'Vellore','Heart Disease',135,313,31.86,'Smoker',45027,'2024-07-06','2024-07-25'),
(49,'Priya 49','Female',28,'Trichy','Stroke',180,210,34.88,'Non-Smoker',229945,'2024-09-22','2024-10-09'),
(50,'Vignesh 50','Male',70,'Tiruppur','Kidney Disease',164,220,39.01,'Smoker',235379,'2024-12-09','2024-12-25'),
(51,'Harini 51','Female',48,'Karur','Heart Disease',162,161,34.01,'Non-Smoker',228130,'2024-06-06','2024-06-14'),
(52,'Ajith 52','Male',19,'Karur','Asthma',138,299,30.03,'Smoker',82591,'2024-06-25','2024-06-27'),
(53,'Kavya 53','Male',33,'Vellore','Hypertension',168,139,21.1,'Non-Smoker',26382,'2024-08-27','2024-09-01'),
(54,'Ananya 54','Male',76,'Tiruppur','Kidney Disease',116,166,28.33,'Smoker',246297,'2024-09-18','2024-09-29'),
(55,'Ramesh 55','Male',74,'Salem','Heart Disease',90,208,39.26,'Non-Smoker',196981,'2024-04-20','2024-04-23'),
(56,'Sanjay 56','Male',47,'Salem','Kidney Disease',141,251,30.09,'Non-Smoker',225834,'2024-04-08','2024-04-17'),
(57,'Divya 57','Female',26,'Coimbatore','Diabetes',164,250,31.29,'Non-Smoker',154353,'2024-01-07','2024-01-17'),
(58,'Deepa 58','Female',80,'Coimbatore','Asthma',105,183,34.95,'Non-Smoker',171591,'2024-05-06','2024-05-08'),
(59,'Sanjay 59','Male',66,'Vellore','Heart Disease',116,197,24.03,'Smoker',181174,'2025-09-09','2025-09-19'),
(60,'Deepa 60','Male',79,'Chennai','Asthma',161,281,39.2,'Smoker',132654,'2024-02-05','2024-02-25'),
(61,'Nisha 61','Female',62,'Karur','Diabetes',123,292,32.38,'Smoker',98582,'2024-06-01','2024-06-05'),
(62,'Suresh 62','Male',44,'Coimbatore','Stroke',107,213,21.12,'Non-Smoker',247184,'2024-04-10','2024-04-16'),
(63,'Manoj 63','Female',18,'Madurai','Hypertension',127,243,22.57,'Smoker',114176,'2025-08-01','2025-08-14'),
(64,'Ajith 64','Female',67,'Salem','Diabetes',173,135,26.51,'Non-Smoker',13019,'2024-05-30','2024-06-02'),
(65,'Divya 65','Male',18,'Chennai','Heart Disease',98,234,39.83,'Smoker',6233,'2025-09-22','2025-09-29'),
(66,'Deepa 66','Female',53,'Tiruppur','Heart Disease',188,186,33.2,'Smoker',29395,'2024-05-14','2024-06-01'),
(67,'Ananya 67','Female',53,'Tirunelveli','Asthma',159,146,18.09,'Non-Smoker',192126,'2024-05-13','2024-05-28'),
(68,'Ramesh 68','Female',77,'Erode','Asthma',93,174,24.51,'Smoker',42012,'2024-09-21','2024-10-05'),
(69,'Ananya 69','Male',31,'Erode','Heart Disease',116,343,32.12,'Non-Smoker',107763,'2025-10-09','2025-10-21'),
(70,'Rahul 70','Male',80,'Erode','Diabetes',93,301,36.02,'Smoker',192563,'2025-11-04','2025-11-20'),
(71,'Manoj 71','Female',76,'Karur','Kidney Disease',137,273,22.52,'Non-Smoker',148152,'2025-03-20','2025-03-21'),
(72,'Sanjay 72','Male',76,'Tirunelveli','Heart Disease',132,177,30.13,'Non-Smoker',86659,'2024-01-29','2024-02-03'),
(73,'Vignesh 73','Male',34,'Erode','Stroke',169,307,27.91,'Smoker',128739,'2024-04-14','2024-05-04'),
(74,'Karthik 74','Male',34,'Tirunelveli','Diabetes',127,128,20.8,'Smoker',123185,'2025-04-30','2025-05-09'),
(75,'Kavya 75','Male',49,'Coimbatore','Hypertension',132,185,25.32,'Smoker',55333,'2024-02-27','2024-03-11'),
(76,'Rahul 76','Male',52,'Karur','Stroke',148,326,32.93,'Smoker',245584,'2025-09-05','2025-09-11'),
(77,'Priya 77','Female',36,'Vellore','Hypertension',108,283,28.95,'Smoker',53078,'2025-06-26','2025-06-29'),
(78,'Rahul 78','Male',53,'Erode','Hypertension',184,210,24.09,'Smoker',33857,'2024-11-30','2024-12-14'),
(79,'Kavya 79','Male',36,'Salem','Asthma',94,346,32.53,'Smoker',101784,'2024-01-05','2024-01-09'),
(80,'Rahul 80','Female',70,'Vellore','Asthma',188,140,23.99,'Non-Smoker',177351,'2025-09-01','2025-09-15'),
(81,'Sanjay 81','Female',74,'Salem','Kidney Disease',183,152,25.34,'Smoker',46374,'2024-10-27','2024-11-03'),
(82,'Nisha 82','Male',35,'Madurai','Hypertension',115,271,32.51,'Non-Smoker',179965,'2024-03-02','2024-03-15'),
(83,'Karthik 83','Male',22,'Vellore','Hypertension',188,347,20.57,'Smoker',233650,'2024-03-17','2024-04-06'),
(84,'Lakshmi 84','Female',65,'Karur','Asthma',165,138,20.1,'Smoker',203877,'2024-03-26','2024-04-07'),
(85,'Manoj 85','Female',83,'Tiruppur','Hypertension',92,328,24.67,'Non-Smoker',15129,'2025-04-09','2025-04-15'),
(86,'Sanjay 86','Female',38,'Trichy','Heart Disease',100,139,27.21,'Non-Smoker',217341,'2025-11-24','2025-12-01'),
(87,'Harini 87','Female',76,'Trichy','Hypertension',175,272,23.79,'Smoker',36426,'2024-01-27','2024-02-13'),
(88,'Rahul 88','Female',68,'Coimbatore','Diabetes',126,188,24.21,'Smoker',188397,'2025-09-13','2025-09-19'),
(89,'Deepa 89','Male',51,'Coimbatore','Hypertension',117,321,19.5,'Smoker',9576,'2025-11-08','2025-11-16'),
(90,'Ramesh 90','Female',64,'Trichy','Hypertension',113,324,35.91,'Non-Smoker',97590,'2024-11-30','2024-12-12'),
(91,'Karthik 91','Female',19,'Tirunelveli','Stroke',94,210,20.24,'Non-Smoker',69707,'2024-01-14','2024-01-24'),
(92,'Priya 92','Female',79,'Trichy','Asthma',108,299,21.33,'Non-Smoker',244245,'2024-09-25','2024-10-12'),
(93,'Priya 93','Male',48,'Tirunelveli','Hypertension',165,186,18.17,'Smoker',14119,'2025-04-07','2025-04-18'),
(94,'Meena 94','Female',70,'Chennai','Asthma',114,175,38.9,'Non-Smoker',144088,'2024-03-14','2024-03-22'),
(95,'Deepa 95','Female',52,'Vellore','Hypertension',129,133,31.78,'Non-Smoker',85094,'2024-09-03','2024-09-08'),
(96,'Rahul 96','Male',63,'Tirunelveli','Asthma',154,304,25.05,'Smoker',201115,'2024-04-15','2024-04-30'),
(97,'Ananya 97','Male',35,'Vellore','Hypertension',108,343,26.88,'Non-Smoker',81464,'2024-11-25','2024-12-05'),
(98,'Harini 98','Female',52,'Trichy','Hypertension',180,322,23.23,'Non-Smoker',70894,'2025-05-26','2025-05-30'),
(99,'Vignesh 99','Male',66,'Tirunelveli','Asthma',176,236,35.06,'Smoker',227893,'2025-09-02','2025-09-18'),
(100,'Lakshmi 100','Male',63,'Karur','Heart Disease',170,175,21.75,'Non-Smoker',121401,'2025-06-12','2025-07-02'),
(101,'Vignesh 101','Male',80,'Madurai','Diabetes',92,271,18.95,'Non-Smoker',244488,'2025-05-13','2025-05-19'),
(102,'Vignesh 102','Female',54,'Madurai','Kidney Disease',131,343,30.0,'Non-Smoker',215268,'2024-02-26','2024-02-29'),
(103,'Ajith 103','Female',20,'Tiruppur','Heart Disease',158,334,22.17,'Non-Smoker',222040,'2025-11-24','2025-12-01'),
(104,'Divya 104','Female',62,'Tiruppur','Asthma',169,169,30.74,'Non-Smoker',29723,'2025-07-20','2025-08-05'),
(105,'Deepa 105','Female',57,'Vellore','Asthma',133,154,20.1,'Non-Smoker',42060,'2024-06-11','2024-06-29'),
(106,'Ramesh 106','Male',79,'Madurai','Stroke',151,287,24.95,'Smoker',201101,'2024-10-20','2024-10-26'),
(107,'Ananya 107','Male',60,'Tirunelveli','Heart Disease',138,122,37.48,'Smoker',143479,'2025-02-11','2025-03-03'),
(108,'Kavya 108','Female',76,'Salem','Kidney Disease',136,294,35.07,'Non-Smoker',68448,'2024-09-28','2024-10-07'),
(109,'Nisha 109','Female',71,'Salem','Kidney Disease',179,234,34.5,'Non-Smoker',143229,'2025-09-15','2025-09-27'),
(110,'Arun 110','Female',67,'Madurai','Hypertension',124,203,27.75,'Non-Smoker',56439,'2025-03-03','2025-03-16'),
(111,'Meena 111','Male',43,'Vellore','Asthma',176,162,34.86,'Non-Smoker',159397,'2025-11-23','2025-12-07'),
(112,'Ananya 112','Female',67,'Vellore','Stroke',131,184,27.15,'Non-Smoker',215272,'2024-08-31','2024-09-13'),
(113,'Karthik 113','Female',34,'Chennai','Hypertension',129,154,34.97,'Smoker',110950,'2024-05-26','2024-05-29'),
(114,'Karthik 114','Male',44,'Coimbatore','Asthma',144,313,24.0,'Non-Smoker',115846,'2025-10-29','2025-11-09'),
(115,'Kiran 115','Male',63,'Erode','Heart Disease',118,130,30.99,'Non-Smoker',248025,'2025-03-05','2025-03-14'),
(116,'Suresh 116','Male',18,'Karur','Diabetes',140,170,18.53,'Non-Smoker',160236,'2024-11-26','2024-12-12'),
(117,'Arun 117','Female',73,'Tiruppur','Stroke',111,343,31.74,'Smoker',52841,'2024-07-15','2024-07-29'),
(118,'Deepa 118','Male',23,'Tirunelveli','Diabetes',100,251,23.47,'Smoker',197641,'2025-05-21','2025-06-04'),
(119,'Priya 119','Male',54,'Erode','Heart Disease',132,206,22.38,'Non-Smoker',112902,'2024-11-24','2024-12-10'),
(120,'Divya 120','Male',20,'Tirunelveli','Kidney Disease',117,162,33.96,'Non-Smoker',63770,'2024-12-23','2024-12-28'),
(121,'Arun 121','Female',80,'Madurai','Diabetes',141,245,26.12,'Smoker',236950,'2025-10-07','2025-10-11'),
(122,'Sanjay 122','Male',46,'Salem','Asthma',186,211,22.34,'Smoker',228419,'2025-08-02','2025-08-13'),
(123,'Ramesh 123','Female',47,'Madurai','Asthma',106,322,19.84,'Smoker',124533,'2024-06-24','2024-07-03'),
(124,'Rahul 124','Male',72,'Tirunelveli','Diabetes',120,341,32.2,'Non-Smoker',226494,'2025-11-14','2025-11-15'),
(125,'Rahul 125','Male',61,'Tiruppur','Asthma',90,237,34.6,'Smoker',93765,'2024-05-12','2024-05-29'),
(126,'Kiran 126','Male',53,'Karur','Asthma',133,255,25.32,'Non-Smoker',183799,'2024-01-05','2024-01-19'),
(127,'Kavya 127','Male',71,'Trichy','Hypertension',181,324,33.04,'Non-Smoker',12342,'2024-10-27','2024-10-31'),
(128,'Divya 128','Male',80,'Chennai','Asthma',155,340,37.86,'Smoker',211571,'2024-01-28','2024-02-08'),
(129,'Lakshmi 129','Male',62,'Chennai','Asthma',132,214,33.66,'Non-Smoker',8770,'2025-04-24','2025-04-27'),
(130,'Priya 130','Male',36,'Coimbatore','Diabetes',106,170,29.24,'Non-Smoker',198064,'2024-03-21','2024-03-29'),
(131,'Vignesh 131','Male',33,'Coimbatore','Asthma',164,231,37.56,'Smoker',142873,'2025-01-07','2025-01-20'),
(132,'Vignesh 132','Female',30,'Karur','Diabetes',100,287,23.63,'Non-Smoker',138443,'2024-08-25','2024-09-11'),
(133,'Kavya 133','Male',57,'Coimbatore','Asthma',97,207,37.03,'Smoker',21143,'2024-07-28','2024-08-11'),
(134,'Suresh 134','Male',38,'Karur','Stroke',138,279,33.18,'Non-Smoker',116057,'2025-06-27','2025-07-10'),
(135,'Rahul 135','Male',35,'Vellore','Diabetes',102,229,35.62,'Smoker',145566,'2025-11-02','2025-11-12'),
(136,'Arun 136','Female',64,'Chennai','Hypertension',97,206,35.02,'Non-Smoker',190662,'2025-03-09','2025-03-25'),
(137,'Ajith 137','Male',61,'Karur','Hypertension',112,176,26.39,'Smoker',111811,'2024-05-08','2024-05-14'),
(138,'Manoj 138','Female',43,'Tiruppur','Hypertension',132,314,26.98,'Smoker',106920,'2025-10-28','2025-11-10'),
(139,'Rahul 139','Male',63,'Erode','Kidney Disease',178,350,39.81,'Non-Smoker',56259,'2024-08-12','2024-08-29'),
(140,'Arun 140','Female',68,'Tiruppur','Diabetes',92,291,39.36,'Non-Smoker',11714,'2024-08-05','2024-08-06'),
(141,'Nisha 141','Male',60,'Madurai','Diabetes',125,350,39.77,'Smoker',247621,'2024-03-30','2024-04-16'),
(142,'Karthik 142','Female',52,'Karur','Heart Disease',140,320,20.0,'Non-Smoker',48604,'2024-01-12','2024-01-29'),
(143,'Lakshmi 143','Male',38,'Tiruppur','Diabetes',175,218,28.69,'Smoker',22601,'2025-08-17','2025-09-01'),
(144,'Vignesh 144','Male',78,'Madurai','Heart Disease',183,290,32.56,'Smoker',171528,'2025-02-11','2025-02-23'),
(145,'Suresh 145','Female',74,'Salem','Heart Disease',122,233,20.97,'Non-Smoker',127002,'2025-07-15','2025-07-18'),
(146,'Kavya 146','Female',20,'Karur','Heart Disease',143,274,30.06,'Non-Smoker',177713,'2024-11-19','2024-11-23'),
(147,'Kiran 147','Male',20,'Coimbatore','Heart Disease',132,147,25.94,'Smoker',198729,'2025-06-04','2025-06-10'),
(148,'Ajith 148','Female',29,'Trichy','Hypertension',129,260,29.31,'Non-Smoker',237374,'2025-04-04','2025-04-16'),
(149,'Manoj 149','Female',58,'Vellore','Diabetes',92,138,21.62,'Non-Smoker',111398,'2025-11-29','2025-12-02'),
(150,'Sanjay 150','Female',50,'Trichy','Heart Disease',120,339,25.68,'Smoker',189980,'2025-08-15','2025-08-26'),
(151,'Vijay 151','Female',33,'Vellore','Kidney Disease',167,212,29.67,'Non-Smoker',6704,'2024-05-08','2024-05-10'),
(152,'Harini 152','Male',64,'Karur','Hypertension',144,315,19.98,'Smoker',131040,'2025-09-01','2025-09-13'),
(153,'Sanjay 153','Male',63,'Vellore','Asthma',183,129,29.44,'Non-Smoker',81946,'2024-07-31','2024-08-07'),
(154,'Meena 154','Male',33,'Madurai','Asthma',130,343,36.7,'Smoker',37649,'2025-07-31','2025-08-05'),
(155,'Sanjay 155','Male',48,'Tiruppur','Diabetes',134,230,21.53,'Non-Smoker',127242,'2024-03-03','2024-03-05'),
(156,'Karthik 156','Female',38,'Vellore','Diabetes',173,211,36.13,'Non-Smoker',36785,'2025-07-21','2025-08-07'),
(157,'Harini 157','Female',56,'Tirunelveli','Diabetes',101,217,18.71,'Non-Smoker',49389,'2024-11-26','2024-12-02'),
(158,'Kavya 158','Male',27,'Tiruppur','Heart Disease',123,295,30.04,'Non-Smoker',164905,'2025-10-19','2025-11-04'),
(159,'Meena 159','Male',40,'Tiruppur','Stroke',148,177,18.99,'Smoker',54147,'2025-10-06','2025-10-13'),
(160,'Suresh 160','Male',53,'Vellore','Kidney Disease',96,204,29.79,'Smoker',97665,'2024-05-30','2024-06-01'),
(161,'Lakshmi 161','Male',83,'Salem','Asthma',139,148,22.03,'Non-Smoker',157417,'2024-01-24','2024-01-29'),
(162,'Vignesh 162','Male',38,'Madurai','Asthma',149,335,23.88,'Non-Smoker',23384,'2024-12-19','2024-12-24'),
(163,'Sanjay 163','Male',46,'Vellore','Diabetes',136,245,31.29,'Smoker',161811,'2024-03-16','2024-03-22'),
(164,'Nisha 164','Female',77,'Chennai','Hypertension',164,222,27.77,'Non-Smoker',164172,'2024-04-10','2024-04-20'),
(165,'Deepa 165','Male',41,'Karur','Kidney Disease',131,168,31.08,'Non-Smoker',138013,'2025-01-14','2025-01-15'),
(166,'Karthik 166','Male',72,'Trichy','Heart Disease',140,148,31.37,'Smoker',106381,'2025-01-26','2025-02-13'),
(167,'Rahul 167','Male',53,'Karur','Asthma',124,229,30.79,'Smoker',128900,'2024-04-20','2024-04-27'),
(168,'Ananya 168','Female',78,'Salem','Asthma',106,126,29.44,'Smoker',62753,'2024-01-25','2024-02-01'),
(169,'Ajith 169','Male',38,'Tirunelveli','Kidney Disease',93,248,39.86,'Smoker',218442,'2025-11-30','2025-12-02'),
(170,'Lakshmi 170','Male',34,'Coimbatore','Heart Disease',133,200,38.18,'Non-Smoker',50833,'2025-08-15','2025-08-28'),
(171,'Arun 171','Male',39,'Vellore','Asthma',96,303,33.47,'Smoker',230037,'2024-08-09','2024-08-22'),
(172,'Vignesh 172','Female',38,'Tiruppur','Asthma',151,124,37.01,'Smoker',26631,'2024-07-31','2024-08-06'),
(173,'Karthik 173','Male',55,'Karur','Heart Disease',171,349,18.77,'Smoker',36582,'2025-10-17','2025-10-18'),
(174,'Lakshmi 174','Male',61,'Karur','Asthma',148,286,29.96,'Smoker',56271,'2025-09-03','2025-09-07'),
(175,'Nisha 175','Female',59,'Trichy','Asthma',184,310,23.43,'Smoker',72236,'2025-04-26','2025-05-14'),
(176,'Ananya 176','Male',78,'Karur','Stroke',123,147,29.69,'Non-Smoker',123736,'2024-12-18','2024-12-30'),
(177,'Ramesh 177','Male',84,'Coimbatore','Heart Disease',144,171,35.5,'Smoker',172207,'2025-03-21','2025-04-06'),
(178,'Ajith 178','Male',66,'Salem','Diabetes',134,266,25.77,'Non-Smoker',117016,'2025-09-25','2025-10-04'),
(179,'Manoj 179','Male',52,'Coimbatore','Kidney Disease',123,155,27.03,'Smoker',60108,'2025-08-14','2025-08-18'),
(180,'Ajith 180','Female',32,'Salem','Diabetes',156,305,33.11,'Smoker',150094,'2025-07-29','2025-08-17'),
(181,'Rahul 181','Male',65,'Salem','Kidney Disease',172,288,22.61,'Smoker',244143,'2025-08-21','2025-08-24'),
(182,'Kavya 182','Female',19,'Karur','Asthma',136,309,30.88,'Non-Smoker',156062,'2024-05-03','2024-05-12'),
(183,'Vignesh 183','Male',55,'Vellore','Asthma',143,269,23.71,'Smoker',117426,'2025-05-23','2025-06-02'),
(184,'Vignesh 184','Female',56,'Salem','Stroke',102,209,31.54,'Non-Smoker',185170,'2025-01-13','2025-01-18'),
(185,'Sanjay 185','Female',47,'Coimbatore','Kidney Disease',135,333,23.18,'Smoker',102525,'2024-03-27','2024-04-16'),
(186,'Ramesh 186','Female',34,'Trichy','Diabetes',131,249,19.36,'Smoker',246511,'2024-04-11','2024-04-18'),
(187,'Vignesh 187','Male',58,'Trichy','Diabetes',112,285,28.92,'Smoker',200687,'2025-05-14','2025-05-20'),
(188,'Harini 188','Female',68,'Trichy','Stroke',137,316,39.62,'Smoker',61271,'2025-09-30','2025-10-14'),
(189,'Vignesh 189','Female',85,'Madurai','Stroke',143,225,23.38,'Smoker',147882,'2024-07-11','2024-07-14'),
(190,'Rahul 190','Female',82,'Trichy','Asthma',172,206,35.29,'Non-Smoker',73770,'2024-05-23','2024-06-06'),
(191,'Kiran 191','Female',73,'Salem','Asthma',137,184,38.61,'Smoker',156464,'2024-06-23','2024-07-05'),
(192,'Ajith 192','Male',27,'Vellore','Heart Disease',184,283,36.37,'Smoker',160328,'2025-11-18','2025-11-21'),
(193,'Ramesh 193','Male',54,'Madurai','Hypertension',124,323,38.76,'Non-Smoker',106708,'2024-03-04','2024-03-24'),
(194,'Vijay 194','Female',36,'Tiruppur','Hypertension',142,198,29.96,'Smoker',112662,'2024-04-06','2024-04-08'),
(195,'Suresh 195','Male',47,'Vellore','Asthma',110,350,21.31,'Smoker',153852,'2025-07-31','2025-08-16'),
(196,'Ananya 196','Male',52,'Trichy','Stroke',130,286,24.08,'Non-Smoker',77117,'2025-09-28','2025-10-11'),
(197,'Priya 197','Male',78,'Tirunelveli','Diabetes',147,342,32.38,'Smoker',179400,'2024-07-30','2024-08-17'),
(198,'Sanjay 198','Male',46,'Vellore','Kidney Disease',103,204,30.89,'Non-Smoker',208285,'2024-07-15','2024-07-16'),
(199,'Vijay 199','Male',32,'Chennai','Stroke',175,249,26.02,'Smoker',108763,'2025-08-14','2025-08-25'),
(200,'Harini 200','Female',68,'Vellore','Heart Disease',128,254,18.97,'Non-Smoker',107673,'2025-10-26','2025-11-10');

#1.Display all patient records
select *
from PatientRecords;

#2. Display patient name and disease
select PatientName,Disease
from PatientRecords;

#Q3 Display patients older than 60
select *
from PatientRecords
where Age > 60;

#Q4 Display patients with treatment cost above 50000
select * 
from PatientRecords
where TreatmentCost > 50000;

#Q5 Display all patients from Chennai
select *  
from PatientRecords
where city = 'Chennai';

#Q6 Average Treatment Cost
select avg(TreatmentCost)
from PatientRecords;

#Q7 Highest Treatment Cost
select max(TreatmentCost)
from PatientRecords;

#Q8 Count Patients by Disease
select Disease,count(*)
from PatientRecords
group by Disease;

#Q9 Average BMI by Disease
select Disease,avg(BMI)
from PatientRecords
group by Disease;

#Q10 Cities having more than 5 patients
select City,count(PatientName)
from PatientRecords
group by City
having count(patientName)>5;

#Q11 Patient names starting with A
select PatientName
from PatientRecords
where PatientName like 'A%';

#Q12 Patient names ending with n
select PatientName
from PatientRecords
where PatientName like '%n';

#Q13 Display name length
select length(PatientName)
from PatientRecords;

#Q14 Display uppercase names
select upper(PatientName)
from PatientRecords;

#Q15 Length of Stay
select PatientName,datediff(DischargeDate-AdmissionDate) 
from PatientRecords;

#Q16 Admission Year
select PatientName,year(AdmissionDate)
from PatientRecords;

#Advanced Queries
#Q17 Patients above average treatment cost
select * 
from PatientRecords
where TreatmentCost >
(
	select avg(TreatmentCost)
    from PatientRecords
);
#Q18 Categorize Patients using CASE
select 
	PatientName,
    TreatmentCost,
    case
		when TreatmentCost < 20000 then 'low'
        when treatmentCost < 50000 then 'medium'
        else 'high'
	end as cost_category
from PatientRecords;
#Q19 Rank Patients by Treatment Cost
select
	PatientName,
    TreatmentCost,
    rank() over(
		order by TreatmentCost desc
	) as Cost_Rank
from PatientRecords;

#Q20 Top Cost Patient per Disease
SELECT *
FROM
(
SELECT
PatientName,
Disease,
TreatmentCost,
ROW_NUMBER() OVER (
PARTITION BY Disease
ORDER BY TreatmentCost DESC
) AS RN
FROM PatientRecords
) X
WHERE RN = 1;

#21.Which disease has the highest average treatment cost?
select Disease,avg(TreatmentCost)
from PatientRecords
group by disease
order by avg(TreatmentCost) desc
limit 1;

#22. Which city contributes the most patients?
select City,count(*)
from PatientRecords
group by City
order by count(*) desc
limit 1;

#23. What is the average hospital stay duration?
select avg(datediff(DischargeDate,AdmissionDate)) as avg_hos_stay_duration
from PatientRecords;

#24. Which patient incurred the highest treatment cost?
select PatientName,TreatmentCost
from PatientRecords
order by TreatmentCost desc
limit 1;

#25. What is the average cholesterol level by disease?
select Disease,avg(cholesterol)
from PatientRecords
group by Disease;

#26. Which disease affects senior citizens the most?
select Disease,count(*) as Total_Patient
from patientRecords
where age>=60
group by Disease
order by Total_Patient desc
limit 1;

#27. What percentage of patients have hypertension?
select count(*)*100/
		(select count(*) from PatientRecords) as hypertension_percentage
from PatientRecords
where Disease = 'hypertension';
        
#28. What is the average BMI for heart disease patients?
select Disease,avg(BMI)
from PatientRecords
where Disease = 'Heart Disease';

#29. Which disease results in the longest hospital stay?
select Disease,datediff(DischargeDate,AdmissionDate) as longest_hos_stay
from PatientRecords
order by longest_hos_stay desc
limit 1;

#Disease Analytics
#30. Which disease has the highest number of patients?
select Disease,count(*)
from PatientRecords
group by Disease
order by count(*) desc
limit 1;

#31. Which disease has the highest treatment cost?
select Disease,max(TreatmentCost)
from PatientRecords
group by Disease
order by max(TreatmentCost) desc
limit 1;

#32. Which disease has the longest average stay?
select Disease,avg(datediff(DischargeDate,AdmissionDate)) as Avg_stay
from PatientRecords
group by Disease
order by Avg_stay desc
limit 1;

#33. Which disease affects the oldest patients?
select Disease,max(age) as oldest_age
from patientRecords
group by Disease
order by oldest_age desc
limit 1;

#34. Which disease has the highest average cholesterol?
select Disease,avg(Cholesterol) as avg_choles
from PatientRecords
group by Disease
order by avg_choles desc
limit 1;

#Financial Analytics
#35. Total treatment revenue.
select sum(TreatmentCost)
from PatientRecords;

#36. Average treatment cost.
select avg(TreatmentCost)
from patientRecords;

#37. Maximum treatment cost.
select max(TreatmentCost)
from PatientRecords;

#38. Minimum treatment cost.
select min(TreatmentCost)
from patientRecords;

#39. Revenue generated by disease.
select Disease,sum(TreatmentCost) as Total_Revenue
from patientRecords
group by Disease
order by Total_Revenue desc;

#Patient Analytics
#40. Average age of patients.
select avg(age)
from patientRecords;

#41. Male vs Female count.
select Gender,count(Gender)
from patientRecords
group by Gender;

#42. City-wise patient count.
select City,count(*)
from patientRecords
group by City;

#43. Patients above average age.
select *
from patientRecords
where age > (
		select avg(age)
        from PatientRecords
);

#44. Patients with BMI above 30.
select *
from PatientRecords
where BMI > 30;

#Hospital Stay Analytics
#45. Average stay duration.
select avg(datediff(DischargeDate,AdmissionDate)) as avg_saty_duration
from PatientRecords;

#46. Longest stay duration.
select max(datediff(DischargeDate,AdmissionDate)) as longest_stay_duration
from PatientRecords;

#47. Shortest stay duration.
select min(datediff(DischargeDate,AdmissionDate)) as shortest_stay_duration
from PatientRecords;

#48. Disease-wise average stay.
select Disease,avg(datediff(dischargeDate,AdmissionDate)) as avg_stay
from patientRecords
group by Disease;

#49. City-wise average stay.
select City,avg(datediff(dischargeDate,AdmissionDate)) as avg_stay
from patientRecords
group by City;

#Health Analytics
#50. Average blood pressure.
select avg(bloodPressure)
from PatientRecords;

#51. Average cholesterol.
select avg(cholesterol)
from patientRecords;

#52. Patients with BP > 140.
select *
from patientRecords 
where bloodPressure > 140;

#53. Patients with cholesterol > 240.
select *
from patientRecords 
where cholesterol > 240;

#54. Disease-wise average BMI.
select Disease, avg(BMI)
from patientRecords
group by Disease;

