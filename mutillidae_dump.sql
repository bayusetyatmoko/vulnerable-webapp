-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: mutillidae
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `mysignature` text,
  `is_admin` varchar(5) DEFAULT NULL,
  `firstname` text,
  `lastname` text,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'admin','adminpass','g0t r00t?','TRUE','System','Administrator'),(2,'adrian','somepassword','Zombie Films Rock!','TRUE','Adrian','Crenshaw'),(3,'john','monkey','I like the smell of confunk','FALSE','John','Pentest'),(4,'jeremy','password','d1373 1337 speak','FALSE','Jeremy','Druin'),(5,'bryce','password','I Love SANS','FALSE','Bryce','Galbraith'),(6,'samurai','samurai','Carving fools','FALSE','Samurai','WTF'),(7,'jim','password','Rome is burning','FALSE','Jim','Rome'),(8,'bobby','password','Hank is my dad','FALSE','Bobby','Hill'),(9,'simba','password','I am a super-cat','FALSE','Simba','Lion'),(10,'dreveil','password','Preparation H','FALSE','Dr.','Evil'),(11,'scotty','password','Scotty do','FALSE','Scotty','Evil'),(12,'cal','password','C-A-T-S Cats Cats Cats','FALSE','John','Calipari'),(13,'john','password','Do the Duggie!','FALSE','John','Wall'),(14,'kevin','42','Doug Adams rocks','FALSE','Kevin','Johnson'),(15,'dave','set','Bet on S.E.T. FTW','FALSE','Dave','Kennedy'),(16,'patches','tortoise','meow','FALSE','Patches','Pester'),(17,'rocky','stripes','treats?','FALSE','Rocky','Paws'),(18,'tim','lanmaster53','Because reconnaissance is hard to spell','FALSE','Tim','Tomes'),(19,'ABaker','SoSecret','Muffin tops only','TRUE','Aaron','Baker'),(20,'PPan','NotTelling','Where is Tinker?','FALSE','Peter','Pan'),(21,'CHook','JollyRoger','Gator-hater','FALSE','Captain','Hook'),(22,'james','i<3devs','Occupation: Researcher','FALSE','James','Jardine'),(23,'ed','pentest','Commandline KungFu anyone?','FALSE','Ed','Skoudis');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balloon_tips`
--

DROP TABLE IF EXISTS `balloon_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balloon_tips` (
  `tip_key` varchar(64) NOT NULL,
  `hint_level` int(11) NOT NULL,
  `tip` text,
  PRIMARY KEY (`tip_key`,`hint_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balloon_tips`
--

LOCK TABLES `balloon_tips` WRITE;
/*!40000 ALTER TABLE `balloon_tips` DISABLE KEYS */;
INSERT INTO `balloon_tips` VALUES ('ArbitraryRedirectionPoint',0,'Arbitrary redirection is a type of insecure direct object reference'),('ArbitraryRedirectionPoint',1,'See if a URL can be injected in place of the intended URL'),('ArbitraryRedirectionPoint',2,'Try injecting a URL into the parameter which contains the page to which the site thinks the user should be redirected to. It may be neccesary to use a complete URL including the protocol.'),('BufferOverflowInjectionPoint',0,'Inputs are usually a good place to start testing for buffer overflows.'),('BufferOverflowInjectionPoint',1,'This input is vulnerable to overflowing a memory buffer. Given this is an interpreted web application, the buffer is just a variable rather than a stack- or heap- overflow.'),('BufferOverflowInjectionPoint',2,'To trigger a buffer overflow, cause the system to store a large number of characters in a string variable or inject a large number that overflows the data type assigned. PHP documentation states that 134,217,728 characters can be held in a string including the null terminator. String buffer overflows using str_repeat() are tricky because if the number of characters to repeat is too large, PHP sees the number as NaN and wont throw an overflow error.'),('CookieTamperingAffectedArea',0,'Cookies may store system state information'),('CookieTamperingAffectedArea',1,'Inspect the value of the cookies with a Firefox add-on like Cookie-Manager or a non-transparent proxy like Burp or Zap'),('CookieTamperingAffectedArea',2,'Change the value of the cookies to see what affect is produced on the site. Also watch how the values of the cookies change after using different site features.'),('CSSInjectionPoint',0,'User input is incorporated into the style sheet returned from the server'),('CSSInjectionPoint',1,'User input is incorporated into the style sheet returned from the server without being properly encoded. This allows an attacker to inject cross-site scripts or HTML into the input and break out of the style-sheet context. Arbitrary Javascript and HTML can be injected.'),('CSSInjectionPoint',2,'Locate the input parameter that is incorporated into the style sheet. Determine what chracters are needed to properly complete the style so it is sytactically correct. Inject this closing statement along with a Javascript or HTML to be executed.'),('DOMXSSExecutionPoint',0,'This location contains dynamic output modified by the DOM'),('DOMXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting when user input is incorporated into the DOM'),('DOMXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting because user-input is incorporated into the DOM without properly encoding the user input first. Determine which input field contributes output here and inject HTML or scripts'),('HTMLandXSSandSQLInjectionPoint',0,'Inputs are usually a good place to start testing for cross-site scripting, HTML injection and SQL injection'),('HTMLandXSSandSQLInjectionPoint',1,'This input is vulnerable to multiple types of injection including cross-site scripting, HTML injection and SQL injection'),('HTMLandXSSandSQLInjectionPoint',2,'To get started with cross-site scripting and HTML injection, inject a Javascript or HTML code then view-source on the resulting page to see if the script syntax is correct. For SQL injection, start by injecting a single-quote to produce an error.'),('HTMLandXSSInjectionPoint',0,'Inputs are usually a good place to start testing for cross-site scripting and HTML injection'),('HTMLandXSSInjectionPoint',1,'This input is vulnerable to multiple types of injection including cross-site scripting and HTML injection'),('HTMLandXSSInjectionPoint',2,'To get started with cross-site scripting and HTML injection, inject a Javascript or HTML code then view-source on the resulting page to see if the script syntax is correct.'),('HTMLEventReflectedXSSExecutionPoint',0,'This location contains dynamic output'),('HTMLEventReflectedXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting; in this case via HTML Event injection.'),('HTMLEventReflectedXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting because the input is not encoded prior to be used as a value in an HTML event. Determine which input field contributes output here and inject scripts.'),('JavascriptInjectionPoint',0,'This location does not use Javascript string encoding'),('JavascriptInjectionPoint',1,'This location is vulnerable to Javascript string injection. The first step is to determine which parameter is output here'),('JavascriptInjectionPoint',2,'Locate the input parameter that is output to this location and inject raw Javascript commands. Use the view-source to see if the syntax of the injection is correct'),('JSONInjectionPoint',0,'User input is incorporated into the JSON returned from the server'),('JSONInjectionPoint',1,'User input is incorporated into the JSON returned from the server without being properly encoded. This allows an attacker to inject JSON into the input and break out of the JSON context. Arbitrary Javascript can be injected.'),('JSONInjectionPoint',2,'Locate the input parameter that is incorporated into the JSON. Determine what chracters are needed to properly complete the JSON so it is sytactically correct. Inject this closing statement along with a Javascript to be executed.'),('LocalFileInclusionVulnerability',0,'Perhaps a file other than the one intended could be included in this page'),('LocalFileInclusionVulnerability',1,'This page is vulnerable a local file inclusion vulnerability because it does not strongly validate that only explicitly named-pages are allowed.'),('LocalFileInclusionVulnerability',2,'Identify the input parameter that accepts the filename to be included then change that parameter to a system file such as /etc/passwd or C:oot.ini'),('OSCommandInjectionPoint',0,'Inputs are usually a good place to start testing for command injection'),('OSCommandInjectionPoint',1,'This input is vulnerable to multiple types of injection'),('OSCommandInjectionPoint',2,'This input is vulnerable to command injection plus may provide an injection point for reflected cross-site scripting. Try stating with \"127.0.0.1 && dir\".'),('ParameterPollutionInjectionPoint',0,'User input is not evaluated for duplicate parameters'),('ParameterPollutionInjectionPoint',1,'If user input contains the same variable more than once, the system will only accept one of the values. This can be used to trick the system into accepting a correct value and a mallicious value but only counting the mallicious value.'),('ParameterPollutionInjectionPoint',2,'Send two copies of the same parameter. Note carefully if the system uses the first, second, or both values. Some systems will concatenate the values together. If the system uses the first value, inject the value you want the system to count first.'),('PathRelativeStylesheetInjectionArea',0,'This area is vulnerable to Path Relaive Stylesheet Injection'),('PathRelativeStylesheetInjectionArea',1,'Lack of output encoding controls often result in cross-site scripting; in this case via Path Relaive Stylesheet Injection.'),('PathRelativeStylesheetInjectionArea',2,'This output is vulnerable to path relative stylesheet injection because the input is not encoded prior to be used as a value in an HTML text element. Determine which input field contributes output here and inject CSS.'),('ReflectedXSSExecutionPoint',0,'This location contains dynamic output'),('ReflectedXSSExecutionPoint',1,'Lack of output encoding controls often result in cross-site scripting'),('ReflectedXSSExecutionPoint',2,'This output is vulnerable to cross-site scripting. Determine which input field contributes output here and inject scripts'),('RemoteFileInclusionVulnerability',0,'Perhaps a remote URI could be included in this page. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\"'),('RemoteFileInclusionVulnerability',1,'This page is vulnerable a remote file inclusion vulnerability because it does not strongly validate that only explicitly named-pages are allowed. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\".'),('RemoteFileInclusionVulnerability',2,'Identify the input parameter that accepts the filename to be included then change that parameter to a system file such as http://www.google.com. Note that on newer PHP servers the configuration parameters \"allow_url_fopen\" and \"allow_url_include\" must be set to \"On\".'),('SQLInjectionPoint',0,'SQL Injection may occur on any page interacting with a database'),('SQLInjectionPoint',1,'Try injecting single-quotes and other special control characters'),('SQLInjectionPoint',2,'Try injecting single-quotes and other special control characters to produce an error if possible. Note any queries in the error to assist in injecting a complete query. Try using SQLMAP to inject queries.'),('XSRFVulnerabilityArea',0,'HTML forms are vulnerable to cross-site request forgery by default although sensitive forms may be protected'),('XSRFVulnerabilityArea',1,'This form is vulnerable to cross-site request forgery. Knowing the form action and inputs is the first step.'),('XSRFVulnerabilityArea',2,'Use this form to commit cross-site request forgery. Capture a legitimate request in Burp/Zap then create a cross-site script that sends the equivilent request when a user executes the cross-site script.');
/*!40000 ALTER TABLE `balloon_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_table`
--

DROP TABLE IF EXISTS `blogs_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_table` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `blogger_name` text,
  `comment` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_table`
--

LOCK TABLES `blogs_table` WRITE;
/*!40000 ALTER TABLE `blogs_table` DISABLE KEYS */;
INSERT INTO `blogs_table` VALUES (1,'adrian','Well, I\'ve been working on this for a bit. Welcome to my crappy blog software. :)','2009-03-01 22:26:12'),(2,'adrian','Looks like I got a lot more work to do. Fun, Fun, Fun!!!','2009-03-01 22:26:54'),(3,'anonymous','An anonymous blog? Huh? ','2009-03-01 22:27:11'),(4,'ed','I love me some Netcat!!!','2009-03-01 22:27:48'),(5,'john','Listen to Pauldotcom!','2009-03-01 22:29:04'),(6,'jeremy','Mutillidae is fun','2009-03-01 22:29:49'),(7,'john','Chocolate is GOOD!!!','2009-03-01 22:30:06'),(8,'admin','Fear me, for I am ROOT!','2009-03-01 22:31:13'),(9,'dave','Social Engineering is woot-tastic','2009-03-01 22:31:13'),(10,'kevin','Read more Douglas Adams','2009-03-01 22:31:13'),(11,'kevin','You should take SANS SEC542','2009-03-01 22:31:13'),(12,'asprox','Fear me, for I am asprox!','2009-03-01 22:31:13');
/*!40000 ALTER TABLE `blogs_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captured_data`
--

DROP TABLE IF EXISTS `captured_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captured_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` text,
  `hostname` text,
  `port` text,
  `user_agent_string` text,
  `referrer` text,
  `data` text,
  `capture_date` datetime DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captured_data`
--

LOCK TABLES `captured_data` WRITE;
/*!40000 ALTER TABLE `captured_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `captured_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_cards` (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `ccnumber` text,
  `ccv` text,
  `expiration` date DEFAULT NULL,
  PRIMARY KEY (`ccid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (1,'4444111122223333','745','2012-03-01'),(2,'7746536337776330','722','2015-04-01'),(3,'8242325748474749','461','2016-03-01'),(4,'7725653200487633','230','2017-06-01'),(5,'1234567812345678','627','2018-11-01');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_texts`
--

DROP TABLE IF EXISTS `help_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_texts` (
  `help_text_key` int(11) NOT NULL,
  `help_text` text,
  PRIMARY KEY (`help_text_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_texts`
--

LOCK TABLES `help_texts` WRITE;
/*!40000 ALTER TABLE `help_texts` DISABLE KEYS */;
INSERT INTO `help_texts` VALUES (0,'The index page has several global vulnerabilities.'),(1,'<span class=\"label\">SSLStrip</span> can be used to downgrade the connection when the Enforce SSL button is selected.'),(2,'Output fields such as the logged-in username, signature, and the footer are vulnerable to cross-site scripting.'),(3,'The hints cookie and other cookies can be hacked to login as another user and gain admin access.'),(4,'Cookies are missing the HTTPOnly attribute and may be accessed via cross-site scripting.'),(5,'Check HTML comments for database credentials.'),(6,'The \"page\" input parameter is vulnerable to insecure direct object reference. Fuzzing the parameter with administrative page names or system file paths is likely to yield results.'),(7,'This is the home page. Its primary purpose is to provide a starting page for the user and provide instructions. There are no known vulnerabilties on the home.php page.'),(8,'<span class=\"label\">Stored Cross-Site Scripting</span>: Attempt to inject cross-site scripts which will be stored in the backend database. When a user visits this page, the cross-site scripts will be fetched from the database, incorporated into the HTML generated, and sent to the user browser. The user browser will execute the Javascript. One option is to inject a cross-site script which sends the user to the capture-data.php page. You can view captured data on the captured-data.php page.'),(9,'<span class=\"label\">Directory Browsing</span>: The entire site is vulnerable to directory browsing. Looking at the robots.txt file can provide hints of interesting directories.'),(10,'<span class=\"label\">SQL Injection</span>: Attempt to inject special database characters or SQL timing attacks into page parameters. Database errors, page defacement, or noticable delays in response may indicate SQL injection flaws. This page is vulnerable.'),(11,'<span class=\"label\">Reflected Cross-Site Scripting:</span> This page is vulnerable to reflected cross-site scripting because the input is not encoded prior to be used as output. Determine which input field contributes output here and inject scripts. Try to redirect the user to the capture-data.php page which records cookies and other parameters. Visit the captured-data.php page to view captured data.'),(12,'<span class=\"label\">HTML Injection</span>: It is possible to inject your own HTML into this page because the input is not encoded prior to be used as output. Determine which input field contributes output here and inject HTML, CSS, and/or Javascripts in order to alter the client-side code of this page.'),(13,'<span class=\"label\">Javascript Validation Bypass</span>: Set the page to at least security level 1 to activate the javascript validation. Javascript validation can always be bypassed. Use a client-proxy like Burp-Suite to capture the request after it has left the browser. You can alter the request at that time. Also, Javascript can be disabled.'),(14,'<span class=\"label\">Cross Site Request Forgery</span>: This page is vulnerable to cross-site request forgery. There are a few steps to prepare a cross-site script to carry out the cross-site request forgery. Begin by filling out the form capturing the legitimate request. Inject a stored or reflected cross-site script anywhere on the site that will cause the browser to submit a copy of the legitimate request to the server. The server will process the request as if the user had filled out the form themselves.'),(15,'<span class=\"label\">System File Compromise</span>: It is possible to access system files by injecting input parameters with the pathnames of system files. The web application will fetch the system files instead of application files. The system files may be displayed and/or included in page output. Remember web applications are usually served from a system directory like /var/www or C:XAMPP. You may need to move up directories.'),(16,'<span class=\"label\">Insecure Direct Object Reference</span>: This page refers directly to resources by there real name or identifier making it possible to modify the name/ID to access other resources. Determine what resources are fetched. Provide the name or ID of a different resource. Resources can be filenames, record identifiers or others.'),(17,'<span class=\"label\">Server Side Include</span>: It is possible to make the application include application files in this page that are not intended. These files may even come from other sites.'),(18,'<span class=\"label\">Javascript Injection</span>: This page uses at least some of the input from the user to generate Javascript code. Usually in these cases the user input is used to create either a Javascript string or JSON object. Attempt to inject input which when incorporated with the page will form a syntactically correct Javascript statement. This will allow the injection to execute in the context of the browser.'),(19,'<span class=\"label\">Unvalidated Redirects and Forwards</span>: This page refers directly to dynamic URLs. If the user clicks on one of the link, the URL embedded is passed to a page which performs redirection. Try to over-write one of the intended pages beind passed to redirect the user to an arbitrary page. Give the poisoned link you create to a freind and see if they are redirected to a site of your choosing.'),(20,'<span class=\"label\">Operating System Command Injection</span>:  Command injection may occur when a web application passes user input in part or in whole to the operating system for execution. This page incorporates user input into a larger statement that is submitted to an operating system shell for execution. Try to determine the operating system in use. Enter characters that are reserved in shells; especially characters used to concatenate commands.'),(21,'<span class=\"label\">HTTP Parameter Pollution</span>: If multiple parameters with the same name are sent in a request, different application servers will react differently. PHP takes only one of the parameters but not neccesarily the parameters intended by the developer. By duplicating parameters with a value of your choosing and placing that parameters before and-or after the pages native parameters, you can influence the pages behavior. Note that ASP and Java application servers act different.'),(22,'<span class=\"label\">Click-jacking</span>: By placing an invisible overlay over top of a legitimate page, a malicious agent can hijack a users mouse clicks. To overlay the vulnerable page, the malicious agent will host the victim page inside a full page frame with no borders.'),(23,'<span class=\"label\">Document Object Model (DOM) Injection</span>: User input is incorporated into the document object model (DOM) of the page itself. This allows a user to inject HTML which will be incorporated into the source code of the page. The browser will execute this new code immediately.'),(24,'The UID cookie is used in an SQL query allowing SQL injection via a cookie value.'),(25,'<span class=\"label\">Authentication Bypass</span>: Authentication bypass can be achieved by either hacking the UID cookie or by SQL injecting the login.'),(26,'<span class=\"label\">Javascript Object Notation (JSON) Injection</span>: This page uses JSON to pass data which is later parsed and incorporated into the page. Because the output is not properly encoded, it is possible to carefully craft an injection which will add extra data into the JSON without breaking the JSON syntax. This extra data will be executed by the browser once the data is incorporated into the page.'),(27,'<span class=\"label\">Platform Path Disclosure</span>: Internal system paths are disclosed by this page under certain conditions.'),(28,'<span class=\"label\">Application Path Disclosure</span>: Application file paths are disclosed by this page under certain conditions.'),(29,'<span class=\"label\">Information Disclosure</span>: This page gives away internal system information, configuration information, paths, filenames, or other private information.'),(30,'<span class=\"label\">Method Tampering</span>: Because the page does not specify that the input parameters must be posted, it is possible to submit input parameters via a post or a get. This is a second order vulnerability allowing other vulnerabilities to be exploited easier.'),(31,'<span class=\"label\">Parameter Addition</span>: If extra parameters are submitted, the page will include them in output. A parameter can be added containing scripts which will be executed when loaded in the users browser.'),(32,'<span class=\"label\">Buffer Overflow</span>: If very long input is submitted, it is possible to exhaust the available space alloted on the heap.'),(33,'<span class=\"label\">Cascading Style Sheet Injection</span>: CSS styles can be used to interpret and execute Javascript. If styles can be injected, it is possible to inject a style with embedded Javascript which will be executed when loaded into the users browser.'),(34,'<span class=\"label\">Denial of Service</span>: This page allows denial of service. DOS can be performed by exhausting system resource(s) such as filling up disk drives or consuming available network bandwidth.'),(35,'<span class=\"label\">Phishing/Remote File Inclusion</span>: Due to defects allowing arbitrary web pages to be loaded into this pages frames, phishing and malware downloads are possible.'),(36,'<span class=\"label\">XML External Entity Injection Attack</span>: This page parses XML which the user can influence. If external entities embedded in the XML contain system file directives, it is possible to cause the page to load system files and include the contents in the XML output.'),(38,'<span class=\"label\">Cipher Block Chaining (CBC) Bit Flipping Attack</span>: This page is vulnerable to CBC bit flipping attack.'),(39,'<span class=\"label\">Local File Inclusion</span>: This page is vulnerable to local file inclusion if the user account under which PHP is running has access to files besides the intended web site files.'),(40,'<span class=\"label\">Remote File Inclusion</span>: This page is vulnerable to remote file inclusion if the PHP server configuration parameters \"allow_url_fopen\" and \"allow_url_include\" are set to \"On\" in php.ini.'),(41,'<span class=\"label\">Frame Source Injection</span>: By controlling the parameter which determines the src attribute of a pages frame, a carefully injected value can load any arbitrary page into the frame.'),(42,'<span class=\"label\">HTML 5 Web Storage Theft and Manipulation</span>: Using a cross site scripting attack, this page is vulnerable to having an attacker read, insert, update, or delete the values stored in the HTML5 web storage.'),(43,'<span class=\"label\">Robots.txt</span>: This file gives away sensitive file paths.'),(44,'<span class=\"label\">Secret Administrative Pages</span>: These pages are obscured by not being linked from other pages but they can be found using other vulnerabilities such as directory browsing, robots.txt, and local file inclusion.'),(45,'<span class=\"label\">User Agent Impersonation</span>: Based on the information sent by the browser, this page decides if the user is authorized.'),(46,'<span class=\"label\">Unrestricted File Upload</span>: This page allows dangerous files to be uploaded.'),(47,'<span class=\"label\">Username Enumeration</span>: This page allows usernames to be enumerated.'),(48,'<span class=\"label\">Application Log Injection</span>: Some inputs on this page are recorded into log records which can be read by visiting the Show Log page. Vulnerabilities on the Show Log page may allow injections in log records to execute.'),(49,'<span class=\"label\">XPath Injection</span>: Some inputs on this page are vulnerable to XPath injection.'),(50,'<span class=\"label\">Path Relative Stylesheet Injection</span>: Within this page is an iframe containing another page. The page being framed is vulnerable to path relative stylesheet injection.'),(51,'<span class=\"label\">Client-side Security Control Bypass</span>: This page attempts to implement security using client-side security controls. Any page using such controls, including this page, is vulnerable to security control bypass.'),(53,'<span class=\"label\">SQL Injection with SQLMap</span>: This page contains an sql injection vulnerability. The SQLMap tool may be able to automate testing and confirming this vulnerability.'),(54,'<span class=\"label\">Insufficent Transport Layer Protection</span>: This page is vulnerable to interception with wireshark or tcpdump.'),(63,'<span class=\"label\">LDAP Injection</span>: This page is vulnerable to LDAP injection.');
/*!40000 ALTER TABLE `help_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitlog`
--

DROP TABLE IF EXISTS `hitlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitlog` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` text,
  `ip` text,
  `browser` text,
  `referer` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitlog`
--

LOCK TABLES `hitlog` WRITE;
/*!40000 ALTER TABLE `hitlog` DISABLE KEYS */;
INSERT INTO `hitlog` VALUES (1,'172.17.0.1','172.17.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36','User visited: home.php','2020-04-07 14:01:11'),(2,'172.17.0.1','172.17.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36','User visited: ./documentation/vulnerabilities.php','2020-04-07 14:01:19');
/*!40000 ALTER TABLE `hitlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_1_help_include_files`
--

DROP TABLE IF EXISTS `level_1_help_include_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_1_help_include_files` (
  `level_1_help_include_file_key` int(11) NOT NULL,
  `level_1_help_include_file_description` text,
  `level_1_help_include_file` text,
  PRIMARY KEY (`level_1_help_include_file_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_1_help_include_files`
--

LOCK TABLES `level_1_help_include_files` WRITE;
/*!40000 ALTER TABLE `level_1_help_include_files` DISABLE KEYS */;
INSERT INTO `level_1_help_include_files` VALUES (1,'SSL Misconfiguration','ssl-misconfiguration-hint.inc'),(9,'Directory Browsing','directory-browsing-hint.inc'),(10,'SQL Injection (SQLi)','sql-injection-hint.inc'),(11,'Cross-site Scripting (XSS)','cross-site-scripting-hint.inc'),(12,'HTML Injection (HTMLi)','html-injection-hint.inc'),(13,'JavaScript Validation Bypass','javascript-validation-bypass-hint.inc'),(14,'Cross-site Request Forgery (CSRF)','cross-site-request-forgery-hint.inc'),(16,'Insecure Direct Object References (IDOR)','insecure-direct-object-reference-hint.inc'),(18,'JavaScript Injection','javascript-injection-hint.inc'),(19,'Unvalidated Redirects','unvalidated-redirects-and-forwards.inc'),(20,'Command Injection (CMDi)','command-injection-hint.inc'),(21,'Parameter Pollution','parameter-pollution-hint.inc'),(22,'Click-Jacking','click-jacking-hint.inc'),(23,'Document Object Model (DOM) Injection','dom-injection-hint.inc'),(25,'Authentication Bypass','authentication-bypass-hint.inc'),(26,'JavaScript Object Notation (JSON) Injection','json-injection-hint.inc'),(27,'Platform Path Disclosure','platform-path-disclosure-hint.inc'),(28,'Application Path Disclosure','application-path-disclosure-hint.inc'),(29,'Information Disclosure','information-disclosure-hint.inc'),(30,'Method Tampering','method-tampering-hint.inc'),(31,'Parameter Addition','parameter-addition-hint.inc'),(32,'Buffer Overflow','buffer-overflow-hint.inc'),(33,'Cascading Style Sheet (CSS) Injection','cascading-style-sheet-injection-hint.inc'),(36,'XML External Entity (XXE) Injection','xml-external-entity-attack-hint.inc'),(38,'CBC Bit-flipping Attack','cbc-bit-flipping-attack-hint.inc'),(39,'Local File Inclusion','local-file-inclusion-hint.inc'),(40,'Remote File Inclusion','remote-file-inclusion-hint.inc'),(41,'Frame Source Injection','frame-source-injection-hint.inc'),(42,'HTML-5 Web Storage Injection','html5-web-storage-hint.inc'),(43,'Robots.txt','robots-txt-hint.inc'),(44,'Secret Administrative Pages','secret-administrative-pages-hint.inc'),(45,'User-agent Impersonation','user-agent-impersonation-hint.inc'),(46,'Unrestricted File Upload','unrestricted-file-upload-hint.inc'),(48,'Application Log Injection','application-log-injection.inc'),(49,'XPath Injection','xpath-injection-hint.inc'),(50,'Path Relative Style-sheet Injection','path-relative-stylesheet-injection.inc'),(51,'Client-side Security Control Bypass','client-side-security-control-bypass.inc'),(53,'SQL Injection with SQLMap','sqlmap-hint.inc'),(54,'Insufficient Transport Layer Protection','insufficient-transport-layer-protection.inc'),(55,'Cross-site Scripting with BeEF Framework','beef-framework-hint.inc'),(56,'Using Burp-Suite','burp-suite-hint.inc'),(57,'Client-side Comments','client-side-comments.inc'),(58,'XML Entity Expansion','xml-entity-expansion-hint.inc'),(59,'Using OWASP Zed Attack Proxy (ZAP)','owasp-zap-hint.inc'),(60,'Set Up HTTPS Self-signed Certificate','setting-up-ssl-hint.inc'),(61,'Set Up Apache Virtual Hosts','setting-up-virtual-hosts-hint.inc'),(62,'Set Up Local Hostnames','setting-up-local-hostnames-hint.inc'),(63,'LDAP Injection','ldap-injection-hint.inc'),(64,'Setting up LDAP Server','ldap-setup-hint.inc'),(99,'Hints Not Found','hints-not-found.inc');
/*!40000 ALTER TABLE `level_1_help_include_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_help`
--

DROP TABLE IF EXISTS `page_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_help` (
  `page_name` varchar(64) NOT NULL,
  `help_text_key` int(11) NOT NULL,
  `order_preference` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_name`,`help_text_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_help`
--

LOCK TABLES `page_help` WRITE;
/*!40000 ALTER TABLE `page_help` DISABLE KEYS */;
INSERT INTO `page_help` VALUES ('add-to-your-blog.php',8,0),('add-to-your-blog.php',10,2),('add-to-your-blog.php',11,3),('add-to-your-blog.php',12,1),('add-to-your-blog.php',13,1),('add-to-your-blog.php',14,1),('add-to-your-blog.php',30,1),('add-to-your-blog.php',48,1),('add-to-your-blog.php',53,2),('add-to-your-blog.php',54,1),('add-to-your-blog.php',55,3),('add-to-your-blog.php',56,1),('add-to-your-blog.php',59,1),('arbitrary-file-inclusion.php',11,3),('arbitrary-file-inclusion.php',12,1),('arbitrary-file-inclusion.php',15,0),('arbitrary-file-inclusion.php',16,1),('arbitrary-file-inclusion.php',17,1),('arbitrary-file-inclusion.php',39,1),('arbitrary-file-inclusion.php',40,1),('arbitrary-file-inclusion.php',55,3),('arbitrary-file-inclusion.php',56,1),('arbitrary-file-inclusion.php',59,1),('back-button-discussion.php',11,3),('back-button-discussion.php',12,1),('back-button-discussion.php',18,1),('back-button-discussion.php',19,1),('back-button-discussion.php',55,3),('back-button-discussion.php',56,1),('back-button-discussion.php',59,1),('browser-info.php',11,3),('browser-info.php',12,1),('browser-info.php',18,1),('browser-info.php',55,3),('browser-info.php',56,1),('browser-info.php',59,1),('capture-data.php',1,1),('capture-data.php',10,2),('capture-data.php',11,3),('capture-data.php',12,1),('capture-data.php',48,1),('capture-data.php',53,2),('capture-data.php',55,3),('captured-data.php',11,3),('captured-data.php',12,1),('captured-data.php',55,3),('captured-data.php',56,1),('captured-data.php',59,1),('client-side-comments.php',56,1),('client-side-comments.php',57,1),('client-side-comments.php',59,1),('client-side-control-challenge.php',11,3),('client-side-control-challenge.php',12,1),('client-side-control-challenge.php',13,1),('client-side-control-challenge.php',30,1),('client-side-control-challenge.php',51,1),('client-side-control-challenge.php',55,3),('client-side-control-challenge.php',56,1),('client-side-control-challenge.php',59,1),('conference-room-lookup.php',29,1),('conference-room-lookup.php',30,1),('conference-room-lookup.php',56,1),('conference-room-lookup.php',59,1),('conference-room-lookup.php',63,1),('conference-room-lookup.php',64,1),('credits.php',19,1),('credits.php',56,1),('credits.php',59,1),('directory-browsing.php',9,1),('directory-browsing.php',56,1),('directory-browsing.php',59,1),('dns-lookup.php',11,3),('dns-lookup.php',12,1),('dns-lookup.php',13,1),('dns-lookup.php',20,1),('dns-lookup.php',30,1),('dns-lookup.php',48,1),('dns-lookup.php',55,3),('dns-lookup.php',56,1),('dns-lookup.php',59,1),('document-viewer.php',11,3),('document-viewer.php',12,1),('document-viewer.php',21,1),('document-viewer.php',30,1),('document-viewer.php',41,1),('document-viewer.php',48,1),('document-viewer.php',55,3),('document-viewer.php',56,1),('document-viewer.php',59,1),('echo.php',11,3),('echo.php',12,1),('echo.php',13,1),('echo.php',20,1),('echo.php',30,1),('echo.php',48,1),('echo.php',55,3),('echo.php',56,1),('echo.php',59,1),('edit-account-profile.php',10,2),('edit-account-profile.php',11,3),('edit-account-profile.php',12,1),('edit-account-profile.php',14,1),('edit-account-profile.php',16,3),('edit-account-profile.php',30,1),('edit-account-profile.php',48,1),('edit-account-profile.php',53,2),('edit-account-profile.php',54,1),('edit-account-profile.php',55,3),('edit-account-profile.php',56,1),('edit-account-profile.php',59,1),('framing.php',22,1),('framing.php',56,1),('framing.php',59,1),('home.php',0,1),('home.php',1,1),('home.php',2,1),('home.php',3,1),('home.php',4,1),('home.php',5,1),('home.php',6,1),('home.php',7,0),('home.php',9,1),('home.php',24,1),('home.php',39,1),('home.php',40,1),('home.php',56,1),('home.php',57,1),('home.php',59,1),('home.php',60,1),('home.php',61,1),('home.php',62,1),('html5-storage.php',12,1),('html5-storage.php',23,1),('html5-storage.php',42,1),('html5-storage.php',56,1),('html5-storage.php',59,1),('login.php',1,1),('login.php',10,2),('login.php',11,3),('login.php',12,1),('login.php',13,1),('login.php',25,1),('login.php',47,1),('login.php',48,1),('login.php',53,2),('login.php',54,1),('login.php',55,3),('login.php',56,1),('login.php',59,1),('login.php',60,1),('password-generator.php',1,1),('password-generator.php',11,3),('password-generator.php',12,1),('password-generator.php',18,1),('password-generator.php',55,3),('password-generator.php',56,1),('password-generator.php',59,1),('pen-test-tool-lookup-ajax.php',26,1),('pen-test-tool-lookup-ajax.php',56,1),('pen-test-tool-lookup-ajax.php',59,1),('pen-test-tool-lookup.php',26,1),('phpinfo.php',27,1),('phpinfo.php',28,1),('phpinfo.php',29,1),('phpinfo.php',56,1),('phpinfo.php',59,1),('register.php',10,2),('register.php',11,3),('register.php',12,1),('register.php',14,1),('register.php',30,1),('register.php',48,1),('register.php',53,2),('register.php',54,1),('register.php',55,3),('register.php',56,1),('register.php',59,1),('rene-magritte.php',22,1),('rene-magritte.php',56,1),('rene-magritte.php',59,1),('repeater.php',11,3),('repeater.php',12,1),('repeater.php',13,1),('repeater.php',31,1),('repeater.php',32,1),('repeater.php',55,3),('repeater.php',56,1),('repeater.php',59,1),('robots-txt.php',9,1),('robots-txt.php',29,1),('robots-txt.php',43,1),('robots-txt.php',56,1),('robots-txt.php',59,1),('secret-administrative-pages.php',6,1),('secret-administrative-pages.php',27,1),('secret-administrative-pages.php',28,1),('secret-administrative-pages.php',29,1),('secret-administrative-pages.php',44,1),('secret-administrative-pages.php',56,1),('secret-administrative-pages.php',59,1),('set-background-color.php',11,3),('set-background-color.php',12,1),('set-background-color.php',33,1),('set-background-color.php',55,3),('set-background-color.php',56,1),('set-background-color.php',59,1),('show-log.php',11,3),('show-log.php',12,1),('show-log.php',34,1),('show-log.php',55,3),('show-log.php',56,1),('show-log.php',59,1),('site-footer-xss-discussion.php',11,3),('site-footer-xss-discussion.php',12,1),('site-footer-xss-discussion.php',55,3),('site-footer-xss-discussion.php',56,1),('site-footer-xss-discussion.php',59,1),('source-viewer.php',11,3),('source-viewer.php',12,1),('source-viewer.php',15,1),('source-viewer.php',16,1),('source-viewer.php',39,1),('source-viewer.php',40,1),('source-viewer.php',48,1),('source-viewer.php',55,3),('source-viewer.php',56,1),('source-viewer.php',59,1),('sqlmap-targets.php',10,2),('sqlmap-targets.php',53,2),('sqlmap-targets.php',56,1),('sqlmap-targets.php',59,1),('ssl-misconfiguration.php',1,1),('ssl-misconfiguration.php',56,1),('ssl-misconfiguration.php',59,1),('ssl-misconfiguration.php',60,1),('styling-frame.php',11,3),('styling-frame.php',12,1),('styling-frame.php',16,1),('styling-frame.php',39,1),('styling-frame.php',40,1),('styling-frame.php',41,1),('styling-frame.php',48,1),('styling-frame.php',50,1),('styling-frame.php',55,3),('styling-frame.php',56,1),('styling-frame.php',59,1),('text-file-viewer.php',11,3),('text-file-viewer.php',12,1),('text-file-viewer.php',15,1),('text-file-viewer.php',16,1),('text-file-viewer.php',30,1),('text-file-viewer.php',35,1),('text-file-viewer.php',39,1),('text-file-viewer.php',40,1),('text-file-viewer.php',55,3),('text-file-viewer.php',56,1),('text-file-viewer.php',59,1),('upload-file.php',11,2),('upload-file.php',12,2),('upload-file.php',46,1),('upload-file.php',54,2),('upload-file.php',55,2),('upload-file.php',56,1),('upload-file.php',59,1),('user-agent-impersonation.php',11,3),('user-agent-impersonation.php',18,1),('user-agent-impersonation.php',45,1),('user-agent-impersonation.php',55,3),('user-agent-impersonation.php',56,1),('user-agent-impersonation.php',59,1),('user-info-xpath.php',1,1),('user-info-xpath.php',11,3),('user-info-xpath.php',12,1),('user-info-xpath.php',13,1),('user-info-xpath.php',30,1),('user-info-xpath.php',49,1),('user-info-xpath.php',54,1),('user-info-xpath.php',55,3),('user-info-xpath.php',56,1),('user-info-xpath.php',58,1),('user-info-xpath.php',59,1),('user-info.php',1,1),('user-info.php',10,2),('user-info.php',11,3),('user-info.php',12,1),('user-info.php',13,1),('user-info.php',30,1),('user-info.php',53,2),('user-info.php',54,1),('user-info.php',55,3),('user-info.php',56,1),('user-info.php',59,1),('user-poll.php',10,2),('user-poll.php',11,3),('user-poll.php',12,1),('user-poll.php',14,1),('user-poll.php',21,1),('user-poll.php',30,1),('user-poll.php',53,2),('user-poll.php',54,1),('user-poll.php',55,3),('user-poll.php',56,1),('user-poll.php',59,1),('view-someones-blog.php',11,3),('view-someones-blog.php',12,1),('view-someones-blog.php',14,1),('view-someones-blog.php',30,1),('view-someones-blog.php',54,1),('view-someones-blog.php',55,3),('view-someones-blog.php',56,1),('view-someones-blog.php',59,1),('view-user-privilege-level.php',11,3),('view-user-privilege-level.php',12,1),('view-user-privilege-level.php',25,1),('view-user-privilege-level.php',31,1),('view-user-privilege-level.php',38,1),('view-user-privilege-level.php',55,3),('view-user-privilege-level.php',56,1),('view-user-privilege-level.php',59,1),('xml-validator.php',11,3),('xml-validator.php',12,2),('xml-validator.php',15,2),('xml-validator.php',36,2),('xml-validator.php',55,3),('xml-validator.php',56,1),('xml-validator.php',58,1),('xml-validator.php',59,1);
/*!40000 ALTER TABLE `page_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_hints`
--

DROP TABLE IF EXISTS `page_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_hints` (
  `page_name` varchar(64) NOT NULL,
  `hint_key` int(11) NOT NULL,
  `hint` text,
  PRIMARY KEY (`page_name`,`hint_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_hints`
--

LOCK TABLES `page_hints` WRITE;
/*!40000 ALTER TABLE `page_hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pen_test_tools`
--

DROP TABLE IF EXISTS `pen_test_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pen_test_tools` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` text,
  `phase_to_use` text,
  `tool_type` text,
  `comment` text,
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pen_test_tools`
--

LOCK TABLES `pen_test_tools` WRITE;
/*!40000 ALTER TABLE `pen_test_tools` DISABLE KEYS */;
INSERT INTO `pen_test_tools` VALUES (1,'WebSecurify','Discovery','Scanner','Can capture screenshots automatically'),(2,'Grendel-Scan','Discovery','Scanner','Has interactive-mode. Lots plug-ins. Includes Nikto. May not spider JS menus well.'),(3,'Skipfish','Discovery','Scanner','Agressive. Fast. Uses wordlists to brute force directories.'),(4,'w3af','Discovery','Scanner','GUI simple to use. Can call sqlmap. Allows scan packages to be saved in profiles. Provides evasion, discovery, brute force, vulneraility assessment (audit), exploitation, pattern matching (grep).'),(5,'Burp-Suite','Discovery','Scanner','GUI simple to use. Provides highly configurable manual scan assistence with productivity enhancements.'),(6,'Netsparker Community Edition','Discovery','Scanner','Excellent spider abilities and reporting. GUI driven. Runs on Windows. Good at SQLi and XSS detection. From Mavituna Security. Professional version available for purchase.'),(7,'NeXpose','Discovery','Scanner','GUI driven. Runs on Windows. From Rapid7. Professional version available for purchase. Updates automatically. Requires large amounts of memory.'),(8,'Hailstorm','Discovery','Scanner','From Cenzic. Professional version requires dedicated staff, multiple dediciated servers, professional pen-tester to analyze results, and very large license fee. Extensive scanning ability. Very large vulnerability database. Highly configurable. Excellent reporting. Can scan entire networks of web applications. Extremely expensive. Requires large amounts of memory.'),(9,'Tamper Data','Discovery','Interception Proxy','Firefox add-on. Easy to use. Tampers with POST parameters and HTTP Headers. Does not tamper with URL query parameters. Requires manual browsing.'),(10,'DirBuster','Discovery','Fuzzer','OWASP tool. Fuzzes directory names to brute force directories.'),(11,'SQL Inject Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit XSS responses. Not compatible with Firefox 8.0.'),(12,'XSS Me','Discovery','Fuzzer','Firefox add-on. Attempts common strings which elicit responses from databases when SQL injection is present. Not compatible with Firefox 8.0.'),(13,'GreaseMonkey','Discovery','Browser Manipulation Tool','Firefox add-on. Allows the user to inject Javascripts and change page.'),(14,'NSLookup','Reconnaissance','DNS Server Query Tool','DNS query tool can query DNS name or reverse lookup on IP. Set debug for better output. Premiere tool on Windows but Linux perfers Dig. DNS traffic generally over UDP 53 unless response long then over TCP 53. Online version combined with anonymous proxy or TOR network may be prefered for stealth.'),(15,'Whois','Reconnaissance','Domain name lookup service','Whois is available in Linux naitvely and Windows as a Sysinternals download plus online. Whois can lookup the registrar of a domain and the IP block associated. An online version is http://network-tools.com/'),(16,'Dig','Reconnaissance','DNS Server Query Tool','The Domain Information Groper is prefered on Linux over NSLookup and provides more information natively. NSLookup must be in debug mode to give similar output. DIG can perform zone transfers if the DNS server allows transfers.'),(17,'Fierce Domain Scanner','Reconnaissance','DNS Server Query Tool','Powerful DNS scan tool. FDS is a Perl program which scans and reverse scans a domain plus scans IPs within the same block to look for neighoring machines. Available in the Samurai and Backtrack distributions plus http://ha.ckers.org/fierce/'),(18,'host','Reconnaissance','DNS Server Query Tool','A simple DNS lookup tool included with BIND. The tool is a friendly and capible command line tool with excellent documentation. Does not posess the automation of FDS.'),(19,'zaproxy','Reconnaissance','Interception Proxy','OWASP Zed Attack Proxy. An interception proxy that can also passively or actively scan applications as well as perform brute-forcing. Similar to Burp-Suite without the disadvantage of requiring a costly license.'),(20,'Google intitle','Discovery','Search Engine','intitle and site directives allow directory discovery. GHDB available to provide hints. See Hackers for Charity site.');
/*!40000 ALTER TABLE `pen_test_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_poll_results`
--

DROP TABLE IF EXISTS `user_poll_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_poll_results` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` text,
  `username` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_poll_results`
--

LOCK TABLES `user_poll_results` WRITE;
/*!40000 ALTER TABLE `user_poll_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_poll_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youTubeVideos`
--

DROP TABLE IF EXISTS `youTubeVideos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youTubeVideos` (
  `recordIndetifier` int(11) NOT NULL,
  `identificationToken` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`recordIndetifier`),
  UNIQUE KEY `identificationToken` (`identificationToken`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youTubeVideos`
--

LOCK TABLES `youTubeVideos` WRITE;
/*!40000 ALTER TABLE `youTubeVideos` DISABLE KEYS */;
INSERT INTO `youTubeVideos` VALUES (1,'YouTubeVideoIdentifier','Video Title'),(2,'1hF0Q6ihvjc','Installing OWASP Mutillidae II on Windows with XAMPP'),(3,'e0vpBKRZPGc','Installing Metasploitable-2 with Mutillidae on Virtual Box'),(4,'y-Cz3YRNc9U','How to install latest Mutillidae on Samurai WTF 2.0'),(5,'L4un5IppoY4','Introduction to Installing, Configuring, and Using Burp-Suite Proxy'),(6,'Fj0n17Jtnzw','How to install and configure Burp-Suite with Firefox'),(7,'kDo52RySRME','How to remove PHP errors after installing Mutillidae on Windows XAMPP'),(8,'5egBxI5Nnwo','Building a Virtual Lab to Practice Pen Testing'),(9,'obOLDQ-66oQ','How to Upgrade to the Latest Mutillidae on Samurai WTF 2.0'),(10,'P52EuH9MnTs','Spidering Web Applications with Burp-Suite'),(11,'q3iG7YMjcmE','Basics of Burp-Suite Targets Tab'),(12,'4Fz9mJeMNkI','Brute Force Page Names using Burp-Suite Intruder'),(13,'la5hTlSDKWg','Using Burp Intruder Sniper to Fuzz Parameters'),(14,'2Ehp33BLRmI','Comparing Burp-Suite Intruder Modes Sniper, Battering-ram, Pitchfork, Cluster-bomb'),(15,'KxqY_bp13gc','Introduction to Burp-Suite Comparer Tool'),(16,'YGRoFU0USRA','Using Burp-Suite Sequencer to Compare CSRF-token strengths'),(17,'qsE04AhlJrc','Basics of Web Request and Response Interception with Burp-Suite'),(18,'JPd2YtgJm8Q','ISSA 2013 Web Pen-testing Workshop - Part 1 - Intro to Mutillidae, Burp Suite & Injection'),(19,'Id_JC3hJzhk','Overview of Useful Pen Testing Add-ons for Firefox'),(20,'0_AN5FKsxaw','SQL Injection Explained - Part 8: Authentication Bypass'),(21,'dmYp2drEwwE','Automate SQL Injection using sqlmap'),(22,'3qOgt9IYgaI','SQL Injection Explained - Part 6: Timing Attacks'),(23,'UcbZUmuMy3U','SQL Injection Explained - Part 5: Union-Based SQL Injection'),(24,'WLmKK4LKdl0','SQL Injection Explained - Part 9: Inserting Data'),(25,'lcaqam-CyBE','SQL Injection Explained - Part 10: Web Shells'),(26,'EBk0-lJ2LrM','SQL Injection Explained - Part 7: Reading Files'),(27,'UH9gx4TyFlk','SQL Injection Explained - Part 11: Beware the Cross-Site Scripts'),(28,'RFEqlg21mkE','SQL Injection via AJAX request with JSON response'),(29,'vTB3Ze901pM','Basics of using sqlmap - ISSA KY Workshop - February 2013'),(30,'YCfInEFWbVA','Cross-Site Scripting Explained - Part 6: HTTPOnly Cookies'),(31,'sTTdFujJIAA','Cross-Site Scripting Explained - Part 11: Session Hijacking'),(32,'DXtLNGqfgMo','Cross-Site Scripting Explained - Part 9: CSS String Injection'),(33,'C_3I6IpbP78','Cross-Site Scripting Explained - Part 7: HTML Events'),(34,'XnOqNCd31B4','Cross-Site Scripting Explained - Part 5: Discovery'),(35,'dIGJ7kuj9Qo','Cross-site Scripting Explained - Part 13: Advanced Session Hijacking'),(37,'bj9IcclYG1k','Cross-Site Scripting Explained - Part 12: Practical Session Hijacking'),(38,'efHdM5grGkI','Introduction to HTML Injection (HTMLi) and Cross Site Scripting (XSS) Using Mutillidae'),(39,'zs30qw4CF2U','Cross-Site Scripting Explained - Part 8: Javascript String Injection'),(41,'uJoMHujjo_I','Cross-site Scripting Explained - Part 17: Inserting into HTML5 Web Storage'),(42,'N1-FXp7WrC4','Cross-site Scripting Explained - Part 18: Altering HTML5 Web Storage'),(43,'F4I9XfTAsJk','Cross-Site Scripting Explained - Part 20: Altering HTML5 Web Storage (Continued)'),(44,'luMyYV70bk4','Cross-site Scripting Explained - Part 19: Altering HTML5 Web Storage (Continued)'),(45,'MNvAib9KWzo','Web Pen Testing HTML 5 Web Storage using JSON Injection'),(46,'_tGcZKBXsFU','Stealing HTML5 Storage via JSON Injection'),(47,'3nAqRp9wt8g','Cross-Site Scripting Explained - Part 16: Reading HTML5 Web Storage'),(48,'1bXTq_qaa_U','Command Injection to Dump Files, Start Services, and Disable Firewall'),(49,'VWZYyH0VewQ','How to Locate the Easter egg File using Command Injection'),(50,'GRuRK-bejgM','Gaining Administrative Shell Access via Command Injection'),(51,'if17nCdQfMg','Using Command Injection to Gain Remote Desktop'),(52,'Tosp-JyWVS4','Introduction to HTTP Parameter Pollution'),(53,'SsUUyizhS60','Using Hydra to Brute Force Web Forms Based Authentication'),(55,'mEbmturLljU','Bypass Authentication via Authentication Token Manipulation'),(56,'frtkNB5G3vI','Brute Force Authentication using Burp-Intruder'),(57,'kNSAhKiXctA','Analyze Session Token Randomness using Burp-Suite Sequencer'),(58,'goCm1TCJ29g','Determine Server Banners using Netcat, Nikto, and w3af'),(59,'VQV-y_-AN80','Using Nmap to Fingerprint HTTP servers and Web Applications'),(60,'Ouqubk9H-KY','Finding Comments and File Metadata using Multiple Techniques'),(61,'t8w6Bd5zxbU','How to Exploit Local File Inclusion Vulnerability using Burp-Suite'),(62,'0fODWaeupV0','ISSA 2013 Web Pen-testing Workshop - Part 6 - Local/Remote File Inclusion'),(63,'e0M-qJYhCnk','Two Methods to Bypass JavaScript Validation'),(64,'9EaNr_8D65A','Cross-site Scripting Explained - Part 15: Javascript Validation Bypass'),(65,'mjeBPCGA7ko','How to Bypass Maxlength Restrictions on HTML Input Fields'),(66,'TNt2rJcxdyg','Introduction to CBC Bit Flipping Attack'),(67,'n_5NGkOnr7Q','Using Ettercap and SSLstrip to Capture Credentials'),(68,'DJaX4HN2gwQ','Introduction to XML External Entity Injection'),(69,'MxiVx7e_FbM','Determine HTTP Methods using Netcat'),(70,'Zl8U2YVp2lw','ISSA KY September 2013 Workshop - Introduction to XML External Entity Injection'),(71,'VAGG4uC1ogw','Introduction to User-agent Impersonation'),(72,'yh3S8YzrysE','Cross-Site Scripting Explained - Part 10: Path Relative Stylesheet Injection'),(73,'rQ6R4B9m-nk','Introduction to SQL Injection for Beginners'),(74,'dzj9Y2ahYx8','Introduction to SQL Injection with SQLMap'),(75,'PDpWDojO2yk','How to Show hints in security level 5'),(76,'pNedfUt0F8k','Introduction to Password Cracking with John the Ripper'),(77,'_70aJMjBT34','Introduction to Fuzzing Web Applications with Burp-Suite Intruder Tool'),(78,'SiK_vl6MhSo','How to Show Secret Page in Security Level 5'),(79,'xoDzSA9XZQk','Solving Password Challenge in Mutillidae with Command Injection'),(80,'gU_zv8HIG2g','Cross-Site Scripting Explained - Part 14: BeEF Framework'),(81,'OsSPwe-DUOU','How to Install Burp Suite on Linux'),(82,'4ye8n6MV1AY','How to Identify Web Technology with Wappalyzer'),(83,'EvMj3UzbN6o','How to Sweep a Web Site for HTML Comments'),(84,'BNFOHWLq340','How to Use dirb to Locate Hidden Directories on a Web Site'),(85,'MpuFW_mkJ3M','How to Install OWASP Zap on Linux'),(86,'4Kxg5rAHKjY','How to Install OWASP DirBuster on Linux'),(87,'TcOHYFizzoo','How to use OWASP DirBuster to Discover Hidden Directories on Web Sites'),(88,'Z9HkZJ-qju0','How to Install dirb on Linux'),(89,'U0uirYnvuHc','How to use WGET to clone a Web Site'),(90,'-yE5W-owKes','How to Scan Wordpress Sites for Vulnerabilities'),(91,'GPC3EwS7eBM','Cross-Site Scripting Explained - Part 10: Path Relative Stylesheet Injection'),(92,'fV0qsqcScI4','Introduction to XPath Injection'),(93,'CbdOz5KoQc0','Introduction to Unvalidated Redirects and Forwards'),(94,'uPHpt0esPgw','Introduction to Parameter Addition'),(95,'slbwCMHqCkc','How to Test for Weak SSL/TLS HTTPS ciphers'),(96,'ylg7cQH-aBo','Introduction to Method Tampering'),(97,'BKkvTOB_s1I','Introduction to Frame Source Injection'),(98,'IstpobN5azo','Introduction to Burp Suite Repeater Tool'),(99,'7vWTEbOfa-8','Introduction to Burp-Suite Intruders Character Frobber Payload'),(100,'t0uMReqs8Ng','Introduction to Burp-Suite Intruders Grep-Extract Feature'),(101,'fqKjLrdxrJ0','How to grab robots.txt file with CURL'),(102,'jHGNLvSpaLs','How to Install and Configure Foxy Proxy with Firefox'),(103,'pGCBivHNRn8','How to Spider a Web Site with OWASP ZAP'),(104,'ICPqz1Al9fk','How to Proxy Web Traffic through OWASP ZAP'),(105,'fa5LAfXmwoo','How to Intercept HTTP Requests with OWASP ZAP'),(106,'uSfGeyJKIVA','How to Fuzz Web Applications with OWASP ZAP (Part 1)'),(107,'tBXX_GAK7BU','How to Fuzz Web Applications with OWASP ZAP (Part 2)'),(108,'d6BlRIShKWU','How to list HTTP Methods with CURL'),(109,'4c6WaMF2joQ','How to list HTTP Methods with NMap'),(110,'rt8Mi2njee0','How to grab HTTP Server Banners with CURL'),(111,'9kNXvcoqerY','How to grab HTTP Server Banners with NMap'),(112,'9gsNMf-rf9U','How to Install Burp-Suite Community Edition on Linux'),(113,'zgrfx2xO0NU','OWASP ZAP: Using Forced Browse Feature (Find Hidden Directories)'),(114,'RVzs8aCnpHw','OWASP ZAP: Web App Vulnerability Assessment (Partial Site)'),(115,'KeSUiCr-WGo','OWASP ZAP: Automated Web App Vulnerability Assessment (Entire Site)'),(116,'K6qwqMt_Ldc','OWASP ZAP: Web App Vulnerability Assessment (Single Page)'),(117,'aTY4F9vzSpQ','How to Create Wordlists from Web Sites using CEWL'),(118,'b6IR2KgiOcw','OWASP ZAP Breakpoints: Part 1 - Trapping HTTP Requests'),(119,'H2tKdwMcKnk','OWASP ZAP Breakpoints: Part 2 - Trapping Specific HTTP Requests'),(120,'1CJB8BtW0pQ','Using OWASP ZAP with Burp-Suite'),(121,'dQ-_TO1zuvA','Command Injection Explained - Part 1: The Basics'),(122,'YYzWvXG7mjQ','Command Injection Explained - Part 2: Discovery'),(123,'L_qqJvabctY','Command Injection Explained - Part 3: Blind Injection'),(124,'55BiRJFB1-M','Command Injection Explained - Part 4: Chaining Commands'),(125,'9IMpzlRS1lU','Command Injection Explained - Part 5: Shell'),(126,'DmGVipmtTS8','Command Injection Explained - Part 6: Directory Traversal'),(127,'BR-VeQUoRCw','SQL Injection Explained - Part 1: The Basics'),(128,'OBa8-_I8sYg','SQL Injection Explained - Part 2: Tautologies'),(129,'Ejru0gQUbik','SQL Injection Explained - Part 3: Selective Injections'),(130,'BWP-H_xJmrM','SQL Injection Explained - Part 4: Discovery by Error'),(131,'3pXeSkM7m3M','Cross-Site Scripting Explained - Part 1: The Basics'),(132,'UFlF3F-XOG4','Cross-Site Scripting Explained - Part 2: DOM-Based XSS'),(133,'k91UNRymD0U','Cross-Site Scripting Explained - Part 3: Reflected XSS'),(134,'I0SusAlT1wY','Cross-Site Scripting Explained - Part 4: Stored XSS'),(135,'rR0SnARknlk','Cross-Site Request Forgery Explained - Part 1: Basic CSRF'),(136,'xBWqIh6wSz8','Cross-Site Request Forgery Explained - Part 2: Advanced CSRF'),(137,'Cazzls2sZVk','How to Create Ubuntu Virtual Machine (VirtualBox)'),(138,'8VCeFRwRmRU','How to Install VirtualBox Guest Additions (Linux)'),(139,'33CAgRKztqU','How to Create Ubuntu Virtual Machine (VMware)'),(140,'cZtkVOHRYts','LAMP Stack: Part 1 - How to Install Apache Web Server'),(141,'Z6IhGGxJidM','LAMP Stack: Part 2 - How to Install PHP'),(142,'PsfuaRySts4','LAMP Stack: Part 3 - How to Install MySQL Server'),(143,'yHCUd_5A8vo','How to Reset Root Password in MySQL/MariaDB'),(144,'TcUOaeL5SJU','How to Install PHP Curl Library'),(145,'e37RtQEnUhU','How to Install PHP XML Library'),(146,'ZNAmmiEQuCM','How to Install PHP mbstring Library'),(147,'0wIUci7s3gM','How to Display Errors in PHP Pages'),(148,'TcgeRab7ayM','How to Install Mutillidae on Linux'),(149,'sJd0ir9-jSc','How to Create Self-Signed Certificate in Apache'),(150,'79mOiU3GfnQ','How to Create Virtual Hosts in Apache'),(151,'iUbqJy_MOiE','Intro to LDAP Injection: Part 1 - Overview'),(152,'DkKUDbEt46A','Intro to LDAP Injection: Part 2 - Discovery'),(153,'Bdpc-LjmKLc','Intro to LDAP Injection: Part 3 - Practical Usage'),(154,'V1gdO3QT-XY','LFI - Part 1: Local File Inclusion Explained'),(155,'rZFnUdbA3-M','LFI - Part 2: Accessing Log Files'),(156,'o01c0WfcJyc','LFI - Part 3: Directory Traversal'),(157,'FGcmH9qLIpg','LFI - Part 4: Server-Side Injection and LFI'),(158,'HMkWjjKMc54','LFI - Part 5: Command Shell and LFI'),(159,'4W-sIZX_9xU','LFI - Part 6: Better Command Shell'),(160,'Nkpgm8-2zfY','LFI - Part 7: Alternative PHP Shell Functions'),(161,'b6ugC1TcW64','LFI - Part 8: Reverse Shell via LFI');
/*!40000 ALTER TABLE `youTubeVideos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-07 22:36:35
