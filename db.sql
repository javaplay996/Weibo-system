/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmx4stk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmx4stk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmx4stk`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmx4stk/upload/1616588940218.jpg'),(2,'picture2','http://localhost:8080/ssmx4stk/upload/1616588947422.jpg'),(3,'picture3','http://localhost:8080/ssmx4stk/upload/1616589906212.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussweiboxinxi` */

DROP TABLE IF EXISTS `discussweiboxinxi`;

CREATE TABLE `discussweiboxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616590243925 DEFAULT CHARSET=utf8 COMMENT='微博信息评论表';

/*Data for the table `discussweiboxinxi` */

insert  into `discussweiboxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-03-24 20:25:05',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-24 20:25:05',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-24 20:25:05',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-24 20:25:05',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-24 20:25:05',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-24 20:25:05',6,6,'用户名6','评论内容6','回复内容6'),(1616589144546,'2021-03-24 20:32:23',32,1616589070925,'1','SFDRYTY',NULL),(1616589400745,'2021-03-24 20:36:39',1616589326434,1616589361131,'2','写得不错',NULL),(1616590014418,'2021-03-24 20:46:54',32,1616589943005,'1','SDFRTR',NULL),(1616590243924,'2021-03-24 20:50:43',1616590208441,11,'用户1','写得不错',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616590266071 DEFAULT CHARSET=utf8 COMMENT='论坛交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (41,'2021-03-24 20:25:05','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-03-24 20:25:05','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(44,'2021-03-24 20:25:05','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-03-24 20:25:05','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-03-24 20:25:05','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1616590105380,'2021-03-24 20:48:25','新晋铲屎官一枚','<p>新晋铲屎官一枚，有爱猫的人士交流吗</p>\n<p><img src=\"../../../upload/1616590102879.jpg\" alt=\"\" width=\"750\" height=\"750\" /></p>',0,1616589943005,'1','开放'),(1616590115074,'2021-03-24 20:48:34',NULL,'FDYHYGJYTJ',41,1616589943005,'1',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616589896009 DEFAULT CHARSET=utf8 COMMENT='微博资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-03-24 20:25:05','标题1','简介1','http://localhost:8080/ssmx4stk/upload/1616588868365.jpeg','<p>内容1</p>'),(62,'2021-03-24 20:25:05','标题2','简介2','http://localhost:8080/ssmx4stk/upload/1616588875624.jpg','<p>内容2</p>'),(63,'2021-03-24 20:25:05','标题3','简介3','http://localhost:8080/ssmx4stk/upload/1616588890380.jpg','<p>内容3</p>'),(64,'2021-03-24 20:25:05','标题4','简介4','http://localhost:8080/ssmx4stk/upload/1616588898324.jpg','<p>内容4</p>'),(65,'2021-03-24 20:25:05','标题5','简介5','http://localhost:8080/ssmx4stk/upload/1616588907785.png','<p>内容5</p>'),(66,'2021-03-24 20:25:05','标题6','简介6','http://localhost:8080/ssmx4stk/upload/1616588915437.jpg','<p>内容6</p>'),(1616589896008,'2021-03-24 20:44:55','资讯A','资讯A','http://localhost:8080/ssmx4stk/upload/1616589882776.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/ssmx4stk/upload/1616589893881.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616590233484 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616589389820,'2021-03-24 20:36:29',1616589361131,1616589326434,'weiboxinxi','看你好，李焕英有感','http://localhost:8080/ssmx4stk/upload/1616589310780.jpg'),(1616590233483,'2021-03-24 20:50:33',11,1616590208441,'weiboxinxi','看你好，李焕英有感','http://localhost:8080/ssmx4stk/upload/1616590203337.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','4aqmqpqtx2vkwv7vmw223nphf7jqt4y9','2021-03-24 20:26:47','2021-03-24 21:51:17'),(2,1616589070925,'1','yonghu','用户','kdpldijqw3mf07w4uj1sjgbupumu3qru','2021-03-24 20:31:16','2021-03-24 21:31:16'),(3,1616589361131,'2','yonghu','用户','2xydr7khg1zx0w6gvbbl6th15k3r7zb9','2021-03-24 20:36:06','2021-03-24 21:36:07'),(4,1616589943005,'1','yonghu','用户','e3ltrshmh05pupsd4yqnd69zo6e7tytc','2021-03-24 20:45:48','2021-03-24 21:45:48'),(5,11,'用户1','yonghu','用户','dz8kiug50gok25que2zgeiw80q3a0zs1','2021-03-24 20:50:28','2021-03-24 21:50:29');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-24 20:25:05');

/*Table structure for table `weiboleixing` */

DROP TABLE IF EXISTS `weiboleixing`;

CREATE TABLE `weiboleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616589864484 DEFAULT CHARSET=utf8 COMMENT='微博类型';

/*Data for the table `weiboleixing` */

insert  into `weiboleixing`(`id`,`addtime`,`leixing`) values (21,'2021-03-24 20:25:05','类型1'),(22,'2021-03-24 20:25:05','类型2'),(23,'2021-03-24 20:25:05','类型3'),(24,'2021-03-24 20:25:05','类型4'),(25,'2021-03-24 20:25:05','类型5'),(26,'2021-03-24 20:25:05','类型6'),(1616588982988,'2021-03-24 20:29:42','趣味型'),(1616589864483,'2021-03-24 20:44:23','休闲娱乐');

/*Table structure for table `weiboxinxi` */

DROP TABLE IF EXISTS `weiboxinxi`;

CREATE TABLE `weiboxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weibobiaoti` varchar(200) NOT NULL COMMENT '微博标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `weiboneirong` longtext COMMENT '微博内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616590208442 DEFAULT CHARSET=utf8 COMMENT='微博信息';

/*Data for the table `weiboxinxi` */

insert  into `weiboxinxi`(`id`,`addtime`,`weibobiaoti`,`leixing`,`tupian`,`weiboneirong`,`faburiqi`,`yonghuming`,`nicheng`,`clicktime`,`clicknum`) values (31,'2021-03-24 20:25:05','微博标题1','类型1','http://localhost:8080/ssmx4stk/upload/1616588824297.jpg','<p>微博内容1</p>','2021-03-24','用户名1','昵称1','2021-03-24 20:31:47',10),(32,'2021-03-24 20:25:05','微博标题2','类型2','http://localhost:8080/ssmx4stk/upload/1616588832461.jpg','<p>微博内容2</p>','2021-03-24','用户名2','昵称2','2021-03-24 20:46:57',17),(33,'2021-03-24 20:25:05','微博标题3','类型3','http://localhost:8080/ssmx4stk/upload/1616588841083.jpg','<p>微博内容3</p>','2021-03-24','用户名3','昵称3','2021-03-24 20:27:16',4),(34,'2021-03-24 20:25:05','微博标题4','类型4','http://localhost:8080/ssmx4stk/upload/1616588853802.jpg','<p>微博内容4</p>','2021-03-24','用户名4','昵称4','2021-03-24 20:27:25',5),(35,'2021-03-24 20:25:05','微博标题5','类型5','http://localhost:8080/ssmx4stk/upload/weiboxinxi_tupian5.jpg','微博内容5','2021-03-24','用户名5','昵称5','2021-03-24 20:27:39',6),(36,'2021-03-24 20:25:05','微博标题6','类型6','http://localhost:8080/ssmx4stk/upload/weiboxinxi_tupian6.jpg','微博内容6','2021-03-24','用户名6','昵称6','2021-03-24 20:46:45',7),(1616590208441,'2021-03-24 20:50:07','看你好，李焕英有感','休闲娱乐','http://localhost:8080/ssmx4stk/upload/1616590203337.jpg','<p>希望世间所有的妈妈都能被时光温柔对待，“愿你的亲热永年少，涌在我最美好的祈祷”大张伟老师深情地为《你好，李焕英》献上了片尾曲，是什么原因能让贾玲的这部处女作不断走高，让全国观众被它动容呢？是妈妈。《你好，李焕英》是由贾玲的真实经历改编而成，亲情是本部电影的关键词。它是贾玲2016年参加喜剧竞演节目《喜剧总动员》时的作品，讲述了贾玲穿越回母亲的年轻时代，与妈妈成为好姐妹并帮妈妈追求心爱男生的故事。</p><p><br></p><p>《你好，李焕英》不单单是一声你好，也是漫长的再见；不仅仅是一部电影，也是一封寄给母亲的情书。“从我记忆起，妈妈就是中年妇女的模样。”，很多人都会有这样的感受。这类电影笑着笑着就哭了。</p><p><br></p><p>春节电影档，由贾玲，沈腾，张小斐，陈赫主演的《你好,李焕英》，口碑备受好评。其中，今天看到关于贾玲的采访。记者问她“为什么这部影片，英文名叫hi mom，中文名反而叫：你好李焕英呢？”贾玲回答道“因为妈妈不仅是妈妈，她首先是她自己。”</p><p><br></p><p>做母亲是伟大的。尽管这可能，会影响她的职业发展，身体健康状况。好像做母亲，为孩子付出一切，很值得提倡。其实不然，因为母亲，她也是个个体，她也有自己的情绪，她也能有自己的生活，也可以好好的爱自己。孩子不应占据妈妈生活的全部，不应为繁衍而生育，孩子的存在应该是：让原本的生活，锦上添花。</p>','2021-03-26','1','小兔儿','2021-03-24 20:50:51',4);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nicheng` varchar(200) NOT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616589943006 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`nicheng`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (11,'2021-03-24 20:25:05','用户1','123456','姓名1','昵称1','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-03-24 20:25:05','用户2','123456','姓名2','昵称2','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-03-24 20:25:05','用户3','123456','姓名3','昵称3','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-03-24 20:25:05','用户4','123456','姓名4','昵称4','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-03-24 20:25:05','用户5','123456','姓名5','昵称5','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-03-24 20:25:05','用户6','123456','姓名6','昵称6','男','http://localhost:8080/ssmx4stk/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1616589943005,'2021-03-24 20:45:43','1','1','陈一','小兔儿','女','http://localhost:8080/ssmx4stk/upload/1616589958854.jpg','12345678978','123@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
