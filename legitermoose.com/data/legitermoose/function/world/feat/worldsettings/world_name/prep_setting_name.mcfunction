item replace block 993 54 8 container.1 from entity @s player.cursor
clear @s paper[custom_data~{rename_world:1b}]
inventory @s close

execute if score @s worldid matches -8 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 .5
execute if score @s worldid matches -8 run return run tellraw @s {text:"Mᴏᴅɪꜰʏɪɴɢ ᴛʜᴇ ʟᴏʙʙʏ ᴡᴏʀʟᴅ ɴᴀᴍᴇ ɪꜱ ɴᴏᴛ ꜱᴜᴘᴘᴏʀᴛᴇᴅ.",color:dark_red}

data modify storage legitermoose:temp edit_name.name set from block 993 54 8 Items[{Slot:1b}].components."minecraft:custom_name"
execute store result storage legitermoose:temp edit_name.id int 1 run scoreboard players get @s worldid

function legitermoose:world/feat/worldsettings/world_name/set_name with storage legitermoose:temp edit_name