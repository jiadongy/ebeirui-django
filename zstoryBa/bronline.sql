/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : bronline

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 11/07/2018 07:57:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can add 轮播图', 7, 'add_banner');
INSERT INTO `auth_permission` VALUES (25, 'Can change 轮播图', 7, 'change_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can delete 轮播图', 7, 'delete_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (28, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (29, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (30, 'Can view 轮播图', 7, 'view_banner');
INSERT INTO `auth_permission` VALUES (31, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (32, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程', 9, 'add_course');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程', 9, 'change_course');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程', 9, 'delete_course');
INSERT INTO `auth_permission` VALUES (36, 'Can add 课程资源', 10, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (37, 'Can change 课程资源', 10, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can delete 课程资源', 10, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (40, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (41, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (42, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (43, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (44, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (45, 'Can view 课程', 9, 'view_course');
INSERT INTO `auth_permission` VALUES (46, 'Can view 课程资源', 10, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (47, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (48, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (49, 'Can add 课程评论', 13, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (50, 'Can change 课程评论', 13, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 课程评论', 13, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (52, 'Can add 用户咨询', 14, 'add_userask');
INSERT INTO `auth_permission` VALUES (53, 'Can change 用户咨询', 14, 'change_userask');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 用户咨询', 14, 'delete_userask');
INSERT INTO `auth_permission` VALUES (55, 'Can add 用户课程', 15, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (56, 'Can change 用户课程', 15, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 用户课程', 15, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (58, 'Can add 用户收藏', 16, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (59, 'Can change 用户收藏', 16, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 用户收藏', 16, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户消息', 17, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户消息', 17, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户消息', 17, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (64, 'Can view 课程评论', 13, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (65, 'Can view 用户咨询', 14, 'view_userask');
INSERT INTO `auth_permission` VALUES (66, 'Can view 用户课程', 15, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (67, 'Can view 用户收藏', 16, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (68, 'Can view 用户消息', 17, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (69, 'Can add 城市', 18, 'add_citydict');
INSERT INTO `auth_permission` VALUES (70, 'Can change 城市', 18, 'change_citydict');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 城市', 18, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (72, 'Can add 课程机构', 19, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (73, 'Can change 课程机构', 19, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (74, 'Can delete 课程机构', 19, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (75, 'Can add 教师', 20, 'add_teacher');
INSERT INTO `auth_permission` VALUES (76, 'Can change 教师', 20, 'change_teacher');
INSERT INTO `auth_permission` VALUES (77, 'Can delete 教师', 20, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (78, 'Can view 城市', 18, 'view_citydict');
INSERT INTO `auth_permission` VALUES (79, 'Can view 课程机构', 19, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (80, 'Can view 教师', 20, 'view_teacher');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (85, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (91, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (92, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view log entry', 24, 'view_log');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (96, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (97, 'Can add captcha store', 25, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (98, 'Can change captcha store', 25, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (99, 'Can delete captcha store', 25, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (100, 'Can view captcha store', 25, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can add 行业', 26, 'add_industrydict');
INSERT INTO `auth_permission` VALUES (102, 'Can change 行业', 26, 'change_industrydict');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 行业', 26, 'delete_industrydict');
INSERT INTO `auth_permission` VALUES (104, 'Can add 职位', 27, 'add_jobs');
INSERT INTO `auth_permission` VALUES (105, 'Can change 职位', 27, 'change_jobs');
INSERT INTO `auth_permission` VALUES (106, 'Can delete 职位', 27, 'delete_jobs');
INSERT INTO `auth_permission` VALUES (107, 'Can view 行业', 26, 'view_industrydict');
INSERT INTO `auth_permission` VALUES (108, 'Can view 职位', 27, 'view_jobs');
INSERT INTO `auth_permission` VALUES (109, 'Can add 招聘机构', 28, 'add_recruiter');
INSERT INTO `auth_permission` VALUES (110, 'Can change 招聘机构', 28, 'change_recruiter');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 招聘机构', 28, 'delete_recruiter');
INSERT INTO `auth_permission` VALUES (112, 'Can view 招聘机构', 28, 'view_recruiter');
COMMIT;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(15) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `you_need_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
BEGIN;
INSERT INTO `courses_course` VALUES (1, '量化投资', '量化投资', '<p>量化投资</p>', 'cj', 0, 1, 1, 'courses/2018/07/u7643622292057319356fm27gp0.jpg', 4, '2018-07-05 21:37:00.000000', 2, '量化', '国内名校', 1, '按时交作业', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (2, '投行入门案例', '投行入门案例', '<p>本课程主要讲述投行相关的一些基本知识和入门案列分享</p>', 'zj', 100, 1, 0, 'courses/2018/07/u31660348392151270512fm27gp0.jpg', 6, '2018-07-10 23:13:00.000000', 2, '投行', '投行', 1, '按时交作业', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (3, '债券市场', '债券市场', '<p>债券交易</p>', 'cj', 100, 1, 0, 'courses/2018/07/u6269455082188259141fm27gp0.jpg', 5, '2018-07-10 23:46:00.000000', 2, '债券交易', '债券交易', 1, '按时交作业', '一颗勤学的心是本课程必要前提', 0);
INSERT INTO `courses_course` VALUES (4, '投行内控指引', '投行内控指引', '<p>投行内控指引</p>', 'zj', 100, 0, 0, 'courses/2018/07/u20131821492296442059fm11gp0.jpg', 13, '2018-07-11 00:06:00.000000', 2, '投行内控指引', '投行内控指引', 1, '按时交作业', '一颗勤学的心是本课程必要前提', 0);
COMMIT;

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
BEGIN;
INSERT INTO `courses_lesson` VALUES (1, '量化投资第一课', '2018-07-10 23:48:00.000000', 1);
COMMIT;

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (25, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (26, 'jobs', 'industrydict');
INSERT INTO `django_content_type` VALUES (27, 'jobs', 'jobs');
INSERT INTO `django_content_type` VALUES (28, 'jobs', 'recruiter');
INSERT INTO `django_content_type` VALUES (13, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (14, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (15, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (16, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (18, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (19, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (20, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-07-05 01:14:41.975844');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-07-05 01:14:42.014092');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-07-05 01:14:42.133050');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-07-05 01:14:42.156072');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-07-05 01:14:42.162789');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-07-05 01:14:42.169615');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-07-05 01:14:42.176655');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-07-05 01:14:42.179573');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-07-05 01:14:42.188296');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-07-05 01:14:42.201807');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2018-07-05 01:14:42.212048');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2018-07-05 01:14:42.404963');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2018-07-05 01:14:42.480293');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2018-07-05 01:14:42.490221');
INSERT INTO `django_migrations` VALUES (15, 'captcha', '0001_initial', '2018-07-05 01:14:42.507700');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2018-07-05 01:14:42.615375');
INSERT INTO `django_migrations` VALUES (17, 'organization', '0002_auto_20180112_0131', '2018-07-05 01:14:42.656692');
INSERT INTO `django_migrations` VALUES (18, 'organization', '0003_auto_20180112_0256', '2018-07-05 01:14:42.717080');
INSERT INTO `django_migrations` VALUES (19, 'organization', '0004_teacher_image', '2018-07-05 01:14:42.744904');
INSERT INTO `django_migrations` VALUES (20, 'courses', '0001_initial', '2018-07-05 01:14:42.871864');
INSERT INTO `django_migrations` VALUES (21, 'courses', '0002_auto_20180111_0310', '2018-07-05 01:14:42.879787');
INSERT INTO `django_migrations` VALUES (22, 'courses', '0003_course_course_org', '2018-07-05 01:14:42.932042');
INSERT INTO `django_migrations` VALUES (23, 'courses', '0004_course_category', '2018-07-05 01:14:42.965849');
INSERT INTO `django_migrations` VALUES (24, 'courses', '0005_course_tag', '2018-07-05 01:14:43.002833');
INSERT INTO `django_migrations` VALUES (25, 'courses', '0006_auto_20180113_0629', '2018-07-05 01:14:43.197401');
INSERT INTO `django_migrations` VALUES (26, 'courses', '0007_course_is_banner', '2018-07-05 01:14:43.234103');
INSERT INTO `django_migrations` VALUES (27, 'courses', '0008_auto_20180615_1149', '2018-07-05 01:14:43.263549');
INSERT INTO `django_migrations` VALUES (28, 'courses', '0009_auto_20180623_1628', '2018-07-05 01:14:43.271984');
INSERT INTO `django_migrations` VALUES (29, 'organization', '0005_teacher_age', '2018-07-05 01:14:43.304622');
INSERT INTO `django_migrations` VALUES (30, 'organization', '0006_courseorg_tag', '2018-07-05 01:14:43.342498');
INSERT INTO `django_migrations` VALUES (32, 'operation', '0001_initial', '2018-07-05 01:14:43.682328');
INSERT INTO `django_migrations` VALUES (33, 'sessions', '0001_initial', '2018-07-05 01:14:43.701193');
INSERT INTO `django_migrations` VALUES (34, 'users', '0002_auto_20180109_0423', '2018-07-05 01:14:43.776255');
INSERT INTO `django_migrations` VALUES (35, 'users', '0003_auto_20180109_0539', '2018-07-05 01:14:43.805197');
INSERT INTO `django_migrations` VALUES (36, 'users', '0004_auto_20180111_0310', '2018-07-05 01:14:43.830136');
INSERT INTO `django_migrations` VALUES (37, 'users', '0005_auto_20180114_0705', '2018-07-05 01:14:43.840928');
INSERT INTO `django_migrations` VALUES (38, 'xadmin', '0001_initial', '2018-07-05 01:14:44.055601');
INSERT INTO `django_migrations` VALUES (39, 'xadmin', '0002_log', '2018-07-05 01:14:44.139621');
INSERT INTO `django_migrations` VALUES (40, 'xadmin', '0003_auto_20160715_0100', '2018-07-05 01:14:44.172428');
INSERT INTO `django_migrations` VALUES (46, 'jobs', '0001_initial', '2018-07-05 15:34:10.282279');
INSERT INTO `django_migrations` VALUES (47, 'jobs', '0002_jobs_click_num', '2018-07-06 09:40:16.424186');
INSERT INTO `django_migrations` VALUES (48, 'jobs', '0003_recruiter_click_num', '2018-07-06 11:31:05.389030');
INSERT INTO `django_migrations` VALUES (49, 'jobs', '0004_recruiter_collect_num', '2018-07-06 11:35:16.570651');
INSERT INTO `django_migrations` VALUES (50, 'jobs', '0005_recruiter_city', '2018-07-06 14:24:48.376179');
INSERT INTO `django_migrations` VALUES (51, 'jobs', '0006_recruiter_industry', '2018-07-06 15:00:09.368127');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('1r9elydy6mm8tts8e3uwjh8o02sxn0us', 'ODE0MDczNDI1YjE4ZmE1MTk0Yzg2OTJhNWI5Mjc3ZmJiOTJjYzBkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwicmVjcnVpdGVyIl0sIiJdfQ==', '2018-07-20 16:18:37.573332');
INSERT INTO `django_session` VALUES ('b3tgm9pn8sltebi8b8ri2ri5rf4c5wi7', 'NDgwMWU2NjA0ODNlZTUwMmIzMTFiOWVmMDk0ZjYyNDE3NDQwMmRiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwiam9icyJdLCIiXX0=', '2018-07-20 23:37:46.881655');
INSERT INTO `django_session` VALUES ('bafgo1b5fklbcm0ky3c10h3bnsw421na', 'NDgwMWU2NjA0ODNlZTUwMmIzMTFiOWVmMDk0ZjYyNDE3NDQwMmRiMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwiam9icyJdLCIiXX0=', '2018-07-20 18:30:41.075355');
INSERT INTO `django_session` VALUES ('c9sqkhp5126w28kppb5xigsldosrnsa6', 'ODE0MDczNDI1YjE4ZmE1MTk0Yzg2OTJhNWI5Mjc3ZmJiOTJjYzBkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJqb2JzIiwicmVjcnVpdGVyIl0sIiJdfQ==', '2018-07-22 11:44:05.272927');
INSERT INTO `django_session` VALUES ('fndqjrel3cwj8968ri5eu8xsacs02g5f', 'YzM1YjdlM2Q1OTlhZDM1NTk1YjJhMDg5N2UyNzdiZTIyOTBjOGVjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==', '2018-07-25 00:08:43.133116');
INSERT INTO `django_session` VALUES ('m0x17m46jsjfe1701wjbv02pv9okv4u8', 'MjY5ZDRkMTZiODcxZGQ5MTFiMGU5MjdjY2UzZDk5MGJhMjFkYjI4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdLCJ3aXphcmRfeGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4iOnsic3RlcCI6bnVsbCwic3RlcF9kYXRhIjp7fSwic3RlcF9maWxlcyI6e30sImV4dHJhX2RhdGEiOnt9fX0=', '2018-07-20 09:22:35.738963');
INSERT INTO `django_session` VALUES ('mzezsbyrrztz4rfiehiclxjep0zxuwuv', 'YzM1YjdlM2Q1OTlhZDM1NTk1YjJhMDg5N2UyNzdiZTIyOTBjOGVjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6Ijg1OWJiOWQwYTNmNWJlNGVjY2ViNmEyMzU5OTZjNTNlMWYwMDNiZjMiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==', '2018-07-24 17:53:21.521045');
COMMIT;

-- ----------------------------
-- Table structure for jobs_industrydict
-- ----------------------------
DROP TABLE IF EXISTS `jobs_industrydict`;
CREATE TABLE `jobs_industrydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_industrydict
-- ----------------------------
BEGIN;
INSERT INTO `jobs_industrydict` VALUES (1, '券商', '券商', '2018-07-05 15:42:00.000000');
INSERT INTO `jobs_industrydict` VALUES (2, '银行', '银行', '2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` VALUES (3, '基金', '基金', '2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` VALUES (4, '信托', '信托', '2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` VALUES (5, '保险', '保险', '2018-07-05 15:43:00.000000');
INSERT INTO `jobs_industrydict` VALUES (6, '租赁', '租赁', '2018-07-05 15:43:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for jobs_jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs_jobs`;
CREATE TABLE `jobs_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_type` varchar(50) NOT NULL,
  `depart` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `requirement` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `work_method` longtext NOT NULL,
  `contact` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `append` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `recommend_level` double NOT NULL,
  `city_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_jobs_city_id_cf7a9ab0_fk_organization_citydict_id` (`city_id`),
  KEY `jobs_jobs_company_id_b25449fc_fk_jobs_recruiter_id` (`company_id`),
  KEY `jobs_jobs_industry_id_5313d2e2_fk_jobs_industrydict_id` (`industry_id`),
  CONSTRAINT `jobs_jobs_city_id_cf7a9ab0_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`),
  CONSTRAINT `jobs_jobs_company_id_b25449fc_fk_jobs_recruiter_id` FOREIGN KEY (`company_id`) REFERENCES `jobs_recruiter` (`id`),
  CONSTRAINT `jobs_jobs_industry_id_5313d2e2_fk_jobs_industrydict_id` FOREIGN KEY (`industry_id`) REFERENCES `jobs_industrydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_jobs
-- ----------------------------
BEGIN;
INSERT INTO `jobs_jobs` VALUES (1, 'sx', '投资银行部', '研究岗', '1、硕士及以上学历，金融工程、金融、数学或计算机专业背景，成绩优秀;\n    2、对投资风险（市场、信用、流动性）管理工作有浓厚兴趣;\n    3、具有扎实的金融学知识，熟练掌握风险管理知识;\n    4、具有扎实的量化统计分析能力和逻辑分析能力;\n    5、吃苦耐劳，善于独立思考;\n    6、具有一定的计算机编程能力，具备数据库（SQL），VBA，Python的语言编写能力者优先考虑;\n    7、实习期不少于3个月，每周不少于4天；\n    6、实习期满3个月，会进行综合评估，实习表现优秀者视情况留用。', '1、熟悉了解公司业务类型及产品运作；\n    2、协助进行证券类投资相关风险监控及风险报告；\n    3、协助进行各类投资风险计量分析；\n    4、完成部门负责人安排的其他工作。', '啊噶4G', '按时到岗', '俺三个', '按时打算', '2018-07-05 15:44:00.000000', '大券商值得信赖\n国企，但是有活力', 4, 1, 1, 1, 7);
INSERT INTO `jobs_jobs` VALUES (2, 'sx', '资产管理部门', '量化交易', '1、硕士及以上学历，金融工程、金融、数学或计算机专业背景，成绩优秀;\r\n2、对投资风险（市场、信用、流动性）管理工作有浓厚兴趣;\r\n3、具有扎实的金融学知识，熟练掌握风险管理知识;\r\n4、具有扎实的量化统计分析能力和逻辑分析能力;\r\n5、吃苦耐劳，善于独立思考;\r\n6、具有一定的计算机编程能力，具备数据库（SQL），VBA，Python的语言编写能力者优先考虑;\r\n7、实习期不少于3个月，每周不少于4天；\r\n6、实习期满3个月，会进行综合评估，实习表现优秀者视情况留用。', '1、熟悉了解公司业务类型及产品运作；\r\n2、协助进行证券类投资相关风险监控及风险报告；\r\n3、协助进行各类投资风险计量分析；\r\n4、完成部门负责人安排的其他工作。', '爱仕达噶发个', '爱仕达噶十多个', '安师大', '爱仕达噶十多个', '2018-07-05 15:46:00.000000', '发噶收发室大哥', 4, 2, 2, 3, 13);
INSERT INTO `jobs_jobs` VALUES (3, 'xz', '投资银行部', '债券发行', '阿斯顿发生的发a\'s\'d\'fa\'s', '阿斯顿发生的发安师大', '阿斯顿发生的发a', '阿斯顿发生的发', '安师大发', '阿斯顿发生的发', '2018-07-05 21:44:00.000000', '阿斯顿发生的发佛本是道发', 0, 2, 3, 1, 18);
INSERT INTO `jobs_jobs` VALUES (4, 'sx', '资产管理部门', '交易员', '撒打算的a', '撒打算的', '阿萨说', '撒噶收到', '阿爽肤水地方', '阿斯顿发送到', '2018-07-06 18:28:00.000000', '阿斯顿发送到噶的方式发给你的关怀', 0, 2, 3, 1, 15);
INSERT INTO `jobs_jobs` VALUES (5, 'sz', '网金部', '研究岗', '阿嘎', '撒打算a', '收到罚单发生的姑娘', '撒大方', '撒打算的', '阿斯顿噶地方', '2018-07-06 18:29:00.000000', 'afdsgadnsfgns Sda 现场不少的方便', 0, 1, 2, 1, 2);
INSERT INTO `jobs_jobs` VALUES (6, 'xz', '资产管理部门', '研究岗', '哈哈哈哈哈哈', '啊杀神风哈登', 'SGADFHD阿发地方', '安师大发', '安师大发a', '但还是放过你的愤怒的发', '2018-07-06 23:36:00.000000', '阿斯顿发生的发手动法师发水电费', 6, 3, 4, 2, 3);
COMMIT;

-- ----------------------------
-- Table structure for jobs_recruiter
-- ----------------------------
DROP TABLE IF EXISTS `jobs_recruiter`;
CREATE TABLE `jobs_recruiter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tags` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `introduction` longtext NOT NULL,
  `click_num` int(11) NOT NULL,
  `collect_num` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_recruiter_city_id_730aab62_fk_organization_citydict_id` (`city_id`),
  KEY `jobs_recruiter_industry_id_3131b3ce_fk_jobs_industrydict_id` (`industry_id`),
  CONSTRAINT `jobs_recruiter_city_id_730aab62_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`),
  CONSTRAINT `jobs_recruiter_industry_id_3131b3ce_fk_jobs_industrydict_id` FOREIGN KEY (`industry_id`) REFERENCES `jobs_industrydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs_recruiter
-- ----------------------------
BEGIN;
INSERT INTO `jobs_recruiter` VALUES (1, '国泰君安证券', '上海浦东银行大厦', '券商\r\n国企\r\n投行', '2018-07-05 15:35:00.000000', 'org/2018/07/316fa1c13f377848.jpg', '国泰君安,中国领先的综合金融服务商和全能投资银行,全业务链证券公司,\r\n为您提供股票开户,期货,证券,股票,债券,公募、私募基金交易;融资融券,港股通,理财产品,代销', 21, 1, 1, 1);
INSERT INTO `jobs_recruiter` VALUES (2, '天弘基金', '北京', '基金\r\n余额宝', '2018-07-05 15:40:00.000000', 'org/2018/07/ea5fd3107f059198.jpg', '最大的公募基金', 5, 0, 1, 3);
INSERT INTO `jobs_recruiter` VALUES (3, '华泰证券', '南京', '券商', '2018-07-05 15:41:00.000000', 'org/2018/07/download-1.jpg', '快速崛起的券商', 11, 22, 1, 1);
INSERT INTO `jobs_recruiter` VALUES (4, '中国银行', '北京', '银行', '2018-07-06 14:25:00.000000', 'org/2018/07/u21725385853347878219fm58bpow732bpoh557.jpg', '银行业老大', 14, 3, 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(250) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
BEGIN;
INSERT INTO `operation_coursecomments` VALUES (1, '这个课程还是蛮不错的', '2018-07-11 00:05:14.827485', 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
BEGIN;
INSERT INTO `operation_usercourse` VALUES (1, '2018-07-10 23:04:05.930257', 1, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2018-07-11 00:03:58.543031', 2, 1);
INSERT INTO `operation_usercourse` VALUES (3, '2018-07-11 00:04:52.951315', 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
BEGIN;
INSERT INTO `operation_userfavorite` VALUES (2, 1, 1, '2018-07-11 00:04:37.518732', 1);
COMMIT;

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
BEGIN;
INSERT INTO `organization_citydict` VALUES (1, '上海', '上海', '2018-07-05 10:10:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '北京', '北京', '2018-07-05 12:18:00.000000');
INSERT INTO `organization_citydict` VALUES (3, '深圳', '深圳', '2018-07-05 12:18:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '广州', '广州', '2018-07-05 12:18:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
BEGIN;
INSERT INTO `organization_courseorg` VALUES (2, '贝睿求职', '综合的金融求职专家', 47, 0, 'org/2018/07/download_Xgkbt9h.jpg', '上海', '2018-07-05 13:36:00.000000', 1, 'pxjg', 1, 0, '培训专家');
COMMIT;

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
BEGIN;
INSERT INTO `organization_teacher` VALUES (1, 'Jerry', 0, '国军', '哈哈哈', '安师大', 18, 0, '2018-07-05 21:36:00.000000', 2, 'teacher/2018/07/u39429892503371488751fm27gp0.jpg', 18);
COMMIT;

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
BEGIN;
INSERT INTO `users_banner` VALUES (1, '111', 'banner/2018/07/u33753968383524337564fm200gp0.jpg', 'http://www.baidu.com', 100, '2018-07-05 21:49:00.000000');
INSERT INTO `users_banner` VALUES (2, '111', 'banner/2018/07/u5881360522285881616fm27gp0.jpg', 'http://www.baidu.com', 100, '2018-07-05 21:49:00.000000');
COMMIT;

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(20) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
BEGIN;
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$100000$ouyMqAUJ9fBr$9MA7Wgq/mhjJ9IrewCEhtVWTtMmoQCVMrGPAY8Xgh54=', '2018-07-10 23:04:05.911328', 1, 'wang', '', '', 'wong@163.com', 1, 1, '2018-07-05 09:58:10.169200', 'jerry', '2018-07-05', 'female', 'a', 'asdf', 'image/2018/07/u39429892503371488751fm27gp0.jpg');
COMMIT;

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2018-07-05 10:09:52.524290', '127.0.0.1', '1', '券商', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-07-05 10:10:49.632748', '127.0.0.1', '1', '上海', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-07-05 10:19:02.238148', '127.0.0.1', '1', '课程机构: qq', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-07-05 10:19:33.655853', '127.0.0.1', '1', '课程机构: qq', 'delete', '', 19, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-07-05 10:24:36.670148', '127.0.0.1', '2', '职位: 安师大', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-07-05 12:18:08.714554', '127.0.0.1', '2', '基金', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-07-05 12:18:18.343947', '127.0.0.1', '3', '银行', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-07-05 12:18:42.252139', '127.0.0.1', '2', '北京', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-07-05 12:18:49.472852', '127.0.0.1', '3', '深圳', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-07-05 12:18:58.161431', '127.0.0.1', '4', '广州', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-07-05 12:19:41.457162', '127.0.0.1', '5', '信托', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-07-05 12:19:49.725815', '127.0.0.1', '6', '保险', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-07-05 12:20:26.662460', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 城市', NULL, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-07-05 12:20:38.729133', '127.0.0.1', '4', '保险', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-07-05 12:20:44.680544', '127.0.0.1', '5', '信托', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-07-05 12:22:04.951621', '127.0.0.1', '2', '职位: 研究岗', 'change', '修改 company，depart 和 title', 27, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-07-05 13:33:43.240959', '127.0.0.1', '3', '职位: 量化研究员', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-07-05 13:36:45.392809', '127.0.0.1', '2', '课程机构: 国泰君安', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-07-05 15:39:39.226088', '127.0.0.1', '1', '机构: 国泰君安证券', 'create', '已添加。', 28, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-07-05 15:41:04.461264', '127.0.0.1', '2', '机构: 天弘基金', 'create', '已添加。', 28, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-07-05 15:41:35.614448', '127.0.0.1', '3', '机构: 华泰证券', 'create', '已添加。', 28, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-07-05 15:43:03.604218', '127.0.0.1', '1', '券商', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-07-05 15:43:09.547740', '127.0.0.1', '2', '银行', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-07-05 15:43:17.088312', '127.0.0.1', '3', '基金', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-07-05 15:43:24.472319', '127.0.0.1', '4', '信托', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-07-05 15:43:28.897732', '127.0.0.1', '5', '保险', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-07-05 15:43:41.422140', '127.0.0.1', '6', '租赁', 'create', '已添加。', 26, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-07-05 15:45:12.347239', '127.0.0.1', '1', '职位: 研究岗', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-07-05 15:50:01.130071', '127.0.0.1', '2', '职位: 量化交易', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-07-05 21:37:05.995599', '127.0.0.1', '1', '[课程机构: 国泰君安]的教师: Jerry', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-07-05 21:37:53.597095', '127.0.0.1', '1', '量化投资', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-07-05 21:44:51.976791', '127.0.0.1', '3', '债券发行', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-07-05 21:49:37.215156', '127.0.0.1', '1', '111(位于第100位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-07-05 21:49:52.484840', '127.0.0.1', '2', '111(位于第100位)', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-07-06 15:40:26.807137', '127.0.0.1', '4', '银行', 'create', '已添加。', 28, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-07-06 16:18:37.392094', '127.0.0.1', '4', '中国银行', 'change', '修改 name', 28, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-07-06 18:29:31.746176', '127.0.0.1', '4', '交易员', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-07-06 18:30:40.807684', '127.0.0.1', '5', '研究岗', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-07-06 23:37:46.752148', '127.0.0.1', '6', '研究岗', 'create', '已添加。', 27, 1);
INSERT INTO `xadmin_log` VALUES (40, '2018-07-07 16:32:16.963485', '127.0.0.1', '2', '天弘基金', 'change', '修改 image', 28, 1);
INSERT INTO `xadmin_log` VALUES (41, '2018-07-07 16:32:41.826327', '127.0.0.1', '1', '国泰君安证券', 'change', '修改 image', 28, 1);
INSERT INTO `xadmin_log` VALUES (42, '2018-07-07 16:33:07.200225', '127.0.0.1', '1', '国泰君安证券', 'change', '修改 image', 28, 1);
INSERT INTO `xadmin_log` VALUES (43, '2018-07-10 23:12:27.206197', '127.0.0.1', '2', '课程机构: 贝睿求职', 'change', '修改 name，desc，tag，image 和 course_nums', 19, 1);
INSERT INTO `xadmin_log` VALUES (44, '2018-07-10 23:13:21.351420', '127.0.0.1', '1', '量化投资', 'change', '修改 image 和 category', 9, 1);
INSERT INTO `xadmin_log` VALUES (45, '2018-07-10 23:16:07.920298', '127.0.0.1', '2', '投行入门案例', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (46, '2018-07-10 23:48:15.082273', '127.0.0.1', '3', '债券市场', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (47, '2018-07-10 23:48:40.742936', '127.0.0.1', '1', '《量化投资》课程的章节 >> 量化投资第一课', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (48, '2018-07-11 00:08:42.910229', '127.0.0.1', '4', '投行内控指引', 'create', '已添加。', 9, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
