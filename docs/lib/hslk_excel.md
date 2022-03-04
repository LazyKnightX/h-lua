## Excel 数据导入

#### 众所周知，魔兽圈发展到后期出现了一种excel生成物编，方便作图的功能

#### 而本框架是没有支持excel生成物编的，甚至连物编都非常式微。

#### 那么你是不是就没法用excel编写数据表格查看呢？答案是：_当然能_

> 为什么有的人觉得excel很难与框架配合，那是他对excel就存有一种误解
>
> 因为他们把excel当作一个表格文件，事实上excel就是一堆数据
>
> 只要是数据，在编码的世界，调戏它就是四个字：_为所欲为_

先来整个简单的excel，3个物品，带有售卖价格

![Excel1](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel1.png)

这个excel怎么和代码联动呢？很简单，根本不需要什么工具

> excel自带可保存为一种名为csv的格式，这种格式在web界非常常用

![Excel2](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel2.png)

这个csv文件可以使用任意文本编辑器打开，例如最牛逼的编辑器，Vim（PS:这里我只是皮一下实际上用的记事本）

![Excel3](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel3.png)

> 以逗号分割每一个格子，序列化，看起来像lua代码里面的什么，没错，table的数据

那么excel数据当然要转为hslk来用

现在我们来建一个 _excel.lua

![Excel4](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel4.png)

> 代码送上

```lua
local data = {
    "Name,goldcost",
    "物品1,13",
    "物品2,17",
    "物品3,19",
}

-- 为数据规定每列的格式
local format = { "string", "int" }


-- 取第一行并删除它，得到纯净的2~N行数据
local field = string.explode(',', data[1]) -- {"Name", "goldcost"}
table.remove(data, 1)

-- 将序列（逗号），转为数组
for i, v in ipairs(data) do
    local trans = {}
    for vi, vv in ipairs(string.explode(',', v)) do
        -- format 仅供参考，按需求自己编写即可
        local fieldName = field[vi]
        if (format[vi] == "string") then
            trans[fieldName] = tostring(vv)
        elseif (format[vi] == "number") then
            trans[fieldName] = math.round(tonumber(vv), 5)
        elseif (format[vi] == "int") then
            trans[fieldName] = math.floor(tonumber(vv))
        end
    end
    data[i] = trans
end

print_r(data)

for i, v in ipairs(data) do
    hslk_item({
        Name = v.Name,
        goldcost = v.goldcost,
    })
end
```

然后就没有然后了，来测试看看有没有错

![Excel5](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel5.png)
![Excel6](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel6.png)
![Excel7](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/excel7.png)

### 轻轻松松~
