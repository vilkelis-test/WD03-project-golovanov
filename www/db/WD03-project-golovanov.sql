-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 25 2018 г., 00:07
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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 21, 1, 'Вот это еще комментарий', '2018-07-23 20:49:24'),
(2, 21, 1, 'вввв', '2018-07-23 21:03:30'),
(3, 21, 1, 'ыфаыфафыаыфва', '2018-07-23 21:31:50'),
(4, 21, 1, 'фываыфваыфв', '2018-07-23 21:31:55'),
(5, 21, 1, 'sssss', '2018-07-23 21:41:12'),
(6, 21, 1, 'dfgdsfgdsfgdsfg', '2018-07-23 21:41:16'),
(7, 21, 1, 'sdsffdsfddf', '2018-07-23 21:44:03'),
(8, 21, 1, 'Еще комментарий', '2018-07-23 21:44:19'),
(9, 21, 1, 'ыавыфыфав', '2018-07-23 21:46:40'),
(10, 21, 1, '1111', '2018-07-23 21:46:43'),
(11, 21, 1, '2322', '2018-07-23 21:46:47'),
(12, 14, 1, 'Вот это цветочки\r\n', '2018-07-23 21:53:09'),
(13, 14, 14, 'А вот мой комментарий', '2018-07-23 21:56:13'),
(14, 15, 1, 'ыыы', '2018-07-23 22:24:05');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `surname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `surname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'aaa@aaa.ru', '222-222-222', 'Москва', 'Степан', 'Голованов', 'aaa-admin', 'https://vk.com/id20460443', 'https://www.facebook.com', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL,
  `message_file_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `text`, `date_time`, `message_file_original`, `message_file`) VALUES
(9, 'aaa@aa.ru', 'Аптека 74 Плюс', 'Травникам хорошо известно, что правильный и своевременный сбор лекарственных трав, ягод, плодов и т.д. &ndash; это гарантия того, что они сохранят при высушивании все свои целебные свойства. Это означает, что их можно будет использовать для лечения многие недугов. Сегодня мы расскажем, какие лекарственные травы собирать в июле.', '2018-07-25 00:05:03', 'Chrysanthemum.jpg', '1277987215.jpg'),
(10, 'shish@sh.ru', 'Петр Шишкорев', 'Цель Жемчужного марафона - это продвижение водных видов туризма и рекреационных видов деятельности, в частности каякинга. А также привлечение внимания к экологической ситуации на озере Тургояк, и популяризации не наносящих озеру Тургояк вреда, водных видов транспорта', '2018-07-25 00:06:34', 'Penguins.jpg', '1395418386.jpg');

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
  `img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `date_update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `img`, `img_small`, `category_id`, `date_update_time`) VALUES
(11, 'Бумажные бланки больничных постепенно уходят в прошлое', '&lt;p&gt;Бумажные бланки больничных постепенно уходят в прошлое &amp;mdash; сейчас они пока еще используются, но страна постепенно переходит на электронный документооборот. Первый электронный больничный был выдан около года назад, а на сегодняшний день такие документы были получены уже почти 1,6 миллиона раз &amp;mdash; при этом б&amp;oacute;льшая часть в Белгородской и Липецкой областях, сообщает &amp;laquo;Российская газета&amp;raquo;&lt;/p&gt;\r\n', 1, '2018-07-19 13:40:05', '1343139781.jpg', '320-1343139781.jpg', 4, '2018-07-19 22:53:37'),
(14, 'Руководство', 'Согласно уставу Челябинского государственного университета непосредственное управление вузом осуществляется ректором, который избирается тайным голосованием на конференции сроком до пяти лет. Ректор определяет структуру университета, штатное расписание, руководит образовательной, научной, хозяйственной и финансовой деятельностью, возглавляет Ученый совет вуза. Ректором ЧелГУ является Диана Александровна Циринг.\r\n\r\nЧасть своих полномочий ректор может передавать проректорам. На этот пост человек принимается на работу по срочному трудовому договору, срок окончания которого не может превышать срок окончания полномочий ректора вуза. Количество проректоров определяет ректор. ', 1, '2018-07-19 14:16:43', '1386084615.jpg', '320-1386084615.jpg', NULL, NULL),
(15, ' Это без картинки Это без картинки Это без картинки Это без картинки Это без картинки Это без картинки', '&lt;p&gt;Пост без картинки&lt;/p&gt;\r\n', 1, '2018-07-19 14:20:19', NULL, NULL, 4, '2018-07-20 11:21:33'),
(20, 'фыывфыфв', '&lt;p&gt;фыыфыфв&lt;/p&gt;\r\n', 1, '2018-07-20 11:17:30', NULL, NULL, 4, NULL),
(21, '121212', '&lt;p&gt;sdaadsdsasad sdafdsa safasfd&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n', 1, '2018-07-23 17:40:08', '1355349587.jpg', '320-1355349587.jpg', 4, '2018-07-23 18:00:15');

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
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`),
  ADD KEY `index_foreignkey_posts_category` (`category_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
