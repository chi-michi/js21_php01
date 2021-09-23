-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2021 年 9 月 23 日 11:35
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `HWgantt`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `Items`
--

CREATE TABLE `Items` (
  `id` int(11) NOT NULL,
  `field` text NOT NULL,
  `housework` text NOT NULL,
  `charge` text NOT NULL,
  `stime` time NOT NULL,
  `ftime` time NOT NULL,
  `sdate` date DEFAULT NULL,
  `fdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `Items`
--

INSERT INTO `Items` (`id`, `field`, `housework`, `charge`, `stime`, `ftime`, `sdate`, `fdate`) VALUES
(5, '自分時間', '起床', '父 ', '06:30:00', '06:45:00', '2021-09-24', '2021-09-24'),
(8, '育児 ', '子供を起こす ', '母 ', '07:00:00', '07:01:00', NULL, NULL),
(9, '育児 ', '服を着替えさせる ', '母 ', '07:15:00', '07:30:00', NULL, NULL),
(10, '食事 ', '朝食準備 ', '父 ', '07:00:00', '07:15:00', NULL, NULL),
(11, '食事 ', '朝食を食べる ', '全員 ', '07:20:00', '07:30:00', NULL, NULL),
(12, '育児 ', '保育園に送る ', '母 ', '07:45:00', '08:00:00', NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
