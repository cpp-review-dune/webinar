#!/usr/bin/env lua
--timer.lua:
sum = 0

function difference(increment)
oldsumstr = string.format("%.2f",sum/60)
sum = sum + increment
sumstr = string.format("%.2f",sum/60)
return oldsumstr,sumstr
end