-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 11:09 PM
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
-- Struktura tabeli dla tabeli `biologia`
--

CREATE TABLE `biologia` (
  `id` int(11) NOT NULL,
  `pytania` varchar(225) NOT NULL,
  `odp_a` varchar(200) NOT NULL,
  `odp_b` varchar(200) NOT NULL,
  `odp_c` varchar(200) NOT NULL,
  `odp_d` varchar(200) NOT NULL,
  `dobra_odp` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biologia`
--

INSERT INTO `biologia` (`id`, `pytania`, `odp_a`, `odp_b`, `odp_c`, `odp_d`, `dobra_odp`) VALUES
(1, 'Która z poniższych struktur jest odpowiedzialna za syntezę białek w komórce?', 'Jądro komórkowe', 'Mitochondrium', 'Rybosom', 'Lizosom', 'C'),
(2, 'Jaki proces zachodzi w chloroplastach?', 'Oddychanie komórkowe', 'Fotosynteza', 'Trawienie', 'Replikacja DNA', 'B'),
(3, 'Co jest podstawową jednostką dziedziczności?', 'Chromosom', 'Allele', 'Gen', 'Nukleotyd', 'C'),
(4, 'Jak nazywa się proces, w którym woda przemieszcza się przez półprzepuszczalną błonę z obszaru wyższego stężenia wody do obszaru niższego stężenia wody?', 'Aktywny transport', 'Endocytoza', 'Dyfuzja', 'Osmoza', 'D'),
(5, 'Który z poniższych gazów jest głównym produktem ubocznym fotosyntezy?', 'Azot', 'Tlen', 'Dwutlenek węgla', 'Metan', 'B'),
(6, 'Która część ludzkiego mózgu jest odpowiedzialna za koordynację ruchów i równowagę?', 'Móżdżek', 'Podwzgórze', 'Pień mózgu', 'Mózgowie (kresomózgowie)', 'A'),
(7, 'Jak nazywa się proces, w którym organizm utrzymuje stałe warunki wewnętrzne, niezależnie od zmian w środowisku zewnętrznym?', 'Metabolizm', 'Adaptacja', 'Homeostaza', 'Ewolucja', 'C'),
(8, 'Który z poniższych czynników biotycznych dotyczy relacji drapieżnik-ofiara?', 'Symbioza', 'Pasożytnictwo', 'Konkurencja', 'Drapieżnictwo', 'D'),
(9, 'Jaki jest główny składnik błony komórkowej?', 'Białka', 'Węglowodany', 'Lipidy (dwuwarstwa lipidowa)', 'Kwasy nukleinowe', 'C'),
(10, 'Co oznacza termin gatunek w biologii?', 'Wszystkie organizmy należące do tego samego królestwa', 'Grupa organizmów żyjących w tym samym środowisku', 'Organizmy o podobnym wyglądzie', 'Grupa organizmów, które mogą się krzyżować i wydawać płodne potomstwo', 'D'),
(11, 'Który proces transportu przez błonę komórkową wymaga nakładu energii w postaci ATP?', 'Dyfuzja prosta', 'Osmoza', 'Transport aktywny', 'Dyfuzja ułatwiona', 'C'),
(12, 'Czym różni się osmoza od dyfuzji?', 'Osmoza zawsze wymaga energii, a dyfuzja nie', 'Nie ma między nimi żadnej różnicy', 'Osmoza to ruch wody przez błonę półprzepuszczalną, a dyfuzja to ogólny ruch cząsteczek', 'Osmoza dotyczy tylko gazów, a dyfuzja cieczy', 'C'),
(13, 'Podwzgórze w ludzkim mózgu jest kluczowe dla:', 'Przetwarzania informacji wzrokowych', 'Funkcji pamięciowych i uczenia się', 'Koordynacji skomplikowanych ruchów', 'Regulacji temperatury ciała, głodu i pragnienia', 'D'),
(14, 'Utrzymywanie stałej temperatury ciała u człowieka jest przykładem:', 'Adaptacji', 'Metabolizmu', 'Odpowiedzi immunologicznej', 'Homeostazy', 'D'),
(15, 'Relacja, w której jeden organizm odnosi korzyść, a drugi ponosi szkodę, to:', 'Konkurencja', 'Pasożytnictwo', 'Mutualizm', 'Komensalizm', 'B'),
(16, 'Aparat Golgiego w komórce jest odpowiedzialny za:', 'Produkcję energii (ATP)', 'Syntezę białek', 'Przechowywanie materiału genetycznego', 'Modyfikowanie, sortowanie i pakowanie białek oraz lipidów', 'D'),
(17, 'Błona komórkowa jest często opisywana jako płynna mozaika. Co to oznacza?', 'Składniki błony, takie jak białka i lipidy, mogą się przemieszczać względem siebie', 'Składa się wyłącznie z wody i jest całkowicie płynna', 'Ma stały, niezmienny wzór, przypominający mozaikę', 'Jest sztywną strukturą złożoną z wielu różnych typów cząsteczek', 'A'),
(18, 'Która z poniższych par organizmów NIE może być uznana za należącą do tego samego gatunku zgodnie z biologiczną definicją gatunku?', 'Koń i osioł, których potomstwem jest bezpłodny muł', 'Dwa rudziki o nieco innym ubarwieniu, ale zdolne do posiadania płodnego potomstwa', 'Dwa osobniki dębu szypułkowego rosnące w różnych lasach', 'Dwa psy różnych ras, które mają płodne szczenięta', 'A'),
(19, 'W łańcuchu pokarmowym roślina -> gąsienica -> wróbel -> jastrząb, wróbel jest:', 'Konsumentem III rzędu', 'Producentem', 'Konsumentem II rzędu', 'Konsumentem I rzędu', 'C'),
(20, 'Centralny układ nerwowy u człowieka składa się z:', 'Mózgowia i rdzenia kręgowego', 'Tylko z mózgowia', 'Rdzenia kręgowego i nerwów czaszkowych', 'Mózgowia i wszystkich nerwów w ciele', 'A'),
(21, 'Komórka roślinna została umieszczona w roztworze hipotonicznym (o niższym stężeniu substancji rozpuszczonych niż we wnętrzu komórki). Co się z nią stanie?', 'Pęknie z powodu nadmiaru wody', 'Nic się nie zmieni', 'Osiągnie stan turgoru (jędrności)', 'Ulegnie plazmolizie (skurczy się)', 'C'),
(22, 'Jaka jest główna różnica między transportem aktywnym a dyfuzją ułatwioną?', 'Transport aktywny przemieszcza substancje wbrew gradientowi stężeń, a dyfuzja ułatwiona zgodnie z nim', 'Oba procesy wymagają energii ATP', 'Dyfuzja ułatwiona nie wymaga białek błonowych', 'Transport aktywny dotyczy tylko wody', 'A'),
(23, 'Co jest podstawową funkcją siateczki śródplazmatycznej gładkiej (SER)?', 'Produkcja energii (ATP)', 'Synteza lipidów i detoksykacja', 'Trawienie wewnątrzkomórkowe', 'Synteza białek na eksport', 'B'),
(24, 'Jeśli przypadkowo dotkniesz gorącego przedmiotu, który element układu nerwowego zareaguje najszybciej, inicjując odruch cofnięcia ręki?', 'Móżdżek', 'Rdzeń kręgowy', 'Mózgowie', 'Nerwy obwodowe', 'B'),
(25, 'Wzrost poziomu cukru we krwi po posiłku stymuluje trzustkę do wydzielania insuliny, która powoduje spadek poziomu cukru. To jest przykład:', 'Sprzężenia zwrotnego dodatniego', 'Reakcji odruchowej', 'Sprzężenia zwrotnego ujemnego', 'Odpowiedzi alergicznej', 'C'),
(26, 'W pewnym ekosystemie leśnym dzięcioły żywią się owadami żyjącymi pod korą drzew, a sowy polują na myszy. Jaka relacja występuje między dzięciołem a sową?', 'Drapieżnictwo', 'Neutralizm', 'Konkurencja', 'Mutualizm', 'B'),
(27, 'Czym jest poziom troficzny organizmu?', 'Jego siedliskiem (miejscem życia)', 'Jego pozycją w łańcuchu pokarmowym', 'Jego zdolnością do adaptacji', 'Liczbą potomstwa, które wydaje', 'B'),
(28, 'Która struktura komórkowa jest często nazywana elektrownią komórki?', 'Mitochondrium', 'Rybosom', 'Aparat Golgiego', 'Jądro komórkowe', 'A'),
(29, 'Dlaczego model płynnej mozaiki jest dobrym opisem błony komórkowej?', 'Ponieważ ma stały, niezmienny wzór jak dzieło sztuki', 'Ponieważ błona jest sztywna jak mozaika i płynna jak woda', 'Ponieważ przepuszcza tylko wodę, która jest płynem', 'Ponieważ składa się z różnych cząsteczek, które mogą się swobodnie przemieszczać', 'D'),
(30, 'Pojęcie nisza ekologiczna odnosi się do:', 'Tylko diety danego gatunku', 'Całkowitej roli gatunku w ekosystemie, w tym jego diety i interakcji z innymi gatunkami', 'Liczebności populacji danego gatunku', 'Wyłącznie miejsca, w którym żyje organizm', 'B'),
(31, 'Która z wymienionych struktur jest charakterystyczna dla komórek roślinnych, ale nie występuje w komórkach zwierzęcych?', 'Jądro komórkowe', 'Mitochondrium', 'Rybosom', 'Ściana komórkowa', 'D'),
(32, 'W jaki sposób rośliny produkują własne pożywienie?', 'Fotosynteza', 'Chemosynteza', 'Oddychanie komórkowe', 'Fermentacja', 'A'),
(33, 'Co jest główną funkcją czerwonych krwinek w organizmie człowieka?', 'Krzepnięcie krwi', 'Transport tlenu do tkanek', 'Produkcja przeciwciał', 'Walka z infekcjami', 'B'),
(34, 'W łańcuchu pokarmowym: trawa -> zając -> lis -> wilk, kto jest konsumentem trzeciego rzędu?', 'Lis', 'Trawa', 'Zając', 'Wilk', 'D'),
(35, 'Co to jest enzym?', 'Białko pełniące funkcję katalizatora w reakcjach biologicznych', 'Składnik błony komórkowej odpowiedzialny za transport jonów', 'Rodzaj kwasu nukleinowego przenoszącego informację genetyczną', 'Substancja zapasowa magazynowana w komórkach roślinnych', 'A'),
(36, 'Proces, w którym komórki organizmu wielokomórkowego różnicują się, aby pełnić specyficzne funkcje, nazywamy:', 'Apoptozą', 'Specjalizacją komórek', 'Mejozą', 'Mitozą', 'B'),
(37, 'Jaka jest rola chlorofilu w procesie fotosyntezy?', 'Transport wody w roślinie', 'Wychwytywanie dwutlenku węgla', 'Absorpcja energii świetlnej', 'Magazynowanie glukozy', 'C'),
(38, 'Która z wymienionych struktur jest głównym miejscem wymiany gazowej (tlenu i dwutlenku węgla) w płucach człowieka?', 'Pęcherzyki płucne', 'Oskrzeliki', 'Oskrzela', 'Tchawica', 'A'),
(39, 'Co to jest populacja w ekologii?', 'Wszystkie gatunki roślin i zwierząt żyjące na danym obszarze', 'Grupa organizmów różnych gatunków współistniejących w jednym siedlisku', 'Całość środowiska nieożywionego na danym terenie', 'Grupa osobników tego samego gatunku, żyjących na tym samym obszarze w tym samym czasie', 'D'),
(40, 'Które z podanych poniżej jest przykładem kości długiej w szkielecie człowieka?', 'Rzepka (kość kolanowa)', 'Kość udowa', 'Kość płaska czaszki', 'Kręg (w kręgosłupie)', 'B'),
(41, 'Co się stanie z komórką zwierzęcą (np. czerwoną krwinką) umieszczoną w wodzie destylowanej (roztworze hipotonicznym)?', 'Skurczy się z powodu utraty wody', 'Nic się nie zmieni', 'Pęknie (ulegnie lizie)', 'Zacznie aktywnie wypompowywać wodę', 'C'),
(42, 'Głównymi produktami fazy jasnej fotosyntezy, które są wykorzystywane w cyklu Calvina (faza ciemna), są:', 'Woda i dwutlenek węgla', 'Glukoza i tlen', 'Tylko ATP', 'ATP i NADPH', 'D'),
(43, 'Działanie enzymów jest specyficzne. Co to oznacza?', 'Wszystkie enzymy w organizmie mają taką samą budowę', 'Enzymy działają tylko w jednej, określonej temperaturze', 'Dany enzym zazwyczaj łączy się tylko z jednym, konkretnym substratem', 'Każdy enzym może przyspieszać wiele różnych typów reakcji', 'C'),
(44, 'W lesie grzyby rozkładają martwą materię organiczną (np. opadłe liście). W łańcuchu pokarmowym pełnią one rolę:', 'Producentów', 'Konsumentów II rzędu', 'Destruentów', 'Konsumentów I rzędu', 'C'),
(45, 'Wszystkie populacje różnych gatunków żyjące na tym samym obszarze i wchodzące ze sobą w interakcje to:', 'Biocenoza', 'Biotop', 'Ekosystem', 'Populacja', 'A'),
(46, 'Lizosomy to organella komórkowe, których główną funkcją jest:', 'Synteza lipidów', 'Trawienie wewnątrzkomórkowe', 'Pakowanie i modyfikacja białek', 'Produkcja ATP', 'B'),
(47, 'W jaki sposób tlen z pęcherzyków płucnych przenika do krwi w naczyniach włosowatych?', 'Przez transport aktywny wymagający ATP', 'Poprzez specjalne pompy jonowe', 'Na zasadzie dyfuzji', 'Dzięki osmozie', 'C'),
(48, 'Relacja między lwem a hieną, które polują na te same antylopy i często walczą o padlinę, jest przykładem:', 'Pasożytnictwa', 'Drapieżnictwa', 'Konkurencji międzygatunkowej', 'Komensalizmu', 'C'),
(49, 'Która z poniższych jest powszechną bakteryjną chorobą przenoszoną drogą płciową, która może prowadzić do niepłodności, jeśli nie zostanie wyleczona?', 'Wirus brodawczaka ludzkiego (HPV)', 'HIV/AIDS', 'Kiła', 'Opryszczka narządów płciowych', 'C'),
(50, 'Spadek poziomu wapnia we krwi powoduje wydzielanie parathormonu, który podnosi jego poziom. Gdy poziom wapnia wróci do normy, wydzielanie parathormonu zostaje zahamowane. Jest to przykład:', 'Sprzężenia zwrotnego ujemnego', 'Reakcji alergicznej', 'Sprzężenia zwrotnego dodatniego', 'Odruchu bezwarunkowego', 'A'),
(51, 'Jaki jest główny cel procesu oddychania komórkowego w ludzkim ciele?', 'Detoksykacja substancji szkodliwych', 'Uwalnianie energii w postaci ATP', 'Wytwarzanie glukozy', 'Produkcja tlenu', 'B'),
(52, 'Która z poniższych struktur jest odpowiedzialna za filtrowanie krwi i produkcję moczu?', 'Wątroba', 'Trzustka', 'Śledziona', 'Nerka', 'D'),
(53, 'Jaka jest rola hemoglobiny w ludzkim organizmie?', 'Transport tlenu', 'Transport lipidów', 'Ochrona przed patogenami', 'Regulacja poziomu cukru we krwi', 'A'),
(54, 'Jaka jest funkcja trzustki w układzie pokarmowym i hormonalnym?', 'Wytwarzanie kwasu solnego i pepsyny', 'Produkcja insuliny i enzymów trawiennych', 'Produkcja żółci i detoksykacja krwi', 'Wchłanianie wody i elektrolitów z pokarmu', 'B'),
(55, 'Która warstwa skóry zawiera głównie tkankę tłuszczową i służy jako izolacja termiczna oraz magazyn energii?', 'Tkanka podskórna', 'Naskórek', 'Skóra właściwa', 'Błona podstawna', 'A'),
(56, 'Co jest główną funkcją limfocytów w układzie odpornościowym?', 'Krzepnięcie krwi', 'Fagocytoza bakterii', 'Produkcja przeciwciał i rozpoznawanie patogenów', 'Transport tlenu', 'C'),
(57, 'Który z poniższych hormonów jest odpowiedzialny za obniżanie poziomu glukozy we krwi?', 'Adrenalina', 'Glukagon', 'Tyroksyna', 'Insulina', 'D'),
(58, 'Kości połączone ze sobą za pomocą stawów umożliwiają ruch. Co jest główną funkcją płynu stawowego (mazi stawowej)?', 'Wzmocnienie kości', 'Odżywianie chrząstki i zmniejszanie tarcia', 'Produkcja komórek krwi', 'Łączenie mięśni z kośćmi', 'B'),
(59, 'Jaka jest rola kosmków jelitowych w jelicie cienkim?', 'Transport niestrawionych resztek do jelita grubego', 'Produkcja enzymów trawiennych', 'Zwiększanie powierzchni wchłaniania składników odżywczych', 'Magazynowanie tłuszczu', 'C'),
(60, 'Która część serca pompuje utlenowaną krew do aorty, a następnie do reszty ciała?', 'Lewa komora', 'Prawa komora', 'Prawy przedsionek', 'Lewy przedsionek', 'A'),
(61, 'Jaki jest główny cel trawienia mechanicznego pokarmu w jamie ustnej?', 'Rozpoczęcie trawienia białek', 'Zwiększenie powierzchni kontaktu z enzymami trawiennymi', 'Produkcja insuliny', 'Wchłanianie składników odżywczych', 'B'),
(62, 'Która część mózgu jest głównym ośrodkiem przetwarzania informacji sensorycznych (z wyjątkiem węchu) przed przekazaniem ich do kory mózgowej?', 'Wzgórze', 'Podwzgórze', 'Móżdżek', 'Pień mózgu', 'A'),
(63, 'Jaka jest główna funkcja hormonu tyroksyny, wydzielanego przez tarczycę?', 'Stymulacja wzrostu kości', 'Obniżanie poziomu glukozy we krwi', 'Kontrola metabolizmu i tempa przemian energetycznych', 'Regulacja poziomu wapnia we krwi', 'C'),
(64, 'Która część nefronu jest odpowiedzialna za filtrację krwi, tworząc przesącz pierwotny?', 'Kłębuszek nerkowy z torebką Bowmana', 'Pętla Henlego', 'Cewka kręta bliższa', 'Cewka zbiorcza', 'A'),
(65, 'Mięśnie szkieletowe są zdolne do skurczu dzięki współdziałaniu dwóch głównych białek kurczliwych. Jakie to białka?', 'Fibrynogen i protrombina', 'Aktyna i miozyna', 'Kolagen i elastyna', 'Keratyna i melanina', 'B'),
(66, 'Jaka jest główna funkcja gruczołów potowych w skórze?', 'Produkcja sebum', 'Termoregulacja i wydalanie niektórych produktów przemiany materii', 'Synteza witaminy D', 'Ochrona przed promieniowaniem UV', 'B'),
(67, 'Odporność nabyta, w przeciwieństwie do wrodzonej, charakteryzuje się:', 'Zawsze taką samą siłą odpowiedzi, niezależnie od liczby ekspozycji', 'Brakiem pamięci immunologicznej', 'Natychmiastową i niespecyficzną reakcją', 'Specyficznością i pamięcią immunologiczną', 'D'),
(68, 'Która struktura oka odpowiada za skupianie światła na siatkówce, umożliwiając ostre widzenie obiektów znajdujących się w różnych odległościach?', 'Rogówka', 'Źrenica', 'Soczewka', 'Tęczówka', 'C'),
(69, 'Która część neuronu odbiera sygnały z innych komórek nerwowych?', 'Dendryt', 'Osłonka mielinowa', 'Ciało komórki', 'Akson', 'A'),
(70, 'Za co odpowiada autonomiczny układ nerwowy?', 'Regulacja niezależnych od woli funkcji narządów wewnętrznych (np. bicie serca, trawienie)', 'Świadome ruchy mięśni szkieletowych', 'Przetwarzanie informacji sensorycznych (np. wzrok, słuch)', 'Koordynacja równowagi i postawy ciała', 'A'),
(71, 'W jaki sposób oko ludzkie dostosowuje się do widzenia w różnych odległościach (akomodacja)?', 'Poprzez zmianę średnicy źrenicy', 'Poprzez wydzielanie płynu do komory przedniej oka', 'Poprzez ruch całej gałki ocznej', 'Poprzez zmianę kształtu soczewki', 'D'),
(72, 'Które komórki światłoczułe siatkówki są odpowiedzialne głównie za widzenie w warunkach słabego oświetlenia (widzenie zmierzchowe)?', 'Komórki zwojowe', 'Czopki', 'Pręciki', 'Komórki dwubiegunowe', 'C'),
(73, 'Gdzie w uchu znajduje się narząd Cortiego, kluczowy dla percepcji dźwięku?', 'W uchu zewnętrznym (np. małżowina uszna)', 'W ślimaku ucha wewnętrznego', 'W kanalikach półkolistych', 'W uchu środkowym (np. kosteczki słuchowe)', 'B'),
(74, 'Ile chromosomów płciowych posiada typowa komórka somatyczna człowieka?', '46', '2', '23', '1', 'B'),
(75, 'Jaka jest rola mRNA (informacyjnego RNA) w procesie ekspresji genów?', 'Katalizowanie reakcji chemicznych w komórce', 'Przenoszenie informacji genetycznej z DNA w jądrze do rybosomów w cytoplazmie w celu syntezy białek', 'Przenoszenie aminokwasów do rybosomów', 'Tworzenie dwuniciowej helisy DNA', 'B'),
(76, 'Co to jest allele?', 'Cały chromosom', 'Rodzaj białka występującego w komórce', 'Różne warianty tego samego genu', 'Jednostka anatomiczna układu nerwowego', 'C'),
(77, 'Co zwiastuje początek fazy folikularnej cyklu menstruacyjnego?', 'Początek krwawienia miesiączkowego', 'Szczyt wydzielania progesteronu', 'Zagnieżdżenie się zarodka', 'Owulacja', 'A'),
(78, 'Jaką rolę odgrywa podwzgórze w układzie nerwowym i hormonalnym?', 'Kontroluje świadome ruchy i myślenie', 'Generuje impulsy nerwowe do mięśni szkieletowych', 'Odpowiada za przetwarzanie informacji wzrokowych', 'Reguluje homeostazę i jest łącznikiem między układem nerwowym a hormonalnym', 'D'),
(79, 'Która kość tworzy część stawu kolanowego i jest największą kością w ludzkim ciele?', 'Kość piszczelowa', 'Kość strzałkowa', 'Kość udowa', 'Rzepka', 'C'),
(80, 'Gdzie w organizmie człowieka produkowane są erytrocyty (czerwone krwinki) u dorosłych?', 'Wątroba', 'Szpik kostny czerwony', 'Węzły chłonne', 'Śledziona', 'B'),
(81, 'Jaka jest główna funkcja kwasu solnego w żołądku?', 'Aktywacja pepsynogenu do pepsyny i denaturacja białek', 'Produkcja żółci', 'Neutralizacja pokarmu', 'Wchłanianie składników odżywczych', 'A'),
(82, 'Która część mózgu odpowiada za wyższe funkcje poznawcze, takie jak myślenie, pamięć i świadomość?', 'Pień mózgu', 'Móżdżek', 'Rdzeń kręgowy', 'Kora mózgowa', 'D'),
(83, 'Które z poniższych stwierdzeń najlepiej opisuje funkcję hormonów?', 'Są to enzymy przyspieszające reakcje chemiczne w komórkach', 'Stanowią główny składnik błon komórkowych', 'Pełnią rolę chemicznych posłańców, regulujących aktywność komórek i narządów', 'To białka budujące struktury komórkowe', 'C'),
(84, 'Jaką rolę odgrywa wątroba w detoksykacji organizmu?', 'Filtruje krew i usuwa nadmiar wody', 'Magazynuje wapń i fosfor', 'Przetwarza i neutralizuje toksyny, leki i zbędne produkty przemiany materii', 'Wytwarza hormony regulujące poziom cukru we krwi', 'C'),
(85, 'W ludzkiej krwi, która z poniższych komórek jest odpowiedzialna za transport tlenu?', 'Limfocyty', 'Trombocyty', 'Erytrocyty', 'Leukocyty', 'C'),
(86, 'Jaka jest rola receptorów bólowych (nocyceptorów) w skórze?', 'Wykrywanie potencjalnie szkodliwych bodźców (np. silny ucisk, wysoka temperatura, chemikalia)', 'Rozróżnianie kolorów', 'Rejestrowanie dotyku i nacisku', 'Wykrywanie zmian temperatury', 'A'),
(87, 'W jaki sposób mięsień kurczy się na poziomie molekularnym zgodnie z teorią ślizgających się filamentów?', 'Jony wapnia bezpośrednio wywołują denaturację białek mięśniowych', 'Głowy miozyny wiosłują po filamentach aktynowych, pociągając je do środka sarkomeru', 'Aktyna i miozyna skracają się jednocześnie', 'Miozyna wydłuża się, podczas gdy aktyna pozostaje stała', 'B'),
(88, 'Co jest funkcją białych krwinek (leukocytów) w ludzkim organizmie?', 'Produkcja hormonów', 'Krzepnięcie krwi w przypadku urazów', 'Transport tlenu do tkanek', 'Obrona organizmu przed infekcjami i chorobami', 'D'),
(89, 'Jaki jest termin określający różnorodność życia na świecie lub w danym siedlisku lub ekosystemie?', 'Monokultura', 'Biogeografia', 'Ekologia', 'Bioróżnorodność', 'D'),
(90, 'Który z poniższych gazów jest głównie odpowiedzialny za efekt cieplarniany na Ziemi?', 'Dwutlenek węgla', 'Azot', 'Tlen', 'Argon', 'A'),
(91, 'Jakie są podstawowe jednostki budulcowe białek?', 'Nukleotydy', 'Glukoza', 'Kwasy tłuszczowe', 'Aminokwasy', 'D'),
(92, 'Który biom charakteryzuje się wieczną zmarzliną i niską roślinnością, taką jak mchy i porosty?', 'Las deszczowy tropikalny', 'Pustynia', 'Tundra', 'Tajga', 'C'),
(93, 'Czym jest selekcja naturalna?', 'Proces, w którym organizmy lepiej przystosowane do środowiska mają większe szanse na przeżycie i rozmnażanie', 'Proces tworzenia nowych gatunków poprzez inżynierię genetyczną', 'Proces, w którym ludzie hodują zwierzęta i rośliny o określonych cechach', 'Losowa zmiana częstości alleli w populacji', 'A'),
(94, 'Jaka jest główna rola dekompozytorów (takich jak bakterie i grzyby) w ekosystemie?', 'Konsumowanie pierwotnych konsumentów', 'Wytwarzanie pożywienia poprzez fotosyntezę', 'Rozkładanie martwej materii organicznej i zwracanie składników odżywczych do gleby', 'Regulowanie wielkości populacji roślinożerców', 'C'),
(95, 'Który z poniższych jest uważany za największy ziemski biom zwierzęcy?', 'Lasy', 'Tundra', 'Trawy', 'Pustynie', 'A'),
(96, 'Jaki układ narządów jest odpowiedzialny za pompowanie krwi w całym ciele?', 'Układ krwionośny', 'Układ nerwowy', 'Układ pokarmowy', 'Układ oddechowy', 'A'),
(97, 'Który typ stawu charakteryzuje się najszerszym zakresem ruchu?', 'Staw siodełkowy', 'Staw śrubowy', 'Staw kulisty', 'Staw zawiasowy', 'C'),
(98, 'Jaka jest główna funkcja nerek?', 'Filtrowanie krwi i usuwanie odpadów', 'Wymiana gazowa', 'Trawienie pokarmu', 'Produkcja żółci', 'A'),
(99, 'Który z poniższych jest przykładem mięśnia mimowolnego?', 'Mięsień naramienny', 'Mięsień dwugłowy ramienia', 'Mięsień sercowy', 'Mięsień czworogłowy uda', 'C'),
(100, 'Jakie są podstawowe jednostki funkcjonalne układu nerwowego?', 'Alweole', 'Neurony', 'Osteocyty', 'Nefrony', 'B'),
(101, 'Która witamina jest niezbędna do krzepnięcia krwi?', 'Witamina D', 'Witamina B12', 'Witamina C', 'Witamina K', 'D'),
(102, 'Gdzie w ludzkim układzie pokarmowym zachodzi większość wchłaniania składników odżywczych?', 'Przełyk', 'Jelito cienkie', 'Jelito grube', 'Żołądek', 'B'),
(103, 'Jakie białko w czerwonych krwinkach jest kluczowe do transportu tlenu?', 'Kreatyna', 'Hemoglobina', 'Kolagen', 'Miozyna', 'B'),
(104, 'Który z poniższych stawów jest przykładem stawu zawiasowego, umożliwiającego ruch głównie w jednej płaszczyźnie (zginanie i prostowanie)?', 'Staw biodrowy', 'Staw nadgarstkowy', 'Staw kolanowy', 'Staw barkowy', 'C'),
(105, 'Jaki rodzaj tkanki mięśniowej, działającej niezależnie od naszej woli, buduje ściany narządów wewnętrznych, takich jak jelita i żołądek?', 'Tkanka chrzęstna', 'Mięśniowa poprzecznie prążkowana serca', 'Mięśniowa poprzecznie prążkowana szkieletowa', 'Mięśniowa gładka', 'D'),
(106, 'Który płat kory mózgowej jest głównie odpowiedzialny za przetwarzanie informacji wzrokowych?', 'Płat skroniowy', 'Płat ciemieniowy', 'Płat czołowy', 'Płat potyliczny', 'D'),
(107, 'Jak nazywa się elastyczna, gładka tkanka łączna, która pokrywa końce kości w stawach, zmniejszając tarcie?', 'Ścięgno', 'Ochrzęstna', 'Chrząstka stawowa', 'Więzadło', 'C'),
(108, 'Który hormon, wydzielany przez nadnercza w sytuacjach stresowych, powoduje przyspieszenie tętna, wzrost ciśnienia krwi i przygotowuje organizm do reakcji walcz lub uciekaj?', 'Testosteron', 'Adrenalina', 'Melatonina', 'Insulina', 'B'),
(109, 'W odpowiedzi na spadek poziomu glukozy we krwi trzustka uwalnia glukagon. Jaki jest główny cel działania tego hormonu?', 'Stymulacja wątroby do uwolnienia zmagazynowanej glukozy', 'Zmniejszenie apetytu i pragnienia', 'Zwiększenie wchłaniania glukozy przez komórki', 'Zwiększenie produkcji czerwonych krwinek', 'A'),
(110, 'Który z poniższych stawów jest najlepszym przykładem stawu kulistego, pozwalającego na ruch we wszystkich płaszczyznach?', 'Staw barkowy', 'Staw kolanowy', 'Staw łokciowy', 'Staw skokowy', 'A'),
(111, 'Kolagen i hemoglobina to białka, ale pełnią zupełnie inne funkcje. Które zdanie poprawnie je opisuje?', 'Kolagen transportuje tlen, a hemoglobina tworzy strukturę skóry', 'Oba białka są enzymami przyspieszającymi reakcje chemiczne', 'Hemoglobina to białko transportowe, a kolagen to białko strukturalne', 'Oba białka są kluczowe dla skurczu mięśni', 'C'),
(112, 'Staw siodełkowy, znajdujący się u podstawy kciuka, pozwala na charakterystyczne dla człowieka ruchy. Jaki ruch jest dla niego typowy?', 'Przeciwstawianie kciuka pozostałym palcom', 'Brak jakiegokolwiek ruchu', 'Tylko zginanie i prostowanie', 'Ruch obrotowy wokół własnej osi', 'A'),
(113, 'Czym jest synapsa?', 'Osłonka otaczająca akson neuronu', 'Miejsce komunikacji między dwoma neuronami', 'Struktura filtrująca w nerce', 'Miejsce połączenia mięśnia z kością', 'B'),
(114, 'Wzrok i słuch to różne zmysły, przetwarzane w innych częściach mózgu. Które stwierdzenie poprawnie przypisuje płat mózgu do zmysłu?', 'Słuch - płat skroniowy, Wzrok - płat potyliczny', 'Słuch - płat czołowy, Wzrok - płat ciemieniowy', 'Słuch - płat potyliczny, Wzrok - płat skroniowy', 'Słuch - płat ciemieniowy, Wzrok - płat czołowy', 'A'),
(115, 'Jak nazywa się płynny składnik krwi, który stanowi ponad połowę jej objętości i w którym zawieszone są komórki krwi?', 'Osocze', 'Surowica', 'Limfa', 'Płyn mózgowo-rdzeniowy', 'A'),
(116, 'Jaka jest główna funkcja najądrza w męskim układzie rozrodczym?', 'Transport moczu i nasienia', 'Magazynowanie i dojrzewanie plemników', 'Produkcja płynu nasiennego', 'Produkcja plemników', 'B'),
(117, 'Gdzie w żeńskim układzie rozrodczym zazwyczaj dochodzi do zapłodnienia komórki jajowej przez plemnik?', 'W pochwie', 'W jajowodzie', 'W jajniku', 'W macicy', 'B'),
(118, 'Które dwa hormony są kluczowe dla utrzymania błony śluzowej macicy (endometrium) podczas wczesnej ciąży?', 'Estrogen i progesteron', 'Insulina i glukagon', 'Hormon wzrostu i prolaktyna', 'Testosteron i estrogen', 'A'),
(119, 'Jak nazywa się proces produkcji plemników w męskich gonadach?', 'Owogeneza', 'Menstruacja', 'Spermatogeneza', 'Fertylizacja', 'C'),
(120, 'Jaki proces odpowiada za tworzenie i dojrzewanie komórek jajowych w jajnikach?', 'Implantacja', 'Spermatogeneza', 'Owulacja', 'Owogeneza', 'D');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `biologia`
--
ALTER TABLE `biologia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biologia`
--
ALTER TABLE `biologia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
