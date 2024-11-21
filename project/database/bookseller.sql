-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 05:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookseller`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin123'),
('admin', 'admin123'),
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) NOT NULL,
  `book_title` varchar(60) DEFAULT NULL,
  `book_author` varchar(60) DEFAULT NULL,
  `book_image` varchar(40) DEFAULT NULL,
  `book_descr` text DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', 200.00, 6),
('978-0-345-53483-5', 'The Hobbit (Movie Tie-in Edition): Or, There and Back Again ', 'J.R.R. Tolkien', '41XrcrSrU3L._SY346_.jpg', 'A great modern classic and the prelude to THE LORD OF THE RINGS. Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.', 330.00, 1),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', 240.00, 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', 120.00, 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', 920.00, 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', 550.00, 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', 260.00, 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 820.00, 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', 390.00, 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', 730.00, 4),
('978-8-172-34519-8', 'The Diary of a Young Girl', 'Anne Frank', '81lZ-9E4F-S.jpg', 'An Inspiration The Holocaust was one of the most horrendous and terrible eras in history. Innumerable books have been written describing the horrors of the Holocaust; but nothing beats the documentation of a family who had gone into hiding in the diary of a little girl, Anne Frank. Honest, lucid and empathetic; The Diary of A Young Girl deserves a read by everyone who has ever questioned mental strength of humans and also by those who cannot come to terms with the cruelties that could be inflicted by humans upon fellow humans. The first entry in the diary is on June 12, 1942 by Anne Frank, who had received it as a birthday present and the entries in the diary end abruptly on 1 August, 1944. The Underlying Themes Anne Frank and her family lived a peaceful life in Frankfurt, Germany but they had to escape to Amsterdam with fellow Jews and go into hiding, as the Nazis took over Europe. Anne writes in her diary the tribulations her family had to face living in hiding, because they knew if caught, they would have to suffer horribly. The sufferance of the Jews during the Holocaust is known to all; yet a thirteen year old feeling the impact of intolerance and racism makes readers realise how profound the impacts of the World War II was. What is most captivating is that amidst the terror and the fear, Anne manages to remain a cheerful girl full of life, who loved to talk and observe. Still a teenager and unaware of the horrors lurking behind their hiding space, Anne fails to realise the fear trapped within the hearts of elders initially and describes everyday events from the view of a teenager. As the story develops, Anne develops and realisation comes over her. The Nazis are getting more stringent and oppression rises; there are certain places in the book that leaves readers sad and distressed. One day, Anne\'s entire family including her, gets captured and the diary ends abruptly with the promise of a new day that never comes in the life of Anne Frank. Anne\'s father, Otto Frank, was the only one in the family who had managed to escape the concentration camps they were taken to and went on to make Anne\'s diary into a book. Conclusion The story of Anne Frank and the Frankfurt family is considered one of the most insightful accounts of the World War through the eyes of a young girl. The Diary of A Young Girl has been the subject of innumerable plays and movies. The original diary was published by Otto Frank in Dutch in 1947 and it was first translated to English in 1952, as The Diary of A Young Girl. Since then, it has been translated to more than sixty languages and people all over the world have read, loved and cried over the memoirs of Anne Frank. The book is available online for convenient shopping. You can bag this book from A today by following a few easy steps. A Children?s Bookshelf Selection: Each month our editor?s pick the best books for children and young adults by age to be a part of the children?s bookshelf. These are editorial recommendations made by our team of experts. Our monthly reading list includes a mix of bestsellers and top new releases and evergreen books that will help enhance a child\'s reading life.', 450.00, 7),
('978-9-353-33845-9', 'THE POWER OF YOUR SUBCONSCIOUS MIND', 'Joseph Murphy', '41DAtjoXtEL._SX322_BO1,204,203,200_.jpg', 'As a man thinketh in his subconscious mind, so is he. Have you wondered why someone is joyous while another is miserable; why someone is fearful and anxious and another is exuding confidence; why so many good and kind people suffer the tortures of life? Dr Joseph Murphy answers these questions in his bestselling self-help book The Power of Your Subconscious Mind. He reveals the innate powers of the subconscious mind by fusing his spiritual wisdom and scientific research. The Power of Your Subconscious Mind is one of the most inspirational guides of all time. It has helped millions across the globe achieve extraordinary goals and bring drastic improvements in their lives. And this, he says, can be done simply by changing the way one thinks. Packed with case studies of actual success stories, this book will help you unleash your mental powers, build confidence, create well-balanced friendships, improve your marriage, amass wealth, conquer phobias, dispel bad habits, and even heal minor health ailments.', 330.00, 7),
('978-9-390-44148-8', 'Never Ask For A Kiss', 'Vichare Abhishek Bhaskar', '41zmluxQc+L.jpg', 'What’s the big deal about just one kiss, Ruchi?\r\nWhat’s wrong if I want to take our relationship a step forward?\r\nRuchi loved Anuj with all her heart, but what happened that night at the New Year’s Eve party left her stunned. She just wanted to have a good time. Then how did it spiral so badly out of control?\r\nAnuj adored his best friend-turned-girlfriend Ruchi, and the past few months with her have been the best ever. All he wanted was a small kiss as the world welcomed the new year. Where did he go wrong?\r\nA chance meeting with Aarya, the dynamic woman who is a role model to many across the world, sets Anuj off on a journey of self-discovery and understanding relationships. Even as Aarya opens up about events that changed the course of her life, the hesitation and pain behind her brave smile is a mystery.\r\nWill Aarya’s truth change Anuj’s relationship with Ruchi?\r\nNEVER ASK FOR A KISS is a riveting read that dives deep into the understanding of relationships, and the importance of consent.\r\nThis is a poignant story that will make you laugh out loud and simultaneously think deeply about the small things that we take for granted in our lives and relationships.', 170.00, 8);

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`name`, `email`, `password`) VALUES
('akash', 'akash123@gmail.com', '123'),
('rahul', 'rahul345@gmail.com', 'abc'),
('rohan', 'rohan22@gmail.com', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(60) NOT NULL,
  `email` varchar(69) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(60) DEFAULT 'India'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `email`, `phone`, `address`, `city`, `zip_code`, `country`) VALUES
('Akash', 'akash123@gmail.com', '2147483647', '123 silicon city', 'gurugram', '111111', 'India'),
('namisha', 'fake@email.com', '8839860423', 'AZSWX', 'JBHD', '1222333', 'India'),
('kamalkant', 'kamalkantjain@yhaoo.com', '09981807654', 'bangali square', 'indore', '450001', 'India'),
('Rahul', 'rahul345@gmail.com', '9978326509', 'b39 ashiyana', 'dhar', '786447', 'India'),
('Rohan', 'rohan22@gmail.com', '8839850432', '234 dharnaka', 'indore', '234567', 'India'),
('satish sharma', 'satish@email.com', '0883986321', 'palasia', 'ujjain', '450022', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) NOT NULL,
  `ship_address` char(80) NOT NULL,
  `ship_city` char(30) NOT NULL,
  `ship_zip_code` char(10) NOT NULL,
  `ship_country` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, 60.00, '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, 60.00, '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, 20.00, '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley'),
(7, 'Rupa Publications India'),
(8, 'Srishti Publishers & Distributors');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
