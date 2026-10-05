scoreboard players remove .delta_y wc.temp 1
execute if score .delta_y wc.temp matches 1.. run return run function wc:wand/private/undo/iterate/next_x

# Reset .delta_y to be ready for the next execution
scoreboard players operation .delta_y wc.temp = .delta_y wc.values
execute store result storage wc:undo temp.y int 1 run scoreboard players get .delta_y wc.temp
scoreboard players add .delta_y wc.temp 1

function wc:wand/private/undo/iterate/init_next_z with storage wc:undo temp