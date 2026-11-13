#!/bin/sh

HERE=$(dirname $(readlink -f "$0"))
cd "$HERE"
SYS=$(echo *-gnu/*-gnu)
SYS=$(readlink -f "$SYS")/sysroot

case "$(uname -m)" in
    aarch64|arm64)
        LOADER=ld-linux-aarch64.so.1
        ;;
    *)
        LOADER=ld-linux-x86-64.so.2
        ;;
esac

echo "export VSCODE_SERVER_CUSTOM_GLIBC_LINKER='${SYS}/lib/${LOADER}';"
echo "export VSCODE_SERVER_CUSTOM_GLIBC_PATH='$SYS/../lib:$SYS/../lib64:$SYS/lib:$SYS/usr/lib';"
echo "export VSCODE_SERVER_PATCHELF_PATH='$HERE/patchelf';"
