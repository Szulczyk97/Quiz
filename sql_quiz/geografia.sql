-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 07:57 PM
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
-- Struktura tabeli dla tabeli `geografia`
--

CREATE TABLE `geografia` (
  `id` int(11) NOT NULL,
  `pytania` varchar(225) NOT NULL,
  `odp_a` varchar(200) NOT NULL,
  `odp_b` varchar(200) NOT NULL,
  `odp_c` varchar(200) NOT NULL,
  `odp_d` varchar(200) NOT NULL,
  `dobra_odp` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geografia`
--

INSERT INTO `geografia` (`id`, `pytania`, `odp_a`, `odp_b`, `odp_c`, `odp_d`, `dobra_odp`) VALUES
(1, 'Która góra jest najwyższa na świecie?', 'Mount Everest', 'Lhotse', 'K2', 'Kangchenjunga', 'A'),
(2, 'Jaka jest najdłuższa rzeka na świecie?', 'Missisipi', 'Amazonka', 'Nil', 'Jangcy', 'C'),
(3, 'Który ocean jest największy na świecie?', 'Ocean Atlantycki', 'Ocean Spokojny', 'Ocean Indyjski', 'Ocean Arktyczny', 'B'),
(4, 'Jaka jest największa gorąca pustynia na świecie?', 'Kalahari', 'Gobi', 'Arabska', 'Sahara', 'D'),
(5, 'Który kontynent jest największy pod względem powierzchni?', 'Europa', 'Ameryka Północna', 'Afryka', 'Azja', 'D'),
(6, 'Który kraj jest również kontynentem?', 'Australia', 'Grenlandia', 'Wielka Brytania', 'Madagaskar', 'A'),
(7, 'Które miasto jest stolicą Chin?', 'Szanghaj', 'Tokio', 'Pekin', 'Seul', 'C'),
(8, 'Na którym kontynencie znajduje się Wielki Kanion, wyrzeźbiony przez rzekę Kolorado?', 'Europa', 'Afryka', 'Ameryka Południowa', 'Ameryka Północna', 'D'),
(9, 'W basenie, którego oceanu znajduje się Pierścień Ognia, obszar o wysokiej aktywności sejsmicznej i wulkanicznej?', 'Ocean Atlantycki', 'Ocean Spokojny', 'Ocean Indyjski', 'Ocean Arktyczny', 'B'),
(10, 'Co to jest fiord?', 'Rodzaj formacji skalnej', 'Długa, wąska zatoka morska ze stromymi zboczami, utworzona przez lodowiec', 'Typ pustyni', 'Miejscowość położona w górach', 'B'),
(11, 'Która rzeka jest najdłuższa w Europie Zachodniej?', 'Dunaj', 'Elba', 'Loara', 'Ren', 'D'),
(12, 'Jakie góry rozdzielają Europę od Azji?', 'Ural', 'Alpy', 'Pireneje', 'Karpaty', 'A'),
(13, 'Które miasto jest stolicą Austrii?', 'Wiedeń', 'Budapeszt', 'Berno', 'Praga', 'A'),
(14, 'Które morze oddziela Półwysep Apeniński od Półwyspu Bałkańskiego?', 'Morze Egejskie', 'Morze Adriatyckie', 'Morze Tyrreńskie', 'Morze Jońskie', 'B'),
(15, 'Jaki kraj europejski jest znany jako Kraina Tysiąca Jezior?', 'Polska', 'Norwegia', 'Szwecja', 'Finlandia', 'D'),
(16, 'Która wyspa jest największa na Morzu Śródziemnym?', 'Sardynia', 'Sycylia', 'Cypr', 'Kreta', 'B'),
(17, 'Która stolica europejska leży nad rzeką Tamizą?', 'Berlin', 'Paryż', 'Londyn', 'Rzym', 'C'),
(18, 'Które państwo nie ma dostępu do morza?', 'Węgry', 'Norwegia', 'Grecja', 'Portugalia', 'A'),
(19, 'Jak nazywa się cieśnina oddzielająca Europę od Afryki?', 'Cieśnina Mesyńska', 'Cieśnina Gibraltarska', 'Cieśnina Bosforska', 'Cieśnina Kerczeńska', 'B'),
(20, 'Który kraj jest znany z fiordów?', 'Islandia', 'Dania', 'Irlandia', 'Norwegia', 'D'),
(21, 'Jakie pasmo górskie znajduje się w północno-zachodniej Afryce?', 'Góry Atlas', 'Góry Smocze', 'Góry Księżycowe', 'Kilimandżaro', 'A'),
(22, 'Które jezioro jest największe w Afryce pod względem powierzchni?', 'Jezioro Turkana', 'Jezioro Tanganika', 'Jezioro Wiktorii', 'Jezioro Malawi', 'C'),
(23, 'Która wyspa afrykańska jest czwartą co do wielkości wyspą na świecie?', 'Zanzibar', 'Madagaskar', 'Mauritius', 'Wyspy Zielonego Przylądka', 'B'),
(24, 'Które miasto jest stolicą Egiptu?', 'Kair', 'Aleksandria', 'Asuan', 'Luksor', 'A'),
(25, 'Która pustynia znajduje się w południowej Afryce i jest znana z czerwonych wydm?', 'Danakil', 'Namib', 'Kalahari', 'Sahara', 'B'),
(26, 'Jak nazywa się przylądek na najbardziej wysuniętym południowym krańcu Afryki?', 'Przylądek Zielony', 'Przylądek Dobrej Nadziei', 'Przylądek Igielny', 'Przylądek Guardafui', 'C'),
(27, 'Który wulkan jest najwyższym szczytem Afryki?', 'Kilimandżaro', 'Góra Kenia', 'Góra Meru', 'Góry Ruwenzori', 'A'),
(28, 'Która pustynia znajduje się w południowej Afryce i jest domem dla ludu San?', 'Namib', 'Danakil', 'Karoo', 'Kalahari', 'D'),
(29, 'Które jezioro jest największym jeziorem świata pod względem powierzchni i leży częściowo w Azji?', 'Jezioro Bajkał', 'Morze Kaspijskie', 'Jezioro Bałchasz', 'Jezioro Aralskie', 'B'),
(30, 'Jakie pasmo górskie rozciąga się w Azji Centralnej i jest częścią Dachu Świata?', 'Pamir', 'Alpy', 'Himalaje', 'Andy', 'A'),
(31, 'Która pustynia jest największą pustynią Azji?', 'Takla Makan', 'Gobi', 'Pustynia Thar', 'Pustynia Arabska', 'B'),
(32, 'Która rzeka jest najdłuższą rzeką w Azji?', 'Jenisej', 'Huang He', 'Mekong', 'Jangcy', 'D'),
(33, 'Które państwo azjatyckie jest archipelagiem składającym się z tysięcy wysp?', 'Japonia', 'Indonezja', 'Filipiny', 'Malediwy', 'B'),
(34, 'Które morze oddziela Półwysep Arabski od Afryki?', 'Morze Śródziemne', 'Morze Arabskie', 'Zatoka Perska', 'Morze Czerwone', 'D'),
(35, 'Jaka cieśnina łączy Ocean Spokojny z Oceanem Indyjskim i jest jedną z najbardziej ruchliwych dróg morskich na świecie?', 'Cieśnina Beringa', 'Cieśnina Malakka', 'Cieśnina Ormuz', 'Cieśnina Gibraltarska', 'B'),
(36, 'Które państwo azjatyckie jest najludniejsze na świecie?', 'Pakistan', 'Indie', 'Chiny', 'Indonezja', 'B'),
(37, 'Jaki półwysep znajduje się w Azji Południowo-Wschodniej i obejmuje kraje takie jak Wietnam, Laos i Kambodża?', 'Półwysep Arabski', 'Półwysep Indochiński', 'Półwysep Indyjski', 'Półwysep Koreański', 'B'),
(38, 'Jaki jest największy monolit skalny w Australii, znany z czerwonego koloru?', 'Mount Augustus', 'Wave Rock', 'Uluru', 'The Olgas', 'C'),
(39, 'Jaka jest najdłuższa rzeka w Australii?', 'Murray', 'Swan', 'Darling', 'Brisbane', 'A'),
(40, 'Które miasto jest stolicą Australii?', 'Canberra', 'Melbourne', 'Perth', 'Sydney', 'A'),
(41, 'Która rafa koralowa jest największą na świecie i znajduje się u wybrzeży Australii?', 'Rafa Ningaloo', 'Rafa Fudży', 'Wielka Rafa Koralowa', 'Rafa Belize', 'C'),
(42, 'Która pustynia zajmuje znaczną część zachodniej Australii?', 'Pustynia Gibsona', 'Pustynia Simpsona', 'Wielka Pustynia Piaszczysta', 'Wielka Pustynia Wiktorii', 'C'),
(43, 'Jaka jest nazwa najbardziej wysuniętego na północ punktu kontynentalnej Australii?', 'Przylądek Jork', 'Przylądek Byrona', 'Przylądek Leeuwin', 'Przylądek Wilsona', 'A'),
(44, 'Jakie góry rozciągają się wzdłuż wschodniego wybrzeża Australii?', 'Wielkie Góry Wododziałowe', 'Góry Flindersa', 'Góry MacDonnella', 'Góry Błękitne', 'A'),
(45, 'Które jezioro w Australii jest największym jeziorem solnym i często wysycha?', 'Jezioro Torrens', 'Jezioro Gairdner', 'Jezioro Eyre', 'Jezioro Mackay', 'C'),
(46, 'Która góra jest najwyższym szczytem Ameryki Północnej?', 'Mount Whitney', 'Mount Logan', 'Denali', 'Pico de Orizaba', 'C'),
(47, 'Która rzeka jest najdłuższą rzeką w Ameryce Północnej?', 'Mississippi-Missouri', 'Missouri', 'Rio Grande', 'Kolorado', 'A'),
(48, 'Które miasto jest stolicą Kanady?', 'Ottawa', 'Toronto', 'Montreal', 'Vancouver', 'A'),
(49, 'Który park narodowy w Stanach Zjednoczonych słynie z gejzerów?', 'Park Narodowy Grand Canyon', 'Park Narodowy Yosemite', 'Park Narodowy Zion', 'Park Narodowy Yellowstone', 'D'),
(50, 'Które Wielkie Jezioro w Ameryce Północnej jest największe pod względem powierzchni?', 'Jezioro Michigan', 'Jezioro Górne', 'Jezioro Erie', 'Jezioro Huron', 'B'),
(51, 'Jaki jest najdalej wysunięty na północ kraj Ameryki Północnej?', 'Stany Zjednoczone', 'Meksyk', 'Kanada', 'Grenlandia (Dania)', 'C'),
(52, 'Które pasmo górskie rozciąga się wzdłuż zachodniego wybrzeża Ameryki Północnej?', 'Appalachy', 'Sierra Nevada', 'Góry Kaskadowe', 'Góry Skaliste', 'D'),
(53, 'Jak nazywa się największa zatoka na świecie, położona w północnej części Ameryki Północnej?', 'Zatoka Świętego Wawrzyńca', 'Zatoka Kalifornijska', 'Zatoka Meksykańska', 'Zatoka Hudsona', 'D'),
(54, 'Który kraj Ameryki Północnej jest znany z piramid Majów i Azteków?', 'Meksyk', 'Kanada', 'Gwatemala', 'Stany Zjednoczone', 'A'),
(55, 'Jakie cieśniny oddzielają Amerykę Północną od Azji?', 'Cieśnina Davis', 'Cieśnina Magellana', 'Cieśnina Beringa', 'Cieśnina Kerczeńska', 'C'),
(56, 'Które pasmo górskie jest najdłuższe na świecie i rozciąga się wzdłuż zachodniego wybrzeża Ameryki Południowej?', 'Himalaje', 'Alpy', 'Andy', 'Góry Skaliste', 'C'),
(57, 'Która rzeka jest największą rzeką świata pod względem objętości przepływu wody i płynie przez Amerykę Południową?', 'Parana', 'Orinoko', 'Magdalena', 'Amazonka', 'D'),
(58, 'Jakie jest największe jezioro Ameryki Południowej pod względem powierzchni?', 'Jezioro Maracaibo', 'Jezioro Poopó', 'Jezioro Titicaca', 'Jezioro Buenos Aires', 'A'),
(59, 'Jak nazywa się pustynia leżąca wzdłuż wybrzeża Chile i Peru, uznawana za jedną z najbardziej suchych na świecie?', 'Pustynia Patagońska', 'Pustynia Monte', 'Pustynia Sechura', 'Pustynia Atacama', 'D'),
(60, 'Która cieśnina znajduje się na południowym krańcu Ameryki Południowej i łączy Ocean Atlantycki z Oceanem Spokojnym?', 'Cieśnina Magellana', 'Kanał Panamski', 'Cieśnina Beringa', 'Cieśnina Drakea', 'A'),
(61, 'Które miasto jest stolicą Argentyny?', 'Santiago', 'Rio de Janeiro', 'Buenos Aires', 'Lima', 'C'),
(62, 'Który kraj Ameryki Południowej jest jedynym krajem, który graniczy zarówno z Oceanem Spokojnym, jak i Atlantyckim?', 'Peru', 'Chile', 'Brazylia', 'Kolumbia', 'D'),
(63, 'Jaka jest nazwa najbardziej wysuniętego na południe regionu Ameryki Południowej, częściowo należącego do Argentyny i Chile?', 'Gran Chaco', 'Altiplano', 'Patagonia', 'Pampa', 'C'),
(64, 'Które państwo Ameryki Południowej jest domem dla wodospadów Iguazu?', 'Argentyna', 'Chile', 'Brazylia', 'Wenezuela', 'A'),
(65, 'Który kontynent jest największy pod względem liczby ludności?', 'Azja', 'Ameryka Północna', 'Afryka', 'Europa', 'A'),
(66, 'Jakie są dwa główne bieguny Ziemi, wokół których obraca się planeta?', 'Równik i Południk Zerowy', 'Biegun Północny i Południowy', 'Biegun Magnetyczny Północny i Południowy', 'Biegun Wschodni i Zachodni', 'B'),
(67, 'Który kontynent nie posiada stałych mieszkańców (poza naukowcami i personelem badawczym)?', 'Australia', 'Ameryka Południowa', 'Afryka', 'Antarktyda', 'D'),
(68, 'Który kraj ma najdłuższą linię brzegową na świecie?', 'Australia', 'Indonezja', 'Kanada', 'Rosja', 'C'),
(69, 'Jaki jest najgłębszy rów oceaniczny na świecie?', 'Rów Mariański', 'Rów Kermadec', 'Rów Jawajski', 'Rów Portorykański', 'A'),
(70, 'Który kraj jest najmniejszym państwem na świecie?', 'Liechtenstein', 'Monako', 'Watykan', 'San Marino', 'C'),
(71, 'Jakie pasmo górskie stanowi naturalną granicę między Europą a Azją?', 'Alpy', 'Ural', 'Karpaty', 'Kaukaz', 'B'),
(72, 'Które państwo ma najwięcej sąsiadów lądowych?', 'Brazylia', 'Niemcy', 'Rosja', 'Chiny', 'D'),
(73, 'Która stolica jest położona najwyżej na świecie?', 'Quito (Ekwador)', 'Thimphu (Bhutan)', 'La Paz (Boliwia)', 'Bogota (Kolumbia)', 'C'),
(74, 'Które państwo jest znane jako Kraina Wschodzącego Słońca?', 'Chiny', 'Korea Południowa', 'Japonia', 'Wietnam', 'C'),
(75, 'Który kanał łączy Morze Śródziemne z Morzem Czerwonym?', 'Kanał Panamski', 'Kanał Kiloński', 'Kanał Koryncki', 'Kanał Sueski', 'D'),
(76, 'Jaki jest najmniejszy ocean na świecie?', 'Ocean Południowy', 'Ocean Arktyczny', 'Ocean Indyjski', 'Ocean Atlantycki', 'B'),
(77, 'Które miasto jest położone na dwóch kontynentach?', 'Stambuł (Turcja)', 'Kair (Egipt)', 'Uralsk (Kazachstan)', 'Moskwa (Rosja)', 'A'),
(78, 'Które państwo jest największe na świecie pod względem powierzchni?', 'Rosja', 'Chiny', 'Kanada', 'Stany Zjednoczone', 'A'),
(79, 'Który kontynent jest najbardziej suchy?', 'Afryka', 'Azja', 'Australia', 'Ameryka Północna', 'C'),
(80, 'Które państwo ma najwięcej stref czasowych?', 'Stany Zjednoczone', 'Francja', 'Rosja', 'Chiny', 'B'),
(81, 'Która cieśnina łączy Morze Czerwone z Zatoką Adeńską (Ocean Indyjski)?', 'Cieśnina Malakka', 'Cieśnina Ormuz', 'Cieśnina Tirańska', 'Cieśnina Bab al-Mandab', 'D'),
(82, 'Jaki jest najmniejszy kontynent na świecie?', 'Antarktyda', 'Australia', 'Ameryka Południowa', 'Europa', 'B'),
(83, 'Który kraj jest największym producentem kawy na świecie?', 'Kolumbia', 'Etiopia', 'Brazylia', 'Wietnam', 'C'),
(84, 'Które jezioro jest najgłębszym jeziorem słodkowodnym na świecie?', 'Jezioro Tanganika', 'Jezioro Wiktorii', 'Jezioro Superior', 'Jezioro Bajkał', 'D'),
(85, 'Jaki jest najwyższy wodospad na świecie?', 'Wodospad Niagara', 'Salto Angel', 'Wodospad Wiktorii', 'Wodospad Iguacu', 'B'),
(86, 'Które państwo jest znane z Wielkiego Muru?', 'Indie', 'Japonia', 'Chiny', 'Mongolia', 'C'),
(87, 'Która wyspa jest największa na świecie?', 'Nowa Gwinea', 'Borneo', 'Madagaskar', 'Grenlandia', 'D'),
(88, 'Które morze jest największym morzem śródlądowym na świecie, zasilanym przez rzekę Wołgę?', 'Morze Czarne', 'Morze Śródziemne', 'Morze Kaspijskie', 'Morze Aralskie', 'C'),
(89, 'Który kraj jest znany z archipelagu Galapagos?', 'Ekwador', 'Kolumbia', 'Peru', 'Chile', 'A'),
(90, 'Która rzeka przepływa przez miasto Kair?', 'Tygrys', 'Nil', 'Kongo', 'Eufrat', 'B'),
(91, 'Jaki jest najwyższy szczyt w Alpach?', 'Matterhorn', 'Grossglockner', 'Zugspitze', 'Mont Blanc', 'D'),
(92, 'Które państwo jest znane z wulkanu Fudżi?', 'Japonia', 'Korea Południowa', 'Chiny', 'Indonezja', 'A'),
(93, 'Które miasto jest stolicą Nowej Zelandii?', 'Auckland', 'Wellington', 'Christchurch', 'Queenstown', 'B'),
(94, 'Która pustynia jest największą pustynią na świecie pod względem powierzchni (włączając regiony polarne)?', 'Pustynia Arktyczna', 'Gobi', 'Pustynia Antarktyczna', 'Sahara', 'C'),
(95, 'Która stolica jest znana z wieży Eiffla?', 'Berlin', 'Paryż', 'Rzym', 'Madryt', 'B'),
(96, 'Jaki jest najdłuższy system jaskiniowy na świecie?', 'Jaskinia Son Doong (Wietnam)', 'Jaskinia Postojna (Słowenia)', 'Jaskinia Mamutowa (USA)', 'Jaskinia Skocjańska (Słowenia)', 'C'),
(97, 'Które miasto jest znane jako Wieczne Miasto?', 'Rzym', 'Ateny', 'Stambuł', 'Paryż', 'A'),
(98, 'Jaka jest najdłuższa rzeka w Europie?', 'Wołga', 'Ren', 'Łaba', 'Dunaj', 'A'),
(99, 'Które morze jest częścią Oceanu Atlantyckiego i jest znane z Trójkąta Bermudzkiego?', 'Morze Śródziemne', 'Morze Sargassowe', 'Morze Północne', 'Morze Karaibskie', 'B'),
(100, 'Które miasto jest stolicą RPA (Republiki Południowej Afryki)?', 'Durban', 'Kapsztad', 'Johannesburg', 'Pretoria', 'D'),
(101, 'Które miasto jest znane z zabytku Machu Picchu?', 'Quito', 'Lima', 'Cuzco', 'Bogota', 'C'),
(102, 'Który kraj jest największym producentem ropy naftowej na świecie?', 'Stany Zjednoczone', 'Arabia Saudyjska', 'Rosja', 'Kanada', 'A'),
(103, 'Które góry oddzielają Półwysep Iberyjski od reszty Europy?', 'Alpy', 'Karpaty', 'Apeniny', 'Pireneje', 'D'),
(104, 'Jaki jest największy las deszczowy na świecie?', 'Las deszczowy Amazonii', 'Las deszczowy Nowej Gwinei', 'Las deszczowy Konga', 'Las deszczowy Borneo', 'A'),
(105, 'Które miasto jest znane z Mostu Karola?', 'Budapeszt', 'Kraków', 'Praga', 'Wiedeń', 'C'),
(106, 'Jaki jest najwyższy czynny wulkan w Europie?', 'Etna', 'Hekla', 'Wezuwiusz', 'Stromboli', 'A'),
(107, 'Które państwo ma kształt buta?', 'Portugalia', 'Włochy', 'Hiszpania', 'Grecja', 'B'),
(108, 'Który ocean jest najgłębszym na świecie?', 'Ocean Spokojny', 'Ocean Indyjski', 'Ocean Arktyczny', 'Ocean Atlantycki', 'A'),
(109, 'Które państwo jest znane z lodowców, gejzerów i czynnych wulkanów?', 'Islandia', 'Nowa Zelandia', 'Norwegia', 'Chile', 'A'),
(110, 'Jaki jest największy podwodny system jaskiniowy na świecie?', 'Jaskinia Orda', 'Sac Actun', 'Sistema Dos Ojos', 'Great Blue Hole', 'B'),
(111, 'Jaki jest największy podmokły teren na świecie?', 'Bagna Louisiana', 'Okawango', 'Pantanal', 'Everglades', 'C'),
(112, 'Która pustynia w Ameryce Północnej jest znana z Kaktusów Saguaro?', 'Pustynia Wielka Słona', 'Pustynia Chihuahua', 'Pustynia Sonora', 'Pustynia Mojave', 'C'),
(113, 'Który wulkan jest znany z erupcji, która zniszczyła Pompeje i Herkulanum?', 'Fudżi', 'Etna', 'Wezuwiusz', 'Stromboli', 'C'),
(114, 'Które państwo jest znane z wiatraków, tulipanów i drewnianych chodaków?', 'Dania', 'Belgia', 'Niemcy', 'Holandia', 'D'),
(115, 'Jaki jest największy park narodowy na świecie?', 'Park Narodowy Wrangla-St. Elias', 'Park Narodowy Północno-Wschodniej Grenlandii', 'Park Narodowy Yellowstone', 'Park Narodowy Serengeti', 'B'),
(116, 'Która pustynia w Chinach jest znana z wydm śpiewających?', 'Takla Makan', 'Kumtag', 'Gobi', 'Ordos', 'B'),
(117, 'Jaka jest nazwa najbardziej wysuniętego na północ punktu lądowego na Ziemi?', 'Kaffeklubben Island', 'Ziemia Franciszka Józefa', 'Przylądek Północny', 'Nunavut', 'A'),
(118, 'Która rzeka jest nazywana Matką Rzek w Indiach?', 'Jamuna', 'Ganges', 'Brahmaputra', 'Indus', 'B'),
(119, 'Jaki jest najwyższy wodospad w Afryce?', 'Wodospad Wiktorii', 'Wodospad Ruacana', 'Wodospad Augrabies', 'Wodospad Tugela', 'D'),
(120, 'Jaki jest najstarszy park narodowy na świecie?', 'Park Narodowy Yellowstone', 'Park Narodowy Kruger', 'Park Narodowy Yosemite', 'Park Narodowy Banff', 'A');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `geografia`
--
ALTER TABLE `geografia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `geografia`
--
ALTER TABLE `geografia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
