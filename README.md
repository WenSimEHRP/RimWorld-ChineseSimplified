# 《边缘世界》中文翻译—WenSim 分支

原始项目地址：<https://github.com/ludeon/rimworld-chinesesimplified>

本分支旨在修正游戏早期遗留的错译、漏译等问题。相关信息请参见[项目文档](https://github.com/WenSimEHRP/RimWorld-ChineseSimplified/discussions/1)。

## 安装说明

> [!CAUTION]
> 由于更新《边缘世界》时 Steam 会检查覆盖游戏文件，因此请在每次更新后手动移除游戏安装目录中 `Data` 文件夹下 `Core`、`Biotech` 各模块 `Language` 文件夹中的 `ChineseSimplified (简体中文).tar`文件

1. Git clone 本项目或下载源代码压缩包
2. 找到《边缘世界》安装目录下的 `Data` 文件夹
3. 处理现有文件：
   - 进入各模块文件夹（如 `Core`、`Biotech`、`Royalty` 等）
   - 进入模块内的 `Languages` 文件夹
   - 删除已存在的 `ChineseSimplified (简体中文).tar` 文件
4. 安装翻译：
   - 将本项目中对应的模块文件夹复制到游戏目录
   - 重命名为 `ChineseSimplified (简体中文)`

为了避免每次翻译更新后重新复制文件，推荐使用符号链接（Symbolic link）。如果采取 git clone 的方法下载，一次 pull 便可直接更新。
