[简体中文](./README.md) | [English](./README_EN.md) | 繁體中文

<a href="https://github.com/hfhhfhzx/UnpackScript/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/hfhhfhzx/UnpackScript?label=stars"></a>

# UnpackScript
如你所見，這是個爛透了的Android腳本

# 這是什麼?
一個使用libmagiskboot.so來解包Boot鏡像，獲取其中的Kernel文件的腳本

是的，它只有這些作用。甚至需要一個第三方庫！

# 如何使用?
- 首先，我們需要libmagiskboot.so，並將其置於腳本所在目錄中，不要修改它的文件名。這個文件在[Magisk](https://github.com/topjohnwu/Magisk)的構建中。沒有它，一切都無法進行。

- 其次，準備好你想要解包的Boot鏡像，並將其置於腳本所在目錄中，確保它的名字為“boot.img”

- 最後，以shell/root的身份執行此腳本。啪的一下，一個名叫“kernel”的文件就出現在腳本所在的目錄中了

### ⚠️ 重要限制
- **必須**將libmagiskboot.so文件命名為 `libmagiskboot.so` 
- **必須**將boot鏡像命名為 `boot.img` 
> 當前版本存在硬編碼依賴，後續將優化

# 示例
- 執行腳本
```shell
adb shell sh /storage/emulated/0/Download/main.sh
```
> [!Note]
>
> “/storage/emulated/0/Download/main.sh”應替換為腳本的實際路徑
>
>若在手機上執行，應直接以“sh”開頭，不要加上“adb shell”前綴

- 輸出
```
(腳本輸出)

(解包資訊)

(其他)
```

# 部分常見問題與回答
Q:為什麼要以shell/root的身份來執行這個腳本？

A:想要解包Boot鏡像，需要授予libmagiskboot.so執行權限。普通用戶沒這個權限，我也不了解System用戶。

Q:為什麼要把文件移動到/data/local/tmp進行解包操作

A:兼容性考慮

Q:為什麼把kernel移動回腳本目錄要用複製+刪除的方式，而不是直接移動

A:我這邊測試發現直接移動文件會觸發SELinux安全策略

# 獲取
- [github](./Script)
