execute if score @s worldsettings matches 2..3 at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2

$execute if score @s worldsettings matches 2 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 1b
execute if score @s worldsettings matches 2 run return run tellraw @s {text:"Whitelist has been toggled on.",color:yellow}

$execute if score @s worldsettings matches 3 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 0b
execute if score @s worldsettings matches 3 run return run tellraw @s {text:"Whitelist has been toggled off.",color:yellow}

execute if score @s worldsettings matches 4 run return run function legitermoose:world/feat/worldsettings/world_name/open_gui
execute if score @s worldsettings matches 5 run return run function legitermoose:world/feat/worldsettings/world_icon/open_gui

execute if score @s worldsettings matches 6 run return run function legitermoose:world/feat/worldsettings/whitelist/prepare
execute if score @s worldsettings matches 7 run return run function legitermoose:world/feat/worldsettings/wc/prepare
execute if score @s worldsettings matches 8 run return run function legitermoose:world/feat/worldsettings/admin/prepare
execute if score @s worldsettings matches 9 run return run function legitermoose:world/feat/worldsettings/dev/prepare

execute if score @s worldsettings matches 10 run return run function legitermoose:world/feat/worldsettings/dgm/prepare