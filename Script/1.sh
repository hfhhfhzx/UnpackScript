path=$(dirname "$(realpath "$0")")
        cp "$path/boot.img" /data/local/tmp
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        cp kernel "$path"
        rm kernel boot.so boot.img
