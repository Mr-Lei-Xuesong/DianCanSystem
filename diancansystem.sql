/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : diancansystem

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-06-24 08:14:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus
-- ----------------------------
DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) NOT NULL,
  `sxiao` int(11) NOT NULL,
  `sping` double(11,1) NOT NULL,
  `spic` varchar(255) NOT NULL,
  `sdes` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus
-- ----------------------------
INSERT INTO `bus` VALUES ('1', '肯德基', '1500', '4.1', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1839105557,231696915&fm=26&gp=0.jpg', '这是一家炸鸡店');
INSERT INTO `bus` VALUES ('2', '永兴饭店', '3000', '4.0', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3989156655,2276384524&fm=26&gp=0.jpg', '老字号快餐店');
INSERT INTO `bus` VALUES ('3', '乡村基', '1784', '4.3', 'http://img2.imgtn.bdimg.com/it/u=3577738637,1098410875&fm=26&gp=0.jpg', '美味快餐滴滴');
INSERT INTO `bus` VALUES ('4', '瓜皮冒菜馆', '2100', '3.5', 'http://img0.imgtn.bdimg.com/it/u=3050285781,3213091051&fm=26&gp=0.jpg', '辣就完事');
INSERT INTO `bus` VALUES ('5', '火图火锅', '1777', '3.6', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2513572413,243333117&fm=26&gp=0.jpg', '周末来吃呀');
INSERT INTO `bus` VALUES ('6', '快乐奶茶', '1999', '4.2', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3640543594,596805609&fm=26&gp=0.jpg', '人生苦短 我爱奶茶');
INSERT INTO `bus` VALUES ('7', '零战干锅', '3000', '4.0', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1733996288,2605283042&fm=26&gp=0.jpg', '兔子真好吃鸭');
INSERT INTO `bus` VALUES ('8', '龙少爷干锅', '2000', '4.6', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1901301199,16646527&fm=26&gp=0.jpg', '环境不错，味道好');
INSERT INTO `bus` VALUES ('9', '古早味', '1000', '4.3', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2384227896,949758716&fm=115&gp=0.jpg', '新鲜手工面点');
INSERT INTO `bus` VALUES ('10', '草包牛肉', '1235', '3.8', 'http://img0.imgtn.bdimg.com/it/u=2292995372,2033186366&fm=26&gp=0.jpg', '四川知名牛肉熟食');
INSERT INTO `bus` VALUES ('11', '老卤匠', '800', '4.3', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3005548562,1597512635&fm=26&gp=0.jpg', '百年卤位');
INSERT INTO `bus` VALUES ('12', '麦当劳', '2000', '5.0', 'http://img0.imgtn.bdimg.com/it/u=3550564466,2745632498&fm=26&gp=0.jpg', '非常好吃');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `assess` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '四川职业技术学院', 'very good', '鱼香肉丝');

-- ----------------------------
-- Table structure for wupin
-- ----------------------------
DROP TABLE IF EXISTS `wupin`;
CREATE TABLE `wupin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` double(11,0) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `num` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wupin
-- ----------------------------
INSERT INTO `wupin` VALUES ('1', '28', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=359016840,2202542953&fm=26&gp=0.jpg', '套餐一', '可乐+汉堡+骨肉相连', '20', '1');
INSERT INTO `wupin` VALUES ('2', '8', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2869494186,2312299964&fm=26&gp=0.jpg', '薯条', '经典单品', '20', '1');
INSERT INTO `wupin` VALUES ('3', '14', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3013067463,1580464683&fm=26&gp=0.jpg', '炸鸡腿', '非常好吃', '20', '1');
INSERT INTO `wupin` VALUES ('4', '16', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=796398108,2311802508&fm=26&gp=0.jpg', '鸡排', '又脆又香', '20', '1');
INSERT INTO `wupin` VALUES ('5', '98', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592452198150&di=eb83c6b5e25c00938c299b9fcb0c69f7&imgtype=0&src=http%3A%2F%2Fpic27.nipic.com%2F20130309%2F8605099_151253299384_2.jpg', '家庭分享餐', '超值家庭套餐', '20', '1');
INSERT INTO `wupin` VALUES ('6', '15', 'http://img4.imgtn.bdimg.com/it/u=3071532818,2251106082&fm=26&gp=0.jpg', '鸡肉卷', '热销单品', '20', '1');
INSERT INTO `wupin` VALUES ('7', '10', 'http://img4.imgtn.bdimg.com/it/u=2553952770,4005258482&fm=26&gp=0.jpg', '鸡米花', '热销单品', '20', '1');
INSERT INTO `wupin` VALUES ('8', '12', 'http://img1.imgtn.bdimg.com/it/u=2656662166,1802754433&fm=26&gp=0.jpg', '蛋挞', '销量冠军', '20', '1');
INSERT INTO `wupin` VALUES ('9', '20', 'http://img0.imgtn.bdimg.com/it/u=366636247,3404539259&fm=26&gp=0.jpg', '波霸奶茶', '今日新品', '20', '1');
INSERT INTO `wupin` VALUES ('10', '35', 'http://t9.baidu.com/it/u=3073115753,1197872552&fm=193', '原味披萨', '夏威夷风味披萨', '20', '1');
INSERT INTO `wupin` VALUES ('11', '23', 'https://ns-strategy.cdn.bcebos.com/ns-strategy/upload/fc_big_pic/part-00584-38.jpg', '鱼香肉食', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('12', '24', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3438248301,215749587&fm=26&gp=0.jpg', '梅菜扣肉', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('13', '20', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1899827805,2209019776&fm=26&gp=0.jpg', '农家小炒肉', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('14', '28', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3724008249,877827468&fm=26&gp=0.jpg', '羊肉小炒', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('15', '28', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2392054657,2728074270&fm=26&gp=0.jpg', '知味小炒鸡', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('16', '20', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3068840725,874697542&fm=26&gp=0.jpg', '香干肉丝', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('17', '12', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3902027252,213349929&fm=26&gp=0.jpg', '清炒小白菜', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('18', '12', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2827559487,300961214&fm=26&gp=0.jpg', '炒空心菜', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('19', '12', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1778043427,3808161783&fm=26&gp=0.jpg', '紫菜蛋汤', '还需要介绍吗？？？', '20', '2');
INSERT INTO `wupin` VALUES ('20', '1', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=269187482,228029628&fm=26&gp=0.jpg', '米饭', '米饭单点不配送', '20', '2');
INSERT INTO `wupin` VALUES ('21', '16', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3107427593,2401209350&fm=26&gp=0.jpg', '香菇鸡饭', '11111', '20', '3');
INSERT INTO `wupin` VALUES ('22', '20', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3748907860,1979309218&fm=26&gp=0.jpg', '卤肉饭', '22222', '20', '3');
INSERT INTO `wupin` VALUES ('23', '23', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=841065317,1705176834&fm=26&gp=0.jpg', '蜜辣烤翅饭', '33333', '20', '3');
INSERT INTO `wupin` VALUES ('24', '36', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2654987680,1895137542&fm=26&gp=0.jpg', '欢乐儿童套餐', '44444', '20', '3');
INSERT INTO `wupin` VALUES ('25', '22', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=187795570,168234064&fm=26&gp=0.jpg', '小炒肉鸡排饭', '55555', '20', '3');
INSERT INTO `wupin` VALUES ('26', '36', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=521545808,30656473&fm=26&gp=0.jpg', '肋眼牛排', '66666', '20', '3');
INSERT INTO `wupin` VALUES ('27', '20', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2208480495,3020680712&fm=26&gp=0.jpg', '肉末茄子双拼', '77777', '20', '3');
INSERT INTO `wupin` VALUES ('28', '35', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3948168359,2020531302&fm=26&gp=0.jpg', '经典铁板牛排', '88888', '20', '3');
INSERT INTO `wupin` VALUES ('29', '20', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=82711150,3810579894&fm=26&gp=0.jpg', '川式小煎鸡', '99999', '20', '3');
INSERT INTO `wupin` VALUES ('30', '5', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=169916888,1766881785&fm=15&gp=0.jpg', '米饭', '单点不配送！！！', '20', '3');
INSERT INTO `wupin` VALUES ('31', '21', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2444628467,1737232795&fm=26&gp=0.jpg', '单人套餐', '鹌鹑蛋+卤蛋+素菜+米饭', '20', '4');
INSERT INTO `wupin` VALUES ('32', '36', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1535687612,2520654003&fm=26&gp=0.jpg', '双人豪华套餐', '毛肚+鹌鹑蛋+素菜+米饭*2', '20', '4');
INSERT INTO `wupin` VALUES ('33', '8', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=602036453,1590626977&fm=26&gp=0.jpg', '脆毛肚', '必点单品！！！', '20', '4');
INSERT INTO `wupin` VALUES ('34', '8', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2966265179,1312759074&fm=26&gp=0.jpg', '肥牛卷', '必点单品！！！', '20', '4');
INSERT INTO `wupin` VALUES ('35', '8', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1519621216,4178003323&fm=26&gp=0.jpg', '手打牛肉丸', '爱点不点', '20', '4');
INSERT INTO `wupin` VALUES ('36', '10', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1542822923,2139532086&fm=26&gp=0.jpg', '鲜虾滑', '本店特色菜品', '20', '4');
INSERT INTO `wupin` VALUES ('37', '6', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=604837469,1035819136&fm=26&gp=0.jpg', '土豆片', '不解释必点', '20', '4');
INSERT INTO `wupin` VALUES ('38', '6', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4292918094,203298354&fm=26&gp=0.jpg', '藕片', '你品你细品', '20', '4');
INSERT INTO `wupin` VALUES ('39', '6', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=537228869,2660302634&fm=26&gp=0.jpg', '土豆粉', '....', '20', '4');
INSERT INTO `wupin` VALUES ('40', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3283776471,2395212181&fm=26&gp=0.jpg', '米饭', '单点不配送', '20', '4');
INSERT INTO `wupin` VALUES ('41', '8', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2689514115,783795268&fm=26&gp=0.jpg', '原味奶茶', '经典中的经典', '20', '5');
INSERT INTO `wupin` VALUES ('42', '12', 'http://img3.imgtn.bdimg.com/it/u=174343737,3583818570&fm=26&gp=0.jpg', '黑糖香蕉奶茶', '今日主打', '20', '5');
INSERT INTO `wupin` VALUES ('43', '12', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1286559473,53108647&fm=26&gp=0.jpg', '港式奶茶', '爱了爱了', '20', '5');
INSERT INTO `wupin` VALUES ('44', '15', 'http://img4.imgtn.bdimg.com/it/u=2035940414,1735387502&fm=26&gp=0.jpg', '薄荷金桔柠檬', '清凉低热', '20', '5');
INSERT INTO `wupin` VALUES ('45', '15', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=4211960086,1746956107&fm=26&gp=0.jpg', '蜜桃茉莉水果茶', '点我点我', '20', '5');
INSERT INTO `wupin` VALUES ('46', '15', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592537400899&di=a3492ffaad1fd73063eacde5185c70fa&imgtype=0&src=http%3A%2F%2Fpic197.nipic.com%2Ffile%2F20181216%2F25636807_231007062080_2.jpg', '柠檬茉莉绿茶', '整颗柠檬哟', '20', '5');
INSERT INTO `wupin` VALUES ('47', '18', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2318109390,2044855684&fm=15&gp=0.jpg', '柠檬芦荟茶', '棒棒棒', '20', '5');
INSERT INTO `wupin` VALUES ('48', '10', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2497452240,2730068575&fm=26&gp=0.jpg', '红豆奶茶', '今天天气不错啊', '20', '5');
INSERT INTO `wupin` VALUES ('49', '20', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3155956534,165678882&fm=26&gp=0.jpg', '杨枝甘露', '爱我你怕了吗？？', '20', '5');
INSERT INTO `wupin` VALUES ('50', '6', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=297384098,3744699927&fm=26&gp=0.jpg', '柠檬汁', '便宜', '20', '5');
INSERT INTO `wupin` VALUES ('51', '12', 'http://img5.imgtn.bdimg.com/it/u=551567889,2451834500&fm=26&gp=0.jpg', '草包豆干', '香干你爱了吗', '20', '6');
INSERT INTO `wupin` VALUES ('52', '20', 'http://img3.imgtn.bdimg.com/it/u=2574324269,914106634&fm=26&gp=0.jpg', '草包牛肉小份', '可供双人食用', '20', '6');
INSERT INTO `wupin` VALUES ('53', '35', 'http://img3.imgtn.bdimg.com/it/u=2574324269,914106634&fm=26&gp=0.jpg', '草包牛肉大份', '快乐加倍', '20', '6');
INSERT INTO `wupin` VALUES ('54', '40', 'http://img2.imgtn.bdimg.com/it/u=1034495738,3547522408&fm=26&gp=0.jpg', '小份＋毛肚', '快乐超级加倍', '20', '6');
INSERT INTO `wupin` VALUES ('55', '50', 'http://img2.imgtn.bdimg.com/it/u=1034495738,3547522408&fm=26&gp=0.jpg', '毛肚大份', '快乐封顶翻倍', '20', '6');
INSERT INTO `wupin` VALUES ('61', '88', 'http://img5.imgtn.bdimg.com/it/u=267242594,3514361259&fm=26&gp=0.jpg', '干锅鱿鱼小份', '热辣滚烫', '20', '7');
INSERT INTO `wupin` VALUES ('62', '88', 'http://img4.imgtn.bdimg.com/it/u=3129763867,3895286995&fm=26&gp=0.jpg', '干锅美蛙小份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('63', '88', 'http://img1.imgtn.bdimg.com/it/u=1403958468,3293649539&fm=26&gp=0.jpg', '干锅基围虾小份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('64', '66', 'http://img2.imgtn.bdimg.com/it/u=3655411819,3896359073&fm=26&gp=0.jpg', '干锅千叶豆腐小份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('65', '88', 'http://img5.imgtn.bdimg.com/it/u=728049043,3790677584&fm=26&gp=0.jpg', '干锅鸭爪小份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('66', '180', 'http://img5.imgtn.bdimg.com/it/u=267242594,3514361259&fm=26&gp=0.jpg', '干锅鱿鱼大份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('67', '180', 'http://img1.imgtn.bdimg.com/it/u=1403958468,3293649539&fm=26&gp=0.jpg', '干锅美蛙大份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('68', '180', 'http://img1.imgtn.bdimg.com/it/u=1403958468,3293649539&fm=26&gp=0.jpg', '干锅基围虾大份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('69', '140', 'http://img2.imgtn.bdimg.com/it/u=3655411819,3896359073&fm=26&gp=0.jpg', '干锅千叶豆腐大份', '1+1', '20', '7');
INSERT INTO `wupin` VALUES ('70', '180', 'http://img5.imgtn.bdimg.com/it/u=728049043,3790677584&fm=26&gp=0.jpg', '干锅鸭爪大份', '快乐加倍', '20', '7');
INSERT INTO `wupin` VALUES ('120', '18', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2480098760,1001908929&fm=26&gp=0.jpg', '原味板烧鸡腿堡', '今日新品', '20', '8');
INSERT INTO `wupin` VALUES ('121', '5', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3658505136,4080972755&fm=26&gp=0.jpg', '可乐', '冰冰凉凉一夏天', '50', '8');
