-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2018 alle 23:35
-- Versione del server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cartacredito`
--

CREATE TABLE IF NOT EXISTS `cartacredito` (
  `numero` varchar(16) NOT NULL,
  `nome_titolare` varchar(40) DEFAULT NULL,
  `cognome_titolare` varchar(40) DEFAULT NULL,
  `data_scadenza` date DEFAULT NULL,
  `ccv` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cartacredito`
--

INSERT INTO `cartacredito` (`numero`, `nome_titolare`, `cognome_titolare`, `data_scadenza`, `ccv`) VALUES
('0000000000000001', '', '', NULL, ''),
('0000000000000002', '', '', NULL, ''),
('0000000000000003', '', '', NULL, ''),
('0000000000000004', '', '', NULL, ''),
('0000000000000005', 'a', '', NULL, ''),
('0000000000000006', '', '', NULL, ''),
('0000000000000007', '', '', NULL, ''),
('0000000000000008', 'q', 'q', NULL, '999'),
('0000000000000009', 'q', 'q', NULL, '999'),
('0000000000000011', '', '', NULL, ''),
('0000000000000012', '', '', NULL, ''),
('0000000000000013', '', '', NULL, ''),
('0000000000000014', '', '', NULL, ''),
('0000000000000015', '', '', NULL, ''),
('0000000000000016', '', '', NULL, ''),
('1111111111111111', 'x', 'x', NULL, '111'),
('1233333012321327', 'Serafino', 'Cicerone', '2019-12-01', '222'),
('1233353012321324', 'Antonio', 'Martone', '2018-10-01', '234'),
('1234123412431234', 'Nikola', 'Tesla', '2018-07-10', '123'),
('1234126412341234', 'Isaac', 'Newton', '2018-12-25', '113'),
('1237812341241234', 'Marie', 'Curie', '2018-11-07', '823'),
('1332333301221320', 'Massimo', 'Virno', '2017-01-01', '111');

-- --------------------------------------------------------

--
-- Struttura della tabella `commento`
--

CREATE TABLE IF NOT EXISTS `commento` (
  `id` int(11) NOT NULL,
  `vinoID` int(13) DEFAULT NULL,
  `testo` varchar(1024) DEFAULT NULL,
  `voto` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `commento`
--

INSERT INTO `commento` (`id`, `vinoID`, `testo`, `voto`) VALUES
(1, 1, 'Nella media', 6),
(2, 2, 'Pessimo', 3),
(3, 3, 'Eccellente da bere di nuovo', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `id` int(13) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `vino` int(13) NOT NULL,
  `data` datetime DEFAULT NULL,
  `utente` varchar(20) DEFAULT NULL,
  `data_chiusura` datetime DEFAULT NULL,
  `posti` int(11) DEFAULT NULL,
  `location` int(13) DEFAULT NULL,
  `descBreve` varchar(200) DEFAULT NULL,
  `descrizione` varchar(1024) DEFAULT NULL,
  `prezzo` float NOT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `pubblicato` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `evento`
--

INSERT INTO `evento` (`id`, `nome`, `vino`, `data`, `utente`, `data_chiusura`, `posti`, `location`, `descBreve`, `descrizione`, `prezzo`, `categoria`, `foto`, `pubblicato`) VALUES
(1, 'Cena a casa mia', 1, '2015-09-01 20:00:00', 'massimovirno', '2015-08-30 20:00:00', 10, 1, 'Cena leggera a casa mia con cous cous e contorni di verdure.', 'Il menu prevede un cous cous con melanzane e zucchine. Cortorno di peperoni.', 10, 'casa', 'foto01.jpg', 1),
(2, 'BBQ in giardino', 2, '2015-09-03 21:00:00', 'antoniomartone', '2015-08-28 09:00:00', 5, 2, 'Brace con bistecche e salsicce', 'Brace nel giardino con carni e bruschette.', 25, 'giardino', 'foto02.jpg', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `eventopartecipante`
--

CREATE TABLE IF NOT EXISTS `eventopartecipante` (
  `id` int(13) NOT NULL,
  `eventoID` int(13) NOT NULL,
  `partecipante` varchar(20) DEFAULT NULL,
  `pagato` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `eventopartecipante`
--

INSERT INTO `eventopartecipante` (`id`, `eventoID`, `partecipante`, `pagato`) VALUES
(1, 1, 'antoniomartone', NULL),
(2, 1, 'serafinocicerone', 0),
(3, 2, 'nikolatesla', 0),
(4, 2, 'massimovirno', 0),
(6, 2, 'massimovirno', 1),
(16, 1, 'massimovirno', 1),
(17, 2, 'massimovirno', 1),
(18, 2, 'massimovirno', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(13) NOT NULL,
  `citta` varchar(100) DEFAULT NULL,
  `indirizzo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `location`
--

INSERT INTO `location` (`id`, `citta`, `indirizzo`) VALUES
(1, 'Roma', 'Via Frattina 146'),
(2, 'Milano', 'Via Triboniano 250'),
(3, 'Napoli', 'Via Toledo 275'),
(4, 'Palermo', 'Piazza Monte Grappa 35');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE IF NOT EXISTS `utente` (
  `username` varchar(20) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `cognome` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `via` varchar(100) DEFAULT NULL,
  `codice_attivazione` varchar(20) DEFAULT NULL,
  `stato` enum('non_attivo','attivo') DEFAULT NULL,
  `citta` varchar(20) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`username`, `nome`, `cognome`, `password`, `email`, `via`, `codice_attivazione`, `stato`, `citta`, `CAP`) VALUES
('antoniomartone', 'Antonio', 'Martone', 'martone', 'am@dominiiiii.net', 'Via Cipparola 5', '12345678', 'attivo', 'Orvieto', '05018'),
('massimovirno', 'Massimo', 'Virno', 'password', 'io@massimovirno.it', 'Via C.B. 6', '945761796', 'attivo', 'Roma', '00154'),
('nikolatesla', 'Nikola', 'Tesla', 'tesla', 'niktes@elettric.com', '5th Avenue', '12345678', 'attivo', 'New York', '10024'),
('serafinocicerone', 'Serafino', 'Cicerone', 'cicerone', 'sc@prof.aquila.it', 'Via Croce 1', '12345678', 'attivo', 'L''Aquila', '67010');

-- --------------------------------------------------------

--
-- Struttura della tabella `vino`
--

CREATE TABLE IF NOT EXISTS `vino` (
  `id` int(13) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `produttore` varchar(50) DEFAULT NULL,
  `denominazione` varchar(50) DEFAULT NULL,
  `paese` varchar(50) DEFAULT NULL,
  `regione` varchar(50) DEFAULT NULL,
  `descrizione` varchar(500) DEFAULT NULL,
  `vitigno` varchar(20) DEFAULT NULL,
  `annata` int(4) DEFAULT NULL,
  `grado` float DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `colore` varchar(10) DEFAULT NULL,
  `noteSensoriali` varchar(200) DEFAULT NULL,
  `temperaturaServizio` int(2) DEFAULT NULL,
  `prezzo` float DEFAULT NULL,
  `etichetta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `vino`
--

INSERT INTO `vino` (`id`, `nome`, `produttore`, `denominazione`, `paese`, `regione`, `descrizione`, `vitigno`, `annata`, `grado`, `volume`, `colore`, `noteSensoriali`, `temperaturaServizio`, `prezzo`, `etichetta`) VALUES
(1, 'Sursur', 'Donnafugata', 'sicilia doc', 'italia', 'sicilia', 'Il nome sur sur, che significa grillo, deriva dalla lingua araba classica, un tempo parlata anche in Sicilia. Dalle uve dell''omonimo vitigno nasce questo vino che ha tutta la poesia del canto dei gril', 'grillo', 2014, 12.5, 0.75, 'bianco', 'Offre un naso fresco e fruttato con note di pesca bianca e pompelmo, unite a sentori di erbe aromatiche.', 4, 10.9, 'sursur.jpg'),
(2, 'Monte Sant''Urbano', 'Speri Fratelli', 'Amarone della Valpolicella DOCG', 'italia', 'veneto', 'Vino dai profumi ampissimi e dalla complessità indiscussa, questo Amarone sfida il tempo prestandosi ad un invecchiamento anche lungo in bottiglia.', 'corvina', 2010, 15, 0.75, 'rosso', 'profumo è gradevolmente speziato e ricorda il gusto del ribes', 20, 40, 'amarone.jpg'),
(3, 'Tignanello', 'Antinori', 'Toscana IGT', 'italia', 'toscana', 'Tignanello, in origine "Chianti Classico Riserva vigneto Tignanello" e dal 1971 Toscana IGT con il nome di Tignanello. Dal 1982 la composizione è rimasta la stessa di quella attuale. Tignanello viene prodotto soltanto nelle annate migliori. Il meglio dell''esperienza Antinori in un vino senza eguali che non può mancare nella vostra collezione! ', 'sangiovese', 2012, 13.5, 0.75, 'rosso', ' Il vino è lungo e persistente ed escono, nel retrogusto, note di cioccolato, mirtilli e confettura di prugne.', 20, 65, 'tignanello.jpg'),
(4, 'Per è Palummo ', 'Casa D''Ambra', 'Ischia Doc', 'Italia', 'campania', 'Questo vino nasce da uve ai più sconosciute, tipiche della zona di Ischia e del Golfo di Napoli. Con i suoi profumi delicati e vinosi e a sua anima vivace e intrigante esprime tutto il calore e l''energia della terra dove nasce!', 'Per è Palummo ', 2013, 12, 0.75, 'rosso', 'Al naso è un mix di sensazioni di frutta rossa, fragolina e lampone con toni floreali di peonia e geranio, insieme a lievi sensazioni speziate di cannella e chiodi di garofano.', 20, 12.4, 'perepalummo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartacredito`
--
ALTER TABLE `cartacredito`
  ADD PRIMARY KEY (`numero`);

--
-- Indexes for table `commento`
--
ALTER TABLE `commento`
  ADD PRIMARY KEY (`id`), ADD KEY `Commento` (`vinoID`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`), ADD KEY `Evento` (`id`), ADD KEY `Location` (`location`), ADD KEY `Utente` (`utente`), ADD KEY `Vino` (`vino`);

--
-- Indexes for table `eventopartecipante`
--
ALTER TABLE `eventopartecipante`
  ADD PRIMARY KEY (`id`), ADD KEY `Evento` (`eventoID`), ADD KEY `Partecipante` (`partecipante`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vino`
--
ALTER TABLE `vino`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commento`
--
ALTER TABLE `commento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eventopartecipante`
--
ALTER TABLE `eventopartecipante`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vino`
--
ALTER TABLE `vino`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `evento`
--
ALTER TABLE `evento`
ADD CONSTRAINT `Location` FOREIGN KEY (`location`) REFERENCES `location` (`id`),
ADD CONSTRAINT `Utente` FOREIGN KEY (`utente`) REFERENCES `utente` (`username`),
ADD CONSTRAINT `Vino` FOREIGN KEY (`vino`) REFERENCES `vino` (`id`);

--
-- Limiti per la tabella `eventopartecipante`
--
ALTER TABLE `eventopartecipante`
ADD CONSTRAINT `Evento` FOREIGN KEY (`eventoID`) REFERENCES `evento` (`id`),
ADD CONSTRAINT `Partecipante` FOREIGN KEY (`partecipante`) REFERENCES `utente` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
