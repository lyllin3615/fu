/*
Navicat MySQL Data Transfer

Source Server         : lin3615
Source Server Version : 50173
Source Host           : 218.244.141.78:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-10-13 08:09:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fu_admin`
-- ----------------------------
DROP TABLE IF EXISTS `fu_admin`;
CREATE TABLE `fu_admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员表-自增id,管理员id',
  `admin_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '管理员登陆名',
  `admin_password` char(32) NOT NULL COMMENT '管理员登陆密码',
  `admin_salt` char(6) DEFAULT NULL COMMENT '登陆盐值',
  `admin_status` tinyint(1) DEFAULT '1' COMMENT '是否是可用管理员，1－是，0－否',
  `admin_click` int(11) DEFAULT NULL COMMENT '管理员登陆的次数',
  `admin_email` varchar(45) DEFAULT NULL COMMENT '管理员的邮箱',
  `admin_datetime` int(11) DEFAULT NULL COMMENT '管理员的注册时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_admin
-- ----------------------------
INSERT INTO `fu_admin` VALUES ('1', 'lin3615', '25ff6bc72aa4f6c7b93e3aa5c2201025', '123456', '1', '1', '516005375@qq.com', null);

-- ----------------------------
-- Table structure for `fu_admin_logs`
-- ----------------------------
DROP TABLE IF EXISTS `fu_admin_logs`;
CREATE TABLE `fu_admin_logs` (
  `logs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `admin_user` varchar(255) DEFAULT NULL COMMENT '管理员名称',
  `logs_infos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '管理员登陆相关信息',
  `logs_datetime` int(11) DEFAULT NULL COMMENT '管理员操时间',
  PRIMARY KEY (`logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_admin_logs
-- ----------------------------
INSERT INTO `fu_admin_logs` VALUES ('1', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:265:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=d359412c17f91efd16ca0782ff78485f798b4d49\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62273\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444461383.8329999;s:12:\"REQUEST_TIME\";i:1444461383;}', '1444461384');
INSERT INTO `fu_admin_logs` VALUES ('2', 'lin3615', 'a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"HTTP_REFERER\";s:29:\"http://admin.ci.com/Index/top\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:414:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; abcefefpp0000asfsd=a31ardQer8UFYo1cwAL%2FYyDcALk8FhIeWYyw6T0482dfxgJa; lsdfhsduwerwqfsdf00oo=f299PfmbrVB8IcQ9bcDUiGUJbbszdIgA3MLySt4%2ByTTT3EUQUQFz; ci_session=06efcf9a52c630d1884835a81e58a476429a7c82\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62713\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"/Index/logout\";s:12:\"REDIRECT_URL\";s:13:\"/Index/logout\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:13:\"/Index/logout\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464499.654;s:12:\"REQUEST_TIME\";i:1444464499;}', '1444464499');
INSERT INTO `fu_admin_logs` VALUES ('3', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:265:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=06efcf9a52c630d1884835a81e58a476429a7c82\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62737\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464566.411;s:12:\"REQUEST_TIME\";i:1444464566;}', '1444464566');
INSERT INTO `fu_admin_logs` VALUES ('4', 'lin3615', 'a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"HTTP_REFERER\";s:29:\"http://admin.ci.com/Index/top\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:410:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=f3a7b1317bd15042e6e983f7f93c3bfae33ae5ef; abcefefpp0000asfsd=f225AUcKVucV4PS4OH0I1FzgfKX9PlX0exlDBHa6x6xAkA5x; lsdfhsduwerwqfsdf00oo=53d2jcrrBvtSzF8U49vDRWXylPXIGBvsRafltbQbb7bWj5fKLUlb\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62737\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"/Index/logout\";s:12:\"REDIRECT_URL\";s:13:\"/Index/logout\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:13:\"/Index/logout\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464569.069;s:12:\"REQUEST_TIME\";i:1444464569;}', '1444464569');
INSERT INTO `fu_admin_logs` VALUES ('5', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:265:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=f3a7b1317bd15042e6e983f7f93c3bfae33ae5ef\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62737\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464570.9879999;s:12:\"REQUEST_TIME\";i:1444464570;}', '1444464571');
INSERT INTO `fu_admin_logs` VALUES ('6', 'lin3615', 'a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"HTTP_REFERER\";s:29:\"http://admin.ci.com/Index/top\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:418:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=f3a7b1317bd15042e6e983f7f93c3bfae33ae5ef; abcefefpp0000asfsd=097eWiIAgvymX5lKd%2Ff2vysHkb7CLzFQ9bRsS7yE2cvoltTu; lsdfhsduwerwqfsdf00oo=f9c14D%2BFTjG%2BqKx8CppSXf8P9C%2FbO4OElBhw8tNGG4Gt3EDcNVza\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62807\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"/Index/logout\";s:12:\"REDIRECT_URL\";s:13:\"/Index/logout\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:13:\"/Index/logout\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464895.493;s:12:\"REQUEST_TIME\";i:1444464895;}', '1444464895');
INSERT INTO `fu_admin_logs` VALUES ('7', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:265:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=12bf4af233a4bf4885dc1f7c91c07e8873fdbeed\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"62807\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444464897.855;s:12:\"REQUEST_TIME\";i:1444464897;}', '1444464898');
INSERT INTO `fu_admin_logs` VALUES ('8', 'lin3615', 'a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"HTTP_REFERER\";s:29:\"http://admin.ci.com/Index/top\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:422:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; abcefefpp0000asfsd=b2c6XIDQTw4vwn2m1RMbZpHORaCys%2FCqYQU9%2BtSZzeHOebL9; lsdfhsduwerwqfsdf00oo=9c49f36Y%2FIUJDxR4Op4EaU0tUBiKapA%2Fv%2Fk%2Fz5AMb8w4zn5XcQHs; ci_session=74a92c5ff29ee709b5652aad9bdfb910bec57c26\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"63828\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"/Index/logout\";s:12:\"REDIRECT_URL\";s:13:\"/Index/logout\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:13:\"/Index/logout\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444468941.816;s:12:\"REQUEST_TIME\";i:1444468941;}', '1444468942');
INSERT INTO `fu_admin_logs` VALUES ('9', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:265:\"hi=aaaaaaaaaaaaa; __utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=74a92c5ff29ee709b5652aad9bdfb910bec57c26\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"63828\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444468943.493;s:12:\"REQUEST_TIME\";i:1444468943;}', '1444468943');
INSERT INTO `fu_admin_logs` VALUES ('10', 'lin3615', 'a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.fu.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.fu.com\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.fu.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:51:\"ci_session=d9b65f1a3e57eefb426e5e2c18bc2174c109b609\";s:4:\"PATH\";s:477:\"F:\\java\\jdk1.8.0_25\\bin;F:\\java\\jdk1.8.0_25\\jre\\bin;C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;G:\\phpweb\\mysql\\bin;G:\\VisualSVN Server\\bin;G:\\TortoiseSVN\\bin;G:\\phpweb\\php;C:\\ProgramData\\ComposerSetup\\bin;C:\\Users\\Administrator\\AppData\\Roaming\\Composer\\vendor\\bin;F:\\android-sdk-windows\\tools;D:\\Program Files (x86)\\Git\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:0:\"\";s:15:\"SERVER_SOFTWARE\";s:32:\"Apache/2.2.25 (Win32) PHP/5.3.28\";s:11:\"SERVER_NAME\";s:12:\"admin.fu.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:36:\"G:/phpweb/apache2/htdocs/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:46:\"G:/phpweb/apache2/htdocs/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"64236\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:12:\"REQUEST_TIME\";i:1444493892;}', '1444493892');
INSERT INTO `fu_admin_logs` VALUES ('11', 'lin3615', 'a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:9:\"HTTP_HOST\";s:12:\"admin.ci.com\";s:15:\"HTTP_CONNECTION\";s:10:\"keep-alive\";s:14:\"CONTENT_LENGTH\";s:2:\"62\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:11:\"HTTP_ORIGIN\";s:19:\"http://admin.ci.com\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:12:\"HTTP_REFERER\";s:31:\"http://admin.ci.com/Index/login\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"zh-CN,zh;q=0.8\";s:11:\"HTTP_COOKIE\";s:247:\"__utma=127398175.1758348703.1442384052.1442384052.1442384052.1; __utmz=127398175.1442384052.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ci_com=0f35NKIBIXhl%2B3NsOsezfa8PXiFYWxP%2B5aATyV9C; ci_session=875301ea06816c5644876c160c18f76e0b3a3004\";s:4:\"PATH\";s:355:\"C:\\ProgramData\\Oracle\\Java\\javapath;C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\\Wbem;C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;C:\\Program Files (x86)\\ATI Technologies\\ATI.ACE\\Core-Static;C:\\Program Files\\TortoiseSVN\\bin;E:\\wamp\\bin\\php\\php5.5.12;C:\\ProgramData\\ComposerSetup\\bin;E:\\jvm\\jdk\\bin;E:\\jvm\\jdk\\jre\\bin;C:\\Program Files\\TortoiseGit\\bin;\";s:10:\"SystemRoot\";s:10:\"C:\\Windows\";s:7:\"COMSPEC\";s:27:\"C:\\Windows\\system32\\cmd.exe\";s:7:\"PATHEXT\";s:53:\".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\";s:6:\"WINDIR\";s:10:\"C:\\Windows\";s:16:\"SERVER_SIGNATURE\";s:82:\"<address>Apache/2.4.9 (Win64) PHP/5.5.12 Server at admin.ci.com Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:31:\"Apache/2.4.9 (Win64) PHP/5.5.12\";s:11:\"SERVER_NAME\";s:12:\"admin.ci.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:9:\"127.0.0.1\";s:13:\"DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:23:\"E:/wamp/www/fu/adminapp\";s:12:\"SERVER_ADMIN\";s:16:\"516005375@qq.com\";s:15:\"SCRIPT_FILENAME\";s:33:\"E:/wamp/www/fu/adminapp/index.php\";s:11:\"REMOTE_PORT\";s:5:\"61351\";s:21:\"REDIRECT_QUERY_STRING\";s:20:\"/Index/loginValidate\";s:12:\"REDIRECT_URL\";s:20:\"/Index/loginValidate\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:20:\"/Index/loginValidate\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1444637297.881;s:12:\"REQUEST_TIME\";i:1444637297;}', '1444637298');

-- ----------------------------
-- Table structure for `fu_admin_perssion`
-- ----------------------------
DROP TABLE IF EXISTS `fu_admin_perssion`;
CREATE TABLE `fu_admin_perssion` (
  `perssion_id` int(10) unsigned NOT NULL COMMENT '管理员权限表,自增id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id，与admin对应',
  `persion_controller` text COMMENT '管理员权限',
  PRIMARY KEY (`perssion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_admin_perssion
-- ----------------------------
INSERT INTO `fu_admin_perssion` VALUES ('0', '1', 'all');

-- ----------------------------
-- Table structure for `fu_article`
-- ----------------------------
DROP TABLE IF EXISTS `fu_article`;
CREATE TABLE `fu_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章标题',
  `article_flag` tinyint(1) DEFAULT '1' COMMENT '文章是否开放',
  `article_datetime` int(11) DEFAULT NULL COMMENT '文章发表时间',
  `article_headline` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章优化标题',
  `article_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章优化关键词',
  `article_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章优化描述',
  `article_click` int(11) DEFAULT NULL COMMENT '文章浏览次数',
  `article_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '文章详细内容',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_article
-- ----------------------------

-- ----------------------------
-- Table structure for `fu_location_list`
-- ----------------------------
DROP TABLE IF EXISTS `fu_location_list`;
CREATE TABLE `fu_location_list` (
  `localtion_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '对应房间中的牌位表-自增id',
  `location_room_id` int(11) DEFAULT NULL COMMENT '对应的房间号，即与 表 room_list中的room_id对应',
  `location_price` decimal(10,2) DEFAULT '0.00' COMMENT '该牌位价格',
  `location_details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '牌位具体信息',
  `location_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '牌位的具体图片',
  `location_type` tinyint(1) DEFAULT '0' COMMENT '牌位类型 0-随机,1-高端定制式',
  `location_number` tinyint(1) DEFAULT '2' COMMENT '出售状态，2-末出售，1－出售中，0－已出售',
  `location_date` int(11) DEFAULT NULL COMMENT '牌位有效时间',
  `location_alias` varchar(255) DEFAULT NULL COMMENT '牌位别名',
  PRIMARY KEY (`localtion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_location_list
-- ----------------------------

-- ----------------------------
-- Table structure for `fu_room_list`
-- ----------------------------
DROP TABLE IF EXISTS `fu_room_list`;
CREATE TABLE `fu_room_list` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '房间分类表-自增id，即房间号码',
  `room_number` int(10) unsigned DEFAULT NULL COMMENT '房间的牌位数目',
  `room_flag` tinyint(1) DEFAULT '1' COMMENT '该房间是否开放，1开放，0－关闭，默认为1，即开放',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '开房间的用户id,即是谁开的房间',
  `room_time` int(11) DEFAULT '0' COMMENT '开房间的时间',
  `room_full` tinyint(1) DEFAULT '0' COMMENT '该房间是否已售完,0-末售完，1－已售完',
  `location_list_localtion_id` int(10) unsigned NOT NULL,
  `room_alias` varchar(255) DEFAULT NULL COMMENT '房间别名',
  `room_description` varchar(255) DEFAULT NULL COMMENT '房间描述',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_room_list
-- ----------------------------

-- ----------------------------
-- Table structure for `fu_user`
-- ----------------------------
DROP TABLE IF EXISTS `fu_user`;
CREATE TABLE `fu_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户表-用户id',
  `body_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证id',
  `user_location_id` int(11) DEFAULT '0' COMMENT '用户选择的位置号,与location_list的location_id 对应',
  `user_type` tinyint(1) DEFAULT '0' COMMENT '用户类型,0－随机用户1-生辰八字用户,2-高端定制用户',
  `user_selected` tinyint(1) DEFAULT '0' COMMENT '用户是否选号，0末选号，1-选择一次,2-选择2次',
  `user_selected_date` int(11) DEFAULT '0' COMMENT '用户选号时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fu_user
-- ----------------------------
INSERT INTO `fu_user` VALUES ('1', '22222', '2', '2', '2', '2');
