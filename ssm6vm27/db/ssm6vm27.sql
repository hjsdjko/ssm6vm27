/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6vm27
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6vm27` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6vm27`;

/*Table structure for table `chuqinxinxi` */

DROP TABLE IF EXISTS `chuqinxinxi`;

CREATE TABLE `chuqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingwuhao` varchar(200) DEFAULT NULL COMMENT '警务号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `chuqinshijian` datetime DEFAULT NULL COMMENT '出勤时间',
  `chuqinleixing` varchar(200) DEFAULT NULL COMMENT '出勤类型',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615901859780 DEFAULT CHARSET=utf8 COMMENT='出勤信息';

/*Data for the table `chuqinxinxi` */

insert  into `chuqinxinxi`(`id`,`addtime`,`jingwuhao`,`xingming`,`touxiang`,`chuqinshijian`,`chuqinleixing`,`beizhu`,`userid`) values (1615901839088,'2021-03-16 21:37:18','警务员1','姓名1','http://localhost:8080/ssm6vm27/upload/1615901824879.jpg','2021-03-17 08:27:05','签到','',11),(1615901859779,'2021-03-16 21:37:38','警务员1','姓名1','http://localhost:8080/ssm6vm27/upload/1615901845506.jpg','2021-03-17 17:42:27','签退','',11);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6vm27/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm6vm27/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6vm27/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615901254949 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`gonggaoneirong`,`faburiqi`) values (21,'2021-03-16 21:24:41','标题1','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian1.jpg','公告内容1','2021-03-16'),(22,'2021-03-16 21:24:41','标题2','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian2.jpg','公告内容2','2021-03-16'),(23,'2021-03-16 21:24:41','标题3','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian3.jpg','公告内容3','2021-03-16'),(24,'2021-03-16 21:24:41','标题4','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian4.jpg','公告内容4','2021-03-16'),(25,'2021-03-16 21:24:41','标题5','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian5.jpg','公告内容5','2021-03-16'),(26,'2021-03-16 21:24:41','标题6','http://localhost:8080/ssm6vm27/upload/gonggaoxinxi_tupian6.jpg','公告内容6','2021-03-16');

/*Table structure for table `jingwuyuan` */

DROP TABLE IF EXISTS `jingwuyuan`;

CREATE TABLE `jingwuyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingwuhao` varchar(200) NOT NULL COMMENT '警务号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingwuhao` (`jingwuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='警务员';

/*Data for the table `jingwuyuan` */

insert  into `jingwuyuan`(`id`,`addtime`,`jingwuhao`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxifangshi`) values (11,'2021-03-16 21:24:41','警务员1','123456','姓名1','http://localhost:8080/ssm6vm27/upload/1615901292881.jpg','男','13823888881'),(12,'2021-03-16 21:24:41','警务员2','123456','姓名2','http://localhost:8080/ssm6vm27/upload/1615901312625.jpg','男','13823888882'),(13,'2021-03-16 21:24:41','警务员3','123456','姓名3','http://localhost:8080/ssm6vm27/upload/1615901325975.jpg','男','13823888883'),(14,'2021-03-16 21:24:41','警务员4','123456','姓名4','http://localhost:8080/ssm6vm27/upload/1615901341398.jpg','男','13823888884'),(15,'2021-03-16 21:24:41','警务员5','123456','姓名5','http://localhost:8080/ssm6vm27/upload/1615901358316.jpg','男','13823888885');

/*Table structure for table `kaoqinxinxi` */

DROP TABLE IF EXISTS `kaoqinxinxi`;

CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingwuhao` varchar(200) DEFAULT NULL COMMENT '警务号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `kaoqinzhuangtai` varchar(200) DEFAULT NULL COMMENT '考勤状态',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615901960465 DEFAULT CHARSET=utf8 COMMENT='考勤信息';

/*Data for the table `kaoqinxinxi` */

insert  into `kaoqinxinxi`(`id`,`addtime`,`jingwuhao`,`xingming`,`touxiang`,`kaoqinzhuangtai`,`kaoqinriqi`,`beizhu`,`userid`) values (1615901960464,'2021-03-16 21:39:19','警务员1','姓名1','http://localhost:8080/ssm6vm27/upload/1615901845506.jpg','正常','2021-03-17','',11);

/*Table structure for table `renwuxinxi` */

DROP TABLE IF EXISTS `renwuxinxi`;

CREATE TABLE `renwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingwuhao` varchar(200) DEFAULT NULL COMMENT '警务号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `renwuxiangqing` longtext COMMENT '任务详情',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615901940593 DEFAULT CHARSET=utf8 COMMENT='任务信息';

/*Data for the table `renwuxinxi` */

insert  into `renwuxinxi`(`id`,`addtime`,`jingwuhao`,`xingming`,`touxiang`,`renwuxiangqing`,`riqi`) values (1615901940592,'2021-03-16 21:39:00','警务员1','姓名1','http://localhost:8080/ssm6vm27/upload/1615901934693.jpg','sdsgddsgg','2021-03-17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ezzx4ps1f1ob91swcjs8nim8rff9072z','2021-03-16 21:27:21','2021-03-16 22:38:12'),(2,11,'警务员1','jingwuyuan','警务员','agzzp89yoyeedoa289ut4ysf6s7an75g','2021-03-16 21:32:21','2021-03-16 22:36:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-16 21:24:41');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
