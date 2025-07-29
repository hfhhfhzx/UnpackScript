path=$(dirname "$(realpath "$0")")
        cd "$path"
        chmod +x libmagiskboot.so
        ./libmagiskboot.so unpack boot.img
