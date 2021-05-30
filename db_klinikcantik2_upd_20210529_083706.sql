-- MySQL dump 10.13  Distrib 5.1.37, for Win32 (ia32)
--
-- Host: localhost    Database: db_klinikcantik2_upd
-- ------------------------------------------------------
-- Server version	5.1.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antri_paket`
--

DROP TABLE IF EXISTS `antri_paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antri_paket` (
  `pasien` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `dokter` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `paket` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nomtri` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL,
  `nomtri1` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant1` datetime DEFAULT NULL,
  `nilai1` int(10) DEFAULT NULL,
  `nomtri2` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant2` datetime DEFAULT NULL,
  `nilai2` int(10) DEFAULT NULL,
  `nomtri3` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant3` datetime DEFAULT NULL,
  `nilai3` int(10) DEFAULT NULL,
  `nomtri4` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant4` datetime DEFAULT NULL,
  `nilai4` int(10) DEFAULT NULL,
  `nomtri5` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant5` datetime DEFAULT NULL,
  `nilai5` int(10) DEFAULT NULL,
  `nomtri6` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant6` datetime DEFAULT NULL,
  `nilai6` int(10) DEFAULT NULL,
  `nomtri7` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant7` datetime DEFAULT NULL,
  `nilai7` int(10) DEFAULT NULL,
  `nomtri8` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant8` datetime DEFAULT NULL,
  `nilai8` int(10) DEFAULT NULL,
  `nomtri9` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant9` datetime DEFAULT NULL,
  `nilai9` int(10) DEFAULT NULL,
  `nomtri10` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tglant10` datetime DEFAULT NULL,
  `nilai10` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antri_paket`
--

LOCK TABLES `antri_paket` WRITE;
/*!40000 ALTER TABLE `antri_paket` DISABLE KEYS */;
/*!40000 ALTER TABLE `antri_paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antrian`
--

DROP TABLE IF EXISTS `antrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antrian` (
  `nomtri` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `tgl` date DEFAULT NULL,
  `pasien` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `poli` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `dokter` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `masuk` time DEFAULT NULL,
  `keluar` time DEFAULT NULL,
  `notes` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `pos` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`nomtri`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antrian`
--

LOCK TABLES `antrian` WRITE;
/*!40000 ALTER TABLE `antrian` DISABLE KEYS */;
/*!40000 ALTER TABLE `antrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_auto`
--

DROP TABLE IF EXISTS `backup_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_auto` (
  `id` tinyint(1) unsigned NOT NULL,
  `letak` varchar(60) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `stat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_auto`
--

LOCK TABLES `backup_auto` WRITE;
/*!40000 ALTER TABLE `backup_auto` DISABLE KEYS */;
INSERT INTO `backup_auto` VALUES (0,'C:\\','21:00:00',0);
/*!40000 ALTER TABLE `backup_auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebas`
--

DROP TABLE IF EXISTS `bebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bebas` (
  `tgl` date DEFAULT NULL,
  `no_rsp` int(10) DEFAULT NULL,
  `jns_rsp` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `dokter` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `pasien` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `inst` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `jns_byr` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `jum_ob` decimal(10,0) DEFAULT '0',
  `racik` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `jum_r` decimal(10,0) DEFAULT '0',
  `jum_rck` decimal(10,0) DEFAULT '0',
  `jum_kap` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0',
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebas`
--

LOCK TABLES `bebas` WRITE;
/*!40000 ALTER TABLE `bebas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebas_1`
--

DROP TABLE IF EXISTS `bebas_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bebas_1` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kapsul` int(4) DEFAULT '0',
  `hrg_jual` decimal(10,0) DEFAULT '0',
  `discount` decimal(10,0) DEFAULT '0',
  `jml_brg` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebas_1`
--

LOCK TABLES `bebas_1` WRITE;
/*!40000 ALTER TABLE `bebas_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `bebas_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebas_2`
--

DROP TABLE IF EXISTS `bebas_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bebas_2` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kapsul` int(4) DEFAULT '0',
  `hrg_jual` decimal(10,0) DEFAULT '0',
  `discount` decimal(10,0) DEFAULT '0',
  `jml_brg` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebas_2`
--

LOCK TABLES `bebas_2` WRITE;
/*!40000 ALTER TABLE `bebas_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `bebas_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokter` (
  `kode` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `fee1` tinyint(2) unsigned DEFAULT '0',
  `fee2` tinyint(2) DEFAULT '0',
  `fee3` tinyint(2) DEFAULT '0',
  KEY `kode` (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES ('D03','PUJI ASTUTI','','','beautician',0,0,0),('D01','SIWI SARASWATI, dr','-','-','dokter',0,0,0),('D02','AGNES MONICA, dr','','','dokter',0,0,0);
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktur`
--

DROP TABLE IF EXISTS `faktur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faktur` (
  `tgl` date DEFAULT NULL,
  `no_fkt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `supp` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `ppn` tinyint(3) unsigned DEFAULT '0',
  `bruto` decimal(10,2) DEFAULT '0.00',
  `diskon` decimal(10,2) DEFAULT '0.00',
  `netto` decimal(10,2) DEFAULT '0.00',
  `expired` date DEFAULT NULL,
  `bayar` date DEFAULT NULL,
  `setjual` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktur`
--

LOCK TABLES `faktur` WRITE;
/*!40000 ALTER TABLE `faktur` DISABLE KEYS */;
/*!40000 ALTER TABLE `faktur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktur_1`
--

DROP TABLE IF EXISTS `faktur_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faktur_1` (
  `no_fkt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT '0.00',
  `jml` int(6) unsigned DEFAULT '0',
  `sat` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `jml2` int(6) unsigned DEFAULT '0',
  `sat2` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `diskon` decimal(4,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktur_1`
--

LOCK TABLES `faktur_1` WRITE;
/*!40000 ALTER TABLE `faktur_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `faktur_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktur_2`
--

DROP TABLE IF EXISTS `faktur_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faktur_2` (
  `no_fkt` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT '0.00',
  `jml` int(6) unsigned DEFAULT '0',
  `sat` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `jml2` int(6) unsigned DEFAULT '0',
  `sat2` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `diskon` decimal(4,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `expired` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktur_2`
--

LOCK TABLES `faktur_2` WRITE;
/*!40000 ALTER TABLE `faktur_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `faktur_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `dokter` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `senin` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `selasa` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `rabu` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `kamis` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `jumat` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `sabtu` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `minggu` varchar(24) COLLATE latin1_general_ci DEFAULT NULL,
  `notes` varchar(20) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kredit`
--

DROP TABLE IF EXISTS `kredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kredit` (
  `kode` varchar(4) COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kontak` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  KEY `kode` (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kredit`
--

LOCK TABLES `kredit` WRITE;
/*!40000 ALTER TABLE `kredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `kredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunj`
--

DROP TABLE IF EXISTS `kunj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kunj` (
  `id` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `unit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `pasien` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `dokter` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `jenis` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `daft` decimal(10,0) DEFAULT '0',
  `jasa` decimal(10,0) DEFAULT '0',
  `tind` decimal(10,0) DEFAULT '0',
  `obat` decimal(10,0) DEFAULT '0',
  `lain2` decimal(10,0) DEFAULT '0',
  `admin` decimal(10,0) DEFAULT '0',
  `bruto` decimal(10,0) DEFAULT '0',
  `diskon` decimal(10,0) DEFAULT '0',
  `netto` decimal(10,0) DEFAULT '0',
  `bayar` decimal(10,0) DEFAULT '0',
  `hutang` decimal(10,0) DEFAULT '0',
  `bank` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `nokartu` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `voucher` decimal(10,0) DEFAULT NULL,
  `novc` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tahap` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `kwit_obat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `notes` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunj`
--

LOCK TABLES `kunj` WRITE;
/*!40000 ALTER TABLE `kunj` DISABLE KEYS */;
/*!40000 ALTER TABLE `kunj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `login` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `asal` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `notes` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('admin','2014-05-03 06:39:01','127.0.0.1','keluar'),('admin','2021-05-29 08:29:34','127.0.0.1','masuk'),('admin','2021-05-29 08:33:26','127.0.0.1','masuk'),('admin','2021-05-29 08:35:36','127.0.0.1','masuk');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luar`
--

DROP TABLE IF EXISTS `luar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luar` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT '0',
  `pasien` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `bruto` decimal(10,0) DEFAULT '0',
  `disc_all` decimal(4,0) DEFAULT NULL,
  `netto` decimal(10,0) DEFAULT '0',
  `jenis` varchar(12) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luar`
--

LOCK TABLES `luar` WRITE;
/*!40000 ALTER TABLE `luar` DISABLE KEYS */;
/*!40000 ALTER TABLE `luar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luar_1`
--

DROP TABLE IF EXISTS `luar_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luar_1` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT '0',
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `hrg_jual` decimal(10,0) DEFAULT '0',
  `discount` decimal(10,0) DEFAULT '0',
  `jml_brg` decimal(10,0) DEFAULT '0',
  `jum_tot` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luar_1`
--

LOCK TABLES `luar_1` WRITE;
/*!40000 ALTER TABLE `luar_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `luar_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luar_2`
--

DROP TABLE IF EXISTS `luar_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luar_2` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `hrg_jual` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `jml_brg` decimal(10,0) DEFAULT NULL,
  `jum_tot` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luar_2`
--

LOCK TABLES `luar_2` WRITE;
/*!40000 ALTER TABLE `luar_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `luar_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ob_tdk_trs`
--

DROP TABLE IF EXISTS `ob_tdk_trs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ob_tdk_trs` (
  `kwit` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `pasien` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `jumlah` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ob_tdk_trs`
--

LOCK TABLES `ob_tdk_trs` WRITE;
/*!40000 ALTER TABLE `ob_tdk_trs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ob_tdk_trs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obat_tind`
--

DROP TABLE IF EXISTS `obat_tind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obat_tind` (
  `item` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `jumlah` int(3) DEFAULT NULL,
  `notes` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat_tind`
--

LOCK TABLES `obat_tind` WRITE;
/*!40000 ALTER TABLE `obat_tind` DISABLE KEYS */;
/*!40000 ALTER TABLE `obat_tind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operasional`
--

DROP TABLE IF EXISTS `operasional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operasional` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `bagian` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL,
  `notes` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operasional`
--

LOCK TABLES `operasional` WRITE;
/*!40000 ALTER TABLE `operasional` DISABLE KEYS */;
INSERT INTO `operasional` VALUES (1,'gaji','-',1000000,'07-2012'),(2,'makan','-',2000000,'07-2012'),(3,'listrik','-',3000000,'07-2012'),(4,'air','-',5000000,'07-2012'),(5,'telpon','-',6000000,'07-2012'),(6,'atk','-',0,'07-2012'),(7,'peralatan','-',0,'07-2012'),(8,'transport','-',0,'07-2012'),(9,'lain1','-',0,'07-2012'),(10,'lain2','-',0,'07-2012'),(11,'lain3','-',0,'07-2012'),(12,'gaji','-',50000000,'08-2012'),(13,'makan','-',20000000,'08-2012'),(14,'listrik','-',30000000,'08-2012'),(15,'air','-',40000000,'08-2012'),(16,'telpon','-',60000000,'08-2012'),(17,'atk','-',90000000,'08-2012'),(18,'peralatan','-',0,'08-2012'),(19,'transport','-',0,'08-2012'),(20,'lain1','-',0,'08-2012'),(21,'lain2','-',0,'08-2012'),(22,'lain3','-',0,'08-2012'),(23,'gaji','-',10000,'09-2012'),(24,'makan','-',20000,'09-2012'),(25,'listrik','-',30000,'09-2012'),(26,'air','-',12000,'09-2012'),(27,'telpon','-',5000,'09-2012'),(28,'atk','-',1000,'09-2012'),(29,'peralatan','-',2400,'09-2012'),(30,'transport','-',10000,'09-2012'),(31,'lain1','-',200,'09-2012'),(32,'lain2','-',350,'09-2012'),(33,'lain3','-',0,'09-2012'),(34,'gaji','-',12000000,'10-2012'),(35,'makan','-',2000000,'10-2012'),(36,'listrik','-',5500000,'10-2012'),(37,'air','-',1000000,'10-2012'),(38,'telpon','-',1200000,'10-2012'),(39,'atk','-',100000,'10-2012'),(40,'peralatan','-',0,'10-2012'),(41,'transport','-',1250000,'10-2012'),(42,'lain1','-',100000,'10-2012'),(43,'lain2','-',0,'10-2012'),(44,'lain3','-',0,'10-2012'),(45,'gaji','-',12000000,'01-2013'),(46,'makan','-',800000,'01-2013'),(47,'listrik','-',1200000,'01-2013'),(48,'air','-',1000000,'01-2013'),(49,'telpon','-',900000,'01-2013'),(50,'atk','-',10000,'01-2013'),(51,'peralatan','-',12500,'01-2013'),(52,'transport','-',126900,'01-2013'),(53,'lain1','-',0,'01-2013'),(54,'lain2','-',0,'01-2013'),(55,'lain3','-',0,'01-2013'),(56,'gaji','-',12000000,'05-2013'),(57,'makan','-',2000000,'05-2013'),(58,'listrik','-',100000,'05-2013'),(59,'air','-',120000,'05-2013'),(60,'telpon','-',500000,'05-2013'),(61,'atk','-',0,'05-2013'),(62,'peralatan','-',0,'05-2013'),(63,'transport','-',0,'05-2013'),(64,'lain1','-',0,'05-2013'),(65,'lain2','-',0,'05-2013'),(66,'lain3','-',0,'05-2013'),(67,'gaji','-',10,'12-2013'),(68,'makan','-',20,'12-2013'),(69,'listrik','-',30,'12-2013'),(70,'air','-',44,'12-2013'),(71,'telpon','-',50,'12-2013'),(72,'atk','-',66,'12-2013'),(73,'peralatan','-',70,'12-2013'),(74,'transport','-',88,'12-2013'),(75,'lain1','-',90,'12-2013'),(76,'lain2','-',100,'12-2013'),(77,'lain3','-',110,'12-2013'),(78,'gaji','-',1000,'01-2021'),(79,'makan','-',1000,'01-2021'),(80,'listrik','-',1000,'01-2021'),(81,'air','-',1000,'01-2021'),(82,'telpon','-',1000,'01-2021'),(83,'atk','-',1000,'01-2021'),(84,'peralatan','-',1000,'01-2021'),(85,'transport','-',1000,'01-2021'),(86,'lain1','-',1000,'01-2021'),(87,'lain2','-',1000,'01-2021'),(88,'lain3','-',1000,'01-2021');
/*!40000 ALTER TABLE `operasional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_rwy`
--

DROP TABLE IF EXISTS `paket_rwy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket_rwy` (
  `nomtri` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `paket` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item1` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item2` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item3` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item4` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item5` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item6` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item7` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item8` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item9` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item10` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item11` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `item12` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `notes` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`nomtri`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_rwy`
--

LOCK TABLES `paket_rwy` WRITE;
/*!40000 ALTER TABLE `paket_rwy` DISABLE KEYS */;
/*!40000 ALTER TABLE `paket_rwy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_tind`
--

DROP TABLE IF EXISTS `paket_tind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket_tind` (
  `item` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `jumlah` int(3) DEFAULT NULL,
  `notes` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_tind`
--

LOCK TABLES `paket_tind` WRITE;
/*!40000 ALTER TABLE `paket_tind` DISABLE KEYS */;
INSERT INTO `paket_tind` VALUES ('B014','B002','Facial Acne',3,'-'),('B014','B003','Facial Collagen',2,'-'),('B014','B007','Peeling Acne',1,'-'),('B015','B002','Facial Acne',4,'-'),('B015','B003','Facial Collagen',6,'-'),('B015','B007','Peeling Acne',1,'-'),('B016','B007','Peeling Acne',3,'-'),('B016','B008','Peeling Whitening',2,'-'),('B016','B010','Peeling Anti Aging',1,'-'),('B017','B003','Facial Collagen',5,'-'),('B017','B010','Peeling Anti Aging',3,'-'),('B017','B008','Peeling Whitening',3,'-'),('B017','B013','Meso Body',1,'-');
/*!40000 ALTER TABLE `paket_tind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket_tindx`
--

DROP TABLE IF EXISTS `paket_tindx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket_tindx` (
  `item` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `jumlah` int(3) DEFAULT NULL,
  `notes` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket_tindx`
--

LOCK TABLES `paket_tindx` WRITE;
/*!40000 ALTER TABLE `paket_tindx` DISABLE KEYS */;
/*!40000 ALTER TABLE `paket_tindx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasien` (
  `kode` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `daftar` date DEFAULT NULL,
  `kary` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nopeg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `asuransi` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `umur` smallint(2) DEFAULT NULL,
  `telp` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `hp1` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `hp2` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nomember` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode`),
  KEY `cm` (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES ('A130001','ARINI SARASWATI','2013-11-27','-','-','','Islam','P','Jl. Raya Cibinong III no.79, Bogor','1979-08-19',34,'021-23520906','08167248698','','','A130001_20131127_131214.jpg',''),('H130001','HENNY RISWANTI','2013-12-11','-','-','','Kristen','P','JAKARTA','1978-09-12',35,'021-93593935','','','','H130001_20131211_144825.jpg',''),('D140001','DEWI HANDAYANI','2014-03-05','-','-','','Islam','P','jL. Teuku Cik Ditiro III no.7, Jakarta','1978-09-12',36,'','08127267264','','','D140001_20140305_140645.jpg',''),('A140001','ANI SYRAHMAN','2014-03-05','-','-','','Islam','P','','0000-00-00',0,'','','','','A140001_20140305_145013.jpg','');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasienx`
--

DROP TABLE IF EXISTS `pasienx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasienx` (
  `kode` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `daftar` date DEFAULT NULL,
  `kary` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nopeg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `asuransi` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `divisi` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `umur` smallint(2) DEFAULT NULL,
  `telp` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `hp1` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `hp2` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nomember` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode`),
  KEY `cm` (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasienx`
--

LOCK TABLES `pasienx` WRITE;
/*!40000 ALTER TABLE `pasienx` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasienx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periksa`
--

DROP TABLE IF EXISTS `periksa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periksa` (
  `nomtri` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `pasien` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `bagian` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `dokter` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `paket` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `anamnesa` text COLLATE latin1_general_ci,
  `periksa` text COLLATE latin1_general_ci,
  `periksa2` text COLLATE latin1_general_ci,
  `diagnosa` text COLLATE latin1_general_ci,
  `jasa` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `jasa2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan2` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan3` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan4` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan5` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan6` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan7` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan8` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan9` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan10` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan11` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `tindakan12` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse1` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse2` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse3` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse4` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse5` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse6` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse7` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse8` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse9` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse10` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse11` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nurse12` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `disk1` smallint(2) DEFAULT '0',
  `disk2` smallint(2) DEFAULT '0',
  `disk3` smallint(2) DEFAULT '0',
  `disk4` smallint(2) DEFAULT '0',
  `disk5` smallint(2) DEFAULT '0',
  `disk6` smallint(2) DEFAULT '0',
  `disk7` smallint(2) DEFAULT '0',
  `disk8` smallint(2) DEFAULT '0',
  `disk9` smallint(2) DEFAULT '0',
  `disk10` smallint(2) DEFAULT '0',
  `disk11` smallint(2) DEFAULT '0',
  `disk12` smallint(2) DEFAULT '0',
  `disk13` smallint(2) DEFAULT '0',
  `disk14` smallint(2) DEFAULT '0',
  `terapi` text COLLATE latin1_general_ci,
  `antrix` datetime DEFAULT NULL,
  `notes` text COLLATE latin1_general_ci,
  `photo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `pos` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periksa`
--

LOCK TABLES `periksa` WRITE;
/*!40000 ALTER TABLE `periksa` DISABLE KEYS */;
/*!40000 ALTER TABLE `periksa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `nama` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `by_rck` mediumint(4) DEFAULT NULL,
  `by_nrck` mediumint(4) DEFAULT NULL,
  `by_kps` mediumint(4) DEFAULT NULL,
  `by_srp` mediumint(4) DEFAULT NULL,
  `notes` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('oe','Jl. Mangga Raya Blok Y no.18C - D, Jakarta Barat. Telp: 021-56942215, 56942216','logo_utama.jpg',0,0,0,0,'',0);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retur`
--

DROP TABLE IF EXISTS `retur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retur` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(12) COLLATE latin1_general_ci DEFAULT '0',
  `pasien` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `bruto` decimal(10,0) DEFAULT '0',
  `netto` decimal(10,0) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retur`
--

LOCK TABLES `retur` WRITE;
/*!40000 ALTER TABLE `retur` DISABLE KEYS */;
/*!40000 ALTER TABLE `retur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retur_1`
--

DROP TABLE IF EXISTS `retur_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retur_1` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(12) COLLATE latin1_general_ci DEFAULT '0',
  `kd_brg` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `hrg_jual` decimal(10,0) DEFAULT '0',
  `discount` decimal(10,0) DEFAULT '0',
  `jml_brg` decimal(10,0) DEFAULT '0',
  `jum_tot` decimal(10,0) DEFAULT '0',
  `total` decimal(10,0) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retur_1`
--

LOCK TABLES `retur_1` WRITE;
/*!40000 ALTER TABLE `retur_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `retur_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retur_2`
--

DROP TABLE IF EXISTS `retur_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retur_2` (
  `tgl` date DEFAULT NULL,
  `no_kwit` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `kd_brg` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `hrg_jual` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `jml_brg` decimal(10,0) DEFAULT NULL,
  `jum_tot` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retur_2`
--

LOCK TABLES `retur_2` WRITE;
/*!40000 ALTER TABLE `retur_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `retur_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat`
--

DROP TABLE IF EXISTS `riwayat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riwayat` (
  `norekam` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `sblm` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `jnspny` text COLLATE latin1_general_ci,
  `alergi` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `jnsobat` text COLLATE latin1_general_ci,
  PRIMARY KEY (`norekam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat`
--

LOCK TABLES `riwayat` WRITE;
/*!40000 ALTER TABLE `riwayat` DISABLE KEYS */;
/*!40000 ALTER TABLE `riwayat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rwy_stock`
--

DROP TABLE IF EXISTS `rwy_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwy_stock` (
  `kode` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `uraian` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `masuk` int(10) DEFAULT NULL,
  `keluar` int(10) DEFAULT NULL,
  `akhir` int(10) DEFAULT NULL,
  `hbeli` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rwy_stock`
--

LOCK TABLES `rwy_stock` WRITE;
/*!40000 ALTER TABLE `rwy_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `rwy_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `jml_stk` int(6) DEFAULT NULL,
  `stk_awal` int(6) DEFAULT NULL,
  `satuan` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `supplier` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `hrg_jual` decimal(10,0) DEFAULT NULL,
  `expired` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `min_stk` int(6) DEFAULT NULL,
  `jenis` varchar(10) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('AGP-001','BLACK GOLD PEEL OFF SERUM MASK  8 ML',0,0,'AMP ','','0','0','',0,'Apotek'),('ALM-001','CLAMING 4 ML ',8,0,'AMP ','','0','0','',0,'Apotek'),('AVRT-001','CAVIAR TONING 3ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AYE E-001','EYE  ENERGING 3 ML ',8,0,'AMP ','','0','0','',0,'Apotek'),('AYECOM-001','EYE COMPLEX  10GM ',0,0,'BTL ','','70000','120000','',0,'Apotek'),('AYESRUM-00','EYE SERUM 10 GM ',0,0,'BTL ','','70000','120000','',0,'Apotek'),('ASGEL-001','FACIAL SRUBBER (GEL) 50 GM ',-4,0,'TUBE ','','0','200000','',0,'Apotek'),('AAW-001','GOLD ANTI WRINKLE  10 ML ',0,0,'BTL ','','0','100000','',0,'Apotek'),('ABTX-001','GOLD BTX SERUM 6 ML',0,0,'AMP ','','0','0','',0,'Apotek'),('AFSCRUB-00','GOLD FACIAL SCRUBBER  50 GM (G)',0,0,'TUBE ','','0','200000','',0,'Apotek'),('ADT-001','HYDRATING TONER 100 ML ',0,0,'BTL ','','0','70000','',0,'Apotek'),('A-HBH004','SPLUIT 1 CC T ',-100,0,'PCS ','','1250','0','',0,'Apotek'),('A-HBH005','SPLUIT 3 CC T',-120,0,'PCS ','','0','0','',0,'Apotek'),('A-HBH006','SPLUIT 5 CC T',-200,0,'PCS ','','0','0','',0,'Apotek'),('A-HBH008','SPLUIT 10 CC S',0,0,'PCS ','','0','0','',0,'Apotek'),('A-HBH009','NEEDLE 21',0,0,'PCS','','0','0','',0,'Apotek'),('A-HBH010','NEEDLE 30',0,0,'PCS','','300','0','',0,'Apotek'),('A-HBH0103','WING NEEDLE ',0,0,'PCS','','0','0','',0,'Apotek'),('A-HBH014','NEEDLE 22',0,0,'PCS','','0','0','',0,'Apotek'),('A-HBH020','AIR MAWAR ',0,0,'BTL ','','0','0','',0,'Apotek'),('A-HBH023','ALKOHOL 70 %',0,0,'BTL','','0','0','',0,'Apotek'),('A-HBH052','NEEDLE 6 CM (KOVAX)',0,0,'PCS ','','0','0','',0,'Apotek'),('A-HBH053','TUBEX PRP ',0,0,'PCS','','0','0','',0,'Apotek'),('A-HBH058','NEEDLE  25',0,0,'PCS','','0','0','',0,'Apotek'),('A-HBH063','NEEDLE 23',0,0,'PCS','','0','0','',0,'Apotek'),('ACE-001','LIVING CELL EXTRACT  6 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('ACG-001','2 IN 1 LIGTHENING CLEANSING GEL 60 GM ',0,0,'BTL ','','0','0','',0,'Apotek'),('AFGOLD-001','LIGTHENING FLUID (G) 16 ML ',0,0,'BTL','','0','200000','',0,'Apotek'),('AFGOLD-002','LIGTHENING FLUID 10 ML ',0,0,'BTL ','','0','100000','',0,'Apotek'),('AGHE-001','LIGHTENING ESSENCE 10 ML ',-2,0,'BTL ','','0','0','',0,'Apotek'),('AGTHR-001','LIGTHENING & RENEWING 4 ML ',8,0,'AMP','','0','0','',0,'Apotek'),('AGTHSRM-00','LIGTHENING SERUM 6 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AGTNG-001','LIGTHENING 4 ML ',8,0,'AMP ','','0','0','',0,'Apotek'),('AHTR-001','LIGHTENING TONER 60 ML ',0,0,'BTL ','','0','70000','',0,'Apotek'),('ARCLE-001','MIRACLE ROSE',0,0,'AMP ','','284000','0','',0,'Apotek'),('ARESNCE-00','MARINE ESSENCE  6 ML ',3,0,'POT','S002','132000','125000','--',0,'Apotek'),('ABS-001','PHYTO-E BREAST SERUM  6 ML ',0,0,'AMP','','0','0','',0,'Apotek'),('AEC-001','PURFYING ESSENCE CREAM 10 GM ',0,0,'BTL ','','0','0','',0,'Apotek'),('AELGEL-001','PEELING GEL 50 GM',0,0,'TUBE ','','0','0','',0,'Apotek'),('AELGEL-002','PEELING GEL 50 GM LIGHT ',0,0,'TUBE ','','0','0','',0,'Apotek'),('ARFYIG F-0','PURIFYING FLUID 10 ML ',0,0,'BTL','','0','100000','',0,'Apotek'),('AUREVC-001','PURE VC EMULSION  (W) 8 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AUREVC-002','PURE VC SERUM 6 ML ',0,0,'AMP','','38000','0','',0,'Apotek'),('AUREVC-003','PURE VC ESSENCE 8 ML  ',0,0,'AMP ','','38000','0','',0,'Apotek'),('AHDT-001','REHYDRATING 4 ML ',7,0,'AMP','','0','0','',0,'Apotek'),('APFL-001','REPAIRING FLUID CREAM ',0,0,'POT ','','0','0','',0,'Apotek'),('AVTL SRUM-','REVITALIZING SERUM 10 ML ',0,0,'BTL ','','50000','0','',0,'Apotek'),('AC-AA 165','LIGHTENING FLUID LIGHT SERIES ',0,0,'BTL','','0','200000','',0,'Apotek'),('AC-AA 182','3 IN  1 CLEANSING MILK',0,0,'BTL ','','38000','70000','',0,'Apotek'),('AC-AA001','AC 1',0,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA002','AC 2',-1,0,'POT ','','0','88000','',0,'Apotek'),('AC-AA003','AC P ',0,0,'POT ','','14000','55000','',0,'Apotek'),('AC-AA004','AC SPOT ',0,0,'POT ','','17500','55000','',0,'Apotek'),('AC-AA005','ACNE WASH ',0,0,'BTL ','','14000','38000','',0,'Apotek'),('AC-AA008','B 1',0,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA009','B 2',0,0,'POT ','','24500','55000','',0,'Apotek'),('AC-AA010','B 3',0,0,'POT ','','23500','55000','',0,'Apotek'),('AC-AA011','BB LOT ',0,0,'POT ','','47500','66000','',0,'Apotek'),('AC-AA012','BT 1',0,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA013','BT 2',0,0,'POT ','','18500','55000','',0,'Apotek'),('AC-AA015','BM ',0,0,'POT ','','11500','55000','',0,'Apotek'),('AC-AA017','BMS B ',0,0,'BTL','','26840','40000','',0,'Apotek'),('AC-AA019','BMS ACNE B ',0,0,'BTL','','32120','55000','',0,'Apotek'),('AC-AA020','BMS ACNE K  ',0,0,'BTL','','0','38000','',0,'Apotek'),('AC-AA020','BMS BB ',0,0,'BTL','','0','55000','',0,'Apotek'),('AC-AA021','BMS BK ',0,0,'BTL ','','0','38000','',0,'Apotek'),('AC-AA023','CLEANSING MILK 500 ML ',0,0,'BTL','','0','35000','',0,'Apotek'),('AC-AA024','CLEANSING MILK ACNE ',0,0,'BTL ','','0','0','',0,'Apotek'),('AC-AA027','COLLAGEN LOTION ',0,0,'TUBE','','0','0','',0,'Apotek'),('AC-AA029','EYE TREATMENT SERUM ',0,0,'TUBE ','','0','66000','',0,'Apotek'),('AC-AA033','FT ACNE B ',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA034','FT ACNE  K ',0,0,'BTL ','','15950','30000','',0,'Apotek'),('AC-AA034','FT K ',0,0,'BTL ','','0','30000','',0,'Apotek'),('AC-AA035','FT B ',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA036','PCM ACNE AROMATHERAPHY   B ',0,0,'BTL ','','0','30000','',0,'Apotek'),('AC-AA037','FT AROMATHERAPY ',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA038','FT WK ',0,0,'BTL ','','0','38000','',0,'Apotek'),('AC-AA039','FT WB ',0,0,'BTL ','','31020','55000','',0,'Apotek'),('AC-AA040','FT RELAXING K ',0,0,'BTL ','','0','30000','',0,'Apotek'),('AC-AA041','FT RELAXING B',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA042','GENTAMICYN',0,0,'','','0','20000','',0,'Apotek'),('AC-AA043','ISOTRET ',0,0,'PIL','','4000','8000','',0,'Apotek'),('AC-AA044','L 1',0,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA045','OBAT DIET PAGI 1',0,0,'POT ','','0','250000','',0,'Apotek'),('AC-AA046','PCM ACNE K ',0,0,'BTL ','','0','38000','',0,'Apotek'),('AC-AA047','PCM ACNE B ',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA048','PCM K ',0,0,'BTL ','','0','30000','',0,'Apotek'),('AC-AA049','PCM B ',0,0,'BTL ','','0','40000','',0,'Apotek'),('AC-AA050','PCM WK ',0,0,'BTL ','','0','38000','',0,'Apotek'),('AC-AA051','PCM WB ',0,0,'BTL ','','0','55000','',0,'Apotek'),('AC-AA054','SB CREAM ',0,0,'TUBE ','','0','55000','',0,'Apotek'),('AC-AA055','SB FOUNDATION ',0,0,'TUBE ','','0','88000','',0,'Apotek'),('AC-AA056','SB LOTION  ',0,0,'TUBE ','','19580','55000','',0,'Apotek'),('AC-AA057','SBB LOTION ',0,0,'TUBE ','','0','66000','',0,'Apotek'),('AC-AA058','SCRUB PEELING ',0,0,'TUBE ','','0','0','',0,'Apotek'),('AC-AA061','T 10',0,0,'POT','','0','55000','',0,'Apotek'),('AC-AA062','TWO WAY CAKE 101',0,0,'PCS','','0','66000','',0,'Apotek'),('AC-AA063','TWO WAY CAKE 102',0,0,'PCS','','0','66000','',0,'Apotek'),('AC-AA064','TWO WAY CAKE ACNE 101',0,0,'PACK ','','0','70000','',0,'Apotek'),('AC-AA067','M',0,0,'POT','','0','55000','',0,'Apotek'),('AC-AA068','Mn CREAM ',0,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA069','MMC LOTIION 20 Gr.',0,0,'POT','','0','100000','',0,'Apotek'),('AC-AA070','MMC SOLUTION 20 ML ',0,0,'POT ','','0','100000','',0,'Apotek'),('AC-AA073','NEUROBION 5000',0,0,'AMP ','','6000','0','',0,'Apotek'),('AC-AA082','PROBE V OZON ',0,0,'PACK ','','0','0','',0,'Apotek'),('AC-AA085','LOOSE POWDER ACNE ',0,0,'PCS','','0','70000','',0,'Apotek'),('AC-AA086','LOOSE POWDER',0,0,'PCS','','0','66000','',0,'Apotek'),('AC-AA087','OBAT CDPA ',0,0,'POT ','','0','0','',0,'Apotek'),('AC-AA088','OBAT DIET MALAM ',0,0,'POT','','0','150000','',0,'Apotek'),('AC-AA089','TRILAC 10 MG /ML ',0,0,'VIAL ','','0','0','',0,'Apotek'),('AC-AA091','OBAT DIET PAGI & SIANG ',0,0,'POT ','','0','250000','',0,'Apotek'),('AC-AA092','CHIDAMEX 300 MG ',0,0,'BTR','','0','5000','',0,'Apotek'),('AC-AA093','L GENTAMICYN ',0,0,'','','0','35000','',0,'Apotek'),('AC-AA093','LAMADEXON ',0,0,'BRT','','0','5000','',0,'Apotek'),('AC-AA100','CREAM ESTESSIA (ANESTEN )',-4,0,'POT','S002','121000','180000','--',0,'Apotek'),('AC-AA101','NANO OBESSIA CREAM ',0,0,'POT','','0','0','',0,'Apotek'),('AC-AA102','ACNE LOTION ',-1,0,'BTL','','0','55000','',0,'Apotek'),('AC-AA103','SELANG OKSIGEN ',0,0,'SET ','','0','30000','',0,'Apotek'),('AC-AA132','OBAT DIET KARBO HIJAU ',0,0,'POT','','0','0','',0,'Apotek'),('AC-AA133','OBAT DIET KARBO ORANGE ',0,0,'POT ','','0','0','',0,'Apotek'),('AC-AA134','CREAM SELANGKANGAN ',-16,0,'POT ','','0','55000','',0,'Apotek'),('AC-AA137','LIVING CELL EXTRACT ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-AA141','OBAT DIET PAGI MALAM (PINK) ',0,0,'KAPSUL ','','0','100000','',0,'Apotek'),('AC-AA144','SKIN MEDICA TNS ',0,0,'PCS ','','0','1500000','',0,'Apotek'),('AC-AA146','PROLIC ',0,0,'KAPSUL ','','0','8500','',0,'Apotek'),('AC-AA147','INTRERDOXIN ',0,0,'KAPSUL ','','0','3000','',0,'Apotek'),('AC-AA148','CEFIXIME',0,0,'KAPSUL ','','0','3000','',0,'Apotek'),('AC-AA149','METHYPREDISELONE ',0,0,'KAPSUL ','','0','700','',0,'Apotek'),('AC-AA150','KETRICIN',0,0,'KAPSUL ','','0','5000','',0,'Apotek'),('AC-AA151','NONFLAMIN ',0,0,'KAPSUL ','','0','3000','',0,'Apotek'),('AC-AA152','DEXTAMIN',0,0,'KAPSUL ','','0','7000','',0,'Apotek'),('AC-AA153','FULADIC ',0,0,'','','0','75000','',0,'Apotek'),('AC-AA156','KLODERMA ',0,0,'','','0','35000','',0,'Apotek'),('AC-AA157','CINOLON',0,0,'','','0','50000','',0,'Apotek'),('AC-AA158','MEBO ',0,0,'','','0','90000','',0,'Apotek'),('AC-AA160','SODERMIX ',0,0,'TUBE ','','0','111500','',0,'Apotek'),('AC-AA161','MEDIKLIN SOL ',0,0,'','','0','50000','',0,'Apotek'),('AC-AA162','PEELING GEL LIGTH SERIES  50 GM ',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA163','LIGTHENING ESSENCE LIGTH SERIES 20 ML',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA164','LIGHTENING TONER LIGTH SERIES ',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA166','REPAIRING FLUID LIGTH SERIES 16 ML',0,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA167','REHYDRATING &MOISTURIZER ESENCE LIGTH SERIES 16 ML',0,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA168','LIGHTENING CLEANSING GEL LIGHT SERIES',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA170','CLEANSING GOLD GEL SERIES ',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA171','HYDRATING TONER GOLD SERIES 50 ML (G)',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA172','SUN PROTECTOR GOLD SERIES ',-7,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA173','SHAPE UP & LIFT UP ',0,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA174','GOLD BTX GOLD SERIES ',0,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA175','SKIN GOLD GEL 10 ML',0,0,'BTL ','','53000','100000','',0,'Apotek'),('AC-AA176','REVITALIZING SERUM GOLD SERIES 20 ML ',0,0,'BTL ','','0','200000','',0,'Apotek'),('AC-AA177','BTX CREAM GOLD SERIES ',0,0,'POT ','','0','200000','',0,'Apotek'),('AC-AA178','SUNBLOK LIGTHENING SERIES ',-4,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA179','THROMBOPHOP ',0,0,'TUBE ','','0','60000','',0,'Apotek'),('AC-AA180','OABT DIET SIANG MALAM (HIJAU KUNING )',0,0,'PACK ','','0','15000','',0,'Apotek'),('AC-AA181','GOLD ANTI WRINKLE CREAM ',0,0,'','','0','200000','',0,'Apotek'),('AC-AA183','MAKE UP REMOVER ',-1,0,'PCS','','35000','70000','',0,'Kabin'),('AC-AA184','SCRUBBER MILK ',0,0,'PCS ','','0','60000','',0,'Apotek'),('AC-AA185','STERMCELL SERUM (AMPUL ) 4 ML ',0,0,'PCS ','','30000','100000','',0,'Apotek'),('AC-AA186','UV COVER PROTECTOR ',0,0,'POT','','0','100000','',0,'Apotek'),('AC-AA187','DOXYCYCLINE ',0,0,'','','0','2000','',0,'Apotek'),('AC-AA188','STERM CELL VIAL ',0,0,'PCS ','','0','100000','',0,'Apotek'),('AC-AA189','SKIN SOFTENER ',0,0,'BTL ','','0','0','',0,'Apotek'),('AC-AA190','UV-SHINNING',0,0,'BTL','','0','100000','',0,'Apotek'),('AC-AA191','UV W/R ',0,0,'POT','','50000','100000','',0,'Apotek'),('AC-AA193','RESTYLANE ',0,0,'','','0','0','',0,'Apotek'),('AC-AA194','CLINDAMICYN',0,0,'','','0','0','',0,'Apotek'),('AC-AA196','2 IN 1 GOLD CLEANSING  50 ML ',0,0,'TUBE','','0','200000','',0,'Apotek'),('AC-AA197','2 IN 1 LIGHTENING CLEANSING GEL 50 ML ',0,0,'TUBE ','','0','200000','',0,'Apotek'),('AC-AA198','SUN PROTECTOR W/R ',-8,0,'POT','','0','100000','',0,'Apotek'),('ACAW-001','STEM CELL ANTI -WRINKLE LIFTING  3 ML ',10,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR002','ANTI AGING SERUM ',0,0,'AMP','','0','110000','',0,'Apotek'),('AC-SR003 ','ANTI AGING GOLD',-2,0,'AMP','','0','0','',0,'Apotek'),('AC-SR007 ','CARNITINE ',0,0,'AMP ','','12000','0','',0,'Apotek'),('AC-SR017','PHOSPHATIDYLEHOLINE ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR020','METABOLITE',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR021','MUSCLEBIG ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR022','MELAFADIN 2 ML',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR026','STEM CRUM ',0,0,'AMP ','','0','100000','',0,'Apotek'),('AC-SR027','TATIONIL 60 MG/4 ML',0,0,'AMP ','','48000','0','',0,'Apotek'),('AC-SR032','OXYDERMAL ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR035','REPAIR FLUID 2ML',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR039','SKIN REPAIR ',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR040','SKIN WHITENING ',-1,0,'AMP ','','0','0','',0,'Kabin'),('AC-SR042','SELENIUM INJEL (1,1ML)',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR045','LIDOCAINE ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR047','LIFTING EFFECT  2 ML',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR049','LAROSCORBINE ',0,0,'AMP','','18000','0','',0,'Apotek'),('AC-SR050','LIPOFIT 3 ML ',0,0,'AMP ','','0','400000','',0,'Apotek'),('AC-SR051','LIPOTROFIN',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR054','ANTI KOLUGUAN ML ',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR058','KAFEIN PROKAIN',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR059','ANTI AGING ISABELLE ',-1,0,'POT ','','0','250000','',0,'Apotek'),('AC-SR060','CEFTRIAXONE 1 Grm ',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR061','FUROSEMIDE ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR062','MJS GOLD ',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR077','ZENTIVA GEROVITAL (H 3) ',0,0,'AMP','','48000','0','',0,'Apotek'),('AC-SR078','LANZOX',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR079','TZ GONZ BAO ',0,0,'AMP','','0','0','',0,'Apotek'),('AC-SR086','LIGHTENING SERUM ',0,0,'AMP ','','0','100000','',0,'Apotek'),('AC-SR087','BIOCENTA  ( H8)',0,0,'AMP ','','40000','0','',0,'Apotek'),('AC-SR088','DERMAHEAL ',0,0,'','','0','125000','',0,'Apotek'),('AC-SR091','GUNA COLAGEN',0,0,'','','0','0','',0,'Apotek'),('AC-SR093','MES MUN',0,0,'AMP ','','0','0','',0,'Apotek'),('AC-SR095','DNA GROWFACTOR ',0,0,'AMP','','0','100000','',0,'Apotek'),('AC-SR096','GULTAX',0,0,'','','0','0','',0,'Apotek'),('AC-SRO64','CERRO WHITENING INJ ',0,0,'AMP','','0','0','',0,'Apotek'),('ACSRUM-001','STEM CELL SERUM  10 GM ',0,0,'BTL ','','50000','0','',0,'Apotek'),('AC-VAG014','REHYDRATING & MOIST ESS 10 ML',-9,0,'botol','S002','55000','100000','2014-09-12',0,'Apotek'),('AGOLDGEL-0','SKIN GOLD GEL 18 ML ',0,0,'BTL ','','0','200000','',0,'Apotek'),('AP-001','SUN PROTECTOR (W/R) 10 GM',-2,0,'BTL ','','125000','230000','--',0,'Apotek'),('A-MAS001','MASK BOTANICAL WHITE ',0,0,'TRM ','','0','50000','',0,'Apotek'),('A-MAS002','MASK SPIRULINA ',0,0,'TRM ','','0','50000','',0,'Apotek'),('A-MAS003','MASK GOLD ',0,0,'TRM ','','0','150000','',0,'Apotek'),('A-MAS004','MASK COLAGEN ',-3,0,'TRM ','','0','160000','',0,'Apotek'),('A-MAS008','MASK BLACK DEAD SEA ',0,0,'TRM ','','0','50000','',0,'Apotek'),('A-MAS009','MASK ACEROLA VIT C ',-7,0,'','','0','50000','',0,'Apotek'),('A-VAG005','CATANAC',0,0,'','','0','5000','',0,'Apotek'),('A-VAG006','PURFYING CLEANSING GEL ',0,0,'BTL','','30000','70000','',0,'Apotek'),('A-VAG008','PURFYING T.CLEANSER ',0,0,'BTL','','30000','70000','',0,'Apotek'),('A-VAG009','UV PURIFYING CREAM ',0,0,'BTL','','0','100000','',0,'Apotek'),('A-VAG010','PURIFYING FLUID ',0,0,'BTL ','','45000','100000','',0,'Apotek'),('A-VAG011','LIGHENING FLUID ( W)',0,0,'','','65000','100000','',0,'Apotek'),('A-VAG012','UV SPF 50',0,0,'BTL','','0','100000','',0,'Apotek'),('A-VAG013','TEXTURE REFINE ',0,0,'BTL','','50000','100000','',0,'Apotek'),('A-VAG015',' 2IN 1 PLATINUM CLEANSING GEL ',0,0,'BTL','','0','0','',0,'Apotek'),('A-VAG016','PURIFYING ESENCE CREAM ',0,0,'BTL ','','0','100000','',0,'Apotek'),('A-VAG017','LIGHTENING FLUID GOLD SERIES ',0,0,'','','65000','200000','',0,'Apotek'),('A-VGA007','PURFYING TONER ',0,0,'BTL ','','30000','70000','',0,'Apotek'),('AHDT-001','REHYDRATING 4 ML ',0,0,'AMP','','0','0','',0,'Apotek'),('ALM-001','CLAMING 4 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AYE E-001','EYE  ENERGING 3 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('ACAW-001','STEM CELL ANTI -WRINKLE LIFTING  3 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AGTNG-001','LIGTHENING 4 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AUREVC-001','PURE VC EMULSION  (W) 8 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AGTHSRM-00','LIGTHENING SERUM 6 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('ABTX-001','GOLD BTX SERUM 6 ML',0,0,'AMP ','','0','0','',0,'Apotek'),('AGP-001','BLACK GOLD PEEL OFF SERUM MASK  8 ML',0,0,'AMP ','','0','0','',0,'Apotek'),('AVRT-001','CAVIAR TONING 3ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('ACE-001','LIVING CELL EXTRACT  6 ML ',0,0,'AMP ','','0','0','',0,'Apotek'),('AUREVC-002','PURE VC SERUM 6 ML ',0,0,'AMP','','0','38','',0,'Apotek'),('ABS-001','PHYTO-E BREAST SERUM  6 ML ',0,0,'AMP','','0','0','',0,'Apotek'),('ARESNCE-00','MARINE ESSENCE  6 ML ',3,0,'POT','S002','132000','125000','--',0,'Apotek'),('AGTHR-001','LIGTHENING & RENEWING 4 ML ',0,0,'AMP','','0','0','',0,'Apotek'),('AUREVC-003','PURE VC ESSENCE 8 ML  ',0,0,'AMP ','','0','38','',0,'Apotek'),('ARE0001','CREAM AJAIB AWET MUDA',51,100,'Pot','-','120000','500000','',5,'kabin'),('AAM0001','ZAMORABINE',0,0,'','-','0','0','',0,'apotek'),('CR0001','CREAM SIANG 3',98,100,'Pot','-','0','190000','',2,'apotek'),('ATE0001','testing 1',100,100,'Tablet','-','0','120000','',10,'apotek'),('ATE0002','testing 2',120,120,'Tablet','-','0','125000','',5,'apotek'),('TE0001','TESTING COBA',110,100,'Tablet','','0','135000','',0,'apotek');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockx`
--

DROP TABLE IF EXISTS `stockx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockx` (
  `kd_brg` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `nm_brg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `jml_stk` int(6) DEFAULT NULL,
  `stk_awal` int(6) DEFAULT NULL,
  `satuan` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `supplier` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `hrg_jual` decimal(10,2) DEFAULT NULL,
  `expired` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `min_stk` int(6) DEFAULT NULL,
  `jenis` varchar(10) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockx`
--

LOCK TABLES `stockx` WRITE;
/*!40000 ALTER TABLE `stockx` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `kode` varchar(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kontak` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarif` (
  `unit` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `item` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `uraian` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `mod1` decimal(10,0) DEFAULT '0',
  `mod2` decimal(10,0) DEFAULT '0',
  `mod3` decimal(10,0) DEFAULT '0',
  `mod4` decimal(10,0) DEFAULT '0',
  `mod5` decimal(10,0) DEFAULT '0',
  `tipe` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES ('KECANTIKAN','B001','Facial Lumpur','','0','150000','120000','0','0','TINDAKAN'),('KECANTIKAN','B002','Facial Acne','','0','230000','220000','0','0','TINDAKAN'),('KECANTIKAN','B003','Facial Collagen','','0','300000','280000','0','0','TINDAKAN'),('KECANTIKAN','B004','Bleaching Tangan','','0','100000','80000','0','0','TINDAKAN'),('KECANTIKAN','B005','Bleaching Kaki','','0','120000','100000','0','0','TINDAKAN'),('KECANTIKAN','B006','Bleaching Tubuh','','0','240000','220000','0','0','TINDAKAN'),('KECANTIKAN','B007','Peeling Acne','','0','200000','180000','0','0','TINDAKAN'),('KECANTIKAN','B008','Peeling Whitening','','0','200000','180000','0','0','TINDAKAN'),('KECANTIKAN','B009','Peeling Melasma','','0','230000','210000','0','0','TINDAKAN'),('KECANTIKAN','B010','Peeling Anti Aging','','0','260000','240000','0','0','TINDAKAN'),('KECANTIKAN','B011','Meso Lift','','0','300000','260000','0','0','TINDAKAN'),('KECANTIKAN','B012','Meso Bright','','0','350000','330000','0','0','TINDAKAN'),('KECANTIKAN','B013','Meso Body','','0','450000','430000','0','0','TINDAKAN'),('KECANTIKAN','A014','Konsultasi Awal','','0','50000','20000','0','0','JASA'),('KECANTIKAN','A015','Konsultasi Lanjutan','','0','20000','10000','0','0','JASA'),('KECANTIKAN','B014','PAKET FACIAL 5X','','0','500000','450000','0','0','PAKET'),('KECANTIKAN','B015','PAKET FACIAL 10X','','0','900000','850000','0','0','PAKET'),('KECANTIKAN','B016','PAKET PEELING 5X','','0','450000','400000','0','0','PAKET'),('KECANTIKAN','B017','PAKET TREATMENT 1','','0','1000000','800000','0','0','PAKET');
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifx`
--

DROP TABLE IF EXISTS `tarifx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifx` (
  `unit` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `kode` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `item` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `uraian` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `mod1` decimal(10,0) DEFAULT '0',
  `mod2` decimal(10,0) DEFAULT '0',
  `mod3` decimal(10,0) DEFAULT '0',
  `mod4` decimal(10,0) DEFAULT '0',
  `mod5` decimal(10,0) DEFAULT '0',
  `tipe` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifx`
--

LOCK TABLES `tarifx` WRITE;
/*!40000 ALTER TABLE `tarifx` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `login` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `bagian` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `akses` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `notes` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin','administrator','101;102;103;104;105;;107;201;301;302;401;402;403;501;601;602;603;604;701;702;','','masuk'),('budi','budi','resepsionis',';;103;104;105;;;201;;;;;;501;601;;;;;;','','masuk');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-29  8:37:10
