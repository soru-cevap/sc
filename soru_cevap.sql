-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Oca 2018, 11:07:22
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `soru_cevap`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `ayar_id` int(11) NOT NULL,
  `site_adi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `site_baslik` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `site_aciklama` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `site_anahtar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `site_durum` int(11) NOT NULL DEFAULT '1',
  `iletisim_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`ayar_id`, `site_adi`, `site_baslik`, `site_aciklama`, `site_anahtar`, `site_durum`, `iletisim_id`) VALUES
(1, 'http://localhost', 'kolay video dersleri', 'soru cevap sitesi', 'php,soru,cevap,jquery,ajax', 1, 70);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_baslik` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mesaj_aciklama` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mesaj_uye_id` int(11) DEFAULT NULL,
  `mesaj_gonderen` int(11) DEFAULT NULL,
  `mesaj_durum` int(11) NOT NULL DEFAULT '0',
  `mesaj_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`mesaj_id`, `mesaj_baslik`, `mesaj_aciklama`, `mesaj_uye_id`, `mesaj_gonderen`, `mesaj_durum`, `mesaj_tarih`) VALUES
(33, 'dss', 'sdsadsa', 73, 70, 0, '2018-01-21 10:45:20'),
(34, 'dfds', 'dsfdsfds', 70, 70, 1, '2018-01-21 10:45:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `soru_id` int(11) NOT NULL,
  `soru_baslik` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `soru_aciklama` text COLLATE utf8_unicode_ci NOT NULL,
  `soru_ekleyen` int(11) DEFAULT NULL,
  `soru_sef` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `soru_etiket` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `soru_durum` int(11) NOT NULL DEFAULT '1',
  `soru_hit` int(11) NOT NULL DEFAULT '0',
  `soru_like` int(11) NOT NULL DEFAULT '0',
  `soru_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`soru_id`, `soru_baslik`, `soru_aciklama`, `soru_ekleyen`, `soru_sef`, `soru_etiket`, `soru_durum`, `soru_hit`, `soru_like`, `soru_tarih`) VALUES
(31, 'Php ile soru,cevap sitesi yapmak', 'php ve ajax ile dinamik soru cevap sitesi', 70, 'php-ile-soru-cevap-sitesi-yapmak', 'php,bootstrap,css,html,jquery,ajax', 1, 2, 0, '2018-01-01 11:38:54'),
(30, 'Php ile Ajax kullanımı', 'Ajax nedir nasıl kullanılır ?', 70, 'php-ile-ajax-kullanimi', 'ajax,php,css,jquery', 1, 3, 0, '2018-01-01 11:35:38'),
(32, 'dene baslık 1', 'deneme acıklama', 70, 'dene-baslik-1', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:43:30'),
(33, 'dene baslık 2', 'deneme acıklama', 70, 'dene-baslik-2', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:04'),
(34, 'dene baslık 3', 'deneme acıklama', 70, 'dene-baslik-3', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:09'),
(35, 'dene baslık 4', 'deneme acıklama', 70, 'dene-baslik-4', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:17'),
(36, 'dene baslık 5', 'deneme acıklama', 70, 'dene-baslik-5', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:21'),
(37, 'dene baslık 6', 'deneme acıklama', 70, 'dene-baslik-6', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:25'),
(38, 'dene baslık 7', 'deneme acıklama', 70, 'dene-baslik-7', 'deneme,php,sayfa', 1, 0, 0, '2018-01-08 11:44:29'),
(39, 'dene baslık 8', 'deneme acıklama', 70, 'dene-baslik-8', 'deneme,php,sayfa', 1, 2, 0, '2018-01-08 11:44:35'),
(41, 'soru baslık', 'soru acıklama', 72, 'soru-baslik', 'soru,osman', 1, 1, 0, '2018-01-08 12:58:11'),
(42, 'javascript sorusu 1', 'ajavascript soru acıklama', 70, 'javascript-sorusu-1', 'javascript,soru', 1, 1, 0, '2018-01-13 10:40:33'),
(43, 'javascript sorusu 2', 'ajavascript soru acıklama', 70, 'javascript-sorusu-1', 'javascript,soru', 1, 1, 0, '2018-01-13 10:40:48'),
(44, 'javascript sorusu 3', 'ajavascript soru acıklama', 70, 'javascript-sorusu-1', 'javascript,soru', 1, 1, 0, '2018-01-13 10:40:50'),
(45, 'javascript sorusu 4', 'ajavascript soru acıklama', 70, 'javascript-sorusu-1', 'javascript,soru', 1, 1, 0, '2018-01-13 10:40:52'),
(46, 'javascript sorusu 5', 'ajavascript soru acıklama', 70, 'javascript-sorusu-1', 'javascript,soru', 1, 1, 0, '2018-01-13 10:40:56'),
(47, 'javascript sorusu 6', 'javascript soru acıklaması', 70, 'javascript-sorusu-6', 'javascript,soru', 1, 2, 0, '2018-01-13 10:42:41'),
(48, 'javascript sorusu 7', 'javascript soru acıklaması', 70, 'javascript-sorusu-7', 'javascript,soru', 1, 3, 0, '2018-01-13 10:42:45'),
(50, 'sds', 'sdasdasd', 73, 'sds', 'sdasd', 1, 1, 0, '2018-01-19 14:00:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(11) NOT NULL,
  `uye_adi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uye_sifre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uye_eposta` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uye_resim` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uye_durum` int(11) NOT NULL DEFAULT '1',
  `uye_rutbe` int(11) DEFAULT '0',
  `uye_ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uye_hakkinda` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uye_facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uye_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_sifre`, `uye_eposta`, `uye_resim`, `uye_durum`, `uye_rutbe`, `uye_ip`, `uye_hakkinda`, `uye_facebook`, `uye_tarih`) VALUES
(70, 'mehmet', 'e10adc3949ba59abbe56e057f20f883e', 'mehmet_nuralp@hotmail.com', 'tema/resim/78652954.jpg', 1, 0, '::1', 'deneme', 'https://www.facebook.com/', '2018-01-08 13:01:03'),
(72, 'osman', 'e10adc3949ba59abbe56e057f20f883e', 'osman@hotmail.com', 'tema/resim/97183227.jpg', 1, 0, 'dfdsfs', 'deneme hakkımda', 'facebook/osman', '2018-01-08 13:01:03'),
(73, 'ahmet', 'e10adc3949ba59abbe56e057f20f883e', 'mehmet@hotmail.com', NULL, 1, 0, '::1', NULL, NULL, '2018-01-19 12:39:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `yorum_mesaj` text COLLATE utf8_unicode_ci NOT NULL,
  `yorum_eposta` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `yorum_ekleyen` int(11) DEFAULT NULL,
  `yorum_soru_id` int(11) DEFAULT NULL,
  `yorum_onay` int(11) NOT NULL DEFAULT '1',
  `yorum_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_mesaj`, `yorum_eposta`, `yorum_ekleyen`, `yorum_soru_id`, `yorum_onay`, `yorum_tarih`) VALUES
(99, 'sadasdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:26'),
(100, 'sadasdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:27'),
(98, 'sadasdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:26'),
(97, 'sadasdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:25'),
(96, 'sadasdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:24'),
(94, 'sdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:16'),
(95, 'sdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:16'),
(93, 'sdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:15'),
(91, 'sdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:12'),
(92, 'sdasd', 'mehmet_nuralp@hotmail.com', 70, 20, 1, '2018-01-01 11:06:14'),
(90, 'sadasdsadasdasdasdas', 'mehmet_nuralp@hotmail.com', 70, 23, 1, '2018-01-01 11:05:52'),
(89, 'sadasdsadasdasdasdas', 'mehmet_nuralp@hotmail.com', 70, 23, 1, '2018-01-01 11:05:50'),
(86, 'DENEME YORUM', 'mehmet_nuralp@hotmail.com', 70, 23, 1, '2018-01-01 11:01:32'),
(87, 'sadasdsadasd', 'mehmet_nuralp@hotmail.com', 70, 23, 1, '2018-01-01 11:05:42'),
(88, 'sadasdsadasdasdasdas', 'mehmet_nuralp@hotmail.com', 70, 23, 1, '2018-01-01 11:05:48'),
(85, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 15, 1, '2018-01-01 10:48:50'),
(84, 'sadasdasdas', 'mehmet_nuralp@hotmail.com', 70, 12, 1, '2017-12-31 23:07:14'),
(83, 'sadadasdasd', 'mehmet_nuralp@hotmail.com', 70, 11, 1, '2017-12-31 23:00:58'),
(82, 'dfsfdsfsd', 'mehmet_nuralp@hotmail.com', 70, 1, 1, '2017-12-31 22:42:57'),
(101, 'denem mesaj', 'mehmet_nuralp@hotmail.com', 70, 31, 1, '2018-01-05 19:39:19'),
(102, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 30, 1, '2018-01-05 20:09:16'),
(103, 'deneme mesaj', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-08 11:45:09'),
(104, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 48, 1, '2018-01-15 11:50:25'),
(105, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 48, 1, '2018-01-15 11:50:26'),
(106, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 48, 1, '2018-01-15 11:50:27'),
(107, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 47, 1, '2018-01-15 11:50:35'),
(108, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-15 11:54:43'),
(109, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-15 11:54:44'),
(110, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-15 11:54:44'),
(111, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-15 11:54:45'),
(112, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 39, 1, '2018-01-15 11:54:46'),
(113, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 49, 1, '2018-01-15 12:03:41'),
(114, 'deneme', 'mehmet_nuralp@hotmail.com', 70, 49, 1, '2018-01-15 12:03:47'),
(115, 'hocam selam naber', 'mehmet_nuralp@hotmail.com', 70, 49, 1, '2018-01-15 12:12:56'),
(116, 'yorum', 'osman@hotmail.com', 72, 48, 1, '2018-01-15 13:37:21');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`soru_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `ayar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `soru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
