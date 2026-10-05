$data modify storage wc:undo temp.current_undo set from storage wc:undo undo[{id:$(id)}]

# Initial Air Fill
data modify storage wc:undo temp.air.sx set from storage wc:undo temp.current_undo.sp[0]
data modify storage wc:undo temp.air.sy set from storage wc:undo temp.current_undo.sp[1]
data modify storage wc:undo temp.air.sz set from storage wc:undo temp.current_undo.sp[2]
data modify storage wc:undo temp.air.ex set from storage wc:undo temp.current_undo.ep[0]
data modify storage wc:undo temp.air.ey set from storage wc:undo temp.current_undo.ep[1]
data modify storage wc:undo temp.air.ez set from storage wc:undo temp.current_undo.ep[2]
execute at @s run function wc:wand/private/undo/load_undo/fillair with storage wc:undo temp.air

function wc:wand/private/undo/load_undo/loop/get_block