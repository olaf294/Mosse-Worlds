# basically this is the On World Join function (ON JOINING THE WORLD FROM REAL LOBBY)
function legitermoose:util/get_name
execute store result storage legitermoose:temp count int 1 if entity @a
function discordsync:message/players/join with storage legitermoose:temp


function legitermoose:mosse/enter_spawn
tag @s add temp_joined
tellraw @s {text:"Wᴇʟᴄᴏᴍᴇ ʙᴀᴄᴋ!",color:blue}
clear @s
#scoreboard players set @s wait -1  # unused — prototype bossbar

tp @s 0 64 0 0 8
scoreboard players reset @s leave

schedule function code:offline_time/get_time 20t

# Sidebar
function code:sidebar/tps/update_sidebar