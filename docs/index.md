## 快速开始

h-lua是一套完善的魔兽地图开发集成，更贴近程序开发者的使用套路。

摒弃手动物编，多余的excel物编，直接敲码绑定逻辑。

避免已知恶性问题，完善的马仔帮你调用API。 从建图到上线，一波跑通，不浪费时间。

### 安装一个fork 或 git

> <a target="_blank" href="https://www.git-fork.com">Fork - a fast and friendly git client for Mac and Windows (git-fork.com)</a>

> <a target="_blank" href="https://git-scm.com">Git (git-scm.com)</a>

#### 如果你不懂git，请自行学习，这里不做赘述

> <a target="_blank" href="https://www.liaoxuefeng.com/wiki/896043488029600/898732792973664">Git教程 - 廖雪峰的官方网站</a>

### 访问项目，复制https的链接

> <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua">h-lua</a>

![Quick1](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/quick1.png)

### 克隆（下载）项目

```
git clone https://github.com/hunzsig-warcraft3/h-lua
```

> 不推荐使用zip下载，使用git能看到项目的开发历史，在fork的加持下也方便监听项目的更新
>
> 会git的自然就懂，而考虑很多人根本不会用git，这里直接演示fork的用法。

#### fork 流程

![Quick2](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/quick2.png)

![Quick3](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/quick3.png)

![Quick4](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/quick4.png)

![Quick5](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/quick5.png)

### 代码编辑器

编辑器推荐使用Jetbrain Ideac(社区版免费) 并安装插件【EmmyLua】。

相信得到编辑器 Buff加成 的你，会如虎添翼~

> <a target="_blank" href="https://www.jetbrains.com/idea/download/#section=windows">Ideac (Jetbrain)</a>

![Emmylua](https://github.com/hunzsig-warcraft3/h-lua/raw/gh-pages/img/emmylua.png)

### 打开代码编辑器，进入项目，使用终端并确保进入工作区

```
cd ./h-lua
```

### 创建新项目

```
> sdk.exe new demo
```

### 修改地形（非必要）

```
> sdk.exe we demo
```

### 测试

```
> sdk.exe test demo
```

### 拓展例子地图

> 拓展地图会编写一些业务，来引导你进行学习

* <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua-demo">demo库</a>
* <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua-demo/tree/main/%E5%9C%B0%E5%9B%BE%E9%A1%B9%E7%9B%AE/h-lua-sdk-helloworld">helloWorld</a>
* <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua-demo/tree/main/%E5%9C%B0%E5%9B%BE%E9%A1%B9%E7%9B%AE/h-lua-sdk-crash">压力测试</a>
* <a target="_blank" href="https://github.com/hunzsig-warcraft3/h-lua-demo/tree/main/%E5%9C%B0%E5%9B%BE%E9%A1%B9%E7%9B%AE/h-lua-sdk-mysterious-land">秘地探奇半成品</a>

### 完全沒试过lua作图怎么快速学习？

* lua基本语法： <a target="_blank" href="https://www.runoob.com/lua/lua-tutorial.html">Runoob Lua教学</a>
* YDLua引擎： 其他学习 -> YDLua引擎，坊间传闻bug。送真言一句：有则无之，无则有之。
* 有魄力的人可以先略一遍 h-lua 的源码，即使你不用框架内实现，也是有所帮助的。
