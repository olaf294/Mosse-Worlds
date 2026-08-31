# basically this is the On World Join function (ON JOINING THE WORLD FROM REAL LOBBY)
function legitermoose:util/get_name
execute store result storage legitermoose:temp count int 1 if entity @a
function discordsync:message/players/join with storage legitermoose:temp

schedule function code:offline_time/get_time 20t

tag @s add temp_joined

tellraw @s {text:"Wᴇʟᴄᴏᴍᴇ ʙᴀᴄᴋ!",color:blue}
tag @s remove legitermoose.is_playing
tp @s 0 64 0 0 8
gamemode adventure @s[tag=!is_admin]
clear @s
scoreboard players set @s wait -1
team join z_spawn @s[team=player]

scoreboard players reset @s leave

