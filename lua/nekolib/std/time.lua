local _M = {}; --https://www.youtube.com/watch?v=-5wpm-gesOY :)


function _M.getTime(msBool) --Returns a TimeStamp (UTC)
	--if msBool == true then
	        --return socket.gettime() * 10000; --Seriously, why doesn't this come built-in in lua? >_>
	--else
		return math.floor(socket.gettime());
	--end
end


function _M.tsToString(theTime, getLocal)
	if nekolib.math.isNumber(theTime) == false then theTime = os.time() end
	if getLocal == true then
		return os.date("%c", theTime)
	else
		return os.date("!%c", theTime);
	end
end

function _M.tsToTable(theTime, getLocal)
	if nekolib.math.isNumber(theTime) == false then theTime = os.time() end
	if getLocal == true then
		return os.date("*t", theTime)
	else
		return os.date("!*t", theTime);
	end
end


return _M;
