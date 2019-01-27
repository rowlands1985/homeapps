-- MySQL dump 10.16  Distrib 10.1.23-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: DVDs
-- ------------------------------------------------------
-- Server version	10.1.23-MariaDB-9+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DVD`
--

DROP TABLE IF EXISTS `DVD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DVD` (
  `Title` varchar(100) NOT NULL,
  `Length` int(11) DEFAULT NULL,
  `GenreID` int(11) DEFAULT NULL,
  `DVDID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`DVDID`),
  KEY `FK_Genre` (`GenreID`),
  CONSTRAINT `FK_Genre` FOREIGN KEY (`GenreID`) REFERENCES `Genre` (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DVD`
--

LOCK TABLES `DVD` WRITE;
/*!40000 ALTER TABLE `DVD` DISABLE KEYS */;
INSERT INTO `DVD` VALUES ('How To Train Your Dragon',94,1,1),('How To Train Your Dragon 2',97,1,2),('Malificent',94,2,3),('Into The Woods',120,2,4),('Frozen',98,2,5),('Jane Eyre',115,3,6),('The Book Thief',125,4,7),('Pitch Black',104,5,8),('Brave',93,2,9),('Lord Of The Dance',NULL,NULL,10),('The Lone Ranger',143,2,11),('The Hunger Games',137,5,12),('Catching Fire',140,5,13),('Mockingjay Part 1',118,5,14),('Mockingjay Part 2',131,5,15),('Les Miserables',151,6,16),('Beastly',83,7,17),('Time Runners',92,5,18),('Extraction',85,5,19),('Elysium',105,5,20),('Pacific Rim',126,5,21),('The Heat',112,8,22),('Harry Potter And The Philosipher\'s Stone',147,7,23),('Harry Potter And The Chamber Of Secrets',154,7,24),('Harry Potter And The Prisoner Of Azkaban',136,7,25),('Harry Potter And The Goblet Of Fire',151,7,26),('Harry Potter And The Order Of The Pheonix',132,7,27),('Harry Potter And The Half-Blood Prince',147,7,28),('Harry Potter And The Deathly Hallows Part 1',140,7,29),('Harry Potter And The Deathly Hallows Part 2',125,7,30),('Despicable Me',91,1,31),('Despicable Me 2',94,1,32),('Cloud Atlas',165,5,33),('The Emporers New Groove',75,2,34),('The Breakfast Club',94,9,35),('The Rocky Horror Picture Show',96,6,36),('St Trinians',97,8,37),('Happy Feet',104,1,38),('Babe',92,1,39),('Prisicilla Queen Of The Desert',99,8,40),('Bound',104,10,41),('Better Than Chocolate',95,10,42),('But I\'m A Cheerleader',89,10,43),('Albert Nobbs',90,4,44),('The Santa Clause',93,11,45),('The Santa Clause 2',100,11,46),('The Santa Clause 3',88,11,47),('The Grinch',61,11,48),('Home Alone',98,11,49),('Olive The Other Reindeer',46,11,50),('The Nightmare Before Christmas',73,11,51),('Elf',95,11,52),('Nativity',101,11,53),('Nativity 2',106,11,54),('Nativity 3',105,11,55),('A Christmas Carol',92,11,56),('Love Actually',129,11,57),('It\'s A Wonderful Life',131,11,58),('The Polor Express',96,11,59),('Arther Christmas',94,11,60),('The Muppets Christmas Carol',84,11,61),('Charlie And The Chocolate Factory',110,1,62),('Yes Man',100,8,63),('The Other Boleyn Girl',115,4,64),('North And South',232,4,65),('Kindergarten Cop',107,1,66),('Little Shop Of Horrors',90,6,67),('In Time',104,5,68),('Sherlock Holmes',123,12,69),('One Hour Photo',91,4,70),('Unstoppable',94,4,71),('Extremely Loud And Incredibly Close',124,4,72),('The Curious Case Of Benjamin Button',158,4,73),('The Boy In The Striped Pyjamas',90,4,74),('Memoirs Of A Geisha',139,4,75),('The Colour Purple',148,4,76),('The Tourist',99,12,77),('Untamed Love',91,4,78),('Romeo + Juliet',115,4,79),('The Danish Girl',115,4,80),('Of Mice And Men',106,4,81),('The Help',140,4,82),('The Iron Lady',104,4,83),('Mr Nice',116,4,84),('Music And Lyrics',100,13,85),('The Devil Wears Prada',104,8,86),('Miss Congeniality',106,8,87),('The Lakehouse',94,3,88),('Two Weeks Notice',97,13,89),('Ghost',122,3,90),('He\'s Just Not That Into You',124,13,91),('Sweeney Todd',111,6,92),('Mamma Mia',104,6,93),('Hairspray',112,6,94),('Moulin Rouge',122,6,95),('Nine',113,6,96),('The Sound Of Music',174,6,97),('Chicago',109,6,98),('Troll Hunter',99,14,99),('Night Of The Comet',95,5,100),('Pirates Of The Carribean',137,2,101),('Pirates Of The Carribean 2',145,2,102),('Pirates Of The Carribean 3',161,2,103),('Pirates Of The Carribean 4',131,2,104),('Coraline',96,1,105),('The Green Mile',181,14,106),('Black Swan',103,15,107),('Armagedon',147,12,108),('The Day After Tomorrow',118,12,109),('Cracks',100,4,110),('Poseidon',94,12,111),('Lucy',89,5,112),('Miss Peregrine\'s Home For Peculiar Children',121,7,113),('The Girl On The Train',111,15,114),('Pirates Of The Carribean 5',129,2,115),('5 Children And It',85,7,116),('Moana',103,2,117),('Sleeping Beauty',72,2,118),('Guardians Of The Galaxy Vol 2',136,5,119),('Ghost In The Shell',107,5,120),('Game Of Thones 1-3',1596,7,121),('Game Of Thones 4',523,7,122),('Game Of Thones 5',539,7,123),('Game Of Thones 6',535,7,124),('Star Trek The Original Series',3964,5,125),('Gravity',87,5,126),('The L Word',3322,10,127),('Pitch Perfect',107,8,128),('Pitch Perfect 2',110,8,129),('Twilight',117,7,130),('New Moon',127,7,131),('Eclipse',119,7,132),('Breaking Dawn Part 1',113,7,133),('Breaking Dawn Part 2',111,7,134),('Star Wars The Phantom Menace',130,5,135),('Star Wars Attack Of Clones',136,5,136),('Star Wars Revenge Of The Sith',119,5,137),('Star Wars A New Hope',116,5,138),('Star Wars The Empire Strikes Back',119,5,139),('Star Wars Return Of The Jedi',126,5,140),('Star Wars The Force Awakens',132,5,141),('Rogue One',128,5,142),('Cloudy With A Chance Of Meatballs',86,1,143),('Cloudy With A Chance Of Meatballs 2',91,1,144),('Finding Nemo',100,2,145),('Finding Dory',93,2,146),('Ice Age 4 Continental Drift',84,1,147),('Epic',98,1,148),('Mean Girls',93,9,149),('Mean Girls 2',93,9,150),('Dark Shadows',108,8,151),('Galaxy Quest',102,5,152),('Flash Gordon',111,5,153),('The Land Before Time',66,1,154),('The Great Valley Adventure',70,1,155),('The Time Of Great Giving',68,1,156),('Fantasia',119,2,157),('Beauty And The Beast (Live Action)',129,2,158),('The Falling',98,4,159),('Mars Attacks',102,5,160),('Edward Scissorhands',103,7,161),('Fifty Shades Of Grey',120,3,162),('Fifty Shades Darker',113,3,163),('War Horse',140,4,164),('Spectre',142,12,165),('Silver Linings Playbook',117,4,166),('The Da Vinci Code',142,15,167),('The Jungle Book (Live Action)',102,2,168),('Footloose',103,9,169),('Grease',106,6,170),('Flashdance',91,9,171),('Chicken Run',81,1,172),('Serena',105,4,173),('Joy',118,4,174),('Room',114,4,175),('The Secret Life Of Pets',86,1,176),('101 Dalmations',99,2,177),('Fantastic Beasts',133,7,178),('Nanny McPhee',94,1,179),('Mary Poppins',133,2,180),('Muppet Treasure Island',95,1,181),('High School Musical 2',106,2,182),('Zootropolis',104,2,183),('Alice Through The Looking Glass',112,2,184),('Wallace And Gromit The Curse Of The Were Rabbit',81,1,185),('Home',89,1,186),('Monsters Vs Aliens',90,1,187),('Sing',103,1,188),('Mulan',84,2,189),('Ice Age 5 Collison Course',90,1,190),('Ice Age ',77,1,191),('Ice Age The Meltdown',86,1,192),('Ice Age Dawn Of The Dinosaurs',90,1,193),('Horton Hears A Who',82,1,194),('Alvin And The Chipmunks',87,1,195),('Garfield 2',82,1,196),('Fantasic Mr Fox',83,1,197),('James And The Giant Peach',76,1,198),('Chitty Chitty Bang Bang',139,1,199),('Ever After A Cinderella Story',116,7,200),('Anastacia',90,1,201),('The King\'s Speech',113,4,202),('Identity Theif',107,8,203),('Bridesmaids',120,8,204),('Spy',115,8,205),('Clueless',93,9,206),('Bad Teacher',94,8,207),('The Trap Door',200,1,208),('The Simpsons Movie',83,8,209),('Nerve',92,15,210),('Legally Blonde',92,8,211),('Legally Blonde 2',90,8,212),('Stardust',122,7,213),('Passengers',116,5,214),('Mythica A Quest For Heroes',89,7,215),('Mythica The Darkspore',104,7,216),('Mythica The Necromancer',92,7,217),('Mythica The Iron Crown',94,7,218),('Mythica The Dragon Slayer',113,7,219),('A Monster Calls',104,7,220),('Arrival',111,5,221),('The Incredibles',111,2,222),('Horrible Bosses',94,8,223),('Horrible Bosses 2',104,8,224),('The Duff',96,9,225),('The Change-Up',108,13,226),('Guardians Of The Galaxy',116,5,227),('Bicentennial Man',86,1,228),('Cross Roads',89,3,229),('Source Code',89,5,230),('Gladiator',149,4,231),('Jurassic Park',127,12,232),('The Lost World',129,12,233),('Jurassic Park 3',92,12,234),('Iron Man',121,12,235),('Conan The Barbarian',125,7,236),('Chappie',115,5,237),('Limitless',100,12,238),('The Anomaly',96,5,239),('Beowulf',115,7,240),('Ace Ventura Pet Detective',83,8,241),('Ace Ventura When Nature Calls',89,8,242),('Sucker Punch',105,5,243),('Mrs Doubtfire',120,8,244),('The Mask',97,8,245),('District 9',108,5,246),('Sucide Squad',118,12,247),('Stuck On You',113,8,248),('The Boat That Rocked',130,8,249),('Hours',110,4,250),('The Intern',117,8,251),('Me, Myself And Irene',111,8,252),('Big Daddy',89,8,253),('Click',103,8,254),('Blue Is The Warmest Colour',173,10,255),('Liar Liar',83,8,256),('Bruce Almighty',96,8,257),('Pretty Woman',120,13,258),('Batman The Movie',100,8,259),('John Tucker Must Die',86,13,260),('Just My Luck',98,13,261),('My Super Ex-Girlfriend',92,13,262),('Finding Neverland',97,4,263),('Matilda',94,1,264),('Ben And Holly\'s Christmas',111,1,265),('Ex-Machina',104,5,266),('The Fifth Element',121,5,267),('Meet The Parents',103,8,268),('Meet The Fockers',110,8,269),('Juno',92,8,270),('Ghost Town',98,13,271),('Avatar',155,5,272),('Labyrinth',98,7,273),('Rugrats In Paris',75,1,274),('Snow White And The Huntsmasn',127,7,275),('The Huntsman Winter\'s War',114,7,276),('Hotel Transylvania',88,1,277),('Corpse Bride',74,6,278),('The Revenant',149,4,279),('Shrek ',NULL,1,280),('Shrek 2',NULL,1,281),('Shrek The Third',89,1,282),('Shrek Forever After The Final Chapter',89,1,283),('The Dark Crystal',93,7,284),('The Neverending Story',92,7,285),('Peppa Pig Christmas Compliation',56,1,286),('Puss N Boots',79,1,287),('Dylan Moran Yeah Yeah',74,8,288),('Dylan Moran What It Is',77,8,289),('Dylan Moran Monster',89,8,290),('Dylan Moran Like Totally',66,8,291),('Black Books',433,8,292),('Dylan Moran Off The Hook',75,8,293),('The 10th Kingdom',466,7,294),('Black Adder',835,8,295),('Glee Season 1 Vol 1',587,6,296),('Glee Season 1 Vol 2',381,6,297),('True Blood Season 1',636,14,298),('True Blood Season 2',645,14,299),('Hammer House Of Horror',670,14,300),('Doctor Who Series 2',660,5,301),('Doctor Who Series 3',585,5,302),('Doom',108,5,303),('Red Riding Hood',96,14,304),('The Haunting',107,14,305),('Never Been Kissed',103,13,306),('Daddy Day Care',88,8,307),('A Cinderella Story',91,13,308),('17 Again',97,13,309),('Nights In Rodanthe',93,3,310),('We\'re The Millers',105,8,311),('Green Wing',936,8,312),('Green Wing Special',88,8,313),('The Break-Up',102,13,314),('No Strings Attached',104,13,315),('Jumanji',100,1,316),('Annie',122,1,317),('Dark Water',101,14,318),('The Others',100,14,319),('She\'s The Man',100,8,320),('About A Boy',97,1,321),('8 Mile',106,4,322),('High School Musical',98,2,323),('Hero',95,12,324),('House Of Flying Daggers',114,12,325),('Seven Swords',135,12,326),('Team America',94,8,327),('Premonition',92,4,328),('And Now For Something Completely Different',85,8,329),('Monty Python And The Holy Grail',86,8,330),('The Meaning Of Life',103,8,331),('South Park',78,8,332),('Wuthering Heights 1998',113,4,333),('Wuthering Heights 2003',102,4,334),('Delicatessen',95,8,335),('Kung Fu Hustle',95,12,336),('Fight Club',133,4,337),('Monster',104,4,338),('Peking Opera Blues',102,12,339),('The Machinist',98,15,340),('The Ed Wood Collection',450,5,341),('The Haunted Mansion',124,2,342),('Leap Year',96,13,343),('Superbad',108,8,344),('Mr Bean\'s Holiday',86,8,345),('American Beauty',117,4,346),('Constantine',115,14,347),('Shawn Of The Dead',95,8,348),('Apocalypse Now',195,4,349),('The Cube',90,5,350),('The Little Mermaid',89,2,351),('The Little Mermaid 2',72,2,352),('Due Date',91,8,353),('The Invention Of Lying',96,8,354),('Public Enemies',134,12,355),('Bride Wars',85,8,356),('Ginger Snaps',104,14,357),('Four Play',83,13,358),('Licence To Wed',88,13,359),('Along Came Polly',86,13,360),('Invitcus',128,4,361),('Donnie Darko',128,4,362),('Troll 2',90,14,363),('Night Of The Lepus',88,14,364),('Gothica',94,15,365),('Fong Si Yuk',106,12,366),('Fong Si Yuk 2',96,12,367),('Alien Quadrilogy',NULL,5,368),('Fearless',99,12,369),('Curse Of The Golden Flower',110,12,370),('Crouching Tiger Hidden Dragon',115,12,371),('Heathers',102,10,372),('My Neighbour Totoro',86,1,373),('Howl\'s Moving Castle',115,1,374),('Spirited Away',120,1,375),('Princess Mononoke',134,1,376),('The Cat Returns',74,1,377),('Loving Annabelle',77,10,378),('Imagine Me And You',90,10,379),('Resident Evil',97,5,380),('Resident Evil Apocolyse',90,5,381),('Resident Evil Extiction',90,5,382),('Resident Evil Afterlife',93,5,383),('Resident Evil Retribution',92,5,384),('Resident Evil The Final Chapter',102,5,385),('Doctor Who Series 1',567,5,386),('Humans',369,5,387),('Once Upon A Time Season 1',946,7,388),('Once Upon A Time Season 2',908,7,389),('Orange Is The New Black Season 1',700,8,390),('Orange Is The New Black Season 2',780,8,391),('Orange Is The New Black Season 3',746,8,392),('Orange Is The New Black Season 4',744,8,393),('Xena Warrior Princess',5669,7,394),('Big Bang Theory',2613,8,395),('One Tree Hill Season 1',907,9,396),('One Tree Hill Season 2',1000,9,397),('One Tree Hill Season 3',902,9,398),('One Tree Hill Season 4',764,9,399),('One Tree Hill Season 5',728,9,400),('One Tree Hill Season 6',975,9,401),('One Tree Hill Season 7',928,9,402),('One Tree Hill Season 8',881,9,403),('One Tree Hill Season 9',533,9,404),('The OC',42,9,405),('Desperate Housewives Season 1',NULL,4,406),('Desperate Housewives Season 2',991,4,407),('Desperate Housewives Season 3',952,4,408),('Desperate Housewives Season 4',698,4,409),('Desperate Housewives Season 5',948,4,410),('Desperate Housewives Season 6',946,4,411),('Desperate Housewives Season 7',948,4,412),('Desperate Housewives Season 8',946,4,413),('Thundercats',2826,1,414),('House Season 1',928,4,415),('House Season 2',1093,4,416),('House Season 3',1006,4,417),('House Season 4',673,4,418),('House Season 5',1017,4,419),('House Season 6',929,4,420),('House Season 7',967,4,421),('House Season 8',924,4,422),('Family Guy Season 1',312,8,423),('Family Guy Season 2',333,8,424),('Family Guy Season 3',452,8,425),('Family Guy Season 4',270,8,426),('Family Guy Season 5',300,8,427),('Family Guy Season 6',278,8,428),('Family Guy Season 7',260,8,429),('Family Guy Season 8',290,8,430),('Family Guy Season 9',327,8,431),('Family Guy Season 10',391,8,432),('Family Guy Stewie Griffen The Untold Story',88,8,433),('Family Guy Blue Harvest',45,8,434),('Family Guy Something Something Something Dark Side',52,8,435),('Family Guy It\'s A Trap!',54,8,436),('Bill Bailey Tinselworm',91,8,437),('Bill Bailey Part Troll',94,8,438),('Bill Bailey Bewilderness',95,8,439),('Bill Bailey Cosmic Jam',83,8,440),('Farscape',4500,5,441),('X-Files Season 1',1056,5,442),('X-Files Season 2',1100,5,443),('X-Files Season 3',1100,5,444),('X-Files Season 4',1017,5,445),('X-Files Season 5',862,5,446),('X-Files Season 6',947,5,447),('X-Files Season 7',937,5,448),('X-Files Season 8',892,5,449),('X-Files Season 9',846,5,450),('X-Files Movie',118,5,451),('Futurama 1 - 4',1540,5,452),('Futurama Collected Epics',338,5,453),('Futurama 5',280,5,454),('Futurama 6',275,5,455),('Futurama 7',269,5,456),('Futurama 8',269,5,457),('Friends 1',NULL,8,458),('Friends 2',NULL,8,459),('Friends 3',NULL,8,460),('Friends 4',NULL,8,461),('Friends 5',NULL,8,462),('Friends 6',NULL,8,463),('Friends 7',NULL,8,464),('Friends 8',NULL,8,465),('Friends 9',NULL,8,466),('Friends 10',NULL,8,467),('Mirror Mirror',102,1,468),('Gnomeo And Juliet',81,1,469),('The Pirates In An Adventure With Scientists',84,1,470),('Madagascar 3 Europe\'s Most Wanted',90,1,471),('Minions',87,1,472),('Me Before You',106,3,473),('Lesbian Vampire Killers',82,8,474),('Minority Report',139,5,475),('The Martian',141,5,476),('Love Happens',105,3,477),('One Day ',103,3,478),('Dirty Dancing',97,3,479),('Lol',93,9,480),('Something Borrowed',108,3,481),('Ghosts Of Girlfriends Past',96,13,482),('This Means War',93,12,483),('50 First Dates',95,13,484),('Wild Child',94,9,485),('10 Things I Hate About You',97,13,486),('It\'s Complicated',115,13,487),('Friends With Benefits',105,13,488),('The Proposal',103,13,489),('It\'s A Boy Girl Thing',95,13,490),('Remember Me ',108,13,491),('I Don\'t Know How She Does It',86,13,492),('Bridget Jones',93,13,493),('Bridget Jones Edge Of Reason',103,13,494),('Bridget Jones\' Baby',118,13,495),('The Notebook',118,3,496),('Love, Rosie',99,3,497),('Miss Congeniality 2',111,8,498),('The Princess Diaries',111,13,499),('The Princess Diaries 2',108,13,500),('Inception',142,5,501),('Megamind',92,1,502),('Snow White The Fairest Of Them All',84,7,503),('Fatal Instinct',86,8,504),('The Storyteller',216,7,505),('Kung Fu Panda',88,1,506),('Kung Fu Panda 2',87,1,507),('Cinderella',105,2,508),('Big Hero 6',97,2,509),('Beauty And The Beast',91,2,510),('Alice In Wonderland',104,2,511),('102 Dalmations',96,2,512),('Toy Story',78,2,513),('Toy Story 2',89,2,514),('Toy Story 3',98,2,515),('Enchanted',103,2,516),('Holes',113,2,517),('Scott Pilgrim Vs The World',107,8,518),('Dumbo',61,2,519),('WallE',95,2,520),('The Good Dinosaur',90,2,521),('Absolutely Fabulous',1413,8,522),('Absolutely Fabulous The Movie',87,8,523),('The Tudors',1893,4,524),('The Returned',417,14,525),('The Returned Series 2',435,14,526),('Monsters Univerity',100,2,527),('Monsters Inc',88,2,528),('Tangled',96,2,529),('Aladin',87,2,530),('Legend',90,7,531),('Inside Out',91,1,532),('Divergent',134,5,533),('Insurgent',114,5,534),('Allegiant',115,5,535),('Serenity',114,5,536),('Firefly',625,5,537),('Dr No',109,12,538),('From Russia With Love',110,12,539),('Goldfinger',105,12,540),('Thunderball',124,12,541),('You Only Live Twice',116,12,542),('On Her Majesty\'s Secret Service',142,12,543),('Diamonds Are Forever',120,12,544),('Live And Let Die',116,12,545),('The Man With The Golden Gun',119,12,546),('The Spy Who Loved Me',120,12,547),('Moonraker',121,12,548),('For Your Eyes Only',122,12,549),('Octopussy',125,12,550),('A View To A Kill',127,12,551),('The Living Daylights',125,12,552),('Licence To Kill',127,12,553),('Goldeneye',124,12,554),('Tomorrow Never Dies',114,12,555),('The World Is Not Enough',123,12,556),('Die Another Day',126,12,557),('Casino Royal',138,12,558),('Quantum Of Solace',102,12,559),('Skyfall',137,12,560),('Valerian',137,5,561),('Despicable Me 3',90,1,562),('Game Of Thrones 7',461,7,563),('Game Of Thrones Conquest And Rebellion',42,7,564),('Victoria Wood Collection',956,8,565),('Poirot The Definitive Collection',3124,4,566),('Ratatouille',107,2,567),('Murder On The Orient Express',109,4,568),('The Dark Tower',95,5,569),('Easter Parade',99,6,570),('Pan\'s Labyrinth',119,7,571),('Remainder',99,4,572),('The Girl With The Dragon Tattoo',152,4,573),('Oliver and Company',71,2,574),('300',111,7,575),('Paper Towns',109,9,576),('American Dad 1-8',2756,8,577),('American Dad 9',410,8,578),('Miranda The Complete Series',583,8,579),('Maze Runner ',108,5,580),('Scorch Trials',125,5,581),('Jurassic World',119,5,582),('Star Wars The Last Jedi',146,5,583),('The Reader',118,4,584),('Wallace And Gromit The Complete Collection',110,1,585),('The Girl With The Dragon Tattoo (Swedish Version)',152,4,586),('The Boss Baby',93,1,587),('The Phantom Of The Opera',135,6,588),('Murder On The Orient Express (1974)',122,4,589),('The Girl Who Played With Fire',124,4,590),('The Girl Who Kicked The Hornet\'s Nest',140,4,591),('Begin Again',100,3,592),('Valentine\'s Day',120,13,593),('The Best Of Me',113,3,594),('Dear John',103,3,595),('Safe Haven',111,3,596),('Table 19',82,8,597),('The Wizard Of Oz',98,1,598),('Spiceworld The Movie',89,1,599),('Deadpool',103,12,600),('Timeline',91,5,601),('Crooked House',110,4,602),('The Prisoner',850,5,603),('You\'ve Got Mail',115,13,604),('Die Hard',127,12,605),('Die Hard 2',118,12,606),('Die Hard With A Vengeance',123,12,607),('Die Hard 4.0',123,12,608),('A Good Day To Die Hard',93,12,609),('Rememory',112,15,610),('Pitch Perfect 3',89,8,611),('The Greatest Showman',100,6,612),('The Big Freeze',75,11,613),('Office Christmas Party',105,11,614),('Scrooged',97,11,615),('Early Man',85,1,616),('Thor',115,5,617),('Thor The Dark World',113,5,618),('Thor Ragnarok',130,5,619),('The Incredible Hulk',112,5,620),('Maze Runner The Death Cure',137,5,621),('Fifty Shades Freed',101,3,622),('Game Night',96,8,623),('The Shape Of Water',118,7,624),('Red Sparrow',134,15,625),('Ready Player One',138,5,626),('Predestination',93,5,627),('True Lies',135,12,628),('Escape Plan',115,12,629),('Escape Plan II',96,12,630),('Unknown',108,12,631),('Non-Stop',106,12,632),('The Commuter',104,12,633),('Solo',135,5,634),('Avengers Assemble',137,5,635),('Avengers Age of Ultron',141,5,636),('Avengers Infinity War',149,5,637),('The Shadow Effect',89,12,638),('Cellular',93,15,639),('Captain America: The First Avenger',124,5,640),('Captain America: The Winter Soldier',136,5,641),('Captain America: Civil War',148,5,642),('Taken',89,15,643),('Taken 2',94,15,644),('Taken 3',110,15,645),('Incredibles 2',114,2,646),('Jurassic World Fallen Kingdom',129,5,647),('The Emoji Movie',86,1,648),('Wonder',108,4,649),('Pride & Prejudice & Zombies',103,14,650),('Iron Man 2',124,5,651),('Iron Man 3',125,5,652),('Spiderman Homecoming',133,5,653),('Doctor Strange',115,5,654),('Ant Man',112,5,655),('Ant Man and the Wasp',113,5,656),('Black Panther',140,5,657),('Hellboy',132,5,658),('Hellboy 2',120,5,659),('A Quiet Place',87,14,660),('Gremlins',106,14,661),('Gremlins 2',106,14,662),('Searching',98,15,663),('Christopher Robin',100,2,664),('Sherlock gnomes ',86,1,665),('Mamma Mia! Here we go again',114,6,666),('The spy who dumped me',116,8,667);
/*!40000 ALTER TABLE `DVD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `GenreName` varchar(20) DEFAULT NULL,
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES ('Family',1),('Disney',2),('Romance',3),('Drama',4),('Sci-Fi',5),('Musical',6),('Fantasy',7),('Comedy',8),('Teen',9),('Lesbian',10),('Christmas',11),('Action',12),('RomCom',13),('Horror',14),('Thriller',15);
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27  2:00:01
