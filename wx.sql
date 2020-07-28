-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2020-02-23 12:52:51
-- 服务器版本： 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wx`
--

-- --------------------------------------------------------

--
-- 表的结构 `find`
--

CREATE TABLE `find` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `src` varchar(1000) NOT NULL COMMENT '图片路径',
  `type` varchar(100) NOT NULL COMMENT '图片类型',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(50) NOT NULL COMMENT '商品价格',
  `text` varchar(50) NOT NULL COMMENT '商品介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发现数据表';

-- --------------------------------------------------------

--
-- 表的结构 `gouwu`
--

CREATE TABLE `gouwu` (
  `src` varchar(1000) NOT NULL COMMENT '商品图片',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(20) NOT NULL COMMENT '商品价格',
  `number` varchar(10) NOT NULL COMMENT '商品数量',
  `tel` varchar(20) NOT NULL COMMENT '用户',
  `id` varchar(100) NOT NULL COMMENT 'ID账号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

--
-- 转存表中的数据 `gouwu`
--

INSERT INTO `gouwu` (`src`, `name`, `price`, `number`, `tel`, `id`) VALUES
('https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/53e729d30746033a042d8ae9399553a7.jpg?thumb=1&w=344&h=280', 'Redmi Note 8', '899', '10', '17730662313', '1582371631366'),
('https://i8.mifile.cn/v1/a1/86143982-11ca-5249-e90c-eecfdb9b98a0.webp', 'Redmi K20', '1999', '2', '17730662313', '1582380499927');

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE `home` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `type` varchar(100) NOT NULL COMMENT '图片数据类型',
  `src` mediumtext NOT NULL COMMENT '图片',
  `text` varchar(1000) NOT NULL COMMENT '商品描述',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(100) NOT NULL COMMENT '商品价格',
  `state` varchar(50) NOT NULL COMMENT '上下架标示',
  `number` varchar(50) NOT NULL COMMENT '商品数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='首页数据';

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`id`, `type`, `src`, `text`, `name`, `price`, `state`, `number`) VALUES
('1582189620', 'swiper', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/dc4c461bd70ad225a51b0d522c1d75fb.jpg?thumb=1&w=720&h=360', '0', '0', '0', 'true', '0'),
('1582189696', 'swiper', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ff3e608e7f4587b5bf62ea59efaf26e9.jpg?thumb=1&w=720&h=360', '0', '0', '0', 'true', '0'),
('1582189724', 'swiper', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0101ac3572bc6f5f0eb044c69e2c8788.jpg?thumb=1&w=720&h=360', '0', '0', '0', 'true', '0'),
('1582189829', 'b', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cb65daec7ef7b52cc785f88f78efba37.png?thumb=1&w=144&h=152', '0', '0', '0', 'true', '0'),
('1582189856', 'b', 'https://i8.mifile.cn/v1/a1/eb5024fe-dfe3-6e53-3e18-675bef5fa06e.webp', '0', '0', '0', 'true', '0'),
('1582189872', 'b', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8a3d25fdc76472277b6d342d12aa7ebe.jpg?thumb=1&w=144&h=152', '0', '0', '0', 'true', '0'),
('1582189900', 'b', 'https://i8.mifile.cn/v1/a1/e8bc849a-0a3b-21a0-6810-7da3a3903dee.webp', '0', '0', '0', 'true', '0'),
('1582189916', 'b', 'https://i8.mifile.cn/v1/a1/7dbcbf87-6a58-adb6-2f3f-bb3dae3e9c80.webp', '0', '0', '0', 'true', '0'),
('1582190298', 'c', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/53e729d30746033a042d8ae9399553a7.jpg?thumb=1&w=344&h=280', '4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏', 'Redmi Note 8', '899', 'true', '74'),
('1582191336', 'c', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/53e729d30746033a042d8ae9399553a7.jpg?thumb=1&w=344&h=280', '6400万旗舰级全场景四摄 / 前置2000万 AI美颜相机 / G90T专业游戏芯片，液冷散热 / 6.53英寸水滴全面屏 / 4500mAh大电量 / 标配18W快充 / 康宁大猩猩保护玻璃 / 多功能NFC / 红外遥控功能 / Game Turbo2.0游戏加速', 'Redmi Note 8 Pro', '1599', 'true', '100'),
('1582191405', 'c', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/905c13a84d8b70c9b9f4e3dee10a9515.jpg?thumb=1&w=344&h=280', '索尼4800万超清拍照 / 6GB+128GB大存储 / 骁龙675处理器 / 4000mAh大电量 / 18个月超长质保 / 6.3\"水滴屏 / P2i整机防泼溅处理 / 标配18W充电器 / 德国莱茵 TÜV 认证护眼屏', 'Redmi Note 7 Pro', '1199', 'true', '99'),
('1582191461', 'c', 'https://i8.mifile.cn/v1/a1/86143982-11ca-5249-e90c-eecfdb9b98a0.webp', '索尼4800万超广角三摄 / 骁龙730处理器 / 前置2000万升降式相机 / 6.39\"AMOLED全面屏 / 4000mAh超长续航  / 第七代屏下指纹解锁 / 多功能NFC', 'Redmi K20', '1999', 'true', '98'),
('1582191581', 'day', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ff3e608e7f4587b5bf62ea59efaf26e9.jpg?thumb=1&w=720&h=360\r\n', '4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏', 'Redmi Note 8', '899', 'true', '100'),
('1582191885', 'falls', 'https://i8.mifile.cn/v1/a1/82003442-c6b7-3258-cc7a-2a851216ce8a.webp', '4K超高清屏 / 四核64位高性能处理器，支持HDR10 / 2GB+8GB大存储 / 人工智能语音 / 支持壁挂', '小米电视4A 65英寸', '2699', 'true', '99'),
('1582192003', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4b624a157d24822509e1f54316c8417a.jpg?thumb=1&w=344&h=280', '人工智能 / 4K HDR / 超窄边 / 大内存 / 钢琴烤漆 / 杜比音效/高性能 / 海量片源', '小米电视4C 55英寸', '1799', 'true', '100'),
('1582192065', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c57cab6baca6d2b23ba3c81df8b72abc.jpg?thumb=1&w=344&h=280', '性能增强版酷睿™处理器 / GeForce ®MX250独显，全力升级 / 14寸超窄边框全高清屏幕 / 轻薄便携长续航 / 支持Modern Standby，小米手环疾速解锁', 'RedmiBook 14 i7 8G 512GB MX250', '4599', 'true', '100'),
('1582192191', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/399cfcaa4aae2766733e46704935bdd4.jpg?thumb=1&w=344&h=280', '酷睿i5处理器 / 轻薄全金属机身 / MX250独立显卡 / 9.5小时超长续航 / FHD全高清屏幕 / 指纹解锁 / 512GB固态硬盘 / 兼顾办公娱乐与轻薄的高性能笔记本', 'Air 13.3\" 2019款 ', '5699', 'true', '100'),
('1582192252', 'falls', 'https://i8.mifile.cn/v1/a1/1ed6a607-21e5-8d85-e0e9-dfb07571fc6a.webp', '第八代酷睿处理器 ／ 72%NTSC高色域窄边框全高清屏 ／ 256G PCIe高速固态 ／ 双烤不限频不降频', '小米游戏本15.6\"', '7999', 'true', '100'),
('1582192312', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/552e42b8706ee8d0bd3e048d2a5c4316.jpg?thumb=1&w=360&h=360', '国标双A+级洗烘能力 / 22种洗烘模式 / 智能投放洗涤剂 / 支持小爱同学语音遥控 / 支持OTA在线智能升级 / 智能空气洗 / 除菌率达99.9%+', '米家互联网洗烘一体机Pro 10kg', '2999', 'true', '100'),
('1582192383', 'falls', 'https://i8.mifile.cn/v1/a1/c585ed38-bee4-2f3c-c413-a1af154a74b3.webp', '全直流变频，省电节能 / 高效制冷热 / 超静音 / 智能控制 / 官网购买，免预约安装，签收后服务人员主动联系', '空调（1.5匹/变频/一级能效）', '1999', 'true', '100'),
('1582197536', 'falls', 'https://i8.mifile.cn/v1/a1/27721d21-782a-32e8-772b-462652d9acde.webp', '国标最高A+级洗净能力 / 智能空气洗 / 烘干除菌率达99.9%+ / 高温筒自洁 / 一级能效，省水省电', '米家互联网洗烘一体机10kg', '1999', 'true', '100'),
('1582197596', 'falls', 'https://i8.mifile.cn/v1/a1/75f5a1ad-e2c6-36a9-fd56-66d253cc0469.webp', '快速制冷热 / 轻松除湿  / 降噪静音 / 典雅外观 / 售后无忧 / 官网购买，免预约安装，签收后服务人员主动联系', '空调（大1匹/定频/三级能效）', '1699', 'true', '100'),
('1582197682', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/67af8c5df281feb89083c94a69ad4e23.jpg?thumb=1&w=344&h=280', '全新十代酷睿处理器 / MX250独显 / 14寸超窄边框高清屏 / 小米手环极速解锁 / 炫酷多彩任你挑选', 'RedmiBook 14 增强版 ', '4299', 'true', '100'),
('1582197767', 'falls', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/896d989bcdae584906c36f4a4e5fa89b.jpg?thumb=1&w=344&h=280', '4K HDR / 人工智能语音 / 钢琴烤漆 / 超窄边 / 2GB+8GB大存储 / 海量片源 / 杜比音效', '小米电视4C 50英寸', '1599', 'true', '100'),
('1582197835', 'falls', 'https://i8.mifile.cn/v1/a1/1ed6a607-21e5-8d85-e0e9-dfb07571fc6a.webp', '第八代酷睿处理器 ／ 72%NTSC高色域窄边框全高清屏 ／ 256G PCIe高速固态 ／ 双烤不限频不降频', '小米游戏本15.6', '7999', 'true', '100'),
('1582197916', 'f', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/85ea26a99c704861af8e29bf7f249fed.jpg?thumb=1&w=720&h=280', '0', '0', '0', 'true', '0'),
('1582249347', 'swiper', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ea4b76ca6ada2019936b37c1721afa8b.jpg?thumb=1&w=720&h=360', '0', '0', '0', 'true', '0'),
('1582249367', 'swiper', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1e9cb3093cc34117fb3d7d631c274aca.jpg?thumb=1&w=720&h=360', '0', '0', '0', 'true', '0'),
('1582266688', 'findtop', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fd6d484672d40a1f28f4794aed41a36c.jpg?w=800&h=800', '0', '优先购', '0', 'true', '0'),
('1582266715', 'findtop', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/920f7254ee2102d937195c2e1700d453.png', '0', '赢好礼', '0', 'true', '0'),
('1582266739', 'findtop', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/bd013afce5743575e012cf0d2bf0a6d1.jpg?w=800&h=800', '0', '线下门店', '0', 'true', '0'),
('1582267302', 'find1', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/bef874f06e7467b43cc4c09dc02d4e81.jpg?thumb=1&w=696&h=436', '砍价', '爆品一分拿', '0', 'true', '0'),
('1582267400', 'find2', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6f85793e8033fa0b45d3c858824db447.jpg?thumb=1&w=696&h=436', '活动', '抽奖赢好礼', '0', 'true', '0'),
('1582267439', 'find3', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/369da5b95afd2dec52fdb2329810b2fc.jpg?thumb=1&w=696&h=436', '专题', '你所向往的智能生活小米为你实现', '0', 'true', '0'),
('1582268257', 'choocetop', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fd6d484672d40a1f28f4794aed41a36c.jpg?w=800&h=800', '0', '0', '0', 'true', '0'),
('1582269007', 'chooce', 'https://i8.mifile.cn/v1/a1/22f203ab-44f4-6b89-06b4-e01e6f00c7f8.webp', '4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', 'Redmi 7A', '549', 'true', '100'),
('1582269062', 'chooce', 'https://i8.mifile.cn/v1/a1/734e5838-b80a-a49f-ea12-5ef05eb513a5.webp', '前置3200万自拍 / 索尼4800万超广角三摄 / 4030mAh大电量 / 多色炫彩轻薄机身 / 6.088英寸三星 AMOLED水滴屏 / 首发骁龙665处理器 / 第七代屏幕指纹 / 全新Mimoji萌拍 / 红外遥控功能', '小米CC9e', '1299', 'true', '100'),
('1582269130', 'chooce', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9dfc8cb973124fddf32067b76dfb3e8f.jpg?thumb=1&w=344&h=280', '100%美图相机，前置3200万，自拍美得更自然 / 索尼4800万超广角三摄，拍风景、建筑、多人合影，画面更震撼 / 美图经典人像，不修图也好看 / AI弱光人像，暗光环境也能拍出水光肌 / 全身美型，变美不变形 / 4030mAh大电量，足够尽兴玩一天 / 美图定制仙女配色、轻薄机身 / 6.39英寸三星 AMOLED水滴屏 / 骁龙710处理器 / 第七代屏幕指纹解锁 / 支持NFC和红外遥控', '小米CC9 8GB+256GB 美图定制版', '1999', 'true', '100'),
('1582270074', 'chooce', 'https://i8.mifile.cn/v1/a1/7d583942-b8f9-951a-1f27-c836b86c1473.webp', '前置3200万自拍 / 索尼4800万超广角三摄 / 多色炫彩轻薄机身 / 6.39英寸三星 AMOLED水滴屏 /4030mAh大电量 /  骁龙710处理器 / 屏幕指纹 / NFC功能 / 红外遥控功能 / Game Turbo2.0游戏加速', '小米CC9', '1699', 'true', '100'),
('1582270172', 'chooce', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/752cf7a42796fc30b22af1224b205dfd.jpg?thumb=1&w=344&h=280', '5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 支持无线FM收音机', 'Redmi 8A', '699', 'true', '100'),
('1582270224', 'chooce', 'https://i8.mifile.cn/v1/a1/01669a1a-aa77-77bd-5425-2709a7451858.webp', '8\" 屏幕，单手可握的追剧神器 / 6000mAh大容量电池 / 支持AI人脸识别 / 后置1300万，前置500万摄像头 / 金属机身，超窄边框 / 骁龙660八核处理器', '小米平板4  8 / 10.1 英寸', '1299', 'true', '100'),
('1582271622', 'goods', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/84320cc3316843227870df7dd3950c6c.jpg?thumb=1&w=221&h=221', '0', '小米米家智能摄像机云台版', '0.5', 'true', '100'),
('1582271661', 'goods', 'https://i8.mifile.cn/v1/a1/552b0df8-6a5c-f4dc-5a2e-12ed62a86bdf.webp', '0', '小米体脂秤2', '1', 'true', '100'),
('1582271707', 'goods', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/02642411cee83d90c46c9503c3003a3e.jpg?thumb=1&w=221&h=221', '0', '米家智能门锁 推拉式 通用版', '0.8', 'true', '100'),
('1582272025', 'goods1', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/eb9b046aded6ab40a20c29603fde342d.jpg?thumb=1&w=221&h=221', '0', '真无线耳机', '2', 'true', '100'),
('1582272065', 'goods1', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/22b20b23e42174d730a2d0a80e16b761.jpg?thumb=1&w=221&h=221', '0', '米家电动牙刷', '0.1', 'true', '100'),
('1582272337', 'prize', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1c90039abfc30576c7803620ead24954.png?thumb=1&w=500&h=200', '2020.02.25 09:30自动开奖', '奖品：小米10 F码 X 10', '0', 'true', '0'),
('1582272424', 'prize', 'https://i8.mifile.cn/v1/a1/eb15b092-da40-8a6f-74c3-38a75cbe2c5d.webp', '2020.02.26 09:30自动开奖', '奖品：小米净水器 F码 X 10', '0', 'true', '0'),
('1582272539', 'prize', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9b3860db2bb5301df3b4a113dea2bac0.jpg?thumb=1&w=720&h=200', '2020.02.27 09:30自动开奖', '奖品：小米无限充电宝青春版 F码 X 10', '0', 'true', '100'),
('1582290236', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b54738f4dce4588f9bd29a5dadf76030.png?thumb=1&w=120&h=120', '骁龙865处理器 / 1亿像素8K电影相机，50倍数字变焦，10倍混合光学变焦 / 双模5G / 新一代LPDDR5内存 / 50W极速闪充+30W无线闪充+10W无线反充 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配WiFi 6 / 超强VC液冷散热  / 4500mAh大电量 / 全功能NFC', '小米10 Pro', '4999', 'true', '100'),
('1582290329', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/acf2e521e29e5afabf6d493203b31f27.png?thumb=1&w=120&h=120', '骁龙865处理器 / 1亿像素8K电影相机 / 双模5G / 新一代LPDDR5内存 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配Wi-Fi 6 / 超强VC液冷散热 / 30W极速闪充+30W无线闪充+10W无线反充 / 4780mAh大电量 / 全功能NFC', '小米10', '3999', 'true', '100'),
('1582290400', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/efd0aa03675839c8f20e8c38de8229c1.png?thumb=1&w=120&h=120', '120Hz高帧率流速屏 / 索尼6400万前后六摄 / 6.67\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', 'Redmi K30', '1699', 'true', '100'),
('1582290457', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f59489c399bb418dfe519b54c89c327d.png?thumb=1&w=120&h=120', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'Redmi K30 5G', '2299', 'true', '100'),
('1582290524', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/15ee8b3b156837eecc9ae9660e1b869b.png?thumb=1&w=120&h=120', '1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器', '小米CC9 Pro', '2799', 'true', '100'),
('1582290618', '新品', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/266ad6dd5146deaf3ae3602a89e7a217.png?thumb=1&w=120&h=120', '创新环绕屏，极具未来感的智能交互体验 / 1亿像素超高清相机，超大感光元件 / 5G双卡全网通超高速网络 / 骁龙855Plus旗舰处理器 / 纳米硅基锂离子4050mAh电池，40W超级快充 / 钛合金+精密陶瓷+蓝宝石镜片前沿工艺', '小米MIX Alpha', '19999', 'true', '100'),
('1582290756', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ea816771c7470bec72a893dd0bfccee9.png?thumb=1&w=120&h=120', 'AMOLED 高清大屏 / 14天超长续航 / 110+款个性表盘 / 多彩潮流表带 / 10大运动模式 / 5ATM防水 / 多功能NFC / 小爱同学语音助理', '小米手表Color', '799', 'true', '100'),
('1582290821', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/25df4ca88e5c65d76d63d530fe727965.png?thumb=1&w=120&h=120', '通用快充 / 30W大功率无线充电 / 边充电边看剧 / 小爱息屏', '小米无限充蓝牙音箱', '249', 'true', '100'),
('1582290883', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/8070925c6ba4d476392499454b973ff8.png?thumb=1&w=120&h=120', '支持小米10 Pro 50W MAX 疾速闪充 / 10000mAh大容量 / 可上飞机 / 两口同时输出 / 智能兼容 / 仿陶瓷高光', 'x小米移动电源3 ', '249', 'true', '100'),
('1582290929', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/dfbe41b342875d08208c3e39aaca8d95.png?thumb=1&w=120&h=120', '快速测温 / 灵敏精准 / 智能APP / 新颖收纳', '米家电子体温计', '69', 'true', '100'),
('1582290980', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/efe34d11c3b15ef34d6e3c7154d4ad28.png?thumb=1&w=120&h=120', '三千兆无线速率 / 高通6核处理器 / 6根高性能外置信号放大器 / 512MB大内存 / AIoT智能天线 / WPA3网络加密', '小米AIoT路由器  AX3600', '599', 'true', '100'),
('1582291030', '众筹', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ce7aaeec82e51a44790959295183f669.png?thumb=1&w=120&h=120', '氮化镓第三代半导体材料 / 效率更高，体积更小，重量更轻 / 45分钟为小米10 Pro充电100% / 内含5A大电流，1米长数据线，充电更快 / 兼容大多数Type-C型手机，笔记本电脑，平板电脑', '小米GaN充电器 Type-C 65W ', '149', 'true', '100'),
('1582291291', '小米手机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b54738f4dce4588f9bd29a5dadf76030.png?thumb=1&w=120&h=120', '骁龙865处理器 / 1亿像素8K电影相机，50倍数字变焦，10倍混合光学变焦 / 双模5G / 新一代LPDDR5内存 / 50W极速闪充+30W无线闪充+10W无线反充 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配WiFi 6 / 超强VC液冷散热  / 4500mAh大电量 / 全功能NFC', '小米10 Pro', '4999', 'true', '100'),
('1582291355', '小米手机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f6c2fbc0a96d51f5e713fd3daae8f73b.png?thumb=1&w=120&h=120', '前置3200万自拍 / 索尼4800万超广角三摄 / 4030mAh大电量 / 多色炫彩轻薄机身 / 6.088英寸三星 AMOLED水滴屏 / 首发骁龙665处理器 / 第七代屏幕指纹 / 全新Mimoji萌拍 / 红外遥控功能', '小米9 CC', '1299', 'true', '100'),
('1582291430', '小米手机', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a78e73027b202757a933083ddd6ffbe0.png?thumb=1&w=120&h=120', '5000mAh大电量 / 最高可选4GB+64GB版本 / 支持18W快充 / Type-C充电接口 / 6.22\"水滴全面屏 / 指纹识别+AI人脸解锁 / 骁龙八核处理器 / 超大音量 / 1200万AI双摄 / 支持红外遥控 / 支持无线FM收音机', 'Redmi 8', '799', 'true', '100'),
('1582291495', 'Redmi', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/99022ce28f145ff5a521c848596295ec.gif', '6400万旗舰级全场景四摄 / 前置2000万 AI美颜相机 / G90T专业游戏芯片，液冷散热 / 6.53英寸水滴全面屏 / 4500mAh大电量 / 标配18W快充 / 康宁大猩猩保护玻璃 / 多功能NFC / 红外遥控功能 / Game Turbo2.0游戏加速', 'Redmi Note 8 Pro', '1599', 'true', '100'),
('1582291540', 'Redmi', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/271b3bd052e735143ee7298f2d6d43fa.gif', '4800万全场景四摄 / 前置1300万美颜相机 / 骁龙665处理器 / 4000mAh超长续航 / 标配18W快充 / 超线性扬声器 / 90%高屏占比 / 康宁大猩猩保护玻璃 / 6.3英寸水滴全面屏', 'Redmi Note 8', '899', 'true', '100'),
('1582291588', 'Redmi', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/efd0aa03675839c8f20e8c38de8229c1.png?thumb=1&w=120&h=120', '120Hz高帧率流速屏 / 索尼6400万前后六摄 / 6.67\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', 'Redmi K30', '1699', 'true', '100'),
('1582291636', 'Redmi', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f59489c399bb418dfe519b54c89c327d.png?thumb=1&w=120&h=120', '双模5G / 三路并发 / 高通骁龙765G / 7nm 5G低功耗处理器 / 120Hz高帧率流速屏 / 6.67\'小孔径全面屏 / 索尼6400万前后六摄 / 最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC', 'Redmi k30 5G', '2299', 'true', '100'),
('1582291691', 'Redmi', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0a7e5f40d33c6260ffe5a5242bc2ec08.png?thumb=1&w=120&h=120', '70英寸震撼巨屏 / 4K画质 细腻如真 / 杜比音效 身临其境 / PatchWall智能系统 内置小爱同学 / 海量好内容 / U盘文件直读 轻松办公 / 无线投屏 分享更方便', 'Redmi 红米电视 70英寸', '3299', 'true', '100'),
('1582291752', '黑鲨', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e6c8a112abab1c03285aa915d731f6c3.png?thumb=1&w=120&h=120', '骁龙855 Plus旗舰处理器/UFS 3.0 高速闪存/液冷3.0+，全域液冷升级/电竞级屏幕压感，操作快人一步/独显DC调光2.0 护眼全新升级', '黑鲨游戏手机2 Pro', '2600', 'true', '100'),
('1582291811', '黑鲨', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/82e9ce98ad3f522c8542c02b701e135f.png?thumb=1&w=120&h=120', '18W双向快充 / 铠甲机身 / 一入三出 / 炫酷灯效', '黑鲨双向移动电源', '119', 'true', '100'),
('1582291870', '电视', 'https://i8.mifile.cn/b2c-mimall-media/033cfa4ab48b9d776dcb69e730022561!120x120.png', '全面屏设计 / 高清分辨率 / 海量内容 / 1G+4G大内存 / 多核处理器', '小米全面屏电视E32C', '749', 'true', '100'),
('1582291930', '电视', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/866dc2dc582f090c42e9e3204b98710b.png?thumb=1&w=120&h=120', '时尚全面屏设计 超高屏占比 / 全高清分辨率 展示更多画面细节 / 内置小爱同学 语音操控更便捷 / 智能PatchWall系统 / 智能家居控制中心 / 海量好内容 满足全家人的观看需求', '小米全面屏电视43英寸 E43X', '1266', 'true', '100'),
('1582291993', '电视', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/22501ec50470010114f63fc43e99e677.png?thumb=1&w=120&h=120', '4K HDR / 人工智能语音 / 钢琴烤漆 / 超窄边 / 2GB+8GB大存储 / 海量片源 / 杜比音效', '小米电视4C 50英寸', '1599', 'true', '100'),
('1582292051', '电视', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e9a323fab756bbacece51d6ef0b45e24.png?thumb=1&w=120&h=120', '4K广色域屏幕  画质细腻若真/时尚全面屏设计/金属机身 尽显简约之美/支持8K视频内容/杜比震撼音效/支持远场语音  一呼即应/3GB+32GB大存储', '小米电视5 55英寸', '2999', 'true', '100'),
('1582292100', '电视', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2ea4dd3a0a93e66cffa63dbb6aae34a1.png?thumb=1&w=120&h=120', '75英寸沉浸体验 / 4K HDR / 金属机身 / 杜比+DTS / 海量片源 / PatchWall人工智能语音系统 / 语音遥控器 / 丰富接口', '小米电视4s 75英寸', '4599', 'true', '100'),
('1582292192', '大家电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c15a420b76232100bd466f1a0060ed97.png?thumb=1&w=120&h=120', '占地小，约0.25㎡占地面积 / 7挡温控调节 / 鲜肉微冻区，冻肉即取即切 / 一天仅用耗电0.58度 / 两门三温区，多效保鲜更实用', '米家两门冰箱 160L', '899', 'true', '100'),
('1582292247', '大家电', 'https://i8.mifile.cn/b2c-mimall-media/3f00551566f5b5f08f843403d8688a84!120x120.png', '高效制冷热 / 全直流变频，节能省电 / 自清洁，省心省力 / 全屋家电，智能互联 / 静音设计，静享生活 / 官网购买，免预约安装，签收后服务人员主动联系', '空调', '2299', 'true', '100'),
('1582292293', '大家电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7bdf9ac76bed032d94a638e88aa8aa0d.png?thumb=1&w=120&h=120', '立体送风，高效控温 / 直流变频，节能省电 / 自清洁，省心省力 / 全屋家电，智能互联 / 静音设计，静享生活 / 官网购买，免预约安装，签收后服务人员主动联系', '空调A（2匹/变频/超一级能效）', '4499', 'true', '100'),
('1582292383', '大家电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/46342e7fb6975ab24c1365948a8bed99.png?thumb=1&w=120&h=120', '国标最高A+级洗净能力 / 智能空气洗 / 烘干除菌率达99.9%+ / 高温筒自洁 / 一级能效，省水省电', '米家互联网洗烘一体机10kg', '1999', 'true', '100'),
('1582292453', '大家电', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/58b6b7cd244f22d30c34eccf3196f38d.png?thumb=1&w=120&h=120', '8kg大容量 / 10种洗涤模式 / 10挡水位调节 / 耐腐蚀金属机身 / 桶自洁、桶风干模式避免细菌滋生 / 空气阻尼减震 / 免运费及基础安装费', 'Redmi全自动波轮洗衣机1A 8kg', '799', 'true', '100'),
('1582292534', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4e4468a3042a141668132135e8e4e80.png?thumb=1&w=120&h=120', '21:9宽广全景视野 /三星面板+2K超清分辨率 / 1500R极致大曲率 / 144Hz刷新率 / 121%sRGB宽广色域 / 支持升降,旋转,壁挂', '小米曲面显示器 34英寸', '2499', 'true', '100'),
('1582292598', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/71c5e84be42a4581c67bd2fe5d4b8ffb.png?thumb=1&w=120&h=120', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 /  小米互传 / 专业「飓风」散热系统 / 11小时长续航', 'RedmiBook 13 独显', '4499', 'true', '100'),
('1582292651', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/840f5ca973e34683d3f6cbba7e1b1691.png?thumb=1&w=120&h=120', '满血版锐龙 3000系列处理器 / 搭载Radeon Vega Graphics显卡 / 强劲散热系统 / 全新小米互传', 'RedmiBook 14 锐龙版', '3799', 'true', '100'),
('1582292708', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0b15efc342a60b6016c6c1092884f49d.png?thumb=1&w=120&h=120', '全高清屏幕 / 长续航全金属 / 超窄边框  / 像杂志一样随身携带 / 哈曼高品质扬声器', '小米笔记本Air 12.5\" 2019款', '3599', 'true', '100'),
('1582292758', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9a05e4ac5c3bdcb4e56ed9fcc79ed6d8.png?thumb=1&w=120&h=120', '酷睿i5处理器 / 轻薄全金属机身 / MX250独立显卡 / 9.5小时超长续航 / FHD全高清屏幕 / 指纹解锁 / 512GB固态硬盘 / 兼顾办公娱乐与轻薄的高性能笔记本', 'Air 13.3\" 2019款 ', '5699', 'true', '100'),
('1582292819', '电脑办公', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ff54c201797d264884ba03c7bf777b2a.png?thumb=1&w=120&h=120', 'Intel第9代标压处理器/RTX 2060独立显卡/144Hz高刷新率屏幕/一键龙卷风【酷冷】散热系统', '游戏本2019款', '8999', 'true', '100'),
('1582292877', '小爱智能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e2991b9ba166f447eb6615cce86d2337.png?thumb=1&w=120&h=120', '750mL超大音腔容积 / AUX IN 支持有线连接 / 组合立体声 / 专业级DTS音效 / Hi-Fi级音频芯片 / 蓝牙Mesh网关', '小米小爱音响', '269', 'true', '100'),
('1582292930', '小爱智能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/fd4310cbae8fbdaba3649c68d4a7ae96.png?thumb=1&w=120&h=120', '750mL超大音腔容积 / AUX IN 支持有线连接 / 组合立体声 / 专业级DTS音效 / Hi-Fi级音频芯片 / 支持红外遥控传统家电 / 蓝牙Mesh网关', '小米小爱音响 Pro', '299', 'true', '100'),
('1582292971', '小爱智能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f7627c0014e279da55829cee0b51672c.png?thumb=1&w=120&h=120', '便携学习机 / 科学背单词 / 优质听力资源 / 持久录音笔 / 海量内容持续引入 / 随身翻译机', '小爱老师', '449', 'true', '100'),
('1582293024', '小爱智能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/da5c697534905a5ca9444984fc386feb.png?thumb=1&w=120&h=120', '智能设备控制 / 人工智能语音对话 / 就近唤醒 / 趣味闹钟 / 孩子的超级故事王', '小爱音响Play', '99', 'true', '100'),
('1582293112', '小爱智能', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/284988b6415cac78fd80dfaeef4a115f.png?thumb=1&w=120&h=120', '8英寸平板级大屏 / 三重低音增强 / 第三代小爱同学', '小米小爱触屏音响Pro 8', '599', 'true', '100'),
('1582293173', '路由器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b1763f6fb0d8df37e77e120a8aefb676.png?thumb=1&w=120&h=120', '三千兆无线速率 / 高通6核处理器 / 6根高性能外置信号放大器 / 512MB大内存 / AIoT智能天线 / WPA3网络加密', '小米AIoT路由器  AX3600', '599', 'true', '100'),
('1582293220', '路由器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e4eca203e55c2a1de43da066c8ea42fb.png?thumb=1&w=120&h=120', '2033Mbps无线速率 / 2.4G/5G双频并发 / 全千兆网口 / 双核四线程CPU 6根高增益全向天线 / 6路高性能信号放大器 / 小米智能家居优化连接 / 128M大内存 / 内置网易UU游戏加速', 'Redmi路由器AC2100', '169', 'true', '100'),
('1582293264', '路由器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/96368011161e6be0a0f1986f571ec11c.png?thumb=1&w=120&h=120', '2100M高速路由 / 全终端游戏加速 / 全千兆网口 / 双核CPU高速并发多任务 / 360°隐藏天线 / 全方向均匀覆盖', '小米路由器AC2100', '229', 'true', '100'),
('1582293308', '路由器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/df4368f5353ea13dceb1ba07ea6f6f43.png?thumb=1&w=120&h=120', '多通道高速混合传输 / 高通4核CPU / 4颗独立信号放大器 / 256MB超大内存 / 千兆电力线 / 不分子母 / 专为小米智能家居优化', '小米路由器Mesh（两只装）', '999', 'true', '100'),
('1582293373', '生活电器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/74b2e513be87c41145e932110d8ea38d.png?thumb=1&w=120&h=120', '专业级除甲醛 / 澎湃净化力，适用84㎡大空间* / 高效净化PM2.5、过敏原和细菌', '米家空气净化器MAX 增强版\r\n\r\n', '2199', 'true', '100'),
('1582293469', '生活电器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/f8dfb1af5a437b65bcc9108b82411265.png?thumb=1&w=120&h=120', '视觉动态导航/高精度地图构建/智能电控水箱/2500Pa超大吸力', '米家扫拖机器人1C', '129', 'true', '100'),
('1582293548', '厨房电器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2bcb1864e7bc020b6029b312ea8604cf.png?thumb=1&w=120&h=120', '800G超大通量，制水速度翻一倍；“真”双出水，厨房用水全净化；新一代OLED屏显水龙头，水质清晰可见；一级水效，纯废水比最高可达3:1；横抽式滤芯设计，换滤芯更方便。', '小米净水器S1 800G', '2399', 'true', '100'),
('1582293610', '厨房电器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1dd1956a3b665c0ba31e6334440344e4.png?thumb=1&w=120&h=120', '3L、4L、5L可选 / 650W大功率 / 支持20分钟热水快饭 / 一键调节加热时间 / 搭配可得24种模式', '米家电饭煲C1', '249', 'true', '100'),
('1582293661', '厨房电器', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ad25d6e16b5f12bd013a3f81455df998.png?thumb=1&w=120&h=120', '99挡微调控火 / 支持低温烹饪 / 100+烹饪模式', '米家电磁炉', '299', 'true', '100'),
('1582293724', '厨房电器', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/9bc543001efd3ef3894211d28fdc6ec1.png?thumb=1&w=120&h=120', '变压沸煮 / 智能微泄压 / 中途开盖 / 安全锁压结构 / 全新 OLED 触控交互体验', '米家电压力锅', '548', 'true', '100'),
('1582293837', '智能穿戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1cf3c44a983afa1461d1fb2df2951d92.png?thumb=1&w=120&h=120', '全新 AMOLED 大屏彩显，支持77种个性主题。拥有20天的超长续航，能用支付宝抬手支付。50米防水，支持游泳模式。还能看微信、看来电、测心率、测睡眠。戴上它，你的改变从今天开始。', '小米手环4', '169', 'true', '100'),
('1582293907', '智能穿戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e5d3ad7c9c04433ac37f539be54363e2.png?thumb=1&w=120&h=120', 'AMOLED 高清大屏 / 14天超长续航 / 110+款个性表盘 / 多彩潮流表带 / 10大运动模式 / 5ATM防水 / 多功能NFC / 小爱同学语音助理', '小米手表Color', '799', 'true', '100'),
('1582293998', '智能穿戴', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/6505670abd6d57f499b0ef442d014150.png?thumb=1&w=120&h=120', '骁龙 821 处理器 / 多项性能优化算法 / 定制 VR 专用 Fast-Switch 2K 超清屏 Oculus 特殊调制衍射光学系统', '智能眼镜', '1799', 'true', '100'),
('1582294088', '智能穿戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/59e758f7b275da31d4729757e9f0764e.png?thumb=1&w=120&h=120', '沉浸式观影不受打扰 / 支持无线投屏 / 搭载MIUI TV系统 / 支持播放外接片源 / 3小时超长续航', '小米头戴影院', '1299', 'true', '100'),
('1582294189', '智能穿戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6f5067c6a067a921d39ecff175dc0e13.png?thumb=1&w=120&h=120', '360度透明黑科技 / 94个零件的悬浮机芯 / 诠释机械美学', '玺佳机械表·T系列 太空TR90', '599', 'true', '100'),
('1582294372', '智能穿戴', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2f36a590e74adfb434d7e181ffe8e068.png?thumb=1&w=120&h=120', '4G 全网通，双摄视频通话 / 双频 GPS 十重安全定位 / AI拍照识物，满足孩子好奇心 / 专业级20米防水 / 1.78英寸全面屏视网膜高清大屏 /   可刷公交卡', '米兔儿童学习手表 4Pro', '1299', 'true', '100'),
('1582294429', '智能家居', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/61332d55403e2fbc83368833748ec65f.png?thumb=1&w=120&h=120', '适用于标准锁体和霸王锁体 / 直插式C级锁芯 / 6种开锁方式 / 7重安全状态检测 / 抵御小黑盒攻击 / 智能联动', '米家智能门锁 推拉式 通用版', '1699', 'true', '100'),
('1582294499', '智能家居', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a6a145b85bb0df4c74d6ccb3c017875e.png?thumb=1&w=120&h=120', '人体监测，AI人脸识别 / 极速安装，强拆警报', '小米米家视频门铃', '239', 'true', '100'),
('1582294554', '车载出行', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/04f4983b3fcd3919736aa52e5a14b746.png?thumb=1&w=120&h=120', '三种骑行模式 / 40km助力骑行 / 大尺寸光感显示屏', '骑记电动助力自行车 新国标版 黑色', '2999', 'true', '100'),
('1582294613', '车载出行', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/70e3ed45b79da86011f9eb54872d7017.png?thumb=1&w=120&h=120', '纯粹驾驶乐趣 / 赛车式运动外观 / 多重安全保障 / 车身长度4挡调节', '平衡车', '2899', 'true', '100'),
('1582294684', '车载出行', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6ee3fde4ba21d615478eba47ee90aef4.png?thumb=1&w=120&h=120', '双脚分离式设计 / 三步轻松上手 / 无需穿脱，踩上就走 / 便携提手，拎着方便', '米家九号平衡论', '499', 'true', '100'),
('1582294744', '个护健康', 'https://i8.mifile.cn/b2c-mimall-media/fbc14b5b4f7c06b53e1e70af21c5784a!120x120.png', '高频震动 / 两档模式 / 进口纤密软毛 / 长续航 / 强防水 / 轻整机', '电动牙刷', '39.9', 'true', '100'),
('1582294781', '个护健康', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9b2f263e1fedc58fb3d1813dbcabc520.png?thumb=1&w=120&h=120', '剃须、洁面、修鬓三合一 / 3刀头 360°浮动 / IFT悬挂浮动减压 / Type-C通用充电口', '剃须刀', '299', 'true', '100'),
('1582294832', '个护健康', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/157728643a4e8fe13b90e413ce1c9d78.png?thumb=1&w=120&h=120', '千万级负离子护发 / 折叠好收纳 / 大风量速干 / 小巧轻盈', '离子吹风机', '99', 'true', '100'),
('1582294886', '数码配件', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7e08ef7ae29c00b7cb4a85ea035cdd56.png?thumb=1&w=120&h=120', '大音量 / 长续航 / 轻盈便携 / 360°环绕立体声 / IP55防尘防水 / 双麦克风降噪通话 / 蓝牙5.0 / type-c接口', '户外蓝牙音箱', '179', 'true', '100'),
('1582294955', '日用百货', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/95cb147bb006db736a9de680a7e2ba96.png?thumb=1&w=120&h=120', '可选尺寸：20英寸、24英寸，环保材料，轻便重量，坚韧有型，4色可选', '旅行箱', '199', 'true', '100'),
('1582295008', '日用百货', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/9260e90124eb9cd1543ea1782bd4ce16.png?thumb=1&w=120&h=120', '4 级防泼水 / 10L容量 / 轻盈背负 / YKK 拉链', '小米背包', '99', 'true', '100'),
('1582295041', '日用百货', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4b0dbb68eab94a3f0aa60859477b1963.png?thumb=1&w=120&h=120', '可容纳15.6英寸电脑 / 耐磨防水 / 方形简约造型 / 轻巧坚固', '双肩包', '128', 'true', '100'),
('1582295103', '有品精选', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/529619e99f2f183523c0c13fd5d97046.png?thumb=1&w=120&h=120', '【有品精选】加强保暖，立体剪裁，抗静电起球，YKK拉链', '加绒衣', '89', 'true', '100'),
('1582295159', '有品精选', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5619447d595b13bd4c90054d1d0cea0d.png?thumb=1&w=120&h=120', '【有品精选】无线手持/ 好看不占地/高效吸尘/持久续航', '随手吸尘器', '349', 'true', '100'),
('1582295242', '服务', 'https://i8.mifile.cn/b2c-mimall-media/fd145936f30c4e3a9a48fa6b728d6aa9!120x120.png', '保修', '手机保障服务', '100', 'true', '100');

-- --------------------------------------------------------

--
-- 表的结构 `site`
--

CREATE TABLE `site` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `tel` varchar(100) NOT NULL COMMENT '用户',
  `name` varchar(100) NOT NULL COMMENT '名字',
  `cell` varchar(100) NOT NULL COMMENT '手机号',
  `address` varchar(100) NOT NULL COMMENT '详细地址',
  `city` varchar(100) NOT NULL COMMENT '省市区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址表';

--
-- 转存表中的数据 `site`
--

INSERT INTO `site` (`id`, `tel`, `name`, `cell`, `address`, `city`) VALUES
('1582436171', '17730662313', '赵梦毓', '17730662313', '张坝沟街道', '陕西省西安市雁塔区'),
('1582436493', '17730662313', '赵梦毓', '17730662313', '杭坝沟街道', '陕西省西安市雁塔区'),
('1582436509', '17730662313', '赵梦毓', '17730662313', '丈八沟街道', '陕西省西安市雁塔区');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `name` varchar(100) NOT NULL,
  `pwod` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`name`, `pwod`, `state`) VALUES
('root', '123', '1582458700');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `tel` varchar(100) NOT NULL COMMENT '手机号',
  `pwo` varchar(100) NOT NULL COMMENT '密码',
  `state` varchar(100) NOT NULL COMMENT '屏蔽状态',
  `pb` varchar(100) NOT NULL COMMENT '屏蔽时间',
  `jf` varchar(100) NOT NULL COMMENT '解封时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `tel`, `pwo`, `state`, `pb`, `jf`) VALUES
('1582276561', '17730662313', 'asd123', 'true', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `find`
--
ALTER TABLE `find`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gouwu`
--
ALTER TABLE `gouwu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
