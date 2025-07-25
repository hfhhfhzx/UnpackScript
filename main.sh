path=$(dirname "$(realpath "$0")")

user=$(whoami)

case "$user" in
    "shell")
        cp "$path/boot.img" /data/local/tmp
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        cp kernel "$path" || exit 1
        rm kernel boot.so boot.img
        ;;
    "root")
        cd "$path"
        chmod +x libmagiskboot.so
        ./libmagiskboot.so unpack boot.img
        ;;
    *)
        echo "不支持/权限不足"
        ;;
esac
