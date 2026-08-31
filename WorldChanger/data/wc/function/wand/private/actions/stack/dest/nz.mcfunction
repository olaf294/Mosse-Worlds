execute store result storage wc:blocks stack.x3 int 1 run scoreboard players get .min_x wc.values
execute store result storage wc:blocks stack.y3 int 1 run scoreboard players get .min_y wc.values
execute store result storage wc:blocks stack.z3 int 1 run scoreboard players operation .min_z wc.values -= .delta_z wc.values

function wc:wand/private/actions/stack/stack with storage wc:blocks stack