local btc = {};

btc.priceAPIURL = "https://www.cryptonator.com/api/ticker/"; --https://www.cryptonator.com/api/ticker/btc-usd

if not https then https = require("ssl.https"); end
if not json then json = require("json"); end
function btc.convert(fromCurr, toCurr, fromAmount)
  if type(fromCurr) ~= "string" then fromCurr = "BTC"; end
  if type(toCurr) ~= "string" then toCurr = "CAD"; end
  fromAmount = tonumber(fromAmount);
  if tonumber(fromAmount) == nil or fromAmount <= 0 then fromAmount = 1; end
  req, err = https.request(btc.priceAPIURL .. fromCurr .. "-" .. toCurr);

  local _json = json.decode(req);
  local _price = _json.ticker.price;
  return _price * fromAmount;

end



return btc;
