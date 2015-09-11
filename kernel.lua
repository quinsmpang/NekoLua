--[[
The "Kernel".
]]--

_KERNEL = {};
_KERNEL.ROOT = "/opt/nekolua/";
_KERNEL.VERSION = "v0.1?";


function rerequire(module) --Allows runtime modification and reloading of modules
	package.loaded[module] = nil;
	return require(module);
end

function _KERNEL.init()
	os.time2 = require("ltime");
	_KERNEL.math();
end

function _KERNEL.math()
	local timeFunc = nil;
		if not os.time2 then
			timeFunc = os.time;
		else
			timeFunc = os.time2;
		end
		--Initialize a random seed.
		math.randomseed(tonumber(tostring(timeFunc()):reverse())); --print(tonumber(tostring(timeFunc()):reverse()));

end


_KERNEL.init();

function patchLibWith(_toLib, _fromLib)
	for k,v in pairs(_fromLib) do
		_toLib[k] = v;
	end
end


function ifNotThenRequire(_lib)
	if not _G[_lib] then
		return require(_lib);
	else
		return _G[_lib];
	end
end

function forkv(x)
	for k,v in pairs(x) do
		print(k,v);
	end
end

--[[
If you have to ask why this is a thing, you probably haven't had the need for it (yet).
Note: Bork

function var2str(var)
	for k,v in pairs(_G) do
		if v==var then
			return k;
		end
	end
end

]]--
