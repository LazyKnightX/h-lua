--- #单位 token
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_UNIT_TOKEN",
    special = 1,
    abilList = "Avul,Aloc",
    upgrade = "",
    file = ".mdl",
    unitShadow = "",
    collision = 0,
    Art = "",
    movetp = "fly",
    moveHeight = 25.00,
    spd = 522,
    turnRate = 3.00,
    moveFloor = 25.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 0,
    nsight = 0,
    Builds = "",
    upgrades = "",
})

--- #冲击单位 token
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_UNIT_TOKEN_LEAP",
    special = 1,
    abilList = "Avul,Aloc",
    upgrade = "",
    file = "hLua\\token.mdx",
    unitShadow = "",
    collision = 0,
    Art = "",
    modelScale = 1.00,
    movetp = "fly",
    moveHeight = 0.00,
    moveFloor = 0.00,
    spd = 0,
    turnRate = 3.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 250,
    nsight = 250,
    Builds = "",
    upgrades = "",
})

--- #模型漂浮字单位 token
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_UNIT_TOKEN_TTG",
    special = 1,
    abilList = "Avul,Aloc",
    upgrade = "",
    file = "hLua\\token.mdx",
    unitShadow = "",
    collision = 0,
    Art = "",
    modelScale = 1.00,
    movetp = "fly",
    moveHeight = 150,
    moveFloor = 150,
    spd = 0,
    turnRate = 3.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 250,
    nsight = 250,
    Builds = "",
    upgrades = "",
    maxPitch = 0,
    maxRoll = 0,
})

-- #眩晕[0.05-0.5]
for during = 1, 10, 1 do
    local swDur = math.round(during * 0.05)
    hslk_ability({
        _parent = "AHtb",
        _type = "system",
        EditorSuffix = "#h-lua",
        Name = "H_LUA_ABILITY_BREAK_" .. swDur,
        Tip = "眩晕" .. swDur .. "秒",
        Ubertip = "眩晕" .. swDur .. "秒",
        Art = "",
        Missileart = "",
        Missilespeed = 999999,
        Animnames = "",
        hero = 0,
        race = "other",
        levels = 1,
        DataA = { 0 },
        Cool = { 10 },
        Dur = { swDur },
        HeroDur = { swDur },
        Cost = { 0 },
        Rng = { 9999 },
        targs = { "neutral,vulnerable,ground,enemies,invulnerable,organic,debris,air,friend,self" },
    })
end

-- #无限眩晕
hslk_ability({
    _parent = "AHtb",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_ABILITY_SWIM_UN_LIMIT",
    Tip = "无限眩晕",
    Ubertip = "无限眩晕",
    Art = "",
    Missileart = "",
    Missilespeed = 999999,
    Missilearc = 0,
    Animnames = "",
    hero = 0,
    race = "other",
    levels = 1,
    DataA = { 0 },
    Cool = { 10 },
    Dur = { 0 },
    HeroDur = { 0 },
    Cost = { 0 },
    Rng = { 9999 },
    targs = { "neutral,vulnerable,ground,enemies,invulnerable,organic,debris,air,friend,self" },
})

-- #隐身
hslk_ability({
    _parent = "Apiv",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_ABILITY_INVISIBLE",
    Tip = "隐身",
    Ubertip = "隐身",
    Art = "",
    hero = 0,
    race = "other",
    DataA = { 0 },
    Dur = { 0 },
    HeroDur = { 0 },
})

--- #选择英雄技能
H_LUA_ABILITY_SELECT_HERO = hslk_ability({
    _parent = "Aneu",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_ABILITY_SELECT_HERO",
    DataA = { 1000.00 },
    DataB = { 4 },
    DataC = { 0 },
    DataD = { 0 },
    Rng = { 900.00 },
})._id

--- #叹号警示圈 直径128px
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_TEXTURE_ALERT_CIRCLE_EXCLAMATION",
    special = 1,
    abilList = "Avul,Aloc",
    upgrade = "",
    file = "hLua\\sign_exclamation.mdl",
    unitShadow = "",
    collision = 0,
    Art = "",
    modelScale = 0.12,
    movetp = "",
    moveHeight = 0,
    moveFloor = 0.00,
    spd = 0,
    turnRate = 3.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 250,
    nsight = 250,
    Builds = "",
    upgrades = "",
    red = 255,
    blue = 255,
    green = 255,
})

--- #叉号警示圈 直径128px
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_TEXTURE_ALERT_CIRCLE_X",
    special = 1,
    abilList = "Avul,Aloc",
    upgrade = "",
    file = "hLua\\sign_x.mdl",
    unitShadow = "",
    collision = 0,
    Art = "",
    modelScale = 0.12,
    movetp = "",
    moveHeight = 0,
    moveFloor = 0.00,
    spd = 0,
    turnRate = 3.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 250,
    nsight = 250,
    Builds = "",
    upgrades = "",
    red = 255,
    blue = 255,
    green = 255,
})

--- #英雄视野 view
hslk_unit({
    _parent = "ogru",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_HERO_VIEW_TOKEN",
    special = 1,
    abilList = "Avul,AInv",
    upgrade = "",
    collision = 0.00,
    file = ".mdl",
    unitShadow = "",
    Art = "",
    movetp = "fly",
    moveHeight = 25.00,
    spd = 522,
    turnRate = 3.00,
    moveFloor = 25.00,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 1250,
    nsight = 1250,
    Builds = "",
    upgrades = "",
})

--- #英雄酒馆演示 tavern
hslk_unit({
    _parent = "ntav",
    _type = "system",
    EditorSuffix = "#h-lua:H_LUA_HERO_TAVERN_TOKEN",
    Name = "　英雄酒馆　",
    Ubertip = "一间酒香四溢的酒馆，因而引来各路英雄",
    abilList = "Avul,Asud," .. H_LUA_ABILITY_SELECT_HERO,
    Sellunits = "",
    pathTex = "",
    collision = "",
    modelScale = 0.80,
    scale = 2.80,
    uberSplat = "",
    teamColor = 12,
})

--- #英雄死亡标志
hslk_unit({
    _parent = "nfrp",
    _type = "system",
    Name = "H_LUA_HERO_DEATH_TOKEN",
    tilesets = "*",
    special = 1,
    hostilePal = 0,
    abilList = "Avul,Aloc",
    upgrade = "",
    collision = 0.00,
    unitSound = 0.00,
    modelScale = 0.75,
    scale = 0.75,
    file = "hLua\\clock_rune.mdl",
    red = 255,
    blue = 255,
    green = 255,
    maxPitch = 0.00,
    maxRoll = 0.00,
    impactZ = 0.00,
    unitShadow = "",
    Art = "",
    movetp = "fly",
    spd = 0,
    turnRate = 3.00,
    moveFloor = -25,
    weapsOn = 0,
    race = "other",
    fused = 0,
    sight = 250,
    nsight = 250,
    Builds = "",
    upgrades = "",
})

--- #JAPI_DELAY
hslk_ability({
    _parent = "Aamk",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_JAPI_DELAY",
    Art = "",
    hero = 0,
    race = "other",
    item = 1,
    levels = 1,
    DataA = { 0 },
    DataB = { 0 },
    DataC = { 0 },
    DataD = { 1 },
})

--- #瞬逝物（地上自动捡拾物）
local fleeting = {
    { Name = "GOLD", _n = "金币", file = "Objects\\InventoryItems\\PotofGold\\PotofGold.mdl", modelScale = 1.00, moveHeight = -30 },
    { Name = "LUMBER", _n = "木材", file = "Objects\\InventoryItems\\BundleofLumber\\BundleofLumber.mdl", modelScale = 1.00, moveHeight = -30 },
    { Name = "BOOK_YELLOW", _n = "黄色书", file = "Objects\\InventoryItems\\tomeBrown\\tomeBrown.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "BOOK_GREEN", _n = "绿色书", file = "Objects\\InventoryItems\\tomeGreen\\tomeGreen.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "BOOK_PURPLE", _n = "紫色书", file = "Objects\\InventoryItems\\tome\\tome.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "BOOK_BLUE", _n = "蓝色书", file = "Objects\\InventoryItems\\tomeBlue\\tomeBlue.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "BOOK_RED", _n = "红色书", file = "Objects\\InventoryItems\\tomeRed\\tomeRed.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "RUNE", _n = "神符", file = "Objects\\InventoryItems\\runicobject\\runicobject.mdl", modelScale = 0.80, moveHeight = -10 },
    { Name = "RELIEF", _n = "浮雕", file = "Objects\\InventoryItems\\Glyph\\Glyph.mdl", modelScale = 0.60, moveHeight = 0 },
    { Name = "EGG", _n = "蛋", file = "Objects\\InventoryItems\\ThunderLizardEgg\\ThunderLizardEgg.mdl", modelScale = 1.30, moveHeight = 20 },
    { Name = "FRAGMENT", _n = "碎片", file = "Objects\\InventoryItems\\CrystalShard\\CrystalShard.mdl", modelScale = 1.00, moveHeight = -20 },
    { Name = "QUESTION", _n = "问号", file = "Objects\\InventoryItems\\QuestionMark\\QuestionMark.mdl", modelScale = 0.60, moveHeight = 0 },
    { Name = "GRASS", _n = "荧光草", file = "Objects\\InventoryItems\\Shimmerweed\\Shimmerweed.mdl", modelScale = 0.80, moveHeight = 0 },
}
for _, v in ipairs(fleeting) do
    hslk_unit({
        _parent = "ogru",
        _type = "system",
        EditorSuffix = "#h-lua",
        Name = "H_LUA_ITEM_FLEETING_" .. v.Name,
        special = 1,
        abilList = "Avul,Aloc",
        upgrade = "",
        collision = 0.00,
        modelScale = v.modelScale,
        file = v.file,
        unitShadow = "",
        Art = "",
        movetp = "",
        moveHeight = v.moveHeight,
        spd = 0,
        turnRate = 0.1,
        weapsOn = 0,
        race = "other",
        fused = 0,
        sight = 0,
        nsight = 0,
    })
end

--- #随机环境装饰物
local unitModel = {
    { Name = "fire", file = "Doodads\\Cinematic\\FirePillarMedium\\FirePillarMedium.mdl" }, -- 火焰
    { Name = "fireblue", file = "Doodads\\Cinematic\\TownBurningFireEmitterBlue\\TownBurningFireEmitterBlue.mdl" }, --蓝色火焰
    { Name = "firetrap", file = "Doodads\\Cinematic\\FireTrapUp\\FireTrapUp.mdl" }, -- 火焰陷阱
    { Name = "firetrapblue", file = "Doodads\\Cinematic\\FrostTrapUp\\FrostTrapUp.mdl" }, -- 蓝色火焰陷阱
    { Name = "lightningbolt", file = "Doodads\\Cinematic\\Lightningbolt\\Lightningbolt.mdl" }, -- 季风闪电
    { Name = "snowman", file = "Doodads\\Icecrown\\Props\\SnowMan\\SnowMan.mdl" }, -- 雪人
    { Name = "bubble_geyser", file = "Doodads\\Ruins\\Water\\BubbleGeyser\\BubbleGeyser.mdl" }, -- 泡沫
    { Name = "bubble_geyser_steam", file = "Doodads\\Icecrown\\Water\\BubbleGeyserSteam\\BubbleGeyserSteam.mdl" }, -- 带蒸汽泡沫
    { Name = "fish_school", file = "Doodads\\Ruins\\Water\\FishSchool\\FishSchool.mdl" }, -- 小鱼群
    { Name = "fish", file = "Doodads\\Ashenvale\\Water\\Fish\\Fish.mdl" }, -- 鱼
    { Name = "fish_green", file = "Doodads\\Ruins\\Water\\FishTropical\\FishTropical.mdl" }, -- 绿色的鱼
    { Name = "fire_hole", file = "Doodads\\Dungeon\\Rocks\\Cave_FieryCrator\\Cave_FieryCrator.mdl" }, -- 火焰弹坑
    { Name = "bird", file = "Doodads\\Ashenvale\\Props\\Bird\\Bird.mdl" }, -- 鸟
    { Name = "bats", file = "Doodads\\Northrend\\Props\\Bats\\Bats.mdl" }, -- 蝙蝠
    { Name = "flies", file = "Doodads\\LordaeronSummer\\Props\\Flies\\Flies.mdl" }, -- 苍蝇
    { Name = "burn_build", file = "Doodads\\Cityscape\\Structures\\CityBuildingLarge_0_BaseRuin\\CityBuildingLarge_0_BaseRuin.mdl" }, --焚烧毁坏建筑
    { Name = "ice0", file = "Doodads\\Icecrown\\Rocks\\IceBlock\\IceBlock0.mdl" }, -- 冰块
    { Name = "ice1", file = "Doodads\\Icecrown\\Rocks\\IceBlock\\IceBlock1.mdl" },
    { Name = "ice2", file = "Doodads\\Icecrown\\Rocks\\IceBlock\\IceBlock2.mdl" },
    { Name = "ice3", file = "Doodads\\Icecrown\\Rocks\\IceBlock\\IceBlock3.mdl" },
    { Name = "seaweed0", file = "Doodads\\Ruins\\Water\\Seaweed0\\Seaweed00.mdl" }, -- 海藻
    { Name = "seaweed1", file = "Doodads\\Ruins\\Water\\Seaweed0\\Seaweed01.mdl" },
    { Name = "seaweed2", file = "Doodads\\Ruins\\Water\\Seaweed0\\Seaweed02.mdl" },
    { Name = "seaweed3", file = "Doodads\\Ruins\\Water\\Seaweed0\\Seaweed03.mdl" },
    { Name = "seaweed4", file = "Doodads\\Ruins\\Water\\Seaweed0\\Seaweed04.mdl" },
    { Name = "break_column0", file = "Doodads\\Ashenvale\\Structures\\AshenBrokenColumn\\AshenBrokenColumn0.mdl" }, --断裂的圆柱
    { Name = "break_column1", file = "Doodads\\Ashenvale\\Structures\\AshenBrokenColumn\\AshenBrokenColumn1.mdl" },
    { Name = "break_column2", file = "Doodads\\Ruins\\Props\\RuinsTrash\\RuinsTrash0.mdl" },
    { Name = "break_column3", file = "Doodads\\Ruins\\Props\\RuinsTrash\\RuinsTrash1.mdl" },
    { Name = "burn_body0", file = "Doodads\\Ashenvale\\Props\\ScorchedRemains\\ScorchedRemains0.mdl" }, -- 焚烧尸体
    { Name = "burn_body1", file = "Doodads\\Ashenvale\\Props\\ScorchedRemains\\ScorchedRemains1.mdl" },
    { Name = "burn_body2", file = "Doodads\\Ashenvale\\Props\\ScorchedRemains\\ScorchedRemains2.mdl" },
    { Name = "impaled_body0", file = "Doodads\\LordaeronSummer\\Props\\ImpaledBody\\ImpaledBody0.mdl" }, -- 叉着的尸体
    { Name = "impaled_body1", file = "Doodads\\LordaeronSummer\\Props\\ImpaledBody\\ImpaledBody1.mdl" },
    { Name = "rune0", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt0.mdl" }, --血色符文
    { Name = "rune1", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt1.mdl" },
    { Name = "rune2", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt2.mdl" },
    { Name = "rune3", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt3.mdl" },
    { Name = "rune4", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt4.mdl" },
    { Name = "rune5", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt5.mdl" },
    { Name = "rune6", file = "Doodads\\BlackCitadel\\Props\\RuneArt\\RuneArt6.mdl" },
    { Name = "glowing_rune0", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes0.mdl" }, --发光符文
    { Name = "glowing_rune1", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes1.mdl" },
    { Name = "glowing_rune2", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes2.mdl" },
    { Name = "glowing_rune3", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes3.mdl" },
    { Name = "glowing_rune4", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes4.mdl" },
    { Name = "glowing_rune5", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes5.mdl" },
    { Name = "glowing_rune6", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes6.mdl" },
    { Name = "glowing_rune7", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes7.mdl" },
    { Name = "glowing_rune8", file = "Doodads\\Cinematic\\GlowingRunes\\GlowingRunes8.mdl" },
    { Name = "bone0", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones0.mdl" }, -- 岩石
    { Name = "bone1", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones1.mdl" },
    { Name = "bone2", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones2.mdl" },
    { Name = "bone3", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones3.mdl" },
    { Name = "bone4", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones4.mdl" },
    { Name = "bone5", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones5.mdl" },
    { Name = "bone6", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones6.mdl" },
    { Name = "bone7", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones7.mdl" },
    { Name = "bone8", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones8.mdl" },
    { Name = "bone9", file = "Doodads\\Barrens\\Props\\Barrens_Bones\\Barrens_Bones9.mdl" },
    { Name = "bone_ice0", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones0.mdl" }, -- 冬天岩石
    { Name = "bone_ice1", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones1.mdl" },
    { Name = "bone_ice2", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones2.mdl" },
    { Name = "bone_ice3", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones3.mdl" },
    { Name = "bone_ice4", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones4.mdl" },
    { Name = "bone_ice5", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones5.mdl" },
    { Name = "bone_ice6", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones6.mdl" },
    { Name = "bone_ice7", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones7.mdl" },
    { Name = "bone_ice8", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones8.mdl" },
    { Name = "bone_ice9", file = "Doodads\\Barrens\\Props\\North_Bones\\North_Bones9.mdl" },
    { Name = "stone0", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock0.mdl" }, -- 岩石2
    { Name = "stone1", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock1.mdl" },
    { Name = "stone2", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock2.mdl" },
    { Name = "stone3", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock3.mdl" },
    { Name = "stone4", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock4.mdl" },
    { Name = "stone5", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock5.mdl" },
    { Name = "stone6", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock6.mdl" },
    { Name = "stone7", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock7.mdl" },
    { Name = "stone8", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock8.mdl" },
    { Name = "stone9", file = "Doodads\\LordaeronSummer\\Rocks\\Lords_Rock\\Lords_Rock9.mdl" },
    { Name = "stone_show0", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock0.mdl" }, -- 雪岩石
    { Name = "stone_show1", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock1.mdl" },
    { Name = "stone_show2", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock2.mdl" },
    { Name = "stone_show3", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock3.mdl" },
    { Name = "stone_show4", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock4.mdl" },
    { Name = "stone_show5", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock5.mdl" },
    { Name = "stone_show6", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock6.mdl" },
    { Name = "stone_show7", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock7.mdl" },
    { Name = "stone_show8", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock8.mdl" },
    { Name = "stone_show9", file = "Doodads\\Icecrown\\Rocks\\Ice_SnowRock\\Ice_SnowRock9.mdl" },
    { Name = "mushroom0", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms0.mdl" }, -- 蘑菇
    { Name = "mushroom1", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms1.mdl" },
    { Name = "mushroom2", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms2.mdl" },
    { Name = "mushroom3", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms3.mdl" },
    { Name = "mushroom4", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms4.mdl" },
    { Name = "mushroom5", file = "Doodads\\Felwood\\Plants\\FelwoodShrooms\\FelwoodShrooms5.mdl" },
    { Name = "mushroom6", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom0.mdl" },
    { Name = "mushroom7", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom1.mdl" },
    { Name = "mushroom8", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom2.mdl" },
    { Name = "mushroom9", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom3.mdl" },
    { Name = "mushroom10", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom4.mdl" },
    { Name = "mushroom11", file = "Doodads\\Ruins\\Plants\\Ruins_Shroom\\Ruins_Shroom5.mdl" },
    { Name = "flower0", file = "Doodads\\Ruins\\Plants\\Ruins_Flower\\Ruins_Flower0.mdl" }, -- 鲜花
    { Name = "flower1", file = "Doodads\\Ruins\\Plants\\Ruins_Flower\\Ruins_Flower1.mdl" },
    { Name = "flower2", file = "Doodads\\Ruins\\Plants\\Ruins_Flower\\Ruins_Flower2.mdl" },
    { Name = "flower3", file = "Doodads\\Ruins\\Plants\\Ruins_Flower\\Ruins_Flower3.mdl" },
    { Name = "flower4", file = "Doodads\\Ruins\\Plants\\Ruins_Flower\\Ruins_Flower4.mdl" },
    { Name = "typha0", file = "Doodads\\Ruins\\Plants\\Ruins_Rush\\Ruins_Rush0.mdl" }, -- 香蒲
    { Name = "typha1", file = "Doodads\\Ruins\\Plants\\Ruins_Rush\\Ruins_Rush1.mdl" },
    { Name = "lilypad0", file = "Doodads\\LordaeronSummer\\Plants\\LilyPad\\LilyPad0.mdl" }, -- 睡莲
    { Name = "lilypad1", file = "Doodads\\LordaeronSummer\\Plants\\LilyPad\\LilyPad1.mdl" },
    { Name = "lilypad2", file = "Doodads\\LordaeronSummer\\Plants\\LilyPad\\LilyPad2.mdl" },
    { Name = "coral0", file = "Doodads\\Ruins\\Water\\Coral\\Coral0.mdl" }, -- 珊瑚
    { Name = "coral1", file = "Doodads\\Ruins\\Water\\Coral\\Coral1.mdl" },
    { Name = "coral2", file = "Doodads\\Ruins\\Water\\Coral\\Coral2.mdl" },
    { Name = "coral3", file = "Doodads\\Ruins\\Water\\Coral\\Coral3.mdl" },
    { Name = "coral4", file = "Doodads\\Ruins\\Water\\Coral\\Coral4.mdl" },
    { Name = "coral5", file = "Doodads\\Ruins\\Water\\Coral\\Coral5.mdl" },
    { Name = "coral6", file = "Doodads\\Ruins\\Water\\Coral\\Coral6.mdl" },
    { Name = "coral7", file = "Doodads\\Ruins\\Water\\Coral\\Coral7.mdl" },
    { Name = "coral8", file = "Doodads\\Ruins\\Water\\Coral\\Coral8.mdl" },
    { Name = "coral9", file = "Doodads\\Ruins\\Water\\Coral\\Coral9.mdl" },
    { Name = "shells0", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells0.mdl" }, -- 贝壳
    { Name = "shells1", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells1.mdl" },
    { Name = "shells2", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells2.mdl" },
    { Name = "shells3", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells3.mdl" },
    { Name = "shells4", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells4.mdl" },
    { Name = "shells5", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells5.mdl" },
    { Name = "shells6", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells6.mdl" },
    { Name = "shells7", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells7.mdl" },
    { Name = "shells8", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells8.mdl" },
    { Name = "shells9", file = "Doodads\\Ruins\\Props\\Ruins_Shells\\Ruins_Shells9.mdl" },
    { Name = "skull_pile0", file = "Doodads\\LordaeronSummer\\Props\\SkullPile\\SkullPile0.mdl" }, -- 头骨
    { Name = "skull_pile1", file = "Doodads\\LordaeronSummer\\Props\\SkullPile\\SkullPile1.mdl" },
    { Name = "skull_pile2", file = "Doodads\\LordaeronSummer\\Props\\SkullPile\\SkullPile2.mdl" },
    { Name = "skull_pile3", file = "Doodads\\LordaeronSummer\\Props\\SkullPile\\SkullPile3.mdl" },
    { Name = "river_rushes0", file = "Doodads\\LordaeronSummer\\Plants\\RiverRushes\\RiverRushes0.mdl" }, -- 河草
    { Name = "river_rushes1", file = "Doodads\\LordaeronSummer\\Plants\\RiverRushes\\RiverRushes1.mdl" },
    { Name = "river_rushes2", file = "Doodads\\LordaeronSummer\\Plants\\RiverRushes\\RiverRushes2.mdl" },
    { Name = "river_rushes3", file = "Doodads\\LordaeronSummer\\Plants\\RiverRushes\\RiverRushes3.mdl" }
}
for _, v in ipairs(unitModel) do
    hslk_unit({
        _parent = "nfrp",
        _type = "system",
        EditorSuffix = "#h-lua",
        Name = "H_LUA_ENV_" .. string.upper(v.Name),
        tilesets = 1,
        special = 1,
        hostilePal = 0,
        abilList = "Avul,Aloc",
        upgrade = "",
        collision = 20.00,
        unitSound = "",
        modelScale = 0.50,
        file = v.file,
        scale = 0.10,
        red = 255,
        blue = 255,
        green = 255,
        unitShadow = "",
        shadowH = 50.00,
        shadowW = 50.00,
        shadowX = 50.00,
        shadowY = 50.00,
        Art = "",
        movetp = "",
        spd = 0,
        turnRate = 0.1,
        weapsOn = 0,
        race = "other",
        fused = 0,
        sight = 0,
        nsight = 0,
        hideOnMinimap = 1,
    })
end

--- #属性系统
for i = 1, 9 do
    local val = math.floor(10 ^ (i - 1))
    local Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, 0)
        table.insert(Data.B, 0)
        table.insert(Data.C, 1 * val * j)
        table.insert(Data.D, 1)
    end
    -- #力量绿+
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_STR_G_ADD_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #力量绿-
    Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, 0)
        table.insert(Data.B, 0)
        table.insert(Data.C, -1 * val * j)
        table.insert(Data.D, 1)
    end
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_STR_G_SUB_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #敏捷绿+
    Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, 1 * val * j)
        table.insert(Data.B, 0)
        table.insert(Data.C, 0)
        table.insert(Data.D, 1)
    end
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_AGI_G_ADD_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #敏捷绿-
    Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, -1 * val * j)
        table.insert(Data.B, 0)
        table.insert(Data.C, 0)
        table.insert(Data.D, 1)
    end
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_AGI_G_SUB_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #智力绿+
    Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, 0)
        table.insert(Data.B, 1 * val * j)
        table.insert(Data.C, 0)
        table.insert(Data.D, 1)
    end
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_INT_G_ADD_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #智力绿-
    Data = { A = {}, B = {}, C = {}, D = {} }
    for j = 0, 9 do
        table.insert(Data.A, 0)
        table.insert(Data.B, -1 * val * j)
        table.insert(Data.C, 0)
        table.insert(Data.D, 1)
    end
    hslk_ability({
        _parent = "Aamk",
        _type = "system",
        Name = "H_LUA_A_INT_G_SUB_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        hero = 0,
        race = "other",
        item = 1,
        levels = 10,
        DataA = Data.A,
        DataB = Data.B,
        DataC = Data.C,
        DataD = Data.D,
    })
    -- #攻击力绿+
    Data = { A = {} }
    for j = 0, 9 do
        table.insert(Data.A, 1 * val * j)
    end
    hslk_ability({
        _parent = "AItg",
        _type = "system",
        Name = "H_LUA_A_ACK_G_ADD_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        levels = 10,
        DataA = Data.A,
    })
    Data = { A = {} }
    for j = 0, 9 do
        table.insert(Data.A, -1 * val * j)
    end
    hslk_ability({
        _parent = "AItg",
        _type = "system",
        Name = "H_LUA_A_ACK_G_SUB_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        levels = 10,
        DataA = Data.A,
    })
    -- #护甲绿+
    Data = { A = {} }
    for j = 0, 9 do
        table.insert(Data.A, 1 * val * j)
    end
    hslk_ability({
        _parent = "AId1",
        _type = "system",
        Name = "H_LUA_A_DEF_ADD_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        levels = 10,
        DataA = Data.A,
    })
    -- #护甲绿-
    Data = { A = {} }
    for j = 0, 9 do
        table.insert(Data.A, -1 * val * j)
    end
    hslk_ability({
        _parent = "AId1",
        _type = "system",
        Name = "H_LUA_A_DEF_SUB_" .. val,
        EditorSuffix = "#h-lua",
        Art = "",
        levels = 10,
        DataA = Data.A,
    })
end

--- #回避(伤害)+
hslk_ability({
    _parent = "AIlf",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_A_AVOID_ADD",
    Art = "",
    levels = 2,
    DataA = { 0, -10000000 }
})
--- #回避(伤害)-
hslk_ability({
    _parent = "AIlf",
    _type = "system",
    EditorSuffix = "#h-lua",
    Name = "H_LUA_A_AVOID_SUB",
    Art = "",
    levels = 2,
    DataA = { 0, 10000000 }
})

--- #视野
local sightBase = { 1, 2, 3, 4, 5 }
local i = 1
while (i <= 10000) do
    for _, v in ipairs(sightBase) do
        v = math.floor(v * i)
        -- #视野+
        hslk_ability({
            _parent = "AIsi",
            _type = "system",
            EditorSuffix = "#h-lua",
            Name = "H_LUA_A_SIGHT_ADD_" .. v,
            Art = "",
            levels = 1,
            DataA = { 1 * v },
        })
        -- #视野-
        hslk_ability({
            _parent = "AIsi",
            _type = "system",
            EditorSuffix = "#h-lua",
            Name = "H_LUA_A_SIGHT_SUB_" .. v,
            Art = "",
            levels = 1,
            DataA = { -1 * v },
        })
    end
    i = i * 10
end
