path=$(dirname "$(realpath "$0")")
        cd "$path"
        chmod +x libmagiskboot.so
        if [ -f "kernel" ]; then
    echo "发现kernel文件，回复y覆盖，直接回车不覆盖"
    read -r answer
    case "$answer" in
        [yY])
            ./.libmagiskboot.so unpack boot.img
            ;;
        *)
            ;;
    esac
else
    ./libmagiskboot.so unpack boot.img
fi
