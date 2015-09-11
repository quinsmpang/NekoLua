local _M = {};

_M.math = require("nekolib.std.math");
_M.time = require("nekolib.std.time");
_M.string = require("nekolib.std.string");
_M.base58 = require("nekolib.std.base58");
--_M.Base64 = require("base64"); --:/

function _M.isNil(str)
  if type(str) == nil or tostring(str) == "nil" then --If you don't tostring that fucker, you're gonna have a bad time.
    --print("It's nil, dumbass LuaJIT! Type: " .. type(str));
    return true;
  else
    --print("It's NOT nil, dumbass LuaJIT! Type: " .. type(str));
    return false;
  end
end


return _M;
