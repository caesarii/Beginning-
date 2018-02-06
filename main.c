
#include <stdio.h>
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

int
main() {
   
    lua_State *L = luaL_newstate();
    
    luaL_openlibs(L);
    
    if(luaL_dofile(L, "helloworld.lua")) {
        printf("LUA ERROR: %s\n", lua_tostring(L, -1));
        return -1;
    }
   
    lua_close(L);
    return 0;
}