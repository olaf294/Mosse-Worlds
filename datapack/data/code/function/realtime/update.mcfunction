# Time
execute if score .seconds time matches 0..9 run data modify storage time t.s set value "0"
execute if score .minutes time matches 0..9 run data modify storage time t.m set value "0"
execute if score .hours time matches 0..9 run data modify storage time t.h set value "0"
execute unless score .seconds time matches 0..9 run data modify storage time t.s set value ""
execute unless score .minutes time matches 0..9 run data modify storage time t.m set value ""
execute unless score .hours time matches 0..9 run data modify storage time t.h set value ""

# Actionbar
data modify entity @n[type=text_display,tag=time_utc] text set value \
[{text:"Cᴜʀʀᴇɴᴛ Tɪᴍᴇ (UTC ",color:gold},{score:{name:".offset",objective:time},color:red},{text:")\n",color:gold},\
{storage:time,nbt:t.h,color:green,interpret:1b},{score:{name:".hours",objective:time},color:green},{text:":",color:gray},\
{storage:time,nbt:t.m,color:green,interpret:1b},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{storage:time,nbt:t.s,color:green,interpret:1b},{score:{name:".seconds",objective:time},color:green}]



execute as @a[tag=!legitermoose.disable_global_time] run function code:realtime/display/actionbar

execute if score .hours time matches 1..22 run return fail
function code:realtime/display/date