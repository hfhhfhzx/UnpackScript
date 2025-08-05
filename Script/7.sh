path=$(dirname "$(realpath "$0")")
        cp "$path/boot.img" /data/local/tmp
        cp "$path/init_boot.img" /data/local/tmp
        cp "$path/libmagiskboot.so" /data/local/tmp/boot.so
        cd /data/local/tmp
        chmod +x boot.so
        ./boot.so unpack boot.img
        ./boot.so unpack init_boot.img
        cp kernel "$path"
        cp ramdisk.cpio "$path"
        rm kernel boot.so boot.img ramdisk.cpio