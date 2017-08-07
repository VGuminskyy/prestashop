-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 07 2017 г., 15:35
-- Версия сервера: 5.5.53-log
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `prestashop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_gender` int(10) UNSIGNED NOT NULL,
  `id_default_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED DEFAULT NULL,
  `id_risk` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `middlename` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `max_payment_days` int(10) UNSIGNED NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id_customer`, `id_shop_group`, `id_shop`, `id_gender`, `id_default_group`, `id_lang`, `id_risk`, `company`, `siret`, `ape`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`, `outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`, `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 1, 3, 1, 0, '', '', '', 'John', 'DOE', '', 'pub@prestashop.com', '', '33b363702c5165564be1254ab898d9d3', '2017-08-05 03:28:28', '1970-01-15', 1, '', '2013-12-13 08:19:15', 1, '', '0.000000', 0, 0, 'f9c9e2f4860d0c698145472250046c2a', '', 1, 0, 0, '2017-08-05 12:28:28', '2017-08-05 12:28:28'),
(2, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Vyacheslav', 'Guminskyy', 'Borisovich', 'vvv.@ga.cc', '+380502480998', '33b363702c5165564be1254ab898d9d3', '2017-08-05 04:13:05', '1976-06-07', 1, '127.0.0.1', '2017-08-05 13:13:05', 1, NULL, '0.000000', 0, 0, 'e054898da6e44347fde77f4cd2a7f38f', NULL, 1, 0, 0, '2017-08-05 13:13:05', '2017-08-05 13:13:05'),
(3, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Vyacheslav', 'Guminskyy', 'Borisovich', 'vagu@ukr.net', '+380962189449', '33b363702c5165564be1254ab898d9d3', '2017-08-05 05:49:38', '1976-06-07', 1, '127.0.0.1', '2017-08-05 14:49:38', 1, NULL, '0.000000', 0, 0, '0423beef2a77e7aeadde0e0e2ead4b3c', NULL, 1, 0, 0, '2017-08-05 14:49:38', '2017-08-05 14:49:38'),
(4, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Vagu', 'Main', 'Midle', 'v.guminskyy@gmail.com', '+3265489222', 'd9837565cd1504b954786e14100e5906', '2017-08-05 06:16:14', '2005-05-07', 1, '127.0.0.1', '2017-08-05 15:16:14', 1, NULL, '0.000000', 0, 0, '5b7bc699aaa5488962f57e7f4f507a69', NULL, 1, 0, 0, '2017-08-05 15:16:14', '2017-08-05 15:16:14'),
(5, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Ozzy', 'Osbourne', ' ', 'vagu@ukr.ne', '+38962189449', '33b363702c5165564be1254ab898d9d3', '2017-08-06 02:21:22', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '39a99374e42a147e97279027660ee83a', NULL, 1, 0, 0, '2017-08-06 11:21:22', '2017-08-06 11:21:22'),
(6, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'John', 'Bonjovi', ' ', 'vag@ukr.net', '+38962189', '33b363702c5165564be1254ab898d9d3', '2017-08-06 12:24:19', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '60964e1036dcba0e41d781ac4e5b735b', NULL, 1, 0, 0, '2017-08-06 21:24:19', '2017-08-06 21:24:19'),
(7, 1, 1, 2, 3, 1, 0, NULL, NULL, NULL, 'Dora', 'Pesh', ' ', 'vag@ukr.nn', '+3896218999', '819d9c16845a46770a66659f01188023', '2017-08-06 12:30:05', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '20f0c1da1b5096bb09451102e35a483c', NULL, 1, 0, 0, '2017-08-06 21:30:05', '2017-08-06 21:30:05'),
(8, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Bob', 'Dylan', ' ', 'Bob@Dylan.com', ' ', 'e7edec9f2764c2707d3b61acbbab342e', '2017-08-06 13:46:49', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '213026dc8d82b51e91051488a5fb5054', NULL, 1, 0, 0, '2017-08-06 22:46:49', '2017-08-06 22:46:49'),
(9, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Mick', 'Jagger', ' ', 'presta@guminskyy.com', '+380962189', '33b363702c5165564be1254ab898d9d3', '2017-08-06 13:53:09', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '17bd697387ff562cec5621791ba80ebd', NULL, 1, 0, 0, '2017-08-06 22:53:09', '2017-08-06 22:53:09'),
(10, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Carl Thomas ', 'Jones', ' ', 'presta@guminskyy.com', '+389621849', '33b363702c5165564be1254ab898d9d3', '2017-08-06 14:27:28', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, 'ca8d8b0b1ac3d554c9aba75aeeb4b4ab', NULL, 1, 0, 0, '2017-08-06 23:27:28', '2017-08-06 23:27:28'),
(11, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Jim', 'Davies', ' ', 'sto@mbo.ruua', '0962189449', 'fd945336d9404f07506fd2ce7538ab6b', '2017-08-06 14:30:16', '2009-06-07', 1, '127.0.0.1', '2017-08-06 23:30:16', 1, NULL, '0.000000', 0, 0, '5d3c08c85c3d84031fba445b9147d4ba', NULL, 1, 0, 0, '2017-08-06 23:30:16', '2017-08-06 23:30:16'),
(12, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Izzy', 'Stradlin', ' ', 'izzy@stradlin.ua', ' ', 'fd945336d9404f07506fd2ce7538ab6b', '2017-08-06 14:47:22', '0000-00-00', 1, '127.0.0.1', '2017-08-06 23:47:22', 0, NULL, '0.000000', 0, 0, '914dfb42d8847a884f44781341b852cc', NULL, 1, 0, 0, '2017-08-06 23:47:22', '2017-08-06 23:47:22'),
(13, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'David', 'Gray', ' ', 'empty@empty.empty', '+380962223344', 'fd945336d9404f07506fd2ce7538ab6b', '2017-08-06 14:52:39', '1968-06-13', 0, NULL, '0000-00-00 00:00:00', 1, NULL, '0.000000', 0, 0, 'd4798bb837126bf42b1d80daefbd2248', NULL, 1, 0, 0, '2017-08-06 23:52:39', '2017-08-06 23:52:39'),
(14, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'David', 'Gray', ' ', 'empty@empty.empty', '+380441234567', '33b363702c5165564be1254ab898d9d3', '2017-08-06 14:54:20', '1968-06-13', 0, NULL, '0000-00-00 00:00:00', 1, NULL, '0.000000', 0, 0, '4b5154595151d5bb441738f70c526199', NULL, 1, 0, 0, '2017-08-06 23:54:20', '2017-08-06 23:54:20'),
(15, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Jonathan', 'Greenwood', 'Richard Guy ', 'jonathan@richard.guy', '044123 22 33', 'fd945336d9404f07506fd2ce7538ab6b', '2017-08-06 14:58:57', '1971-11-05', 1, '127.0.0.1', '2017-08-06 23:58:57', 1, NULL, '0.000000', 0, 0, '13d3017c3846c87d58620e13840e472c', NULL, 1, 0, 0, '2017-08-06 23:58:57', '2017-08-06 23:58:57'),
(16, 1, 1, 1, 3, 1, 0, NULL, NULL, NULL, 'Frank', 'Zappa', 'Vincent', 'empty@empty.empty', '+380502480990', '33b363702c5165564be1254ab898d9d3', '2017-08-06 15:06:42', '2009-06-07', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, 'd507df81ac24c1941eb8a8502569a8fe', NULL, 1, 0, 0, '2017-08-07 00:06:42', '2017-08-07 00:06:42');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `customer_email` (`email`),
  ADD KEY `customer_login` (`email`,`passwd`),
  ADD KEY `id_customer_passwd` (`id_customer`,`passwd`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_shop` (`id_shop`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
