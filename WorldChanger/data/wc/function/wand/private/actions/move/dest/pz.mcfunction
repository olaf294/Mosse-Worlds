execute store result storage wc:blocks move.x3 int 1 run scoreboard players get .min_x wc.values
execute store result storage wc:blocks move.y3 int 1 run scoreboard players get .min_y wc.values
execute store result storage wc:blocks move.z3 int 1 run scoreboard players operation .min_z wc.values += .delta_z wc.values

function wc:wand/private/actions/move/move with storage wc:blocks move