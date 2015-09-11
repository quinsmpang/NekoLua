--[[
--Main module for NekoLib.Money/Neko.Money

TODO: Bitcoin module.
[Medium(-High?) Priority]

Due to jsonrates now requiring API keys, I removed the content of the convert function. :/

]]--

local _M = {};
_M.BTC = require("nekolib.money.bitcoin");
--_M.wow = require("nekolib.money.wow");

function _M.convert(from, to, amount) --http://jsonrates.com/get/?from=BTC&to=CAD
  return from, to, amount, "Code needs a rewrite!";
end

return _M;
