--[[
	About time this gets its own thing.
	The plan's to make a very simple AI/Assistant thing (think Google Now)
]]--

local _M = {};

function _M.boot(args) --TODO: Clean up.
if not args then args = {}; end
        


        if not nekolib then
                nekolib = require("nekolib");
                print("[WARNING]: NekoLib not loaded, Loading it.");
        end
        nekolib.net.init();
        nekolib.std.monkeyPatch();
        cfg = nekolib.ini.new(_KERNEL.ROOT .. "data/config.ini");

        local lastUsed = cfg:readKey("General", "lastUsed");
        local lastUsedTime = nekolib.time.tsToString(lastUsed); --Convert to formatted date/time
        local username = cfg:readKey("General", "username") or "Unknown!"; --TODO: Stuffs.

        local welcomeMsg = "Welcome back, %s! - Last Time you've booted me up was: %s (%s)!";
        print(welcomeMsg:format(username, lastUsedTime, lastUsed)); --Pretty! :)


        print(string.format("The current time is: %s", nekolib.time.tsToString(os.time())));


        cfg:writeKey("General", "lastUsed", nekolib.time.getTime());
        cfg:save();
end


return _M;
