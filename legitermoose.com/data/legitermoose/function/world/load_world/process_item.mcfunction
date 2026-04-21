$execute store result score .owner_id legitermoose.temp run data get storage legitermoose:worlds worlds[{world_id:$(world_id)}].owner_id
$execute if data storage legitermoose:worlds worlds[{world_id:$(world_id)}].settings{whitelist:1b} if entity @s[tag=!is_admin] unless score @s id = .owner_id legitermoose.temp run return run tellraw @s {text:"Tʜɪꜱ ᴡᴏʀʟᴅ ɪꜱ ᴡʜɪᴛᴇʟɪꜱᴛᴇᴅ.",color:red}

tellraw @s {text:"Loading world...",color:gray}

$say world id is $(world_id)

clear @s
item replace entity @s player.cursor with air
execute at @s run playsound block.wooden_button.click_on ui @s ~ ~ ~ 1 1

# Experimental - Attempt storing world id in the custom data
$data modify storage legitermoose:worlds worlds[{world_id:$(world_id)}].custom_data."legitermoose.data".id set value $(world_id)
$data modify storage legitermoose:temp plot_position.world_id set value $(world_id)

$data modify storage legitermoose:temp plot_position set value $(plot_position)



$execute store result score .world_visit legitermoose.misc run data get storage legitermoose:worlds worlds[{world_id:$(world_id)}].visits
scoreboard players add .world_visit legitermoose.misc 1
$execute store result storage legitermoose:worlds worlds[{world_id:$(world_id)}].visits int 1 run scoreboard players get .world_visit legitermoose.misc


function legitermoose:world/load_world/tp_to_plot with storage legitermoose:temp plot_position