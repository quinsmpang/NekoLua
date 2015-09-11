local _M = {};
--[[
TODO: IPv6 support.
	Do we even have modern shit in Canada? -_-.
	Note: IPIFY has IPv6 support!
TODO: Caching.

]]--
--if not socket then socket = require("socket"); print("[DEBUG]: Had to load LuaSocket from a module."); end
--if not http then http = require("socket.http"); print("[DEBUG]: Had to load LuaSocket.http from a module."); end

--[[ Spoof Chrome user agent :-) ]]--
_M.requestHeaders = {};
_M.requestHeaders.accept = "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";
_M.requestHeaders.acceptEncoding = nil;
_M.requestHeaders.acceptLanguage = "en-CA,en;q=0.10,en-GB;q=0.8,en-US;q=0.2"; -- =2.0 ... wat?
_M.requestHeaders.userAgent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36";
_M.requestHeaders.doNotTrack = nil; -- Stop being paranoid. ;)

_M.timeOut = 1; --In Seconds


function _M.hasNetworkAccess()
  print("NYI: neko.Net.hasNetworkAccess() - Assuming yes/true");
  return true;
end
function _M.hasInternetAccess()
  print("NYI: neko.Net.hasInternetAccess() - Assuming yes/true");
  return true;
end


function _M.getIPv4Addr_IPIFY() --Thanks to http://ipify.org for their awesome, free, unlimited requests API! <3
        local ip, err = http.request("http://api.ipify.org/?format=json");
        if neko.std.isNil(ip) == true then
          print("Failed to connect to api.ipify.org: " .. tostring(err) .. " - Amount returned is the same as input to avoid crashing.");
          return amount;
        end
        ip = json.decode(ip);
        return ip["ip"]; --local ip = json.decode(http.request("http://api.ipify.org/?format=json")); --Table expected, got number
end

function _M.getIPv4Address()
        return _M.getIPv4Addr_IPIFY();
end

function _M.init()  


	http.TIMEOUT = _M.timeOut;
end


return _M;
