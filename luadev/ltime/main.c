#include <time.h>
#include <sys/time.h>
#include <lua.h>

static int ltime_query(lua_State * L) {
  lua_Number time = 0;

  struct timespec t;
  clock_gettime(CLOCK_REALTIME, &t);
  time = (lua_Number)((double)t.tv_sec + (double)t.tv_nsec * 1.0e-9);
  lua_pushnumber(L, time);
  return 1;
}

int luaopen_ltime(lua_State * L)
{
  lua_pushcfunction(L, &ltime_query);
  return 1;
}
