-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 28 2021 г., 13:23
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kivonen_aleksejenko_eshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `idArticle` int(11) NOT NULL,
  `nameArticle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imageArticle` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `textArticle` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`idArticle`, `nameArticle`, `imageArticle`, `textArticle`) VALUES
(1, 'Рекомендации по уходу за вязаными вещами', 'article1.jpg', 'Уход за вязаными изделиями\r\n\r\nВязаные изделия долго прослужат, если за ними правильно ухаживать.\r\n\r\nОдежду из высококачественной шерстяной пряжи рекомендуется сдавать в химчистку или стирать только вручную. Причем в теплой воде до+30 С не более, при стирке в горячей воде вязаные изделия дают усадку) с добавлением очень небольшого количества стирального порошка. Лучше всего использовать специальные стиральные порошки для шерсти.\r\n\r\nСледует оставить ненадолго изделие в теплой воде (не тереть) и через некоторое время прополоскать его в чистой воде и отжимать, не выкручивая. Сушить желательно в расправленном виде на махровом полотенце (чтобы оно впитывало влагу).\r\n\r\n\r\nПри хранении вязаных изделий в шкафах не забывайте, что надо принимать меры против появления моли.\r\n © https://www.livemaster.ru/item/34981318-odezhda-kofty-kofta-vyazanaya-ruchnoj-raboty-iz-naturalnoj-sh');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL,
  `nameCategory` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`idCategory`, `nameCategory`) VALUES
(1, 'Пальто'),
(2, 'Кофты'),
(3, 'Свитера');

-- --------------------------------------------------------

--
-- Структура таблицы `fabric`
--

CREATE TABLE `fabric` (
  `idFabric` int(11) NOT NULL,
  `nameFabric` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fabric`
--

INSERT INTO `fabric` (`idFabric`, `nameFabric`) VALUES
(1, 'Шерсть 100%'),
(2, 'Лен');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `listProducts` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `summTotal` decimal(10,0) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `nameProduct` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptionProduct` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `imageProduct` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  `idFabric` int(11) NOT NULL,
  `size` enum('XS','S','M','L','XL','XXL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`idProduct`, `nameProduct`, `descriptionProduct`, `price`, `imageProduct`, `idCategory`, `idType`, `idFabric`, `size`) VALUES
(13, 'Пальто вязаное с капюшоном', 'Пальто с капюшоном, связаное на вязальной машине в стиле скандинавских орнаментов. Связано из качественной шерсти. Изготавливаем пальто как женские так и детские любых размеров,в любой цветовой гамме,по желанию заказчика.', '110.00', '1.jpg', 1, 1, 1, 'L'),
(14, 'Кофта вязаная', 'Кофта, изготовленная на вязальной машине. Возможны разные варианты рисунков на заказ. Размер и цвет - пожеланию. Стоимость кофты может измениться за счет размера или индивидуальных пожеланий заказчика.', '70.00', '2.jpg', 2, 1, 1, 'M'),
(15, 'Свитер вязаный на молнии', 'Свитер связан на вязальной машине,в стиле скандинавских орнаментов.Изготовлен из качественной шерсти. Производим свитера мужские любых размеров, в любой цветовой гамме, по желанию заказчика.', '70.00', '3.jpg', 3, 2, 1, 'XL');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `idType` int(11) NOT NULL,
  `nameType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`idType`, `nameType`) VALUES
(1, 'Женская одежда'),
(2, 'Мужская одежда');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `firstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(512) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` enum('active','blocked','','') NOT NULL,
  `userType` enum('admin','client','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idUser`, `firstName`, `lastName`, `address`, `phone`, `email`, `password`, `status`, `userType`) VALUES
(1, 'Artjom', 'Kivonen', '', '', 'artjom.kivonen@ivkhk.ee', '5d93ceb70e2bf5daa84ec3d0cd2c731a', 'active', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`idArticle`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Индексы таблицы `fabric`
--
ALTER TABLE `fabric`
  ADD PRIMARY KEY (`idFabric`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `idUser` (`idUser`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `products_ibfk_2` (`idType`),
  ADD KEY `products_ibfk_3` (`idFabric`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`idType`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fabric`
--
ALTER TABLE `fabric`
  MODIFY `idFabric` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idType`) REFERENCES `types` (`idType`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`idFabric`) REFERENCES `fabric` (`idFabric`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
