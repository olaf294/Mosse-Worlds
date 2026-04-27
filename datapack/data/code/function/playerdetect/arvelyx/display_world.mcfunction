scoreboard players add .total requests 1
scoreboard players add .arvelyx_online_world_request requests 1

# If errors, stop execution.
execute if data storage player_detect temp.a.world.error run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:player_detect,nbt:temp.a.world.error.message}]
execute if data storage player_detect temp.a.world.error run return fail

execute if data storage player_detect {temp:{a:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:player_detect,nbt:"temp.a.world.status_code",color:dark_green}]
execute unless data storage player_detect {temp:{a:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:player_detect,nbt:"temp.a.world.status_code",color:yellow}]

execute as @e[type=text_display,tag=arvelyx_world] run data modify entity @s text.text set value "Arvelyx is in \""
execute as @e[type=text_display,tag=arvelyx_world] run data modify entity @s text.extra[0] set from storage player_detect temp.a.world.response.raw_name
execute as @e[type=text_display,tag=arvelyx_world] if data storage player_detect temp.a{uuid:"lobby"} run data modify entity @s text.extra[0] set value {text:"Lobby",color:gold}

execute as @e[type=text_display,tag=arvelyx_world] run data modify entity @s text.extra[1] set value "\"."


function code:playerdetect/arvelyx/display_world_macro with storage player_detect temp.a.world.response