-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for penjadwalan
CREATE DATABASE IF NOT EXISTS `penjadwalan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `penjadwalan`;

-- Dumping structure for table penjadwalan.pararel
CREATE TABLE IF NOT EXISTS `pararel` (
  `Kode_Matakuliah` varchar(50) DEFAULT NULL,
  `Matakuliah` varchar(50) DEFAULT NULL,
  `Hari` varchar(50) DEFAULT NULL,
  `Jam` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table penjadwalan.pararel: ~2 rows (approximately)
/*!40000 ALTER TABLE `pararel` DISABLE KEYS */;
INSERT INTO `pararel` (`Kode_Matakuliah`, `Matakuliah`, `Hari`, `Jam`) VALUES
	('KJC401', 'Basis Data', 'Senin', '2019-07-06 17:26:28'),
	('KJC402', 'Matematika', 'Senin', '2019-07-06 17:26:50'),
	('KJC403', 'Kalkulus', 'Selasa', '2019-07-06 17:27:18');
/*!40000 ALTER TABLE `pararel` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.reguler
CREATE TABLE IF NOT EXISTS `reguler` (
  `Kode_Matakuliah` varchar(8) NOT NULL DEFAULT '',
  `Matakuliah` varchar(50) NOT NULL,
  `Hari` varchar(50) NOT NULL,
  `Jam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Kode_Matakuliah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table penjadwalan.reguler: ~3 rows (approximately)
/*!40000 ALTER TABLE `reguler` DISABLE KEYS */;
INSERT INTO `reguler` (`Kode_Matakuliah`, `Matakuliah`, `Hari`, `Jam`) VALUES
	('KJ101', 'Pembelajaran Beroriertasi Objek', 'Kamis', '2019-07-06 13:42:43'),
	('KJ102', 'Kalkulus', 'Jumat', '2019-07-06 14:44:35'),
	('KJ103', 'Matematika', 'Sabtu', '2019-07-06 14:45:06'),
	('KJ505', 'Sistem Operasi', 'Rabu', '2019-07-08 17:27:18');
/*!40000 ALTER TABLE `reguler` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
