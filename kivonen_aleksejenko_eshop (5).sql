-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 03 2021 г., 22:52
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

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
  `textArticle` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `textShort` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`idArticle`, `nameArticle`, `imageArticle`, `textArticle`, `date`, `textShort`) VALUES
(1, 'Рекомендации по уходу за вязаными вещами', 'article1.jpg', 'Уход за вязаными изделиями\r\n\r\nВязаные изделия долго прослужат, если за ними правильно ухаживать.\r\n\r\nОдежду из высококачественной шерстяной пряжи рекомендуется сдавать в химчистку или стирать только вручную. Причем в теплой воде до+30 С не более, при стирке в горячей воде вязаные изделия дают усадку) с добавлением очень небольшого количества стирального порошка. Лучше всего использовать специальные стиральные порошки для шерсти.\r\n\r\nСледует оставить ненадолго изделие в теплой воде (не тереть) и через некоторое время прополоскать его в чистой воде и отжимать, не выкручивая. Сушить желательно в расправленном виде на махровом полотенце (чтобы оно впитывало влагу).\r\n\r\n\r\nПри хранении вязаных изделий в шкафах не забывайте, что надо принимать меры против появления моли.\r\n © https://www.livemaster.ru/item/34981318-odezhda-kofty-kofta-vyazanaya-ruchnoj-raboty-iz-naturalnoj-sh', '2021-09-29', 'Вязаные изделия долго прослужат, если за ними правильно ухаживать.\r\nОдежду из высококачественной шерстяной пряжи рекомендуется сдавать в химчистку или стирать только вручную.'),
(2, 'Вязаные вещи зимой и летом', 'blogpict_1.png', 'Вы умеете вязать? Спицами или крючком? Если да, эта статья для вас, если нет, она тем более для вас.wink\r\nРаньше вязаными вещами в доме — салфетками, скатертями, покрывалами было никого не удивить, а потом такие интерьеры стали назвали «бабушкиными» и на долгое время от них отказались.frown\r\nНо мода на «хэнд мэйд» и на «типа хэнд мэйд» набирает обороты. Стремление к экологическому интерьеру, рукотворным душевным вещам и уюту — все это способствует возрождению вязаных деталей в интерьере. Только теперь пряжу часто сочетают со строгими линиями минимализма, так получается гораздо интереснее и выразительнее.\r\n\r\nХотите добавить в свое жилье уюта и тепла? Обзаведитесь вязаными аксессуарами. Какими? Читайте ниже.\r\n\r\n', '2021-10-15', 'Вы умеете вязать? Спицами или крючком? Если да, эта статья для вас, если нет, она тем более для вас.wink\r\nРаньше вязаными вещами в доме — салфетками, скатертями, покрывалами было никого не удивить'),
(3, 'Преимущества вязаной одежды', 'article3.jpg ', 'Веяние в современной моде, которое еще долго будет оставаться актуальным – женская вязаная одежда. Ее достоинства оценены должным образом огромным количеством людей, благодаря существенным преимуществам:\r\n\r\n·         значительный ассортимент\r\n\r\nМногообразие форм, моделей, расцветок, используемой пряжи, применяемых узоров помогает удовлетворить самый изысканный вкус; \r\n\r\n·         практичность\r\n\r\nВязаные вещи менее подвержены деформированию, мятию, длительный период времени сохраняют свой изначальный вид. Безусловно, за ними требуется правильный уход при носке, стирке, сушке. Соблюдая нехитрые правила, можно существенно продлить срок службы любимых вязаных вещей;\r\n\r\n·         удобство\r\n\r\nВещи теплые, мягкие, уютные\r\n\r\nКакой вязаной вещицей обзавестись в этом сезоне?\r\n\r\nКак утверждают специалисты, свитер свободного покроя с высоким, объемным воротником, ставший своего рода классикой, должен обязательно появиться в осеннем гардеробе. Он не только согреет в холодные дни, но и придаст женственности образу, а где-то, и умело скроет недостатки фигуры, если они имеются. Длина выбирается исключительно исходя из ваших предпочтений. Такой свитер гармонирует с джинсами, леггинсами, узкими брюками. Добавить фирменные кожаные ботинки в мужском стиле, объемную сумку, и вы – красотка.     \r\n\r\nУниверсальным элементом женского гардероба считается кардиган. Эта вязаная вещь иногда просто незаменима, благодаря своей сочетаемости с любой одеждой. Модельеры предлагают экспериментировать не только с классическими моделями, но и обратить свой взор на модели без пуговиц или с интересными формами воротника.     \r\n\r\nИдеальные модели для межсезонья – вязаные платья. Обтягивающие модели, которые подчеркнут фигуру, стоит приобрести стройным девушкам. Обладательницам полных бедер, выпирающего животика подойдет платье, расширенное к низу, можно с завышенной линией талии.\r\n\r\nПочему приобретать вязаную одежду у производителя выгодно?\r\n\r\nВсе большее число предпринимателей, продающих вязаные изделия в розницу, отдают предпочтение закупке товара непосредственно у нас, как у производителя. И это не удивительно, ведь наша продукция отличается высоким качеством и приемлемыми ценами, имеет огромный ассортимент современной, модной продукции. Приобретенная вязаная одежда оптом, имеет ряд преимуществ:\r\n\r\n·               Существенная экономия денежных средств. Такая одежда обходится дешевле как владельцу магазина, так и конечному покупателю, благодаря отсутствию накруток посредников и уменьшению затрат на транспортировку;\r\n\r\n·       Подтвержденное качество покупаемого товара. Производитель всегда может предоставить документы, сертификаты, подтверждающие качество продукции;\r\n\r\n·        При обнаружении производственного брака, а он может быть на любом предприятии по самым разным причинам, значительно упрощается процедура предъявления и рассмотрения претензий. Обратившись непосредственно к производителю, понадобится минимальное количество времени для замены изделия с дефектом качественным.  \r\n\r\nВами может быть приобретена вязаная одежда в Харькове непосредственно в фирменных магазинах производителя. Имеется интернет ресурс, на котором каждый покупатель купит качественные вещи без дополнительных накруток. Представлена линейка размеров для миниатюрных и полных дам. Все изделия отвечают веяниям современной моды, имеют доступные цены. Предусмотрены существенные системы скидок, возможность выбора видов оплаты или доставки приобретенного товара. В случае возникновения вопросов, высококвалифицированные специалисты компании всегда окажут необходимую помощь.   ', '2021-11-03', 'Веяние в современной моде, которое еще долго будет оставаться актуальным – женская вязаная одежда. Ее достоинства оценены должным образом огромным количеством людей, благодаря существенным'),
(4, 'Вязание крючком и спицами — самый уютный вид рукод', 'article4.jpg', 'Вязание крючком и спицами — самый уютный вид рукоделия. Все виды рукоделия интересны по-своему. Всех их объединяет то, что результатом каждого вида ручного труда является какое-либо изделие, имеющее прикладное, эстетическое или только эстетическое предназначение. Как правило, все вещи, изготовленные ручным способом несут на себе печать индивидуальности и неповторимости, так так являются результатом творческого труда мастера или мастерицы!\r\n\r\nКаждый вид рукоделия требует своего индивидульного оборудования и материалов. И практически для всех видов рукоделия (например, резьба и роспись по дереву, выжигание, лозоплетение, макраме, игольное кружево и т. д.) необходима организация определенного рабочего места или вообще отдельная мастерская.\r\n\r\nДля вязания крючком и спицами не нужна специально оборудованная мастерская или даже какое-то специальное пространство в Вашем жилище.  Достаточно взять клубок ниток, крючок или спицы и уютно устроиться на диване, кресле или на стуле. Кроме того, у опытной мастерицы клубок со спицами (крючком) всегда под руками, что позволяет в любую свободную минуту легко и быстро переключиться на любимое занятие.\r\n\r\nРучное вязание крючком или спицами — это единственный вид рукоделия, которым можно заниматься в любых условиях вне дома: сидя в автобусе, трамвае, метро, самолете, в лесу на полянке, в парке на скамейке и т. д.', '2021-11-03', 'Вязание крючком и спицами — самый уютный вид рукоделия. Все виды рукоделия интересны по-своему. Всех их объединяет то, что результатом каждого вида ручного труда является какое-либо изделие');

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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `body` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `idUser`, `idProduct`, `body`, `date`) VALUES
(1, 1, 14, 'super', '2021-10-25 19:53:37'),
(2, 1, 14, 'super', '2021-10-25 19:53:40');

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
  `date` date NOT NULL DEFAULT current_timestamp(),
  `summTotal` decimal(10,0) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`idOrder`, `idUser`, `listProducts`, `date`, `summTotal`, `status`) VALUES
(1, 1, '13-1-110,14-2-70', '2021-09-29', '250', 'paid');

-- --------------------------------------------------------

--
-- Структура таблицы `picture`
--

CREATE TABLE `picture` (
  `idPicture` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `picture` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `size` enum('XS','S','M','L','XL','XXL') NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`idProduct`, `nameProduct`, `descriptionProduct`, `price`, `imageProduct`, `idCategory`, `idType`, `idFabric`, `size`, `date`) VALUES
(13, 'Пальто вязаное с капюшоном', 'Пальто с капюшоном, связаное на вязальной машине в стиле скандинавских орнаментов. Связано из качественной шерсти. Изготавливаем пальто как женские так и детские любых размеров,в любой цветовой гамме,по желанию заказчика.', '110.00', '1.jpg', 1, 1, 1, 'L', '2021-10-15'),
(14, 'Кофта вязаная', 'Кофта, изготовленная на вязальной машине. Возможны разные варианты рисунков на заказ. Размер и цвет - пожеланию. Стоимость кофты может измениться за счет размера или индивидуальных пожеланий заказчика.', '70.00', '2.jpg', 2, 1, 1, 'M', '2021-10-15'),
(15, 'Свитер вязаный на молнии', 'Свитер связан на вязальной машине,в стиле скандинавских орнаментов.Изготовлен из качественной шерсти. Производим свитера мужские любых размеров, в любой цветовой гамме, по желанию заказчика.', '70.00', '3.jpg', 3, 2, 1, 'XL', '2021-10-15');

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
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(512) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` enum('active','blocked') NOT NULL,
  `userType` enum('admin','client') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idUser`, `email`, `firstName`, `lastName`, `address`, `phone`, `password`, `status`, `userType`) VALUES
(1, 'artjom.kivonen@ivkhk.ee', 'Artjom', 'Kivonen', '', '', '$2y$12$mjv/GPng4oQFohhkPl8RPucmgRDFVs/UCVP02US.r92ra09kK4d7u', 'active', 'admin');

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
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ibfk_1` (`idUser`),
  ADD KEY `comments_ibfk_2` (`idProduct`);

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
-- Индексы таблицы `picture`
--
ALTER TABLE `picture`
  ADD KEY `products_ibfk_4` (`idProduct`);

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
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fabric`
--
ALTER TABLE `fabric`
  MODIFY `idFabric` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Ограничения внешнего ключа таблицы `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`) ON DELETE NO ACTION;

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
