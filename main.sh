echo "请准备boot镜像与libmagiskboot.so，并将它们放在脚本所在的目录中"
echo "libmagiskboot.so文件名不要修改。boot镜像请重命名为boot.img"
echo " "
path=$(dirname "$(realpath "$0")")

user=$(whoami)
echo "当前用户为$user"
echo " "

error=0

if [ ! -f "$path/boot.img" ]; then
  echo "错误：未找到boot.img"
  error=1
fi

if [ ! -f "$path/libmagiskboot.so" ]; then
  echo "错误：未找到libmagiskboot.so"
  error=1
fi

if [ "$error" -gt 0 ]; then
  exit 1
fi

case "$user" in
    "shell")
        cp "$path/boot.img" /data/local/tmp
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        cp -i kernel "$path"
        rm kernel boot.so boot.img
        exit
        ;;
    "root")
        cd "$path"
        chmod +x libmagiskboot.so
        ./libmagiskboot.so unpack boot.img
        exit
        ;;
    "system")
        echo "警告⚠️，不支持"
        exit
        ;;
    *)
        echo "用户权限不足"
        exit
        ;;
esac
