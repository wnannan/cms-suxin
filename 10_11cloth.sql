-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-15 11:36:58
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `10.11cloth`
--

-- --------------------------------------------------------

--
-- 表的结构 `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `ran` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `des`, `ran`, `address`, `tel`, `email`, `keywords`) VALUES
(1, '艺术品收藏', '集艺术消费、艺术资讯、艺术体验于一体,集合国内外优质艺术机构与艺术家', '艺术品的销售；收藏技术咨询；公司致力于将艺术收藏品带入寻常人家，让对生活有着更高追求的人们享受温馨素雅的艺术世界，力求将这种文化做到极致。', '郑州市 中牟县 育才巷 县直一初中家属院 1单元201室', '0371-62180519  15890062947', 'office@suxinhuahui.com', '艺术品,艺术电商,油画,版画,水墨,雕塑,摄影,书法,装饰画,艺术衍生品');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `pid` int(10) NOT NULL,
  `model` varchar(255) NOT NULL,
  `tem` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `title`, `des`, `pid`, `model`, `tem`) VALUES
(1, '油画', '油画的描述', 0, 'list', 'list.html'),
(2, '版画', '版画的描述', 0, 'list', 'list.html'),
(3, '水墨', '水墨的描述', 0, 'list', 'list.html'),
(4, '雕塑', '雕塑的描述', 0, 'list', 'list.html'),
(5, '留言建议', '留言建议', 0, 'comment', 'comment.html'),
(6, '关于我们', '关于我们', 0, 'aboutus', 'aboutus.html');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(10) NOT NULL,
  `names` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `names`, `tel`, `times`, `content`) VALUES
(1, '地', '3', '2018-10-22 08:20:02', '44444'),
(2, '地', '3', '2018-10-22 08:20:23', '44444'),
(3, '地', '3', '2018-10-22 08:20:38', '44444'),
(4, '地', '3', '2018-10-22 08:23:18', '44444'),
(5, '', '', '2018-10-22 08:23:52', ''),
(6, '', '', '2018-10-22 08:23:55', ''),
(7, '', '', '2018-10-22 08:23:55', ''),
(8, '', '', '2018-10-22 08:23:55', ''),
(9, '', '', '2018-10-22 08:23:56', ''),
(10, '', '', '2018-10-22 08:23:56', ''),
(11, '地', '', '2018-10-22 08:24:01', ''),
(12, '地', '', '2018-10-22 08:24:02', ''),
(13, '地', '', '2018-10-22 08:24:02', ''),
(14, 'qew', '3232', '2018-10-22 08:24:52', 'eee'),
(15, 'qew', '3232', '2018-10-22 08:25:21', 'eee'),
(16, 'qew', '3232', '2018-10-22 08:25:22', 'eee'),
(17, 'qew', '3232', '2018-10-22 08:25:23', 'eee'),
(18, '地', '3', '2018-10-22 08:25:34', 'dds'),
(19, '地', '3', '2018-10-22 08:27:41', ''),
(20, '地', '3', '2018-10-22 08:28:13', '4444'),
(21, '地', '3', '2018-10-22 08:29:08', 'dddd'),
(22, '地', '3', '2018-10-22 08:42:14', '44444'),
(23, '地', '222222', '2018-10-22 09:47:43', 'dddddd');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `gid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `times` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` int(10) NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `id` int(10) NOT NULL,
  `poid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `title`, `des`, `author`, `times`, `count`, `thumb`, `content`, `id`, `poid`) VALUES
(7, '月漫仓蓝', ' 雅物匠心 刘秀鸣《月漫仓蓝》布面油画 原作', '刘秀鸣', '2018-10-22 14:48:00', 5, '/10.11cloth/uploadimg/2018-10-22/1540219680.jpg', '<p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span><span class="inner_title" style="margin: 0px 10px; padding: 0px; display: inline-block; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">艺术家</span><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181022/1540219622613719.jpg" title="1540219622613719.jpg" alt="5a2f8c6cNc52e1587.jpg"/></p><p><br/></p><p><br/></p><p style="text-align: center;">刘秀鸣，1994年作为职业艺术家定居维也纳在此期间，曾多次艺术走访欧洲各国，同时将东、西方艺术进行比较和研究，并分别在奥地利、瑞士、意大利、德国、纽约和北京举办画展。</p><p><br/></p><p><br/></p><p><br/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181022/1540219668119129.jpg" title="1540219668119129.jpg" alt="5a992796N9d241757.jpg"/></p><p><br/></p>', 1, 1),
(8, '浮生观景图之八', 'ARTFUN艺品荟 王大志 《浮生观景图之八》博物馆收藏级 油画原作 浮生观景图之八（原作）', '王大志 ', '2018-10-22 14:50:59', 14, '/10.11cloth/uploadimg/2018-10-22/1540219859.jpg', '<p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span><span class="inner_title" style="margin: 0px 10px; padding: 0px; display: inline-block; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">艺术家</span><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181022/1540219800764932.jpg" title="1540219800764932.jpg" alt="5af170ccNea10f2e3.jpg"/></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);">1971年出生。 现工作生活在上海。现为中国美术家协会会员 ，上海市美术家协会会员。作品被中华艺术宫、刘海粟美术馆、上海徐汇艺术馆等收藏。</span></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181022/1540219845124955.jpg" title="1540219845124955.jpg" alt="5afd59d8N8c125612.jpg"/></span></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181022/1540219852799874.jpg" title="1540219852799874.jpg" alt="5afd59d8Nf2475d28.jpg"/></span></p>', 1, 1),
(6, '对话8 Dialogue8', '艾米李畫廊 马丹 艺术原作《对话8 Dialogue8》 46×55×3cm', '马丹', '2018-10-22 14:41:43', 5, '/10.11cloth/uploadimg/2018-10-22/1540219303.jpg', '<p style="text-align: center;">/<span class="inner_title" style="margin: 0px 10px; padding: 0px; display: inline-block; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif;">艺术家</span>/</p><p style="text-align:center"><img src="/10.11cloth/uploads/20181022/1540219077112743.jpg" title="1540219077112743.jpg" alt="5a2cf6f9N9fa516ce.jpg"/></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);">当代艺术家 1985年生于云南。2011年毕业于云南大学艺术与设计学院，获学士及硕士学位。 作品以原始超现实风格作品及画面中那位永远背对观众的红衣小女孩为大家所熟悉。作品被众多明星及国内外藏家收藏</span></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181022/1540219299611911.jpg" title="1540219299611911.jpg" alt="5a7139f3N1b41281c.jpg"/></span></p><p style="text-align:center"><img src="/10.11cloth/uploads/20181022/1540219185411728.jpg" title="1540219185411728.jpg" alt="5a7139f6Nc95a631b.jpg"/></p><p style="text-align:center"><img src="/10.11cloth/uploads/20181022/1540219256472230.jpg" title="1540219256472230.jpg" alt="5a7139f5N1e4e2267.jpg"/></p><p><br/></p>', 1, 0),
(5, '嵌入式二', '原创作品《嵌入式二》 油画装饰画住宅客厅书房背景墙壁酒店挂画 无框', '艺网臻选', '2018-10-22 14:35:10', 14, '/10.11cloth/uploadimg/2018-10-22/1540218910.jpg', '<p style="text-align: center;"><span style="color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-weight: 700; text-align: center; background-color: rgb(247, 247, 247);"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span><span class="inner_title" style="margin: 0px 10px; padding: 0px; display: inline-block; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">艺术家</span><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span></span></p><p></p><p style="text-align: center;">瀛瀛</p><p><br/></p><p style="text-align: center;">毕业于法国加莱美术学院 现居北京 2015 月亮的背面 北京熙空间 2014 La replica 法国里尔 2013 尼姆双年展 法国尼姆</p><p><br/></p><p><br/></p><p><br/></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181022/1540218901409060.jpg" title="1540218901409060.jpg" alt="5b1e3a89Nd1abe275.jpg"/></span></p>', 1, 0),
(10, '虞美人森林1', '艾米李畫廊 克莱尔·巴斯勒 限量版签名丝网版画《虞美人森林1》 画框尺寸62×81cm', '克莱尔·巴斯勒', '2018-10-23 05:16:46', 2, '/10.11cloth/uploadimg/2018-10-23/1540271805.jpg', '<p><img src="/10.11cloth/uploads/20181023/1540271787487593.jpg" title="1540271787487593.jpg" alt="5a66f29dN36df5ad2.jpg"/></p><p><img src="/10.11cloth/uploads/20181023/1540271796131892.jpg" title="1540271796131892.jpg" alt="5a66f29dN7693e684.jpg"/></p><p><img src="/10.11cloth/uploads/20181023/1540271802811019.jpg" title="1540271802811019.jpg" alt="5a66f29dNd766f214.jpg"/></p>', 2, 0),
(11, '江青月照人', '艺网臻选 原创作品《江青月照人》当代水墨装饰画住宅客厅书房玄关卧室背景墙壁酒店挂画 无框', '凌贵元', '2018-10-23 05:21:34', 0, '/10.11cloth/uploadimg/2018-10-23/1540272094.jpg', '<p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span><span class="inner_title" style="margin: 0px 10px; padding: 0px; display: inline-block; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">艺术家</span><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);">/</span></p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181023/1540272009121956.jpg" title="1540272009121956.jpg" alt="5a30a7e3N26e7b1b2.jpg"/></span></p><p></p><p style="text-align: center;"><span class="name_ch" style="margin: 0px; padding: 0px; font-size: 16px; font-weight: 700;">凌贵元</span></p><p style="text-align: center;">出生于山东 毕业于四川美术学院 举办“身负万箭的凯旋者”、“光的深处”等个展</p><p style="text-align: center;"><span style="color: rgb(153, 153, 153); font-family: 宋体; font-size: 20px; text-align: center; background-color: rgb(247, 247, 247);"><img src="/10.11cloth/uploads/20181023/1540272087718157.jpg" title="1540272087718157.jpg" alt="5afa65d8Nae2ad053 (1).jpg"/></span><br/></p>', 3, 0),
(12, '单身狗', '稀奇艺术 向京新作《单身狗》雕塑摆件宠物造型限量款艺术品 《单身狗》', ' 向京', '2018-10-23 05:24:59', 1, '/10.11cloth/uploadimg/2018-10-23/1540272299.jpg', '<p style="text-align: center;">/<span style="margin: 0px 10px; padding: 0px; color: rgb(40, 40, 40); font-family: &quot;Microsoft YaHei&quot;;">艺术品介绍</span>/</p><p style="text-align: center;">材质：玻璃钢&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品牌：稀奇</p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540272247854740.jpg" title="1540272247854740.jpg" alt="5b764102N72758089.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540272265698707.jpg" title="1540272265698707.jpg" alt="5b764102Ne145fcd0.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540272285486904.jpg" title="1540272285486904.jpg" alt="5b764102N58a91070.jpg"/></p>', 4, 0),
(13, 'option1', '雅物匠心 吴冠中大师《江南水乡》 新中式水墨国画 客厅装饰画挂画沙发背景墙画 原作版画 装裱高120×长240cm', ' 吴冠中', '2018-10-23 07:36:05', 0, '/10.11cloth/uploadimg/2018-10-23/1540280165.jpg', '<p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540280138392320.jpg" title="1540280138392320.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540280138694834.jpg" title="1540280138694834.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181023/1540280138558380.jpg" title="1540280138558380.jpg"/></p><p><br/></p>', 3, 0),
(19, '黑荔枝系列', '买买艺术 黑荔枝系列版画 油画 客厅装饰画 卧室装饰画 玄关餐厅装饰画 北欧背景墙装饰画 大象的舞步 画框尺寸45*35cm', '黑荔枝', '2018-10-24 10:34:10', 0, '/10.11cloth/uploadimg/2018-10-24/1540377250.png', '<p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377164945193.jpg" title="1540377164945193.jpg" alt="5bc07605N2815d15d.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377184281729.jpg" title="1540377184281729.jpg" alt="5bc07605N5921099b.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377211196655.jpg" title="1540377211196655.jpg" alt="5bc07621Nafc2ce19.jpg"/></p>', 2, 0),
(20, '梵高艺术系列', '买买艺术 梵高《星空》《罗纳河上的星夜》艺术版画 客厅装饰画 儿童艺术版画 卧室餐厅公司展会装饰画 星空 画框尺寸35*45cm', '梵高', '2018-10-24 10:36:23', 3, '/10.11cloth/uploadimg/2018-10-24/1540377383.jpg', '<p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377341660236.jpg" title="1540377341660236.jpg" alt="5bc06f5aN29f4de4a.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377356125054.jpg" title="1540377356125054.jpg" alt="5bc06f59Nbf6a41ca.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377376441118.jpg" title="1540377376441118.jpg" alt="5bc06f59Nfb2e8340.jpg"/></p>', 2, 0),
(21, '北海2', '艺术北京 王玉平《北海2》客客厅装饰画 现代中式油画 挂画 艺术版画 玄关餐厅卧室办公室装饰画 艺术版画 装裱尺寸：54×45cm', '王玉平', '2018-10-24 10:39:02', 2, '/10.11cloth/uploadimg/2018-10-24/1540377542.jpg', '<p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377457126083.jpg" title="1540377457126083.jpg" alt="5ad983c6Nc76d9f53.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377491882065.jpg" title="1540377491882065.jpg" alt="5ad983c5N3a57ccdb.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377504725687.jpg" title="1540377504725687.jpg" alt="5ad983c8Ne8aa038c.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377519100651.jpg" title="1540377519100651.jpg" alt="5ad983c8N32a4ccad.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540377537308968.jpg" title="1540377537308968.jpg" alt="5ad983c8Ncde890b0.jpg"/></p>', 2, 0),
(22, '深刻的修行', '艾米李畫廊 他们+《深刻的修行》限量签名版画 全球限量199版', '他们+', '2018-10-24 10:41:58', 0, '/10.11cloth/uploadimg/2018-10-24/1540377718.jpg', '<p><img src="/10.11cloth/uploads/20181024/1540377656120041.jpg" title="1540377656120041.jpg" alt="5b4c33f6Nc774f2dc.jpg"/></p><p><img src="/10.11cloth/uploads/20181024/1540377643874836.jpg" title="1540377643874836.jpg" alt="5b4c33f7N97a786fa.jpg"/></p><p><img src="/10.11cloth/uploads/20181024/1540377707107691.jpg" title="1540377707107691.jpg" alt="5b4c33f7N5fd56478.jpg"/></p><p><br/></p><p><img src="/10.11cloth/uploads/20181024/1540377677132426.jpg" title="1540377677132426.jpg" alt="5b4c33f7Nd0c64e9c.jpg"/></p>', 2, 0),
(23, '开花的巴旦杏树枝', ' 买买艺术 梵高《开花的巴旦杏树枝》艺术版画抽象装饰画玄关卧室餐厅客厅沙发电视背景墙挂画 纯净 画框尺寸45×35cm', ' 梵高', '2018-10-24 10:50:03', 0, '/10.11cloth/uploadimg/2018-10-24/1540378203.jpg', '<p style="text-align: center;"><img src="http://localhost/10.11cloth/uploads/20181024/1540378178637860.jpg" title="1540378178637860.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540378178363575.jpg" title="1540378178363575.jpg"/></p><p style="text-align: center;"><img src="/10.11cloth/uploads/20181024/1540378178109128.jpg" title="1540378178109128.jpg"/></p><p><br/></p><p><br/></p>', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `manage`
--

CREATE TABLE `manage` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manage`
--

INSERT INTO `manage` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `position`
--

CREATE TABLE `position` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `position`
--

INSERT INTO `position` (`id`, `title`) VALUES
(1, '轮播'),
(2, '侧边');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `manage`
--
ALTER TABLE `manage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `position`
--
ALTER TABLE `position`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
