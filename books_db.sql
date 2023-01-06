-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 05 日 17:04
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `books_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `googlebooks_table`
--

CREATE TABLE `googlebooks_table` (
  `No` int(12) NOT NULL,
  `query` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `authors` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `publishedDate` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `previewLink` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `googlebooks_table`
--

INSERT INTO `googlebooks_table` (`No`, `query`, `title`, `authors`, `publishedDate`, `link`, `thumbnail`, `previewLink`, `date`, `memo`) VALUES
(100, 'html', 'HTML解体新書-仕様から紐解く本格入門', '太田良典,中村直樹', '2022-04-19', 'http://books.google.co.jp/books?id=KkPwzgEACAAJ&dq=html&hl=&source=gbs_api', 'http://books.google.com/books/content?id=KkPwzgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=KkPwzgEACAAJ&dq=html&hl=&cd=5&source=gbs_api', '2023-01-06 00:32:17', 'この本はわかりやすかった。'),
(101, 'html', '本当によくわかるHTML＆CSSの教科書', '鈴木介翔', '2018-09-20', 'https://play.google.com/store/books/details?id=0SJvDwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=0SJvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=0SJvDwAAQBAJ&printsec=frontcover&dq=html&hl=&cd=6&source=gbs_api', '2022-12-16 11:11:30', ''),
(102, 'html', '初心者からちゃんとしたプロになる HTML+CSS実践講座', '相原典佳,草野あけみ,サトウハルミ,塚口祐司', '2020-08', 'http://books.google.co.jp/books?id=ijrGzQEACAAJ&dq=html&hl=&source=gbs_api', 'http://books.google.com/books/content?id=ijrGzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=ijrGzQEACAAJ&dq=html&hl=&cd=7&source=gbs_api', '2022-12-16 11:11:30', ''),
(103, 'html', 'HTML&CSS 標準デザイン講座【HTML5&CSS3対応】', '草野あけみ', '2013-03-11', 'http://books.google.co.jp/books?id=vRUfBAAAQBAJ&dq=html&hl=&source=gbs_api', 'http://books.google.com/books/content?id=vRUfBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=vRUfBAAAQBAJ&printsec=frontcover&dq=html&hl=&cd=8&source=gbs_api', '2022-12-16 11:11:30', ''),
(104, 'html', 'HTML教科書 HTML5プロフェッショナル認定試験 レベル1 スピードマスター問題集 Ver2.0対応', '株式会社富士通ラーニングメディア,抜山雄一,七條怜子,松井正徳,結城陽平', '2018-03-12', 'http://books.google.co.jp/books?id=j5VRDwAAQBAJ&dq=html&hl=&source=gbs_api', 'http://books.google.com/books/content?id=j5VRDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=j5VRDwAAQBAJ&printsec=frontcover&dq=html&hl=&cd=9&source=gbs_api', '2022-12-16 11:11:30', ''),
(105, 'html', 'はじめてのHTML+CSS', '猿橋大', '2013-06', 'http://books.google.co.jp/books?id=pDMHnXHjFQQC&dq=html&hl=&source=gbs_api', 'http://books.google.com/books/content?id=pDMHnXHjFQQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=pDMHnXHjFQQC&printsec=frontcover&dq=html&hl=&cd=10&source=gbs_api', '2022-12-16 11:11:30', ''),
(106, 'ニーチェ', 'ニーチェ勇気の言葉', 'フリードリヒニーチェ', '2014-05-20', 'http://books.google.co.jp/books?id=yj3WoAEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&source=gbs_api', 'http://books.google.com/books/content?id=yj3WoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=yj3WoAEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&cd=1&source=gbs_api', '2022-12-19 15:39:57', ''),
(107, 'ニーチェ', 'ニーチェ覚書', 'ジョルジュ・バタイユ', '2012-06', 'http://books.google.co.jp/books?id=k-fcMgEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&source=gbs_api', 'http://books.google.com/books/content?id=k-fcMgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=k-fcMgEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&cd=2&source=gbs_api', '2022-12-19 15:39:57', ''),
(108, 'ニーチェ', 'ニーチェと哲学', 'ジル・ドゥルーズ', '2008-08', 'http://books.google.co.jp/books?id=xZ5yPgAACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&source=gbs_api', 'http://books.google.com/books/content?id=xZ5yPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=xZ5yPgAACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&cd=3&source=gbs_api', '2022-12-19 15:39:57', ''),
(109, 'ニーチェ', 'ニーチェ『ツァラトゥストラ』', '西研', '2012-03', 'http://books.google.co.jp/books?id=nz_UZwEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&source=gbs_api', 'http://books.google.com/books/content?id=nz_UZwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=nz_UZwEACAAJ&dq=%E3%83%8B%E3%83%BC%E3%83%81%E3%82%A7&hl=&cd=4&source=gbs_api', '2022-12-19 15:39:57', ''),
(110, 'キャンプ', 'ヒロシのソロキャンプ', 'ヒロシ', '2020-08', 'http://books.google.co.jp/books?id=tfp9xr1K2I0C&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&source=gbs_api', 'http://books.google.com/books/content?id=tfp9xr1K2I0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=tfp9xr1K2I0C&printsec=frontcover&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&cd=1&source=gbs_api', '2023-01-05 12:05:57', ''),
(111, 'キャンプ', 'ベアーズ島田キャンプのサボリ飯', 'ベアーズ島田キャンプ', '2020-03-11', 'http://books.google.co.jp/books?id=e5TUDwAAQBAJ&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&source=gbs_api', 'http://books.google.com/books/content?id=e5TUDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=e5TUDwAAQBAJ&printsec=frontcover&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&cd=2&source=gbs_api', '2023-01-05 12:05:57', ''),
(113, 'キャンプ', 'ヒロシのソロキャンプ', 'ヒロシ', '2020-08', 'http://books.google.co.jp/books?id=tfp9xr1K2I0C&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&source=gbs_api', 'http://books.google.com/books/content?id=tfp9xr1K2I0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=tfp9xr1K2I0C&printsec=frontcover&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&cd=1&source=gbs_api', '2023-01-05 12:07:21', ''),
(114, 'キャンプ', 'ベアーズ島田キャンプのサボリ飯', 'ベアーズ島田キャンプ', '2020-03-11', 'http://books.google.co.jp/books?id=e5TUDwAAQBAJ&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&source=gbs_api', 'http://books.google.com/books/content?id=e5TUDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=e5TUDwAAQBAJ&printsec=frontcover&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&cd=2&source=gbs_api', '2023-01-05 12:07:21', ''),
(115, 'キャンプ', 'キャンプ職業案内', '佐久間亮介', '2021-04', 'http://books.google.co.jp/books?id=ziBjzgEACAAJ&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&source=gbs_api', 'http://books.google.com/books/content?id=ziBjzgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=ziBjzgEACAAJ&dq=%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97&hl=&cd=3&source=gbs_api', '2023-01-05 12:07:21', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `No` int(12) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `book_url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`No`, `title`, `book_url`, `comment`, `date`) VALUES
(1, '冷静と情熱のあいだ', 'https://www.amazon.co.jp/%E5%86%B7%E9%9D%99%E3%81%A8%E6%83%85%E7%86%B1%E3%81%AE%E3%81%82%E3%81%84%E3%81%A0%E2%80%95Blu-%E8%A7%92%E5%B7%9D%E6%96%87%E5%BA%AB-%E8%BE%BB-%E4%BB%81%E6%88%90/dp/4043599013', '20年以上前に読んだ本', '2022-12-12 14:32:29'),
(2, 'SHIFT：イノベーションの作法', 'https://www.amazon.co.jp/SHIFT%EF%BC%9A%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E4%BD%9C%E6%B3%95-%E6%BF%B1%E5%8F%A3-%E7%A7%80%E5%8F%B8-ebook/dp/B07SRGWGK2/ref=sr_1_1?keywords=shift+%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E4%BD%9C%E6%B3%95&qid=1670826956&s=digital-text&sprefix=shift%2Cdigital-text%2C288&sr=1-1', 'まだ読んでません！', '2022-12-12 15:54:55'),
(3, 'テクノロジーが予測する未来　web3、メタバース、NFTで世界はこうなる', 'https://www.amazon.co.jp/%E3%83%86%E3%82%AF%E3%83%8E%E3%83%AD%E3%82%B8%E3%83%BC%E3%81%8C%E4%BA%88%E6%B8%AC%E3%81%99%E3%82%8B%E6%9C%AA%E6%9D%A5-web3%E3%80%81%E3%83%A1%E3%82%BF%E3%83%90%E3%83%BC%E3%82%B9%E3%80%81NFT%E3%81%A7%E4%B8%96%E7%95%8C%E3%81%AF%E3%81%93%E3%81%86%E3%81%AA%E3%82%8B-SB%E6%96%B0%E6%9B%B8-%E4%BC%8A%E8%97%A4-%E7%A9%B0%E4%B8%80-ebook/dp/B09YQVS5KV/ref=tmm_kin_swatch_0?_encoding=UTF8&qid=&sr=', '今、読んでいるところです！', '2022-12-12 22:07:24');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `googlebooks_table`
--
ALTER TABLE `googlebooks_table`
  ADD PRIMARY KEY (`No`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`No`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `googlebooks_table`
--
ALTER TABLE `googlebooks_table`
  MODIFY `No` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `No` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
