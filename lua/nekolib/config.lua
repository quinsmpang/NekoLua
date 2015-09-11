--[[
Not an actual config file, this is an helper module for configuration files in INI format.
For some reason, I decided to do my own thing that does the same thing that it uses... oh well.
Might make this module into a full fledged Ini parser someday...
]]--

local _M = {};
--Giving this "class" exclusive access to the Ini backend.
--Use this class to interact with Ini files.
local Ini = require("inifile");
_M.__index = _M;
local f = nil;
function _M.new(fileName)
	f=io.open(fileName,"r")
	if not f then
		--print("[DEBUG]: Created file: " .. fileName);
		io.open(fileName, "w"):close();
	end
	local _Z = {};
	setmetatable(_Z, _M);
	_Z.fileName = fileName;
	_Z.iniTable = Ini.parse(fileName);
	return _Z;
end

function _M:writeKey(section, key, value)
	if self.iniTable[section] == nil then
		self.iniTable[section] = {};
	end
	self.iniTable[section][key] = value;
	return value;
end


function _M:readKey(section, key)
	if self.iniTable[section] == nil then
		--print("Section: [" .. section .. "] is not in: " .. self.fileName .. ".");
		return nil;
	end
	if self.iniTable[section][key] == nil then
		--print("Something's wrong with the key=value pair.");
		return nil;
	end
	return self.iniTable[section][key];
end


function _M:save()
	Ini.save(self.fileName, self.iniTable);
end

function _M:prettyPrint()
	for k,v in pairs(self.iniTable) do
		print("[" .. k .. "]");
		for i,j in pairs(v) do
			print(i .. "=" .. j);
		end
	end
end



return _M;
