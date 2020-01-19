-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 19 2020 г., 19:25
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2.loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', '', ''),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlAlias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product3/56c683.jpg', 3, 0, 'Product', '4952553271-3', ''),
(2, 'Products/Product3/946ad3.jpg', 3, 0, 'Product', 'f8059c085c-4', ''),
(3, 'Products/Product9/6dfedb.jpg', 9, 0, 'Product', '3c7f83fd22-3', ''),
(4, 'Products/Product9/3bc57d.jpg', 9, 0, 'Product', '36ecb34730-4', ''),
(5, 'Products/Product9/1b2552.jpg', 9, 0, 'Product', '3a35373f88-5', ''),
(6, 'Products/Product9/18b5e8.jpg', 9, 0, 'Product', '4f2c68e315-6', ''),
(7, 'Products/Product9/27d27f.jpg', 9, 0, 'Product', '38a9b469a4-2', ''),
(8, 'Products/Product9/527764.jpg', 9, 1, 'Product', 'fd6ad14a6f-1', ''),
(9, 'Products/Product11/c9a656.jpg', 11, 1, 'Product', '4ec795796e-1', ''),
(10, 'Products/Product11/7db690.jpg', 11, NULL, 'Product', '2ca7bea362-2', ''),
(11, 'Products/Product11/74134e.jpg', 11, NULL, 'Product', '0ab1203930-3', ''),
(12, 'Products/Product11/7e11ce.jpg', 11, NULL, 'Product', 'c0fd33325b-4', ''),
(13, 'Products/Product3/c070e2.jpg', 3, 0, 'Product', 'd2aa87af5e-2', ''),
(14, 'Products/Product3/ca9e7f.jpg', 3, 1, 'Product', '7035efdbfa-1', ''),
(15, 'Products/Product3/9169c9.jpg', 3, NULL, 'Product', '70432a3640-5', ''),
(16, 'Products/Product3/002cf2.jpg', 3, NULL, 'Product', '0a787bae5a-6', ''),
(17, 'Products/Product6/b887f1.jpg', 6, 0, 'Product', 'f64bf7f0d1-3', ''),
(18, 'Products/Product6/e0899d.jpg', 6, 0, 'Product', '0112aaea5c-4', ''),
(19, 'Products/Product6/4784ce.jpg', 6, 0, 'Product', '3b3dc4e552-5', ''),
(20, 'Products/Product6/2cef74.jpg', 6, 0, 'Product', '1c313d1fda-6', ''),
(21, 'Products/Product6/d32dae.jpg', 6, 0, 'Product', 'c8338038ad-2', ''),
(22, 'Products/Product6/530957.jpg', 6, 1, 'Product', '8beb4a8856-1', ''),
(23, 'Products/Product2/e49c5f.jpg', 2, 0, 'Product', '2c33224f98-2', ''),
(24, 'Products/Product1/1d9a30.jpg', 1, 1, 'Product', 'bd37c421b1-1', ''),
(25, 'Products/Product10/bc3ae7.jpg', 10, 1, 'Product', '136d6a4620-1', ''),
(26, 'Products/Product8/b21849.jpg', 8, 1, 'Product', 'c40b75cd09-1', ''),
(27, 'Products/Product2/b7e7a4.jpg', 2, 1, 'Product', 'ad406345aa-1', ''),
(28, 'Products/Product2/9ab7aa.jpg', 2, NULL, 'Product', '0ddacef33b-3', ''),
(29, 'Products/Product2/89fb08.jpg', 2, NULL, 'Product', '4269332b5e-4', ''),
(30, 'Products/Product2/54d514.jpg', 2, NULL, 'Product', 'd329ae1587-5', ''),
(31, 'Products/Product4/e72953.jpg', 4, 1, 'Product', 'd4987aa579-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1579363663),
('m140622_111540_create_image_table', 1579363672),
('m140622_111545_add_name_to_image_table', 1579363672);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(3, '2020-01-17 18:23:00', '2020-01-17 18:23:00', 28, 2464, '0', 'Максим', 'rgergergerg', 'ergerger', 'ул. кукушкина, д. колотушкина'),
(4, '2020-01-17 18:28:32', '2020-01-17 18:28:32', 28, 2464, '1', 'wefwrgrwgwrg', 'mqwefiwef@mail.ru', 'ergerger', 'ул. кукушкина, д. колотушкина'),
(5, '2020-01-17 18:49:45', '2020-01-17 18:49:45', 6, 300, '0', 'Максим', 'mqwefiwef@mail.ru', 'ergerger', 'ул. кукушкина, д. колотушкина'),
(6, '2020-01-17 18:56:34', '2020-01-17 18:56:34', 3, 146, '0', 'Максим', 'max3d99@mail.ru', '12351235', 'wsnvlwng'),
(7, '2020-01-17 18:57:00', '2020-01-17 18:57:00', 3, 146, '0', 'Максим', 'righwriu@mail.ru', '12351235', 'wsnvlwng'),
(8, '2020-01-17 18:58:03', '2020-01-17 18:58:03', 3, 146, '0', 'rgergew', 'ergerg@mail.ru', 'wjebfjlwefn', ';kwnvkwrnf'),
(9, '2020-01-17 18:59:11', '2020-01-17 18:59:11', 3, 146, '0', 'Максим', 'righwriu@mail.ru', '12351235', 'wsnvlwng'),
(10, '2020-01-17 19:00:13', '2020-01-17 19:00:13', 3, 146, '0', 'rgergew', 'max3d99@mail.ru', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(11, '2020-01-17 19:04:19', '2020-01-17 19:04:19', 3, 146, '0', 'Максим', 'righwriu@mail.ru', '12351235', 'wsnvlwng'),
(12, '2020-01-17 19:06:01', '2020-01-17 19:06:01', 3, 146, '0', 'rgergew', 'max3d99@mail.ru', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(13, '2020-01-17 19:06:46', '2020-01-17 19:06:46', 3, 146, '0', 'rgergew', 'alinochkaklass1408@gmail.com', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(14, '2020-01-17 19:08:16', '2020-01-17 19:08:16', 3, 146, '0', 'Максим', 'max3d99@mail.ru', '12351235', 'wsnvlwng'),
(15, '2020-01-17 19:08:25', '2020-01-17 19:08:25', 3, 146, '0', 'rgergew', 'alinochkaklass1408@gmail.com', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(16, '2020-01-17 19:08:55', '2020-01-17 19:08:55', 3, 146, '0', 'rgergew', 'alinochkaklass1408@gmail.com', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(17, '2020-01-17 19:09:07', '2020-01-17 19:09:07', 3, 146, '0', 'rgergew', 'max3d99@mail.ru', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(18, '2020-01-17 19:11:35', '2020-01-17 19:11:35', 3, 146, '0', 'rgergew', 'max3d99@mail.ru', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503'),
(19, '2020-01-17 19:12:24', '2020-01-17 19:12:24', 3, 146, '0', 'rgergew', 'max3d99@mail.ru', '+79011733691', 'Yaroslavl, Gagarina street 11, 5503');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 3, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 4, 224),
(2, 3, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
(3, 3, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 22, 2200),
(4, 4, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 4, 224),
(5, 4, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
(6, 4, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 22, 2200),
(7, 5, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(8, 5, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 5, 280),
(9, 6, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(10, 6, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(11, 6, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(12, 7, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(13, 7, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(14, 7, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(15, 8, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(16, 8, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(17, 8, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(18, 9, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(19, 9, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(20, 9, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(21, 10, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(22, 10, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(23, 10, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(24, 11, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(25, 11, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(26, 11, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(27, 12, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(28, 12, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(29, 12, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(30, 13, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(31, 13, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(32, 13, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(33, 14, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(34, 14, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(35, 14, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(36, 15, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(37, 15, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(38, 15, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(39, 16, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(40, 16, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(41, 16, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(42, 17, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(43, 17, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(44, 17, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(45, 18, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(46, 18, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(47, 18, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70),
(48, 19, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(49, 19, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 1, 20),
(50, 19, 4, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', 70, 1, 70);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', '<p>Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n', 10, '', '', 'product1.jpg', '0', '0', '0'),
(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, '', '', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', '<p>Испанский бренд модной одежды &quot;Mango&quot; родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин &mdash; на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac &amp; Nahman Andic), очень быстро набрала популярность &mdash; всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда &quot;Mango&quot; отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.</p>\r\n', 20, '', '', '', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '<p>Tom Tailor Group &mdash; один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет. Tom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей. Одежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.</p>\r\n', 70, '', '', 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', NULL, 0, NULL, NULL, 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', '', 100, '', '', 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '\r\n\r\nCasual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира.\r\n\r\nONLY — бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.', 0, NULL, NULL, 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '<p><img alt=\"\" src=\"/web/upload/global/usa_today_10007748.0.jpg\" style=\"float:right; height:90px; width:160px\" />Компания SK House &mdash; это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.</p>\r\n\r\n<h2>Header</h2>\r\n\r\n<p><strong>Компания SK House</strong> &mdash; это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.</p>\r\n', 90, '', '', 'no-image.png', '0', '1', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', '', 0, '', '', 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', '<p>Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают &quot;Гуссачи&quot; модным и популярным! Особенности: Количество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на &quot;молнии&quot;. На тыльной стороне модели есть прорезной карман на &quot;молнии&quot;. Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки &mdash; 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии. Материал подкладки: плотная ткань. Материал сумки: кожезаменитель. Цвет фурнитуры: золото. Размеры сумки: 26 х 25 х 10.5 см</p>\r\n', 15, '', '', 'product3.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 200, '', '', 'no-image.png', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 205, NULL, NULL, 'product5.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford Красная', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0'),
(14, 29, 'Сумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$tCWMOiBmgurdTLvaL1DIKeTR2rLEZEGOQz6nHiXFbmCUmNM.EKss6', 'ZjGY7tNQ39n0-BjTaTNqiwvMqbpo9bEJ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
