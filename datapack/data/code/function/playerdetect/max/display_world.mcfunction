scoreboard players add .total requests 1
scoreboard players add .max_online_world_request requests 1

# If errors, stop execution.
execute if data storage player_detect temp.a.world.error run return run tellraw @a[tag=is_admin,tag=!ignore] [{text:"\n⚠ An error occured!\nError: ",color:red},{storage:player_detect,nbt:temp.a.world.error.message}]

execute if data storage player_detect {temp:{a:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:player_detect,nbt:"temp.a.world.status_code",color:dark_green}]
execute unless data storage player_detect {temp:{a:{world:{status_code:200}}}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray},{storage:player_detect,nbt:"temp.a.world.status_code",color:yellow}]

data modify entity @n[type=text_display,tag=max_world] text.text set value "mmmmmaaaaaxxxxx is in \""
data modify entity @n[type=text_display,tag=max_world] text.extra[0] set from storage player_detect temp.a.world.response.raw_name
execute if data storage player_detect temp.a{uuid:"lobby"} run data modify entity @n[type=text_display,tag=max_world] text.extra[0] set value {text:"Lobby",color:gold}

data modify entity @n[type=text_display,tag=max_world] text.extra[1] set value "\"."


function code:playerdetect/max/display_world_macro with storage player_detect temp.a.world.response