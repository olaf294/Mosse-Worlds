# Clean storage
data remove storage wc:undo temp

# Put scores into temp
scoreboard players operation .delta_x wc.temp = .delta_x wc.values
scoreboard players operation .delta_y wc.temp = .delta_y wc.values
scoreboard players operation .delta_z wc.temp = .delta_z wc.values

# Set up undo storage and save undo metadata
data modify storage wc:undo undo prepend value {id:0,c:0,bl:[],sp:[0,0,0],ep:[0,0,0]}

# store min and max positions of the undo
execute store result storage wc:undo undo[0].sp[0] int 1 run scoreboard players get .min_x wc.values
execute store result storage wc:undo undo[0].sp[1] int 1 run scoreboard players get .min_y wc.values
execute store result storage wc:undo undo[0].sp[2] int 1 run scoreboard players get .min_z wc.values
execute store result storage wc:undo undo[0].ep[0] int 1 run scoreboard players get .max_x wc.values
execute store result storage wc:undo undo[0].ep[1] int 1 run scoreboard players get .max_y wc.values
execute store result storage wc:undo undo[0].ep[2] int 1 run scoreboard players get .max_z wc.values

execute store result storage wc:undo undo[0].id int 1 run scoreboard players add .undo_id wc.values 1
execute store result storage wc:undo undo[0].c int 1 run scoreboard players get .total_area wc.values
execute store result score @s wc.undo_id run scoreboard players get .undo_id wc.values

# Start iteration
$execute positioned $(x) $(y) $(z) run function wc:wand/private/undo/iterate/next_x