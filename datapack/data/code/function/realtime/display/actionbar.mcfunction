# Set per player Hour
scoreboard players operation @s p_hour = .hour_utc time
scoreboard players operation @s p_hour += @s p_offset_h
scoreboard players operation @s p_hour %= 24 numbers

scoreboard players operation @s p_min = .minutes time
scoreboard players operation @s p_min += @s p_offset_m
execute if score @s p_min matches 60.. run scoreboard players add @s p_hour 1
execute if score @s p_min matches ..-1 run scoreboard players remove @s p_hour 1

execute if score @s p_hour matches 24.. run scoreboard players remove @s p_hour 24
execute if score @s p_hour matches ..-1 run scoreboard players add @s p_hour 24


scoreboard players operation @s p_min %= 60 numbers

execute if score .seconds time matches 0..9 run data modify storage time t.s set value "0"
execute if score @s p_min matches 0..9 run data modify storage time t.m set value "0"
execute if score @s p_hour matches 0..9 run data modify storage time t.h set value "0"
execute unless score .seconds time matches 0..9 run data modify storage time t.s set value ""
execute unless score @s p_min matches 0..9 run data modify storage time t.m set value ""
execute unless score @s p_hour matches 0..9 run data modify storage time t.h set value ""


execute if score @s p_offset_h matches 0.. run data modify storage time t.sg set value "+"
execute unless score @s p_offset_h matches 0.. run data modify storage time t.sg set value "-"

execute if score @s p_offset_h matches -9..9 run data modify storage time t.sh set value "0"
execute unless score @s p_offset_h matches -9..9 run data modify storage time t.sh set value ""

execute if score @s p_offset_m matches 0 run data modify storage time t.sm set value "0"
execute unless score @s p_offset_m matches 0 run data modify storage time t.sm set value ""

execute if score @s p_offset_h matches ..-1 run tag @s add m_offs
execute if score @s p_offset_h matches ..-1 run scoreboard players operation @s p_offset_h *= -1 numbers

# Actionbar
title @s actionbar \
[{text:"Time: ",color:gold},{storage:time,nbt:t.h,color:green,interpret:1b},{score:{name:"@s",objective:p_hour},color:green},{text:":",color:gray},\
{storage:time,nbt:t.m,color:green,interpret:1b},{score:{name:"@s",objective:p_min},color:green},{text:":",color:gray},\
{storage:time,nbt:t.s,color:green,interpret:1b},{score:{name:".seconds",objective:time},color:green},{text:" (Offset: ",color:gold},\
{storage:time,nbt:t.sg,color:yellow,interpret:1b},{storage:time,nbt:t.sh,interpret:1b,color:yellow},{score:{name:"@s",objective:p_offset_h},color:yellow},{text:":",color:yellow},{storage:time,nbt:t.sm,color:yellow,interpret:1b},{score:{name:"@s",objective:p_offset_m},color:yellow},\
{text:")",color:gold}]

execute if entity @s[tag=m_offs] run scoreboard players operation @s p_offset_h *= -1 numbers
tag @s remove m_offs