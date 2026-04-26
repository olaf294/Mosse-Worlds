execute if score @s worldsettings matches 2..3 at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2

$execute if score @s worldsettings matches 2 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 1b
execute if score @s worldsettings matches 2 run return run tellraw @s {text:"Whitelist has been toggled on.",color:yellow}

$execute if score @s worldsettings matches 3 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 0b
execute if score @s worldsettings matches 3 run return run tellraw @s {text:"Whitelist has been toggled off.",color:yellow}

execute if score @s worldsettings matches 4 run function legitermoose:world/feat/worldsettings/world_name/open_gui