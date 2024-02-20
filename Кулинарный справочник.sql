-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2024 г., 22:24
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shek605-31`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `Categories` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_categories`, `Categories`) VALUES
(1, 'Горячие'),
(2, 'Холодные'),
(3, 'Салаты');

-- --------------------------------------------------------

--
-- Структура таблицы `dishes`
--

CREATE TABLE `dishes` (
  `id_dishes` int(11) NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dishes`
--

INSERT INTO `dishes` (`id_dishes`, `name`, `id_categories`) VALUES
(1, 'Шашлык - Мясной обитель - свиной', 1),
(2, 'Шашлык - Благосклонность природы - грибной', 1),
(3, 'Шашлык - Рай из глубин - рыбный', 1),
(4, 'Суп - Котёл тысячи сердец - Борщ', 2),
(5, 'Суп - Всё из ничего - Солянка', 2),
(6, 'Суп - Сногсшибательный - Гороховый', 2),
(7, 'Салат - Новогодний – Цезарь', 3),
(8, 'Салат - Деревенский – Ёжик', 3),
(9, 'Салат - Поход дьявола - Винегрет', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(9) NOT NULL,
  `name-measurement` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ingredients`
--

INSERT INTO `ingredients` (`id`, `name-measurement`) VALUES
(1, '1)Свиной ошеек - Килограмм\r\n2)Сухое шампанское - Бутылки\r\n3)Лук репчатый - штуки\r\n'),
(2, '1)Шампиньоны - Граммы\r\n2)Смородина черная - Грамм\r\n3)Мед жидкий - Столовые ложки\r\n4)Паприка молотая - Столовые ложки\r\n5)Соль (по желанию) - Чайные ложки\r\n'),
(3, '1)Филе семги - Грамм\r\n2)Масло оливковое - Столовые ложки\r\n3)Порошок карри - Чайные ложки\r\n4)Соль\r\n'),
(4, '1)Свиные ребра для бульона - Килограммы\r\n2)Лук репчатый - Штуки\r\n3)Морковь средняя - Штуки\r\n4)Свекла - Штуки\r\n5)Капуста - Граммы\r\n6)Картофель средний - Штуки\r\n7)Болгарский перец - Штуки\r\n8)Баклажан небольшой - Штуки\r\n9)Зеленая фасоль - Граммы\r\n10)Помидоры - Штуки\r\n11)Томатная паста - Граммы\r\n12)Лавровый лист - Штуки\r\n13)Черный перец горошком - Горошины\r\n14)Соль\r\n15)Жир (смалец, сливочное или растительное масло) - Столовые ложки\r\n16)Чеснок - Зубчики\r\n17)Зелень'),
(5, '1)Грудинка копчёная - Граммы\r\n2)Колбаса сырокопченая - Граммы\r\n3)Морковь - Граммы\r\n4)Лук репчатый - Граммы\r\n5)Картофель - Граммы\r\n6)Огурцы солёные - Граммы\r\n7)Растительное масло - Миллилитры\r\n8)Томатная паста - Граммы\r\n9)Лавровый лист - Штуки\r\n10)Соль - Столовая ложка\r\n11)Сахар (по желанию) - Чайная ложка\r\n12)Маслины - Граммы\r\n13)Укроп - Пучки\r\n14)Лимон\r\n15)Сметана'),
(6, '1)Горох Лущёный – Граммы\r\n2)Ребрышки копченые - Килограммы\r\n3)Сосиски копченые - Штуки\r\n4)Картофель - Штуки\r\n5)Морковь - Штуки\r\n6)Лук репчатый - Штуки\r\n7)Масло растительное - Граммы\r\n8)Соль\r\n9)Перец\r\n10)Зелень \r\n11)Вода - Литры'),
(7, '1)Филе куриное - Граммы\r\n2)Салат айсберг или романо - Граммы\r\n3)Батон или багет - Граммы\r\n4)Сыр пармезан - Граммы\r\n5)Помидоры черри (или коктейльные) - Штуки\r\n6)Яйца перепелиные - Штуки\r\n7)Перец чёрный молотый\r\n8)Соль\r\n9)Масло растительное - Столовые ложки\r\n   Для соуса:\r\n10)Яйцо куриное - Штуки\r\n11)Чеснок - Зубчики\r\n12)Каперсы (по желанию) - Штуки\r\n13)Сыр пармезан - Граммы\r\n14)Масло растительное - Миллилитры\r\n15)Сок лимонный - Чайные ложки\r\n16)Соус вустерский (по желанию) - Чайные ложки\r\n17)Горчица - Чайные ложки\r\n18)Сахар - Щепотки\r\n'),
(8, '1)Колбаса копченая - Граммы\r\n2)Сыр твердый - Граммы\r\n3)Кукуруза консервированная - Граммы\r\n4)Яйца вареные - Штуки\r\n5)Чеснок - Зубчики\r\n6)Майонез - Граммы'),
(9, '1)Свекла - Граммы\r\n2)Морковь - Граммы\r\n3)Картофель - Граммы\r\n4)Горошек замороженный - Граммы\r\n5)Лук салатный белый - Граммы\r\n6)Сок лимона - Чайные ложки\r\n7)Соль - Чайные ложки\r\n8)Растительное масло - Столовые ложки\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `id_recipe` int(11) NOT NULL,
  `Quantity` varchar(1600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `id_dishes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`id_recipe`, `Quantity`, `id_ingredients`, `id_dishes`) VALUES
(1, '1)2,5\r\n2)1\r\n3)5\r\n4)По вкусу\r\n5)По вкусу\r\n\r\n', 1, 1),
(2, '1)300\r\n2)100\r\n3)1\r\n4)2\r\n5)1', 2, 2),
(3, '1)400\r\n2)4\r\n3)2\r\n4)По вкусу\r\n', 3, 3),
(4, '1)0,5\r\n2)3\r\n3)2\r\n4)2\r\n5)500\r\n6)4\r\n7)1\r\n8)1\r\n9)250\r\n10)2\r\n11)200\r\n12)2-3\r\n13)5-6\r\n14)По вкусу\r\n15)2\r\n16)4\r\n17)По вкусу', 4, 4),
(5, '1)250\r\n2)150\r\n3)150\r\n4)50\r\n5)200\r\n6)200\r\n7)20\r\n8)50\r\n9)1\r\n10)0,5\r\n11)0,5-1\r\n12)100\r\n13)1\r\n14)По вкусу\r\n15)По вкусу', 5, 5),
(6, '1)300\r\n2)1\r\n3)2-3\r\n4)2-3\r\n5)1\r\n6)1\r\n7)30\r\n8)По вкусу\r\n9)По вкусу\r\n10)По вкусу\r\n11)3', 6, 6),
(7, '1)400\r\n2)300\r\n3)160\r\n4)70\r\n5)10\r\n6)10\r\n7)По вкусу\r\n8)По вкусу\r\n9)3\r\n10)1\r\n11)1\r\n12)7\r\n13)10\r\n14)70\r\n15)1\r\n16)0,5\r\n17)1\r\n18)1', 7, 7),
(8, '1)100\r\n2)100\r\n3)140\r\n4)3\r\n5)1\r\n6)80', 8, 8),
(9, '1)300\r\n2)150\r\n3)150\r\n4)150\r\n5)100\r\n6)4-5\r\n7)0,25\r\n8)4-5', 9, 9);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Индексы таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id_dishes`),
  ADD KEY `id_categories` (`id_categories`);

--
-- Индексы таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`id_recipe`),
  ADD KEY `id_ingredients` (`id_ingredients`),
  ADD KEY `id_dishes` (`id_dishes`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`),
  ADD CONSTRAINT `dishes_ibfk_2` FOREIGN KEY (`id_dishes`) REFERENCES `recipe` (`id_dishes`);

--
-- Ограничения внешнего ключа таблицы `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`id`) REFERENCES `recipe` (`id_ingredients`);

--
-- Ограничения внешнего ключа таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_3` FOREIGN KEY (`id_ingredients`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `recipe_ibfk_4` FOREIGN KEY (`id_dishes`) REFERENCES `dishes` (`id_dishes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

