#Didn't want to mess too much with the makefile, so I'm gonna make the install script here. :)

mkdir ../../lua/socket/
mkdir ../../lua/mime/

cp src/*.lua ../../lua/socket/
rm ../../lua/socket/mime.lua
rm ../../lua/socket/socket.lua
rm ../../lua/socket/ltn12.lua

cp src/ltn12.lua ../../lua/ltn12.lua
cp src/socket.lua ../../lua/socket.lua
cp src/socket.so.3.0-rc1 ../../lua/socket/core.so
cp src/mime.so.1.0.3 ../../lua/mime/core.so
cp src/mime.lua ../../lua/mime.lua
