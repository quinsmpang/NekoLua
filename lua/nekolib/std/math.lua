local _M = {};

--[[
Math-related functions, obviously.
]]--

function _M.getRandom(min, max) --Go ahead and say WTF, I won't blame you! :)

	if _M.isNumber(min) == false and _M.isNumber(max) == false then
		min = 0;
		max = 100;
	end

	if _M.isNumber(max) == false and _M.isNumber(min) == true then --Fuck.
		return math.random(min)
	end

	return math.random(min, max);
end


function _M.isEven(num)
	--if num % 2 == 0 then
	if math.mod(num, 2) == 0 then
		return true;
	else
		return false;
	end
end

function _M.isNumber(num) --
	if tonumber(num) ~= nil then
		return true
	else
		return false;
	end
end


if patchLibWith ~= nil then
	patchLibWith(math, _M);
end



return _M;
