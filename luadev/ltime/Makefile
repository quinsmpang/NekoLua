
build:
	gcc --std=gnu11 -O3 -Wall -Wextra -c -fPIC -o ltime.o main.c -I/usr/local/include/luajit-2.0
	gcc ltime.o -shared -o ltime.so

clean:
	rm *.o *.so

install:
	cp ltime.so ../../lua/
