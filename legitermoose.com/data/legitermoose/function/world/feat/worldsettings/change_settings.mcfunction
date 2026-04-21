$execute if score @s worldsettings matches 2 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 1b
execute if score @s worldsettings matches 2 run tellraw @s {text:"Whitelist has been toggled on."}
$execute if score @s worldsettings matches 3 run data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings.whitelist set value 0b
execute if score @s worldsettings matches 3 run tellraw @s {text:"Whitelist has been toggled off."}