path=$(dirname "$(realpath "$0")")
        cd "$path"
        ./libmagiskboot.so unpack boot.img
