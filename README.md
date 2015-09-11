NekoLua
=======

A distribution of Lua customized to my liking.
Created because LuaDist, LuaRocks, Distro packages all suck.

Features:

-LuaJIT.

-Strict Lua 5.2 Compat applied?



-....


Example module (prefer the second solution, if possible!):

```lua
local _M = {}

function _M.doThis()
        print("K");
end
function _M.doThat()
        _M.doThis();
end

return _M;
```

30log.lua is included as an alternative.




This software is licensed under CC0 1.0 Universal, which makes it Public Domain.


Installation:


Compile ./luadev/luajit-2.0/

It contains a patch that adds NekoLua to the Lua Path.

Do this to install NekoLua:

```
sudo ./install.sh
```

This will install NekoLua inside /opt/ at /opt/nekolua/
