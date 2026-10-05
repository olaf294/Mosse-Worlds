# Store block data in storage
function #bs.block:get_block
function wc:wand/private/util/get_pos/current_block
data modify storage wc:undo temp.next set value {b:"",p:[0,0,0]}
data modify storage wc:undo temp.next.b set string storage bs:out block.block 10
execute if data storage wc:undo {temp:{next:{b:"air"}}} run data remove storage wc:undo temp.next
execute store result storage wc:undo temp.next.p[0] int 1 run scoreboard players get .x wc.temp
execute store result storage wc:undo temp.next.p[1] int 1 run scoreboard players get .y wc.temp
execute store result storage wc:undo temp.next.p[2] int 1 run scoreboard players get .z wc.temp

execute unless data storage wc:undo temp.next.b run data remove storage wc:undo temp.next
data modify storage wc:undo undo[0].bl append from storage wc:undo temp.next

scoreboard players remove .delta_x wc.temp 1
execute if score .delta_x wc.temp matches 1.. positioned ~1 ~ ~ run return run function wc:wand/private/undo/iterate/next_x

# Reset .delta_x to be ready for the next execution
scoreboard players operation .delta_x wc.temp = .delta_x wc.values
scoreboard players remove .delta_x wc.temp 1
execute store result storage wc:undo temp.x int 1 run scoreboard players get .delta_x wc.temp
scoreboard players add .delta_x wc.temp 1

function wc:wand/private/undo/iterate/init_next_y with storage wc:undo temp