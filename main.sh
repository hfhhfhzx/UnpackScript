echo "请准备boot镜像与libmagiskboot.so，并将它们放在脚本所在的目录中"
echo "libmagiskboot.so文件名不要修改。boot镜像请重命名为boot.img"
echo " "
path=$(dirname "$(realpath "$0")")

user=$(whoami)
echo "当前用户为$user"
echo " "

case "$user" in
    "shell")
        cp "$path/boot.img" /data/local/tmp
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        if [ -f "$path/kernel" ]; then
        echo "回复y覆盖之前的kernel,回复N不覆盖"
        fi
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
        echo "当前不支持该用户"
        exit
        ;;
    *)
        echo "该用户权限不足"
        exit
        ;;
esac
