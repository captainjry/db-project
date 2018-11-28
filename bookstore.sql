-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2018 at 01:46 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `author_email` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_email`) VALUES
(1, 'ธนชาติ ศิริภัทราชัย', 'thanachart@gmail.com'),
(2, 'โชติกา ปริณายก', 'chotika@gmail.com'),
(3, 'โตมร ศุขปรีชา', 'tomorn@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` int(11) NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `publisher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `book_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `author_name`, `publisher_name`, `book_info`, `title`, `year`, `price`, `img_url`) VALUES
(1, 'โตมร ศุขปรีชา\r\n\r\n', 'สำนักพิมพ์แซลมอน\r\n', 'สารคดีกึ่งนิยายของ ‘โตมร ศุขปรีชา’ ว่าด้วยการเดินทางเพื่อเข้าถึงจิตวิญญาณภายในและวิธีคิดของคนญี่ปุ่น ผ่านการเก็บข้อมูลจากคำบอกเล่าของบุคคล บันทึกประวัติศาสตร์ และศิลปะวัฒนธรรม\r\n', 'ย่องเบาเข้าญี่ปุ่น', 2008, 285, 'img/1.jpg'),
(2, 'ธนชาติ ศิริภัทราชัย\r\n', 'สำนักพิมพ์แซลมอน', '‘NEW YORK 1st TIME นิวยอร์กตอนแรกๆ...’ หนังสือเล่มแรกของ เบ๊น—ธนชาติ ศิริภัทราชัย ผู้ช่วยผู้กำกับภาพยนตร์เรื่อง ลุงบุญมีระลึกชาติ ที่จับเครื่องบินไปเรียนถ่ายภาพในนครนิวยอร์ก และแคปเจอร์เหตุการณ์ครั้งแรกในชีวิตมาร่วมแชร์ อย่างเหตุการณ์โดนปล้นครั้งแรก มีแฟนเป็นชาวต่างชาติครั้งแรก และความอดทนแปลกๆ กับครั้งแรกที่ต้องยืนต่อแถวนานกว่าแปดชั่วโมง\r\n\r\n', 'NEW YORK 1ST TIME นิวยอร์กตอนแรกๆ...\r\n', 2008, 243, 'img/2.png'),
(3, 'ธนชาติ ศิริภัทราชัย', 'สำนักพิมพ์แซลมอน', 'เมื่อนิวยอร์กร้อนเป็นไฟ ธนชาติ ศิริภัทราชัย จึงจับเครื่องบินมุ่งตรงสู่อลาสก้า ดินแดนที่ขึ้นชื่อว่าหนาวสุดขีด (แต่ดันไปตอนฤดูร้อน...) เพื่อไปพักชมวิวที่ไม่มีทางพบเห็นในเมืองหลวง ทั้งเดินเข้าป่าที่ทรหด ล่องเรือไปเพลินวาฬ พูดคุยกับ ‘กลุ่มคน’ ที่ต่างก็มีเหตุผลว่าทำไมอลาสก้าถึงน่าอยู่และทำไมเมืองนี้ถึงมา ‘ครั้งเดียว’ แล้วไม่เคยพอ', 'THE REAL ALASKA อลาสก้าล้านเปอร์เซ็นต์', 2008, 243, 'img/3.png'),
(4, 'ธนชาติ ศิริภัทราชัย', 'สำนักพิมพ์แซลมอน', 'รวมสารพัดเรื่องเล่า ‘ครั้งแรกในเมืองไทย’ ของ \'ลุงเนลสัน’ ผ่านบทสัมภาษณ์สุดเซอร์เรียลของ ‘ธนชาติ ศิริภัทราชัย\' นักเขียนหน้านิ่งที่จะมาระดมยิงคำถามแทนชาวไทยทุกคน', 'TALK WITH MISTER NELSON', 2015, 180, 'img/4.png'),
(5, 'โชติกา ปริณายก', 'สำนักพิมพ์แซลมอน', 'จากผู้คนที่พบเจอระหว่างเดินทาง สู่การเสริมแต่งโดยจินตนาการของ \'โชติกา ปริณายก\' ครีเอทีฟสาวผู้นำภาพถ่ายจากปารีสมาร้อยเรียงเป็นเรื่องราวของผู้คนที่ไม่มีอยู่จริง ทั้งตัวละครของหญิงสาวนักโจรกรรม, ชายหนุ่มเจ้าของร้านเคบับ, คู่รักแปลกหน้าที่ไม่อยากลงลึกในความสัมพันธ์, หญิงสาวปริศนาผู้ยืนอยู่ด้านหน้าของตึกแลนด์มาร์ก ไปจนถึงชายผู้ออกเดินทางจากดาวดวงนี้เพื่อไปพบปารีสบนดาวดวงอื่น', 'PARIS IN PAIRS ปารีสบนดาวดวงอื่น', 2018, 195, 'img/5.jpg'),
(6, 'กฤดิกร วงศ์สว่างพานิช', 'สำนักพิมพ์แซลมอน', 'เชื่อไหมว่าวัตถุที่คุณเห็นทุกวันนี้เป็นบ่อเกิดของ ‘ดรามา’ ชั้นดีในอดีต ครั้งหนึ่ง ‘เครื่องใช้ไฟฟ้า’ เคยทำให้คนลุกขึ้นมาทำลายกำแพงเบอร์ลิน ‘แท่นพิมพ์’ เคยทำให้ความศรัทธาที่มีต่อศาสนจักรสั่นไหว ‘เกลือ’ เคยเป็นทั้งตัวการและทำให้ศึกสงครามสงบไป ‘หนังโป๊’ เคยทำให้การกดทับในเรื่องเพศนั้นคลี่คลาย พบเรื่องราวดรามาในหน้าประวัติศาสตร์ ที่เกิดขึ้นและถูกจัดการผ่าน ‘วัตถุ’ โดย \'กฤดิกร วงศ์สว่างพานิช\' นักเขียนผู้คลุกคลีกับดรามา ผ่านการศึกษาด้านการก่อการร้ายและการเมืองระหว่างประเทศโดยตรง', 'ดรามา สุตรา', 2018, 295, 'img/6.jpg'),
(7, 'วันชัย ตันติวิทยาพิทักษ์', 'สำนักพิมพ์แซลมอน', 'ชุดบทความที่สั่งสมมาจากประสบการณ์ ทั้งจากการเดินทางและการสะสมข้อมูลของ ‘วันชัย ตันติวิทยาพิทักษ์’ อดีตบรรณาธิการบริหารนิตยสาร ‘สารคดี’ กับเรื่องราวที่เป็นดังกระบอกเสียงของสัตว์ป่าและธรรมชาติอย่างการจากไปของปลากระเบนราหู การเสี่ยงสูญพันธุ์ของนกแห่งสรวงสรรค์ ผลกระทบจากไส้กรอกที่ส่งผลถึงต้นไม้ ชีวิตของนักอนุรักษ์ป่า ไปจนถึงวีรกรรมของผู้ที่ต่อสู้เพื่อธรรมชาติด้วยชีวิต', 'WILD SIDE', 2017, 195, 'img/7.jpg'),
(8, 'คันฉัตร รังษีกาญจน์ส่อง', 'สำนักพิมพ์แซลมอน', 'บันทึกประสบการณ์เดินทางในเมืองสุดโรแมนติกอย่างปารีส โดยนักท่องเที่ยวฝีปากจัดอย่าง ‘คันฉัตร รังษีกาญจน์ส่อง’ ที่ไปแดนน้ำหอมเพื่อตามรอยหนัง ไปชมคอนเสิร์ตวงโปรด ท่องเที่ยวหอศิลป์ และการพบกับวีรกรรมสุดวายป่วงอย่างการโดนเด็กขโมยเฟรนช์ฟรายส์ เจอคนยืนฉี่ต่อหน้า รวมถึงวิธีการเอาตัวรอดจากโจรฝรั่งเศส', 'แอดเวนเจอร์ ออฟ เมอฤดี ฉบับ PARIS SYNDROME', 2017, 240, 'img/8.jpg'),
(9, 'ขวัญชาย ดำรงค์ขวัญ', 'สำนักพิมพ์แซลมอน', 'เคยมั้ยที่เวลาเดินผ่านใครแล้วเกิดสงสัย อยากรับรู้เรื่องราวของเขา “ทำไมมาอยู่ตรงนี้” “ทำไมต้องทำแบบนี้” ‘ขวัญชาย ดำรงค์ขวัญ’ ผู้อยู่เบื้องหลังเพจที่มียอดไลค์กว่าหนึ่งแสนคน ได้รวบรวมความหลากหลายของ ‘มนุษย์กรุงเทพฯ’ มาไว้เป็นหนังสือให้ผู้อ่านได้ใกล้ชิดกับเขาเหล่านี้ยิ่งขึ้น พร้อมกับทำความเข้าใจว่าทำไมความแตกต่างจึงเป็นสีสันที่ดึงดูดให้คนมารวมตัวกันในมหานครแห่งนี้', 'มนุษย์กรุงเทพฯ', 2017, 280, 'img/9.jpg'),
(10, 'อรุณวตรี รัตนธารี', 'สำนักพิมพ์แซลมอน', '12 ความเรียงกึ่งวรรณกรรม ว่าด้วยเรื่องราวความทรงจำของความสัมพันธ์รอบตัวซึ่งเกิดขึ้นภายในครัวของ ‘อรุณวตรี รัตนธารี’ ครัวที่เปรียบเสมือนจักรวาลบรรยากาศขมุกขมัวจากควันไฟทั้งยังอุดมด้วยเมนูรสชาติหลากหลายตามวันวัยที่เพิ่มขึ้น และเป็นพื้นที่ให้เธอ เขา รวมถึงใครอีกหลายคนหมุนวนมาเจอกัน เพื่อรับส่งรสชาติผ่านการปรุงและบทสนทนาระหว่างนั้นให้กันและกันจนกว่าม่านควันจะจาง', 'THE DINING UNIVERSE จักรวาลควันโขมง', 2017, 180, 'img/10.jpg'),
(11, 'ณัฐวุฒิ เผ่าทวี', 'สำนักพิมพ์แซลมอน', 'ร่วมค้นหาความหมายของ ‘ความสุข’ ผ่าน ‘พฤติกรรม’ ที่เกิดขึ้นในชีวิตประจำวันว่าการกระทำของเรานั้นส่งผลกับสภาพอารมณ์และชีวิตในวันข้างหน้าขนาดไหน ผ่านความเรียงอิงประสบการณ์และงานวิจัย ที่จะทำให้เรากลับมาสำรวจทุกเรื่องราวของตัวเองใหม่ โดย ‘ณัฐวุฒิ เผ่าทวี’ นักเศรษฐศาสตร์ความสุขและศาสตราจารย์ด้านพฤติกรรมศาสตร์', 'THE HAPPINESS MANUAL พฤติกรรมความสุข', 2018, 205, 'img/11.jpg'),
(12, 'ณัฐวุฒิ เผ่าทวี', 'สำนักพิมพ์แซลมอน', '32 บทความว่าด้วยพฤติกรรมที่เกี่ยวพันกับอารมณ์ของมนุษย์ ในมุมมองของ ‘ณัฐวุฒิ เผ่าทวี’ นักเศรษฐศาสตร์ความสุข อาจารย์ประจำมหาวิทยาลัย นักวิจัยด้านพฤติกรรม และคอลัมนิสต์ประจำสำนักข่าวออนไลน์ ไทยพับลิก้า ที่จะชวนมนุษย์อย่างเราๆ ตั้งคำถามถึงพฤติกรรมของตัวเองว่าถ้ามีโอกาสคุณจะนอกใจแฟนมั้ย? ถ้ารวยขึ้นจะมีความสุขจริงหรือเปล่า? คุณยอมรับความผิดหวังในชีวิตได้มากแค่ไหน? ถ้าก่อนเข้าโรงหนัง เพื่อนดันโทร.มาบอกว่าหนังเรื่องที่คุณถือตั๋วอยู่ในมือมันห่วย คุณจะตัดสินใจอย่างไร ระหว่างโยนตั๋วทิ้งกับเข้าไปดูจนจบ? พฤติกรรมทั้งหมดนี้เกี่ยวข้องกับความสุขยังไง และหลักเศรษฐศาสตร์สัมพันธ์กับชีวิตมากแค่ไหน มาร่วมสำรวจไปพร้อมๆ กัน', 'HOW HAPPINESS WORKS AND WHY WE BEHAVE THE WAY WE DO ความสุขทำงานยังไง', 2016, 195, 'img/12.jpg'),
(13, 'จักรพันธุ์ ขวัญมงคล', 'สำนักพิมพ์แซลมอน', 'เรื่องราวของ ‘ตกผลึก’ ชายชื่อพิลึกผู้ประกอบอาชีพเป็นตลก แต่ดวงชะตาของเขาช่างไม่ตลก เพราะนอกจากจะไม่ค่อยมีงานให้เล่น ยังต้องมาสูญเสียคนในครอบครัวไปอย่างกะทันหัน แต่แล้วทันใด ชีวิตก็เอาถาดมาฟาดหัว เมื่อความจริงเปิดเผยว่าเขาได้รับ ‘มรดก’ ก้อนหนึ่ง หากการจะได้มันมานั้น ตกผลึกต้องกลับไปเผชิญหน้ากับเรื่องที่ผ่านมาในอดีตแบบหัวเราะร่า น้ำตาริน', 'มรดกตกผลึก', 2018, 215, 'img/13.jpg'),
(14, 'สฤณี อาชวานันทกุล', 'สำนักพิมพ์แซลมอน', 'เชิญทำความรู้จักกับยุคสมัย วัฒนธรรม ความคิด ความเชื่อ ค่านิยมในหน้าประวัติศาสตร์ที่แล้วมา ผ่านงานนิทรรศการที่ไม่ต้องซื้อตั๋วเข้าชมก็เหมือนได้บินไปยังพิพิธภัณฑ์ทั่วโลก ทั้งค่านิยมความงามของสาวจีนในราชวงศ์ถังจากรูปปั้น ‘สาวงาม’ ที่พิพิธภัณฑ์เซี่ยงไฮ้ เรื่องเล่าการลบเลือนตัวตนเพื่อบิดเบือนประวัติศาสตร์ของฟาโรห์ธุสโมสที่ 3 ผู้ช่วงชิงผลงานของแม่เลี้ยงมาเป็นของตัวเองในภาพนูนต่ำของฟาโรห์หญิงที่ปกครองอียิปต์ยาวนานและเป็นหนึ่งในฟาโรห์ที่รุ่งเรืองที่สุดยุคหนึ่ง ไขรหัสลับที่อยู่ในภาพ ‘พระเจ้าสร้างอดัม’ ของมิเกลันเจโล ที่ภายหลังมีผู้คิดทฤษฎีและตีความส่วนต่างๆในภาพกันอย่างสนุกสนาน และแน่นอนว่าไม่อาจพิสูจน์ได้ว่าทฤษฎีไหนกันแน่ที่ถูกต้อง', 'โลกในนิทรรศการ', 2018, 485, 'img/14.jpg'),
(15, 'โตมร ศุขปรีชา', 'สำนักพิมพ์แซลมอน', 'รวมบทความเกี่ยวกับอำนาจที่ซุกซ่อนอยู่ในสิ่งต่างๆ รอบตัว ไม่ว่าจะเป็นของกินอย่าง ‘มะเขือเทศ’ ที่ถูกโยงเข้ากับอำนาจบางอย่างจนมีสถานะกลายเป็นของต้องห้าม, ‘อาหารไทย’ ที่อาจถูกกำหนดให้มีรสชาติเหมือนกัน, แม้กระทั่ง ‘รั้วลวดหนาม’ ที่เห็นกันบ่อยๆ ก็ไม่ได้มีไว้แค่บอกพื้นที่ หรือเทศกาลแห่งความสุขอย่าง ‘คริสต์มาส’ ก็มีฉากหลังเป็นการต่อสู้อันเข้มข้น', 'POWERISM', 2017, 250, 'img/15.jpg'),
(16, 'ทีปกร วุฒิพิทยามงคล', 'สำนักพิมพ์แซลมอน', 'จะเป็นอย่างไรหากชีวิตมนุษย์ต้องขึ้นอยู่กับระบบ A.I. จะเป็นอย่างไรถ้าวันหนึ่งเราสามารถอัพโหลดความทรงจำของตัวเองเข้าไปอยู่ในคอมพิวเตอร์ได้ เส้นทางของมนุษย์ที่เกี่ยวพันกับเทคโนโลยีจะมีหน้าตาแบบไหน แล้วอะไรจะเกิดขึ้นถ้ายุคของหุ่นยนต์มาถึง ร่วมตั้งข้อสังเกตและมองโลกที่เปลี่ยนไปผ่านสายตาของ ‘ทีปกร วุฒิพิทยามงคล’ นักเขียนผู้คลุกคลีกับโลกเทคโนโลยีทุกวี่วันในหนังสือรวมบทความคัดสรร ‘WHAT WILL MATTER หุ่นยนต์ | สมอง | คน’', 'WHAT WILL MATTER หุ่นยนต์ | สมอง | คน', 2017, 260, 'img/16.jpg'),
(17, 'จิรัฏฐ์ ประเสริฐทรัพย์', 'สำนักพิมพ์แซลมอน', 'รวมเรื่องสั้นคัดสรรว่าด้วยประวัติศาสตร์ร่วมสมัยและการตื่นรู้ อาทิ เรื่องของชายหนุ่มที่เพิ่งค้นพบว่าผู้นำสูงสุดในประเทศไม่ได้มีอายุร้อยห้าสิบปี, เรื่องของหญิงสาวที่เข้าใจมาตลอดว่าเธออาศัยอยู่บนชั้นสูงสุดของคอนโดมิเนียม แต่จู่ๆ กลับพบว่ามีผู้อยู่อาศัยปริศนาอยู่บนชั้นที่สูงขึ้นไปจากห้องของเธอ และตำนานพื้นบ้านเกี่ยวกับการสักการะพระเจ้าทัมใจ โดย \'จิรัฏฐ์ ประเสริฐทรัพย์\' นักเขียนผู้ประสบกับความเศร้า', 'ประวัติศาสตร์ที่เพิ่งเศร้า', 2017, 185, 'img/17.jpg'),
(18, 'TUNA Dunn', 'สำนักพิมพ์แซลมอน', '100 เรื่องราวสุข เศร้า เหงา ป่วงในช่วงมึนๆ งงๆ ของชีวิต โดย ‘TUNA DUNN’ ศิลปินผู้ตกอยู่ในห้วงเวลาดังกล่าว แต่กลับมองมันด้วยความขำขันและขำขื่น', 'QUARTER-LIFE CRISIS', 2017, 230, 'img/18.jpg'),
(19, 'สรณรัชฎ์ กาญจนะวณิชย์', 'สำนักพิมพ์แซลมอน', 'บทความคัดสรรเกี่ยวกับสภาพแวดล้อมและธรรมชาติในสังคมเมือง ผ่านมุมมองของ ‘สรณรัชฎ์ กาญจนะวณิชย์’ ประธานกรรมการมูลนิธิโลกสีเขียวและคนกรุงเทพฯ รุ่นสุดท้ายที่ได้ใกล้ชิดธรรมชาติ ผู้จะมาชี้ชวนให้เห็นถึงการหายไปของสัญลักษณ์ความอุดมสมบูรณ์อย่างไลเคน สัตว์ป่าที่เคยอาศัยอยู่ในแหล่งธรรมชาติใจกลางเมือง รวมถึงชวนออกแบบระบบคมนาคมและที่พักอาศัยให้เป็นเมืองในแบบที่เราอยากใช้ชีวิตอยู่', 'CITY SIGHT เมืองที่มองไม่เห็น', 2017, 185, 'img/19.jpg'),
(20, 'อาชญาสิทธิ์ ศรีสุวรรณ', 'สำนักพิมพ์แซลมอน', 'บทความที่จะพาคุณย้อนกลับไปยังหน้าประวัติศาสตร์ เพื่อสำรวจว่าท่ามกลางเหตุการณ์สำคัญของโลก มีคนไทยคนไหนไปเกี่ยวข้องบ้าง เช่น คนไทยเคยมีตั๋วเรือไททานิกไว้ในครอบครอง, คนไทยมีเอี่ยวกับเหตุการณ์ที่เรือญี่ปุ่นถูกเรือรบเยอรมนียิงตอร์ปีโดใส่ในช่วงสงครามโลกครั้งที่ 1 ได้อย่างไร แล้วจริงหรือที่นักปฏิวัติคนสำคัญของโลกอย่าง ฟิเดล คาสโตร เคยมีอาจารย์เป็นคนไทย!', 'THAIS IN WORLD HISTORY ผจญไทยในแดนเทศ', 2017, 265, 'img/20.jpg'),
(21, 'ศิลา บัวเพชร', 'สำนักพิมพ์แซลมอน', 'บันทึกประสบการณ์กึ่งเขียนกึ่งวาดการใช้ชีวิตใน ‘เซินเจิ้น’ เมืองที่คนไทยเชื่อกันว่าเป็นดินแดนแห่งของปลอมของ ‘ศิลา บัวเพชร’ สถาปนิกและนักวาดการ์ตูนผู้ที่พกความหวาดกลัวต่อยูเอสบีปลอม ไข่ไก่ปลอม หน่อไม้ปลอมไปเต็มกระเป๋า แต่พอข้ามน้ำข้ามทะเลไปถึงกลับพบความจริงที่ว่าสินค้าของจริงก็มีขาย ระบบขนส่งก็เป็นเลิศ อาหารก็กินได้เหมือนทั่วไป ผังเมืองก็ดูดี สถานที่ท่องเที่ยวก็เยอะแยะ แถมยังอยู่ใกล้ฮ่องกง สะดวกสบายถึงขั้นใช้ชีวิตอยู่ยาวๆ ได้ถึง 5 ปี', 'บันทึกลับเซินเจิ้น', 2017, 275, 'img/21.jpg'),
(22, 'ฆนาธร ขาวสนิท', 'สำนักพิมพ์แซลมอน', 'ในโลกที่ไม่อาจรักหรือเกลียดชังสิ่งหนึ่งสิ่งใดอย่างหมดจิตหมดใจ ในความทรงจำที่ไม่เคยหายไปต่อจูบแรกของชีวิต ชายคนหนึ่งออกเดินทางเพื่อตามหาความหมายของคำว่าบ้าน บนเส้นทางซึ่งจะเปิดเผยเรื่องราวของเขากับคนรักเก่าที่หายตัวไป ‘ขอสวรรค์จงมาถึง’ นวนิยายของ ‘ฆนาธร ขาวสนิท’ นักเขียนหนุ่มผู้หยิบจับความรวดร้าวและสับสนของชีวิตมาถ่ายทอดผ่านสำนวนอันลุ่มลึกและแสนคมคาย', 'ขอสวรรค์จงมาถึง AS IT IS IN HEAVEN', 2017, 210, 'img/22.jpg'),
(23, 'โสภณ ศุภมั่งมี\r\n', 'สำนักพิมพ์แซลมอน', 'บันทึกประสบการณ์การทำงานที่ ‘ไมโครซอฟต์’ หนึ่งในบริษัทซอฟต์แวร์ยักษ์ใหญ่ตลอด 5 ปีของ ‘โสภณ ศุภมั่งมี’ โปรแกรมเมอร์ชาวไทยผู้ล้มลุกคลุกคลานตามหาความฝัน จนได้ไปเป็นส่วนหนึ่งของวัฒนธรรมองค์กรใหญ่ ได้ร่วมงานกับคนหลายเชื้อชาติ ในสายงานที่เต็มไปด้วยโจทย์ที่ท้าทายและปัญหาที่ต้องคอยแก้ไข ไปจนถึงไลฟ์สไตล์ของเหล่าพนักงานสุดเนิร์ดที่หลายคนคาดไม่ถึง', 'THE NERD OF MICROSOFT', 2017, 280, 'img/23.jpg'),
(24, 'คันฉัตร รังษีกาญจน์ส่อง', 'สำนักพิมพ์แซลมอน', 'แอดเวนเจอร์ ออฟ เมอฤดี\' ฉบับ \'โตเกียว ดริฟต์\' หนังสือบันทึกทริปครั้งใหม่ของ คันฉัตร รังษีกาญจน์ส่อง merveillesxx ที่คราวนี้เบนเข็มไปประเทศญี่ปุ่น ถิ่นฐานแห่งวัฒนธรรมเจป๊อป ด้วยจุดมุ่งหมายเพื่อเสพดนตรีเจร็อก ศึกษามังงะ ระลึกถึงเจซีรีส์ และตามรอยหนังญี่ปุ่นในดวงใจถึงถิ่น แต่กลับพบเจอเรื่องราวสุดวายป่วง ทั้งพายุเข้า สถานที่หลายแห่งปิดปรับปรุง หาโลเคชั่นหนังไม่เจอ และสารพัดเรื่องดวงกุดของนักท่องเที่ยวผู้อับโชค', 'แอดเวนเจอร์ ออฟ เมอฤดี ฉบับโตเกียวดริฟท์', 2014, 220, 'img/24.png'),
(25, 'ณัฐพงศ์ ไชยวานิชย์ผล', 'สำนักพิมพ์แซลมอน', 'ความเรียงยกที่สองว่าด้วยเรื่องราวของคนญี่ปุ่นจาก ‘ณัฐพงศ์ ไชยวานิชย์ผล’ นักเขียนมากความรู้เกี่ยวกับดินแดนอาทิตย์อุทัย การันตีโดยรางวัลแฟนพันธุ์แท้ ที่คราวนี้จะนำชีวิตของแม่บ้าน เด็กญี่ปุ่นตั้งแต่เล็กจนโต นางแบบทั้งสายชุดว่ายน้ำและเอวี รวมไปถึงเรื่องราวของคนในวงการบันเทิง และคนในเครื่องแบบมาย่อยให้อ่านกันแบบพอดีคำใน ‘เอ๊ะ!! เจป๊อป A GUIDE TO JAPANESE POPULATION\'', '\r\nเอ๊ะ!! เจป๊อป A GUIDE TO JAPANESE POPULATION', 2014, 180, 'img/25.png'),
(26, 'วิชัย', 'สำนักพิมพ์แซลมอน', 'หาก ‘DREAM CRUSHER ภารกิจยุติฝัน’ ไม่เพียงพอที่จะทำให้คุณหยุดตามล่าหาความฝัน ‘วิชัย’ วิงวอนให้คุณคิดดูอีกทีกับ ‘DREAM ATTACK มหกรรม สกรัมฝัน’ ที่จะเผยให้รู้ซึ้งถึงความเศร้าของทนาย ความอึดอัดใจของนางแบบ ความระทมของ MC และความทุกข์ของคนรวยว่าสิ่งเหล่านี้มีหน้าตาเป็นยังไง', 'DREAM ATTACK มหกรรม สกรัมฝัน', 2014, 180, 'img/26.png'),
(27, 'พีรพิชญ์ ฉั่วสมบูรณ์', 'สำนักพิมพ์แซลมอน', 'บันทึกการเดินทาง 12 วันในโตเกียวของ 4 ชาวไทยผู้มีใจรักในแดนปลาดิบ และภารกิจตามกรี๊ด AKB48 วงไอดอลสุดโปรดถึงโรงละครในตำนานของ ‘พีรพิชญ์ ฉั่วสมบูรณ์’ แฟนคลับสุดเนิร์ดที่บ้าจี้ไปตามรอยโลเคชั่นถ่ายเอ็มวี ร้านคาเฟ่ที่เลื่องชื่อ และการเฝ้าหน้าจอรัวกดซื้อตั๋วคอนเสิร์ตเพื่อจะได้ดูการแสดงสดแบบเต็มๆ ตา!', '12—4—48', 2014, 290, 'img/27.png'),
(28, 'สฤณี อาชวานันทกุล x ทีปกร วุฒิพิทยามงคล', 'สำนักพิมพ์แซลมอน', '55 ตรรกะวิบัติที่เกิดจากการสังเกตพฤติกรรมคนไทยในโลกไซเบอร์ของ สฤณี อาชวานันทกุล นักเขียน-นักแปลผลงานชุกที่จับเอาข้ออ้างยอดฮิตอย่าง ‘ไม่ชอบอย่าอ่าน’ ‘ถากถางส่วนตัว’ ‘แปะรูปแล้วไป’ หรือ ‘ใครๆ ก็ทำ’ มาตีแผ่ ผสมไปกับภาพประกอบจำลองเหตุการณ์โดย ทีปกร วุฒิพิทยามงคล ที่จะทำให้เห็นว่าแค่เพียงสมมติ เรื่องราวก็วิบัติได้ขนาดไหน', 'TROLL WAY ทางสายเกรียน', 2014, 270, 'img/28.png'),
(29, 'ART JEENO', 'สำนักพิมพ์แซลมอน', 'สำหรับ ‘ART JEENO’ การเป็น ‘นักวาดการ์ตูน’ ไม่ใช่เรื่องง่ายอย่างที่คิด กว่าที่หนังสือจะออกมาเป็นเล่มต้องอดหลับอดนอนติดต่อกันมาแล้วกี่วัน ต้องโดนบรรณาธิการกดดันเท่าไร ต้องคิดเรื่องจนสมองแตกแค่ไหน และทำยังไงถึงได้มาอยู่ในสำนักพิมพ์แห่งนี้', 'OUT/LINE', 2014, 175, 'img/29.png'),
(30, 'TUNA Dunn', 'สำนักพิมพ์แซลมอน', '‘MISSED’ การ์ตูนขนาดยาวเรื่องแรกของ TUNA Dunn นักวาดลายเส้นมินิมอล ว่าด้วยเรื่องราวระหว่างตัดสินใจฆ่าตัวตายของ ‘ลีออน’ ชายหนุ่มที่ป่วยเป็นมะเร็งปอดและอยากบอกลา ‘จูดิธ’ หญิงสาวผู้ติดอยู่ในใจเขามาเสมอ', 'MISSED', 2014, 165, 'img/30.png'),
(31, 'IANNNNN', 'สำนักพิมพ์แซลมอน', 'ทำไมคนเราไม่มีสิทธิ์ขี้เกียจ? สิ้นเสียงคำสงสัย ‘ปรัชญา สิงห์โต\' (หรือ iannnnn เจ้าของเดียวกับ ‘คือปะป๊าครองพิภพ’ และอดีตเฟลาธิการแห่งเว็บ Fail) ก็ลาออกจากงาน (แต่เจ้านายไม่ให้ออก...) มาพบกับวิถีชีวิตที่เหมาะสม เส้นทางที่จะทำให้ไม่ต้องไปนั่งแกร่วเซ็งรถติดบนถนน ไม่ต้องดันทุรังแข่งขันกับคนอื่น และการพยายามอยู่รอดให้ได้กับการมีชีวิตที่อืดเหมือนตัวสลอธ (คือสโลว์ไลฟ์ยังเร็วกว่าอีกน่ะ)', 'SLOTH MACHINE', 2014, 180, 'img/31.png'),
(32, 'คันฉัตร รังษีกาญจน์ส่อง', 'สำนักพิมพ์แซลมอน', 'แอดเวนเจอร์ ออฟ เมอฤดี ฉบับ TAIPEI PANIC เพียงชายคนนี้ไปไทเป บันทึกการเดินทางสุดวายป่วงในไต้หวัน ดินแดนที่ขึ้นชื่อว่าไม่มีอะไร (อ้าว…) และเป็นลูกผสมของจีนกับญี่ปุ่น (เดี๋ยวนะ...) แต่ ‘คันฉัตร รังษีกาญจน์ส่อง’ จะมาทำลายความคิดข้างต้นและบอกว่าประเทศนี้มีดีกว่าที่คุณคิด ไม่เชื่อเหรอ ลองดูแผนการท่องเที่ยวของเขาสิ อืม…ก็มีคาเฟ่ของผู้กำกับอินดี้ มิวเซียมซุนยัตเซ็น ไปเยี่ยมหมู่บ้านแมว เสพงานจิมมี่ เหลียว และริมแม่น้ำที่มีพื้นที่ให้นั่งเล่น LINE Pop (เอ่อ…)', 'TAIPEI PANIC เพียงชายคนนี้ไปไทเป', 2014, 230, 'img/32.png'),
(33, 'Bunpei Yorifuji (เขียน) / ณัฐพงศ์ ไชยวานิชย์ผล (แปล)', 'สำนักพิมพ์แซลมอน', '\'CATALOGUE OF DEATH สูตรสุคติ\' ความตายเป็นสิ่งที่เราต้องเผชิญและเป็นสิ่งที่เราเลี่ยงพูดถึงมันมากที่สุด บุนเป โยริฟุจิ กราฟิกดีไซเนอร์และนักวาดภาพประกอบชาวญี่ปุ่นจึงนำมันมาตีความใหม่ ทำความเข้าใจตั้งแต่แรกเริ่มว่าทำไมคนเราต้องกลัวตาย ทำไมเราต้องสนใจความตายของคนอื่น ด้วยลายเส้นสบายตาพร้อมทั้งเนื้อหาย่อยง่ายที่จะทำให้เรามองความตายในมิติใหม่', 'สูตรสุคติ', 2014, 195, 'img/33.png'),
(34, 'โตมร ศุขปรีชา', 'สำนักพิมพ์แซลมอน', 'ความเรียงคัดสรรลำดับที่ 3 จาก ‘โตมร ศุขปรีชา’ นักเขียนนักคิดที่จับเรื่องราวในสังคมมามองมุมใหม่ พูดถึงตั้งแต่เรื่องเล็กน้อยในชีวิตประจำวัน ลากยาวไปถึงภาพรวมของความเป็นชาติ และการมอง ‘ข้าง’ ในอีกมิติหนึ่ง', 'เธอ เขา เรา ผม 3 HORSE RIDING IN THE MIDDLE EARTH', 2014, 180, 'img/34.png'),
(35, 'วิชัย x SAHRED TOY', 'สำนักพิมพ์แซลมอน', 'วิชัยและ SAHRED TOY จับมือกันแฉความฝันในวัยเด็กว่ามันใช่สิ่งหอมหวานอย่างที่เราคิดกันหรือเปล่า? สูบบุหรี่แล้วเท่จริงมั้ย ไว้ผมยาวแล้วหล่อขึ้นขนาดไหน เป็นผู้ใหญ่แล้วดียังไง และถ้าเป็นไปได้ยังอยากจะได้ อยากจะมี อยากจะเป็นสิ่งเหล่านี้จริงๆ หรือ', 'ชีวิต 18+ เกรียนเจเนอเรชั่น', 2014, 200, 'img/35.png'),
(36, 'SAHRED TOY', 'สำนักพิมพ์แซลมอน', 'ไดอารี่พาเที่ยวแบบมันสุดสุดกับการตะลุยไปทุกจุดทุกย่านของโตเกียวที่ไร้แผนและเป้าหมาย แต่อัดแน่นด้วยสิ่งที่น่าสนใจตลอดสองข้างทางที่ไม่ต้องสนใจก็ได้ เช่น ร้านขายของชำในย่านชินจุดกุ (ชินจูกุ!) เครปร้านดังที่ฮาราจุดกุ (ฮาราจูกุ!) ลุงเฉยรักชาติหน้าสถานีรถไฟชิบูย่า และเรื่องสุดฮาในร้านเซ็กซ์ช็อปที่อุเอะโนะ', 'TOKYO DIARY โตเกียว จุด จุด', 2014, 230, 'img/36.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(100) NOT NULL,
  `customer_username` varchar(255) NOT NULL,
  `customer_password` int(250) NOT NULL,
  `customer_fname` varchar(200) NOT NULL,
  `customer_lname` varchar(200) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_cardno` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_username`, `customer_password`, `customer_fname`, `customer_lname`, `customer_email`, `customer_address`, `customer_phone`, `customer_cardno`, `status`) VALUES
(1, 'parking246', 123456, 'John', 'Cena', '', 'Dcondo Rangsit', 90456, '352-789-4523', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` set('yes','no') NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_confirm` set('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_methid` int(11) NOT NULL,
  `payment_methname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_methid`, `payment_methname`) VALUES
(1, 'Cash'),
(2, 'Visa'),
(3, 'Mastercard'),
(4, 'Paypal'),
(5, 'Skrill');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(1, 'kuy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 191.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(2, 'waow', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 666.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) DEFAULT NULL,
  `publisher_email` varchar(255) DEFAULT NULL,
  `publisher_phone` varchar(255) DEFAULT NULL,
  `publisher_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `publisher_email`, `publisher_phone`, `publisher_url`) VALUES
(1, 'Salmonbooks', 'salmoon.books@gmail.com', '02-123-4567', 'http://salmonbooks.net/home');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_Fname` varchar(255) DEFAULT NULL,
  `staff_Lname` varchar(255) DEFAULT NULL,
  `staff_address` varchar(255) DEFAULT NULL,
  `staff_username` varchar(255) DEFAULT NULL,
  `staff_password` varchar(255) DEFAULT NULL,
  `staff_email` varchar(255) DEFAULT NULL,
  `staff_phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`,`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`,`customer_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_methid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ISBN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_methid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `codexworld`
--
CREATE DATABASE IF NOT EXISTS `codexworld` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codexworld`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(1, 'kuy', 'dfsgnsldkfnhls/dnfkg;/ndsf/ngsdfng./dsnmfg./sdmf.msdf.gms/dfmg./sdmf./smdfmqwert', 150.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(2, 'heer', 'dfsgnsldkfnhls/dnfkg;/ndsf/ngsdfng./dsnmfg./sdmf.msdf.gms/dfmg./sdmf./smdfmqwert', 200.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bookstore\",\"table\":\"book\"},{\"db\":\"bookstore\",\"table\":\"cart\"},{\"db\":\"bookstore\",\"table\":\"products\"},{\"db\":\"bookstore\",\"table\":\"product\"},{\"db\":\"codexworld\",\"table\":\"customers\"},{\"db\":\"codexworld\",\"table\":\"orders\"},{\"db\":\"codexworld\",\"table\":\"order_items\"},{\"db\":\"codexworld\",\"table\":\"products\"},{\"db\":\"bookstore\",\"table\":\"customers\"},{\"db\":\"bookstore\",\"table\":\"orders\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-11-22 12:45:14', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `staff`
--
CREATE DATABASE IF NOT EXISTS `staff` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `staff`;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `GENDER_ID` int(11) NOT NULL,
  `GENDER_NAME` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`GENDER_ID`, `GENDER_NAME`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `TITLE_ID` int(11) NOT NULL,
  `TITLE_NAME` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TITLE_ID`, `TITLE_NAME`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Ms.'),
(4, 'Dr.'),
(5, 'Prof.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `USER_TITLE` int(11) NOT NULL,
  `USER_FNAME` varchar(50) NOT NULL,
  `USER_LNAME` varchar(50) NOT NULL,
  `USER_GENDER` int(11) NOT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_NAME` varchar(25) NOT NULL,
  `USER_PASSWD` varchar(25) NOT NULL,
  `USER_GROUPID` int(11) NOT NULL,
  `DISABLE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `USER_TITLE`, `USER_FNAME`, `USER_LNAME`, `USER_GENDER`, `USER_EMAIL`, `USER_NAME`, `USER_PASSWD`, `USER_GROUPID`, `DISABLE`) VALUES
(1, 1, 'John', 'Doe', 1, 'jd@mail.com', 'john_doe', '1111', 1, 0),
(2, 2, 'Jane', 'Doe', 2, 'email', 'jane_doe', '2222', 2, 0),
(3, 3, 'Jane', 'Smith', 2, 'email', 'jane_smith', '3333', 3, 0),
(4, 1, 'John', 'Smith', 1, 'js@mail.com', 'john_smith', '4444', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE `usergroup` (
  `USERGROUP_ID` int(11) NOT NULL,
  `USERGROUP_CODE` varchar(50) DEFAULT NULL,
  `USERGROUP_NAME` varchar(50) DEFAULT NULL,
  `USERGROUP_REMARK` varchar(255) DEFAULT NULL,
  `USERGROUP_URL` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`USERGROUP_ID`, `USERGROUP_CODE`, `USERGROUP_NAME`, `USERGROUP_REMARK`, `USERGROUP_URL`) VALUES
(1, '1', 'Admin', 'Administrator', 'admin_view.php'),
(2, '2', 'Staff', 'Staff', 'staff_view.php'),
(3, '3', 'Member', ' Member', 'member_view.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`GENDER_ID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`TITLE_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`USERGROUP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `GENDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `TITLE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `USERGROUP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
