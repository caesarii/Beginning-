# Beginning-Lua
Lua 入门

### 环境搭建
1. 安装 Lua
```
    curl -R -O http://www.lua.org/ftp/lua-5.3.4.tar.gz
    tar zxf lua-5.3.4.tar.gz
    cd lua-5.3.4
    mingw32-make.exe mingw
```

2. 编译命令
gcc lua1.c "-Ilua-5.3.4/src" -llua "-Llua-5.3.4/src" && .\a.exe