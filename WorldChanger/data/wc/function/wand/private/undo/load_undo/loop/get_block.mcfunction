# Get the current action
data modify storage wc:undo temp.current_action set from storage wc:undo temp.current_undo.bl[0]
data modify storage wc:undo temp.undo_action.x set from storage wc:undo temp.current_action.p[0]
data modify storage wc:undo temp.undo_action.y set from storage wc:undo temp.current_action.p[1]
data modify storage wc:undo temp.undo_action.z set from storage wc:undo temp.current_action.p[2]
data modify storage wc:undo temp.undo_action.block set from storage wc:undo temp.current_action.b
# Undo it
execute at @s run function wc:wand/private/undo/load_undo/loop/place_block with storage wc:undo temp.undo_action
data remove storage wc:undo temp.current_undo.bl[0]

execute if data storage wc:undo temp.current_undo.bl[0] run return run function wc:wand/private/undo/load_undo/loop/get_block

tellraw @s [{text:"W",color:gold},{text:"C",color:yellow},{text:" » ",color:gray},{text:"Uɴᴅᴏ ᴄᴏᴍᴘʟᴇᴛᴇᴅ",color:blue}]