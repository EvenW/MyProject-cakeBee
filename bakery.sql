-- 设置导入数据字符集
SET NAMES UTF8;
-- 如存在该数据库先删除
DROP DATABASE IF EXISTS bakery;
CREATE DATABASE bakery CHARSET=UTF8;
USE bakery;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bee_index_carousel`
-- 轮播图片表结构
-- ----------------------------
DROP TABLE IF EXISTS bee_index_carousel;
CREATE TABLE `bee_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  `c1` varchar(64) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_index_carousel
-- 轮播图片数据
-- ----------------------------
INSERT INTO `bee_index_carousel` VALUES ('1', 'images/index/banner/3857.jpg', '轮播广告商品1', 'lists.html','show');
INSERT INTO `bee_index_carousel` VALUES ('2', 'images/index/banner/2848.jpg', '轮播广告商品2', 'product_details.html?lid=19','');
INSERT INTO `bee_index_carousel` VALUES ('3', 'images/index/banner/2847.jpg', '轮播广告商品3', 'lists.html','');
INSERT INTO `bee_index_carousel` VALUES ('4', 'images/index/banner/2846.jpg', '轮播广告商品4', 'lists.html','');

-- ----------------------------
-- Table structure for `bee_index_product`
-- 首页楼层
-- ----------------------------
DROP TABLE IF EXISTS `bee_index_product`;
CREATE TABLE `bee_index_product` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `details` varchar(128) default NULL,
  `pic_top` varchar(128) default NULL,
  `pic_bottom` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `href` varchar(128) default NULL,
  `seq_recommended` tinyint(4) default NULL,
  `seq_new_arrival` tinyint(4) default NULL,
  `seq_top_sale` tinyint(4) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_index_product
-- 首页楼层数据
-- ----------------------------
INSERT INTO `bee_index_product` VALUES ('1', '桃芝|樱桃芝士', '桃芝|樱桃芝士details', 'images/index/content/3489.jpg','images/index/content/3523.jpg', '265.00', 'product_details.html?lid=1', '1', '0', '0');
INSERT INTO `bee_index_product` VALUES ('2', '回归|90', '回归|90details', 'images/index/content/3481.jpg','images/index/content/3515.jpg', '225.00', 'product_details.html?lid=1', '2', '0', '0');
INSERT INTO `bee_index_product` VALUES ('3', '初心|牛油果低脂蛋糕', '初心|牛油果低脂蛋糕details', 'images/index/content/3473.jpg','images/index/content/3507.jpg', '335.00', 'product_details.html?lid=1', '3', '0', '0');
INSERT INTO `bee_index_product` VALUES ('4', '向往|酸樱桃椰蓉', '向往|酸樱桃椰蓉details', 'images/index/content/3477.jpg','images/index/content/3511.jpg', '225.00', 'product_details.html?lid=1', '4', '0', '0');
INSERT INTO `bee_index_product` VALUES ('5', '北海道巧克力双层芝士', '桃芝|樱桃芝士details', 'images/index/content/3475.jpg','images/index/content/3509.jpg', '188.00', 'product_details.html?lid=1', '0', '1', '0');
INSERT INTO `bee_index_product` VALUES ('6', '北海道抹茶双层芝士', '北海道抹茶双层芝士details', 'images/index/content/3476.jpg', 'images/index/content/3510.jpg','188.00', 'product_details.html?lid=1', '0', '2', '0');
INSERT INTO `bee_index_product` VALUES ('7', '北海道双层芝士', '桃芝|樱桃芝士details', 'images/index/content/3474.jpg', 'images/index/content/3508.jpg','168.00', 'product_details.html?lid=1', '0', '3', '0');
INSERT INTO `bee_index_product` VALUES ('8', '珍味|沙棘任小米蛋糕', '珍味|沙棘任小米蛋糕details', 'images/index/content/3893.jpg','images/index/content/3894.jpg', '335.00', 'product_details.html?lid=1', '0', '4', '0');
INSERT INTO `bee_index_product` VALUES ('9', '巧克力', '法国法芙娜巧克力', 'images/index/content/2815.jpg','images/index/content/2815.jpg', '265.00', 'product_details.html?lid=1', '0', '0', '1');
INSERT INTO `bee_index_product` VALUES ('10', '松露油', '意大利Alba松露油', 'images/index/content/2816.jpg', 'images/index/content/2816.jpg','265.00', 'product_details.html?lid=1', '0', '0', '2');
INSERT INTO `bee_index_product` VALUES ('11', '枫糖', '加拿大枫糖', 'images/index/content/2817.jpg', 'images/index/content/2817.jpg','265.00', 'product_details.html?lid=1', '0', '0', '3');
INSERT INTO `bee_index_product` VALUES ('12', '蜂蜜', '健康密码-蜂蜜', 'images/index/content/2818.jpg', 'images/index/content/2818.jpg','265.00', 'product_details.html?lid=1', '0', '0', '4');

-- ----------------------------
-- Table structure for `bee_cake`
-- 蛋糕明细表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake`;
CREATE TABLE `bee_cake` (
  `cid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  -- `promise` varchar(64) default NULL,
  -- `spec` varchar(64) default NULL,
  `cname` varchar(32) default NULL,
  -- 尺寸
  `size` int(11) default NULL,
  -- 口味：1巧克力 2芝士 3慕斯 4冰激凌 5含酒 6坚果 7奶油 8水果 9咖啡
  `flavour` varchar(32) default NULL,
  -- `resolution` varchar(32) default NULL,
  -- 食用人数－最少
  -- `min_people` int(11) default NULL,
  -- -- 食用人数－最大
  -- `max_people` int(11) default NULL,
  -- 蜜度1，2，3，4，5
  `level1` int(11) default NULL,
  -- 芝度1，2，3，4，5
  `level2` int(11) default NULL,
  -- 脂度1，2，3，4，5
  `level3` int(11) default NULL,
  -- 分类：1新品 2生日 3聚会 4下午茶 5婚礼 6送全国
  `category` varchar(256) default NULL,
  -- 人群：1老人 2儿童 3孕妇 4情侣
  `propose` varchar(128) default NULL,
  `details` varchar(1024) default NULL,
  `shelf_time` bigint(20) default NULL,
  `sold_count` int(11) default NULL,
  `is_onsale` tinyint(1) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake
-- 蛋糕明细表数据
-- ----------------------------
INSERT INTO `bee_cake` VALUES ('1', '1', '初心|牛油果低脂蛋糕', '牛油果的清香弥漫在口腔，和着乳清奶酪咀嚼，仿佛热带的阳光，洒满心房，也惊叹牛油果的神奇，包容所有的味道，升华所有的味觉，伟大的感动，总在不言中。', '335.00', '蛋糕', '16', '芝士｜慕斯｜坚果｜水果｜咖啡', '3', '', '1', '新品｜生日｜聚会', '老人｜儿童｜孕妇｜情侣', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150123456789', '2968', '1');

-- ----------------------------
-- Table structure for `bee_cake_family`
-- 商品分类表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_family`;
CREATE TABLE `bee_cake_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_family
-- 商品分类表数据
-- ----------------------------
INSERT INTO `bee_cake_family` VALUES ('1', '蛋糕');
INSERT INTO `bee_cake_family` VALUES ('2', '食材');

-- ----------------------------
-- Table structure for `bee_cake_pic`
-- 商品图片表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_pic`;
CREATE TABLE `bee_cake_pic` (
  `pid` int(11) NOT NULL auto_increment,
  -- 蛋糕明细id
  `cid` int(11) default NULL,
  -- 小图
  `sm` varchar(128) default NULL,
  -- 中图
  `md` varchar(128) default NULL,
  -- 大图
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_pic
-- 商品图片表数据
-- ----------------------------
INSERT INTO `bee_cake_pic` VALUES ('1', '1', 'image/product/sm/57b12a31N8f4f75a3.jpg', 'images/index/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `bee_cake_pic` VALUES ('2', '1', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');
INSERT INTO `bee_cake_pic` VALUES ('3', '1', 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg');
INSERT INTO `bee_cake_pic` VALUES ('4', '2', 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');
INSERT INTO `bee_cake_pic` VALUES ('5', '2', 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg');

-- ----------------------------
-- Table structure for `bee_order`
-- 订单表
-- ----------------------------
DROP TABLE IF EXISTS `bee_order`;
CREATE TABLE `bee_order` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_order
-- ----------------------------

-- ----------------------------
-- Table structure for `bee_order_detail`
-- 订单详情表
-- ----------------------------
DROP TABLE IF EXISTS `bee_order_detail`;
CREATE TABLE `bee_order_detail` (
  `did` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `pid` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_order_detail
-- 订单详情表数据
-- ----------------------------

-- ----------------------------
-- Table structure for `bee_receiver_address`
-- 收货人信息表
-- ----------------------------
DROP TABLE IF EXISTS `bee_receiver_address`;
CREATE TABLE `bee_receiver_address` (
  `rid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `receiver` varchar(16) default NULL,
  `province` varchar(16) default NULL,
  `city` varchar(16) default NULL,
  `county` varchar(16) default NULL,
  `address` varchar(128) default NULL,
  `cellphone` varchar(16) default NULL,
  `fixedphone` varchar(16) default NULL,
  `postcode` char(6) default NULL,
  `tag` varchar(16) default NULL,
  `is_default` tinyint(1) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_receiver_address
-- 收货人信息表数据
-- ----------------------------

-- ----------------------------
-- Table structure for `bee_shoppingcart_item`
-- 购物车信息表
-- ----------------------------
DROP TABLE IF EXISTS `bee_shoppingcart_item`;
CREATE TABLE `bee_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `pid` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_shoppingcart_item
-- 购物车信息表数据
-- ----------------------------
INSERT INTO `bee_shoppingcart_item` VALUES ('1', '10', '17', '1', '0');
INSERT INTO `bee_shoppingcart_item` VALUES ('2', '11', '11', '1', '0');
INSERT INTO `bee_shoppingcart_item` VALUES ('3', '12', '1', '1', '1');
INSERT INTO `bee_shoppingcart_item` VALUES ('4', '13', '3', '9', '0');
INSERT INTO `bee_shoppingcart_item` VALUES ('5', '14', '1', '1', '0');


-- ----------------------------
-- Table structure for `bee_user`
-- 用户信息表
-- ----------------------------
DROP TABLE IF EXISTS `bee_user`;
CREATE TABLE `bee_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_user
-- 用户信息表数据
-- ----------------------------
INSERT INTO `bee_user` VALUES ('1', 'dingding', md5('123456'), 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `bee_user` VALUES ('2', 'dangdang', md5('123456'), 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `bee_user` VALUES ('3', 'doudou', md5('123456'), 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `bee_user` VALUES ('4', 'yaya', md5('123456'), 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `bee_user` VALUES ('5', '1111', md5('123456'), '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `bee_user` VALUES ('6', 'ABCD', md5('123456'), '123@qq.com', '13538894495', null, null, null);
INSERT INTO `bee_user` VALUES ('7', 'mohk', md5('123456'), '11@qq.com', '13512312312', null, null, null);
INSERT INTO `bee_user` VALUES ('8', 'wqw', md5('123456'), 'wqw@qq.com', '13501234560', 'img/avatar/default.png', 'Evengeline', '0');
