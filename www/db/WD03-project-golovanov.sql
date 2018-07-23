-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 19 2018 г., 20:06
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-golovanov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Веб разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `author_id`, `date_time`) VALUES
(1, 'Путешествие', 1, '2018-07-19 18:40:22'),
(2, 'Спорт', 1, '2018-07-19 18:40:34'),
(4, 'Отдых', 1, '2018-07-19 19:24:29');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `img`, `img_small`) VALUES
(9, 'Шанс получить сумку еще есть! ', 'Друзья, мы получили много сообщений с просьбой продлить акцию &laquo;Полный профиль-3&raquo; и не могли не пойти на встречу пожеланиям &ndash; тем более, в день, когда российская сборная по футболу вышла в четвертьфинал чемпионата мира. Поэтому акция продлена на все лето &ndash; до 30 августа. Заполняйте, заказывайте и выигрывайте! Напоминаем правила акции', 1, '2018-07-19 13:38:45', '1350581892.jpg', '320-1350581892.jpg'),
(10, 'Перечень сахароснижающих средств', 'Перечень сахароснижающих средств настолько внушителен, что даже больные диабетом порой весьма плохо ориентируется в этом лекарственном многообразии. Шесть фармакологических групп, которые различаются механизмом действия и имеют собственные положительные и отрицательные стороны, и десятки препаратов, применяющихся при диабете 2-го типа, вносят путаницу в умы потребителей. Попробуем разложить все по полкам.\r\n', 1, '2018-07-19 13:39:26', '1359097327.jpg', '320-1359097327.jpg'),
(11, 'Бумажные бланки больничных постепенно уходят в прошлое', 'Бумажные бланки больничных постепенно уходят в прошлое &mdash; сейчас они пока еще используются, но страна постепенно переходит на электронный документооборот. Первый электронный больничный был выдан около года назад, а на сегодняшний день такие документы были получены уже почти 1,6 миллиона раз &mdash; при этом б&oacute;льшая часть в Белгородской и Липецкой областях, сообщает &laquo;Российская газета&raquo;\r\n ', 1, '2018-07-19 13:40:05', '1304085007.jpg', '320-1304085007.jpg'),
(12, 'День психического здоровья', '10 октября 2017 года во всем мире в 26-й раз (в России &mdash; в 16-й) отметили День психического здоровья. Психическое здоровье &mdash; это не только отсутствие расстройств психики, но более широкое понятие: то состояние, когда человек может полноценно работать, справляться со стрессом и применять собственные способности на благо общества и самого себя.\r\n ', 1, '2018-07-19 13:40:43', '1298054229.jpg', '320-1298054229.jpg'),
(13, 'Негативные факторы', 'Что стоит за термином &laquo;негативные факторы&raquo;? Это самые обычные и уже ставшие привычными действия, которые мы совершаем. Работаем за мониторами компьютеров, пользуемся контактными линзами, водим автомобиль в сумерках и ночью, используем планшеты и телефоны для чтения, проводим долгие часы на солнце при поездке на отдых. Все перечисленное может приводить как к повышению испарения слезы с поверхности глаза, его естественной защитной и увлажняющей пленки, так и нарушению ее структуры\r\n\r\n ', 1, '2018-07-19 13:41:36', '1275253499.jpg', '320-1275253499.jpg'),
(14, 'Руководство', 'Согласно уставу Челябинского государственного университета непосредственное управление вузом осуществляется ректором, который избирается тайным голосованием на конференции сроком до пяти лет. Ректор определяет структуру университета, штатное расписание, руководит образовательной, научной, хозяйственной и финансовой деятельностью, возглавляет Ученый совет вуза. Ректором ЧелГУ является Диана Александровна Циринг.\r\n\r\nЧасть своих полномочий ректор может передавать проректорам. На этот пост человек принимается на работу по срочному трудовому договору, срок окончания которого не может превышать срок окончания полномочий ректора вуза. Количество проректоров определяет ректор. ', 1, '2018-07-19 14:16:43', '1386084615.jpg', '320-1386084615.jpg'),
(15, 'Это без картинки', 'Пост без картинки', 1, '2018-07-19 14:20:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `photo_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `surname`, `city`, `country`, `photo`, `photo_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'aaa@aaa.ru', '$2y$10$dYV3/bDWVv373yd1hQlDEub3nfCL6NU7i3QMBpTFMmxjhhyrWtCSC', 'admin', 'Степан', 'Голованов', 'Челябинск', 'Россия', '1322052812.jpg', '48-1322052812.jpg', '7KTIomWrD5nbzeF', 0),
(14, 'user@aaa.ru', '$2y$10$z/u6QVMcQU0dFVxof9KeOOEcBOj8o82qP3NKSQUCwdQ2eovry6U56', 'user', 'Юсер', 'Юсеринов', 'Москва', 'Россия', '1366047250.JPG', '48-1366047250.JPG', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_categories_author` (`author_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
