-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Avril 2015 à 18:46
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gsb_cr`
--
CREATE DATABASE IF NOT EXISTS `gsb_cr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gsb_cr`;

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

DROP TABLE IF EXISTS `famille`;
CREATE TABLE IF NOT EXISTS `famille` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleFamille` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`id`, `libelleFamille`) VALUES
(1, 'Antalgiques en association'),
(2, 'Antalgiques antipyrétiques en association'),
(3, 'Antidépresseur d''action centrale'),
(4, 'Antivertigineux antihistaminique H1'),
(5, 'Antibiotique antituberculeux'),
(6, 'Antibiotique antiacnéique local'),
(7, 'Antibiotique de la famille des béta-lactamines (pénicilline A)'),
(8, 'Antibiotique de la famille des cyclines'),
(9, 'Antibiotique de la famille des macrolides'),
(10, 'Antihistaminique H1 local'),
(11, 'Antidépresseur imipraminique (tricyclique)'),
(12, 'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine'),
(13, 'Antibiotique local (ORL)'),
(14, 'Antidépresseur IMAO non sélectif'),
(15, 'Antibiotique ophtalmique'),
(16, 'Antipsychotique normothymique'),
(17, 'Antibiotique urinaire minute'),
(18, 'Corticoïde, antibiotique et antifongique à  usage local'),
(19, 'Hypnotique antihistaminique'),
(20, 'Psychostimulant, antiasthénique');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
CREATE TABLE IF NOT EXISTS `medicament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `famille_id` int(11) DEFAULT NULL,
  `depotLegal` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nomCommercial` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `composition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `effets` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contreIndication` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prixEchantillon` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9A9C723A97A77B84` (`famille_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`id`, `famille_id`, `depotLegal`, `nomCommercial`, `composition`, `effets`, `contreIndication`, `prixEchantillon`) VALUES
(1, 18, '3MYC7', 'TRIMYCINE', 'Triamcinolone (acétonide) + Néomycine + Nystatine', 'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''infections de la peau ou de parasitisme non traités, d''acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', 0),
(2, 6, 'ADIMOL9', 'ADIMOL', 'Amoxicilline + Acide clavulanique', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines ou aux céphalosporines.', 0),
(3, 6, 'AMOPIL7', 'AMOPIL', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.', 0),
(4, 7, 'AMOX45', 'AMOXAR', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.', 0),
(5, 7, 'AMOXIG12', 'AMOXI Gé', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.', 0),
(6, 13, 'APATOUX22', 'APATOUX Vitamine C', 'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, en cas de phénylcétonurie et chez l''enfant de moins de 6 ans.', 0),
(7, 6, 'BACTIG10', 'BACTIGEL', 'Erythromycine', 'Ce médicament est utilisé en application locale pour traiter l''acné et les infections cutanées bactériennes associées.', 'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.', 0),
(8, 9, 'BACTIV13', 'BACTIVIL', 'Erythromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(9, 2, 'BITALV', 'BIVALIC', 'Dextropropoxyphène + Paracétamol', 'Ce médicament est utilisé pour traiter les douleurs d''intensité modérée ou intense.', 'Ce médicament est contre-indiqué en cas d''allergie aux médicaments de cette famille, d''insuffisance hépatique ou d''insuffisance rénale.', 0),
(10, 2, 'CARTION6', 'CARTION', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d''ulcère gastroduodénal, maladies graves du foie.', 0),
(11, 9, 'CLAZER6', 'CLAZER', 'Clarithromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l''ulcère gastro-duodénal, en association avec d''autres médicaments.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(12, 11, 'DEPRIL9', 'DEPRAMIL', 'Clomipramine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l''enfant.', 'Ce médicament est contre-indiqué en cas de glaucome ou d''adénome de la prostate, d''infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d''allergie aux antidépresseurs imipraminiques.', 0),
(13, 3, 'DIMIRTAM6', 'DIMIRTAM', 'Mirtazapine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', 'La prise de ce produit est contre-indiquée en cas de d''allergie à  l''un des constituants.', 0),
(14, 2, 'DOLRIL7', 'DOLORIL', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas d''allergie au paracétamol ou aux salicylates.', 0),
(15, 19, 'DORNOM8', 'NORMADOR', 'Doxylamine', 'Ce médicament est utilisé pour traiter l''insomnie chez l''adulte.', 'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l''enfant de moins de 15 ans.', 0),
(16, 4, 'EQUILARX6', 'EQUILAR', 'Méclozine', 'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', 'Ce médicament ne doit pas être utilisé en cas d''allergie au produit, en cas de glaucome ou de rétention urinaire.', 0),
(17, 20, 'EVILR7', 'EVEILLOR', 'Adrafinil', 'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.', 0),
(18, 10, 'INSXT5', 'INSECTIL', 'Diphénydramine', 'Ce médicament est utilisé en application locale sur les piqûres d''insecte et l''urticaire.', 'Ce médicament est contre-indiqué en cas d''allergie aux antihistaminiques.', 0),
(19, 9, 'JOVAI8', 'JOVENIL', 'Josamycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(20, 8, 'LIDOXY23', 'LIDOXYTRACINE', 'Oxytétracycline +Lidocaïne', 'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants. Il ne doit pas être associé aux rétinoïdes.', 0),
(21, 16, 'LITHOR12', 'LITHORINE', 'Lithium', 'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', 'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d''insuffisance rénale, ou si vous avez un régime sans sel.', 0),
(22, 1, 'PARMOL16', 'PARMOCODEINE', 'Codéine + Paracétamol', 'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance hépatique ou respiratoire, d''asthme, de phénylcétonurie et chez la femme qui allaite.', 0),
(23, 20, 'PHYSOI8', 'PHYSICOR', 'Sulbutiamine', 'Ce médicament est utilisé pour traiter les baisses d''activité physique ou psychique, souvent dans un contexte de dépression.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.', 0),
(24, 5, 'PIRIZ8', 'PIRIZAN', 'Pyrazinamide', 'Ce médicament est utilisé, en association à  d''autres antibiotiques, pour traiter la tuberculose.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''insuffisance rénale ou hépatique, d''hyperuricémie ou de porphyrie.', 0),
(25, 15, 'POMDI20', 'POMADINE', 'Bacitracine', 'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l''oeil.', 'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques appliqués localement.', 0),
(26, 12, 'TROXT21', 'TROXADET', 'Paroxétine', 'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', 'Ce médicament est contre-indiqué en cas d''allergie au produit.', 0),
(27, 13, 'TXISOL22', 'TOUXISOL Vitamine C', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants et chez l''enfant de moins de 6 ans.', 0),
(28, 17, 'URIEG6', 'URIREGUL', 'Fosfomycine trométamol', 'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce médicament est contre-indiquée en cas d''allergie à  l''un des constituants et d''insuffisance rénale.', 0);

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

DROP TABLE IF EXISTS `praticien`;
CREATE TABLE IF NOT EXISTS `praticien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typepraticien_id` int(11) DEFAULT NULL,
  `nomMedecin` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `prenomMedecin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `adresseMedecin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cpMedecin` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `villeMedecin` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `coefNotoriete` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9A27D33635E304` (`typepraticien_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=87 ;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`id`, `typepraticien_id`, `nomMedecin`, `prenomMedecin`, `adresseMedecin`, `cpMedecin`, `villeMedecin`, `coefNotoriete`) VALUES
(1, 1, 'Notini', 'Alain', '114 r Authie', '85000', 'LA ROCHE SUR YON', 290.03),
(2, 1, 'Gosselin', 'Albert', '13 r Devon', '41000', 'BLOIS', 307.49),
(3, 2, 'Delahaye', 'André', '36 av 6 Juin', '25000', 'BESANCON', 185.79),
(4, 3, 'Leroux', 'André', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172.04),
(5, 3, 'Desmoulins', 'Anne', '31 r St Jean', '30000', 'NIMES', 94.75),
(6, 2, 'Mouel', 'Anne', '27 r Auvergne', '80000', 'AMIENS', 45.2),
(7, 1, 'Desgranges-Lentz', 'Antoine', '1 r Albert de Mun', '29000', 'MORLAIX', 20.07),
(8, 3, 'Marcouiller', 'Arnaud', '31 r St Jean', '68000', 'MULHOUSE', 396.52),
(9, 2, 'Dupuy', 'Benoit', '9 r Demolombe', '34000', 'MONTPELLIER', 395.66),
(10, 3, 'Lerat', 'Bernard', '31 r St Jean', '59000', 'LILLE', 257.79),
(11, 1, 'Marçais-Lefebvre', 'Bertrand', '86Bis r Basse', '67000', 'STRASBOURG', 450.96),
(12, 2, 'Boscher', 'Bruno', '94 r Falaise', '10000', 'TROYES', 356.14),
(13, 5, 'Morel', 'Catherine', '21 r Chateaubriand', '75000', 'PARIS', 379.57),
(14, 2, 'Guivarch', 'Chantal', '4 av Gén Laperrine', '45000', 'ORLEANS', 114.56),
(15, 5, 'Bessin-Grosdoit', 'Christophe', '92 r Falaise', '6000', 'NICE', 222.06),
(16, 4, 'Rossa', 'Claire', '14 av Thiès', '6000', 'NICE', 529.78),
(17, 4, 'Cauchy', 'Denis', '5 av Ste Thérèse', '11000', 'NARBONNE', 458.82),
(18, 4, 'Gaffé', 'Dominique', '9 av 1ère Armée Française', '35000', 'RENNES', 213.4),
(19, 1, 'Guenon', 'Dominique', '98 bd Mar Lyautey', '44000', 'NANTES', 175.89),
(20, 3, 'Prévot', 'Dominique', '29 r Lucien Nelle', '87000', 'LIMOGES', 151.36),
(21, 2, 'Houchard', 'Eliane', '9 r Demolombe', '49100', 'ANGERS', 436.96),
(22, 1, 'Desmons', 'Elisabeth', '51 r Bernières', '29000', 'QUIMPER', 281.17),
(23, 1, 'Flament', 'Elisabeth', '11 r Pasteur', '35000', 'RENNES', 315.6),
(24, 5, 'Goussard', 'Emmanuel', '9 r Demolombe', '41000', 'BLOIS', 40.72),
(25, 5, 'Desprez', 'Eric', '9 r Vaucelles', '33000', 'BORDEAUX', 406.85),
(26, 1, 'Coste', 'Evelyne', '29 r Lucien Nelle', '19000', 'TULLE', 441.87),
(27, 1, 'Lefebvre', 'Frédéric', '2 pl Wurzburg', '55000', 'VERDUN', 573.63),
(28, 1, 'Lemée', 'Frédéric', '29 av 6 Juin', '56000', 'VANNES', 326.4),
(29, 2, 'Martin', 'Frédéric', 'Bât A 90 r Bayeux', '70000', 'VESOUL', 506.06),
(30, 3, 'Marie', 'Frédérique', '172 r Caponière', '70000', 'VESOUL', 313.31),
(31, 4, 'Rosenstech', 'Geneviève', '27 r Auvergne', '75000', 'PARIS', 366.82),
(32, 5, 'Pontavice', 'Ghislaine', '8 r Gaillon', '86000', 'POITIERS', 265.58),
(33, 2, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', '64000', 'PAU', 184.97),
(34, 3, 'Blanchais', 'Guy', '30 r Authie', '8000', 'SEDAN', 502.48),
(35, 2, 'Leveneur', 'Hugues', '7 pl St Gilles', '62000', 'ARRAS', 7.39),
(36, 1, 'Mosquet', 'Isabelle', '22 r Jules Verne', '76000', 'ROUEN', 77.1),
(37, 4, 'Giraudon', 'Jean-Christophe', '1 r Albert de Mun', '38100', 'VIENNE', 92.62),
(38, 5, 'Marie', 'Jean-Claude', '26 r Hérouville', '69000', 'LYON', 120.1),
(39, 5, 'Maury', 'Jean-François', '5 r Pierre Girard', '71000', 'CHALON SUR SAONE', 13.73),
(40, 1, 'Dennel', 'Jean-Louis', '7 pl St Gilles', '28000', 'CHARTRES', 550.69),
(41, 3, 'Ain', 'Jean-Pierre', '4 résid Olympia', '2000', 'LAON', 5.59),
(42, 2, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396.58),
(43, 5, 'Comoz', 'Jean-Pierre', '35 r Auguste Lechesne', '18000', 'BOURGES', 340.35),
(44, 4, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', '29000', 'BREST', 71.76),
(45, 4, 'Phan', 'JérÃ´me', '9 r Clos Caillet', '79000', 'NIORT', 451.61),
(46, 3, 'Riou', 'Line', '43 bd Gén Vanier', '77000', 'MARNE LA VALLEE', 193.25),
(47, 2, 'Chubilleau', 'Louis', '46 r Eglise', '17000', 'SAINTES', 202.07),
(48, 2, 'Lebrun', 'Lucette', '178 r Auge', '54000', 'NANCY', 410.41),
(49, 4, 'Goessens', 'Marc', '6 av 6 Juin', '39000', 'DOLE', 548.57),
(50, 4, 'Laforge', 'Marc', '5 résid Prairie', '50000', 'SAINT LO', 265.05),
(51, 3, 'Millereau', 'Marc', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430.42),
(52, 2, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', '21000', 'DIJON', 281.05),
(53, 2, 'Vittorio', 'Myriam', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356.23),
(54, 3, 'Lapasset', 'Nhieu', '31 av 6 Juin', '52000', 'CHAUMONT', 107),
(55, 1, 'Plantet-Besnier', 'Nicole', '10 av 1ère Armée Française', '86000', 'CHATELLEREAULT', 369.94),
(56, 1, 'Chubilleau', 'Pascal', '3 r Hastings', '15000', 'AURRILLAC', 290.75),
(57, 2, 'Robert', 'Pascal', '31 r St Jean', '93000', 'BOBIGNY', 162.41),
(58, 2, 'Jean', 'Pascale', '114 r Authie', '49100', 'SAUMUR', 375.52),
(59, 2, 'Chanteloube', 'Patrice', '14 av Thiès', '13000', 'MARSEILLE', 478.01),
(60, 4, 'Lecuirot', 'Patrice', 'résid St Pères 55 r Pigacière', '54000', 'NANCY', 239.66),
(61, 2, 'Gandon', 'Patrick', '47 av Robert Schuman', '37000', 'TOURS', 599.06),
(62, 1, 'Mirouf', 'Patrick', '22 r Puits Picard', '74000', 'ANNECY', 458.42),
(63, 2, 'Boireaux', 'Philippe', '14 av Thiès', '10000', 'CHALON EN CHAMPAGNE', 454.48),
(64, 3, 'Cendrier', 'Philippe', '7 pl St Gilles', '12000', 'RODEZ', 164.16),
(65, 2, 'Duhamel', 'Philippe', '114 r Authie', '34000', 'MONTPELLIER', 98.62),
(66, 1, 'Grigy', 'Philippe', '15 r Mélingue', '44000', 'CLISSON', 285.1),
(67, 1, 'Linard', 'Philippe', '1 r Albert de Mun', '81000', 'ALBI', 486.3),
(68, 4, 'Lozier', 'Philippe', '8 r Gaillon', '31000', 'TOULOUSE', 48.4),
(69, 4, 'Dechâtre', 'Pierre', '63 av Thiès', '23000', 'MONTLUCON', 253.75),
(70, 5, 'Goessens', 'Pierre', '22 r Jean Romain', '40000', 'MONT DE MARSAN', 426.19),
(71, 3, 'Leménager', 'Pierre', '39 av 6 Juin', '57000', 'METZ', 118.7),
(72, 3, 'Née', 'Pierre', '39 av 6 Juin', '82000', 'MONTAUBAN', 72.54),
(73, 2, 'Guyot', 'Pierre-Laurent', '43 bd Gén Vanier', '48000', 'MENDE', 352.31),
(74, 2, 'Chauchard', 'Roger', '9 r Vaucelles', '13000', 'MARSEILLE', 552.19),
(75, 2, 'Mabire', 'Roland', '11 r Boutiques', '67000', 'STRASBOURG', 422.39),
(76, 2, 'Leroy', 'Soazig', '45 r Boutiques', '61000', 'ALENCON', 570.67),
(77, 2, 'Guyot', 'Stéphane', '26 r Hérouville', '46000', 'FIGEAC', 28.85),
(78, 2, 'Delposen', 'Sylvain', '39 av 6 Juin', '27000', 'DREUX', 292.01),
(79, 2, 'Rault', 'Sylvie', '15 bd Richemond', '2000', 'SOISSON', 526.6),
(80, 4, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', '88000', 'EPINAL', 425.24),
(81, 4, 'Alliet-Grach', 'Thierry', '14 av Thiès', '7000', 'PRIVAS', 451.31),
(82, 5, 'Bayard', 'Thierry', '92 r Falaise', '42000', 'SAINT ETIENNE', 271.71),
(83, 2, 'Gauchet', 'Thierry', '7 r Desmoueux', '38100', 'GRENOBLE', 406.1),
(84, 5, 'Bobichon', 'Tristan', '219 r Caponière', '9000', 'FOIX', 218.36),
(85, 1, 'Duchemin-Laniel', 'Véronique', '130 r St Jean', '33000', 'LIBOURNE', 265.61),
(86, 1, 'Laurent', 'Younès', '34 r Demolombe', '53000', 'MAYENNE', 496.1);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

DROP TABLE IF EXISTS `rapport_visite`;
CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medecin_id` int(11) DEFAULT NULL,
  `visiteur_id` int(11) DEFAULT NULL,
  `dateRapport` datetime NOT NULL,
  `bilan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `motif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D1D741714F31A84` (`medecin_id`),
  KEY `IDX_D1D741717F72333D` (`visiteur_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`id`, `medecin_id`, `visiteur_id`, `dateRapport`, `bilan`, `motif`) VALUES
(1, 1, 1, '2015-04-05 00:00:00', 'Test', 'test'),
(2, 51, 1, '2015-04-10 00:00:00', 'Rapport du jour', 'Bah faut bien en faire un !'),
(3, 46, 1, '2015-04-09 00:00:00', 'Rapport du 09', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

DROP TABLE IF EXISTS `type_praticien`;
CREATE TABLE IF NOT EXISTS `type_praticien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleType` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `type_praticien`
--

INSERT INTO `type_praticien` (`id`, `libelleType`) VALUES
(1, 'Médecine de ville'),
(2, 'Médecin hospitalier'),
(3, 'Personnel de santé'),
(4, 'Pharmacien Hospitalier'),
(5, 'Pharmacien Officine');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

DROP TABLE IF EXISTS `visiteur`;
CREATE TABLE IF NOT EXISTS `visiteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `idGSB` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateEmbauche` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4EA587B892FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_4EA587B8A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `idGSB`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `dateEmbauche`) VALUES
(1, 'lvillachane', 'lvillachane', 'lvillachane@gsb-report.dev', 'lvillachane@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', '2015-04-14 11:47:01', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'a131', 'Villechalane', 'Louis', '8 rue des Charmes', '46000', 'Cahors', '2012-12-21 15:13:00'),
(2, 'dandre', 'dandre', 'user2@gsb-report.dev', 'user2@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'a17', 'Andre', 'David', '1 rue Petit', '46200', 'Lalbenque', '1998-11-23 00:00:00'),
(3, 'cbedos', 'cbedos', 'user3@gsb-report.dev', 'user3@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'a55', 'Bedos', 'Christian', '1 rue Peranud', '46250', 'Montcuq', '1995-01-12 00:00:00'),
(4, 'ltusseau', 'ltusseau', 'user4@gsb-report.dev', 'user4@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'a93', 'Tusseau', 'Louis', '22 rue des Ternes', '46123', 'Gramat', '2000-05-01 00:00:00'),
(5, 'pbentot', 'pbentot', 'user5@gsb-report.dev', 'user5@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b13', 'Bentot', 'Pascal', '11 allée des Cerises', '46512', 'Bessines', '1992-07-09 00:00:00'),
(6, 'lbioret', '1', 'user6@gsb-report.dev', 'user6@gsb-report.dev', 0, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b16', 'Bioret', 'Luc', '1 Avenue gambetta', '46000', 'Cahors', '1998-05-11 00:00:00'),
(7, 'fbunisset', 'fbunisset', 'user7@gsb-report.dev', 'user7@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b19', 'Bunisset', 'Francis', '10 rue des Perles', '93100', 'Montreuil', '1987-10-21 00:00:00'),
(8, 'dbunisset', 'dbunisset', 'user8@gsb-report.dev', 'user8@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b25', 'Bunisset', 'Denise', '23 rue Manin', '75019', 'paris', '2010-12-05 00:00:00'),
(9, 'bcacheux', 'bcacheux', 'user9@gsb-report.dev', 'user9@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b28', 'Cacheux', 'Bernard', '114 rue Blanche', '75017', 'Paris', '2009-11-12 00:00:00'),
(10, 'ecadic', 'ecadic', 'user10@gsb-report.dev', 'user10@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b34', 'Cadic', 'Eric', '123 avenue de la République', '75011', 'Paris', '2008-09-23 00:00:00'),
(11, 'ccharoze', 'ccharoze', 'user11@gsb-report.dev', 'user11@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b4', 'Charoze', 'Catherine', '100 rue Petit', '75019', 'Paris', '2005-11-12 00:00:00'),
(12, 'cclepkens', 'cclepkens', 'user12@gsb-report.dev', 'user12@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b50', 'Clepkens', 'Christophe', '12 allée des Anges', '93230', 'Romainville', '2003-08-11 00:00:00'),
(13, 'vcottin', 'vcottin', 'user13@gsb-report.dev', 'user13@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'b59', 'Cottin', 'Vincenne', '36 rue Des Roches', '93100', 'Monteuil', '2001-11-18 00:00:00'),
(14, 'fdaburon', 'fdaburon', 'user14@gsb-report.dev', 'user14@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'c14', 'Daburon', 'François', '13 rue de Chanzy', '94000', 'Créteil', '2002-02-11 00:00:00'),
(15, 'pde', 'pde', 'user15@gsb-report.dev', 'user15@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'c3', 'De', 'Philippe', '13 rue Barthes', '94000', 'Créteil', '2010-12-14 00:00:00'),
(16, 'mdebelle', 'mdebelle', 'user16@gsb-report.dev', 'user16@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'c54', 'Debelle', 'Michel', '181 avenue Barbusse', '93210', 'Rosny', '2006-11-23 00:00:00'),
(17, 'jdebelle', 'jdebelle', 'user17@gsb-report.dev', 'user17@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'd13', 'Debelle', 'Jeanne', '134 allée des Joncs', '44000', 'Nantes', '2000-05-11 00:00:00'),
(18, 'mdebroise', 'mdebroise', 'user18@gsb-report.dev', 'user18@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'd51', 'Debroise', 'Michel', '2 Bld Jourdain', '44000', 'Nantes', '2001-04-17 00:00:00'),
(19, 'ndesmarquest', 'ndesmarquest', 'user19@gsb-report.dev', 'user19@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e22', 'Desmarquest', 'Nathalie', '14 Place d Arc', '45000', 'Orléans', '2005-11-12 00:00:00'),
(20, 'pdesnost', 'pdesnost', 'user20@gsb-report.dev', 'user20@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e24', 'Desnost', 'Pierre', '16 avenue des Cèdres', '23200', 'Guéret', '2001-02-05 00:00:00'),
(21, 'fdudouit', 'fdudouit', 'user21@gsb-report.dev', 'user21@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e39', 'Dudouit', 'Frédéric', '18 rue de l église', '23120', 'GrandBourg', '2000-08-01 00:00:00'),
(22, 'cduncombe', 'cduncombe', 'user22@gsb-report.dev', 'user22@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e49', 'Duncombe', 'Claude', '19 rue de la tour', '23100', 'La souteraine', '1987-10-10 00:00:00'),
(23, 'cenault', 'cenault', 'user23@gsb-report.dev', 'user23@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e5', 'Enault-Pascreau', 'Céline', '25 place de la gare', '23200', 'Gueret', '1995-09-01 00:00:00'),
(24, 'veynde', 'veynde', 'user24@gsb-report.dev', 'user24@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'e52', 'Eynde', 'Valérie', '3 Grand Place', '13015', 'Marseille', '1999-11-01 00:00:00'),
(25, 'jfinck', 'jfinck', 'user25@gsb-report.dev', 'user25@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'f21', 'Finck', 'Jacques', '10 avenue du Prado', '13002', 'Marseille', '2001-11-10 00:00:00'),
(26, 'ffremont', 'ffremont', 'user26@gsb-report.dev', 'user26@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'f39', 'Frémont', 'Fernande', '4 route de la mer', '13012', 'Allauh', '1998-10-01 00:00:00'),
(27, 'agest', 'agest', 'user27@gsb-report.dev', 'user27@gsb-report.dev', 1, '74vynpg8khogowoswscww4owsoo80wg', 'wQYIMpaxk+j3eEOGr4jy0iFj1FFHrqwMfgDp0/mavnpwAd2oh16OLJPSWAWLsPo7eZKawftaH4wrZzU2CcMV2A==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'f4', 'Gest', 'Alain', '30 avenue de la mer', '13025', 'Berre', '1985-11-01 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `FK_9A9C723A97A77B84` FOREIGN KEY (`famille_id`) REFERENCES `famille` (`id`);

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_D9A27D33635E304` FOREIGN KEY (`typepraticien_id`) REFERENCES `type_praticien` (`id`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_D1D741714F31A84` FOREIGN KEY (`medecin_id`) REFERENCES `praticien` (`id`),
  ADD CONSTRAINT `FK_D1D741717F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
