-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` varchar(100) NOT NULL,
  `PostContent` text NOT NULL,
  `PostDescription` text NOT NULL,
  `PostImage` varchar(1000) NOT NULL,
  `PublishDate` varchar(30) NOT NULL,
  `PostAuthor` varchar(30) NOT NULL,
  `IsVisiable` tinyint(1) NOT NULL,
  `AllowComments` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (28,'SQL Injection','I have limited the access to blog posts in the \"SQL Injection\" page which can be found in the navbar under \"Demos.\"\r\nAs a regular user, you are limited to seeing only the blog posts written by you.\r\n\r\nHere, you can use the Search Box to execute the injection.\r\n\r\nHere\'s a useful example to type in the textfield: \'OR PostAuthor=\'admin\' -- \'\r\n\r\nThis will allow you to see all blog posts written by the \'admin\' user.\r\n\r\nHave fun! ','Description of SQL Injection and how to test it.','https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2016/09/1473921124injection-attack.jpg','today','asd',1,1),(29,'Cross Site Scripting',' Cross-Site Scripting (XSS) attacks are a type of injection, in which malicious scripts are injected into otherwise benign and trusted web sites. XSS attacks occur when an attacker uses a web application to send malicious code, generally in the form of a browser side script, to a different end user. Flaws that allow these attacks to succeed are quite widespread and occur anywhere a web application uses input from a user within the output it generates without validating or encoding it.\r\n\r\nAn attacker can use XSS to send a malicious script to an unsuspecting user. The end userâ??s browser has no way to know that the script should not be trusted, and will execute the script. Because it thinks the script came from a trusted source, the malicious script can access any cookies, session tokens, or other sensitive information retained by the browser and used with that site. These scripts can even rewrite the content of the HTML page. For more details on the different types of XSS flaws, see: Types of Cross-Site Scripting.\r\n\r\nHow to test it?\r\nIt\'s actually quite simple. Head over the Cross Site Scripting page (Demos->Cross Site Scripting) and create an article. In the title of the article paste the following script:\r\n<script>alert(\"You\'ve been hacked!);</script>\r\n\r\nFill out the rest of the fields and click \"Publish.\" From now on, any time a user enters the Blogs Page (only the vulnerable type), he or she will see the pop-up.\r\n\r\nHave fun!','Description of the technique and how to use it','https://cdn-images-1.medium.com/max/1000/1*tMkutRJYKsRjd7hAsKiuWQ.jpeg','today','admin',1,1),(34,'Session Management','A web session is a sequence of network HTTP request and response transactions associated to the same user. Modern and complex web applications require the retaining of information or status about each user for the duration of multiple requests. Therefore, sessions provide the ability to establish variables â?? such as access rights and localization settings â?? which will apply to each and every interaction a user has with the web application for the duration of the session.\r\n\r\nWeb applications can create sessions to keep track of anonymous users after the very first user request. An example would be maintaining the user language preference. Additionally, web applications will make use of sessions once the user has authenticated. This ensures the ability to identify the user on any subsequent requests as well as being able to apply security access controls, authorized access to the user private data, and to increase the usability of the application. Therefore, current web applications can provide session capabilities both pre and post authentication.\r\n\r\nOnce an authenticated session has been established, the session ID (or token) is temporarily equivalent to the strongest authentication method used by the application, such as username and password, passphrases, one-time passwords (OTP), client-based digital certificates, smartcards, or biometrics (such as fingerprint or eye retina). See the OWASP Authentication Cheat Sheet.\r\n\r\nHow to test it:\r\nThe way to test the session management is to verify it\'s expiration time. Here, you can wait a few minutes (10 min.) to see that you\'ll not be able to access the blog pages. After 10 minutes, I invalidate your session, and you have to login again.\r\n\r\nHave fun!','Blog posts talking about session management and how to test it','https://www.timeout.com/wp-content/uploads/2014/06/01_TIME-OUT-LOGO.jpg','today','admin',1,1),(35,'Behind the scene tour','Registration screen - users are required to enter a unique username, password, and email address. I implemented Google reCapchta.\r\nLogin screen - required users to log in before they get access to the blogging platform.\r\nBlog list screen - contains posts of all users, but only the owner can modify and remove the blog posts.\r\nNormal user - add blog item, delete own blog item\r\nAdministrator - delete any blog item.\r\nLogout - session invalidated, required new login to gain access.\r\n\r\nAuthentication: passwords are hashed and salted.\r\nAuthorization: normal user and administrator roles are implemented.\r\nAvailability: registration form requires CAPTCHA.\r\nSession management: use sessions to remember user.\r\n\r\nAll pages are free of injection attacks (except for attack demo pages)\r\nAll forms must use POST method and have CSRF prevention token (except for attack demo pages)\r\n\r\nDemonstrate SQL injection attack and how to prevent it.\r\nDemonstrate Cross site script injection attack and show possible defenses.\r\nDemonstrate web site defacing.\r\nDemonstrate how cookies work. Remember user by cookie - last visited page and time.\r\nDemonstrate session management using JSP / Servlet session mechanism\r\n\r\nSome ideas:\r\nBootstrap\r\nEncryption\r\nCapchta','How it all went down...','https://metvnetwork.s3.amazonaws.com/ye6nF-1459363943-776-blog-batman_BTS_main_1200.jpg','today','admin',1,1);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `LastLogin` varchar(30) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('admin','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8','Admin','juraszeklukasz@gmail.com','today',1),('asd','688787d8ff144c502c7f5cffaafe2cc588d86079f9de88304c26b0cb99ce91c6','User','asd','today',1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-18  5:04:34
