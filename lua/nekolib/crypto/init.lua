local _M = {};

--_M.AES256 = require("nekolib.crypto.aes256"); --FOR FUCK SAKE!
_M.md5 = require("nekolib.crypto.md5"); --If you use md5 for anything else than checksumming, you're a moron.

function _M.aes256cbc_encrypt(txt, key)
	local cmd = "echo '" .. txt .. "' | openssl enc -base64 -e -aes-256-cbc -nosalt -pass pass:" .. key;
	f = io.popen(cmd); l = f:read("*a"); f:close();

	return l;
end

function _M.aes256cbc_decrypt(txt, key)
	local cmd = "echo '" .. txt .. "' | openssl enc -base64 -d -aes-256-cbc -nosalt -pass pass:" .. key;
	f = io.popen(cmd); l = f:read("*a"); f:close();

	return l;
end
return _M;
