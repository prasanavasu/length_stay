-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for lengthstay
CREATE DATABASE IF NOT EXISTS `lengthstay` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lengthstay`;

-- Dumping structure for table lengthstay.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table lengthstay.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table lengthstay.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_permission: ~56 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add ac', 1, 'add_ac'),
	(2, 'Can change ac', 1, 'change_ac'),
	(3, 'Can delete ac', 1, 'delete_ac'),
	(4, 'Can view ac', 1, 'view_ac'),
	(5, 'Can add combine', 2, 'add_combine'),
	(6, 'Can change combine', 2, 'change_combine'),
	(7, 'Can delete combine', 2, 'delete_combine'),
	(8, 'Can view combine', 2, 'view_combine'),
	(9, 'Can add general', 3, 'add_general'),
	(10, 'Can change general', 3, 'change_general'),
	(11, 'Can delete general', 3, 'delete_general'),
	(12, 'Can view general', 3, 'view_general'),
	(13, 'Can add icuroom', 4, 'add_icuroom'),
	(14, 'Can change icuroom', 4, 'change_icuroom'),
	(15, 'Can delete icuroom', 4, 'delete_icuroom'),
	(16, 'Can view icuroom', 4, 'view_icuroom'),
	(17, 'Can add iicu', 5, 'add_iicu'),
	(18, 'Can change iicu', 5, 'change_iicu'),
	(19, 'Can delete iicu', 5, 'delete_iicu'),
	(20, 'Can view iicu', 5, 'view_iicu'),
	(21, 'Can add register_form', 6, 'add_register_form'),
	(22, 'Can change register_form', 6, 'change_register_form'),
	(23, 'Can delete register_form', 6, 'delete_register_form'),
	(24, 'Can view register_form', 6, 'view_register_form'),
	(25, 'Can add sendreport', 7, 'add_sendreport'),
	(26, 'Can change sendreport', 7, 'change_sendreport'),
	(27, 'Can delete sendreport', 7, 'delete_sendreport'),
	(28, 'Can view sendreport', 7, 'view_sendreport'),
	(29, 'Can add log entry', 8, 'add_logentry'),
	(30, 'Can change log entry', 8, 'change_logentry'),
	(31, 'Can delete log entry', 8, 'delete_logentry'),
	(32, 'Can view log entry', 8, 'view_logentry'),
	(33, 'Can add permission', 9, 'add_permission'),
	(34, 'Can change permission', 9, 'change_permission'),
	(35, 'Can delete permission', 9, 'delete_permission'),
	(36, 'Can view permission', 9, 'view_permission'),
	(37, 'Can add group', 10, 'add_group'),
	(38, 'Can change group', 10, 'change_group'),
	(39, 'Can delete group', 10, 'delete_group'),
	(40, 'Can view group', 10, 'view_group'),
	(41, 'Can add user', 11, 'add_user'),
	(42, 'Can change user', 11, 'change_user'),
	(43, 'Can delete user', 11, 'delete_user'),
	(44, 'Can view user', 11, 'view_user'),
	(45, 'Can add content type', 12, 'add_contenttype'),
	(46, 'Can change content type', 12, 'change_contenttype'),
	(47, 'Can delete content type', 12, 'delete_contenttype'),
	(48, 'Can view content type', 12, 'view_contenttype'),
	(49, 'Can add session', 13, 'add_session'),
	(50, 'Can change session', 13, 'change_session'),
	(51, 'Can delete session', 13, 'delete_session'),
	(52, 'Can view session', 13, 'view_session'),
	(53, 'Can add details', 14, 'add_details'),
	(54, 'Can change details', 14, 'change_details'),
	(55, 'Can delete details', 14, 'delete_details'),
	(56, 'Can view details', 14, 'view_details');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table lengthstay.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$180000$BQJ9zhWGs9mj$GeO04nySa1K5vxJZhKpxMr3tY9SUaajaEG0HKyZm+m0=', '2020-06-06 11:46:42', 1, 'lengthofstay', '', '', 'lengthofstay@gmail.com', 1, 1, '2020-02-19 11:54:55');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table lengthstay.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table lengthstay.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table lengthstay.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table lengthstay.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.django_content_type: ~14 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(8, 'admin', 'logentry'),
	(10, 'auth', 'group'),
	(9, 'auth', 'permission'),
	(11, 'auth', 'user'),
	(12, 'contenttypes', 'contenttype'),
	(13, 'sessions', 'session'),
	(1, 'strokepatient', 'ac'),
	(2, 'strokepatient', 'combine'),
	(14, 'strokepatient', 'details'),
	(3, 'strokepatient', 'general'),
	(4, 'strokepatient', 'icuroom'),
	(5, 'strokepatient', 'iicu'),
	(6, 'strokepatient', 'register_form'),
	(7, 'strokepatient', 'sendreport');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table lengthstay.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.django_migrations: ~19 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-02-19 11:38:23'),
	(2, 'auth', '0001_initial', '2020-02-19 11:38:24'),
	(3, 'admin', '0001_initial', '2020-02-19 11:38:35'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-19 11:38:36'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-19 11:38:36'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-19 11:38:37'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-19 11:38:37'),
	(8, 'auth', '0003_alter_user_email_max_length', '2020-02-19 11:38:38'),
	(9, 'auth', '0004_alter_user_username_opts', '2020-02-19 11:38:38'),
	(10, 'auth', '0005_alter_user_last_login_null', '2020-02-19 11:38:38'),
	(11, 'auth', '0006_require_contenttypes_0002', '2020-02-19 11:38:39'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-19 11:38:39'),
	(13, 'auth', '0008_alter_user_username_max_length', '2020-02-19 11:38:39'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-19 11:38:39'),
	(15, 'auth', '0010_alter_group_name_max_length', '2020-02-19 11:38:40'),
	(16, 'auth', '0011_update_proxy_permissions', '2020-02-19 11:38:40'),
	(17, 'sessions', '0001_initial', '2020-02-19 11:38:40'),
	(18, 'strokepatient', '0001_initial', '2020-02-19 11:38:42'),
	(19, 'strokepatient', '0002_details', '2020-02-24 09:07:38');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table lengthstay.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.django_session: ~3 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('cmzaycoj2qebq4o1xithmxgtrcnbnmn8', 'NWQwMTA0OTE1NGNlNTJiMWMzMmFiZTFhZTljZWU2YzY2ZjU2MTg3YTp7ImVtYWlsIjoicHJhc2FuYWt1bWFyQGdtYWlsLmNvbSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OWIzYmQyNjkwODJlNmVhZmYwNTUxZWM3ZDhkYTVjZGEwZWE0MGQ0In0=', '2020-03-04 12:03:00'),
	('fdaklrvag67wxyk8f5cvnfo4j7fqmm17', 'ZmFkMDU3OTU3MTVkMjBmZDgyZjQxYTNmZjkxMTM1MTE4YjE1MDA3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OWIzYmQyNjkwODJlNmVhZmYwNTUxZWM3ZDhkYTVjZGEwZWE0MGQ0IiwiZW1haWwiOiJwcmFzYW5ha3VtYXJAZ21haWwuY29tIn0=', '2020-06-20 11:47:45'),
	('foyybdtxjgdcq73wqxduirdl60vi6tem', 'ZmFkMDU3OTU3MTVkMjBmZDgyZjQxYTNmZjkxMTM1MTE4YjE1MDA3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OWIzYmQyNjkwODJlNmVhZmYwNTUxZWM3ZDhkYTVjZGEwZWE0MGQ0IiwiZW1haWwiOiJwcmFzYW5ha3VtYXJAZ21haWwuY29tIn0=', '2020-03-09 13:44:23');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_ac
CREATE TABLE IF NOT EXISTS `strokepatient_ac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `date01` varchar(50) NOT NULL,
  `date1` varchar(50) NOT NULL,
  `time01` varchar(50) NOT NULL,
  `time1` varchar(50) NOT NULL,
  `emer` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_ac: ~0 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_ac` DISABLE KEYS */;
/*!40000 ALTER TABLE `strokepatient_ac` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_combine
CREATE TABLE IF NOT EXISTS `strokepatient_combine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nat` varchar(20) NOT NULL,
  `ste` varchar(10) NOT NULL,
  `age` int NOT NULL,
  `img` varchar(100) NOT NULL,
  `date0` varchar(100) NOT NULL,
  `level` varchar(200) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `emer` varchar(20) NOT NULL,
  `date1` varchar(200) NOT NULL,
  `value` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_combine: ~0 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_combine` DISABLE KEYS */;
/*!40000 ALTER TABLE `strokepatient_combine` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_details
CREATE TABLE IF NOT EXISTS `strokepatient_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Cancer` varchar(10) NOT NULL,
  `Autoimmune` varchar(10) NOT NULL,
  `Celiac` varchar(10) NOT NULL,
  `Heart` varchar(10) NOT NULL,
  `Infectious` varchar(10) NOT NULL,
  `Allergies` varchar(10) NOT NULL,
  `Crohn` varchar(10) NOT NULL,
  `Liver` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_details` DISABLE KEYS */;
INSERT INTO `strokepatient_details` (`id`, `Cancer`, `Autoimmune`, `Celiac`, `Heart`, `Infectious`, `Allergies`, `Crohn`, `Liver`) VALUES
	(1, '3', '5', '2', '3', '3', '6', '2', '2');
/*!40000 ALTER TABLE `strokepatient_details` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_general
CREATE TABLE IF NOT EXISTS `strokepatient_general` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `date01` varchar(50) NOT NULL,
  `date1` varchar(50) NOT NULL,
  `time01` varchar(50) NOT NULL,
  `time1` varchar(50) NOT NULL,
  `emer` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_general: ~1 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_general` DISABLE KEYS */;
INSERT INTO `strokepatient_general` (`id`, `pname`, `seatno`, `date01`, `date1`, `time01`, `time1`, `emer`, `level`, `status`) VALUES
	(1, 'prasana', '5', '2020-02-02', '2020-04-02', '02:02', '09:30', '1234567899', 'Cancer', 'Finished');
/*!40000 ALTER TABLE `strokepatient_general` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_icuroom
CREATE TABLE IF NOT EXISTS `strokepatient_icuroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `date01` varchar(50) NOT NULL,
  `date1` varchar(50) NOT NULL,
  `time01` varchar(50) NOT NULL,
  `time1` varchar(50) NOT NULL,
  `emer` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_icuroom: ~0 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_icuroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `strokepatient_icuroom` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_iicu
CREATE TABLE IF NOT EXISTS `strokepatient_iicu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `seatno` varchar(50) NOT NULL,
  `date01` varchar(50) NOT NULL,
  `date1` varchar(50) NOT NULL,
  `time01` varchar(50) NOT NULL,
  `time1` varchar(50) NOT NULL,
  `emer` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_iicu: ~0 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_iicu` DISABLE KEYS */;
/*!40000 ALTER TABLE `strokepatient_iicu` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_register_form
CREATE TABLE IF NOT EXISTS `strokepatient_register_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nat` varchar(20) NOT NULL,
  `ste` varchar(10) NOT NULL,
  `age` int NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_register_form: ~2 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_register_form` DISABLE KEYS */;
INSERT INTO `strokepatient_register_form` (`id`, `username`, `email`, `password`, `phone`, `nat`, `ste`, `age`, `img`) VALUES
	(1, 'prasana', 'prasanakumar@gmail.com', 'prasana', '9876543211', 'Indian', 'Tamil Nadu', 22, 'image/IMG_fT0hFWL.jpg'),
	(2, 'akbar', 'akbar@gmail.com', '', '1234567890', 'Indian', 't', 2, '');
/*!40000 ALTER TABLE `strokepatient_register_form` ENABLE KEYS */;

-- Dumping structure for table lengthstay.strokepatient_sendreport
CREATE TABLE IF NOT EXISTS `strokepatient_sendreport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date0` varchar(100) NOT NULL,
  `level` varchar(200) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `emer` varchar(20) NOT NULL,
  `date1` varchar(200) NOT NULL,
  `value` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lengthstay.strokepatient_sendreport: ~1 rows (approximately)
/*!40000 ALTER TABLE `strokepatient_sendreport` DISABLE KEYS */;
INSERT INTO `strokepatient_sendreport` (`id`, `date0`, `level`, `gname`, `dname`, `emer`, `date1`, `value`) VALUES
	(1, '2020-01-22', 'Cancer', 'prasana', '1', '0987654329', 'fever', '0');
/*!40000 ALTER TABLE `strokepatient_sendreport` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
