-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 mei 2022 om 22:44
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `85112_back12`
--
CREATE DATABASE IF NOT EXISTS `85112_back12` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `85112_back12`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `back12_bands`
--

CREATE TABLE `back12_bands` (
  `ID` int(11) NOT NULL,
  `Naam` varchar(250) NOT NULL,
  `Land` varchar(250) NOT NULL,
  `AantalLeden` int(11) NOT NULL,
  `Muzieksoort` varchar(250) NOT NULL,
  `Info` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `back12_users`
--

CREATE TABLE `back12_users` (
  `Gebruikersnaam` varchar(250) NOT NULL,
  `Wachtwoord` varchar(250) NOT NULL,
  `Level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `back12_users`
--

INSERT INTO `back12_users` (`Gebruikersnaam`, `Wachtwoord`, `Level`) VALUES
('wawa', '5bae372e69f5293eda5b478a2663f5330fe41631', 0),
('wawa', 'woww', 1),
('we', 'wa', 1),
('we', '9c59841cb1f2452e998f43d943c78ad692f425ce', 1),
('wer', '24a878ae0121a9e422a631a6d507fe76cd5ee358', 1),
('wes', 'was', 1),
('wes', '3de521d3619155e9228f83cc5f773bfcbfc52749', 1),
('wes', 'wass', 1),
('wes', '106a73018eaff892afd17701521d86d254f2b3a8', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `back12_bands`
--
ALTER TABLE `back12_bands`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `back12_bands`
--
ALTER TABLE `back12_bands`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `85112_univers2`
--
CREATE DATABASE IF NOT EXISTS `85112_univers2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `85112_univers2`;
--
-- Database: `cmsstrapped`
--
CREATE DATABASE IF NOT EXISTS `cmsstrapped` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cmsstrapped`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `blokken_blok`
--

CREATE TABLE `blokken_blok` (
  `id` int(11) NOT NULL,
  `titel` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `actief` int(1) NOT NULL DEFAULT 0,
  `publiek` int(1) NOT NULL DEFAULT 0,
  `typeEdit` int(1) NOT NULL DEFAULT 0,
  `datum` bigint(14) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `standaard` int(1) NOT NULL DEFAULT 0,
  `positie_layout` int(11) NOT NULL DEFAULT 0,
  `replacementkey` varchar(50) NOT NULL DEFAULT '',
  `taal` int(1) NOT NULL DEFAULT 0,
  `extra_id` varchar(255) NOT NULL DEFAULT '',
  `extra_stijl` varchar(255) NOT NULL DEFAULT '',
  `datum_van` bigint(14) NOT NULL DEFAULT 0,
  `datum_tot` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `blokken_config`
--

CREATE TABLE `blokken_config` (
  `id` int(11) NOT NULL,
  `stijlen` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `blokken_layout`
--

CREATE TABLE `blokken_layout` (
  `id` int(11) NOT NULL,
  `layout` varchar(250) NOT NULL DEFAULT '',
  `html_top` text NOT NULL,
  `html_bottom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `blokken_pagina`
--

CREATE TABLE `blokken_pagina` (
  `id` int(11) NOT NULL,
  `blok` int(11) NOT NULL DEFAULT 0,
  `pagina` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `carousel_carousel`
--

CREATE TABLE `carousel_carousel` (
  `id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `standaard` int(11) NOT NULL DEFAULT 0,
  `marker` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `css_id` varchar(255) NOT NULL DEFAULT '',
  `css_class` varchar(255) NOT NULL DEFAULT '',
  `micro_template_id` int(11) NOT NULL DEFAULT 0,
  `slide_width` varchar(255) NOT NULL DEFAULT '',
  `slide_height` varchar(255) NOT NULL DEFAULT '',
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `carousel_koppeling`
--

CREATE TABLE `carousel_koppeling` (
  `id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL DEFAULT 0,
  `tabel` varchar(250) NOT NULL DEFAULT '',
  `tabel_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `carousel_layers`
--

CREATE TABLE `carousel_layers` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL DEFAULT 0,
  `carousel_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `tekst` text NOT NULL,
  `link` varchar(250) NOT NULL DEFAULT '',
  `class` varchar(250) NOT NULL DEFAULT '',
  `type_animatie` int(11) NOT NULL DEFAULT 0,
  `pos_top` int(11) NOT NULL DEFAULT 0,
  `pos_left` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `background_color` varchar(250) NOT NULL DEFAULT '',
  `font` varchar(250) NOT NULL DEFAULT '',
  `font_size` int(11) NOT NULL DEFAULT 0,
  `color` varchar(250) NOT NULL DEFAULT '',
  `padding_top` int(11) NOT NULL DEFAULT 0,
  `padding_left` int(11) NOT NULL DEFAULT 0,
  `padding_right` int(11) NOT NULL DEFAULT 0,
  `padding_bottom` int(11) NOT NULL DEFAULT 0,
  `border_top` int(11) NOT NULL DEFAULT 0,
  `border_left` int(11) NOT NULL DEFAULT 0,
  `border_right` int(11) NOT NULL DEFAULT 0,
  `border_bottom` int(11) NOT NULL DEFAULT 0,
  `border_color` varchar(250) NOT NULL DEFAULT '',
  `border_style` int(11) NOT NULL DEFAULT 0,
  `line_height` int(11) NOT NULL DEFAULT 0,
  `afgeronde_hoeken` int(11) NOT NULL DEFAULT 0,
  `word_wrap` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `carousel_menu`
--

CREATE TABLE `carousel_menu` (
  `id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL DEFAULT 0,
  `menu_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `carousel_slide`
--

CREATE TABLE `carousel_slide` (
  `id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `vrij_html` text NOT NULL,
  `text_titel` varchar(250) NOT NULL DEFAULT '',
  `text_text` text NOT NULL,
  `text_link_text` varchar(250) NOT NULL DEFAULT '',
  `text_link_url` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_algemeen`
--

CREATE TABLE `configuratie_algemeen` (
  `id` int(11) NOT NULL,
  `titel_website` varchar(250) NOT NULL DEFAULT '',
  `thema_website` varchar(250) NOT NULL DEFAULT '',
  `url_development` varchar(250) NOT NULL DEFAULT '',
  `url_preview` varchar(250) NOT NULL DEFAULT '',
  `url_live` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `site_active` int(11) NOT NULL DEFAULT 0,
  `status_site` int(11) NOT NULL DEFAULT 0,
  `status_cache` int(11) NOT NULL DEFAULT 0,
  `status_ip_filter` varchar(250) NOT NULL DEFAULT '',
  `pagina_na_login` varchar(250) NOT NULL DEFAULT '',
  `status_notitie` varchar(250) NOT NULL DEFAULT '',
  `underconstruction_menu_id` int(11) NOT NULL DEFAULT 0,
  `pagenotfound_menu_id` int(11) NOT NULL DEFAULT 0,
  `google_translate_api_key` varchar(250) NOT NULL DEFAULT '',
  `maps_api_key` varchar(250) NOT NULL DEFAULT '',
  `mail_api_key` varchar(250) NOT NULL DEFAULT '',
  `api_key_extra_1` varchar(250) NOT NULL DEFAULT '',
  `api_key_extra_2` varchar(250) NOT NULL DEFAULT '',
  `google_captcha_sitekey` varchar(250) NOT NULL DEFAULT '',
  `google_captcha_secretkey` varchar(250) NOT NULL DEFAULT '',
  `secret_key` varchar(250) NOT NULL DEFAULT '',
  `cookie_setting` int(11) NOT NULL DEFAULT 0,
  `cookie_voorkeuren` text NOT NULL,
  `cms_taal` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_algemeen`
--

INSERT INTO `configuratie_algemeen` (`id`, `titel_website`, `thema_website`, `url_development`, `url_preview`, `url_live`, `email`, `site_active`, `status_site`, `status_cache`, `status_ip_filter`, `pagina_na_login`, `status_notitie`, `underconstruction_menu_id`, `pagenotfound_menu_id`, `google_translate_api_key`, `maps_api_key`, `mail_api_key`, `api_key_extra_1`, `api_key_extra_2`, `google_captcha_sitekey`, `google_captcha_secretkey`, `secret_key`, `cookie_setting`, `cookie_voorkeuren`, `cms_taal`) VALUES
(1, 'cmsstrapped.nl', 'default', 'http://localhost/cmsstrapped.nl/', 'https://server.webtwister.nl/cmsstrapped.nl/', 'http://www.cmsstrapped.nl/', 'email@cmsstrapped.nl', 1, 1, 0, '::1;127.0.0.1;81.205.153.168;94.209.179.106;83.86.174.163;83.85.48.65;::1;', 'main.php', 'Deze website is momenteel in onderhoud.', 1, 0, '', '', '', '', '', '', '', 'a30626a42bb75cbaa30de096c7eb491c', 2, '<p>Geef uw voorkeuren met betrekking tot cookies</p>', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_api_set`
--

CREATE TABLE `configuratie_api_set` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `notitie` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_api_set`
--

INSERT INTO `configuratie_api_set` (`id`, `titel`, `notitie`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'sendgrid', '', 1, 1, 20211129120103, 20211129120103, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_api_set_keys`
--

CREATE TABLE `configuratie_api_set_keys` (
  `id` int(11) NOT NULL,
  `apiset_id` int(11) NOT NULL DEFAULT 0,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `extra` text NOT NULL,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_api_set_keys`
--

INSERT INTO `configuratie_api_set_keys` (`id`, `apiset_id`, `sleutel`, `waarde`, `extra`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`) VALUES
(1, 1, 'apikey', '', '', 1, 20211129120103, 20211129120103);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_backup`
--

CREATE TABLE `configuratie_backup` (
  `id` int(11) NOT NULL,
  `tabel` varchar(250) NOT NULL DEFAULT '',
  `tabel_id` int(11) NOT NULL DEFAULT 0,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_backup`
--

INSERT INTO `configuratie_backup` (`id`, `tabel`, `tabel_id`, `sleutel`, `waarde`, `datum_toegevoegd`) VALUES
(1, 'menu', 1, 'id', '1', 20211129120651),
(2, 'menu', 1, 'naam_menu', 'Home', 20211129120651),
(3, 'menu', 1, 'isSubVan', '', 20211129120651),
(4, 'menu', 1, 'groep_id', '1', 20211129120651),
(5, 'menu', 1, 'naam_paginaurl', 'home', 20211129120651),
(6, 'menu', 1, 'naam_titlebalk', 'Home', 20211129120651),
(7, 'menu', 1, 'meta_description', '', 20211129120651),
(8, 'menu', 1, 'meta_keywords', '', 20211129120651),
(9, 'menu', 1, 'meta_title', '', 20211129120651),
(10, 'menu', 1, 'og_title', '', 20211129120651),
(11, 'menu', 1, 'og_description', '', 20211129120651),
(12, 'menu', 1, 'bodytag', '', 20211129120651),
(13, 'menu', 1, 'url', '', 20211129120651),
(14, 'menu', 1, 'positie', '2', 20211129120651),
(15, 'menu', 1, 'publiek', '1', 20211129120651),
(16, 'menu', 1, 'actief', '1', 20211129120651),
(17, 'menu', 1, 'type', '1', 20211129120651),
(18, 'menu', 1, 'cache', '1', 20211129120651),
(19, 'menu', 1, 'submenuTonen', '1', 20211129120651),
(20, 'menu', 1, 'datum_start', '', 20211129120651),
(21, 'menu', 1, 'datum_eind', '', 20211129120651),
(22, 'menu', 1, 'template_id', '1', 20211129120651),
(23, 'menu', 1, 'slideshow_tonen', '1', 20211129120651),
(24, 'menu', 1, 'h1_tonen', '1', 20211129120651),
(25, 'menu', 1, 'content_kolom1', '<p>Hier uw inhoud versie 1</p>\r\n', 20211129120651),
(26, 'menu', 1, 'content_kolom2', ' ', 20211129120651),
(27, 'menu', 1, 'content_kolom3', ' ', 20211129120651),
(28, 'menu', 1, 'samenvatting', ' ', 20211129120651),
(29, 'menu', 1, 'samenvatting_tonen', '', 20211129120651),
(30, 'menu', 1, 'link_to_first_child', '', 20211129120651),
(31, 'menu', 1, 'extra', '', 20211129120651),
(32, 'menu', 1, 'rel', '', 20211129120651),
(33, 'menu', 1, 'module_trigger', '', 20211129120651),
(34, 'menu', 1, 'url_complete', 'home/', 20211129120651),
(35, 'menu', 1, 'frequentie_wijziging', '1', 20211129120651),
(36, 'menu', 1, 'prioriteit', '0.4', 20211129120651),
(37, 'menu', 1, 'onepage_status', '', 20211129120651),
(38, 'menu', 1, 'onepage_content', '', 20211129120651),
(39, 'menu', 1, 'onepage_template', '', 20211129120651),
(40, 'menu', 1, 'onepage_menu_status', '1', 20211129120651),
(41, 'menu', 1, 'onepage_class', '', 20211129120651),
(42, 'menu', 1, 'onepage_pre_hook', '', 20211129120651),
(43, 'menu', 1, 'onepage_post_hook', '', 20211129120651),
(44, 'menu', 1, 'onepage_show_position', '', 20211129120651),
(45, 'menu', 1, 'datum_toegevoegd', '20211129120651', 20211129120651),
(46, 'menu', 1, 'datum_gewijzigd', '20211129120651', 20211129120651),
(47, 'menu', 1, 'verwijderd', '', 20211129120651),
(48, 'menu', 1, 'id', '1', 20211129120659),
(49, 'menu', 1, 'naam_menu', 'Home', 20211129120659),
(50, 'menu', 1, 'isSubVan', '', 20211129120659),
(51, 'menu', 1, 'groep_id', '1', 20211129120659),
(52, 'menu', 1, 'naam_paginaurl', 'home', 20211129120659),
(53, 'menu', 1, 'naam_titlebalk', 'Home', 20211129120659),
(54, 'menu', 1, 'meta_description', '', 20211129120659),
(55, 'menu', 1, 'meta_keywords', '', 20211129120659),
(56, 'menu', 1, 'meta_title', '', 20211129120659),
(57, 'menu', 1, 'og_title', '', 20211129120659),
(58, 'menu', 1, 'og_description', '', 20211129120659),
(59, 'menu', 1, 'bodytag', '', 20211129120659),
(60, 'menu', 1, 'url', '', 20211129120659),
(61, 'menu', 1, 'positie', '2', 20211129120659),
(62, 'menu', 1, 'publiek', '1', 20211129120659),
(63, 'menu', 1, 'actief', '1', 20211129120659),
(64, 'menu', 1, 'type', '1', 20211129120659),
(65, 'menu', 1, 'cache', '1', 20211129120659),
(66, 'menu', 1, 'submenuTonen', '1', 20211129120659),
(67, 'menu', 1, 'datum_start', '', 20211129120659),
(68, 'menu', 1, 'datum_eind', '', 20211129120659),
(69, 'menu', 1, 'template_id', '1', 20211129120659),
(70, 'menu', 1, 'slideshow_tonen', '1', 20211129120659),
(71, 'menu', 1, 'h1_tonen', '1', 20211129120659),
(72, 'menu', 1, 'content_kolom1', '<p>Hier uw inhoud versie 2</p>\r\n', 20211129120659),
(73, 'menu', 1, 'content_kolom2', ' ', 20211129120659),
(74, 'menu', 1, 'content_kolom3', ' ', 20211129120659),
(75, 'menu', 1, 'samenvatting', ' ', 20211129120659),
(76, 'menu', 1, 'samenvatting_tonen', '', 20211129120659),
(77, 'menu', 1, 'link_to_first_child', '', 20211129120659),
(78, 'menu', 1, 'extra', '', 20211129120659),
(79, 'menu', 1, 'rel', '', 20211129120659),
(80, 'menu', 1, 'module_trigger', '', 20211129120659),
(81, 'menu', 1, 'url_complete', 'home/', 20211129120659),
(82, 'menu', 1, 'frequentie_wijziging', '1', 20211129120659),
(83, 'menu', 1, 'prioriteit', '0.4', 20211129120659),
(84, 'menu', 1, 'onepage_status', '', 20211129120659),
(85, 'menu', 1, 'onepage_content', '', 20211129120659),
(86, 'menu', 1, 'onepage_template', '', 20211129120659),
(87, 'menu', 1, 'onepage_menu_status', '1', 20211129120659),
(88, 'menu', 1, 'onepage_class', '', 20211129120659),
(89, 'menu', 1, 'onepage_pre_hook', '', 20211129120659),
(90, 'menu', 1, 'onepage_post_hook', '', 20211129120659),
(91, 'menu', 1, 'onepage_show_position', '', 20211129120659),
(92, 'menu', 1, 'datum_toegevoegd', '20211129120659', 20211129120659),
(93, 'menu', 1, 'datum_gewijzigd', '20211129120659', 20211129120659),
(94, 'menu', 1, 'verwijderd', '', 20211129120659),
(95, 'menu', 1, 'id', '1', 20211129120704),
(96, 'menu', 1, 'naam_menu', 'Home', 20211129120704),
(97, 'menu', 1, 'isSubVan', '', 20211129120704),
(98, 'menu', 1, 'groep_id', '1', 20211129120704),
(99, 'menu', 1, 'naam_paginaurl', 'home', 20211129120704),
(100, 'menu', 1, 'naam_titlebalk', 'Home', 20211129120704),
(101, 'menu', 1, 'meta_description', '', 20211129120704),
(102, 'menu', 1, 'meta_keywords', '', 20211129120704),
(103, 'menu', 1, 'meta_title', '', 20211129120704),
(104, 'menu', 1, 'og_title', '', 20211129120704),
(105, 'menu', 1, 'og_description', '', 20211129120704),
(106, 'menu', 1, 'bodytag', '', 20211129120704),
(107, 'menu', 1, 'url', '', 20211129120704),
(108, 'menu', 1, 'positie', '2', 20211129120704),
(109, 'menu', 1, 'publiek', '1', 20211129120704),
(110, 'menu', 1, 'actief', '1', 20211129120704),
(111, 'menu', 1, 'type', '1', 20211129120704),
(112, 'menu', 1, 'cache', '1', 20211129120704),
(113, 'menu', 1, 'submenuTonen', '1', 20211129120704),
(114, 'menu', 1, 'datum_start', '', 20211129120704),
(115, 'menu', 1, 'datum_eind', '', 20211129120704),
(116, 'menu', 1, 'template_id', '1', 20211129120704),
(117, 'menu', 1, 'slideshow_tonen', '1', 20211129120704),
(118, 'menu', 1, 'h1_tonen', '1', 20211129120704),
(119, 'menu', 1, 'content_kolom1', '<p>Hier uw inhoud versie 3</p>\r\n', 20211129120704),
(120, 'menu', 1, 'content_kolom2', ' ', 20211129120704),
(121, 'menu', 1, 'content_kolom3', ' ', 20211129120704),
(122, 'menu', 1, 'samenvatting', ' ', 20211129120704),
(123, 'menu', 1, 'samenvatting_tonen', '', 20211129120704),
(124, 'menu', 1, 'link_to_first_child', '', 20211129120704),
(125, 'menu', 1, 'extra', '', 20211129120704),
(126, 'menu', 1, 'rel', '', 20211129120704),
(127, 'menu', 1, 'module_trigger', '', 20211129120704),
(128, 'menu', 1, 'url_complete', 'home/', 20211129120704),
(129, 'menu', 1, 'frequentie_wijziging', '1', 20211129120704),
(130, 'menu', 1, 'prioriteit', '0.4', 20211129120704),
(131, 'menu', 1, 'onepage_status', '', 20211129120704),
(132, 'menu', 1, 'onepage_content', '', 20211129120704),
(133, 'menu', 1, 'onepage_template', '', 20211129120704),
(134, 'menu', 1, 'onepage_menu_status', '1', 20211129120704),
(135, 'menu', 1, 'onepage_class', '', 20211129120704),
(136, 'menu', 1, 'onepage_pre_hook', '', 20211129120704),
(137, 'menu', 1, 'onepage_post_hook', '', 20211129120704),
(138, 'menu', 1, 'onepage_show_position', '', 20211129120704),
(139, 'menu', 1, 'datum_toegevoegd', '20211129120704', 20211129120704),
(140, 'menu', 1, 'datum_gewijzigd', '20211129120704', 20211129120704),
(141, 'menu', 1, 'verwijderd', '', 20211129120704),
(142, 'menu', 1, 'id', '1', 20211130133318),
(143, 'menu', 1, 'naam_menu', 'Home', 20211130133318),
(144, 'menu', 1, 'isSubVan', '', 20211130133318),
(145, 'menu', 1, 'groep_id', '1', 20211130133318),
(146, 'menu', 1, 'naam_paginaurl', 'home', 20211130133318),
(147, 'menu', 1, 'naam_titlebalk', 'Home', 20211130133318),
(148, 'menu', 1, 'meta_description', '', 20211130133318),
(149, 'menu', 1, 'meta_keywords', '', 20211130133318),
(150, 'menu', 1, 'meta_title', '', 20211130133318),
(151, 'menu', 1, 'og_title', '', 20211130133318),
(152, 'menu', 1, 'og_description', '', 20211130133318),
(153, 'menu', 1, 'bodytag', '', 20211130133318),
(154, 'menu', 1, 'url', '', 20211130133318),
(155, 'menu', 1, 'positie', '2', 20211130133318),
(156, 'menu', 1, 'publiek', '1', 20211130133318),
(157, 'menu', 1, 'actief', '1', 20211130133318),
(158, 'menu', 1, 'type', '1', 20211130133318),
(159, 'menu', 1, 'cache', '1', 20211130133318),
(160, 'menu', 1, 'submenuTonen', '1', 20211130133318),
(161, 'menu', 1, 'datum_start', '', 20211130133318),
(162, 'menu', 1, 'datum_eind', '', 20211130133318),
(163, 'menu', 1, 'template_id', '1', 20211130133318),
(164, 'menu', 1, 'slideshow_tonen', '1', 20211130133318),
(165, 'menu', 1, 'h1_tonen', '1', 20211130133318),
(166, 'menu', 1, 'content_kolom1', '<p>Hier uw inhoud versie 4</p>\r\n', 20211130133318),
(167, 'menu', 1, 'content_kolom2', ' ', 20211130133318),
(168, 'menu', 1, 'content_kolom3', ' ', 20211130133318),
(169, 'menu', 1, 'samenvatting', ' ', 20211130133318),
(170, 'menu', 1, 'samenvatting_tonen', '', 20211130133318),
(171, 'menu', 1, 'link_to_first_child', '', 20211130133318),
(172, 'menu', 1, 'extra', '', 20211130133318),
(173, 'menu', 1, 'rel', '', 20211130133318),
(174, 'menu', 1, 'module_trigger', '', 20211130133318),
(175, 'menu', 1, 'url_complete', 'home/', 20211130133318),
(176, 'menu', 1, 'frequentie_wijziging', '1', 20211130133318),
(177, 'menu', 1, 'prioriteit', '0.4', 20211130133318),
(178, 'menu', 1, 'onepage_status', '', 20211130133318),
(179, 'menu', 1, 'onepage_content', '', 20211130133318),
(180, 'menu', 1, 'onepage_template', '', 20211130133318),
(181, 'menu', 1, 'onepage_menu_status', '1', 20211130133318),
(182, 'menu', 1, 'onepage_class', '', 20211130133318),
(183, 'menu', 1, 'onepage_pre_hook', '', 20211130133318),
(184, 'menu', 1, 'onepage_post_hook', '', 20211130133318),
(185, 'menu', 1, 'onepage_show_position', '', 20211130133318),
(186, 'menu', 1, 'datum_toegevoegd', '20211130133318', 20211130133318),
(187, 'menu', 1, 'datum_gewijzigd', '20211130133318', 20211130133318),
(188, 'menu', 1, 'verwijderd', '', 20211130133318),
(194, 'menu_templates', 1, 'id', '1', 20211130144615),
(195, 'menu_templates', 1, 'naam', 'tmpl_basis', 20211130144615),
(196, 'menu_templates', 1, 'html', ' \r\n###TMPL_HEADER### V2\r\n\r\n<div class=\"maincontent container\">\r\n    <div class=\"row\">\r\n		<div class=\"col-12 col-sm-8\"> \r\n			###MAINTITLE###\r\n			###CONTENT1###		\r\n		</div>\r\n		<div class=\"col-12 col-sm-4\"> \r\n			###BLOKKEN### \r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n###TMPL_FOOTER###', 20211130144615),
(197, 'menu_templates', 1, 'aantal_kolomen', '1', 20211130144615),
(198, 'menu_templates', 1, 'standaard', '1', 20211130144615),
(199, 'menu_templates', 1, 'type', '1', 20211130144615),
(200, 'menu_templates', 1, 'tabel', '-', 20211130144615),
(201, 'menu_templates', 1, 'view', '', 20211130144615),
(202, 'menu_templates', 1, 'theme', 'default', 20211130144615),
(203, 'menu_templates', 1, 'verwijderd', '', 20211130144615),
(204, 'menu_templates', 1, 'id', '1', 20211130144618),
(205, 'menu_templates', 1, 'naam', 'tmpl_basis', 20211130144618),
(206, 'menu_templates', 1, 'html', ' \r\n###TMPL_HEADER### V3\r\n\r\n<div class=\"maincontent container\">\r\n    <div class=\"row\">\r\n		<div class=\"col-12 col-sm-8\"> \r\n			###MAINTITLE###\r\n			###CONTENT1###		\r\n		</div>\r\n		<div class=\"col-12 col-sm-4\"> \r\n			###BLOKKEN### \r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n###TMPL_FOOTER###', 20211130144618),
(207, 'menu_templates', 1, 'aantal_kolomen', '1', 20211130144618),
(208, 'menu_templates', 1, 'standaard', '1', 20211130144618),
(209, 'menu_templates', 1, 'type', '1', 20211130144618),
(210, 'menu_templates', 1, 'tabel', '-', 20211130144618),
(211, 'menu_templates', 1, 'view', '', 20211130144618),
(212, 'menu_templates', 1, 'theme', 'default', 20211130144618),
(213, 'menu_templates', 1, 'verwijderd', '', 20211130144618),
(214, 'menu_templates', 1, 'id', '1', 20211130144956),
(215, 'menu_templates', 1, 'naam', 'tmpl_basis', 20211130144956),
(216, 'menu_templates', 1, 'html', ' \r\n###TMPL_HEADER### V4\r\n\r\n<div class=\"maincontent container\">\r\n    <div class=\"row\">\r\n		<div class=\"col-12 col-sm-8\"> \r\n			###MAINTITLE###\r\n			###CONTENT1###		\r\n		</div>\r\n		<div class=\"col-12 col-sm-4\"> \r\n			###BLOKKEN### \r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n###TMPL_FOOTER###', 20211130144956),
(217, 'menu_templates', 1, 'aantal_kolomen', '1', 20211130144956),
(218, 'menu_templates', 1, 'standaard', '1', 20211130144956),
(219, 'menu_templates', 1, 'type', '1', 20211130144956),
(220, 'menu_templates', 1, 'tabel', '-', 20211130144956),
(221, 'menu_templates', 1, 'view', '', 20211130144956),
(222, 'menu_templates', 1, 'theme', 'default', 20211130144956),
(223, 'menu_templates', 1, 'verwijderd', '', 20211130144956),
(224, 'nieuws_nieuws', 0, 'id', '', 20211130150318),
(225, 'nieuws_nieuws', 0, 'titel', 'nieuwsartikel 1', 20211130150318),
(226, 'nieuws_nieuws', 0, 'slug', 'nieuwsartikel-1', 20211130150318),
(227, 'nieuws_nieuws', 0, 'inleiding', 'nieuwsartikel 1 inleiding', 20211130150318),
(228, 'nieuws_nieuws', 0, 'bericht', '<p>nieuwsartikel 1&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et diam arcu. Curabitur in nisi metus, egestas pulvinar odio. Curabitur tincidunt, quam eu congue ullamcorper, justo metus ornare risus, a consectetur metus nisi nec purus. Duis vitae sollicitudin massa. Nulla sollicitudin venenatis purus eu eleifend. Aliquam lobortis lorem in dolor congue ac molestie libero vehicula. Vestibulum vitae interdum elit. Pellentesque dignissim fringilla risus in venenatis. Integer consectetur molestie metus at blandit. Phasellus in diam ligula. Quisque porttitor cursus elementum. Nulla hendrerit aliquam leo non varius. Etiam at magna sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', 20211130150318),
(229, 'nieuws_nieuws', 0, 'meta_titel', '', 20211130150318),
(230, 'nieuws_nieuws', 0, 'meta_description', '', 20211130150318),
(231, 'nieuws_nieuws', 0, 'meta_tags', '', 20211130150318),
(232, 'nieuws_nieuws', 0, 'datum_publicatie', '20211130000000', 20211130150318),
(233, 'nieuws_nieuws', 0, 'auteur', 'WebTwister', 20211130150318),
(234, 'nieuws_nieuws', 0, 'status', '1', 20211130150318),
(235, 'nieuws_nieuws', 0, 'url_custom', '', 20211130150318),
(236, 'nieuws_nieuws', 0, 'url_custom_tag', 'Lees meer »', 20211130150318),
(237, 'nieuws_nieuws', 0, 'spotlight', '', 20211130150318),
(238, 'nieuws_nieuws', 0, 'datum_toegevoegd', '20211130150305', 20211130150318),
(239, 'nieuws_nieuws', 0, 'datum_gewijzigd', '20211130150305', 20211130150318),
(240, 'nieuws_nieuws', 0, 'verwijderd', '', 20211130150318),
(241, 'menu', 2, 'id', '2', 20211130150432),
(242, 'menu', 2, 'naam_menu', 'Blog', 20211130150432),
(243, 'menu', 2, 'isSubVan', '', 20211130150432),
(244, 'menu', 2, 'groep_id', '1', 20211130150432),
(245, 'menu', 2, 'naam_paginaurl', 'blog', 20211130150432),
(246, 'menu', 2, 'naam_titlebalk', 'Blog', 20211130150432),
(247, 'menu', 2, 'meta_description', '', 20211130150432),
(248, 'menu', 2, 'meta_keywords', '', 20211130150432),
(249, 'menu', 2, 'meta_title', '', 20211130150432),
(250, 'menu', 2, 'og_title', '', 20211130150432),
(251, 'menu', 2, 'og_description', '', 20211130150432),
(252, 'menu', 2, 'bodytag', '', 20211130150432),
(253, 'menu', 2, 'url', '', 20211130150432),
(254, 'menu', 2, 'positie', '3', 20211130150432),
(255, 'menu', 2, 'publiek', '1', 20211130150432),
(256, 'menu', 2, 'actief', '1', 20211130150432),
(257, 'menu', 2, 'type', '1', 20211130150432),
(258, 'menu', 2, 'cache', '1', 20211130150432),
(259, 'menu', 2, 'submenuTonen', '1', 20211130150432),
(260, 'menu', 2, 'datum_start', '', 20211130150432),
(261, 'menu', 2, 'datum_eind', '', 20211130150432),
(262, 'menu', 2, 'template_id', '1', 20211130150432),
(263, 'menu', 2, 'slideshow_tonen', '1', 20211130150432),
(264, 'menu', 2, 'h1_tonen', '1', 20211130150432),
(265, 'menu', 2, 'content_kolom1', '###NIEUWS###', 20211130150432),
(266, 'menu', 2, 'content_kolom2', ' ', 20211130150432),
(267, 'menu', 2, 'content_kolom3', ' ', 20211130150432),
(268, 'menu', 2, 'samenvatting', ' ', 20211130150432),
(269, 'menu', 2, 'samenvatting_tonen', '', 20211130150432),
(270, 'menu', 2, 'link_to_first_child', '', 20211130150432),
(271, 'menu', 2, 'extra', '', 20211130150432),
(272, 'menu', 2, 'rel', '', 20211130150432),
(273, 'menu', 2, 'module_trigger', 'nieuws', 20211130150432),
(274, 'menu', 2, 'url_complete', 'nieuws/', 20211130150432),
(275, 'menu', 2, 'frequentie_wijziging', '1', 20211130150432),
(276, 'menu', 2, 'prioriteit', '0.4', 20211130150432),
(277, 'menu', 2, 'onepage_status', '', 20211130150432),
(278, 'menu', 2, 'onepage_content', '', 20211130150432),
(279, 'menu', 2, 'onepage_template', '', 20211130150432),
(280, 'menu', 2, 'onepage_menu_status', '1', 20211130150432),
(281, 'menu', 2, 'onepage_class', '', 20211130150432),
(282, 'menu', 2, 'onepage_pre_hook', '', 20211130150432),
(283, 'menu', 2, 'onepage_post_hook', '', 20211130150432),
(284, 'menu', 2, 'onepage_show_position', '', 20211130150432),
(285, 'menu', 2, 'datum_toegevoegd', '20211130150432', 20211130150432),
(286, 'menu', 2, 'datum_gewijzigd', '20211130150432', 20211130150432),
(287, 'menu', 2, 'verwijderd', '', 20211130150432),
(288, 'menu_templates', 0, 'id', '', 20211130152146),
(289, 'menu_templates', 0, 'naam', 'tmpl_micro_nieuws_listitem', 20211130152146),
(290, 'menu_templates', 0, 'html', '<div class=\"nieuws-listview-item col-12 col-sm-6\" id=\"nieuws-listview-%ID%\">\r\n	<div class=\"inner\">\r\n		<div class=\"nieuws-listview-image\">%IMAGE%</div>\r\n		<h2><a href=\"%URL%\">%TITEL%</a></h2>\r\n		<p>%INLEIDING%</p>\r\n		<p class=\"nieuws-listview-link\"><a href=\"%URL%\" rel=\"canonical\" class=\"btn btn-main\">%URLTAG%</a></p>\r\n	</div>\r\n</div>', 20211130152146),
(291, 'menu_templates', 0, 'aantal_kolomen', '1', 20211130152146),
(292, 'menu_templates', 0, 'standaard', '', 20211130152146),
(293, 'menu_templates', 0, 'type', '1', 20211130152146),
(294, 'menu_templates', 0, 'tabel', 'nieuws_nieuws', 20211130152146),
(295, 'menu_templates', 0, 'view', 'listview', 20211130152146),
(296, 'menu_templates', 0, 'theme', 'default', 20211130152146),
(297, 'menu_templates', 0, 'verwijderd', '', 20211130152146),
(298, 'menu_templates', 4, 'id', '4', 20211130152153),
(299, 'menu_templates', 4, 'naam', 'tmpl_micro_nieuws_listitem', 20211130152153),
(300, 'menu_templates', 4, 'html', '<div class=\"nieuws-listview-item col-12 col-sm-6\" id=\"nieuws-listview-%ID%\">\r\n	<div class=\"inner\">\r\n		<div class=\"nieuws-listview-image\">%IMAGE%</div>\r\n		<h2><a href=\"%URL%\">%TITEL%</a></h2>\r\n		<p>%INLEIDING%</p>\r\n		<p class=\"nieuws-listview-link\"><a href=\"%URL%\" rel=\"canonical\" class=\"btn btn-main\">%URLTAG%</a></p>\r\n	</div>\r\n</div>', 20211130152153),
(301, 'menu_templates', 4, 'aantal_kolomen', '1', 20211130152153),
(302, 'menu_templates', 4, 'standaard', '', 20211130152153),
(303, 'menu_templates', 4, 'type', '4', 20211130152153),
(304, 'menu_templates', 4, 'tabel', 'nieuws_nieuws', 20211130152153),
(305, 'menu_templates', 4, 'view', 'listview', 20211130152153),
(306, 'menu_templates', 4, 'theme', 'default', 20211130152153),
(307, 'menu_templates', 4, 'verwijderd', '', 20211130152153);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_bewerkpaden`
--

CREATE TABLE `configuratie_bewerkpaden` (
  `id` int(11) NOT NULL,
  `tabel_id` int(11) NOT NULL DEFAULT 0,
  `tabel_naam` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `hash` varchar(250) NOT NULL DEFAULT '',
  `aantal_clicks` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_bewerkpaden`
--

INSERT INTO `configuratie_bewerkpaden` (`id`, `tabel_id`, `tabel_naam`, `url`, `hash`, `aantal_clicks`, `datum_toegevoegd`) VALUES
(1, 1, 'menu', 'cms/main.php?page=modules/menu/menu_page_form.php&groep=1&id=1&parent=0&id=1', 'e5e093b89d732991b4ce101e79238a68', 0, 20211129120651),
(2, 1, 'nieuws_nieuws', 'cms/main.php?page=modules/nieuws/nieuws_nieuws_form.php&id=1', '708ac348414c24eaf08b614906868b33', 0, 20211130150318),
(3, 2, 'menu', 'cms/main.php?page=modules/menu/menu_page_form.php&groep=1&id=2&parent=0&id=2', 'e3fb762ada5b048b2bae0b5e25e03f0d', 0, 20211130150432);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_cookies`
--

CREATE TABLE `configuratie_cookies` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `cookie` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `locatie` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_customfields`
--

CREATE TABLE `configuratie_customfields` (
  `id` int(11) NOT NULL,
  `customfield_naam` varchar(250) NOT NULL DEFAULT '',
  `tabel_naam` varchar(250) NOT NULL DEFAULT '',
  `type` varchar(250) NOT NULL DEFAULT '',
  `name` varchar(250) NOT NULL DEFAULT '',
  `titel` varchar(250) NOT NULL DEFAULT '',
  `field_class` varchar(250) NOT NULL DEFAULT '',
  `field_id` varchar(250) NOT NULL DEFAULT '',
  `formgroup_class` varchar(250) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `placeholder` varchar(250) NOT NULL DEFAULT '',
  `readonly` int(11) NOT NULL DEFAULT 0,
  `required` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `maxlength` int(11) NOT NULL DEFAULT 0,
  `multiple` int(11) NOT NULL DEFAULT 0,
  `textarea_rowcount` int(11) NOT NULL DEFAULT 0,
  `disabled` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_customfields_waardes`
--

CREATE TABLE `configuratie_customfields_waardes` (
  `id` int(11) NOT NULL,
  `customfield_id` int(11) NOT NULL DEFAULT 0,
  `tabel_naam` varchar(250) NOT NULL DEFAULT '',
  `tabel_id` int(11) NOT NULL DEFAULT 0,
  `waarde` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_logfile`
--

CREATE TABLE `configuratie_logfile` (
  `id` int(11) NOT NULL,
  `datum` bigint(14) NOT NULL DEFAULT 0,
  `gebruiker` varchar(250) NOT NULL DEFAULT '',
  `log` longtext NOT NULL,
  `ip` varchar(250) NOT NULL DEFAULT '',
  `result` longtext NOT NULL,
  `aantal` int(11) NOT NULL DEFAULT 0,
  `prio` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_logfile`
--

INSERT INTO `configuratie_logfile` (`id`, `datum`, `gebruiker`, `log`, `ip`, `result`, `aantal`, `prio`) VALUES
(1, 20211129120104, 'system', 'Login benaderd', '::1', '', 1, 1),
(2, 20211129120110, 'Systeem', 'Login: WebTwister > admin/ad*****', '::1', '', 1, 1),
(3, 20211129120110, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(4, 20211129120113, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(5, 20211129120113, 'Systeem', 'WebTwister > modules/menu/menu_setup.php', '::1', '', 1, 1),
(6, 20211129120114, 'Systeem', 'WebTwister > modules/menu/menu_setup.php', '::1', '', 1, 1),
(7, 20211129120116, 'Systeem', 'WebTwister > modules/blokken/blokken_overview.php', '::1', '', 1, 1),
(8, 20211129120116, 'Systeem', 'WebTwister > modules/blokken/blokken_setup.php', '::1', '', 1, 1),
(9, 20211129120117, 'Systeem', 'WebTwister > modules/blokken/blokken_setup.php', '::1', '', 1, 1),
(10, 20211129120118, 'Systeem', 'WebTwister > modules/media/media_overview.php', '::1', '', 1, 1),
(11, 20211129120118, 'Systeem', 'WebTwister > modules/media/media_setup.php', '::1', '', 1, 1),
(12, 20211129120119, 'Systeem', 'WebTwister > modules/media/media_setup.php', '::1', '', 1, 1),
(13, 20211129120122, 'Systeem', 'WebTwister > modules/carousel/carousel_overview.php', '::1', '', 1, 1),
(14, 20211129120122, 'Systeem', 'WebTwister > modules/carousel/carousel_setup.php', '::1', '', 1, 1),
(15, 20211129120122, 'Systeem', 'WebTwister > modules/carousel/carousel_setup.php', '::1', '', 1, 1),
(16, 20211129120126, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(17, 20211129120127, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(18, 20211129120128, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(19, 20211129120129, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(20, 20211129120130, 'Systeem', 'WebTwister > modules/blokken/blokken_overview.php', '::1', '', 1, 1),
(21, 20211129120131, 'Systeem', 'WebTwister > modules/media/media_categorie.php', '::1', '', 1, 1),
(22, 20211129120133, 'Systeem', 'WebTwister > modules/blokken/blokken_overview.php', '::1', '', 1, 1),
(23, 20211129120135, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(24, 20211129120305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(25, 20211129120435, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(26, 20211129120605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(27, 20211129120645, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(28, 20211129120651, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(29, 20211129120651, 'Systeem', 'WebTwister > actie: menu_save', '::1', '', 1, 1),
(30, 20211129120651, 'WebTwister', 'menu: menu pagina (Home) is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1&edited=1\",\"formurl\":\"cms\\/main.php?page=modules\\/menu\\/menu_page_form.php&groep=1&id=1&parent=0\",\"id\":\"1\",\"positie\":\"2\",\"verwijderd\":\"0\",\"onepage_content\":\"\",\"vertaling\":[],\"isSubVan\":\"0\",\"actief\":\"1\",\"type\":\"1\",\"template_id\":\"1\",\"module_trigger\":\"\",\"groep_id\":\"1\",\"bodytag\":\"\",\"url\":\"\",\"publiek\":\"1\",\"submenuTonen\":\"1\",\"samenvatting_tonen\":\"0\",\"cache\":\"1\",\"datum_start\":\"0\",\"datum_eind\":\"0\",\"slideshow_tonen\":\"1\",\"h1_tonen\":\"1\",\"link_to_first_child\":\"0\",\"extra\":\"\",\"rel\":\"0\",\"onepage_status\":\"0\",\"onepage_show_position\":\"0\",\"onepage_menu_status\":\"1\",\"onepage_class\":\"\",\"onepage_pre_hook\":\"\",\"onepage_post_hook\":\"\",\"url_complete\":\"home\\/\",\"frequentie_wijziging\":\"1\",\"prioriteit\":\"0.4\",\"tabel_naam\":\"menu\",\"naam_menu\":\"Home\",\"naam_paginaurl\":\"home\",\"naam_titlebalk\":\"Home\",\"content_kolom1\":\"\\u003Cp\\u003EHier uw inhoud versie 1\\u003C\\/p\\u003E\\r\\n\",\"samenvatting\":\"\",\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"og_title\":\"\",\"og_description\":\"\"},\"succes\":true,\"feedback\":\"menu pagina (Home) is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu SET `id` = 1 , `naam_menu` = \'Home\', `isSubVan` = 0 , `groep_id` = 1 , `naam_paginaurl` = \'home\', `naam_titlebalk` = \'Home\', `meta_description` = \'\' , `meta_keywords` = \'\' , `meta_title` = \'\' , `og_title` = \'\' , `og_description` = \'\' , `bodytag` = \'\' , `url` = \'\' , `positie` = 2 , `publiek` = 1 , `actief` = 1 , `type` = 1 , `cache` = 1 , `submenuTonen` = 1 , `datum_start` = 0 , `datum_eind` = 0 , `template_id` = 1 , `slideshow_tonen` = 1 , `h1_tonen` = 1 , `content_kolom1` = \'\\u003Cp\\u003EHier uw inhoud versie 1\\u003C\\/p\\u003E\\\\r\\\\n\', `content_kolom2` = \' \', `content_kolom3` = \' \', `samenvatting` = \' \', `samenvatting_tonen` = 0 , `link_to_first_child` = 0 , `extra` = \'\' , `rel` = \'\' , `module_trigger` = \'\' , `url_complete` = \'home\\/\', `frequentie_wijziging` = \'1\', `prioriteit` = \'0.4\', `onepage_status` = 0 , `onepage_content` = \'\' , `onepage_template` = 0 , `onepage_menu_status` = 1 , `onepage_class` = \'\' , `onepage_pre_hook` = \'\' , `onepage_post_hook` = \'\' , `onepage_show_position` = \'\' , `datum_toegevoegd` = \'20211129120651\', `datum_gewijzigd` = \'20211129120651\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(31, 20211129120651, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(32, 20211129120653, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(33, 20211129120659, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(34, 20211129120659, 'Systeem', 'WebTwister > actie: menu_save', '::1', '', 1, 1),
(35, 20211129120659, 'WebTwister', 'menu: menu pagina (Home) is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1&edited=1\",\"formurl\":\"cms\\/main.php?page=modules\\/menu\\/menu_page_form.php&groep=1&id=1&parent=0\",\"id\":\"1\",\"positie\":\"2\",\"verwijderd\":\"0\",\"onepage_content\":\"\",\"vertaling\":[],\"isSubVan\":\"0\",\"actief\":\"1\",\"type\":\"1\",\"template_id\":\"1\",\"module_trigger\":\"\",\"groep_id\":\"1\",\"bodytag\":\"\",\"url\":\"\",\"publiek\":\"1\",\"submenuTonen\":\"1\",\"samenvatting_tonen\":\"0\",\"cache\":\"1\",\"datum_start\":\"0\",\"datum_eind\":\"0\",\"slideshow_tonen\":\"1\",\"h1_tonen\":\"1\",\"link_to_first_child\":\"0\",\"extra\":\"\",\"rel\":\"0\",\"onepage_status\":\"0\",\"onepage_show_position\":\"0\",\"onepage_menu_status\":\"1\",\"onepage_class\":\"\",\"onepage_pre_hook\":\"\",\"onepage_post_hook\":\"\",\"url_complete\":\"home\\/\",\"frequentie_wijziging\":\"1\",\"prioriteit\":\"0.4\",\"tabel_naam\":\"menu\",\"naam_menu\":\"Home\",\"naam_paginaurl\":\"home\",\"naam_titlebalk\":\"Home\",\"content_kolom1\":\"\\u003Cp\\u003EHier uw inhoud versie 2\\u003C\\/p\\u003E\\r\\n\",\"samenvatting\":\"\",\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"og_title\":\"\",\"og_description\":\"\"},\"succes\":true,\"feedback\":\"menu pagina (Home) is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu SET `id` = 1 , `naam_menu` = \'Home\', `isSubVan` = 0 , `groep_id` = 1 , `naam_paginaurl` = \'home\', `naam_titlebalk` = \'Home\', `meta_description` = \'\' , `meta_keywords` = \'\' , `meta_title` = \'\' , `og_title` = \'\' , `og_description` = \'\' , `bodytag` = \'\' , `url` = \'\' , `positie` = 2 , `publiek` = 1 , `actief` = 1 , `type` = 1 , `cache` = 1 , `submenuTonen` = 1 , `datum_start` = 0 , `datum_eind` = 0 , `template_id` = 1 , `slideshow_tonen` = 1 , `h1_tonen` = 1 , `content_kolom1` = \'\\u003Cp\\u003EHier uw inhoud versie 2\\u003C\\/p\\u003E\\\\r\\\\n\', `content_kolom2` = \' \', `content_kolom3` = \' \', `samenvatting` = \' \', `samenvatting_tonen` = 0 , `link_to_first_child` = 0 , `extra` = \'\' , `rel` = \'\' , `module_trigger` = \'\' , `url_complete` = \'home\\/\', `frequentie_wijziging` = \'1\', `prioriteit` = \'0.4\', `onepage_status` = 0 , `onepage_content` = \'\' , `onepage_template` = 0 , `onepage_menu_status` = 1 , `onepage_class` = \'\' , `onepage_pre_hook` = \'\' , `onepage_post_hook` = \'\' , `onepage_show_position` = \'\' , `datum_toegevoegd` = \'20211129120659\', `datum_gewijzigd` = \'20211129120659\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(36, 20211129120659, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(37, 20211129120701, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(38, 20211129120704, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(39, 20211129120704, 'Systeem', 'WebTwister > actie: menu_save', '::1', '', 1, 1),
(40, 20211129120704, 'WebTwister', 'menu: menu pagina (Home) is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1&edited=1\",\"formurl\":\"cms\\/main.php?page=modules\\/menu\\/menu_page_form.php&groep=1&id=1&parent=0\",\"id\":\"1\",\"positie\":\"2\",\"verwijderd\":\"0\",\"onepage_content\":\"\",\"vertaling\":[],\"isSubVan\":\"0\",\"actief\":\"1\",\"type\":\"1\",\"template_id\":\"1\",\"module_trigger\":\"\",\"groep_id\":\"1\",\"bodytag\":\"\",\"url\":\"\",\"publiek\":\"1\",\"submenuTonen\":\"1\",\"samenvatting_tonen\":\"0\",\"cache\":\"1\",\"datum_start\":\"0\",\"datum_eind\":\"0\",\"slideshow_tonen\":\"1\",\"h1_tonen\":\"1\",\"link_to_first_child\":\"0\",\"extra\":\"\",\"rel\":\"0\",\"onepage_status\":\"0\",\"onepage_show_position\":\"0\",\"onepage_menu_status\":\"1\",\"onepage_class\":\"\",\"onepage_pre_hook\":\"\",\"onepage_post_hook\":\"\",\"url_complete\":\"home\\/\",\"frequentie_wijziging\":\"1\",\"prioriteit\":\"0.4\",\"tabel_naam\":\"menu\",\"naam_menu\":\"Home\",\"naam_paginaurl\":\"home\",\"naam_titlebalk\":\"Home\",\"content_kolom1\":\"\\u003Cp\\u003EHier uw inhoud versie 3\\u003C\\/p\\u003E\\r\\n\",\"samenvatting\":\"\",\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"og_title\":\"\",\"og_description\":\"\"},\"succes\":true,\"feedback\":\"menu pagina (Home) is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu SET `id` = 1 , `naam_menu` = \'Home\', `isSubVan` = 0 , `groep_id` = 1 , `naam_paginaurl` = \'home\', `naam_titlebalk` = \'Home\', `meta_description` = \'\' , `meta_keywords` = \'\' , `meta_title` = \'\' , `og_title` = \'\' , `og_description` = \'\' , `bodytag` = \'\' , `url` = \'\' , `positie` = 2 , `publiek` = 1 , `actief` = 1 , `type` = 1 , `cache` = 1 , `submenuTonen` = 1 , `datum_start` = 0 , `datum_eind` = 0 , `template_id` = 1 , `slideshow_tonen` = 1 , `h1_tonen` = 1 , `content_kolom1` = \'\\u003Cp\\u003EHier uw inhoud versie 3\\u003C\\/p\\u003E\\\\r\\\\n\', `content_kolom2` = \' \', `content_kolom3` = \' \', `samenvatting` = \' \', `samenvatting_tonen` = 0 , `link_to_first_child` = 0 , `extra` = \'\' , `rel` = \'\' , `module_trigger` = \'\' , `url_complete` = \'home\\/\', `frequentie_wijziging` = \'1\', `prioriteit` = \'0.4\', `onepage_status` = 0 , `onepage_content` = \'\' , `onepage_template` = 0 , `onepage_menu_status` = 1 , `onepage_class` = \'\' , `onepage_pre_hook` = \'\' , `onepage_post_hook` = \'\' , `onepage_show_position` = \'\' , `datum_toegevoegd` = \'20211129120704\', `datum_gewijzigd` = \'20211129120704\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(41, 20211129120704, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(42, 20211129120708, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(43, 20211129120711, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(44, 20211129120713, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(45, 20211129120715, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(46, 20211129120751, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(47, 20211129120752, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(48, 20211129120754, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(49, 20211129120754, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(50, 20211129120754, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER###\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER### \",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER###\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER### \', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(51, 20211129120754, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(52, 20211129120925, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(53, 20211129121055, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(54, 20211129121225, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(55, 20211129121355, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(56, 20211129121525, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(57, 20211129121655, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(58, 20211129121905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(59, 20211129122005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(60, 20211129122205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(61, 20211129122305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(62, 20211129122505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(63, 20211129122605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(64, 20211129122805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(65, 20211129122905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(66, 20211129123105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(67, 20211129123205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(68, 20211129123405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(69, 20211129123505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(70, 20211129123542, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(71, 20211129123544, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(72, 20211129123544, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(73, 20211129123552, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(74, 20211129123554, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(75, 20211129123558, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(76, 20211129123559, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(77, 20211129123559, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(78, 20211129123729, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(79, 20211129123859, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(80, 20211129124029, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(81, 20211129124159, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(82, 20211129124405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(83, 20211129124505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(84, 20211129124705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(85, 20211129124805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(86, 20211129124952, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(87, 20211129125059, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(88, 20211129125229, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(89, 20211129125359, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(90, 20211129125529, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(91, 20211129125535, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(92, 20211129125540, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(93, 20211129125543, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(94, 20211129125713, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(95, 20211129125843, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(96, 20211129130013, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(97, 20211129130143, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(98, 20211129130313, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(99, 20211129130443, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(100, 20211129130613, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(101, 20211129130743, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(102, 20211129130913, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(103, 20211129131043, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(104, 20211129131213, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(105, 20211129131343, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(106, 20211129131513, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(107, 20211129131643, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(108, 20211129131813, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(109, 20211129131943, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(110, 20211129132113, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(111, 20211129132243, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(112, 20211129132413, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(113, 20211129132543, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(114, 20211129132713, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(115, 20211129132843, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(116, 20211129133013, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(117, 20211129133205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(118, 20211129133357, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(119, 20211129133359, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(120, 20211129133404, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(121, 20211129133406, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(122, 20211129133408, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(123, 20211129133410, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(124, 20211129133412, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(125, 20211129133542, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(126, 20211129133712, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(127, 20211129133843, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(128, 20211129134013, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(129, 20211129134143, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(130, 20211129134405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(131, 20211129134505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(132, 20211129134705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(133, 20211129134805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(134, 20211129135005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(135, 20211129135043, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(136, 20211129135213, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(137, 20211129135343, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(138, 20211129135513, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(139, 20211129135705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(140, 20211129135905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(141, 20211129140005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(142, 20211129140205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(143, 20211129140305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(144, 20211129140505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(145, 20211129140605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(146, 20211129140805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(147, 20211129140905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(148, 20211129141105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(149, 20211129141142, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(150, 20211129141313, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(151, 20211129141443, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(152, 20211129141613, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(153, 20211129141743, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(154, 20211129141824, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(155, 20211129141955, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(156, 20211129142125, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(157, 20211129142255, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(158, 20211129142425, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(159, 20211129142605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(160, 20211129142724, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(161, 20211129142854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(162, 20211129143024, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(163, 20211129143154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(164, 20211129143405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(165, 20211129143505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(166, 20211129143705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(167, 20211129143805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(168, 20211129144005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(169, 20211129144105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(170, 20211129144305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(171, 20211129144405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(172, 20211129144605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(173, 20211129144705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(174, 20211129144817, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(175, 20211129144820, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(176, 20211129144823, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(177, 20211129144932, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(178, 20211129144936, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(179, 20211129144947, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(180, 20211129144947, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(181, 20211129144947, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER###\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER### a\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER###\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER### a\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(182, 20211129144948, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(183, 20211129144952, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(184, 20211129144954, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(185, 20211129144956, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(186, 20211129145023, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(187, 20211129145025, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(188, 20211129145032, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(189, 20211129145032, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(190, 20211129145032, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER###\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER###\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER###\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER###\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(191, 20211129145032, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(192, 20211129145035, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(193, 20211129145035, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(194, 20211129145035, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER###\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER###\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER###\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER###\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(195, 20211129145035, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(196, 20211129145037, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(197, 20211129145039, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(198, 20211129145039, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(199, 20211129145039, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER###\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER###\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER###\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER###\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(200, 20211129145039, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(201, 20211129145044, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(202, 20211129145214, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(203, 20211129145344, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(204, 20211129145514, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(205, 20211129145644, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(206, 20211129145905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(207, 20211129150005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(208, 20211129150205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(209, 20211129150305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(210, 20211129150505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(211, 20211129150605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(212, 20211129150805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(213, 20211129150905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(214, 20211129151105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(215, 20211129151205, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(216, 20211129151405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(217, 20211129151505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(218, 20211129151705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(219, 20211129151805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(220, 20211129152005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(221, 20211129152105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(222, 20211129152305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(223, 20211129152405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(224, 20211129152605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(225, 20211129152705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(226, 20211129152905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(227, 20211129153005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(228, 20211129153114, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(229, 20211129153244, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(230, 20211129153412, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(231, 20211129153454, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(232, 20211129153624, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(233, 20211129153754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(234, 20211129153924, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(235, 20211129154054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(236, 20211129154332, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(237, 20211129154405, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(238, 20211129154605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(239, 20211129154705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(240, 20211129154937, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(241, 20211129154954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(242, 20211129155124, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(243, 20211129155254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(244, 20211129155424, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(245, 20211129155603, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(246, 20211129155724, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(247, 20211129155854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(248, 20211129160024, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(249, 20211130124912, 'Systeem', 'system > modules/menu/menu_overview.php', '::1', '', 1, 1),
(250, 20211130124912, 'system', 'Login benaderd', '::1', '', 1, 1),
(251, 20211130124912, 'system', 'Login error:U moet inloggen om het cms te kunnen benaderen.', '::1', '', 1, 1),
(252, 20211130124918, 'Systeem', 'Login: WebTwister > admin/ad*****', '::1', '', 1, 1),
(253, 20211130124918, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(254, 20211130125049, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(255, 20211130125219, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(256, 20211130125349, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(257, 20211130125519, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(258, 20211130125525, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(259, 20211130125528, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(260, 20211130125532, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(261, 20211130125534, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(262, 20211130125705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(263, 20211130125835, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(264, 20211130130005, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(265, 20211130130135, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(266, 20211130130305, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(267, 20211130130435, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(268, 20211130130605, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(269, 20211130130735, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(270, 20211130130905, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(271, 20211130131054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(272, 20211130131254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(273, 20211130131348, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(274, 20211130131505, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(275, 20211130131635, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(276, 20211130131805, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(277, 20211130131935, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(278, 20211130132105, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(279, 20211130132254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(280, 20211130132454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(281, 20211130132554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(282, 20211130132754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(283, 20211130132854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(284, 20211130133054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(285, 20211130133154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(286, 20211130133310, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(287, 20211130133312, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(288, 20211130133314, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(289, 20211130133318, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(290, 20211130133318, 'Systeem', 'WebTwister > actie: menu_save', '::1', '', 1, 1);
INSERT INTO `configuratie_logfile` (`id`, `datum`, `gebruiker`, `log`, `ip`, `result`, `aantal`, `prio`) VALUES
(291, 20211130133318, 'WebTwister', 'menu: menu pagina (Home) is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1&edited=1\",\"formurl\":\"cms\\/main.php?page=modules\\/menu\\/menu_page_form.php&groep=1&id=1&parent=0\",\"id\":\"1\",\"positie\":\"2\",\"verwijderd\":\"0\",\"onepage_content\":\"\",\"vertaling\":[],\"isSubVan\":\"0\",\"actief\":\"1\",\"type\":\"1\",\"template_id\":\"1\",\"module_trigger\":\"\",\"groep_id\":\"1\",\"bodytag\":\"\",\"url\":\"\",\"publiek\":\"1\",\"submenuTonen\":\"1\",\"samenvatting_tonen\":\"0\",\"cache\":\"1\",\"datum_start\":\"0\",\"datum_eind\":\"0\",\"slideshow_tonen\":\"1\",\"h1_tonen\":\"1\",\"link_to_first_child\":\"0\",\"extra\":\"\",\"rel\":\"0\",\"onepage_status\":\"0\",\"onepage_show_position\":\"0\",\"onepage_menu_status\":\"1\",\"onepage_class\":\"\",\"onepage_pre_hook\":\"\",\"onepage_post_hook\":\"\",\"url_complete\":\"home\\/\",\"frequentie_wijziging\":\"1\",\"prioriteit\":\"0.4\",\"tabel_naam\":\"menu\",\"naam_menu\":\"Home\",\"naam_paginaurl\":\"home\",\"naam_titlebalk\":\"Home\",\"content_kolom1\":\"\\u003Cp\\u003EHier uw inhoud versie 4\\u003C\\/p\\u003E\\r\\n\",\"samenvatting\":\"\",\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"og_title\":\"\",\"og_description\":\"\"},\"succes\":true,\"feedback\":\"menu pagina (Home) is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu SET `id` = 1 , `naam_menu` = \'Home\', `isSubVan` = 0 , `groep_id` = 1 , `naam_paginaurl` = \'home\', `naam_titlebalk` = \'Home\', `meta_description` = \'\' , `meta_keywords` = \'\' , `meta_title` = \'\' , `og_title` = \'\' , `og_description` = \'\' , `bodytag` = \'\' , `url` = \'\' , `positie` = 2 , `publiek` = 1 , `actief` = 1 , `type` = 1 , `cache` = 1 , `submenuTonen` = 1 , `datum_start` = 0 , `datum_eind` = 0 , `template_id` = 1 , `slideshow_tonen` = 1 , `h1_tonen` = 1 , `content_kolom1` = \'\\u003Cp\\u003EHier uw inhoud versie 4\\u003C\\/p\\u003E\\\\r\\\\n\', `content_kolom2` = \' \', `content_kolom3` = \' \', `samenvatting` = \' \', `samenvatting_tonen` = 0 , `link_to_first_child` = 0 , `extra` = \'\' , `rel` = \'\' , `module_trigger` = \'\' , `url_complete` = \'home\\/\', `frequentie_wijziging` = \'1\', `prioriteit` = \'0.4\', `onepage_status` = 0 , `onepage_content` = \'\' , `onepage_template` = 0 , `onepage_menu_status` = 1 , `onepage_class` = \'\' , `onepage_pre_hook` = \'\' , `onepage_post_hook` = \'\' , `onepage_show_position` = \'\' , `datum_toegevoegd` = \'20211130133318\', `datum_gewijzigd` = \'20211130133318\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(292, 20211130133318, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(293, 20211130133320, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(294, 20211130133329, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(295, 20211130133331, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(296, 20211130133502, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(297, 20211130133632, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(298, 20211130133716, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(299, 20211130133718, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(300, 20211130133728, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(301, 20211130133730, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(302, 20211130133741, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(303, 20211130133742, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(304, 20211130133802, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(305, 20211130133932, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(306, 20211130134024, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(307, 20211130134025, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(308, 20211130134027, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(309, 20211130134030, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(310, 20211130134032, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(311, 20211130134202, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(312, 20211130134332, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(313, 20211130134502, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(314, 20211130134632, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(315, 20211130134741, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(316, 20211130134912, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(317, 20211130135042, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(318, 20211130135212, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(319, 20211130135342, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(320, 20211130135509, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(321, 20211130135640, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(322, 20211130135810, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(323, 20211130135940, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(324, 20211130140110, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(325, 20211130140254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(326, 20211130140454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(327, 20211130140554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(328, 20211130140754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(329, 20211130140854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(330, 20211130141054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(331, 20211130141154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(332, 20211130141354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(333, 20211130141453, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(334, 20211130141610, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(335, 20211130141740, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(336, 20211130141910, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(337, 20211130142040, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(338, 20211130142210, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(339, 20211130142354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(340, 20211130142510, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(341, 20211130142640, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(342, 20211130142810, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(343, 20211130142940, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(344, 20211130143049, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(345, 20211130143220, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(346, 20211130143350, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(347, 20211130143520, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(348, 20211130143650, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(349, 20211130143820, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(350, 20211130143949, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(351, 20211130143950, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(352, 20211130144120, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(353, 20211130144250, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(354, 20211130144420, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(355, 20211130144536, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(356, 20211130144538, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(357, 20211130144609, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(358, 20211130144615, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(359, 20211130144615, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(360, 20211130144615, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER### V2\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER###\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER### V2\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER###\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(361, 20211130144615, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(362, 20211130144618, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(363, 20211130144618, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(364, 20211130144618, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1&edited=1\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"1\",\"naam\":\"tmpl_basis\",\"html\":\" \\r\\n###TMPL_HEADER### V3\\r\\n\\r\\n\\u003Cdiv class=\\\"maincontent container\\\"\\u003E\\r\\n    \\u003Cdiv class=\\\"row\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-8\\\"\\u003E \\r\\n\\t\\t\\t###MAINTITLE###\\r\\n\\t\\t\\t###CONTENT1###\\t\\t\\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"col-12 col-sm-4\\\"\\u003E \\r\\n\\t\\t\\t###BLOKKEN### \\r\\n\\t\\t\\u003C\\/div\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\\r\\n\\r\\n###TMPL_FOOTER###\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"1\",\"aantal_kolomen\":\"1\",\"tabel\":\"-\",\"view\":\"\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET standaard = 0 WHERE standaard != 2 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0},{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 1 , `naam` = \'tmpl_basis\', `html` = \' \\\\r\\\\n###TMPL_HEADER### V3\\\\r\\\\n\\\\r\\\\n\\u003Cdiv class=\\\\\\\"maincontent container\\\\\\\"\\u003E\\\\r\\\\n    \\u003Cdiv class=\\\\\\\"row\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-8\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###MAINTITLE###\\\\r\\\\n\\t\\t\\t###CONTENT1###\\t\\t\\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"col-12 col-sm-4\\\\\\\"\\u003E \\\\r\\\\n\\t\\t\\t###BLOKKEN### \\\\r\\\\n\\t\\t\\u003C\\/div\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\\\\r\\\\n\\\\r\\\\n###TMPL_FOOTER###\', `aantal_kolomen` = 1 , `standaard` = 1 , `type` = 1 , `tabel` = \'-\', `view` = \'\' , `theme` = \'default\', `verwijderd` = 0  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(365, 20211130144618, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(366, 20211130144620, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(367, 20211130144742, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(368, 20211130144744, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(369, 20211130144747, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(370, 20211130144827, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(371, 20211130144948, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(372, 20211130144956, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(373, 20211130144956, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(374, 20211130145052, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(375, 20211130145055, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(376, 20211130145108, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(377, 20211130145111, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(378, 20211130145112, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(379, 20211130145116, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(380, 20211130145246, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(381, 20211130145416, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(382, 20211130145546, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(383, 20211130145716, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(384, 20211130145729, 'Systeem', 'WebTwister > modules/configuratie/configuratie_overview.php', '::1', '', 1, 1),
(385, 20211130145734, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(386, 20211130145846, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(387, 20211130145904, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(388, 20211130150016, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(389, 20211130150034, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(390, 20211130150048, 'Systeem', 'WebTwister > modules/configuratie/configuratie_overview.php', '::1', '', 1, 1),
(391, 20211130150052, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(392, 20211130150056, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(393, 20211130150056, 'Systeem', 'WebTwister > actie: module-switch', '::1', '', 1, 1),
(394, 20211130150056, 'WebTwister', 'configuratie: Status van module is gewijzigd', '::1', '{\"data\":{\"action\":\"module-switch\",\"itemid\":\"0\",\"tabel\":\"configuratie_modules_beschikbaar\",\"module\":\"nieuws\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules.php\",\"statuskolom\":\"0\",\"current_status\":\"0\"},\"succes\":true,\"feedback\":\"Status van module is gewijzigd\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules.php\",\"sql\":[{\"succes\":true,\"query\":\"INSERT INTO\\r\\n\\t\\t\\t\\t\\t\\tconfiguratie_modules_menu (id, modules, pagina, naam, positie, status, verwijderd, admin)\\r\\n\\t\\t\\t\\t\\tVALUES\\r\\n\\t\\t\\t\\t\\t\\t(NULL, \'7\', \'_overview.php\', \'Overzicht\', \'1\',  \'1\', \'0\', \'0\'),\\r\\n\\t\\t\\t\\t\\t\\t(NULL, \'7\', \'_setup.php\', \'Info  Setup\', \'200\',  \'1\', \'0\', \'1\')\",\"error\":\"\",\"affected_rows\":2,\"insert_id\":37}]}', 1, 1),
(395, 20211130150056, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(396, 20211130150106, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(397, 20211130150109, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(398, 20211130150110, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(399, 20211130150110, 'Systeem', 'WebTwister > modules/nieuws/nieuws_setup.php', '::1', '', 1, 1),
(400, 20211130150113, 'Systeem', 'WebTwister > modules/nieuws/nieuws_setup.php', '::1', '', 1, 1),
(401, 20211130150204, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(402, 20211130150244, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(403, 20211130150301, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(404, 20211130150304, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(405, 20211130150305, 'Systeem', 'WebTwister > modules/nieuws/nieuws_nieuws_form.php', '::1', '', 1, 1),
(406, 20211130150318, 'Systeem', 'WebTwister > modules/nieuws/nieuws_actions.php', '::1', '', 1, 1),
(407, 20211130150318, 'Systeem', 'WebTwister > actie: nieuws_nieuws_save', '::1', '', 1, 1),
(408, 20211130150318, 'WebTwister', 'nieuws: toegevoegd', '::1', '{\"data\":{\"action\":\"nieuws_nieuws_save\",\"retour\":\"main.php?page=modules\\/nieuws\\/nieuws_overview.php\",\"id\":\"\",\"datum_toegevoegd\":\"20211130150305\",\"datum_gewijzigd\":\"20211130150305\",\"verwijderd\":\"0\",\"formurl\":\"cms\\/main.php?page=modules\\/nieuws\\/nieuws_nieuws_form.php\",\"vertaling\":[],\"datum_publicatie\":\"30\\/11\\/2021\",\"auteur\":\"WebTwister\",\"status\":\"1\",\"url_custom\":\"\",\"spotlight\":\"0\",\"titel\":\"nieuwsartikel 1\",\"slug\":\"nieuwsartikel-1\",\"inleiding\":\"nieuwsartikel 1 inleiding\",\"bericht\":\"\\u003Cp\\u003Enieuwsartikel 1&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et diam arcu. Curabitur in nisi metus, egestas pulvinar odio. Curabitur tincidunt, quam eu congue ullamcorper, justo metus ornare risus, a consectetur metus nisi nec purus. Duis vitae sollicitudin massa. Nulla sollicitudin venenatis purus eu eleifend. Aliquam lobortis lorem in dolor congue ac molestie libero vehicula. Vestibulum vitae interdum elit. Pellentesque dignissim fringilla risus in venenatis. Integer consectetur molestie metus at blandit. Phasellus in diam ligula. Quisque porttitor cursus elementum. Nulla hendrerit aliquam leo non varius. Etiam at magna sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\\u003C\\/p\\u003E\\r\\n\",\"url_custom_tag\":\"Lees meer \\u00bb\",\"meta_titel\":\"\",\"meta_description\":\"\",\"meta_tags\":\"\"},\"succes\":true,\"feedback\":\"toegevoegd\",\"retour\":\"main.php?page=modules\\/nieuws\\/nieuws_overview.php\",\"sql\":[{\"succes\":true,\"query\":\" INSERT INTO nieuws_nieuws SET id = NULL , `titel` = \'nieuwsartikel 1\', `slug` = \'nieuwsartikel-1\', `inleiding` = \'nieuwsartikel 1 inleiding\', `bericht` = \'\\u003Cp\\u003Enieuwsartikel 1&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et diam arcu. Curabitur in nisi metus, egestas pulvinar odio. Curabitur tincidunt, quam eu congue ullamcorper, justo metus ornare risus, a consectetur metus nisi nec purus. Duis vitae sollicitudin massa. Nulla sollicitudin venenatis purus eu eleifend. Aliquam lobortis lorem in dolor congue ac molestie libero vehicula. Vestibulum vitae interdum elit. Pellentesque dignissim fringilla risus in venenatis. Integer consectetur molestie metus at blandit. Phasellus in diam ligula. Quisque porttitor cursus elementum. Nulla hendrerit aliquam leo non varius. Etiam at magna sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\\u003C\\/p\\u003E\\\\r\\\\n\', `meta_titel` = \'\' , `meta_description` = \'\' , `meta_tags` = \'\' , `datum_publicatie` = \'20211130000000\', `auteur` = \'WebTwister\', `status` = 1 , `url_custom` = \'\' , `url_custom_tag` = \'Lees meer \\u00bb\', `spotlight` = 0 , `datum_toegevoegd` = \'20211130150305\', `datum_gewijzigd` = 20211130150305 , `verwijderd` = 0 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(409, 20211130150318, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(410, 20211130150335, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(411, 20211130150414, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(412, 20211130150422, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(413, 20211130150425, 'Systeem', 'WebTwister > modules/menu/menu_page_form.php', '::1', '', 1, 1),
(414, 20211130150432, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(415, 20211130150432, 'Systeem', 'WebTwister > actie: menu_save', '::1', '', 1, 1),
(416, 20211130150432, 'WebTwister', 'menu: menu pagina (Blog) is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1&edited=2\",\"formurl\":\"cms\\/main.php?page=modules\\/menu\\/menu_page_form.php&groep=1&id=2&parent=0\",\"id\":\"2\",\"positie\":\"3\",\"verwijderd\":\"0\",\"onepage_content\":\"\",\"vertaling\":[],\"isSubVan\":\"0\",\"actief\":\"1\",\"type\":\"1\",\"template_id\":\"1\",\"module_trigger\":\"nieuws\",\"groep_id\":\"1\",\"bodytag\":\"\",\"url\":\"\",\"publiek\":\"1\",\"submenuTonen\":\"1\",\"samenvatting_tonen\":\"0\",\"cache\":\"1\",\"datum_start\":\"0\",\"datum_eind\":\"0\",\"slideshow_tonen\":\"1\",\"h1_tonen\":\"1\",\"link_to_first_child\":\"0\",\"extra\":\"\",\"rel\":\"0\",\"onepage_status\":\"0\",\"onepage_show_position\":\"0\",\"onepage_menu_status\":\"1\",\"onepage_class\":\"\",\"onepage_pre_hook\":\"\",\"onepage_post_hook\":\"\",\"url_complete\":\"nieuws\\/\",\"frequentie_wijziging\":\"1\",\"prioriteit\":\"0.4\",\"tabel_naam\":\"menu\",\"naam_menu\":\"Blog\",\"naam_paginaurl\":\"blog\",\"naam_titlebalk\":\"Blog\",\"content_kolom1\":\"###NIEUWS###\",\"samenvatting\":\"\",\"meta_title\":\"\",\"meta_description\":\"\",\"meta_keywords\":\"\",\"og_title\":\"\",\"og_description\":\"\"},\"succes\":true,\"feedback\":\"menu pagina (Blog) is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_overview.php&parent=0&groep=1\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu SET `id` = 2 , `naam_menu` = \'Blog\', `isSubVan` = 0 , `groep_id` = 1 , `naam_paginaurl` = \'blog\', `naam_titlebalk` = \'Blog\', `meta_description` = \'\' , `meta_keywords` = \'\' , `meta_title` = \'\' , `og_title` = \'\' , `og_description` = \'\' , `bodytag` = \'\' , `url` = \'\' , `positie` = 3 , `publiek` = 1 , `actief` = 1 , `type` = 1 , `cache` = 1 , `submenuTonen` = 1 , `datum_start` = 0 , `datum_eind` = 0 , `template_id` = 1 , `slideshow_tonen` = 1 , `h1_tonen` = 1 , `content_kolom1` = \'###NIEUWS###\', `content_kolom2` = \' \', `content_kolom3` = \' \', `samenvatting` = \' \', `samenvatting_tonen` = 0 , `link_to_first_child` = 0 , `extra` = \'\' , `rel` = \'\' , `module_trigger` = \'nieuws\', `url_complete` = \'nieuws\\/\', `frequentie_wijziging` = \'1\', `prioriteit` = \'0.4\', `onepage_status` = 0 , `onepage_content` = \'\' , `onepage_template` = 0 , `onepage_menu_status` = 1 , `onepage_class` = \'\' , `onepage_pre_hook` = \'\' , `onepage_post_hook` = \'\' , `onepage_show_position` = \'\' , `datum_toegevoegd` = \'20211130150432\', `datum_gewijzigd` = \'20211130150432\', `verwijderd` = 0  WHERE id = \'2\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":2}]}', 1, 1),
(417, 20211130150432, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(418, 20211130150522, 'Systeem', 'WebTwister > modules/configuratie/configuratie_overview.php', '::1', '', 1, 1),
(419, 20211130150524, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(420, 20211130150532, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(421, 20211130150532, 'Systeem', 'WebTwister > actie: module-switch', '::1', '', 1, 1),
(422, 20211130150532, 'WebTwister', 'configuratie: Status van module is gewijzigd', '::1', '{\"data\":{\"action\":\"module-switch\",\"itemid\":\"0\",\"tabel\":\"configuratie_modules_beschikbaar\",\"module\":\"webwinkel\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules.php\",\"statuskolom\":\"0\",\"current_status\":\"0\"},\"succes\":true,\"feedback\":\"Status van module is gewijzigd\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules.php\",\"sql\":[{\"succes\":true,\"query\":\"INSERT INTO\\r\\n\\t\\t\\t\\t\\t\\tconfiguratie_modules_menu (id, modules, pagina, naam, positie, status, verwijderd, admin)\\r\\n\\t\\t\\t\\t\\tVALUES\\r\\n\\t\\t\\t\\t\\t\\t(NULL, \'8\', \'_overview.php\', \'Overzicht\', \'1\',  \'1\', \'0\', \'0\'),\\r\\n\\t\\t\\t\\t\\t\\t(NULL, \'8\', \'_setup.php\', \'Info  Setup\', \'200\',  \'1\', \'0\', \'1\')\",\"error\":\"\",\"affected_rows\":2,\"insert_id\":40}]}', 1, 1),
(423, 20211130150532, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(424, 20211130150538, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(425, 20211130150539, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_overview.php', '::1', '', 1, 1),
(426, 20211130150540, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_setup.php', '::1', '', 1, 1),
(427, 20211130150541, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_setup.php', '::1', '', 1, 1),
(428, 20211130150544, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(429, 20211130150546, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_setup.php', '::1', '', 1, 1),
(430, 20211130150547, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_setup.php', '::1', '', 1, 1),
(431, 20211130150556, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_config.php', '::1', '', 1, 1),
(432, 20211130150608, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_actions.php', '::1', '', 1, 1),
(433, 20211130150608, 'Systeem', 'WebTwister > actie: webwinkel_config_basis_save', '::1', '', 1, 1),
(434, 20211130150609, 'WebTwister', 'webwinkel: webwinkel_config_basis is gewijzigd.', '::1', '{\"data\":{\"action\":\"webwinkel_config_basis_save\",\"retour\":\"main.php?page=modules\\/webwinkel\\/webwinkel_config.php\",\"id\":\"1\",\"datum_gewijzigd\":\"20211130150556\",\"rekening_nummer\":\"NL01IBAN1234567890\",\"rekening_houder\":\"cmsstrapped.nl\",\"rekening_plaats\":\"Plaatsnaam\",\"bedrijfsnaam\":\"cmsstrapped.nl\",\"straat\":\"Straatnaam 1\",\"postcode\":\"1234AB\",\"woonplaats\":\"Plaatsnaam\",\"telefoon\":\"1234567890\",\"url_website\":\"http:\\/\\/localhost\\/cmsstrapped.nl\\/\",\"email\":\"\",\"kvk\":\"\",\"btw\":\"\",\"mail_config_id\":\"1\",\"webwinkel_beleid\":\"1\",\"voorraad_beleid\":\"1\",\"mail_factuur_type\":\"1\",\"winkelwagen_protocol\":\"1\",\"bestel_klant_type\":\"1\",\"aantal_producten_in_listview\":\"21\",\"shop_page_id\":\"3\",\"voorwaarden_page_id\":\"0\",\"developer_ips\":\"::1;127.0.0.1;81.205.153.168;94.209.179.106;83.86.174.163;83.85.48.65;::1;\",\"debug_mode\":\"1\",\"barcode_suggestie\":\"0\",\"prijzen_tonen_inclusief\":\"1\",\"briefpapier\":\"\",\"hashkey\":\"a30626a42bb75cbaa30de096c7eb491c\",\"cache\":\"3600\",\"conversiecode\":\"\"},\"succes\":true,\"feedback\":\"webwinkel_config_basis is gewijzigd.\",\"retour\":\"main.php?page=modules\\/webwinkel\\/webwinkel_config.php\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE webwinkel_config_basis SET `id` = 1 , `rekening_nummer` = \'NL01IBAN1234567890\', `rekening_houder` = \'cmsstrapped.nl\', `rekening_plaats` = \'Plaatsnaam\', `mail_config_id` = 1 , `url_website` = \'http:\\/\\/localhost\\/cmsstrapped.nl\\/\', `bedrijfsnaam` = \'cmsstrapped.nl\', `straat` = \'Straatnaam 1\', `postcode` = \'1234AB\', `woonplaats` = \'Plaatsnaam\', `telefoon` = \'1234567890\', `email` = \'\' , `kvk` = \'\' , `btw` = \'\' , `webwinkel_beleid` = \'1\', `voorraad_beleid` = \'1\', `mail_factuur_type` = 1 , `bestel_klant_type` = 1 , `aantal_producten_in_listview` = 21 , `shop_page_id` = 3 , `voorwaarden_page_id` = 0 , `developer_ips` = \'::1;127.0.0.1;81.205.153.168;94.209.179.106;83.86.174.163;83.85.48.65;::1;\', `debug_mode` = 1 , `conversiecode` = \'\' , `prijzen_tonen_inclusief` = 1 , `briefpapier` = \'\' , `barcode_suggestie` = 0 , `hashkey` = \'a30626a42bb75cbaa30de096c7eb491c\', `cache` = 3600 , `datum_gewijzigd` = 20211130150556 , `winkelwagen_protocol` = 1  WHERE id = \'1\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(435, 20211130150609, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_config.php', '::1', '', 1, 1),
(436, 20211130150714, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(437, 20211130150739, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(438, 20211130150844, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(439, 20211130150909, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(440, 20211130151014, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(441, 20211130151039, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(442, 20211130151154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(443, 20211130151209, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(444, 20211130151339, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(445, 20211130151354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(446, 20211130151454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(447, 20211130151509, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(448, 20211130151639, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(449, 20211130151654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(450, 20211130151754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(451, 20211130151809, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(452, 20211130151954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(453, 20211130151954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(454, 20211130152018, 'Systeem', 'WebTwister > modules/menu/menu_overview.php', '::1', '', 1, 1),
(455, 20211130152019, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(456, 20211130152022, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(457, 20211130152109, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(458, 20211130152146, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(459, 20211130152146, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(460, 20211130152146, 'WebTwister', 'menu: template is toegevoegd', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php&edited=4\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"\",\"naam\":\"tmpl_micro_nieuws_listitem\",\"html\":\"\\u003Cdiv class=\\\"nieuws-listview-item col-12 col-sm-6\\\" id=\\\"nieuws-listview-%ID%\\\"\\u003E\\r\\n\\t\\u003Cdiv class=\\\"inner\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"nieuws-listview-image\\\"\\u003E%IMAGE%\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Ch2\\u003E\\u003Ca href=\\\"%URL%\\\"\\u003E%TITEL%\\u003C\\/a\\u003E\\u003C\\/h2\\u003E\\r\\n\\t\\t\\u003Cp\\u003E%INLEIDING%\\u003C\\/p\\u003E\\r\\n\\t\\t\\u003Cp class=\\\"nieuws-listview-link\\\"\\u003E\\u003Ca href=\\\"%URL%\\\" rel=\\\"canonical\\\" class=\\\"btn btn-main\\\"\\u003E%URLTAG%\\u003C\\/a\\u003E\\u003C\\/p\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\",\"theme\":\"default\",\"type\":\"1\",\"standaard\":\"0\",\"aantal_kolomen\":\"1\",\"tabel\":\"nieuws_nieuws\",\"view\":\"listview\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is toegevoegd\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"sql\":[{\"succes\":true,\"query\":\" INSERT INTO menu_templates SET id = NULL , `naam` = \'tmpl_micro_nieuws_listitem\', `html` = \'\\u003Cdiv class=\\\\\\\"nieuws-listview-item col-12 col-sm-6\\\\\\\" id=\\\\\\\"nieuws-listview-%ID%\\\\\\\"\\u003E\\\\r\\\\n\\t\\u003Cdiv class=\\\\\\\"inner\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"nieuws-listview-image\\\\\\\"\\u003E%IMAGE%\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Ch2\\u003E\\u003Ca href=\\\\\\\"%URL%\\\\\\\"\\u003E%TITEL%\\u003C\\/a\\u003E\\u003C\\/h2\\u003E\\\\r\\\\n\\t\\t\\u003Cp\\u003E%INLEIDING%\\u003C\\/p\\u003E\\\\r\\\\n\\t\\t\\u003Cp class=\\\\\\\"nieuws-listview-link\\\\\\\"\\u003E\\u003Ca href=\\\\\\\"%URL%\\\\\\\" rel=\\\\\\\"canonical\\\\\\\" class=\\\\\\\"btn btn-main\\\\\\\"\\u003E%URLTAG%\\u003C\\/a\\u003E\\u003C\\/p\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\', `aantal_kolomen` = 1 , `standaard` = 0 , `type` = 1 , `tabel` = \'nieuws_nieuws\', `view` = \'listview\', `theme` = \'default\', `verwijderd` = 0 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":4}]}', 1, 1),
(461, 20211130152146, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(462, 20211130152149, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(463, 20211130152153, 'Systeem', 'WebTwister > modules/menu/menu_actions.php', '::1', '', 1, 1),
(464, 20211130152153, 'Systeem', 'WebTwister > actie: menu_templates_save', '::1', '', 1, 1),
(465, 20211130152153, 'WebTwister', 'menu: template is gewijzigd.', '::1', '{\"data\":{\"action\":\"menu_templates_save\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=4&edited=4\",\"retour_back\":\"main.php?page=modules\\/menu\\/menu_templates.php\",\"id\":\"4\",\"naam\":\"tmpl_micro_nieuws_listitem\",\"html\":\"\\u003Cdiv class=\\\"nieuws-listview-item col-12 col-sm-6\\\" id=\\\"nieuws-listview-%ID%\\\"\\u003E\\r\\n\\t\\u003Cdiv class=\\\"inner\\\"\\u003E\\r\\n\\t\\t\\u003Cdiv class=\\\"nieuws-listview-image\\\"\\u003E%IMAGE%\\u003C\\/div\\u003E\\r\\n\\t\\t\\u003Ch2\\u003E\\u003Ca href=\\\"%URL%\\\"\\u003E%TITEL%\\u003C\\/a\\u003E\\u003C\\/h2\\u003E\\r\\n\\t\\t\\u003Cp\\u003E%INLEIDING%\\u003C\\/p\\u003E\\r\\n\\t\\t\\u003Cp class=\\\"nieuws-listview-link\\\"\\u003E\\u003Ca href=\\\"%URL%\\\" rel=\\\"canonical\\\" class=\\\"btn btn-main\\\"\\u003E%URLTAG%\\u003C\\/a\\u003E\\u003C\\/p\\u003E\\r\\n\\t\\u003C\\/div\\u003E\\r\\n\\u003C\\/div\\u003E\",\"theme\":\"default\",\"type\":\"4\",\"standaard\":\"0\",\"aantal_kolomen\":\"1\",\"tabel\":\"nieuws_nieuws\",\"view\":\"listview\",\"tabel_naam\":\"menu_templates\"},\"succes\":true,\"feedback\":\"template is gewijzigd.\",\"retour\":\"main.php?page=modules\\/menu\\/menu_templates_form.php&id=4\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE menu_templates SET `id` = 4 , `naam` = \'tmpl_micro_nieuws_listitem\', `html` = \'\\u003Cdiv class=\\\\\\\"nieuws-listview-item col-12 col-sm-6\\\\\\\" id=\\\\\\\"nieuws-listview-%ID%\\\\\\\"\\u003E\\\\r\\\\n\\t\\u003Cdiv class=\\\\\\\"inner\\\\\\\"\\u003E\\\\r\\\\n\\t\\t\\u003Cdiv class=\\\\\\\"nieuws-listview-image\\\\\\\"\\u003E%IMAGE%\\u003C\\/div\\u003E\\\\r\\\\n\\t\\t\\u003Ch2\\u003E\\u003Ca href=\\\\\\\"%URL%\\\\\\\"\\u003E%TITEL%\\u003C\\/a\\u003E\\u003C\\/h2\\u003E\\\\r\\\\n\\t\\t\\u003Cp\\u003E%INLEIDING%\\u003C\\/p\\u003E\\\\r\\\\n\\t\\t\\u003Cp class=\\\\\\\"nieuws-listview-link\\\\\\\"\\u003E\\u003Ca href=\\\\\\\"%URL%\\\\\\\" rel=\\\\\\\"canonical\\\\\\\" class=\\\\\\\"btn btn-main\\\\\\\"\\u003E%URLTAG%\\u003C\\/a\\u003E\\u003C\\/p\\u003E\\\\r\\\\n\\t\\u003C\\/div\\u003E\\\\r\\\\n\\u003C\\/div\\u003E\', `aantal_kolomen` = 1 , `standaard` = 0 , `type` = 4 , `tabel` = \'nieuws_nieuws\', `view` = \'listview\', `theme` = \'default\', `verwijderd` = 0  WHERE id = \'4\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(466, 20211130152153, 'Systeem', 'WebTwister > modules/menu/menu_templates_form.php', '::1', '', 1, 1),
(467, 20211130152154, 'Systeem', 'WebTwister > modules/menu/menu_templates.php', '::1', '', 1, 1),
(468, 20211130152239, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(469, 20211130152325, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(470, 20211130152409, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(471, 20211130152455, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(472, 20211130152554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(473, 20211130152625, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(474, 20211130152754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(475, 20211130152755, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(476, 20211130152854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(477, 20211130152925, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(478, 20211130153054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(479, 20211130153055, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(480, 20211130153154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(481, 20211130153225, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(482, 20211130153309, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(483, 20211130153355, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(484, 20211130153439, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(485, 20211130153525, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(486, 20211130153609, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(487, 20211130153655, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(488, 20211130153739, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(489, 20211130153854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(490, 20211130153909, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(491, 20211130154039, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(492, 20211130154054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(493, 20211130154154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(494, 20211130154209, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(495, 20211130154339, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(496, 20211130154354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(497, 20211130154454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(498, 20211130154554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(499, 20211130154654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(500, 20211130154654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(501, 20211130154754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(502, 20211130154809, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(503, 20211130154939, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(504, 20211130154954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(505, 20211130155054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(506, 20211130155109, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(507, 20211130155239, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(508, 20211130155254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(509, 20211130155354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(510, 20211130155409, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(511, 20211130155627, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(512, 20211130155639, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(513, 20211130155654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(514, 20211130155709, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(515, 20211130155839, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(516, 20211130155854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(517, 20211130155954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(518, 20211130160009, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(519, 20211130160139, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(520, 20211130160154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(521, 20211130160254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(522, 20211130160309, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(523, 20211130160439, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(524, 20211130160454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(525, 20211130160554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(526, 20211130160609, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(527, 20211130160754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(528, 20211130160755, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(529, 20211130160854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(530, 20211130160954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(531, 20211130161054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(532, 20211130161054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(533, 20211130161154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(534, 20211130161254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(535, 20211130161354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(536, 20211130161354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(537, 20211130161454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(538, 20211130161554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(539, 20211130161654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(540, 20211130161654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(541, 20211130161754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(542, 20211130161854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(543, 20211130161954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(544, 20211130161954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(545, 20211130162054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(546, 20211130162154, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(547, 20211130162254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(548, 20211130162254, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(549, 20211130162354, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(550, 20211130162454, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(551, 20211130162554, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(552, 20211130162555, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(553, 20211130162654, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(554, 20211130162754, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(555, 20211130162756, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(556, 20211130162854, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(557, 20211130162925, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(558, 20211130163054, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(559, 20211130163055, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(560, 20211130163146, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(561, 20211201152351, 'Systeem', 'system > modules/menu/menu_overview.php', '127.0.0.1', '', 1, 1);
INSERT INTO `configuratie_logfile` (`id`, `datum`, `gebruiker`, `log`, `ip`, `result`, `aantal`, `prio`) VALUES
(562, 20211201152351, 'system', 'Login benaderd', '127.0.0.1', '', 1, 1),
(563, 20211201152351, 'system', 'Login error:U moet inloggen om het cms te kunnen benaderen.', '127.0.0.1', '', 1, 1),
(564, 20211201152358, 'Systeem', 'Login: WebTwister > admin/ad*****', '::1', '', 1, 1),
(565, 20211201152358, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(566, 20211201152530, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(567, 20211201152700, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(568, 20211201152830, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(569, 20211201153000, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(570, 20211201153033, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(571, 20211201153033, 'Systeem', 'WebTwister > modules/webwinkel/webwinkel_overview.php', '::1', '', 1, 1),
(572, 20211201153204, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(573, 20211201153334, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(574, 20211201153504, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(575, 20211201153634, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(576, 20211201153845, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(577, 20211201153945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(578, 20211201154145, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(579, 20211201154245, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(580, 20211201154445, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(581, 20211201154545, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(582, 20211201154745, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(583, 20211201154845, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(584, 20211201155045, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(585, 20211201155145, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(586, 20211201155345, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(587, 20211201155445, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(588, 20211201155645, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(589, 20211201155745, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(590, 20211201155945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(591, 20211201160045, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(592, 20211201160204, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(593, 20211201160334, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(594, 20211201160504, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(595, 20211201160634, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(596, 20211201160845, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(597, 20211201160945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(598, 20211201161145, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(599, 20211201161245, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(600, 20211201161445, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(601, 20211201161545, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(602, 20211201161745, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(603, 20211201161845, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(604, 20211201162045, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(605, 20211201162145, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(606, 20211201162346, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(607, 20211201162445, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(608, 20211201162645, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(609, 20211201162745, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(610, 20211201162945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(611, 20211201163045, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(612, 20211201163245, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(613, 20211201163345, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(614, 20211201163546, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(615, 20211201163645, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(616, 20211201163804, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(617, 20211201163934, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(618, 20211202100244, 'Systeem', 'system > modules/menu/menu_overview.php', '::1', '', 1, 1),
(619, 20211202100244, 'system', 'Login benaderd', '::1', '', 1, 1),
(620, 20211202100244, 'system', 'Login error:U moet inloggen om het cms te kunnen benaderen.', '::1', '', 1, 1),
(621, 20211202100249, 'Systeem', 'Login: WebTwister > admin/ad*****', '::1', '', 1, 1),
(622, 20211202100249, 'Systeem', 'WebTwister > home.php', '::1', '', 1, 1),
(623, 20211202100420, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(624, 20211202100550, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(625, 20211202100608, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(626, 20211202100739, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(627, 20211202100838, 'Systeem', 'WebTwister > modules/configuratie/configuratie_overview.php', '::1', '', 1, 1),
(628, 20211202100840, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(629, 20211202100847, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu.php', '::1', '', 1, 1),
(630, 20211202100850, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu_form.php', '::1', '', 1, 1),
(631, 20211202100908, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(632, 20211202100908, 'Systeem', 'WebTwister > actie: configuratie_modules_menu_save', '::1', '', 1, 1),
(633, 20211202100908, 'WebTwister', 'configuratie: Submenu is toegevoegd aan het menu(ID: 53)', '::1', '{\"data\":{\"action\":\"configuratie_modules_menu_save\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules_submenu.php&sub=7&edited=0\",\"id\":\"\",\"modules\":\"7\",\"positie\":\"\",\"verwijderd\":\"\",\"pagina\":\"_config.php\",\"naam\":\"Configuratie\",\"naam_alt\":\"\",\"status\":\"1\",\"admin\":\"1\"},\"succes\":true,\"feedback\":\"Submenu is toegevoegd aan het menu(ID: 53)\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules_submenu.php&sub=7\",\"sql\":[{\"succes\":true,\"query\":\" INSERT INTO configuratie_modules_menu SET id = NULL , `modules` = \'7\', `pagina` = \'_config.php\', `naam` = \'Configuratie\', `naam_alt` = \'\' , `positie` = 0 , `status` = 1 , `verwijderd` = 0 , `admin` = 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":53}]}', 1, 1),
(634, 20211202100908, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu.php', '::1', '', 1, 1),
(635, 20211202100913, 'Systeem', 'WebTwister > modules/configuratie/configuratie_kickstarter.php', '::1', '', 1, 1),
(636, 20211202100959, 'Systeem', 'WebTwister > modules/configuratie/configuratie_kickstarter.php', '::1', '', 1, 1),
(637, 20211202101006, 'Systeem', 'WebTwister > modules/configuratie/configuratie_kickstarter.php', '::1', '', 1, 1),
(638, 20211202101136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(639, 20211202101258, 'Systeem', 'WebTwister > modules/configuratie/configuratie_aqb.php', '::1', '', 1, 1),
(640, 20211202101347, 'Systeem', 'WebTwister > modules/configuratie/configuratie_aqb.php', '::1', '', 1, 1),
(641, 20211202101404, 'Systeem', 'WebTwister > modules/configuratie/configuratie_aqb.php', '::1', '', 1, 1),
(642, 20211202101535, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(643, 20211202101705, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(644, 20211202101835, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(645, 20211202101919, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(646, 20211202101923, 'Systeem', 'WebTwister > modules/nieuws/nieuws_config.php', '::1', '', 1, 1),
(647, 20211202101926, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(648, 20211202101928, 'Systeem', 'WebTwister > modules/configuratie/configuratie_overview.php', '::1', '', 1, 1),
(649, 20211202101930, 'Systeem', 'WebTwister > modules/configuratie/configuratie_aqb.php', '::1', '', 1, 1),
(650, 20211202101932, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules.php', '::1', '', 1, 1),
(651, 20211202101935, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu.php', '::1', '', 1, 1),
(652, 20211202101938, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu_form.php', '::1', '', 1, 1),
(653, 20211202101945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(654, 20211202101945, 'Systeem', 'WebTwister > actie: configuratie_modules_menu_save', '::1', '', 1, 1),
(655, 20211202101945, 'WebTwister', 'configuratie: Submenu is gewijzigd in het menu.', '::1', '{\"data\":{\"action\":\"configuratie_modules_menu_save\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules_submenu.php&sub=7&edited=53\",\"id\":\"53\",\"modules\":\"7\",\"positie\":\"0\",\"verwijderd\":\"0\",\"pagina\":\"_configuratie.php\",\"naam\":\"Configuratie\",\"naam_alt\":\"\",\"status\":\"1\",\"admin\":\"1\"},\"succes\":true,\"feedback\":\"Submenu is gewijzigd in het menu.\",\"retour\":\"main.php?page=modules\\/configuratie\\/configuratie_modules_submenu.php&sub=7\",\"sql\":[{\"succes\":true,\"query\":\" UPDATE configuratie_modules_menu SET `id` = 53 , `modules` = \'7\', `pagina` = \'_configuratie.php\', `naam` = \'Configuratie\', `naam_alt` = \'\' , `positie` = 0 , `status` = 1 , `verwijderd` = 0 , `admin` = 1  WHERE id = \'53\' LIMIT 1 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":0}]}', 1, 1),
(656, 20211202101945, 'Systeem', 'WebTwister > modules/configuratie/configuratie_modules_submenu.php', '::1', '', 1, 1),
(657, 20211202101948, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(658, 20211202101949, 'Systeem', 'WebTwister > modules/nieuws/nieuws_configuratie.php', '::1', '', 1, 1),
(659, 20211202102056, 'Systeem', 'WebTwister > modules/nieuws/nieuws_configuratie.php', '::1', '', 1, 1),
(660, 20211202102102, 'Systeem', 'WebTwister > modules/nieuws/nieuws_actions.php', '::1', '', 1, 1),
(661, 20211202102102, 'Systeem', 'WebTwister > actie: nieuws_configuratie_save', '::1', '', 1, 1),
(662, 20211202102102, 'WebTwister', 'nieuws: toegevoegd  (1)', '::1', '{\"data\":{\"action\":\"nieuws_configuratie_save\",\"retour\":\"main.php?page=modules\\/nieuws\\/nieuws_overview.php&edited=1\",\"formurl\":\"cms\\/main.php?page=modules\\/nieuws\\/nieuws_configuratie.php\",\"id\":\"\",\"positie\":\"2\",\"datum_toegevoegd\":\"20211202102056\",\"datum_gewijzigd\":\"20211202102056\",\"verwijderd\":\"0\",\"status\":\"1\",\"pagina_id\":\"1\",\"microtemplate_id_nieuws_listview\":\"1\",\"microtemplate_id_nieuws_signleview\":\"1\"},\"succes\":true,\"feedback\":\"toegevoegd  (1)\",\"retour\":\"main.php?page=modules\\/nieuws\\/nieuws_overview.php\",\"sql\":[{\"succes\":true,\"query\":\" INSERT INTO nieuws_configuratie SET id = NULL , `pagina_id` = 1 , `microtemplate_id_nieuws_listview` = 1 , `microtemplate_id_nieuws_signleview` = 1 , `status` = 1 , `positie` = 2 , `datum_toegevoegd` = \'20211202102056\', `datum_gewijzigd` = 20211202102056 , `verwijderd` = 0 \",\"error\":\"\",\"affected_rows\":1,\"insert_id\":1}]}', 1, 1),
(663, 20211202102102, 'Systeem', 'WebTwister > modules/nieuws/nieuws_overview.php', '::1', '', 1, 1),
(664, 20211202102108, 'Systeem', 'WebTwister > modules/nieuws/nieuws_configuratie.php', '::1', '', 1, 1),
(665, 20211202102239, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(666, 20211202102409, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(667, 20211202102539, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(668, 20211202102709, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(669, 20211202102839, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(670, 20211202103009, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(671, 20211202103236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(672, 20211202103336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(673, 20211202103536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(674, 20211202103636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(675, 20211202103836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(676, 20211202103936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(677, 20211202104136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(678, 20211202104236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(679, 20211202104436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(680, 20211202104509, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(681, 20211202104639, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(682, 20211202104809, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(683, 20211202104939, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(684, 20211202105136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(685, 20211202105336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(686, 20211202105436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(687, 20211202105636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(688, 20211202105736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(689, 20211202105936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(690, 20211202110036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(691, 20211202110236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(692, 20211202110336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(693, 20211202110536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(694, 20211202110636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(695, 20211202110836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(696, 20211202110954, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(697, 20211202111152, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(698, 20211202111241, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(699, 20211202111443, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(700, 20211202111536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(701, 20211202111653, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(702, 20211202111809, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(703, 20211202111939, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(704, 20211202112109, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(705, 20211202112336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(706, 20211202112436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(707, 20211202112636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(708, 20211202112736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(709, 20211202112936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(710, 20211202113036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(711, 20211202113236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(712, 20211202113336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(713, 20211202113536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(714, 20211202113636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(715, 20211202113836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(716, 20211202113936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(717, 20211202114136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(718, 20211202114209, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(719, 20211202114339, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(720, 20211202114509, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(721, 20211202114639, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(722, 20211202114809, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(723, 20211202114939, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(724, 20211202115109, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(725, 20211202115239, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(726, 20211202115436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(727, 20211202115636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(728, 20211202115736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(729, 20211202115936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(730, 20211202120036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(731, 20211202120236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(732, 20211202120336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(733, 20211202120536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(734, 20211202120636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(735, 20211202120836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(736, 20211202120936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(737, 20211202121136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(738, 20211202121236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(739, 20211202121436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(740, 20211202121536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(741, 20211202121736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(742, 20211202121836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(743, 20211202122036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(744, 20211202122136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(745, 20211202122336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(746, 20211202122436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(747, 20211202122636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(748, 20211202122736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(749, 20211202122911, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(750, 20211202123009, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(751, 20211202123139, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(752, 20211202123309, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(753, 20211202123439, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(754, 20211202123609, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(755, 20211202123739, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(756, 20211202123909, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(757, 20211202124100, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(758, 20211202124236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(759, 20211202124436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(760, 20211202124536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(761, 20211202124750, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(762, 20211202124836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(763, 20211202125036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(764, 20211202125136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(765, 20211202125341, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(766, 20211202125449, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(767, 20211202125636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(768, 20211202125736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(769, 20211202125936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(770, 20211202130036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(771, 20211202130236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(772, 20211202130336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(773, 20211202130536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(774, 20211202130636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(775, 20211202130836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(776, 20211202130936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(777, 20211202131136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(778, 20211202131236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(779, 20211202131436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(780, 20211202131536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(781, 20211202131736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(782, 20211202131836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(783, 20211202132036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(784, 20211202132136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(785, 20211202132336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(786, 20211202132437, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(787, 20211202132636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(788, 20211202132736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(789, 20211202132936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(790, 20211202133036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(791, 20211202133236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(792, 20211202133336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(793, 20211202133536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(794, 20211202133636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(795, 20211202133836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(796, 20211202133936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(797, 20211202134136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(798, 20211202134236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(799, 20211202134436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(800, 20211202134536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(801, 20211202134737, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(802, 20211202134836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(803, 20211202135036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(804, 20211202135136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(805, 20211202135336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(806, 20211202135436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(807, 20211202135636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(808, 20211202135736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(809, 20211202135923, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(810, 20211202140009, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(811, 20211202140139, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(812, 20211202140309, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(813, 20211202140439, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(814, 20211202140636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(815, 20211202140836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(816, 20211202140936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(817, 20211202141136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(818, 20211202141236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(819, 20211202141436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(820, 20211202141536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(821, 20211202141736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(822, 20211202141836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(823, 20211202142036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(824, 20211202142136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(825, 20211202142336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(826, 20211202142436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(827, 20211202142636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(828, 20211202142736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(829, 20211202142936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(830, 20211202143036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(831, 20211202143236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(832, 20211202143336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(833, 20211202143536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(834, 20211202143636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(835, 20211202143836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(836, 20211202143936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(837, 20211202144136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(838, 20211202144236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(839, 20211202144436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(840, 20211202144536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(841, 20211202144736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(842, 20211202144836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(843, 20211202145036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(844, 20211202145136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(845, 20211202145336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(846, 20211202145436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(847, 20211202145636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(848, 20211202145736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(849, 20211202145936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(850, 20211202150036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(851, 20211202150236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(852, 20211202150336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(853, 20211202150536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(854, 20211202150636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(855, 20211202150836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(856, 20211202150936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(857, 20211202151136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(858, 20211202151236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(859, 20211202151436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(860, 20211202151536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(861, 20211202151737, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(862, 20211202151836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(863, 20211202152036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(864, 20211202152136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(865, 20211202152336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(866, 20211202152436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(867, 20211202152636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(868, 20211202152736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(869, 20211202152936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(870, 20211202153036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(871, 20211202153236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(872, 20211202153313, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(873, 20211202153439, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(874, 20211202153609, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(875, 20211202153739, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(876, 20211202153936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(877, 20211202154136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(878, 20211202154236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(879, 20211202154436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(880, 20211202154536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(881, 20211202154736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(882, 20211202154836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(883, 20211202155036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(884, 20211202155136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(885, 20211202155336, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(886, 20211202155436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(887, 20211202155636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(888, 20211202155736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(889, 20211202155839, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(890, 20211202160009, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(891, 20211202160139, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(892, 20211202160309, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(893, 20211202160536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(894, 20211202160636, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(895, 20211202160836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(896, 20211202160936, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(897, 20211202161136, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(898, 20211202161236, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(899, 20211202161436, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(900, 20211202161536, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(901, 20211202161736, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(902, 20211202161836, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(903, 20211202162036, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(904, 20211202162109, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(905, 20211202162239, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1),
(906, 20211202162409, 'Systeem', 'WebTwister > modules/configuratie/configuratie_actions.php', '::1', '', 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_mailconfigs`
--

CREATE TABLE `configuratie_mailconfigs` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `smtp_host` varchar(250) NOT NULL DEFAULT '',
  `smtp_user` varchar(250) NOT NULL DEFAULT '',
  `smtp_pass` varchar(250) NOT NULL DEFAULT '',
  `smtp_protocol` varchar(250) NOT NULL DEFAULT '',
  `smtp_gebruiken` int(11) NOT NULL DEFAULT 0,
  `sendgrid_apikey` varchar(250) NOT NULL DEFAULT '',
  `to` varchar(250) NOT NULL DEFAULT '',
  `carbon_copy` varchar(250) NOT NULL DEFAULT '',
  `blind_carbon_copy` varchar(250) NOT NULL DEFAULT '',
  `smtp_port` varchar(250) NOT NULL DEFAULT '',
  `afzender_email` varchar(250) NOT NULL DEFAULT '',
  `afzender_naam` varchar(250) NOT NULL DEFAULT '',
  `mail_type` varchar(250) NOT NULL DEFAULT '',
  `standaard` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `debug` int(11) NOT NULL DEFAULT 0,
  `add_headers` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_mailconfigs`
--

INSERT INTO `configuratie_mailconfigs` (`id`, `titel`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_protocol`, `smtp_gebruiken`, `sendgrid_apikey`, `to`, `carbon_copy`, `blind_carbon_copy`, `smtp_port`, `afzender_email`, `afzender_naam`, `mail_type`, `standaard`, `status`, `debug`, `add_headers`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'phpmailer : info@loveandplay.nl', 'smtp.ips.nl', 'info@loveandplay.nl', 'WUdtSFJNT0U3Y2V3MCt4cS9OQlJJdz09', 'ssl', 0, '', 'info@webtwister.nl', '', '', '465', 'info@loveandplay.nl', 'WebTwister CMS', 'phpmailer', 1, 1, 0, 0, 1, 20211129120103, 20211129120103, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_markers`
--

CREATE TABLE `configuratie_markers` (
  `id` int(11) NOT NULL,
  `marker` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(250) NOT NULL DEFAULT '',
  `line` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_markers`
--

INSERT INTO `configuratie_markers` (`id`, `marker`, `file`, `line`, `datum_toegevoegd`) VALUES
(1, 'MENU:1', '', 0, 20211202100202),
(2, 'MENU:2', '', 0, 20211202100202),
(3, 'MENU:3', '', 0, 20211202100202),
(4, 'BASEURL', '', 0, 20211202100202),
(5, 'BASEHREF', '', 0, 20211202100202),
(6, 'YEAR', '', 0, 20211202100202),
(7, 'THEME', '', 0, 20211202100202),
(8, 'SITETITLE', '', 0, 20211202100202),
(9, 'MENU', '', 0, 20211202100202),
(10, 'LANGUAGES', '', 0, 20211202100202),
(11, 'NIEUWS', '', 0, 20211202100202),
(12, 'SHOPMENU', '', 0, 20211202100202),
(13, 'SHOPMENUFOOTER', '', 0, 20211202100202),
(14, 'SHOPACCOUNTLINK', '', 0, 20211202100202),
(15, 'MINICART', '', 0, 20211202100202),
(16, 'SHOPMENUTOGGLE', '', 0, 20211202100202),
(17, 'SHOPSEARCH', '', 0, 20211202100202),
(18, 'WEBWINKEL', '', 0, 20211202100202),
(19, 'WEBWINKELPRE', '', 0, 20211202100202),
(20, 'WEBWINKELPOST', '', 0, 20211202100202),
(21, 'BREADCRUMBS', '', 0, 20211202100202),
(22, 'MAINTITLE', '', 0, 20211202100202),
(23, 'PAGETITLE', '', 0, 20211202100202),
(24, 'CONTENT', '', 0, 20211202100202),
(25, 'CONTENT1', '', 0, 20211202100202),
(26, 'CONTENT2', '', 0, 20211202100202),
(27, 'CONTENT3', '', 0, 20211202100202);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_modules_beschikbaar`
--

CREATE TABLE `configuratie_modules_beschikbaar` (
  `id` int(11) NOT NULL,
  `modules` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `installed` int(11) NOT NULL DEFAULT 0,
  `alternatieve_titel` varchar(250) NOT NULL DEFAULT '',
  `icon` varchar(250) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_modules_beschikbaar`
--

INSERT INTO `configuratie_modules_beschikbaar` (`id`, `modules`, `status`, `installed`, `alternatieve_titel`, `icon`, `positie`) VALUES
(1, 'configuratie', 1, 1, '', 'gears', 8),
(2, 'gebruikers', 1, 1, '', 'users', 7),
(3, 'menu', 1, 1, '', 'sitemap', 3),
(4, 'blokken', 1, 1, '', 'th-large', 4),
(5, 'media', 1, 1, '', 'file-image-o', 6),
(6, 'carousel', 1, 1, '', 'television', 5),
(7, 'nieuws', 1, 1, '', 'newspaper-o', 2),
(8, 'webwinkel', 1, 1, '', 'shopping-cart', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_modules_menu`
--

CREATE TABLE `configuratie_modules_menu` (
  `id` int(11) NOT NULL,
  `modules` varchar(250) NOT NULL DEFAULT '',
  `pagina` varchar(250) NOT NULL DEFAULT '',
  `naam` varchar(250) NOT NULL DEFAULT '',
  `naam_alt` varchar(250) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_modules_menu`
--

INSERT INTO `configuratie_modules_menu` (`id`, `modules`, `pagina`, `naam`, `naam_alt`, `positie`, `status`, `verwijderd`, `admin`) VALUES
(1, '1', '_overview.php', 'Algemeen', '', 1, 1, 0, 0),
(2, '1', '_aqb.php', 'Auto Query Builder', '', 2, 1, 0, 1),
(3, '1', '_kickstarter.php', 'Kickstarter', '', 3, 1, 0, 1),
(4, '1', '_modules.php', 'Module beheer', '', 4, 1, 0, 1),
(5, '1', '_talen.php', 'Talen', '', 5, 1, 0, 1),
(6, '1', '_apisets.php', 'API Sets', '', 6, 1, 0, 1),
(7, '1', '_cookies.php', 'Cookies', '', 7, 1, 0, 0),
(8, '1', '_og.php', 'Open Graph', '', 8, 1, 0, 0),
(9, '1', '_mailconfig.php', 'Mailconfiguatie', '', 9, 1, 0, 0),
(10, '1', '_qrcodes.php', 'QR Codes', '', 10, 1, 0, 0),
(11, '1', '_sitemap.php', 'Sitemap', '', 11, 1, 0, 0),
(12, '1', '_logboek.php', 'Logboek', '', 12, 1, 0, 1),
(13, '1', '_supportinfo.php', 'Support info', '', 13, 1, 0, 1),
(14, '1', '_customfields_overview.php', 'Custom velden', '', 14, 1, 0, 1),
(15, '1', '_phpinfo.php', 'PHPinfo', '', 15, 1, 0, 1),
(16, '1', '_vertalen_automaat.php', 'Vertaal automaat', '', 16, 1, 0, 1),
(17, '1', '_fileman.php', 'Fileman Config', '', 17, 1, 0, 1),
(18, '1', '_setup.php', 'Info  Setup', '', 18, 1, 0, 1),
(19, '2', '_cms.php', 'CMS Gebruikers', '', 19, 1, 0, 0),
(20, '2', '_web.php', 'Web Gebruikers', '', 20, 0, 0, 0),
(21, '2', '_config.php', 'Configuratie', '', 21, 1, 0, 1),
(22, '2', '_setup.php', 'Info  Setup', '', 22, 1, 0, 1),
(23, '3', '_overview.php', 'Overzicht', '', 23, 1, 0, 0),
(24, '3', '_config.php', 'Configuratie', '', 24, 1, 0, 0),
(25, '3', '_groepen.php', 'groepen', '', 25, 1, 0, 0),
(26, '3', '_templates.php', 'Templates', '', 26, 1, 0, 0),
(27, '3', '_setup.php', 'Info Setup', '', 27, 1, 0, 0),
(28, '4', '_overview.php', 'Overzicht', '', 28, 1, 0, 0),
(29, '4', '_configuratie.php', 'Configuratie', '', 29, 1, 0, 0),
(30, '4', '_setup.php', 'Info  Setup', '', 30, 1, 0, 1),
(31, '5', '_overview.php', 'Overzicht', '', 31, 1, 0, 0),
(32, '5', '_categorie.php', 'Categorie', '', 1, 1, 0, 0),
(33, '5', '_setup.php', 'Info  Setup', '', 33, 1, 0, 1),
(34, '6', '_overview.php', 'Overzicht', '', 34, 1, 0, 0),
(35, '6', '_setup.php', 'Info  Setup', '', 35, 1, 0, 1),
(36, '5', '_profiel.php', 'Profielen', '', 2, 1, 0, 0),
(37, '7', '_overview.php', 'Overzicht', '', 1, 1, 0, 0),
(38, '7', '_setup.php', 'Info  Setup', '', 4, 1, 0, 1),
(39, '7', '_categorie.php', 'Categorie', '', 2, 1, 0, 0),
(40, '8', '_overview.php', 'Overzicht', '', 1, 1, 0, 0),
(41, '8', '_setup.php', 'Info  Setup', '', 200, 1, 0, 1),
(42, '8', '_categorie.php', 'Categorie', '', 1, 1, 0, 0),
(43, '8', '_product.php', 'Producten', '', 2, 1, 0, 0),
(44, '8', '_opties.php', 'Product opties', '', 3, 1, 0, 0),
(45, '8', '_bestelling.php', 'Bestellingen', '', 4, 1, 0, 0),
(46, '8', '_merk.php', 'Merken', '', 5, 1, 0, 0),
(47, '8', '_leverancier.php', 'Leveranciers', '', 6, 1, 0, 0),
(48, '8', '_kortingscodes.php', 'Kortingscodes', '', 7, 1, 0, 0),
(49, '8', '_kassa.php', 'Kassa', '', 8, 1, 0, 0),
(50, '8', '_klanten.php', 'Klanten', '', 9, 1, 0, 0),
(51, '8', '_import.php', 'Import / Export', '', 10, 1, 0, 0),
(52, '8', '_config.php', 'Configuratie', '', 11, 1, 0, 0),
(53, '7', '_configuratie.php', 'Configuratie', '', 3, 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_open_graph`
--

CREATE TABLE `configuratie_open_graph` (
  `id` int(11) NOT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `name` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(250) NOT NULL DEFAULT '',
  `color` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_open_graph`
--

INSERT INTO `configuratie_open_graph` (`id`, `url`, `title`, `name`, `description`, `image`, `color`) VALUES
(1, 'https://www.webtwister.nl', 'WebTwister', 'WebTwister', 'Webdesign, Webdevelopment en Fotografie in Den Haag', 'https://www.webtwister.nl/images/layout/webtwister_logo.png', '#FA0A00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_qrcodes`
--

CREATE TABLE `configuratie_qrcodes` (
  `id` int(11) NOT NULL,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `bestemmings_pagina` int(11) NOT NULL DEFAULT 0,
  `bestemmings_url` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_shortlinks`
--

CREATE TABLE `configuratie_shortlinks` (
  `id` int(11) NOT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `url_short` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_sitemap`
--

CREATE TABLE `configuratie_sitemap` (
  `id` int(11) NOT NULL,
  `onderdeel` varchar(250) NOT NULL DEFAULT '',
  `onderdeel_id` int(11) NOT NULL DEFAULT 0,
  `loc` varchar(250) NOT NULL DEFAULT '',
  `lastmod` varchar(250) NOT NULL DEFAULT '',
  `changefreq` varchar(250) NOT NULL DEFAULT '',
  `priority` double(9,2) NOT NULL DEFAULT 0.00,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_supportinfo`
--

CREATE TABLE `configuratie_supportinfo` (
  `id` int(11) NOT NULL,
  `naam_bedrijf` varchar(250) NOT NULL DEFAULT '',
  `adres` varchar(250) NOT NULL DEFAULT '',
  `postcode` varchar(250) NOT NULL DEFAULT '',
  `woonplaats` varchar(250) NOT NULL DEFAULT '',
  `telefoon` varchar(250) NOT NULL DEFAULT '',
  `fax` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `datum` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_supportinfo`
--

INSERT INTO `configuratie_supportinfo` (`id`, `naam_bedrijf`, `adres`, `postcode`, `woonplaats`, `telefoon`, `fax`, `url`, `email`, `datum`) VALUES
(1, 'WebTwister', 'Willem Silviusstraat 63', '2515TX', 'Den Haag', '0614437995', '', 'www.webtwister.nl', 'info@webtwister.nl', 20211129120104);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_talen`
--

CREATE TABLE `configuratie_talen` (
  `id` int(11) NOT NULL,
  `taal_nederlands` varchar(250) NOT NULL DEFAULT '',
  `taal_native` varchar(250) NOT NULL DEFAULT '',
  `afkorting` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `vlag` varchar(250) NOT NULL DEFAULT '',
  `status_cms` int(11) NOT NULL DEFAULT 0,
  `status_site` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `configuratie_talen`
--

INSERT INTO `configuratie_talen` (`id`, `taal_nederlands`, `taal_native`, `afkorting`, `url`, `vlag`, `status_cms`, `status_site`, `positie`) VALUES
(1, 'Nederlands', 'Nederlands', 'nl', 'nl_NL', 'nl', 1, 1, 1),
(2, 'Engels', 'English', 'en', 'en_EN', 'gb', 0, 0, 2),
(3, 'Duits', 'Deutsch', 'de', 'de_DE', 'de', 0, 0, 3),
(4, 'Frans', 'français', 'fr', 'fr_FR', 'fr', 0, 0, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_talen_vertalingen`
--

CREATE TABLE `configuratie_talen_vertalingen` (
  `id` int(11) NOT NULL,
  `tabelnaam` varchar(250) NOT NULL DEFAULT '',
  `item_id` int(11) NOT NULL DEFAULT 0,
  `taal_id` int(11) NOT NULL DEFAULT 0,
  `taal_afkorting` varchar(250) NOT NULL DEFAULT '',
  `taal_url` varchar(250) NOT NULL DEFAULT '',
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `datum` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_vertaalautomaat_vertaald`
--

CREATE TABLE `configuratie_vertaalautomaat_vertaald` (
  `id` int(11) NOT NULL,
  `tabel_naam` varchar(250) NOT NULL DEFAULT '',
  `tabel_id` int(11) NOT NULL DEFAULT 0,
  `taal_id` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `configuratie_vertalingen`
--

CREATE TABLE `configuratie_vertalingen` (
  `id` int(11) NOT NULL,
  `taal_id` int(11) NOT NULL DEFAULT 0,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `vertaling` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `id` int(11) NOT NULL,
  `gebruikersnaam` varchar(250) NOT NULL DEFAULT '',
  `wachtwoord` varchar(250) NOT NULL DEFAULT '',
  `voornaam` varchar(250) NOT NULL DEFAULT '',
  `afkorting` varchar(250) NOT NULL DEFAULT '',
  `admin` int(11) NOT NULL DEFAULT 0,
  `email` varchar(250) NOT NULL DEFAULT '',
  `telefoonnummer` varchar(250) NOT NULL DEFAULT '',
  `toegangVanaf` bigint(14) NOT NULL DEFAULT 0,
  `toegangTot` bigint(14) NOT NULL DEFAULT 0,
  `nameAndIp` varchar(250) NOT NULL DEFAULT '',
  `loginAttempts` int(11) NOT NULL DEFAULT 0,
  `locked` varchar(250) NOT NULL DEFAULT '',
  `2fa_status` int(11) NOT NULL DEFAULT 0,
  `2fa_secret` varchar(250) NOT NULL DEFAULT '',
  `2fa_pin` varchar(250) NOT NULL DEFAULT '',
  `2fa_pin_time` bigint(14) NOT NULL DEFAULT 0,
  `aantalLogins` int(11) NOT NULL DEFAULT 0,
  `laatsteLogin` varchar(250) NOT NULL DEFAULT '',
  `toolAction` varchar(250) NOT NULL DEFAULT '',
  `toolCode` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `gebruikersnaam`, `wachtwoord`, `voornaam`, `afkorting`, `admin`, `email`, `telefoonnummer`, `toegangVanaf`, `toegangTot`, `nameAndIp`, `loginAttempts`, `locked`, `2fa_status`, `2fa_secret`, `2fa_pin`, `2fa_pin_time`, `aantalLogins`, `laatsteLogin`, `toolAction`, `toolCode`) VALUES
(1, 'admin', '$2y$10$C1.opl/mYPGJM/nI3Zne8eNWqnamER44SmUv3Cmp9d/1Z.TlmP9pa', 'WebTwister', 'WT', 1, 'info@webtwister.nl', '+31614437995', 0, 0, '', 0, '0', 0, 'EMPTY', '6492', 1638435769, 4, '02-12-2021 10:02:49', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers_config`
--

CREATE TABLE `gebruikers_config` (
  `id` int(11) NOT NULL,
  `gebruikers_web` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers_domeinen`
--

CREATE TABLE `gebruikers_domeinen` (
  `id` int(10) NOT NULL,
  `gebruiker` int(10) NOT NULL DEFAULT 0,
  `domein` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers_rechten`
--

CREATE TABLE `gebruikers_rechten` (
  `id` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL DEFAULT 0,
  `module` varchar(250) NOT NULL DEFAULT '',
  `C` int(1) NOT NULL DEFAULT 0,
  `R` int(1) NOT NULL DEFAULT 0,
  `U` int(1) NOT NULL DEFAULT 0,
  `D` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers_rechten`
--

INSERT INTO `gebruikers_rechten` (`id`, `gebruiker`, `module`, `C`, `R`, `U`, `D`) VALUES
(1, 1, 'gebruikers', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers_session`
--

CREATE TABLE `gebruikers_session` (
  `id` int(11) NOT NULL,
  `session_id` varchar(250) NOT NULL DEFAULT '',
  `gebruikers_id` int(11) NOT NULL DEFAULT 0,
  `last_action` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers_session`
--

INSERT INTO `gebruikers_session` (`id`, `session_id`, `gebruikers_id`, `last_action`) VALUES
(4, 'a9e9b03e124a6a2308edda2e70333fc2', 1, 1638458649),
(2, 'b73db463e043201b1d23178c97f538dc', 1, 1638286306),
(3, '4e466a723bff5f032b239c37267a3b93', 1, 1638373174);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers_web`
--

CREATE TABLE `gebruikers_web` (
  `id` int(11) NOT NULL,
  `referentie_nummer` varchar(250) NOT NULL DEFAULT '',
  `naam_voor` varchar(250) NOT NULL DEFAULT '',
  `naam_tussen` varchar(250) NOT NULL DEFAULT '',
  `naam_achter` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `wachtwoord` varchar(250) NOT NULL DEFAULT '',
  `datum_start` bigint(14) NOT NULL DEFAULT 0,
  `datum_eind` bigint(14) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `datum_verwijderd` bigint(14) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media_categorie`
--

CREATE TABLE `media_categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `media_categorie`
--

INSERT INTO `media_categorie` (`id`, `naam`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Standaard', 1, 1, 20211129120119, 20211129120119, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media_items`
--

CREATE TABLE `media_items` (
  `id` int(11) NOT NULL,
  `naam` varchar(250) NOT NULL DEFAULT '',
  `pad` varchar(250) NOT NULL DEFAULT '',
  `extentie` varchar(250) NOT NULL DEFAULT '',
  `media_type` varchar(250) NOT NULL DEFAULT '',
  `html_title` varchar(250) NOT NULL DEFAULT '',
  `html_alt` varchar(250) NOT NULL DEFAULT '',
  `html_caption` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `bestandsgrote` int(11) NOT NULL DEFAULT 0,
  `upload_status_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media_koppelingen`
--

CREATE TABLE `media_koppelingen` (
  `id` int(11) NOT NULL,
  `img_nummer` int(11) NOT NULL DEFAULT 0,
  `media_item_id` int(11) NOT NULL DEFAULT 0,
  `module` varchar(250) NOT NULL DEFAULT '',
  `tabel` varchar(250) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0,
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `datum_gekoppeld` varchar(250) NOT NULL DEFAULT '',
  `code` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media_profiel`
--

CREATE TABLE `media_profiel` (
  `id` int(11) NOT NULL,
  `tabel` varchar(250) NOT NULL DEFAULT '',
  `media_categorie` int(11) NOT NULL DEFAULT 0,
  `view` varchar(250) NOT NULL DEFAULT '',
  `class` varchar(250) NOT NULL DEFAULT '',
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `scaletype` varchar(250) NOT NULL DEFAULT '',
  `rgb` varchar(250) NOT NULL DEFAULT '',
  `copyright_status` int(11) NOT NULL DEFAULT 0,
  `copright_position` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `media_profiel`
--

INSERT INTO `media_profiel` (`id`, `tabel`, `media_categorie`, `view`, `class`, `width`, `height`, `scaletype`, `rgb`, `copyright_status`, `copright_position`, `status`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'nieuws_nieuws', 1, 'listview', 'responsiveimg', 300, 200, 'scalecropped', '80,80,80', 0, 1, 0, 20211130150326, 20211130150326, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `media_upload_status`
--

CREATE TABLE `media_upload_status` (
  `id` int(11) NOT NULL,
  `naam` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `color` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `media_upload_status`
--

INSERT INTO `media_upload_status` (`id`, `naam`, `omschrijving`, `color`) VALUES
(1, 'In progress', 'The file is being processed by the server.', 'yellow'),
(2, 'Error', 'Something went wrong, Sorry!', 'red'),
(3, 'Succes', 'File is processed by the server.', 'yellow'),
(4, 'Complete', 'The file is added to the database.', 'green');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `isSubVan` int(11) NOT NULL DEFAULT 0,
  `groep_id` int(11) NOT NULL DEFAULT 1,
  `naam_menu` varchar(255) NOT NULL DEFAULT '',
  `naam_paginaurl` varchar(255) NOT NULL DEFAULT '',
  `naam_titlebalk` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_title` text NOT NULL,
  `og_title` varchar(250) NOT NULL DEFAULT '',
  `og_description` text NOT NULL,
  `bodytag` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0,
  `publiek` int(1) NOT NULL DEFAULT 0,
  `actief` int(1) NOT NULL DEFAULT 0,
  `type` int(1) NOT NULL DEFAULT 0,
  `submenuTonen` int(11) NOT NULL DEFAULT 0,
  `cache` int(1) NOT NULL DEFAULT 0,
  `datum_start` bigint(14) NOT NULL DEFAULT 0,
  `datum_eind` bigint(14) NOT NULL DEFAULT 0,
  `template_id` int(11) NOT NULL DEFAULT 0,
  `slideshow_tonen` int(11) NOT NULL DEFAULT 0,
  `h1_tonen` int(11) NOT NULL DEFAULT 0,
  `content_kolom1` longtext NOT NULL,
  `content_kolom2` longtext NOT NULL,
  `content_kolom3` longtext NOT NULL,
  `samenvatting` text NOT NULL,
  `samenvatting_tonen` int(11) NOT NULL DEFAULT 1,
  `link_to_first_child` int(11) NOT NULL DEFAULT 0,
  `extra` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(255) NOT NULL DEFAULT '',
  `module_trigger` varchar(255) NOT NULL DEFAULT '',
  `url_complete` varchar(255) NOT NULL DEFAULT '',
  `frequentie_wijziging` varchar(255) NOT NULL DEFAULT '',
  `prioriteit` double(9,2) NOT NULL DEFAULT 0.00,
  `onepage_status` int(11) NOT NULL DEFAULT 0,
  `onepage_content` longtext NOT NULL,
  `onepage_template` int(11) NOT NULL DEFAULT 0,
  `onepage_menu_status` int(11) NOT NULL DEFAULT 0,
  `onepage_class` varchar(250) NOT NULL DEFAULT '',
  `onepage_pre_hook` varchar(250) NOT NULL DEFAULT '',
  `onepage_post_hook` varchar(250) NOT NULL DEFAULT '',
  `onepage_show_position` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(11) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `menu`
--

INSERT INTO `menu` (`id`, `isSubVan`, `groep_id`, `naam_menu`, `naam_paginaurl`, `naam_titlebalk`, `meta_description`, `meta_keywords`, `meta_title`, `og_title`, `og_description`, `bodytag`, `url`, `positie`, `publiek`, `actief`, `type`, `submenuTonen`, `cache`, `datum_start`, `datum_eind`, `template_id`, `slideshow_tonen`, `h1_tonen`, `content_kolom1`, `content_kolom2`, `content_kolom3`, `samenvatting`, `samenvatting_tonen`, `link_to_first_child`, `extra`, `rel`, `module_trigger`, `url_complete`, `frequentie_wijziging`, `prioriteit`, `onepage_status`, `onepage_content`, `onepage_template`, `onepage_menu_status`, `onepage_class`, `onepage_pre_hook`, `onepage_post_hook`, `onepage_show_position`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 0, 1, 'Home', 'home', 'Home', '', '', '', '', '', '', '', 2, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, '<p>Hier uw inhoud versie 4</p>\r\n', ' ', ' ', ' ', 0, 0, '', '', '', 'home/', '1', 0.40, 0, '', 0, 1, '', '', '', '', 20211130133318, 20211130133318, 0),
(2, 0, 1, 'Blog', 'blog', 'Blog', '', '', '', '', '', '', '', 3, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, '###NIEUWS###', ' ', ' ', ' ', 0, 0, '', '', 'nieuws', 'nieuws/', '1', 0.40, 0, '', 0, 1, '', '', '', '', 20211130150432, 20211130150432, 0),
(3, 0, 1, 'webwinkel', 'webwinkel', 'webwinkel', '', '', '', '', '', '', '', 4, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, '###WEBWINKEL###', '', '', '', 0, 0, '', '', 'webwinkel', 'webwinkel/', 'weekly', 0.40, 0, '', 1, 1, '', '', '', '', 20211130150550, 20211130150550, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_cache`
--

CREATE TABLE `menu_cache` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `datum` bigint(14) NOT NULL DEFAULT 0,
  `html` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_config`
--

CREATE TABLE `menu_config` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `css` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `menu_config`
--

INSERT INTO `menu_config` (`id`, `code`, `css`) VALUES
(1, 0, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_groep`
--

CREATE TABLE `menu_groep` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `marker` varchar(250) NOT NULL DEFAULT '',
  `class` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `standaard` int(11) NOT NULL DEFAULT 0,
  `copy` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `menu_groep`
--

INSERT INTO `menu_groep` (`id`, `titel`, `marker`, `class`, `status`, `positie`, `standaard`, `copy`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Hoofdmenu', 'MENU', 'mainmenu', 1, 1, 1, 0, 20211129120115, 20211129120115, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_javascript`
--

CREATE TABLE `menu_javascript` (
  `id` int(11) NOT NULL,
  `bestand` varchar(250) NOT NULL DEFAULT '',
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `positie` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `menu_javascript`
--

INSERT INTO `menu_javascript` (`id`, `bestand`, `menu_id`, `positie`) VALUES
(1, 'js/jquery/jquery.js', 0, '1'),
(2, 'js/jquery/jquery.cycle.js', 0, '2'),
(3, 'js/jquery/jquery.magnific-popup.min.js', 0, '3'),
(4, 'js/misc/customcode.js', 0, '4');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_pagebuilder`
--

CREATE TABLE `menu_pagebuilder` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `blok_id` int(11) NOT NULL DEFAULT 0,
  `rij` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `breedte` int(11) NOT NULL DEFAULT 0,
  `hoogte` varchar(250) NOT NULL DEFAULT '',
  `css_class` varchar(250) NOT NULL DEFAULT '',
  `css_id` varchar(250) NOT NULL DEFAULT '',
  `css_style` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `element_hook` varchar(250) NOT NULL DEFAULT '',
  `link` varchar(250) NOT NULL DEFAULT '',
  `container_class` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_templates`
--

CREATE TABLE `menu_templates` (
  `id` int(11) NOT NULL,
  `naam` varchar(250) NOT NULL DEFAULT '',
  `html` longtext NOT NULL,
  `aantal_kolomen` int(11) NOT NULL DEFAULT 0,
  `standaard` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `tabel` varchar(250) NOT NULL DEFAULT '',
  `view` varchar(250) NOT NULL DEFAULT '',
  `theme` varchar(250) NOT NULL DEFAULT '',
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `menu_templates`
--

INSERT INTO `menu_templates` (`id`, `naam`, `html`, `aantal_kolomen`, `standaard`, `type`, `tabel`, `view`, `theme`, `verwijderd`) VALUES
(1, 'tmpl_basis', ' \r\n###TMPL_HEADER### V4\r\n\r\n<div class=\"maincontent container\">\r\n    <div class=\"row\">\r\n		<div class=\"col-12 col-sm-8\"> \r\n			###MAINTITLE###\r\n			###CONTENT1###		\r\n		</div>\r\n		<div class=\"col-12 col-sm-4\"> \r\n			###BLOKKEN### \r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n###TMPL_FOOTER###', 1, 1, 1, '-', '', 'default', 0),
(2, 'tmpl_header', ' <header>\n	<div class=\"container\">\n		<div class=\"row\">\n			<div class=\"col-12 col-md-3\">\n 				<img src=\"https://www.webtwister.nl/images/layout/webtwister_logo.png\">\n			</div>\n			<div class=\"menuwrap col-12 col-md-9\">\n 				<nav>###MENU###</nav>\n			</div>            \n		</div>\n	</div>\n</header>\n\n###SLIDESHOW###\n\n ', 1, 0, 2, '', '', 'default', 0),
(3, 'tmpl_footer', ' <footer>\n	<div class=\"container\">\n    	<div class=\"row\">\n        	###FOOTER###\n        </div>\n	</div>\n    <div class=\"container-fluid\">\n		<div class=\"bottombar row\">\n			<div class=\"col-12 text-align-center\">\n				<p>&copy;  ###BEDRIJFSNAAM### ###YEAR### | <a href=\"//www.webtwister.nl\">Design en Development door WebTwister.nl</a></p>\n			</div>\n		</div>\n	</div>\n</footer> ', 1, 0, 2, '', '', 'default', 0),
(4, 'tmpl_micro_nieuws_listitem', '<div class=\"nieuws-listview-item col-12 col-sm-6\" id=\"nieuws-listview-%ID%\">\r\n	<div class=\"inner\">\r\n		<div class=\"nieuws-listview-image\">%IMAGE%</div>\r\n		<h2><a href=\"%URL%\">%TITEL%</a></h2>\r\n		<p>%INLEIDING%</p>\r\n		<p class=\"nieuws-listview-link\"><a href=\"%URL%\" rel=\"canonical\" class=\"btn btn-main\">%URLTAG%</a></p>\r\n	</div>\r\n</div>', 1, 0, 4, 'nieuws_nieuws', 'listview', 'default', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws_categorie`
--

CREATE TABLE `nieuws_categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(250) NOT NULL DEFAULT '',
  `slug` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws_categorie_nieuws`
--

CREATE TABLE `nieuws_categorie_nieuws` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL DEFAULT 0,
  `nieuws_id` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws_configuratie`
--

CREATE TABLE `nieuws_configuratie` (
  `id` int(11) NOT NULL,
  `pagina_id` int(11) NOT NULL DEFAULT 0,
  `microtemplate_id_nieuws_listview` int(11) NOT NULL DEFAULT 0,
  `microtemplate_id_nieuws_signleview` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `nieuws_configuratie`
--

INSERT INTO `nieuws_configuratie` (`id`, `pagina_id`, `microtemplate_id_nieuws_listview`, `microtemplate_id_nieuws_signleview`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 1, 1, 1, 1, 2, 20211202102056, 20211202102056, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws_nieuws`
--

CREATE TABLE `nieuws_nieuws` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `slug` varchar(250) NOT NULL DEFAULT '',
  `inleiding` text NOT NULL,
  `bericht` text NOT NULL,
  `meta_titel` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_tags` text NOT NULL,
  `datum_publicatie` bigint(14) NOT NULL DEFAULT 0,
  `auteur` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `url_custom` varchar(250) NOT NULL DEFAULT '',
  `url_custom_tag` varchar(250) NOT NULL DEFAULT '',
  `spotlight` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `nieuws_nieuws`
--

INSERT INTO `nieuws_nieuws` (`id`, `titel`, `slug`, `inleiding`, `bericht`, `meta_titel`, `meta_description`, `meta_tags`, `datum_publicatie`, `auteur`, `status`, `url_custom`, `url_custom_tag`, `spotlight`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'nieuwsartikel 1', 'nieuwsartikel-1', 'nieuwsartikel 1 inleiding', '<p>nieuwsartikel 1&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et diam arcu. Curabitur in nisi metus, egestas pulvinar odio. Curabitur tincidunt, quam eu congue ullamcorper, justo metus ornare risus, a consectetur metus nisi nec purus. Duis vitae sollicitudin massa. Nulla sollicitudin venenatis purus eu eleifend. Aliquam lobortis lorem in dolor congue ac molestie libero vehicula. Vestibulum vitae interdum elit. Pellentesque dignissim fringilla risus in venenatis. Integer consectetur molestie metus at blandit. Phasellus in diam ligula. Quisque porttitor cursus elementum. Nulla hendrerit aliquam leo non varius. Etiam at magna sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', '', '', '', 20211130000000, 'WebTwister', 1, '', 'Lees meer »', 0, 20211130150305, 20211130150305, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_categorie`
--

CREATE TABLE `webwinkel_categorie` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `categorie` varchar(250) NOT NULL DEFAULT '',
  `categorie_slug` varchar(250) NOT NULL DEFAULT '',
  `categorie_paginatitel` varchar(250) NOT NULL DEFAULT '',
  `inleiding` text NOT NULL,
  `omschrijving` text NOT NULL,
  `omschrijving_onder` text NOT NULL,
  `link_to_first_child` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `producten_tonen` int(11) NOT NULL DEFAULT 0,
  `autoconnect_type` int(11) NOT NULL DEFAULT 0,
  `categorie_type` int(11) NOT NULL DEFAULT 0,
  `matrix_titel` varchar(250) NOT NULL DEFAULT '',
  `matrix_marker` varchar(250) NOT NULL DEFAULT '',
  `matrix_pagina_koppeling` int(11) NOT NULL DEFAULT 0,
  `meta_titel` varchar(250) NOT NULL DEFAULT '',
  `meta_omschrijving` text NOT NULL,
  `meta_tags` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzig` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_categorie_autoconnect_regels`
--

CREATE TABLE `webwinkel_categorie_autoconnect_regels` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL DEFAULT 0,
  `veld` varchar(250) NOT NULL DEFAULT '',
  `conditie` varchar(250) NOT NULL DEFAULT '',
  `waarde` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_aanbodstadia`
--

CREATE TABLE `webwinkel_config_aanbodstadia` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `kleur` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `percentage_korting` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_aanbodstadia`
--

INSERT INTO `webwinkel_config_aanbodstadia` (`id`, `titel`, `kleur`, `omschrijving`, `percentage_korting`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Standaard', 'none', '', 0, 1, 2, 20201001164816, 2147483647, 0),
(2, 'Pre Order', 'red', 'Bestel dit product alvast.', 10, 1, 3, 20201001164827, 20201015222949, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_basis`
--

CREATE TABLE `webwinkel_config_basis` (
  `id` int(11) NOT NULL,
  `rekening_nummer` varchar(250) NOT NULL DEFAULT '',
  `rekening_houder` varchar(250) NOT NULL DEFAULT '',
  `rekening_plaats` varchar(250) NOT NULL DEFAULT '',
  `server_smtp` varchar(250) NOT NULL DEFAULT '',
  `server_user` varchar(250) NOT NULL DEFAULT '',
  `server_pass` varchar(250) NOT NULL DEFAULT '',
  `mail_config_id` int(11) NOT NULL DEFAULT 0,
  `url_website` varchar(250) NOT NULL DEFAULT '',
  `bedrijfsnaam` varchar(250) NOT NULL DEFAULT '',
  `straat` varchar(250) NOT NULL DEFAULT '',
  `postcode` varchar(250) NOT NULL DEFAULT '',
  `woonplaats` varchar(250) NOT NULL DEFAULT '',
  `telefoon` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `kvk` varchar(250) NOT NULL DEFAULT '',
  `btw` varchar(250) NOT NULL DEFAULT '',
  `webwinkel_beleid` int(11) NOT NULL DEFAULT 0,
  `voorraad_beleid` int(11) NOT NULL DEFAULT 0,
  `mail_factuur_type` int(11) NOT NULL DEFAULT 0,
  `bestel_klant_type` int(11) NOT NULL DEFAULT 0,
  `aantal_producten_in_listview` int(11) NOT NULL DEFAULT 0,
  `shop_page_id` int(11) NOT NULL DEFAULT 0,
  `voorwaarden_page_id` int(11) NOT NULL DEFAULT 0,
  `developer_ips` varchar(250) NOT NULL DEFAULT '',
  `debug_mode` int(11) NOT NULL DEFAULT 0,
  `conversiecode` text NOT NULL,
  `prijzen_tonen_inclusief` int(11) NOT NULL DEFAULT 0,
  `briefpapier` varchar(250) NOT NULL DEFAULT '',
  `barcode_suggestie` int(11) NOT NULL DEFAULT 0,
  `hashkey` varchar(250) NOT NULL DEFAULT '',
  `cache` int(11) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `winkelwagen_protocol` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_basis`
--

INSERT INTO `webwinkel_config_basis` (`id`, `rekening_nummer`, `rekening_houder`, `rekening_plaats`, `server_smtp`, `server_user`, `server_pass`, `mail_config_id`, `url_website`, `bedrijfsnaam`, `straat`, `postcode`, `woonplaats`, `telefoon`, `email`, `kvk`, `btw`, `webwinkel_beleid`, `voorraad_beleid`, `mail_factuur_type`, `bestel_klant_type`, `aantal_producten_in_listview`, `shop_page_id`, `voorwaarden_page_id`, `developer_ips`, `debug_mode`, `conversiecode`, `prijzen_tonen_inclusief`, `briefpapier`, `barcode_suggestie`, `hashkey`, `cache`, `datum_gewijzigd`, `winkelwagen_protocol`) VALUES
(1, 'NL01IBAN1234567890', 'cmsstrapped.nl', 'Plaatsnaam', '', '', '', 1, 'http://localhost/cmsstrapped.nl/', 'cmsstrapped.nl', 'Straatnaam 1', '1234AB', 'Plaatsnaam', '1234567890', '', '', '', 1, 1, 1, 1, 21, 3, 0, '::1;127.0.0.1;81.205.153.168;94.209.179.106;83.86.174.163;83.85.48.65;::1;', 1, '', 1, '', 0, 'a30626a42bb75cbaa30de096c7eb491c', 3600, 20211130150556, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_betaalmethode`
--

CREATE TABLE `webwinkel_config_betaalmethode` (
  `id` int(11) NOT NULL,
  `betaalprovider_id` int(11) NOT NULL DEFAULT 0,
  `betaalprovider_key` varchar(250) NOT NULL DEFAULT '',
  `titel` varchar(250) NOT NULL DEFAULT '',
  `prijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `toevoeging` text NOT NULL,
  `omschrijving_factuur` text NOT NULL,
  `icon` varchar(250) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `status_verzendkosten` int(11) NOT NULL DEFAULT 1,
  `zichtbaar_klanttype` int(11) NOT NULL DEFAULT 0,
  `zichtbaar_developer` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_betaalmethode`
--

INSERT INTO `webwinkel_config_betaalmethode` (`id`, `betaalprovider_id`, `betaalprovider_key`, `titel`, `prijs`, `toevoeging`, `omschrijving_factuur`, `icon`, `positie`, `status`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`, `status_verzendkosten`, `zichtbaar_klanttype`, `zichtbaar_developer`) VALUES
(1, 1, '', 'Bankoverschrijving', 0.00000, '', 'Bankoverschrijving: zodra het geld op onze rekening is bijgeschreven gaan wij over tot verzending.', '<i class=\"pf pf-bank-transfer\"></i>', 4, 1, 20211130150541, 20211130150541, 0, 1, 0, 0),
(2, 2, 'IDEAL', 'iDeal', 0.00000, '', '', '<i class=\"pf pf-ideal\"></i>', 2, 1, 20211130150541, 20211130150541, 0, 1, 0, 0),
(3, 2, 'creditcard', 'Visa', 0.00000, '', '', '<i class=\"pf pf-visa\"></i>', 3, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(4, 2, 'paypal', 'PayPal', 1.50000, 'via mollie', 'PayPal via mollie', '<i class=\"pf pf-paypal\"></i>', 5, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(6, 2, 'creditcard', 'Master Card', 0.00000, '', '', '<i class=\"pf pf-mastercard\"></i>', 6, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(5, 1, '', 'Afhalen', 0.00000, '', '', '<i class=\"pf V\"></i>', 7, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(7, 2, 'sofort', 'SOFORT Banking', 0.00000, '', '', '<i class=\"pf pf-sofort\"></i>', 8, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(8, 2, 'mistercash', 'MisterCash', 0.00000, '', '', '<i class=\"pf pf-bancontact-mister-cash\"></i>', 9, 0, 20211130150541, 20211130150541, 0, 1, 0, 0),
(9, 5, 'webtwister test psp', 'Test Betaalmethode', 0.00000, '', 'Test Betaalmethode vie TEST PSP, deze bestelling zal niet worden verwerkt.', '<i class=\"pf pf-eur\"></i>', 1, 2, 20211130150541, 20211130150541, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_betaalprovider`
--

CREATE TABLE `webwinkel_config_betaalprovider` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_betaalprovider`
--

INSERT INTO `webwinkel_config_betaalprovider` (`id`, `titel`, `status`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'CMS', 1, 20211130150541, 20211130150541, 0),
(2, 'Mollie', 1, 20211130150541, 20211130150541, 0),
(3, 'Ogone', 0, 20211130150541, 20211130150541, 0),
(4, 'iDeal (ABN / ING)', 0, 20211130150541, 20211130150541, 0),
(5, 'TEST PSP', 1, 20211130150541, 20211130150541, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_betaalprovider_settings`
--

CREATE TABLE `webwinkel_config_betaalprovider_settings` (
  `id` int(11) NOT NULL,
  `betaalprovider_id` int(11) NOT NULL DEFAULT 0,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `extra` varchar(250) NOT NULL DEFAULT '',
  `form_options` text NOT NULL,
  `positie` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_bezorgafstand`
--

CREATE TABLE `webwinkel_config_bezorgafstand` (
  `id` int(11) NOT NULL,
  `kilometers_van` int(11) NOT NULL DEFAULT 0,
  `kilometers_tot` int(11) NOT NULL DEFAULT 0,
  `prijs` double(9,2) NOT NULL DEFAULT 0.00,
  `notitie` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_btw`
--

CREATE TABLE `webwinkel_config_btw` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `percentage` double(9,5) NOT NULL DEFAULT 0.00000,
  `positie` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_btw`
--

INSERT INTO `webwinkel_config_btw` (`id`, `titel`, `percentage`, `positie`) VALUES
(1, 'btw hoog', 21.00000, 1),
(2, 'btw laag', 9.00000, 2),
(3, 'geen btw', 0.00000, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_factuurstatus`
--

CREATE TABLE `webwinkel_config_factuurstatus` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `icon` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_verwijderd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_factuurstatus`
--

INSERT INTO `webwinkel_config_factuurstatus` (`id`, `status_id`, `titel`, `icon`, `datum_toegevoegd`, `datum_verwijderd`, `verwijderd`) VALUES
(1, 0, 'In behandeling', 'fa-hourglass-start', 0, 0, 0),
(2, 1, 'Betaald', 'fa-eur', 0, 0, 0),
(3, 2, 'geannuleerd', 'fa-exclamation-circle', 0, 0, 0),
(4, 3, 'verstuurd', 'fa-check', 0, 0, 0),
(5, 5, 'Af te halen', 'fa-download', 0, 0, 0),
(6, 4, 'Afgehaald', 'fa-check', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_goededoelen`
--

CREATE TABLE `webwinkel_config_goededoelen` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `iban` varchar(250) NOT NULL DEFAULT '',
  `tennaamstelling` varchar(250) NOT NULL DEFAULT '',
  `woonplaats` varchar(250) NOT NULL DEFAULT '',
  `transacties_aantal` int(11) NOT NULL DEFAULT 0,
  `transacties_totaal` double(9,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_inpakken`
--

CREATE TABLE `webwinkel_config_inpakken` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `prijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_kortingscodes`
--

CREATE TABLE `webwinkel_config_kortingscodes` (
  `id` int(11) NOT NULL,
  `status_algemeen` int(11) NOT NULL DEFAULT 0,
  `automatisch_status` int(11) NOT NULL DEFAULT 0,
  `automatisch_geldigheid` int(11) NOT NULL DEFAULT 0,
  `automatisch_getal` int(11) NOT NULL DEFAULT 0,
  `automatisch_type` varchar(250) NOT NULL DEFAULT '',
  `automatisch_bedrag_ondergrens` double(9,5) NOT NULL DEFAULT 0.00000,
  `automatisch_opvolgbaar` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_kortingscodes`
--

INSERT INTO `webwinkel_config_kortingscodes` (`id`, `status_algemeen`, `automatisch_status`, `automatisch_geldigheid`, `automatisch_getal`, `automatisch_type`, `automatisch_bedrag_ondergrens`, `automatisch_opvolgbaar`, `datum_toegevoegd`, `datum_gewijzigd`) VALUES
(1, 1, 0, 0, 0, 'percentage', 0.00000, 0, 20211130150548, 20211130150548);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_landen`
--

CREATE TABLE `webwinkel_config_landen` (
  `id` int(11) NOT NULL,
  `land` varchar(250) NOT NULL DEFAULT '',
  `landcode` varchar(250) NOT NULL DEFAULT '',
  `zone` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `standaard` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_landen`
--

INSERT INTO `webwinkel_config_landen` (`id`, `land`, `landcode`, `zone`, `status`, `standaard`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Nederland', 'nl', 1, 1, 1, 0, 20211130150548, 20211130150548, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_landzones`
--

CREATE TABLE `webwinkel_config_landzones` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `verzendkosten_normaal` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_laag` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_hoog` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_limiet` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_max` double(9,5) NOT NULL DEFAULT 0.00000,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_landzones`
--

INSERT INTO `webwinkel_config_landzones` (`id`, `titel`, `verzendkosten_normaal`, `verzendkosten_laag`, `verzendkosten_hoog`, `verzendkosten_limiet`, `verzendkosten_max`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'zone 1', 6.95000, 2.50000, 17.95000, 0.00000, 0.00000, 1, 20211130150548, 20211130150548, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_mailheaderfooter`
--

CREATE TABLE `webwinkel_config_mailheaderfooter` (
  `id` int(11) NOT NULL,
  `header` text NOT NULL,
  `footer` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_mailtemplates`
--

CREATE TABLE `webwinkel_config_mailtemplates` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `onderwerp` varchar(250) NOT NULL DEFAULT '',
  `bericht` text NOT NULL,
  `bijlage` int(11) NOT NULL DEFAULT 0,
  `factuur_status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_mailtemplates`
--

INSERT INTO `webwinkel_config_mailtemplates` (`id`, `titel`, `onderwerp`, `bericht`, `bijlage`, `factuur_status`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Order verzonden', 'Uw bestelling met factuurnummer %FACTUURNUMMER% is verzonden', 'Beste %NAAM%,\r\n\r\nUw bestelling is zojuist verzonden.\r\n\r\n Wij wensen u veel plezier met de aankoop en danken u voor het vertrouwen.  \r\n\r\nVriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, 3, 20151003093333, 20151022150218, 0),
(2, 'Bestelling vertraagd', 'Bestelling met factuurnummer %FACTUURNUMMER% is vertraagd', 'Beste %NAAM%,\r\n\r\nTot onze spijt gaan wij het niet redden om uw bestelling met ordernummer:%ORDERNUMMER% binnen de gestelde levertermijn te leveren.\r\nWij gaan onze best doen om u bestelling zo snel mogelijk te leveren. Zodra uw bestelling verzonden is krijgt u een verzendbevestiging.\r\n\r\nMet vriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, -1, 20151003130007, 20151022143540, 0),
(3, 'Track&Trace code', 'Track&Trace Code', 'Beste %NAAM%,\r\n\r\nNaar aanleiding van de verzendbevestiging van uw bestelling sturen wij bij deze uw Track&Trace code toe.\r\n\r\nUw track en trace code is: %TRACTRACECODE% \r\nUw track en trace link is:%TRACTRACELINK%\r\n\r\nVriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, -1, 20151022150253, 20151022150253, 0),
(4, 'Geen betaling', 'Betaling niet ontvangen', 'Beste %NAAM%,\r\n\r\nU heeft op onze webshop een bestelling geplaatst. Het gaat om de bestelling met factuurnummer %FACTUURNUMMER% en ordernummer %ORDERNUMMER%. Tot op heden hebben wij de betaling nog niet ontvangen. Zolang wij de betaling nog niet hebben ontvangen zullen wij niet over gaan tot verzending.\r\n\r\nU kunt betalen door het bedrag van %BEDRAG% over te schrijven naar %IBAN% t.n.v. %REKENINGHOUDER% Onder vermelding van uw ordernummer %ORDERNUMMER%.\r\n\r\nAls u vragen of opmerkingen heeft neem dan contact op met onze klantenservice.\r\n\r\nVriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, -1, 20151022150451, 20151022150810, 0),
(5, 'Uitverkocht', 'Order niet beschikbaar', 'Beste %NAAM%,\r\n\r\nTot onze spijt is heeft u een artikel bij ons besteld wat wij niet meer op voorraad hebben.\r\n\r\n Het gaat om het volgende artikel:\r\n\r\n\r\nWij zullen er alles aan doen om het artikel zo spoedig mogelijk na te sturen, normaal gesproken is dit 2 a 3 werkdagen.\r\n\r\nOnze excuses voor het ongemak.\r\n\r\nVriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, -1, 20151022150817, 20151022150817, 0),
(6, 'Antwoord contact', 'automatisch antwoord contact', 'Beste %NAAM%,\r\n\r\nBedankt voor uw contactverzoek. Dit is een automatische email. Wij gaan ons best doen om binnen 24 uur te antwoorden.\r\n\r\nVriendelijke groet,\r\n\r\n%BEDRIJFSNAAM%', 0, -1, 20151022152230, 20151022152230, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_meldingen`
--

CREATE TABLE `webwinkel_config_meldingen` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `omschrijving_technisch` text NOT NULL,
  `succes` int(11) NOT NULL DEFAULT 0,
  `alert` int(11) NOT NULL DEFAULT 0,
  `type` varchar(250) NOT NULL DEFAULT '',
  `betaalmethode` int(11) NOT NULL DEFAULT 0,
  `responsecode` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_meldingen`
--

INSERT INTO `webwinkel_config_meldingen` (`id`, `titel`, `omschrijving`, `omschrijving_technisch`, `succes`, `alert`, `type`, `betaalmethode`, `responsecode`) VALUES
(1, 'Betaling gelukt, bestelling voltooid!', '<p>Heel erg bedankt voor uw bestelling. De betaling is geslaagd dus wij gaan uw bestelling direct versturen.</p>\r\n', 'betaling gelkt', 1, 0, 'melding_na_betalen', 0, 'betaling_geslaagd'),
(2, 'melding op factuur..', '<p>melding op factuur..</p>\r\n', 'extra tekst op factuur', 1, 0, 'losse_melding', 0, 'factuur_text'),
(3, 'Mail na bestelling', '<p>Heel erg bedankt voor uw bestelling!</p>\r\n', 'tekst in de email na een bestelling', 0, 0, 'melding_na_betalen', 0, 'bedankt_email'),
(4, 'mollie_betaling_open', 'mollie_betaling_open omschrijving', 'mollie_betaling_open technische omschrijving', 1, 1, 'melding_na_betalen', 0, 'mollie_betaling_open'),
(5, 'mollie_betaling_geannuleerd', '<p>mollie_betaling_geannuleerd omschrijving</p>\r\n', 'mollie_betaling_geannuleerd technische omschrijving', 0, 1, 'melding_na_betalen', 0, 'mollie_betaling_geannuleerd'),
(6, 'mollie_betaling_afwachting', '<p>mollie_betaling_afwachting omschrijving</p>\r\n', 'mollie_betaling_afwachting technische omschrijving', 0, 1, 'melding_na_betalen', 0, 'mollie_betaling_afwachting'),
(7, 'mollie_betaling_succes', 'mollie_betaling_succes omschrijving', 'mollie_betaling_succes technische omschrijving', 1, 1, 'melding_na_betalen', 0, 'mollie_betaling_succes'),
(8, 'mollie_betaling_refund', '<p>mollie_betaling_refund omschrijving</p>\r\n', 'mollie_betaling_refund technische omschrijving', 0, 1, 'melding_na_betalen', 0, 'mollie_betaling_refund'),
(9, 'mollie_betaling_verlopen', '<p>mollie_betaling_verlopen omschrijving</p>\r\n', 'mollie_betaling_verlopen technische omschrijving', 0, 1, 'melding_na_betalen', 0, 'mollie_betaling_verlopen'),
(10, 'mollie_betaling_geeninfo', '<p>mollie_betaling_geeninfo omschrijving</p>\r\n', 'mollie_betaling_geeninfo technische omschrijving', 0, 1, 'melding_na_betalen', 0, 'mollie_betaling_geeninfo'),
(11, 'Bedankt voor uw bestelling!', '<p>Bedankt voor uw bestelling!</p>\r\n\r\n<p>U heeft gekozen om te betalen middels een bankoverzchrijving. Er is momenteel een pro-forma factuur naar uw emailadres gestuurd. Op deze pro-forma factuur staat de informatie die u nodig heeft om de betaling af&nbsp;te ronden. (totaalbedrag, ordernummer, IBAN en ten naamstelling)</p>\r\n\r\n<p>Zodra het geld op onze rekening is bijgeschreven, zullen wij direct overgaan tot het verzenden van de door uw bestelde producten.</p>\r\n', '', 1, 0, 'melding_na_betalen', 1, 'bankoverschrijving_succes'),
(12, 'Bedankt voor uw bestelling!', '<p>U heeft er voor gekozen om uw bestelde producten af te komen halen en de betaling contant te komen voldoen.</p>\r\n\r\n<p>Afhalen kan uitsluitend op afspraak, neem contact met ons op wanneer u van plan bent om langs te komen.</p>\r\n\r\n<p>Wat ook belangrijk is om te weten is dat wij geen PIN apparaat en Kassa hebben, dus contant en gepast betalen is een pr&eacute;</p>\r\n\r\n<p>Met vriendelijke groet,<br />\r\n%BEDRIJFNAAM%</p>\r\n', '', 1, 0, 'melding_na_betalen', 0, 'afhalen_succes'),
(13, 'Uw winkelwagen is leeg', '<p>Uw winkelwagen bevat momenteel geen producten.</p>\r\n', '', 0, 0, 'melding_na_betalen', 0, 'cart_leeg'),
(14, 'Er is geen transactiecode', '<p>Er is geen transactiecode</p>\r\n', 'Er is geen transactiecode', 0, 1, 'melding_na_betalen', 0, 'mollie_geen_transactie'),
(15, 'Uw betaling is helaas niet voltooid', '<p>Uw betaling van zojuist is helaas niet gelukt probeer het nogmaals of kies een andere betaalmethode.</p>\r\n\r\n<p><a class=\"btn-shop\" href=\"%SHOPURL%cart/personalia/\">Terug naar de Winkelwagen</a></p>\r\n', '', 0, 0, 'melding_na_betalen', 9, 'testbank_order_open'),
(16, 'Order onbekend', 'Er is geen order om de status van te verwerken of status van weer te geven.', '', 0, 0, 'melding_na_betalen', 9, 'testbank_order_unknown'),
(17, 'Kies uw bank', '<p>U staat op het punt om uw bestelling met iDeal te betalen. Selecteer hieronder uw bank en voer de betaling uit in de vertrouwde omgeving van uw eigen bank.</p>\r\n', '', 0, 0, 'melding_na_betalen', 2, 'ideal_bankselectie'),
(18, 'Betaling middels de WebTwister Testbank is gelukt!', '<p>Hoera je betaling is gelukt! er zojuist een email naar je gestuurd met daarin de factuur ter bevestiging van je bestelling.<br />\r\nAangezien het een test bestelling betreft, gaan we niet over tot versturen</p>\r\n', '', 0, 0, 'melding_na_betalen', 0, 'testbank_order_paid');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_producttype`
--

CREATE TABLE `webwinkel_config_producttype` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_producttype`
--

INSERT INTO `webwinkel_config_producttype` (`id`, `titel`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Artikel', 1, 2, 20210115214428, 20210115214428, 0),
(2, 'Download', 1, 3, 20210115214441, 20210115214441, 0),
(3, 'Behandeling', 1, 4, 20210115214447, 20210115214447, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_referentie`
--

CREATE TABLE `webwinkel_config_referentie` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_verzendopties`
--

CREATE TABLE `webwinkel_config_verzendopties` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `kosten` double(9,2) NOT NULL DEFAULT 0.00,
  `weergave_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `webwinkel_config_verzendopties`
--

INSERT INTO `webwinkel_config_verzendopties` (`id`, `titel`, `omschrijving`, `kosten`, `weergave_status`, `status`, `positie`, `datum_toegevoegd`, `datum_gewijzigd`, `verwijderd`) VALUES
(1, 'Reguliere bezorging', '', 0.00, 1, 0, 1, 20200519003104, 20200519003104, 0),
(2, 'Aangetekend versturen', '', 2.95, 1, 0, 2, 20200519003413, 20200519003413, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_config_voorraad`
--

CREATE TABLE `webwinkel_config_voorraad` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `kleur` varchar(250) NOT NULL DEFAULT '',
  `voorraad_aantallen_tonen` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(250) NOT NULL DEFAULT '',
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_factuur`
--

CREATE TABLE `webwinkel_factuur` (
  `id` int(11) NOT NULL,
  `userhash` varchar(250) NOT NULL DEFAULT '',
  `orderid` varchar(250) NOT NULL DEFAULT '',
  `factuur_nummer` int(11) NOT NULL DEFAULT 0,
  `factuur_datum` bigint(14) NOT NULL DEFAULT 0,
  `factuur_status` int(11) NOT NULL DEFAULT 0,
  `betaal_status` int(11) NOT NULL DEFAULT 0,
  `betaal_methode` int(11) NOT NULL DEFAULT 0,
  `betaal_methode_naam` varchar(250) NOT NULL DEFAULT '',
  `betaal_methode_prijs_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `betaal_methode_prijs_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `betaal_methode_prijs_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `bezorgoptie` int(11) NOT NULL DEFAULT 0,
  `bezorgoptie_naam` varchar(250) NOT NULL DEFAULT '',
  `bezorgoptie_prijs_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `bezorgoptie_prijs_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `bezorgoptie_prijs_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_verzendkosten_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_verzendkosten_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_verzendkosten_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_korting_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_korting_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_korting_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_btw_laag` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_btw_hoog` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_limiet` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_max` double(9,5) NOT NULL DEFAULT 0.00000,
  `voorwaarden` int(11) NOT NULL DEFAULT 0,
  `nieuwsbrief` int(11) NOT NULL DEFAULT 0,
  `referentie` varchar(250) NOT NULL DEFAULT '',
  `inpakken` varchar(250) NOT NULL DEFAULT '',
  `kortingscode` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_status` int(11) NOT NULL DEFAULT 0,
  `zakelijk_bedrijfsnaam` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_kvknummer` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_btwnummer` varchar(250) NOT NULL DEFAULT '',
  `geslacht` varchar(250) NOT NULL DEFAULT '',
  `naam_voornaam` varchar(250) NOT NULL DEFAULT '',
  `naam_tussenvoegsel` varchar(250) NOT NULL DEFAULT '',
  `naam_achternaam` varchar(250) NOT NULL DEFAULT '',
  `adres_straatnaam` varchar(250) NOT NULL DEFAULT '',
  `adres_huisnummer` varchar(250) NOT NULL DEFAULT '',
  `adres_huisnummer_toevoeging` varchar(250) NOT NULL DEFAULT '',
  `adres_postcode` varchar(250) NOT NULL DEFAULT '',
  `adres_woonplaats` varchar(250) NOT NULL DEFAULT '',
  `adres_land` varchar(250) NOT NULL DEFAULT '',
  `adres_land_id` int(11) NOT NULL DEFAULT 0,
  `emailadres` varchar(250) NOT NULL DEFAULT '',
  `telefoon` varchar(250) NOT NULL DEFAULT '',
  `bezorgadres` int(11) NOT NULL DEFAULT 0,
  `afl_geslacht` varchar(250) NOT NULL DEFAULT '',
  `afl_naam_voornaam` varchar(250) NOT NULL DEFAULT '',
  `afl_naam_tussenvoegsel` varchar(250) NOT NULL DEFAULT '',
  `afl_naam_achternaam` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_straatnaam` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_huisnummer` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_huisnummer_toevoeging` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_postcode` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_woonplaats` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_land` varchar(250) NOT NULL DEFAULT '',
  `afl_adres_land_id` int(11) NOT NULL DEFAULT 0,
  `afl_adres_land_prijs_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `afl_adres_land_prijs_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `afl_adres_land_prijs_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `transactieid` varchar(250) NOT NULL DEFAULT '',
  `opmerking_klant` text NOT NULL,
  `opmerking` text NOT NULL,
  `klant_id` int(11) NOT NULL DEFAULT 0,
  `factuur_reminder` bigint(14) NOT NULL DEFAULT 0,
  `factuur_html` text NOT NULL,
  `notitie` text NOT NULL,
  `order_request_server` text NOT NULL,
  `user_log` text NOT NULL,
  `paymentvars` text NOT NULL,
  `myparcel_status` int(11) NOT NULL DEFAULT 0,
  `last_edit_user_id` int(11) NOT NULL DEFAULT 0,
  `last_edit_user_name` varchar(250) NOT NULL DEFAULT '',
  `ip` varchar(250) NOT NULL DEFAULT '',
  `pakkettype_voorkeur_systeem` varchar(250) NOT NULL DEFAULT '',
  `pakkettype_voorkeur_klant` varchar(250) NOT NULL DEFAULT '',
  `btw_protocol` int(11) NOT NULL DEFAULT 0,
  `barcode` varchar(250) NOT NULL DEFAULT '',
  `test` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_factuur_bestellingen`
--

CREATE TABLE `webwinkel_factuur_bestellingen` (
  `id` int(11) NOT NULL,
  `factuur_id` int(11) NOT NULL DEFAULT 0,
  `orderid` varchar(250) NOT NULL DEFAULT '',
  `product_prijs_combo` varchar(250) NOT NULL DEFAULT '',
  `product_id` int(11) NOT NULL DEFAULT 0,
  `prijs_id` int(11) NOT NULL DEFAULT 0,
  `prijs_stuk_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_stuk_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_stuk_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties` text NOT NULL,
  `opties_meerprijs_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijs_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijs_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijzen` text NOT NULL,
  `prijs_subtotaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_subtotaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_subtotaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_per` int(11) NOT NULL DEFAULT 0,
  `verzendkosten_totaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_totaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_totaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `percentage_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `aantal` int(11) NOT NULL DEFAULT 0,
  `datum` bigint(14) NOT NULL DEFAULT 0,
  `totaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `stockhash` varchar(250) NOT NULL DEFAULT '',
  `json_product` text NOT NULL,
  `json_prijs` text NOT NULL,
  `json_opties` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `behandeling_plannen` int(11) NOT NULL DEFAULT 0,
  `behandeling_plannen_datumstart` bigint(14) NOT NULL DEFAULT 0,
  `behandeling_plannen_datumeinde` bigint(14) NOT NULL DEFAULT 0,
  `behandeling_plannen_minuten` int(11) NOT NULL DEFAULT 0,
  `opmerking_factuur` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_factuur_kassa`
--

CREATE TABLE `webwinkel_factuur_kassa` (
  `id` int(11) NOT NULL,
  `factuur_id` int(11) NOT NULL DEFAULT 0,
  `verkoper_id` int(11) NOT NULL DEFAULT 0,
  `verkoper_naam` varchar(250) NOT NULL DEFAULT '',
  `bedrag` double(9,5) NOT NULL DEFAULT 0.00000,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_factuur_kortingen`
--

CREATE TABLE `webwinkel_factuur_kortingen` (
  `id` int(11) NOT NULL,
  `factuur_id` int(11) NOT NULL DEFAULT 0,
  `omschrijving` text NOT NULL,
  `bedrag_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `bedrag_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `bedrag_inc` double(9,5) NOT NULL DEFAULT 0.00000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_factuur_metadata`
--

CREATE TABLE `webwinkel_factuur_metadata` (
  `id` int(11) NOT NULL,
  `factuur_id` int(11) NOT NULL DEFAULT 0,
  `setname` varchar(250) NOT NULL DEFAULT '',
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_klant`
--

CREATE TABLE `webwinkel_klant` (
  `id` int(11) NOT NULL,
  `emailadres` varchar(250) NOT NULL DEFAULT '',
  `wachtwoord` text NOT NULL,
  `geslacht` varchar(250) NOT NULL DEFAULT '',
  `naam_voor` varchar(250) NOT NULL DEFAULT '',
  `naam_tussen` varchar(250) NOT NULL DEFAULT '',
  `naam_achter` varchar(250) NOT NULL DEFAULT '',
  `telefoonnummer` varchar(250) NOT NULL DEFAULT '',
  `datum_geboorte` bigint(14) NOT NULL DEFAULT 0,
  `zakelijk_status` int(11) NOT NULL DEFAULT 0,
  `zakelijk_bedrijfsnaam` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_kvk` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_btw` varchar(250) NOT NULL DEFAULT '',
  `zakelijk_calculatie_precentage` double(9,2) NOT NULL DEFAULT 0.00,
  `zakelijk_calculatie_methode` int(11) NOT NULL DEFAULT 0,
  `zakelijk_op_rekening` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `status_validatie` int(11) NOT NULL DEFAULT 0,
  `status_registratie` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_klant_adres`
--

CREATE TABLE `webwinkel_klant_adres` (
  `id` int(11) NOT NULL,
  `klant_id` int(11) NOT NULL DEFAULT 0,
  `geslacht` varchar(250) NOT NULL DEFAULT '',
  `naam_voor` varchar(250) NOT NULL DEFAULT '',
  `naam_tussen` varchar(250) NOT NULL DEFAULT '',
  `naam_achter` varchar(250) NOT NULL DEFAULT '',
  `straatnaam` varchar(250) NOT NULL DEFAULT '',
  `huisnummer` varchar(250) NOT NULL DEFAULT '',
  `huisnummer_toevoeging` varchar(250) NOT NULL DEFAULT '',
  `postcode` varchar(250) NOT NULL DEFAULT '',
  `woonplaats` varchar(250) NOT NULL DEFAULT '',
  `land` varchar(250) NOT NULL DEFAULT '',
  `standaard_factuur` int(11) NOT NULL DEFAULT 0,
  `standaard_aflever` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_klant_metadata`
--

CREATE TABLE `webwinkel_klant_metadata` (
  `id` int(11) NOT NULL,
  `klant_id` int(11) NOT NULL DEFAULT 0,
  `sleutel` varchar(250) NOT NULL DEFAULT '',
  `waarde` text NOT NULL,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_kortingscodes`
--

CREATE TABLE `webwinkel_kortingscodes` (
  `id` int(11) NOT NULL,
  `factuur_id_gemaakt` int(11) NOT NULL DEFAULT 0,
  `factuur_id_gebruikt` int(11) NOT NULL DEFAULT 0,
  `aantal_te_gebruiken` int(11) NOT NULL DEFAULT -1,
  `aantal_gebruikt` int(11) NOT NULL DEFAULT 0,
  `code` varchar(250) NOT NULL DEFAULT '',
  `getal` int(11) NOT NULL DEFAULT 0,
  `type` varchar(250) NOT NULL DEFAULT '',
  `datum_start` text NOT NULL,
  `datum_eind` text NOT NULL,
  `categorie_beperking` text NOT NULL,
  `bedrag_ondergrens` double(9,5) NOT NULL DEFAULT 0.00000,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_leverancier`
--

CREATE TABLE `webwinkel_leverancier` (
  `id` int(11) NOT NULL,
  `leverancier` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `notitie` text NOT NULL,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_mails`
--

CREATE TABLE `webwinkel_mails` (
  `id` int(11) NOT NULL,
  `action` varchar(250) NOT NULL DEFAULT '',
  `retour` varchar(250) NOT NULL DEFAULT '',
  `factuur` varchar(250) NOT NULL DEFAULT '',
  `factuur_nummer` varchar(250) NOT NULL DEFAULT '',
  `template` varchar(250) NOT NULL DEFAULT '',
  `naam` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `bijlage` varchar(250) NOT NULL DEFAULT '',
  `factuur_status` varchar(250) NOT NULL DEFAULT '',
  `onderwerp` varchar(250) NOT NULL DEFAULT '',
  `bericht` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_merk`
--

CREATE TABLE `webwinkel_merk` (
  `id` int(11) NOT NULL,
  `merk` varchar(250) NOT NULL DEFAULT '',
  `merk_slug` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `notitie` text NOT NULL,
  `url_site` varchar(250) NOT NULL DEFAULT '',
  `url_catalogus` varchar(250) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_nieuwsbrief`
--

CREATE TABLE `webwinkel_nieuwsbrief` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `content_html` text NOT NULL,
  `content_css` text NOT NULL,
  `content_text` text NOT NULL,
  `product_ids` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_opties_categorie`
--

CREATE TABLE `webwinkel_opties_categorie` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `aankoopoptie` int(11) NOT NULL DEFAULT 0,
  `extra` text NOT NULL,
  `positie` int(11) NOT NULL DEFAULT 0,
  `filter` int(11) NOT NULL DEFAULT 0,
  `filter_titel` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0,
  `showtype` int(11) NOT NULL DEFAULT 0,
  `image_serie` int(11) NOT NULL DEFAULT 0,
  `variatie_meervoudig` int(11) NOT NULL DEFAULT 0,
  `modal_btn_text` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_opties_optie`
--

CREATE TABLE `webwinkel_opties_optie` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL DEFAULT 0,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `meerprijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `meerprijs_type` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `extra` text NOT NULL,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product`
--

CREATE TABLE `webwinkel_product` (
  `id` int(11) NOT NULL,
  `titel` varchar(250) NOT NULL DEFAULT '',
  `titel_slug` varchar(250) NOT NULL DEFAULT '',
  `titel_kort` varchar(250) NOT NULL DEFAULT '',
  `inleiding` text NOT NULL,
  `omschrijving` text NOT NULL,
  `meta_titel` varchar(250) NOT NULL DEFAULT '',
  `meta_omschrijving` text NOT NULL,
  `meta_tags` text NOT NULL,
  `zoektermen` text NOT NULL,
  `tags` text NOT NULL,
  `artikelnummer` varchar(250) NOT NULL DEFAULT '',
  `volgnummer` varchar(250) NOT NULL DEFAULT '',
  `barcode` varchar(250) NOT NULL DEFAULT '',
  `btw_id` int(11) NOT NULL DEFAULT 0,
  `producttype_id` int(11) NOT NULL DEFAULT 0,
  `gewicht` double(9,2) NOT NULL DEFAULT 0.00,
  `lengte` double(9,2) NOT NULL DEFAULT 0.00,
  `breedte` double(9,2) NOT NULL DEFAULT 0.00,
  `diepte` double(9,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `status_aanbieding` int(11) NOT NULL DEFAULT 0,
  `prijs_op_aanvraag` int(11) NOT NULL DEFAULT 0,
  `merk` varchar(250) NOT NULL DEFAULT '',
  `merk_id` int(11) NOT NULL DEFAULT 0,
  `leverancier` varchar(250) NOT NULL DEFAULT '',
  `leverancier_id` int(11) NOT NULL DEFAULT 0,
  `voorraad_protocol` int(11) NOT NULL DEFAULT 0,
  `variatie_protocol` int(11) NOT NULL DEFAULT 0,
  `voorraad_id` int(11) NOT NULL DEFAULT 0,
  `voorraad_aantal` int(11) NOT NULL DEFAULT 0,
  `voorraad_aantal_notificatie` int(11) NOT NULL DEFAULT 0,
  `voorraad_leverdatum` bigint(14) NOT NULL DEFAULT 0,
  `verzendoptie` varchar(250) NOT NULL DEFAULT '',
  `zone_tarief` varchar(250) NOT NULL DEFAULT '',
  `video_url` varchar(250) NOT NULL DEFAULT '',
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0,
  `datum_bekeken` bigint(14) NOT NULL DEFAULT 0,
  `aantal_bekeken` int(11) NOT NULL DEFAULT 0,
  `aantal_verkocht` int(11) NOT NULL DEFAULT 0,
  `verwijderd` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_categorie`
--

CREATE TABLE `webwinkel_product_categorie` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `categorie_id` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `datum_gewijzigd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_opties`
--

CREATE TABLE `webwinkel_product_opties` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `optie_categorie_id` int(11) NOT NULL DEFAULT 0,
  `optie_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_prijs`
--

CREATE TABLE `webwinkel_product_prijs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `omschrijving` varchar(250) NOT NULL DEFAULT '',
  `prijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_inkoop` double(9,5) NOT NULL DEFAULT 0.00000,
  `aanbieding_prijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `aanbieding_datum_start` bigint(14) NOT NULL DEFAULT 0,
  `aanbieding_datum_eind` bigint(14) NOT NULL DEFAULT 0,
  `verzendkosten_prijs` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_per` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `status_omschrijving` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_relatie`
--

CREATE TABLE `webwinkel_product_relatie` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `relatie_id` int(11) NOT NULL DEFAULT 0,
  `relatie_type` int(11) NOT NULL DEFAULT 0,
  `relatie_richting` int(11) NOT NULL DEFAULT 0,
  `datum_toegevoegd` bigint(14) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_stock`
--

CREATE TABLE `webwinkel_product_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `combi_json` text NOT NULL,
  `combi_hash` varchar(250) NOT NULL DEFAULT '',
  `combi_ids` varchar(250) NOT NULL DEFAULT '',
  `variatie_titel` varchar(250) NOT NULL DEFAULT '',
  `barcode` varchar(250) NOT NULL DEFAULT '',
  `aantal` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `leverdatum` bigint(14) NOT NULL DEFAULT 0,
  `voorraad_status` int(11) NOT NULL DEFAULT 0,
  `positie` int(11) NOT NULL DEFAULT 0,
  `melding` text NOT NULL,
  `meerprijs` double(9,5) NOT NULL DEFAULT 0.00000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_product_tags`
--

CREATE TABLE `webwinkel_product_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `taal_id` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_winkelwagen`
--

CREATE TABLE `webwinkel_winkelwagen` (
  `id` int(11) NOT NULL,
  `userhash` varchar(250) NOT NULL DEFAULT '',
  `orderid` varchar(250) NOT NULL DEFAULT '',
  `product_prijs_combo` varchar(250) NOT NULL DEFAULT '',
  `product_id` int(11) NOT NULL DEFAULT 0,
  `prijs_id` int(11) NOT NULL DEFAULT 0,
  `prijs_stuk_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_stuk_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_stuk_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties` text NOT NULL,
  `opties_meerprijs_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijs_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijs_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `opties_meerprijzen` text NOT NULL,
  `prijs_subtotaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_subtotaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `prijs_subtotaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_per` int(11) NOT NULL DEFAULT 0,
  `verzendkosten_totaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_totaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `verzendkosten_totaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `percentage_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `aantal` int(11) NOT NULL DEFAULT 0,
  `datum` bigint(14) NOT NULL DEFAULT 0,
  `totaal_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `totaal_inc` double(9,5) NOT NULL DEFAULT 0.00000,
  `stockhash` varchar(250) NOT NULL DEFAULT '',
  `json_product` text NOT NULL,
  `json_prijs` text NOT NULL,
  `json_opties` text NOT NULL,
  `behandeling_plannen` int(11) NOT NULL DEFAULT 0,
  `behandeling_plannen_datumstart` bigint(14) NOT NULL DEFAULT 0,
  `behandeling_plannen_datumeinde` bigint(14) NOT NULL DEFAULT 0,
  `behandeling_plannen_minuten` int(11) NOT NULL DEFAULT 0,
  `opmerking_factuur` text NOT NULL,
  `goededoel_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `webwinkel_winkelwagen_kortingen`
--

CREATE TABLE `webwinkel_winkelwagen_kortingen` (
  `id` int(11) NOT NULL,
  `userhash` varchar(250) NOT NULL DEFAULT '',
  `omschrijving` text NOT NULL,
  `bedrag_ex` double(9,5) NOT NULL DEFAULT 0.00000,
  `bedrag_btw` double(9,5) NOT NULL DEFAULT 0.00000,
  `bedrag_inc` double(9,5) NOT NULL DEFAULT 0.00000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `blokken_blok`
--
ALTER TABLE `blokken_blok`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `blokken_config`
--
ALTER TABLE `blokken_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `blokken_layout`
--
ALTER TABLE `blokken_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `blokken_pagina`
--
ALTER TABLE `blokken_pagina`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `carousel_carousel`
--
ALTER TABLE `carousel_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `carousel_koppeling`
--
ALTER TABLE `carousel_koppeling`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `carousel_layers`
--
ALTER TABLE `carousel_layers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `carousel_menu`
--
ALTER TABLE `carousel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `carousel_slide`
--
ALTER TABLE `carousel_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_algemeen`
--
ALTER TABLE `configuratie_algemeen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_api_set`
--
ALTER TABLE `configuratie_api_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_api_set_keys`
--
ALTER TABLE `configuratie_api_set_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_backup`
--
ALTER TABLE `configuratie_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_bewerkpaden`
--
ALTER TABLE `configuratie_bewerkpaden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_cookies`
--
ALTER TABLE `configuratie_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_customfields`
--
ALTER TABLE `configuratie_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_customfields_waardes`
--
ALTER TABLE `configuratie_customfields_waardes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_logfile`
--
ALTER TABLE `configuratie_logfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_mailconfigs`
--
ALTER TABLE `configuratie_mailconfigs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_markers`
--
ALTER TABLE `configuratie_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_modules_beschikbaar`
--
ALTER TABLE `configuratie_modules_beschikbaar`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_modules_menu`
--
ALTER TABLE `configuratie_modules_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_open_graph`
--
ALTER TABLE `configuratie_open_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_qrcodes`
--
ALTER TABLE `configuratie_qrcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_shortlinks`
--
ALTER TABLE `configuratie_shortlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_sitemap`
--
ALTER TABLE `configuratie_sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_supportinfo`
--
ALTER TABLE `configuratie_supportinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_talen`
--
ALTER TABLE `configuratie_talen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_talen_vertalingen`
--
ALTER TABLE `configuratie_talen_vertalingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_vertaalautomaat_vertaald`
--
ALTER TABLE `configuratie_vertaalautomaat_vertaald`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `configuratie_vertalingen`
--
ALTER TABLE `configuratie_vertalingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers_config`
--
ALTER TABLE `gebruikers_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers_domeinen`
--
ALTER TABLE `gebruikers_domeinen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers_rechten`
--
ALTER TABLE `gebruikers_rechten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers_session`
--
ALTER TABLE `gebruikers_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gebruikers_web`
--
ALTER TABLE `gebruikers_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media_categorie`
--
ALTER TABLE `media_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media_items`
--
ALTER TABLE `media_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media_koppelingen`
--
ALTER TABLE `media_koppelingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media_profiel`
--
ALTER TABLE `media_profiel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `media_upload_status`
--
ALTER TABLE `media_upload_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_cache`
--
ALTER TABLE `menu_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_config`
--
ALTER TABLE `menu_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_groep`
--
ALTER TABLE `menu_groep`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_javascript`
--
ALTER TABLE `menu_javascript`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_pagebuilder`
--
ALTER TABLE `menu_pagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menu_templates`
--
ALTER TABLE `menu_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `nieuws_categorie`
--
ALTER TABLE `nieuws_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `nieuws_categorie_nieuws`
--
ALTER TABLE `nieuws_categorie_nieuws`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `nieuws_configuratie`
--
ALTER TABLE `nieuws_configuratie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `nieuws_nieuws`
--
ALTER TABLE `nieuws_nieuws`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_categorie`
--
ALTER TABLE `webwinkel_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_categorie_autoconnect_regels`
--
ALTER TABLE `webwinkel_categorie_autoconnect_regels`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_aanbodstadia`
--
ALTER TABLE `webwinkel_config_aanbodstadia`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_basis`
--
ALTER TABLE `webwinkel_config_basis`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_betaalmethode`
--
ALTER TABLE `webwinkel_config_betaalmethode`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_betaalprovider`
--
ALTER TABLE `webwinkel_config_betaalprovider`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_betaalprovider_settings`
--
ALTER TABLE `webwinkel_config_betaalprovider_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_bezorgafstand`
--
ALTER TABLE `webwinkel_config_bezorgafstand`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_btw`
--
ALTER TABLE `webwinkel_config_btw`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_factuurstatus`
--
ALTER TABLE `webwinkel_config_factuurstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_goededoelen`
--
ALTER TABLE `webwinkel_config_goededoelen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_inpakken`
--
ALTER TABLE `webwinkel_config_inpakken`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_kortingscodes`
--
ALTER TABLE `webwinkel_config_kortingscodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_landen`
--
ALTER TABLE `webwinkel_config_landen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_landzones`
--
ALTER TABLE `webwinkel_config_landzones`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_mailheaderfooter`
--
ALTER TABLE `webwinkel_config_mailheaderfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_mailtemplates`
--
ALTER TABLE `webwinkel_config_mailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_meldingen`
--
ALTER TABLE `webwinkel_config_meldingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_producttype`
--
ALTER TABLE `webwinkel_config_producttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_referentie`
--
ALTER TABLE `webwinkel_config_referentie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_verzendopties`
--
ALTER TABLE `webwinkel_config_verzendopties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_config_voorraad`
--
ALTER TABLE `webwinkel_config_voorraad`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_factuur`
--
ALTER TABLE `webwinkel_factuur`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_factuur_bestellingen`
--
ALTER TABLE `webwinkel_factuur_bestellingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_factuur_kassa`
--
ALTER TABLE `webwinkel_factuur_kassa`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_factuur_kortingen`
--
ALTER TABLE `webwinkel_factuur_kortingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_factuur_metadata`
--
ALTER TABLE `webwinkel_factuur_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_klant`
--
ALTER TABLE `webwinkel_klant`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_klant_adres`
--
ALTER TABLE `webwinkel_klant_adres`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_klant_metadata`
--
ALTER TABLE `webwinkel_klant_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_kortingscodes`
--
ALTER TABLE `webwinkel_kortingscodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_leverancier`
--
ALTER TABLE `webwinkel_leverancier`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_mails`
--
ALTER TABLE `webwinkel_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_merk`
--
ALTER TABLE `webwinkel_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_nieuwsbrief`
--
ALTER TABLE `webwinkel_nieuwsbrief`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_opties_categorie`
--
ALTER TABLE `webwinkel_opties_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_opties_optie`
--
ALTER TABLE `webwinkel_opties_optie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product`
--
ALTER TABLE `webwinkel_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_categorie`
--
ALTER TABLE `webwinkel_product_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_opties`
--
ALTER TABLE `webwinkel_product_opties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_prijs`
--
ALTER TABLE `webwinkel_product_prijs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_relatie`
--
ALTER TABLE `webwinkel_product_relatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_stock`
--
ALTER TABLE `webwinkel_product_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_product_tags`
--
ALTER TABLE `webwinkel_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_winkelwagen`
--
ALTER TABLE `webwinkel_winkelwagen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `webwinkel_winkelwagen_kortingen`
--
ALTER TABLE `webwinkel_winkelwagen_kortingen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `blokken_blok`
--
ALTER TABLE `blokken_blok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `blokken_config`
--
ALTER TABLE `blokken_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `blokken_layout`
--
ALTER TABLE `blokken_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `blokken_pagina`
--
ALTER TABLE `blokken_pagina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `carousel_carousel`
--
ALTER TABLE `carousel_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `carousel_koppeling`
--
ALTER TABLE `carousel_koppeling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `carousel_layers`
--
ALTER TABLE `carousel_layers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `carousel_menu`
--
ALTER TABLE `carousel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `carousel_slide`
--
ALTER TABLE `carousel_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_algemeen`
--
ALTER TABLE `configuratie_algemeen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_api_set`
--
ALTER TABLE `configuratie_api_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_api_set_keys`
--
ALTER TABLE `configuratie_api_set_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_backup`
--
ALTER TABLE `configuratie_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT voor een tabel `configuratie_bewerkpaden`
--
ALTER TABLE `configuratie_bewerkpaden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `configuratie_cookies`
--
ALTER TABLE `configuratie_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_customfields`
--
ALTER TABLE `configuratie_customfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_customfields_waardes`
--
ALTER TABLE `configuratie_customfields_waardes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_logfile`
--
ALTER TABLE `configuratie_logfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT voor een tabel `configuratie_mailconfigs`
--
ALTER TABLE `configuratie_mailconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_markers`
--
ALTER TABLE `configuratie_markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `configuratie_modules_beschikbaar`
--
ALTER TABLE `configuratie_modules_beschikbaar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `configuratie_modules_menu`
--
ALTER TABLE `configuratie_modules_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT voor een tabel `configuratie_open_graph`
--
ALTER TABLE `configuratie_open_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_qrcodes`
--
ALTER TABLE `configuratie_qrcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_shortlinks`
--
ALTER TABLE `configuratie_shortlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_sitemap`
--
ALTER TABLE `configuratie_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_supportinfo`
--
ALTER TABLE `configuratie_supportinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `configuratie_talen`
--
ALTER TABLE `configuratie_talen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `configuratie_talen_vertalingen`
--
ALTER TABLE `configuratie_talen_vertalingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_vertaalautomaat_vertaald`
--
ALTER TABLE `configuratie_vertaalautomaat_vertaald`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `configuratie_vertalingen`
--
ALTER TABLE `configuratie_vertalingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `gebruikers_config`
--
ALTER TABLE `gebruikers_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `gebruikers_domeinen`
--
ALTER TABLE `gebruikers_domeinen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `gebruikers_rechten`
--
ALTER TABLE `gebruikers_rechten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `gebruikers_session`
--
ALTER TABLE `gebruikers_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `gebruikers_web`
--
ALTER TABLE `gebruikers_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `media_categorie`
--
ALTER TABLE `media_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `media_items`
--
ALTER TABLE `media_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `media_koppelingen`
--
ALTER TABLE `media_koppelingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `media_profiel`
--
ALTER TABLE `media_profiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `media_upload_status`
--
ALTER TABLE `media_upload_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `menu_cache`
--
ALTER TABLE `menu_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `menu_config`
--
ALTER TABLE `menu_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_groep`
--
ALTER TABLE `menu_groep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_javascript`
--
ALTER TABLE `menu_javascript`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `menu_pagebuilder`
--
ALTER TABLE `menu_pagebuilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `menu_templates`
--
ALTER TABLE `menu_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `nieuws_categorie`
--
ALTER TABLE `nieuws_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `nieuws_categorie_nieuws`
--
ALTER TABLE `nieuws_categorie_nieuws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `nieuws_configuratie`
--
ALTER TABLE `nieuws_configuratie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `nieuws_nieuws`
--
ALTER TABLE `nieuws_nieuws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_categorie`
--
ALTER TABLE `webwinkel_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_categorie_autoconnect_regels`
--
ALTER TABLE `webwinkel_categorie_autoconnect_regels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_aanbodstadia`
--
ALTER TABLE `webwinkel_config_aanbodstadia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_basis`
--
ALTER TABLE `webwinkel_config_basis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_betaalmethode`
--
ALTER TABLE `webwinkel_config_betaalmethode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_betaalprovider`
--
ALTER TABLE `webwinkel_config_betaalprovider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_betaalprovider_settings`
--
ALTER TABLE `webwinkel_config_betaalprovider_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_bezorgafstand`
--
ALTER TABLE `webwinkel_config_bezorgafstand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_btw`
--
ALTER TABLE `webwinkel_config_btw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_factuurstatus`
--
ALTER TABLE `webwinkel_config_factuurstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_goededoelen`
--
ALTER TABLE `webwinkel_config_goededoelen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_inpakken`
--
ALTER TABLE `webwinkel_config_inpakken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_kortingscodes`
--
ALTER TABLE `webwinkel_config_kortingscodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_landen`
--
ALTER TABLE `webwinkel_config_landen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_landzones`
--
ALTER TABLE `webwinkel_config_landzones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_mailheaderfooter`
--
ALTER TABLE `webwinkel_config_mailheaderfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_mailtemplates`
--
ALTER TABLE `webwinkel_config_mailtemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_meldingen`
--
ALTER TABLE `webwinkel_config_meldingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_producttype`
--
ALTER TABLE `webwinkel_config_producttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_referentie`
--
ALTER TABLE `webwinkel_config_referentie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_verzendopties`
--
ALTER TABLE `webwinkel_config_verzendopties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_config_voorraad`
--
ALTER TABLE `webwinkel_config_voorraad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_factuur`
--
ALTER TABLE `webwinkel_factuur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_factuur_bestellingen`
--
ALTER TABLE `webwinkel_factuur_bestellingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_factuur_kassa`
--
ALTER TABLE `webwinkel_factuur_kassa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_factuur_kortingen`
--
ALTER TABLE `webwinkel_factuur_kortingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_factuur_metadata`
--
ALTER TABLE `webwinkel_factuur_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_klant`
--
ALTER TABLE `webwinkel_klant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_klant_adres`
--
ALTER TABLE `webwinkel_klant_adres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_klant_metadata`
--
ALTER TABLE `webwinkel_klant_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_kortingscodes`
--
ALTER TABLE `webwinkel_kortingscodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_leverancier`
--
ALTER TABLE `webwinkel_leverancier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_mails`
--
ALTER TABLE `webwinkel_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_merk`
--
ALTER TABLE `webwinkel_merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_nieuwsbrief`
--
ALTER TABLE `webwinkel_nieuwsbrief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_opties_categorie`
--
ALTER TABLE `webwinkel_opties_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_opties_optie`
--
ALTER TABLE `webwinkel_opties_optie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product`
--
ALTER TABLE `webwinkel_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_categorie`
--
ALTER TABLE `webwinkel_product_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_opties`
--
ALTER TABLE `webwinkel_product_opties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_prijs`
--
ALTER TABLE `webwinkel_product_prijs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_relatie`
--
ALTER TABLE `webwinkel_product_relatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_stock`
--
ALTER TABLE `webwinkel_product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_product_tags`
--
ALTER TABLE `webwinkel_product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_winkelwagen`
--
ALTER TABLE `webwinkel_winkelwagen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `webwinkel_winkelwagen_kortingen`
--
ALTER TABLE `webwinkel_winkelwagen_kortingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Gegevens worden geëxporteerd voor tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"85112_back12\",\"table\":\"back12_users\"},{\"db\":\"schoolex\",\"table\":\"crud\"},{\"db\":\"snapexdata\",\"table\":\"vrienden\"},{\"db\":\"snapexdata\",\"table\":\"accounts\"},{\"db\":\"snapexdata\",\"table\":\"chats\"},{\"db\":\"snapexdata\",\"table\":\"fotos\"},{\"db\":\"85112_back12\",\"table\":\"back12_bands\"},{\"db\":\"cmsstrapped\",\"table\":\"nieuws_configuratie\"},{\"db\":\"cmsstrapped\",\"table\":\"nieuw_configuratie\"},{\"db\":\"cmsstrapped\",\"table\":\"configuratie_backup\"}]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Gegevens worden geëxporteerd voor tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cmsstrapped', 'configuratie_backup', '{\"sorted_col\":\"`id`  DESC\"}', '2021-11-30 15:28:49');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Gegevens worden geëxporteerd voor tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-15 20:39:01', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"nl\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexen voor tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexen voor tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexen voor tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexen voor tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexen voor tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexen voor tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexen voor tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexen voor tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexen voor tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexen voor tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `schoolex`
--
CREATE DATABASE IF NOT EXISTS `schoolex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `schoolex`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', 'test@test.com'),
(2, 'allah', '$2y$10$2eYirPKNu386RhlDCT59k.5PYueOgkA7gv9a1p3PuihCSgaJDTsPq', 'biem@mail.com'),
(3, 'sssss', '$2y$10$h98AqpBl25uM0vmLk3F4seb0tRloS971JYjq6dlWa4a0R1EzbvyGG', 'haga@gmfdg.com'),
(4, 'aaaaaaa', '$2y$10$mKagekkTVqzb2E5K7XcR6uBXKUS/s69Bbe6FsMcqgGGiJhpXFvgti', 'jbsdgi@gmail.com');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `snapexdata`
--
CREATE DATABASE IF NOT EXISTS `snapexdata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `snapexdata`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `AccountID` int(11) NOT NULL,
  `Gebruikersnaam` varchar(50) NOT NULL,
  `Wachtwoord` varchar(50) NOT NULL,
  `VriendId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `chats`
--

CREATE TABLE `chats` (
  `ChatId` int(11) NOT NULL,
  `Chat` varchar(250) NOT NULL,
  `Chatnaam` varchar(50) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `VriendId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `fotos`
--

CREATE TABLE `fotos` (
  `FotoId` int(11) NOT NULL,
  `FotoNaam` varchar(250) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `VriendId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vrienden`
--

CREATE TABLE `vrienden` (
  `VriendId` int(11) NOT NULL,
  `Gebruikersnaam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexen voor tabel `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ChatId`);

--
-- Indexen voor tabel `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`FotoId`);

--
-- Indexen voor tabel `vrienden`
--
ALTER TABLE `vrienden`
  ADD PRIMARY KEY (`VriendId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `chats`
--
ALTER TABLE `chats`
  MODIFY `ChatId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `fotos`
--
ALTER TABLE `fotos`
  MODIFY `FotoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `vrienden`
--
ALTER TABLE `vrienden`
  MODIFY `VriendId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
