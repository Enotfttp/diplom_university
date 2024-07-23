-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2023 г., 17:40
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `airport`
--

-- --------------------------------------------------------

--
-- Структура таблицы `aircrafts`
--

CREATE TABLE `aircrafts` (
  `idСамолета` int(4) NOT NULL,
  `Название самолета` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Количество мест` int(4) NOT NULL,
  `idСтатуса` int(2) NOT NULL,
  `Скорость` int(4) NOT NULL,
  `idСотрудника` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `aircrafts`
--

INSERT INTO `aircrafts` (`idСамолета`, `Название самолета`, `Количество мест`, `idСтатуса`, `Скорость`, `idСотрудника`) VALUES
(4, 'Boeng 400', 100, 1, 800, 4),
(5, 'Boeng 500', 100, 2, 1000, 5),
(6, 'Boeng 600', 100, 3, 900, 6),
(7, 'Boeng 700', 100, 1, 700, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `aircrafts_airline`
--

CREATE TABLE `aircrafts_airline` (
  `idСамолета` int(4) NOT NULL,
  `idАвиакомпании` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aircrafts_flights`
--

CREATE TABLE `aircrafts_flights` (
  `idСамолета` int(4) NOT NULL,
  `idПолета` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `airlines`
--

CREATE TABLE `airlines` (
  `idАвиакомпании` int(2) NOT NULL,
  `Название авиакомпании` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Год основания` date NOT NULL,
  `Количество самолётов` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `airlines`
--

INSERT INTO `airlines` (`idАвиакомпании`, `Название авиакомпании`, `Год основания`, `Количество самолётов`) VALUES
(1, 'Россия', '1997-10-20', 30),
(2, 'Венгрия', '1987-06-15', 40),
(3, 'Турция', '1957-02-22', 50),
(4, 'Сербия', '1963-04-02', 60),
(5, 'Канада', '1997-10-12', 70),
(6, 'Китай', '1947-09-28', 80),
(7, 'Будапешт', '1988-10-22', 90),
(8, 'АирФлайд', '2023-04-09', 100),
(9, 'ЭкоФлайд', '2001-03-03', 120),
(10, 'Рутм', '1997-02-02', 110),
(123456798, '2', '2023-04-02', 21),
(123456799, '3', '2023-04-10', 33),
(123456800, '5', '2023-04-10', 55),
(123456801, '123', '2023-04-02', 123),
(123456802, '1234', '2023-04-03', 12),
(123456803, '1235', '2023-04-03', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `employes`
--

CREATE TABLE `employes` (
  `idСотрудника` int(2) NOT NULL,
  `ФИО` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdДолжности` int(2) NOT NULL,
  `Телефон` int(11) NOT NULL,
  `Логин` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Пароль` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employes`
--

INSERT INTO `employes` (`idСотрудника`, `ФИО`, `IdДолжности`, `Телефон`, `Логин`, `Пароль`) VALUES
(3, 'Парашин Вадим Андреевич', 3, 1234567892, 'test3', 'test3'),
(4, 'Григоров Ярослав Максимович', 4, 1234567892, 'test4', 'test4'),
(5, 'Баныкин Игорь Валерьевич', 1, 1234567890, 'test5', 'test5'),
(6, 'Григоров Ярослав Максимович', 2, 1234567890, 'test6', 'test6'),
(7, 'Черешнев Андрей Владимирович', 3, 1234567890, 'test7', 'test7'),
(8, 'Трошин Максим Игоревич', 1, 1234567890, 'test8', 'test8'),
(9, 'Парашин Вадим Андреевич', 1, 1234567890, 'test9', 'test9'),
(10, 'Рыбаков Дмитрий Андреевич', 2, 1234567890, 'test10', 'test10'),
(17, '1234567890', 3, 1234567890, '1234567890', '1234567890'),
(18, 'test test test', 1, 1234567890, 'dfghjkl1', 'dfghjkl1');

-- --------------------------------------------------------

--
-- Структура таблицы `enters`
--

CREATE TABLE `enters` (
  `idВхода` int(2) NOT NULL,
  `Номер входа` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `enters`
--

INSERT INTO `enters` (`idВхода`, `Номер входа`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `flights`
--

CREATE TABLE `flights` (
  `idПолета` int(2) NOT NULL,
  `Время вылета` datetime NOT NULL,
  `Время прилета` datetime NOT NULL,
  `Город вылета` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Город приелта` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idВхода` int(2) NOT NULL,
  `idСотрудника` int(2) NOT NULL,
  `idСтатуса` int(2) NOT NULL,
  `idАвиакомпании` int(2) NOT NULL,
  `idСамолета` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `flights`
--

INSERT INTO `flights` (`idПолета`, `Время вылета`, `Время прилета`, `Город вылета`, `Город приелта`, `idВхода`, `idСотрудника`, `idСтатуса`, `idАвиакомпании`, `idСамолета`) VALUES
(8, '2025-05-29 00:00:00', '2025-05-29 00:00:00', 'Россия, Москва', 'Россия,  Пермь', 5, 18, 2, 1, 6),
(9, '2023-04-10 00:00:00', '2023-04-12 00:00:00', 'test', 'test2', 5, 7, 1, 1, 6),
(10, '2023-04-18 00:00:00', '2023-04-19 00:00:00', 'test2', 'test3', 1, 7, 2, 5, 4),
(11, '2023-04-12 00:00:00', '2023-04-12 00:00:00', 'test5', 'test6', 1, 4, 1, 5, 4),
(12, '2023-04-13 00:00:00', '2023-04-12 00:00:00', 'test5', 'test9', 2, 8, 2, 6, 5),
(13, '2023-03-14 00:00:00', '2023-03-18 00:00:00', 'Бгq', 'Мск', 1, 4, 1, 1, 4),
(14, '2023-04-15 00:00:00', '2023-04-14 17:35:00', 'kh', 'qwwwertyuiop', 1, 5, 1, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `idДолжности` int(2) NOT NULL,
  `Название должности` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`idДолжности`, `Название должности`) VALUES
(1, 'Администратор'),
(2, 'Владелец'),
(3, 'Пилот'),
(4, 'Диспетчер');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `idСтатуса` int(2) NOT NULL,
  `Название статуса` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`idСтатуса`, `Название статуса`) VALUES
(1, 'Свободен'),
(2, 'В полете'),
(3, 'На посадке');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты cсотрудника id=7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты cсотрудника id=7` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты cсотрудника id=7.`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты cсотрудника id=7.` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты cсотрудника id=7..`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты cсотрудника id=7..` (
`idПолета` int(2)
,`Время вылета` datetime
,`Время прилета` datetime
,`Город вылета` varchar(45)
,`Город приелта` varchar(45)
,`idВхода` int(2)
,`idСотрудника` int(2)
,`idСтатуса` int(2)
,`idАвиакомпании` int(2)
,`idСамолета` int(4)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты на 22.11.19`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты на 22.11.19` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
,`Город приелта` varchar(45)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты на 22.12.22`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты на 22.12.22` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
,`Город приелта` varchar(45)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты на 2022.11.19`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты на 2022.11.19` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
,`Город приелта` varchar(45)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `полёты на 2022.11.19.`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `полёты на 2022.11.19.` (
`Время вылета` datetime
,`Время прилета` datetime
,`idСамолета` int(4)
,`Город приелта` varchar(45)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `удаление блоков расположения`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `удаление блоков расположения` (
`idПолета` int(2)
,`Время вылета` datetime
,`Время прилета` datetime
,`Город вылета` varchar(45)
,`Город приелта` varchar(45)
,`idВхода` int(2)
,`idСотрудника` int(2)
,`idСтатуса` int(2)
,`idАвиакомпании` int(2)
,`idСамолета` int(4)
);

-- --------------------------------------------------------

--
-- Структура для представления `полёты cсотрудника id=7`
--
DROP TABLE IF EXISTS `полёты cсотрудника id=7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты cсотрудника id=7`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета` from `flights` where `flights`.`idСотрудника` = 3 ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты cсотрудника id=7.`
--
DROP TABLE IF EXISTS `полёты cсотрудника id=7.`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты cсотрудника id=7.`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета` from `flights` where `flights`.`idСотрудника` = 7 ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты cсотрудника id=7..`
--
DROP TABLE IF EXISTS `полёты cсотрудника id=7..`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты cсотрудника id=7..`  AS  select `flights`.`idПолета` AS `idПолета`,`flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`Город вылета` AS `Город вылета`,`flights`.`Город приелта` AS `Город приелта`,`flights`.`idВхода` AS `idВхода`,`flights`.`idСотрудника` AS `idСотрудника`,`flights`.`idСтатуса` AS `idСтатуса`,`flights`.`idАвиакомпании` AS `idАвиакомпании`,`flights`.`idСамолета` AS `idСамолета` from `flights` where `flights`.`idСотрудника` = 7 ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты на 22.11.19`
--
DROP TABLE IF EXISTS `полёты на 22.11.19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты на 22.11.19`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета`,`flights`.`Город приелта` AS `Город приелта` from `flights` where cast(`flights`.`Время вылета` as date) = '2021.11.19' ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты на 22.12.22`
--
DROP TABLE IF EXISTS `полёты на 22.12.22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты на 22.12.22`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета`,`flights`.`Город приелта` AS `Город приелта` from `flights` where cast(`flights`.`Время вылета` as date) = '2021-12-15' ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты на 2022.11.19`
--
DROP TABLE IF EXISTS `полёты на 2022.11.19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты на 2022.11.19`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета`,`flights`.`Город приелта` AS `Город приелта` from `flights` where cast(`flights`.`Время вылета` as date) = '2022.11.19' ;

-- --------------------------------------------------------

--
-- Структура для представления `полёты на 2022.11.19.`
--
DROP TABLE IF EXISTS `полёты на 2022.11.19.`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `полёты на 2022.11.19.`  AS  select `flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`idСамолета` AS `idСамолета`,`flights`.`Город приелта` AS `Город приелта` from `flights` where cast(`flights`.`Время вылета` as date) > '2022.11.19' ;

-- --------------------------------------------------------

--
-- Структура для представления `удаление блоков расположения`
--
DROP TABLE IF EXISTS `удаление блоков расположения`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `удаление блоков расположения`  AS  select `flights`.`idПолета` AS `idПолета`,`flights`.`Время вылета` AS `Время вылета`,`flights`.`Время прилета` AS `Время прилета`,`flights`.`Город вылета` AS `Город вылета`,`flights`.`Город приелта` AS `Город приелта`,`flights`.`idВхода` AS `idВхода`,`flights`.`idСотрудника` AS `idСотрудника`,`flights`.`idСтатуса` AS `idСтатуса`,`flights`.`idАвиакомпании` AS `idАвиакомпании`,`flights`.`idСамолета` AS `idСамолета` from `flights` ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`idСамолета`),
  ADD KEY `idСтатуса` (`idСтатуса`),
  ADD KEY `idСотрудника` (`idСотрудника`);

--
-- Индексы таблицы `aircrafts_airline`
--
ALTER TABLE `aircrafts_airline`
  ADD PRIMARY KEY (`idСамолета`,`idАвиакомпании`),
  ADD KEY `idСамолета` (`idСамолета`),
  ADD KEY `idАвиакомпании` (`idАвиакомпании`);

--
-- Индексы таблицы `aircrafts_flights`
--
ALTER TABLE `aircrafts_flights`
  ADD PRIMARY KEY (`idСамолета`,`idПолета`),
  ADD KEY `idСамолета` (`idСамолета`),
  ADD KEY `idПолета` (`idПолета`);

--
-- Индексы таблицы `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`idАвиакомпании`);

--
-- Индексы таблицы `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`idСотрудника`),
  ADD KEY `IdДолжности` (`IdДолжности`),
  ADD KEY `IdДолжности_2` (`IdДолжности`);

--
-- Индексы таблицы `enters`
--
ALTER TABLE `enters`
  ADD PRIMARY KEY (`idВхода`);

--
-- Индексы таблицы `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`idПолета`),
  ADD KEY `idВхода` (`idВхода`),
  ADD KEY `idСотрудника` (`idСотрудника`),
  ADD KEY `idСтатуса` (`idСтатуса`),
  ADD KEY `idАвиакомпании` (`idАвиакомпании`),
  ADD KEY `idСамолета` (`idСамолета`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idДолжности`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`idСтатуса`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `aircrafts`
--
ALTER TABLE `aircrafts`
  MODIFY `idСамолета` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `airlines`
--
ALTER TABLE `airlines`
  MODIFY `idАвиакомпании` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456804;

--
-- AUTO_INCREMENT для таблицы `employes`
--
ALTER TABLE `employes`
  MODIFY `idСотрудника` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `enters`
--
ALTER TABLE `enters`
  MODIFY `idВхода` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `flights`
--
ALTER TABLE `flights`
  MODIFY `idПолета` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `idДолжности` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `idСтатуса` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD CONSTRAINT `aircrafts_ibfk_1` FOREIGN KEY (`idСтатуса`) REFERENCES `statuses` (`idСтатуса`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aircrafts_ibfk_2` FOREIGN KEY (`idСотрудника`) REFERENCES `employes` (`idСотрудника`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `aircrafts_airline`
--
ALTER TABLE `aircrafts_airline`
  ADD CONSTRAINT `aircrafts_airline_ibfk_1` FOREIGN KEY (`idАвиакомпании`) REFERENCES `airlines` (`idАвиакомпании`),
  ADD CONSTRAINT `aircrafts_airline_ibfk_2` FOREIGN KEY (`idСамолета`) REFERENCES `aircrafts` (`idСамолета`);

--
-- Ограничения внешнего ключа таблицы `aircrafts_flights`
--
ALTER TABLE `aircrafts_flights`
  ADD CONSTRAINT `aircrafts_flights_ibfk_1` FOREIGN KEY (`idСамолета`) REFERENCES `aircrafts` (`idСамолета`),
  ADD CONSTRAINT `aircrafts_flights_ibfk_2` FOREIGN KEY (`idПолета`) REFERENCES `flights` (`idПолета`);

--
-- Ограничения внешнего ключа таблицы `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_ibfk_1` FOREIGN KEY (`IdДолжности`) REFERENCES `roles` (`idДолжности`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`idАвиакомпании`) REFERENCES `airlines` (`idАвиакомпании`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`idСтатуса`) REFERENCES `statuses` (`idСтатуса`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_4` FOREIGN KEY (`idВхода`) REFERENCES `enters` (`idВхода`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_5` FOREIGN KEY (`idСотрудника`) REFERENCES `employes` (`idСотрудника`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_6` FOREIGN KEY (`idСамолета`) REFERENCES `aircrafts` (`idСамолета`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
