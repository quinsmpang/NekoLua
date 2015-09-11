--[[
Not an actual config file, this is an helper module for configuration files in INI format.
For some reason, I decided to do my own thing that does the same thing that it uses... oh well.
Might make this module into a full fledged Ini parser someday...

Tue Mar  3 04:38:07 2015 (1425357487) Update:
	This "class" has been updated to make use of the middleclass module.
	A copy of the previous version has been added and named "config2.lua"
	Update: Nvm for now.
]]--

local Config = Class("Config");
--Giving this "class" exclusive access to the Ini backend.
--Use this class to interact with Ini files.
local Ini = require("inifile");

--local f = nil;

function Config:initialize(fileName)
	local f=io.open(fileName,"r")
	if not f then
		--print("[DEBUG]: Created file: " .. fileName);
		io.open(fileName, "w"):close();
	end
	self.fileName = fileName;
	self.iniTable = Ini.parse(self.fileName);
end


function Config:writeKey(section, key, value)
	if self.iniTable[section] == nil then
		self.iniTable[section] = {};
	end
	self.iniTable[section][key] = value;
	return value;
end


function Config:readKey(section, key)
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


function Config:save()
	Ini.save(self.fileName, self.iniTable);
end

function Config:prettyPrint()
	for k,v in pairs(self.iniTable) do
		print("[" .. k .. "]");
		for i,j in pairs(v) do
			print(i .. "=" .. j);
		end
	end
end



return Config;
