## 自定义Attr属性

想要添加一个自定义属性，需要改动下面这个文件

没错只需要参考一个地方即可

* \h-lua\depend\h-lua\const\attribute.lua

先来了解下默认键值们

> 格式： 键值,名字,初始值
>
> 这些键值：primary,life,mana,move,defend_white,attack_range,attack_range_acquire
>
> 上述键值会在初始化时强行覆盖为slk的物编数据，初始值写了是没用的

找到 ATTR_CONFIGURATOR 属性配置器

```lua
---@type fun(conf:table[])
ATTR_CONFIGURATOR = function(conf)
    -- ... 略
end
```

参考默认的数据格式，添加你自己的参数，如：幸运值

```lua
ATTR_CONFIGURATOR({
    { "lucky", "幸运", 0 },
})
```

### 至此！已经可以在attr里面使用了

```lua
hattr.set(u, "lucky", "+1")
hattr.get(u, "lucky") -- 1
```

### 温馨提示，基本认为已经生成的物编和数据不会被捕捉到

* 除非你自己掌控数据的处理~

