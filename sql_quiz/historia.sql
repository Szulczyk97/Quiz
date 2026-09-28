-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2026 at 01:04 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia`
--

CREATE TABLE `historia` (
  `id` int(11) NOT NULL,
  `pytania` varchar(225) NOT NULL,
  `odp_a` varchar(200) NOT NULL,
  `odp_b` varchar(200) NOT NULL,
  `odp_c` varchar(200) NOT NULL,
  `odp_d` varchar(200) NOT NULL,
  `dobra_odp` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historia`
--

INSERT INTO `historia` (`id`, `pytania`, `odp_a`, `odp_b`, `odp_c`, `odp_d`, `dobra_odp`) VALUES
(1, 'Kto był pierwszym faraonem zjednoczonego Egiptu?', 'Ramzes II', 'Tutanchamon', 'Cheops', 'Narmer', 'D'),
(2, 'Jakie monumentalne budowle wznosili Egipcjanie jako grobowce dla faraonów?', 'Akropole', 'Zikkuraty', 'Piramidy', 'Kolosea', 'C'),
(3, 'Jaki system pisma był używany w starożytnym Egipcie?', 'System hieroglificzny', 'System Fenicki', 'System Grecki', 'System Klinowy', 'A'),
(4, 'Kim była ostatnia królowa Egiptu z dynastii Ptolemeuszy?', 'Merneith', 'Kleopatra VII', 'Hatszepsut', 'Nefertiti', 'B'),
(5, 'Jaki bóg był najważniejszym bóstwem w panteonie egipskim, często utożsamianym ze słońcem?', 'Ozyrys', 'Izyda', 'Ra', 'Horus', 'C'),
(6, 'Co to jest kanopa i do czego służyła?', 'Naczynie do przechowywania organów wewnętrznych zmarłego', 'Typ biżuterii', 'Narzędzie rolnicze', 'Rodzaj statku rzecznego', 'A'),
(7, 'Które z wymienionych państw nie wchodziło w skład starożytnego Egiptu?', 'Górny Egipt', 'Dolny Egipt', 'Oazy Zachodniej Pustyni', 'Nubia', 'D'),
(8, 'W jakim celu Egipcjanie praktykowali mumifikację?', 'Dla zachowania ciała na wypadek chorób', 'Jako ofiara dla bogów', 'Dla celów naukowych i badań anatomicznych', 'Dla zapewnienia zmarłemu życia wiecznego i podróży do zaświatów', 'D'),
(9, 'Kto jest uważany za ojca historii?', 'Sokrates', 'Tukidydes', 'Herodot', 'Platon', 'C'),
(10, 'Jak nazywano greckie miasto-państwo?', 'Monarchia', 'Polis', 'Kolonia', 'Imperium', 'B'),
(11, 'Które z miast-państw było znane z militarnego charakteru i surowego wychowania?', 'Teby', 'Korynt', 'Sparta', 'Ateny', 'C'),
(12, 'Kto był głównym bogiem w mitologii greckiej, władcą bogów i ludzi?', 'Zeus', 'Apollo', 'Posejdon', 'Hades', 'A'),
(13, 'W którym roku odbyły się pierwsze starożytne igrzyska olimpijskie?', '338 p.n.e.', '776 p.n.e.', '146 p.n.e.', '490 p.n.e.', 'B'),
(14, 'Która wojna toczyła się między Atenami a Spartą oraz ich sojusznikami?', 'Wojna trojańska', 'Wojna peloponeska', 'Wojny perskie', 'Wojny samnickie', 'B'),
(15, 'Kto był uczniem Platona i nauczycielem Aleksandra Wielkiego?', 'Pitagoras', 'Archimedes', 'Sokrates', 'Arystoteles', 'D'),
(16, 'Co oznacza słowo demokracja w kontekście starożytnych Aten?', 'Rządy królów', 'Władza ludu', 'Rządy wybranych przedstawicieli', 'Rządy nielicznych', 'B'),
(17, 'Kto dowodził wojskami greckimi w bitwie pod Termopilami przeciwko Persom?', 'Leonidas', 'Temistokles', 'Perykles', 'Kserkses', 'A'),
(18, 'Jak nazywa się szczyt, na którym mieszkali bogowie greccy?', 'Etna', 'Olimp', 'Akropol', 'Parnas', 'B'),
(19, 'Według legendy, kto był założycielem Rzymu?', 'Remus', 'Juliusz Cezar', 'Romulus', 'August', 'C'),
(20, 'Jakie zgromadzenie decydowało o najważniejszych sprawach w Republice Rzymskiej i składało się z byłych urzędników?', 'Zgromadzenie Tribusowe', 'Senat', 'Zgromadzenie Centurialne', 'Konsulat', 'B'),
(21, 'Kto był pierwszym cesarzem Rzymu?', 'August', 'Trajan', 'Juliusz Cezar', 'Neron', 'A'),
(22, 'Która monumentalna budowla w Rzymie służyła do walk gladiatorów i widowisk publicznych?', 'Panteon', 'Forum Romanum', 'Akwedukt', 'Koloseum', 'D'),
(23, 'Jaki był główny język używany w starożytnym Rzymie?', 'Grecki', 'Aramejski', 'Łacina', 'Hebrajski', 'C'),
(24, 'Przeciwko jakiemu państwu Rzym prowadził wojny punickie?', 'Grecja', 'Kartagina', 'Persja', 'Egipt', 'B'),
(25, 'Jakie prawo obowiązywało w starożytnym Rzymie i stanowiło podstawę późniejszych systemów prawnych?', 'Prawo Mojżeszowe', 'Prawo Ateńskie', 'Prawo Hammurabiego', 'Prawo Dwunastu Tablic', 'D'),
(26, 'Kto dowodził rzymskimi legionami i przekroczył rzekę Rubikon, wypowiadając słynne słowa Alea iacta est?', 'Marek Antoniusz', 'Pompejusz', 'Juliusz Cezar', 'Oktawian', 'C'),
(27, 'Co było głównym powodem upadku Cesarstwa Zachodniorzymskiego w 476 roku n.e.?', 'Wielkie migracje ludów i najazdy barbarzyńców', 'Zbyt szybki rozwój gospodarczy', 'Odkrycie Ameryki', 'Epidemia dżumy', 'A'),
(28, 'Jak nazywano rzymskie wojsko, podstawową jednostkę siły militarnej?', 'Hoplita', 'Kohorta', 'Legion', 'Falanga', 'C'),
(29, 'Kiedy tradycyjnie przyjmuje się początek średniowiecza w Europie Zachodniej?', '1066 n.e. (bitwa pod Hastings)', '800 n.e. (koronacja Karola Wielkiego)', '476 n.e. (upadek Cesarstwa Zachodniorzymskiego)', '330 n.e. (założenie Konstantynopola)', 'C'),
(30, 'Kto był twórcą Imperium Karolińskiego i pierwszym cesarzem odnowionego cesarstwa na Zachodzie?', 'Pepin Krótki', 'Karol Młot', 'Otton I', 'Karol Wielki', 'D'),
(31, 'Jak nazywano system społeczno-gospodarczy oparty na zależnościach między seniorem a wasalem?', 'Socjalizm', 'Kapitalizm', 'Feudalizm', 'Merkantylizm', 'C'),
(32, 'Jakie wydarzenia religijne zorganizowane przez chrześcijan miały na celu odbicie Ziemi Świętej z rąk muzułmanów?', 'Krucjaty', 'Inkwizycja', 'Schizma Wschodnia', 'Reformacja', 'A'),
(33, 'Która plaga zdziesiątkowała ludność Europy w XIV wieku?', 'Czarna Śmierć', 'Ospa', 'Trąd', 'Dżuma Justyniana', 'A'),
(34, 'Jak nazywano uniwersytety w średniowieczu?', 'Akademie', 'Studium Generale', 'Kolegia', 'Gimnazja', 'B'),
(35, 'Kto był autorem Sumy Teologicznej, jednego z najważniejszych dzieł filozofii scholastycznej?', 'Św. Tomasz z Akwinu', 'Św. Augustyn', 'Piotr Abelard', 'Św. Franciszek z Asyżu', 'A'),
(36, 'Jaki był główny styl architektoniczny wczesnego średniowiecza, charakteryzujący się grubymi murami i małymi oknami?', 'Barok', 'Gotyk', 'Romanizm', 'Renesans', 'C'),
(37, 'Kto jest autorem Boskiej Komedii, jednego z najważniejszych dzieł literatury średniowiecznej?', 'Petrarka', 'Dante Alighieri', 'Boccaccio', 'Chaucer', 'B'),
(38, 'Kiedy tradycyjnie przyjmuje się koniec średniowiecza?', '1517 n.e. (początek Reformacji)', '1000 n.e.', '1453 n.e. (zdobycie Konstantynopola przez Turków)', '1492 n.e. (odkrycie Ameryki przez Kolumba)', 'C'),
(39, 'W którym roku rozpoczęła się I wojna światowa?', '1918', '1912', '1916', '1914', 'D'),
(40, 'Jaka była bezpośrednia przyczyna wybuchu I wojny światowej?', 'Zabójstwo arcyksięcia Franciszka Ferdynanda', 'Aneksja Bośni i Hercegowiny przez Austro-Węgry', 'Kryzys marokański', 'Wojna rosyjsko-japońska', 'A'),
(41, 'Jakie były główne bloki militarne w I wojnie światowej?', 'Liga Narodów i Cesarstwa Centralne', 'Trójprzymierze i Trójporozumienie', 'NATO i Układ Warszawski', 'Państwa Osi i Alianci', 'B'),
(42, 'Jaki typ wojny dominował na froncie zachodnim?', 'Wojna manewrowa', 'Wojna błyskawiczna', 'Wojna pozycyjna', 'Wojna podjazdowa', 'C'),
(43, 'Która bitwa na froncie zachodnim w 1916 roku była jedną z najkrwawszych w historii?', 'Bitwa nad Marną', 'Bitwa pod Verdun', 'Bitwa pod Ypres', 'Bitwa pod Sommą', 'D'),
(44, 'Które państwo wycofało się z wojny w 1917 roku po rewolucji?', 'Rosja', 'Wielka Brytania', 'Francja', 'Niemcy', 'A'),
(45, 'Kto był prezydentem USA w czasie I wojny światowej i autorem Czternastu Punktów?', 'Franklin D. Roosevelt', 'Theodore Roosevelt', 'Woodrow Wilson', 'Abraham Lincoln', 'C'),
(46, 'Jaki traktat pokojowy zakończył I wojnę światową z Niemcami?', 'Traktat w Brześciu Litewskim', 'Traktat w Saint-Germain-en-Laye', 'Traktat w Trianon', 'Traktat wersalski', 'D'),
(47, 'Która nowa broń chemiczna została użyta na dużą skalę podczas I wojny światowej?', 'Agent Orange', 'Białofosfor', 'Napalm', 'Gaz musztardowy', 'D'),
(48, 'Kiedy zakończyła się I wojna światowa?', '7 maja 1945 roku', '1 września 1939 roku', '11 listopada 1918 roku', '28 czerwca 1919 roku', 'C'),
(49, 'Kiedy rozpoczęła się II wojna światowa?', '10 maja 1940 roku', '1 września 1938 roku', '1 września 1939 roku', '7 grudnia 1941 roku', 'C'),
(50, 'Jakie były główne bloki militarne w II wojnie światowej?', 'Państwa Osi i Alianci', 'NATO i Układ Warszawski', 'Trójprzymierze i Trójporozumienie', 'Państwa Centralne i Ententa', 'A'),
(51, 'Które wydarzenie symbolizuje przystąpienie USA do II wojny światowej?', 'Atak na Westerplatte', 'Atak na Pearl Harbor', 'Lądowanie w Normandii', 'Bitwa o Anglię', 'B'),
(52, 'Jaka operacja aliantów rozpoczęła się 6 czerwca 1944 roku i otworzyła drugi front w Europie Zachodniej?', 'Operacja Barbarossa', 'Operacja Overlord', 'Operacja Market Garden', 'Operacja Torch', 'B'),
(53, 'Które miasto niemieckie było celem intensywnych bombardowań dywanowych Aliantów pod koniec wojny, a jego centrum zostało niemal całkowicie zniszczone?', 'Berlin', 'Drezno', 'Hamburg', 'Kolonia', 'B'),
(54, 'Jaki cel miały tzw. marsze śmierci organizowane przez Niemców pod koniec wojny?', 'Przemieszczenie wojsk na nowe pozycje obronne', 'Ewakuacja cywilów przed nadchodzącym frontem', 'Wymiana jeńców wojennych', 'Zacieranie śladów zbrodni i likwidacja więźniów obozów koncentracyjnych', 'D'),
(55, 'Która konferencja Wielkiej Trójki (Roosevelt, Churchill, Stalin) odbyła się w lutym 1945 roku i dotyczyła powojennego ładu Europy?', 'Konferencja w Jałcie', 'Konferencja w Teheranie', 'Konferencja w Casablance', 'Konferencja w Poczdamie', 'A'),
(56, 'Kiedy Niemcy podpisały bezwarunkową kapitulację, kończąc II wojnę światową w Europie?', '6 czerwca 1944 roku', '30 kwietnia 1945 roku', '2 września 1945 roku', '8 maja 1945 roku', 'D'),
(57, 'Które dwa japońskie miasta zostały zbombardowane atomowo przez USA?', 'Nagasaki i Osaka', 'Pekin i Seul', 'Hiroszima i Nagasaki', 'Tokio i Kioto', 'C'),
(58, 'Kiedy zakończyła się II wojna światowa na świecie (całkowita kapitulacja Japonii)?', '14 sierpnia 1945 roku', '2 września 1945 roku', '15 sierpnia 1945 roku', '8 maja 1945 roku', 'B'),
(59, 'Na który wiek przypada okres Oświecenia?', 'XVI wiek', 'XVIII wiek', 'XVII wiek', 'XV wiek', 'B'),
(60, 'Jaka była główna idea Oświecenia?', 'Absolutna władza monarchy', 'Dominacja wiary nad rozumem', 'Nacisk na rozum, naukę i postęp', 'Powrót do wartości średniowiecznych', 'C'),
(61, 'Kto jest autorem encyklopedii, która stała się symbolem Oświecenia?', 'Wolter', 'Denis Diderot', 'Immanuel Kant', 'Jean-Jacques Rousseau', 'B'),
(62, 'Jaki władca był przykładem oświeconego absolutyzmu w Prusach?', 'Fryderyk Wielki', 'Ludwik XIV', 'Piotr I Wielki', 'Maria Teresa', 'A'),
(63, 'Kto sformułował zasadę trójpodziału władzy (ustawodawcza, wykonawcza, sądownicza)?', 'John Locke', 'Wolter', 'Jean-Jacques Rousseau', 'Monteskiusz', 'D'),
(64, 'Jaki wynalazek z okresu Oświecenia przyczynił się do rewolucji przemysłowej?', 'Teleskop', 'Maszyna parowa', 'Drukarnia', 'Kompas', 'B'),
(65, 'Kto był autorem koncepcji umowy społecznej, która zakładała, że władza pochodzi od społeczeństwa?', 'Jean-Jacques Rousseau', 'Monteskiusz', 'Wolter', 'Adam Smith', 'A'),
(66, 'Jaka była nazwa nurtu gospodarczego Oświecenia, który zakładał swobodę gospodarowania i minimalną interwencję państwa?', 'Fizjokratyzm', 'Merkantylizm', 'Socjalizm', 'Liberalizm ekonomiczny', 'D'),
(67, 'Jaki ważny dokument powstał w USA pod wpływem idei Oświecenia?', 'Deklaracja Niepodległości Stanów Zjednoczonych', 'Kodeks Hammurabiego', 'Konstytucja Cesarstwa Rzymskiego', 'Magna Carta', 'A'),
(68, 'Która z poniższych rewolucji była bezpośrednio inspirowana ideami Oświecenia?', 'Rewolucja Naukowa', 'Rewolucja Rosyjska', 'Rewolucja Francuska', 'Rewolucja Neolityczna', 'C'),
(69, 'Jaki portugalski odkrywca jako pierwszy dopłynął do Indii drogą morską, opływając Afrykę?', 'Vasco da Gama', 'Krzysztof Kolumb', 'Bartolomeu Dias', 'Ferdynand Magellan', 'A'),
(70, 'Co oznacza termin absolutyzm, dominujący w wielu monarchiach europejskich w epoce nowożytnej?', 'Podział władzy między króla a arystokrację', 'Władza króla pochodząca od ludu', 'Pełnia władzy państwowej skupiona w rękach monarchy, niepodlegającego żadnym ograniczeniom prawnym i kontroli', 'Władza króla ograniczona przez parlament i konstytucję', 'C'),
(71, 'Kto jest autorem teorii heliocentrycznej, która zrewolucjonizowała astronomię?', 'Mikołaj Kopernik', 'Isaac Newton', 'Galileusz', 'Johannes Kepler', 'A'),
(72, 'W jakim kraju doszło do chwalebnej rewolucji w 1688 roku, która doprowadziła do ustanowienia monarchii parlamentarnej?', 'Niemcy', 'Francja', 'Rosja', 'Anglia', 'D'),
(73, 'Która wojna, trwająca w latach 1618-1648, była jednym z najkrwawszych konfliktów w Europie i miała charakter religijny oraz polityczny?', 'Wojna Stuletnia', 'Wojna Trzydziestoletnia', 'Wojny napoleońskie', 'Wojna o sukcesję hiszpańską', 'B'),
(74, 'Kiedy tradycyjnie kończy się wczesna nowożytność i zaczyna nowożytność właściwa (współczesna)?', '1789 n.e. (Rewolucja Francuska)', '1815 n.e. (Kongres Wiedeński)', '1776 n.e. (Deklaracja Niepodległości USA)', '1648 n.e. (Pokój Westfalski)', 'A'),
(75, 'Kto jest uważany za jednego z najważniejszych polskich poetów romantycznych, autora Pana Tadeusza?', 'Cyprian Kamil Norwid', 'Juliusz Słowacki', 'Adam Mickiewicz', 'Zygmunt Krasiński', 'C'),
(76, 'Jaki motyw często pojawiał się w literaturze romantycznej, symbolizując dążenie do nieskończoności i tajemniczości?', 'Ruin zamków, cmentarzy i niesamowitych krajobrazów', 'Fabryki i postęp technologiczny', 'Życie codzienne mieszczan', 'Wielkie miasta i życie miejskie', 'A'),
(77, 'Jaka postawa charakteryzowała bohatera romantycznego?', 'Indywidualista, buntownik, nieszczęśliwie zakochany, często targany sprzecznymi uczuciami', 'Racjonalny myśliciel i pragmatyk', 'Człowiek pogodzony z losem i społeczeństwem', 'Uległy i konformistyczny obywatel', 'A'),
(78, 'Która dynastia jest uważana za pierwszą dynastię starożytnych Chin, choć jej istnienie jest częściowo legendarne?', 'Dynastia Shang', 'Dynastia Zhou', 'Dynastia Xia', 'Dynastia Qin', 'C'),
(79, 'Kto był pierwszym cesarzem zjednoczonych Chin i budowniczym Wielkiego Muru?', 'Qin Shi Huang', 'Laozi', 'Han Wudi', 'Konfucjusz', 'A'),
(80, 'Które osiągnięcie starożytnych Chin miało kluczowe znaczenie dla handlu na dalekie odległości i stworzyło słynny szlak handlowy?', 'Wynalezienie prochu', 'Wynalezienie papieru', 'Rozwój druku', 'Produkcja jedwabiu', 'D'),
(81, 'Która dynastia, panująca po dynastii Qin, jest uważana za złoty wiek starożytnych Chin, z dużym rozwojem kultury i technologii?', 'Dynastia Ming', 'Dynastia Tang', 'Dynastia Han', 'Dynastia Zhou', 'C'),
(82, 'Jaka była główna rola Wielkiego Muru Chińskiego?', 'Zalewanie pól ryżowych', 'Symbol potęgi cesarskiej i granicy przed najazdami koczowniczych plemion z północy', 'Miejsce zamieszkania cesarza', 'Ograniczenie handlu z sąsiadami', 'B'),
(83, 'Kto jest uważany za twórcę Taoizmu, filozofii akcentującej harmonię z naturą i zasadę wu wei?', 'Konfucjusz', 'Mengzi', 'Xunzi', 'Laozi', 'D'),
(84, 'Jaki wynalazek starożytnych Chin był pierwotnie używany do celów medycznych i rozrywkowych, zanim znalazł zastosowanie wojskowe?', 'Kompas', 'Jedwab', 'Proch strzelniczy', 'Papier', 'C'),
(85, 'Jaka rzeka jest nazywana kolebką cywilizacji chińskiej?', 'Rzeka Żółta', 'Rzeka Mekong', 'Długa Rzeka', 'Rzeka Perłowa', 'A'),
(86, 'Kiedy przypada okres, który możemy nazwać starożytnością na ziemiach polskich, poprzedzający powstanie państwa polskiego?', 'Od XVII do XIX wieku n.e.', 'Od I do IV wieku n.e.', 'Od V wieku p.n.e. do X wieku n.e.', 'Od X do XIII wieku n.e.', 'C'),
(87, 'Jaki typ osadnictwa był charakterystyczny dla wczesnych Słowian na ziemiach polskich?', 'Koczownicze obozy myśliwych', 'Rozległe, ufortyfikowane obozy wojskowe', 'Małe, rozproszone osady rolnicze i grody obronne', 'Duże, gęsto zaludnione miasta z kamienicami', 'C'),
(88, 'Jak nazywał się legendarny władca, według Galla Anonima poprzednik Mieszka I, który miał zostać wygnany za swoją tyranię?', 'Piast Kołodziej', 'Popiel', 'Leszek', 'Krak', 'B'),
(89, 'Jakie główne plemiona słowiańskie zamieszkiwały ziemie późniejszej Polski przed powstaniem państwa?', 'Polanie, Wiślanie, Mazowszanie, Ślężanie', 'Sasi i Bawarczycy', 'Rusini i Bułgarzy', 'Wikingowie i Normanowie', 'A'),
(90, 'Jaki słynny gród-osada z okresu kultury łużyckiej (ok. 700-400 p.n.e.) jest ważnym dowodem na rozwój osadnictwa w starożytnej Polsce?', 'Biskupin', 'Poznań', 'Gniezno', 'Kruszwica', 'A'),
(91, 'W jakim języku mówili pierwsi Słowianie, którzy zasiedlili ziemie polskie?', 'Prasłowiański', 'Starogrecki', 'Łacina', 'Starogermański', 'A'),
(92, 'Jak nazywano rzemieślników zajmujących się obróbką metali, którzy odgrywali ważną rolę w społeczeństwach plemiennych?', 'Tkacze', 'Rybacy', 'Kowale', 'Garncarze', 'C'),
(93, 'Jaki rodzaj gospodarki dominował na ziemiach polskich w okresie przedpaństwowym?', 'Gospodarka handlowa', 'Gospodarka myśliwsko-zbieracka', 'Gospodarka rolno-hodowlana', 'Gospodarka przemysłowa', 'C'),
(94, 'Jaki okres prehistoryczny w Japonii charakteryzował się rozwojem łowiectwa, zbieractwa i ceramiki, bez znajomości rolnictwa?', 'Okres Jomon', 'Okres Asuka', 'Okres Yayoi', 'Okres Kofun', 'A'),
(95, 'Kiedy do Japonii dotarły rolnictwo (uprawa ryżu), metalurgia i koło garncarskie, znacząco zmieniając społeczeństwo?', 'W okresie Nara', 'W okresie Kofun', 'W okresie Jomon', 'W okresie Yayoi', 'D'),
(96, 'W którym okresie historycznym w Japonii zbudowano monumentalne grobowce kurhanowe (kofuny) i pojawiły się figurki haniwa?', 'Okres Kofun', 'Okres Jomon', 'Okres Yayoi', 'Okres Asuka', 'A'),
(97, 'Jaka filozofia i religia z kontynentu azjatyckiego została wprowadzona do Japonii w VI wieku n.e. i wywarła ogromny wpływ na kulturę, sztukę i politykę?', 'Chrześcijaństwo', 'Hinduizm', 'Islam', 'Buddyzm', 'D'),
(98, 'Które z poniższych stwierdzeń najlepiej opisuje wczesną strukturę społeczną starożytnej Japonii?', 'Silny system kastowy podobny do indyjskiego', 'Struktura klanowa z dominującymi rodami i rosnącą rolą władcy Yamato', 'Demokratyczne zgromadzenia obywateli', 'Jednolita klasa chłopów i rzemieślników', 'B'),
(99, 'Jak nazywała się pierwsza stała angielska osada w Ameryce Północnej, założona w 1607 roku?', 'Jamestown', 'Boston', 'Nowy Amsterdam', 'Plymouth', 'A'),
(100, 'Kiedy Stany Zjednoczone ogłosiły Deklarację Niepodległości?', '1776 rok', '1789 rok', '1765 rok', '1783 rok', 'A'),
(101, 'Kto był pierwszym prezydentem Stanów Zjednoczonych?', 'Thomas Jefferson', 'John Adams', 'Benjamin Franklin', 'George Washington', 'D'),
(102, 'Jaka była główna przyczyna wojny secesyjnej (1861-1865) w USA?', 'Walka o prawa kobiet', 'Niewolnictwo i prawa stanów', 'Ekspansja terytorialna na zachód', 'Spór o taryfy celne', 'B'),
(103, 'Który kraj Ameryki Południowej był pierwotnie kolonią portugalską?', 'Argentyna', 'Peru', 'Meksyk', 'Brazylia', 'D'),
(104, 'Kiedy na tereny dzisiejszej Norwegii przybyli pierwsi ludzie po ustąpieniu lądolodu?', 'Około 2000 lat temu (początek naszej ery)', 'Około 5000 lat temu (Epoka Brązu)', 'Około 12 000 lat temu (Epoka Kamienia)', 'Około 1000 lat temu (wczesne średniowiecze)', 'C'),
(105, 'Jaki wynalazek techniczny był kluczowy dla sukcesów Wikingów w podbojach, handlu i eksploracji morskiej?', 'Długi statek', 'Wózek czterokołowy', 'Miecz dwuręczny', 'Koło garncarskie', 'A'),
(106, 'Kto jest uważany za pierwszego króla, który (choćby częściowo) zjednoczył Norwegię w IX wieku?', 'Haakon Dobry', 'Olaf Tryggvason', 'Erik Krwawy Topór', 'Harald Pięknowłosy', 'D'),
(107, 'Poza najazdami, co było inną kluczową działalnością Wikingów, która przyczyniła się do ich ekspansji i wpływów?', 'Tworzenie imperiów na wzór rzymski', 'Handel i odkrycia geograficzne', 'Budowa monumentalnych miast z kamienia', 'Wynalezienie prochu strzelniczego', 'B'),
(108, 'Która z religii, powstała w starożytnych Indiach, głosiła zasadę ahinsy (niekrzywdzenia) i ascezy, a jej założycielem był Mahawira?', 'Hinduizm', 'Sikhizm', 'Dźinizm', 'Buddyzm', 'C'),
(109, 'W jakim języku pisane były najważniejsze teksty religijne i filozoficzne starożytnych Indii, w tym Wedy i eposy?', 'Draweński', 'Sanskryt', 'Prakryt', 'Pali', 'B'),
(110, 'Co oznacza pojęcie karma w kontekście starożytnych wierzeń indyjskich (hinduizm, buddyzm, dźinizm)?', 'Prawo akcji i reakcji, określające konsekwencje czynów w kolejnych wcieleniach', 'Duchowa dyscyplina i medytacja', 'Oświecenie duchowe', 'Hierarchia społeczna', 'A'),
(111, 'Które plemiona celtyckie zamieszkiwały Brytanię przed przybyciem Rzymian?', 'Brytowie', 'Piktowie i Szkoci', 'Anglowie i Sasi', 'Wikingowie', 'A'),
(112, 'W którym roku Rzymianie, pod wodzą cesarza Klaudiusza, rozpoczęli podbój Brytanii?', '1066 n.e.', '410 n.e.', '43 n.e.', '55 p.n.e.', 'C'),
(113, 'Kiedy Rzymianie oficjalnie wycofali swoje wojska z Brytanii, pozostawiając prowincję na łasce najazdów?', '308 n.e.', '410 n.e.', '202 n.e.', '500 n.e.', 'B'),
(114, 'Kto jest uważany za założyciela Imperium Achemenidów, pierwszego wielkiego imperium perskiego?', 'Cyrus Wielki', 'Dariusz I Wielki', 'Artakserkses I', 'Kserkses I', 'A'),
(115, 'Jaka słynna droga, zbudowana przez Dariusza I, ułatwiała komunikację i handel w Imperium Achemenidów?', 'Droga Rzymska', 'Droga Kruszcu', 'Droga Królewska', 'Jedwabny Szlak', 'C'),
(116, 'Co było główną zaletą wojsk perskich, szczególnie w okresie Achemenidów?', 'Zaawansowane machiny oblężnicze', 'Elitarne jednostki piechoty', 'Dominacja ciężkiej kawalerii', 'Niezwyciężona flota morska', 'B'),
(117, 'Która z poniższych cech najlepiej opisuje podejście perskich królów Achemenidów do podbitych ludów?', 'Całkowita izolacja od podbitych terytoriów', 'Bezwzględna eksterminacja i asymilacja kulturowa', 'Narzucone rządy demokratyczne', 'Tolerancja religijna i kulturowa, z zachowaniem lokalnych zwyczajów i autonomii', 'D'),
(118, 'Jakie miasto stało się stolicą Rusi Kijowskiej i jej głównym centrum politycznym, religijnym i kulturalnym?', 'Moskwa', 'Kijów', 'Nowogród', 'Włodzimierz', 'B'),
(119, 'Który władca Rusi Kijowskiej dokonał chrystianizacji Rusi, przyjmując prawosławie z Bizancjum w 988 roku?', 'Olga Kijowska', 'Światosław I', 'Włodzimierz Wielki', 'Jarosław Mądry', 'C'),
(120, 'Jaki system fortyfikacji, złożony z murów, wałów i wież, Rzymianie zbudowali wzdłuż swojej granicy z Germanią?', 'Mur Chiński', 'Limes Germanicus', 'Wielki Mur Grecki', 'Mur Hadriana', 'B');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
