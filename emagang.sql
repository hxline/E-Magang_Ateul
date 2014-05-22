/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.72-community : Database - emagang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`emagang` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `emagang`;

/*Table structure for table `bidang` */

DROP TABLE IF EXISTS `bidang`;

CREATE TABLE `bidang` (
  `id_bidang` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id_bidang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `bidang` */

/*Table structure for table `cv` */

DROP TABLE IF EXISTS `cv`;

CREATE TABLE `cv` (
  `id_cv` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `tgl` datetime NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_cv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `cv` */

/*Table structure for table `detail_bidang_ph` */

DROP TABLE IF EXISTS `detail_bidang_ph`;

CREATE TABLE `detail_bidang_ph` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_bidang` int(11) NOT NULL,
  `id_ph` int(11) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `detail_bidang_ph` */

/*Table structure for table `iklan_lowongan` */

DROP TABLE IF EXISTS `iklan_lowongan`;

CREATE TABLE `iklan_lowongan` (
  `id_iklan` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  `tgl_awal` datetime NOT NULL,
  `tgl_akhir` datetime NOT NULL,
  `id_ph` int(11) NOT NULL,
  PRIMARY KEY (`id_iklan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `iklan_lowongan` */

/*Table structure for table `komentar` */

DROP TABLE IF EXISTS `komentar`;

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL AUTO_INCREMENT,
  `komentar` text NOT NULL,
  `tgl` datetime NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `komentar` */

/*Table structure for table `perusahaan` */

DROP TABLE IF EXISTS `perusahaan`;

CREATE TABLE `perusahaan` (
  `id_ph` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `desc` text NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ph`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `perusahaan` */

/*Table structure for table `portofolio` */

DROP TABLE IF EXISTS `portofolio`;

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_portofolio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `portofolio` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
