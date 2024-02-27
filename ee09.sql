-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 12:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ee09`
--

-- --------------------------------------------------------

--
-- Table structure for table `dyspozytorzy`
--

CREATE TABLE `dyspozytorzy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dyspozytorzy`
--

INSERT INTO `dyspozytorzy` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Ewelina', 'Nowak'),
(2, 'Krzysztof', 'Kowalewski'),
(3, 'Joanna', 'Pospieszalska'),
(4, 'Jan', 'Winny');

-- --------------------------------------------------------

--
-- Table structure for table `karty_wedkarskie`
--

CREATE TABLE `karty_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `data_zezwolenia` date DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `karty_wedkarskie`
--

INSERT INTO `karty_wedkarskie` (`id`, `imie`, `nazwisko`, `adres`, `data_zezwolenia`, `punkty`) VALUES
(1, 'Jan', 'Kowalski', 'Warszawa, Aleje Jerozolimskie 65/4', '2018-02-15', 23),
(2, 'Andrzej', 'Nowak', 'Poznan, Dabowskiego 16/4', '2018-03-12', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Table structure for table `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Table structure for table `publikacje`
--

CREATE TABLE `publikacje` (
  `id` int(11) NOT NULL,
  `tytul` text DEFAULT NULL,
  `rok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratownicy`
--

CREATE TABLE `ratownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `nrKaretki` int(10) UNSIGNED DEFAULT NULL,
  `ratownik1` text DEFAULT NULL,
  `ratownik2` text DEFAULT NULL,
  `ratownik3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ratownicy`
--

INSERT INTO `ratownicy` (`id`, `nrKaretki`, `ratownik1`, `ratownik2`, `ratownik3`) VALUES
(1, 10, 'Krzysztof Lewandowski', 'Janina Gawlowska', 'Ewa Krasinska'),
(2, 8, 'Robert Marciniak', 'Robert Bialy', 'Krystyna Kowalska'),
(3, 45, 'Tomasz Kos', 'Janusz Sowa', 'Grzegorz Witkowski'),
(4, 13, 'Krzysztof Jerzykowski', 'Jan Niepokorski', 'Waldemar Skory'),
(5, 20, 'Adam Nowak', 'Jan Kowalski', 'Anna Nowakowska'),
(7, 1, 'Adam Kowalski', 'Joanna Strzelczyk', 'Marcin Nowowierski'),
(8, 5, 'Jacek Kowalski', 'W?adys?aw Gomu?ka', 'Józef Stalin'),
(9, 104, 'Adam Kowalski', 'Joanna Strzelczyk', 'Józef Stalin'),
(10, 4, 'Mariusz Pudzianowski', 'Jaros?aw Pistek', 'Weronika Carczyk'),
(11, 5, 'Adam Kowalski', 'W?adys?aw Gomu?ka', 'Józef Stalin'),
(14, 3, 'd', 'd', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Table structure for table `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, 12.40, '2015-10-14'),
(2, 1, 1, 12.00, '2015-10-06'),
(3, 1, 2, 11.80, '2015-10-14'),
(4, 1, 2, 11.90, '2015-10-06'),
(5, 1, 3, 11.50, '2015-10-14'),
(6, 1, 3, 11.56, '2015-10-06'),
(7, 1, 4, 11.70, '2015-10-14'),
(8, 1, 4, 11.67, '2015-10-06'),
(9, 1, 5, 11.30, '2015-10-14'),
(10, 1, 5, 11.52, '2015-10-06'),
(11, 1, 6, 12.10, '2015-10-14'),
(12, 1, 6, 12.00, '2015-10-06'),
(13, 3, 1, 63.00, '2015-11-11'),
(14, 3, 1, 63.60, '2015-10-13'),
(15, 3, 2, 64.00, '2015-11-11'),
(16, 3, 2, 63.60, '2015-10-13'),
(17, 3, 3, 60.00, '2015-11-11'),
(18, 3, 3, 61.60, '2015-10-13'),
(19, 3, 4, 63.50, '2015-11-11'),
(20, 3, 4, 63.60, '2015-10-13'),
(21, 3, 5, 70.00, '2015-10-07'),
(22, 3, 6, 68.00, '2015-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `Samochody_id`, `Klient`, `telefon`, `dataZam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `zawody_wedkarskie`
--

CREATE TABLE `zawody_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `Karty_wedkarskie_id` int(10) UNSIGNED NOT NULL,
  `Lowisko_id` int(10) UNSIGNED NOT NULL,
  `data_zawodow` date DEFAULT NULL,
  `sedzia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zawody_wedkarskie`
--

INSERT INTO `zawody_wedkarskie` (`id`, `Karty_wedkarskie_id`, `Lowisko_id`, `data_zawodow`, `sedzia`) VALUES
(1, 1, 3, '2018-04-12', 'Jan Kowalewski'),
(2, 1, 5, '2018-05-01', 'Jan Kowalewski'),
(3, 1, 2, '2018-06-01', 'Jan Kowalewski'),
(4, 2, 1, '2018-06-21', 'Krzysztof Dobrowolski');

-- --------------------------------------------------------

--
-- Table structure for table `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `id` int(10) UNSIGNED NOT NULL,
  `ratownicy_id` int(10) UNSIGNED NOT NULL,
  `dyspozytorzy_id` int(10) UNSIGNED NOT NULL,
  `adres` text DEFAULT NULL,
  `pilne` tinyint(1) DEFAULT NULL,
  `czas_zgloszenia` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zgloszenia`
--

INSERT INTO `zgloszenia` (`id`, `ratownicy_id`, `dyspozytorzy_id`, `adres`, `pilne`, `czas_zgloszenia`) VALUES
(1, 3, 4, 'Warszawa, Marszalkowska 133/2', 0, '15:30:00'),
(2, 3, 4, 'Warszawa, Postepu 13/2', 0, '15:30:00'),
(3, 1, 1, 'Warszawa, Dluga 2', 1, '15:34:00'),
(4, 3, 2, 'Warszawa, Krasinskiego 34', 0, '15:45:00'),
(5, 4, 3, 'Warszawa, Edelmana 5/22', 0, '15:47:00'),
(6, 2, 4, 'Warszawa, Nowowiejska 56/1', 1, '16:20:00'),
(7, 1, 3, 'Warszawa, Poleczki 2/2', 0, '16:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dyspozytorzy`
--
ALTER TABLE `dyspozytorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publikacje`
--
ALTER TABLE `publikacje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratownicy`
--
ALTER TABLE `ratownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dyspozytorzy`
--
ALTER TABLE `dyspozytorzy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `publikacje`
--
ALTER TABLE `publikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratownicy`
--
ALTER TABLE `ratownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
