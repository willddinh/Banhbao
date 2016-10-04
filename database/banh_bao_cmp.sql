-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5095
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table banhbao.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.activations: ~4 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'rNKRMPRHB6orJKVwKzMlzn3BExfXv0Qy', 1, '2016-06-13 08:57:11', '2016-06-13 08:57:11', '2016-06-13 08:57:11'),
	(2, 2, 'AiPXmQSClm3KjM46EHINnTXRrrYO1xzC', 1, '2016-06-13 08:57:11', '2016-06-13 08:57:11', '2016-06-13 08:57:11'),
	(3, 3, 'qi5vyVeNq9FQFKtyP1NLXAGz3UF34hxC', 1, '2016-06-16 10:41:37', '2016-06-16 10:41:37', '2016-06-16 10:41:37'),
	(4, 4, '2LnoNNbwrpdBArVvXt0GcCYb9sl1h4jw', 1, '2016-06-16 10:43:28', '2016-06-16 10:43:28', '2016-06-16 10:43:28');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table banhbao.articles
CREATE TABLE IF NOT EXISTS `articles` (
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

-- Dumping data for table banhbao.articles: ~16 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `content`, `slug`, `category_id`, `meta_keywords`, `meta_description`, `is_published`, `path`, `file_name`, `file_size`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Cras vitae vulputate ipsum', 'This is the first blog post.<br><br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet facilisis ipsum. Aenean placerat orci ut ligula hendrerit egestas. Curabitur non porttitor elit. Ut scelerisque est ipsum, non molestie quam consequat accumsan. Suspendisse luctus metus ut mi consectetur, mollis convallis tortor posuere. Duis vestibulum erat at lacus ultrices, ut aliquam turpis pulvinar. Cras lobortis dui nisi, sed varius massa pulvinar sit amet. Cras vitae vulputate ipsum. Ut varius lectus quam, id ultrices nisl tempor mattis. Etiam sit amet imperdiet ipsum.\n\nSed porta velit vitae quam bibendum, ut convallis neque pharetra. Sed tempus velit tristique iaculis blandit. Phasellus et egestas lorem. Duis elementum turpis sollicitudin est consequat, vel viverra est tristique. Pellentesque lacinia posuere ante. Duis et consequat justo. Sed fermentum velit elit. Nulla suscipit vulputate ipsum, mattis tincidunt orci luctus eget. Nam in volutpat turpis. Cras vitae sapien urna. Pellentesque vestibulum adipiscing malesuada. Donec ornare sollicitudin libero ut hendrerit. ', 'blog-post', 1, 'blog, post', 'Blog Post', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(2, 'Donec molestie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus in tellus vel consectetur. Cras a quam facilisis, porta dui id, ultrices dui. Donec molestie, tortor eu condimentum tempus, massa nisl auctor dui, sodales tempus diam leo sed magna. Aliquam eu neque non nibh congue euismod. Vestibulum at malesuada nibh, sit amet imperdiet erat. Vivamus fringilla augue nunc, id porttitor lectus iaculis vitae. Maecenas posuere porttitor arcu. Nullam bibendum congue diam sed interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin laoreet aliquam gravida. Etiam sit amet orci sed augue lacinia vulputate. Phasellus mollis pretium orci, mollis ultrices purus accumsan sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam ac sollicitudin erat, sit amet cursus elit. Duis nec lacinia eros, sit amet convallis erat. ', 'blog-post-2', 1, 'blog, post, 2', 'Blog Post 2', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(3, 'Donec eu vehicula arcu', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-3', 1, 'blog, post, 3', 'Blog Post 3', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(4, 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-4', 1, 'blog, post, 4', 'Blog Post 4', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(5, 'Aliquam elit libero', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-5', 1, 'blog, post, 5', 'Blog Post 5', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(6, 'Fusce dictum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-6', 1, 'blog, post, 6', 'Blog Post 6', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(7, 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-7', 1, 'blog, post, 7', 'Blog Post 7', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(8, 'Nullam suscipit adipiscing purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-8', 1, 'blog, post, 8', 'Blog Post 8', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(9, 'Mauris risus nisl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in odio in augue tincidunt viverra. Cras sit amet risus eget augue fermentum consequat et id libero. Donec a laoreet orci. In mi ligula, ornare sit amet nisi et, laoreet tincidunt elit. Curabitur id dui urna. Cras metus tortor, egestas nec magna ornare, scelerisque laoreet ante. Nam aliquam felis velit, a ornare ante porta quis. Proin nisi enim, lobortis at sapien sit amet, lacinia dictum libero. Donec ac pulvinar ante. Mauris risus nisl, pellentesque sed nunc eget, aliquam volutpat dolor. Fusce mollis id purus quis malesuada. Nullam gravida faucibus faucibus. Curabitur ut neque odio. Aenean porta fringilla placerat. Nullam consequat sagittis orci sed tincidunt. ', 'blog-post-9', 1, 'blog, post, 9', 'Blog Post 9', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(10, 'Nam iaculis leo risus', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-10', 1, 'blog, post, 10', 'Blog Post 10', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(11, 'Vestibulum quis dui in tellus commodo eleifend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-11', 2, 'blog, post, 11', 'Blog Post 11', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(12, ' Sed scelerisque', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-12', 2, 'blog, post, 12', 'Blog Post 12', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(13, 'Aenean sapien lectus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-13', 3, 'blog, post, 13', 'Blog Post 13', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(14, 'Phasellus eget euismod tortor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', 3, 'blog, post, 14', 'Blog Post 14', 1, NULL, NULL, NULL, 'tr', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(15, 'Vestibulum at congue enim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', 5, 'blog, post, 14', 'Blog Post 14', 1, NULL, NULL, NULL, 'en', '2016-06-13 08:57:29', '2016-06-13 08:57:29'),
	(16, ' ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem', '<p>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostr</p>\r\n', 'ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tem', 1, '', '', 1, NULL, NULL, NULL, 'vi', '2016-06-15 07:43:33', '2016-06-15 07:43:33');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table banhbao.articles_tags
CREATE TABLE IF NOT EXISTS `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_tags_article_id_index` (`article_id`),
  KEY `articles_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.articles_tags: ~25 rows (approximately)
/*!40000 ALTER TABLE `articles_tags` DISABLE KEYS */;
INSERT INTO `articles_tags` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(2, 1, 3, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(3, 1, 4, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(4, 2, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(5, 2, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(6, 3, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(7, 3, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(8, 3, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(9, 4, 4, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(10, 4, 5, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(11, 2, 3, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(12, 5, 5, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(13, 5, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(14, 1, 8, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(15, 1, 5, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(16, 6, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(17, 7, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(18, 8, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(19, 9, 3, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(20, 9, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(21, 10, 1, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(22, 10, 2, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(23, 10, 3, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(24, 10, 4, '2016-06-13 08:57:30', '2016-06-13 08:57:30'),
	(25, 10, 5, '2016-06-13 08:57:30', '2016-06-13 08:57:30');
/*!40000 ALTER TABLE `articles_tags` ENABLE KEYS */;

-- Dumping structure for table banhbao.authors
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.authors: ~0 rows (approximately)
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;

-- Dumping structure for table banhbao.books
CREATE TABLE IF NOT EXISTS `books` (
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
  `page_num` int(5) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `publisher_id` int(10) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.books: ~0 rows (approximately)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `entity_id`, `content`, `isbn`, `external_url`, `discount`, `slug`, `rent_price`, `category_id`, `meta_keywords`, `meta_description`, `path`, `file_name`, `file_size`, `language`, `size`, `page_num`, `author_id`, `publisher_id`, `publish_date`, `is_published`, `lang`, `created_at`, `updated_at`, `deleted_at`, `created_by`) VALUES
	(1, 33, '<p>halohao</p>\r\n', 'ds', '', 0, 'ds-dsd', 0.00, 0, '', '', '/uploads/book//images.jpg', 'images.jpg', 4413, NULL, '', 0, NULL, NULL, NULL, 0, 'vi', '2016-10-04 10:22:26', '2016-10-04 10:22:26', NULL, 1),
	(2, 34, '<p>halohao</p>\r\n', 'ds', '', 0, 'ds-dsd-1', 0.00, 0, '', '', '/uploads/book//images.jpg', 'images.jpg', 4413, NULL, '', 0, NULL, NULL, NULL, 0, 'vi', '2016-10-04 10:24:38', '2016-10-04 10:24:38', NULL, 1),
	(3, 35, '<p>halohao</p>\r\n', 'ds', '', 0, 'ds-dsd-2', 0.00, 0, '', '', '/uploads/book//images.jpg', 'images.jpg', 4413, NULL, '', 0, NULL, NULL, NULL, 0, 'vi', '2016-10-04 11:10:26', '2016-10-04 11:10:26', NULL, 1),
	(4, 36, '<p>halohao</p>\r\n', 'ds', '', 0, 'ds-dsd-3', 0.00, 0, '', '', '/uploads/book//images.jpg', 'images.jpg', 4413, NULL, '', 0, NULL, NULL, NULL, 0, 'vi', '2016-10-04 11:19:45', '2016-10-04 11:19:45', NULL, 1),
	(5, 37, '<p>halohao</p>\r\n', 'ds', '', 0, 'ds-dsd-4', 0.00, 0, '', '', '/uploads/book//images.jpg', 'images.jpg', 4413, NULL, '', 0, NULL, NULL, NULL, 0, 'vi', '2016-10-04 11:22:13', '2016-10-04 11:22:13', NULL, 1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

-- Dumping structure for table banhbao.books_authors
CREATE TABLE IF NOT EXISTS `books_authors` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.books_authors: ~0 rows (approximately)
/*!40000 ALTER TABLE `books_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `books_authors` ENABLE KEYS */;

-- Dumping structure for table banhbao.books_publishers
CREATE TABLE IF NOT EXISTS `books_publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.books_publishers: ~0 rows (approximately)
/*!40000 ALTER TABLE `books_publishers` DISABLE KEYS */;
/*!40000 ALTER TABLE `books_publishers` ENABLE KEYS */;

-- Dumping structure for table banhbao.book_rates
CREATE TABLE IF NOT EXISTS `book_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `star` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.book_rates: ~0 rows (approximately)
/*!40000 ALTER TABLE `book_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_rates` ENABLE KEYS */;

-- Dumping structure for table banhbao.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.categories: ~8 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `slug`, `lang`, `group`) VALUES
	(1, 'PHP', 'php', 'vi', 'article'),
	(2, 'SQL', 'sql', 'vi', 'article'),
	(3, 'SQLHTML', 'html', 'vi', 'article'),
	(4, 'CSS', 'css', 'vi', 'product'),
	(5, 'Javascript', 'javascript', 'vi', 'product'),
	(6, 'JQuery', 'jquery', 'en', 'product'),
	(7, 'test', 'test', 'en', 'article'),
	(10, 'bla 2', 'bla-2', 'en', 'product');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table banhbao.entity
CREATE TABLE IF NOT EXISTS `entity` (
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.entity: ~32 rows (approximately)
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` (`id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `title`, `price`, `currency_unit`, `lang`) VALUES
	(1, '2016-09-14 08:10:18', '2016-09-14 08:10:18', NULL, NULL, 'hello my friend', NULL, NULL, 'vi'),
	(2, '2016-09-14 08:32:18', '2016-09-14 08:32:18', NULL, NULL, 'hello my friend2', NULL, NULL, 'vi'),
	(3, '2016-09-14 08:35:59', '2016-09-14 08:35:59', NULL, NULL, 'sdsds', NULL, NULL, 'vi'),
	(4, '2016-09-14 08:38:30', '2016-09-14 08:38:30', NULL, NULL, 'sdsds', NULL, NULL, 'vi'),
	(5, '2016-09-14 08:38:44', '2016-09-14 08:38:44', NULL, 1, 'df fdsf sdf sdf sdf', NULL, NULL, 'vi'),
	(6, '2016-09-14 09:59:49', '2016-09-14 09:59:49', NULL, 1, 'dsds', NULL, NULL, 'vi'),
	(7, '2016-09-14 10:02:24', '2016-09-14 10:02:24', NULL, 1, 'dsds', NULL, NULL, 'vi'),
	(8, '2016-09-15 02:42:44', '2016-09-15 02:42:44', NULL, 1, 'sdsds sds', NULL, NULL, 'vi'),
	(9, '2016-09-15 02:46:15', '2016-09-15 02:46:15', NULL, 1, 'sdsds sds', NULL, NULL, 'vi'),
	(10, '2016-09-15 02:46:41', '2016-09-15 02:46:41', NULL, 1, 'df hgh kikkl', NULL, NULL, 'vi'),
	(11, '2016-09-15 02:48:14', '2016-09-15 02:48:14', NULL, 1, 'dsds ', NULL, NULL, 'vi'),
	(12, '2016-09-15 02:48:55', '2016-09-15 02:48:55', NULL, 1, 'dsds ', NULL, NULL, 'vi'),
	(13, '2016-09-15 07:40:16', '2016-09-15 07:40:16', NULL, 1, 'halo papa', NULL, NULL, 'vi'),
	(14, '2016-09-15 07:42:31', '2016-09-15 07:42:31', NULL, 1, 'halo papa', NULL, NULL, 'vi'),
	(15, '2016-09-15 07:46:10', '2016-09-15 07:46:10', NULL, 1, 'kiss baby', NULL, NULL, 'vi'),
	(16, '2016-09-15 07:48:56', '2016-09-15 07:48:56', NULL, 1, 'dsd ds ', 12.00, NULL, 'vi'),
	(17, '2016-09-15 08:00:55', '2016-09-15 08:00:55', NULL, 1, 'ds ddds ', 22.00, NULL, 'vi'),
	(18, '2016-09-15 08:02:03', '2016-09-15 08:02:03', NULL, 1, 'ds ddds ', 22.00, NULL, 'vi'),
	(19, '2016-09-15 08:03:49', '2016-09-15 08:03:49', NULL, 1, 'dsd sds ds', 123.00, NULL, 'vi'),
	(20, '2016-09-15 08:06:00', '2016-09-15 08:06:00', NULL, 1, 'dsd sds ds', 123.00, NULL, 'vi'),
	(21, '2016-09-15 08:07:56', '2016-09-15 08:07:56', NULL, 1, 'dsd sds ds', 123.00, NULL, 'vi'),
	(22, '2016-09-15 08:11:45', '2016-09-15 08:11:45', NULL, 1, 'ds ds s', 22.00, NULL, 'vi'),
	(23, '2016-09-15 08:14:42', '2016-09-15 08:14:42', NULL, 1, 'ds ds ds ds', 22.00, NULL, 'vi'),
	(24, '2016-09-15 12:34:04', '2016-09-15 12:34:04', NULL, 1, 'fdsfsd', 33.00, NULL, 'vi'),
	(25, '2016-09-15 12:35:45', '2016-09-15 12:35:45', NULL, 1, 'fdsfsd', 33.00, NULL, 'vi'),
	(26, '2016-09-15 12:41:02', '2016-09-15 12:41:02', NULL, 1, 'fdsfsd', 33.00, NULL, 'vi'),
	(27, '2016-09-15 12:43:37', '2016-09-15 12:43:37', NULL, 1, 'fdsfsd', 33.00, NULL, 'vi'),
	(28, '2016-09-15 13:00:43', '2016-09-15 13:00:43', NULL, 1, 'fdsfsd', 33.00, NULL, 'vi'),
	(29, '2016-09-15 13:01:14', '2016-09-15 13:01:14', NULL, 1, 'dfd fdf  fdf df fd   dfdfd', 23.00, NULL, 'vi'),
	(30, '2016-09-15 13:22:04', '2016-09-15 13:22:04', NULL, 1, 'dfd fdf  fdf df fd   dfdfd', 23.00, NULL, 'vi'),
	(31, '2016-09-15 13:23:54', '2016-09-15 13:23:54', NULL, 1, 'dfd fdf  fdf df fd   dfdfd', 23.00, NULL, 'vi'),
	(32, '2016-10-04 10:21:19', '2016-10-04 10:21:19', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi'),
	(33, '2016-10-04 10:22:26', '2016-10-04 10:22:26', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi'),
	(34, '2016-10-04 10:24:38', '2016-10-04 10:24:38', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi'),
	(35, '2016-10-04 11:10:26', '2016-10-04 11:10:26', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi'),
	(36, '2016-10-04 11:19:45', '2016-10-04 11:19:45', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi'),
	(37, '2016-10-04 11:22:13', '2016-10-04 11:22:13', NULL, 1, 'ds dsd ', 11.00, NULL, 'vi');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;

-- Dumping structure for table banhbao.entity_categories
CREATE TABLE IF NOT EXISTS `entity_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.entity_categories: ~17 rows (approximately)
/*!40000 ALTER TABLE `entity_categories` DISABLE KEYS */;
INSERT INTO `entity_categories` (`id`, `entity_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
	(1, 7, 2, '2016-09-14 17:02:42', '2016-09-14 17:02:42'),
	(2, 9, 2, '2016-09-15 09:46:21', '2016-09-15 09:46:21'),
	(3, 12, 1, '2016-09-15 09:48:58', '2016-09-15 09:48:58'),
	(4, 12, 2, '2016-09-15 09:48:58', '2016-09-15 09:48:58'),
	(5, 14, 2, '2016-09-15 14:42:31', '2016-09-15 14:42:31'),
	(6, 14, 3, '2016-09-15 14:42:31', '2016-09-15 14:42:31'),
	(7, 15, 3, '2016-09-15 14:46:10', '2016-09-15 14:46:10'),
	(8, 16, 2, '2016-09-15 14:48:56', '2016-09-15 14:48:56'),
	(9, 16, 4, '2016-09-15 14:48:56', '2016-09-15 14:48:56'),
	(10, 17, 3, '2016-09-15 15:00:55', '2016-09-15 15:00:55'),
	(11, 18, 3, '2016-09-15 15:02:03', '2016-09-15 15:02:03'),
	(12, 30, 2, '2016-09-15 20:22:04', '2016-09-15 20:22:04'),
	(13, 30, 3, '2016-09-15 20:22:04', '2016-09-15 20:22:04'),
	(14, 31, 2, '2016-09-15 20:25:01', '2016-09-15 20:25:01'),
	(15, 31, 3, '2016-09-15 20:25:03', '2016-09-15 20:25:03'),
	(20, 29, 2, '2016-09-15 20:46:41', '2016-09-15 20:46:41'),
	(21, 29, 4, '2016-09-15 20:46:41', '2016-09-15 20:46:41');
/*!40000 ALTER TABLE `entity_categories` ENABLE KEYS */;

-- Dumping structure for table banhbao.entity_tags
CREATE TABLE IF NOT EXISTS `entity_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.entity_tags: ~11 rows (approximately)
/*!40000 ALTER TABLE `entity_tags` DISABLE KEYS */;
INSERT INTO `entity_tags` (`id`, `entity_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 14, 22, '2016-09-15 14:42:31', '2016-09-15 14:42:31'),
	(2, 14, 23, '2016-09-15 14:42:31', '2016-09-15 14:42:31'),
	(3, 14, 24, '2016-09-15 14:42:31', '2016-09-15 14:42:31'),
	(4, 15, 25, '2016-09-15 14:46:10', '2016-09-15 14:46:10'),
	(5, 15, 26, '2016-09-15 14:46:10', '2016-09-15 14:46:10'),
	(6, 30, 27, '2016-09-15 20:22:04', '2016-09-15 20:22:04'),
	(7, 30, 28, '2016-09-15 20:22:04', '2016-09-15 20:22:04'),
	(8, 31, 29, '2016-09-15 20:24:43', '2016-09-15 20:24:43'),
	(9, 31, 30, '2016-09-15 20:24:48', '2016-09-15 20:24:48'),
	(14, 29, 31, '2016-09-15 20:46:41', '2016-09-15 20:46:41'),
	(15, 29, 32, '2016-09-15 20:46:41', '2016-09-15 20:46:41');
/*!40000 ALTER TABLE `entity_tags` ENABLE KEYS */;

-- Dumping structure for table banhbao.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.faqs: ~11 rows (approximately)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` (`id`, `question`, `answer`, `order`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(2, 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu.', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(3, 'Curabitur sagittis ante sed quam tristique interdum.', 'Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. ', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(4, 'Suspendisse sit amet interdum neque.', 'Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(5, 'Maecenas rutrum congue orci, a vestibulum enim varius sed.', 'Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(6, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(7, 'Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(8, 'Duis quam ante, fringilla in metus quis, ornare scelerisque felis. ', 'Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(9, 'Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla.', 'Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(10, 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', 1, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(11, 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', 1, 'en', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Dumping structure for table banhbao.form_posts
CREATE TABLE IF NOT EXISTS `form_posts` (
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

-- Dumping data for table banhbao.form_posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `form_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_posts` ENABLE KEYS */;

-- Dumping structure for table banhbao.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Dumping structure for table banhbao.maillist
CREATE TABLE IF NOT EXISTS `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.maillist: ~0 rows (approximately)
/*!40000 ALTER TABLE `maillist` DISABLE KEYS */;
/*!40000 ALTER TABLE `maillist` ENABLE KEYS */;

-- Dumping structure for table banhbao.menus
CREATE TABLE IF NOT EXISTS `menus` (
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
  `mnugroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.menus: ~15 rows (approximately)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `title`, `url`, `order`, `parent_id`, `type`, `option`, `is_published`, `created_at`, `updated_at`, `lang`, `mnugroup`) VALUES
	(1, 'Ana Sayfa', '/', 3, 3, 'module', 'home', 1, '2016-06-13 08:57:32', '2016-08-21 09:29:33', 'vi', ''),
	(2, 'Haberler', '/tr/news', 1, 0, 'module', 'news', 1, '2016-06-13 08:57:32', '2016-08-21 09:08:24', 'vi', ''),
	(3, 'Blog', '/tr/article', 2, 2, 'module', 'blog', 1, '2016-06-13 08:57:32', '2016-08-21 09:31:02', 'vi', 'home'),
	(4, 'Projeler', '/tr/project', 4, 3, 'module', 'project', 1, '2016-06-13 08:57:32', '2016-08-21 09:30:34', 'vi', 'home'),
	(5, 'Videolar', '/tr/video', 5, 3, 'module', 'video', 1, '2016-06-13 08:57:32', '2016-08-21 09:30:35', 'vi', 'home'),
	(6, 'Galeri', '/tr/photo-gallery/fotograf-galerisi', 6, 2, 'module', 'photo_gallery', 1, '2016-06-13 08:57:32', '2016-08-21 09:31:05', 'vi', 'home'),
	(8, 'SSS', '/tr/faq', 7, 6, 'module', 'faq', 1, '2016-06-13 08:57:32', '2016-08-21 09:30:36', 'vi', 'home'),
	(10, 'Home', '/', 1, 0, 'module', 'home', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(11, 'News', '/en/news', 2, 0, 'module', 'news', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(12, 'Blog', '/en/article', 3, 0, 'module', 'blog', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(13, 'Projects', '/en/project', 4, 0, 'module', 'project', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(14, 'Videos', '/en/video', 5, 0, 'module', 'video', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(15, 'Faq', '/en/faq', 6, 0, 'module', 'faq', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(16, 'Contact Us', '/en/contact', 7, 0, 'module', 'contact', 1, '2016-06-13 08:57:32', '2016-06-13 09:13:03', 'en', ''),
	(17, 'customtest', '/aj/helloall', 8, 6, 'custom', NULL, 1, '2016-08-21 09:05:49', '2016-08-21 09:30:39', 'vi', 'footer'),
	(18, 'Test abc', '/vi/', 9, 0, 'module', NULL, 1, '2016-09-09 10:32:28', '2016-09-09 10:36:32', 'vi', 'footer');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping structure for table banhbao.merchant_transactions
CREATE TABLE IF NOT EXISTS `merchant_transactions` (
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

-- Dumping data for table banhbao.merchant_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `merchant_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_transactions` ENABLE KEYS */;

-- Dumping structure for table banhbao.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.migrations: ~18 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2013_10_24_070153_create_articles_table', 1),
	('2013_10_24_111453_create_pages_table', 1),
	('2013_11_06_143600_create_photo_galleries_table', 1),
	('2013_11_06_143700_create_photos_table', 1),
	('2013_11_10_191159_create_form_posts_table', 1),
	('2013_11_14_222615_create_tags_table', 1),
	('2013_11_14_224042_create_articles_tags_table', 1),
	('2013_11_22_085357_create_settings_table', 1),
	('2013_11_27_110650_create_categories_table', 1),
	('2013_11_29_083232_create_news_table', 1),
	('2013_12_11_124855_create_sliders_table', 1),
	('2014_01_13_204110_create_menus_table', 1),
	('2014_05_11_133026_create_maillist_table', 1),
	('2014_07_23_181907_create_faqs_table', 1),
	('2014_07_23_190645_create_projects_table', 1),
	('2014_07_23_205053_create_videos_table', 1),
	('2014_09_10_205053_create_logs_table', 1),
	('2015_10_09_230147_migration_cartalyst_sentinel', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table banhbao.news
CREATE TABLE IF NOT EXISTS `news` (
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

-- Dumping data for table banhbao.news: ~19 rows (approximately)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `title`, `content`, `slug`, `datetime`, `created_at`, `updated_at`, `is_published`, `path`, `file_name`, `file_size`, `lang`) VALUES
	(1, 'Nam consectetur ullamcorper leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'nam-consectetur-ullamcorper-leo', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(2, 'Nunc pulvinar ligula vel justo tincidunt', 'Praesent non turpis facilisis, tincidunt lectus tristique, aliquet quam. Nulla facilisi. Mauris rutrum suscipit elit in tincidunt. Suspendisse potenti. Curabitur sed metus quis arcu aliquam adipiscing. Praesent ultrices nisl suscipit ante suscipit aliquet. Sed enim diam, dictum eget cursus sit amet, porta mollis felis. Donec vestibulum varius felis vel tristique. Donec in adipiscing tortor. Vestibulum dignissim scelerisque ante at aliquet. Cras ultrices metus convallis mi porttitor fermentum.Suspendisse nec velit ut est tristique placerat. Vivamus venenatis nunc id mi facilisis congue. Sed quis ipsum euismod diam aliquet venenatis. Nam nunc diam, tristique at placerat at, ullamcorper ut nunc. Aenean et vulputate augue, nec blandit ligula. Sed venenatis id dolor eu pharetra. Vestibulum tempus justo vitae nunc pellentesque vehicula. Aenean convallis ante vel justo porttitor hendrerit.Etiam sodales est ac porttitor hendrerit. Nullam vulputate arcu fermentum tincidunt gravida. Nunc pulvinar ligula vel justo tincidunt, eget venenatis sapien faucibus. Nam lobortis cursus dolor, sed vehicula sem tempus eget. Duis arcu tellus, vehicula at dapibus id, aliquam eu eros. Aenean eget nibh nunc. Fusce vitae urna in lorem iaculis tincidunt. Aliquam erat volutpat. Sed feugiat odio vitae varius pretium. Nam mattis augue ac lectus pulvinar, quis tempus lacus ornare. Sed nec eros tellus. Cras placerat erat eu odio congue, eget elementum massa aliquam. Ut congue fermentum ante a accumsan.Quisque tincidunt risus et erat varius convallis. Nulla faucibus vehicula libero eu elementum. Mauris elementum imperdiet dolor at faucibus. Praesent luctus convallis condimentum. Nam quis dolor interdum, malesuada sapien rhoncus, bibendum erat. Pellentesque aliquet est in nulla facilisis cursus. Aliquam diam augue, tincidunt eget purus a, tincidunt facilisis neque. Vestibulum hendrerit congue.', 'nunc-pulvinar-ligula-vel-justo-tincidunt', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(3, 'Pellentesque pulvinar dictum condimentum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'pellentesque-pulvinar-dictum-condimentum', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(4, 'Nunc rhoncus nulla facilisis turpis tristique egestas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel consectetur eros, eget sagittis purus. In tincidunt, nunc eu ultrices condimentum, dui libero faucibus orci, sed laoreet nunc nisl porta tellus. Sed nec ligula fringilla, rutrum turpis non, blandit nibh. Nulla dignissim tempor velit, a hendrerit turpis adipiscing vel. Vivamus pellentesque mollis eros non ultrices. Nam venenatis nisi risus, vitae pretium mauris porta in. Nunc rhoncus nulla facilisis turpis tristique egestas. Fusce non cursus tellus.', 'nunc-rhoncus-nulla-facilisis-turpis-tristique-egestas', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(5, 'Donec ut tempor risus', 'Donec ut suscipit tortor. Proin nec iaculis risus. Praesent commodo felis a libero aliquam, sed viverra ligula dapibus. Suspendisse elementum eu odio quis accumsan. Donec ut tempor risus. Nunc viverra cursus tellus, nec vestibulum ante viverra sed. ', 'donec-ut-tempor-risus', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(6, 'Mauris in purus erat', 'Donec ut metus arcu. Mauris quis quam viverra, ultricies urna tincidunt, vestibulum risus. Duis in lectus arcu. Vivamus nec vulputate magna. Integer ut vestibulum quam. Duis ac sapien commodo, consectetur ligula sed, tincidunt mi. Mauris in purus erat. Integer eget mollis elit. ', 'mauris-in-purus-erat', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(7, 'Vestibulum quam sem', 'Phasellus nulla sem, rhoncus id justo vel, rhoncus mollis eros. Morbi mollis mauris nisi, quis fringilla metus pretium at. Curabitur vel mi turpis. Donec sapien neque, auctor vel hendrerit sed, accumsan a elit. Proin turpis purus, tristique quis commodo quis, vulputate vel mi. Etiam feugiat quam vitae neque volutpat, eget rhoncus turpis pulvinar. Fusce non dictum ante. Sed congue non justo ac tincidunt. Vestibulum quam sem, suscipit quis quam quis, pharetra vehicula enim. Nullam lacinia consequat lacus ac tristique. Integer vitae pellentesque leo, sit amet faucibus diam. Suspendisse nulla mi, rutrum in accumsan nec, viverra eu velit. Vivamus porta hendrerit eros, faucibus rhoncus sem bibendum iaculis. ', 'vestibulum-quam-sem', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(8, 'In leo dui, rutrum pellentesque', 'Nam convallis vulputate erat. Nullam vehicula mauris non sapien fermentum condimentum. Nulla aliquam consequat iaculis. In leo dui, rutrum pellentesque dignissim ac, lacinia et eros. Fusce pretium aliquam eros eget euismod. Donec tristique auctor semper. Aenean a aliquet ipsum, ut fringilla diam. Etiam sed ullamcorper arcu. Quisque vehicula dui fringilla faucibus condimentum. ', 'in-leo-dui-rutrum-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(9, 'Class aptent taciti sociosqu ad litora', 'Nunc quis lorem ut metus consequat mollis. Maecenas condimentum turpis bibendum est venenatis gravida. Pellentesque id vehicula magna, sit amet semper purus. Ut tempor eros quis dui dictum, a sagittis ligula volutpat. Duis fermentum mattis dolor ut feugiat. Etiam et laoreet dolor, ultricies iaculis nisi. Nam erat nulla, facilisis at enim a, consectetur ornare magna. Phasellus aliquam varius quam eu lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nibh nulla, iaculis nec orci a, luctus gravida est. ', 'class-aptent-taciti-sociosqu-ad-litora', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(10, 'Aliquam sodales lacus varius, convallis odio id', 'Fusce lacinia pretium facilisis. Maecenas sed lectus id sapien vulputate ornare. Curabitur quis gravida turpis. Suspendisse id lectus ac magna ornare ultricies a non orci. Suspendisse potenti. Mauris id enim vitae nulla mollis imperdiet eget quis dui. Duis laoreet dolor eget lorem egestas, quis dignissim dui tempus. Morbi fermentum mi et nibh suscipit porta. Aenean scelerisque id augue vitae vestibulum. Aliquam sodales lacus varius, convallis odio id, dignissim purus. Fusce eu vestibulum ligula. Aenean sodales sem sit amet felis aliquam gravida. Duis lacus sem, varius nec arcu ac, venenatis iaculis urna. In sit amet arcu porttitor, rutrum enim in, ullamcorper nisi. Nam eget placerat odio. Fusce in porttitor turpis. ', 'aliquam-sodales-lacus-varius-convallis-odio-id', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(11, 'Curabitur placerat pharetra metus eu bibendum', 'Vivamus condimentum ultrices dignissim. Quisque pharetra pulvinar sem, in feugiat odio condimentum id. Sed lacinia nulla ac varius ultrices. Curabitur placerat pharetra metus eu bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mi lacus, bibendum at massa non, tempus dapibus sapien. Praesent sollicitudin bibendum dolor, a congue sapien fringilla non. Donec in dui dui. ', 'curabitur-placerat-pharetra-metus-eu-bibendum', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(12, 'Quisque et convallis nulla', 'Ut id turpis molestie, porta diam vel, dapibus odio. Donec quis magna aliquet, varius ipsum eu, adipiscing sem. Cras vestibulum risus vitae condimentum vehicula. Pellentesque auctor auctor mattis. Pellentesque sollicitudin, dolor sed adipiscing posuere, arcu tellus sollicitudin ipsum, vel suscipit velit turpis accumsan sem. Quisque mollis mollis volutpat. Cras volutpat mauris iaculis molestie ullamcorper. Quisque et convallis nulla. Ut tincidunt ut sapien vel venenatis. Aliquam erat volutpat. Sed mollis gravida nunc, at aliquet justo consectetur non. Quisque a tellus eget lorem lobortis semper sit amet sed urna. Cras facilisis pretium lorem, non placerat libero elementum sit amet. Donec felis risus, iaculis viverra mattis a, pharetra vitae purus. ', 'quisque-et-convallis-nulla', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(13, 'Vivamus blandit nisi pellentesque', 'Vivamus diam sem, volutpat in cursus sit amet, viverra nec libero. Nam vestibulum rutrum nulla, ac tristique nisl adipiscing vel. In pellentesque quam erat, nec ullamcorper purus pharetra in. Mauris placerat, eros vitae commodo vestibulum, nunc sapien laoreet turpis, a convallis metus massa a sapien. Curabitur arcu metus, laoreet pretium velit sed, faucibus scelerisque ligula. Suspendisse ut ornare nunc, eu fermentum libero. Vivamus blandit nisi pellentesque, ullamcorper leo dapibus, accumsan ante. Praesent justo ipsum, vestibulum a justo non, tincidunt ultricies quam. ', 'vivamus-blandit-nisi-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(14, 'Pellentesque id leo neque', 'Curabitur tempor justo eu risus convallis molestie. Quisque lectus purus, vulputate sed neque sed, gravida sollicitudin mauris. Phasellus risus lacus, placerat ut massa nec, dapibus rutrum ante. Phasellus eleifend laoreet iaculis. Nam volutpat justo a lectus eleifend aliquet. Pellentesque id leo neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed tempus laoreet dui in vulputate. Quisque in dapibus libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lorem et enim facilisis, id imperdiet sem tempor. Vivamus pellentesque quam nec neque bibendum, egestas suscipit neque rutrum. Nam ornare, elit posuere pretium rutrum, tortor leo scelerisque erat, vel cursus metus magna eu libero. Sed interdum sed libero vel luctus. ', 'pellentesque-id-leo-neque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(15, 'Sed id metus a ipsum bibendum sagittis', 'Phasellus accumsan sit amet neque interdum dapibus. Morbi consequat eros vel enim mattis, et rutrum neque consectetur. Suspendisse ultrices libero dignissim, facilisis est ut, tincidunt lacus. Curabitur ligula ligula, sodales eu faucibus vel, cursus et diam. Aliquam at neque et est venenatis ornare nec non lacus. Etiam quis lorem dolor. Vestibulum dictum lorem in nulla fermentum iaculis. In hac habitasse platea dictumst. Sed id metus a ipsum bibendum sagittis. Aenean mi purus, sollicitudin at convallis id, ultricies non neque. Nullam consectetur molestie diam, at lacinia libero imperdiet ac. Fusce lacinia tempus eros, non commodo libero scelerisque sit amet. Integer rhoncus molestie tristique. Pellentesque laoreet ultricies elit non rhoncus. Sed placerat sit amet enim at vulputate. Vivamus ornare quis diam id ultrices. ', 'sed-id-metus-a-ipsum-bibendum-sagittis', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(16, 'Maecenas dictum nulla turpis', 'Quisque eleifend sollicitudin velit. Mauris dictum, dolor at eleifend ullamcorper, risus erat tincidunt massa, vel pellentesque nisi nisi id ipsum. Nullam eu erat neque. Mauris a convallis neque, vitae semper libero. Praesent in cursus sapien, sed fermentum urna. Maecenas dictum nulla turpis, nec euismod nisi dictum eu. Suspendisse sollicitudin eros ipsum, ut sodales odio molestie vel. Nullam sed ante ut massa tempor suscipit. Quisque ac vehicula nulla, in fringilla mauris. Proin venenatis, velit ut tristique rhoncus, nulla orci molestie magna, quis gravida urna tortor in metus. Vestibulum non diam lacus. Donec elementum mattis massa, sit amet rhoncus odio dictum eu. Curabitur mattis risus non cursus auctor. ', 'maecenas-dictum-nulla-turpis', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(17, 'In ultricies in tortor sed pellentesque', 'Cras ac libero in ipsum rutrum placerat tincidunt nec turpis. Fusce rhoncus turpis at sem eleifend aliquam. Curabitur fringilla, ipsum in scelerisque laoreet, est ligula sagittis enim, vitae adipiscing dolor nisi ut dolor. Donec at risus imperdiet nisi blandit volutpat. In ultricies in tortor sed pellentesque. Phasellus nec elit in enim facilisis adipiscing ut eu orci. Quisque congue iaculis leo ac viverra. Pellentesque sagittis pellentesque ipsum, id blandit elit tempus eu. ', 'in-ultricies-in-tortor-sed-pellentesque', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(18, 'In hac habitasse platea dictumst', 'Sed quis felis aliquet, luctus erat non, congue dui. Integer imperdiet odio non lacus rhoncus fringilla. Sed at lacus sollicitudin tellus dignissim mollis vitae sed metus. Sed blandit nisi vitae risus commodo mollis. Ut metus lorem, luctus ut venenatis vitae, rutrum ut odio. Etiam viverra quis nunc sit amet vestibulum. Vestibulum fermentum mauris vel nisi rutrum faucibus. Quisque ac nibh at nunc facilisis pulvinar eu in leo. In hac habitasse platea dictumst. Nullam vulputate, sapien quis porta ultrices, erat lacus tincidunt felis, sit amet molestie leo dui a arcu. Sed convallis faucibus urna, venenatis pellentesque nibh placerat at. Aliquam et bibendum nisl. Ut ut cursus tellus. Nullam ut urna a mi accumsan ultrices. Suspendisse potenti. Aenean et bibendum augue, sed posuere mauris. ', 'in-hac-habitasse-platea-dictumst', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 08:57:29', 1, NULL, NULL, NULL, 'tr'),
	(19, 'Nullam sodales, purus quis pulvinar dapibus', 'Pellentesque commodo mollis porta. Fusce eget leo in massa elementum faucibus at et nunc. Pellentesque id metus vel ligula venenatis gravida. Nullam vitae sapien id nibh pellentesque ullamcorper vel in risus. Curabitur sed faucibus sapien. Pellentesque sodales leo in mi commodo volutpat. In tempor consectetur magna tincidunt iaculis. Nullam sodales, purus quis pulvinar dapibus, arcu tortor feugiat lectus, eu viverra est lorem aliquam eros. ', 'nullam-sodales-purus-quis-pulvinar-dapibus', '2016-06-13', '2016-06-13 08:57:29', '2016-06-13 09:06:11', 0, NULL, NULL, NULL, 'en');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for table banhbao.pages
CREATE TABLE IF NOT EXISTS `pages` (
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

-- Dumping data for table banhbao.pages: ~2 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `is_published`, `lang`) VALUES
	(1, 'HakkÔöÇÔûÆmÔöÇÔûÆzda', 'hakkimizda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2016-06-13 08:57:31', '2016-06-13 08:57:31', 1, 'vi'),
	(2, 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2016-06-13 08:57:31', '2016-06-13 08:57:31', 1, 'en');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table banhbao.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.persistences: ~16 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 1, 'wzsXjg16nUb1pUMvmtPdhB07jqImCDIv', '2016-06-13 09:05:22', '2016-06-13 09:05:22'),
	(2, 1, 'aszLZNbkrABOteoqOZPywXSEGExP5ACI', '2016-06-13 09:55:13', '2016-06-13 09:55:13'),
	(3, 1, 'R3xbwEWG8oLhdZ7ZtCs52xQWoaixJDTu', '2016-06-14 06:33:49', '2016-06-14 06:33:49'),
	(4, 1, 'vfIGWX7mNLUa6ZDYDBjtwTjcGtDKsY4u', '2016-06-15 01:48:21', '2016-06-15 01:48:21'),
	(7, 1, 'zE73JGftbBlp2kGxSeJMGmcLDa3cugzF', '2016-06-15 07:15:55', '2016-06-15 07:15:55'),
	(8, 1, 'bvLbb6HExJk3pNQIYothq3FACWb4UmSF', '2016-06-15 10:17:34', '2016-06-15 10:17:34'),
	(9, 1, 'izGeIg8nETU6jAZJ8loAjUs5vGGbKgkC', '2016-06-19 10:30:30', '2016-06-19 10:30:30'),
	(10, 1, 'PJTRUirozgVBGunZM97qbiiKN7ER4hLh', '2016-07-27 15:01:02', '2016-07-27 15:01:02'),
	(11, 1, '6GYI3wHaebczqNVfbKghQXaSCC5rjWX4', '2016-08-21 08:02:31', '2016-08-21 08:02:31'),
	(12, 1, 'xMdomBMD3yJEVuuwwRlMo1iXmfNXnYHt', '2016-09-09 09:46:23', '2016-09-09 09:46:23'),
	(13, 1, '0PnTb8Cz0VNEDvdWcD1BCIMTAm1FVERr', '2016-09-09 10:11:52', '2016-09-09 10:11:52'),
	(14, 1, 'sLRJsQ67GkbnE8aogvb4CkeHTAcS5r80', '2016-09-13 06:30:48', '2016-09-13 06:30:48'),
	(15, 1, 'gfDbCPqZwQwTtjYhhKXhIiMuZVqCwl5a', '2016-09-14 02:57:19', '2016-09-14 02:57:19'),
	(16, 1, 'tQr5nSRFOy93fBOABBNvx3W034M2Fsrx', '2016-09-14 06:46:11', '2016-09-14 06:46:11'),
	(17, 1, 'p1qmVEK7TcDEwTmNMYQRL8byalSvVvJf', '2016-09-14 08:33:37', '2016-09-14 08:33:37'),
	(18, 1, 'yFMliBtMAYy6XROPKVXQmXGb5dmc2cYW', '2016-09-15 02:41:51', '2016-09-15 02:41:51'),
	(19, 1, 'UZ0w130gyFBTUJW0hRtvjclgQ1xxoRmN', '2016-09-15 07:29:23', '2016-09-15 07:29:23'),
	(20, 1, 'aBUyNpYoxfTUX6XhhYFh5EF4KMnFbMr5', '2016-09-16 02:22:15', '2016-09-16 02:22:15'),
	(21, 1, 'a15TrOLYlqPRiTfAAXa9fMEcXAMrywJI', '2016-09-16 06:55:07', '2016-09-16 06:55:07'),
	(22, 1, 'nkySf4k53rH2dih1hahU8UQtMX7w2C8T', '2016-10-04 09:43:24', '2016-10-04 09:43:24');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table banhbao.photos
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.photos: ~0 rows (approximately)
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;

-- Dumping structure for table banhbao.photo_galleries
CREATE TABLE IF NOT EXISTS `photo_galleries` (
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

-- Dumping data for table banhbao.photo_galleries: ~2 rows (approximately)
/*!40000 ALTER TABLE `photo_galleries` DISABLE KEYS */;
INSERT INTO `photo_galleries` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `is_published`, `lang`) VALUES
	(1, 'FotoÔöÇãÆraf Galerisi', 'fotograf-galerisi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.', '2016-06-13 08:57:31', '2016-06-13 08:57:31', 1, 'tr'),
	(2, 'Photo Gallery Title', 'photo-gallery-title', 'Photo Gallery Content', '2016-06-13 09:06:38', '2016-06-13 09:06:38', 0, 'en');
/*!40000 ALTER TABLE `photo_galleries` ENABLE KEYS */;

-- Dumping structure for table banhbao.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.products: ~18 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `content`, `external_url`, `discount`, `slug`, `category_id`, `meta_keywords`, `meta_description`, `is_published`, `path`, `file_name`, `file_size`, `lang`, `created_at`, `updated_at`, `deleted_at`, `entity_id`) VALUES
	(17, '<p>itation ullamco laboris nisi ut aliqu</p>\r\n', '', 11, 'itation-ullamco-laboris-nisi-ut-aliqu-1', 4, 'itation ullamco laboris nisi ut aliqu', 'itation ullamco laboris nisi ut aliqu', 1, NULL, NULL, NULL, 'vi', '2016-06-15 08:07:15', '2016-06-15 08:07:15', '0000-00-00 00:00:00', NULL),
	(18, '<p>itation ullamco laboris nisi ut aliqu</p>\r\n', '', 11, 'itation-ullamco-laboris-nisi-ut-aliqu-2', 4, '', '', 1, '/uploads/product/activeDashboard.png', 'activeDashboard.png', 451, 'vi', '2016-06-15 08:13:33', '2016-06-15 08:13:33', '0000-00-00 00:00:00', NULL),
	(19, '<p>us error sit voluptatem accusantium dolo</p>\r\n', '', 12, 'us-error-sit-voluptatem-accusantium-dolo', 4, 'us error sit voluptatem accusantium dolo', 'us error sit voluptatem accusantium dolo', 1, NULL, NULL, NULL, 'vi', '2016-06-15 08:36:17', '2016-06-15 08:36:17', '0000-00-00 00:00:00', NULL),
	(20, '<p>test amet, consectetur, adipisci velit, sed quia non nu</p>\r\n', 'sada sa', 13, 'test-update-amet-consectetur-adipisci-velit-sed-quia-non-nu', 5, '', '', 1, '/uploads/product/alertBG.png', 'alertBG.png', 1267, 'vi', '2016-06-15 08:39:51', '2016-06-15 09:35:42', '0000-00-00 00:00:00', NULL),
	(21, '<p>fgf</p>\r\n', '', 1, 'hello-my-friend', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 08:10:18', '2016-09-14 08:10:19', NULL, 1),
	(22, '<p>dfdfd</p>\r\n', '', 1, 'hello-my-friend2', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 08:32:18', '2016-09-14 08:32:18', NULL, 2),
	(23, '<p>dsds sds</p>\r\n', '', 1, 'sdsds', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 08:35:59', '2016-09-14 08:35:59', NULL, 3),
	(24, '<p>sdsd</p>\r\n', '', 0, 'sdsds-1', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 08:38:30', '2016-09-14 08:38:30', NULL, 4),
	(25, '<p>fsdffsd</p>\r\n', '', 1, 'df-fdsf-sdf-sdf-sdf', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 08:38:44', '2016-09-14 08:38:44', NULL, 5),
	(26, '<p>dsds</p>\r\n', '', 1, 'dsds', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-14 10:02:42', '2016-09-14 10:02:42', NULL, 7),
	(27, '<p>dfdfdf sdsd</p>\r\n', '', 1, 'sdsds-sds', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 02:46:21', '2016-09-15 02:46:21', NULL, 9),
	(28, '<p>dsdsd ds</p>\r\n', '', 1, 'dsds-1', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 02:48:58', '2016-09-15 02:48:58', NULL, 12),
	(29, '<p>dsdsd</p>\r\n', 'fsd', 2, NULL, 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 07:42:31', '2016-09-15 07:42:31', NULL, 14),
	(30, '<p>sdsd ds</p>\r\n', '', 2, '-1', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 07:46:10', '2016-09-15 07:46:10', NULL, 15),
	(31, '<p>fdfdf dfd</p>\r\n', '', 1, '-2', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 07:48:56', '2016-09-15 07:48:56', NULL, 16),
	(32, '<p>dfd dfd</p>\r\n', '', 0, '-3', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 08:02:03', '2016-09-15 08:02:03', NULL, 18),
	(33, '<p>dsd ssd s</p>\r\n', '', 0, '-4', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 08:07:56', '2016-09-15 08:07:56', NULL, 21),
	(34, '<p>fdfd fd</p>\r\n', '', 2, '-5', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 08:11:45', '2016-09-15 08:11:45', NULL, 22),
	(35, '<p>fdff</p>\r\n', '', 0, '-6', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 12:26:50', '2016-09-15 12:26:50', NULL, 23),
	(36, '<p>fdfdf</p>\r\n', '', 2, 'fdsfsd', 4, '', '', 0, NULL, NULL, NULL, 'vi', '2016-09-15 13:00:43', '2016-09-15 13:00:43', NULL, 28),
	(37, '<p>ddfd dsds test</p>\r\n', 'dsd ds', 1, 'dfd-fdf-fdf-df-fd-dfdfd', 4, '', '', 1, '/uploads/product//images.jpg', 'images.jpg', 4413, 'vi', '2016-09-15 13:01:14', '2016-09-15 13:46:41', NULL, 29);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table banhbao.products_tags
CREATE TABLE IF NOT EXISTS `products_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_tags_product_id_index` (`product_id`),
  KEY `products_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.products_tags: ~3 rows (approximately)
/*!40000 ALTER TABLE `products_tags` DISABLE KEYS */;
INSERT INTO `products_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(40, 20, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 20, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 20, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `products_tags` ENABLE KEYS */;

-- Dumping structure for table banhbao.projects
CREATE TABLE IF NOT EXISTS `projects` (
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

-- Dumping data for table banhbao.projects: ~10 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`, `title`, `description`, `slug`, `path`, `file_name`, `file_size`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem-ipsum-dolor', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(2, 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', 'nullam-sapien-urna', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(3, 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', 'nunc-fringilla', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(4, 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', 'morbi-commodo', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(5, 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', 'suspendisse', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(6, 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', 'vestibulum', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(7, 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', 'donec-lobortis-pulvinar-faucibus', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(8, 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', 'phasellus-tempor-ut-ligula-eget-porta', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(9, 'Aenean', 'Aenean ornare erat sed semper gravida', 'aenean', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(10, 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', 'mauris-dapibus-tellus', '', '', 0, 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table banhbao.publishers
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.publishers: ~0 rows (approximately)
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` (`id`, `name`, `slug`, `lang`, `created_at`, `updated_at`, `deleted_at`, `created_by`) VALUES
	(1, 'hehe bla', 'hehe', 'vi', '2016-09-16 08:38:58', '2016-09-16 09:34:30', NULL, NULL);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;

-- Dumping structure for table banhbao.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table banhbao.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'superadmin', 'SuperAdmin', NULL, '2016-06-13 08:57:10', '2016-06-13 08:57:10'),
	(2, 'user', 'user', '', '2016-06-15 10:05:19', '2016-06-15 10:05:19');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table banhbao.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.role_users: ~5 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2016-06-13 08:57:11', '2016-06-13 08:57:11'),
	(2, 1, '2016-06-13 08:57:11', '2016-06-13 08:57:11'),
	(4, 2, '2016-06-16 10:43:30', '2016-06-16 10:43:30'),
	(14, 2, '2016-06-17 04:10:09', '2016-06-17 04:10:09'),
	(22, 2, '2016-06-18 12:05:22', '2016-06-18 12:05:22');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table banhbao.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `settings`, `created_at`, `updated_at`, `lang`) VALUES
	(1, '{"site_title":"Fully CMS - Laravel 5 Multi Language Content Managment System","ga_code":"UA-61740707-1","meta_keywords":"Laravel 5 Multi Language Content Managment System","meta_description":"Laravel 5 Multi Language Content Managment System"}', '2016-06-13 08:57:32', '2016-06-13 08:57:32', 'tr');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table banhbao.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
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

-- Dumping data for table banhbao.sliders: ~12 rows (approximately)
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` (`id`, `title`, `description`, `path`, `file_name`, `file_size`, `order`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '/uploads/slider/slider_1.jpg', 'slider_1.jpg', 676338, 1, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(2, 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', '/uploads/slider/slider_2.jpg', 'slider_2.jpg', 572388, 2, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(3, 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', '/uploads/slider/slider_3.jpg', 'slider_3.jpg', 394405, 3, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(4, 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', '/uploads/slider/slider_4.jpg', 'slider_4.jpg', 335322, 4, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(5, 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', '/uploads/slider/slider_5.jpg', 'slider_5.jpg', 698727, 5, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(6, 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', '/uploads/slider/slider_6.jpg', 'slider_6.jpg', 844577, 6, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(7, 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', '/uploads/slider/slider_7.jpg', 'slider_7.jpg', 503064, 7, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(8, 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', '/uploads/slider/slider_8.jpg', 'slider_8.jpg', 623998, 8, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(9, 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', 412537, 9, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(10, 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', 492158, 10, 'tr', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(11, 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/slider_9.jpg', 'slider_9.jpg', 412537, 9, 'en', '2016-06-13 08:57:34', '2016-06-13 08:57:34'),
	(12, 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/slider_10.jpg', 'slider_10.jpg', 492158, 10, 'en', '2016-06-13 08:57:34', '2016-06-13 08:57:34');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table banhbao.sub_categories
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  `group` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table banhbao.sub_categories: ~3 rows (approximately)
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` (`id`, `title`, `lang`, `group`) VALUES
	(1, 'Outstanding', 'en', 'subProduct'),
	(2, 'Noi bat', 'vi', 'subProduct'),
	(3, 'dung nhieu', 'vi', 'subProduct'),
	(4, 'giam gia', 'vi', 'subProduct');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;

-- Dumping structure for table banhbao.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.tags: ~29 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`, `lang`) VALUES
	(1, 'PHP', 'php', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(2, 'Laravel', 'laravel', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(3, 'Mysql', 'mysql', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(4, 'Oracle', 'oracle', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(5, 'MongoDB', 'mongodb', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(6, 'Redis', 'redis', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(7, 'Memcache', 'memcache', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(8, 'APC', 'apc', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(9, 'JSON', 'json', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(10, 'XML', 'xml', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(11, 'Ajax', 'ajax', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(12, 'HTML', 'html', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(13, 'CSS', 'css', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(14, 'Javascript', 'javascript', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'tr'),
	(15, 'Redis', 'redis', '2016-06-13 08:57:30', '2016-06-13 08:57:30', 'en'),
	(16, 'bla', 'bla', '2016-06-15 08:41:37', '2016-06-15 08:41:37', 'vi'),
	(17, '', 'hello', '2016-06-15 08:41:42', '2016-09-15 07:40:16', 'vi'),
	(18, 'test', 'test', '2016-06-15 09:17:30', '2016-06-15 09:17:30', 'vi'),
	(19, 'one', 'one', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi'),
	(20, 'two', 'two', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi'),
	(21, 'three', 'three', '2016-06-15 09:35:12', '2016-06-15 09:35:12', 'vi'),
	(22, 'hello', 'hello-1', '2016-09-15 07:42:31', '2016-09-15 07:42:31', 'vi'),
	(23, 'take', 'take', '2016-09-15 07:42:31', '2016-09-15 07:42:31', 'vi'),
	(24, 'me', 'me', '2016-09-15 07:42:31', '2016-09-15 07:42:31', 'vi'),
	(25, 'kaka', 'kaka', '2016-09-15 07:46:10', '2016-09-15 07:46:10', 'vi'),
	(26, 'keke', 'keke', '2016-09-15 07:46:10', '2016-09-15 07:46:10', 'vi'),
	(27, 'ds ds', 'ds-ds', '2016-09-15 13:22:04', '2016-09-15 13:22:04', 'vi'),
	(28, 'gfg', 'gfg', '2016-09-15 13:22:04', '2016-09-15 13:22:04', 'vi'),
	(29, 'tag ', 'tag', '2016-09-15 13:24:43', '2016-09-15 13:24:43', 'vi'),
	(30, 'tag3', 'tag3', '2016-09-15 13:24:48', '2016-09-15 13:24:48', 'vi'),
	(31, 'fdf dff fdf', 'fdf-dff-fdf', '2016-09-15 13:32:40', '2016-09-15 13:32:40', 'vi'),
	(32, 'blood', 'blood', '2016-09-15 13:32:40', '2016-09-15 13:32:40', 'vi');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table banhbao.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.throttle: ~0 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table banhbao.tree_categories
CREATE TABLE IF NOT EXISTS `tree_categories` (
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

-- Dumping data for table banhbao.tree_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `tree_categories` DISABLE KEYS */;
INSERT INTO `tree_categories` (`id`, `code`, `name`, `description`, `lft`, `rgt`, `group`, `lang`, `created_at`, `updated_at`, `updated_by`, `last_updated_at`, `slug`) VALUES
	(1, 'VI_NHOM_TIN', 'Nhom tin', NULL, 1, 2, 'article', 'vi', '2016-06-19 18:03:01', '2016-06-19 18:03:01', NULL, '2016-06-19 18:03:01', 'nhom-tin'),
	(2, 'VI_NHOM_SAN_PHAM', 'Nhom san pham', NULL, 1, 2, 'product', 'vi', '2016-06-19 18:03:09', '2016-06-19 18:03:09', NULL, '2016-06-19 18:03:09', 'nhom-san-pham');
/*!40000 ALTER TABLE `tree_categories` ENABLE KEYS */;

-- Dumping structure for table banhbao.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table banhbao.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`, `name`) VALUES
	(1, 'letrongduong81@gmail.com', '$2y$10$032nkB8qxbraCQhUSAhW3.NXhqnExR4f5bLBKYI0GRbkAWWewdDlC', NULL, '2016-10-04 09:43:24', 'duong', 'le', '2016-06-13 08:57:11', '2016-10-04 09:43:24', ''),
	(2, 'admin@admin.com', '$2y$10$1i9siAeIJfUMijD0SRFGh.8XfUSvigvd8A1.Xdi94KF4dYiSIbZO2', NULL, NULL, 'Super', 'Admin', '2016-06-13 08:57:11', '2016-06-13 08:57:11', ''),
	(3, 'duong81@gmail.com', '$2y$10$tgW4UfIMkVJY2UoCvcZMmut4h6m4o7KaGre/RoORxdPJRr3pTcm4K', NULL, NULL, 'le', 'dan', '2016-06-16 10:41:37', '2016-06-16 10:41:37', ''),
	(4, 'ngduong81@gmail.com', '$2y$10$F/Bbf9/d3us19om5pSVkdeOUzzgukU1jamb0yn4cuBIQhb4ByCwNy', NULL, NULL, 'le', 'an', '2016-06-16 10:43:28', '2016-06-16 10:43:28', ''),
	(14, 'fdonuong81@gmail.com', '$2y$10$8N4giDdCjyzOM1pAp7gJ8.liOOW3/IV.GS6NwS5/5bSmiTGFuNbW6', NULL, '2016-06-17 07:47:50', 'laeas', 'wwsss', '2016-06-17 04:10:09', '2016-06-17 07:47:50', ''),
	(22, 'nguyenthihuong@gmail.com', '$2y$10$P6HGUzbfEx1Ti4WznHMYlOk39WL71wh23RZI6ejJBV/sg.k19vduS', NULL, NULL, 'led', 'duong', '2016-06-18 12:05:06', '2016-06-18 12:05:06', ''),
	(23, 'duonglt@fosft.com', '$2y$10$qnEfo9A91JZ75jc8TCw1Y.L2ctY94HpGduz/c256Vy0lc3n/NCfwW', NULL, NULL, NULL, NULL, '2016-09-08 14:19:21', '2016-09-08 14:19:21', 'duonglt');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table banhbao.user_addresses
CREATE TABLE IF NOT EXISTS `user_addresses` (
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

-- Dumping data for table banhbao.user_addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;

-- Dumping structure for table banhbao.user_balance
CREATE TABLE IF NOT EXISTS `user_balance` (
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

-- Dumping data for table banhbao.user_balance: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_balance` ENABLE KEYS */;

-- Dumping structure for table banhbao.user_transactions
CREATE TABLE IF NOT EXISTS `user_transactions` (
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

-- Dumping data for table banhbao.user_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_transactions` ENABLE KEYS */;

-- Dumping structure for table banhbao.videos
CREATE TABLE IF NOT EXISTS `videos` (
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

-- Dumping data for table banhbao.videos: ~38 rows (approximately)
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`id`, `title`, `slug`, `video_id`, `type`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Painless Billing With Laravel and Stripe', 'painless-billing-with-laravel-and-stripe', 'k9KKjxEq0Lg', 'youtube', 'en', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(2, 'Using Eloquent Outside of Laravel', 'using-eloquent-outside-of-laravel', 'L0g9ka5qaCc', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(3, 'Fast Laravel Workflow With Generators', 'fast-laravel-workflow-with-generators', 'rmtjulbbSmY', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(4, 'Laravel Envoy', 'laravel-envoy', 'ZI9vzxvERGI', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(5, 'PSR 4 Autoloading', 'psr-4-autoloading', 'FzdhnbM_0ug', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(6, 'Gulp This', 'gulp-this', '6Jhgkp67GxI', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(7, 'Test Databases In Memory (with Laravel)', 'test-databases-in-memory-with-laravel', 'NB9KfQiHJO0', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(8, 'Welcome to the Laravel Community', 'welcome-to-the-laravel-community', '2_BKIhjHwS8', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(9, 'Crazy Simple Pagination in Laravel', 'crazy-simple-pagination-in-laravel', 'lIEcyOUcNQk', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(10, 'Better Error Monitoring with Bugsnag and Laravel', 'better-error-monitoring-with-bugsnag-and-laravel', 'r4gK5uynk2s', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(11, 'Laravel Basic Authentication in 4 Minutes', 'laravel-basic-authentication-in-4-minutes', 'FqDomWno2C0', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(12, 'Understanding Fortrabbit Deployment Files', 'understanding-fortrabbit-deployment-files', 'YvJiKI4IQ0Q', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(13, 'Laravel - How to Tail Log Files', 'laravel-how-to-tail-log-files', 'lP5yFWAt8Nk', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(14, 'Laravel and the N+1 Problem', 'laravel-and-the-n1-problem', 'swhWRMkpVsg', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(15, 'Laravel Artisan Commands 101', 'laravel-artisan-commands-101', 'BviKET-QTEQ', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(16, 'Form Model Binding in Laravel', 'form-model-binding-in-laravel', 'EJwxG3b9j9c', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(17, 'C Tags', 'c-tags', 'cE7jSTdE_uQ', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(18, 'View Composers in Laravel', 'view-composers-in-laravel', 'X8yqmZtKOoY', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(19, 'Laravel - Understanding REST', 'laravel-understanding-rest', 'rD82cZjTUZs', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(20, 'Laravel Queues With Iron and Fortrabbit', 'laravel-queues-with-iron-and-fortrabbit', 'yeDCIognMRs', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(21, 'Namespacing Primer (with Laravel)', 'namespacing-primer-with-laravel', 'yAzd7Ig1Wgg', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(22, 'From Zero to Deploy with Laravel', 'from-zero-to-deploy-with-laravel', '8rblX6Ta1-U', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(23, 'Laravel Setup For Newbs', 'laravel-setup-for-newbs', '9AU2QvkqkBM', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(24, 'Laravel Caching Ins and Outs', 'laravel-caching-ins-and-outs', 'Hl4-dftfc0o', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(25, 'Laravel Authentication Essentials', 'laravel-authentication-essentials', 'msEwmVZ4wp4', 'youtube', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(26, 'Laravel 4 Update', 'laravel-4-update', '63892510', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(27, 'Laravel 4 - Iron.io Push Queues & Closures', 'laravel-4-ironio-push-queues-closures', '64703617', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(28, 'Laravel 4 - IoC Controller Injection & Unit Testing', 'laravel-4-ioc-controller-injection-unit-testing', '53029232', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(29, 'Laravel 4 - Mail::queue and Mail::later', 'laravel-4-mailqueue-and-maillater', '64779946', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(30, 'Laravel 4 - Eloquent Collections & Polymorphic Relations', 'laravel-4-eloquent-collections-polymorphic-relations', '53183075', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(31, 'Laravel 4 - Controllers & Filters', 'laravel-4-controllers-filters', '52964368', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(32, 'Laravel 4 - IoC Container Basics', 'laravel-4-ioc-container-basics', '53009943', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(33, 'Laravel 4 - Error Handling', 'laravel-4-error-handling', '53445935', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(34, 'Laravel 4 - Mail', 'laravel-4-mail', '53701740', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(35, 'Laravel 4 - Migrations & Seeding', 'laravel-4-migrations-seeding', '53701204', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(36, 'Laracon (Day 1: Talk 2) Jeffrey Way', 'laracon-day-1-talk-2-jeffrey-way', '61104599', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(37, 'Laracon (Day 1: Talk 1) Taylor Otwell', 'laracon-day-1-talk-1-taylor-otwell', '61063778', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33'),
	(38, 'Laracon (Day 1 Talk 3) Kenny Meyers', 'laracon-day-1-talk-3-kenny-meyers', '61269747', 'vimeo', 'tr', '2016-06-13 08:57:33', '2016-06-13 08:57:33');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
