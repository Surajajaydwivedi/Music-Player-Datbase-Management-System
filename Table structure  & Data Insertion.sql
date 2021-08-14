START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Artist_Id` varchar(50) NOT NULL,
  `Artist_Name` varchar(50) NOT NULL,
  `About` varchar(500) NOT NULL,
  `DebutDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Artist_Id`, `Artist_Name`, `About`, `DebutDate`, `EndDate`) VALUES
('arijit', 'Arijit Singh', 'Arijit Singh (born 25 April 1987) is an Indian singer and music composer. He sings predominantly in Hindi and Bengali but has also performed in various other Indian languages. He is the recipient of a National Award and a record six Filmfare Awards. He is also known as \"King of playback singing\".', '2011-07-08', '0000-00-00'),
('BTS', 'bangtan boys', 'BTS (Korean: 방탄소년단; RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a seven-member South Korean boy band that began formation in 2010 and debuted in 2013 under Big Hit Entertainment. ... Originally a hip hop group, their musical style has evolved to include a wide range of genres.\r\nMembers: Jin; Suga; J-Hope; RM; Jimin; V; Ju...\r\nAlso known as: Bangtan Boys; Bangtan Sonye...\r\nGenres: K-pop; pop; hip hop; R&B; EDM', '2013-06-08', '0000-00-00'),
('eminen', 'Eminen', 'Eminem, byname of Marshall Bruce Mathers III, (born October 17, 1972, St. Joseph, Missouri, U.S.), American rapper, record producer, and actor who was known as one of the most-controversial and best-selling artists of the early 21st century. Mathers had a turbulent childhood, marked by poverty and allegations of abuse.', '1998-11-10', '0000-00-00'),
('raftaar', 'dilin nair', 'Dilin Nair, better known by his stage name Raftaar, is an Indian rapper, lyricist, dancer, TV personality and music composer. Raftaar started his career as a dancer. He began his career in rap in 2008 with Lil Golu and Young Amli, recording songs and uploading them on social sites.', '2016-12-09', '0000-00-00'),
('rehman', 'A.R.rehman', 'name is enough', '1999-08-25', '0000-00-00'),
('rockstar', 'post malone', 'At 16, using audio editor Audacity, Malone created his first mixtape, Young and After Them Riches. He showed it to some of his classmates at Grapevine High School. He was voted \"Most Likely to Become Famous\" by his classmates as a senior in high school.', '2015-03-15', '0000-00-00'),
('sanu', 'Kumar Sanu', 'One can’t just win the best male playback vocalist grant for consistent five years, except if his name is Kumar Sanu.\r\n\r\nHis ubiquity gets generally welcomed with the way that he was granted with Padma Shri by the Government of India and he has also bagged other awards like\r\n\r\nFilmfare award for best playback singer\r\nScreen award for best male playback', '2011-10-13', '0000-00-00'),
('taylor', 'taylor swift', 'Taylor Alison Swift is an American singer-songwriter. Her narrative lyricism, which often takes inspiration from her personal life and experiences, has received widespread critical praise and media coverage.', '2008-04-05', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `Pid` varchar(50) NOT NULL,
  `Sid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`Pid`, `Sid`) VALUES
('abhi01', '1002'),
('abhi01', '1010'),
('abhi01', '2001'),
('abhi01', '3001'),
('abhi01', '8001'),
('ananya01', '5001'),
('ananya01', '6001'),
('ananya01', '7001'),
('ani01', '3001'),
('ani01', '4001'),
('ankit01', '2001'),
('ankit01', '2002'),
('govi01', '2002'),
('govi01', '5001'),
('gutka01', '1002'),
('gutka01', '6001'),
('lamba01', '1010'),
('lamba01', '2002'),
('lamba01', '7001'),
('modi01', '6001'),
('parag01', '6001'),
('priti01', '4001'),
('rish01', '3001'),
('SAD01', '1002'),
('SAD01', '2001'),
('SAD01', '4001'),
('SAD01', '6001'),
('SAD01', '8001'),
('shubh01', '1002'),
('shubh01', '3001'),
('shubh01', '5001'),
('shubh01', '7001'),
('swat01', '1002'),
('vid01', '4001'),
('vid01', '7001'),
('vidit01', '4001'),
('vidit01', '7001');

-- --------------------------------------------------------

--
-- Table structure for table `credential`
--

CREATE TABLE `credential` (
  `ID` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credential`
--

INSERT INTO `credential` (`ID`, `Password`) VALUES
('19104017', 'vidhi@123'),
('19104028', 'abhishek@123'),
('19104030', 'shubham@123'),
('19104031', 'anirudh@123'),
('19104032', 'swati@123'),
('19104033', 'pritish@123'),
('19104034', 'mohit@123'),
('19104035', 'abhinav@123'),
('19104036', 'rishabh@123'),
('19104037', 'harsh@123'),
('19104038', 'govind@123'),
('19104039', 'ankit@123'),
('19104040', 'suraj@123'),
('19104042', 'vidit@123'),
('19104043', 'ananya@123'),
('19104048', 'utsav@123'),
('19104049', 'parag@123');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `User_ID` varchar(50) NOT NULL,
  `Artist_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`User_ID`, `Artist_ID`) VALUES
('19104017', 'arijit'),
('19104017', 'rehman'),
('19104028', 'arijit'),
('19104028', 'BTS'),
('19104028', 'eminen'),
('19104030', 'eminen'),
('19104030', 'rehman'),
('19104031', 'raftaar'),
('19104032', 'arijit'),
('19104032', 'rehman'),
('19104033', 'rockstar'),
('19104034', 'rehman'),
('19104034', 'taylor'),
('19104035', 'BTS'),
('19104035', 'taylor'),
('19104036', 'arijit'),
('19104036', 'eminen'),
('19104037', 'BTS'),
('19104037', 'eminen'),
('19104038', 'arijit'),
('19104038', 'taylor'),
('19104039', 'eminen'),
('19104040', 'arijit'),
('19104040', 'rehman'),
('19104042', 'arijit'),
('19104042', 'rehman'),
('19104043', 'BTS'),
('19104043', 'eminen');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `Id` varchar(50) NOT NULL,
  `Sid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`Id`, `Sid`) VALUES
('19104017', '1002'),
('19104017', '1010'),
('19104017', '2002'),
('19104017', '3001'),
('19104028', '1002'),
('19104028', '1010'),
('19104028', '2001'),
('19104028', '8001'),
('19104030', '1002'),
('19104030', '5001'),
('19104030', '7001'),
('19104030', '8001'),
('19104031', '5001'),
('19104031', '6001'),
('19104032', '4001'),
('19104033', '4001'),
('19104034', '2002'),
('19104035', '1010'),
('19104036', '1002'),
('19104037', '8001'),
('19104038', '7001'),
('19104039', '5001'),
('19104040', '1002'),
('19104040', '2002'),
('19104040', '5001'),
('19104042', '4001'),
('19104043', '2001'),
('19104048', '4001'),
('19104049', '1002'),
('19104049', '1010'),
('19104049', '3001'),
('19104049', '7001'),
('19104049', '8001');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `Id` varchar(50) NOT NULL,
  `Pid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`Id`, `Pid`) VALUES
('19104017', 'abhi01'),
('19104017', 'ananya01'),
('19104017', 'govi01'),
('19104017', 'modi01'),
('19104017', 'priti01'),
('19104017', 'SAD01'),
('19104017', 'vid01'),
('19104028', 'abhi01'),
('19104028', 'govi01'),
('19104028', 'modi01'),
('19104028', 'parag01'),
('19104028', 'priti01'),
('19104028', 'SAD01'),
('19104028', 'swat01'),
('19104028', 'vid01'),
('19104030', 'abhi01'),
('19104030', 'ankit01'),
('19104030', 'govi01'),
('19104030', 'gutka01'),
('19104030', 'parag01'),
('19104030', 'SAD01'),
('19104030', 'shubh01'),
('19104031', 'abhi01'),
('19104031', 'ani01'),
('19104031', 'ankit01'),
('19104031', 'gutka01'),
('19104031', 'modi01'),
('19104031', 'parag01'),
('19104031', 'priti01'),
('19104031', 'swat01'),
('19104031', 'vid01'),
('19104032', 'ani01'),
('19104032', 'gutka01'),
('19104032', 'priti01'),
('19104032', 'SAD01'),
('19104032', 'swat01'),
('19104033', 'ananya01'),
('19104033', 'ankit01'),
('19104033', 'priti01'),
('19104034', 'ankit01'),
('19104034', 'lamba01'),
('19104034', 'rish01'),
('19104034', 'SAD01'),
('19104035', 'gutka01'),
('19104035', 'modi01'),
('19104035', 'shubh01'),
('19104036', 'ani01'),
('19104036', 'ankit01'),
('19104036', 'rish01'),
('19104036', 'shubh01'),
('19104037', 'ankit01'),
('19104037', 'gutka01'),
('19104038', 'ani01'),
('19104038', 'govi01'),
('19104038', 'rish01'),
('19104038', 'shubh01'),
('19104039', 'ananya01'),
('19104039', 'ani01'),
('19104039', 'ankit01'),
('19104039', 'govi01'),
('19104039', 'gutka01'),
('19104039', 'rish01'),
('19104039', 'vidit01'),
('19104040', 'govi01'),
('19104040', 'rish01'),
('19104040', 'SAD01'),
('19104040', 'shubh01'),
('19104040', 'swat01'),
('19104040', 'vid01'),
('19104042', 'SAD01'),
('19104042', 'vidit01'),
('19104043', 'ananya01'),
('19104043', 'SAD01'),
('19104049', 'ananya01'),
('19104049', 'parag01'),
('19104049', 'SAD01'),
('19104049', 'swat01'),
('19104049', 'vidit01');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `Pid` varchar(50) NOT NULL,
  `PName` varchar(100) DEFAULT NULL,
  `Created_By` varchar(50) NOT NULL,
  `descr` varchar(500) DEFAULT NULL,
  `Creation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`Pid`, `PName`, `Created_By`, `descr`, `Creation_date`) VALUES
('abhi01', 'Abhishek', '19104028', 'hey Abhishek this side, I love the last episode of Doraemon.', '2021-07-06'),
('ananya01', 'ananya', '19104043', 'hey , i cook food', '2021-07-08'),
('ani01', 'Anirudh', 'rehman', 'I have back in EDD, and the subject has been removed from the sylabuss.', '2012-08-01'),
('ankit01', 'ankit', 'BTS', '12345', '2018-07-11'),
('govi01', 'govind', '19104038', 'i do trading.', '2018-11-08'),
('gutka01', 'harsh', 'BTS', 'i am harsh.', '2017-09-01'),
('lamba01', 'Mohit', '19104034', 'I don\'t attend classes, I just listen to songs the whole day', '2014-08-31'),
('modi01', 'abhinav ', 'rockstar', 'I am Modi .', '2015-07-15'),
('parag01', 'parag', 'rockstar', 'i do pushups.', '2021-09-08'),
('priti01', 'pritish', 'taylor', 'i am an introvert', '2013-09-10'),
('rish01', 'rishabh', '19104036', 'I am a photographer.', '2016-10-26'),
('SAD01', 'suraj', '19104040', 'hey i am suraj.', '2019-05-01'),
('shubh01', 'shubham', 'arijit', 'hey ,I am inserting you data;', '2011-07-01'),
('swat01', 'swati', '19104032', 'hey , i am swati kumari.', '2013-09-03'),
('vid01', 'Vidhi', '19104017', 'hey, Vidhi this side, I love post-Malone, do you??', '2017-07-01'),
('vidit01', 'vidit', 'BTS', 'HEY, i am vidit', '2021-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `Sid` varchar(50) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `Artist_id` varchar(50) NOT NULL,
  `Release_Date` date DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Lyrics` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`Sid`, `Sname`, `Artist_id`, `Release_Date`, `Genre`, `Lyrics`) VALUES
('1002', 'Aye Dil Bata', 'arijit', '2013-07-01', '', 'Armanon ke sab irade [areshan hain\r\nKyun bhala x (2)\r\n\r\nAye dil bata, jaane kyun is martaba\r\nToone mujhe yeh kya kah diya\r\nAye dil bata, aise kyun hairat bhara\r\nYeh pyar yoon toone de diya\r\n\r\nAye dil bata x (4)\r\n\r\nSamjhaya tujhe kitna phir bhi\r\nKiya toone bas apne man ki\r\nGaliyon mein jaake kyun baitha ishq ki\r\nKuchh nahin ab mere bas mein\r\nKuchh nahin yahan tere bas mein\r\nBadmashiyan hain yeh kis ki, Ishq ki\r\nBepata lapata ho chala\r\n\r\nAye dil bata, jaane kyun is martaba\r\nToone mujhe yeh kya kah diya\r\nAye dil bata, aise kyun hairat bhara\r\nYeh pyar yoon toone de diya\r\n\r\nJanta hoon tu sahi hai\r\nPhir bhi mera kyun nahin hai\r\nDil mein kiska yeh dakhal hai\r\nSab pareshan is pal hain\r\nMujhmein hoke bhi hai mujhse kyun door\r\n\r\nAye dil bata, jaane kyun is martaba\r\nToone mujhe yeh kya kah diya\r\nAye dil bata, aise kyun hairat bhara\r\nYeh pyar yoon toone de diya\r\n\r\nAye dil bata, aye dil bata\r\nAye dil bata haan\r\nYeh pyar yoon toone de diya'),
('1010', 'Agar Tum Saath Ho', 'arijit', '2015-07-01', 'romantic', 'Pal bhar thehar jaao\r\nDil ye sambhal jaaye\r\nKaise tumhe roka karu\r\nMeri taraf aata har gam phisal jaaye\r\nAakhon mein tumko bharu\r\nBin bole baaten tumse karu\r\nAgar tum saath ho\r\nAgar tum saath ho\r\n\r\nBehti rehti nahar, nadiya si\r\nTeri duniya mein\r\nMeri duniya hai teri chahton mein\r\nMain dhal jaati hu teri adaton mein\r\nAgar tum saath ho\r\n\r\nTeri nazro mein hain tere sapne\r\nTere sapno mein hain naraazi\r\nMujhe lagta hai ke baatein dil ki Hoti lafzon ki dhokhebaazi\r\nTum saath ho ya na ho kya fark hai\r\nBedard thi zindagi bedard hai\r\nAgar tum saath ho\r\nAgar tum saath ho\r\n\r\nPalkein jhapkte hi din ye nikal jaaye\r\nBaithi baithi bhagi phiru\r\nMeri taraf aata har gam phisal jaaye\r\nAakhon mein tumko bharu\r\nBin bole baaten tumse karu\r\nAgar tum saath ho\r\nAgar tum saath ho\r\n\r\nTeri nazro mein hain tere sapne\r\nTere sapno mein hain naraazi\r\nMujhe lagta hai ke baatein dil ki\r\nHoti lafzon ki dhokhebaazi\r\nTum saath ho ya na ho kya fark hai\r\nBedard thi zindagi bedard hai\r\nAgar tum saath ho\r\nAgar tum saath ho\r\n'),
('2001', 'too cool 4 skool', 'BTS', '2021-06-10', 'pop', 'e\'re now going to progress to some steps\r\nWhich are a bit more difficult\r\nReady, set, and begin\r\n\r\nBig Hit exclusive, exclusive\r\nDJ Friz\r\nWho\'s that?\r\nB-A-N-G-T-A-N\r\nBangtan sonyeondan\r\n\r\n(Do it)\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\nShip-dae iship-dae\r\nDaeshinhae swipge uri yaegilhae\r\nYou take that\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\nShip-dae iship-dae\r\nDaeshinhae swipge uri yaegilhae\r\nYou take that\r\n\r\n[Korean:]\r\n\r\nWe\'re now going to progress to some steps\r\nWhich are a bit more difficult\r\nReady, set, and begin\r\n\r\nBig Hit exclusive, exclusive\r\nDJ Friz\r\nWho\'s that?\r\nB-A-N-G-T-A-N\r\nBangtan 방탄소년단\r\n\r\n(Do it)\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\n10대 20대\r\n대신해 쉽게 우리 얘길해\r\nYou take that\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\n10대 20대\r\n대신해 쉽게 우리 얘길해\r\nYou take that\r\n\r\n[English translation:]\r\n\r\nWe\'re now going to progress to some steps\r\nWhich are a bit more difficult\r\nReady, set, and begin\r\n\r\nBig Hit exclusive, exclusive\r\nDJ Friz\r\nWho\'s that?\r\nB-A-N-G-T-A-N\r\nBulletproof Boy Scouts\r\n\r\n(Do it)\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\nTeenagers in their 10s and 20s\r\nLet\'s talk about it easily\r\nYou take that\r\n\r\n2 cool, 2 cool 4 school\r\n2 cool, 2 cool 4 school\r\nTeenagers in their 10s and 20s\r\nLet\'s talk about it easily\r\nYou take that'),
('2002', 'no more dreams', 'BTS', '2014-10-22', 'pop', '\"happiness\"\r\n\r\nHoney, when I\'m above the trees\r\nI see this for what it is\r\nBut now I\'m right down in it, all the years I\'ve given\r\nIs just shit we\'re dividin\' up\r\nShowed you all of my hiding spots\r\nI was dancing when the music stopped\r\nAnd in the disbelief, I can\'t face reinvention\r\nI haven\'t met the new me yet\r\n\r\nThere\'ll be happiness after you\r\nBut there was happiness because of you\r\nBoth of these things can be true\r\nThere is happiness\r\n\r\nPast the blood and bruise\r\nPast the curses and cries\r\nBeyond the terror in the nightfall\r\nHaunted by the look in my eyes\r\nThat would\'ve loved you for a lifetime\r\nLeave it all behind\r\nAnd there is happiness\r\n\r\nTell me, when did your winning smile\r\nBegin to look like a smirk?\r\nWhen did all our lessons start to look like weapons\r\nPointed at my deepest hurt?\r\nI hope she\'ll be your beautiful fool\r\nWho takes my spot next to you\r\nNo, I didn\'t mean that\r\nSorry, I can\'t see facts through all of my fury\r\nYou haven\'t met the new me yet\r\n\r\nThere\'ll be happiness after me\r\nBut there was happiness because of me\r\nBoth of these things, I believe\r\nThere is happiness\r\n\r\nIn our history, across our great divide\r\nThere is a glorious sunrise\r\nDappled with the flickers of light\r\nFrom the dress I wore at midnight, leave it all behind\r\nAnd there is happiness\r\n\r\nI can\'t make it go away by making you a villain\r\nI guess it\'s the price I paid for seven years in Heaven\r\nAnd I pulled your body into mine\r\nEvery goddamn night, now I get fake niceties\r\nNo one teaches you what to do\r\nWhen a good man hurts you\r\nAnd you know you hurt him, too\r\n\r\nHoney, when I\'m above the trees\r\nI see it for what it is\r\nBut now my eyes leak acid rain on the pillow where you used to lay your head\r\nAfter giving you the best I had\r\nTell me what to give after that\r\nAll you want from me now is the green light of forgiveness\r\nYou haven\'t met the new me yet\r\nAnd I think she\'ll give you that\r\n\r\nThere\'ll be happiness after you\r\nBut there was happiness because of you, too\r\nBoth of these things can be true\r\nThere is happiness\r\n\r\nIn our history, across our great divide\r\nThere is a glorious sunrise\r\nDappled with the flickers of light\r\nFrom the dress I wore at midnight, leave it all behind\r\nOh, leave it all behind\r\nLeave it all behind\r\nAnd there is happiness\r\n'),
('3001', 'lose yourself', 'eminen', '2011-09-30', 'rap', 'Lose Yourself\r\nEminem\r\nLook\r\nIf you had\r\nOne shot\r\nOr one opportunity\r\nTo seize everything you ever wanted\r\nIn one moment\r\nWould you capture it\r\nOr just let it slip?\r\nYo\r\nHis palms are sweaty, knees weak, arms are heavy\r\nThere\'s vomit on his sweater already, mom\'s spaghetti\r\nHe\'s nervous, but on the surface he looks calm and ready\r\nTo drop bombs, but he keeps on forgettin\'\r\nWhat he wrote down, the whole crowd goes so loud\r\nHe opens his mouth, but the words won\'t come out\r\nHe\'s chokin\', how, everybody\'s jokin\' now\r\nThe clocks run out, times up, over, blaow\r\nSnap back to reality, ope there goes gravity\r\nOpe, there goes Rabbit, he choked\r\nHe\'s so mad, but he won\'t give up that easy? No\r\nHe won\'t have it, he knows his whole back\'s to these ropes\r\nIt don\'t matter, he\'s dope, he knows that, but he\'s broke'),
('4001', 'Bandook Meri Laila', 'raftaar', '2019-05-21', 'Dance music', 'Haye Haye Haye\r\nTu Aise Aye Aye Aye\r\nMeri Aankhon Mein Explode Kardi Ae\r\n\r\nDhayein Dhayein Dhayein\r\nDil Ko Udaye Udaye Udaye\r\nMere Khwabon Ko Reload Kardi Ae\r\n\r\nOh Seene Me Tune\r\nBullet Utaari Toh\r\nUde Jugnu Haan Ude Jugnu\r\n\r\nLe Gayi Dil Ko\r\nKudi Tu Shikari\r\nBana Majnu Main Bana Majnu\r\n\r\nBandook Meri Laila\r\nBandook Meri Laila\r\n\r\nBan Meri Laila, Ban Ban Meri Laila -x3\r\nMain Hoon Nishana Tera\r\nBandook Meri Laila\r\n\r\nKudi Tu Lage Beretta Ki Beti\r\nTenu Vekhya Te Khich Gayi Peti\r\nTere Liye Kha Loon Seene Pe Goli\r\nFir Kyun Tu Mujhko Hi Goli Deti\r\nHattey Nazar Na Tere Figure Se\r\nJaye Ungli Seedhe Trigger Pe\r\nJo Nishana Taana\r\nJaana Teri Nazron Pe\r\nShooter Kehne Lage Sab Mujhe Ghar Pe\r\n\r\nBan Meri Laila O Ho\r\nBan Meri Laila O Ho\r\nBan Meri Laila O Ho\r\nBan Meri Laila O Ho\r\n\r\nBan Meri Laila Oh Laila\r\nBan Meri Laila Oh Laila\r\nBan Meri Laila Oh Laila\r\nBan Meri Laila Oh Laila\r\n\r\nAaye Haaye Haaye\r\nYe Goli Daayein Baayein Jaaye\r\nHar Disha Mein Visphot Kar Diye\r\n\r\nJaaye Jaaye Jaaye\r\nJiya Na Jaaye Jaaye Jaaye\r\nMeri Jaan Pe Yun Chot Kar Diye\r\n\r\nO Seene Mein Tune Bullet Utaari Toh\r\nUde Jugnu Haan Ude Jugnu\r\nLe Gayi Dil Ko Kudi Tu Shikari\r\nBana Majnu Main Bana Majnu\r\n\r\nBandook Meri Laila\r\nBandook Meri Laila\r\n\r\nBan Meri Lailla, Ban Ban Meri Lailla -x3\r\nMain Hoon Nishana..\r\n\r\nBandook Meri Laila'),
('5001', 'kun faya kun', 'rehman', '2017-07-27', 'soul music', 'Ya Nizamuddin Auliya\r\nYa Nizamuddin Sarkar\r\n\r\nKadam badha le, haddon ko mita le\r\nAaja khalipan mein pee ka ghar tera\r\nTere bin khali aaja khalipan mein\r\nTere bin khali aaja khalipan mein\r\n\r\nRangreza, Rangreza\r\nRangreza\r\nHo, Rangreza, Rangreza\r\n\r\nKun fayakun Kun fayakun fayakun\r\nFayakun fayakun fayakun\r\nKun fayakun Kun fayakun fayakun\r\nFayakun fayakun fayakun\r\n\r\nJab kahin pe kuch nahi, bhi nahi tha\r\nWahi tha, wahi tha, wahi tha, wahi tha\r\nJab kahin pe kuch nahi, bhi nahi tha\r\nWahi tha, wahi tha, wahi tha, wahi tha\r\n\r\nWo jo mujhmein samaaya, wo jo tujhmein samaaya\r\nMaula wahi-wahi maaya\r\nWo jo mujhmein samaaya, wo jo tujhmein samaaya\r\nMaula wahi-wahi maaya\r\nKun fayakun Kun fayakun\r\nSadq allahu ali ul azeem\r\n\r\nRangreza rang mera, tann mera mann\r\nLe-le rangaai chahe tann chahe mann\r\nRangreza rang mera, tann mera mann\r\nLe-le rangaai chahe tann chahe mann\r\n\r\nSajra savera mere tann barse\r\nKajra andhera teri jalti lau\r\nSajra savera mere tann barse\r\nKajra andhera teri jalti lau\r\nQatra mila jo tere darr barse\r\nO, Maula, Maula\r\n\r\nKun fayakun Kun fayakun\r\nKun fayakun Kun fayakun\r\nFayakun Kun fayakun fayakun\r\nFayakun fayakun fayakun\r\nKun fayakun Kun fayakun fayakun\r\nFayakun fayakun fayakun\r\n\r\nJab kahin pe kuch nahi, bhi nahi tha\r\nWahi tha, wahi tha, wahi tha, wahi tha\r\nJab kahin pe kuch nahi, bhi nahi tha\r\nWahi tha, wahi tha, wahi tha, wahi tha'),
('6001', 'rockstar', 'rockstar', '2016-01-01', NULL, 'rockstar\r\nPost Malone, 21 Savage\r\nAyy (ayy)\r\nI\'ve been fuckin\' hoes and poppin\' pillies\r\nMan, I feel just like a rockstar (star, ayy, ayy)\r\nAll my brothers got that gas\r\nAnd they always be smokin\' like a Rasta\r\nFuckin\' with me, call up on a Uzi\r\nAnd show up, man, them the shottas\r\nWhen my homies pull up on your block\r\nThey make that thing go grrra-ta-ta-ta (pow, pow, pow, ayy, ayy)\r\nSwitch my whip, came back in black\r\nI\'m startin\' sayin\', \"Rest in peace to Bon Scott\" (ayy)\r\nClose that door, we blowin\' smoke\r\nShe ask me light a fire like I\'m Morrison (ayy)\r\nAct a fool on stage\r\nProlly leave my fuckin\' show in a cop car (ayy)\r\nShit was legendary\r\nThrew a TV out the window of the Montage\r\nCocaine on the table, liquor pourin\', don\'t give a damn\r\nDude, your girlfriend is a groupie, she just tryna get in'),
('7001', 'pyaar ho ya car ho', 'sanu', '2021-05-19', 'funny', 'pyaar ho ya car ho insurance hai zarrori fir krle koi tera dil aur gaadi choori....'),
('8001', 'happiness', 'taylor', '2020-04-30', NULL, '\"happiness\"\r\n\r\nHoney, when I\'m above the trees\r\nI see this for what it is\r\nBut now I\'m right down in it, all the years I\'ve given\r\nIs just shit we\'re dividin\' up\r\nShowed you all of my hiding spots\r\nI was dancing when the music stopped\r\nAnd in the disbelief, I can\'t face reinvention\r\nI haven\'t met the new me yet\r\n\r\nThere\'ll be happiness after you\r\nBut there was happiness because of you\r\nBoth of these things can be true\r\nThere is happiness\r\n\r\nPast the blood and bruise\r\nPast the curses and cries\r\nBeyond the terror in the nightfall\r\nHaunted by the look in my eyes\r\nThat would\'ve loved you for a lifetime\r\nLeave it all behind\r\nAnd there is happiness\r\n\r\nTell me, when did your winning smile\r\nBegin to look like a smirk?\r\nWhen did all our lessons start to look like weapons\r\nPointed at my deepest hurt?\r\nI hope she\'ll be your beautiful fool\r\nWho takes my spot next to you\r\nNo, I didn\'t mean that\r\nSorry, I can\'t see facts through all of my fury\r\nYou haven\'t met the new me yet\r\n\r\nThere\'ll be happiness after me\r\nBut there was happiness because of me\r\nBoth of these things, I believe\r\nThere is happiness\r\n\r\nIn our history, across our great divide\r\nThere is a glorious sunrise\r\nDappled with the flickers of light\r\nFrom the dress I wore at midnight, leave it all behind\r\nAnd there is happiness\r\n\r\nI can\'t make it go away by making you a villain\r\nI guess it\'s the price I paid for seven years in Heaven\r\nAnd I pulled your body into mine\r\nEvery goddamn night, now I get fake niceties\r\nNo one teaches you what to do\r\nWhen a good man hurts you\r\nAnd you know you hurt him, too\r\n\r\nHoney, when I\'m above the trees\r\nI see it for what it is\r\nBut now my eyes leak acid rain on the pillow where you used to lay your head\r\nAfter giving you the best I had\r\nTell me what to give after that\r\nAll you want from me now is the green light of forgiveness\r\nYou haven\'t met the new me yet\r\nAnd I think she\'ll give you that\r\n\r\nThere\'ll be happiness after you\r\nBut there was happiness because of you, too\r\nBoth of these things can be true\r\nThere is happiness\r\n\r\nIn our history, across our great divide\r\nThere is a glorious sunrise\r\nDappled with the flickers of light\r\nFrom the dress I wore at midnight, leave it all behind\r\nOh, leave it all behind\r\nLeave it all behind\r\nAnd there is happiness\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Email` varchar(50) DEFAULT NULL,
  `ID` varchar(50) NOT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Email`, `ID`, `Mobile`, `Fname`, `Mname`, `Lname`) VALUES
(NULL, '', NULL, NULL, NULL, NULL),
('19104017@mail.jiit.ac.in', '19104017', 68673397, 'vidhi', 'campbell', 'gupta'),
('19104028@mail.jiit.ac.in', '19104028', 3211660, 'abhishek', 'NULL', 'Arora'),
('19104030@mail.jiit.ac.in', '19104030', 87030849, 'shubham', 'NULL', 'upadhyay'),
('19104031@mail.jiit.ac.in', '19104031', 29189989, 'Anirudh', 'Richardson', 'chahuhan'),
('19104032@mail.jiit.ac.in', '19104032', 52728371, 'swati', 'hunt', 'kumari'),
('19104033@mail.jiit.ac.in', '19104033', 44543529, 'pritish', 'swati', 'sharma'),
('19104034@mail.jiit.ac.in', '19104034', 65125550, 'mohit', 'absent', 'lamba'),
('19104035@mail.jiit.ac.in', '19104035', 6665550, 'abhinav', 'pm', 'modi'),
('19104036@mail.jiit.ac.in', '19104036', 26293891, 'rishabh', 'donesir', 'kaushik'),
('19104037@mail.jiit.ac.in', '19104037', 8113217, 'harsh', 'gutka', 'jain'),
('19104038@mail.jiit.ac.in', '19104038', 24593925, 'govind', 'stonks', 'yadav'),
('19104039@mail.jiit.ac.in', '19104039', 62555395, 'ankit', 'COA', 'sharma'),
('19104040@mail.jiit.ac.in', '19104040', 44563925, 'suraj', 'ajay', 'dwivedi'),
('19104042@mail.jiit.ac.in', '19104042', 49645692, 'vidit', 'bunk', 'bansal'),
('19104043@mail.jiit.ac.in', '19104043', 59259199, 'ananya', 'chef', 'gupta'),
('19104048@mail.jiit.ac.in', '19104048', 49640192, 'utsav', 'cr', 'agarwal'),
('19104049@mail.jiit.ac.in', '19104049', 5365405, 'parag', 'almost', 'chawla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist_Id`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`Pid`,`Sid`),
  ADD KEY `fkcos` (`Sid`);

--
-- Indexes for table `credential`
--
ALTER TABLE `credential`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`User_ID`,`Artist_ID`),
  ADD KEY `fkfa` (`Artist_ID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`Id`,`Sid`),
  ADD KEY `fkliks` (`Sid`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`Id`,`Pid`),
  ADD KEY `fklisp` (`Pid`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `fksa` (`Artist_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `fkcop` FOREIGN KEY (`Pid`) REFERENCES `playlist` (`Pid`),
  ADD CONSTRAINT `fkcos` FOREIGN KEY (`Sid`) REFERENCES `song` (`Sid`);

--
-- Constraints for table `credential`
--
ALTER TABLE `credential`
  ADD CONSTRAINT `fkcu` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `fkfa` FOREIGN KEY (`Artist_ID`) REFERENCES `artist` (`Artist_Id`),
  ADD CONSTRAINT `fkfu` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fkliks` FOREIGN KEY (`Sid`) REFERENCES `song` (`Sid`),
  ADD CONSTRAINT `fkliku` FOREIGN KEY (`Id`) REFERENCES `user` (`ID`);

--
-- Constraints for table `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `fklisp` FOREIGN KEY (`Pid`) REFERENCES `playlist` (`Pid`),
  ADD CONSTRAINT `fklisu` FOREIGN KEY (`Id`) REFERENCES `user` (`ID`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fksa` FOREIGN KEY (`Artist_id`) REFERENCES `artist` (`Artist_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
