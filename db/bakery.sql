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
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_index_carousel
-- 轮播图片数据
-- ----------------------------
INSERT INTO `bee_index_carousel` VALUES ('1', 'images/index/banner/3857.jpg', '皓月|浓情凝聚(四种口味)', 'list_detail.html?cid=17&size=18');
INSERT INTO `bee_index_carousel` VALUES ('2', 'images/index/banner/2848.jpg', '北海道抹茶双层芝士', 'list_detail.html?cid=20&size=15');
INSERT INTO `bee_index_carousel` VALUES ('3', 'images/index/banner/2847.jpg', '经典|坚果巧克力', 'list_detail.html?cid=10&size=16');
INSERT INTO `bee_index_carousel` VALUES ('4', 'images/index/banner/2846.jpg', '简单|蜂蜜', 'list_detail.html?cid=3&size=16');

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
  `price` decimal(10,0) default NULL,
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
INSERT INTO `bee_index_product` VALUES ('1', '桃芝|樱桃芝士', '桃芝|樱桃芝士details', 'images/index/content/3489.jpg','images/index/content/3523.jpg', '265.00', 'list_detail.html?cid=22&size=17', '1', '0', '0');
INSERT INTO `bee_index_product` VALUES ('2', '回归|90', '回归|90details', 'images/index/content/3481.jpg','images/index/content/3515.jpg', '225.00', 'list_detail.html?cid=15&size=16', '2', '0', '0');
INSERT INTO `bee_index_product` VALUES ('3', '初心|牛油果低脂蛋糕', '初心|牛油果低脂蛋糕details', 'images/index/content/3473.jpg','images/index/content/3507.jpg', '335.00', 'list_detail.html?cid=1&size=16', '3', '0', '0');
INSERT INTO `bee_index_product` VALUES ('4', '向往|酸樱桃椰蓉', '向往|酸樱桃椰蓉details', 'images/index/content/3477.jpg','images/index/content/3511.jpg', '225.00', 'list_detail.html?cid=5&size=16', '4', '0', '0');
INSERT INTO `bee_index_product` VALUES ('5', '北海道巧克力双层芝士', '北海道巧克力双层芝士details', 'images/index/content/3475.jpg','images/index/content/3509.jpg', '188.00', 'list_detail.html?cid=21&size=15', '0', '1', '0');
INSERT INTO `bee_index_product` VALUES ('6', '北海道抹茶双层芝士', '北海道抹茶双层芝士details', 'images/index/content/3476.jpg', 'images/index/content/3510.jpg','188.00', 'list_detail.html?cid=20&size=15', '0', '2', '0');
INSERT INTO `bee_index_product` VALUES ('7', '北海道双层芝士', '桃芝|樱桃芝士details', 'images/index/content/3474.jpg', 'images/index/content/3508.jpg','168.00', 'list_detail.html?cid=19&size=15', '0', '3', '0');
INSERT INTO `bee_index_product` VALUES ('8', '珍味|沙棘任小米蛋糕', '珍味|沙棘任小米蛋糕details', 'images/index/content/3893.jpg','images/index/content/3894.jpg', '335.00', 'list_detail.html?cid=16&size=20', '0', '4', '0');
INSERT INTO `bee_index_product` VALUES ('9', '巧克力', '法国法芙娜巧克力', 'images/index/content/2815.jpg','images/index/content/2815.jpg', '265.00', 'list_detail.html?cid=22&size=17', '0', '0', '1');
INSERT INTO `bee_index_product` VALUES ('10', '松露油', '意大利Alba松露油', 'images/index/content/2816.jpg', 'images/index/content/2816.jpg','265.00', 'list_detail.html?cid=22&size=17', '0', '0', '2');
INSERT INTO `bee_index_product` VALUES ('11', '枫糖', '加拿大枫糖', 'images/index/content/2817.jpg', 'images/index/content/2817.jpg','265.00', 'list_detail.html?cid=22&size=17', '0', '0', '3');
INSERT INTO `bee_index_product` VALUES ('12', '蜂蜜', '健康密码-蜂蜜', 'images/index/content/2818.jpg', 'images/index/content/2818.jpg','265.00', 'list_detail.html?cid=22&size=17', '0', '0', '4');

-- ----------------------------
-- Table structure for `bee_cake`
-- 蛋糕明细表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake`;
CREATE TABLE `bee_cake` (
  `cid` int(11) NOT NULL auto_increment,
  `fid` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  -- `price` decimal(10,2) default NULL,
  -- `promise` varchar(64) default NULL,
  -- `spec` varchar(64) default NULL,
  `cname` varchar(32) default NULL,
  -- 尺寸
  -- `size` int(11) default NULL,
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
  -- 访问量
  `pv` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake
-- 蛋糕明细表数据
-- ----------------------------
INSERT INTO `bee_cake` VALUES ('1', '2', '初心|牛油果低脂蛋糕', '牛油果的清香弥漫在口腔，和着乳清奶酪咀嚼，仿佛热带的阳光，洒满心房，也惊叹牛油果的神奇，包容所有的味道，升华所有的味觉，伟大的感动，总在不言中。', '蛋糕', '芝士｜慕斯｜坚果｜水果', '3', '', '1', '新品｜生日｜聚会', '老人｜儿童｜孕妇｜情侣', '', '150123456789', '2968', '1','1988');
INSERT INTO `bee_cake` VALUES ('2','2','倾慕|抹茶慕斯','“碧云引风吹不断，白花浮光凝碗面”唐朝就有对抹茶的赞美，抹茶的浓郁与糖粉恰到好处的水乳交融。蛋糕蓬松柔软的触感，传递到舌尖是裹着奶香淡奶油的抹茶香。毫不逊色的优雅，清淡到恰如其分。', '蛋糕', '慕斯｜', '1', '1', '', '', '老人｜孕妇｜情侣', '', '150123456789', '2968', '1','455');
INSERT INTO `bee_cake` VALUES ('3','2','简单|蜂蜜','缘份是城市里命定的希望，我们注定快乐，但却远离喧嚣。一种天使般的淡然，就像甜杏仁牵手热情果般的美妙滋味，忽视了谁，都不显完整。', '蛋糕', '慕斯｜坚果｜奶油｜水果｜', '2', '1', '', '生日｜聚会', '老人｜儿童｜情侣', '', '150123456789', '2968', '1','675');
INSERT INTO `bee_cake` VALUES ('4','2','热恋|玫瑰慕斯','深情犹如芳香的玫瑰酱，挑战你挑剔的味蕾，回味悠长，无力抗拒；没有疲倦，无尽纠缠，沉浸在幸福海洋；只有爱着的才能体会那永远深藏', '蛋糕', '慕斯｜奶油｜', '1', '', '1', '', '儿童｜情侣', '', '150123456789', '2968', '1','1099');
INSERT INTO `bee_cake` VALUES ('5','2','向往|酸樱桃椰蓉','聆听海的声音，体会自然的清新，依然执着对你的向往。清香味道，驻足停畔，奔放不失优雅，亦真亦幻。', '蛋糕', '慕斯｜奶油｜水果｜', '2', '1', '', '', '儿童', '', '150123456789', '2968', '1','765');
INSERT INTO `bee_cake` VALUES ('6','2','珍贵|芒果慕斯','果肉多汁，鲜美可口，那诱人的清香酸甜，沁人心脾，直达内心需要灌溉的干枯，如此美丽的滋润着每个需要的角落。', '蛋糕', '慕斯｜奶油｜水果｜', '1', '', '1', '生日', '老人｜情侣', '', '150123456789', '2968', '1','654');
INSERT INTO `bee_cake` VALUES ('7','2','迷恋|提拉米苏','凌晨未觉醒的记忆，午夜巴塞罗那的歌声，口中badabada的节奏感…淡淡的咖啡包容着纯纯的奶香，那是情绪里就有的味道。', '蛋糕', '慕斯｜含酒｜咖啡', '2', '1', '', '聚会', '', '', '150123456789', '2968', '1','900');
INSERT INTO `bee_cake` VALUES ('8','2','情调|醇甄切块','清新如雨后的鼻息，甜美如骄阳的微笑。心里的白色纱裙还是记忆中飞扬的样子，在一个寂静如天籁的清晨，不需要有人开口，一切早已谱写成章。', '蛋糕', '芝士｜含酒｜坚果｜', '', '', '', '聚会｜下午茶', '', '', '150123456789', '2968', '1','567');
INSERT INTO `bee_cake` VALUES ('9','2','菩提|香浓巧克力','渐行渐远的背影神忘于菩提树下，虽没人规定过那些尘埃般的光阴，但时间却依然洋洋洒洒……惊叹她的浓郁，恍然知道真谛，犹如豁然品味到的纯美精华。', '蛋糕', '巧克力｜含酒｜', '2', '1', '3', '', '', '', '150123456789', '2968', '1','432');
INSERT INTO `bee_cake` VALUES ('10','2','经典|坚果巧克力','隐藏奢华，犹如丰富的夹层与馅料，被细腻醇厚的巧克力酱所包裹，不露锋芒。脉络清晰的巧克力树叶，简约却不简单。轻咬一口，便想让时间停留在这美好的时刻。', '蛋糕', '巧克力｜坚果｜', '2', '', '2', '', '', '', '150123456789', '2968', '1','555');
INSERT INTO `bee_cake` VALUES ('11','2','回味|枫糖威士忌坚果巧克力','谷物酿造的威士忌，配着轻盈淡雅的枫糖，浅斟慢酌；香脆坚果被巧克力熊抱，感受着调皮与柔情；回味时永远记得的你留下的美好滋味，弥足珍贵。', '蛋糕', '巧克力｜含酒｜坚果｜', '3', '', '2', '', '', '', '150123456789', '2968', '1','733');
INSERT INTO `bee_cake` VALUES ('12','2','榛爱|黑巧克力榛子','自然的狂欢，生命的派对，浓情后的感悟，灵动的碰触沁人心脾，浓厚榛香带来多重口感，煞那间生命无与伦比。', '蛋糕', '巧克力｜坚果｜', '3', '', '4', '', '情侣', '', '150123456789', '2968', '1','345');
INSERT INTO `bee_cake` VALUES ('13','2','回归|70','收起散落在路上的珍贵点滴，每个年代都有属于自己的童年记忆，70的淡定、80的率性、90的不羁??思绪总是在不曾提起的故事里静静流淌，掠过往事，找寻简单的快乐。', '蛋糕', '巧克力｜含酒｜', '', '', '', '下午茶', '', '', '150123456789', '2968', '1','546');
INSERT INTO `bee_cake` VALUES ('14','2','回归|80','收起散落在路上的珍贵点滴，每个年代都有属于自己的童年记忆，70的淡定、80的率性、90的不羁??思绪总是在不曾提起的故事里静静流淌，掠过往事，找寻简单的快乐。', '蛋糕', '巧克力｜芝士｜', '3', '', '1', '下午茶', '孕妇｜', '', '150123456789', '2968', '1','722');
INSERT INTO `bee_cake` VALUES ('15','2','回归|90','收起散落在路上的珍贵点滴，每个年代都有属于自己的童年记忆，70的淡定、80的率性、90的不羁??思绪总是在不曾提起的故事里静静流淌，掠过往事，找寻简单的快乐。', '蛋糕', '巧克力｜', '', '', '', '下午茶', '', '', '150123456789', '2968', '1','453');
INSERT INTO `bee_cake` VALUES ('16','1','珍味|沙棘任小米蛋糕','乳清芝士与特制沙棘酱结合之下的极简之风，就像沙棘治愈着沙漠那般风景如画，更像一首无言的诗。节水小米与沙棘作为内核激发出蛋糕酸甜清爽口感，奶酪飘香浸润舌尖。', '蛋糕', '芝士｜慕斯｜', '3', '2', '', '新品', '情侣', '', '150123456789', '2968', '1','934');
INSERT INTO `bee_cake` VALUES ('17','1','皓月|浓情凝聚(四种口味)','华灯初上，诉说无线的牵挂。像是牛油果的香甜丝滑，芒果慕斯的清香酸甜，玫瑰慕斯的独特风味与提拉米苏式的爱情汇聚出别样的色彩。即使是相隔千里，也都盼望着团圆的一刻。', '蛋糕', '慕斯｜含酒｜', '3', '3', '2', '新品', '', '', '150123456789', '2968', '1','432');
INSERT INTO `bee_cake` VALUES ('18','1','淡然|原味芝士','回归了奶香的经典香气，厚重的醇香感像极了城市里的小调，不经意间的把玩，就让人找到了诗歌般的倾城。', '蛋糕', '芝士｜', '1', '4', '', '', '孕妇', '', '150123456789', '2968', '1','444');
INSERT INTO `bee_cake` VALUES ('19','1','北海道双层芝士','因为用心，美味才够惊艳。颠覆了一般人对乳酪蛋糕的认知。精心制作“好吃到飞起”的美味。当初飘洋过海才能享受的甜蜜味道，如今ebeecake为你倾尽全力奉上。', '蛋糕', '芝士｜', '3', '3', '', '新品', '老人｜儿童｜孕妇｜', '', '150123456789', '2968', '1','333');
INSERT INTO `bee_cake` VALUES ('20','1','北海道抹茶双层芝士','轻盈的意大利马斯卡邦芝士，醇厚的新西兰烤芝士，零下15℃与150摄氏度的双层芝味碰撞出冰火交融般的双重感受，一场关于远渡重洋的抹茶之旅，终于在绿野仙踪的童话世界中，深度捕获清苦甘甜的微妙口感。', '蛋糕', '芝士', '3', '3', '', '新品｜聚会', '老人｜儿童｜孕妇｜', '情侣', '150123456789', '2968', '1','555');
INSERT INTO `bee_cake` VALUES ('21','1','北海道巧克力双层芝士','下层新西兰芝士中加入了铁塔淡奶油，香甜细密，回味十足，口感顺滑，香气缭绕。上层由意大利马斯卡帮芝士和法芙娜巧克力混合制成，可可醇厚的微苦搭配芝士爽口的微酸相辅相成，诱人魂魄。表面的巧克力坯子碎更是提升了巧克力的浓郁口感，一口足可以让人铭记。', '蛋糕', '芝士', '3', '3', '', '新品｜生日', '', '', '150123456789', '2968', '1','555');
INSERT INTO `bee_cake` VALUES ('22','1','桃芝|樱桃芝士','有种美好本在人生际遇之处，那些初次的余香，俨如口中混合着的丝缕酸甜，就像樱桃和百利甜一样，成了没人遗忘的天生一对。', '蛋糕', '芝士｜含酒｜水果｜', '1', '4', '', '聚会', '老人｜儿童', '', '150123456789', '2968', '1','899');
INSERT INTO `bee_cake` VALUES ('23','1','分享|蔓越莓芝士','彼此的爱慕,相互的衬托,在闲暇浪漫的阳光下，体会着香脆的杏仁与蔓越莓的酸甜，共同沉浸在香浓芝士的热情中。', '蛋糕', '芝士｜坚果｜', '1', '5', '', '聚会', '', '', '150123456789', '2968', '1','342');
INSERT INTO `bee_cake` VALUES ('24','1','星空|黑森林','酒渍樱桃带来的热情，调配着化学反应的微醺，让奢侈在舌尖不经意间弹出。巧克力脆的随性就如微醺的气泡，彼时，更为此添上了灵动的一笔。', '蛋糕', '巧克力｜奶油｜水果｜', '2', '', '1', '生日｜', '', '', '150123456789', '2968', '1','283');
INSERT INTO `bee_cake` VALUES ('25','1','梦幻|松露巧克力','在触碰、交聚、融化的那一刻，唇边香气纡回，激发深藏的灵感，是梦境？还是如幻象的现实？如初的甘甜只为装点迷情瞬间。', '蛋糕', '巧克力｜', '3', '2', '5', '', '情侣', '', '150123456789', '2968', '1','467');
INSERT INTO `bee_cake` VALUES ('26','1','思念|缤纷乐园','一种甘甜，充盈着美好的瞬间；绵绵的思念，是一抹温柔的挂牵，滋润着生生不息的华年。感人的情怀，珍藏于内心的甜蜜，是一种深沉的渴望。', '蛋糕', '巧克力｜奶油｜水果｜', '2', '', '2', '生日｜', '儿童｜孕妇｜', '', '150123456789', '2968', '1','1289');
INSERT INTO `bee_cake` VALUES ('27','1','流连|榴莲慕斯','有人赞它滑似奶脂、齿颊留香，令人垂涎欲滴；有人怪它臭如猫屎，不堪入鼻，绕道而行。有人爱之如命，有人恨之入骨。各自斟酌你的榴莲味道。', '蛋糕', '慕斯｜奶油｜水果｜', '2', '1', '', '生日｜聚会', '情侣', '', '150123456789', '2968', '1','456');
INSERT INTO `bee_cake` VALUES ('28','1','相伴|奶油杏仁','源自自然，弥漫着森林中坚果的香气，浓情溢满的巧克力和奶油香浓，悠长。心醉蜜意让你感受到了甜苦相随的爱情味道。', '蛋糕', '慕斯｜坚果｜奶油｜', '3', '2', '1', '', '老人｜孕妇｜', '', '150123456789', '2968', '1','666');
INSERT INTO `bee_cake` VALUES ('29','1','深爱|巧克力冰激凌蛋糕','杯子里盛着水，盛着思念。窗帘里卷着风，卷着心愿。每一次脚步，都踏在我的心坎上。过去的岁月都会过去，最后只有我还在你身边。', '蛋糕', '巧克力｜冰淇凌｜', '1', '', '1', '生日｜', '情侣', '', '150123456789', '2968', '1','777');
INSERT INTO `bee_cake` VALUES ('30','1','感恩|朗姆冰激凌蛋糕','绽放在心底的浓郁，沿唇边温柔的弧度倾泻。感激的话语，将时间定格在每一个温馨的画面。似梅花般坚韧多姿、如水仙般娇艳温柔，承载了岁月后依旧鲜艳、美丽。', '蛋糕', '冰淇凌｜含酒｜', '1', '1', '', '生日｜', '', '', '150123456789', '2968', '1','888');
INSERT INTO `bee_cake` VALUES ('31','1','恋香|香草冰激凌蛋糕','所有的风景都变得模糊，所有的手臂都变成翅膀，所有的记忆都重新更换。想要的那些永远，不是因为贪恋，而是因为挂念。', '蛋糕', '冰淇凌｜', '1', '', '1', '', '儿童｜', '', '150123456789', '2968', '1','666');
INSERT INTO `bee_cake` VALUES ('32','1','遇见|榴莲冰激凌蛋糕','生命是一个奇迹，没有经历过奇迹的人解释它，就如同像没有吃过榴莲的人解释榴莲的味道。世界那么大，能相遇，不容易。遇见，就是幸福。', '蛋糕', '冰淇凌｜', '1', '', '1', '', '情侣', '', '150123456789', '2968', '1','333');
INSERT INTO `bee_cake` VALUES ('33','3','香丝|香蕉巧克力','带着丝丝奶油气息的香蕉清新柔和，融汇了巧克力的甘甜，在唇齿中留下舍不掉的余味。', '蛋糕', '巧克力｜', '2', '', '2', '', '老人｜孕妇｜情侣', '', '150123456789', '2968', '1','666');
INSERT INTO `bee_cake` VALUES ('34','1','夏至|薄荷冰激凌蛋糕','淡淡的外表，浓郁的香草味道，超级浓郁的薄荷风味，真材实料的薄荷叶榨汁取用，清凉的味觉体验，一定是真真切切的。赏心悦目的薄荷色，清新是她最独特的味蕾神器。', '蛋糕', '冰淇凌｜', '1', '', '1', '新品', '', '', '150123456789', '2968', '1','555');
INSERT INTO `bee_cake` VALUES ('35','1','嫣然|抹茶冰激凌蛋糕','抹茶细腻到可以吃出抹茶的空气感，清新的茶香，或深或浅的醇苦回甘，滑过舌尖，回味微甜中透出恰当的苦意，再品则甘，自带的治愈属性。入口松软轻盈而不乏层次，抹茶的微苦在舌尖停留得恰到好处。', '蛋糕', '冰淇凌｜', '1', '', '1', '新品', '', '', '150123456789', '2968', '1','777');

-- ----------------------------
-- Table structure for `bee_cake_size`
-- 商品尺寸价格表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_size`;
CREATE TABLE `bee_cake_size` (
  `sid` int(11) NOT NULL auto_increment,
  `cid`  int(11) default NULL,
  -- 尺寸
  `size` int(11) default NULL,
  `price` decimal(10,0) default NULL,
  `weight` varchar(32) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_size
-- 商品尺寸价格表数据
-- ----------------------------
INSERT INTO `bee_cake_size` VALUES ('1','1','16','335','1.8');
INSERT INTO `bee_cake_size` VALUES ('2','2','16','295','1.3');
INSERT INTO `bee_cake_size` VALUES ('3','2','21','515','2.1');
INSERT INTO `bee_cake_size` VALUES ('4','2','26','735','3.4');
INSERT INTO `bee_cake_size` VALUES ('5','2','29','1180','5');
INSERT INTO `bee_cake_size` VALUES ('6','2','33','1475','6');
INSERT INTO `bee_cake_size` VALUES ('7','2','47','1770','7.5');
INSERT INTO `bee_cake_size` VALUES ('8','2','51','2065','8.7');
INSERT INTO `bee_cake_size` VALUES ('9','2','62','2950','11.9');
INSERT INTO `bee_cake_size` VALUES ('10','3','16','355','1.7');
INSERT INTO `bee_cake_size` VALUES ('11','3','21','635','3');
INSERT INTO `bee_cake_size` VALUES ('12','3','26','915','5.2');
INSERT INTO `bee_cake_size` VALUES ('13','3','29','1420','6');
INSERT INTO `bee_cake_size` VALUES ('14','3','33','1775','7.5');
INSERT INTO `bee_cake_size` VALUES ('15','3','47','2130','9.5');
INSERT INTO `bee_cake_size` VALUES ('16','3','51','2485','11');
INSERT INTO `bee_cake_size` VALUES ('17','3','62','3550','15');
INSERT INTO `bee_cake_size` VALUES ('18','4','16','315','1.5');
INSERT INTO `bee_cake_size` VALUES ('19','4','21','555','2.6');
INSERT INTO `bee_cake_size` VALUES ('20','4','26','795','3.8');
INSERT INTO `bee_cake_size` VALUES ('21','4','29','1260','5.4');
INSERT INTO `bee_cake_size` VALUES ('22','4','33','1575','6.8');
INSERT INTO `bee_cake_size` VALUES ('23','4','47','1890','8.7');
INSERT INTO `bee_cake_size` VALUES ('24','4','51','2205','10');
INSERT INTO `bee_cake_size` VALUES ('25','4','62','3150','13.6');
INSERT INTO `bee_cake_size` VALUES ('26','5','16','225','1.5');
INSERT INTO `bee_cake_size` VALUES ('27','5','21','395','2.8');
INSERT INTO `bee_cake_size` VALUES ('28','5','26','585','4.3');
INSERT INTO `bee_cake_size` VALUES ('29','5','29','900','6.1');
INSERT INTO `bee_cake_size` VALUES ('30','5','33','1125','6.8');
INSERT INTO `bee_cake_size` VALUES ('31','5','47','1350','8.4');
INSERT INTO `bee_cake_size` VALUES ('32','5','51','1575','9.7');
INSERT INTO `bee_cake_size` VALUES ('33','5','62','2250','13.5');
INSERT INTO `bee_cake_size` VALUES ('34','6','16','335','1.8');
INSERT INTO `bee_cake_size` VALUES ('35','6','21','595','3.4');
INSERT INTO `bee_cake_size` VALUES ('36','6','26','855','5.3');
INSERT INTO `bee_cake_size` VALUES ('37','6','29','1340','6.1');
INSERT INTO `bee_cake_size` VALUES ('38','6','33','1675','7.9');
INSERT INTO `bee_cake_size` VALUES ('39','6','47','2010','9.9');
INSERT INTO `bee_cake_size` VALUES ('40','6','51','2345','11.5');
INSERT INTO `bee_cake_size` VALUES ('41','6','62','3350','15.9');
INSERT INTO `bee_cake_size` VALUES ('42','7','16','265','1.3');
INSERT INTO `bee_cake_size` VALUES ('43','7','21','475','2.3');
INSERT INTO `bee_cake_size` VALUES ('44','7','26','685','3.9');
INSERT INTO `bee_cake_size` VALUES ('45','7','29','1060','4.9');
INSERT INTO `bee_cake_size` VALUES ('46','7','33','1325','6.4');
INSERT INTO `bee_cake_size` VALUES ('47','7','47','1590','7.4');
INSERT INTO `bee_cake_size` VALUES ('48','7','51','1855','9.1');
INSERT INTO `bee_cake_size` VALUES ('49','7','62','2650','11.9');
INSERT INTO `bee_cake_size` VALUES ('50','8','16','265','1.9');
INSERT INTO `bee_cake_size` VALUES ('51','8','21','475','3.6');
INSERT INTO `bee_cake_size` VALUES ('52','8','26','685','5');
INSERT INTO `bee_cake_size` VALUES ('53','8','29','1060','6.2');
INSERT INTO `bee_cake_size` VALUES ('54','8','33','1325','8.4');
INSERT INTO `bee_cake_size` VALUES ('55','8','47','1590','10.5');
INSERT INTO `bee_cake_size` VALUES ('56','8','51','1855','12.1');
INSERT INTO `bee_cake_size` VALUES ('57','8','62','2650','16');
INSERT INTO `bee_cake_size` VALUES ('58','9','14','185','1.1');
INSERT INTO `bee_cake_size` VALUES ('59','9','16','225','1.6');
INSERT INTO `bee_cake_size` VALUES ('60','9','21','395','2.8');
INSERT INTO `bee_cake_size` VALUES ('61','9','26','585','4.1');
INSERT INTO `bee_cake_size` VALUES ('62','9','29','900','5.7');
INSERT INTO `bee_cake_size` VALUES ('63','9','33','1125','7.1');
INSERT INTO `bee_cake_size` VALUES ('64','9','47','1350','8.9');
INSERT INTO `bee_cake_size` VALUES ('65','9','62','2250','14.2');
INSERT INTO `bee_cake_size` VALUES ('66','10','16','335','1.7');
INSERT INTO `bee_cake_size` VALUES ('67','10','21','595','2.9');
INSERT INTO `bee_cake_size` VALUES ('68','10','26','855','4.6');
INSERT INTO `bee_cake_size` VALUES ('69','10','29','1340','5.7');
INSERT INTO `bee_cake_size` VALUES ('70','10','33','1675','7.3');
INSERT INTO `bee_cake_size` VALUES ('71','10','47','2010','9.2');
INSERT INTO `bee_cake_size` VALUES ('72','10','51','2345','10.6');
INSERT INTO `bee_cake_size` VALUES ('73','10','62','3350','14.9');
INSERT INTO `bee_cake_size` VALUES ('74','11','16','495','2');
INSERT INTO `bee_cake_size` VALUES ('75','11','21','875','2.3');
INSERT INTO `bee_cake_size` VALUES ('76','11','26','1255','3.2');
INSERT INTO `bee_cake_size` VALUES ('77','12','16','265','1.8');
INSERT INTO `bee_cake_size` VALUES ('78','12','21','475','3.2');
INSERT INTO `bee_cake_size` VALUES ('79','12','26','685','4.7');
INSERT INTO `bee_cake_size` VALUES ('80','12','29','1060','6.2');
INSERT INTO `bee_cake_size` VALUES ('81','12','33','1325','7.5');
INSERT INTO `bee_cake_size` VALUES ('82','12','47','1590','9.9');
INSERT INTO `bee_cake_size` VALUES ('83','12','51','1855','11.5');
INSERT INTO `bee_cake_size` VALUES ('84','12','62','2650','15.9');
INSERT INTO `bee_cake_size` VALUES ('85','13','16','225','1.7');
INSERT INTO `bee_cake_size` VALUES ('86','13','21','395','3.5');
INSERT INTO `bee_cake_size` VALUES ('87','13','26','585','4.9');
INSERT INTO `bee_cake_size` VALUES ('88','13','29','900','5.7');
INSERT INTO `bee_cake_size` VALUES ('89','13','33','1125','7.7');
INSERT INTO `bee_cake_size` VALUES ('90','13','47','1350','9.6');
INSERT INTO `bee_cake_size` VALUES ('91','13','51','1575','11.1');
INSERT INTO `bee_cake_size` VALUES ('92','13','62','2250','15');
INSERT INTO `bee_cake_size` VALUES ('93','14','16','225','1.9');
INSERT INTO `bee_cake_size` VALUES ('94','14','21','395','3.6');
INSERT INTO `bee_cake_size` VALUES ('95','14','26','585','5');
INSERT INTO `bee_cake_size` VALUES ('96','14','29','900','5.8');
INSERT INTO `bee_cake_size` VALUES ('97','14','33','1125','8.4');
INSERT INTO `bee_cake_size` VALUES ('98','14','47','1350','10.5');
INSERT INTO `bee_cake_size` VALUES ('99','14','51','1575','12.2');
INSERT INTO `bee_cake_size` VALUES ('100','14','62','2250','16');
INSERT INTO `bee_cake_size` VALUES ('101','15','16','225','1.7');
INSERT INTO `bee_cake_size` VALUES ('102','15','21','395','3.4');
INSERT INTO `bee_cake_size` VALUES ('103','15','26','585','4.5');
INSERT INTO `bee_cake_size` VALUES ('104','15','29','900','5.6');
INSERT INTO `bee_cake_size` VALUES ('105','15','33','1125','7.7');
INSERT INTO `bee_cake_size` VALUES ('106','15','47','1350','9.6');
INSERT INTO `bee_cake_size` VALUES ('107','15','51','1575','11.1');
INSERT INTO `bee_cake_size` VALUES ('108','15','62','2250','15.5');
INSERT INTO `bee_cake_size` VALUES ('109','16','20','335','1.4');
INSERT INTO `bee_cake_size` VALUES ('110','17','18','315','1.7');
INSERT INTO `bee_cake_size` VALUES ('111','18','17','225','2.3');
INSERT INTO `bee_cake_size` VALUES ('112','18','23','395','4');
INSERT INTO `bee_cake_size` VALUES ('113','18','28','585','6.3');
INSERT INTO `bee_cake_size` VALUES ('114','18','32','900','8.2');
INSERT INTO `bee_cake_size` VALUES ('115','18','36','1125','10.2');
INSERT INTO `bee_cake_size` VALUES ('116','18','40','1350','12.5');
INSERT INTO `bee_cake_size` VALUES ('117','18','44','1575','14.6');
INSERT INTO `bee_cake_size` VALUES ('118','18','53','2250','17.2');
INSERT INTO `bee_cake_size` VALUES ('119','19','15','168','1.1');
INSERT INTO `bee_cake_size` VALUES ('120','19','18','265','1.7');
INSERT INTO `bee_cake_size` VALUES ('121','19','24','475','3.2');
INSERT INTO `bee_cake_size` VALUES ('122','19','29','685','4.7');
INSERT INTO `bee_cake_size` VALUES ('123','19','33','1060','6.2');
INSERT INTO `bee_cake_size` VALUES ('124','19','37','1325','7.1');
INSERT INTO `bee_cake_size` VALUES ('125','19','41','1590','9.2');
INSERT INTO `bee_cake_size` VALUES ('126','19','45','1855','12.3');
INSERT INTO `bee_cake_size` VALUES ('127','20','15','199','1.1');
INSERT INTO `bee_cake_size` VALUES ('128','20','18','265','1.7');
INSERT INTO `bee_cake_size` VALUES ('129','20','24','475','3.2');
INSERT INTO `bee_cake_size` VALUES ('130','20','29','685','4.7');
INSERT INTO `bee_cake_size` VALUES ('131','20','33','1060','6.2');
INSERT INTO `bee_cake_size` VALUES ('132','20','37','1325','7.1');
INSERT INTO `bee_cake_size` VALUES ('133','20','41','1590','9.2');
INSERT INTO `bee_cake_size` VALUES ('134','20','45','1855','12.3');
INSERT INTO `bee_cake_size` VALUES ('135','21','15','199','1.1');
INSERT INTO `bee_cake_size` VALUES ('136','21','18','265','1.7');
INSERT INTO `bee_cake_size` VALUES ('137','21','24','475','3.2');
INSERT INTO `bee_cake_size` VALUES ('138','21','29','685','4.7');
INSERT INTO `bee_cake_size` VALUES ('139','21','33','1060','6.2');
INSERT INTO `bee_cake_size` VALUES ('140','21','37','1325','7.1');
INSERT INTO `bee_cake_size` VALUES ('141','21','41','1590','9.2');
INSERT INTO `bee_cake_size` VALUES ('142','21','45','1855','12.3');
INSERT INTO `bee_cake_size` VALUES ('143','22','17','265','2.2');
INSERT INTO `bee_cake_size` VALUES ('144','22','23','475','3.9');
INSERT INTO `bee_cake_size` VALUES ('145','22','28','685','5.8');
INSERT INTO `bee_cake_size` VALUES ('146','22','32','1060','7.9');
INSERT INTO `bee_cake_size` VALUES ('147','22','36','1325','10');
INSERT INTO `bee_cake_size` VALUES ('148','22','40','1590','12.3');
INSERT INTO `bee_cake_size` VALUES ('149','22','44','1855','14.6');
INSERT INTO `bee_cake_size` VALUES ('150','22','53','2650','17');
INSERT INTO `bee_cake_size` VALUES ('151','23','17','335','2.3');
INSERT INTO `bee_cake_size` VALUES ('152','23','23','595','4.3');
INSERT INTO `bee_cake_size` VALUES ('153','23','28','855','6.6');
INSERT INTO `bee_cake_size` VALUES ('154','23','32','1340','8.7');
INSERT INTO `bee_cake_size` VALUES ('155','23','36','1675','10.5');
INSERT INTO `bee_cake_size` VALUES ('156','23','40','2010','12.6');
INSERT INTO `bee_cake_size` VALUES ('157','23','44','2345','14.5');
INSERT INTO `bee_cake_size` VALUES ('158','23','53','3350','17.7');
INSERT INTO `bee_cake_size` VALUES ('159','24','18','225','1.5');
INSERT INTO `bee_cake_size` VALUES ('160','24','24','395','2.8');
INSERT INTO `bee_cake_size` VALUES ('161','24','29','585','4.1');
INSERT INTO `bee_cake_size` VALUES ('162','24','33','900','5.7');
INSERT INTO `bee_cake_size` VALUES ('163','24','37','1125','7.1');
INSERT INTO `bee_cake_size` VALUES ('164','24','41','1350','9');
INSERT INTO `bee_cake_size` VALUES ('165','24','45','1575','11');
INSERT INTO `bee_cake_size` VALUES ('166','24','54','2250','14.2');
INSERT INTO `bee_cake_size` VALUES ('167','25','18','315','1.8');
INSERT INTO `bee_cake_size` VALUES ('168','25','24','555','3');
INSERT INTO `bee_cake_size` VALUES ('169','25','29','795','4.5');
INSERT INTO `bee_cake_size` VALUES ('170','25','33','1260','5.7');
INSERT INTO `bee_cake_size` VALUES ('171','25','37','1575','7.3');
INSERT INTO `bee_cake_size` VALUES ('172','25','41','1890','9.2');
INSERT INTO `bee_cake_size` VALUES ('173','25','45','2295','10.5');
INSERT INTO `bee_cake_size` VALUES ('174','25','54','3150','14.9');
INSERT INTO `bee_cake_size` VALUES ('175','26','18','295','1.4');
INSERT INTO `bee_cake_size` VALUES ('176','26','24','515','2.6');
INSERT INTO `bee_cake_size` VALUES ('177','26','29','735','3.6');
INSERT INTO `bee_cake_size` VALUES ('178','26','33','1180','4.6');
INSERT INTO `bee_cake_size` VALUES ('179','26','37','1475','6');
INSERT INTO `bee_cake_size` VALUES ('180','26','41','1770','7.5');
INSERT INTO `bee_cake_size` VALUES ('181','26','45','2065','9.5');
INSERT INTO `bee_cake_size` VALUES ('182','26','54','2950','11.5');
INSERT INTO `bee_cake_size` VALUES ('183','27','18','315','1.8');
INSERT INTO `bee_cake_size` VALUES ('184','27','24','555','3.4');
INSERT INTO `bee_cake_size` VALUES ('185','27','29','795','5.3');
INSERT INTO `bee_cake_size` VALUES ('186','27','33','1260','6.1');
INSERT INTO `bee_cake_size` VALUES ('187','27','37','1575','7.9');
INSERT INTO `bee_cake_size` VALUES ('188','27','41','1890','9.5');
INSERT INTO `bee_cake_size` VALUES ('189','27','45','2295','12');
INSERT INTO `bee_cake_size` VALUES ('190','27','54','3150','15.9');
INSERT INTO `bee_cake_size` VALUES ('191','28','18','225','1.4');
INSERT INTO `bee_cake_size` VALUES ('192','28','24','395','2.8');
INSERT INTO `bee_cake_size` VALUES ('193','28','29','585','4.3');
INSERT INTO `bee_cake_size` VALUES ('194','28','33','900','6.1');
INSERT INTO `bee_cake_size` VALUES ('195','28','37','1125','6.8');
INSERT INTO `bee_cake_size` VALUES ('196','28','41','1350','8.7');
INSERT INTO `bee_cake_size` VALUES ('197','28','45','1575','10');
INSERT INTO `bee_cake_size` VALUES ('198','28','54','2250','13.5');
INSERT INTO `bee_cake_size` VALUES ('199','29','15','265','1.5');
INSERT INTO `bee_cake_size` VALUES ('200','29','21','475','2.8');
INSERT INTO `bee_cake_size` VALUES ('201','30','15','225','1.5');
INSERT INTO `bee_cake_size` VALUES ('202','30','23','395','3.1');
INSERT INTO `bee_cake_size` VALUES ('203','31','15','265','1.5');
INSERT INTO `bee_cake_size` VALUES ('204','31','21','475','2.8');
INSERT INTO `bee_cake_size` VALUES ('205','32','15','295','1.5');
INSERT INTO `bee_cake_size` VALUES ('206','32','21','515','2.8');
INSERT INTO `bee_cake_size` VALUES ('207','33','700','335','1.5');
INSERT INTO `bee_cake_size` VALUES ('208','34','15','335','1.7');
INSERT INTO `bee_cake_size` VALUES ('209','34','21','595','3.1');
INSERT INTO `bee_cake_size` VALUES ('210','35','15','265','1.7');
INSERT INTO `bee_cake_size` VALUES ('211','35','21','475','3.2');

-- ----------------------------
-- Table structure for `bee_size_pic`
-- 商品尺寸图片表
-- ----------------------------
DROP TABLE IF EXISTS `bee_size_pic`;
CREATE TABLE `bee_size_pic` (
  `spid` int(11) NOT NULL auto_increment,
  `fid`  int(11) default NULL,
  -- 尺寸
  `size` int(11) default NULL,
  -- 尺寸对照图
  `sizeimg` varchar(128) default NULL,
  PRIMARY KEY  (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_size_pic
-- 商品尺寸价格表数据
-- ----------------------------
INSERT INTO `bee_size_pic` VALUES ('1','1','15','images/details/img-size/y15.png');
INSERT INTO `bee_size_pic` VALUES ('2','1','17','images/details/img-size/y17.png');
INSERT INTO `bee_size_pic` VALUES ('3','1','18','images/details/img-size/y18.png');
INSERT INTO `bee_size_pic` VALUES ('4','1','21','images/details/img-size/y21.png');
INSERT INTO `bee_size_pic` VALUES ('5','1','23','images/details/img-size/y23.png');
INSERT INTO `bee_size_pic` VALUES ('6','1','24','images/details/img-size/y24.png');
INSERT INTO `bee_size_pic` VALUES ('7','1','28','images/details/img-size/y28.png');
INSERT INTO `bee_size_pic` VALUES ('8','1','29','images/details/img-size/y29.png');
INSERT INTO `bee_size_pic` VALUES ('9','1','32','images/details/img-size/y32.png');
INSERT INTO `bee_size_pic` VALUES ('10','1','33','images/details/img-size/y33.png');
INSERT INTO `bee_size_pic` VALUES ('11','1','36','images/details/img-size/y36.png');
INSERT INTO `bee_size_pic` VALUES ('12','1','37','images/details/img-size/y37.png');
INSERT INTO `bee_size_pic` VALUES ('13','1','40','images/details/img-size/y40.png');
INSERT INTO `bee_size_pic` VALUES ('14','1','41','images/details/img-size/y41.png');
INSERT INTO `bee_size_pic` VALUES ('15','1','44','images/details/img-size/y44.png');
INSERT INTO `bee_size_pic` VALUES ('16','1','45','images/details/img-size/y45.png');
INSERT INTO `bee_size_pic` VALUES ('17','1','53','images/details/img-size/y53.png');
INSERT INTO `bee_size_pic` VALUES ('18','1','54','images/details/img-size/y54.png');
INSERT INTO `bee_size_pic` VALUES ('19','2','16','images/details/img-size/f16.png');
INSERT INTO `bee_size_pic` VALUES ('20','3','700','images/details/img-size/heart.png');
INSERT INTO `bee_size_pic` VALUES ('21','1','20','images/details/img-size/y20.png');

-- ----------------------------
-- Table structure for `bee_cake_family`
-- 商品分类表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_family`;
CREATE TABLE `bee_cake_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_family
-- 商品分类表数据
-- ----------------------------
INSERT INTO `bee_cake_family` VALUES ('1', '圆形');
INSERT INTO `bee_cake_family` VALUES ('2', '方形');
INSERT INTO `bee_cake_family` VALUES ('3', '心形');

-- ----------------------------
-- Table structure for `bee_cake_pic`
-- 商品图片表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_pic`;
CREATE TABLE `bee_cake_pic` (
  `pid` int(11) NOT NULL auto_increment,
  -- 蛋糕明细id
  `cid` int(11) default NULL,
  -- 显示图
  `imgtop` varchar(128) default NULL,
  -- 鼠标放上显示的图
  `imgbottom` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_pic
-- 商品图片表数据
-- ----------------------------
INSERT INTO `bee_cake_pic` VALUES ('1', '1', 'images/index/content/3473.jpg', 'images/index/content/3507.jpg');
INSERT INTO `bee_cake_pic` VALUES ('2', '2', 'images/index/content/3471.jpg', 'images/index/content/3505.jpg');
INSERT INTO `bee_cake_pic` VALUES ('3', '3', 'images/index/content/3498.jpg', 'images/index/content/3532.jpg');
INSERT INTO `bee_cake_pic` VALUES ('4', '4', 'images/index/content/3495.jpg', 'images/index/content/3529.jpg');
INSERT INTO `bee_cake_pic` VALUES ('5', '5', 'images/index/content/3477.jpg', 'images/index/content/3511.jpg');
INSERT INTO `bee_cake_pic` VALUES ('6', '6', 'images/index/content/3496.jpg', 'images/index/content/3530.jpg');
INSERT INTO `bee_cake_pic` VALUES ('7', '7', 'images/index/content/3501.jpg', 'images/index/content/3535.jpg');
INSERT INTO `bee_cake_pic` VALUES ('8', '8', 'images/index/content/3486.jpg', 'images/index/content/3520.jpg');
INSERT INTO `bee_cake_pic` VALUES ('9', '9', 'images/index/content/3500.jpg', 'images/index/content/3534.jpg');
INSERT INTO `bee_cake_pic` VALUES ('10', '10', 'images/index/content/3499.jpg', 'images/index/content/3533.jpg');
INSERT INTO `bee_cake_pic` VALUES ('11', '11', 'images/index/content/3478.jpg', 'images/index/content/3512.jpg');
INSERT INTO `bee_cake_pic` VALUES ('12', '12', 'images/index/content/3491.jpg', 'images/index/content/3525.jpg');
INSERT INTO `bee_cake_pic` VALUES ('13', '13', 'images/index/content/3479.jpg', 'images/index/content/3513.jpg');
INSERT INTO `bee_cake_pic` VALUES ('14', '14', 'images/index/content/3480.jpg', 'images/index/content/3514.jpg');
INSERT INTO `bee_cake_pic` VALUES ('15', '15', 'images/index/content/3481.jpg', 'images/index/content/3515.jpg');
INSERT INTO `bee_cake_pic` VALUES ('16', '16', 'images/index/content/3893.jpg', 'images/index/content/3894.jpg');
INSERT INTO `bee_cake_pic` VALUES ('17', '17', 'images/index/content/3807.jpg', 'images/index/content/3808.jpg');
INSERT INTO `bee_cake_pic` VALUES ('18', '18', 'images/index/content/3493.jpg', 'images/index/content/3527.jpg');
INSERT INTO `bee_cake_pic` VALUES ('19', '19', 'images/index/content/3474.jpg', 'images/index/content/3508.jpg');
INSERT INTO `bee_cake_pic` VALUES ('20', '20', 'images/index/content/3476.jpg', 'images/index/content/3510.jpg');
INSERT INTO `bee_cake_pic` VALUES ('21', '21', 'images/index/content/3475.jpg', 'images/index/content/3509.jpg');
INSERT INTO `bee_cake_pic` VALUES ('22', '22', 'images/index/content/3489.jpg', 'images/index/content/3523.jpg');
INSERT INTO `bee_cake_pic` VALUES ('23', '23', 'images/index/content/3472.jpg', 'images/index/content/3506.jpg');
INSERT INTO `bee_cake_pic` VALUES ('24', '24', 'images/index/content/3488.jpg', 'images/index/content/3522.jpg');
INSERT INTO `bee_cake_pic` VALUES ('25', '25', 'images/index/content/3490.jpg', 'images/index/content/3524.jpg');
INSERT INTO `bee_cake_pic` VALUES ('26', '26', 'images/index/content/3484.jpg', 'images/index/content/3518.jpg');
INSERT INTO `bee_cake_pic` VALUES ('27', '27', 'images/index/content/3492.jpg', 'images/index/content/3526.jpg');
INSERT INTO `bee_cake_pic` VALUES ('28', '28', 'images/index/content/3497.jpg', 'images/index/content/3531.jpg');
INSERT INTO `bee_cake_pic` VALUES ('29', '29', 'images/index/content/3494.jpg', 'images/index/content/3528.jpg');
INSERT INTO `bee_cake_pic` VALUES ('30', '30', 'images/index/content/3487.jpg', 'images/index/content/3521.jpg');
INSERT INTO `bee_cake_pic` VALUES ('31', '31', 'images/index/content/3485.jpg', 'images/index/content/3519.jpg');
INSERT INTO `bee_cake_pic` VALUES ('32', '32', 'images/index/content/3502.jpg', 'images/index/content/3536.jpg');
INSERT INTO `bee_cake_pic` VALUES ('33', '33', 'images/index/content/3504.jpg', 'images/index/content/3538.jpg');
INSERT INTO `bee_cake_pic` VALUES ('34', '34', 'images/index/content/3755.jpg', 'images/index/content/3756.jpg');
INSERT INTO `bee_cake_pic` VALUES ('35', '35', 'images/index/content/3715.jpg', 'images/index/content/3716.jpg');

-- ----------------------------
-- Table structure for `bee_detail_carousel`
-- 详情轮播图表
-- ----------------------------
DROP TABLE IF EXISTS `bee_detail_carousel`;
CREATE TABLE `bee_detail_carousel` (
  `dcid` int(11) NOT NULL auto_increment,
  `cid` int(11) default NULL,
  -- 轮播图
  `caroimg` varchar(128) default NULL,
  PRIMARY KEY  (`dcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bee_detail_carousel` VALUES ('1', '1', 'images/details/1/3545.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('2', '1', 'images/details/1/3546.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('3', '1', 'images/details/1/3547.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('4', '2', 'images/details/2/3539.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('5', '2', 'images/details/2/3540.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('6', '2', 'images/details/2/3541.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('7', '3', 'images/details/3/3620.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('8', '3', 'images/details/3/3621.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('9', '3', 'images/details/3/3622.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('10', '4', 'images/details/4/3611.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('11', '4', 'images/details/4/3612.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('12', '4', 'images/details/4/3613.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('13', '5', 'images/details/5/3557.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('14', '5', 'images/details/5/3558.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('15', '5', 'images/details/5/3559.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('16', '6', 'images/details/6/3614.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('17', '6', 'images/details/6/3615.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('18', '6', 'images/details/6/3616.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('19', '7', 'images/details/7/3629.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('20', '7', 'images/details/7/3630.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('21', '7', 'images/details/7/3631.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('22', '8', 'images/details/8/3584.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('23', '8', 'images/details/8/3585.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('24', '8', 'images/details/8/3586.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('25', '9', 'images/details/9/3626.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('26', '9', 'images/details/9/3627.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('27', '9', 'images/details/9/3628.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('28', '10', 'images/details/10/3623.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('29', '10', 'images/details/10/3624.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('30', '10', 'images/details/10/3625.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('31', '11', 'images/details/11/3560.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('32', '11', 'images/details/11/3561.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('33', '11', 'images/details/11/3562.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('34', '12', 'images/details/12/3599.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('35', '12', 'images/details/12/3600.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('36', '12', 'images/details/12/3601.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('37', '13', 'images/details/13/3563.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('38', '13', 'images/details/13/3564.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('39', '13', 'images/details/13/3565.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('40', '14', 'images/details/14/3566.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('41', '14', 'images/details/14/3567.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('42', '14', 'images/details/14/3568.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('43', '15', 'images/details/15/3569.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('44', '15', 'images/details/15/3570.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('45', '15', 'images/details/15/3571.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('46', '16', 'images/details/16/3890.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('47', '16', 'images/details/16/3891.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('48', '16', 'images/details/16/3892.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('49', '17', 'images/details/17/3804.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('50', '17', 'images/details/17/3805.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('51', '17', 'images/details/17/3806.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('52', '18', 'images/details/18/3605.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('53', '18', 'images/details/18/3606.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('54', '18', 'images/details/18/3607.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('55', '19', 'images/details/19/3548.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('56', '19', 'images/details/19/3549.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('57', '19', 'images/details/19/3550.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('58', '20', 'images/details/20/3554.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('59', '20', 'images/details/20/3555.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('60', '20', 'images/details/20/3556.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('61', '21', 'images/details/21/3551.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('62', '21', 'images/details/21/3552.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('63', '21', 'images/details/21/3553.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('64', '22', 'images/details/22/3593.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('65', '22', 'images/details/22/3594.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('66', '22', 'images/details/22/3595.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('67', '23', 'images/details/23/3542.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('68', '23', 'images/details/23/3543.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('69', '23', 'images/details/23/3544.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('70', '24', 'images/details/24/3590.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('71', '24', 'images/details/24/3591.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('72', '24', 'images/details/24/3592.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('73', '25', 'images/details/25/3596.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('74', '25', 'images/details/25/3597.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('75', '25', 'images/details/25/3598.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('76', '26', 'images/details/26/3578.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('77', '26', 'images/details/26/3579.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('78', '26', 'images/details/26/3580.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('79', '27', 'images/details/27/3602.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('80', '27', 'images/details/27/3603.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('81', '27', 'images/details/27/3604.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('82', '28', 'images/details/28/3617.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('83', '28', 'images/details/28/3618.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('84', '28', 'images/details/28/3619.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('85', '29', 'images/details/29/3608.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('86', '29', 'images/details/29/3609.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('87', '29', 'images/details/29/3610.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('88', '30', 'images/details/30/3587.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('89', '30', 'images/details/30/3588.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('90', '30', 'images/details/30/3589.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('91', '31', 'images/details/31/3581.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('92', '31', 'images/details/31/3582.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('93', '31', 'images/details/31/3583.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('94', '32', 'images/details/32/3632.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('95', '32', 'images/details/32/3633.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('96', '32', 'images/details/32/3634.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('97', '33', 'images/details/33/3638.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('98', '33', 'images/details/33/3639.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('99', '33', 'images/details/33/3640.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('100', '34', 'images/details/34/3752.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('101', '34', 'images/details/34/3753.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('102', '34', 'images/details/34/3754.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('103', '35', 'images/details/35/3712.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('104', '35', 'images/details/35/3713.jpg');
INSERT INTO `bee_detail_carousel` VALUES ('105', '35', 'images/details/35/3714.jpg');

-- ----------------------------
-- Table structure for `bee_detail_content`
-- 产品详情页内容区域表
-- ----------------------------
DROP TABLE IF EXISTS `bee_detail_content`;
CREATE TABLE `bee_detail_content` (
  `ccid` int(11) NOT NULL auto_increment,
  -- bee_cake表的id
  `cid` int(11) default NULL,
  -- 详情1
  `cimg` varchar(128) default NULL,
  PRIMARY KEY  (`ccid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bee_detail_content` VALUES ('1','1','images/details/1/3058.jpg');
INSERT INTO `bee_detail_content` VALUES ('2','1','images/details/1/3059.jpg');
INSERT INTO `bee_detail_content` VALUES ('3','1','images/details/1/3060.jpg');
INSERT INTO `bee_detail_content` VALUES ('4','1','images/details/1/3061.jpg');
INSERT INTO `bee_detail_content` VALUES ('5','1','images/details/1/3062.jpg');
INSERT INTO `bee_detail_content` VALUES ('6','1','images/details/1/3063.jpg');
INSERT INTO `bee_detail_content` VALUES ('7','1','images/details/1/3064.jpg');
INSERT INTO `bee_detail_content` VALUES ('8','1','images/details/1/3065.jpg');
INSERT INTO `bee_detail_content` VALUES ('9','1','images/details/1/3066.jpg');
INSERT INTO `bee_detail_content` VALUES ('10','1','images/details/1/3067.jpg');
INSERT INTO `bee_detail_content` VALUES ('11','1','images/details/1/3068.jpg');
INSERT INTO `bee_detail_content` VALUES ('12','1','images/details/1/3069.jpg');
INSERT INTO `bee_detail_content` VALUES ('13','1','images/details/1/3070.jpg');
INSERT INTO `bee_detail_content` VALUES ('14','1','images/details/1/3071.jpg');
INSERT INTO `bee_detail_content` VALUES ('15','2','images/details/2/3033.jpg');
INSERT INTO `bee_detail_content` VALUES ('16','2','images/details/2/3034.jpg');
INSERT INTO `bee_detail_content` VALUES ('17','2','images/details/2/3035.jpg');
INSERT INTO `bee_detail_content` VALUES ('18','2','images/details/2/3036.jpg');
INSERT INTO `bee_detail_content` VALUES ('19','2','images/details/2/3037.jpg');
INSERT INTO `bee_detail_content` VALUES ('20','2','images/details/2/3038.jpg');
INSERT INTO `bee_detail_content` VALUES ('21','2','images/details/2/3039.jpg');
INSERT INTO `bee_detail_content` VALUES ('22','2','images/details/2/3040.jpg');
INSERT INTO `bee_detail_content` VALUES ('23','2','images/details/2/3041.jpg');
INSERT INTO `bee_detail_content` VALUES ('24','2','images/details/2/3042.jpg');
INSERT INTO `bee_detail_content` VALUES ('25','2','images/details/2/3043.jpg');
INSERT INTO `bee_detail_content` VALUES ('26','2','images/details/2/3044.jpg');
INSERT INTO `bee_detail_content` VALUES ('27','3','images/details/3/3380.jpg');
INSERT INTO `bee_detail_content` VALUES ('28','3','images/details/3/3381.jpg');
INSERT INTO `bee_detail_content` VALUES ('29','3','images/details/3/3382.jpg');
INSERT INTO `bee_detail_content` VALUES ('30','3','images/details/3/3383.jpg');
INSERT INTO `bee_detail_content` VALUES ('31','3','images/details/3/3384.jpg');
INSERT INTO `bee_detail_content` VALUES ('32','3','images/details/3/3385.jpg');
INSERT INTO `bee_detail_content` VALUES ('33','3','images/details/3/3386.jpg');
INSERT INTO `bee_detail_content` VALUES ('34','3','images/details/3/3387.jpg');
INSERT INTO `bee_detail_content` VALUES ('35','3','images/details/3/3388.jpg');
INSERT INTO `bee_detail_content` VALUES ('36','3','images/details/3/3389.jpg');
INSERT INTO `bee_detail_content` VALUES ('37','3','images/details/3/3390.jpg');
INSERT INTO `bee_detail_content` VALUES ('38','3','images/details/3/3391.jpg');
INSERT INTO `bee_detail_content` VALUES ('39','3','images/details/3/3392.jpg');
INSERT INTO `bee_detail_content` VALUES ('40','4','images/details/4/3342.jpg');
INSERT INTO `bee_detail_content` VALUES ('41','4','images/details/4/3343.jpg');
INSERT INTO `bee_detail_content` VALUES ('42','4','images/details/4/3344.jpg');
INSERT INTO `bee_detail_content` VALUES ('43','4','images/details/4/3345.jpg');
INSERT INTO `bee_detail_content` VALUES ('44','4','images/details/4/3346.jpg');
INSERT INTO `bee_detail_content` VALUES ('45','4','images/details/4/3347.jpg');
INSERT INTO `bee_detail_content` VALUES ('46','4','images/details/4/3348.jpg');
INSERT INTO `bee_detail_content` VALUES ('47','4','images/details/4/3349.jpg');
INSERT INTO `bee_detail_content` VALUES ('48','4','images/details/4/3350.jpg');
INSERT INTO `bee_detail_content` VALUES ('49','4','images/details/4/3351.jpg');
INSERT INTO `bee_detail_content` VALUES ('50','4','images/details/4/3352.jpg');
INSERT INTO `bee_detail_content` VALUES ('51','4','images/details/4/3353.jpg');
INSERT INTO `bee_detail_content` VALUES ('52','4','images/details/4/3354.jpg');
INSERT INTO `bee_detail_content` VALUES ('53','5','images/details/5/3111.jpg');
INSERT INTO `bee_detail_content` VALUES ('54','5','images/details/5/3112.jpg');
INSERT INTO `bee_detail_content` VALUES ('55','5','images/details/5/3113.jpg');
INSERT INTO `bee_detail_content` VALUES ('56','5','images/details/5/3114.jpg');
INSERT INTO `bee_detail_content` VALUES ('57','5','images/details/5/3115.jpg');
INSERT INTO `bee_detail_content` VALUES ('58','5','images/details/5/3116.jpg');
INSERT INTO `bee_detail_content` VALUES ('59','5','images/details/5/3117.jpg');
INSERT INTO `bee_detail_content` VALUES ('60','5','images/details/5/3118.jpg');
INSERT INTO `bee_detail_content` VALUES ('61','5','images/details/5/3119.jpg');
INSERT INTO `bee_detail_content` VALUES ('62','5','images/details/5/3120.jpg');
INSERT INTO `bee_detail_content` VALUES ('63','5','images/details/5/3121.jpg');
INSERT INTO `bee_detail_content` VALUES ('64','5','images/details/5/3122.jpg');
INSERT INTO `bee_detail_content` VALUES ('65','5','images/details/5/3123.jpg');
INSERT INTO `bee_detail_content` VALUES ('66','6','images/details/6/3355.jpg');
INSERT INTO `bee_detail_content` VALUES ('67','6','images/details/6/3356.jpg');
INSERT INTO `bee_detail_content` VALUES ('68','6','images/details/6/3357.jpg');
INSERT INTO `bee_detail_content` VALUES ('69','6','images/details/6/3358.jpg');
INSERT INTO `bee_detail_content` VALUES ('70','6','images/details/6/3359.jpg');
INSERT INTO `bee_detail_content` VALUES ('71','6','images/details/6/3360.jpg');
INSERT INTO `bee_detail_content` VALUES ('72','6','images/details/6/3361.jpg');
INSERT INTO `bee_detail_content` VALUES ('73','6','images/details/6/3362.jpg');
INSERT INTO `bee_detail_content` VALUES ('74','6','images/details/6/3363.jpg');
INSERT INTO `bee_detail_content` VALUES ('75','6','images/details/6/3364.jpg');
INSERT INTO `bee_detail_content` VALUES ('76','6','images/details/6/3365.jpg');
INSERT INTO `bee_detail_content` VALUES ('77','6','images/details/6/3366.jpg');
INSERT INTO `bee_detail_content` VALUES ('78','7','images/details/7/3419.jpg');
INSERT INTO `bee_detail_content` VALUES ('79','7','images/details/7/3420.jpg');
INSERT INTO `bee_detail_content` VALUES ('80','7','images/details/7/3421.jpg');
INSERT INTO `bee_detail_content` VALUES ('81','7','images/details/7/3422.jpg');
INSERT INTO `bee_detail_content` VALUES ('82','7','images/details/7/3423.jpg');
INSERT INTO `bee_detail_content` VALUES ('83','7','images/details/7/3424.jpg');
INSERT INTO `bee_detail_content` VALUES ('84','7','images/details/7/3425.jpg');
INSERT INTO `bee_detail_content` VALUES ('85','7','images/details/7/3426.jpg');
INSERT INTO `bee_detail_content` VALUES ('86','7','images/details/7/3427.jpg');
INSERT INTO `bee_detail_content` VALUES ('87','7','images/details/7/3428.jpg');
INSERT INTO `bee_detail_content` VALUES ('88','7','images/details/7/3429.jpg');
INSERT INTO `bee_detail_content` VALUES ('89','7','images/details/7/3430.jpg');
INSERT INTO `bee_detail_content` VALUES ('90','7','images/details/7/3431.jpg');
INSERT INTO `bee_detail_content` VALUES ('91','8','images/details/8/3227.jpg');
INSERT INTO `bee_detail_content` VALUES ('92','8','images/details/8/3228.jpg');
INSERT INTO `bee_detail_content` VALUES ('93','8','images/details/8/3229.jpg');
INSERT INTO `bee_detail_content` VALUES ('94','8','images/details/8/3230.jpg');
INSERT INTO `bee_detail_content` VALUES ('95','8','images/details/8/3231.jpg');
INSERT INTO `bee_detail_content` VALUES ('96','8','images/details/8/3232.jpg');
INSERT INTO `bee_detail_content` VALUES ('97','8','images/details/8/3233.jpg');
INSERT INTO `bee_detail_content` VALUES ('98','8','images/details/8/3234.jpg');
INSERT INTO `bee_detail_content` VALUES ('99','8','images/details/8/3235.jpg');
INSERT INTO `bee_detail_content` VALUES ('100','8','images/details/8/3236.jpg');
INSERT INTO `bee_detail_content` VALUES ('101','8','images/details/8/3237.jpg');
INSERT INTO `bee_detail_content` VALUES ('102','8','images/details/8/3238.jpg');
INSERT INTO `bee_detail_content` VALUES ('103','8','images/details/8/3239.jpg');
INSERT INTO `bee_detail_content` VALUES ('104','9','images/details/9/3406.jpg');
INSERT INTO `bee_detail_content` VALUES ('105','9','images/details/9/3407.jpg');
INSERT INTO `bee_detail_content` VALUES ('106','9','images/details/9/3408.jpg');
INSERT INTO `bee_detail_content` VALUES ('107','9','images/details/9/3409.jpg');
INSERT INTO `bee_detail_content` VALUES ('108','9','images/details/9/3410.jpg');
INSERT INTO `bee_detail_content` VALUES ('109','9','images/details/9/3411.jpg');
INSERT INTO `bee_detail_content` VALUES ('110','9','images/details/9/3412.jpg');
INSERT INTO `bee_detail_content` VALUES ('111','9','images/details/9/3413.jpg');
INSERT INTO `bee_detail_content` VALUES ('112','9','images/details/9/3414.jpg');
INSERT INTO `bee_detail_content` VALUES ('113','9','images/details/9/3415.jpg');
INSERT INTO `bee_detail_content` VALUES ('114','9','images/details/9/3416.jpg');
INSERT INTO `bee_detail_content` VALUES ('115','9','images/details/9/3417.jpg');
INSERT INTO `bee_detail_content` VALUES ('116','9','images/details/9/3418.jpg');
INSERT INTO `bee_detail_content` VALUES ('117','10','images/details/10/3393.jpg');
INSERT INTO `bee_detail_content` VALUES ('118','10','images/details/10/3394.jpg');
INSERT INTO `bee_detail_content` VALUES ('119','10','images/details/10/3395.jpg');
INSERT INTO `bee_detail_content` VALUES ('120','10','images/details/10/3396.jpg');
INSERT INTO `bee_detail_content` VALUES ('121','10','images/details/10/3397.jpg');
INSERT INTO `bee_detail_content` VALUES ('122','10','images/details/10/3398.jpg');
INSERT INTO `bee_detail_content` VALUES ('123','10','images/details/10/3399.jpg');
INSERT INTO `bee_detail_content` VALUES ('124','10','images/details/10/3400.jpg');
INSERT INTO `bee_detail_content` VALUES ('125','10','images/details/10/3401.jpg');
INSERT INTO `bee_detail_content` VALUES ('126','10','images/details/10/3402.jpg');
INSERT INTO `bee_detail_content` VALUES ('127','10','images/details/10/3403.jpg');
INSERT INTO `bee_detail_content` VALUES ('128','10','images/details/10/3404.jpg');
INSERT INTO `bee_detail_content` VALUES ('129','10','images/details/10/3405.jpg');
INSERT INTO `bee_detail_content` VALUES ('130','11','images/details/11/3124.jpg');
INSERT INTO `bee_detail_content` VALUES ('131','11','images/details/11/3125.jpg');
INSERT INTO `bee_detail_content` VALUES ('132','11','images/details/11/3126.jpg');
INSERT INTO `bee_detail_content` VALUES ('133','11','images/details/11/3127.jpg');
INSERT INTO `bee_detail_content` VALUES ('134','11','images/details/11/3128.jpg');
INSERT INTO `bee_detail_content` VALUES ('135','11','images/details/11/3129.jpg');
INSERT INTO `bee_detail_content` VALUES ('136','11','images/details/11/3130.jpg');
INSERT INTO `bee_detail_content` VALUES ('137','11','images/details/11/3131.jpg');
INSERT INTO `bee_detail_content` VALUES ('138','11','images/details/11/3132.jpg');
INSERT INTO `bee_detail_content` VALUES ('139','11','images/details/11/3133.jpg');
INSERT INTO `bee_detail_content` VALUES ('140','11','images/details/11/3134.jpg');
INSERT INTO `bee_detail_content` VALUES ('141','11','images/details/11/3135.jpg');
INSERT INTO `bee_detail_content` VALUES ('142','11','images/details/11/3136.jpg');
INSERT INTO `bee_detail_content` VALUES ('143','12','images/details/12/3292.jpg');
INSERT INTO `bee_detail_content` VALUES ('144','12','images/details/12/3293.jpg');
INSERT INTO `bee_detail_content` VALUES ('145','12','images/details/12/3294.jpg');
INSERT INTO `bee_detail_content` VALUES ('146','12','images/details/12/3295.jpg');
INSERT INTO `bee_detail_content` VALUES ('147','12','images/details/12/3296.jpg');
INSERT INTO `bee_detail_content` VALUES ('148','12','images/details/12/3297.jpg');
INSERT INTO `bee_detail_content` VALUES ('149','12','images/details/12/3298.jpg');
INSERT INTO `bee_detail_content` VALUES ('150','12','images/details/12/3299.jpg');
INSERT INTO `bee_detail_content` VALUES ('151','12','images/details/12/3300.jpg');
INSERT INTO `bee_detail_content` VALUES ('152','12','images/details/12/3301.jpg');
INSERT INTO `bee_detail_content` VALUES ('153','12','images/details/12/3302.jpg');
INSERT INTO `bee_detail_content` VALUES ('154','12','images/details/12/3303.jpg');
INSERT INTO `bee_detail_content` VALUES ('155','12','images/details/12/3304.jpg');
INSERT INTO `bee_detail_content` VALUES ('156','13','images/details/13/3137.jpg');
INSERT INTO `bee_detail_content` VALUES ('157','13','images/details/13/3138.jpg');
INSERT INTO `bee_detail_content` VALUES ('158','13','images/details/13/3139.jpg');
INSERT INTO `bee_detail_content` VALUES ('159','13','images/details/13/3140.jpg');
INSERT INTO `bee_detail_content` VALUES ('160','13','images/details/13/3141.jpg');
INSERT INTO `bee_detail_content` VALUES ('161','13','images/details/13/3142.jpg');
INSERT INTO `bee_detail_content` VALUES ('162','13','images/details/13/3143.jpg');
INSERT INTO `bee_detail_content` VALUES ('163','13','images/details/13/3144.jpg');
INSERT INTO `bee_detail_content` VALUES ('164','13','images/details/13/3145.jpg');
INSERT INTO `bee_detail_content` VALUES ('165','13','images/details/13/3146.jpg');
INSERT INTO `bee_detail_content` VALUES ('166','13','images/details/13/3147.jpg');
INSERT INTO `bee_detail_content` VALUES ('167','13','images/details/13/3148.jpg');
INSERT INTO `bee_detail_content` VALUES ('168','13','images/details/13/3149.jpg');
INSERT INTO `bee_detail_content` VALUES ('169','14','images/details/14/3150.jpg');
INSERT INTO `bee_detail_content` VALUES ('170','14','images/details/14/3151.jpg');
INSERT INTO `bee_detail_content` VALUES ('171','14','images/details/14/3152.jpg');
INSERT INTO `bee_detail_content` VALUES ('172','14','images/details/14/3153.jpg');
INSERT INTO `bee_detail_content` VALUES ('173','14','images/details/14/3154.jpg');
INSERT INTO `bee_detail_content` VALUES ('174','14','images/details/14/3155.jpg');
INSERT INTO `bee_detail_content` VALUES ('175','14','images/details/14/3156.jpg');
INSERT INTO `bee_detail_content` VALUES ('176','14','images/details/14/3157.jpg');
INSERT INTO `bee_detail_content` VALUES ('177','14','images/details/14/3158.jpg');
INSERT INTO `bee_detail_content` VALUES ('178','14','images/details/14/3159.jpg');
INSERT INTO `bee_detail_content` VALUES ('179','14','images/details/14/3160.jpg');
INSERT INTO `bee_detail_content` VALUES ('180','14','images/details/14/3161.jpg');
INSERT INTO `bee_detail_content` VALUES ('181','14','images/details/14/3162.jpg');
INSERT INTO `bee_detail_content` VALUES ('182','15','images/details/15/3163.jpg');
INSERT INTO `bee_detail_content` VALUES ('183','15','images/details/15/3164.jpg');
INSERT INTO `bee_detail_content` VALUES ('184','15','images/details/15/3165.jpg');
INSERT INTO `bee_detail_content` VALUES ('185','15','images/details/15/3166.jpg');
INSERT INTO `bee_detail_content` VALUES ('186','15','images/details/15/3167.jpg');
INSERT INTO `bee_detail_content` VALUES ('187','15','images/details/15/3168.jpg');
INSERT INTO `bee_detail_content` VALUES ('188','15','images/details/15/3169.jpg');
INSERT INTO `bee_detail_content` VALUES ('189','15','images/details/15/3170.jpg');
INSERT INTO `bee_detail_content` VALUES ('190','15','images/details/15/3171.jpg');
INSERT INTO `bee_detail_content` VALUES ('191','15','images/details/15/3172.jpg');
INSERT INTO `bee_detail_content` VALUES ('192','15','images/details/15/3173.jpg');
INSERT INTO `bee_detail_content` VALUES ('193','15','images/details/15/3174.jpg');
INSERT INTO `bee_detail_content` VALUES ('194','15','images/details/15/3175.jpg');
INSERT INTO `bee_detail_content` VALUES ('195','16','images/details/16/3896.jpg');
INSERT INTO `bee_detail_content` VALUES ('196','16','images/details/16/3897.jpg');
INSERT INTO `bee_detail_content` VALUES ('197','16','images/details/16/3898.jpg');
INSERT INTO `bee_detail_content` VALUES ('198','16','images/details/16/3899.jpg');
INSERT INTO `bee_detail_content` VALUES ('199','16','images/details/16/3900.jpg');
INSERT INTO `bee_detail_content` VALUES ('200','16','images/details/16/3901.jpg');
INSERT INTO `bee_detail_content` VALUES ('201','16','images/details/16/3902.jpg');
INSERT INTO `bee_detail_content` VALUES ('202','16','images/details/16/3903.jpg');
INSERT INTO `bee_detail_content` VALUES ('203','16','images/details/16/3904.jpg');
INSERT INTO `bee_detail_content` VALUES ('204','16','images/details/16/3905.jpg');
INSERT INTO `bee_detail_content` VALUES ('205','16','images/details/16/3906.jpg');
INSERT INTO `bee_detail_content` VALUES ('206','16','images/details/16/3907.jpg');
INSERT INTO `bee_detail_content` VALUES ('207','16','images/details/16/3908.jpg');
INSERT INTO `bee_detail_content` VALUES ('208','16','images/details/16/3909.jpg');
INSERT INTO `bee_detail_content` VALUES ('209','16','images/details/16/3910.jpg');
INSERT INTO `bee_detail_content` VALUES ('210','16','images/details/16/3911.jpg');
INSERT INTO `bee_detail_content` VALUES ('211','16','images/details/16/3912.jpg');
INSERT INTO `bee_detail_content` VALUES ('212','16','images/details/16/3913.jpg');
INSERT INTO `bee_detail_content` VALUES ('213','16','images/details/16/3914.jpg');
INSERT INTO `bee_detail_content` VALUES ('214','16','images/details/16/3915.jpg');
INSERT INTO `bee_detail_content` VALUES ('215','16','images/details/16/3916.jpg');
INSERT INTO `bee_detail_content` VALUES ('216','16','images/details/16/3917.jpg');
INSERT INTO `bee_detail_content` VALUES ('217','17','images/details/17/3810.jpg');
INSERT INTO `bee_detail_content` VALUES ('218','17','images/details/17/3811.jpg');
INSERT INTO `bee_detail_content` VALUES ('219','17','images/details/17/3812.jpg');
INSERT INTO `bee_detail_content` VALUES ('220','17','images/details/17/3813.jpg');
INSERT INTO `bee_detail_content` VALUES ('221','17','images/details/17/3814.jpg');
INSERT INTO `bee_detail_content` VALUES ('222','17','images/details/17/3815.jpg');
INSERT INTO `bee_detail_content` VALUES ('223','17','images/details/17/3816.jpg');
INSERT INTO `bee_detail_content` VALUES ('224','17','images/details/17/3817.jpg');
INSERT INTO `bee_detail_content` VALUES ('225','17','images/details/17/3818.jpg');
INSERT INTO `bee_detail_content` VALUES ('226','17','images/details/17/3819.jpg');
INSERT INTO `bee_detail_content` VALUES ('227','17','images/details/17/3820.jpg');
INSERT INTO `bee_detail_content` VALUES ('228','17','images/details/17/3821.jpg');
INSERT INTO `bee_detail_content` VALUES ('229','17','images/details/17/3822.jpg');
INSERT INTO `bee_detail_content` VALUES ('230','17','images/details/17/3823.jpg');
INSERT INTO `bee_detail_content` VALUES ('231','17','images/details/17/3824.jpg');
INSERT INTO `bee_detail_content` VALUES ('232','17','images/details/17/3825.jpg');
INSERT INTO `bee_detail_content` VALUES ('233','18','images/details/18/3317.jpg');
INSERT INTO `bee_detail_content` VALUES ('234','18','images/details/18/3318.jpg');
INSERT INTO `bee_detail_content` VALUES ('235','18','images/details/18/3319.jpg');
INSERT INTO `bee_detail_content` VALUES ('236','18','images/details/18/3320.jpg');
INSERT INTO `bee_detail_content` VALUES ('237','18','images/details/18/3321.jpg');
INSERT INTO `bee_detail_content` VALUES ('238','18','images/details/18/3322.jpg');
INSERT INTO `bee_detail_content` VALUES ('239','18','images/details/18/3323.jpg');
INSERT INTO `bee_detail_content` VALUES ('240','18','images/details/18/3324.jpg');
INSERT INTO `bee_detail_content` VALUES ('241','18','images/details/18/3325.jpg');
INSERT INTO `bee_detail_content` VALUES ('242','18','images/details/18/3326.jpg');
INSERT INTO `bee_detail_content` VALUES ('243','18','images/details/18/3327.jpg');
INSERT INTO `bee_detail_content` VALUES ('244','18','images/details/18/3328.jpg');
INSERT INTO `bee_detail_content` VALUES ('245','19','images/details/19/3072.jpg');
INSERT INTO `bee_detail_content` VALUES ('246','19','images/details/19/3073.jpg');
INSERT INTO `bee_detail_content` VALUES ('247','19','images/details/19/3074.jpg');
INSERT INTO `bee_detail_content` VALUES ('248','19','images/details/19/3075.jpg');
INSERT INTO `bee_detail_content` VALUES ('249','19','images/details/19/3076.jpg');
INSERT INTO `bee_detail_content` VALUES ('250','19','images/details/19/3077.jpg');
INSERT INTO `bee_detail_content` VALUES ('251','19','images/details/19/3078.jpg');
INSERT INTO `bee_detail_content` VALUES ('252','19','images/details/19/3079.jpg');
INSERT INTO `bee_detail_content` VALUES ('253','19','images/details/19/3080.jpg');
INSERT INTO `bee_detail_content` VALUES ('254','19','images/details/19/3081.jpg');
INSERT INTO `bee_detail_content` VALUES ('255','19','images/details/19/3082.jpg');
INSERT INTO `bee_detail_content` VALUES ('256','19','images/details/19/3083.jpg');
INSERT INTO `bee_detail_content` VALUES ('257','19','images/details/19/3084.jpg');
INSERT INTO `bee_detail_content` VALUES ('258','20','images/details/20/3098.jpg');
INSERT INTO `bee_detail_content` VALUES ('259','20','images/details/20/3099.jpg');
INSERT INTO `bee_detail_content` VALUES ('260','20','images/details/20/3100.jpg');
INSERT INTO `bee_detail_content` VALUES ('261','20','images/details/20/3101.jpg');
INSERT INTO `bee_detail_content` VALUES ('262','20','images/details/20/3102.jpg');
INSERT INTO `bee_detail_content` VALUES ('263','20','images/details/20/3103.jpg');
INSERT INTO `bee_detail_content` VALUES ('264','20','images/details/20/3104.jpg');
INSERT INTO `bee_detail_content` VALUES ('265','20','images/details/20/3105.jpg');
INSERT INTO `bee_detail_content` VALUES ('266','20','images/details/20/3106.jpg');
INSERT INTO `bee_detail_content` VALUES ('267','20','images/details/20/3107.jpg');
INSERT INTO `bee_detail_content` VALUES ('268','20','images/details/20/3108.jpg');
INSERT INTO `bee_detail_content` VALUES ('269','20','images/details/20/3109.jpg');
INSERT INTO `bee_detail_content` VALUES ('270','20','images/details/20/3110.jpg');
INSERT INTO `bee_detail_content` VALUES ('271','21','images/details/21/3085.jpg');
INSERT INTO `bee_detail_content` VALUES ('272','21','images/details/21/3086.jpg');
INSERT INTO `bee_detail_content` VALUES ('273','21','images/details/21/3087.jpg');
INSERT INTO `bee_detail_content` VALUES ('274','21','images/details/21/3088.jpg');
INSERT INTO `bee_detail_content` VALUES ('275','21','images/details/21/3089.jpg');
INSERT INTO `bee_detail_content` VALUES ('276','21','images/details/21/3090.jpg');
INSERT INTO `bee_detail_content` VALUES ('277','21','images/details/21/3091.jpg');
INSERT INTO `bee_detail_content` VALUES ('278','21','images/details/21/3092.jpg');
INSERT INTO `bee_detail_content` VALUES ('279','21','images/details/21/3093.jpg');
INSERT INTO `bee_detail_content` VALUES ('280','21','images/details/21/3094.jpg');
INSERT INTO `bee_detail_content` VALUES ('281','21','images/details/21/3095.jpg');
INSERT INTO `bee_detail_content` VALUES ('282','21','images/details/21/3096.jpg');
INSERT INTO `bee_detail_content` VALUES ('283','21','images/details/21/3097.jpg');
INSERT INTO `bee_detail_content` VALUES ('284','22','images/details/22/3266.jpg');
INSERT INTO `bee_detail_content` VALUES ('285','22','images/details/22/3267.jpg');
INSERT INTO `bee_detail_content` VALUES ('286','22','images/details/22/3268.jpg');
INSERT INTO `bee_detail_content` VALUES ('287','22','images/details/22/3269.jpg');
INSERT INTO `bee_detail_content` VALUES ('288','22','images/details/22/3270.jpg');
INSERT INTO `bee_detail_content` VALUES ('289','22','images/details/22/3271.jpg');
INSERT INTO `bee_detail_content` VALUES ('290','22','images/details/22/3272.jpg');
INSERT INTO `bee_detail_content` VALUES ('291','22','images/details/22/3273.jpg');
INSERT INTO `bee_detail_content` VALUES ('292','22','images/details/22/3274.jpg');
INSERT INTO `bee_detail_content` VALUES ('293','22','images/details/22/3275.jpg');
INSERT INTO `bee_detail_content` VALUES ('294','22','images/details/22/3276.jpg');
INSERT INTO `bee_detail_content` VALUES ('295','22','images/details/22/3277.jpg');
INSERT INTO `bee_detail_content` VALUES ('296','22','images/details/22/3278.jpg');
INSERT INTO `bee_detail_content` VALUES ('297','23','images/details/23/3046.jpg');
INSERT INTO `bee_detail_content` VALUES ('298','23','images/details/23/3047.jpg');
INSERT INTO `bee_detail_content` VALUES ('299','23','images/details/23/3048.jpg');
INSERT INTO `bee_detail_content` VALUES ('300','23','images/details/23/3049.jpg');
INSERT INTO `bee_detail_content` VALUES ('301','23','images/details/23/3050.jpg');
INSERT INTO `bee_detail_content` VALUES ('302','23','images/details/23/3051.jpg');
INSERT INTO `bee_detail_content` VALUES ('303','23','images/details/23/3052.jpg');
INSERT INTO `bee_detail_content` VALUES ('304','23','images/details/23/3053.jpg');
INSERT INTO `bee_detail_content` VALUES ('305','23','images/details/23/3054.jpg');
INSERT INTO `bee_detail_content` VALUES ('306','23','images/details/23/3055.jpg');
INSERT INTO `bee_detail_content` VALUES ('307','23','images/details/23/3056.jpg');
INSERT INTO `bee_detail_content` VALUES ('308','23','images/details/23/3057.jpg');
INSERT INTO `bee_detail_content` VALUES ('309','24','images/details/24/3253.jpg');
INSERT INTO `bee_detail_content` VALUES ('310','24','images/details/24/3254.jpg');
INSERT INTO `bee_detail_content` VALUES ('311','24','images/details/24/3255.jpg');
INSERT INTO `bee_detail_content` VALUES ('312','24','images/details/24/3256.jpg');
INSERT INTO `bee_detail_content` VALUES ('313','24','images/details/24/3257.jpg');
INSERT INTO `bee_detail_content` VALUES ('314','24','images/details/24/3258.jpg');
INSERT INTO `bee_detail_content` VALUES ('315','24','images/details/24/3259.jpg');
INSERT INTO `bee_detail_content` VALUES ('316','24','images/details/24/3260.jpg');
INSERT INTO `bee_detail_content` VALUES ('317','24','images/details/24/3261.jpg');
INSERT INTO `bee_detail_content` VALUES ('318','24','images/details/24/3262.jpg');
INSERT INTO `bee_detail_content` VALUES ('319','24','images/details/24/3263.jpg');
INSERT INTO `bee_detail_content` VALUES ('320','24','images/details/24/3264.jpg');
INSERT INTO `bee_detail_content` VALUES ('321','24','images/details/24/3265.jpg');
INSERT INTO `bee_detail_content` VALUES ('322','25','images/details/25/3279.jpg');
INSERT INTO `bee_detail_content` VALUES ('323','25','images/details/25/3280.jpg');
INSERT INTO `bee_detail_content` VALUES ('324','25','images/details/25/3281.jpg');
INSERT INTO `bee_detail_content` VALUES ('325','25','images/details/25/3282.jpg');
INSERT INTO `bee_detail_content` VALUES ('326','25','images/details/25/3283.jpg');
INSERT INTO `bee_detail_content` VALUES ('327','25','images/details/25/3284.jpg');
INSERT INTO `bee_detail_content` VALUES ('328','25','images/details/25/3285.jpg');
INSERT INTO `bee_detail_content` VALUES ('329','25','images/details/25/3286.jpg');
INSERT INTO `bee_detail_content` VALUES ('330','25','images/details/25/3287.jpg');
INSERT INTO `bee_detail_content` VALUES ('331','25','images/details/25/3288.jpg');
INSERT INTO `bee_detail_content` VALUES ('332','25','images/details/25/3289.jpg');
INSERT INTO `bee_detail_content` VALUES ('333','25','images/details/25/3290.jpg');
INSERT INTO `bee_detail_content` VALUES ('334','25','images/details/25/3291.jpg');
INSERT INTO `bee_detail_content` VALUES ('335','26','images/details/26/3202.jpg');
INSERT INTO `bee_detail_content` VALUES ('336','26','images/details/26/3203.jpg');
INSERT INTO `bee_detail_content` VALUES ('337','26','images/details/26/3204.jpg');
INSERT INTO `bee_detail_content` VALUES ('338','26','images/details/26/3205.jpg');
INSERT INTO `bee_detail_content` VALUES ('339','26','images/details/26/3206.jpg');
INSERT INTO `bee_detail_content` VALUES ('340','26','images/details/26/3207.jpg');
INSERT INTO `bee_detail_content` VALUES ('341','26','images/details/26/3208.jpg');
INSERT INTO `bee_detail_content` VALUES ('342','26','images/details/26/3209.jpg');
INSERT INTO `bee_detail_content` VALUES ('343','26','images/details/26/3210.jpg');
INSERT INTO `bee_detail_content` VALUES ('344','26','images/details/26/3211.jpg');
INSERT INTO `bee_detail_content` VALUES ('345','26','images/details/26/3212.jpg');
INSERT INTO `bee_detail_content` VALUES ('346','26','images/details/26/3213.jpg');
INSERT INTO `bee_detail_content` VALUES ('347','26','images/details/26/3214.jpg');
INSERT INTO `bee_detail_content` VALUES ('348','27','images/details/27/3305.jpg');
INSERT INTO `bee_detail_content` VALUES ('349','27','images/details/27/3306.jpg');
INSERT INTO `bee_detail_content` VALUES ('350','27','images/details/27/3307.jpg');
INSERT INTO `bee_detail_content` VALUES ('351','27','images/details/27/3308.jpg');
INSERT INTO `bee_detail_content` VALUES ('352','27','images/details/27/3309.jpg');
INSERT INTO `bee_detail_content` VALUES ('353','27','images/details/27/3310.jpg');
INSERT INTO `bee_detail_content` VALUES ('354','27','images/details/27/3311.jpg');
INSERT INTO `bee_detail_content` VALUES ('355','27','images/details/27/3312.jpg');
INSERT INTO `bee_detail_content` VALUES ('356','27','images/details/27/3313.jpg');
INSERT INTO `bee_detail_content` VALUES ('357','27','images/details/27/3314.jpg');
INSERT INTO `bee_detail_content` VALUES ('358','27','images/details/27/3315.jpg');
INSERT INTO `bee_detail_content` VALUES ('359','27','images/details/27/3316.jpg');
INSERT INTO `bee_detail_content` VALUES ('360','28','images/details/28/3367.jpg');
INSERT INTO `bee_detail_content` VALUES ('361','28','images/details/28/3368.jpg');
INSERT INTO `bee_detail_content` VALUES ('362','28','images/details/28/3369.jpg');
INSERT INTO `bee_detail_content` VALUES ('363','28','images/details/28/3370.jpg');
INSERT INTO `bee_detail_content` VALUES ('364','28','images/details/28/3371.jpg');
INSERT INTO `bee_detail_content` VALUES ('365','28','images/details/28/3372.jpg');
INSERT INTO `bee_detail_content` VALUES ('366','28','images/details/28/3373.jpg');
INSERT INTO `bee_detail_content` VALUES ('367','28','images/details/28/3374.jpg');
INSERT INTO `bee_detail_content` VALUES ('368','28','images/details/28/3375.jpg');
INSERT INTO `bee_detail_content` VALUES ('369','28','images/details/28/3376.jpg');
INSERT INTO `bee_detail_content` VALUES ('370','28','images/details/28/3377.jpg');
INSERT INTO `bee_detail_content` VALUES ('371','28','images/details/28/3378.jpg');
INSERT INTO `bee_detail_content` VALUES ('372','28','images/details/28/3379.jpg');
INSERT INTO `bee_detail_content` VALUES ('373','29','images/details/29/3329.jpg');
INSERT INTO `bee_detail_content` VALUES ('374','29','images/details/29/3330.jpg');
INSERT INTO `bee_detail_content` VALUES ('375','29','images/details/29/3331.jpg');
INSERT INTO `bee_detail_content` VALUES ('376','29','images/details/29/3332.jpg');
INSERT INTO `bee_detail_content` VALUES ('377','29','images/details/29/3333.jpg');
INSERT INTO `bee_detail_content` VALUES ('378','29','images/details/29/3334.jpg');
INSERT INTO `bee_detail_content` VALUES ('379','29','images/details/29/3335.jpg');
INSERT INTO `bee_detail_content` VALUES ('380','29','images/details/29/3336.jpg');
INSERT INTO `bee_detail_content` VALUES ('381','29','images/details/29/3337.jpg');
INSERT INTO `bee_detail_content` VALUES ('382','29','images/details/29/3338.jpg');
INSERT INTO `bee_detail_content` VALUES ('383','29','images/details/29/3339.jpg');
INSERT INTO `bee_detail_content` VALUES ('384','29','images/details/29/3340.jpg');
INSERT INTO `bee_detail_content` VALUES ('385','29','images/details/29/3341.jpg');
INSERT INTO `bee_detail_content` VALUES ('386','30','images/details/30/3240.jpg');
INSERT INTO `bee_detail_content` VALUES ('387','30','images/details/30/3241.jpg');
INSERT INTO `bee_detail_content` VALUES ('388','30','images/details/30/3242.jpg');
INSERT INTO `bee_detail_content` VALUES ('389','30','images/details/30/3243.jpg');
INSERT INTO `bee_detail_content` VALUES ('390','30','images/details/30/3244.jpg');
INSERT INTO `bee_detail_content` VALUES ('391','30','images/details/30/3245.jpg');
INSERT INTO `bee_detail_content` VALUES ('392','30','images/details/30/3246.jpg');
INSERT INTO `bee_detail_content` VALUES ('393','30','images/details/30/3247.jpg');
INSERT INTO `bee_detail_content` VALUES ('394','30','images/details/30/3248.jpg');
INSERT INTO `bee_detail_content` VALUES ('395','30','images/details/30/3249.jpg');
INSERT INTO `bee_detail_content` VALUES ('396','30','images/details/30/3250.jpg');
INSERT INTO `bee_detail_content` VALUES ('397','30','images/details/30/3251.jpg');
INSERT INTO `bee_detail_content` VALUES ('398','30','images/details/30/3252.jpg');
INSERT INTO `bee_detail_content` VALUES ('399','31','images/details/31/3215.jpg');
INSERT INTO `bee_detail_content` VALUES ('400','31','images/details/31/3216.jpg');
INSERT INTO `bee_detail_content` VALUES ('401','31','images/details/31/3217.jpg');
INSERT INTO `bee_detail_content` VALUES ('402','31','images/details/31/3218.jpg');
INSERT INTO `bee_detail_content` VALUES ('403','31','images/details/31/3219.jpg');
INSERT INTO `bee_detail_content` VALUES ('404','31','images/details/31/3220.jpg');
INSERT INTO `bee_detail_content` VALUES ('405','31','images/details/31/3221.jpg');
INSERT INTO `bee_detail_content` VALUES ('406','31','images/details/31/3222.jpg');
INSERT INTO `bee_detail_content` VALUES ('407','31','images/details/31/3223.jpg');
INSERT INTO `bee_detail_content` VALUES ('408','31','images/details/31/3224.jpg');
INSERT INTO `bee_detail_content` VALUES ('409','31','images/details/31/3225.jpg');
INSERT INTO `bee_detail_content` VALUES ('410','31','images/details/31/3226.jpg');
INSERT INTO `bee_detail_content` VALUES ('411','32','images/details/32/3432.jpg');
INSERT INTO `bee_detail_content` VALUES ('412','32','images/details/32/3433.jpg');
INSERT INTO `bee_detail_content` VALUES ('413','32','images/details/32/3434.jpg');
INSERT INTO `bee_detail_content` VALUES ('414','32','images/details/32/3435.jpg');
INSERT INTO `bee_detail_content` VALUES ('415','32','images/details/32/3436.jpg');
INSERT INTO `bee_detail_content` VALUES ('416','32','images/details/32/3437.jpg');
INSERT INTO `bee_detail_content` VALUES ('417','32','images/details/32/3438.jpg');
INSERT INTO `bee_detail_content` VALUES ('418','32','images/details/32/3439.jpg');
INSERT INTO `bee_detail_content` VALUES ('419','32','images/details/32/3440.jpg');
INSERT INTO `bee_detail_content` VALUES ('420','32','images/details/32/3441.jpg');
INSERT INTO `bee_detail_content` VALUES ('421','32','images/details/32/3442.jpg');
INSERT INTO `bee_detail_content` VALUES ('422','32','images/details/32/3443.jpg');
INSERT INTO `bee_detail_content` VALUES ('423','32','images/details/32/3444.jpg');
INSERT INTO `bee_detail_content` VALUES ('424','33','images/details/33/3458.jpg');
INSERT INTO `bee_detail_content` VALUES ('425','33','images/details/33/3459.jpg');
INSERT INTO `bee_detail_content` VALUES ('426','33','images/details/33/3460.jpg');
INSERT INTO `bee_detail_content` VALUES ('427','33','images/details/33/3461.jpg');
INSERT INTO `bee_detail_content` VALUES ('428','33','images/details/33/3462.jpg');
INSERT INTO `bee_detail_content` VALUES ('429','33','images/details/33/3463.jpg');
INSERT INTO `bee_detail_content` VALUES ('430','33','images/details/33/3464.jpg');
INSERT INTO `bee_detail_content` VALUES ('431','33','images/details/33/3465.jpg');
INSERT INTO `bee_detail_content` VALUES ('432','33','images/details/33/3466.jpg');
INSERT INTO `bee_detail_content` VALUES ('433','33','images/details/33/3467.jpg');
INSERT INTO `bee_detail_content` VALUES ('434','33','images/details/33/3468.jpg');
INSERT INTO `bee_detail_content` VALUES ('435','33','images/details/33/3469.jpg');
INSERT INTO `bee_detail_content` VALUES ('436','33','images/details/33/3470.jpg');
INSERT INTO `bee_detail_content` VALUES ('437','34','images/details/34/3758.jpg');
INSERT INTO `bee_detail_content` VALUES ('438','34','images/details/34/3759.jpg');
INSERT INTO `bee_detail_content` VALUES ('439','34','images/details/34/3760.jpg');
INSERT INTO `bee_detail_content` VALUES ('440','34','images/details/34/3761.jpg');
INSERT INTO `bee_detail_content` VALUES ('441','34','images/details/34/3762.jpg');
INSERT INTO `bee_detail_content` VALUES ('442','34','images/details/34/3763.jpg');
INSERT INTO `bee_detail_content` VALUES ('443','34','images/details/34/3764.jpg');
INSERT INTO `bee_detail_content` VALUES ('444','34','images/details/34/3765.jpg');
INSERT INTO `bee_detail_content` VALUES ('445','34','images/details/34/3766.jpg');
INSERT INTO `bee_detail_content` VALUES ('446','34','images/details/34/3767.jpg');
INSERT INTO `bee_detail_content` VALUES ('447','34','images/details/34/3768.jpg');
INSERT INTO `bee_detail_content` VALUES ('448','34','images/details/34/3769.jpg');
INSERT INTO `bee_detail_content` VALUES ('449','34','images/details/34/3770.jpg');
INSERT INTO `bee_detail_content` VALUES ('450','35','images/details/35/3718.jpg');
INSERT INTO `bee_detail_content` VALUES ('451','35','images/details/35/3719.jpg');
INSERT INTO `bee_detail_content` VALUES ('452','35','images/details/35/3720.jpg');
INSERT INTO `bee_detail_content` VALUES ('453','35','images/details/35/3721.jpg');
INSERT INTO `bee_detail_content` VALUES ('454','35','images/details/35/3722.jpg');
INSERT INTO `bee_detail_content` VALUES ('455','35','images/details/35/3723.jpg');
INSERT INTO `bee_detail_content` VALUES ('456','35','images/details/35/3724.jpg');
INSERT INTO `bee_detail_content` VALUES ('457','35','images/details/35/3725.jpg');
INSERT INTO `bee_detail_content` VALUES ('458','35','images/details/35/3726.jpg');
INSERT INTO `bee_detail_content` VALUES ('459','35','images/details/35/3727.jpg');
INSERT INTO `bee_detail_content` VALUES ('460','35','images/details/35/3728.jpg');
INSERT INTO `bee_detail_content` VALUES ('461','35','images/details/35/3729.jpg');
INSERT INTO `bee_detail_content` VALUES ('462','35','images/details/35/3730.jpg');


-- ----------------------------
-- Table structure for `bee_detail_video`
-- 视频表
-- ----------------------------
DROP TABLE IF EXISTS `bee_detail_video`;
CREATE TABLE `bee_detail_video` (
  `vid` int(11) NOT NULL auto_increment,
  -- bee_cake表的id
  `cid` int(11) default NULL,
  -- 视频截屏
  `videoimg` varchar(128) default NULL,
  -- 视频
  `video` varchar(128) default NULL,
  PRIMARY KEY  (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `bee_detail_video` VALUES ('1', '1', 'images/details/1/nyg_v.jpg','images/details/1/nyg8.mp4');

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
-- Table structure for `bee_cake_category`
-- 蛋糕规格表
-- ----------------------------
DROP TABLE IF EXISTS `bee_cake_category`;
CREATE TABLE `bee_cake_category` (
  `dtid` int(11) NOT NULL auto_increment,
  -- family表的id
  `fid` int(11) default NULL,
  -- 尺寸
  `size` int(11) default NULL,
  -- 单位
  `unit` varchar(16) default NULL,
  -- 最小人数
  `pmin` int(11) default NULL,
  -- 最大人数
  `pmax` int(11) default NULL,
  PRIMARY KEY  (`dtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_cake_category
-- 配送时间表数据
-- ----------------------------
INSERT INTO `bee_cake_category` VALUES ('1','2','62','厘米','130','150');
INSERT INTO `bee_cake_category` VALUES ('2','1','54','厘米','130','150');
INSERT INTO `bee_cake_category` VALUES ('3','1','53','厘米','130','150');
INSERT INTO `bee_cake_category` VALUES ('4','2','51','厘米','70','90');
INSERT INTO `bee_cake_category` VALUES ('5','2','47','厘米','50','70');
INSERT INTO `bee_cake_category` VALUES ('6','1','45','厘米','70','90');
INSERT INTO `bee_cake_category` VALUES ('7','1','44','厘米','70','90');
INSERT INTO `bee_cake_category` VALUES ('8','1','41','厘米','50','70');
INSERT INTO `bee_cake_category` VALUES ('9','1','40','厘米','50','70');
INSERT INTO `bee_cake_category` VALUES ('10','1','37','厘米','40','50');
INSERT INTO `bee_cake_category` VALUES ('11','1','36','厘米','40','50');
INSERT INTO `bee_cake_category` VALUES ('12','1','33','厘米','20','30');
INSERT INTO `bee_cake_category` VALUES ('13','2','33','厘米','40','50');
INSERT INTO `bee_cake_category` VALUES ('14','1','32','厘米','20','30');
INSERT INTO `bee_cake_category` VALUES ('15','2','29','厘米','20','30');
INSERT INTO `bee_cake_category` VALUES ('16','1','29','厘米','13','18');
INSERT INTO `bee_cake_category` VALUES ('17','1','28','厘米','13','18');
INSERT INTO `bee_cake_category` VALUES ('18','1','26','厘米','13','18');
INSERT INTO `bee_cake_category` VALUES ('19','1','24','厘米','7','12');
INSERT INTO `bee_cake_category` VALUES ('20','1','23','厘米','7','12');
INSERT INTO `bee_cake_category` VALUES ('21','2','21','厘米','7','12');
INSERT INTO `bee_cake_category` VALUES ('22','1','20','厘米','5','6');
INSERT INTO `bee_cake_category` VALUES ('23','1','18','厘米','3','6');
INSERT INTO `bee_cake_category` VALUES ('24','1','17','厘米','3','6');
INSERT INTO `bee_cake_category` VALUES ('25','2','16','厘米','3','6');
INSERT INTO `bee_cake_category` VALUES ('26','1','15','厘米','2','4');
INSERT INTO `bee_cake_category` VALUES ('27','1','14','厘米','1','3');
INSERT INTO `bee_cake_category` VALUES ('28','3','700','g','3','6');

-- ----------------------------
-- Table structure for `bee_comment`
-- 商品评论表
-- ----------------------------
DROP TABLE IF EXISTS `bee_comment`;
CREATE TABLE `bee_comment` (
  `plid` int(11) NOT NULL auto_increment,
  -- 用户id
  `uid` int(11) default NULL,
  -- 商品id
  `cid` int(11) default NULL,
  -- 评分：口感
  `grade1` int(11) default NULL,
  -- 评分：配送
  `grade2` int(11) default NULL,
  -- 评分：包装
  `grade3` int(11) default NULL,
  -- 评论内容
  `comment_detail` varchar(1024) default NULL,
  -- 评论时间
  `comment_time` bigint(20) default NULL,
  PRIMARY KEY  (`plid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bee_comment
-- 商品评论表数据
-- ----------------------------
INSERT INTO `bee_comment` VALUES ('1','1','1','2','4','5','配送很准时，牛油果味蛋糕不甜不腻，适合来人小孩。想提一个建议，把现在的餐具平勺换成叉子，一个平片实在没法把蛋糕叉起来吃到嘴。','1517110253');
INSERT INTO `bee_comment` VALUES ('2','2','1','5','4','5','半夜订，半夜接到客服确认电话，太敬业了。蛋糕一定要放放口感才更好，亲测如此，如果心急可不能品尝到绝佳风味哦。一分钱一分货，别嫌贵，吃的就是品质。32个赞！','1517110253');
INSERT INTO `bee_comment` VALUES ('3','3','1','5','5','5','太赞了，一点也不腻，甜度适中，非常适合减肥中的人事，还会回购！','1516764653');
INSERT INTO `bee_comment` VALUES ('4','4','1','5','4','3','口味很清淡，口味重的人可能觉得没有味道。 另外，可能会有人吃不惯牛油果。 我买到这个蛋糕，中间牛油果木斯里的牛油果块有的还没熟透，吃起来口感不好，有发涩的感觉。我觉得应该对蛋糕所用材料的品质更为严格，才能保障蛋糕品质长期一致，确保贵公司的产品在市场上更受欢迎。','1516775453');
INSERT INTO `bee_comment` VALUES ('5','5','1','5','4','4','味道清淡爽口，很不错','1516765453');
INSERT INTO `bee_comment` VALUES ('6','6','1','1','3','5','刚收到，很期待，因为是低脂，无限打call','1516755453');
INSERT INTO `bee_comment` VALUES ('7','7','1','4','3','5','非常棒！做工精致，造型独特，喜欢','1516776453');
INSERT INTO `bee_comment` VALUES ('8','8','1','4','5','3','味道清淡，非常不错，第二次购买','1516777453');
INSERT INTO `bee_comment` VALUES ('9','9','1','2','4','5','清新不腻','1517775453');
INSERT INTO `bee_comment` VALUES ('10','10','1','5','4','5','呃……跟月饼的那个是一样的……………我不喜欢这种……下次还是要选双层芝士的','1516675453');
INSERT INTO `bee_comment` VALUES ('11','11','1','5','5','5','不错，就是有些太冰','1516775453');
INSERT INTO `bee_comment` VALUES ('12','12','1','5','4','3','第二次买此款，芯没有第一次细，感觉各个渣渣的，有点生的是开心果？牛油果没有第一个味道重','1516775653');
INSERT INTO `bee_comment` VALUES ('13','13','1','5','4','4','蛋糕颜值好高！快递小哥很准时，还送了两小块巧克力的，宝宝喜欢！','1516775453');
INSERT INTO `bee_comment` VALUES ('14','14','1','1','3','5','好吃，还会买','1516775453');
INSERT INTO `bee_comment` VALUES ('15','15','1','4','3','5','很好，不那么特别甜的滋味更加放心给孩子和老人吃，其实我也很喜欢这个口味的，希望是长期售卖的产品啊，以后有机会再来买着吃。','1516775443');
INSERT INTO `bee_comment` VALUES ('16','16','1','4','5','3','非常好。目前觉得最好吃的一款蛋糕。希望推出新的产品并且继续优惠活动！','1516775453');
INSERT INTO `bee_comment` VALUES ('17','17','1','2','4','5','这一新款牛油果蛋糕口感细腻清淡我们吃过了都很喜欢','1516775453');
INSERT INTO `bee_comment` VALUES ('18','18','1','5','4','5','好吃，第二次买了，就是有些太凉了，口味很好，不是特别甜，吃了没有罪恶感','1516775853');
INSERT INTO `bee_comment` VALUES ('19','19','1','5','5','5','清甜，淡淡的奶油味，很细腻，喜欢','1516775453');
INSERT INTO `bee_comment` VALUES ('20','20','1','5','4','3','超级棒，就是要这样不是太甜，吃了也不腻的蛋糕，适合减肥中的朋友，还会再买','1516475453');
INSERT INTO `bee_comment` VALUES ('21','21','1','5','4','4','好吃，很清爽的蛋糕~','1516775453');
INSERT INTO `bee_comment` VALUES ('22','22','1','1','3','5','味道清淡，甜度很低，纯纯的，非常好！','1516775453');
INSERT INTO `bee_comment` VALUES ('23','23','1','4','3','5','自从朋友推荐了小蜜蜂之后，就一直吃，这次有了充值活动后，果断充值，太值了。','1516675453');
INSERT INTO `bee_comment` VALUES ('24','24','1','4','5','3','好吃，蜂蜜味很浓','1516775453');
INSERT INTO `bee_comment` VALUES ('25','25','1','2','4','5','非常好吃，同事过生日帮忙订购的','1516175453');
INSERT INTO `bee_comment` VALUES ('26','26','1','5','4','5','很好吃适合小朋友不甜','1516275453');
INSERT INTO `bee_comment` VALUES ('27','27','1','5','5','5','平淡 纯粹','1516375453');
INSERT INTO `bee_comment` VALUES ('28','28','1','5','4','3','太好吃了！！！','1516475453');
INSERT INTO `bee_comment` VALUES ('29','29','1','5','4','4','送来的时候还是冰冰凉凉的，不是很甜，牛油果慕斯没什么味，主要是不甜低脂吸引我。个人更喜欢稍微绵软一点的口感，所以蛋糕放外面暖了一会再吃，味道更好吃','1516575453');
INSERT INTO `bee_comment` VALUES ('30','30','1','1','3','5','口味很好送货师傅服务也好包装也很好','1516675453');
INSERT INTO `bee_comment` VALUES ('31','31','1','4','3','5','很好吃，不甜，朋友也觉得不错','1516775453');
INSERT INTO `bee_comment` VALUES ('32','32','1','4','5','3','口味淡淡的，妈妈很喜欢。','1516875453');
INSERT INTO `bee_comment` VALUES ('33','33','1','2','4','5','很棒的蛋糕！六环外也给配送棒棒哒','1516975453');
INSERT INTO `bee_comment` VALUES ('34','34','1','5','4','5','很清淡～推荐给不宜或不爱吃甜的朋友们～','1516715453');
INSERT INTO `bee_comment` VALUES ('35','35','1','5','5','5','口感满意度 非常好 配送满意度 非常好 包装满意度 非常好','1516725453');
INSERT INTO `bee_comment` VALUES ('36','36','1','5','4','3','很喜欢这款，没什么甜味，基本是靠食材本身的味道！口味清淡的人推荐尝试','1516735453');
INSERT INTO `bee_comment` VALUES ('37','37','1','5','4','4','还不错哟','1516745453');
INSERT INTO `bee_comment` VALUES ('38','38','1','1','3','5','口感很好，不甜不腻，家人很喜欢','1516755453');
INSERT INTO `bee_comment` VALUES ('39','39','1','4','3','5','味道真不错啊！','1516765453');
INSERT INTO `bee_comment` VALUES ('40','40','1','4','5','3','蛋糕味道可以，就是稍微有点腻 但是配送时未带发票，未送小米 客服也未回复','1516775453');
INSERT INTO `bee_comment` VALUES ('41','41','1','4','3','5','蛋糕美观漂亮很好吃','1516785453');
INSERT INTO `bee_comment` VALUES ('42','42','1','4','5','3','有类似芝士冰激凌细腻的口感，又比芝士甜腻度低，很喜欢。快递送货迅速，包装也很不错。谢谢赠送的两包挂耳咖啡和小米','1516795453');

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
  -- `email` varchar(64) default NULL,
  -- `phone` varchar(16) default NULL,
  -- `avatar` varchar(128) default NULL,
  -- `user_name` varchar(32) default NULL,
  -- `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_user
-- 用户信息表数据
-- ----------------------------
INSERT INTO `bee_user` VALUES ('1','dingding',md5('123456'));
INSERT INTO `bee_user` VALUES ('2','dangdang',md5('123456'));
INSERT INTO `bee_user` VALUES ('3','doudou',md5('123456'));
INSERT INTO `bee_user` VALUES ('4','yaya',md5('123456'));
INSERT INTO `bee_user` VALUES ('5','1111',md5('123456'));
INSERT INTO `bee_user` VALUES ('6','ABCD',md5('123456'));
INSERT INTO `bee_user` VALUES ('7','mohk',md5('123456'));
INSERT INTO `bee_user` VALUES ('8','121123',md5('123456'));
INSERT INTO `bee_user` VALUES ('9','555555',md5('123456'));
INSERT INTO `bee_user` VALUES ('10','xuyong',md5('123456'));
INSERT INTO `bee_user` VALUES ('11','admin',md5('123456'));
INSERT INTO `bee_user` VALUES ('12','siyongbo',md5('123456'));
INSERT INTO `bee_user` VALUES ('13','qwerty',md5('123456'));
INSERT INTO `bee_user` VALUES ('14','dingziqiang',md5('123456'));
INSERT INTO `bee_user` VALUES ('15','hdb2264068',md5('123456'));
INSERT INTO `bee_user` VALUES ('16','wenhua',md5('123456'));
INSERT INTO `bee_user` VALUES ('17','342313',md5('123456'));
INSERT INTO `bee_user` VALUES ('18','1344453',md5('123456'));
INSERT INTO `bee_user` VALUES ('19','2738223',md5('123456'));
INSERT INTO `bee_user` VALUES ('20','宇航',md5('123456'));
INSERT INTO `bee_user` VALUES ('21','Jessy',md5('123456'));
INSERT INTO `bee_user` VALUES ('22','yuanxf',md5('123456'));
INSERT INTO `bee_user` VALUES ('23','katae',md5('123456'));
INSERT INTO `bee_user` VALUES ('24','123456',md5('123456'));
INSERT INTO `bee_user` VALUES ('25','1234',md5('123456'));
INSERT INTO `bee_user` VALUES ('26','qwe12345',md5('123456'));
INSERT INTO `bee_user` VALUES ('27','diekdie',md5('123456'));
INSERT INTO `bee_user` VALUES ('28','hanrufuyun00',md5('123456'));
INSERT INTO `bee_user` VALUES ('29','li999999',md5('123456'));
INSERT INTO `bee_user` VALUES ('30','厄尔阿伟大的',md5('123456'));
INSERT INTO `bee_user` VALUES ('31','tom',md5('123456'));
INSERT INTO `bee_user` VALUES ('32','zhouzhi',md5('123456'));
INSERT INTO `bee_user` VALUES ('33','juleck',md5('123456'));
INSERT INTO `bee_user` VALUES ('34','yangtao',md5('123456'));
INSERT INTO `bee_user` VALUES ('35','tarena',md5('123456'));
INSERT INTO `bee_user` VALUES ('36','xiaobai',md5('123456'));
INSERT INTO `bee_user` VALUES ('37','兔兔图',md5('123456'));
INSERT INTO `bee_user` VALUES ('38','卢阿啦啦啦',md5('123456'));
INSERT INTO `bee_user` VALUES ('39','Yeye ',md5('123456'));
INSERT INTO `bee_user` VALUES ('40','lsj',md5('123456'));
INSERT INTO `bee_user` VALUES ('41','lsj',md5('123456'));
INSERT INTO `bee_user` VALUES ('42','lsj',md5('123456'));
INSERT INTO `bee_user` VALUES ('43','lsj',md5('123456'));
INSERT INTO `bee_user` VALUES ('44','lsj',md5('123456'));
INSERT INTO `bee_user` VALUES ('45','hjh',md5('123456'));
INSERT INTO `bee_user` VALUES ('46','ewq',md5('123456'));
INSERT INTO `bee_user` VALUES ('47','pipi',md5('123456'));
INSERT INTO `bee_user` VALUES ('48','Lovica',md5('123456'));
INSERT INTO `bee_user` VALUES ('49','htt0908',md5('123456'));
INSERT INTO `bee_user` VALUES ('50','SUXUEMEI',md5('123456'));
INSERT INTO `bee_user` VALUES ('51','zhong',md5('123456'));
INSERT INTO `bee_user` VALUES ('52','hello',md5('123456'));
INSERT INTO `bee_user` VALUES ('53','wangjunfei',md5('123456'));
INSERT INTO `bee_user` VALUES ('54','gijhglkhglkh',md5('123456'));
INSERT INTO `bee_user` VALUES ('55','zuiyd1314',md5('123456'));
INSERT INTO `bee_user` VALUES ('56','xiaoming123',md5('123456'));
INSERT INTO `bee_user` VALUES ('57','yuanzhi',md5('123456'));
INSERT INTO `bee_user` VALUES ('58','fengkuang11',md5('123456'));
INSERT INTO `bee_user` VALUES ('59','fengkuang',md5('123456'));
INSERT INTO `bee_user` VALUES ('60','yxzaaa',md5('123456'));
INSERT INTO `bee_user` VALUES ('61','linlei0001',md5('123456'));
INSERT INTO `bee_user` VALUES ('62','superman',md5('123456'));
INSERT INTO `bee_user` VALUES ('63','tom222',md5('123456'));
INSERT INTO `bee_user` VALUES ('64','tom1234',md5('123456'));
INSERT INTO `bee_user` VALUES ('65','Liyu123',md5('123456'));
INSERT INTO `bee_user` VALUES ('66','Liyu123',md5('123456'));
INSERT INTO `bee_user` VALUES ('67','与范范',md5('123456'));
INSERT INTO `bee_user` VALUES ('68','dingdong',md5('123456'));
INSERT INTO `bee_user` VALUES ('69','wenjinhua',md5('123456'));
INSERT INTO `bee_user` VALUES ('70','thebigleg',md5('123456'));
INSERT INTO `bee_user` VALUES ('71','zhangsan',md5('123456'));
INSERT INTO `bee_user` VALUES ('72','howww',md5('123456'));
INSERT INTO `bee_user` VALUES ('73','lifan',md5('123456'));
INSERT INTO `bee_user` VALUES ('74','zhangsan99',md5('123456'));
INSERT INTO `bee_user` VALUES ('75','tingDING',md5('123456'));
INSERT INTO `bee_user` VALUES ('76','dongdong',md5('123456'));
INSERT INTO `bee_user` VALUES ('77','weiyiwei',md5('123456'));
INSERT INTO `bee_user` VALUES ('78','eveveve',md5('123456'));
INSERT INTO `bee_user` VALUES ('79','xiaoming1234',md5('123456'));
INSERT INTO `bee_user` VALUES ('80','loonchao',md5('123456'));
INSERT INTO `bee_user` VALUES ('81','hushuang',md5('123456'));
INSERT INTO `bee_user` VALUES ('82','test713',md5('123456'));
INSERT INTO `bee_user` VALUES ('83','fhr9588',md5('123456'));
INSERT INTO `bee_user` VALUES ('84','baibaidexue',md5('123456'));
INSERT INTO `bee_user` VALUES ('85','tom10',md5('123456'));
INSERT INTO `bee_user` VALUES ('86','12121',md5('123456'));
INSERT INTO `bee_user` VALUES ('87','qwer',md5('123456'));
INSERT INTO `bee_user` VALUES ('88','deefrrt',md5('123456'));
INSERT INTO `bee_user` VALUES ('89','smm123456',md5('123456'));
INSERT INTO `bee_user` VALUES ('90','Wenhua.Li',md5('123456'));
