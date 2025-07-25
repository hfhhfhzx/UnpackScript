path=$(dirname "$(realpath "$0")")
        cp "$path/boot.img" /data/local/tmp || echo "权限不足或不支持" ; exit 1
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        cp kernel "$path" || exit 1
        rm kernel boot.so boot.img
