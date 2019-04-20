-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2019 at 07:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

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
  `customer_password` varchar(250) NOT NULL,
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
(4, 'captains9977', 'ta2tkwra', '', '', 'captains9977@gmail.com', '', 0, '', ''),
(5, 'fjord', 'fkord', 'harito', 'des', 'fkord5678@hotmai.com', 'dasdasd', 800589358, '', ''),
(6, 'parknahee', 'nahee', 'chanwut', 'kaksud', 'noobshit@hotmail.com', '99/118,Ratchaphruek-Phram5 Rd,, Bang rak noi Sub-district,MuengNonthaburi district', 88888, '', ''),
(7, '0', 'waow', 'peter', 'parker', 'insane@windowslive.com', '99/118,Ratchaphruek-Phram5 Rd,, Bang rak noi Sub-district,MuengNonthaburi district', 911, '', ''),
(8, 'zepalz', 'zepalz', '', '', 'zepalz@hotmail.com', '', 0, '', ''),
(9, 'xD', 'rofl', '', '', 'lmao@gmail.com', '', 0, '', ''),
(10, 'gaben', 'gaben', '', '', 'gabenclap@gg.com', '', 0, '', ''),
(12, '', '', '', '', '', '', 0, '', ''),
(13, '', '', '', '', '', '', 0, '', ''),
(14, '', '', '', '', '', '', 0, '', ''),
(15, '', '', '', '', '', '', 0, '', ''),
(16, '', '', '', '', '', '', 0, '', ''),
(17, '', '', '', '', '', '', 0, '', ''),
(18, '123', '123', '', '', '123@gmail.com', '', 0, '', ''),
(19, '', '', '', '', '', '', 0, '', ''),
(20, '', '', '', '', '', '', 0, '', ''),
(21, '', '', '', '', '', '', 0, '', ''),
(22, '', '', '', '', '', '', 0, '', ''),
(23, '', '', '', '', '', '', 0, '', ''),
(24, '', '', '', '', '', '', 0, '', ''),
(25, '', '', '', '', '', '', 0, 'Visa', ''),
(26, '', '', '', '', '', '', 0, 'Visa', ''),
(27, '', '', '', '', '', '', 0, 'Visa', ''),
(28, '', '', '', '', '', '', 0, 'Paypal', ''),
(29, '', '', '', '', '', '', 0, 'Paypal', ''),
(30, '', '', '', '', '', '', 0, 'Paypal', ''),
(31, '', '', '', '', '', '', 0, 'Visa', ''),
(32, '', '', '', '', '', '', 0, 'Visa', ''),
(33, '', '', '', '', '', '', 0, 'Visa', ''),
(34, '', '', '', '', '', '', 0, 'Visa', ''),
(35, '', '', '', '', '', '', 0, 'Skrill', ''),
(36, '', '', '', '', '', '', 0, 'Skrill', ''),
(37, '', '', '', '', '', '', 0, 'Skrill', ''),
(38, '', '', '', '', '', '', 0, 'Paypal', ''),
(39, '', '', '', '', '', '', 0, 'Skrill', ''),
(40, '', '', '', '', '', '', 0, 'Skrill', ''),
(41, 'pipipi', 'yoon', '', '', 'yoon@hotmail.com', 'uyAS', 0, '', ''),
(42, '', '', '', '', '', '', 0, 'Skrill', ''),
(43, 'newnew', '1234', '', '', 'new@gmail.com', '', 0, '', '');

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(43, 5, 486.00, '2018-11-28 17:53:27', '2018-11-28 17:53:27', '1'),
(44, 5, 285.00, '2018-11-28 17:57:54', '2018-11-28 17:57:54', '1'),
(45, 5, 375.00, '2018-11-28 22:05:17', '2018-11-28 22:05:17', '1'),
(46, 5, 180.00, '2018-11-29 07:14:37', '2018-11-29 07:14:37', '1'),
(47, 5, 375.00, '2018-11-29 07:26:42', '2018-11-29 07:26:42', '1'),
(48, 5, 180.00, '2018-11-29 08:21:54', '2018-11-29 08:21:54', '1'),
(49, 5, 666.00, '2018-11-29 08:31:57', '2018-11-29 08:31:57', '1'),
(50, 18, 180.00, '2018-11-29 08:48:58', '2018-11-29 08:48:58', '1'),
(51, 18, 195.00, '2018-11-29 08:50:18', '2018-11-29 08:50:18', '1'),
(52, 18, 180.00, '2018-11-29 08:51:36', '2018-11-29 08:51:36', '1'),
(53, 5, 180.00, '2018-11-29 09:27:07', '2018-11-29 09:27:07', '1'),
(54, 5, 243.00, '2018-11-29 09:27:26', '2018-11-29 09:27:26', '1'),
(55, 41, 618.00, '2019-04-03 20:04:10', '2019-04-03 20:04:10', '1'),
(56, 41, 180.00, '2019-04-03 20:04:58', '2019-04-03 20:04:58', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `ISBN`, `quantity`) VALUES
(21, 43, 3, 2),
(22, 44, 1, 1),
(23, 45, 5, 1),
(24, 45, 4, 1),
(25, 46, 10, 1),
(26, 47, 5, 1),
(27, 47, 4, 1),
(28, 48, 4, 1),
(29, 49, 10, 1),
(30, 49, 3, 2),
(31, 50, 4, 1),
(32, 51, 5, 1),
(33, 52, 4, 1),
(34, 53, 4, 1),
(35, 54, 3, 1),
(36, 55, 4, 1),
(37, 55, 3, 1),
(38, 55, 5, 1),
(39, 56, 4, 1);

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
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_Fname`, `staff_Lname`, `staff_address`, `staff_username`, `staff_password`, `staff_email`, `staff_phone`) VALUES
(1, 'Harito', 'Kirito', '622 Old Fulton Drive \r\nEast Lansing, MI 48823', 'Haritodes', 'des', 'haritoclap@hotmail.com', '911191');

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
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
