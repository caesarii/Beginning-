# Beginning-Lua
Lua 入门

### 使用方法
1. 安装 Lua
```
    curl -R -O http://www.lua.org/ftp/lua-5.3.4.tar.gz
    tar zxf lua-5.3.4.tar.gz
    cd lua-5.3.4
    mingw32-make.exe mingw
```

2. 引入 lua 文件
在 main.c 中选择要运行的 .lua 文件

3. 编译命令
gcc main.c "-Ilua-5.3.4/src" -llua "-Llua-5.3.4/src" && .\a.exe