/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : banhbao

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-10-11 22:29:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', 'rNKRMPRHB6orJKVwKzMlzn3BExfXv0Qy', '1', '2016-06-13 08:57:11', '2016-06-13 08:57:11', '2016-06-13 08:57:11');
INSERT INTO `activations` VALUES ('2', '2', 'AiPXmQSClm3KjM46EHINnTXRrrYO1xzC', '1', '2016-06-13 08:57:11', '2016-06-13 08:57:11', '2016-06-13 08:57:11');
INSERT INTO `activations` VALUES ('3', '3', 'qi5vyVeNq9FQFKtyP1NLXAGz3UF34hxC', '1', '2016-06-16 10:41:37', '2016-06-16 10:41:37', '2016-06-16 10:41:37');
INSERT INTO `activations` VALUES ('4', '4', '2LnoNNbwrpdBArVvXt0GcCYb9sl1h4jw', '1', '2016-06-16 10:43:28', '2016-06-16 10:43:28', '2016-06-16 10:43:28');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Cras vitae vulputate ipsum', 'This is the first blog post.<br><br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet facilisis ipsum. Aenean placerat orci ut ligula hendrerit egestas. Curabitur non porttitor elit. Ut scelerisque est ipsum, non molestie quam consequat accumsan. Suspendisse luctus metus ut mi consectetur, mollis convallis tortor posuere. Duis vestibulum erat at lacus ultrices, ut aliquam turpis pulvinar. Cras lobortis dui nisi, sed varius massa pulvinar sit amet. Cras vitae vulputate ipsum. Ut varius lectus quam, id ultrices nisl tempor mattis. Etiam sit amet imperdiet ipsum.\n\nSed porta velit vitae quam bibendum, ut convallis neque pharetra. Sed tempus velit tristique iaculis blandit. Phasellus et egestas lorem. Duis elementum turpis sollicitudin est consequat, vel viverra est tristique. Pellentesque lacinia posuere ante. Duis et consequat justo. Sed fermentum velit elit. Nulla suscipit vulputate ipsum, mattis tincidunt orci luctus eget. Nam in volutpat turpis. Cras vitae sapien urna. Pellentesque vestibulum adipiscing malesuada. Donec ornare sollicitudin libero ut hendrerit. ', 'blog-post', '1', 'blog, post', 'Blog Post', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('2', 'Donec molestie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus in tellus vel consectetur. Cras a quam facilisis, porta dui id, ultrices dui. Donec molestie, tortor eu condimentum tempus, massa nisl auctor dui, sodales tempus diam leo sed magna. Aliquam eu neque non nibh congue euismod. Vestibulum at malesuada nibh, sit amet imperdiet erat. Vivamus fringilla augue nunc, id porttitor lectus iaculis vitae. Maecenas posuere porttitor arcu. Nullam bibendum congue diam sed interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin laoreet aliquam gravida. Etiam sit amet orci sed augue lacinia vulputate. Phasellus mollis pretium orci, mollis ultrices purus accumsan sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam ac sollicitudin erat, sit amet cursus elit. Duis nec lacinia eros, sit amet convallis erat. ', 'blog-post-2', '1', 'blog, post, 2', 'Blog Post 2', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('3', 'Donec eu vehicula arcu', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-3', '1', 'blog, post, 3', 'Blog Post 3', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('4', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-4', '1', 'blog, post, 4', 'Blog Post 4', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('5', 'Aliquam elit libero', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-5', '1', 'blog, post, 5', 'Blog Post 5', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('6', 'Fusce dictum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-6', '1', 'blog, post, 6', 'Blog Post 6', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('7', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-7', '1', 'blog, post, 7', 'Blog Post 7', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('8', 'Nullam suscipit adipiscing purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-8', '1', 'blog, post, 8', 'Blog Post 8', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('9', 'Mauris risus nisl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in odio in augue tincidunt viverra. Cras sit amet risus eget augue fermentum consequat et id libero. Donec a laoreet orci. In mi ligula, ornare sit amet nisi et, laoreet tincidunt elit. Curabitur id dui urna. Cras metus tortor, egestas nec magna ornare, scelerisque laoreet ante. Nam aliquam felis velit, a ornare ante porta quis. Proin nisi enim, lobortis at sapien sit amet, lacinia dictum libero. Donec ac pulvinar ante. Mauris risus nisl, pellentesque sed nunc eget, aliquam volutpat dolor. Fusce mollis id purus quis malesuada. Nullam gravida faucibus faucibus. Curabitur ut neque odio. Aenean porta fringilla placerat. Nullam consequat sagittis orci sed tincidunt. ', 'blog-post-9', '1', 'blog, post, 9', 'Blog Post 9', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('10', 'Nam iaculis leo risus', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-10', '1', 'blog, post, 10', 'Blog Post 10', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('11', 'Vestibulum quis dui in tellus commodo eleifend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-11', '2', 'blog, post, 11', 'Blog Post 11', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('12', ' Sed scelerisque', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-12', '2', 'blog, post, 12', 'Blog Post 12', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('13', 'Aenean sapien lectus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-13', '3', 'blog, post, 13', 'Blog Post 13', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('14', 'Phasellus eget euismod tortor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '3', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('15', 'Vestibulum at congue enim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '5', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'en', '2016-06-13 08:57:29', '2016-06-13 08:57:29');
INSERT INTO `articles` VALUES ('16', ' ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem', '<p>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostr</p>\r\n', 'ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tem', '1', '', '', '1', null, null, null, 'vi', '2016-06-15 07:43:33', '2016-06-15 07:43:33');

-- ----------------------------
-- Table structure for articles_tags
-- ----------------------------
DROP TABLE IF EXISTS `articles_tags`;
CREATE TABLE `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_tags_article_id_index` (`article_id`),
  KEY `articles_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles_tags
-- ----------------------------
INSERT INTO `articles_tags` VALUES ('1', '1', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('2', '1', '3', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('3', '1', '4', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('4', '2', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('5', '2', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('6', '3', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('7', '3', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('8', '3', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('9', '4', '4', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('10', '4', '5', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('11', '2', '3', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('12', '5', '5', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('13', '5', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('14', '1', '8', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('15', '1', '5', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('16', '6', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('17', '7', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('18', '8', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('19', '9', '3', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('20', '9', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('21', '10', '1', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('22', '10', '2', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('23', '10', '3', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('24', '10', '4', '2016-06-13 08:57:30', '2016-06-13 08:57:30');
INSERT INTO `articles_tags` VALUES ('25', '10', '5', '2016-06-13 08:57:30', '2016-06-13 08:57:30');

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES ('2', 'blablad dfdf dfd', 'blablad-dfdf-dfd', 'vi', '2016-09-17 12:26:31', '2016-09-18 03:53:06', '2016-09-18 03:53:06', null);
INSERT INTO `authors` VALUES ('6', 'Nam Cao', 'nam-cao', 'vi', '2016-09-18 03:54:56', '2016-09-20 11:06:03', null, '1');
INSERT INTO `authors` VALUES ('7', 'Nguyễn Tuân', 'nguyen-tuan', 'vi', '2016-09-18 03:56:15', '2016-09-20 11:05:50', null, '1');
INSERT INTO `authors` VALUES ('8', 'Vũ Trọng Phụng', 'vu-trong-phung', 'vi', '2016-09-18 03:57:17', '2016-09-20 11:05:39', null, '1');
INSERT INTO `authors` VALUES ('9', 'Tinker', 'tinker', 'vi', '2016-09-20 11:06:13', '2016-09-20 11:06:13', null, '1');
INSERT INTO `authors` VALUES ('10', 'Lumen and Laravel', 'lumen-and-laravel', 'vi', '2016-09-20 11:06:32', '2016-09-20 11:06:32', null, '1');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `isbn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(3) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_num` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `publisher_id` int(10) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('40', '36', '<p>older</p>\r\n', null, '', '1', 'wake-me-up', null, '4', '', '', null, null, null, null, null, null, '6', '3', null, '1', 'vi', '2016-09-18 09:46:57', '2016-09-18 09:47:44', '0000-00-00 00:00:00', '0000000001');
INSERT INTO `books` VALUES ('41', '37', '<p>run test</p>\r\n', 'isb', '', '12', 'noway-to-run-test', '33.00', '5', '', '', 'img/book1.png', 'mypham1.png', '4467', null, '233', '23', '7', '5', null, '1', 'vi', '2016-09-18 09:50:46', '2016-09-20 08:34:34', null, '0000000001');
INSERT INTO `books` VALUES ('42', '38', '<p>time</p>\r\n', '', '', '2', 'we-need-to', '22.00', '4', '', '', 'img/book1.png', 'tuong.png', '35447', null, '', '', '6', '3', null, '1', 'vi', '2016-09-18 10:51:20', '2016-09-20 08:34:17', null, '0000000001');
INSERT INTO `books` VALUES ('43', '39', '<p>so serious</p>\r\n', 'us unite', '', '33', 'when-music-make', '3.00', '4', '', '', 'img/book1.png', 'anh1.png', '267629', null, '43', '', '6', '3', null, '1', 'vi', '2016-09-18 10:55:15', '2016-09-20 08:34:02', null, '0000000001');
INSERT INTO `books` VALUES ('44', '40', '<p>dfd</p>\r\n', 'have', '', '2', 'event', '0.00', '4', '', '', 'img/book1.png', 'cay.png', '46856', null, '938', '', '6', '3', null, '1', 'vi', '2016-09-18 10:57:35', '2016-09-20 08:33:32', null, '0000000001');
INSERT INTO `books` VALUES ('45', '41', '<p>sds</p>\r\n', 'tag', '', '33', 'price', '2.00', '4', '', '', 'img/book1.png', 'cocin.png', '26866', null, 'jess', 'jfk', '6', '3', null, '1', 'vi', '2016-09-18 11:00:20', '2016-09-20 08:32:51', null, '0000000001');
INSERT INTO `books` VALUES ('46', '42', '<p>is iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla par</p>\r\n', ' commod', '', '0', 'amet-consectetur-adipiscing-elit-sed-d', '20000.00', '4', '', '', 'img/book1.png', 'anh3.png', '26149', null, 'uia non ', '234', '8', '5', null, '1', 'vi', '2016-09-20 10:57:20', '2016-09-20 10:57:20', null, '0000000001');
INSERT INTO `books` VALUES ('47', '43', '<p>t aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem</p>\r\n', 'minima', '', '0', 'dolor-sit-amet-consectetur-adipisci-vel', '20000.00', '13', '', '', 'img/book1.png', 'anh2.png', '43446', null, 'minima ', '123', '9', '7', null, '1', 'vi', '2016-09-20 11:08:04', '2016-09-20 11:08:05', null, '0000000001');
INSERT INTO `books` VALUES ('48', '44', '<p>quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, ad</p>\r\n', 'hich t', '', '0', 'teachings-of-the-great-explorer-of-the-truth', '20000.00', '11', '', '', 'img/book1.png', 'anuong.png', '50899', null, '445', '233', '8', '8', null, '1', 'vi', '2016-09-20 11:08:53', '2016-09-20 11:08:53', null, '0000000001');
INSERT INTO `books` VALUES ('49', '45', '<p>id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut</p>\r\n', 'libero ', '', '0', 'distinctio-nam-libero-tempore', '33000.00', '14', '', '', 'img/book1.png', 'cacsukien.png', '54852', null, '3345', '233', '10', '9', null, '1', 'vi', '2016-09-20 11:09:54', '2016-09-20 11:09:54', null, '0000000001');
INSERT INTO `books` VALUES ('50', '46', '<p>&nbsp;facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat face</p>\r\n', '343565', '', '0', 'sire-that-they-cannot-foresee-th', '22000.00', '4', '', '', 'img/book1.png', 'anh1.png', '56909', null, '3436565', '234', '8', '6', null, '1', 'vi', '2016-09-20 11:10:42', '2016-09-20 11:10:43', null, '0000000001');
INSERT INTO `books` VALUES ('51', '47', '<p>tis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectu</p>\r\n', 'ucimus qui bland', '', '0', 'ucimus-qui-bland', '20000.00', '13', '', '', 'img/book1.png', 'anh2.png', '43446', null, '3232', '343', '8', '9', null, '1', 'vi', '2016-09-20 11:11:27', '2016-09-20 11:11:27', null, '0000000001');
INSERT INTO `books` VALUES ('52', '48', '<p>at facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus sa</p>\r\n', '3246665', '', '0', 'ot-foresee-the-pain-and-trouble-that', '22000.00', '11', '', '', 'img/book1.png', 'giamdoc.png', '31930', null, '2332', '323', '9', '7', null, '1', 'vi', '2016-09-20 11:14:50', '2016-09-20 11:14:50', null, '0000000001');
INSERT INTO `books` VALUES ('53', '49', '<p>&nbsp;hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>\r\n', 'blanditiis ', '', '0', 'issimos-ducimus-qui-blanditiis-praes', '20000.00', '14', '', '', 'img/book1.png', 'dulich-giaitri.png', '47206', null, '2323', '234', '7', '8', null, '1', 'vi', '2016-09-20 11:15:39', '2016-09-20 11:15:39', null, '0000000001');
INSERT INTO `books` VALUES ('54', '50', '<p>on provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et</p>\r\n', 'similique ', '', '0', 'on-provident-similique-sunt', '22000.00', '12', '', '', 'img/book1.png', 'muasam.png', '55043', null, '3255', '234', '10', '8', null, '1', 'vi', '2016-09-20 11:16:30', '2016-09-20 11:16:31', null, '0000000001');
INSERT INTO `books` VALUES ('55', '51', '<p>rough weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is</p>\r\n', '434', '', '0', 'kness-of-will-which-is-the', '33000.00', '14', '', '', 'img/book1.png', 'hethongchinhanh.png', '70559', null, '3232', '234', '7', '10', null, '1', 'vi', '2016-09-20 11:17:25', '2016-09-20 11:17:25', null, '0000000001');
INSERT INTO `books` VALUES ('56', '52', '<p>&nbsp;est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, om</p>\r\n', 'Nam ', '', '0', 'est-et-expedita-distinctio-nam-libero', '33000.00', '4', '', '', 'img/book1.png', 'maybay1.png', '104813', null, '2323', '234', '6', '8', null, '1', 'vi', '2016-09-20 11:18:24', '2016-09-20 11:18:24', null, '0000000001');
INSERT INTO `books` VALUES ('57', '53', '<p>ness of will, which is the same as sayi</p>\r\n', '3434', '', '0', 'ness-of-will-which-is-the-same-as-sayi', '24000.00', '4', '', '', 'img/book1.png', 'suckhoe-lamdep.png', '30318', null, '243', '234', '8', '7', null, '1', 'vi', '2016-09-20 11:19:38', '2016-09-20 11:19:39', null, '0000000001');
INSERT INTO `books` VALUES ('58', '54', '<p>issimos ducimus qui blanditiis praesentium</p>\r\n', '2345676', '', '0', 'tinh-yeu-tren-song-quan-ho', '34400.00', '14', '', '', 'img/book1.png', 'maybay2.png', '115959', null, '2323', '324', '9', '8', null, '1', 'vi', '2016-09-20 11:20:56', '2016-10-03 17:56:28', null, '0000000001');
INSERT INTO `books` VALUES ('59', '55', '<p>gsdfgsdfg</p>\r\n', 'asdfasdf', '', '10', 'con-song-tuoi-tho', '20000.00', '4', '', '', null, null, null, null, '1', '300', '6', '3', null, '1', 'vi', '2016-09-20 14:29:42', '2016-10-03 17:49:01', null, '0000000001');
INSERT INTO `books` VALUES ('60', '56', '<p>fasdfasd</p>\r\n', 'asdfasdf', '', '10', 'chao-song-ma', '20000.00', '13', '', '', null, null, null, null, '1', '300', '6', '8', null, '1', 'vi', '2016-09-20 14:32:46', '2016-10-03 17:48:36', null, '0000000001');
INSERT INTO `books` VALUES ('61', '57', '<p>sdgsdfg</p>\r\n', 'asdfasdf', '', '10', 'xin-chao-ba-con', '20000.00', '4', '', '', null, null, null, null, '1', '300', '6', '8', null, '1', 'vi', '2016-09-20 14:33:09', '2016-10-03 17:48:01', null, '0000000001');
INSERT INTO `books` VALUES ('62', '58', '<p>love</p>\r\n', 'love1212', '', '0', 'when-i-see-your-smile', '0.00', '4', '', '', null, null, null, null, '', '', null, null, null, '1', 'vi', '2016-10-06 15:59:28', '2016-10-06 15:59:29', null, '0000000001');
INSERT INTO `books` VALUES ('63', '59', '<p>love</p>\r\n', 'love1212', '', '0', 'when-i-see-your-smile-1', '0.00', '4', '', '', null, null, null, null, '', '', '6', '3', null, '1', 'vi', '2016-10-06 16:00:28', '2016-10-06 16:00:28', null, '0000000001');
INSERT INTO `books` VALUES ('64', '60', '<p>hello</p>\r\n', 'link top', '', '0', 'top-link', '0.00', '4', '', '', null, null, null, null, '', '', '6', '3', null, '1', 'vi', '2016-10-06 16:03:06', '2016-10-06 16:03:06', null, '0000000001');
INSERT INTO `books` VALUES ('65', '61', '<p>sds ds ds</p>\r\n', '232 232', '', '0', 'live-by-food', '0.00', '4', '', '', null, null, null, null, '', '', '6', '3', null, '1', 'vi', '2016-10-06 16:03:38', '2016-10-06 16:05:20', null, '0000000001');
INSERT INTO `books` VALUES ('66', '62', '<p>22</p>\r\n', 'tlrrtl', '', '0', 'look-around-the-conrner', '0.00', '0', '', '', null, null, null, null, '', '', null, null, null, '0', 'vi', '2016-10-06 16:09:05', '2016-10-06 16:09:05', null, '0000000001');
INSERT INTO `books` VALUES ('67', '63', '<p>sds ds d</p>\r\n', '33 ', '', '0', 'loi-cua-gio', '0.00', '4', '', '', null, null, null, null, '', '', '6', '3', null, '0', 'vi', '2016-10-06 16:10:16', '2016-10-06 16:10:21', null, '0000000001');
INSERT INTO `books` VALUES ('68', '64', '<p>sdss</p>\r\n', '2334343', '', '0', 'toi-thay-con-bo', '13000.00', '4', '', '', '/uploads/book//anh520161011031507.png', 'anh520161011031507.png', '81636', null, '', '', '6', '3', null, '1', 'vi', '2016-10-10 16:14:21', '2016-10-11 15:15:09', null, '0000000001');
INSERT INTO `books` VALUES ('69', '65', '<p>sds dsds</p>\r\n', '2344', '', '33', 'test-me-awile', '0.00', '4', '', '', '/uploads/book//anh320161011030531.png', 'anh320161011030531.png', '26149', null, '', '', '6', '3', null, '1', 'vi', '2016-10-11 15:05:32', '2016-10-11 15:05:32', null, '0000000001');
INSERT INTO `books` VALUES ('70', '66', '<p>sds dsds</p>\r\n', '2344', '', '33', 'test-me-awile-1', '0.00', '4', '', '', '/uploads/book//anh20161011030720.png', 'anh20161011030720.png', '81041', null, '', '', '6', '3', null, '1', 'vi', '2016-10-11 15:07:22', '2016-10-11 15:07:23', null, '0000000001');

-- ----------------------------
-- Table structure for books_authors
-- ----------------------------
DROP TABLE IF EXISTS `books_authors`;
CREATE TABLE `books_authors` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books_authors
-- ----------------------------

-- ----------------------------
-- Table structure for books_publishers
-- ----------------------------
DROP TABLE IF EXISTS `books_publishers`;
CREATE TABLE `books_publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books_publishers
-- ----------------------------

-- ----------------------------
-- Table structure for book_rates
-- ----------------------------
DROP TABLE IF EXISTS `book_rates`;
CREATE TABLE `book_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `star` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_rates
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'PHP', 'php', 'vi', 'article');
INSERT INTO `categories` VALUES ('2', 'SQL', 'sql', 'vi', 'article');
INSERT INTO `categories` VALUES ('3', 'SQLHTML', 'html', 'vi', 'article');
INSERT INTO `categories` VALUES ('4', 'Sách thiếu nhi', 'css', 'vi', 'book');
INSERT INTO `categories` VALUES ('5', 'Sách văn học - tiểu thuyết', 'javascript', 'vi', 'book');
INSERT INTO `categories` VALUES ('6', 'JQuery', 'jquery', 'en', 'book');
INSERT INTO `categories` VALUES ('7', 'test', 'test', 'en', 'article');
INSERT INTO `categories` VALUES ('10', 'bla 2', 'bla-2', 'en', 'book');
INSERT INTO `categories` VALUES ('11', 'Sách kinh tế', 'sach-kinh-te', 'vi', 'book');
INSERT INTO `categories` VALUES ('12', 'Sách ngoại ngữ', 'sach-ngoai-ngu', 'vi', 'book');
INSERT INTO `categories` VALUES ('13', 'Sách khoa học', 'sach-khoa-hoc', 'vi', 'book');
INSERT INTO `categories` VALUES ('14', 'Sách thường thức, đời sống', 'sach-thuong-thuc-doi-song', 'vi', 'book');
INSERT INTO `categories` VALUES ('15', 'Sách văn hóa, nghệ thuật', 'sach-van-hoa-nghe-thuat', 'vi', 'book');

-- ----------------------------
-- Table structure for entity
-- ----------------------------
DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency_unit` varchar(20) DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entity
-- ----------------------------
INSERT INTO `entity` VALUES ('36', '2016-09-18 09:46:56', '2016-09-18 09:47:44', '2016-09-18 09:47:44', '1', 'wake me up', '11.00', null, 'vi');
INSERT INTO `entity` VALUES ('37', '2016-09-18 09:50:45', '2016-09-18 10:44:31', null, '1', 'noway to run test', '112.00', null, 'vi');
INSERT INTO `entity` VALUES ('38', '2016-09-18 10:51:20', '2016-09-18 10:51:20', null, '1', 'we need to', '12.00', null, 'vi');
INSERT INTO `entity` VALUES ('39', '2016-09-18 10:55:15', '2016-09-18 10:55:15', null, '1', 'when music make', '23.00', null, 'vi');
INSERT INTO `entity` VALUES ('40', '2016-09-18 10:57:35', '2016-09-18 10:57:35', null, '1', 'event', '34.00', null, 'vi');
INSERT INTO `entity` VALUES ('41', '2016-09-18 11:00:20', '2016-09-18 11:00:20', null, '1', 'price', '22.00', null, 'vi');
INSERT INTO `entity` VALUES ('42', '2016-09-20 10:57:20', '2016-09-20 10:57:20', null, '1', ' amet, consectetur adipiscing elit, sed d', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('43', '2016-09-20 11:08:04', '2016-09-20 11:08:04', null, '1', ' dolor sit amet, consectetur, adipisci vel', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('44', '2016-09-20 11:08:53', '2016-09-20 11:08:53', null, '1', 'teachings of the great explorer of the truth', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('45', '2016-09-20 11:09:53', '2016-09-20 11:09:53', null, '1', 'distinctio. Nam libero tempore,', '2450000.00', null, 'vi');
INSERT INTO `entity` VALUES ('46', '2016-09-20 11:10:42', '2016-09-20 11:10:42', null, '1', 'sire, that they cannot foresee th', '124000.00', null, 'vi');
INSERT INTO `entity` VALUES ('47', '2016-09-20 11:11:27', '2016-09-20 11:11:27', null, '1', 'ucimus qui bland', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('48', '2016-09-20 11:14:50', '2016-09-20 11:14:50', null, '1', 'ot foresee the pain and trouble that ', '346000.00', null, 'vi');
INSERT INTO `entity` VALUES ('49', '2016-09-20 11:15:39', '2016-09-20 11:15:39', null, '1', 'issimos ducimus qui blanditiis praes', '356000.00', null, 'vi');
INSERT INTO `entity` VALUES ('50', '2016-09-20 11:16:29', '2016-09-20 11:16:29', null, '1', 'on provident, similique sunt ', '346000.00', null, 'vi');
INSERT INTO `entity` VALUES ('51', '2016-09-20 11:17:25', '2016-09-20 11:17:25', null, '1', 'kness of will, which is the ', '238000.00', null, 'vi');
INSERT INTO `entity` VALUES ('52', '2016-09-20 11:18:24', '2016-09-20 11:18:24', null, '1', ' est et expedita distinctio. Nam libero', '346000.00', null, 'vi');
INSERT INTO `entity` VALUES ('53', '2016-09-20 11:19:38', '2016-09-20 11:19:38', null, '1', 'ness of will, which is the same as sayi', '124000.00', null, 'vi');
INSERT INTO `entity` VALUES ('54', '2016-09-20 11:20:56', '2016-10-03 17:56:28', null, '1', 'tinh yeu tren song quan ho', '2450000.00', null, 'vi');
INSERT INTO `entity` VALUES ('55', '2016-09-20 14:29:41', '2016-10-03 17:48:58', null, '1', 'con song tuoi tho', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('56', '2016-09-20 14:32:46', '2016-10-03 17:48:35', null, '1', 'chao song ma', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('57', '2016-09-20 14:33:08', '2016-10-03 17:35:45', null, '1', 'xin chao ba con', '200000.00', null, 'vi');
INSERT INTO `entity` VALUES ('58', '2016-10-06 15:59:28', '2016-10-06 15:59:28', null, '1', 'when i see your smile', '112.00', null, 'vi');
INSERT INTO `entity` VALUES ('59', '2016-10-06 16:00:28', '2016-10-06 16:00:28', null, '1', 'when i see your smile', '112.00', null, 'vi');
INSERT INTO `entity` VALUES ('60', '2016-10-06 16:03:06', '2016-10-06 16:03:06', null, '1', 'top link', '33.00', null, 'vi');
INSERT INTO `entity` VALUES ('61', '2016-10-06 16:03:38', '2016-10-06 16:03:38', null, '1', 'live by food', '22.00', null, 'vi');
INSERT INTO `entity` VALUES ('62', '2016-10-06 16:09:05', '2016-10-06 16:09:05', null, '1', 'look around the conrner', '333.00', null, 'vi');
INSERT INTO `entity` VALUES ('63', '2016-10-06 16:10:16', '2016-10-06 16:10:16', null, '1', 'loi cua gio', '33.00', null, 'vi');
INSERT INTO `entity` VALUES ('64', '2016-10-10 16:14:21', '2016-10-10 16:14:21', null, '1', 'toi thay con bo', '230000.00', null, 'vi');
INSERT INTO `entity` VALUES ('65', '2016-10-11 15:05:32', '2016-10-11 15:05:32', null, '1', 'test me awile', '232.00', null, 'vi');
INSERT INTO `entity` VALUES ('66', '2016-10-11 15:07:22', '2016-10-11 15:07:22', null, '1', 'test me awile', '232.00', null, 'vi');

-- ----------------------------
-- Table structure for entity_categories
-- ----------------------------
DROP TABLE IF EXISTS `entity_categories`;
CREATE TABLE `entity_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_entity_id` (`entity_id`),
  KEY `idx_cat_id` (`sub_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entity_categories
-- ----------------------------
INSERT INTO `entity_categories` VALUES ('37', '39', '7', '2016-09-20 15:34:02', '2016-09-20 15:34:02');
INSERT INTO `entity_categories` VALUES ('38', '38', '7', '2016-09-20 15:34:17', '2016-09-20 15:34:17');
INSERT INTO `entity_categories` VALUES ('39', '37', '6', '2016-09-20 15:34:34', '2016-09-20 15:34:34');
INSERT INTO `entity_categories` VALUES ('40', '42', '6', '2016-09-20 17:57:20', '2016-09-20 17:57:20');
INSERT INTO `entity_categories` VALUES ('41', '42', '7', '2016-09-20 17:57:20', '2016-09-20 17:57:20');
INSERT INTO `entity_categories` VALUES ('42', '43', '6', '2016-09-20 18:08:04', '2016-09-20 18:08:04');
INSERT INTO `entity_categories` VALUES ('43', '43', '7', '2016-09-20 18:08:04', '2016-09-20 18:08:04');
INSERT INTO `entity_categories` VALUES ('44', '44', '7', '2016-09-20 18:08:53', '2016-09-20 18:08:53');
INSERT INTO `entity_categories` VALUES ('45', '45', '6', '2016-09-20 18:09:54', '2016-09-20 18:09:54');
INSERT INTO `entity_categories` VALUES ('46', '46', '6', '2016-09-20 18:10:42', '2016-09-20 18:10:42');
INSERT INTO `entity_categories` VALUES ('47', '46', '8', '2016-09-20 18:10:42', '2016-09-20 18:10:42');
INSERT INTO `entity_categories` VALUES ('48', '47', '6', '2016-09-20 18:11:27', '2016-09-20 18:11:27');
INSERT INTO `entity_categories` VALUES ('49', '47', '8', '2016-09-20 18:11:27', '2016-09-20 18:11:27');
INSERT INTO `entity_categories` VALUES ('50', '48', '7', '2016-09-20 18:14:50', '2016-09-20 18:14:50');
INSERT INTO `entity_categories` VALUES ('51', '48', '8', '2016-09-20 18:14:50', '2016-09-20 18:14:50');
INSERT INTO `entity_categories` VALUES ('52', '49', '6', '2016-09-20 18:15:39', '2016-09-20 18:15:39');
INSERT INTO `entity_categories` VALUES ('53', '49', '7', '2016-09-20 18:15:39', '2016-09-20 18:15:39');
INSERT INTO `entity_categories` VALUES ('54', '50', '6', '2016-09-20 18:16:29', '2016-09-20 18:16:29');
INSERT INTO `entity_categories` VALUES ('55', '50', '7', '2016-09-20 18:16:29', '2016-09-20 18:16:29');
INSERT INTO `entity_categories` VALUES ('56', '50', '8', '2016-09-20 18:16:30', '2016-09-20 18:16:30');
INSERT INTO `entity_categories` VALUES ('57', '51', '7', '2016-09-20 18:17:25', '2016-09-20 18:17:25');
INSERT INTO `entity_categories` VALUES ('58', '53', '6', '2016-09-20 18:19:38', '2016-09-20 18:19:38');
INSERT INTO `entity_categories` VALUES ('59', '53', '7', '2016-09-20 18:19:38', '2016-09-20 18:19:38');
INSERT INTO `entity_categories` VALUES ('72', '57', '6', '2016-10-04 00:48:01', '2016-10-04 00:48:01');
INSERT INTO `entity_categories` VALUES ('73', '56', '7', '2016-10-04 00:48:36', '2016-10-04 00:48:36');
INSERT INTO `entity_categories` VALUES ('74', '55', '8', '2016-10-04 00:48:59', '2016-10-04 00:48:59');
INSERT INTO `entity_categories` VALUES ('75', '54', '6', '2016-10-04 00:56:28', '2016-10-04 00:56:28');
INSERT INTO `entity_categories` VALUES ('76', '54', '8', '2016-10-04 00:56:28', '2016-10-04 00:56:28');
INSERT INTO `entity_categories` VALUES ('78', '64', '6', '2016-10-11 22:15:08', '2016-10-11 22:15:08');

-- ----------------------------
-- Table structure for entity_tags
-- ----------------------------
DROP TABLE IF EXISTS `entity_tags`;
CREATE TABLE `entity_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entity_tags
-- ----------------------------
INSERT INTO `entity_tags` VALUES ('38', '39', '31', '2016-09-20 15:34:02', '2016-09-20 15:34:02');
INSERT INTO `entity_tags` VALUES ('39', '39', '32', '2016-09-20 15:34:02', '2016-09-20 15:34:02');
INSERT INTO `entity_tags` VALUES ('40', '38', '29', '2016-09-20 15:34:17', '2016-09-20 15:34:17');
INSERT INTO `entity_tags` VALUES ('41', '38', '30', '2016-09-20 15:34:17', '2016-09-20 15:34:17');
INSERT INTO `entity_tags` VALUES ('42', '37', '26', '2016-09-20 15:34:34', '2016-09-20 15:34:34');
INSERT INTO `entity_tags` VALUES ('43', '37', '27', '2016-09-20 15:34:34', '2016-09-20 15:34:34');
INSERT INTO `entity_tags` VALUES ('44', '37', '28', '2016-09-20 15:34:34', '2016-09-20 15:34:34');

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('2', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu.', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('3', 'Curabitur sagittis ante sed quam tristique interdum.', 'Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. ', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('4', 'Suspendisse sit amet interdum neque.', 'Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('5', 'Maecenas rutrum congue orci, a vestibulum enim varius sed.', 'Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('6', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('7', 'Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('8', 'Duis quam ante, fringilla in metus quis, ornare scelerisque felis. ', 'Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('9', 'Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla.', 'Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('10', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `faqs` VALUES ('11', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'en', '2016-06-13 08:57:33', '2016-06-13 08:57:33');

-- ----------------------------
-- Table structure for form_posts
-- ----------------------------
DROP TABLE IF EXISTS `form_posts`;
CREATE TABLE `form_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_name_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of form_posts
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for maillist
-- ----------------------------
DROP TABLE IF EXISTS `maillist`;
CREATE TABLE `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maillist
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mnugroup` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Ana Sayfa', '/', '1', '0', 'module', 'home', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('2', 'Haberler', '/tr/news', '2', '0', 'module', 'news', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('3', 'Blog', '/tr/article', '3', '0', 'module', 'blog', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('4', 'Projeler', '/tr/project', '4', '0', 'module', 'project', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('5', 'Videolar', '/tr/video', '5', '0', 'module', 'video', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('6', 'Galeri', '/tr/photo-gallery/fotograf-galerisi', '6', '0', 'module', 'photo_gallery', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('7', 'Hello world', '/tr/page/hakkimizda', '7', '0', 'module', 'page', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('8', 'SSS', '/tr/faq', '8', '0', 'module', 'faq', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('9', 'set the fire', '/tr/contact', '9', '0', 'module', 'contact', '1', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'vi', 'home');
INSERT INTO `menus` VALUES ('10', 'Home', '/', '1', '0', 'module', 'home', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('11', 'News', '/en/news', '2', '0', 'module', 'news', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('12', 'Blog', '/en/article', '3', '0', 'module', 'blog', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('13', 'Projects', '/en/project', '4', '0', 'module', 'project', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('14', 'Videos', '/en/video', '5', '0', 'module', 'video', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('15', 'Faq', '/en/faq', '6', '0', 'module', 'faq', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');
INSERT INTO `menus` VALUES ('16', 'Contact Us', '/en/contact', '7', '0', 'module', 'contact', '1', '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', 'home');

-- ----------------------------
-- Table structure for merchant_transactions
-- ----------------------------
DROP TABLE IF EXISTS `merchant_transactions`;
CREATE TABLE `merchant_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `init_amount` decimal(10,0) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `order_info` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `transaction_amount` decimal(10,0) DEFAULT NULL,
  `card_name` varchar(50) DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `request_time` timestamp NULL DEFAULT NULL,
  `response_code` varchar(50) DEFAULT NULL,
  `response_message` varchar(50) DEFAULT NULL,
  `response_time` timestamp NULL DEFAULT NULL,
  `trans_ref` varchar(50) DEFAULT NULL,
  `trans_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2013_10_24_070153_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2013_10_24_111453_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143600_create_photo_galleries_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143700_create_photos_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_10_191159_create_form_posts_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_222615_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_224042_create_articles_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_22_085357_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_27_110650_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_29_083232_create_news_table', '1');
INSERT INTO `migrations` VALUES ('2013_12_11_124855_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('2014_01_13_204110_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_11_133026_create_maillist_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_181907_create_faqs_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_190645_create_projects_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_205053_create_videos_table', '1');
INSERT INTO `migrations` VALUES ('2014_09_10_205053_create_logs_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_09_230147_migration_cartalyst_sentinel', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Nam consectetur ullamcorper leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'nam-consectetur-ullamcorper-leo', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('2', 'Nunc pulvinar ligula vel justo tincidunt', 'Praesent non turpis facilisis, tincidunt lectus tristique, aliquet quam. Nulla facilisi. Mauris rutrum suscipit elit in tincidunt. Suspendisse potenti. Curabitur sed metus quis arcu aliquam adipiscing. Praesent ultrices nisl suscipit ante suscipit aliquet. Sed enim diam, dictum eget cursus sit amet, porta mollis felis. Donec vestibulum varius felis vel tristique. Donec in adipiscing tortor. Vestibulum dignissim scelerisque ante at aliquet. Cras ultrices metus convallis mi porttitor fermentum.Suspendisse nec velit ut est tristique placerat. Vivamus venenatis nunc id mi facilisis congue. Sed quis ipsum euismod diam aliquet venenatis. Nam nunc diam, tristique at placerat at, ullamcorper ut nunc. Aenean et vulputate augue, nec blandit ligula. Sed venenatis id dolor eu pharetra. Vestibulum tempus justo vitae nunc pellentesque vehicula. Aenean convallis ante vel justo porttitor hendrerit.Etiam sodales est ac porttitor hendrerit. Nullam vulputate arcu fermentum tincidunt gravida. Nunc pulvinar ligula vel justo tincidunt, eget venenatis sapien faucibus. Nam lobortis cursus dolor, sed vehicula sem tempus eget. Duis arcu tellus, vehicula at dapibus id, aliquam eu eros. Aenean eget nibh nunc. Fusce vitae urna in lorem iaculis tincidunt. Aliquam erat volutpat. Sed feugiat odio vitae varius pretium. Nam mattis augue ac lectus pulvinar, quis tempus lacus ornare. Sed nec eros tellus. Cras placerat erat eu odio congue, eget elementum massa aliquam. Ut congue fermentum ante a accumsan.Quisque tincidunt risus et erat varius convallis. Nulla faucibus vehicula libero eu elementum. Mauris elementum imperdiet dolor at faucibus. Praesent luctus convallis condimentum. Nam quis dolor interdum, malesuada sapien rhoncus, bibendum erat. Pellentesque aliquet est in nulla facilisis cursus. Aliquam diam augue, tincidunt eget purus a, tincidunt facilisis neque. Vestibulum hendrerit congue.', 'nunc-pulvinar-ligula-vel-justo-tincidunt', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('3', 'Pellentesque pulvinar dictum condimentum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'pellentesque-pulvinar-dictum-condimentum', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('4', 'Nunc rhoncus nulla facilisis turpis tristique egestas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel consectetur eros, eget sagittis purus. In tincidunt, nunc eu ultrices condimentum, dui libero faucibus orci, sed laoreet nunc nisl porta tellus. Sed nec ligula fringilla, rutrum turpis non, blandit nibh. Nulla dignissim tempor velit, a hendrerit turpis adipiscing vel. Vivamus pellentesque mollis eros non ultrices. Nam venenatis nisi risus, vitae pretium mauris porta in. Nunc rhoncus nulla facilisis turpis tristique egestas. Fusce non cursus tellus.', 'nunc-rhoncus-nulla-facilisis-turpis-tristique-egestas', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('5', 'Donec ut tempor risus', 'Donec ut suscipit tortor. Proin nec iaculis risus. Praesent commodo felis a libero aliquam, sed viverra ligula dapibus. Suspendisse elementum eu odio quis accumsan. Donec ut tempor risus. Nunc viverra cursus tellus, nec vestibulum ante viverra sed. ', 'donec-ut-tempor-risus', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('6', 'Mauris in purus erat', 'Donec ut metus arcu. Mauris quis quam viverra, ultricies urna tincidunt, vestibulum risus. Duis in lectus arcu. Vivamus nec vulputate magna. Integer ut vestibulum quam. Duis ac sapien commodo, consectetur ligula sed, tincidunt mi. Mauris in purus erat. Integer eget mollis elit. ', 'mauris-in-purus-erat', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('7', 'Vestibulum quam sem', 'Phasellus nulla sem, rhoncus id justo vel, rhoncus mollis eros. Morbi mollis mauris nisi, quis fringilla metus pretium at. Curabitur vel mi turpis. Donec sapien neque, auctor vel hendrerit sed, accumsan a elit. Proin turpis purus, tristique quis commodo quis, vulputate vel mi. Etiam feugiat quam vitae neque volutpat, eget rhoncus turpis pulvinar. Fusce non dictum ante. Sed congue non justo ac tincidunt. Vestibulum quam sem, suscipit quis quam quis, pharetra vehicula enim. Nullam lacinia consequat lacus ac tristique. Integer vitae pellentesque leo, sit amet faucibus diam. Suspendisse nulla mi, rutrum in accumsan nec, viverra eu velit. Vivamus porta hendrerit eros, faucibus rhoncus sem bibendum iaculis. ', 'vestibulum-quam-sem', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('8', 'In leo dui, rutrum pellentesque', 'Nam convallis vulputate erat. Nullam vehicula mauris non sapien fermentum condimentum. Nulla aliquam consequat iaculis. In leo dui, rutrum pellentesque dignissim ac, lacinia et eros. Fusce pretium aliquam eros eget euismod. Donec tristique auctor semper. Aenean a aliquet ipsum, ut fringilla diam. Etiam sed ullamcorper arcu. Quisque vehicula dui fringilla faucibus condimentum. ', 'in-leo-dui-rutrum-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('9', 'Class aptent taciti sociosqu ad litora', 'Nunc quis lorem ut metus consequat mollis. Maecenas condimentum turpis bibendum est venenatis gravida. Pellentesque id vehicula magna, sit amet semper purus. Ut tempor eros quis dui dictum, a sagittis ligula volutpat. Duis fermentum mattis dolor ut feugiat. Etiam et laoreet dolor, ultricies iaculis nisi. Nam erat nulla, facilisis at enim a, consectetur ornare magna. Phasellus aliquam varius quam eu lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nibh nulla, iaculis nec orci a, luctus gravida est. ', 'class-aptent-taciti-sociosqu-ad-litora', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('10', 'Aliquam sodales lacus varius, convallis odio id', 'Fusce lacinia pretium facilisis. Maecenas sed lectus id sapien vulputate ornare. Curabitur quis gravida turpis. Suspendisse id lectus ac magna ornare ultricies a non orci. Suspendisse potenti. Mauris id enim vitae nulla mollis imperdiet eget quis dui. Duis laoreet dolor eget lorem egestas, quis dignissim dui tempus. Morbi fermentum mi et nibh suscipit porta. Aenean scelerisque id augue vitae vestibulum. Aliquam sodales lacus varius, convallis odio id, dignissim purus. Fusce eu vestibulum ligula. Aenean sodales sem sit amet felis aliquam gravida. Duis lacus sem, varius nec arcu ac, venenatis iaculis urna. In sit amet arcu porttitor, rutrum enim in, ullamcorper nisi. Nam eget placerat odio. Fusce in porttitor turpis. ', 'aliquam-sodales-lacus-varius-convallis-odio-id', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('11', 'Curabitur placerat pharetra metus eu bibendum', 'Vivamus condimentum ultrices dignissim. Quisque pharetra pulvinar sem, in feugiat odio condimentum id. Sed lacinia nulla ac varius ultrices. Curabitur placerat pharetra metus eu bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mi lacus, bibendum at massa non, tempus dapibus sapien. Praesent sollicitudin bibendum dolor, a congue sapien fringilla non. Donec in dui dui. ', 'curabitur-placerat-pharetra-metus-eu-bibendum', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('12', 'Quisque et convallis nulla', 'Ut id turpis molestie, porta diam vel, dapibus odio. Donec quis magna aliquet, varius ipsum eu, adipiscing sem. Cras vestibulum risus vitae condimentum vehicula. Pellentesque auctor auctor mattis. Pellentesque sollicitudin, dolor sed adipiscing posuere, arcu tellus sollicitudin ipsum, vel suscipit velit turpis accumsan sem. Quisque mollis mollis volutpat. Cras volutpat mauris iaculis molestie ullamcorper. Quisque et convallis nulla. Ut tincidunt ut sapien vel venenatis. Aliquam erat volutpat. Sed mollis gravida nunc, at aliquet justo consectetur non. Quisque a tellus eget lorem lobortis semper sit amet sed urna. Cras facilisis pretium lorem, non placerat libero elementum sit amet. Donec felis risus, iaculis viverra mattis a, pharetra vitae purus. ', 'quisque-et-convallis-nulla', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('13', 'Vivamus blandit nisi pellentesque', 'Vivamus diam sem, volutpat in cursus sit amet, viverra nec libero. Nam vestibulum rutrum nulla, ac tristique nisl adipiscing vel. In pellentesque quam erat, nec ullamcorper purus pharetra in. Mauris placerat, eros vitae commodo vestibulum, nunc sapien laoreet turpis, a convallis metus massa a sapien. Curabitur arcu metus, laoreet pretium velit sed, faucibus scelerisque ligula. Suspendisse ut ornare nunc, eu fermentum libero. Vivamus blandit nisi pellentesque, ullamcorper leo dapibus, accumsan ante. Praesent justo ipsum, vestibulum a justo non, tincidunt ultricies quam. ', 'vivamus-blandit-nisi-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('14', 'Pellentesque id leo neque', 'Curabitur tempor justo eu risus convallis molestie. Quisque lectus purus, vulputate sed neque sed, gravida sollicitudin mauris. Phasellus risus lacus, placerat ut massa nec, dapibus rutrum ante. Phasellus eleifend laoreet iaculis. Nam volutpat justo a lectus eleifend aliquet. Pellentesque id leo neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed tempus laoreet dui in vulputate. Quisque in dapibus libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lorem et enim facilisis, id imperdiet sem tempor. Vivamus pellentesque quam nec neque bibendum, egestas suscipit neque rutrum. Nam ornare, elit posuere pretium rutrum, tortor leo scelerisque erat, vel cursus metus magna eu libero. Sed interdum sed libero vel luctus. ', 'pellentesque-id-leo-neque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('15', 'Sed id metus a ipsum bibendum sagittis', 'Phasellus accumsan sit amet neque interdum dapibus. Morbi consequat eros vel enim mattis, et rutrum neque consectetur. Suspendisse ultrices libero dignissim, facilisis est ut, tincidunt lacus. Curabitur ligula ligula, sodales eu faucibus vel, cursus et diam. Aliquam at neque et est venenatis ornare nec non lacus. Etiam quis lorem dolor. Vestibulum dictum lorem in nulla fermentum iaculis. In hac habitasse platea dictumst. Sed id metus a ipsum bibendum sagittis. Aenean mi purus, sollicitudin at convallis id, ultricies non neque. Nullam consectetur molestie diam, at lacinia libero imperdiet ac. Fusce lacinia tempus eros, non commodo libero scelerisque sit amet. Integer rhoncus molestie tristique. Pellentesque laoreet ultricies elit non rhoncus. Sed placerat sit amet enim at vulputate. Vivamus ornare quis diam id ultrices. ', 'sed-id-metus-a-ipsum-bibendum-sagittis', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('16', 'Maecenas dictum nulla turpis', 'Quisque eleifend sollicitudin velit. Mauris dictum, dolor at eleifend ullamcorper, risus erat tincidunt massa, vel pellentesque nisi nisi id ipsum. Nullam eu erat neque. Mauris a convallis neque, vitae semper libero. Praesent in cursus sapien, sed fermentum urna. Maecenas dictum nulla turpis, nec euismod nisi dictum eu. Suspendisse sollicitudin eros ipsum, ut sodales odio molestie vel. Nullam sed ante ut massa tempor suscipit. Quisque ac vehicula nulla, in fringilla mauris. Proin venenatis, velit ut tristique rhoncus, nulla orci molestie magna, quis gravida urna tortor in metus. Vestibulum non diam lacus. Donec elementum mattis massa, sit amet rhoncus odio dictum eu. Curabitur mattis risus non cursus auctor. ', 'maecenas-dictum-nulla-turpis', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('17', 'In ultricies in tortor sed pellentesque', 'Cras ac libero in ipsum rutrum placerat tincidunt nec turpis. Fusce rhoncus turpis at sem eleifend aliquam. Curabitur fringilla, ipsum in scelerisque laoreet, est ligula sagittis enim, vitae adipiscing dolor nisi ut dolor. Donec at risus imperdiet nisi blandit volutpat. In ultricies in tortor sed pellentesque. Phasellus nec elit in enim facilisis adipiscing ut eu orci. Quisque congue iaculis leo ac viverra. Pellentesque sagittis pellentesque ipsum, id blandit elit tempus eu. ', 'in-ultricies-in-tortor-sed-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('18', 'In hac habitasse platea dictumst', 'Sed quis felis aliquet, luctus erat non, congue dui. Integer imperdiet odio non lacus rhoncus fringilla. Sed at lacus sollicitudin tellus dignissim mollis vitae sed metus. Sed blandit nisi vitae risus commodo mollis. Ut metus lorem, luctus ut venenatis vitae, rutrum ut odio. Etiam viverra quis nunc sit amet vestibulum. Vestibulum fermentum mauris vel nisi rutrum faucibus. Quisque ac nibh at nunc facilisis pulvinar eu in leo. In hac habitasse platea dictumst. Nullam vulputate, sapien quis porta ultrices, erat lacus tincidunt felis, sit amet molestie leo dui a arcu. Sed convallis faucibus urna, venenatis pellentesque nibh placerat at. Aliquam et bibendum nisl. Ut ut cursus tellus. Nullam ut urna a mi accumsan ultrices. Suspendisse potenti. Aenean et bibendum augue, sed posuere mauris. ', 'in-hac-habitasse-platea-dictumst', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', '1', null, null, null, 'tr');
INSERT INTO `news` VALUES ('19', 'Nullam sodales, purus quis pulvinar dapibus', 'Pellentesque commodo mollis porta. Fusce eget leo in massa elementum faucibus at et nunc. Pellentesque id metus vel ligula venenatis gravida. Nullam vitae sapien id nibh pellentesque ullamcorper vel in risus. Curabitur sed faucibus sapien. Pellentesque sodales leo in mi commodo volutpat. In tempor consectetur magna tincidunt iaculis. Nullam sodales, purus quis pulvinar dapibus, arcu tortor feugiat lectus, eu viverra est lorem aliquam eros. ', 'nullam-sodales-purus-quis-pulvinar-dapibus', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 09:06:11', '0', null, null, null, 'en');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'HakkÔöÇÔûÆmÔöÇÔûÆzda', 'hakkimizda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2016-06-13 08:57:31', '2016-06-13 08:57:31', '1', 'tr');
INSERT INTO `pages` VALUES ('2', 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2016-06-13 08:57:31', '2016-06-13 08:57:31', '1', 'en');

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('1', '1', 'wzsXjg16nUb1pUMvmtPdhB07jqImCDIv', '2016-06-13 09:05:22', '2016-06-13 09:05:22');
INSERT INTO `persistences` VALUES ('2', '1', 'aszLZNbkrABOteoqOZPywXSEGExP5ACI', '2016-06-13 09:55:13', '2016-06-13 09:55:13');
INSERT INTO `persistences` VALUES ('3', '1', 'R3xbwEWG8oLhdZ7ZtCs52xQWoaixJDTu', '2016-06-14 06:33:49', '2016-06-14 06:33:49');
INSERT INTO `persistences` VALUES ('4', '1', 'vfIGWX7mNLUa6ZDYDBjtwTjcGtDKsY4u', '2016-06-15 01:48:21', '2016-06-15 01:48:21');
INSERT INTO `persistences` VALUES ('7', '1', 'zE73JGftbBlp2kGxSeJMGmcLDa3cugzF', '2016-06-15 07:15:55', '2016-06-15 07:15:55');
INSERT INTO `persistences` VALUES ('8', '1', 'bvLbb6HExJk3pNQIYothq3FACWb4UmSF', '2016-06-15 10:17:34', '2016-06-15 10:17:34');
INSERT INTO `persistences` VALUES ('9', '1', 'izGeIg8nETU6jAZJ8loAjUs5vGGbKgkC', '2016-06-19 10:30:30', '2016-06-19 10:30:30');
INSERT INTO `persistences` VALUES ('10', '1', 'PJTRUirozgVBGunZM97qbiiKN7ER4hLh', '2016-07-27 15:01:02', '2016-07-27 15:01:02');
INSERT INTO `persistences` VALUES ('11', '1', 'xfvgMDDV8mJCIHO7AokPzdwz5zDFO3Z9', '2016-09-17 11:11:52', '2016-09-17 11:11:52');
INSERT INTO `persistences` VALUES ('12', '1', 'QVlKF6iZDjQH4uFLxWGZrI7e6IXM1CAD', '2016-09-17 11:11:55', '2016-09-17 11:11:55');
INSERT INTO `persistences` VALUES ('13', '1', 'i2Duvcy8Bz2n8TzvIFRGM6C0bvVZn2k6', '2016-09-18 03:50:57', '2016-09-18 03:50:57');
INSERT INTO `persistences` VALUES ('14', '1', 'uko5A3pc1yLHFPA1IKXmUV4oDa7SJu81', '2016-09-18 09:43:07', '2016-09-18 09:43:07');
INSERT INTO `persistences` VALUES ('15', '1', '8LlsGbNI6XmrF3KGchdJyqGBFgwxcz5y', '2016-09-19 22:43:12', '2016-09-19 22:43:12');
INSERT INTO `persistences` VALUES ('16', '1', 'HbvEmsJNkflz2ugVMSAxmisAT1mVtsF2', '2016-09-20 06:45:57', '2016-09-20 06:45:57');
INSERT INTO `persistences` VALUES ('17', '1', 'uHCFFuNxCQkGxKLKx5C80g9QeV6hHsgh', '2016-09-20 10:54:11', '2016-09-20 10:54:11');
INSERT INTO `persistences` VALUES ('18', '1', 'cbrQ2J2YM9COdvMMlSjiq14IfbhKERxz', '2016-09-20 14:17:47', '2016-09-20 14:17:47');
INSERT INTO `persistences` VALUES ('19', '1', 'QtYkD37aFtq7pvZ6g1q9CJmjfTpjJC6G', '2016-09-20 14:26:30', '2016-09-20 14:26:30');
INSERT INTO `persistences` VALUES ('20', '1', '0eQl4W6EPExARwW0SkuKJOPr2911AJss', '2016-09-28 15:51:26', '2016-09-28 15:51:26');
INSERT INTO `persistences` VALUES ('21', '1', 'WlGyis5doDljljIXPXGdWVzxJJMFPuGh', '2016-10-03 17:35:00', '2016-10-03 17:35:00');
INSERT INTO `persistences` VALUES ('22', '1', '4kZOvPlqLSagZ2iXrAOw0E7cUn7gEzAU', '2016-10-03 17:39:19', '2016-10-03 17:39:19');
INSERT INTO `persistences` VALUES ('23', '1', 'S4Bv93lg6lWJTsJ8b9HVXjJegAtE6fKG', '2016-10-06 15:58:34', '2016-10-06 15:58:34');
INSERT INTO `persistences` VALUES ('24', '1', 'J2OffHlGAiCTBuXqpbltu5VuRwAcYtXk', '2016-10-10 13:45:48', '2016-10-10 13:45:48');
INSERT INTO `persistences` VALUES ('25', '1', 'vn5KhKj0isyNaaPrVL0IeiPOEfpEnWDu', '2016-10-11 15:04:52', '2016-10-11 15:04:52');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for photo_galleries
-- ----------------------------
DROP TABLE IF EXISTS `photo_galleries`;
CREATE TABLE `photo_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_galleries
-- ----------------------------
INSERT INTO `photo_galleries` VALUES ('1', 'FotoÔöÇãÆraf Galerisi', 'fotograf-galerisi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.', '2016-06-13 08:57:31', '2016-06-13 08:57:31', '1', 'tr');
INSERT INTO `photo_galleries` VALUES ('2', 'Photo Gallery Title', 'photo-gallery-title', 'Photo Gallery Content', '2016-06-13 09:06:38', '2016-06-13 09:06:38', '0', 'en');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` int(3) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('17', 'itation ullamco laboris nisi ut aliqu', '<p>itation ullamco laboris nisi ut aliqu</p>\r\n', '', '11.00', '11', 'itation-ullamco-laboris-nisi-ut-aliqu-1', '4', 'itation ullamco laboris nisi ut aliqu', 'itation ullamco laboris nisi ut aliqu', '1', null, null, null, 'vi', '2016-06-15 08:07:15', '2016-06-15 08:07:15');
INSERT INTO `products` VALUES ('18', 'itation ullamco laboris nisi ut aliqu', '<p>itation ullamco laboris nisi ut aliqu</p>\r\n', '', '12.00', '11', 'itation-ullamco-laboris-nisi-ut-aliqu-2', '4', '', '', '1', '/uploads/product/activeDashboard.png', 'activeDashboard.png', '451', 'vi', '2016-06-15 08:13:33', '2016-06-15 08:13:33');
INSERT INTO `products` VALUES ('19', 'us error sit voluptatem accusantium dolo', '<p>us error sit voluptatem accusantium dolo</p>\r\n', '', '11.00', '12', 'us-error-sit-voluptatem-accusantium-dolo', '4', 'us error sit voluptatem accusantium dolo', 'us error sit voluptatem accusantium dolo', '1', null, null, null, 'vi', '2016-06-15 08:36:17', '2016-06-15 08:36:17');
INSERT INTO `products` VALUES ('20', 'Test update amet, consectetur, adipisci velit, sed quia non nu', '<p>test amet, consectetur, adipisci velit, sed quia non nu</p>\r\n', 'sada sa', '13.00', '13', 'test-update-amet-consectetur-adipisci-velit-sed-quia-non-nu', '5', '', '', '1', '/uploads/product/alertBG.png', 'alertBG.png', '1267', 'vi', '2016-06-15 08:39:51', '2016-06-15 09:35:42');

-- ----------------------------
-- Table structure for products_tags
-- ----------------------------
DROP TABLE IF EXISTS `products_tags`;
CREATE TABLE `products_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_tags_product_id_index` (`product_id`),
  KEY `products_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products_tags
-- ----------------------------
INSERT INTO `products_tags` VALUES ('40', '20', '19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products_tags` VALUES ('41', '20', '20', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products_tags` VALUES ('42', '20', '21', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem-ipsum-dolor', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', 'nullam-sapien-urna', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', 'nunc-fringilla', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', 'morbi-commodo', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', 'suspendisse', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', 'vestibulum', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', 'donec-lobortis-pulvinar-faucibus', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', 'phasellus-tempor-ut-ligula-eget-porta', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', 'aenean', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `projects` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', 'mauris-dapibus-tellus', '', '', '0', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');

-- ----------------------------
-- Table structure for publishers
-- ----------------------------
DROP TABLE IF EXISTS `publishers`;
CREATE TABLE `publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publishers
-- ----------------------------
INSERT INTO `publishers` VALUES ('3', 'Nhà xuất bản Trẻ', 'mark-twain', 'vi', '2016-09-17 12:23:24', '2016-09-20 11:03:33', null, '1');
INSERT INTO `publishers` VALUES ('4', 'mirror mirror', 'mirror-mirror', 'vi', '2016-09-18 04:05:03', '2016-09-18 04:05:54', '2016-09-18 04:05:54', null);
INSERT INTO `publishers` VALUES ('5', 'Nhà xuất bản Kim Đồng', 'loving-world', 'vi', '2016-09-18 04:05:38', '2016-09-20 11:03:22', null, '1');
INSERT INTO `publishers` VALUES ('6', 'Cty phát hành Vàng Anh', 'cty-phat-hanh-vang-anh', 'vi', '2016-09-20 11:03:55', '2016-09-20 11:03:55', null, '1');
INSERT INTO `publishers` VALUES ('7', 'Công ty TNHH TA Books', 'cong-ty-tnhh-ta-books', 'vi', '2016-09-20 11:04:20', '2016-09-20 11:04:20', null, '1');
INSERT INTO `publishers` VALUES ('8', 'Skybooks', 'skybooks', 'vi', '2016-09-20 11:04:33', '2016-09-20 11:04:33', null, '1');
INSERT INTO `publishers` VALUES ('9', 'Trung tâm Blackboard', 'trung-tam-blackboard', 'vi', '2016-09-20 11:04:57', '2016-09-20 11:04:57', null, '1');
INSERT INTO `publishers` VALUES ('10', 'First news - Trí Việt', 'first-news-tri-viet', 'vi', '2016-09-20 11:05:13', '2016-09-20 11:05:13', null, '1');

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reminders
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'superadmin', 'SuperAdmin', null, '2016-06-13 08:57:10', '2016-06-13 08:57:10');
INSERT INTO `roles` VALUES ('2', 'user', 'user', '', '2016-06-15 10:05:19', '2016-06-15 10:05:19');

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1', '2016-06-13 08:57:11', '2016-06-13 08:57:11');
INSERT INTO `role_users` VALUES ('2', '1', '2016-06-13 08:57:11', '2016-06-13 08:57:11');
INSERT INTO `role_users` VALUES ('4', '2', '2016-06-16 10:43:30', '2016-06-16 10:43:30');
INSERT INTO `role_users` VALUES ('14', '2', '2016-06-17 04:10:09', '2016-06-17 04:10:09');
INSERT INTO `role_users` VALUES ('22', '2', '2016-06-18 12:05:22', '2016-06-18 12:05:22');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '{\"site_title\":\"Fully CMS - Laravel 5 Multi Language Content Managment System\",\"ga_code\":\"UA-61740707-1\",\"meta_keywords\":\"Laravel 5 Multi Language Content Managment System\",\"meta_description\":\"Laravel 5 Multi Language Content Managment System\"}', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'tr');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '/uploads/slider/slider_1.jpg', 'slider_1.jpg', '676338', '1', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', '/uploads/slider/slider_2.jpg', 'slider_2.jpg', '572388', '2', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', '/uploads/slider/slider_3.jpg', 'slider_3.jpg', '394405', '3', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', '/uploads/slider/slider_4.jpg', 'slider_4.jpg', '335322', '4', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', '/uploads/slider/slider_5.jpg', 'slider_5.jpg', '698727', '5', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', '/uploads/slider/slider_6.jpg', 'slider_6.jpg', '844577', '6', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', '/uploads/slider/slider_7.jpg', 'slider_7.jpg', '503064', '7', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', '/uploads/slider/slider_8.jpg', 'slider_8.jpg', '623998', '8', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', '412537', '9', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', '492158', '10', 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('11', 'Aenean', 'Aenean ornare erat sed semper gravida', 'img/carouselBackground.png', 'slider_9.jpg', '412537', '9', 'vi', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
INSERT INTO `sliders` VALUES ('12', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/img/carouselBackground.png', 'slider_10.jpg', '492158', '10', 'vi', '2016-06-13 08:57:34', '2016-06-13 08:57:34');

-- ----------------------------
-- Table structure for sub_categories
-- ----------------------------
DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `group` varchar(20) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sub_categories
-- ----------------------------
INSERT INTO `sub_categories` VALUES ('6', 'Bán chạy nhất', 'vi', 'book', null);
INSERT INTO `sub_categories` VALUES ('7', 'Sách chọn lọc', 'vi', 'book', null);
INSERT INTO `sub_categories` VALUES ('8', 'Sách khuyến mại', 'vi', 'book', null);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'PHP', 'php', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('2', 'Laravel', 'laravel', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('3', 'Mysql', 'mysql', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('4', 'Oracle', 'oracle', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('5', 'MongoDB', 'mongodb', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('6', 'Redis', 'redis', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('7', 'Memcache', 'memcache', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('8', 'APC', 'apc', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('9', 'JSON', 'json', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('10', 'XML', 'xml', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('11', 'Ajax', 'ajax', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('12', 'HTML', 'html', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('13', 'CSS', 'css', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('14', 'Javascript', 'javascript', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr', null);
INSERT INTO `tags` VALUES ('15', 'Redis', 'redis', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'en', null);
INSERT INTO `tags` VALUES ('16', 'bla', 'bla', '2016-06-15 08:41:37', '2016-06-15 08:41:37', 'vi', null);
INSERT INTO `tags` VALUES ('17', 'hello', 'hello', '2016-06-15 08:41:42', '2016-06-15 08:41:42', 'vi', null);
INSERT INTO `tags` VALUES ('18', 'test', 'test', '2016-06-15 09:17:30', '2016-06-15 09:17:30', 'vi', null);
INSERT INTO `tags` VALUES ('19', 'one', 'one', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi', null);
INSERT INTO `tags` VALUES ('20', 'two', 'two', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi', null);
INSERT INTO `tags` VALUES ('21', 'three', 'three', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi', null);
INSERT INTO `tags` VALUES ('22', 'music', 'music', '2016-09-18 05:01:52', '2016-09-18 05:01:52', 'vi', '1');
INSERT INTO `tags` VALUES ('23', 'wake', 'wake', '2016-09-18 09:46:56', '2016-09-18 09:46:56', 'vi', '1');
INSERT INTO `tags` VALUES ('24', 'me', 'me', '2016-09-18 09:46:56', '2016-09-18 09:46:56', 'vi', '1');
INSERT INTO `tags` VALUES ('25', 'up aviv', 'up-aviv', '2016-09-18 09:46:56', '2016-09-18 09:46:56', 'vi', '1');
INSERT INTO `tags` VALUES ('26', 'no', 'no', '2016-09-18 09:50:45', '2016-09-18 09:50:45', 'vi', '1');
INSERT INTO `tags` VALUES ('27', 'way', 'way', '2016-09-18 09:50:45', '2016-09-18 09:50:45', 'vi', '1');
INSERT INTO `tags` VALUES ('28', 'to', 'to', '2016-09-18 09:50:46', '2016-09-18 09:50:46', 'vi', '1');
INSERT INTO `tags` VALUES ('29', 'back', 'back', '2016-09-18 10:51:20', '2016-09-18 10:51:20', 'vi', '1');
INSERT INTO `tags` VALUES ('30', 'in', 'in', '2016-09-18 10:51:20', '2016-09-18 10:51:20', 'vi', '1');
INSERT INTO `tags` VALUES ('31', 'why', 'why', '2016-09-18 10:55:15', '2016-09-18 10:55:15', 'vi', '1');
INSERT INTO `tags` VALUES ('32', 'every', 'every', '2016-09-18 10:55:15', '2016-09-18 10:55:15', 'vi', '1');

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', null, 'global', null, '2016-09-20 14:17:34', '2016-09-20 14:17:34');
INSERT INTO `throttle` VALUES ('2', null, 'ip', '192.168.1.9', '2016-09-20 14:17:34', '2016-09-20 14:17:34');

-- ----------------------------
-- Table structure for tree_categories
-- ----------------------------
DROP TABLE IF EXISTS `tree_categories`;
CREATE TABLE `tree_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(5) DEFAULT NULL,
  `rgt` int(5) DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `last_updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tree_categories
-- ----------------------------
INSERT INTO `tree_categories` VALUES ('1', 'VI_NHOM_TIN', 'Nhom tin', null, '1', '2', 'article', 'vi', '2016-06-19 18:03:01', '2016-06-19 18:03:01', null, '2016-06-19 18:03:01', 'nhom-tin');
INSERT INTO `tree_categories` VALUES ('2', 'VI_NHOM_SAN_PHAM', 'Nhom san pham', null, '1', '2', 'product', 'vi', '2016-06-19 18:03:09', '2016-06-19 18:03:09', null, '2016-06-19 18:03:09', 'nhom-san-pham');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sex` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fabook_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'letrongduong81@gmail.com', '$2y$10$032nkB8qxbraCQhUSAhW3.NXhqnExR4f5bLBKYI0GRbkAWWewdDlC', null, '2016-10-11 15:04:52', 'duong', 'le', '2016-06-13 08:57:11', '2016-10-11 15:04:52', null, null, null, null, null);
INSERT INTO `users` VALUES ('2', 'admin@admin.com', '$2y$10$1i9siAeIJfUMijD0SRFGh.8XfUSvigvd8A1.Xdi94KF4dYiSIbZO2', null, null, 'Super', 'Admin', '2016-06-13 08:57:11', '2016-06-13 08:57:11', null, null, null, null, null);
INSERT INTO `users` VALUES ('3', 'duong81@gmail.com', '$2y$10$tgW4UfIMkVJY2UoCvcZMmut4h6m4o7KaGre/RoORxdPJRr3pTcm4K', null, null, 'le', 'dan', '2016-06-16 10:41:37', '2016-06-16 10:41:37', null, null, null, null, null);
INSERT INTO `users` VALUES ('4', 'ngduong81@gmail.com', '$2y$10$F/Bbf9/d3us19om5pSVkdeOUzzgukU1jamb0yn4cuBIQhb4ByCwNy', null, null, 'le', 'an', '2016-06-16 10:43:28', '2016-06-16 10:43:28', null, null, null, null, null);
INSERT INTO `users` VALUES ('14', 'fdonuong81@gmail.com', '$2y$10$8N4giDdCjyzOM1pAp7gJ8.liOOW3/IV.GS6NwS5/5bSmiTGFuNbW6', null, '2016-06-17 07:47:50', 'laeas', 'wwsss', '2016-06-17 04:10:09', '2016-06-17 07:47:50', null, null, null, null, null);
INSERT INTO `users` VALUES ('22', 'nguyenthihuong@gmail.com', '$2y$10$P6HGUzbfEx1Ti4WznHMYlOk39WL71wh23RZI6ejJBV/sg.k19vduS', null, null, 'led', 'duong', '2016-06-18 12:05:06', '2016-06-18 12:05:06', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `is_main` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------

-- ----------------------------
-- Table structure for user_balance
-- ----------------------------
DROP TABLE IF EXISTS `user_balance`;
CREATE TABLE `user_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `main_balance` decimal(10,0) NOT NULL,
  `secondary_balance` decimal(10,0) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL,
  `check_sum` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_balance
-- ----------------------------

-- ----------------------------
-- Table structure for user_transactions
-- ----------------------------
DROP TABLE IF EXISTS `user_transactions`;
CREATE TABLE `user_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `debt_account` varchar(50) DEFAULT NULL,
  `creditor_account` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `transaction_group_id` varchar(50) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `check_sum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', 'Painless Billing With Laravel and Stripe', 'painless-billing-with-laravel-and-stripe', 'k9KKjxEq0Lg', 'youtube', 'en', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('2', 'Using Eloquent Outside of Laravel', 'using-eloquent-outside-of-laravel', 'L0g9ka5qaCc', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('3', 'Fast Laravel Workflow With Generators', 'fast-laravel-workflow-with-generators', 'rmtjulbbSmY', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('4', 'Laravel Envoy', 'laravel-envoy', 'ZI9vzxvERGI', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('5', 'PSR 4 Autoloading', 'psr-4-autoloading', 'FzdhnbM_0ug', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('6', 'Gulp This', 'gulp-this', '6Jhgkp67GxI', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('7', 'Test Databases In Memory (with Laravel)', 'test-databases-in-memory-with-laravel', 'NB9KfQiHJO0', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('8', 'Welcome to the Laravel Community', 'welcome-to-the-laravel-community', '2_BKIhjHwS8', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('9', 'Crazy Simple Pagination in Laravel', 'crazy-simple-pagination-in-laravel', 'lIEcyOUcNQk', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('10', 'Better Error Monitoring with Bugsnag and Laravel', 'better-error-monitoring-with-bugsnag-and-laravel', 'r4gK5uynk2s', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('11', 'Laravel Basic Authentication in 4 Minutes', 'laravel-basic-authentication-in-4-minutes', 'FqDomWno2C0', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('12', 'Understanding Fortrabbit Deployment Files', 'understanding-fortrabbit-deployment-files', 'YvJiKI4IQ0Q', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('13', 'Laravel - How to Tail Log Files', 'laravel-how-to-tail-log-files', 'lP5yFWAt8Nk', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('14', 'Laravel and the N+1 Problem', 'laravel-and-the-n1-problem', 'swhWRMkpVsg', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('15', 'Laravel Artisan Commands 101', 'laravel-artisan-commands-101', 'BviKET-QTEQ', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('16', 'Form Model Binding in Laravel', 'form-model-binding-in-laravel', 'EJwxG3b9j9c', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('17', 'C Tags', 'c-tags', 'cE7jSTdE_uQ', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('18', 'View Composers in Laravel', 'view-composers-in-laravel', 'X8yqmZtKOoY', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('19', 'Laravel - Understanding REST', 'laravel-understanding-rest', 'rD82cZjTUZs', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('20', 'Laravel Queues With Iron and Fortrabbit', 'laravel-queues-with-iron-and-fortrabbit', 'yeDCIognMRs', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('21', 'Namespacing Primer (with Laravel)', 'namespacing-primer-with-laravel', 'yAzd7Ig1Wgg', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('22', 'From Zero to Deploy with Laravel', 'from-zero-to-deploy-with-laravel', '8rblX6Ta1-U', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('23', 'Laravel Setup For Newbs', 'laravel-setup-for-newbs', '9AU2QvkqkBM', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('24', 'Laravel Caching Ins and Outs', 'laravel-caching-ins-and-outs', 'Hl4-dftfc0o', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('25', 'Laravel Authentication Essentials', 'laravel-authentication-essentials', 'msEwmVZ4wp4', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('26', 'Laravel 4 Update', 'laravel-4-update', '63892510', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('27', 'Laravel 4 - Iron.io Push Queues & Closures', 'laravel-4-ironio-push-queues-closures', '64703617', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('28', 'Laravel 4 - IoC Controller Injection & Unit Testing', 'laravel-4-ioc-controller-injection-unit-testing', '53029232', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('29', 'Laravel 4 - Mail::queue and Mail::later', 'laravel-4-mailqueue-and-maillater', '64779946', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('30', 'Laravel 4 - Eloquent Collections & Polymorphic Relations', 'laravel-4-eloquent-collections-polymorphic-relations', '53183075', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('31', 'Laravel 4 - Controllers & Filters', 'laravel-4-controllers-filters', '52964368', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('32', 'Laravel 4 - IoC Container Basics', 'laravel-4-ioc-container-basics', '53009943', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('33', 'Laravel 4 - Error Handling', 'laravel-4-error-handling', '53445935', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('34', 'Laravel 4 - Mail', 'laravel-4-mail', '53701740', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('35', 'Laravel 4 - Migrations & Seeding', 'laravel-4-migrations-seeding', '53701204', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('36', 'Laracon (Day 1: Talk 2) Jeffrey Way', 'laracon-day-1-talk-2-jeffrey-way', '61104599', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('37', 'Laracon (Day 1: Talk 1) Taylor Otwell', 'laracon-day-1-talk-1-taylor-otwell', '61063778', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
INSERT INTO `videos` VALUES ('38', 'Laracon (Day 1 Talk 3) Kenny Meyers', 'laracon-day-1-talk-3-kenny-meyers', '61269747', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
