-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 02 Mar 2019, 12:32:26
-- Sunucu sürümü: 5.6.39-cll-lve
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `artquiz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers`
--

CREATE TABLE `answers` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `answers`
--

INSERT INTO `answers` (`id`, `name`) VALUES
(1, 'Monalisa'),
(2, 'Yıldızlı Gece'),
(3, 'Çığlık'),
(4, 'İnci Küpeli Kız'),
(5, 'Guernica'),
(6, 'Venüsün Doğumu'),
(7, 'Gece Nöbeti'),
(8, 'Nedimeler'),
(9, 'Son Akşam Yemeği'),
(10, 'Amerikan Gotik'),
(11, 'Atina Okulu'),
(12, 'Avignonlu Kızlar'),
(13, 'Belleğin Azmi'),
(14, 'Dünyevi Zevkler Bahçesi'),
(15, 'Galette Değirmeni'),
(16, 'Galile Denizinde Fırtına'),
(17, 'Gece Kuşları'),
(18, 'Gece Devriyesi'),
(19, 'Gross Clinic'),
(20, 'İnsanın Oğlu'),
(21, 'İsa\'ya Ağıt'),
(22, 'İzlenim: Gün Doğumu'),
(23, 'No 5 - 1948'),
(24, 'Olympia'),
(25, 'Öpücük'),
(26, 'The Peaceable Kingdom'),
(27, 'Satürn Oğlunu Yerken'),
(30, ''),
(31, 'The Large Bathers'),
(32, 'Venüs\'ün Doğumu'),
(33, 'Uyuyan Çingene');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paintings`
--

CREATE TABLE `paintings` (
  `id` int(20) NOT NULL,
  `correct` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL,
  `scores` int(20) NOT NULL,
  `wiki` varchar(200) NOT NULL,
  `diff` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `paintings`
--

INSERT INTO `paintings` (`id`, `correct`, `url`, `scores`, `wiki`, `diff`) VALUES
(1, 'Monalisa', 'https://cangokceaslan.com/artquiz/arts/monalisa.png', 300, 'https://tr.0wikipedia.org/wiki/Mona_Lisa', 'easy'),
(2, 'Yıldızlı Gece', 'https://cangokceaslan.com/artquiz/arts/yildizli-gece.jpg', 300, 'https://tr.0wikipedia.org/wiki/Yıldızlı_Gece', 'easy'),
(3, 'Çığlık', 'https://cangokceaslan.com/artquiz/arts/ciglik.png', 300, 'https://tr.0wikipedia.org/wiki/Çığlık', 'easy'),
(4, 'İnci Küpeli Kız', 'https://cangokceaslan.com/artquiz/arts/inci-kupeli-kiz.jpg', 300, 'https://tr.0wikipedia.org/wiki/İnci_Küpeli_Kız', 'easy'),
(5, 'Nedimeler', 'https://cangokceaslan.com/artquiz/arts/nedimeler.png', 300, 'https://tr.0wikipedia.org/wiki/Nedimeler_(tablo)', 'hard'),
(6, 'Amerikan Gotik', 'https://cangokceaslan.com/artquiz/arts/amerikan-gotik.png', 300, 'https://eksisozluk.com/american-gothic--520062', 'easy'),
(7, 'Atina Okulu', 'https://www.cangokceaslan.com/artquiz/arts/atina-okulu.jpg', 300, 'https://tr.0wikipedia.org/wiki/Atina_Okulu', 'easy'),
(8, 'Avignonlu Kızlar', 'https://www.cangokceaslan.com/artquiz/arts/avignonlu-kizlar.png', 300, 'https://tr.0wikipedia.org/wiki/Avignonlu_Kızlar', 'easy'),
(9, 'Belleğin Azmi', 'https://www.cangokceaslan.com/artquiz/arts/bellegin-azmi.jpg', 300, 'https://tr.0wikipedia.org/wiki/Belleğin_Azmi', 'easy'),
(10, 'Dünyevi Zevkler Bahçesi', 'https://www.cangokceaslan.com/artquiz/arts/dunyevi-zevkler-bahcesi.png', 300, 'https://tr.0wikipedia.org/wiki/Dünyevi_Zevkler_Bahçesi', 'easy'),
(11, 'Galette Değirmeni', 'https://www.cangokceaslan.com/artquiz/arts/galette-degirmeni.jpg', 400, 'https://resimbiterken.wordpress.com/2014/07/24/pierre-auguste-renoirin-bal-du-moulin-de-la-galette-eseri/', 'easy'),
(12, 'Galile Denizinde Fırtına', 'https://cangokceaslan.com/artquiz/arts/galile-denizinde-firtina.png', 300, 'https://eksisozluk.com/storm-on-the-sea-of-galilee--1009439', 'easy'),
(13, 'Gece Kuşları', 'https://www.cangokceaslan.com/artquiz/arts/gece-kuslari.jpg', 300, 'https://tr.0wikipedia.org/wiki/Gece_Kuşları', 'easy'),
(14, 'Gece Devriyesi', 'https://www.cangokceaslan.com/artquiz/arts/gece-devriyesi.jpg', 300, 'http://birazresimtaniyalim.blogspot.com/2015/05/gece-devriyesi-nightwatch-de-nachtwacht.html', 'easy'),
(15, 'Gross Clinic', 'https://cangokceaslan.com/artquiz/arts/gross-clinic.png', 300, 'https://tr.0wikipedia.org/wiki/The_Gross_Clinic', 'easy'),
(16, 'Guernica', 'https://cangokceaslan.com/artquiz/arts/guernica.png', 300, 'https://tr.0wikipedia.org/wiki/Guernica_(tablo)', 'easy'),
(17, 'İnsanın Oğlu', 'https://cangokceaslan.com/artquiz/arts/insanin-oglu.png', 300, 'https://serkanhizli.wordpress.com/2015/03/24/the-son-of-man-insanin-oglu-1964-ressam-rene-magritte-surrealizm/', 'easy'),
(18, 'İsa\'ya Ağıt', 'https://cangokceaslan.com/artquiz/arts/isaya-agit.jpg', 300, 'https://www.sanatabasla.com/2014/01/14/olu-isaya-agit-lamentation-over-the-dead-christ-mantegna/', 'easy'),
(19, 'İzlenim: Gün Doğumu', 'https://cangokceaslan.com/artquiz/arts/izlenim-gun-dogumu.jpg', 300, 'https://tr.0wikipedia.org/wiki/İzlenim:_Gün_Doğumu', 'easy'),
(20, 'No 5 - 1948', 'https://cangokceaslan.com/artquiz/arts/no5.jpg', 300, 'https://eksisozluk.com/no-5-1948--2105867', 'easy'),
(21, 'Olympia', 'https://cangokceaslan.com/artquiz/arts/olympia.jpg', 300, 'https://tr.0wikipedia.org/wiki/Olympia_(tablo)', 'easy'),
(22, 'Öpücük', 'https://cangokceaslan.com/artquiz/arts/opucuk.jpg', 300, 'https://tr.0wikipedia.org/wiki/Öpücük_(tablo)', 'easy'),
(23, 'The Peaceable Kingdom', 'https://cangokceaslan.com/artquiz/arts/peaceable-kingdom.jpg', 300, 'https://tr.0wikipedia.org/wiki/Dosya:Edward_Hicks_-_Peaceable_Kingdom.jpg', 'easy'),
(24, 'Satürn Oğlunu Yerken', 'https://cangokceaslan.com/artquiz/arts/saturn-oglunu-yerken.jpg', 300, 'https://tr.0wikipedia.org/wiki/Çocuklarını_Yiyen_Satürn', 'easy'),
(25, 'Son Akşam Yemeği', 'https://cangokceaslan.com/artquiz/arts/son-aksam-yemegi.png', 300, 'https://tr.0wikipedia.org/wiki/Son_Akşam_Yemeği_(tablo)', 'easy'),
(26, 'The Large Bathers', 'https://cangokceaslan.com/artquiz/arts/the-bathers.jpg', 300, 'https://resimbiterken.wordpress.com/2014/08/15/paul-cezannenin-the-large-bathers-eseri/', 'easy'),
(27, 'Uyuyan Çingene', 'https://cangokceaslan.com/artquiz/arts/uyuyan-cingene.jpg', 300, 'https://tr.0wikipedia.org/wiki/Uyuyan_Çingene', 'easy'),
(28, 'Venüs\'ün Doğumu', 'https://cangokceaslan.com/artquiz/arts/venusun-dogumu.png', 300, 'https://tr.0wikipedia.org/wiki/Venüs%27ün_Doğuşu_(Botticelli)', 'easy'),
(29, 'Whistler\'in Annesi', 'https://cangokceaslan.com/artquiz/arts/whistlerin-annesi.jpg', 300, 'https://resimbiterken.wordpress.com/2014/10/28/james-abbott-mcneill-whistlerin/', 'easy');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `answers`
--
ALTER TABLE `answers`
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Tablo için indeksler `paintings`
--
ALTER TABLE `paintings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `correct` (`correct`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `paintings`
--
ALTER TABLE `paintings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
