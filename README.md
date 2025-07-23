# UnpackScript
如你所见，这是个烂透了的Android脚本

# 这是什么?
一个使用libmagiskboot.so来解包Boot镜像，获取其中的Kernel文件<br>

是的，它只有这些作用。甚至需要一个第三方库！

# 如何使用?
- 首先，我们需要libmagiskboot.so，并将其置于脚本所在目录中，不要修改它的文件名。这个文件在[Magisk](https://github.com/topjohnwu/Magisk)的构建中。没有它，一切都无法进行。

- 其次，准备好你想要解包的Boot镜像，并将其置于脚本所在目录中，确保它的名字为“boot.img”

- 最后，以shell/root的身份执行此脚本。啪的一下，一个名叫“kernel的文件就出现在脚本所在的目录中了”
