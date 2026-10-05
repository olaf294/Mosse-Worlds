execute if function wc:wand/private/actions/check_selection run return fail

function wc:wand/private/util/get_pos/min
#function wc:wand/private/util/get_pos/max

execute store result storage wc:blocks move.x1 int 1 run scoreboard players get @s wc.pos1_x
execute store result storage wc:blocks move.y1 int 1 run scoreboard players get @s wc.pos1_y
execute store result storage wc:blocks move.z1 int 1 run scoreboard players get @s wc.pos1_z
execute store result storage wc:blocks move.x2 int 1 run scoreboard players get @s wc.pos2_x
execute store result storage wc:blocks move.y2 int 1 run scoreboard players get @s wc.pos2_y
execute store result storage wc:blocks move.z2 int 1 run scoreboard players get @s wc.pos2_z

# rotation move
execute store result score .rot wc.values run data get entity @s Rotation[0]
execute store result score .rot2 wc.values run data get entity @s Rotation[1] 10

execute if score .rot2 wc.values matches -900..-675 run return run function wc:wand/private/actions/move/dest/u
execute if score .rot2 wc.values matches 675..900 run return run function wc:wand/private/actions/move/dest/d

execute if score .rot wc.values matches -135..-46 run return run function wc:wand/private/actions/move/dest/px
execute if score .rot wc.values matches -45..44 run return run function wc:wand/private/actions/move/dest/pz
execute if score .rot wc.values matches 45..134 run return run function wc:wand/private/actions/move/dest/nx
execute if score .rot wc.values matches 135..180 run return run function wc:wand/private/actions/move/dest/nz
execute if score .rot wc.values matches -180..-136 run return run function wc:wand/private/actions/move/dest/nz