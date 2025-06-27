# 《边缘世界》中文翻译—WenSim 分支

原始项目地址：<https://github.com/ludeon/rimworld-chinesesimplified>

本分支旨在修正游戏早期遗留的错译、漏译等。相关信息参见[文档](https://github.com/WenSimEHRP/RimWorld-ChineseSimplified/discussions/1)。

## 使用翻译

> [!CAUTION]
> 由于更新《边缘世界》时 Steam 会检查覆盖游戏文件，因此请在每次更新后手动移除游戏安装目录中 `Data` 文件夹下 `Core`、`Biotech` 各模块 `Language` 文件夹中的 `ChineseSimplified (简体中文).tar`文件

Git clone 本项目或下载本项目的源代码后，先定位到游戏安装目录的 `Data` 文件夹。在此文件夹下有 `Core`、`Biotech` 等游戏模块文件夹。对于其中每一个模块，定位到模块中的 `Language` 文件夹，先将文件夹中已经存在的 `ChineseSimplified (简体中文).tar` 文件删除，再将本项目中对应的文件夹复制进去，重命名为 `ChineseSimplified (简体中文)`。

上述复制可以用 Symlink 代替，免去复制与更新之劳。
