data modify storage str in.l append string storage str in.str 0 1
data modify storage str in.str set string storage str in.str 1
scoreboard players remove #l legitermoose.temp 1
execute if score #l legitermoose.temp matches 0.. run function legitermoose:lobby/join/to_array/loop