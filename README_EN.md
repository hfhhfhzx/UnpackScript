Warning of complete machine translation ⚠️

[简体中文](./README.md) | English | [繁體中文](.README_zhrTW.md)

<a href="https://github.com/hfhhfhzx/UnpackScript/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/hfhhfhzx/UnpackScript?label=stars"></a>

# UnpackScript

As you can see, this is a completely lousy Android script. 

# What is this?
A script that uses libmagiskboot.so to unpack the Boot image and obtain the Kernel file within it. 

Yes, it only has these functions. Even a third-party library is needed! 

# How to Use?
- First, we need libmagiskboot.so and place it in the directory where the script is located. Do not modify its file name. This file is in the build of [Magisk](https://github.com/topjohnwu/Magisk). Without it, nothing can proceed. 

- Secondly, prepare the Boot image you want to unpack and place it in the directory where the script is located. Make sure its name is "boot.img". 

- Finally, execute this script as shell/root. Bang! A file named "kernel" appears in the directory where the script is located.

### ⚠️ Important Restrictions
- **It is mandatory** to name the libmagiskboot.so file as `libmagiskboot.so` 
- **It is mandatory** to name the boot image as `boot.img` 
> The current version has hardcoded dependencies, which will be optimized in the future

# Example
- Execute scripts
```shell
adb shell sh /storage/emulated/0/Download/main.sh
```

> [!Note]
>
> "/storage/emulated/0/Download/main.sh" should be replaced with the actual path of the script
>
> if you run it on a mobile phone, it should start with "sh" and not "adb shell" prefix

-output
```
(Script Output)

(Unpacking Information)

(Other)
```

# Questions and Answers

Q: Why should this script be executed as shell/root? 

A: To unpack the Boot image, you need to grant the execution permission to libmagiskboot.so. Ordinary users don't have this permission, and I'm not familiar with the System user either. 

Q: Why do I need to move the file to /data/local/tmp for unpacking operation?

A: Compatibility considerations

Q: Why do you need to copy and delete the kernel back to the script directory instead of moving it directly?

A: I have tested and found that moving files directly triggers the SELinux security policy

# Acquisition 
- [github](./main.sh)
