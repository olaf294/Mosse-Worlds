execute if function wc:wand/private/actions/check_selection run return fail

execute store result storage wc:blocks set.x1 int 1 run scoreboard players get @s wc.pos1_x
execute store result storage wc:blocks set.y1 int 1 run scoreboard players get @s wc.pos1_y
execute store result storage wc:blocks set.z1 int 1 run scoreboard players get @s wc.pos1_z
execute store result storage wc:blocks set.x2 int 1 run scoreboard players get @s wc.pos2_x
execute store result storage wc:blocks set.y2 int 1 run scoreboard players get @s wc.pos2_y
execute store result storage wc:blocks set.z2 int 1 run scoreboard players get @s wc.pos2_z

execute if items entity @s weapon.offhand * run data modify storage wc:blocks set.block set from entity @s equipment.offhand.id
execute if items entity @s weapon.offhand #wc:edgecase_items run function wc:wand/private/actions/set/edgecase_items

execute unless items entity @s weapon.offhand * run data modify storage wc:blocks set.block set value "air"

# Prepare iteration for undo storing
# Get min and max boundaries
function wc:wand/private/util/get_pos/min
function wc:wand/private/util/get_pos/max
execute store result storage wc:undo temp.min.x int 1 run scoreboard players get .min_x wc.values
execute store result storage wc:undo temp.min.y int 1 run scoreboard players get .min_y wc.values
execute store result storage wc:undo temp.min.z int 1 run scoreboard players get .min_z wc.values
function wc:wand/private/undo/init_iter with storage wc:undo temp.min

function wc:wand/private/actions/set/set_blocks with storage wc:blocks set