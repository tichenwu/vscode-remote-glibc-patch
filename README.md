# vscode-remote-glibc-patch

Patch glibc on legacy Linux systems to enable compatibility with the latest VSCode Remote.

## Why

Since VSCode 1.99, the Remote-SSH extension pack requires glibc 2.28 or later. This is a problem for many legacy Linux systems that are stuck on older versions of glibc/kernel.

A workaround was provided by [official docs](https://code.visualstudio.com/docs/remote/faq#_can-i-run-vs-code-server-on-older-linux-distributions), which, while helpful, takes a lot of time to compile and configure. This project hence pre-compiles the artifacts and provides a simple script to patch glibc on legacy systems.

## How to use

this repostory only privode the pre-build sysroot files on x86_64 and aarch64
please refer to the official docs for more information.

export VSCODE_SERVER_CUSTOM_GLIBC_LINKER="/xxx/lib/ld-linux-aarch64.so.1"
export VSCODE_SERVER_CUSTOM_GLIBC_PATH="/xxx/lib"
export VSCODE_SERVER_PATCHELF_PATH="/pathtoyourpatchelf"

OR with full release version

export VSCODE_SERVER_CUSTOM_GLIBC_LINKER="/xxx/sysroot/lib/ld-linux-aarch64.so.1"
export VSCODE_SERVER_CUSTOM_GLIBC_PATH="/xxx/sysroot/lib"
export VSCODE_SERVER_PATCHELF_PATH="/pathtoyourpatchelf"

### Download the appropriate tarball



## Contributing

If the provided artifacts won't meet your OS/kernel/arch combination, feel free to create an issue and I will add them!
