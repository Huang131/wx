/*
Navicat MySQL Data Transfer

Source Server         : huang
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : wx

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-06-05 21:50:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
  `activity_time` timestamp NOT NULL COMMENT '活动时间',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动地点',
  `describe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动描述',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系方式',
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '纬度',
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经度',
  `create_id` int(11) NOT NULL COMMENT '发布者',
  `state` tinyint(4) NOT NULL COMMENT '0:互助;1:公益',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('1', 'Cleve Wiegand', '2018-11-18 00:00:00', 'Omnis nesciunt aut officia rerum velit beatae dolorum sequi.', 'Laudantium saepe et nesciunt optio.', '620-760-8899', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('2', 'Prof. Aiden Wyman', '2018-11-18 00:00:00', 'Quasi blanditiis repellat provident sunt et.', 'Impedit temporibus ex repellendus veniam.', '+1 (354) 203-0812', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('3', 'Dr. Jamaal Mann V', '2018-11-18 00:00:00', 'Soluta ut ducimus et et qui quod illum maiores.', 'Quos voluptatem enim voluptas cum magnam et.', '870-200-3485 x4885', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('4', 'Jordane Raynor', '2018-11-18 00:00:00', 'Autem qui rerum qui qui quae in et.', 'Est rerum quia consequatur repellat quod exercitationem maiores.', '248-890-1983', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('5', 'Maxine Rath', '2018-11-18 00:00:00', 'Quos possimus totam perferendis dolorum assumenda.', 'Voluptatibus nostrum accusantium aut vitae vel eveniet et.', '1-990-577-3317 x95239', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('6', 'Efrain Satterfield', '2018-11-18 00:00:00', 'Fuga voluptatem doloremque deleniti asperiores eius ut fugiat nobis.', 'Et perferendis dignissimos non debitis iste sit.', '216.797.0006 x52274', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('7', 'Mr. Grayce Schiller', '2018-11-18 00:00:00', 'Modi dolor sed repellat consequatur aliquid.', 'Vel numquam nulla et consectetur vel dolorem nihil.', '+1 (429) 896-0552', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('8', 'Oran Toy II', '2018-11-18 00:00:00', 'Corrupti et qui deserunt et fugit eum velit.', 'Repellat sit culpa harum sit et id.', '391-552-5015', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('9', 'Bertrand Heidenreich', '2018-11-18 00:00:00', 'Deleniti tenetur ab voluptas adipisci.', 'Porro totam iste voluptatum sed.', '315-453-1672 x3682', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('10', 'Mrs. Reyna Rohan', '1979-09-07 00:00:00', 'Qui laboriosam et possimus aut aut sint ex.', 'Adipisci asperiores id aut sed ut fuga amet non.', '397-320-5360 x3079', '113', '29', '2', '0', '2018-06-05 11:49:35', '2018-06-05 11:49:35');
INSERT INTO `activities` VALUES ('11', 'Ms. Viva Hane', '2006-02-15 00:00:00', 'Doloribus perspiciatis quas corporis.', 'Consequatur fugiat ut omnis hic eaque sint.', '801.677.4420', '29', '113', '1', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('12', 'Mr. Adriel Botsford', '1981-07-03 00:00:00', 'Deleniti rerum reiciendis fugiat.', 'Dolores consequatur dolor quia dolores quia rem dolorem.', '(217) 428-1012 x273', '29', '113', '1', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('13', 'Dexter Altenwerth', '1998-05-20 00:00:00', 'Et ipsum officia suscipit assumenda repellendus.', 'Doloremque ducimus ut est soluta ipsum non.', '598.458.7889', '29', '113', '1', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('14', 'Leonora Wilderman I', '1999-06-09 00:00:00', 'Pariatur pariatur maxime iste.', 'Laborum ad cum aspernatur nostrum quis.', '845.217.4562 x819', '29', '113', '1', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('15', 'Ida Barton', '1989-06-10 00:00:00', 'Culpa officia aliquam perferendis quae dolores porro sunt pariatur.', 'Nam officiis vel molestiae officiis impedit.', '974-707-0408 x04921', '29', '113', '3', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('16', 'Sadie Fahey', '2018-11-18 00:00:00', 'Earum hic voluptatem qui.', 'Qui nostrum esse natus fugit tempore animi.', '490-920-3593', '29', '113', '4', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('17', 'Lincoln Kulas', '2018-11-18 00:00:00', 'Doloribus saepe quod quo et consequuntur ex veniam.', 'Ducimus omnis aperiam architecto quibusdam fugit nemo quam.', '1-487-324-6751', '29', '113', '5', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('18', 'Helen Davis', '2018-06-30 00:00:00', 'Velit culpa error libero tempora sunt ut alias.', 'Cupiditate ex odio reprehenderit et quam eaque.', '+1.540.707.7426', '29', '113', '2', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('19', 'Miss Fanny Mueller DVM', '1990-06-18 00:00:00', 'Architecto accusamus aut expedita ipsum eum aspernatur.', 'Corporis rerum in harum voluptatem harum aut dolorem non.', '1-828-701-6344', '29', '113', '2', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');
INSERT INTO `activities` VALUES ('20', 'Houston Donnelly', '2004-11-19 00:00:00', 'Placeat nobis culpa odio repudiandae id ut quod.', 'Est ratione amet minima est.', '1-912-735-0949 x400', '29', '113', '2', '1', '2018-06-05 11:51:09', '2018-06-05 11:51:09');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_05_10_120645_create_activities_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_05_10_122852_create_user_activity_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'openid',
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信昵称',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信头像',
  `gender` enum('男','女','未知') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信性别',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_openid_unique` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'b4JzF2Ldlp', 'Camille Lindgren', 'Pariatur ut voluptas fugit ipsam.', '男', 'MVnZoOVqih', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('2', 'JXdA1hc3Qt', 'Julio McCullough', 'Quasi aspernatur ab ea.', '男', 'HSN7LoX9FO', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('3', 'aIvYUFR3Pk', 'Miss Elisha Davis DDS', 'Natus sit dolores dolorum iure perferendis eos iste.', '男', 'oFUDVduGMu', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('4', 'EINzcC6zWK', 'Mr. Gust Rodriguez', 'Sed enim accusamus animi minima.', '男', 'FC9YdwjaVJ', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('5', 'aeeBOD6HFr', 'Marlene Pacocha', 'Consequatur dolorem molestiae soluta quisquam.', '男', 'Sy3fpBWWgi', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('6', 'SAGuYXosIH', 'Gerry Pagac', 'Fuga eaque adipisci molestias vitae nam est quo.', '男', '47EbdlICyb', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('7', 'uPWWu1TNjB', 'Jennie Hahn', 'Itaque consequatur dolor cupiditate libero voluptatem adipisci sequi.', '男', 'ZYkwk07otv', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('8', 'wE131r61XK', 'Selena Brown', 'Expedita alias molestiae accusamus ad non.', '男', 'EbQjP5mOR9', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('9', 'IfZXH3QYsp', 'Greg Beatty', 'Voluptates libero dolor voluptatem aliquam.', '男', 'x6KvtldtMT', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('10', 'LT4c6eAzBM', 'Kade Dare V', 'Rerum doloribus sunt sunt rerum cumque sint sit.', '男', 'CDV9JK5WAU', '2018-06-05 11:49:10', '2018-06-05 11:49:10');
INSERT INTO `users` VALUES ('12', 'oP6SJ5Vo43kAI90URuVLf_DOCQS8', '红茶魔术师', 'https://wx.qlogo.cn/mmopen/vi_32/0icB12Tuxt4HCOeC2icwB1bqhhrrjwGKvDWoMSPOPCFBF9cwUGALz3kribuSEbAYxWox28N7sPJrESxh4icTAyqVUw/132', '男', null, '2018-06-05 12:34:08', '2018-06-05 12:34:08');

-- ----------------------------
-- Table structure for user_activity
-- ----------------------------
DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_activity
-- ----------------------------
INSERT INTO `user_activity` VALUES ('1', '1', '1', null, null);
INSERT INTO `user_activity` VALUES ('2', '1', '2', null, null);
INSERT INTO `user_activity` VALUES ('3', '2', '1', null, null);
INSERT INTO `user_activity` VALUES ('4', '1', '3', null, null);
