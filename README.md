# h-lua 魔兽地图 开发集成环境

[![image](https://img.shields.io/badge/English-EN_US-blue.svg)](https://github.com/hunzsig-warcraft3/h-lua-sdk/blob/main/README_EN-US.md)
[![image](https://img.shields.io/badge/繁体中文-ZH_TW-blue.svg)](https://github.com/hunzsig-warcraft3/h-lua-sdk/blob/main/README_ZH-TW.md)

![image](https://img.shields.io/badge/license-MIT-blue.svg)
[![image](https://img.shields.io/badge/doc-技术文档-blue.svg)](http://wenku.hunzsig.org/?_=_6_34)
[![image](https://img.shields.io/badge/hLua-v2.alpha-orange.svg)](https://github.com/hunzsig-warcraft3/h-lua)
[![image](https://img.shields.io/badge/Author-hunzsig-red.svg)](https://www.hunzsig.com)
[![image](https://img.shields.io/badge/QQ-325338043-green.svg)](https://qm.qq.com/cgi-bin/qm/qr?k=NYlOpKUo9vEUQ3gN_UBvRUci9avq0tqB&jump_from=webapi)

### 结构
```
    ├── depend - 依赖的开发工具
    │   ├── h-lua - h-lua(v:latest，随sdk更新的最新版)
    │   ├── w3x2lni - w3x2lni工具(v:2.7.2)
    │   └── YDWE - YDWE,附带japi及部分dzapi
    ├── projects - 用来放置你的地图项目目录，如 h-lua-sdk-helloworld
    └── sdk.exe - 编译好的开发命令工具
```
> [h-lua-sdk-helloworld](https://github.com/hunzsig-warcraft3/h-lua-sdk-helloworld)

### 项目目录用来放置地图项目
> 一个正规的项目应该包括以下结构
```
    └── project_demo - 项目目录
        ├── hslk - 用来编写 hslk lua 物编配置
        ├── jass - 自定义jass（不是完整的jass，仅供有限的片段定义，请看参考文件示例）
        │   ├── globals.jass
        │   └── function.jass
        ├── map - 地图文件
        │   ├── implant - 用来强制更新替换【DZUI布局、命令位置、平衡性常数、原生界面、字体】参数
        │   ├── resource - F12导入
        │   │   ├── hLua - h-lua需要的资源文件，请不要乱删除
        │   │   ├── interface - 冷却时间UI，不需要可删除，然后需要修改 implant/war3mapSkin.txt
        │   │   ├── ReplaceableTextures
        │   │   ├── TerrainArt - 地形贴图，不需要可直接删除
        │   │   │   ├── Cliff - 悬崖贴图，不需要可直接删除
        │   │   │   ├── CommandButtonsDisabled - 暗图标目录
        │   │   │   └── selection - 选择圈，不需要可直接删除
        │   │   ├── UI - 命令等系统图形的修改（不包括dzui）不需要可删除，然后需要修改 implant/war3mapSkin.txt
        │   │   ├── war3mapImported - 通用目录
        │   │   └── war3mapMap.blp - 小地图文件，一般不会手动处理，交给 -yd
        │   ├── slk - ini式的物编
        │   └── w3x - 地图lni
        ├── scripts - lua脚本（*此乃建议，实际上你的lua只要在项目目录内，都能按路径访问）
        └── main.lua - 项目代码入口
```
> 如果你不确定项目结构的准确性，可使用new命令新建一个项目来参考
```
./h-lua-sdk> sdk.exe new [:PROJECT_NAME]
```

### 命令行
```
* 必填 ~ 选填
./h-lua-sdk> sdk.exe help  //提示cmd工具命令
./h-lua-sdk> sdk.exe new [*PROJECT_NAME]  //新建一个地图项目
./h-lua-sdk> sdk.exe ydwe [*PROJECT_NAME]  //以YDWE打开地图项目
./h-lua-sdk> sdk.exe clear [*PROJECT_NAME]  //清理构建的临时文件
./h-lua-sdk> sdk.exe test [*PROJECT_NAME]  //构建测试版本并开启游戏进行调试
./h-lua-sdk> sdk.exe build [*PROJECT_NAME]  //构建上线版本并开启游戏进行调试
```

### 命令行的缩写版
```
* 必填 ~ 选填
./h-lua-sdk> sdk.exe -h  //提示cmd工具命令
./h-lua-sdk> sdk.exe -n [*PROJECT_NAME]  //新建一个地图项目
./h-lua-sdk> sdk.exe -we|-yd [*PROJECT_NAME]  //以YDWE打开地图项目
./h-lua-sdk> sdk.exe -c [*PROJECT_NAME]  //清理构建的临时文件
./h-lua-sdk> sdk.exe -t [*PROJECT_NAME]  //构建测试版本并开启游戏进行调试
./h-lua-sdk> sdk.exe -b [*PROJECT_NAME]  //构建上线版本并开启游戏进行调试
```