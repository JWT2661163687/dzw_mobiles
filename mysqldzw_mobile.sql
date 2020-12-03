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
  `cId` int(11) NOT NULL AUTO_INCREMENT,
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
  CONSTRAINT `FK_CLIENT_REFERENCE_CLOSEANA` FOREIGN KEY (`rNo`) REFERENCES `closeanaccount` (`rNo`),
  CONSTRAINT `FK_CLIENT_REFERENCE_FORTHE` FOREIGN KEY (`rId`) REFERENCES `forthe` (`rId`),
  CONSTRAINT `FK_CLIENT_REFERENCE_MEMBER` FOREIGN KEY (`mId`) REFERENCES `member` (`mId`),
  CONSTRAINT `FK_CLIENT_REFERENCE_VEHICLE` FOREIGN KEY (`vId`) REFERENCES `vehicle` (`vId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `client` */

insert  into `client`(`cId`,`vId`,`rId`,`rNo`,`mId`,`cName`,`cPhone`,`createDate`,`cLimit`,`cIntegral`,`cRemark`,`cGrade`) values (1,NULL,NULL,NULL,NULL,'1','1','2020-11-27 11:05:01',1,1,'1',1);

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
  `completionid` int(11) NOT NULL AUTO_INCREMENT,
  `completiondate` datetime DEFAULT NULL,
  `completiontdate` datetime DEFAULT NULL,
  `inspector` varchar(20) DEFAULT NULL,
  `penalty` double DEFAULT NULL,
  `rework` varchar(100) DEFAULT NULL,
  `personid` int(11) DEFAULT NULL,
  `personname` varchar(20) DEFAULT NULL,
  `delaytext` varchar(100) DEFAULT NULL,
  `completiontype` int(11) DEFAULT NULL,
  `mainid` int(11) DEFAULT NULL,
  `compdate` datetime DEFAULT NULL,
  `maintainling` int(11) DEFAULT NULL,
  PRIMARY KEY (`completionid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `completed` */

insert  into `completed`(`completionid`,`completiondate`,`completiontdate`,`inspector`,`penalty`,`rework`,`personid`,`personname`,`delaytext`,`completiontype`,`mainid`,`compdate`,`maintainling`) values (14,NULL,NULL,'',NULL,'',0,'',NULL,NULL,32,NULL,NULL),(15,NULL,NULL,'',NULL,'',0,'',NULL,NULL,32,NULL,NULL),(16,'2020-11-30 09:21:31',NULL,'',NULL,'',0,'',NULL,NULL,33,NULL,NULL);

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
  `employeeid` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`employeeid`,`propertyid`,`stateid`,`departmentid`,`postid`,`empname`,`esex`,`emplogenid`,`emplogepasword`,`education`,`graduationschool`,`major`,`crrdID`,`address`,`newaddress`,`empphone`,`emergencyphone`,`molphone`,`email`,`entrytimes`,`lztimes`,`brithtimes`) values (1,NULL,NULL,NULL,1,NULL,NULL,'admin','123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,2,NULL,NULL,'张三','123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,3,NULL,NULL,'李四','123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `engine` */

CREATE TABLE `engine` (
  `engineid` int(11) NOT NULL AUTO_INCREMENT,
  `enginename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`engineid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `engine` */

insert  into `engine`(`engineid`,`enginename`) values (12,'发动机1'),(13,'发动机2'),(14,'发动机3'),(15,'发动机4');

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

/*Table structure for table `functiontable` */

CREATE TABLE `functiontable` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `codenumber` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `fpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `functiontable` */

insert  into `functiontable`(`fid`,`codenumber`,`fname`,`fpid`) values (1,'wx001','维修救援',0),(2,'zw001','站外维修接车',1),(3,'zn002','站内维修接车',1),(4,'jg003','竣工检查',1),(5,'bx004','保险对价',1),(6,'qt001','前台结算',0),(7,'js001','结算中心',6),(8,'ks002','快速修道',6),(9,'cc003','出厂放行',6),(10,'kh001','客户档案',0),(11,'zl001','客户资料',10),(12,'cl002','车辆资料',10),(13,'hy001','会员积分',0),(14,'hygl001','会员管理',13),(15,'jfgz002','积分规则',13),(16,'jfzs003','积分赠送',13),(17,'jggl001','技工管理',0),(18,'jgxj001','技工星级',17),(19,'bzjg002','班组技工',17),(20,'wqcl003','外请车辆',17),(21,'zggl001','职工管理',0),(22,'lzdj001','离职登记',21),(23,'txml002','通讯目录',21),(24,'zsj001','主数据',0),(25,'wxxm001','维修项目',24),(26,'spzl002','商品资料',24),(27,'fdj003','发动机品牌',24),(28,'cxda004','车型档案',24),(29,'qxkz001','权限控制',0),(30,'jssq001','角色授权',29),(31,'bmgl001','部门管理',0),(32,'gwgl001','岗位管理',31),(33,'rygl002','人员管理',31),(34,NULL,NULL,NULL);

/*Table structure for table `maintaincar` */

CREATE TABLE `maintaincar` (
  `maintainid` int(11) NOT NULL AUTO_INCREMENT,
  `receiptsid` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `departdate` datetime DEFAULT NULL,
  `departaddress` varchar(200) DEFAULT NULL,
  `constructiondate` datetime DEFAULT NULL,
  `rescuevehicleaddress` varchar(200) DEFAULT NULL,
  `accomplishdate` datetime DEFAULT NULL,
  `maintainvehicleid` int(11) DEFAULT NULL,
  `inside` int(11) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `counselorid` int(11) DEFAULT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  `maintainmoney` double DEFAULT NULL,
  `drivername` varchar(20) DEFAULT NULL,
  `maintainphone` varchar(20) DEFAULT NULL,
  `licence` varchar(20) DEFAULT NULL,
  `vehiclebrand` varchar(20) DEFAULT NULL,
  `vehiclemodel` varchar(20) DEFAULT NULL,
  `clearingfrom` int(11) DEFAULT NULL,
  `enginename` varchar(20) DEFAULT NULL,
  `vin` varchar(100) DEFAULT NULL,
  `enginehao` varchar(100) DEFAULT NULL,
  `carownername` varchar(100) DEFAULT NULL,
  `carid` int(11) DEFAULT NULL,
  `maintaindate` date DEFAULT NULL,
  `maintainling` int(11) DEFAULT NULL,
  PRIMARY KEY (`maintainid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `maintaincar` */

insert  into `maintaincar`(`maintainid`,`receiptsid`,`teamid`,`id`,`departdate`,`departaddress`,`constructiondate`,`rescuevehicleaddress`,`accomplishdate`,`maintainvehicleid`,`inside`,`mileage`,`counselorid`,`beizhu`,`maintainmoney`,`drivername`,`maintainphone`,`licence`,`vehiclebrand`,`vehiclemodel`,`clearingfrom`,`enginename`,`vin`,`enginehao`,`carownername`,`carid`,`maintaindate`,`maintainling`) values (32,4,NULL,NULL,'2020-11-29 11:44:14',NULL,NULL,NULL,'2020-11-29 11:56:34',1,1,NULL,NULL,'好好修',100,'王五','123','12345','a3',NULL,NULL,NULL,NULL,NULL,'',3,'2020-11-29',2),(33,3,NULL,NULL,'2020-11-30 09:20:38',NULL,NULL,NULL,'2020-11-30 09:21:31',2,1,NULL,NULL,'123',100,'王五','321','54321','b2',NULL,NULL,NULL,NULL,NULL,'',3,'2020-11-30',1);

/*Table structure for table `maintaincarxiangmu` */

CREATE TABLE `maintaincarxiangmu` (
  `XMid` int(11) NOT NULL AUTO_INCREMENT,
  `Fid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `XMleixing` varchar(50) DEFAULT NULL,
  `XMbianma` varchar(50) DEFAULT NULL,
  `XMmingcheng` varchar(50) DEFAULT NULL,
  `XMshoujia` varchar(50) DEFAULT NULL,
  `XMzhonglei` varchar(50) DEFAULT NULL,
  `XMbiaozhun` int(11) DEFAULT NULL,
  `XMhuiyuan` int(11) DEFAULT NULL,
  `mainno` int(11) DEFAULT NULL,
  `maintainling` int(11) DEFAULT NULL,
  PRIMARY KEY (`XMid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `maintaincarxiangmu` */

insert  into `maintaincarxiangmu`(`XMid`,`Fid`,`cid`,`XMleixing`,`XMbianma`,`XMmingcheng`,`XMshoujia`,`XMzhonglei`,`XMbiaozhun`,`XMhuiyuan`,`mainno`,`maintainling`) values (23,0,1,'类型2','1','喷漆','100','工时费',100,80,32,1),(24,0,1,'类型2','1','喷漆','100','工时费',100,80,32,2),(25,0,1,'类型2','1','喷漆','100','工时费',100,80,33,1);

/*Table structure for table `maintainreceipts` */

CREATE TABLE `maintainreceipts` (
  `receiptsid` int(11) NOT NULL AUTO_INCREMENT,
  `receiptsname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`receiptsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `maintainreceipts` */

insert  into `maintainreceipts`(`receiptsid`,`receiptsname`) values (1,'维修中'),(2,'待竣工'),(3,'待结算'),(4,'返工'),(5,'已结算');

/*Table structure for table `make` */

CREATE TABLE `make` (
  `makeid` int(11) NOT NULL,
  `makename` varchar(50) DEFAULT NULL,
  `acronym` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`makeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `make` */

insert  into `make`(`makeid`,`makename`,`acronym`) values (1,'奥迪','A'),(2,'宝马','B'),(3,'奔驰','B'),(4,'凯迪拉克','K');

/*Table structure for table `mechanicstar` */

CREATE TABLE `mechanicstar` (
  `meid` int(11) NOT NULL,
  `starrating` varchar(10) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`meid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mechanicstar` */

insert  into `mechanicstar`(`meid`,`starrating`,`grade`,`weight`) values (1,'一星',NULL,NULL),(2,'二星',NULL,NULL),(3,'三星',NULL,NULL);

/*Table structure for table `member` */

CREATE TABLE `member` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mCardNumber` varchar(50) DEFAULT NULL,
  `mPass` varchar(50) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `mBalance` int(11) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `member` */

/*Table structure for table `motorcycle` */

CREATE TABLE `motorcycle` (
  `motorcycleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '车型id',
  `engineid` int(11) DEFAULT NULL COMMENT '发动机品牌编号',
  `productionid` int(11) DEFAULT NULL COMMENT '产地id',
  `makeid` int(11) DEFAULT NULL COMMENT '汽车品牌id',
  `motorcyclename` varchar(20) DEFAULT NULL COMMENT '车型名称',
  `makename` varchar(20) DEFAULT NULL COMMENT '车辆品牌名称',
  `productionname` varchar(50) DEFAULT NULL COMMENT '产地名称',
  `price` double DEFAULT NULL COMMENT '参考价格',
  `yearprice` double DEFAULT NULL COMMENT '车辆年款',
  `power` double DEFAULT NULL COMMENT '功率',
  `Fuellabel` int(11) DEFAULT NULL COMMENT '燃油标号',
  `load` double DEFAULT NULL COMMENT '载重',
  PRIMARY KEY (`motorcycleid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `motorcycle` */

insert  into `motorcycle`(`motorcycleid`,`engineid`,`productionid`,`makeid`,`motorcyclename`,`makename`,`productionname`,`price`,`yearprice`,`power`,`Fuellabel`,`load`) values (1,1,1,1,'奥迪a3','a','',NULL,NULL,NULL,NULL,NULL),(2,2,2,1,'奥迪a4','a',NULL,NULL,NULL,NULL,NULL,NULL),(3,3,1,1,'奥迪a6','a',NULL,NULL,NULL,NULL,NULL,NULL),(4,1,1,2,'宝马x1','a',NULL,NULL,NULL,NULL,NULL,NULL),(5,2,1,2,'宝马x3','a',NULL,NULL,NULL,NULL,NULL,NULL),(6,3,1,2,'宝马x5','a',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `post` */

CREATE TABLE `post` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentid` int(11) DEFAULT NULL,
  `postname` varchar(20) DEFAULT NULL,
  `rcode` varchar(20) DEFAULT NULL,
  `rstatus` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `createby` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `post` */

insert  into `post`(`postid`,`departmentid`,`postname`,`rcode`,`rstatus`,`createdate`,`createby`) values (1,NULL,'超级管理员','g001',1,'2020-11-29',NULL),(2,NULL,'部门经理','g002',2,'2020-11-29',NULL),(3,NULL,'销售员','g003',3,'2020-11-29',NULL);

/*Table structure for table `postmiddle` */

CREATE TABLE `postmiddle` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

/*Data for the table `postmiddle` */

insert  into `postmiddle`(`pid`,`rid`,`fid`) values (7,3,8),(8,3,9),(45,1,2),(46,1,3),(47,1,4),(48,1,7),(49,1,8),(50,1,30),(85,2,2),(86,2,3),(87,2,4),(88,2,7),(89,2,8),(90,2,9),(91,2,15),(92,2,18),(93,2,19);

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
  `cid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
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
  `teamid` int(11) NOT NULL AUTO_INCREMENT,
  `tename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `team` */

insert  into `team`(`teamid`,`tename`) values (1,'湖南1'),(2,'湖南2'),(3,'湖南3');

/*Table structure for table `teamtechnician` */

CREATE TABLE `teamtechnician` (
  `tename` varchar(20) DEFAULT NULL,
  `technicianno` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`technicianno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `teamtechnician` */

insert  into `teamtechnician`(`tename`,`technicianno`,`teamid`,`meid`,`mename`,`mesex`,`mephone`,`meaddress`,`mebirthday`,`groupleader`,`menumber`,`accountaddress`,`openbank`,`bankaccount`,`starrating`,`repairwork`,`repairbrand`) values ('湖南1',1,1,1,'张小三','男','123','213','2020-11-27',NULL,NULL,NULL,NULL,NULL,'一星',NULL,NULL),('湖南2',2,2,2,'李小是','男','213','321','2020-11-27',NULL,NULL,NULL,NULL,NULL,'二星',NULL,NULL),('湖南3',3,3,3,'女大有','女','132','321','2020-11-27',NULL,NULL,NULL,NULL,NULL,'三星',NULL,NULL);

/*Table structure for table `teamtechniciantwo` */

CREATE TABLE `teamtechniciantwo` (
  `tename` varchar(20) DEFAULT NULL,
  `technicianno` int(11) NOT NULL AUTO_INCREMENT,
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
  `maintainid` int(11) DEFAULT NULL,
  `maintainling` int(11) DEFAULT NULL,
  PRIMARY KEY (`technicianno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `teamtechniciantwo` */

insert  into `teamtechniciantwo`(`tename`,`technicianno`,`teamid`,`meid`,`mename`,`mesex`,`mephone`,`meaddress`,`mebirthday`,`groupleader`,`menumber`,`accountaddress`,`openbank`,`bankaccount`,`starrating`,`repairwork`,`repairbrand`,`maintainid`,`maintainling`) values ('湖南1',28,NULL,1,'张小三','男','123','213','2020-11-27',0,'','','','','一星','','',32,1),('湖南1',29,NULL,1,'张小三','男','123','213','2020-11-27',0,'','','','','一星','','',32,2),('湖南1',30,NULL,1,'张小三','男','123','213','2020-11-27',0,'','','','','一星','','',33,1);

/*Table structure for table `vehicle` */

CREATE TABLE `vehicle` (
  `vId` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

insert  into `vehicle`(`vId`,`cId`,`vDriver`,`vLicense`,`vBrand`,`vModel`,`vPhone`,`vAffiliation`,`vMileage`,`registeredDate`,`purchaseDate`) values (1,3,'王五','12345','a3','aa3','123','个人车',10,'2020-11-26 20:26:54','2020-11-26 20:26:57'),(2,3,'王五','54321','b2','bb2','321','公司车',10,'2020-11-26 20:27:35','2020-11-26 20:27:37'),(3,2,'李四','123','aa','aa','123','租赁车',10,'2020-11-26 20:30:10','2020-11-26 20:30:12');

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
  `maintainno` int(11) DEFAULT NULL,
  PRIMARY KEY (`XMid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `weixiu` */

insert  into `weixiu`(`XMid`,`XMleixing`,`XMbianma`,`XMmingcheng`,`XMshoujia`,`XMzhonglei`,`XMbiaozhun`,`XMhuiyuan`,`cid`,`Fid`,`maintainno`) values (1,'类型2','1','喷漆','100','工时费',100,80,1,NULL,NULL),(2,'类型1','2','换轮胎','120','工时费',120,100,NULL,13,NULL),(3,'类型3','3','包养','110','工时费',110,90,NULL,NULL,NULL);

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
