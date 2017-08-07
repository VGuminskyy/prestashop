-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 07 2017 г., 15:34
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
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id_address` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_warehouse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `middlename` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `id_warehouse`, `alias`, `company`, `lastname`, `firstname`, `middlename`, `address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`, `deleted`) VALUES
(1, 8, 0, 1, 0, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '', '16, Main street', '2nd floor', '75002', 'Paris ', '', '0102030405', '', '', '', '2017-08-05 12:28:28', '2017-08-05 12:28:28', 1, 0),
(2, 21, 32, 0, 0, 0, 0, 'supplier', 'Fashion', 'supplier', 'supplier', '', '767 Fifth Ave.', '', '10153', 'New York', '', '(212) 336-1440', '', '', '', '2017-08-05 12:28:28', '2017-08-05 12:28:28', 1, 0),
(3, 21, 9, 1, 0, 0, 0, 'My address', 'My Company', 'DOE', 'John', '', '16, Main street', '2nd floor', '33133', 'Miami', '', '0102030405', '', '', '', '2017-08-05 12:28:28', '2017-08-05 12:28:28', 1, 0),
(4, 216, 321, 2, 0, 0, 0, 'My address', '', 'Guminskyy', 'Vyacheslav', 'Borisovich', 'Severnaya 54', '', '04700', 'Kiev', '', '', '380962189449', '', '', '2017-08-05 13:49:47', '2017-08-05 13:49:47', 1, 0),
(5, 216, 321, 12, 0, 0, 0, 'My address', '', 'Stradlin', 'Izzy', ' ', 'Guns N’ Roses', '', '12345', 'New York', '', ' +123456789', '', '', '', '2017-08-06 23:48:59', '2017-08-06 23:48:59', 1, 0),
(6, 216, 321, 14, 0, 0, 0, 'My address', '', 'Gray', 'David', ' ', 'Great Britain', '', '12345', 'Sale', '', '+380441234567', '', '', '', '2017-08-06 23:55:59', '2017-08-06 23:55:59', 1, 0),
(7, 216, 321, 15, 0, 0, 0, 'My address', '', 'Greenwood', 'Jonathan', 'Richard Guy ', 'England', '', '12345', 'Oxford', '', '044123 22 33', '', '', '', '2017-08-07 00:01:24', '2017-08-07 00:01:24', 1, 0),
(8, 216, 320, 16, 0, 0, 0, 'My address', '', 'Zappa', 'Frank', 'Vincent', 'USA', '', '12345', 'Baltimor', '', '+380502480990', '', '', '', '2017-08-07 00:07:33', '2017-08-07 00:07:33', 1, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `address_customer` (`id_customer`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_state` (`id_state`),
  ADD KEY `id_manufacturer` (`id_manufacturer`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_warehouse` (`id_warehouse`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id_address` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
