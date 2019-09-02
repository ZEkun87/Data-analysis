*/
use my_db;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `hero_id` int(11) NOT NULL COMMENT '英雄id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '名称',
  `pay_type` int(11) DEFAULT NULL COMMENT '10表示周免 11表示新手推荐',
  `new_type` int(11) DEFAULT NULL,
  `hero_type` int(11) DEFAULT NULL,
  `hero_type2` int(11) DEFAULT NULL,
  `skin_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `live` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `skill` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  PRIMARY KEY (`hero_id`),
  KEY `hero_type` (`hero_type`),
  KEY `hero_type2` (`hero_type2`),
  CONSTRAINT `hero_type` FOREIGN KEY (`hero_type`) REFERENCES `hero_type` (`type`),
  CONSTRAINT `hero_type2` FOREIGN KEY (`hero_type2`) REFERENCES `hero_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='英雄表格';

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('105', '廉颇', '10', '0', '3', null, '正义爆轰|地狱岩魂', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/105/105.jpg', '100', '30', '40', '30');
INSERT INTO `hero` VALUES ('106', '小乔', null, '0', '2', null, '恋之微风|万圣前夜|天鹅之梦|纯白花嫁|缤纷独角兽', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/106/106.jpg', '20', '10', '80', '30');
INSERT INTO `hero` VALUES ('107', '赵云', null, '0', '1', '4', '苍天翔龙|忍●炎影|未来纪元|皇家上将|嘻哈天王|白执事|引擎之心', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/107/107.jpg', '60', '60', '60', '50');
INSERT INTO `hero` VALUES ('108', '墨子', null, '0', '2', '3', '和平守望|金属风暴|龙骑士|进击墨子号', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/108/108.jpg', '50', '40', '50', '60');
INSERT INTO `hero` VALUES ('109', '妲己', '11', '0', '2', null, '魅惑之狐|女仆咖啡|魅力维加斯|仙境爱丽丝|少女阿狸|热情桑巴', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/109/109.jpg', '20', '10', '80', '20');
INSERT INTO `hero` VALUES ('110', '嬴政', null, '0', '2', null, '王者独尊|摇滚巨星|暗夜贵公子|优雅恋人', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/110/110.jpg', '30', '40', '100', '60');
INSERT INTO `hero` VALUES ('111', '孙尚香', null, '0', '5', null, '千金重弩|火炮千金|水果甜心|蔷薇恋人|杀手不太冷|末日机甲|沉稳之力', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/111/111.jpg', '30', '80', '50', '60');
INSERT INTO `hero` VALUES ('112', '鲁班七号', '11', '0', '5', null, '机关造物|木偶奇遇记|福禄兄弟|电玩小子|星空梦想', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/112/112.jpg', '10', '100', '30', '40');
INSERT INTO `hero` VALUES ('113', '庄周', null, '0', '6', '3', '逍遥幻梦|鲤鱼之梦|蜃楼王|云端筑梦师', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/113/113.jpg', '80', '20', '40', '20');
INSERT INTO `hero` VALUES ('114', '刘禅', null, '0', '3', null, '暴走机关|英喵野望|绅士熊喵', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/114/114.jpg', '70', '30', '50', '30');
INSERT INTO `hero` VALUES ('115', '高渐离', null, '0', '2', null, '叛逆吟游|金属狂潮|死亡摇滚', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/115/115.jpg', '50', '40', '90', '40');
INSERT INTO `hero` VALUES ('116', '阿轲', null, '0', '4', null, '信念之刃|爱心护理|暗夜猫娘|致命风华', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg', '30', '100', '40', '60');
INSERT INTO `hero` VALUES ('117', '钟无艳', null, '0', '1', '3', '野蛮之锤|生化警戒|王者之锤|海滩丽影', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg', '70', '50', '70', '40');
INSERT INTO `hero` VALUES ('118', '孙膑', null, '0', '6', '2', '逆流之时|未来旅行|天使之翼|妖精王', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg', '20', '10', '60', '50');
INSERT INTO `hero` VALUES ('119', '扁鹊', null, '0', '2', '6', '善恶怪医|救世之瞳|化身博士|炼金王', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg', '50', '40', '30', '40');
INSERT INTO `hero` VALUES ('120', '白起', null, '0', '3', null, '最终兵器|白色死神|狰', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg', '80', '30', '40', '40');
INSERT INTO `hero` VALUES ('121', '芈月', null, '0', '2', '3', '永恒之月|红桃皇后|大秦宣太后|重明', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg', '60', '50', '70', '50');
INSERT INTO `hero` VALUES ('123', '吕布', null, '0', '1', '3', '无双之魔|圣诞狂欢|天魔缭乱|末日机甲', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg', '60', '60', '30', '40');
INSERT INTO `hero` VALUES ('124', '周瑜', null, '0', '2', null, '铁血都督|海军大将|真爱至上', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/124/124.jpg', '30', '40', '90', '70');
INSERT INTO `hero` VALUES ('125', '元歌', null, '1', '4', null, '无间傀儡|午夜歌剧院', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/125/125.jpg', '10', '50', '90', '100');
INSERT INTO `hero` VALUES ('126', '夏侯惇', null, '0', '3', '1', '不羁之风|战争骑士|乘风破浪', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/126/126.jpg', '70', '40', '50', '40');
INSERT INTO `hero` VALUES ('127', '甄姬', null, '0', '2', null, '洛神降临|冰雪圆舞曲|花好人间|游园惊梦', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/127/127.jpg', '10', '10', '70', '40');
INSERT INTO `hero` VALUES ('128', '曹操', null, '0', '1', null, '鲜血枭雄|超能战警|幽灵船长|死神来了|烛龙', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/128/128.jpg', '60', '60', '50', '40');
INSERT INTO `hero` VALUES ('129', '典韦', null, '0', '1', null, '狂战士|黄金武士|穷奇', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/129/129.jpg', '60', '60', '30', '10');
INSERT INTO `hero` VALUES ('130', '宫本武藏', null, '0', '1', null, '剑圣|鬼剑武藏|未来纪元|万象初新|地狱之眼|霸王丸', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/130/130.jpg', '50', '70', '40', '50');
INSERT INTO `hero` VALUES ('131', '李白', null, '0', '4', '1', '青莲剑仙|范海辛|千年之狐|凤求凰', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/131/131.jpg', '40', '70', '60', '90');
INSERT INTO `hero` VALUES ('132', '马可波罗', null, '0', '5', null, '远游之枪|激情绿茵|逐梦之星', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg', '30', '60', '60', '50');
INSERT INTO `hero` VALUES ('133', '狄仁杰', '11', '0', '5', null, '断案大师|锦衣卫|魔术师|超时空战士|阴阳师', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg', '40', '90', '30', '20');
INSERT INTO `hero` VALUES ('134', '达摩', null, '0', '1', '3', '拳僧|大发明家|拳王', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134.jpg', '70', '50', '20', '50');
INSERT INTO `hero` VALUES ('135', '项羽', null, '0', '3', null, '霸王|帝国元帅|苍穹之光|海滩派对|职棒王牌|霸王别姬', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/135/135.jpg', '90', '40', '50', '30');
INSERT INTO `hero` VALUES ('136', '武则天', null, '0', '2', null, '女帝|东方不败|海洋之心', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/136/136.jpg', '20', '10', '100', '60');
INSERT INTO `hero` VALUES ('139', '老夫子', null, '0', '1', null, '万古长明|潮流仙人|圣诞老人|功夫老勺', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/139/139.jpg', '60', '60', '40', '30');
INSERT INTO `hero` VALUES ('140', '关羽', null, '0', '1', '3', '一骑当千|天启骑士|冰锋战神|龙腾万里', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/140/140.jpg', '60', '60', '60', '80');
INSERT INTO `hero` VALUES ('141', '貂蝉', null, '0', '2', '4', '绝世舞姬|异域舞娘|圣诞恋歌|逐梦之音|仲夏夜之梦', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/141/141.jpg', '40', '20', '70', '60');
INSERT INTO `hero` VALUES ('142', '安琪拉', null, '0', '2', null, '暗夜萝莉|玩偶对对碰|魔法小厨娘|心灵骇客', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/142/142.jpg', '40', '10', '80', '40');
INSERT INTO `hero` VALUES ('144', '程咬金', null, '0', '3', '1', '热烈之斧|爱与正义|星际陆战队|华尔街大亨', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/144/144.jpg', '90', '50', '50', '10');
INSERT INTO `hero` VALUES ('146', '露娜', null, '0', '1', '2', '月光之女|哥特玫瑰|绯红之刃|紫霞仙子', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/146/146.jpg', '50', '40', '70', '90');
INSERT INTO `hero` VALUES ('148', '姜子牙', null, '0', '2', '6', '太古魔导|时尚教父', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/148/148.jpg', '10', '20', '70', '30');
INSERT INTO `hero` VALUES ('149', '刘邦', null, '0', '3', '6', '双面君主|圣殿之光|德古拉伯爵', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/149/149.jpg', '80', '40', '60', '50');
INSERT INTO `hero` VALUES ('150', '韩信', null, '0', '4', '1', '国士无双|街头霸王|教廷特使|白龙吟|逐梦之影', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/150/150.jpg', '20', '70', '30', '80');
INSERT INTO `hero` VALUES ('152', '王昭君', '10', '0', '2', null, '冰雪之华|精灵公主|偶像歌手|凤凰于飞|幻想奇妙夜', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/152/152.jpg', '40', '40', '80', '40');
INSERT INTO `hero` VALUES ('153', '兰陵王', null, '0', '4', null, '暗影刀锋|隐刃|暗隐猎兽者', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/153/153.jpg', '40', '80', '40', '50');
INSERT INTO `hero` VALUES ('154', '花木兰', null, '0', '1', '4', '传说之刃|剑舞者|兔女郎|水晶猎龙者|青春决赛季', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/154/154.jpg', '50', '70', '50', '80');
INSERT INTO `hero` VALUES ('156', '张良', null, '0', '2', null, '言灵之书|天堂福音|一千零一夜', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/156/156.jpg', '30', '10', '80', '60');
INSERT INTO `hero` VALUES ('157', '不知火舞', null, '0', '2', '4', '明媚烈焰', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/157/157.jpg', '30', '30', '80', '80');
INSERT INTO `hero` VALUES ('162', '娜可露露', null, '0', '4', null, '鹰之守护', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/162/162.jpg', '30', '80', '60', '40');
INSERT INTO `hero` VALUES ('163', '橘右京', null, '0', '4', '1', '神梦一刀', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163.jpg', '50', '60', '50', '50');
INSERT INTO `hero` VALUES ('166', '亚瑟', '11', '0', '1', '3', '圣骑之力|死亡骑士|狮心王|心灵战警', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/166/166.jpg', '80', '30', '50', '20');
INSERT INTO `hero` VALUES ('167', '孙悟空', null, '0', '1', '4', '齐天大圣|地狱火|西部大镖客|美猴王|至尊宝', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/167/167.jpg', '50', '80', '50', '40');
INSERT INTO `hero` VALUES ('168', '牛魔', '10', '0', '3', '6', '精英酋长|西部大镖客|制霸全明星', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/168/168.jpg', '70', '40', '50', '50');
INSERT INTO `hero` VALUES ('169', '后羿', null, '0', '5', null, '半神之弓|精灵王|阿尔法小队|辉光之辰', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/169/169.jpg', '30', '80', '40', '30');
INSERT INTO `hero` VALUES ('170', '刘备', null, '0', '1', null, '仁德义枪|万事如意|纽约教父|汉昭烈帝', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/170/170.jpg', '60', '60', '40', '40');
INSERT INTO `hero` VALUES ('171', '张飞', null, '0', '3', '6', '禁血狂兽|五福同心|乱世虎臣', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/171/171.jpg', '100', '40', '50', '60');
INSERT INTO `hero` VALUES ('173', '李元芳', null, '0', '5', null, '王都密探|特种部队|黑猫爱糖果', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/173/173.jpg', '30', '80', '50', '50');
INSERT INTO `hero` VALUES ('174', '虞姬', '10', '0', '5', null, '森之风灵|加勒比小姐|霸王别姬|凯尔特女王', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/174/174.jpg', '40', '80', '50', '40');
INSERT INTO `hero` VALUES ('175', '钟馗', null, '0', '2', '1', '虚灵城判|地府判官', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/175/175.jpg', '50', '40', '70', '50');
INSERT INTO `hero` VALUES ('176', '杨玉环', null, '0', '2', '6', '风华霓裳|霓裳曲', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/176/176.jpg', '30', '30', '90', '50');
INSERT INTO `hero` VALUES ('177', '成吉思汗', null, '0', '5', null, '苍狼末裔|维京掠夺者', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/177/177.jpg', '30', '80', '30', '50');
INSERT INTO `hero` VALUES ('178', '杨戬', null, '0', '1', null, '根源之目|埃及法老|永曜之星', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/178/178.jpg', '60', '60', '50', '50');
INSERT INTO `hero` VALUES ('179', '女娲', '10', '0', '2', null, '至高创世|尼罗河女神', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/179/179.jpg', '30', '10', '90', '70');
INSERT INTO `hero` VALUES ('180', '哪吒', '10', '0', '1', null, '桀骜炎枪|三太子|逐梦之翼', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/180/180.jpg', '80', '30', '60', '50');
INSERT INTO `hero` VALUES ('182', '干将莫邪', null, '0', '2', null, '淬命双剑|第七人偶', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/182/182.jpg', '40', '30', '80', '70');
INSERT INTO `hero` VALUES ('183', '雅典娜', null, '0', '1', null, '圣域余晖|战争女神|冰冠公主|神奇女侠', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183.jpg', '70', '60', '40', '60');
INSERT INTO `hero` VALUES ('184', '蔡文姬', null, '0', '6', null, '天籁弦音|蔷薇王座|舞动绿茵', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/184/184.jpg', '50', '10', '80', '30');
INSERT INTO `hero` VALUES ('186', '太乙真人', null, '0', '6', '3', '炼金大师|圆桌骑士|饕餮', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/186/186.jpg', '50', '10', '60', '70');
INSERT INTO `hero` VALUES ('187', '东皇太一', null, '0', '3', null, '噬灭日蚀|东海龙王', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/187/187.jpg', '80', '20', '50', '40');
INSERT INTO `hero` VALUES ('189', '鬼谷子', null, '0', '6', null, '万物有灵|阿摩司公爵', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/189/189.jpg', '50', '20', '60', '50');
INSERT INTO `hero` VALUES ('190', '诸葛亮', null, '0', '2', null, '绝代智谋|星航指挥官|黄金分割率|武陵仙君', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/190/190.jpg', '30', '10', '80', '60');
INSERT INTO `hero` VALUES ('191', '大乔', null, '0', '6', null, '沧海之曜|伊势巫女', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/191/191.jpg', '10', '10', '60', '60');
INSERT INTO `hero` VALUES ('192', '黄忠', null, '0', '5', null, '燃魂重炮|芝加哥教父', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/192/192.jpg', '40', '90', '40', '40');
INSERT INTO `hero` VALUES ('193', '铠', null, '0', '1', '3', '破灭刃锋|龙域领主|曙光守护者', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/193/193.jpg', '70', '70', '40', '20');
INSERT INTO `hero` VALUES ('194', '苏烈', null, '0', '3', '1', '不屈铁壁|爱与和平', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/194/194.jpg', '70', '40', '60', '50');
INSERT INTO `hero` VALUES ('195', '百里玄策', null, '0', '4', null, '嚣狂之镰|威尼斯狂欢', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/195/195.jpg', '40', '80', '40', '100');
INSERT INTO `hero` VALUES ('196', '百里守约', null, '0', '5', '4', '静谧之眼|绝影神枪|特工魅影', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/196/196.jpg', '20', '70', '40', '70');
INSERT INTO `hero` VALUES ('197', '弈星', null, '0', '2', null, '天元之弈|踏雪寻梅', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/197/197.jpg', '40', '30', '90', '60');
INSERT INTO `hero` VALUES ('198', '梦奇', null, '0', '3', '2', '入梦之灵|美梦成真', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/198/198.jpg', '80', '40', '40', '40');
INSERT INTO `hero` VALUES ('199', '公孙离', null, '0', '5', null, '幻舞玲珑|花间舞', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/199/199.jpg', '20', '80', '30', '70');
INSERT INTO `hero` VALUES ('501', '明世隐', null, '0', '6', null, '灵魂劫卜|占星术士', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/501/501.jpg', '60', '30', '50', '70');
INSERT INTO `hero` VALUES ('502', '裴擒虎', null, '0', '4', '1', '六合虎拳|街头霸王|梅西', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/502/502.jpg', '40', '80', '50', '70');
INSERT INTO `hero` VALUES ('503', '狂铁', '10', '0', '1', null, '战车意志|命运角斗场', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/503/503.jpg', '60', '60', '60', '50');
INSERT INTO `hero` VALUES ('504', '米莱狄', null, '0', '2', null, '筑城者|精准探案法', 'http://game.gtimg.cn/images/yxzj/img201606/heroimg/504/504.jpg', '20', '10', '80', '40');
