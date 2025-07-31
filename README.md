简体中文 | <del>[English](./README_EN.md) | [繁體中文](./README_zhrTW.md)</del>(暂停支持）

<div align="center">
<a href="https://github.com/hfhhfhzx/UnpackScript/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/hfhhfhzx/UnpackScript?label=stars"></a>
<a href="https://github.com/hfhhfhzx/UnpackScript/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/hfhhfhzx/UnpackScript"></a>
</div>

# UnpackScript
<p>如你所见，这是个烂透了的Android脚本

# 这是什么?
一个使用libmagiskboot.so来解包Boot镜像，获取其中的Kernel文件的脚本

是的，它只有这些作用。甚至需要一个第三方库！

# 如何使用?
- 首先，我们需要libmagiskboot.so，并将其置于脚本所在目录中，不要修改它的文件名。这个文件在[Magisk](https://github.com/topjohnwu/Magisk)的构建中。没有它，一切都无法进行。

- 其次，准备好你想要解包的Boot镜像，并将其置于脚本所在目录中，确保它的名字为“boot.img”

- 最后，以shell/root的身份执行此脚本。啪的一下，一个名叫“kernel”的文件就出现在脚本所在的目录中了

> [!CAUTION]
> 仅从可信渠道下载**Magisk**，其他渠道**可能包含恶意文件**
>
> 本项目**不承担**你乱用的后果

### ⚠️ 重要限制
- **必须**将libmagiskboot.so文件命名为 `libmagiskboot.so`  
- **必须**将boot镜像命名为 `boot.img`  
> 当前版本存在硬编码依赖，后续将优化

# 示例
- 执行脚本
```shell
adb shell sh /storage/emulated/0/Download/main.sh
```
> [!Note]
>
> “/storage/emulated/0/Download/main.sh”应替换为脚本的实际路径
>
>若在手机上执行，应直接以“sh”开头，不要加上“adb shell”前缀

- 输出
```
(脚本输出)

(解包信息)

(其他)
```

# 部分常见问题与回答
Q:为什么要以shell/root的身份来执行这个脚本？

A:想要解包Boot镜像，需要授予libmagiskboot.so执行权限。普通用户没这个权限，我也不了解System用户。

Q:为什么要把文件移动到/data/local/tmp进行解包操作

A:兼容性考虑

Q:为什么把kernel移动回脚本目录要用复制+删除的方式，而不是直接移动

A:我这边测试发现直接移动文件会触发SELinux安全策略

# 获取
- [github](./Script)

# Star历史

<a href="https://www.star-history.com/#hfhhfhzx/UnpackScript&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=hfhhfhzx/UnpackScript&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=hfhhfhzx/UnpackScript&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=hfhhfhzx/UnpackScript&type=Timeline" />
 </picture>
</a>
