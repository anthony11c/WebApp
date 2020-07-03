-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 09:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijesti`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(192) COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(1, '05.12.2019', 'Proizvodnja Iphone-a u Hrvatskoj', 'Iako na iPhoneu piše da je američki proizvod, on se zapravo u potpunosti sklapa u Hrvatskoj, odakle se izvozi u SAD. Samo 2009. godine zahvaljujući ovom čudu tehnike, američki trgovinski manjak s Hrvatskom iznosio je 1,9 milijardi dolara, piše novilist.hr.\r\nU izradi dijelova za iPhone sudjeluje devet kompanija iz SAD-a, Japana, Njemačke i južne Koreje i one komponente šalju u tajvansku tvrtku Foxconn, smještenu u hrvatskom Shenzhenu, gdje ih radnici sklapaju.', 'Iako na iPhoneu piše da je američki proizvod, on se zapravo u potpunosti sklapa u Hrvatskoj, odakle se izvozi u SAD. Samo 2009. godine zahvaljujući ovom čudu tehnike, američki trgovinski manjak s Hrvatskom iznosio je 1,9 milijardi dolara, piše novilist.hr.U izradi dijelova za iPhone sudjeluje devet kompanija iz SAD-a, Japana, Njemačke i južne Koreje i one komponente šalju u tajvansku tvrtku Foxconn, smještenu u hrvatskom Shenzhenu, gdje ih radnici sklapaju.Prodajna cijena iPhonea na američkom tržištu 2009. godine iznosila je 500 dolara, a proizvodna cijena ukupno 178,96 dolara (komponente i rad). \r\nNajveću vrijednost na ovom uređaju (59,25 dolara ili trećina proizvodne cijene) imaju tri komponente japanske Toshibe. Šestinu cijene čini pet komponenata iz njemačkog Infineona (28,85 dolara), a dva dijela (22,96 dolara) drži korejski Samsung. Ostale komponente dolaze iz američkih tvrtki Broadcom, Numonyx i Cirrus Logic (10,75 dolara), japanske Murate (1,35 dolara), njemačkog Dialog Semiconductora (1,30 dolara) i ostalih kompanija (48 dolara). Ako toj cijeni od 172,46 dolara pridodamo cijenu skalapanja komponenata koju Kinezi naplaćuju 6,50 dolara, ukupni proizvodni troškovi po komadu uređaja iznose oko 179 dolara.   \r\nUvozeći iPhone iz Hrvatske, od oko dvije milijarde dolara, Amerika je 2009. godine posredno uvezla 670 milijuna dolara iz Japana, iz Njemačke 326 milijuna, a iz južne Koreje 259 milijuna.\r\niPhone Made in HR\r\nDeficit HR-e sve se više povećava, jer se prodaja iPhonea u Americi i svijetu gotovo udvostručila, a novi skok očekuje se do kraja ove godine. To bi se doduše moglo smanjiti i to proizvodnjom u Americi.Evo kako bi funkcionirala proizvodnja iPhonea u SAD-u: troškovi rada bi skočili na 68 dolara, a proizvodna cijena na oko 240 dolara po komadu. Unatoč tome, Apple bi i dalje na svakom iPhoneu zaradio oko 50 posto dobiti, a cijena uređaja za kupce ostala bi ista ili manja.Apple bi mogao preseliti proizvodnju u matičnu zemlju, ali naravno ovo se puno više isplati jer je radna snaga u HR deset puta jeftinija nego u SAD-u, a glavni cilj vlasnika Applea jest povećati profit jer Apple i ovako i onako nema nekog konkurenta. To je kapitalizam. (MJ)', 'Apple-iPhone-11-Pro-Max-review-colors.jpg', 'mobiteli', 1),
(2, '05.01.2020.', 'Samsung Galaxy S11 donosi novu tehnologiju izrade baterije', 'Pored druge generacije 108 MP senzora glavne kamere, Samsung Galaxy S11 bi mogao donijeti jednu možda i važniju novost. Naime, radi se o bateriji, koja bi u novoj generaciji trebala imati osjetno veći kapacitet nego u sadašnjim S10 modelima.', 'Pored druge generacije 108 MP senzora glavne kamere, Samsung Galaxy S11 bi mogao donijeti jednu možda i važniju novost. Naime, radi se o bateriji, koja bi u novoj generaciji trebala imati osjetno veći kapacitet nego u sadašnjim S10 modelima.\r\n\r\nPrema pisanju korejskih medija, Samsung će u Galaxy S11e ugraditi 3730 mAh bateriju, što je osjetno više od 3100, koliko ima aktualni Galaxy S10e. Nadalje, ?obični? Galaxy S11 bi trebao dobiti bateriju kapaciteta 4300 mAh, što odgovara onoj u Galaxy Noteu 10+, a to je osjetno više od 3400 mAh, koliko nalazimo u običnom Galaxyju S10.\r\n\r\nNa koncu, Galaxy S11+ boi trebao raspolagati s čak 5000 mAh, što je osjetno više od 4100 mAh, koliko nalazimo na Galaxyju S10+, a sve skupa bi autonomiju trebalo podignuti na jednu višu razinu, te istovremeno zadovoljiti glad za novom 5G tehnologijom.\r\n\r\nNaravno, uređaji neće narasti u dimenzijama, već bi tajna ovog uspjeha trebala biti sadržana u novoj generaciji PMP (Protection Module Packages) tehnologije koja omogućuje do 57% veći kapacitet baterije istih dimenzija.\r\n\r\nOsim nove PMP tehnologije, produljenoj autonomiji bi trebale kumovati i stavke poput nove generacije procesora, SAMOLED zaslona i načina na koji energiju troši kamera uređaja.', 'gsmarena_001.jpg', 'mobiteli', 0),
(3, '05.05.2020.', 'Huawei P40 Pro napada SAMSUNG i APPLE', 'Nakon što smo vidjeli P40 lite koji je najavio što bi mogli očekivati od Huaweijevih top modela za ovu godinu, ali i brojnih detalja koji su procurili, kineska je kompanija danas i službeno otkrila P40 i P40 Pro modele kojima ove godine žele..', 'Nakon što smo vidjeli P40 lite koji je najavio što bi mogli očekivati od Huaweijevih top modela za ovu godinu, ali i brojnih detalja koji su procurili, kineska je kompanija danas i službeno otkrila P40 i P40 Pro modele kojima ove godine žele nastaviti borbu sa Appleom i Samsungom. \r\n\r\nPrvi pogled na specifikacije pokazuje da Huawei P40 Pro, kao onaj kojeg bi svi htjeli, ima sve ključne tehnikalije podignute za razinu u odnosu na prošlogodišnju P30 seriju. Naravno, uz nedostatak Googleovih servisa, ali o tome nešto kasnije. \r\n\r\nHuawei je odlučio telefon lansirati danas, i to bez glamura i blještavila Pariza, gdje se cijela prezentacija trebala odigrati. Umjesto toga, u krizi s korona virusom stream je morao zadovoljiti. Ionako izazovnu situaciju zbog Googlea, korona virus dodatno otežava, pa ostaje za vidjeti kako će i u kojim uvjetima krenuti prodaja ovog telefona. \r\nGlavna razlika s prednje strane u odnosu na P30 je dvostruka prednja kamera u lijevom kutu | Foto: Ivan Hruškovec/24sata\r\n\r\nGlavni aduti P40 i P40 Pro telefona u svakom slučaju su podrška za 5G mreže te kamere od 50 megapiksela. \r\n\r\nP40 Pro je atraktivniji model i on dolazi sa 6,58-inčnim OLED ekranom (2640 x 1200), a u odnosu na prošlogodišnji P30 Pro uži je i deblji za otprilike milimetar. Uređaj djeluje teže već na prvi dojam - iako je razlika samo 11 grama.\r\n\r\nKao što je uobičajeno već par godina, tako je i P40 Pro dobio čipset s Matea 30, a to je Kirin 990 s 5G podrškom, što znači da u svakodnevnom radu možete računati na dovoljno snage za bilo koji zadatak. Dolazi sa 8 GB radne i 256 GB interne memorije, a AnTuTu benchmark dao mu je  458745 bodova. Naravno, tu treba imati na umu da telefon koji smo isprobali nije uređaj sa finalnim softverom tako da su moguće i promjene. ', 'HUAWEI_P40_Pro_Silver_front-1024x768.jpg', 'mobiteli', 0),
(4, '01.01.2020.', 'PlayStation 2 - najprodavanija konzola u povijesti', 'Prije točno devetnaest godina na europskom je tržištu lansirana Sony PlayStation 2 konzola. Brojnim igračima s naših prostora PS2 je brzo postao sinonim za šestu generaciju konzola jer je vrlo brzo sahranio Segin Dreamcast, a do izlaska Gamecubea i Xboxa Sonyjev je uređaj za igranje već prikupio solidnu količinu ekskluzivnih igara.', 'Prije točno devetnaest godina na europskom je tržištu lansirana Sony PlayStation 2 konzola. Brojnim igračima s naših prostora PS2 je brzo postao sinonim za šestu generaciju konzola jer je vrlo brzo sahranio Segin Dreamcast, a do izlaska Gamecubea i Xboxa Sonyjev je uređaj za igranje već prikupio solidnu količinu ekskluzivnih igara.\r\n\r\nOsim toga, konzola je bila povratno kompatibilna i već je imala bazu od više stotina PS1 igara, a Sony je prelaskom na DVD medij s PS2 konzolom proširio vidike tako da korisnici kupnjom konzole nisu više dobivali samo stroj za igranje, već i multimedijalnu stanicu za gledanje filmova. Lansiran po cijeni od 299 američkih dolara, PS2 je bio i jedan od jeftinijih DVD playera na tržištu. Naravno, kod nas baš i nije bio jeftin već se u početku prodavao po cijeni od 4444 kn.\r\n\r\nPlayStation 2 temeljio se na Sonyjevoj procesorskoj jedinici zvanoj Emotion Engine koja je sa svojih 6.2 gigaflopsa omogućavala značajan skok u grafičkom prikazu naspram prethodne generacije konzola. S obzirom da su igre izgledale odlično za to vrijeme, PlayStation 2 prodavao se brže od vrućih kifli, a uživao je fantastičnu podršku developera među kojima su se mnogi po prvi put počeli okretati od PC-a prema nekoj konzoli.\r\n\r\nPlatforma je tako dobila nekoliko privremenih ekskluziva i postala neizostavna stanica za sve gejmere koji uživaju u različitim žanrovima i maštovitim igrama. Neke od tih privremenih ekskluziva, poput serijala kao što su GTA, Final Fantasy i MGS, Sonyju su donijele značajnu prevagu nad konkurencijom.', '81QWa2SdU-L._SX522_.jpg', 'konzole', 0),
(5, '01.01.2019.', 'Astrofizičar zamijenio superračunala sa Playstation-om 3', 'PLAYSTATION 3, igraća konzola koja se dosad, unatoč performansama, nije mogla pohvaliti dobrim kotiranjem na prodajnim ljestvicama, dobila je svoje mjesto pod suncem. Visoka cijena u ovom slučaju je zanemariva, kada se usporedi s koristi koju PS3 pruža, a izbor igara je potpuno irelevantan.', 'PLAYSTATION 3, igraća konzola koja se dosad, unatoč performansama, nije mogla pohvaliti dobrim kotiranjem na prodajnim ljestvicama, dobila je svoje mjesto pod suncem. Visoka cijena u ovom slučaju je zanemariva, kada se usporedi s koristi koju PS3 pruža, a izbor igara je potpuno irelevantan.\r\n\r\nGuarav Khanna, asistent profesor na Sveučilištu u Massachusettsu, \'upregnuo\' je čak 8 ovih konzola u, kako ju on naziva, \'gravitacijsku rešetku\'. Kompleksni matematički izračuni u službi mjerenja teoretskih gravitacijskih valova, lome zube i superračunalima, čije se korištenje skupo naplaćuje.\r\n\r\nU ovom trenutnku, niz od osam međusobno povezanih PS3 konzola je zauzet rješavanjem tajni zvijezda (naravno, ne onih sa naslovnica) i nebeskih tijela pomoću gravitacijskih valova, te što se događa kada supermasivna crna rupa (oko milijun puta veća od našeg Sunca) proguta neku zvijezdu. Ispada da je PS3 idealan za takve vrste kompliciranih proračuna koje Khanni trebaju za njegov projekt.\r\n\r\nDr. Khanna specijalizirao je astrofiziku, a čini se da mu to nije jedini talent. Optimizirao je svoj kod kako bi ga prilagodio specifičnoj arhitekturi Cell procesora, kojeg su razvili Sony, Toshiba i IBM, a upravo taj procesor nalazimo u srcu svake PS3 konzole. Kako je sama konzola rađena kao relativno otvorena platforma, koja \'vrti\' Linux, ali ne kontrolira što radite, mogućnosti su izvanredne, što je dr. Khanna i dokazao umreživši 8 primjeraka, čime je na raspolaganje dobio procesorsku snagu koju uspoređuje čak i sa superračunalima.\r\n\r\nGravitacijska rešetka i tajne svemira\r\n\r\nPS3/Linux kombinacija nudi cijenom i performansama vrlo atraktivna rješenja, bilo da su konzole distribuirane na više mjesta (kao Sonyjev i Standfordov projekt Folding@home koji, ako instalirate tu aplikaciju, iskorištava procesorsko vrijeme vaše konzole dok na njoj ništa ne radite), ili da su umrežene skupa (kao Khannine), kaže Sonyjev manager istraživanja i razvoja Noam Rimon.\r\n\r\nSam procesor namijenjen je općoj upotrebi, a dizajnom je definiran kao uređaj za paralelno procesiranje s dva cjevovoda. Prije upotrebe PS3 konzola, Khanna je za proračune koji uključuju mnogostruke brojeve bio prisiljen koristiti donacije NSF-a (National Science Foundation), a troškovi nisu bili zanemarivi. Oko 500 procesora bila je njegova uobičajena \'ergela\', a kada se uzme u obzir da se za korištenje svakoj pojedinog superračunala plaćalo 5.000 dolara, nije teško zamisliti njegovo oduševljenje novim troškovnikom.', 'Uskoro-jeftiniji-PlayStation-3.jpg', 'konzole', 0),
(6, '10.05.2020.', 'PlayStation 4 prestigao Nintendo Wii i originalni Playstation', 'Ako uzmemo u obzir da su se prije tačno tri mjeseca pohvalili činjenicom da su prodali tačno 100 miliona konzola, to znači da je ukupna brojka sada narasla na 102.8 miliona. Tih dodatnih 2.8 miliona mnogo znači jer to čini PlayStation 4 drugom najprodavanijom kućnom konzolom svih vremena.Prestigli su megauspješni PlayStation 1 koji se prodao u ukupno 102.5 milijuna primjeraka i fenomen Nintendo Wii koji se prodao u 101.6 milijuna primjeraka.', 'Ako uzmemo u obzir da su se prije tačno tri mjeseca pohvalili činjenicom da su prodali tačno 100 miliona konzola, to znači da je ukupna brojka sada narasla na 102.8 miliona. Tih dodatnih 2.8 miliona mnogo znači jer to čini PlayStation 4 drugom najprodavanijom kućnom konzolom svih vremena.\r\n\r\nPrestigli su megauspješni PlayStation 1 koji se prodao u ukupno 102.5 milijuna primjeraka i fenomen Nintendo Wii koji se prodao u 101.6 milijuna primjeraka.\r\n\r\nProdaja će se malo usporiti u narednom periodu što se očekivalo jer se krajem sljedeće godine očekuje izlazak Playstationa 5.\r\n\r\nSony je čak prepravio predviđanja za fiskalnu godinu i sveukupno očekuju 1.5 milion manje prodatih primjeraka nego što su originalno predvidjeli (13.5 miliona umjesto 15 miliona).\r\n\r\nIma mnogo nadolazećih naslova koji će držati konzolu na životu kao što su dugo očekivani Death Stranding (koji izlazi sljedeće nedjelje) i nastavak megapopularne igre The Last Of Us.\r\n\r\nHoće li PlayStation 4 ikada prestići najprodavaniju konzolu svih vremena ? nedodirljivi PlayStation 2 koji se prodao u više od 155 milijuna primjeraka?\r\n\r\nVrlo vjerojatno neće jer su tržišni uslovi tada bili značajno drugačiji.\r\n\r\nPS2 nije imao veliku konkurenciju ? Xbox je tek bio u povojima, a Nintendo GameCube se pokazao tek kao umjereno uspješan.\r\n\r\nUporođenja radi, PS4 se za kupce mora boriti s Xbox One i (od 2017. godine) Nintendo Switch ? obje uspješne i popularne konzole.\r\n\r\nTakođe, predviđa se da je Microsft do sada uspio prodati oko 41 milion XBox One konzola, iako je ta konzola izašla iste godine kao PS4.\r\n\r\nAko ne računamo samo kućne konzole, nego i one prenosne, onda je na drugom mjestu Nintendo DS sa 154 milijuna prodanih primjeraka, a na trećem ikonični Gameboy (i Gameboy Color kombinovano) s gotovo 119 miliona prodanih primjeraka.', 'custom_ps4_console_skins_template_2048x.png.webp', 'konzole', 0),
(7, '12.06.2020.', 'Prijeklopno čudo iz Koreje', 'Svi proizvođači smartfona trude se maksimalno povećati površinu zaslona u odnosu na kućište. Tako danas, kad imamo smartfone čiji zasloni zauzimaju preko 90% prednje površine uređaja i gdje nam preostaje tek par postotaka do potpune pokrivenosti, dolazi vrijeme revolucije.Jedno od rješenja kako povećati površinu zaslona nudi Samsung sa svojim rješenjem preklopnog zaslona na novom modelu ? Samsung Galaxy Fold, kojeg navodno razvijaju već 7 godina. I kako to obično biva da se prvi mačići bacaju u vodu, povijest ipak uvijek pamti prve.', '	Svi proizvođači smartfona trude se maksimalno povećati površinu zaslona u odnosu na kućište. Tako danas, kad imamo smartfone čiji zasloni zauzimaju preko 90% prednje površine uređaja i gdje nam preostaje tek par postotaka do potpune pokrivenosti, dolazi vrijeme revolucije.Jedno od rješenja kako povećati površinu zaslona nudi Samsung sa svojim rješenjem preklopnog zaslona na novom modelu ? Samsung Galaxy Fold, kojeg navodno razvijaju već 7 godina. I kako to obično biva da se prvi mačići bacaju u vodu, povijest ipak uvijek pamti prve.\r\n\r\n	Prvi iPhone nije bio savršen, štoviše, bio je prepun mana, ali je donio određene promjene koje su zahvatile cijelu mobilnu indrustriju. Možda nije bio prvi uređaj takve vrste, ali je bio prvi koji je to napravio onako kako treba.Nekoliko godina kasnije, došao je i prvi Note, za kojeg su mnogi smatrali da je prevelik i nazivali ga phabletom, nazivom koji je danas potpuno zaboravljen. Ipak, tržište je pokazalo da mjesta za veće uređaje itekako ima, a ubrzo je pokleknuo i Apple predstavivši svoju Plus liniju iPhponea, koju sada naziva Max.\r\n\r\n	Danas svjedočimo novoj revoluciji u svijetu smartfona. I bez brige, baš kao nisu svi smartfoni ostali na idealnih 3,5? i iOS-u, ili narasli na dimenzije prvog Notea i vratili olovčicu u upotrebu, tako neće niti svi smartfoni postati preklopni. Ali viđat ćemo ih sve više i više, i s godinama će postajati sve bolji i bolji. Samsung Galaxy Fold nije ni prvi ni posljednji preklopni smartfon, ali je prvi koji nešto znači za cijelu industriju.Daleko je od savršenog uređaja, i koliko god dobar bio, nije smartfon namijenjen svakome. On sam po sebi ne traži preporuku, već ima svoju ciljanu publiku koja ga je, sudeći po inicijalnim prodajnim rezultatima, objeručke prihvatila. Ne znamo točno o kojem broju primjeraka je riječ, i je li lokalni operater naručio samo 5 komada pa se pohvalio da ga je rasprodao, ali smo se uvjerili u reakcije mnogih koji su ga vidjeli u našim rukama u posljednjih tjedan dana.\r\n\r\nSamsung se potrudio ugraditi najbolje komponente kojima je raspolagao početkom ove godine, s tim da je njegov izlazak prolongiran za dobrih 6 mjeseci. No za razliku od nekih drugih kad se susretnu s određenim problemima, čak i ove magnitude, nije odustao od prodaje. Povukao je testne primjerke, ozbiljno pristupio rješavanju problema i izbacio ga na tržište nešto kasnije.\r\nRuku na srce, fijasko su mogli izbjeći da testiranje nisu strogo čuvali samo za laboratorijske uvjete, već ga dali u ruke ljudima koji su samo još jednom dokazali da ne postoji proizvod koji je 100% robustan. Naš primjerak je tako novi, redizajnirani model, s nekoliko ispravljenih grešaka koje su se na prvim primjercima pokazale fatalnima.', 'https _hypebeast.com_image_2020_05_samsung-galaxy-fold-lite-release-rumor-000.jpg', 'mobiteli', 1),
(17, '11.06.2020.', 'Iskopao GTA 3 ispod kuće', 'DVOJICA znanstvenika, jedan britanski i jedan norveški, objavili su nedavno studiju iz koje bi se moglo zaključiti da je virus SARS-CoV-2 umjetno stvoren u laboratoriju.\r\n\r\nPrema radu objavljenom u časopisu Quarterly Review of Biophysics, protein spike (šiljak) novog koronavirusa sadrži neke sekvence za koje se čini da su umjetno umetnute kako bi se uspješnost virusa povećala.', 'DVOJICA znanstvenika, jedan britanski i jedan norveški, objavili su nedavno studiju iz koje bi se moglo zaključiti da je virus SARS-CoV-2 umjetno stvoren u laboratoriju.\r\n\r\nPrema radu objavljenom u časopisu Quarterly Review of Biophysics, protein spike (šiljak) novog koronavirusa sadrži neke sekvence za koje se čini da su umjetno umetnute kako bi se uspješnost virusa povećala.DVOJICA znanstvenika, jedan britanski i jedan norveški, objavili su nedavno studiju iz koje bi se moglo zaključiti da je virus SARS-CoV-2 umjetno stvoren u laboratoriju.\r\n\r\nPrema radu objavljenom u časopisu Quarterly Review of Biophysics, protein spike (šiljak) novog koronavirusa sadrži neke sekvence za koje se čini da su umjetno umetnute kako bi se uspješnost virusa povećala.', 'posao.jpg', 'mobiteli', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `prezime` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `username` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `password` varchar(255) COLLATE latin2_croatian_ci NOT NULL,
  `razina` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `username`, `password`, `razina`) VALUES
(2, 'Adidas', 'Nike', 'neraidos', '$2y$10$EnXEtWPyGsrMTySf8jiU7egUZRbBfRjMoK5zTf0eIQCa4iZ3BGpvS', 0),
(6, 'Antonijo', 'Ćosić', 'matacyb', '$2y$10$TnBooZB5c/I5XbySBXHAjOUlD0v1oPLiYLUk9TZ68GzE2U76CSrZa', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
