local _M = {};

--From wiki
function _M.urlEncode(url)
  if _M.isString(url) then
    url = string.gsub(url, "\n", "\r\n");
    url = string.gsub(url, "([^%w %-%_%.%~])",
      function (c) return string.format("%%%02X", string.byte(c)) end);
    url = string.gsub(url, " ", "+");
  end
  return url;
end

--From wiki
function _M.urlDecode(url)
  if _M.isString(url) then
    url = string.gsub(url, "+", " ");
    url = string.gsub(url, "%%(%x%x)",
      function(h) return string.char(tonumber(h,16)) end);
    url = string.gsub(url, "\r\n", "\n");
  end
  return url;
end


function _M.isString(str)
  if type(str) == "string" then
    return true
  else
    return false;
  end
end
--[[
function _M.monkeyPatch()
	string.urlEncode = _M.urlEncode;
	string.urlDecode = _M.urlDecode;
	string.isString = _M.isString;
end
]]--
if patchLibWith ~= nil then
	patchLibWith(string, _M);
end

return _M;
