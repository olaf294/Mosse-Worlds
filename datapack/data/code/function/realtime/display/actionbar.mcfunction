# Set per player Hour
scoreboard players operation @s hour = .hour_utc time
scoreboard players operation @s hour += @s hour2
scoreboard players operation @s hour %= 24 numbers

execute if score .seconds time matches 0..9 run data modify storage time t.s set value "0"
execute if score .minutes time matches 0..9 run data modify storage time t.m set value "0"
execute if score @s hour matches 0..9 run data modify storage time t.h set value "0"
execute unless score .seconds time matches 0..9 run data modify storage time t.s set value ""
execute unless score .minutes time matches 0..9 run data modify storage time t.m set value ""
execute unless score @s hour matches 0..9 run data modify storage time t.h set value ""

# Actionbar
title @s actionbar \
[{text:"Time: ",color:gold},{storage:time,nbt:t.h,color:green},{score:{name:"@s",objective:hour},color:green},{text:":",color:gray},\
{storage:time,nbt:t.m,color:green},{score:{name:".minutes",objective:time},color:green},{text:":",color:gray},\
{storage:time,nbt:t.s,color:green},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},{score:{name:"@s",objective:offset},color:red},{text:")",color:gold}]