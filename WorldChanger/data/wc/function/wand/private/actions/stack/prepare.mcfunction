execute if function wc:wand/private/actions/check_selection run return fail

function wc:wand/private/util/get_pos/min
#function wc:wand/private/util/get_pos/max

execute store result storage wc:blocks stack.x1 int 1 run scoreboard players get @s wc.pos1_x
execute store result storage wc:blocks stack.y1 int 1 run scoreboard players get @s wc.pos1_y
execute store result storage wc:blocks stack.z1 int 1 run scoreboard players get @s wc.pos1_z
execute store result storage wc:blocks stack.x2 int 1 run scoreboard players get @s wc.pos2_x
execute store result storage wc:blocks stack.y2 int 1 run scoreboard players get @s wc.pos2_y
execute store result storage wc:blocks stack.z2 int 1 run scoreboard players get @s wc.pos2_z

# rotation stack
execute store result score .rot wc.values run data get entity @s Rotation[0]
execute store result score .rot2 wc.values run data get entity @s Rotation[1] 10

execute if score .rot2 wc.values matches -900..-675 run return run function wc:wand/private/actions/stack/dest/u
execute if score .rot2 wc.values matches 675..900 run return run function wc:wand/private/actions/stack/dest/d

execute if score .rot wc.values matches -135..-46 run return run function wc:wand/private/actions/stack/dest/px
execute if score .rot wc.values matches -45..44 run return run function wc:wand/private/actions/stack/dest/pz
execute if score .rot wc.values matches 45..134 run return run function wc:wand/private/actions/stack/dest/nx
execute if score .rot wc.values matches 135..180 run return run function wc:wand/private/actions/stack/dest/nz
execute if score .rot wc.values matches -180..-136 run return run function wc:wand/private/actions/stack/dest/nz