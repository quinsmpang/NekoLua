-- -*- lua -*-
title = "luaposix 33.3.1 Reference"
project = "luaposix 33.3.1"
description = "POSIX bindings for Lua (including curses)"

tparam_alias "string"
tparam_alias "int"
tparam_alias "bool"

-- Manual page links point to the OpenGroup SUSv3 spec.
local upat = "http://pubs.opengroup.org/onlinepubs/009695399/functions/%s.html"
custom_see_handler("^([%w_]+)%((%dx?)%)$",function(name,section)
    local url = upat:format(name)
    return name .. "(" .. section .. ")", url
end)

dir = "."
file = {
  -- Classes
  "../ext/posix/curses/chstr.c",
  "../ext/posix/curses/window.c",

  -- Modules
  "../lib/posix/init.lua",
  "../lib/posix/compat.lua",  -- Documents added to posix module

  "../ext/posix/ctype.c",
  "../ext/posix/curses.c",
  "../ext/posix/dirent.c",
  "../ext/posix/errno.c",
  "../ext/posix/fcntl.c",
  "../ext/posix/fnmatch.c",
  "../ext/posix/getopt.c",
  "../ext/posix/glob.c",
  "../ext/posix/grp.c",
  "../ext/posix/libgen.c",
  "../ext/posix/poll.c",
  "../ext/posix/pwd.c",
  "../ext/posix/sched.c",
  "../ext/posix/signal.c",
  "../ext/posix/stdio.c",
  "../ext/posix/stdlib.c",
  "../ext/posix/sys/msg.c",
  "../ext/posix/sys/resource.c",
  "../ext/posix/sys/socket.c",
  "../ext/posix/sys/stat.c",
  "../ext/posix/sys/statvfs.c",
  "../ext/posix/sys/time.c",
  "../ext/posix/sys/times.c",
  "../ext/posix/sys/utsname.c",
  "../ext/posix/sys/wait.c",
  "../ext/posix/syslog.c",
  "../ext/posix/termio.c",
  "../ext/posix/time.c",
  "../ext/posix/unistd.c",
  "../ext/posix/utime.c",
}
examples = "../examples"

boilerplate = true
backtick_references = false
format = "markdown"
merge = true
sort = true
