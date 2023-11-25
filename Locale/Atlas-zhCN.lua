--[[
	
	Atlas, a World of Warcraft instance map browser
	Email me at m4r3lk4@gmail.com
	
	This file is part of Atlas.
	
	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.
	
	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
	
--]]

	-- Wind汉化修复Turtle-WOW-zhCN端
	-- https://github.com/NineTears/Atlas-Turtle-zhCN
	-- Last update: 2023-11-25

--************************************************
-- Global Atlas Strings
--************************************************
local AL = AceLibrary("AceLocale-2.2"):new("Atlas");

AtlasSortIgnore = {"the (.+)"};

BINDING_HEADER_ATLAS_TITLE = "Atlas 按键设置";
BINDING_NAME_ATLAS_TOGGLE = "开启/关闭 Atlas";
BINDING_NAME_ATLAS_OPTIONS = "切换设置";
BINDING_NAME_ATLAS_AUTOSEL = "自动选择";

ATLAS_SUBTITLE = "副本地图";
ATLAS_DESC = "Atlas是一个副本地图浏览器。";

ATLAS_STRING_LOCATION = "所属区域";
ATLAS_STRING_LEVELRANGE = "等级跨度";
ATLAS_STRING_PLAYERLIMIT = "人数上限";
ATLAS_STRING_SELECT_CAT = "选择分类";
ATLAS_STRING_SELECT_MAP = "选择地图";
ATLAS_STRING_SEARCH = "搜索";
ATLAS_STRING_CLEAR = "重置";
ATLAS_STRING_MINLEVEL = "需要等级";

ATLAS_OPTIONS_BUTTON = "设置";
ATLAS_OPTIONS_SHOWBUT = "在小地图周围显示Atlas图标";
ATLAS_OPTIONS_AUTOSEL = "自动选择副本地图";
ATLAS_OPTIONS_BUTPOS = "图标位置";
ATLAS_OPTIONS_TRANS = "透明度";
ATLAS_OPTIONS_DONE = "完成";
ATLAS_OPTIONS_RCLICK = "点击右键打开世界地图";
ATLAS_OPTIONS_SHOWMAPNAME = "显示地图名称";
ATLAS_OPTIONS_RESETPOS = "重置位置";
ATLAS_OPTIONS_ACRONYMS = "显示简称";
ATLAS_OPTIONS_SCALE = "窗口大小";
ATLAS_OPTIONS_BUTRAD = "图标半径";
ATLAS_OPTIONS_CLAMPED = "使 Atlas 不超出游戏画面";
ATLAS_OPTIONS_HELP = "按住左键可移动这个窗口";

ATLAS_BUTTON_TOOLTIP_TITLE = "Atlas";
ATLAS_BUTTON_TOOLTIP_HINT = "单击打开 Atlas\n中键单击打开设置\n按住右键可移动这个按钮";
ATLAS_TITAN_HINT = "单击打开 Atlas\n中键单击打开设置\n按住右键可移动这个按钮";

ATLAS_OPTIONS_CATDD = "副本地图排序方式:";
ATLAS_DDL_CONTINENT = "所属大陆";
ATLAS_DDL_CONTINENT_EASTERN = "东部王国副本";
ATLAS_DDL_CONTINENT_KALIMDOR = "卡利姆多副本";
ATLAS_DDL_LEVEL = "副本等级";
ATLAS_DDL_PARTYSIZE = "副本规模";
ATLAS_DDL_PARTYSIZE_5 = "5人副本";
ATLAS_DDL_PARTYSIZE_10 = "10人副本";
ATLAS_DDL_PARTYSIZE_20 = "20人副本";
ATLAS_DDL_PARTYSIZE_40 = "40人副本";
ATLAS_DDL_ALL = "全部";
ATLAS_DDL_ALL_MENU = "显示所有副本";
ATLAS_DDL_TYPE = "类型";
ATLAS_DDL_TYPE_DUNGEONS = "地下城";
ATLAS_DDL_TYPE_RAIDS = "团队副本";
ATLAS_DDL_WORLDBOSSES = "世界首领";
ATLAS_DDL_TYPE_ENTRANCE = "入口";
ATLAS_DDL_BGS = "战场";
ATLAS_DDL_DUNGEON_LOCATIONS = "地下城位置";
ATLAS_DDL_FLIGHT_PATHS = "飞行路径地图";
ATLAS_DDL_LEVELING_GUIDE = "升级指南";
ATLAS_DDL_LEVELING_GUIDE_ALLIANCE1 = "联盟升级指南第一部分";
ATLAS_DDL_LEVELING_GUIDE_ALLIANCE2 = "联盟升级指南第二部分";
ATLAS_DDL_LEVELING_GUIDE_HORDE1 = "部落升级指南第一部分";
ATLAS_DDL_LEVELING_GUIDE_HORDE2 = "部落升级指南第二部分";

ATLAS_INSTANCE_BUTTON = "副本";
ATLAS_ENTRANCE_BUTTON = "入口";
ATLAS_SEARCH_UNAVAIL = "搜索不可用";

AtlasZoneSubstitutions = {
	["The Temple of Atal'Hakkar"] = "沉没的神庙";
};

AL:RegisterTranslations("zhCN", function() return {
	
	--************************************************
	-- Zone Names, Acronyms, and Common Strings
	--************************************************
	
	--Common strings
	["Atlas Options"] = "Atlas选项";
	--Colors
	["Blue"]  = "蓝色";
	["Purple"]  = "紫色";
	["Red"]  = "红色";
	["Orange"]  = "橙色";
	["White"]  = "白色";
	--Mobs types
	["Boss"]  = "首领";
	["Rare"]  = "稀有";
	["Bat"]  = "蝙蝠";
	["Snake"]  = "毒蛇";
	["Raptor"]  = "迅猛龙";
	["Spider"]  = "蜘蛛";
	["Tiger"]  = "猛虎";
	["Panther"]  = "猎豹";
	["Pet"]  = "宠物";
	["Engineer"]  = "工程师";
	--Magic types
	["Fire"]  = "火焰";
	["Nature"]  = "自然";
	["Frost"]  = "冰霜";
	["Shadow"]  = "暗影";
	["Arcane"]  = "奥术";
	--Events
	["Hallow's End"]  = "万圣节";
	["Scourge Invasion"]  = "天灾入侵";        
	["Lunar Festival"]  = "春节";
	--Other
	["East"]  = "东";
	["North"]  = "北";
	["South"]  = "南";
	["West"]  = "西";        
	["Battlegrounds"]  = "战场";       
	["Lower"]  = "下层";   
	["Upper"]  = "上层";       
	["Entrance"]  = "入口";
	["Exit"]  = "出口";        
	["Chase Begins"]  = "追逐开始";
	["Chase Ends"]  = "追逐结束";      
	["AKA"]  = "亦作";
	["Attunement Required"]  = "需要完成入口任务";
	["Back"]  = "后门";
	["Back1"]  = "后门1";
	["Blacksmithing Plans"]  = "锻造图纸"; 
	["Brazier of Invocation"]  = "符咒火盆";
	["Connection"]  = "通道";
	["Connections"]  = "通道";
	["Damage: "]  = "伤害：";
	["Тier 0.5 Summon"]  = "T0.5阶段召唤";
	["Dungeon Locations"]  = "地下城位置";
	["Elevator"]  = "升降梯";
	["Front"]  = "前门";
	["Front1"]  = "前门1";
	["Ghost"]  = "幽灵";       
	["Heroic"]  = "英雄模式";
	["Instances"]  = "副本";
	["Key"]  = "钥匙";
	["Meeting Stone"]  = "集合石";
	["Moonwell"]  = "月亮井";
	["Neutral"]  = "中立"; -- NPC reaction
	["Optional"]  = "可跳过";
	["Outside"]  = "室外";
	["Portal"]  = "传送";
	["Random"]  = "随机";
	["Reputation"]  = "声望";
	["Rescued"]  = "已解救";
	["Side"]  = "旁门";
	["Summon"]  = "召唤";
	["Teleport"]  = "传送";
	["through "]  = "通过";
    ["Trash Mobs"] = "普通怪物",
	["Unknown"]  = "未知";
	["Varies"]  = "多个位置";
	["Various"]  = "各种各样的";
	["Wanders"]  = "游荡";
	
	--Instance names and acronyms
	["Armory"]  = "军械库";
	["Cathedral"]  = "大教堂";
	["Graveyard"]  = "墓地";
	["Library"]  = "图书馆";
	["Sunken Temple"]  = "沉没的神庙";
	
	--Set names
	["Set: "]  = "套装：";
	["Tier 0/0.5 Sets"]  = "T0/T0.5阶段套装";
	["Zul'Gurub Sets"]  = "祖尔格拉布套装";
	["Zul'Gurub Ring Sets"]  = "祖尔格拉布戒指套装";
	["Ruins of Ahn'Qiraj Sets"]  = "安其拉废墟套装";
	["Temple of Ahn'Qiraj Sets"]  = "安其拉神殿套装";
	["Tier 1 Sets"]  = "T1 套装";
	["Tier 2 Sets"]  = "T2 套装";
	["Tier 3 Sets"]  = "T3 套装";
	
	--************************************************
	-- Kalimdor Instance Data
	--************************************************
	
	--Ragefire Chasm
	["Oggleflint"]  = "奥格弗林特 <怒焰酋长>";
	
	--Wailing Caverns
	["Disciple of Naralex"]  = "纳拉雷克斯的信徒";
	["Mysterious Wailing Caverns Chest"]  = "神秘的哀嚎洞穴宝箱";
	
	--Blackfathom Deeps
	["Lorgalis Manuscript"]  = "潮湿的便笺";
	["Argent Guard Thaelrid"]  = "银月守卫塞尔瑞德 <银色黎明>";
	["Shrine of Gelihast"]  = "格里哈斯特神殿";
	["Fathom Stone"]  = "深渊之核";
	["Morridune"]  = "莫瑞杜恩";
	["Altar of the Deeps"]  = "玛塞斯特拉祭坛";

	--The Crescent Grove
	["Kalanar's Strongbox"]  = "卡拉纳尔的保险箱"; -- TurtleWOW

	--Stormwind Vault
	["Arc'tiras"]  = "阿克提阿斯"; -- TurtleWOW
	["Arc'tiras / Vault Armory Equipment"]  = "阿克提阿斯 / 宝库军械库设备"; -- TurtleWOW

	--Razorfen Kraul
	["Razorfen Spearhide"]  = "剃刀沼泽刺鬃守卫";
	["Willix the Importer"]  = "进口商威利克斯";
	["Heralath Fallowbrook"]  = "赫尔拉斯·静水";
	
	--Razorfen Downs
	["Henry Stern"]  = "亨利·斯特恩";
	["Belnistrasz"]  = "奔尼斯特拉兹";
	["Sah'rhee"]  = "萨哈斯";
	
	--Zul'Farrak
	["Mallet of Zul'Farrak"]  = "祖尔法拉克之槌";
	["Theka the Martyr"]  = "殉教者塞卡";
	["Zul'Farrak Dead Hero"]  = "祖尔法拉克阵亡英雄";
	["Nekrum Gutchewer"]  = "耐克鲁姆";
	["Dustwraith"]  = "灰尘怨灵";
	["Sergeant Bly"]  = "布莱中士";
	["Shadowpriest Sezz'ziz"] = "暗影祭司塞瑟斯",
	["Weegli Blastfuse"]  = "维格利";
	["Murta Grimgut"]  = "穆尔塔";
	["Raven"]  = "拉文";
	["Oro Eyegouge"]  = "欧罗·血眼";
	["Sandfury Executioner"]  = "沙怒刽子手";
	["Hydromancer Velratha"]  = "水占师维蕾萨";
	["Elder Wildmane"]  = "蛮鬃长者";
	["Zerillis"]  = "泽雷利斯";
	["Sandarr Dunereaver"]  = "杉达尔·沙掠者";
	
	--Maraudon	
	["Scepter of Celebras"]  = "塞雷布拉斯节杖";
	["Veng"]  = "温格";
	["Maraudos"]  = "玛拉多斯";
	["Elder Splitrock"]  = "碎石长者";
	
	--Dire Maul (East)
	["Old Ironbark"]  = "埃隆巴克";
	["A Dusty Tome"]  = "布满灰尘的书籍";
	["Felvine Shard"]  = "魔藤碎片";
	["Dire Maul Books"]  = "厄运之槌书籍";
	
	--Dire Maul (North)
	["Crescent Key"]  = "月牙钥匙";--omitted from Dire Maul (West)
	["Gordok Courtyard Key"]  = "戈多克庭院钥匙";
	["Gordok Inner Door Key"]  = "戈多克内门钥匙";
	--"Library" omitted from here and DM West because of SM: "Library" duplicate
	["Stomper Kreeg"]  = "践踏者克雷格";
	["Knot Thimblejack"]  = "诺特·希姆加可";
	["Tribute Run"]  = "贡品副本";
	
	--Dire Maul (West)
	["J'eevee's Jar"]  = "耶维尔的瓶子";
	["Pylons"]  = "水晶塔";
	["Shen'dralar Ancient"]  = "辛德拉古灵";
	["Ancient Equine Spirit"]  = "上古圣马之魂";
	["Ferra"]  = "费拉";
	["Falrin Treeshaper"]  = "法尔林·树影";
	["Lorekeeper Lydros"]  = "博学者莱德罗斯";
	["Lorekeeper Javon"]  = "博学者亚沃";
	["Lorekeeper Kildrath"]  = "博学者基尔达斯";
	["Lorekeeper Mykos"]  = "博学者麦库斯";
	["Shen'dralar Provisioner"]  = "辛德拉圣职者";
	["Skeletal Remains of Kariel Winthalus"]  = "卡里尔·温萨鲁斯的骸骨";
	["The Prince's Chest"]  = "王子的箱子";
	
	--Onyxia's Lair
	["Drakefire Amulet"]  = "龙火护符";
	["Onyxian Warders"]  = "奥妮克希亚守卫";
	["Whelp Eggs"]  = "雏龙蛋";
	
	--Temple of Ahn'Qiraj
	["Bug Trio"]  = "虫子三人组";
	["Andorgos"]  = "安多葛斯";
	["Vethsera"]  = "温瑟拉";
	["Kandrostrasz"]  = "坎多斯特拉兹";
	["Arygos"]  = "亚雷戈斯";
	["Caelestrasz"]  = "凯雷斯特拉兹";
	["Merithra of the Dream"]  = "梦境之龙麦琳瑟拉";
	["AQ Enchants"]  = "安其拉附魔";
	["AQ Opening Quest Chain"]  = "安其拉之门开启任务链";
	
	--Ruins of Ahn'Qiraj
	["Four Kaldorei Elites"]  = "卡多雷四精英";
	["Captain Qeez"]  = "奎兹上尉";
	["Captain Tuubid"]  = "图比德上尉";
	["Captain Drenn"]  = "德雷恩上尉";
	["Captain Xurrem"]  = "库雷姆上尉";
	["Major Yeggeth"]  = "耶吉斯少校";
	["Major Pakkon"]  = "帕库少校";
	["Colonel Zerran"]  = "泽兰上校";
	["Safe Room"]  = "安全房间";
	["Class Books"]  = "职业书籍";

	--Emerald Sanctum -- TurtleWOW 1.17.0
	["Favor of Erennius (ES Hard Mode)"]  = "埃伦尼乌斯的青睐 (艾萨拉之眼 难度模式)";

	--****************************
	-- Eastern Kingdoms Instances
	--****************************
	
	

	--Blackrock Depths
	["Shadowforge Key"]  = "暗炉钥匙";
	["Prison Cell Key"]  = "监狱牢房钥匙";
	["Jail Break!"]  = "冲破牢笼";
	["Banner of Provocation"]  = "挑衅之旗";
	["Kharan Mighthammer"]  = "卡兰·巨锤";
	["Commander Gor'shak"]  = "指挥官哥沙克";
	["Marshal Windsor"]  = "温德索尔元帅";
	["Ring of Law"]  = "法律之环";
	["Theldren"]  = "塞尔德林";
	["Lefty"]  = "莱弗提";
	["Malgen Longspear"]  = "玛尔根·长矛";
	["Gnashjaw"]  = "碎腭";
	["Korv"]  = "考尔夫";
	["Rezznik"]  = "雷兹尼克";
	["Rotfang"]  = "烂牙";
	["Snokh Blackspine"]  = "斯诺恩·黑骨";
	["Va'jashni"]  = "瓦亚辛";
	["Volida"]  = "沃莉达";
	["Elder Morndeep"]  = "黎明长者";
	["High Justice Grimstone"]  = "裁决者格里斯通";
	["Monument of Franclorn Forgewright"]  = "弗兰克罗恩·铸铁的雕像";
	["The Vault"]  = "黑色宝库";
	["The Black Anvil"]  = "黑铁砧";
	["Shadowforge Lock"]  = "暗炉之锁";
	["Field Repair Bot 74A"]  = "修理机器人74A型";
	["The Grim Guzzler"]  = "黑铁酒吧";
	["Lokhtos Darkbargainer"]  = "罗克图斯·暗契";
	["Mistress Nagmara"]  = "娜玛拉小姐";
	["Plugger Spazzring"]  = "普拉格";
	["Private Rocknot"]  = "罗克诺特下士";
	["Summoner's Tomb"]  = "召唤者之墓";
	["Chest of The Seven"]  = "七贤之箱";
	["The Lyceum"]  = "讲学厅";
	["High Priestess of Thaurissan"]  = "索瑞森高阶女祭司";
	["The Black Forge"]  = "黑熔炉";
	["Core Fragment"]  = "熔火碎片";
	["Overmaster Pyron"]  = "征服者派隆";
	
	--Blackrock Spire (Lower)
	["Vaelan"]  = "维埃兰";
	["Warosh"]  = "瓦罗什";
	["Elder Stonefort"]  = "石墙长者";
	["Roughshod Pike"]  = "尖锐长矛";
	["Spirestone Butcher"]  = "尖石屠夫";
	["Spirestone Battle Lord"]  = "尖石统帅";
	["Spirestone Lord Magus"]  = "尖石首席法师";
	["Fifth Mosh'aru Tablet"]  = "第五块摩沙鲁石板";
	["Bijou"]  = "比修";
	["Sixth Mosh'aru Tablet"]  = "第六块摩沙鲁石板";
	["Bijou's Belongings"]  = "比修的装置";
	["Human Remains"]  = "人类遗骸";
	["Unfired Plate Gauntlets"]  = "未淬火的板甲护手";
	["Urok's Tribute Pile"]  = "乌洛克的贡品堆";
	["Burning Felguard"]  = "燃烧地狱卫士";
	
	--Blackrock Spire (Upper)
	["Seal of Ascension"]  = "晋升印章";
	["Father Flame"]  = "烈焰之父";
	["Darkstone Tablet"]  = "黑暗石板";
	["Doomrigger's Coffer"]  = "末日扣环";
	["Awbee"]  = "奥比";
	["Finkle Einhorn"]  = "芬克·恩霍尔";
	["Drakkisath's Brand"]  = "达基萨斯的烙印";
	
	--Blackwing Lair
	["Draconic for Dummies"]  = "龙语傻瓜教程";
	["Master Elemental Shaper Krixix"]  = "大元素师克里希克";
	["Alchemy Lab"]  = "炼金实验室";
	
	--Gnomeregan
	["Workshop Key"]  = "车间钥匙";
	["Blastmaster Emi Shortfuse"]  = "爆破专家艾米·短线";
	["Clean Room"]  = "清洗区";
	["Tink Sprocketwhistle"]  = "丁克·铁哨";
	["The Sparklematic 5200"]  = "超级清洁器5200型";
	["Mail Box"]  = "邮箱";
	["Kernobee"]  = "克努比";
	["Alarm-a-bomb 2600"]  = "警报炸弹2600型";
	["Matrix Punchograph 3005-B"]  = "矩阵式打孔计算机 3005-B";
	["Matrix Punchograph 3005-C"]  = "矩阵式打孔计算机 3005-C";
	["Matrix Punchograph 3005-D"]  = "矩阵式打孔计算机 3005-D";
	
	--Molten Core
	["Aqual Quintessence"]  = "水之精萃";
	["Eternal Quintessence"]  = "永恒精萃";
	["Random Boss Loot"]  = "随机Boss战利品";
	
	--Naxxramas
	["Archmage Tarsis Kir-Moldir"]  = "大法师塔希斯·基莫迪尔";
	["Mr. Bigglesworth"]  = "比格沃斯";
	["Abomination Wing"]  = "憎恶翼";
	["Spider Wing"]  = "地穴蜘蛛翼";
	["Deathknight Wing"]  = "死亡骑士翼";
	["Four Horsemen Chest"]  = "四骑士之箱";
	["Plague Wing"]  = "瘟疫翼";
	["Frostwyrm Lair"]  = "冰霜巨龙巢穴";
	
	--SM: Library
	["Doan's Strongbox"]  = "杜安的保险箱";
	
	--SM: Armory
	["The Scarlet Key"]  = "血色十字军钥匙";--omitted from SM: Cathedral
	
	--SM: Graveyard
	["Vorrel Sengutz"]  = "沃瑞尔·森加斯";
	
	--Scholomance
	["Skeleton Key"]  = "骷髅钥匙";
	["Viewing Room Key"]  = "观察室钥匙";
	["Viewing Room"]  = "观察室";
	["Blood of Innocents"]  = "无辜者之血";
	["Divination Scryer"]  = "预言水晶球";
	["Blood Steward of Kirtonos"]  = "基尔图诺斯的卫士";
	["The Deed to Southshore"]  = "南海镇地契";
	["Journal of Jandice Barov"]  = "詹迪斯·巴罗夫的日记";
	["The Deed to Tarren Mill"]  = "塔伦米尔地契";
	["The Deed to Brill"]  = "布瑞尔地契";
	["The Deed to Caer Darrow"]  = "凯尔达隆地契";
	["Torch Lever"]  = "火炬";
	["Old Treasure Chest"]  = "旧宝藏箱";
	
	--Shadowfang Keep
	["Sorcerer Ashcrombe"]  = "巫师阿克鲁比";
	["Deathstalker Adamant"]  = "亡灵哨兵阿达曼特";
	["Landen Stilwell"]  = "兰登·斯蒂维尔";
	["Deathstalker Vincent"]  = "亡灵哨兵文森特";
	["Fel Steed"]  = "地狱战马";
	["Jordan's Hammer"]  = "乔丹的铁锤";
	["Crate of Ingots"]  = "铁锭箱";
	["Arugal's Voidwalker"]  = "阿鲁高的虚空行者";
	["The Book of Ur"]  = "乌尔之书";
	
	--Stratholme
	["Key to the City"]  = "城市大门钥匙";
	["Various Postbox Keys"]  = "邮箱钥匙";
	["Living Side"]  = "血色区";
	["Undead Side"]  = "亡灵区";
	["Stratholme Courier"]  = "斯坦索姆信使";
	["Fras Siabi"]  = "弗拉斯·希亚比";
	["Atiesh"]  = "埃提耶什";
	["Elder Farwhisper"]  = "远风长者";
	["Malor's Strongbox"]  = "玛洛尔的保险箱";
	["Crimson Hammersmith"]  = "红衣铸锤师";
	["Grand Crusader Dathrohan"]  = "大十字军战士达索汉";
	["Aurius"]  = "奥里克斯";
	["Black Guard Swordsmith"]  = "黑衣守卫铸剑师";
	["Ysida Harmon"]  = "伊思达·哈尔蒙";
	["Crusaders' Square Postbox"]  = "十字军广场邮箱";
	["Market Row Postbox"]  = "市场邮箱";
	["Festival Lane Postbox"]  = "节日小道邮箱";
	["Elders' Square Postbox"]  = "长者广场邮箱";
	["King's Square Postbox"]  = "国王广场邮箱";
	["Fras Siabi's Postbox"]  = "弗拉斯·希亚比的邮箱";
	["Third Postbox Opened"]  = "第三个邮箱打开";
	
	--The Deadmines
	["Sneed's Shredder"]  = "斯尼德的伐木机";
	["Defias Gunpowder"]  = "迪菲亚火药";
	
	--The Sunken Temple
	["Yeh'kinya's Scroll"]  = "叶基亚的卷轴";
	["Balcony Minibosses"]  = "阳台迷你Boss";
	["Altar of Hakkar"]  = "哈卡祭坛";
	["Essence Font"]  = "精华之泉";
	["Spawn of Hakkar"]  = "哈卡的后代";
	["Elder Starsong"]  = "星歌长者";
	["Statue Activation Order"]  = "雕像激活顺序";
	["Malfurion Stormrage"]  = "玛法里奥·怒风";
	
	--Uldaman
	["Staff of Prehistoria"]  = "史前法杖";
	["Baelog's Chest"]  = "巴尔洛戈的箱子";
	["Conspicuous Urn"]  = "显眼的石罐";
	["Remains of a Paladin"]  = "圣骑士的遗体";
	["Annora"]  = "安诺拉";
	["Tablet of Will"]  = "意志石板";
	["Shadowforge Cache"]  = "暗影熔炉地窖";
	["The Discs of Norgannon"]  = "诺甘农圆盘";
	["Ancient Treasure"]  = "古代宝藏";
	
	--Zul'Gurub
	["Mudskunk Lure"]  = "臭泥鱼诱饵";
	["Gurubashi Mojo Madness"]  = "古拉巴什疯狂魔精";
	["Zanza the Restless"]  = "无眠者赞扎";
	["Ohgan"]  = "奥根";
	["Edge of Madness"]  = "疯狂之源";
	["Zealot Zath"]  = "狂热者扎斯";
	["Zealot Lor'Khan"]  = "狂热者洛卡恩";
	["Muddy Churning Waters"]  = "混浊的水";
	["Jinxed Hoodoo Pile"]  = "厄运巫毒堆";
	["ZG Enchants"]  = "祖尔格拉布附魔"; 

	--Lower Karazhan Halls --TurtleWOW 1.17.0
	["LKH Enchants"]  = "卡拉赞下层附魔";    
	
	--************************************************
	-- Instance Entrance Maps
	--************************************************
	
	--Blackrock Mountain (Entrance)
	["Bodley"]  = "伯德雷";
	["Overmaster Pyron"]  = "征服者派隆";
	["Lothos Riftwaker"]  = "洛索斯·天痕";
	["Franclorn Forgewright"]  = "弗兰克罗恩·铸铁";
	["Orb of Command"]  = "命令宝珠";
	["Scarshield Quartermaster"]  = "裂盾军需官";
	
	--Gnomeregan (Entrance)
	["Transpolyporter"]  = "传送器";
	["Sprok"]  = "斯普洛克";
	["Matrix Punchograph 3005-A"]  = "矩阵式打孔计算机3005-A";
	["Namdo Bizzfizzle"]  = "纳姆杜";
	["Techbot"]  = "尖端机器人";
	
	--Maraudon (Entrance)
	["The Nameless Prophet"]  = "无名预言者";
	["Kolk"]  = "考尔克";
	["Gelk"]  = "格尔克";
	["Magra"]  = "玛格拉";
	["Cavindra"]  = "凯雯德拉";
	["Cursed Centaur"]  = "被诅咒的半人马";
	
	--The Deadmines (Entrance)
	["Marisa du'Paige"]  = "玛里莎·杜派格";
	["Brainwashed Noble"]  = "被洗脑的贵族";
	["Foreman Thistlenettle"]  = "工头希斯耐特";
	
	--Sunken Temple (Entrance)
	["Jade"]  = "玉龙";
	["Kazkaz the Unholy"]  = "邪恶的卡萨卡兹";
	["Zekkis"]  = "泽基斯";
	["Veyzhak the Cannibal"]  = "食尸者维萨克";
	
	--Uldaman (Entrance)
	["Hammertoe Grez"]  = "铁趾格雷兹";
	["Magregan Deepshadow"]  = "马格雷甘·深影";
	["Tablet of Ryun'Eh"]  = "雷乌纳石板";
	["Krom Stoutarm's Chest"]  = "克罗姆·粗臂的箱子";
	["Garrett Family Chest"]  = "加勒特的宝箱";
	["Digmaster Shovelphlange"]  = "挖掘专家舒尔弗拉格";
	
	--Wailing Caverns (Entrance)
	["Mad Magglish"]  = "疯狂的马格利什";
	["Trigore the Lasher"]  = "鞭笞者特里高雷";
	["Boahn"]  = "博艾恩";
	["Above the Entrance:"]  = "入口上方: ";
	["Ebru"]  = "厄布鲁";
	["Nalpak"]  = "纳尔帕克";
	["Kalldan Felmoon"]  = "卡尔丹·暗月";
	["Waldor"]  = "瓦多尔";
	
	--Dire Maul (Entrance)
	["Dire Pool"]  = "厄运之池";
	["Dire Maul Arena"]  = "厄运之槌竞技场";
	["Mushgog"]  = "姆斯高格";
	["Skarr the Unbreakable"]  = "无敌的斯卡尔";
	["The Razza"]  = "拉扎尔";
	["Elder Mistwalker"]  = "迷雾长者";
	["Griniblix the Spectator"]  = "目击者格林比克斯";
	
	--World Bosses
	["Emerald Dragons"]  = "翡翠巨龙";
	["Spirit of Azuregos"]  = "艾索雷葛斯之魂";
	["Emerald Dragons Trash"]  = "翡翠巨龙小怪";
	["Nethergarde Keep"]  = "守望堡";
	["Turtlhu, the Black Turtle of Doom"]  = "|CFF00FF00胡龟之子·末日黑龟";
	["Nerubian Overseer"]  = "|CFF00FF00蛛怪监工";
	["Dark Reaver of Karazhan"]  = "|CFF00FF00卡拉赞黑暗掠夺者";
	["Ostarius of Uldum"]  = "|CFF00FF00奥兹塔里亚斯·奥丹姆";
	["Concavius <Voidspawn>"]  = "|CFF00FF00空卡维斯 <虚空之子>";
	
	--Battlegrounds
	
	--Places
	["Friendly Reputation Rewards"]  = "友好声望奖励";
	["Honored Reputation Rewards"]  = "尊敬声望奖励";
	["Revered Reputation Rewards"]  = "崇敬声望奖励";
	["Exalted Reputation Rewards"]  = "崇拜声望奖励";
	
	--Alterac Valley (North)
	["Stormpike Guard"]  = "雷矛卫队";
	["Dun Baldar"]  = "丹巴达尔";
	["Vanndar Stormpike"]  = "范达尔·雷矛";
	["Dun Baldar North Marshal"]  = "丹巴达尔北部元帅";
	["Dun Baldar South Marshal"]  = "丹巴达尔南部元帅";
	["Icewing Marshal"]  = "冰翼元帅";
	["Iceblood Marshal"]  = "冰血元帅";
	["Stonehearth Marshal"]  = "石爪元帅";
	["East Frostwolf Marshal"]  = "东部霜狼元帅";
	["West Frostwolf Marshal"]  = "西部霜狼元帅";
	["Tower Point Marshal"]  = "塔楼哨站元帅";
	["Prospector Stonehewer"]  = "勘探者斯通纳";
	["Irondeep Mine"]  = "铁深矿洞";
	["Morloch"]  = "莫洛克";
	["Umi Thorson"]  = "乌米·索尔森";
	["Keetar"]  = "基塔尔";
	["Arch Druid Renferal"]  = "大德鲁伊雷弗拉尔";
	["Dun Baldar North Bunker"]  = "丹巴达尔北部碉堡";
	["Wing Commander Mulverick"]  = "空军指挥官穆维里克";
	["Murgot Deepforge"]  = "穆尔高特·深炉";
	["Dirk Swindle"]  = "迪尔克·斯温德尔";
	["Athramanis"]  = "阿斯拉曼尼斯";
	["Lana Thunderbrew"]  = "拉娜·雷酒";
	["Stormpike Aid Station"]  = "雷矛救护站";
	["Stormpike Stable Master"]  = "雷矛马夫";
	["Stormpike Ram Rider Commander"]  = "雷矛冲锋骑兵指挥官";
	["Svalbrad Farmountain"]  = "斯瓦尔布莱德·农山";
	["Kurdrum Barleybeard"]  = "库尔德拉姆·石须";
	["Stormpike Quartermaster"]  = "雷矛军需官";
	["Jonivera Farmountain"]  = "乔尼维拉·农山";
	["Brogus Thunderbrew"]  = "布洛冈·雷酒";
	["Wing Commander Ichman"]  = "空军指挥官艾克曼";
	["Wing Commander Slidore"]  = "空军指挥官斯里多尔";
	["Wing Commander Vipore"]  = "空军指挥官维波里";
	["Dun Baldar South Bunker"]  = "丹巴达尔南部碉堡";
	["Corporal Noreg Stormpike"]  = "诺雷格·雷矛下士";
	["Gaelden Hammersmith"]  = "盖尔丁·哈迷斯";
	["Stormpike Graveyard"]  = "雷矛墓地";
	["Icewing Cavern"]  = "冰翼洞穴";
	["Stormpike Banner"]  = "雷矛军旗";
	["Stormpike Lumber Yard"]  = "雷矛伐木场";
	["Wing Commander Jeztor"]  = "空军指挥官杰斯托";
	["Icewing Bunker"]  = "冰翼碉堡";
	["Wing Commander Guse"]  = "空军指挥官古斯";
	["Stonehearth Graveyard"]  = "石爪墓地";
	["Stonehearth Outpost"]  = "石爪哨站";
	["Captain Balinda Stonehearth"]  = "巴琳达·石爪队长";
	["Snowfall Graveyard"]  = "雪落墓地";
	["Korrak the Bloodrager"]  = "血怒者科尔拉克";
	["Ichman's Beacon"]  = "艾克曼的信标";
	["Mulverick's Beacon"]  = "穆维里克的信标";
	["Stonehearth Bunker"]  = "石爪碉堡";
	["Ivus the Forest Lord"]  = "森林之王伊弗斯";
	["Western Crater"]  = "西部火山口";
	["Vipore's Beacon"]  = "维波里的信标";
	["Jeztor's Beacon"]  = "杰斯托的信标";
	["Eastern Crater"]  = "东部火山口";
	["Slidore's Beacon"]  = "斯里多尔的信标";
	["Guse's Beacon"]  = "古斯的信标";
	["Graveyards, Capturable Areas"]  = "墓地，可占领区域";
	["Bunkers, Towers, Destroyable Areas"]  = "碉堡，塔楼，可摧毁区域";
	["Assault NPCs, Quest Areas"]  = "突袭NPC，任务区域";
	["Steamsaw"]  = "蒸汽锯";
	
	--Alterac Valley (South)
	["Frostwolf Clan"]  = "霜狼氏族";
	["Frostwolf Keep"]  = "霜狼要塞";
	["Drek'Thar"]  = "德雷克塔尔";
	["Duros"]  = "杜洛斯";
	["Drakan"]  = "德拉肯";
	["West Frostwolf Warmaster"]  = "西部霜狼军需官";
	["East Frostwolf Warmaster"]  = "东部霜狼军需官";
	["Tower Point Warmaster"]  = "塔楼哨站军需官";
	["Iceblood Warmaster"]  = "冰血军需官";
	["Icewing Warmaster"]  = "冰翼军需官";
	["Stonehearth Warmaster"]  = "石爪军需官";
	["Dun Baldar North Warmaster"]  = "丹巴达尔北部军需官";
	["Dun Baldar South Warmaster"]  = "丹巴达尔南部军需官";
	["Lokholar the Ice Lord"]  = "冰霜之王洛克霍拉";
	["Iceblood Garrison"]  = "冰血要塞";
	["Captain Galvangar"]  = "加尔范上尉";
	["Iceblood Tower"]  = "冰血塔";
	["Iceblood Graveyard"]  = "冰血墓地";
	["Tower Point"]  = "塔楼哨站";
	["Coldtooth Mine"]  = "冷齿矿洞";
	["Taskmaster Snivvle"]  = "工头斯尼维尔";
	["Masha Swiftcut"]  = "玛莎·刃嚎";
	["Aggi Rumblestomp"]  = "阿基巴德·蛮锤";
	["Frostwolf Graveyard"]  = "霜狼墓地";
	["Jotek"]  = "乔泰克";
	["Smith Regzar"]  = "铁匠雷格萨";
	["Primalist Thurloga"]  = "原始者索尔加";
	["Sergeant Yazra Bloodsnarl"]  = "血吼者亚尔萨";
	["Frostwolf Stable Master"]  = "霜狼马夫";
	["Frostwolf Wolf Rider Commander"]  = "霜狼狼骑兵指挥官";
	["Frostwolf Quartermaster"]  = "霜狼军需官";
	["West Frostwolf Tower"]  = "西部霜狼塔楼";
	["East Frostwolf Tower"]  = "东部霜狼塔楼";
	["Frostwolf Relief Hut"]  = "霜狼救济小屋";
	["Wildpaw Cavern"]  = "野爪洞穴";
	["Frostwolf Banner"]  = "霜狼军旗";
	
	--Arathi Basin
	["The Defilers"]  = "污染者";
	["The League of Arathor"]  = "阿拉索联军";
	["Trollbane Hall"]  = "托尔贝恩大厅";
	["Defiler's Den"]  = "污染者营地";
	["Stables"]  = "马厩";
	["Gold Mine"]  = "金矿";
	["Blacksmith"]  = "铁匠铺";
	["Lumber Mill"]  = "伐木场";
	["Farm"]  = "农田";
	
	--Warsong Gulch
	["Warsong Outriders"]  = "战歌侦察骑兵";
	["Silverwing Sentinels"]  = "银翼哨兵";
	["Silverwing Hold"]  = "银翼要塞";
	["Warsong Lumber Mill"]  = "战歌伐木场";
	
	--Flight points
	["Flight Path Maps"]  = "飞行点地图";
	["Druid-only"]  = "仅德鲁伊";
	["Aerie Peak"]  = "鹰巢山";
	["Astranaar"]  = "阿斯特兰纳";
	["Auberdine"]  = "奥伯丁";
	["Bloodvenom Post"]  = "血毒岗哨";
	["Booty Bay"]  = "藏宝海湾";
	["Brackenwall Village"]  = "蕨墙村";
	["Camp Mojache"]  = "莫沙彻营地";
	["Camp Taurajo"]  = "陶拉祖营地";
	["Cenarion Hold"]  = "塞纳里奥要塞";
	["Chillwind Point"]  = "冰风岗";
	["Crossroads"]  = "十字路口";
	["Darkshire"]  = "夜色镇";
	["Everlook"]  = "永望镇";
	["Feathermoon Stronghold"]  = "羽月要塞";
	["Flame Crest"]  = "烈焰峰";
	["Freewind Post"]  = "乱风岗";
	["Gadgetzan"]  = "加基森";
	["Grom'Gol Base Camp"]  = "格罗姆高营地";
	["Hammerfall"]  = "落锤镇";
	["Kargath"]  = "卡加斯";
	["Lakeshire"]  = "湖畔镇";
	["Light's Hope Chapel"]  = "圣光之愿礼拜堂";
	["Marshal's Refuge"]  = "马绍尔营地";
	["Menethil Harbor"]  = "米奈希尔港";
	["Morgan's Vigil"]  = "摩根的岗哨";
	["Nethergarde Keep"]  = "守望堡";
	["Nighthaven"]  = "夜色镇";
	["Nijel's Point"]  = "尼耶尔前哨站";
	["Ratchet"]  = "棘齿城";
	["Refuge Pointe"]  = "避难营";
	["Revantusk Village"]  = "恶齿村";
	["Rut'Theran Village"]  = "鲁瑟兰村";
	["Sentinel Hill"]  = "哨兵岭";
	["Shadowprey Village"]  = "葬影村";
	["Southshore"]  = "南海镇";
	["Splintertree Post"]  = "碎木岗哨";
	["Stonard"]  = "斯通纳德";
	["Stonetalon Peak"]  = "石爪峰";
	["Sun Rock Retreat"]  = "烈日石居";
	["Talonbranch Glade"]  = "刺枝林地";
	["Talrendis Point"]  = "塔伦迪斯营地";
	["Tarren Mill"]  = "塔伦米尔";
	["Thalanaar"]  = "萨兰纳尔";
	["The Sepulcher"]  = "瑟伯切尔";
	["The Shimmering Flats"] = "闪光平原",
	["Thelsamar"]  = "塞尔萨玛";
	["Theramore Isle"]  = "塞拉摩岛";
	["Thorium Point"]  = "瑟银哨塔";
	["Valormok"]  = "瓦罗莫克";
	["Zoram'gar Outpost"]  = "佐拉姆加前哨站";
	["South of the path along Lake Elune'ara"]  = "艾露恩之湖沿线南部";
	["West of the path to Timbermaw Hold"]  = "通往木喉要塞的道路西侧";
	["Tauren Leveling Guide"]  = "牛头人升级指南";
	["Undead Leveling Guide"]  = "亡灵升级指南";
	["Troll/Orc Leveling Guide"]  = "巨魔/兽人升级指南"; 
	["Horde Leveling Guide"]  = "部落升级指南";
	["Human Leveling Guide"]  = "人类升级指南";
	["Night Elf Leveling Guide"]  = "暗夜精灵升级指南";
	["Gnome/Dwarf Leveling Guide"]  = "侏儒/矮人升级指南"; 
	["Alliance Leveling Guide"]  = "联盟升级指南";
} end)
