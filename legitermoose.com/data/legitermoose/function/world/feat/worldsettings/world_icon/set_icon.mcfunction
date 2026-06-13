execute store success score .success legitermoose.temp run function legitermoose:world/feat/worldsettings/world_icon/check_valid_item with storage legitermoose:temp edit_icon
kill @n[type=armor_stand,tag=temp_stand]

execute unless score .success legitermoose.temp matches 1 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0
execute unless score .success legitermoose.temp matches 1 run return run tellraw @s {text:"Tʜɪꜱ ɪᴛᴇᴍ ɪꜱ ɪɴᴠᴀʟɪᴅ.",color:dark_red}

execute at @s run playsound entity.player.levelup ui @s ~ ~ ~ 1 2
tellraw @s {text:"",color:white,extra:[{text:"Sᴇᴛ ᴡᴏʀʟᴅ ɪᴄᴏɴ ᴛᴏ \"",color:green},{storage:"legitermoose:temp",nbt:"edit_icon.name",interpret:1b},{text:"\".",color:green}]}

$data modify storage legitermoose:worlds worlds[{world_id:$(id)}].icon set from storage legitermoose:temp edit_icon.name