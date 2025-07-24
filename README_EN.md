Warning of complete machine translation ⚠️

[简体中文](./README.md) | English

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

# Questions and Answers

Q: Why should this script be executed as shell/root? 

A: To unpack the Boot image, you need to grant the execution permission to libmagiskboot.so. Ordinary users don't have this permission, and I'm not familiar with the System user either. 

Q: Why do shell commands move files to /data/local/tmp for operation, while root directly operates in the directory where the script is located? 

A: The shell has limited permissions, and granting execution permissions requires it to be done in a specific directory; root has greater permissions and can do so in any directory.

# Note

- The cp command in the script uses interactive operation. Try not to execute the script in non-interactive mode. 

# Acquisition 
- [github](https://github.com/hfhhfhzx/UnpackScript/blob/main/main.sh)
