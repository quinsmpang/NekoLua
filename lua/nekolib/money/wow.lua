local _M = {};

function _M.getFormattedGold(copper)
	local str = "%dg %ds %dc";
	local ret = str:format(copper / 100 / 100, (copper / 100) % 100, copper % 100);
	return ret;
end

function _M.getSilver(copper)
	return (copper / 100) % 100;
end

function _M.getGold(copper)
	return copper / 100 / 100;
end

function _M.getCopper(copper) --Think this one's silly? Think again.
	return copper % 100;
end

return _M;
