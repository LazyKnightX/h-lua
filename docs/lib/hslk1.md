## hslk 使用入门

> hslk是h-lua的物编生成方式，只要在hslk目录中运用设定好的方法，即可创建物编
>
> ！！可以参考 hello world <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua-demo/tree/main/%E5%9C%B0%E5%9B%BE%E9%A1%B9%E7%9B%AE/h-lua-sdk-helloworld">点击参考</a>

### 类型

```
unit(common/hero/courier) 单位
item(common/synthesis) 物品
ability(common/empty/ring) 技能
buff(common) 魔法效果
upgrade(common) 科技
```

### 框架自定义字段

> 【改不了】的字段定义了也没效
>
> 【不建议用】的字段说明不推荐使用
>
> 【物品专用】的字段说明只在hslk_item有效

```lua
_id = "【改不了】自动生成的物编ID"
_id_force = "【不建议用】自定义物编ID"
_class = "【改不了】hslk数据类别"
_type = "hslk数据形式"
_parent = "模版物编ID"
_attr = "属性"
_ring = "光环"
_remarks = "结尾灰字描述"
_overlie = "【物品专用】叠加"
_weight = "【物品专用】重量"
_cast = "【物品专用】施法前摇"
_cost = "【物品专用】施法耗蓝"
_cooldown = "【物品专用】冷却时间（秒）"
_cooldownTarget = "【物品专用】冷却技能目标，参考CONST_ABILITY_TARGET"
_shadow = "【物品专用】强制使用影子模式，影子模式就是自动用卷轴代替原来物品的形式"
```

#### 配置hslk

> hslk的数据配置在【你的项目】的hslk目录中，即可测试自动构建并读取
>
> 支持默认程度的自定义配置，例如物编文本生成时的颜色等
>
> 默认内置一套配置，使用conf方法全覆盖即可

```lua
hslk_conf({
  courierSkill = {
    -- 信使技能-名称、热键、图标位置、冷却
    blink = {
        Ubertip = "闪烁到任何地方", Art = "ReplaceableTextures\\CommandButtons\\BTNBlink.blp",
        Hotkey = 'Q', Buttonpos_1 = 0, Buttonpos_2 = 2, Cool1 = 10
    },
    rangePickUp = {
        Ubertip = "将附近地上的物品拾取到身上", Art = "ReplaceableTextures\\CommandButtons\\BTNPickUpItem.blp",
        Hotkey = 'W', Buttonpos_1 = 1, Buttonpos_2 = 2, Cool1 = 5
    },
    separate = {
        Ubertip = "将合成或重叠的物品拆分成零件", Art = "ReplaceableTextures\\CommandButtons\\BTNRepair.blp",
        Hotkey = 'E', Buttonpos_1 = 2, Buttonpos_2 = 2, Cool1 = 5
    },
    deliver = {
        Ubertip = "将所有物品依照顺序传送给英雄，当你的英雄没有空余物品位置，物品会返回给信使", Art = "ReplaceableTextures\\CommandButtons\\BTNLoadPeon.blp",
        Hotkey = 'R', Buttonpos_1 = 3, Buttonpos_2 = 2, Cool1 = 5
    },
  },
  -- 描述文本颜色,可配置 hcolor 里拥有的颜色函数，也可以配置 hex 6位颜色码
  color = {
    hotKey = "ffcc00", -- 热键
    itemCoolDown = "ccffff", -- 物品冷却时间
    itemAttr = "b0f26e", -- 物品属性
    itemOverlie = "ff59ff", -- 物品叠加
    itemWeight = "ee82ee", -- 物品重量
    itemRemarks = "969696", -- 物品备注
    itemFragment = hcolor.orange, -- 物品零部件
    itemProfit = "ffd88c", -- 物品合成品
    abilityCoolDown = "ccffff", -- 技能冷却时间
    abilityAttr = "b0f26e", -- 技能属性
    abilityRemarks = "969696", -- 技能备注
    ringArea = "99ccff", -- 光环范围
    ringTarget = "99ccff", -- 光环作用目标
    heroWeapon = "ff3939", -- 英雄攻击武器类型
    heroAttack = "ff8080", -- 英雄基础攻击
    heroRange = "99ccff", -- 英雄攻击范围
    heroPrimary = "ffff00", -- 英雄主属性
    heroSecondary = "ffffcc", -- 英雄主属性
    heroMove = "ccffcc", -- 英雄移动
  }, 
})
```

### 配置物品合成公式（一般完美支持hslk创建的注册物品）

> 必须提前配置公式，再调用hslk创建物品，否则物品说明文本不会自动协助合成补充

```
例子1 "小刀割大树=小刀+大树" 2个不一样的合1个
例子2 "三头地狱犬的神识=地狱狗头x3" 3个一样的合1个
例子3 "精灵神水x2=精灵的眼泪x50" 50个一样的合一种,但得到2个
例子4 {
    {"小刀割大树",1},{"小刀",1},{"大树",1}
}
对象型配置第一项为结果物品(适合物品名称包含特殊字符的物品，如+/=影响公式的符号)
```

### 支持多种公式配置，当公式内存在+=这种破坏范式的名称时，可使用table进行设定

```lua
hslk_item_synthesis({
    "璀璨精气球=精气球+璀璨",
    "重剑=铁剑x2",
    "刺客短剑=铁剑+闪避护符",
    "淬火剑=重剑+淬火石",
    {
        {"小刀割大树",1},{"小刀",1},{"大树",1}
    }
})
```

### 构建物编单位

```lua
hslk_unit({
    Name = "大步兵",
    abilList = "Avul,Apit,Aneu",
    file = "units\\human\\TheCaptain\\TheCaptain",
    Art = "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp",
    pathTex = "PathTextures\\4x4SimpleSolid.tga",
    modelScale = 1.10,
    scale = 1.10,
    HP = 100,
    spd = 0,
    sight = 800,
    nsight = 800,
    unitSound = "HighElfSwordsman",
    weapsOn = 0,
    race = "human",
    UberSplat = "HSMA",
})
```

### 构建物编物品

```lua
hslk_item({
    Name = "闪避护符",
    Art = "ReplaceableTextures\\CommandButtons\\BTNTalisman.blp",
    goldcost = 3500,
    lumbercost = 0,
    powerup = 0,
    sellable = 1,
    pawnable = 1,
    droppable = 1,
    Hotkey = "Q",
    _remarks = "戴上这个护符就能闪避，天下哪有那么神奇的事？！",
    _weight= 0.4,
    _attr = _attr({
        avoid = "+3",
        xtras= {
          {
            on = CONST_EVENT.attack
            action = "triggerUnit.attr.attack_speed",
            odds = 8,
            val = 10,
            during = 3,
            effect = "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",
          },
       }
    }),
})
```

### 构建fake光环技能

```lua
hslk_ability_ring({
    Name = "月神强击",
    Hotkey = "E",
    race = "human",
    Art = "ReplaceableTextures\\PassiveButtons\\PASBTNTrueShot.blp",
    _ring = _ring({
        effect = "Abilities\\Spells\\NightElf\\TrueshotAura\\TrueshotAura.mdl",
        effectTarget = "Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",
        radius = 600,
        target = "air,ground,friend,self,vuln,invu",
        attr = {
            attack_green = "+90",
            aim = "+20"
        }
    }),
})
```

### 物品也可以嵌套光环技能

```lua
hslk_item({
    Name = "铁剑",
    Art = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp",
    goldcost = 800,
    lumbercost = 0,
    powerup = 0,
    sellable = 1,
    pawnable = 1,
    droppable = 1,
    Hotkey = "D",
    _remarks = "精铁铸造的大剑",
    _attr = {
        attack_green = "+33",
    },
    _ring = {
        effect = "Abilities\\Spells\\Orc\\CommandAura\\CommandAura.mdl",
        effectTarget = "Abilities\\Spells\\NightElf\\BattleRoar\\RoarTarget.mdl",
        attachTarget = "overhead",
        radius = 600,
        target = "air,ground,friend,self,vuln,invu",
        attr = {
            life = "+50",
        }
    },
})
```

### 自定义物编模版

```lua
hslk_unit({
  _parent = "hpea"
})
```

### 自定义物编ID

```lua
hslk_unit({
  _id_force = "U001"
})
```
