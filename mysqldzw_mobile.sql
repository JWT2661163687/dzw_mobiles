/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.28 : Database - dzw_moblie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dzw_moblie` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `chexing` */

CREATE TABLE `chexing` (
  `Cid` int(11) NOT NULL,
  `Cleixing` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chexing` */

/*Table structure for table `client` */

CREATE TABLE `client` (
  `cId` int(11) NOT NULL,
  `vId` int(11) DEFAULT NULL,
  `rId` int(11) DEFAULT NULL,
  `rNo` int(11) DEFAULT NULL,
  `mId` int(11) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `cPhone` varchar(50) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `cLimit` int(11) DEFAULT NULL,
  `cIntegral` int(11) DEFAULT NULL,
  `cRemark` varchar(50) DEFAULT NULL,
  `cGrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `FK_CLIENT_REFERENCE_VEHICLE` (`vId`),
  KEY `FK_CLIENT_REFERENCE_FORTHE` (`rId`),
  KEY `FK_CLIENT_REFERENCE_CLOSEANA` (`rNo`),
  KEY `FK_CLIENT_REFERENCE_MEMBER` (`mId`),
  CONSTRAINT `FK_CLIENT_REFERENCE_MEMBER` FOREIGN KEY (`mId`) REFERENCES `member` (`mId`),
  CONSTRAINT `FK_CLIENT_REFERENCE_CLOSEANA` FOREIGN KEY (`rNo`) REFERENCES `closeanaccount` (`rNo`),
  CONSTRAINT `FK_CLIENT_REFERENCE_FORTHE` FOREIGN KEY (`rId`) REFERENCES `forthe` (`rId`),
  CONSTRAINT `FK_CLIENT_REFERENCE_VEHICLE` FOREIGN KEY (`vId`) REFERENCES `vehicle` (`vId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `client` */

/*Table structure for table `closeanaccount` */

CREATE TABLE `closeanaccount` (
  `rNo` int(11) NOT NULL,
  `rWay` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `cBalance` int(11) DEFAULT NULL,
  `rOdd` varchar(50) DEFAULT NULL,
  `rCashier` varchar(50) DEFAULT NULL,
  `rDealWith` int(11) DEFAULT NULL,
  `rOutOfPocket` int(11) DEFAULT NULL,
  `rDiscounts` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `closeanaccount` */

/*Table structure for table `completed` */

CREATE TABLE `completed` (
  `completionid` int(11) NOT NULL,
  `completiondate` datetime DEFAULT NULL,
  `completiontdate` datetime DEFAULT NULL,
  `inspector` varchar(20) DEFAULT NULL,
  `penalty` double DEFAULT NULL,
  `rework` varchar(100) DEFAULT NULL,
  `personid` int(11) DEFAULT NULL,
  `personname` varchar(20) DEFAULT NULL,
  `delaytext` varchar(100) DEFAULT NULL,
  `completiontype` int(11) DEFAULT NULL,
  PRIMARY KEY (`completionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `completed` */

/*Table structure for table `dalei` */

CREATE TABLE `dalei` (
  `DAid` int(11) NOT NULL AUTO_INCREMENT,
  `DAmingcheng` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DAid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dalei` */

/*Table structure for table `department` */

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `depnames` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `department` */

/*Table structure for table `employee` */

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `propertyid` int(11) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `empname` varchar(20) DEFAULT NULL,
  `esex` int(11) DEFAULT NULL,
  `emplogenid` varchar(20) DEFAULT NULL,
  `emplogepasword` varchar(20) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `graduationschool` varchar(50) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `crrdID` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `newaddress` varchar(100) DEFAULT NULL,
  `empphone` varchar(20) DEFAULT NULL,
  `emergencyphone` varchar(20) DEFAULT NULL,
  `molphone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `entrytimes` date DEFAULT NULL,
  `lztimes` date DEFAULT NULL,
  `brithtimes` date DEFAULT NULL,
  PRIMARY KEY (`employeeid`),
  KEY `FK_EMPLOYEE_REFERENCE_PROPERTY` (`propertyid`),
  KEY `FK_EMPLOYEE_REFERENCE_STATE` (`stateid`),
  KEY `FK_EMPLOYEE_REFERENCE_DEPARTME` (`departmentid`),
  KEY `FK_EMPLOYEE_REFERENCE_POST` (`postid`),
  CONSTRAINT `FK_EMPLOYEE_REFERENCE_POST` FOREIGN KEY (`postid`) REFERENCES `post` (`postid`),
  CONSTRAINT `FK_EMPLOYEE_REFERENCE_DEPARTME` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`),
  CONSTRAINT `FK_EMPLOYEE_REFERENCE_PROPERTY` FOREIGN KEY (`propertyid`) REFERENCES `property` (`propertyid`),
  CONSTRAINT `FK_EMPLOYEE_REFERENCE_STATE` FOREIGN KEY (`stateid`) REFERENCES `state` (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

/*Table structure for table `engine` */

CREATE TABLE `engine` (
  `engineid` int(11) NOT NULL,
  `enginename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`engineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `engine` */

/*Table structure for table `fadongji` */

CREATE TABLE `fadongji` (
  `Fid` int(11) NOT NULL AUTO_INCREMENT,
  `Fleixing` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fadongji` */

/*Table structure for table `fieldvehicles` */

CREATE TABLE `fieldvehicles` (
  `teamid` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `carnumber` varchar(50) DEFAULT NULL,
  `fbrand` varchar(50) DEFAULT NULL,
  `fmodel` varchar(50) DEFAULT NULL,
  `currentmileage` varchar(50) DEFAULT NULL,
  `ascriptionteam` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_FIELDVEH_REFERENCE_TEAM` (`teamid`),
  CONSTRAINT `FK_FIELDVEH_REFERENCE_TEAM` FOREIGN KEY (`teamid`) REFERENCES `team` (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fieldvehicles` */

/*Table structure for table `forthe` */

CREATE TABLE `forthe` (
  `rId` int(11) NOT NULL,
  `rType` int(11) DEFAULT NULL,
  `rState` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `vLicense` varchar(50) DEFAULT NULL,
  `rPhone` varchar(50) DEFAULT NULL,
  `rCreateDate` datetime DEFAULT NULL,
  `rEndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forthe` */

/*Table structure for table `front` */

CREATE TABLE `front` (
  `frontid` int(11) NOT NULL,
  `carnumber` int(11) DEFAULT NULL,
  `closeanaccountnumber` int(11) DEFAULT NULL,
  `carrepairingnumber` int(11) DEFAULT NULL,
  `repairnumber` int(11) DEFAULT NULL,
  `instationnumber` int(11) DEFAULT NULL,
  `outsidenumber` int(11) DEFAULT NULL,
  `generalincome` double DEFAULT NULL,
  `realincome` double DEFAULT NULL,
  `owe` double DEFAULT NULL,
  `owenumber` int(11) DEFAULT NULL,
  `frontdate` date DEFAULT NULL,
  PRIMARY KEY (`frontid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `front` */

/*Table structure for table `maintainreceipts` */

CREATE TABLE `maintainreceipts` (
  `receiptsid` int(11) NOT NULL,
  `receiptsname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`receiptsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `maintainreceipts` */

/*Table structure for table `make` */

CREATE TABLE `make` (
  `makeid` int(11) NOT NULL,
  `makename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`makeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `make` */

/*Table structure for table `mechanicstar` */

CREATE TABLE `mechanicstar` (
  `meid` int(11) NOT NULL,
  `starrating` varchar(10) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`meid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mechanicstar` */

/*Table structure for table `member` */

CREATE TABLE `member` (
  `mId` int(11) NOT NULL,
  `mCardNumber` varchar(50) DEFAULT NULL,
  `mPass` varchar(50) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `mBalance` int(11) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `member` */

/*Table structure for table `post` */

CREATE TABLE `post` (
  `postid` int(11) NOT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `postname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `FK_POST_REFERENCE_DEPARTME` (`departmentid`),
  CONSTRAINT `FK_POST_REFERENCE_DEPARTME` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `post` */

/*Table structure for table `production` */

CREATE TABLE `production` (
  `productionid` int(11) NOT NULL,
  `productionname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`productionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `production` */

/*Table structure for table `property` */

CREATE TABLE `property` (
  `propertyid` int(11) NOT NULL,
  `propertyname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`propertyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `property` */

/*Table structure for table `shangpin` */

CREATE TABLE `shangpin` (
  `SPid` int(11) NOT NULL AUTO_INCREMENT,
  `SPbianma` varchar(50) DEFAULT NULL,
  `SPmingcheng` varchar(50) DEFAULT NULL,
  `SPdalei` varchar(50) DEFAULT NULL,
  `SPxiaolei` varchar(50) DEFAULT NULL,
  `SPshoujia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SPid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shangpin` */

/*Table structure for table `state` */

CREATE TABLE `state` (
  `stateid` int(11) NOT NULL,
  `statename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

/*Table structure for table `team` */

CREATE TABLE `team` (
  `teamid` int(11) NOT NULL,
  `tename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team` */

/*Table structure for table `teamtechnician` */

CREATE TABLE `teamtechnician` (
  `tename` varchar(20) DEFAULT NULL,
  `technicianno` int(11) NOT NULL,
  `teamid` int(11) DEFAULT NULL,
  `meid` int(11) DEFAULT NULL,
  `mename` varchar(100) DEFAULT NULL,
  `mesex` varchar(100) DEFAULT NULL,
  `mephone` varchar(100) DEFAULT NULL,
  `meaddress` varchar(100) DEFAULT NULL,
  `mebirthday` date DEFAULT NULL,
  `groupleader` int(11) DEFAULT NULL,
  `menumber` varchar(100) DEFAULT NULL,
  `accountaddress` varchar(100) DEFAULT NULL,
  `openbank` varchar(100) DEFAULT NULL,
  `bankaccount` varchar(100) DEFAULT NULL,
  `starrating` varchar(10) DEFAULT NULL,
  `repairwork` varchar(50) DEFAULT NULL,
  `repairbrand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`technicianno`),
  KEY `FK_TEAMTECH_REFERENCE_TEAM` (`teamid`),
  KEY `FK_TEAMTECH_REFERENCE_MECHANIC` (`meid`),
  CONSTRAINT `FK_TEAMTECH_REFERENCE_MECHANIC` FOREIGN KEY (`meid`) REFERENCES `mechanicstar` (`meid`),
  CONSTRAINT `FK_TEAMTECH_REFERENCE_TEAM` FOREIGN KEY (`teamid`) REFERENCES `team` (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teamtechnician` */

/*Table structure for table `vehicle` */

CREATE TABLE `vehicle` (
  `vId` int(11) NOT NULL,
  `cId` int(11) DEFAULT NULL,
  `vDriver` varchar(50) DEFAULT NULL,
  `vLicense` varchar(50) DEFAULT NULL,
  `vBrand` varchar(50) DEFAULT NULL,
  `vModel` varchar(50) DEFAULT NULL,
  `vPhone` varchar(50) DEFAULT NULL,
  `vAffiliation` varchar(50) DEFAULT NULL,
  `vMileage` int(11) DEFAULT NULL,
  `registeredDate` datetime DEFAULT NULL,
  `purchaseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`vId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

/*Table structure for table `weixiu` */

CREATE TABLE `weixiu` (
  `XMid` int(11) NOT NULL AUTO_INCREMENT,
  `XMleixing` varchar(50) DEFAULT NULL,
  `XMbianma` varchar(50) DEFAULT NULL,
  `XMmingcheng` varchar(50) DEFAULT NULL,
  `XMshoujia` varchar(50) DEFAULT NULL,
  `XMzhonglei` varchar(50) DEFAULT NULL,
  `XMbiaozhun` int(11) DEFAULT NULL,
  `XMhuiyuan` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `Fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`XMid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `weixiu` */

/*Table structure for table `xiaolei` */

CREATE TABLE `xiaolei` (
  `XIAOid` int(11) NOT NULL AUTO_INCREMENT,
  `XIAOmingcheng` varchar(50) DEFAULT NULL,
  `daid` int(11) DEFAULT NULL,
  PRIMARY KEY (`XIAOid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaolei` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
